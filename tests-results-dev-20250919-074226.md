# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-19 07:42:26 CEST
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
Kubernetes control plane is running at https://0.0.0.0:38609
CoreDNS is running at https://0.0.0.0:38609/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:38609/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 15m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 15m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   16m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   6m8s
backend-dev       Active   98s
cert-manager      Active   2m40s
default           Active   16m
frontend-dev      Active   98s
ingress-nginx     Active   94s
kube-node-lease   Active   16m
kube-public       Active   16m
kube-system       Active   16m
mysql-dev         Active   2m48s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS      RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running     0          5m5s    10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-xkc6m   1/1     Running     0          5m6s    10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-7n7hg                  1/1     Running     0          5m6s    10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-mzpwd    1/1     Running     0          5m6s    10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-vrfsq                       1/1     Running     0          5m6s    10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-lwl2w                  1/1     Running     0          5m4s    10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-server-556b554c94-phcqx                      1/1     Running     0          5m6s    10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
backend-dev     backend-backend-66c96df8b-7d67f                     1/1     Running     0          88s     10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
backend-dev     backend-backend-66c96df8b-ndd5n                     1/1     Running     0          88s     10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-bpsbd                       1/1     Running     0          2m36s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-xgmck            1/1     Running     0          2m36s   10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-x5tnj               1/1     Running     0          2m36s   10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
frontend-dev    frontend-frontend-597d68f8cf-45pk5                  1/1     Running     0          87s     10.42.2.11   k3d-vyking-dev-server-0   <none>           <none>
ingress-nginx   ingress-nginx-controller-b4b575f8-bwhzf             1/1     Running     0          73s     10.42.2.12   k3d-vyking-dev-server-0   <none>           <none>
kube-system     coredns-ccb96694c-6jwjz                             1/1     Running     0          15m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-crd-s5wrg                      0/1     Completed   0          15m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-vxphs                          0/1     Completed   0          15m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-v5xvf             1/1     Running     0          15m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     metrics-server-5985cbc9d7-4n4nr                     1/1     Running     0          15m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-jpmlh          1/1     Running     0          15m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-16c4a04c-hznq9                        2/2     Running     0          14m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-16c4a04c-jbtk2                        2/2     Running     0          14m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-16c4a04c-lttrm                        2/2     Running     0          14m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     traefik-5d45fc8cc9-9nb4p                            1/1     Running     0          14m     10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.95.121    <none>                             8082/TCP                     5m8s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.57.180    <none>                             7000/TCP                     5m8s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.168.14    <none>                             5556/TCP,5557/TCP,5558/TCP   5m8s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.51.252    <none>                             6379/TCP                     5m8s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     5m8s    app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.241.41    <none>                             8081/TCP                     5m8s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.9.77      <none>                             8084/TCP                     5m8s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.251.79    <none>                             80/TCP,443/TCP               5m8s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.10.118    <none>                             8081/TCP                     90s     app=backend-backend
cert-manager    cert-manager                            ClusterIP      10.43.26.8      <none>                             9402/TCP                     2m39s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.64.40     <none>                             9402/TCP                     2m39s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.100.2     <none>                             443/TCP,9402/TCP             2m39s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      16m     <none>
frontend-dev    frontend-frontend                       ClusterIP      10.43.210.168   <none>                             8080/TCP                     89s     app=frontend-frontend
ingress-nginx   ingress-nginx-controller                NodePort       10.43.76.219    <none>                             80:32502/TCP,443:32745/TCP   75s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.46.77     <none>                             443/TCP                      75s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       15m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.30.140    <none>                             443/TCP                      15m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.213.141   <none>                             8080/TCP                     15m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.202.107   <none>                             8081/TCP                     15m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.15.59     172.18.0.2,172.18.0.3,172.18.0.4   80:30574/TCP,443:32411/TCP   14m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        89s
frontend-dev   frontend-frontend   <none>    frontend-dev.local   10.43.76.219                       80, 443   87s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           5m7s
argocd-dev      argocd-dex-server                  1/1     1            1           5m7s
argocd-dev      argocd-notifications-controller    1/1     1            1           5m7s
argocd-dev      argocd-redis                       1/1     1            1           5m7s
argocd-dev      argocd-repo-server                 1/1     1            1           5m7s
argocd-dev      argocd-server                      1/1     1            1           5m7s
backend-dev     backend-backend                    2/2     2            2           89s
cert-manager    cert-manager                       1/1     1            1           2m38s
cert-manager    cert-manager-cainjector            1/1     1            1           2m38s
cert-manager    cert-manager-webhook               1/1     1            1           2m38s
frontend-dev    frontend-frontend                  1/1     1            1           88s
ingress-nginx   ingress-nginx-controller           1/1     1            1           74s
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
argocd-dev   argocd-application-controller   1/1     5m7s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-16c4a04c   3         3         3       3            3           <none>          14m
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
kube-system   helm-install-traefik       Complete   1/1           80s        15m
kube-system   helm-install-traefik-crd   Complete   1/1           73s        15m
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
backend-dev    backend-backend     Deployment/backend-backend     cpu: 1%/70%, memory: 33%/70%   1         5         2          91s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 7%/80%    1         3         1          90s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    278m         9%       602Mi           7%          
k3d-vyking-dev-agent-1    875m         29%      493Mi           6%          
k3d-vyking-dev-server-0   358m         11%      1270Mi          15%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     26m          203Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-xkc6m   2m           24Mi            
argocd-dev      argocd-dex-server-796678d5bc-7n7hg                  1m           99Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-mzpwd    1m           21Mi            
argocd-dev      argocd-redis-7c7fb7fc74-vrfsq                       4m           2Mi             
argocd-dev      argocd-repo-server-d587f667c-lwl2w                  4m           93Mi            
argocd-dev      argocd-server-556b554c94-phcqx                      3m           50Mi            
backend-dev     backend-backend-66c96df8b-7d67f                     1m           43Mi            
backend-dev     backend-backend-66c96df8b-ndd5n                     2m           42Mi            
cert-manager    cert-manager-55c69bf5cf-bpsbd                       8m           23Mi            
cert-manager    cert-manager-cainjector-5765b5f544-xgmck            5m           21Mi            
cert-manager    cert-manager-webhook-6b67444dc9-x5tnj               2m           12Mi            
frontend-dev    frontend-frontend-597d68f8cf-45pk5                  1m           9Mi             
ingress-nginx   ingress-nginx-controller-b4b575f8-bwhzf             6m           47Mi            
kube-system     coredns-ccb96694c-6jwjz                             7m           16Mi            
kube-system     local-path-provisioner-5cf85fd84d-v5xvf             2m           12Mi            
kube-system     metrics-server-5985cbc9d7-4n4nr                     20m          29Mi            
kube-system     sealed-secrets-controller-5655858cbc-jpmlh          6m           21Mi            
kube-system     svclb-traefik-16c4a04c-hznq9                        0m           0Mi             
kube-system     svclb-traefik-16c4a04c-jbtk2                        0m           0Mi             
kube-system     svclb-traefik-16c4a04c-lttrm                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-9nb4p                            2m           49Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
frontend-dev    87s         Normal    Started                          pod/frontend-frontend-597d68f8cf-45pk5                   Started container frontend
ingress-nginx   82s         Normal    Pulled                           pod/ingress-nginx-admission-create-gb9tv                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 10.181s (10.181s including waiting). Image size: 28450888 bytes.
ingress-nginx   82s         Normal    Created                          pod/ingress-nginx-admission-create-gb9tv                 Created container create
ingress-nginx   82s         Normal    Started                          pod/ingress-nginx-admission-create-gb9tv                 Started container create
ingress-nginx   78s         Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   77s         Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-b4b575f8             Created pod: ingress-nginx-controller-b4b575f8-bwhzf
backend-dev     61s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     61s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
backend-dev     61s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
ingress-nginx   77s         Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-b4b575f8 to 1
ingress-nginx   77s         Normal    Scheduled                        pod/ingress-nginx-controller-b4b575f8-bwhzf              Successfully assigned ingress-nginx/ingress-nginx-controller-b4b575f8-bwhzf to k3d-vyking-dev-server-0
ingress-nginx   76s         Warning   FailedMount                      pod/ingress-nginx-controller-b4b575f8-bwhzf              MountVolume.SetUp failed for volume "kube-api-access-hjxqz" : failed to sync configmap cache: timed out waiting for the condition
ingress-nginx   75s         Normal    Pulling                          pod/ingress-nginx-controller-b4b575f8-bwhzf              Pulling image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef"
frontend-dev    75s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
argocd-dev      74s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
argocd-dev      74s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
backend-dev     74s         Normal    Unsealed                         sealedsecret/mysql-credentials-dev                       SealedSecret unsealed successfully
argocd-dev      74s         Normal    OperationCompleted               application/mysql-sealed-secrets                         Sync operation to a31aa790e0ffe21c23c49f68dfd304b6725a3d4f succeeded
argocd-dev      74s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
backend-dev     63s         Normal    Created                          pod/backend-backend-66c96df8b-7d67f                      Created container backend
backend-dev     63s         Normal    Created                          pod/backend-backend-66c96df8b-ndd5n                      Created container backend
backend-dev     62s         Normal    Started                          pod/backend-backend-66c96df8b-ndd5n                      Started container backend
backend-dev     62s         Normal    Started                          pod/backend-backend-66c96df8b-7d67f                      Started container backend
backend-dev     31s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
backend-dev     31s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
ingress-nginx   45s         Normal    Created                          pod/ingress-nginx-controller-b4b575f8-bwhzf              Created container controller
ingress-nginx   45s         Normal    Pulled                           pod/ingress-nginx-controller-b4b575f8-bwhzf              Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef" in 29.38s (29.38s including waiting). Image size: 115287729 bytes.
ingress-nginx   44s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
ingress-nginx   44s         Normal    Started                          pod/ingress-nginx-controller-b4b575f8-bwhzf              Started container controller
frontend-dev    43s         Normal    Sync                             ingress/frontend-frontend                                Scheduled for sync
ingress-nginx   43s         Normal    RELOAD                           pod/ingress-nginx-controller-b4b575f8-bwhzf              NGINX reload triggered due to a change in configuration
argocd-dev      42s         Normal    ResourceUpdated                  application/frontend                                     Updated health status: Progressing -> Healthy
argocd-dev      41s         Normal    ResourceUpdated                  application/backend                                      Updated health status: Progressing -> Healthy
ingress-nginx   22s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-h47qs
ingress-nginx   22s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-h47qs                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-h47qs to k3d-vyking-dev-agent-1
ingress-nginx   21s         Normal    Pulling                          pod/ingress-nginx-admission-patch-h47qs                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24"
ingress-nginx   12s         Normal    Started                          pod/ingress-nginx-admission-patch-h47qs                  Started container patch
ingress-nginx   12s         Normal    Pulled                           pod/ingress-nginx-admission-patch-h47qs                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 8.451s (8.451s including waiting). Image size: 28450888 bytes.
ingress-nginx   12s         Normal    Created                          pod/ingress-nginx-admission-patch-h47qs                  Created container patch
ingress-nginx   8s          Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          5m10s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-applicationset-controller-78f49df558-xkc6m   1/1     Running   0          5m11s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dex-server-796678d5bc-7n7hg                  1/1     Running   0          5m11s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-notifications-controller-6d84bf8458-mzpwd    1/1     Running   0          5m11s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-redis-7c7fb7fc74-vrfsq                       1/1     Running   0          5m11s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-repo-server-d587f667c-lwl2w                  1/1     Running   0          5m9s    10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-phcqx                      1/1     Running   0          5m11s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           5m11s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           5m11s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           5m11s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           5m11s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           5m11s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           5m11s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     5m11s   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.95.121   <none>        8082/TCP                     5m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.57.180   <none>        7000/TCP                     5m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.168.14   <none>        5556/TCP,5557/TCP,5558/TCP   5m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.51.252   <none>        6379/TCP                     5m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None           <none>        9121/TCP                     5m13s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.241.41   <none>        8081/TCP                     5m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.9.77     <none>        8084/TCP                     5m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.251.79   <none>        80/TCP,443/TCP               5m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     5m14s
argocd-cmd-params-cm            41     5m14s
argocd-gpg-keys-cm              0      5m14s
argocd-notifications-cm         1      5m14s
argocd-rbac-cm                  4      5m14s
argocd-redis-health-configmap   2      5m14s
argocd-ssh-known-hosts-cm       1      5m14s
argocd-tls-certs-cm             0      5m14s
kube-root-ca.crt                1      6m13s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      3m22s
argocd-notifications-secret    Opaque               0      5m14s
argocd-redis                   Opaque               1      5m25s
argocd-secret                  Opaque               3      5m14s
repo-vyking-git                Opaque               2      3m5s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      6m13s
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
2m26s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
2m25s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
97s         Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
97s         Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
97s         Normal    OperationStarted     application/backend                                      Initiated automated sync to 'a31aa790e0ffe21c23c49f68dfd304b6725a3d4f'
97s         Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
97s         Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
97s         Normal    OperationStarted     application/frontend                                     Initiated automated sync to 'a31aa790e0ffe21c23c49f68dfd304b6725a3d4f'
94s         Normal    OperationCompleted   application/backend                                      Sync operation to a31aa790e0ffe21c23c49f68dfd304b6725a3d4f succeeded
94s         Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
94s         Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
92s         Normal    ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
92s         Normal    ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
92s         Normal    OperationCompleted   application/frontend                                     Sync operation to a31aa790e0ffe21c23c49f68dfd304b6725a3d4f succeeded
77s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
77s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
77s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
77s         Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to a31aa790e0ffe21c23c49f68dfd304b6725a3d4f succeeded
45s         Normal    ResourceUpdated      application/frontend                                     Updated health status: Progressing -> Healthy
44s         Normal    ResourceUpdated      application/backend                                      Updated health status: Progressing -> Healthy
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     26m          203Mi           
argocd-applicationset-controller-78f49df558-xkc6m   2m           24Mi            
argocd-dex-server-796678d5bc-7n7hg                  1m           99Mi            
argocd-notifications-controller-6d84bf8458-mzpwd    1m           21Mi            
argocd-redis-7c7fb7fc74-vrfsq                       4m           2Mi             
argocd-repo-server-d587f667c-lwl2w                  4m           93Mi            
argocd-server-556b554c94-phcqx                      3m           50Mi            
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
default   3m24s
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
NAME                                 READY   STATUS    RESTARTS   AGE   IP           NODE                      NOMINATED NODE   READINESS GATES
frontend-frontend-597d68f8cf-45pk5   1/1     Running   0          96s   10.42.2.11   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES                SELECTOR
frontend-frontend   1/1     1            1           96s   frontend     vyking-frontend:dev   app=frontend-frontend
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
frontend-frontend   ClusterIP   10.43.210.168   <none>        8080/TCP   98s   app=frontend-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                CLASS    HOSTS                ADDRESS        PORTS     AGE
frontend-frontend   <none>   frontend-dev.local   10.43.76.219   80, 443   96s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                    DATA   AGE
frontend-nginx-config   1      98s
kube-root-ca.crt        1      108s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      103s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                       MINPODS   MAXPODS   REPLICAS   AGE
frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 7%/80%   1         3         1          98s
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
106s        Normal    cert-manager.io           certificaterequest/frontend-cert-dev-1      Certificate request has been approved by cert-manager.io
106s        Normal    IssuerNotFound            certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
106s        Normal    Generated                 certificate/frontend-cert-dev               Stored new private key in temporary Secret resource "frontend-cert-dev-ckxp6"
106s        Normal    WaitingForApproval        certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
106s        Normal    IssuerNotFound            certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
106s        Normal    IssuerNotFound            certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
106s        Normal    Requested                 certificate/frontend-cert-dev               Created new CertificateRequest resource "frontend-cert-dev-1"
106s        Normal    IssuerNotFound            certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
106s        Normal    Issuing                   certificate/frontend-cert-dev               Issuing certificate as Secret does not exist
104s        Normal    CertificateIssued         certificaterequest/frontend-cert-dev-1      Certificate fetched from issuer successfully
104s        Warning   BadConfig                 certificaterequest/frontend-cert-dev-1      Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
104s        Normal    Issuing                   certificate/frontend-cert-dev               The certificate has been successfully issued
98s         Normal    SuccessfulCreate          replicaset/frontend-frontend-597d68f8cf     Created pod: frontend-frontend-597d68f8cf-45pk5
98s         Normal    ScalingReplicaSet         deployment/frontend-frontend                Scaled up replica set frontend-frontend-597d68f8cf to 1
97s         Normal    Scheduled                 pod/frontend-frontend-597d68f8cf-45pk5      Successfully assigned frontend-dev/frontend-frontend-597d68f8cf-45pk5 to k3d-vyking-dev-server-0
95s         Normal    Pulled                    pod/frontend-frontend-597d68f8cf-45pk5      Container image "vyking-frontend:dev" already present on machine
95s         Normal    Created                   pod/frontend-frontend-597d68f8cf-45pk5      Created container frontend
94s         Normal    Started                   pod/frontend-frontend-597d68f8cf-45pk5      Started container frontend
82s         Warning   FailedGetResourceMetric   horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
50s         Normal    Sync                      ingress/frontend-frontend                   Scheduled for sync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
NAME                                 CPU(cores)   MEMORY(bytes)   
frontend-frontend-597d68f8cf-45pk5   1m           9Mi             
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
NAME                              READY   STATUS    RESTARTS   AGE    IP           NODE                     NOMINATED NODE   READINESS GATES
backend-backend-66c96df8b-7d67f   1/1     Running   0          101s   10.42.0.8    k3d-vyking-dev-agent-0   <none>           <none>
backend-backend-66c96df8b-ndd5n   1/1     Running   0          101s   10.42.1.10   k3d-vyking-dev-agent-1   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS   IMAGES               SELECTOR
backend-backend   2/2     2            2           101s   backend      vyking-backend:dev   app=backend-backend
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
NAME              TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE    SELECTOR
backend-backend   ClusterIP   10.43.10.118   <none>        8081/TCP   102s   app=backend-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME              CLASS     HOSTS                ADDRESS                            PORTS   AGE
backend-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      102s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      112s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      84s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME              REFERENCE                    TARGETS                        MINPODS   MAXPODS   REPLICAS   AGE
backend-backend   Deployment/backend-backend   cpu: 1%/70%, memory: 33%/70%   1         5         2          102s
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
103s        Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-ndd5n
103s        Normal    ScalingReplicaSet              deployment/backend-backend                Scaled up replica set backend-backend-66c96df8b to 2
103s        Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-7d67f
103s        Normal    Scheduled                      pod/backend-backend-66c96df8b-ndd5n       Successfully assigned backend-dev/backend-backend-66c96df8b-ndd5n to k3d-vyking-dev-agent-1
103s        Normal    Scheduled                      pod/backend-backend-66c96df8b-7d67f       Successfully assigned backend-dev/backend-backend-66c96df8b-7d67f to k3d-vyking-dev-agent-0
74s         Normal    Pulled                         pod/backend-backend-66c96df8b-7d67f       Container image "vyking-backend:dev" already present on machine
87s         Warning   Failed                         pod/backend-backend-66c96df8b-7d67f       Error: secret "mysql-credentials-dev" not found
74s         Normal    Pulled                         pod/backend-backend-66c96df8b-ndd5n       Container image "vyking-backend:dev" already present on machine
86s         Warning   Failed                         pod/backend-backend-66c96df8b-ndd5n       Error: secret "mysql-credentials-dev" not found
72s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
72s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
72s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
85s         Normal    Unsealed                       sealedsecret/mysql-credentials-dev        SealedSecret unsealed successfully
74s         Normal    Created                        pod/backend-backend-66c96df8b-ndd5n       Created container backend
74s         Normal    Created                        pod/backend-backend-66c96df8b-7d67f       Created container backend
73s         Normal    Started                        pod/backend-backend-66c96df8b-ndd5n       Started container backend
73s         Normal    Started                        pod/backend-backend-66c96df8b-7d67f       Started container backend
42s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
42s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
NAME                              CPU(cores)   MEMORY(bytes)   
backend-backend-66c96df8b-7d67f   1m           43Mi            
backend-backend-66c96df8b-ndd5n   2m           42Mi            
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
kube-root-ca.crt   1      3m7s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   5      2m40s
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
2m41s       Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
cert-manager-55c69bf5cf-bpsbd              1/1     Running   0          2m57s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-cainjector-5765b5f544-xgmck   1/1     Running   0          2m57s   10.42.1.9   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-webhook-6b67444dc9-x5tnj      1/1     Running   0          2m57s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           2m58s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           2m58s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           2m58s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
NAME                      TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)            AGE   SELECTOR
cert-manager              ClusterIP   10.43.26.8    <none>        9402/TCP           3m    app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.64.40   <none>        9402/TCP           3m    app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.100.2   <none>        443/TCP,9402/TCP   3m    app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      3m2s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      2m35s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      3m2s
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
2m58s       Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-x5tnj       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-x5tnj to k3d-vyking-dev-server-0
2m56s       Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-x5tnj       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
2m55s       Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-xgmck    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
2m55s       Normal   Pulling             pod/cert-manager-55c69bf5cf-bpsbd               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
2m39s       Normal   Created             pod/cert-manager-cainjector-5765b5f544-xgmck    Created container cert-manager-cainjector
2m39s       Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-xgmck    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 16.482s (16.482s including waiting). Image size: 15426355 bytes.
2m38s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-xgmck    Started container cert-manager-cainjector
2m37s       Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-x5tnj       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 19.197s (19.197s including waiting). Image size: 18192443 bytes.
2m36s       Normal   Pulled              pod/cert-manager-55c69bf5cf-bpsbd               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 19.04s (19.04s including waiting). Image size: 21189387 bytes.
2m36s       Normal   Started             pod/cert-manager-webhook-6b67444dc9-x5tnj       Started container cert-manager-webhook
2m36s       Normal   Created             pod/cert-manager-55c69bf5cf-bpsbd               Created container cert-manager-controller
2m36s       Normal   Started             pod/cert-manager-55c69bf5cf-bpsbd               Started container cert-manager-controller
2m37s       Normal   Created             pod/cert-manager-webhook-6b67444dc9-x5tnj       Created container cert-manager-webhook
2m24s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-zrczk
2m24s       Normal   Scheduled           pod/cert-manager-startupapicheck-zrczk          Successfully assigned cert-manager/cert-manager-startupapicheck-zrczk to k3d-vyking-dev-server-0
2m23s       Normal   Pulling             pod/cert-manager-startupapicheck-zrczk          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
2m17s       Normal   Pulled              pod/cert-manager-startupapicheck-zrczk          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 5.791s (5.791s including waiting). Image size: 14095526 bytes.
2m17s       Normal   Started             pod/cert-manager-startupapicheck-zrczk          Started container cert-manager-startupapicheck
2m17s       Normal   Created             pod/cert-manager-startupapicheck-zrczk          Created container cert-manager-startupapicheck
2m13s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-bpsbd              8m           23Mi            
cert-manager-cainjector-5765b5f544-xgmck   3m           21Mi            
cert-manager-webhook-6b67444dc9-x5tnj      1m           12Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-jpmlh   1/1     Running   0          15m   10.42.0.3   k3d-vyking-dev-agent-0   <none>           <none>
```

### Sealed Secrets deployment
```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           15m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.26.0   name=sealed-secrets-controller
```

### Sealed Secrets service
```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.213.141   <none>        8080/TCP   15m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
14m         Normal    Scheduled              pod/svclb-traefik-16c4a04c-hznq9                  Successfully assigned kube-system/svclb-traefik-16c4a04c-hznq9 to k3d-vyking-dev-agent-0
14m         Normal    SuccessfulCreate       daemonset/svclb-traefik-16c4a04c                  Created pod: svclb-traefik-16c4a04c-hznq9
14m         Normal    SuccessfulCreate       daemonset/svclb-traefik-16c4a04c                  Created pod: svclb-traefik-16c4a04c-jbtk2
14m         Normal    Scheduled              pod/traefik-5d45fc8cc9-9nb4p                      Successfully assigned kube-system/traefik-5d45fc8cc9-9nb4p to k3d-vyking-dev-server-0
14m         Normal    Scheduled              pod/svclb-traefik-16c4a04c-lttrm                  Successfully assigned kube-system/svclb-traefik-16c4a04c-lttrm to k3d-vyking-dev-server-0
14m         Normal    SuccessfulCreate       daemonset/svclb-traefik-16c4a04c                  Created pod: svclb-traefik-16c4a04c-lttrm
14m         Normal    Scheduled              pod/svclb-traefik-16c4a04c-jbtk2                  Successfully assigned kube-system/svclb-traefik-16c4a04c-jbtk2 to k3d-vyking-dev-agent-1
14m         Normal    Pulling                pod/svclb-traefik-16c4a04c-jbtk2                  Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Pulling                pod/traefik-5d45fc8cc9-9nb4p                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
14m         Normal    Pulling                pod/svclb-traefik-16c4a04c-lttrm                  Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Pulling                pod/svclb-traefik-16c4a04c-hznq9                  Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Completed              job/helm-install-traefik                          Job completed
14m         Normal    Pulled                 pod/svclb-traefik-16c4a04c-hznq9                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Started                pod/svclb-traefik-16c4a04c-hznq9                  Started container lb-tcp-80
14m         Normal    Created                pod/svclb-traefik-16c4a04c-hznq9                  Created container lb-tcp-80
14m         Normal    Pulled                 pod/svclb-traefik-16c4a04c-hznq9                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 9.926s (9.926s including waiting). Image size: 4990278 bytes.
14m         Normal    Created                pod/svclb-traefik-16c4a04c-hznq9                  Created container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-16c4a04c-jbtk2                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 12.183s (12.183s including waiting). Image size: 4990278 bytes.
14m         Normal    Started                pod/svclb-traefik-16c4a04c-hznq9                  Started container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-16c4a04c-lttrm                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 13.483s (13.483s including waiting). Image size: 4990278 bytes.
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.3]
14m         Normal    Created                pod/svclb-traefik-16c4a04c-jbtk2                  Created container lb-tcp-80
14m         Normal    Created                pod/svclb-traefik-16c4a04c-lttrm                  Created container lb-tcp-80
14m         Normal    Pulled                 pod/svclb-traefik-16c4a04c-jbtk2                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Started                pod/svclb-traefik-16c4a04c-jbtk2                  Started container lb-tcp-80
14m         Normal    Pulled                 pod/svclb-traefik-16c4a04c-lttrm                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Created                pod/svclb-traefik-16c4a04c-lttrm                  Created container lb-tcp-443
14m         Normal    Created                pod/svclb-traefik-16c4a04c-jbtk2                  Created container lb-tcp-443
14m         Normal    Started                pod/svclb-traefik-16c4a04c-lttrm                  Started container lb-tcp-443
14m         Normal    Started                pod/svclb-traefik-16c4a04c-jbtk2                  Started container lb-tcp-443
14m         Normal    Started                pod/svclb-traefik-16c4a04c-lttrm                  Started container lb-tcp-80
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3] -> [172.18.0.3 172.18.0.4]
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
14m         Normal    Pulled                 pod/traefik-5d45fc8cc9-9nb4p                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 30.749s (30.749s including waiting). Image size: 49449055 bytes.
14m         Normal    Started                pod/traefik-5d45fc8cc9-9nb4p                      Started container traefik
14m         Normal    Created                pod/traefik-5d45fc8cc9-9nb4p                      Created container traefik
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
14m         Warning   Unhealthy              pod/traefik-5d45fc8cc9-9nb4p                      Readiness probe failed: HTTP probe failed with statuscode: 404
2m39s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-xgmck_8bb9d605-04ce-4feb-ac97-a4eb6ec6494f became leader
2m37s       Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-bpsbd-external-cert-manager-controller became leader
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

### DaemonSet svclb-traefik-16c4a04c
```bash
+ kubectl rollout status daemonset svclb-traefik-16c4a04c -n kube-system --timeout=30s
daemon set "svclb-traefik-16c4a04c" successfully rolled out
```


✅ Tests complete.
