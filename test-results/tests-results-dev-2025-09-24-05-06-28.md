# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-24 05:06:29 CEST
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
NAMESPACE       NAME                                                READY   STATUS         RESTARTS        AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running        0               5m34s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-zdncd   1/1     Running        0               5m36s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-t6kn9                  1/1     Running        0               5m35s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-4pf48    1/1     Running        0               5m36s   10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-g9zzk                       1/1     Running        0               5m36s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-m9n7v                  1/1     Running        0               5m36s   10.42.2.4   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-nzsr5                  1/1     Running        0               5m36s   10.42.1.4   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-server-556b554c94-5czt8                      1/1     Running        0               5m36s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-server-556b554c94-9gjcb                      1/1     Running        1 (5m14s ago)   5m35s   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
backend-dev     backend-backend-d875b6fbb-k8zvs                     0/1     ErrImagePull   0               67s     10.42.0.9   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-ghktl                       1/1     Running        0               2m38s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-5pcvr            1/1     Running        0               2m38s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-7t25n               1/1     Running        0               2m38s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-9gwrf           1/1     Running        0               39s     10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
kube-system     coredns-ccb96694c-gjsdt                             1/1     Running        0               25m     10.42.2.2   k3d-vyking-dev-server-0   <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-b45rz             1/1     Running        0               25m     10.42.1.2   k3d-vyking-dev-agent-1    <none>           <none>
kube-system     metrics-server-5985cbc9d7-xjgst                     1/1     Running        0               19m     10.42.2.3   k3d-vyking-dev-server-0   <none>           <none>
kube-system     sealed-secrets-controller-79c4ffdbd7-jthqx          1/1     Running        0               9m27s   10.42.0.3   k3d-vyking-dev-agent-0    <none>           <none>
```

### svc (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP   10.43.73.79     <none>        8082/TCP                     5m38s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP   10.43.83.176    <none>        7000/TCP                     5m38s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP   10.43.52.62     <none>        5556/TCP,5557/TCP,5558/TCP   5m38s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP   10.43.110.36    <none>        6379/TCP                     5m38s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     5m38s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP   10.43.80.192    <none>        8081/TCP                     5m38s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP   10.43.188.227   <none>        8084/TCP                     5m38s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP   10.43.53.44     <none>        80/TCP,443/TCP               5m38s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP   10.43.137.191   <none>        8081/TCP                     68s     app=backend-backend
cert-manager    cert-manager                            ClusterIP   10.43.2.143     <none>        9402/TCP                     2m40s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP   10.43.130.49    <none>        9402/TCP                     2m40s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP   10.43.150.37    <none>        443/TCP,9402/TCP             2m40s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP   10.43.0.1       <none>        443/TCP                      25m     <none>
ingress-nginx   ingress-nginx-controller                NodePort    10.43.140.240   <none>        80:30080/TCP,443:30443/TCP   40s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP   10.43.184.198   <none>        443/TCP                      40s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP   10.43.0.10      <none>        53/UDP,53/TCP,9153/TCP       25m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP   10.43.213.68    <none>        443/TCP                      25m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP   10.43.15.22     <none>        8080/TCP                     9m28s   name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP   10.43.208.172   <none>        8081/TCP                     9m28s   name=sealed-secrets-controller
```

### ingress (all namespaces)
```bash
+ kubectl get ingress -A -o wide
NAMESPACE     NAME              CLASS    HOSTS                ADDRESS   PORTS   AGE
backend-dev   backend-backend   <none>   frontend-dev.local             80      68s
```

### deploy (all namespaces)
```bash
+ kubectl get deploy -A -o wide
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                                                                                     SELECTOR
argocd-dev      argocd-applicationset-controller   1/1     1            1           5m37s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                  1/1     1            1           5m37s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                                                                                                 app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-notifications-controller    1/1     1            1           5m37s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-dev      argocd-redis                       1/1     1            1           5m37s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine                                                                       app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                 2/2     2            2           5m37s   repo-server                 quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                      2/2     2            2           5m37s   server                      quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                    0/1     1            0           68s     backend                     vyking-backend:dev                                                                                                         app=backend-backend
cert-manager    cert-manager                       1/1     1            1           2m39s   cert-manager-controller     quay.io/jetstack/cert-manager-controller:v1.16.1                                                                           app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector            1/1     1            1           2m39s   cert-manager-cainjector     quay.io/jetstack/cert-manager-cainjector:v1.16.1                                                                           app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook               1/1     1            1           2m39s   cert-manager-webhook        quay.io/jetstack/cert-manager-webhook:v1.16.1                                                                              app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
ingress-nginx   ingress-nginx-controller           1/1     1            1           40s     controller                  registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a   app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     coredns                            1/1     1            1           25m     coredns                     rancher/mirrored-coredns-coredns:1.12.0                                                                                    k8s-app=kube-dns
kube-system     local-path-provisioner             1/1     1            1           25m     local-path-provisioner      rancher/local-path-provisioner:v0.0.30                                                                                     app=local-path-provisioner
kube-system     metrics-server                     1/1     1            1           25m     metrics-server              rancher/mirrored-metrics-server:v0.7.2                                                                                     k8s-app=metrics-server
kube-system     sealed-secrets-controller          1/1     1            1           9m28s   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.27.1                                                                         name=sealed-secrets-controller
```

