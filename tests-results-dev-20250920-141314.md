# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 14:13:14 CEST
- **Environment:** `dev`
- **Cluster Name:** `vyking-dev`
- **Argo CD Namespace:** `argocd-dev`

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
### Cluster info
```bash
+ kubectl cluster-info
Kubernetes control plane is running at https://0.0.0.0:37257
CoreDNS is running at https://0.0.0.0:37257/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:37257/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 15m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 15m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   15m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   8m6s
backend-dev       Active   115s
cert-manager      Active   3m51s
default           Active   15m
frontend-dev      Active   115s
ingress-nginx     Active   110s
kube-node-lease   Active   15m
kube-public       Active   15m
kube-system       Active   15m
mysql-dev         Active   4m
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS         RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running        0          6m55s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-s49fd   1/1     Running        0          6m55s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-6mkfm                  1/1     Running        0          6m55s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-lbtr8    1/1     Running        0          6m55s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-lxfm5                       1/1     Running        0          6m55s   10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-qm7mc                  1/1     Running        0          6m55s   10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-server-556b554c94-9wlb2                      1/1     Running        0          6m55s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
backend-dev     vyking-app-backend-54db67956d-khdvq                 0/1     ErrImagePull   0          103s    10.42.2.10   k3d-vyking-dev-server-0   <none>           <none>
backend-dev     vyking-app-backend-54db67956d-xl8g2                 0/1     ErrImagePull   0          103s    10.42.0.11   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-lg5nw                       1/1     Running        0          3m47s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-whgkk            1/1     Running        0          3m47s   10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-9hdhx               1/1     Running        0          3m47s   10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
frontend-dev    vyking-app-frontend-7d558cb5f4-dhddm                1/1     Running        0          103s    10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-pl5mm           1/1     Running        0          88s     10.42.0.12   k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-wsmjt                             1/1     Running        0          15m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-crd-v9jcm                      0/1     Completed      0          15m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-v5grw                          0/1     Completed      2          15m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-ks7ww             1/1     Running        0          15m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     metrics-server-5985cbc9d7-pv42c                     1/1     Running        0          15m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-sd756          1/1     Running        0          15m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-7fa514ab-5kgzl                        2/2     Running        0          14m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-7fa514ab-k6xj6                        2/2     Running        0          14m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-7fa514ab-wg87z                        2/2     Running        0          14m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     traefik-5d45fc8cc9-9h6mf                            1/1     Running        0          14m     10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.57.2      <none>                             8082/TCP                     6m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.33.154    <none>                             7000/TCP                     6m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.31.203    <none>                             5556/TCP,5557/TCP,5558/TCP   6m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.165.93    <none>                             6379/TCP                     6m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     6m57s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.23.129    <none>                             8081/TCP                     6m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.163.6     <none>                             8084/TCP                     6m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.96.136    <none>                             80/TCP,443/TCP               6m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     vyking-app-backend                      ClusterIP      10.43.67.194    <none>                             8081/TCP                     105s    app=vyking-app-backend
cert-manager    cert-manager                            ClusterIP      10.43.82.28     <none>                             9402/TCP                     3m48s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.160.150   <none>                             9402/TCP                     3m48s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.86.184    <none>                             443/TCP,9402/TCP             3m48s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      15m     <none>
frontend-dev    vyking-app-frontend                     ClusterIP      10.43.214.238   <none>                             8080/TCP                     105s    app=vyking-app-frontend
ingress-nginx   ingress-nginx-controller                ClusterIP      10.43.215.56    <none>                             80/TCP,443/TCP               89s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.8.67      <none>                             443/TCP                      89s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       15m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.166.97    <none>                             443/TCP                      15m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.65.51     <none>                             8080/TCP                     15m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.72.237    <none>                             8081/TCP                     15m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.253.102   172.18.0.2,172.18.0.3,172.18.0.4   80:32340/TCP,443:30397/TCP   14m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                  CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    vyking-app-backend    traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        103s
frontend-dev   vyking-app-frontend   <none>    frontend-dev.local   10.43.215.56                       80, 443   103s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           6m58s
argocd-dev      argocd-dex-server                  1/1     1            1           6m58s
argocd-dev      argocd-notifications-controller    1/1     1            1           6m58s
argocd-dev      argocd-redis                       1/1     1            1           6m58s
argocd-dev      argocd-repo-server                 1/1     1            1           6m58s
argocd-dev      argocd-server                      1/1     1            1           6m58s
backend-dev     vyking-app-backend                 0/2     2            0           105s
cert-manager    cert-manager                       1/1     1            1           3m49s
cert-manager    cert-manager-cainjector            1/1     1            1           3m49s
cert-manager    cert-manager-webhook               1/1     1            1           3m49s
frontend-dev    vyking-app-frontend                1/1     1            1           105s
ingress-nginx   ingress-nginx-controller           1/1     1            1           90s
kube-system     coredns                            1/1     1            1           15m
kube-system     local-path-provisioner             1/1     1            1           15m
kube-system     metrics-server                     1/1     1            1           15m
kube-system     sealed-secrets-controller          1/1     1            1           15m
kube-system     traefik                            1/1     1            1           14m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     6m58s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-7fa514ab   3         3         3       3            3           <none>          14m
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
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  15m
```

