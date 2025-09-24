# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-24 06:08:42 CEST
- **Environment:** `dev`
- **Cluster Name:** `vyking-dev`
- **Kubeconfig Path:** `~/.kube/vyking-dev-config`
- **tfvars source:** `terraform/env/dev.tfvars`

## 🧭 Access Checks
### kubectl version
```bash
+ kubectl version
Client Version: v1.33.5
Kustomize Version: v5.6.0
Server Version: v1.31.5+k3s1
WARNING: version difference between client (1.33) and server (1.31) exceeds the supported minor version skew of +/-1
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
### cluster-info
```bash
+ kubectl get cluster-info
error: the server doesn't have a resource type "cluster-info"
[command failed 0]
```

### nodes
```bash
+ kubectl get nodes nodes
Error from server (NotFound): nodes "nodes" not found
[command failed 0]
```

### ns
```bash
+ kubectl get ns ns
Error from server (NotFound): namespaces "ns" not found
[command failed 0]
```

### pv
```bash
+ kubectl get pv pv
Error from server (NotFound): persistentvolumes "pv" not found
[command failed 0]
```

### storageclass
```bash
+ kubectl get storageclass storageclass
Error from server (NotFound): storageclasses.storage.k8s.io "storageclass" not found
[command failed 0]
```

### pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS                       RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running                      0          5m31s   10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-8njt5   1/1     Running                      0          5m33s   10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-d8h9m                  1/1     Running                      0          5m34s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-xdsbp    1/1     Running                      0          5m34s   10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-65s9s                       1/1     Running                      0          5m34s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-5nr9h                  1/1     Running                      0          5m31s   10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-v7rdz                  1/1     Running                      0          5m32s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-server-556b554c94-bpvdg                      1/1     Running                      0          5m33s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-server-556b554c94-tnr5k                      1/1     Running                      0          5m34s   10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
backend-dev     backend-backend-56999fb9f-trgpd                     0/1     Running                      0          5s      10.42.1.12   k3d-vyking-dev-agent-1    <none>           <none>
backend-dev     backend-backend-d875b6fbb-95xhv                     0/1     CreateContainerConfigError   0          71s     10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-55c69bf5cf-pmbkp                       1/1     Running                      0          2m43s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-t9x4l            1/1     Running                      0          2m43s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-hj8bz               1/1     Running                      0          2m43s   10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-989xs           1/1     Running                      0          41s     10.42.0.9    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-xtjgn                             1/1     Running                      0          23m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-rlb56             1/1     Running                      0          23m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     metrics-server-5985cbc9d7-p5tfm                     1/1     Running                      0          23m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     sealed-secrets-controller-79c4ffdbd7-nwqb9          1/1     Running                      0          9m12s   10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
```