### statefulset (all namespaces)
```bash
+ kubectl get statefulset -A -o wide
NAMESPACE    NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-dev   argocd-application-controller   1/1     5m37s   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### daemonset (all namespaces)
```bash
+ kubectl get daemonset -A -o wide
No resources found
```

### pvc (all namespaces)
```bash
+ kubectl get pvc -A -o wide
No resources found
```

### jobs (all namespaces)
```bash
+ kubectl get jobs -A -o wide
No resources found
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
backend-dev   backend-backend   Deployment/backend-backend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          70s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    230m         7%       467Mi           5%          
k3d-vyking-dev-agent-1    251m         8%       591Mi           7%          
k3d-vyking-dev-server-0   342m         11%      1264Mi          15%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     68m          165Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-zdncd   4m           58Mi            
argocd-dev      argocd-dex-server-796678d5bc-t6kn9                  1m           19Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-4pf48    2m           67Mi            
argocd-dev      argocd-redis-7c7fb7fc74-g9zzk                       6m           11Mi            
argocd-dev      argocd-repo-server-d587f667c-m9n7v                  3m           51Mi            
argocd-dev      argocd-repo-server-d587f667c-nzsr5                  2m           94Mi            
argocd-dev      argocd-server-556b554c94-5czt8                      2m           28Mi            
argocd-dev      argocd-server-556b554c94-9gjcb                      2m           26Mi            
cert-manager    cert-manager-55c69bf5cf-ghktl                       8m           77Mi            
cert-manager    cert-manager-cainjector-5765b5f544-5pcvr            7m           56Mi            
cert-manager    cert-manager-webhook-6b67444dc9-7t25n               2m           53Mi            
ingress-nginx   ingress-nginx-controller-599c5c76cc-9gwrf           5m           91Mi            
kube-system     coredns-ccb96694c-gjsdt                             8m           14Mi            
kube-system     local-path-provisioner-5cf85fd84d-b45rz             1m           7Mi             
kube-system     metrics-server-5985cbc9d7-xjgst                     20m          53Mi            
kube-system     sealed-secrets-controller-79c4ffdbd7-jthqx          7m           15Mi            
```

argocd-dev      70s         Normal    ResourceUpdated                  application/backend                                      Updated health status: Missing -> Progressing
argocd-dev      70s         Normal    ResourceUpdated                  application/backend                                      Updated sync status: OutOfSync -> Synced
backend-dev     22s         Normal    Pulling                          pod/backend-backend-d875b6fbb-k8zvs                      Pulling image "vyking-backend:dev"
backend-dev     20s         Warning   Failed                           pod/backend-backend-d875b6fbb-k8zvs                      Error: ErrImagePull
backend-dev     20s         Warning   Failed                           pod/backend-backend-d875b6fbb-k8zvs                      Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
backend-dev     8s          Normal    BackOff                          pod/backend-backend-d875b6fbb-k8zvs                      Back-off pulling image "vyking-backend:dev"
backend-dev     8s          Warning   Failed                           pod/backend-backend-d875b6fbb-k8zvs                      Error: ImagePullBackOff
backend-dev     10s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     11s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     10s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
ingress-nginx   54s         Normal    Scheduled                        pod/ingress-nginx-admission-create-m6wpp                 Successfully assigned ingress-nginx/ingress-nginx-admission-create-m6wpp to k3d-vyking-dev-server-0
ingress-nginx   54s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-create                       Created pod: ingress-nginx-admission-create-m6wpp
ingress-nginx   53s         Normal    Pulling                          pod/ingress-nginx-admission-create-m6wpp                 Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   50s         Normal    Pulled                           pod/ingress-nginx-admission-create-m6wpp                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 3.633s (3.633s including waiting). Image size: 56758085 bytes.
ingress-nginx   50s         Normal    Created                          pod/ingress-nginx-admission-create-m6wpp                 Created container create
ingress-nginx   49s         Normal    Started                          pod/ingress-nginx-admission-create-m6wpp                 Started container create
argocd-dev      48s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
backend-dev     47s         Warning   ErrUnsealFailed                  sealedsecret/mysql-credentials-dev                       Failed to unseal: no key could decrypt secret (port, username, database, host, password)
backend-dev     47s         Warning   ErrUnsealFailed                  sealedsecret/mysql-credentials-dev                       Failed to unseal: no key could decrypt secret (database, host, password, port, username)
argocd-dev      47s         Normal    OperationCompleted               application/mysql-sealed-secrets                         Sync operation to d8d9e159c2e6fdbfb6664e199b5fe4cd4dfa3683 succeeded
ingress-nginx   44s         Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   43s         Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-599c5c76cc to 1
ingress-nginx   42s         Normal    Scheduled                        pod/ingress-nginx-controller-599c5c76cc-9gwrf            Successfully assigned ingress-nginx/ingress-nginx-controller-599c5c76cc-9gwrf to k3d-vyking-dev-server-0
ingress-nginx   43s         Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-599c5c76cc           Created pod: ingress-nginx-controller-599c5c76cc-9gwrf
ingress-nginx   41s         Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-9gwrf            Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
ingress-nginx   35s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-9gwrf            Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 5.998s (5.998s including waiting). Image size: 288689258 bytes.
ingress-nginx   35s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-9gwrf            Created container controller
ingress-nginx   35s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-9gwrf            Started container controller
ingress-nginx   33s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
ingress-nginx   31s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-9gwrf            NGINX reload triggered due to a change in configuration
ingress-nginx   18s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-lgf7r                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-lgf7r to k3d-vyking-dev-agent-1
ingress-nginx   19s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-lgf7r
ingress-nginx   17s         Warning   FailedMount                      pod/ingress-nginx-admission-patch-lgf7r                  MountVolume.SetUp failed for volume "kube-api-access-qw5rj" : failed to sync configmap cache: timed out waiting for the condition
ingress-nginx   16s         Normal    Pulling                          pod/ingress-nginx-admission-patch-lgf7r                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   13s         Normal    Pulled                           pod/ingress-nginx-admission-patch-lgf7r                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 2.811s (2.811s including waiting). Image size: 56758085 bytes.
ingress-nginx   13s         Normal    Created                          pod/ingress-nginx-admission-patch-lgf7r                  Created container patch
ingress-nginx   12s         Normal    Started                          pod/ingress-nginx-admission-patch-lgf7r                  Started container patch
ingress-nginx   8s          Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS        AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0               5m39s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-applicationset-controller-78f49df558-zdncd   1/1     Running   0               5m41s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dex-server-796678d5bc-t6kn9                  1/1     Running   0               5m40s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-notifications-controller-6d84bf8458-4pf48    1/1     Running   0               5m41s   10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
argocd-redis-7c7fb7fc74-g9zzk                       1/1     Running   0               5m41s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-m9n7v                  1/1     Running   0               5m41s   10.42.2.4   k3d-vyking-dev-server-0   <none>           <none>
argocd-repo-server-d587f667c-nzsr5                  1/1     Running   0               5m41s   10.42.1.4   k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-5czt8                      1/1     Running   0               5m41s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-9gjcb                      1/1     Running   1 (5m19s ago)   5m40s   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
```

