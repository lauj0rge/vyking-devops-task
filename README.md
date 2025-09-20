# Vyking DevOps Platform

This repository contains everything needed to build a fully automated GitOps environment for the Vyking Todo application. It packages infrastructure, application manifests, and tooling to let you spin up a local [k3d](https://k3d.io/) based Kubernetes cluster, deploy the stack through Argo CD, and validate that the environment is healthy.

The platform is intentionally split into clearly defined components so that each responsibility—from container builds to Terraform driven GitOps configuration—is easy to discover and maintain.

## High level architecture

```
┌────────────┐     HTTPS      ┌──────────────────────┐
│    User    │ ─────────────▶ │ ingress-nginx LB     │
└────────────┘                └──────────┬───────────┘
                                         │ TLS from cert-manager
                                         ▼
                               ┌───────────────────────────┐
                               │ vyking-app Helm release   │
                               │  ┌──────────┐  ┌────────┐ │
                               │  │Frontend │  │ Backend│ │
                               │  │ NGINX   │  │ Flask  │ │
                               │  └────┬────┘  └────┬───┘ │
                               │       │ /api proxy │ SQL │
                               └───────┴────────────┴─────┘
                                         │
                                         ▼
                             ┌───────────────────────────┐
                             │ MySQL StatefulSet + cron  │
                             │ backups + seeded data     │
                             └───────────────────────────┘
```

- Terraform modules bootstrap Argo CD, install ingress-nginx and cert-manager, create the required namespaces, and register this repository so Git changes reconcile automatically.【F:terraform/modules/argocd/argocd.tf†L2-L34】【F:terraform/modules/applications/app.tf†L1-L103】【F:terraform/modules/infra/cert-manager.tf†L1-L13】
- The `vyking-app` Helm chart deploys both frontend and backend workloads, wiring an NGINX ConfigMap that proxies `/api` traffic to the backend service and injecting the resolved address into the container environment.【F:applications/vyking-app/templates/frontend-configmap.yaml†L1-L32】【F:applications/vyking-app/templates/frontend-deployment.yaml†L1-L55】
- Backend pods read MySQL connection parameters from SealedSecrets-sourced Kubernetes Secrets and serve health plus leaderboard endpoints backed by the database.【F:applications/vyking-app/templates/backend-deployment.yaml†L1-L72】【F:applications/backend/app/app.py†L17-L88】【F:infrastructure/sealed/mysql-credentials-dev.yaml†L1-L19】
- The MySQL chart provisions persistent storage, seeds the leaderboard schema, and schedules mysqldump backups using the shared credential secret.【F:infrastructure/mysql/templates/statefulset.yaml†L1-L46】【F:infrastructure/mysql/templates/initdb-configmap.yaml†L1-L32】【F:infrastructure/mysql/templates/backup-cronjob.yaml†L1-L47】

## Repository layout & component responsibilities

| Path | Description | Primary responsibilities |
| ---- | ----------- | ------------------------ |
| `applications/vyking-app` | Combined Helm chart for the Vyking workloads. | Deploys frontend and backend Deployments/Services, configures the NGINX proxy ConfigMap, enables optional HPAs, and exposes ingress routes with per-environment overrides.【F:applications/vyking-app/templates/frontend-deployment.yaml†L1-L55】【F:applications/vyking-app/templates/backend-deployment.yaml†L1-L72】【F:applications/vyking-app/environments/values-dev.yaml†L1-L74】 |
| `applications/frontend/app` | Static frontend assets and container build context. | Renders the leaderboard UI and fetches `/api/leaderboard`, handling formatting and error states in vanilla JavaScript.【F:applications/frontend/app/app.js†L1-L120】 |
| `applications/backend/app` | Flask API and container build context. | Exposes health/readiness endpoints and the leaderboard query backed by MySQL connection details supplied via environment variables.【F:applications/backend/app/app.py†L17-L88】 |
| `infrastructure/mysql` | Helm chart wrapping Bitnami MySQL with custom templates. | Seeds schema/fixtures, provisions persistent storage, and schedules mysqldump backups that read credentials from the shared secret.【F:infrastructure/mysql/templates/initdb-configmap.yaml†L1-L32】【F:infrastructure/mysql/templates/statefulset.yaml†L1-L46】【F:infrastructure/mysql/templates/backup-cronjob.yaml†L1-L47】 |
| `infrastructure/cert-manager` | TLS bootstrap manifests. | Defines the self-signed ClusterIssuer and per-environment certificates consumed by ingress-nginx.【F:infrastructure/cert-manager/selfsigned-issuer.yaml†L1-L6】【F:infrastructure/cert-manager/certificate-dev.yaml†L1-L14】 |
| `infrastructure/sealed` | Pre-generated SealedSecrets. | Stores encrypted MySQL credentials that Argo CD applies before workloads start, keeping secrets out of git history.【F:infrastructure/sealed/mysql-credentials-dev.yaml†L1-L19】 |
| `terraform/modules/argocd` | Argo CD bootstrap module. | Installs Argo CD via Helm, registers the Git repository, and waits for the Application CRD to become available.【F:terraform/modules/argocd/argocd.tf†L2-L34】 |
| `terraform/modules/infra` | Infrastructure GitOps module. | Creates the MySQL namespace, syncs sealed secrets and the MySQL chart, and installs cert-manager with CRDs enabled.【F:terraform/modules/infra/db.tf†L1-L69】【F:terraform/modules/infra/cert-manager.tf†L1-L13】 |
| `terraform/modules/applications` | Application GitOps module. | Creates frontend/backend namespaces, registers the combined `vyking-app` Helm chart in Argo CD, provisions ingress-nginx, and issues TLS certificates.【F:terraform/modules/applications/app.tf†L1-L103】 |
| `scripts/` | Automation helpers. | Provide tooling install, cluster bootstrap, image builds, smoke tests, and teardown workflows for local environments.【F:scripts/bootstrap.sh†L1-L198】【F:scripts/tests.sh†L1-L118】【F:scripts/images-build.sh†L1-L29】【F:scripts/setup-tools.sh†L3-L49】 |
| `terraform/env/*.tfvars` | Environment definitions. | Supply Terraform with cluster namespaces, repo branch, ingress hosts, and kubeconfig locations per environment.【F:terraform/env/dev.tfvars†L1-L9】 |

## Application Helm chart

The monolithic `applications/vyking-app` chart orchestrates the runtime stack:

- `.Values.frontend` and `.Values.backend` sections allow enabling either component, selecting namespaces, and tuning image tags, resources, and probes from a single values file.【F:applications/vyking-app/values.yaml†L4-L113】
- An NGINX ConfigMap powers the static site and proxies `/api` requests to the backend while the Deployment injects the computed backend URL into the container environment.【F:applications/vyking-app/templates/frontend-configmap.yaml†L1-L32】【F:applications/vyking-app/templates/frontend-deployment.yaml†L1-L55】
- Environment overlays provide ingress rules that route `/` to the SPA and `/api` to the backend service, even when the workloads live in different namespaces.【F:applications/vyking-app/environments/values-dev.yaml†L4-L74】
- Backend pods consume MySQL credentials from a Kubernetes Secret and expose liveness/readiness probes aligned with the Flask API.【F:applications/vyking-app/templates/backend-deployment.yaml†L1-L72】
- Optional HorizontalPodAutoscalers can be toggled independently for each component.【F:applications/vyking-app/templates/frontend-hpa.yaml†L1-L33】【F:applications/vyking-app/templates/backend-hpa.yaml†L1-L29】

## Infrastructure building blocks

- **MySQL** is delivered through a customised Bitnami chart with templates that seed the leaderboard schema, mount persistent storage, and run recurring mysqldump backups into a dedicated PVC.【F:infrastructure/mysql/templates/initdb-configmap.yaml†L1-L32】【F:infrastructure/mysql/templates/statefulset.yaml†L1-L46】【F:infrastructure/mysql/templates/backup-cronjob.yaml†L1-L47】
- **Sealed Secrets** manifests are kept under version control so Argo CD can decrypt them at deploy time once the controller is installed, producing the Secrets consumed by MySQL and the backend Deployment.【F:infrastructure/sealed/mysql-credentials-dev.yaml†L1-L19】
- **cert-manager** resources issue local TLS certificates for the ingress using a self-signed ClusterIssuer and environment-specific certificate definitions.【F:infrastructure/cert-manager/selfsigned-issuer.yaml†L1-L6】【F:infrastructure/cert-manager/certificate-dev.yaml†L1-L14】

## Terraform modules & GitOps flow

1. **`modules/argocd`** installs Argo CD via Helm, registers this repository as a read-only source, and waits for the `Application` CRD to be available before continuing.【F:terraform/modules/argocd/argocd.tf†L2-L34】
2. **`modules/infra`** creates the MySQL namespace, syncs the sealed secrets and MySQL Helm chart as Argo CD `Application` resources, and installs cert-manager with CRDs enabled.【F:terraform/modules/infra/db.tf†L1-L69】【F:terraform/modules/infra/cert-manager.tf†L1-L13】
3. **`modules/applications`** provisions frontend/backend namespaces, registers the combined `vyking-app` Helm release with Argo CD, installs ingress-nginx, and issues a TLS certificate for the frontend host.【F:terraform/modules/applications/app.tf†L1-L103】

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

Each environment is described once in Terraform (`terraform/env/*.tfvars`) and once in the Helm chart overlays (`applications/vyking-app/environments/values-*.yaml`). This keeps namespaces, container tags, ingress hosts, and resource requests consistent across tooling.【F:terraform/env/dev.tfvars†L1-L9】【F:applications/vyking-app/environments/values-dev.yaml†L4-L74】

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
- Backend API: available inside the cluster at the backend Service (ClusterIP on port 8081) with `/health`, `/readiness`, and `/leaderboard` routes exposing the mock player leaderboard dataset.【F:applications/vyking-app/templates/backend-service.yaml†L1-L17】【F:applications/backend/app/app.py†L34-L88】

With this README you can quickly identify where each concern lives in the codebase and how to operate the full deployment workflow end to end.