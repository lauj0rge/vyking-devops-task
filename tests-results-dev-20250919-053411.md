# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-19 05:34:11 CEST
- **Environment:** `dev`
- **Cluster Name:** `vyking-dev`
- **Argo CD Namespace:** `argocd-dev`

## 🧭 Access Checks
### kubectl version --short
```bash
+ kubectl version --short
error: unknown flag: --short
See 'kubectl version --help' for usage.

[command failed with exit code 1]
```

### Current context
```bash
+ kubectl config current-context
k3d-vyking-dev
```

### Available contexts
```bash
+ kubectl config get-contexts
CURRENT   NAME             CLUSTER          AUTHINFO               NAMESPACE
*         k3d-vyking-dev   k3d-vyking-dev   admin@k3d-vyking-dev   
```

## 🌐 Cluster Overview
### Cluster info
```bash
+ kubectl cluster-info
Kubernetes control plane is running at https://0.0.0.0:39711
CoreDNS is running at https://0.0.0.0:39711/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:39711/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 16m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 16m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   16m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   5m52s
backend-dev       Active   13s
cert-manager      Active   87s
default           Active   16m
frontend-dev      Active   13s
kube-node-lease   Active   16m
kube-public       Active   16m
kube-system       Active   16m
mysql-dev         Active   98s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE      NAME                                                READY   STATUS              RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-dev     argocd-application-controller-0                     1/1     Running             0          4m31s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-applicationset-controller-78f49df558-smnnw   1/1     Running             0          4m31s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-dex-server-796678d5bc-rjgnv                  1/1     Running             0          4m31s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev     argocd-notifications-controller-6d84bf8458-g4szq    1/1     Running             0          4m31s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-redis-7c7fb7fc74-nrhhp                       1/1     Running             0          4m31s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-repo-server-d587f667c-wvlpf                  1/1     Running             0          4m31s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-server-556b554c94-cc2p5                      1/1     Running             0          4m30s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
backend-dev    backend-backend-66c96df8b-6gkc5                     0/1     ContainerCreating   0          4s      <none>      k3d-vyking-dev-agent-0    <none>           <none>
backend-dev    backend-backend-66c96df8b-kj2h7                     0/1     ContainerCreating   0          4s      <none>      k3d-vyking-dev-server-0   <none>           <none>
cert-manager   cert-manager-55c69bf5cf-7ftbc                       1/1     Running             0          82s     10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager   cert-manager-cainjector-5765b5f544-kmqfl            1/1     Running             0          82s     10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager   cert-manager-webhook-6b67444dc9-6rrbx               1/1     Running             0          82s     10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
frontend-dev   frontend-frontend-597d68f8cf-lp6ws                  0/1     ContainerCreating   0          2s      <none>      k3d-vyking-dev-agent-1    <none>           <none>
kube-system    coredns-ccb96694c-4v79q                             1/1     Running             0          16m     10.42.1.3   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    helm-install-traefik-bnt6x                          0/1     Completed           2          16m     10.42.2.2   k3d-vyking-dev-server-0   <none>           <none>
kube-system    helm-install-traefik-crd-kd29g                      0/1     Completed           0          16m     10.42.0.2   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    local-path-provisioner-5cf85fd84d-gtq2w             1/1     Running             0          16m     10.42.2.3   k3d-vyking-dev-server-0   <none>           <none>
kube-system    metrics-server-5985cbc9d7-mjlgj                     1/1     Running             0          16m     10.42.1.2   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    sealed-secrets-controller-5655858cbc-z5jxv          1/1     Running             0          15m     10.42.0.3   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    svclb-traefik-5b522f32-n8l76                        2/2     Running             0          14m     10.42.2.4   k3d-vyking-dev-server-0   <none>           <none>
kube-system    svclb-traefik-5b522f32-tql6g                        2/2     Running             0          14m     10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    svclb-traefik-5b522f32-wbmvl                        2/2     Running             0          14m     10.42.1.4   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    traefik-5d45fc8cc9-cj7pf                            1/1     Running             0          14m     10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE      NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev     argocd-application-controller-metrics   ClusterIP      10.43.227.193   <none>                             8082/TCP                     4m34s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev     argocd-applicationset-controller        ClusterIP      10.43.61.125    <none>                             7000/TCP                     4m34s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev     argocd-dex-server                       ClusterIP      10.43.14.36     <none>                             5556/TCP,5557/TCP,5558/TCP   4m34s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev     argocd-redis                            ClusterIP      10.43.188.201   <none>                             6379/TCP                     4m34s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     4m34s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-repo-server                      ClusterIP      10.43.227.26    <none>                             8081/TCP                     4m34s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-repo-server-metrics              ClusterIP      10.43.232.254   <none>                             8084/TCP                     4m34s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-server                           ClusterIP      10.43.107.109   <none>                             80/TCP,443/TCP               4m34s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev    backend-backend                         ClusterIP      10.43.101.138   <none>                             8081/TCP                     5s      app=backend-backend
cert-manager   cert-manager                            ClusterIP      10.43.10.14     <none>                             9402/TCP                     85s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager   cert-manager-cainjector                 ClusterIP      10.43.206.13    <none>                             9402/TCP                     85s     app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager   cert-manager-webhook                    ClusterIP      10.43.71.104    <none>                             443/TCP,9402/TCP             85s     app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default        kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      16m     <none>
frontend-dev   frontend-frontend                       ClusterIP      10.43.138.95    <none>                             8080/TCP                     4s      app=frontend-frontend
kube-system    kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       16m     k8s-app=kube-dns
kube-system    metrics-server                          ClusterIP      10.43.19.231    <none>                             443/TCP                      16m     k8s-app=metrics-server
kube-system    sealed-secrets-controller               ClusterIP      10.43.75.71     <none>                             8080/TCP                     15m     name=sealed-secrets-controller
kube-system    sealed-secrets-controller-metrics       ClusterIP      10.43.161.177   <none>                             8081/TCP                     15m     name=sealed-secrets-controller
kube-system    traefik                                 LoadBalancer   10.43.76.215    172.18.0.2,172.18.0.3,172.18.0.4   80:30567/TCP,443:32739/TCP   14m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        4s
frontend-dev   frontend-frontend   <none>    frontend-dev.local                                      80, 443   2s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE      NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev     argocd-applicationset-controller   1/1     1            1           4m35s
argocd-dev     argocd-dex-server                  1/1     1            1           4m35s
argocd-dev     argocd-notifications-controller    1/1     1            1           4m35s
argocd-dev     argocd-redis                       1/1     1            1           4m35s
argocd-dev     argocd-repo-server                 1/1     1            1           4m35s
argocd-dev     argocd-server                      1/1     1            1           4m35s
backend-dev    backend-backend                    0/2     2            0           7s
cert-manager   cert-manager                       1/1     1            1           85s
cert-manager   cert-manager-cainjector            1/1     1            1           85s
cert-manager   cert-manager-webhook               1/1     1            1           85s
frontend-dev   frontend-frontend                  0/1     1            0           5s
kube-system    coredns                            1/1     1            1           16m
kube-system    local-path-provisioner             1/1     1            1           16m
kube-system    metrics-server                     1/1     1            1           16m
kube-system    sealed-secrets-controller          1/1     1            1           15m
kube-system    traefik                            1/1     1            1           14m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     4m35s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-5b522f32   3         3         3       3            3           <none>          14m
```