### Deploy
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           5m41s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           5m41s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           5m41s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           5m41s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 2/2     2            2           5m41s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      2/2     2            2           5m41s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### Statefulset
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     5m41s   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### Daemonset
```bash
+ kubectl get daemonset -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Svc
```bash
+ kubectl get svc -n argocd-dev -o wide
NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-application-controller-metrics   ClusterIP   10.43.73.79     <none>        8082/TCP                     5m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.83.176    <none>        7000/TCP                     5m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.52.62     <none>        5556/TCP,5557/TCP,5558/TCP   5m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.110.36    <none>        6379/TCP                     5m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     5m43s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.80.192    <none>        8081/TCP                     5m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.188.227   <none>        8084/TCP                     5m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.53.44     <none>        80/TCP,443/TCP               5m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### Ingress
```bash
+ kubectl get ingress -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Configmap
```bash
+ kubectl get configmap -n argocd-dev -o wide
NAME                            DATA   AGE
argocd-cm                       18     5m45s
argocd-cmd-params-cm            41     5m45s
argocd-gpg-keys-cm              0      5m45s
argocd-notifications-cm         1      5m45s
argocd-rbac-cm                  4      5m45s
argocd-redis-health-configmap   2      5m45s
argocd-ssh-known-hosts-cm       1      5m45s
argocd-tls-certs-cm             0      5m45s
kube-root-ca.crt                1      5m56s
```

### Secret
```bash
+ kubectl get secret -n argocd-dev -o wide
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      5m23s
argocd-notifications-secret    Opaque               0      5m45s
argocd-redis                   Opaque               1      5m48s
argocd-secret                  Opaque               3      5m45s
repo-vyking-git                Opaque               2      4m56s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      5m56s
```

### Hpa
```bash
+ kubectl get hpa -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Jobs
```bash
+ kubectl get jobs -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Cronjobs
```bash
+ kubectl get cronjobs -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Pvc
```bash
+ kubectl get pvc -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

5m18s       Normal    Started              pod/argocd-repo-server-d587f667c-m9n7v                   Started container repo-server
3m38s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status:  -> Healthy
3m38s       Normal    ResourceUpdated      application/mysql                                        Updated health status:  -> Healthy
3m38s       Normal    ResourceUpdated      application/mysql                                        Updated sync status:  -> Unknown
3m38s       Normal    OperationStarted     application/mysql-sealed-secrets                         Initiated automated sync to 'd8d9e159c2e6fdbfb6664e199b5fe4cd4dfa3683'
3m38s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status:  -> OutOfSync
3m37s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Degraded
3m37s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
76s         Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
76s         Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
76s         Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> Unknown
76s         Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Healthy
76s         Normal    OperationStarted     application/backend                                      Initiated automated sync to 'd8d9e159c2e6fdbfb6664e199b5fe4cd4dfa3683'
74s         Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
74s         Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
74s         Normal    OperationCompleted   application/backend                                      Sync operation to d8d9e159c2e6fdbfb6664e199b5fe4cd4dfa3683 succeeded
52s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
51s         Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to d8d9e159c2e6fdbfb6664e199b5fe4cd4dfa3683 succeeded
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     20m          165Mi           
argocd-applicationset-controller-78f49df558-zdncd   2m           58Mi            
argocd-dex-server-796678d5bc-t6kn9                  1m           19Mi            
argocd-notifications-controller-6d84bf8458-4pf48    1m           67Mi            
argocd-redis-7c7fb7fc74-g9zzk                       5m           11Mi            
argocd-repo-server-d587f667c-m9n7v                  2m           51Mi            
argocd-repo-server-d587f667c-nzsr5                  3m           94Mi            
argocd-server-556b554c94-5czt8                      2m           28Mi            
argocd-server-556b554c94-9gjcb                      3m           26Mi            
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

### Daemonset
```bash
+ kubectl get daemonset -n frontend-dev -o wide
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