### svc (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP   10.43.220.252   <none>        8082/TCP                     5m36s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP   10.43.123.15    <none>        7000/TCP                     5m36s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP   10.43.148.178   <none>        5556/TCP,5557/TCP,5558/TCP   5m36s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP   10.43.152.66    <none>        6379/TCP                     5m36s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     5m36s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP   10.43.160.84    <none>        8081/TCP                     5m36s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP   10.43.251.224   <none>        8084/TCP                     5m36s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP   10.43.209.231   <none>        80/TCP,443/TCP               5m36s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP   10.43.244.230   <none>        8081/TCP                     72s     app=backend-backend
cert-manager    cert-manager                            ClusterIP   10.43.155.42    <none>        9402/TCP                     2m45s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP   10.43.42.174    <none>        9402/TCP                     2m45s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP   10.43.244.175   <none>        443/TCP,9402/TCP             2m45s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP   10.43.0.1       <none>        443/TCP                      27m     <none>
ingress-nginx   ingress-nginx-controller                NodePort    10.43.223.84    <none>        80:30080/TCP,443:30443/TCP   43s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP   10.43.29.59     <none>        443/TCP                      43s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP   10.43.0.10      <none>        53/UDP,53/TCP,9153/TCP       27m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP   10.43.239.205   <none>        443/TCP                      27m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP   10.43.118.237   <none>        8080/TCP                     9m13s   name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP   10.43.244.223   <none>        8081/TCP                     9m14s   name=sealed-secrets-controller
```

### ingress (all namespaces)
```bash
+ kubectl get ingress -A -o wide
NAMESPACE     NAME              CLASS    HOSTS                ADDRESS   PORTS   AGE
backend-dev   backend-backend   <none>   frontend-dev.local             80      72s
```

### deploy (all namespaces)
```bash
+ kubectl get deploy -A -o wide
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                                                                                     SELECTOR
argocd-dev      argocd-applicationset-controller   1/1     1            1           5m35s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                  1/1     1            1           5m35s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                                                                                                 app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-notifications-controller    1/1     1            1           5m35s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-dev      argocd-redis                       1/1     1            1           5m35s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine                                                                       app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                 2/2     2            2           5m35s   repo-server                 quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                      2/2     2            2           5m35s   server                      quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                    0/1     1            0           72s     backend                     vyking-backend:dev                                                                                                         app=backend-backend
cert-manager    cert-manager                       1/1     1            1           2m44s   cert-manager-controller     quay.io/jetstack/cert-manager-controller:v1.16.1                                                                           app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector            1/1     1            1           2m44s   cert-manager-cainjector     quay.io/jetstack/cert-manager-cainjector:v1.16.1                                                                           app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook               1/1     1            1           2m44s   cert-manager-webhook        quay.io/jetstack/cert-manager-webhook:v1.16.1                                                                              app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
ingress-nginx   ingress-nginx-controller           1/1     1            1           42s     controller                  registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a   app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     coredns                            1/1     1            1           27m     coredns                     rancher/mirrored-coredns-coredns:1.12.0                                                                                    k8s-app=kube-dns
kube-system     local-path-provisioner             1/1     1            1           27m     local-path-provisioner      rancher/local-path-provisioner:v0.0.30                                                                                     app=local-path-provisioner
kube-system     metrics-server                     1/1     1            1           27m     metrics-server              rancher/mirrored-metrics-server:v0.7.2                                                                                     k8s-app=metrics-server
kube-system     sealed-secrets-controller          1/1     1            1           9m13s   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.27.1                                                                         name=sealed-secrets-controller
```

### statefulset (all namespaces)
```bash
+ kubectl get statefulset -A -o wide
NAMESPACE    NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-dev   argocd-application-controller   1/1     5m36s   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### cronjobs (all namespaces)
```bash
+ kubectl get cronjobs -A -o wide
No resources found
```

### hpa (all namespaces)
```bash
+ kubectl get hpa -A -o wide
NAMESPACE     NAME              REFERENCE                    TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-dev   backend-backend   Deployment/backend-backend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          73s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    250m         8%       621Mi           7%          
k3d-vyking-dev-agent-1    237m         7%       650Mi           8%          
k3d-vyking-dev-server-0   367m         12%      1171Mi          14%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     26m          133Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-8njt5   2m           48Mi            
argocd-dev      argocd-dex-server-796678d5bc-d8h9m                  1m           116Mi           
argocd-dev      argocd-notifications-controller-6d84bf8458-xdsbp    2m           118Mi           
argocd-dev      argocd-redis-7c7fb7fc74-65s9s                       5m           11Mi            
argocd-dev      argocd-repo-server-d587f667c-5nr9h                  3m           93Mi            
argocd-dev      argocd-repo-server-d587f667c-v7rdz                  2m           94Mi            
argocd-dev      argocd-server-556b554c94-bpvdg                      2m           26Mi            
argocd-dev      argocd-server-556b554c94-tnr5k                      3m           73Mi            
cert-manager    cert-manager-55c69bf5cf-pmbkp                       6m           48Mi            
cert-manager    cert-manager-cainjector-5765b5f544-t9x4l            4m           37Mi            
cert-manager    cert-manager-webhook-6b67444dc9-hj8bz               2m           48Mi            
ingress-nginx   ingress-nginx-controller-599c5c76cc-989xs           5m           91Mi            
kube-system     coredns-ccb96694c-xtjgn                             9m           31Mi            
kube-system     local-path-provisioner-5cf85fd84d-rlb56             1m           10Mi            
kube-system     metrics-server-5985cbc9d7-p5tfm                     19m          26Mi            
kube-system     sealed-secrets-controller-79c4ffdbd7-nwqb9          5m           17Mi            
```