### Jobs (all namespaces)
```bash
+ kubectl get jobs -A
NAMESPACE     NAME                       STATUS     COMPLETIONS   DURATION   AGE
kube-system   helm-install-traefik       Complete   1/1           93s        15m
kube-system   helm-install-traefik-crd   Complete   1/1           78s        15m
```

### CronJobs (all namespaces)
```bash
+ kubectl get cronjobs -A
No resources found
```

### Horizontal Pod Autoscalers (all namespaces)
```bash
+ kubectl get hpa -A
NAMESPACE      NAME                  REFERENCE                        TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-dev    vyking-app-backend    Deployment/vyking-app-backend    cpu: <unknown>/70%, memory: <unknown>/70%   2         5         2          109s
frontend-dev   vyking-app-frontend   Deployment/vyking-app-frontend   cpu: 1%/70%, memory: 3%/80%                 1         3         1          109s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    311m         10%      460Mi           5%          
k3d-vyking-dev-agent-1    714m         23%      373Mi           4%          
k3d-vyking-dev-server-0   582m         19%      1344Mi          16%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     17m          196Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-s49fd   2m           35Mi            
argocd-dev      argocd-dex-server-796678d5bc-6mkfm                  0m           31Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-lbtr8    1m           27Mi            
argocd-dev      argocd-redis-7c7fb7fc74-lxfm5                       4m           3Mi             
argocd-dev      argocd-repo-server-d587f667c-qm7mc                  248m         199Mi           
argocd-dev      argocd-server-556b554c94-9wlb2                      4m           35Mi            
cert-manager    cert-manager-55c69bf5cf-lg5nw                       5m           29Mi            
cert-manager    cert-manager-cainjector-5765b5f544-whgkk            4m           26Mi            
cert-manager    cert-manager-webhook-6b67444dc9-9hdhx               2m           22Mi            
frontend-dev    vyking-app-frontend-7d558cb5f4-dhddm                1m           4Mi             
ingress-nginx   ingress-nginx-controller-599c5c76cc-pl5mm           6m           47Mi            
kube-system     coredns-ccb96694c-wsmjt                             15m          25Mi            
kube-system     local-path-provisioner-5cf85fd84d-ks7ww             1m           12Mi            
kube-system     metrics-server-5985cbc9d7-pv42c                     23m          24Mi            
kube-system     sealed-secrets-controller-5655858cbc-sd756          17m          28Mi            
kube-system     svclb-traefik-7fa514ab-5kgzl                        0m           0Mi             
kube-system     svclb-traefik-7fa514ab-k6xj6                        0m           0Mi             
kube-system     svclb-traefik-7fa514ab-wg87z                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-9h6mf                            2m           44Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
frontend-dev    94s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/vyking-app-frontend              failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
frontend-dev    94s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/vyking-app-frontend              invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     4s          Warning   FailedGetResourceMetric          horizontalpodautoscaler/vyking-app-backend               failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
ingress-nginx   94s         Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-pl5mm            Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
backend-dev     4s          Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/vyking-app-backend               invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
frontend-dev    79s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/vyking-app-frontend              failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
ingress-nginx   58s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-pl5mm            Created container controller
ingress-nginx   58s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-pl5mm            Started container controller
ingress-nginx   58s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-pl5mm            Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 35.702s (35.702s including waiting). Image size: 105401148 bytes.
ingress-nginx   57s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
frontend-dev    56s         Normal    Sync                             ingress/vyking-app-frontend                              Scheduled for sync
ingress-nginx   55s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-pl5mm            NGINX reload triggered due to a change in configuration
default         46s         Warning   FreeDiskSpaceFailed              node/k3d-vyking-dev-server-0                             Failed to garbage collect required amount of images. Attempted to free 6238860902 bytes, but only found 600245899 bytes eligible to free.
default         46s         Warning   ImageGCFailed                    node/k3d-vyking-dev-server-0                             Failed to garbage collect required amount of images. Attempted to free 6238860902 bytes, but only found 600245899 bytes eligible to free.
argocd-dev      40s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
backend-dev     40s         Normal    Unsealed                         sealedsecret/mysql-credentials-dev                       SealedSecret unsealed successfully
backend-dev     1s          Normal    Pulling                          pod/vyking-app-backend-54db67956d-khdvq                  Pulling image "vyking-backend:dev"
argocd-dev      40s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
argocd-dev      39s         Normal    OperationCompleted               application/mysql-sealed-secrets                         Sync operation to f3bd26fa56f68d880742eefd98e044ed93dc16de succeeded
backend-dev     25s         Warning   Failed                           pod/vyking-app-backend-54db67956d-khdvq                  Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
backend-dev     25s         Warning   Failed                           pod/vyking-app-backend-54db67956d-khdvq                  Error: ErrImagePull
argocd-dev      39s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
ingress-nginx   37s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-gk2v8                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-gk2v8 to k3d-vyking-dev-agent-1
ingress-nginx   37s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-gk2v8
default         36s         Warning   FreeDiskSpaceFailed              node/k3d-vyking-dev-agent-1                              Failed to garbage collect required amount of images. Attempted to free 5471598182 bytes, but only found 550102269 bytes eligible to free.
default         36s         Warning   ImageGCFailed                    node/k3d-vyking-dev-agent-1                              Failed to garbage collect required amount of images. Attempted to free 5471598182 bytes, but only found 550102269 bytes eligible to free.
default         35s         Warning   ImageGCFailed                    node/k3d-vyking-dev-agent-0                              Failed to garbage collect required amount of images. Attempted to free 5610411622 bytes, but only found 600245899 bytes eligible to free.
default         35s         Warning   FreeDiskSpaceFailed              node/k3d-vyking-dev-agent-0                              Failed to garbage collect required amount of images. Attempted to free 5610411622 bytes, but only found 600245899 bytes eligible to free.
ingress-nginx   35s         Normal    Pulling                          pod/ingress-nginx-admission-patch-gk2v8                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
backend-dev     16s         Normal    Pulling                          pod/vyking-app-backend-54db67956d-xl8g2                  Pulling image "vyking-backend:dev"
backend-dev     15s         Warning   Failed                           pod/vyking-app-backend-54db67956d-xl8g2                  Error: ErrImagePull
backend-dev     15s         Warning   Failed                           pod/vyking-app-backend-54db67956d-xl8g2                  Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
ingress-nginx   22s         Normal    Pulled                           pod/ingress-nginx-admission-patch-gk2v8                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 12.616s (12.616s including waiting). Image size: 23913475 bytes.
ingress-nginx   22s         Normal    Created                          pod/ingress-nginx-admission-patch-gk2v8                  Created container patch
ingress-nginx   21s         Normal    Started                          pod/ingress-nginx-admission-patch-gk2v8                  Started container patch
ingress-nginx   18s         Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
backend-dev     13s         Normal    BackOff                          pod/vyking-app-backend-54db67956d-khdvq                  Back-off pulling image "vyking-backend:dev"
backend-dev     13s         Warning   Failed                           pod/vyking-app-backend-54db67956d-khdvq                  Error: ImagePullBackOff
backend-dev     2s          Normal    BackOff                          pod/vyking-app-backend-54db67956d-xl8g2                  Back-off pulling image "vyking-backend:dev"
backend-dev     2s          Warning   Failed                           pod/vyking-app-backend-54db67956d-xl8g2                  Error: ImagePullBackOff
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE    IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          7m3s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-applicationset-controller-78f49df558-s49fd   1/1     Running   0          7m3s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dex-server-796678d5bc-6mkfm                  1/1     Running   0          7m3s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-notifications-controller-6d84bf8458-lbtr8    1/1     Running   0          7m3s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-redis-7c7fb7fc74-lxfm5                       1/1     Running   0          7m3s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-qm7mc                  1/1     Running   0          7m3s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
argocd-server-556b554c94-9wlb2                      1/1     Running   0          7m3s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           7m5s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           7m5s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           7m5s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           7m5s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           7m5s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           7m5s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE    CONTAINERS               IMAGES
argocd-application-controller   1/1     7m6s   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### DaemonSets
```bash
+ kubectl get daemonset -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Services
```bash
+ kubectl get svc -n argocd-dev -o wide
NAME                                    TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)                      AGE    SELECTOR
argocd-application-controller-metrics   ClusterIP   10.43.57.2     <none>        8082/TCP                     7m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.33.154   <none>        7000/TCP                     7m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.31.203   <none>        5556/TCP,5557/TCP,5558/TCP   7m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.165.93   <none>        6379/TCP                     7m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None           <none>        9121/TCP                     7m8s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.23.129   <none>        8081/TCP                     7m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.163.6    <none>        8084/TCP                     7m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.96.136   <none>        80/TCP,443/TCP               7m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     7m11s
argocd-cmd-params-cm            41     7m11s
argocd-gpg-keys-cm              0      7m11s
argocd-notifications-cm         1      7m11s
argocd-rbac-cm                  4      7m11s
argocd-redis-health-configmap   2      7m11s
argocd-ssh-known-hosts-cm       1      7m11s
argocd-tls-certs-cm             0      7m11s
kube-root-ca.crt                1      8m19s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      5m
argocd-notifications-secret    Opaque               0      7m11s
argocd-redis                   Opaque               1      7m15s
argocd-secret                  Opaque               3      7m11s
repo-vyking-git                Opaque               2      4m27s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      8m19s
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
4m32s       Normal    Started              pod/argocd-dex-server-796678d5bc-6mkfm                   Started container dex-server
4m32s       Normal    Created              pod/argocd-dex-server-796678d5bc-6mkfm                   Created container dex-server
4m32s       Normal    Pulled               pod/argocd-dex-server-796678d5bc-6mkfm                   Successfully pulled image "ghcr.io/dexidp/dex:v2.44.0" in 19.763s (19.763s including waiting). Image size: 45872393 bytes.
3m36s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status:  -> Healthy
3m36s       Normal    OperationStarted     application/mysql-sealed-secrets                         Initiated automated sync to 'f3bd26fa56f68d880742eefd98e044ed93dc16de'
3m36s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status:  -> OutOfSync
3m23s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
3m18s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
3m2s        Normal    ResourceUpdated      application/mysql                                        Updated sync status:  -> Unknown
3m2s        Normal    ResourceUpdated      application/mysql                                        Updated health status:  -> Healthy
2m1s        Normal    ResourceUpdated      application/vyking-app                                   Updated health status:  -> Missing
2m1s        Normal    OperationStarted     application/vyking-app                                   Initiated automated sync to 'f3bd26fa56f68d880742eefd98e044ed93dc16de'
2m1s        Normal    ResourceUpdated      application/vyking-app                                   Updated sync status:  -> OutOfSync
115s        Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: OutOfSync -> Synced
115s        Normal    ResourceUpdated      application/vyking-app                                   Updated health status: Missing -> Progressing
114s        Normal    OperationCompleted   application/vyking-app                                   Sync operation to f3bd26fa56f68d880742eefd98e044ed93dc16de succeeded
47s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
47s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
46s         Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to f3bd26fa56f68d880742eefd98e044ed93dc16de succeeded
46s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     26m          187Mi           
argocd-applicationset-controller-78f49df558-s49fd   3m           33Mi            
argocd-dex-server-796678d5bc-6mkfm                  2m           27Mi            
argocd-notifications-controller-6d84bf8458-lbtr8    1m           24Mi            
argocd-redis-7c7fb7fc74-lxfm5                       4m           2Mi             
argocd-repo-server-d587f667c-qm7mc                  616m         610Mi           
argocd-server-556b554c94-9wlb2                      8m           34Mi            
```