### PersistentVolumeClaims (all namespaces)
```bash
+ kubectl get pvc -A
No resources found
```

### PersistentVolumes
```bash
+ kubectl get pv
No resources found
```

### StorageClasses
```bash
+ kubectl get storageclass
NAME                   PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  16m
```

### Jobs (all namespaces)
```bash
+ kubectl get jobs -A
NAMESPACE     NAME                       STATUS     COMPLETIONS   DURATION   AGE
kube-system   helm-install-traefik       Complete   1/1           98s        16m
kube-system   helm-install-traefik-crd   Complete   1/1           79s        16m
```

### CronJobs (all namespaces)
```bash
+ kubectl get cronjobs -A
No resources found
```

### Horizontal Pod Autoscalers (all namespaces)
```bash
+ kubectl get hpa -A
NAMESPACE      NAME                REFERENCE                      TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-dev    backend-backend     Deployment/backend-backend     cpu: <unknown>/70%, memory: <unknown>/70%   1         5         0          9s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         0          7s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    287m         9%       643Mi           8%          
k3d-vyking-dev-agent-1    303m         10%      467Mi           5%          
k3d-vyking-dev-server-0   344m         11%      1176Mi          14%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE      NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev     argocd-application-controller-0                     67m          202Mi           
argocd-dev     argocd-applicationset-controller-78f49df558-smnnw   3m           54Mi            
argocd-dev     argocd-dex-server-796678d5bc-rjgnv                  0m           91Mi            
argocd-dev     argocd-notifications-controller-6d84bf8458-g4szq    4m           20Mi            
argocd-dev     argocd-redis-7c7fb7fc74-nrhhp                       5m           3Mi             
argocd-dev     argocd-repo-server-d587f667c-wvlpf                  5m           94Mi            
argocd-dev     argocd-server-556b554c94-cc2p5                      5m           56Mi            
cert-manager   cert-manager-55c69bf5cf-7ftbc                       4m           18Mi            
cert-manager   cert-manager-cainjector-5765b5f544-kmqfl            5m           21Mi            
cert-manager   cert-manager-webhook-6b67444dc9-6rrbx               8m           11Mi            
kube-system    coredns-ccb96694c-4v79q                             9m           17Mi            
kube-system    local-path-provisioner-5cf85fd84d-gtq2w             1m           7Mi             
kube-system    metrics-server-5985cbc9d7-mjlgj                     21m          19Mi            
kube-system    sealed-secrets-controller-5655858cbc-z5jxv          4m           27Mi            
kube-system    svclb-traefik-5b522f32-n8l76                        0m           0Mi             
kube-system    svclb-traefik-5b522f32-tql6g                        0m           0Mi             
kube-system    svclb-traefik-5b522f32-wbmvl                        0m           0Mi             
kube-system    traefik-5d45fc8cc9-cj7pf                            3m           36Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
frontend-dev   16s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev   16s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev   16s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev   16s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev   16s         Warning   BadConfig                        certificaterequest/frontend-cert-dev-1                   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
frontend-dev   16s         Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev   16s         Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev   16s         Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev   16s         Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev   16s         Normal    Requested                        certificate/frontend-cert-dev                            Created new CertificateRequest resource "frontend-cert-dev-1"
frontend-dev   16s         Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev   16s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev   15s         Normal    Issuing                          certificate/frontend-cert-dev                            The certificate has been successfully issued
argocd-dev     14s         Normal    OperationStarted                 application/backend                                      Initiated automated sync to '4b5faf5b05a1e0ea5440c19807eeaac6e88c0702'
argocd-dev     14s         Normal    ResourceUpdated                  application/backend                                      Updated sync status:  -> OutOfSync
argocd-dev     14s         Normal    ResourceUpdated                  application/backend                                      Updated health status:  -> Missing
argocd-dev     13s         Normal    OperationStarted                 application/frontend                                     Initiated automated sync to '4b5faf5b05a1e0ea5440c19807eeaac6e88c0702'
argocd-dev     13s         Normal    ResourceUpdated                  application/frontend                                     Updated sync status:  -> OutOfSync
argocd-dev     13s         Normal    ResourceUpdated                  application/frontend                                     Updated health status:  -> Missing
backend-dev    11s         Normal    SuccessfulCreate                 replicaset/backend-backend-66c96df8b                     Created pod: backend-backend-66c96df8b-kj2h7
backend-dev    11s         Normal    ScalingReplicaSet                deployment/backend-backend                               Scaled up replica set backend-backend-66c96df8b to 2
backend-dev    10s         Normal    Scheduled                        pod/backend-backend-66c96df8b-6gkc5                      Successfully assigned backend-dev/backend-backend-66c96df8b-6gkc5 to k3d-vyking-dev-agent-0
backend-dev    10s         Normal    Scheduled                        pod/backend-backend-66c96df8b-kj2h7                      Successfully assigned backend-dev/backend-backend-66c96df8b-kj2h7 to k3d-vyking-dev-server-0
backend-dev    10s         Normal    SuccessfulCreate                 replicaset/backend-backend-66c96df8b                     Created pod: backend-backend-66c96df8b-6gkc5
frontend-dev   9s          Normal    ScalingReplicaSet                deployment/frontend-frontend                             Scaled up replica set frontend-frontend-597d68f8cf to 1
argocd-dev     8s          Normal    ResourceUpdated                  application/backend                                      Updated health status: Missing -> Progressing
argocd-dev     8s          Normal    OperationCompleted               application/backend                                      Sync operation to 4b5faf5b05a1e0ea5440c19807eeaac6e88c0702 succeeded
frontend-dev   8s          Normal    SuccessfulCreate                 replicaset/frontend-frontend-597d68f8cf                  Created pod: frontend-frontend-597d68f8cf-lp6ws
argocd-dev     9s          Normal    ResourceUpdated                  application/backend                                      Updated sync status: OutOfSync -> Synced
frontend-dev   8s          Normal    Scheduled                        pod/frontend-frontend-597d68f8cf-lp6ws                   Successfully assigned frontend-dev/frontend-frontend-597d68f8cf-lp6ws to k3d-vyking-dev-agent-1
backend-dev    7s          Warning   Failed                           pod/backend-backend-66c96df8b-kj2h7                      Error: secret "mysql-credentials-dev" not found
backend-dev    7s          Normal    Pulled                           pod/backend-backend-66c96df8b-kj2h7                      Container image "vyking-backend:dev" already present on machine
argocd-dev     6s          Normal    OperationCompleted               application/frontend                                     Sync operation to 4b5faf5b05a1e0ea5440c19807eeaac6e88c0702 succeeded
backend-dev    6s          Warning   Failed                           pod/backend-backend-66c96df8b-6gkc5                      Error: secret "mysql-credentials-dev" not found
backend-dev    6s          Normal    Pulled                           pod/backend-backend-66c96df8b-6gkc5                      Container image "vyking-backend:dev" already present on machine
argocd-dev     6s          Normal    ResourceUpdated                  application/frontend                                     Updated sync status: OutOfSync -> Synced
argocd-dev     5s          Normal    ResourceUpdated                  application/frontend                                     Updated health status: Missing -> Progressing
frontend-dev   4s          Normal    Pulled                           pod/frontend-frontend-597d68f8cf-lp6ws                   Container image "vyking-frontend:dev" already present on machine
frontend-dev   3s          Normal    Started                          pod/frontend-frontend-597d68f8cf-lp6ws                   Started container frontend
frontend-dev   3s          Normal    Created                          pod/frontend-frontend-597d68f8cf-lp6ws                   Created container frontend
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          4m39s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-applicationset-controller-78f49df558-smnnw   1/1     Running   0          4m39s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dex-server-796678d5bc-rjgnv                  1/1     Running   0          4m39s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-notifications-controller-6d84bf8458-g4szq    1/1     Running   0          4m39s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-redis-7c7fb7fc74-nrhhp                       1/1     Running   0          4m39s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-repo-server-d587f667c-wvlpf                  1/1     Running   0          4m39s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
argocd-server-556b554c94-cc2p5                      1/1     Running   0          4m38s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           4m40s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           4m40s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           4m40s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           4m40s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           4m40s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           4m40s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     4m39s   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### DaemonSets
```bash
+ kubectl get daemonset -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Services
```bash
+ kubectl get svc -n argocd-dev -o wide
NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-application-controller-metrics   ClusterIP   10.43.227.193   <none>        8082/TCP                     4m42s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.61.125    <none>        7000/TCP                     4m42s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.14.36     <none>        5556/TCP,5557/TCP,5558/TCP   4m42s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.188.201   <none>        6379/TCP                     4m42s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     4m42s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.227.26    <none>        8081/TCP                     4m42s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.232.254   <none>        8084/TCP                     4m42s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.107.109   <none>        80/TCP,443/TCP               4m42s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### Ingresses
```bash
+ kubectl get ingress -n argocd-dev
No resources found in argocd-dev namespace.
```

### ConfigMaps
```bash
+ kubectl get configmap -n argocd-dev
NAME                            DATA   AGE
argocd-cm                       18     4m43s
argocd-cmd-params-cm            41     4m43s
argocd-gpg-keys-cm              0      4m43s
argocd-notifications-cm         1      4m43s
argocd-rbac-cm                  4      4m43s
argocd-redis-health-configmap   2      4m43s
argocd-ssh-known-hosts-cm       1      4m43s
argocd-tls-certs-cm             0      4m43s
kube-root-ca.crt                1      6m2s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      2m30s
argocd-notifications-secret    Opaque               0      4m43s
argocd-redis                   Opaque               1      4m48s
argocd-secret                  Opaque               3      4m43s
repo-vyking-git                Opaque               2      2m10s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      6m1s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n argocd-dev
No resources found in argocd-dev namespace.
```

### Jobs
```bash
+ kubectl get jobs -n argocd-dev
No resources found in argocd-dev namespace.
```

### CronJobs
```bash
+ kubectl get cronjobs -n argocd-dev
No resources found in argocd-dev namespace.
```

### PersistentVolumeClaims
```bash
+ kubectl get pvc -n argocd-dev
No resources found in argocd-dev namespace.
```

### Recent Events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"argocd-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
2m15s       Normal    Started              pod/argocd-dex-server-796678d5bc-rjgnv                   Started container dex-server
73s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status:  -> OutOfSync
73s         Normal    OperationStarted     application/mysql-sealed-secrets                         Initiated automated sync to '4b5faf5b05a1e0ea5440c19807eeaac6e88c0702'
73s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status:  -> Healthy
73s         Normal    ResourceUpdated      application/mysql                                        Updated health status:  -> Healthy
73s         Normal    ResourceUpdated      application/mysql                                        Updated sync status:  -> Unknown
68s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
66s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
19s         Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
19s         Normal    OperationStarted     application/backend                                      Initiated automated sync to '4b5faf5b05a1e0ea5440c19807eeaac6e88c0702'
18s         Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
18s         Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
18s         Normal    OperationStarted     application/frontend                                     Initiated automated sync to '4b5faf5b05a1e0ea5440c19807eeaac6e88c0702'
19s         Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
14s         Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
13s         Normal    OperationCompleted   application/backend                                      Sync operation to 4b5faf5b05a1e0ea5440c19807eeaac6e88c0702 succeeded
13s         Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
11s         Normal    ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
11s         Normal    OperationCompleted   application/frontend                                     Sync operation to 4b5faf5b05a1e0ea5440c19807eeaac6e88c0702 succeeded
10s         Normal    ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     58m          202Mi           
argocd-applicationset-controller-78f49df558-smnnw   12m          54Mi            
argocd-dex-server-796678d5bc-rjgnv                  3m           85Mi            
argocd-notifications-controller-6d84bf8458-g4szq    5m           20Mi            
argocd-redis-7c7fb7fc74-nrhhp                       6m           3Mi             
argocd-repo-server-d587f667c-wvlpf                  60m          96Mi            
argocd-server-556b554c94-cc2p5                      8m           57Mi            
```


