# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 03:35:53 CEST
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
Kubernetes control plane is running at https://0.0.0.0:44503
CoreDNS is running at https://0.0.0.0:44503/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:44503/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 15m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 15m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   15m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   7m58s
backend-dev       Active   2m14s
cert-manager      Active   3m38s
default           Active   15m
frontend-dev      Active   2m14s
ingress-nginx     Active   2m10s
kube-node-lease   Active   15m
kube-public       Active   15m
kube-system       Active   15m
mysql-dev         Active   3m47s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS      RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running     0          6m35s   10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-gnq5m   1/1     Running     0          6m36s   10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-jhpcs                  1/1     Running     0          6m36s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-99xjt    1/1     Running     0          6m36s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-nz6cr                       1/1     Running     0          6m38s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-tnck2                  1/1     Running     0          6m38s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-server-556b554c94-fncjc                      1/1     Running     0          6m35s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
backend-dev     backend-backend-549575788c-2dn8t                    1/1     Running     0          2m1s    10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
backend-dev     backend-backend-549575788c-l4snh                    1/1     Running     0          2m1s    10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-x6w5s                       1/1     Running     0          3m33s   10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-kt89p            1/1     Running     0          3m33s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-v64kl               1/1     Running     0          3m33s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
frontend-dev    frontend-frontend-597d68f8cf-mkqps                  1/1     Running     0          118s    10.42.2.11   k3d-vyking-dev-server-0   <none>           <none>
ingress-nginx   ingress-nginx-controller-b4b575f8-kkknw             1/1     Running     0          95s     10.42.2.12   k3d-vyking-dev-server-0   <none>           <none>
kube-system     coredns-ccb96694c-wdpgs                             1/1     Running     0          15m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-crd-rqcxx                      0/1     Completed   0          15m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-j4s8n                          0/1     Completed   1          15m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-zjg9l             1/1     Running     0          15m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     metrics-server-5985cbc9d7-pzdwh                     1/1     Running     0          15m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-g5g5b          1/1     Running     0          15m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-f611fe98-76ljh                        2/2     Running     0          14m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-f611fe98-vrh9v                        2/2     Running     0          14m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-f611fe98-xc5pw                        2/2     Running     0          14m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     traefik-5d45fc8cc9-xbjj5                            1/1     Running     0          14m     10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.230.73    <none>                             8082/TCP                     6m40s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.88.42     <none>                             7000/TCP                     6m40s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.204.64    <none>                             5556/TCP,5557/TCP,5558/TCP   6m40s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.82.90     <none>                             6379/TCP                     6m40s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     6m40s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.13.50     <none>                             8081/TCP                     6m40s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.65.84     <none>                             8084/TCP                     6m40s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.233.63    <none>                             80/TCP,443/TCP               6m40s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.249.167   <none>                             8081/TCP                     2m2s    app=backend-backend
cert-manager    cert-manager                            ClusterIP      10.43.186.24    <none>                             9402/TCP                     3m35s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.59.193    <none>                             9402/TCP                     3m35s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.80.237    <none>                             443/TCP,9402/TCP             3m35s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      15m     <none>
frontend-dev    frontend-frontend                       ClusterIP      10.43.149.215   <none>                             8080/TCP                     2m      app=frontend-frontend
ingress-nginx   ingress-nginx-controller                NodePort       10.43.17.65     <none>                             80:32330/TCP,443:30118/TCP   96s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.3.253     <none>                             443/TCP                      96s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       15m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.11.100    <none>                             443/TCP                      15m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.133.232   <none>                             8080/TCP                     15m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.143.162   <none>                             8081/TCP                     15m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.193.152   172.18.0.2,172.18.0.3,172.18.0.4   80:31669/TCP,443:31137/TCP   14m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        2m2s
frontend-dev   frontend-frontend   <none>    frontend-dev.local   10.43.17.65                        80, 443   118s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           6m40s
argocd-dev      argocd-dex-server                  1/1     1            1           6m40s
argocd-dev      argocd-notifications-controller    1/1     1            1           6m40s
argocd-dev      argocd-redis                       1/1     1            1           6m40s
argocd-dev      argocd-repo-server                 1/1     1            1           6m40s
argocd-dev      argocd-server                      1/1     1            1           6m40s
backend-dev     backend-backend                    2/2     2            2           2m3s
cert-manager    cert-manager                       1/1     1            1           3m35s
cert-manager    cert-manager-cainjector            1/1     1            1           3m35s
cert-manager    cert-manager-webhook               1/1     1            1           3m35s
frontend-dev    frontend-frontend                  1/1     1            1           2m
ingress-nginx   ingress-nginx-controller           1/1     1            1           97s
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
argocd-dev   argocd-application-controller   1/1     6m41s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-f611fe98   3         3         3       3            3           <none>          14m
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
kube-system   helm-install-traefik       Complete   1/1           84s        15m
kube-system   helm-install-traefik-crd   Complete   1/1           79s        15m
```

### CronJobs (all namespaces)
```bash
+ kubectl get cronjobs -A
No resources found
```

### Horizontal Pod Autoscalers (all namespaces)
```bash
+ kubectl get hpa -A
NAMESPACE      NAME                REFERENCE                      TARGETS                        MINPODS   MAXPODS   REPLICAS   AGE
backend-dev    backend-backend     Deployment/backend-backend     cpu: 1%/70%, memory: 33%/70%   1         5         2          2m8s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 7%/80%    1         3         1          2m4s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    703m         23%      407Mi           5%          
k3d-vyking-dev-agent-1    310m         10%      523Mi           6%          
k3d-vyking-dev-server-0   335m         11%      1325Mi          16%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     14m          152Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-gnq5m   5m           27Mi            
argocd-dev      argocd-dex-server-796678d5bc-jhpcs                  0m           33Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-99xjt    1m           20Mi            
argocd-dev      argocd-redis-7c7fb7fc74-nz6cr                       4m           2Mi             
argocd-dev      argocd-repo-server-d587f667c-tnck2                  3m           83Mi            
argocd-dev      argocd-server-556b554c94-fncjc                      2m           24Mi            
backend-dev     backend-backend-549575788c-2dn8t                    2m           43Mi            
backend-dev     backend-backend-549575788c-l4snh                    3m           43Mi            
cert-manager    cert-manager-55c69bf5cf-x6w5s                       6m           47Mi            
cert-manager    cert-manager-cainjector-5765b5f544-kt89p            8m           25Mi            
cert-manager    cert-manager-webhook-6b67444dc9-v64kl               2m           16Mi            
frontend-dev    frontend-frontend-597d68f8cf-mkqps                  1m           9Mi             
ingress-nginx   ingress-nginx-controller-b4b575f8-kkknw             6m           50Mi            
kube-system     coredns-ccb96694c-wdpgs                             12m          16Mi            
kube-system     local-path-provisioner-5cf85fd84d-zjg9l             1m           7Mi             
kube-system     metrics-server-5985cbc9d7-pzdwh                     25m          29Mi            
kube-system     sealed-secrets-controller-5655858cbc-g5g5b          2m           20Mi            
kube-system     svclb-traefik-f611fe98-76ljh                        0m           0Mi             
kube-system     svclb-traefik-f611fe98-vrh9v                        0m           0Mi             
kube-system     svclb-traefik-f611fe98-xc5pw                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-xbjj5                            2m           50Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
backend-dev     2m3s        Normal    Unsealed                         sealedsecret/mysql-credentials-dev                       SealedSecret unsealed successfully
frontend-dev    2m2s        Normal    Created                          pod/frontend-frontend-597d68f8cf-mkqps                   Created container frontend
argocd-dev      2m2s        Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
argocd-dev      2m2s        Normal    OperationCompleted               application/mysql-sealed-secrets                         Sync operation to dd5a7a5083035b30b59a8ba9b47499055ce60cdf succeeded
argocd-dev      2m2s        Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
frontend-dev    2m1s        Normal    Started                          pod/frontend-frontend-597d68f8cf-mkqps                   Started container frontend
backend-dev     114s        Normal    Created                          pod/backend-backend-549575788c-2dn8t                     Created container backend
backend-dev     99s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
backend-dev     99s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     99s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     113s        Normal    Started                          pod/backend-backend-549575788c-2dn8t                     Started container backend
backend-dev     112s        Normal    Started                          pod/backend-backend-549575788c-l4snh                     Started container backend
backend-dev     112s        Normal    Created                          pod/backend-backend-549575788c-l4snh                     Created container backend
frontend-dev    110s        Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
ingress-nginx   109s        Normal    Started                          pod/ingress-nginx-admission-create-fhrwg                 Started container create
ingress-nginx   109s        Normal    Pulled                           pod/ingress-nginx-admission-create-fhrwg                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 21.65s (21.65s including waiting). Image size: 28450888 bytes.
ingress-nginx   109s        Normal    Created                          pod/ingress-nginx-admission-create-fhrwg                 Created container create
ingress-nginx   105s        Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   103s        Normal    Scheduled                        pod/ingress-nginx-controller-b4b575f8-kkknw              Successfully assigned ingress-nginx/ingress-nginx-controller-b4b575f8-kkknw to k3d-vyking-dev-server-0
ingress-nginx   104s        Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-b4b575f8 to 1
ingress-nginx   104s        Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-b4b575f8             Created pod: ingress-nginx-controller-b4b575f8-kkknw
ingress-nginx   102s        Normal    Pulling                          pod/ingress-nginx-controller-b4b575f8-kkknw              Pulling image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef"
argocd-dev      88s         Normal    ResourceUpdated                  application/backend                                      Updated health status: Progressing -> Healthy
backend-dev     69s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
backend-dev     69s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
ingress-nginx   60s         Normal    Started                          pod/ingress-nginx-controller-b4b575f8-kkknw              Started container controller
ingress-nginx   60s         Normal    Pulled                           pod/ingress-nginx-controller-b4b575f8-kkknw              Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef" in 42.2s (42.2s including waiting). Image size: 115287729 bytes.
ingress-nginx   60s         Normal    Created                          pod/ingress-nginx-controller-b4b575f8-kkknw              Created container controller
ingress-nginx   58s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
frontend-dev    56s         Normal    Sync                             ingress/frontend-frontend                                Scheduled for sync
argocd-dev      56s         Normal    ResourceUpdated                  application/frontend                                     Updated health status: Progressing -> Healthy
ingress-nginx   56s         Normal    RELOAD                           pod/ingress-nginx-controller-b4b575f8-kkknw              NGINX reload triggered due to a change in configuration
ingress-nginx   40s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-p2btf
ingress-nginx   39s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-p2btf                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-p2btf to k3d-vyking-dev-agent-0
ingress-nginx   39s         Normal    Pulling                          pod/ingress-nginx-admission-patch-p2btf                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24"
ingress-nginx   21s         Normal    Started                          pod/ingress-nginx-admission-patch-p2btf                  Started container patch
ingress-nginx   21s         Normal    Created                          pod/ingress-nginx-admission-patch-p2btf                  Created container patch
ingress-nginx   21s         Normal    Pulled                           pod/ingress-nginx-admission-patch-p2btf                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 17.857s (17.857s including waiting). Image size: 28450888 bytes.
ingress-nginx   17s         Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
kube-system     14s         Warning   Unhealthy                        pod/metrics-server-5985cbc9d7-pzdwh                      Liveness probe failed: Get "https://10.42.1.3:10250/livez": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          6m45s   10.42.1.9   k3d-vyking-dev-agent-1    <none>           <none>
argocd-applicationset-controller-78f49df558-gnq5m   1/1     Running   0          6m46s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dex-server-796678d5bc-jhpcs                  1/1     Running   0          6m46s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-notifications-controller-6d84bf8458-99xjt    1/1     Running   0          6m46s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-redis-7c7fb7fc74-nz6cr                       1/1     Running   0          6m48s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-tnck2                  1/1     Running   0          6m48s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-server-556b554c94-fncjc                      1/1     Running   0          6m45s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           6m49s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           6m49s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           6m49s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           6m49s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           6m49s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           6m49s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     6m50s   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### DaemonSets
```bash
+ kubectl get daemonset -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Services
```bash
+ kubectl get svc -n argocd-dev -o wide
NAME                                    TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-application-controller-metrics   ClusterIP   10.43.230.73   <none>        8082/TCP                     6m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.88.42    <none>        7000/TCP                     6m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.204.64   <none>        5556/TCP,5557/TCP,5558/TCP   6m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.82.90    <none>        6379/TCP                     6m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None           <none>        9121/TCP                     6m52s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.13.50    <none>        8081/TCP                     6m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.65.84    <none>        8084/TCP                     6m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.233.63   <none>        80/TCP,443/TCP               6m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     6m56s
argocd-cmd-params-cm            41     6m56s
argocd-gpg-keys-cm              0      6m56s
argocd-notifications-cm         1      6m56s
argocd-rbac-cm                  4      6m56s
argocd-redis-health-configmap   2      6m56s
argocd-ssh-known-hosts-cm       1      6m56s
argocd-tls-certs-cm             0      6m56s
kube-root-ca.crt                1      8m13s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      6m38s
argocd-notifications-secret    Opaque               0      6m57s
argocd-redis                   Opaque               1      7m2s
argocd-secret                  Opaque               3      6m57s
repo-vyking-git                Opaque               2      4m16s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      8m12s
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
2m58s       Normal   ResourceUpdated      application/mysql                                        Updated health status:  -> Healthy
2m58s       Normal   ResourceUpdated      application/mysql                                        Updated sync status:  -> Unknown
2m21s       Normal   ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
2m21s       Normal   OperationStarted     application/frontend                                     Initiated automated sync to 'dd5a7a5083035b30b59a8ba9b47499055ce60cdf'
2m21s       Normal   ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
2m21s       Normal   ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
2m21s       Normal   ResourceUpdated      application/backend                                      Updated health status:  -> Missing
2m21s       Normal   OperationStarted     application/backend                                      Initiated automated sync to 'dd5a7a5083035b30b59a8ba9b47499055ce60cdf'
2m18s       Normal   ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
2m17s       Normal   ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
2m16s       Normal   OperationCompleted   application/backend                                      Sync operation to dd5a7a5083035b30b59a8ba9b47499055ce60cdf succeeded
2m13s       Normal   ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
2m13s       Normal   ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
2m12s       Normal   OperationCompleted   application/frontend                                     Sync operation to dd5a7a5083035b30b59a8ba9b47499055ce60cdf succeeded
2m12s       Normal   ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
2m11s       Normal   ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
2m11s       Normal   OperationCompleted   application/mysql-sealed-secrets                         Sync operation to dd5a7a5083035b30b59a8ba9b47499055ce60cdf succeeded
2m11s       Normal   ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
97s         Normal   ResourceUpdated      application/backend                                      Updated health status: Progressing -> Healthy
65s         Normal   ResourceUpdated      application/frontend                                     Updated health status: Progressing -> Healthy
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     21m          153Mi           
argocd-applicationset-controller-78f49df558-gnq5m   2m           27Mi            
argocd-dex-server-796678d5bc-jhpcs                  2m           33Mi            
argocd-notifications-controller-6d84bf8458-99xjt    1m           20Mi            
argocd-redis-7c7fb7fc74-nz6cr                       4m           2Mi             
argocd-repo-server-d587f667c-tnck2                  2m           83Mi            
argocd-server-556b554c94-fncjc                      127m         38Mi            
```


### Applications
```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Healthy
frontend               Synced        Healthy
mysql                  Unknown       Healthy
mysql-sealed-secrets   Synced        Healthy
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
default   6m41s
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
NAME                                 READY   STATUS    RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
frontend-frontend-597d68f8cf-mkqps   1/1     Running   0          2m20s   10.42.2.11   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES                SELECTOR
frontend-frontend   1/1     1            1           2m20s   frontend     vyking-frontend:dev   app=frontend-frontend
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
NAME                TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE     SELECTOR
frontend-frontend   ClusterIP   10.43.149.215   <none>        8080/TCP   2m23s   app=frontend-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                CLASS    HOSTS                ADDRESS       PORTS     AGE
frontend-frontend   <none>   frontend-dev.local   10.43.17.65   80, 443   2m20s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                    DATA   AGE
frontend-nginx-config   1      2m25s
kube-root-ca.crt        1      2m38s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m31s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                       MINPODS   MAXPODS   REPLICAS   AGE
frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 7%/80%   1         3         1          2m23s
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
2m37s       Normal    IssuerNotFound            certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m37s       Normal    WaitingForApproval        certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
2m37s       Normal    IssuerNotFound            certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m37s       Normal    IssuerNotFound            certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m37s       Normal    IssuerNotFound            certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m37s       Normal    cert-manager.io           certificaterequest/frontend-cert-dev-1      Certificate request has been approved by cert-manager.io
2m37s       Normal    Requested                 certificate/frontend-cert-dev               Created new CertificateRequest resource "frontend-cert-dev-1"
2m37s       Normal    WaitingForApproval        certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
2m37s       Normal    WaitingForApproval        certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
2m34s       Normal    CertificateIssued         certificaterequest/frontend-cert-dev-1      Certificate fetched from issuer successfully
2m34s       Warning   BadConfig                 certificaterequest/frontend-cert-dev-1      Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
2m34s       Normal    Issuing                   certificate/frontend-cert-dev               The certificate has been successfully issued
2m26s       Normal    ScalingReplicaSet         deployment/frontend-frontend                Scaled up replica set frontend-frontend-597d68f8cf to 1
2m25s       Normal    Scheduled                 pod/frontend-frontend-597d68f8cf-mkqps      Successfully assigned frontend-dev/frontend-frontend-597d68f8cf-mkqps to k3d-vyking-dev-server-0
2m25s       Normal    SuccessfulCreate          replicaset/frontend-frontend-597d68f8cf     Created pod: frontend-frontend-597d68f8cf-mkqps
2m22s       Normal    Pulled                    pod/frontend-frontend-597d68f8cf-mkqps      Container image "vyking-frontend:dev" already present on machine
2m21s       Normal    Created                   pod/frontend-frontend-597d68f8cf-mkqps      Created container frontend
2m20s       Normal    Started                   pod/frontend-frontend-597d68f8cf-mkqps      Started container frontend
2m9s        Warning   FailedGetResourceMetric   horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
75s         Normal    Sync                      ingress/frontend-frontend                   Scheduled for sync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
NAME                                 CPU(cores)   MEMORY(bytes)   
frontend-frontend-597d68f8cf-mkqps   1m           9Mi             
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
NAME                               READY   STATUS    RESTARTS   AGE     IP           NODE                     NOMINATED NODE   READINESS GATES
backend-backend-549575788c-2dn8t   1/1     Running   0          2m33s   10.42.0.8    k3d-vyking-dev-agent-0   <none>           <none>
backend-backend-549575788c-l4snh   1/1     Running   0          2m33s   10.42.1.10   k3d-vyking-dev-agent-1   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES               SELECTOR
backend-backend   2/2     2            2           2m33s   backend      vyking-backend:dev   app=backend-backend
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
NAME              TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE     SELECTOR
backend-backend   ClusterIP   10.43.249.167   <none>        8081/TCP   2m35s   app=backend-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME              CLASS     HOSTS                ADDRESS                            PORTS   AGE
backend-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      2m35s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      2m49s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      2m30s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME              REFERENCE                    TARGETS                        MINPODS   MAXPODS   REPLICAS   AGE
backend-backend   Deployment/backend-backend   cpu: 1%/70%, memory: 33%/70%   1         5         2          2m38s
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
2m40s       Normal    SuccessfulCreate               replicaset/backend-backend-549575788c     Created pod: backend-backend-549575788c-l4snh
2m40s       Normal    ScalingReplicaSet              deployment/backend-backend                Scaled up replica set backend-backend-549575788c to 2
2m39s       Normal    Scheduled                      pod/backend-backend-549575788c-2dn8t      Successfully assigned backend-dev/backend-backend-549575788c-2dn8t to k3d-vyking-dev-agent-0
2m39s       Normal    Scheduled                      pod/backend-backend-549575788c-l4snh      Successfully assigned backend-dev/backend-backend-549575788c-l4snh to k3d-vyking-dev-agent-1
2m39s       Normal    SuccessfulCreate               replicaset/backend-backend-549575788c     Created pod: backend-backend-549575788c-2dn8t
2m24s       Normal    Pulled                         pod/backend-backend-549575788c-2dn8t      Container image "vyking-backend:dev" already present on machine
2m36s       Warning   Failed                         pod/backend-backend-549575788c-2dn8t      Error: secret "mysql-credentials-dev" not found
2m23s       Normal    Pulled                         pod/backend-backend-549575788c-l4snh      Container image "vyking-backend:dev" already present on machine
2m35s       Warning   Failed                         pod/backend-backend-549575788c-l4snh      Error: secret "mysql-credentials-dev" not found
2m33s       Normal    Unsealed                       sealedsecret/mysql-credentials-dev        SealedSecret unsealed successfully
2m24s       Normal    Created                        pod/backend-backend-549575788c-2dn8t      Created container backend
2m9s        Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m9s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
2m9s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m23s       Normal    Started                        pod/backend-backend-549575788c-2dn8t      Started container backend
2m22s       Normal    Started                        pod/backend-backend-549575788c-l4snh      Started container backend
2m22s       Normal    Created                        pod/backend-backend-549575788c-l4snh      Created container backend
99s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
99s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
NAME                               CPU(cores)   MEMORY(bytes)   
backend-backend-549575788c-2dn8t   2m           43Mi            
backend-backend-549575788c-l4snh   1m           43Mi            
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
kube-root-ca.crt   1      4m32s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   6      4m
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
4m3s        Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
NAME                                       READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
cert-manager-55c69bf5cf-x6w5s              1/1     Running   0          4m24s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
cert-manager-cainjector-5765b5f544-kt89p   1/1     Running   0          4m24s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-webhook-6b67444dc9-v64kl      1/1     Running   0          4m24s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           4m25s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           4m25s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           4m25s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
NAME                      TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)            AGE     SELECTOR
cert-manager              ClusterIP   10.43.186.24   <none>        9402/TCP           4m28s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.59.193   <none>        9402/TCP           4m28s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.80.237   <none>        443/TCP,9402/TCP   4m28s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      4m33s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      3m54s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      4m34s
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
4m29s       Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-v64kl       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-v64kl to k3d-vyking-dev-agent-0
4m27s       Normal   Pulling             pod/cert-manager-55c69bf5cf-x6w5s               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
4m26s       Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-v64kl       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
4m26s       Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-kt89p    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
4m1s        Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-kt89p    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 24.735s (24.745s including waiting). Image size: 15426355 bytes.
4m1s        Normal   Created             pod/cert-manager-cainjector-5765b5f544-kt89p    Created container cert-manager-cainjector
3m59s       Normal   Created             pod/cert-manager-webhook-6b67444dc9-v64kl       Created container cert-manager-webhook
3m59s       Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-v64kl       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 27.041s (27.041s including waiting). Image size: 18192443 bytes.
3m59s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-kt89p    Started container cert-manager-cainjector
3m59s       Normal   Pulled              pod/cert-manager-55c69bf5cf-x6w5s               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 28.796s (28.796s including waiting). Image size: 21189387 bytes.
3m58s       Normal   Created             pod/cert-manager-55c69bf5cf-x6w5s               Created container cert-manager-controller
3m58s       Normal   Started             pod/cert-manager-webhook-6b67444dc9-v64kl       Started container cert-manager-webhook
3m57s       Normal   Started             pod/cert-manager-55c69bf5cf-x6w5s               Started container cert-manager-controller
3m47s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-g9xwm
3m47s       Normal   Scheduled           pod/cert-manager-startupapicheck-g9xwm          Successfully assigned cert-manager/cert-manager-startupapicheck-g9xwm to k3d-vyking-dev-server-0
3m46s       Normal   Pulling             pod/cert-manager-startupapicheck-g9xwm          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
3m39s       Normal   Pulled              pod/cert-manager-startupapicheck-g9xwm          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 6.9s (6.9s including waiting). Image size: 14095526 bytes.
3m39s       Normal   Created             pod/cert-manager-startupapicheck-g9xwm          Created container cert-manager-startupapicheck
3m38s       Normal   Started             pod/cert-manager-startupapicheck-g9xwm          Started container cert-manager-startupapicheck
3m32s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-x6w5s              3m           43Mi            
cert-manager-cainjector-5765b5f544-kt89p   4m           23Mi            
cert-manager-webhook-6b67444dc9-v64kl      2m           16Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-g5g5b   1/1     Running   0          16m   10.42.0.3   k3d-vyking-dev-agent-0   <none>           <none>
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
NAME                        TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.133.232   <none>        8080/TCP   16m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
15m         Normal    ScalingReplicaSet      deployment/traefik                                Scaled up replica set traefik-5d45fc8cc9 to 1
15m         Normal    EnsuringLoadBalancer   service/traefik                                   Ensuring load balancer
15m         Normal    Scheduled              pod/traefik-5d45fc8cc9-xbjj5                      Successfully assigned kube-system/traefik-5d45fc8cc9-xbjj5 to k3d-vyking-dev-server-0
15m         Normal    SuccessfulCreate       daemonset/svclb-traefik-f611fe98                  Created pod: svclb-traefik-f611fe98-76ljh
15m         Normal    Scheduled              pod/svclb-traefik-f611fe98-vrh9v                  Successfully assigned kube-system/svclb-traefik-f611fe98-vrh9v to k3d-vyking-dev-agent-0
15m         Normal    SuccessfulCreate       daemonset/svclb-traefik-f611fe98                  Created pod: svclb-traefik-f611fe98-vrh9v
15m         Normal    Scheduled              pod/svclb-traefik-f611fe98-xc5pw                  Successfully assigned kube-system/svclb-traefik-f611fe98-xc5pw to k3d-vyking-dev-agent-1
15m         Normal    Pulling                pod/traefik-5d45fc8cc9-xbjj5                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
15m         Normal    Pulling                pod/svclb-traefik-f611fe98-vrh9v                  Pulling image "rancher/klipper-lb:v0.4.9"
15m         Normal    Pulling                pod/svclb-traefik-f611fe98-xc5pw                  Pulling image "rancher/klipper-lb:v0.4.9"
15m         Normal    Completed              job/helm-install-traefik                          Job completed
15m         Normal    Pulling                pod/svclb-traefik-f611fe98-76ljh                  Pulling image "rancher/klipper-lb:v0.4.9"
15m         Normal    Pulled                 pod/svclb-traefik-f611fe98-xc5pw                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 5.751s (5.751s including waiting). Image size: 4990278 bytes.
15m         Normal    Created                pod/svclb-traefik-f611fe98-xc5pw                  Created container lb-tcp-80
15m         Normal    Started                pod/svclb-traefik-f611fe98-xc5pw                  Started container lb-tcp-80
15m         Normal    Created                pod/svclb-traefik-f611fe98-xc5pw                  Created container lb-tcp-443
15m         Normal    Pulled                 pod/svclb-traefik-f611fe98-xc5pw                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
15m         Normal    Started                pod/svclb-traefik-f611fe98-xc5pw                  Started container lb-tcp-443
15m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.4]
14m         Normal    Created                pod/svclb-traefik-f611fe98-vrh9v                  Created container lb-tcp-80
14m         Normal    Pulled                 pod/svclb-traefik-f611fe98-vrh9v                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 10.871s (10.871s including waiting). Image size: 4990278 bytes.
14m         Normal    Created                pod/svclb-traefik-f611fe98-vrh9v                  Created container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-f611fe98-vrh9v                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Started                pod/svclb-traefik-f611fe98-vrh9v                  Started container lb-tcp-80
14m         Normal    Started                pod/svclb-traefik-f611fe98-vrh9v                  Started container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-f611fe98-76ljh                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 13.314s (13.314s including waiting). Image size: 4990278 bytes.
14m         Normal    Created                pod/svclb-traefik-f611fe98-76ljh                  Created container lb-tcp-80
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.4] -> [172.18.0.3 172.18.0.4]
14m         Normal    Created                pod/svclb-traefik-f611fe98-76ljh                  Created container lb-tcp-443
14m         Normal    Started                pod/svclb-traefik-f611fe98-76ljh                  Started container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-f611fe98-76ljh                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Started                pod/svclb-traefik-f611fe98-76ljh                  Started container lb-tcp-80
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
14m         Normal    Created                pod/traefik-5d45fc8cc9-xbjj5                      Created container traefik
14m         Normal    Pulled                 pod/traefik-5d45fc8cc9-xbjj5                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 33.36s (33.36s including waiting). Image size: 49449055 bytes.
14m         Normal    Started                pod/traefik-5d45fc8cc9-xbjj5                      Started container traefik
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
3m59s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-kt89p_ec949349-a399-455e-ac52-80b09c384594 became leader
3m58s       Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-x6w5s-external-cert-manager-controller became leader
66s         Warning   Unhealthy              pod/metrics-server-5985cbc9d7-pzdwh               Liveness probe failed: Get "https://10.42.1.3:10250/livez": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
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

### DaemonSet svclb-traefik-f611fe98
```bash
+ kubectl rollout status daemonset svclb-traefik-f611fe98 -n kube-system --timeout=30s
daemon set "svclb-traefik-f611fe98" successfully rolled out
```


✅ Tests complete.