### Applications
```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
mysql                  Unknown       Healthy
mysql-sealed-secrets   Synced        Healthy
vyking-app             Synced        Progressing
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
default   5m3s
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
NAME                                   READY   STATUS    RESTARTS   AGE    IP          NODE                     NOMINATED NODE   READINESS GATES
vyking-app-frontend-7d558cb5f4-dhddm   1/1     Running   0          119s   10.42.1.8   k3d-vyking-dev-agent-1   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                  READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS   IMAGES                SELECTOR
vyking-app-frontend   1/1     1            1           119s   frontend     vyking-frontend:dev   app=vyking-app-frontend
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
NAME                  TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE    SELECTOR
vyking-app-frontend   ClusterIP   10.43.214.238   <none>        8080/TCP   2m2s   app=vyking-app-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                  CLASS    HOSTS                ADDRESS        PORTS     AGE
vyking-app-frontend   <none>   frontend-dev.local   10.43.215.56   80, 443   119s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                               DATA   AGE
kube-root-ca.crt                   1      2m13s
vyking-app-frontend-nginx-config   1      2m2s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m7s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                  REFERENCE                        TARGETS                       MINPODS   MAXPODS   REPLICAS   AGE
vyking-app-frontend   Deployment/vyking-app-frontend   cpu: 1%/70%, memory: 3%/80%   1         3         1          2m1s
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
2m11s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1        Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m11s       Normal    IssuerNotReady                 certificaterequest/frontend-cert-dev-1        Referenced issuer does not have a Ready status condition
2m11s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1        Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m11s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1        Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m11s       Normal    cert-manager.io                certificaterequest/frontend-cert-dev-1        Certificate request has been approved by cert-manager.io
2m11s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1        Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m10s       Warning   BadConfig                      certificaterequest/frontend-cert-dev-1        Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
2m10s       Normal    CertificateIssued              certificaterequest/frontend-cert-dev-1        Certificate fetched from issuer successfully
2m10s       Normal    Issuing                        certificate/frontend-cert-dev                 The certificate has been successfully issued
2m4s        Normal    SuccessfulCreate               replicaset/vyking-app-frontend-7d558cb5f4     Created pod: vyking-app-frontend-7d558cb5f4-dhddm
2m3s        Normal    Scheduled                      pod/vyking-app-frontend-7d558cb5f4-dhddm      Successfully assigned frontend-dev/vyking-app-frontend-7d558cb5f4-dhddm to k3d-vyking-dev-agent-1
2m4s        Normal    ScalingReplicaSet              deployment/vyking-app-frontend                Scaled up replica set vyking-app-frontend-7d558cb5f4 to 1
2m1s        Normal    Pulled                         pod/vyking-app-frontend-7d558cb5f4-dhddm      Container image "vyking-frontend:dev" already present on machine
2m          Normal    Started                        pod/vyking-app-frontend-7d558cb5f4-dhddm      Started container frontend
2m          Normal    Created                        pod/vyking-app-frontend-7d558cb5f4-dhddm      Created container frontend
108s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/vyking-app-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
108s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/vyking-app-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
108s        Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/vyking-app-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
93s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/vyking-app-frontend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
70s         Normal    Sync                           ingress/vyking-app-frontend                   Scheduled for sync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
NAME                                   CPU(cores)   MEMORY(bytes)   
vyking-app-frontend-7d558cb5f4-dhddm   1m           3Mi             
```


