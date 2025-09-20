# Vyking DevOps Platform

This repository contains everything needed to build a fully automated GitOps environment for the Vyking Todo application. It packages infrastructure, application manifests, and tooling to let you spin up a local [k3d](https://k3d.io/) based Kubernetes cluster, deploy the stack through Argo CD, and validate that the environment is healthy.

The platform is intentionally split into clearly defined components so that each responsibility—from container builds to Terraform driven GitOps configuration—is easy to discover and maintain.

## High level architecture

```
┌────────────┐      HTTPS        ┌────────────────────────┐
│    User    │ ───────────────▶ │ Ingress / nginx (k3d)  │
└────────────┘                  └────────┬───────────────┘
                                         │
                   /api proxy            │ static assets
                                         │
                                 ┌───────▼────────┐
                                 │ Frontend (NGINX │
                                 │  static site)   │
                                 └───────┬────────┘
                                         │ /api
                                         ▼
                              ┌─────────────────────┐
                              │ Backend (Flask API) │
                              └────────┬────────────┘
                                       │ SQL
                                       ▼
                            ┌────────────────────────┐
                            │ Bitnami MySQL Stateful │
                            │   set + Cron backups   │
                            └────────────────────────┘
```

Argo CD continuously reconciles the `applications/*` Helm charts and `infrastructure/*` components from this Git repository into the target cluster. Terraform modules provision Argo CD itself and register every application as an Argo CD `Application` resource, ensuring a fully GitOps-managed workflow.

## Repository layout & component responsibilities

| Path | Description | Primary responsibilities |
| ---- | ----------- | ------------------------ |
| `applications/backend/app` | Flask Todo API and Dockerfile. | Implements health/readiness endpoints and CRUD handlers that read/write to MySQL using environment variables sourced from Kubernetes Secrets.【F:applications/backend/app/app.py†L1-L83】 |
| `applications/vyking-app/templates/backend` | Backend manifests inside the combined Helm chart. | Deploys the API Deployment/Service, wires database credentials from a SealedSecret-sourced Secret, and optionally enables an HPA.【F:applications/vyking-app/templates/backend/deployment-service.yaml†L1-L64】【F:applications/vyking-app/templates/backend/hpa.yaml†L1-L24】 |
| `applications/frontend/app` | Static frontend assets and container build. | Renders the Todo UI, proxies `/api` calls to the backend, and ships in an NGINX image.【F:applications/frontend/app/index.html†L1-L82】【F:applications/frontend/app/app.js†L1-L39】 |
| `applications/vyking-app/templates/frontend` | Frontend manifests inside the combined Helm chart. | Publishes the static site, injects backend routing via ConfigMap, exposes a Service/Ingress, and can scale with an HPA.【F:applications/vyking-app/templates/frontend/deployment-service.yaml†L1-L56】【F:applications/vyking-app/templates/frontend/configmap.yaml†L1-L26】【F:applications/vyking-app/templates/frontend/ingress.yaml†L1-L36】 |
| `infrastructure/mysql` | Helm chart wrapper around Bitnami MySQL. | Supplies init SQL, PVCs, HPA, and a CronJob backup schedule customised per environment values file.【F:infrastructure/mysql/templates/mysql-init.sql†L1-L11】【F:infrastructure/mysql/templates/backup-cronjob.yaml†L1-L28】 |
| `infrastructure/cert-manager` | cert-manager manifests. | Creates a self-signed cluster issuer and per-environment TLS certificates for the frontend ingress.【F:infrastructure/cert-manager/selfsigned-issuer.yaml†L1-L7】【F:infrastructure/cert-manager/certificate-dev.yaml†L1-L14】 |
| `infrastructure/sealed` | Pre-generated SealedSecrets. | Holds sealed MySQL credentials that Argo CD applies before workloads start, keeping plaintext secrets out of git.【F:infrastructure/sealed/mysql-credentials-dev.yaml†L1-L33】 |
| `terraform/` | Terraform root module. | Wires providers and composes the Argo CD, infrastructure, and application modules for GitOps reconciliation.【F:terraform/main.tf†L1-L26】 |
| `terraform/modules/argocd` | Argo CD bootstrap. | Installs the Argo CD Helm chart and registers the git repository as a read-only source for Applications.【F:terraform/modules/argocd/argocd.tf†L1-L24】 |
| `terraform/modules/infra` | Cluster services GitOps. | Creates namespaces and Argo CD Applications for sealed secrets and MySQL, plus installs cert-manager via Helm.【F:terraform/modules/infra/db.tf†L1-L52】【F:terraform/modules/infra/cert-manager.tf†L1-L13】 |
| `terraform/modules/applications` | Frontend & backend GitOps. | Defines namespaces, TLS assets, and a combined Argo CD Application that tracks the Helm chart with environment-specific values overlays.【F:terraform/modules/applications/fe.tf†L1-L55】【F:terraform/modules/applications/be.tf†L1-L11】 |
| `scripts/` | Automation helpers. | Provide end-to-end workflow scripts for dependency setup, cluster bootstrap, smoke tests, and teardown.【F:scripts/setup-tools.sh†L1-L36】【F:scripts/bootstrap.sh†L1-L153】【F:scripts/tests.sh†L1-L94】【F:scripts/cleanup.sh†L1-L40】 |
| `terraform/env/*.tfvars` | Environment definitions. | Store per-environment namespaces, git branches, and ingress hosts consumed by Terraform modules.【F:terraform/env/dev.tfvars†L1-L9】 |

## Application chart

The combined `applications/vyking-app` Helm chart packages both workloads with shared defaults:

- **Configurable container images** via `.Values.frontend.image` and `.Values.backend.image` so CI can push dev/prod tags.【F:applications/vyking-app/values.yaml†L7-L53】
- **Health probes and resource policies** tuned per environment with overrides in `environments/values-*.yaml` files.【F:applications/vyking-app/values.yaml†L55-L95】【F:applications/vyking-app/environments/values-dev.yaml†L1-L48】【F:applications/vyking-app/environments/values-prod.yaml†L1-L53】
- **HorizontalPodAutoscaler manifests** gated behind `.Values.<component>.hpa.enabled` to allow autoscaling when desired.【F:applications/vyking-app/templates/backend/hpa.yaml†L1-L24】【F:applications/vyking-app/templates/frontend/hpa.yaml†L1-L24】

## Infrastructure building blocks

- **MySQL** is delivered through the Bitnami Helm dependency with extra templates for schema bootstrap (`ConfigMap`), scheduled dumps, storage PVCs, and HPA. Environment overlays adjust credentials, storage, and backup cadence.【F:infrastructure/mysql/Chart.yaml†L1-L11】【F:infrastructure/mysql/environments/dev-values.yaml†L1-L19】
- **Sealed Secrets** manifests are kept under version control so Argo CD can decrypt them at deploy time once the controller is installed.【F:infrastructure/sealed/mysql-dev-secret.yaml†L1-L37】
- **cert-manager** resources issue local TLS certificates for the frontend ingress using a self-signed ClusterIssuer.【F:infrastructure/cert-manager/certificate-prod.yaml†L1-L14】

## Terraform modules & GitOps flow

1. **`modules/argocd`** installs Argo CD and stores repository connection details inside the cluster.【F:terraform/modules/argocd/argocd.tf†L1-L24】
2. **`modules/infra`** registers the infrastructure charts (sealed secrets + MySQL) as Argo CD `Application` CRDs so they sync automatically after Argo CD becomes ready.【F:terraform/modules/infra/db.tf†L9-L52】
3. **`modules/applications`** provisions frontend/backend namespaces, TLS certificates, and corresponding Argo CD `Application` objects for each workload.【F:terraform/modules/applications/fe.tf†L1-L55】【F:terraform/modules/applications/be.tf†L1-L30】

Running `terraform apply -var-file=env/dev.tfvars` from the repo root bootstraps the whole GitOps chain against a cluster whose kubeconfig lives at `~/.kube/vyking-dev-config` (or the environment-specific path).【F:terraform/env/dev.tfvars†L1-L9】

## Automation scripts

| Script | Purpose |
| ------ | ------- |
| `scripts/setup-tools.sh` | Installs Docker, kubectl 1.33.5, k3d, Helm, and Terraform on a clean Ubuntu host.【F:scripts/setup-tools.sh†L1-L33】 |
| `scripts/cluster.sh <env>` | Creates a fresh k3d cluster (with optional load balancer ports in prod) and installs the Sealed Secrets controller.【F:scripts/cluster.sh†L1-L38】 |
| `scripts/bootstrap.sh <env>` | Full end-to-end bootstrap: validates dependencies, creates secrets, builds/imports Docker images, applies Terraform modules, opens Argo CD & ingress port-forwards, prints MySQL credentials, and captures a Markdown test report.【F:scripts/bootstrap.sh†L1-L198】 |
| `scripts/tests.sh <env>` | Generates a Markdown health report summarising cluster info, Argo CD apps, and workload status using collapsible sections.【F:scripts/tests.sh†L1-L94】 |
| `scripts/cleanup.sh <env>` | Tears everything down: Terraform destroy, kill port-forwards, delete k3d cluster, and clean kubeconfig entries.【F:scripts/cleanup.sh†L1-L40】 |

All scripts default to the `dev` environment when no argument is provided and rely on `scripts/secrets.env` for non-committed credentials.

## Environment configuration

Each environment is described once in Terraform (`terraform/env/*.tfvars`) and once in Helm chart value overlays (`applications/vyking-app/environments/values-*.yaml`). This keeps namespaces, docker tags, ingress hosts, and resource requests consistent across tooling.【F:applications/vyking-app/environments/values-dev.yaml†L1-L48】【F:applications/vyking-app/environments/values-prod.yaml†L1-L53】

SealedSecrets names follow the pattern `mysql-credentials-<env>` (backend namespace) and `mysql-<env>-secret` (database namespace). The bootstrap script regenerates them from local `.env` values and commits updates safely when git remotes are configured.【F:scripts/bootstrap.sh†L35-L112】

## Operating the stack

1. **Install prerequisites** on your workstation once: `./scripts/setup-tools.sh`.
2. **Prepare secrets** by creating `scripts/secrets.env` with the expected variables (`DEV_DB_USER`, `PROD_DB_PASS`, etc.).
3. **Bootstrap an environment**: `./scripts/bootstrap.sh dev` (or `prod`). The script builds/imports the Docker images, runs Terraform targets, and starts local port-forwards for Argo CD and ingress.【F:scripts/bootstrap.sh†L60-L198】
4. **Review the generated report** in `tests-results-<env>-<timestamp>.md` for a snapshot of cluster health.【F:scripts/bootstrap.sh†L188-L198】
5. **Tear down** when finished: `./scripts/cleanup.sh dev`.

## Useful endpoints

- Argo CD UI: forwarded to http://localhost:8080 for `dev` and 8080/8443 load balancer bindings in prod clusters.【F:scripts/cluster.sh†L5-L20】【F:scripts/bootstrap.sh†L142-L168】
- Frontend Ingress: reachable via the ingress-nginx port-forward started by the bootstrap script at `https://frontend-<env>.local:8443`.【F:scripts/bootstrap.sh†L170-L183】
- Backend API: available inside the cluster at the `vyking-app-backend` Service (default `ClusterIP` on port 8081) with `/health`, `/readiness`, and `/leaderboard` routes exposing the mock player leaderboard dataset.【F:applications/vyking-app/templates/backend/deployment-service.yaml†L1-L64】【F:applications/backend/app/app.py†L27-L94】

With this README you can quickly identify where each concern lives in the codebase and how to operate the full deployment workflow end to end.