### Configmap
```bash
+ kubectl get configmap -n frontend-dev -o wide
NAME               DATA   AGE
kube-root-ca.crt   1      85s
```

### Secret
```bash
+ kubectl get secret -n frontend-dev -o wide
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      80s
```

### Hpa
```bash
+ kubectl get hpa -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Jobs
```bash
+ kubectl get jobs -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Cronjobs
```bash
+ kubectl get cronjobs -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Pvc
```bash
+ kubectl get pvc -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Recent Events
```bash
+ kubectl get events -n frontend-dev --sort-by=.metadata.creationTimestamp
LAST SEEN   TYPE      REASON               OBJECT                                   MESSAGE
82s         Normal    Issuing              certificate/frontend-cert-dev            Issuing certificate as Secret does not exist
81s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
81s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
81s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
81s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
81s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
81s         Normal    cert-manager.io      certificaterequest/frontend-cert-dev-1   Certificate request has been approved by cert-manager.io
81s         Warning   BadConfig            certificaterequest/frontend-cert-dev-1   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
81s         Normal    CertificateIssued    certificaterequest/frontend-cert-dev-1   Certificate fetched from issuer successfully
81s         Normal    Generated            certificate/frontend-cert-dev            Stored new private key in temporary Secret resource "frontend-cert-dev-m8q2d"
81s         Normal    Requested            certificate/frontend-cert-dev            Created new CertificateRequest resource "frontend-cert-dev-1"
81s         Normal    Issuing              certificate/frontend-cert-dev            The certificate has been successfully issued
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
NAME                              READY   STATUS             RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
backend-backend-d875b6fbb-k8zvs   0/1     ImagePullBackOff   0          79s   10.42.0.9   k3d-vyking-dev-agent-0   <none>           <none>
```