- **Service:** `vyking-app-frontend`
- **Namespace:** `frontend-dev`
- **Port:** `8080`

**Port-forward command:**
```bash
kubectl port-forward svc/vyking-app-frontend -n frontend-dev 8080:8080
```

## ⚙️ Backend (`backend-dev`)
### Pods
```bash
+ kubectl get pods -n backend-dev -o wide
NAME                                  READY   STATUS             RESTARTS   AGE    IP           NODE                      NOMINATED NODE   READINESS GATES
vyking-app-backend-54db67956d-khdvq   0/1     ErrImagePull       0          2m5s   10.42.2.10   k3d-vyking-dev-server-0   <none>           <none>
vyking-app-backend-54db67956d-xl8g2   0/1     ImagePullBackOff   0          2m5s   10.42.0.11   k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS   IMAGES               SELECTOR
vyking-app-backend   0/2     2            0           2m6s   backend      vyking-backend:dev   app=vyking-app-backend
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
NAME                 TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE    SELECTOR
vyking-app-backend   ClusterIP   10.43.67.194   <none>        8081/TCP   2m9s   app=vyking-app-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME                 CLASS     HOSTS                ADDRESS                            PORTS   AGE
vyking-app-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      2m6s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      2m20s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      58s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME                 REFERENCE                       TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
vyking-app-backend   Deployment/vyking-app-backend   cpu: <unknown>/70%, memory: <unknown>/70%   2         5         2          2m8s
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
2m9s        Normal    ScalingReplicaSet              deployment/vyking-app-backend                Scaled up replica set vyking-app-backend-54db67956d to 2
2m8s        Normal    Scheduled                      pod/vyking-app-backend-54db67956d-xl8g2      Successfully assigned backend-dev/vyking-app-backend-54db67956d-xl8g2 to k3d-vyking-dev-agent-0
62s         Warning   Failed                         pod/vyking-app-backend-54db67956d-xl8g2      Error: secret "mysql-credentials-dev" not found
62s         Normal    Pulled                         pod/vyking-app-backend-54db67956d-xl8g2      Container image "vyking-backend:dev" already present on machine
73s         Warning   Failed                         pod/vyking-app-backend-54db67956d-khdvq      Error: secret "mysql-credentials-dev" not found
73s         Normal    Pulled                         pod/vyking-app-backend-54db67956d-khdvq      Container image "vyking-backend:dev" already present on machine
8s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/vyking-app-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
8s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/vyking-app-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
8s          Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/vyking-app-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
59s         Normal    Unsealed                       sealedsecret/mysql-credentials-dev           SealedSecret unsealed successfully
20s         Normal    Pulling                        pod/vyking-app-backend-54db67956d-khdvq      Pulling image "vyking-backend:dev"
19s         Warning   Failed                         pod/vyking-app-backend-54db67956d-khdvq      Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
19s         Warning   Failed                         pod/vyking-app-backend-54db67956d-khdvq      Error: ErrImagePull
9s          Normal    Pulling                        pod/vyking-app-backend-54db67956d-xl8g2      Pulling image "vyking-backend:dev"
8s          Warning   Failed                         pod/vyking-app-backend-54db67956d-xl8g2      Error: ErrImagePull
8s          Warning   Failed                         pod/vyking-app-backend-54db67956d-xl8g2      Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
6s          Warning   Failed                         pod/vyking-app-backend-54db67956d-khdvq      Error: ImagePullBackOff
6s          Normal    BackOff                        pod/vyking-app-backend-54db67956d-khdvq      Back-off pulling image "vyking-backend:dev"
21s         Normal    BackOff                        pod/vyking-app-backend-54db67956d-xl8g2      Back-off pulling image "vyking-backend:dev"
21s         Warning   Failed                         pod/vyking-app-backend-54db67956d-xl8g2      Error: ImagePullBackOff
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
error: Metrics not available for pod backend-dev/vyking-app-backend-54db67956d-khdvq, age: 2m10.290450558s

[command failed with exit code 1]
```