### Applications
```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Progressing
frontend               Synced        Progressing
mysql                  Unknown       Healthy
mysql-sealed-secrets   OutOfSync     Healthy
```

### ApplicationSets
```bash
+ kubectl get applicationsets -n argocd-dev
No resources found in argocd-dev namespace.
```

### AppProjects
```bash
+ kubectl get appprojects -n argocd-dev
NAME      AGE
default   2m33s
```

**UI:** [http://localhost:8080](http://localhost:8080)
**Port-forward command:**
```bash
kubectl port-forward svc/argocd-server -n argocd-dev 8080:80
```

## 🎨 Frontend (`frontend-dev`)
### Pods
```bash
+ kubectl get pods -n frontend-dev -o wide
NAME                                 READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
frontend-frontend-597d68f8cf-lp6ws   1/1     Running   0          16s   10.42.1.8   k3d-vyking-dev-agent-1   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES                SELECTOR
frontend-frontend   1/1     1            1           16s   frontend     vyking-frontend:dev   app=frontend-frontend
```

### StatefulSets
```bash
+ kubectl get statefulset -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### DaemonSets
```bash
+ kubectl get daemonset -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Services
```bash
+ kubectl get svc -n frontend-dev -o wide
NAME                TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
frontend-frontend   ClusterIP   10.43.138.95   <none>        8080/TCP   18s   app=frontend-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                CLASS    HOSTS                ADDRESS   PORTS     AGE
frontend-frontend   <none>   frontend-dev.local             80, 443   15s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                    DATA   AGE
frontend-nginx-config   1      19s
kube-root-ca.crt        1      29s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      25s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
frontend-frontend   Deployment/frontend-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          18s
```

### Jobs
```bash
+ kubectl get jobs -n frontend-dev
No resources found in frontend-dev namespace.
```

### CronJobs
```bash
+ kubectl get cronjobs -n frontend-dev
No resources found in frontend-dev namespace.
```

### PersistentVolumeClaims
```bash
+ kubectl get pvc -n frontend-dev
No resources found in frontend-dev namespace.
```

### Recent Events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"frontend-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
27s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
27s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
27s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
27s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
27s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
27s         Warning   BadConfig                      certificaterequest/frontend-cert-dev-1      Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
27s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
27s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
27s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
27s         Normal    Requested                      certificate/frontend-cert-dev               Created new CertificateRequest resource "frontend-cert-dev-1"
26s         Normal    Issuing                        certificate/frontend-cert-dev               The certificate has been successfully issued
20s         Normal    ScalingReplicaSet              deployment/frontend-frontend                Scaled up replica set frontend-frontend-597d68f8cf to 1
18s         Normal    Scheduled                      pod/frontend-frontend-597d68f8cf-lp6ws      Successfully assigned frontend-dev/frontend-frontend-597d68f8cf-lp6ws to k3d-vyking-dev-agent-1
19s         Normal    SuccessfulCreate               replicaset/frontend-frontend-597d68f8cf     Created pod: frontend-frontend-597d68f8cf-lp6ws
15s         Normal    Pulled                         pod/frontend-frontend-597d68f8cf-lp6ws      Container image "vyking-frontend:dev" already present on machine
14s         Normal    Created                        pod/frontend-frontend-597d68f8cf-lp6ws      Created container frontend
14s         Normal    Started                        pod/frontend-frontend-597d68f8cf-lp6ws      Started container frontend
4s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
4s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
4s          Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
error: metrics not available yet

[command failed with exit code 1]
```


- **Service:** `frontend-frontend`
- **Namespace:** `frontend-dev`
- **Port:** `8080`

**Port-forward command:**
```bash
kubectl port-forward svc/frontend-frontend -n frontend-dev 8080:8080
```

## ⚙️ Backend (`backend-dev`)
### Pods
```bash
+ kubectl get pods -n backend-dev -o wide
NAME                              READY   STATUS                       RESTARTS   AGE   IP           NODE                      NOMINATED NODE   READINESS GATES
backend-backend-66c96df8b-6gkc5   0/1     CreateContainerConfigError   0          23s   10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
backend-backend-66c96df8b-kj2h7   0/1     CreateContainerConfigError   0          23s   10.42.2.10   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES               SELECTOR
backend-backend   0/2     2            0           23s   backend      vyking-backend:dev   app=backend-backend
```

### StatefulSets
```bash
+ kubectl get statefulset -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### DaemonSets
```bash
+ kubectl get daemonset -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Services
```bash
+ kubectl get svc -n backend-dev -o wide
NAME              TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.101.138   <none>        8081/TCP   24s   app=backend-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME              CLASS     HOSTS                ADDRESS                            PORTS   AGE
backend-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      22s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      35s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      6s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME              REFERENCE                    TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-backend   Deployment/backend-backend   cpu: <unknown>/70%, memory: <unknown>/70%   1         5         2          24s
```

### Jobs
```bash
+ kubectl get jobs -n backend-dev
No resources found in backend-dev namespace.
```

### CronJobs
```bash
+ kubectl get cronjobs -n backend-dev
No resources found in backend-dev namespace.
```

### PersistentVolumeClaims
```bash
+ kubectl get pvc -n backend-dev
No resources found in backend-dev namespace.
```

### Recent Events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"backend-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
LAST SEEN   TYPE      REASON                         OBJECT                                    MESSAGE
26s         Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-kj2h7
26s         Normal    ScalingReplicaSet              deployment/backend-backend                Scaled up replica set backend-backend-66c96df8b to 2
25s         Normal    Scheduled                      pod/backend-backend-66c96df8b-kj2h7       Successfully assigned backend-dev/backend-backend-66c96df8b-kj2h7 to k3d-vyking-dev-server-0
25s         Normal    Scheduled                      pod/backend-backend-66c96df8b-6gkc5       Successfully assigned backend-dev/backend-backend-66c96df8b-6gkc5 to k3d-vyking-dev-agent-0
25s         Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-6gkc5
10s         Normal    Pulled                         pod/backend-backend-66c96df8b-kj2h7       Container image "vyking-backend:dev" already present on machine
10s         Warning   Failed                         pod/backend-backend-66c96df8b-kj2h7       Error: secret "mysql-credentials-dev" not found
8s          Warning   Failed                         pod/backend-backend-66c96df8b-6gkc5       Error: secret "mysql-credentials-dev" not found
8s          Normal    Pulled                         pod/backend-backend-66c96df8b-6gkc5       Container image "vyking-backend:dev" already present on machine
10s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
10s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
10s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
7s          Normal    Unsealed                       sealedsecret/mysql-credentials-dev        SealedSecret unsealed successfully
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
error: metrics not available yet

[command failed with exit code 1]
```


- **Service:** `backend-backend`
- **Namespace:** `backend-dev`
- **Port:** `8081`

**Port-forward command:**
```bash
kubectl port-forward svc/backend-backend -n backend-dev 8081:8081
```

## 🛢️ MySQL (`mysql-dev`)
### Pods
```bash
+ kubectl get pods -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Deployments
```bash
+ kubectl get deploy -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### StatefulSets
```bash
+ kubectl get statefulset -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### DaemonSets
```bash
+ kubectl get daemonset -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Services
```bash
+ kubectl get svc -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Ingresses
```bash
+ kubectl get ingress -n mysql-dev
No resources found in mysql-dev namespace.
```

### ConfigMaps
```bash
+ kubectl get configmap -n mysql-dev
NAME               DATA   AGE
kube-root-ca.crt   1      2m5s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   5      84s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n mysql-dev
No resources found in mysql-dev namespace.
```

### Jobs
```bash
+ kubectl get jobs -n mysql-dev
No resources found in mysql-dev namespace.
```

### CronJobs
```bash
+ kubectl get cronjobs -n mysql-dev
No resources found in mysql-dev namespace.
```

### PersistentVolumeClaims
```bash
+ kubectl get pvc -n mysql-dev
No resources found in mysql-dev namespace.
```

### Recent Events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"mysql-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
LAST SEEN   TYPE     REASON     OBJECT                          MESSAGE
87s         Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n mysql-dev
No resources found in mysql-dev namespace.
```


❌ No MySQL service found in `mysql-dev`.

## 🔐 Cert-Manager (`cert-manager`)
### Pods
```bash
+ kubectl get pods -n cert-manager -o wide
NAME                                       READY   STATUS    RESTARTS   AGE    IP          NODE                      NOMINATED NODE   READINESS GATES
cert-manager-55c69bf5cf-7ftbc              1/1     Running   0          114s   10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-cainjector-5765b5f544-kmqfl   1/1     Running   0          114s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-webhook-6b67444dc9-6rrbx      1/1     Running   0          114s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           115s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           115s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           115s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
```

### StatefulSets
```bash
+ kubectl get statefulset -n cert-manager -o wide
No resources found in cert-manager namespace.
```

### DaemonSets
```bash
+ kubectl get daemonset -n cert-manager -o wide
No resources found in cert-manager namespace.
```

### Services
```bash
+ kubectl get svc -n cert-manager -o wide
NAME                      TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)            AGE    SELECTOR
cert-manager              ClusterIP   10.43.10.14    <none>        9402/TCP           117s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.206.13   <none>        9402/TCP           117s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.71.104   <none>        443/TCP,9402/TCP   117s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
```

### Ingresses
```bash
+ kubectl get ingress -n cert-manager
No resources found in cert-manager namespace.
```

### ConfigMaps
```bash
+ kubectl get configmap -n cert-manager
NAME               DATA   AGE
kube-root-ca.crt   1      2m2s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      85s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      2m1s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n cert-manager
No resources found in cert-manager namespace.
```

### Jobs
```bash
+ kubectl get jobs -n cert-manager
No resources found in cert-manager namespace.
```

### CronJobs
```bash
+ kubectl get cronjobs -n cert-manager
No resources found in cert-manager namespace.
```

### PersistentVolumeClaims
```bash
+ kubectl get pvc -n cert-manager
No resources found in cert-manager namespace.
```

### Recent Events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"cert-manager\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
117s        Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-6rrbx       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-6rrbx to k3d-vyking-dev-server-0
115s        Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-kmqfl    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
114s        Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-6rrbx       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
114s        Normal   Pulling             pod/cert-manager-55c69bf5cf-7ftbc               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
94s         Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-kmqfl    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 20.575s (20.575s including waiting). Image size: 15426355 bytes.
94s         Normal   Created             pod/cert-manager-cainjector-5765b5f544-kmqfl    Created container cert-manager-cainjector
93s         Normal   Started             pod/cert-manager-cainjector-5765b5f544-kmqfl    Started container cert-manager-cainjector
89s         Normal   Created             pod/cert-manager-webhook-6b67444dc9-6rrbx       Created container cert-manager-webhook
89s         Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-6rrbx       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 24.67s (24.67s including waiting). Image size: 18192443 bytes.
88s         Normal   Started             pod/cert-manager-webhook-6b67444dc9-6rrbx       Started container cert-manager-webhook
85s         Normal   Pulled              pod/cert-manager-55c69bf5cf-7ftbc               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 29.647s (29.647s including waiting). Image size: 21189387 bytes.
84s         Normal   Created             pod/cert-manager-55c69bf5cf-7ftbc               Created container cert-manager-controller
84s         Normal   Started             pod/cert-manager-55c69bf5cf-7ftbc               Started container cert-manager-controller
77s         Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-wmr6z
76s         Normal   Pulling             pod/cert-manager-startupapicheck-wmr6z          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
76s         Normal   Scheduled           pod/cert-manager-startupapicheck-wmr6z          Successfully assigned cert-manager/cert-manager-startupapicheck-wmr6z to k3d-vyking-dev-agent-0
68s         Normal   Pulled              pod/cert-manager-startupapicheck-wmr6z          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 7.223s (7.223s including waiting). Image size: 14095526 bytes.
68s         Normal   Started             pod/cert-manager-startupapicheck-wmr6z          Started container cert-manager-startupapicheck
68s         Normal   Created             pod/cert-manager-startupapicheck-wmr6z          Created container cert-manager-startupapicheck
64s         Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-7ftbc              4m           23Mi            
cert-manager-cainjector-5765b5f544-kmqfl   4m           21Mi            
cert-manager-webhook-6b67444dc9-6rrbx      2m           11Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-z5jxv   1/1     Running   0          16m   10.42.0.3   k3d-vyking-dev-agent-0   <none>           <none>
```

### Sealed Secrets deployment
```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           16m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.26.0   name=sealed-secrets-controller
```

### Sealed Secrets service
```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.75.71   <none>        8080/TCP   16m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
15m         Normal    SuccessfulCreate       daemonset/svclb-traefik-5b522f32                  Created pod: svclb-traefik-5b522f32-tql6g
15m         Normal    ScalingReplicaSet      deployment/traefik                                Scaled up replica set traefik-5d45fc8cc9 to 1
15m         Normal    SuccessfulCreate       replicaset/traefik-5d45fc8cc9                     Created pod: traefik-5d45fc8cc9-cj7pf
15m         Normal    Scheduled              pod/svclb-traefik-5b522f32-tql6g                  Successfully assigned kube-system/svclb-traefik-5b522f32-tql6g to k3d-vyking-dev-agent-0
15m         Normal    SuccessfulCreate       daemonset/svclb-traefik-5b522f32                  Created pod: svclb-traefik-5b522f32-wbmvl
15m         Normal    Scheduled              pod/svclb-traefik-5b522f32-n8l76                  Successfully assigned kube-system/svclb-traefik-5b522f32-n8l76 to k3d-vyking-dev-server-0
15m         Normal    Scheduled              pod/svclb-traefik-5b522f32-wbmvl                  Successfully assigned kube-system/svclb-traefik-5b522f32-wbmvl to k3d-vyking-dev-agent-1
15m         Normal    Pulling                pod/svclb-traefik-5b522f32-tql6g                  Pulling image "rancher/klipper-lb:v0.4.9"
15m         Normal    Pulling                pod/svclb-traefik-5b522f32-n8l76                  Pulling image "rancher/klipper-lb:v0.4.9"
15m         Normal    Pulling                pod/svclb-traefik-5b522f32-wbmvl                  Pulling image "rancher/klipper-lb:v0.4.9"
15m         Normal    Pulling                pod/traefik-5d45fc8cc9-cj7pf                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
15m         Normal    Completed              job/helm-install-traefik                          Job completed
15m         Normal    Created                pod/svclb-traefik-5b522f32-wbmvl                  Created container lb-tcp-80
15m         Normal    Pulled                 pod/svclb-traefik-5b522f32-wbmvl                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 8.882s (8.882s including waiting). Image size: 4990278 bytes.
14m         Normal    Started                pod/svclb-traefik-5b522f32-wbmvl                  Started container lb-tcp-80
14m         Normal    Pulled                 pod/svclb-traefik-5b522f32-wbmvl                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Created                pod/svclb-traefik-5b522f32-wbmvl                  Created container lb-tcp-443
14m         Normal    Started                pod/svclb-traefik-5b522f32-wbmvl                  Started container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-5b522f32-n8l76                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 10.46s (10.46s including waiting). Image size: 4990278 bytes.
14m         Normal    Created                pod/svclb-traefik-5b522f32-n8l76                  Created container lb-tcp-80
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.4]
14m         Normal    Started                pod/svclb-traefik-5b522f32-n8l76                  Started container lb-tcp-80
14m         Normal    Pulled                 pod/svclb-traefik-5b522f32-n8l76                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Created                pod/svclb-traefik-5b522f32-n8l76                  Created container lb-tcp-443
14m         Normal    Started                pod/svclb-traefik-5b522f32-n8l76                  Started container lb-tcp-443
14m         Normal    Started                pod/svclb-traefik-5b522f32-tql6g                  Started container lb-tcp-80
14m         Normal    Created                pod/svclb-traefik-5b522f32-tql6g                  Created container lb-tcp-80
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.4] -> [172.18.0.2 172.18.0.4]
14m         Normal    Created                pod/svclb-traefik-5b522f32-tql6g                  Created container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-5b522f32-tql6g                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 13.495s (13.495s including waiting). Image size: 4990278 bytes.
14m         Normal    Pulled                 pod/svclb-traefik-5b522f32-tql6g                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Started                pod/svclb-traefik-5b522f32-tql6g                  Started container lb-tcp-443
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
14m         Normal    Pulled                 pod/traefik-5d45fc8cc9-cj7pf                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 36.125s (36.125s including waiting). Image size: 49449055 bytes.
14m         Normal    Created                pod/traefik-5d45fc8cc9-cj7pf                      Created container traefik
14m         Normal    Started                pod/traefik-5d45fc8cc9-cj7pf                      Started container traefik
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
14m         Warning   Unhealthy              pod/traefik-5d45fc8cc9-cj7pf                      Readiness probe failed: HTTP probe failed with statuscode: 404
93s         Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-kmqfl_b30d35f1-2fe9-414e-8e8e-f2e3bdf47fed became leader
84s         Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-7ftbc-external-cert-manager-controller became leader
```


## 🚀 Workload Rollouts
### Namespace `argocd-dev`
### Deployment argocd-applicationset-controller
```bash
+ kubectl rollout status deploy argocd-applicationset-controller -n argocd-dev --timeout=30s
deployment "argocd-applicationset-controller" successfully rolled out
```

### Deployment argocd-dex-server
```bash
+ kubectl rollout status deploy argocd-dex-server -n argocd-dev --timeout=30s
deployment "argocd-dex-server" successfully rolled out
```

### Deployment argocd-notifications-controller
```bash
+ kubectl rollout status deploy argocd-notifications-controller -n argocd-dev --timeout=30s
deployment "argocd-notifications-controller" successfully rolled out
```

### Deployment argocd-redis
```bash
+ kubectl rollout status deploy argocd-redis -n argocd-dev --timeout=30s
deployment "argocd-redis" successfully rolled out
```

### Deployment argocd-repo-server
```bash
+ kubectl rollout status deploy argocd-repo-server -n argocd-dev --timeout=30s
deployment "argocd-repo-server" successfully rolled out
```

### Deployment argocd-server
```bash
+ kubectl rollout status deploy argocd-server -n argocd-dev --timeout=30s
deployment "argocd-server" successfully rolled out
```

### StatefulSet argocd-application-controller
```bash
+ kubectl rollout status statefulset argocd-application-controller -n argocd-dev --timeout=30s
partitioned roll out complete: 1 new pods have been updated...
```


### Namespace `frontend-dev`
### Deployment frontend-frontend
```bash
+ kubectl rollout status deploy frontend-frontend -n frontend-dev --timeout=30s
deployment "frontend-frontend" successfully rolled out
```


### Namespace `backend-dev`
### Deployment backend-backend
```bash
+ kubectl rollout status deploy backend-backend -n backend-dev --timeout=30s
Waiting for deployment "backend-backend" rollout to finish: 0 of 2 updated replicas are available...
Waiting for deployment "backend-backend" rollout to finish: 1 of 2 updated replicas are available...
deployment "backend-backend" successfully rolled out
```


### Namespace `cert-manager`
### Deployment cert-manager
```bash
+ kubectl rollout status deploy cert-manager -n cert-manager --timeout=30s
deployment "cert-manager" successfully rolled out
```

### Deployment cert-manager-cainjector
```bash
+ kubectl rollout status deploy cert-manager-cainjector -n cert-manager --timeout=30s
deployment "cert-manager-cainjector" successfully rolled out
```

### Deployment cert-manager-webhook
```bash
+ kubectl rollout status deploy cert-manager-webhook -n cert-manager --timeout=30s
deployment "cert-manager-webhook" successfully rolled out
```


### Namespace `kube-system`
### Deployment coredns
```bash
+ kubectl rollout status deploy coredns -n kube-system --timeout=30s
deployment "coredns" successfully rolled out
```

### Deployment local-path-provisioner
```bash
+ kubectl rollout status deploy local-path-provisioner -n kube-system --timeout=30s
deployment "local-path-provisioner" successfully rolled out
```

### Deployment metrics-server
```bash
+ kubectl rollout status deploy metrics-server -n kube-system --timeout=30s
deployment "metrics-server" successfully rolled out
```

### Deployment sealed-secrets-controller
```bash
+ kubectl rollout status deploy sealed-secrets-controller -n kube-system --timeout=30s
deployment "sealed-secrets-controller" successfully rolled out
```

### Deployment traefik
```bash
+ kubectl rollout status deploy traefik -n kube-system --timeout=30s
deployment "traefik" successfully rolled out
```

### DaemonSet svclb-traefik-5b522f32
```bash
+ kubectl rollout status daemonset svclb-traefik-5b522f32 -n kube-system --timeout=30s
daemon set "svclb-traefik-5b522f32" successfully rolled out
```


✅ Tests complete.