## 🚦 Argo CD 
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          5m34s   10.42.1.9   k3d-vyking-dev-agent-1    <none>           <none>
argocd-applicationset-controller-78f49df558-8njt5   1/1     Running   0          5m36s   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
argocd-dex-server-796678d5bc-d8h9m                  1/1     Running   0          5m37s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-notifications-controller-6d84bf8458-xdsbp    1/1     Running   0          5m37s   10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
argocd-redis-7c7fb7fc74-65s9s                       1/1     Running   0          5m37s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-5nr9h                  1/1     Running   0          5m34s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-repo-server-d587f667c-v7rdz                  1/1     Running   0          5m35s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-server-556b554c94-bpvdg                      1/1     Running   0          5m36s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-tnr5k                      1/1     Running   0          5m37s   10.42.2.4   k3d-vyking-dev-server-0   <none>           <none>
```

### Deploy
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           5m38s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           5m38s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           5m38s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           5m38s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 2/2     2            2           5m38s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      2/2     2            2           5m38s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### Statefulset
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     5m38s   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### Svc
```bash
+ kubectl get svc -n argocd-dev -o wide
NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-application-controller-metrics   ClusterIP   10.43.220.252   <none>        8082/TCP                     5m39s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.123.15    <none>        7000/TCP                     5m39s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.148.178   <none>        5556/TCP,5557/TCP,5558/TCP   5m39s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.152.66    <none>        6379/TCP                     5m39s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     5m39s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.160.84    <none>        8081/TCP                     5m39s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.251.224   <none>        8084/TCP                     5m39s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.209.231   <none>        80/TCP,443/TCP               5m39s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### Ingress
```bash
+ kubectl get ingress -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     26m          133Mi           
argocd-applicationset-controller-78f49df558-8njt5   2m           48Mi            
argocd-dex-server-796678d5bc-d8h9m                  1m           116Mi           
argocd-notifications-controller-6d84bf8458-xdsbp    2m           118Mi           
argocd-redis-7c7fb7fc74-65s9s                       5m           11Mi            
argocd-repo-server-d587f667c-5nr9h                  3m           93Mi            
argocd-repo-server-d587f667c-v7rdz                  2m           94Mi            
argocd-server-556b554c94-bpvdg                      2m           26Mi            
argocd-server-556b554c94-tnr5k                      3m           73Mi            
```

## 🎨 Frontend (`frontend-dev`)
### Pods
```bash
+ kubectl get pods -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Deploy
```bash
+ kubectl get deploy -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Statefulset
```bash
+ kubectl get statefulset -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Svc
```bash
+ kubectl get svc -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Ingress
```bash
+ kubectl get ingress -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
No resources found in frontend-dev namespace.
```

## ⚙️ Backend (`backend-dev`)
### Pods
```bash
+ kubectl get pods -n backend-dev -o wide
NAME                              READY   STATUS             RESTARTS     AGE   IP           NODE                      NOMINATED NODE   READINESS GATES
backend-backend-56999fb9f-trgpd   0/1     CrashLoopBackOff   1 (6s ago)   12s   10.42.1.12   k3d-vyking-dev-agent-1    <none>           <none>
backend-backend-d875b6fbb-95xhv   0/1     CrashLoopBackOff   1 (2s ago)   78s   10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
```

### Deploy
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES               SELECTOR
backend-backend   0/1     1            0           78s   backend      vyking-backend:dev   app=backend-backend
```

### Statefulset
```bash
+ kubectl get statefulset -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Svc
```bash
+ kubectl get svc -n backend-dev -o wide
NAME              TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.244.230   <none>        8081/TCP   79s   app=backend-backend
```

### Ingress
```bash
+ kubectl get ingress -n backend-dev -o wide
NAME              CLASS    HOSTS                ADDRESS   PORTS   AGE
backend-backend   <none>   frontend-dev.local             80      79s
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
error: metrics not available yet
[command failed 0]
```

## 🛢️ MySQL (`mysql-dev`)
### Pods
```bash
+ kubectl get pods -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Deploy
```bash
+ kubectl get deploy -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Statefulset
```bash
+ kubectl get statefulset -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Svc
```bash
+ kubectl get svc -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Ingress
```bash
+ kubectl get ingress -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n mysql-dev
No resources found in mysql-dev namespace.
```

✅ Tests complete.