### Deploy
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES               SELECTOR
backend-backend   0/1     1            0           79s   backend      vyking-backend:dev   app=backend-backend
```

### Statefulset
```bash
+ kubectl get statefulset -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Daemonset
```bash
+ kubectl get daemonset -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Svc
```bash
+ kubectl get svc -n backend-dev -o wide
NAME              TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.137.191   <none>        8081/TCP   80s   app=backend-backend
```

### Ingress
```bash
+ kubectl get ingress -n backend-dev -o wide
NAME              CLASS    HOSTS                ADDRESS   PORTS   AGE
backend-backend   <none>   frontend-dev.local             80      80s
```

### Configmap
```bash
+ kubectl get configmap -n backend-dev -o wide
NAME               DATA   AGE
kube-root-ca.crt   1      88s
```

### Secret
```bash
+ kubectl get secret -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Hpa
```bash
+ kubectl get hpa -n backend-dev -o wide
NAME              REFERENCE                    TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-backend   Deployment/backend-backend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          81s
```

### Jobs
```bash
+ kubectl get jobs -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Cronjobs
```bash
+ kubectl get cronjobs -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Pvc
```bash
+ kubectl get pvc -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Recent Events
```bash
+ kubectl get events -n backend-dev --sort-by=.metadata.creationTimestamp
LAST SEEN   TYPE      REASON                         OBJECT                                    MESSAGE
82s         Normal    SuccessfulCreate               replicaset/backend-backend-d875b6fbb      Created pod: backend-backend-d875b6fbb-k8zvs
82s         Normal    ScalingReplicaSet              deployment/backend-backend                Scaled up replica set backend-backend-d875b6fbb to 1
81s         Normal    Scheduled                      pod/backend-backend-d875b6fbb-k8zvs       Successfully assigned backend-dev/backend-backend-d875b6fbb-k8zvs to k3d-vyking-dev-agent-0
33s         Normal    Pulling                        pod/backend-backend-d875b6fbb-k8zvs       Pulling image "vyking-backend:dev"
31s         Warning   Failed                         pod/backend-backend-d875b6fbb-k8zvs       Error: ErrImagePull
31s         Warning   Failed                         pod/backend-backend-d875b6fbb-k8zvs       Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
4s          Warning   Failed                         pod/backend-backend-d875b6fbb-k8zvs       Error: ImagePullBackOff
4s          Normal    BackOff                        pod/backend-backend-d875b6fbb-k8zvs       Back-off pulling image "vyking-backend:dev"
6s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
6s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
6s          Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
58s         Warning   ErrUnsealFailed                sealedsecret/mysql-credentials-dev        Failed to unseal: no key could decrypt secret (database, host, password, port, username)
58s         Warning   ErrUnsealFailed                sealedsecret/mysql-credentials-dev        Failed to unseal: no key could decrypt secret (port, username, database, host, password)
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

### Daemonset
```bash
+ kubectl get daemonset -n mysql-dev -o wide
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

### Configmap
```bash
+ kubectl get configmap -n mysql-dev -o wide
NAME               DATA   AGE
kube-root-ca.crt   1      4m1s
```

### Secret
```bash
+ kubectl get secret -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Hpa
```bash
+ kubectl get hpa -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Jobs
```bash
+ kubectl get jobs -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Cronjobs
```bash
+ kubectl get cronjobs -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Pvc
```bash
+ kubectl get pvc -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Recent Events
```bash
+ kubectl get events -n mysql-dev --sort-by=.metadata.creationTimestamp
LAST SEEN   TYPE      REASON            OBJECT                          MESSAGE
3m47s       Warning   ErrUnsealFailed   sealedsecret/mysql-dev-secret   Failed to unseal: no key could decrypt secret (mysql-database, mysql-password, mysql-root-password, mysql-username)
3m47s       Warning   ErrUnsealFailed   sealedsecret/mysql-dev-secret   Failed to unseal: no key could decrypt secret (mysql-password, mysql-root-password, mysql-username, mysql-database)
3m47s       Warning   ErrUnsealFailed   sealedsecret/mysql-dev-secret   Failed to unseal: no key could decrypt secret (mysql-root-password, mysql-username, mysql-database, mysql-password)
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n mysql-dev
No resources found in mysql-dev namespace.
```

✅ Tests complete.