- **Service:** `vyking-app-backend`
- **Namespace:** `backend-dev`
- **Port:** `8081`

**Port-forward command:**
```bash
kubectl port-forward svc/vyking-app-backend -n backend-dev 8081:8081
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
NAME    READY   AGE   CONTAINERS   IMAGES
mysql   0/1     0s    mysql        docker.io/bitnami/mysql:8.0.39-debian-12-r1
```

### DaemonSets
```bash
+ kubectl get daemonset -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Services
```bash
+ kubectl get svc -n mysql-dev -o wide
NAME             TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)    AGE   SELECTOR
mysql            ClusterIP   10.43.6.94   <none>        3306/TCP   2s    app.kubernetes.io/component=primary,app.kubernetes.io/instance=mysql,app.kubernetes.io/name=mysql,app.kubernetes.io/part-of=mysql
mysql-headless   ClusterIP   None         <none>        3306/TCP   2s    app.kubernetes.io/component=primary,app.kubernetes.io/instance=mysql,app.kubernetes.io/name=mysql
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
kube-root-ca.crt   1      4m32s
mysql              1      4s
mysql-init         1      4s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql              Opaque   2      4s
mysql-dev-secret   Opaque   5      3m47s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n mysql-dev
NAME        REFERENCE           TARGETS              MINPODS   MAXPODS   REPLICAS   AGE
mysql-hpa   StatefulSet/mysql   cpu: <unknown>/70%   1         3         0          3s
```

### Jobs
```bash
+ kubectl get jobs -n mysql-dev
No resources found in mysql-dev namespace.
```

### CronJobs
```bash
+ kubectl get cronjobs -n mysql-dev
NAME           SCHEDULE      TIMEZONE   SUSPEND   ACTIVE   LAST SCHEDULE   AGE
mysql-backup   */5 * * * *   <none>     False     0        <none>          3s
```

### PersistentVolumeClaims
```bash
+ kubectl get pvc -n mysql-dev
NAME            STATUS    VOLUME   CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
data-mysql-0    Pending                                      local-path     <unset>                 3s
mysql-backups   Pending                                      local-path     <unset>                 4s
```

### Recent Events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"mysql-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
LAST SEEN   TYPE     REASON                 OBJECT                                MESSAGE
3m49s       Normal   Unsealed               sealedsecret/mysql-dev-secret         SealedSecret unsealed successfully
6s          Normal   NoPods                 poddisruptionbudget/mysql             No matching pods found
4s          Normal   WaitForFirstConsumer   persistentvolumeclaim/mysql-backups   waiting for first consumer to be created before binding
4s          Normal   WaitForFirstConsumer   persistentvolumeclaim/data-mysql-0    waiting for first consumer to be created before binding
4s          Normal   SuccessfulCreate       statefulset/mysql                     create Claim data-mysql-0 Pod mysql-0 in StatefulSet mysql success
4s          Normal   SuccessfulCreate       statefulset/mysql                     create Pod mysql-0 in StatefulSet mysql successful
3s          Normal   ExternalProvisioning   persistentvolumeclaim/data-mysql-0    Waiting for a volume to be created either by the external provisioner 'rancher.io/local-path' or manually by the system administrator. If volume creation is delayed, please verify that the provisioner is running and correctly registered.
3s          Normal   Provisioning           persistentvolumeclaim/data-mysql-0    External provisioner is provisioning volume for claim "mysql-dev/data-mysql-0"
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n mysql-dev
error: metrics not available yet

[command failed with exit code 1]
```


