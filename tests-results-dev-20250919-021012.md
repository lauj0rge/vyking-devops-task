# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-19 02:10:12 CEST
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
Kubernetes control plane is running at https://0.0.0.0:41333
CoreDNS is running at https://0.0.0.0:41333/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:41333/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 16m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 16m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   16m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   5m51s
backend-dev       Active   11s
cert-manager      Active   84s
default           Active   16m
frontend-dev      Active   11s
kube-node-lease   Active   16m
kube-public       Active   16m
kube-system       Active   16m
mysql-dev         Active   98s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE      NAME                                                READY   STATUS              RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-dev     argocd-application-controller-0                     1/1     Running             0          4m21s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-applicationset-controller-78f49df558-x8tvm   1/1     Running             0          4m22s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev     argocd-dex-server-796678d5bc-9k97d                  1/1     Running             0          4m22s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-notifications-controller-6d84bf8458-zrncb    1/1     Running             0          4m20s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-redis-7c7fb7fc74-2sbns                       1/1     Running             0          4m22s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-repo-server-d587f667c-vxq7w                  1/1     Running             0          4m22s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev     argocd-server-556b554c94-tnfs2                      1/1     Running             0          4m22s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
backend-dev    backend-backend-66c96df8b-m9hm4                     0/1     ContainerCreating   0          2s      <none>      k3d-vyking-dev-agent-0    <none>           <none>
backend-dev    backend-backend-66c96df8b-zr4gw                     0/1     ContainerCreating   0          1s      <none>      k3d-vyking-dev-server-0   <none>           <none>
cert-manager   cert-manager-55c69bf5cf-c5qm7                       1/1     Running             0          79s     10.42.1.9   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager   cert-manager-cainjector-5765b5f544-dj8s4            1/1     Running             0          79s     10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
cert-manager   cert-manager-webhook-6b67444dc9-dbrbp               1/1     Running             0          79s     10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
frontend-dev   frontend-frontend-597d68f8cf-sqhgj                  0/1     ContainerCreating   0          2s      <none>      k3d-vyking-dev-agent-1    <none>           <none>
kube-system    coredns-ccb96694c-49szf                             1/1     Running             0          16m     10.42.2.2   k3d-vyking-dev-server-0   <none>           <none>
kube-system    helm-install-traefik-2czdc                          0/1     Completed           1          16m     10.42.1.2   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    helm-install-traefik-crd-d6ccg                      0/1     Completed           0          16m     10.42.2.3   k3d-vyking-dev-server-0   <none>           <none>
kube-system    local-path-provisioner-5cf85fd84d-h47kj             1/1     Running             0          16m     10.42.0.2   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    metrics-server-5985cbc9d7-w8tmm                     1/1     Running             0          16m     10.42.0.3   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    sealed-secrets-controller-5655858cbc-jxlhh          1/1     Running             0          15m     10.42.1.3   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    svclb-traefik-63842cb1-p8tq8                        2/2     Running             0          14m     10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
kube-system    svclb-traefik-63842cb1-tqc7j                        2/2     Running             0          14m     10.42.1.4   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    svclb-traefik-63842cb1-zvnqn                        2/2     Running             0          14m     10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    traefik-5d45fc8cc9-szqwd                            1/1     Running             0          14m     10.42.2.4   k3d-vyking-dev-server-0   <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE      NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev     argocd-application-controller-metrics   ClusterIP      10.43.248.136   <none>                             8082/TCP                     4m25s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev     argocd-applicationset-controller        ClusterIP      10.43.133.198   <none>                             7000/TCP                     4m25s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev     argocd-dex-server                       ClusterIP      10.43.49.107    <none>                             5556/TCP,5557/TCP,5558/TCP   4m25s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev     argocd-redis                            ClusterIP      10.43.89.146    <none>                             6379/TCP                     4m25s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     4m25s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-repo-server                      ClusterIP      10.43.110.13    <none>                             8081/TCP                     4m25s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-repo-server-metrics              ClusterIP      10.43.210.92    <none>                             8084/TCP                     4m25s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-server                           ClusterIP      10.43.126.89    <none>                             80/TCP,443/TCP               4m25s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev    backend-backend                         ClusterIP      10.43.36.69     <none>                             8081/TCP                     3s      app=backend-backend
cert-manager   cert-manager                            ClusterIP      10.43.182.179   <none>                             9402/TCP                     81s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager   cert-manager-cainjector                 ClusterIP      10.43.149.184   <none>                             9402/TCP                     81s     app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager   cert-manager-webhook                    ClusterIP      10.43.252.44    <none>                             443/TCP,9402/TCP             81s     app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default        kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      16m     <none>
frontend-dev   frontend-frontend                       ClusterIP      10.43.105.214   <none>                             8080/TCP                     3s      app=frontend-frontend
kube-system    kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       16m     k8s-app=kube-dns
kube-system    metrics-server                          ClusterIP      10.43.121.221   <none>                             443/TCP                      16m     k8s-app=metrics-server
kube-system    sealed-secrets-controller               ClusterIP      10.43.198.43    <none>                             8080/TCP                     15m     name=sealed-secrets-controller
kube-system    sealed-secrets-controller-metrics       ClusterIP      10.43.15.226    <none>                             8081/TCP                     15m     name=sealed-secrets-controller
kube-system    traefik                                 LoadBalancer   10.43.169.210   172.18.0.2,172.18.0.3,172.18.0.4   80:31760/TCP,443:30546/TCP   14m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        2s
frontend-dev   frontend-frontend   <none>    frontend-dev.local                                      80, 443   2s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE      NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev     argocd-applicationset-controller   1/1     1            1           4m25s
argocd-dev     argocd-dex-server                  1/1     1            1           4m25s
argocd-dev     argocd-notifications-controller    1/1     1            1           4m25s
argocd-dev     argocd-redis                       1/1     1            1           4m25s
argocd-dev     argocd-repo-server                 1/1     1            1           4m25s
argocd-dev     argocd-server                      1/1     1            1           4m25s
backend-dev    backend-backend                    0/2     2            0           4s
cert-manager   cert-manager                       1/1     1            1           82s
cert-manager   cert-manager-cainjector            1/1     1            1           82s
cert-manager   cert-manager-webhook               1/1     1            1           82s
frontend-dev   frontend-frontend                  0/1     1            0           4s
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
argocd-dev   argocd-application-controller   1/1     4m26s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-63842cb1   3         3         3       3            3           <none>          14m
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
kube-system   helm-install-traefik       Complete   1/1           2m3s       16m
kube-system   helm-install-traefik-crd   Complete   1/1           115s       16m
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
backend-dev    backend-backend     Deployment/backend-backend     cpu: <unknown>/70%, memory: <unknown>/70%   2         5         0          7s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         0          7s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    242m         8%       281Mi           3%          
k3d-vyking-dev-agent-1    337m         11%      443Mi           5%          
k3d-vyking-dev-server-0   391m         13%      1378Mi          17%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE      NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev     argocd-application-controller-0                     148m         190Mi           
argocd-dev     argocd-applicationset-controller-78f49df558-x8tvm   8m           26Mi            
argocd-dev     argocd-dex-server-796678d5bc-9k97d                  1m           80Mi            
argocd-dev     argocd-notifications-controller-6d84bf8458-zrncb    1m           30Mi            
argocd-dev     argocd-redis-7c7fb7fc74-2sbns                       5m           3Mi             
argocd-dev     argocd-repo-server-d587f667c-vxq7w                  340m         98Mi            
argocd-dev     argocd-server-556b554c94-tnfs2                      4m           29Mi            
cert-manager   cert-manager-55c69bf5cf-c5qm7                       3m           18Mi            
cert-manager   cert-manager-cainjector-5765b5f544-dj8s4            4m           21Mi            
cert-manager   cert-manager-webhook-6b67444dc9-dbrbp               7m           14Mi            
kube-system    coredns-ccb96694c-49szf                             13m          15Mi            
kube-system    local-path-provisioner-5cf85fd84d-h47kj             3m           12Mi            
kube-system    metrics-server-5985cbc9d7-w8tmm                     18m          20Mi            
kube-system    sealed-secrets-controller-5655858cbc-jxlhh          4m           22Mi            
kube-system    svclb-traefik-63842cb1-p8tq8                        0m           0Mi             
kube-system    svclb-traefik-63842cb1-tqc7j                        0m           0Mi             
kube-system    svclb-traefik-63842cb1-zvnqn                        0m           0Mi             
kube-system    traefik-5d45fc8cc9-szqwd                            1m           43Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
frontend-dev   14s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev   14s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev   14s         Normal    cert-manager.io                  certificaterequest/frontend-cert-dev-1                   Certificate request has been approved by cert-manager.io
frontend-dev   14s         Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev   14s         Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev   14s         Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev   14s         Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev   14s         Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev   14s         Normal    Generated                        certificate/frontend-cert-dev                            Stored new private key in temporary Secret resource "frontend-cert-dev-cqpv7"
frontend-dev   14s         Normal    Requested                        certificate/frontend-cert-dev                            Created new CertificateRequest resource "frontend-cert-dev-1"
frontend-dev   13s         Normal    Issuing                          certificate/frontend-cert-dev                            The certificate has been successfully issued
frontend-dev   13s         Warning   BadConfig                        certificaterequest/frontend-cert-dev-1                   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
frontend-dev   13s         Normal    CertificateIssued                certificaterequest/frontend-cert-dev-1                   Certificate fetched from issuer successfully
argocd-dev     11s         Normal    OperationStarted                 application/frontend                                     Initiated automated sync to '170afc867367d00bf208fdea84b5cbced857a86e'
argocd-dev     11s         Normal    ResourceUpdated                  application/frontend                                     Updated sync status:  -> OutOfSync
argocd-dev     11s         Normal    ResourceUpdated                  application/frontend                                     Updated health status:  -> Missing
argocd-dev     10s         Normal    ResourceUpdated                  application/backend                                      Updated sync status:  -> OutOfSync
argocd-dev     10s         Normal    ResourceUpdated                  application/backend                                      Updated health status:  -> Missing
argocd-dev     10s         Normal    OperationStarted                 application/backend                                      Initiated automated sync to '170afc867367d00bf208fdea84b5cbced857a86e'
backend-dev    8s          Normal    ScalingReplicaSet                deployment/backend-backend                               Scaled up replica set backend-backend-66c96df8b to 2
frontend-dev   8s          Normal    SuccessfulCreate                 replicaset/frontend-frontend-597d68f8cf                  Created pod: frontend-frontend-597d68f8cf-sqhgj
frontend-dev   8s          Normal    ScalingReplicaSet                deployment/frontend-frontend                             Scaled up replica set frontend-frontend-597d68f8cf to 1
frontend-dev   7s          Normal    Scheduled                        pod/frontend-frontend-597d68f8cf-sqhgj                   Successfully assigned frontend-dev/frontend-frontend-597d68f8cf-sqhgj to k3d-vyking-dev-agent-1
argocd-dev     7s          Normal    OperationCompleted               application/frontend                                     Sync operation to 170afc867367d00bf208fdea84b5cbced857a86e succeeded
backend-dev    6s          Normal    Scheduled                        pod/backend-backend-66c96df8b-m9hm4                      Successfully assigned backend-dev/backend-backend-66c96df8b-m9hm4 to k3d-vyking-dev-agent-0
argocd-dev     7s          Normal    ResourceUpdated                  application/frontend                                     Updated sync status: OutOfSync -> Synced
backend-dev    7s          Normal    SuccessfulCreate                 replicaset/backend-backend-66c96df8b                     Created pod: backend-backend-66c96df8b-zr4gw
backend-dev    7s          Normal    SuccessfulCreate                 replicaset/backend-backend-66c96df8b                     Created pod: backend-backend-66c96df8b-m9hm4
backend-dev    6s          Normal    Scheduled                        pod/backend-backend-66c96df8b-zr4gw                      Successfully assigned backend-dev/backend-backend-66c96df8b-zr4gw to k3d-vyking-dev-server-0
argocd-dev     6s          Normal    OperationCompleted               application/backend                                      Sync operation to 170afc867367d00bf208fdea84b5cbced857a86e succeeded
argocd-dev     6s          Normal    ResourceUpdated                  application/frontend                                     Updated health status: Missing -> Progressing
frontend-dev   5s          Normal    Created                          pod/frontend-frontend-597d68f8cf-sqhgj                   Created container frontend
frontend-dev   5s          Normal    Pulled                           pod/frontend-frontend-597d68f8cf-sqhgj                   Container image "vyking-frontend:dev" already present on machine
backend-dev    3s          Warning   Failed                           pod/backend-backend-66c96df8b-m9hm4                      Error: secret "mysql-credentials-dev" not found
argocd-dev     4s          Normal    ResourceUpdated                  application/backend                                      Updated sync status: OutOfSync -> Synced
argocd-dev     4s          Normal    ResourceUpdated                  application/backend                                      Updated health status: Missing -> Progressing
backend-dev    3s          Normal    Pulled                           pod/backend-backend-66c96df8b-m9hm4                      Container image "vyking-backend:dev" already present on machine
frontend-dev   4s          Normal    Started                          pod/frontend-frontend-597d68f8cf-sqhgj                   Started container frontend
backend-dev    3s          Normal    Pulled                           pod/backend-backend-66c96df8b-zr4gw                      Container image "vyking-backend:dev" already present on machine
backend-dev    3s          Warning   Failed                           pod/backend-backend-66c96df8b-zr4gw                      Error: secret "mysql-credentials-dev" not found
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          4m27s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-applicationset-controller-78f49df558-x8tvm   1/1     Running   0          4m28s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dex-server-796678d5bc-9k97d                  1/1     Running   0          4m28s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-notifications-controller-6d84bf8458-zrncb    1/1     Running   0          4m26s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-redis-7c7fb7fc74-2sbns                       1/1     Running   0          4m28s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-repo-server-d587f667c-vxq7w                  1/1     Running   0          4m28s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-tnfs2                      1/1     Running   0          4m28s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           4m30s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           4m30s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           4m30s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           4m30s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           4m30s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           4m30s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     4m30s   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.248.136   <none>        8082/TCP                     4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.133.198   <none>        7000/TCP                     4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.49.107    <none>        5556/TCP,5557/TCP,5558/TCP   4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.89.146    <none>        6379/TCP                     4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     4m31s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.110.13    <none>        8081/TCP                     4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.210.92    <none>        8084/TCP                     4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.126.89    <none>        80/TCP,443/TCP               4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     4m35s
argocd-cmd-params-cm            41     4m35s
argocd-gpg-keys-cm              0      4m35s
argocd-notifications-cm         1      4m35s
argocd-rbac-cm                  4      4m35s
argocd-redis-health-configmap   2      4m35s
argocd-ssh-known-hosts-cm       1      4m35s
argocd-tls-certs-cm             0      4m35s
kube-root-ca.crt                1      5m59s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      4m13s
argocd-notifications-secret    Opaque               0      4m36s
argocd-redis                   Opaque               1      4m40s
argocd-secret                  Opaque               3      4m36s
repo-vyking-git                Opaque               2      2m3s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      5m59s
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
2m9s        Normal    Started              pod/argocd-dex-server-796678d5bc-9k97d                   Started container dex-server
84s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status:  -> Healthy
84s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status:  -> OutOfSync
84s         Normal    OperationStarted     application/mysql-sealed-secrets                         Initiated automated sync to '170afc867367d00bf208fdea84b5cbced857a86e'
68s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
66s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
42s         Normal    ResourceUpdated      application/mysql                                        Updated health status:  -> Healthy
42s         Normal    ResourceUpdated      application/mysql                                        Updated sync status:  -> Unknown
16s         Normal    OperationStarted     application/frontend                                     Initiated automated sync to '170afc867367d00bf208fdea84b5cbced857a86e'
16s         Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
16s         Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
15s         Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
15s         Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
15s         Normal    OperationStarted     application/backend                                      Initiated automated sync to '170afc867367d00bf208fdea84b5cbced857a86e'
12s         Normal    ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
12s         Normal    OperationCompleted   application/frontend                                     Sync operation to 170afc867367d00bf208fdea84b5cbced857a86e succeeded
11s         Normal    ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
11s         Normal    OperationCompleted   application/backend                                      Sync operation to 170afc867367d00bf208fdea84b5cbced857a86e succeeded
9s          Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
9s          Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     148m         190Mi           
argocd-applicationset-controller-78f49df558-x8tvm   8m           26Mi            
argocd-dex-server-796678d5bc-9k97d                  1m           80Mi            
argocd-notifications-controller-6d84bf8458-zrncb    1m           30Mi            
argocd-redis-7c7fb7fc74-2sbns                       5m           3Mi             
argocd-repo-server-d587f667c-vxq7w                  340m         98Mi            
argocd-server-556b554c94-tnfs2                      4m           29Mi            
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
default   4m12s
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
NAME                                 READY   STATUS    RESTARTS   AGE   IP           NODE                     NOMINATED NODE   READINESS GATES
frontend-frontend-597d68f8cf-sqhgj   1/1     Running   0          15s   10.42.1.11   k3d-vyking-dev-agent-1   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES                SELECTOR
frontend-frontend   1/1     1            1           15s   frontend     vyking-frontend:dev   app=frontend-frontend
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
NAME                TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE   SELECTOR
frontend-frontend   ClusterIP   10.43.105.214   <none>        8080/TCP   16s   app=frontend-frontend
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
frontend-nginx-config   1      17s
kube-root-ca.crt        1      25s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      22s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
frontend-frontend   Deployment/frontend-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          17s
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
24s         Normal    Generated                      certificate/frontend-cert-dev               Stored new private key in temporary Secret resource "frontend-cert-dev-cqpv7"
24s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
24s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
24s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
24s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
24s         Normal    Requested                      certificate/frontend-cert-dev               Created new CertificateRequest resource "frontend-cert-dev-1"
24s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
24s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
23s         Normal    CertificateIssued              certificaterequest/frontend-cert-dev-1      Certificate fetched from issuer successfully
23s         Warning   BadConfig                      certificaterequest/frontend-cert-dev-1      Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
23s         Normal    Issuing                        certificate/frontend-cert-dev               The certificate has been successfully issued
17s         Normal    Scheduled                      pod/frontend-frontend-597d68f8cf-sqhgj      Successfully assigned frontend-dev/frontend-frontend-597d68f8cf-sqhgj to k3d-vyking-dev-agent-1
18s         Normal    SuccessfulCreate               replicaset/frontend-frontend-597d68f8cf     Created pod: frontend-frontend-597d68f8cf-sqhgj
18s         Normal    ScalingReplicaSet              deployment/frontend-frontend                Scaled up replica set frontend-frontend-597d68f8cf to 1
15s         Normal    Pulled                         pod/frontend-frontend-597d68f8cf-sqhgj      Container image "vyking-frontend:dev" already present on machine
15s         Normal    Created                        pod/frontend-frontend-597d68f8cf-sqhgj      Created container frontend
14s         Normal    Started                        pod/frontend-frontend-597d68f8cf-sqhgj      Started container frontend
2s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
2s          Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
NAME                                 CPU(cores)   MEMORY(bytes)   
frontend-frontend-597d68f8cf-sqhgj   13m          9Mi             
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
NAME                              READY   STATUS                       RESTARTS   AGE   IP          NODE                      NOMINATED NODE   READINESS GATES
backend-backend-66c96df8b-m9hm4   0/1     CreateContainerConfigError   0          20s   10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
backend-backend-66c96df8b-zr4gw   0/1     CreateContainerConfigError   0          19s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES               SELECTOR
backend-backend   0/2     2            0           20s   backend      vyking-backend:dev   app=backend-backend
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
NAME              TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.36.69   <none>        8081/TCP   21s   app=backend-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME              CLASS     HOSTS                ADDRESS                            PORTS   AGE
backend-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      21s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      31s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      4s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME              REFERENCE                    TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-backend   Deployment/backend-backend   cpu: <unknown>/70%, memory: <unknown>/70%   2         5         2          23s
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
24s         Normal    ScalingReplicaSet              deployment/backend-backend                Scaled up replica set backend-backend-66c96df8b to 2
23s         Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-m9hm4
22s         Normal    Scheduled                      pod/backend-backend-66c96df8b-m9hm4       Successfully assigned backend-dev/backend-backend-66c96df8b-m9hm4 to k3d-vyking-dev-agent-0
22s         Normal    Scheduled                      pod/backend-backend-66c96df8b-zr4gw       Successfully assigned backend-dev/backend-backend-66c96df8b-zr4gw to k3d-vyking-dev-server-0
23s         Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-zr4gw
4s          Normal    Pulled                         pod/backend-backend-66c96df8b-m9hm4       Container image "vyking-backend:dev" already present on machine
19s         Warning   Failed                         pod/backend-backend-66c96df8b-m9hm4       Error: secret "mysql-credentials-dev" not found
4s          Normal    Pulled                         pod/backend-backend-66c96df8b-zr4gw       Container image "vyking-backend:dev" already present on machine
19s         Warning   Failed                         pod/backend-backend-66c96df8b-zr4gw       Error: secret "mysql-credentials-dev" not found
8s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
8s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
8s          Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
6s          Normal    Unsealed                       sealedsecret/mysql-credentials-dev        SealedSecret unsealed successfully
4s          Normal    Started                        pod/backend-backend-66c96df8b-m9hm4       Started container backend
4s          Normal    Created                        pod/backend-backend-66c96df8b-m9hm4       Created container backend
3s          Normal    Started                        pod/backend-backend-66c96df8b-zr4gw       Started container backend
4s          Normal    Created                        pod/backend-backend-66c96df8b-zr4gw       Created container backend
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
kube-root-ca.crt   1      2m3s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   5      85s
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
86s         Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
cert-manager-55c69bf5cf-c5qm7              1/1     Running   0          107s   10.42.1.9   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-cainjector-5765b5f544-dj8s4   1/1     Running   0          107s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
cert-manager-webhook-6b67444dc9-dbrbp      1/1     Running   0          107s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           108s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           108s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           108s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
NAME                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)            AGE    SELECTOR
cert-manager              ClusterIP   10.43.182.179   <none>        9402/TCP           109s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.149.184   <none>        9402/TCP           109s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.252.44    <none>        443/TCP,9402/TCP   109s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      114s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      84s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      113s
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
108s        Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-dbrbp       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-dbrbp to k3d-vyking-dev-agent-0
106s        Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-dbrbp       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
106s        Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-dj8s4    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
105s        Normal   Pulling             pod/cert-manager-55c69bf5cf-c5qm7               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
86s         Normal   Created             pod/cert-manager-webhook-6b67444dc9-dbrbp       Created container cert-manager-webhook
86s         Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-dbrbp       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 20.654s (20.654s including waiting). Image size: 18192443 bytes.
85s         Normal   Started             pod/cert-manager-webhook-6b67444dc9-dbrbp       Started container cert-manager-webhook
83s         Normal   Created             pod/cert-manager-cainjector-5765b5f544-dj8s4    Created container cert-manager-cainjector
83s         Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-dj8s4    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 22.124s (22.124s including waiting). Image size: 15426355 bytes.
82s         Normal   Started             pod/cert-manager-cainjector-5765b5f544-dj8s4    Started container cert-manager-cainjector
76s         Normal   Pulled              pod/cert-manager-55c69bf5cf-c5qm7               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 28.916s (28.916s including waiting). Image size: 21189387 bytes.
76s         Normal   Created             pod/cert-manager-55c69bf5cf-c5qm7               Created container cert-manager-controller
74s         Normal   Started             pod/cert-manager-55c69bf5cf-c5qm7               Started container cert-manager-controller
69s         Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-cfrnh
68s         Normal   Scheduled           pod/cert-manager-startupapicheck-cfrnh          Successfully assigned cert-manager/cert-manager-startupapicheck-cfrnh to k3d-vyking-dev-agent-1
67s         Normal   Pulling             pod/cert-manager-startupapicheck-cfrnh          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
60s         Normal   Created             pod/cert-manager-startupapicheck-cfrnh          Created container cert-manager-startupapicheck
60s         Normal   Pulled              pod/cert-manager-startupapicheck-cfrnh          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 6.469s (6.469s including waiting). Image size: 14095526 bytes.
59s         Normal   Started             pod/cert-manager-startupapicheck-cfrnh          Started container cert-manager-startupapicheck
54s         Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-c5qm7              32m          25Mi            
cert-manager-cainjector-5765b5f544-dj8s4   3m           21Mi            
cert-manager-webhook-6b67444dc9-dbrbp      2m           15Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-jxlhh   1/1     Running   0          16m   10.42.1.3   k3d-vyking-dev-agent-1   <none>           <none>
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
NAME                        TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.198.43   <none>        8080/TCP   16m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
14m         Normal    AppliedDaemonSet       service/traefik                                   Applied LoadBalancer DaemonSet kube-system/svclb-traefik-63842cb1
14m         Normal    Scheduled              pod/svclb-traefik-63842cb1-p8tq8                  Successfully assigned kube-system/svclb-traefik-63842cb1-p8tq8 to k3d-vyking-dev-server-0
14m         Normal    SuccessfulCreate       daemonset/svclb-traefik-63842cb1                  Created pod: svclb-traefik-63842cb1-p8tq8
14m         Normal    Scheduled              pod/svclb-traefik-63842cb1-zvnqn                  Successfully assigned kube-system/svclb-traefik-63842cb1-zvnqn to k3d-vyking-dev-agent-0
14m         Normal    SuccessfulCreate       daemonset/svclb-traefik-63842cb1                  Created pod: svclb-traefik-63842cb1-zvnqn
14m         Normal    SuccessfulCreate       daemonset/svclb-traefik-63842cb1                  Created pod: svclb-traefik-63842cb1-tqc7j
14m         Normal    Scheduled              pod/svclb-traefik-63842cb1-tqc7j                  Successfully assigned kube-system/svclb-traefik-63842cb1-tqc7j to k3d-vyking-dev-agent-1
14m         Normal    Pulling                pod/svclb-traefik-63842cb1-zvnqn                  Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Pulling                pod/traefik-5d45fc8cc9-szqwd                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
14m         Normal    Pulling                pod/svclb-traefik-63842cb1-p8tq8                  Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Pulling                pod/svclb-traefik-63842cb1-tqc7j                  Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Completed              job/helm-install-traefik                          Job completed
14m         Normal    Pulled                 pod/svclb-traefik-63842cb1-zvnqn                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 9.224s (9.224s including waiting). Image size: 4990278 bytes.
14m         Normal    Created                pod/svclb-traefik-63842cb1-zvnqn                  Created container lb-tcp-80
14m         Normal    Started                pod/svclb-traefik-63842cb1-zvnqn                  Started container lb-tcp-80
14m         Normal    Pulled                 pod/svclb-traefik-63842cb1-zvnqn                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Created                pod/svclb-traefik-63842cb1-zvnqn                  Created container lb-tcp-443
14m         Normal    Started                pod/svclb-traefik-63842cb1-zvnqn                  Started container lb-tcp-443
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.4]
14m         Normal    Created                pod/svclb-traefik-63842cb1-tqc7j                  Created container lb-tcp-80
14m         Normal    Pulled                 pod/svclb-traefik-63842cb1-tqc7j                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 15.091s (15.091s including waiting). Image size: 4990278 bytes.
14m         Normal    Created                pod/svclb-traefik-63842cb1-tqc7j                  Created container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-63842cb1-tqc7j                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Started                pod/svclb-traefik-63842cb1-tqc7j                  Started container lb-tcp-80
14m         Normal    Started                pod/svclb-traefik-63842cb1-tqc7j                  Started container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-63842cb1-p8tq8                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 17.244s (17.244s including waiting). Image size: 4990278 bytes.
14m         Normal    Pulled                 pod/svclb-traefik-63842cb1-p8tq8                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Created                pod/svclb-traefik-63842cb1-p8tq8                  Created container lb-tcp-443
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.4] -> [172.18.0.3 172.18.0.4]
14m         Normal    Created                pod/svclb-traefik-63842cb1-p8tq8                  Created container lb-tcp-80
14m         Normal    Started                pod/svclb-traefik-63842cb1-p8tq8                  Started container lb-tcp-80
14m         Normal    Started                pod/svclb-traefik-63842cb1-p8tq8                  Started container lb-tcp-443
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
13m         Normal    Pulled                 pod/traefik-5d45fc8cc9-szqwd                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 41.221s (41.221s including waiting). Image size: 49449055 bytes.
13m         Normal    Created                pod/traefik-5d45fc8cc9-szqwd                      Created container traefik
13m         Normal    Started                pod/traefik-5d45fc8cc9-szqwd                      Started container traefik
13m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
4m36s       Warning   Unhealthy              pod/coredns-ccb96694c-49szf                       Readiness probe failed: Get "http://10.42.2.2:8181/ready": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
82s         Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-dj8s4_f3679df0-8bcc-4d9f-b274-05322014ea34 became leader
75s         Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-c5qm7-external-cert-manager-controller became leader
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

### DaemonSet svclb-traefik-63842cb1
```bash
+ kubectl rollout status daemonset svclb-traefik-63842cb1 -n kube-system --timeout=30s
daemon set "svclb-traefik-63842cb1" successfully rolled out
```


✅ Tests complete.