- **Service:** `mysql`
- **Namespace:** `mysql-dev`
- **Port:** `3306`

**Connection test command:**
```bash
kubectl run mysql-client --rm -it --image=bitnami/mysql:8.0 -n mysql-dev --env MYSQL_HOST=mysql -- bash
```

**Port-forward command:**
```bash
kubectl port-forward svc/mysql -n mysql-dev 3306:3306
```

## 🔐 Cert-Manager (`cert-manager`)
### Pods
```bash
+ kubectl get pods -n cert-manager -o wide
NAME                                       READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
cert-manager-55c69bf5cf-lg5nw              1/1     Running   0          4m21s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-cainjector-5765b5f544-whgkk   1/1     Running   0          4m21s   10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-webhook-6b67444dc9-9hdhx      1/1     Running   0          4m21s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           4m21s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           4m21s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           4m21s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
NAME                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)            AGE     SELECTOR
cert-manager              ClusterIP   10.43.82.28     <none>        9402/TCP           4m23s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.160.150   <none>        9402/TCP           4m23s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.86.184    <none>        443/TCP,9402/TCP   4m23s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      4m28s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      3m25s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      4m27s
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
4m20s       Normal    Pulling             pod/cert-manager-55c69bf5cf-lg5nw               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
4m20s       Normal    Pulling             pod/cert-manager-webhook-6b67444dc9-9hdhx       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
3m45s       Normal    Created             pod/cert-manager-cainjector-5765b5f544-whgkk    Created container cert-manager-cainjector
3m46s       Normal    Pulled              pod/cert-manager-cainjector-5765b5f544-whgkk    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 35.189s (35.189s including waiting). Image size: 15426355 bytes.
3m43s       Normal    Started             pod/cert-manager-cainjector-5765b5f544-whgkk    Started container cert-manager-cainjector
3m40s       Normal    Pulled              pod/cert-manager-webhook-6b67444dc9-9hdhx       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 40.621s (40.621s including waiting). Image size: 18192443 bytes.
3m38s       Normal    Created             pod/cert-manager-webhook-6b67444dc9-9hdhx       Created container cert-manager-webhook
3m37s       Normal    Pulled              pod/cert-manager-55c69bf5cf-lg5nw               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 42.18s (42.18s including waiting). Image size: 21189387 bytes.
3m37s       Normal    Created             pod/cert-manager-55c69bf5cf-lg5nw               Created container cert-manager-controller
3m37s       Normal    Started             pod/cert-manager-webhook-6b67444dc9-9hdhx       Started container cert-manager-webhook
3m36s       Normal    Started             pod/cert-manager-55c69bf5cf-lg5nw               Started container cert-manager-controller
3m32s       Warning   Unhealthy           pod/cert-manager-webhook-6b67444dc9-9hdhx       Readiness probe failed: Get "http://10.42.2.9:6080/healthz": dial tcp 10.42.2.9:6080: connect: connection refused
3m27s       Warning   Unhealthy           pod/cert-manager-webhook-6b67444dc9-9hdhx       Readiness probe failed: HTTP probe failed with statuscode: 500
3m13s       Normal    Scheduled           pod/cert-manager-startupapicheck-4sj7l          Successfully assigned cert-manager/cert-manager-startupapicheck-4sj7l to k3d-vyking-dev-agent-0
3m13s       Normal    SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-4sj7l
3m10s       Normal    Pulling             pod/cert-manager-startupapicheck-4sj7l          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
3m1s        Normal    Pulled              pod/cert-manager-startupapicheck-4sj7l          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 8.126s (8.126s including waiting). Image size: 14095526 bytes.
3m1s        Normal    Started             pod/cert-manager-startupapicheck-4sj7l          Started container cert-manager-startupapicheck
3m1s        Normal    Created             pod/cert-manager-startupapicheck-4sj7l          Created container cert-manager-startupapicheck
2m55s       Normal    Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-lg5nw              2m           30Mi            
cert-manager-cainjector-5765b5f544-whgkk   4m           29Mi            
cert-manager-webhook-6b67444dc9-9hdhx      2m           15Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-sd756   1/1     Running   0          15m   10.42.1.3   k3d-vyking-dev-agent-1   <none>           <none>
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
sealed-secrets-controller   ClusterIP   10.43.65.51   <none>        8080/TCP   15m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
14m         Normal    AppliedDaemonSet       service/traefik                                                  Applied LoadBalancer DaemonSet kube-system/svclb-traefik-7fa514ab
14m         Normal    SuccessfulCreate       daemonset/svclb-traefik-7fa514ab                                 Created pod: svclb-traefik-7fa514ab-wg87z
14m         Normal    Scheduled              pod/traefik-5d45fc8cc9-9h6mf                                     Successfully assigned kube-system/traefik-5d45fc8cc9-9h6mf to k3d-vyking-dev-agent-0
14m         Normal    Pulling                pod/svclb-traefik-7fa514ab-k6xj6                                 Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Pulling                pod/svclb-traefik-7fa514ab-wg87z                                 Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Pulling                pod/traefik-5d45fc8cc9-9h6mf                                     Pulling image "rancher/mirrored-library-traefik:2.11.18"
14m         Normal    Pulling                pod/svclb-traefik-7fa514ab-5kgzl                                 Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Completed              job/helm-install-traefik                                         Job completed
14m         Normal    Created                pod/svclb-traefik-7fa514ab-wg87z                                 Created container lb-tcp-80
14m         Normal    Pulled                 pod/svclb-traefik-7fa514ab-wg87z                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 6.036s (6.036s including waiting). Image size: 4990278 bytes.
14m         Normal    Created                pod/svclb-traefik-7fa514ab-wg87z                                 Created container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-7fa514ab-wg87z                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Started                pod/svclb-traefik-7fa514ab-wg87z                                 Started container lb-tcp-80
14m         Normal    Started                pod/svclb-traefik-7fa514ab-wg87z                                 Started container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-7fa514ab-k6xj6                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 8.397s (8.398s including waiting). Image size: 4990278 bytes.
14m         Normal    Pulled                 pod/svclb-traefik-7fa514ab-k6xj6                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Started                pod/svclb-traefik-7fa514ab-k6xj6                                 Started container lb-tcp-80
14m         Normal    Created                pod/svclb-traefik-7fa514ab-k6xj6                                 Created container lb-tcp-80
14m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [] -> [172.18.0.3]
14m         Normal    Created                pod/svclb-traefik-7fa514ab-k6xj6                                 Created container lb-tcp-443
14m         Normal    Started                pod/svclb-traefik-7fa514ab-k6xj6                                 Started container lb-tcp-443
14m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.3] -> [172.18.0.2 172.18.0.3]
14m         Normal    Created                pod/svclb-traefik-7fa514ab-5kgzl                                 Created container lb-tcp-80
14m         Normal    Pulled                 pod/svclb-traefik-7fa514ab-5kgzl                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 13.224s (13.224s including waiting). Image size: 4990278 bytes.
14m         Normal    Started                pod/svclb-traefik-7fa514ab-5kgzl                                 Started container lb-tcp-80
14m         Normal    Created                pod/svclb-traefik-7fa514ab-5kgzl                                 Created container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-7fa514ab-5kgzl                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3] -> [172.18.0.2 172.18.0.3 172.18.0.4]
14m         Normal    Started                pod/svclb-traefik-7fa514ab-5kgzl                                 Started container lb-tcp-443
14m         Normal    Started                pod/traefik-5d45fc8cc9-9h6mf                                     Started container traefik
14m         Normal    Pulled                 pod/traefik-5d45fc8cc9-9h6mf                                     Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 33.896s (33.896s including waiting). Image size: 49449055 bytes.
14m         Normal    Created                pod/traefik-5d45fc8cc9-9h6mf                                     Created container traefik
14m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
14m         Warning   Unhealthy              pod/traefik-5d45fc8cc9-9h6mf                                     Readiness probe failed: HTTP probe failed with statuscode: 404
3m42s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election                    cert-manager-cainjector-5765b5f544-whgkk_63268a83-fecc-49f3-98f2-95c91bf3d1ca became leader
3m34s       Normal    LeaderElection         lease/cert-manager-controller                                    cert-manager-55c69bf5cf-lg5nw-external-cert-manager-controller became leader
8s          Normal    Pulling                pod/helper-pod-create-pvc-c45f4e3c-1383-488c-a725-8c72f0cbf2cf   Pulling image "rancher/mirrored-library-busybox:1.36.1"
4s          Normal    Pulled                 pod/helper-pod-create-pvc-c45f4e3c-1383-488c-a725-8c72f0cbf2cf   Successfully pulled image "rancher/mirrored-library-busybox:1.36.1" in 3.737s (3.737s including waiting). Image size: 2147340 bytes.
4s          Normal    Created                pod/helper-pod-create-pvc-c45f4e3c-1383-488c-a725-8c72f0cbf2cf   Created container helper-pod
4s          Normal    Started                pod/helper-pod-create-pvc-c45f4e3c-1383-488c-a725-8c72f0cbf2cf   Started container helper-pod
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
### Deployment vyking-app-frontend
```bash
+ kubectl rollout status deploy vyking-app-frontend -n frontend-dev --timeout=30s
deployment "vyking-app-frontend" successfully rolled out
```


### Namespace `backend-dev`
### Deployment vyking-app-backend
```bash
+ kubectl rollout status deploy vyking-app-backend -n backend-dev --timeout=30s
Waiting for deployment "vyking-app-backend" rollout to finish: 0 of 2 updated replicas are available...
error: timed out waiting for the condition

[command failed with exit code 1]
```


### Namespace `mysql-dev`
### StatefulSet mysql
```bash
+ kubectl rollout status statefulset mysql -n mysql-dev --timeout=30s
Waiting for 1 pods to be ready...
error: timed out waiting for the condition

[command failed with exit code 1]
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

### DaemonSet svclb-traefik-7fa514ab
```bash
+ kubectl rollout status daemonset svclb-traefik-7fa514ab -n kube-system --timeout=30s
daemon set "svclb-traefik-7fa514ab" successfully rolled out
```


✅ Tests complete.
