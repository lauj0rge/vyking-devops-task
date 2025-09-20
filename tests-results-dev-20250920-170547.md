# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 17:05:47 CEST
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
Kubernetes control plane is running at https://0.0.0.0:39277
CoreDNS is running at https://0.0.0.0:39277/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:39277/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 17m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 17m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   17m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   9m8s
backend-dev       Active   2m10s
cert-manager      Active   4m8s
default           Active   17m
frontend-dev      Active   2m10s
ingress-nginx     Active   2m4s
kube-node-lease   Active   17m
kube-public       Active   17m
kube-system       Active   17m
mysql-dev         Active   4m20s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                         READY   STATUS              RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                              1/1     Running             0          7m39s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-zcmfn            1/1     Running             0          7m39s   10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-6mkfs                           1/1     Running             0          7m40s   10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-pmjwh             1/1     Running             0          7m40s   10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-26hkc                                1/1     Running             0          7m40s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-4w4lh                           1/1     Running             0          7m40s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-server-556b554c94-dndjw                               1/1     Running             0          7m40s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
backend-dev     backend-backend-8449699c64-mb2h5                             0/1     ImagePullBackOff    0          114s    10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
backend-dev     frontend-backend-868c6988f6-rddmv                            0/1     ErrImagePull        0          111s    10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-55c69bf5cf-q9wsq                                1/1     Running             0          4m3s    10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-5t7mb                     1/1     Running             0          4m3s    10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-4sbjd                        1/1     Running             0          4m3s    10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
frontend-dev    backend-frontend-6b7787cff6-dfkxv                            0/1     ImagePullBackOff    0          114s    10.42.1.11   k3d-vyking-dev-agent-1    <none>           <none>
frontend-dev    frontend-frontend-6879df4c4b-vfwpj                           0/1     ImagePullBackOff    0          111s    10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-67ktn                    1/1     Running             0          96s     10.42.0.11   k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-b8lg5                                      1/1     Running             0          17m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     helm-install-traefik-crd-7rzgf                               0/1     Completed           0          17m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     helm-install-traefik-wf67z                                   0/1     Completed           2          17m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     helper-pod-create-pvc-58d0d178-8d64-4a13-81eb-677459af8be5   0/1     ContainerCreating   0          5s      <none>       k3d-vyking-dev-agent-1    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-wjvjg                      1/1     Running             0          17m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     metrics-server-5985cbc9d7-44tdt                              1/1     Running             0          17m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-4gzj8                   1/1     Running             0          17m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-9ff56fe4-hw8ph                                 2/2     Running             0          16m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-9ff56fe4-ml8pr                                 2/2     Running             0          16m     10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-9ff56fe4-zg8pr                                 2/2     Running             0          16m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     traefik-5d45fc8cc9-fq7dj                                     1/1     Running             0          16m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
mysql-dev       mysql-0                                                      0/1     Pending             0          6s      <none>       <none>                    <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.107.216   <none>                             8082/TCP                     7m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.235.193   <none>                             7000/TCP                     7m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.32.108    <none>                             5556/TCP,5557/TCP,5558/TCP   7m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.195.149   <none>                             6379/TCP                     7m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     7m43s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.142.193   <none>                             8081/TCP                     7m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.88.18     <none>                             8084/TCP                     7m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.203.220   <none>                             80/TCP,443/TCP               7m43s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.83.138    <none>                             8081/TCP                     116s    app=backend-backend
backend-dev     frontend-backend                        ClusterIP      10.43.77.170    <none>                             8081/TCP                     115s    app=frontend-backend
cert-manager    cert-manager                            ClusterIP      10.43.78.235    <none>                             9402/TCP                     4m6s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.84.37     <none>                             9402/TCP                     4m6s    app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.253.81    <none>                             443/TCP,9402/TCP             4m6s    app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      17m     <none>
frontend-dev    backend-frontend                        ClusterIP      10.43.19.170    <none>                             8080/TCP                     117s    app=backend-frontend
frontend-dev    frontend-frontend                       ClusterIP      10.43.100.58    <none>                             8080/TCP                     115s    app=frontend-frontend
ingress-nginx   ingress-nginx-controller                ClusterIP      10.43.29.68     <none>                             80/TCP,443/TCP               98s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.210.54    <none>                             443/TCP                      98s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       17m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.246.213   <none>                             443/TCP                      17m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.192.137   <none>                             8080/TCP                     17m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.17.90     <none>                             8081/TCP                     17m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.255.14    172.18.0.2,172.18.0.3,172.18.0.4   80:32633/TCP,443:32514/TCP   16m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
mysql-dev       mysql                                   ClusterIP      10.43.251.60    <none>                             3306/TCP                     8s      app.kubernetes.io/component=primary,app.kubernetes.io/instance=mysql,app.kubernetes.io/name=mysql,app.kubernetes.io/part-of=mysql
mysql-dev       mysql-headless                          ClusterIP      None            <none>                             3306/TCP                     8s      app.kubernetes.io/component=primary,app.kubernetes.io/instance=mysql,app.kubernetes.io/name=mysql
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        112s
backend-dev    frontend-backend    traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        110s
frontend-dev   backend-frontend    <none>    frontend-dev.local   10.43.29.68                        80, 443   112s
frontend-dev   frontend-frontend   <none>    frontend-dev.local   10.43.29.68                        80, 443   110s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           7m43s
argocd-dev      argocd-dex-server                  1/1     1            1           7m43s
argocd-dev      argocd-notifications-controller    1/1     1            1           7m43s
argocd-dev      argocd-redis                       1/1     1            1           7m43s
argocd-dev      argocd-repo-server                 1/1     1            1           7m43s
argocd-dev      argocd-server                      1/1     1            1           7m43s
backend-dev     backend-backend                    0/1     1            0           117s
backend-dev     frontend-backend                   0/1     1            0           114s
cert-manager    cert-manager                       1/1     1            1           4m6s
cert-manager    cert-manager-cainjector            1/1     1            1           4m6s
cert-manager    cert-manager-webhook               1/1     1            1           4m6s
frontend-dev    backend-frontend                   0/1     1            0           116s
frontend-dev    frontend-frontend                  0/1     1            0           114s
ingress-nginx   ingress-nginx-controller           1/1     1            1           99s
kube-system     coredns                            1/1     1            1           17m
kube-system     local-path-provisioner             1/1     1            1           17m
kube-system     metrics-server                     1/1     1            1           17m
kube-system     sealed-secrets-controller          1/1     1            1           17m
kube-system     traefik                            1/1     1            1           16m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     7m43s
mysql-dev    mysql                           0/1     10s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-9ff56fe4   3         3         3       3            3           <none>          16m
```

### PersistentVolumeClaims (all namespaces)
```bash
+ kubectl get pvc -A
NAMESPACE   NAME            STATUS    VOLUME   CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
mysql-dev   data-mysql-0    Pending                                      local-path     <unset>                 10s
mysql-dev   mysql-backups   Pending                                      local-path     <unset>                 12s
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
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  17m
```

### Jobs (all namespaces)
```bash
+ kubectl get jobs -A
NAMESPACE     NAME                       STATUS     COMPLETIONS   DURATION   AGE
kube-system   helm-install-traefik       Complete   1/1           87s        17m
kube-system   helm-install-traefik-crd   Complete   1/1           69s        17m
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
backend-dev    backend-backend     Deployment/backend-backend     cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m1s
backend-dev    frontend-backend    Deployment/frontend-backend    cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          119s
frontend-dev   backend-frontend    Deployment/backend-frontend    cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m1s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          119s
mysql-dev      mysql-hpa           StatefulSet/mysql              cpu: <unknown>/70%                          1         3         0          15s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    251m         8%       454Mi           5%          
k3d-vyking-dev-agent-1    586m         19%      387Mi           4%          
k3d-vyking-dev-server-0   641m         21%      1183Mi          14%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     157m         187Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-zcmfn   5m           31Mi            
argocd-dev      argocd-dex-server-796678d5bc-6mkfs                  1m           41Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-pmjwh    1m           23Mi            
argocd-dev      argocd-redis-7c7fb7fc74-26hkc                       4m           3Mi             
argocd-dev      argocd-repo-server-d587f667c-4w4lh                  225m         91Mi            
argocd-dev      argocd-server-556b554c94-dndjw                      3m           27Mi            
cert-manager    cert-manager-55c69bf5cf-q9wsq                       5m           26Mi            
cert-manager    cert-manager-cainjector-5765b5f544-5t7mb            4m           25Mi            
cert-manager    cert-manager-webhook-6b67444dc9-4sbjd               3m           16Mi            
ingress-nginx   ingress-nginx-controller-599c5c76cc-67ktn           6m           48Mi            
kube-system     coredns-ccb96694c-b8lg5                             10m          16Mi            
kube-system     local-path-provisioner-5cf85fd84d-wjvjg             1m           10Mi            
kube-system     metrics-server-5985cbc9d7-44tdt                     20m          29Mi            
kube-system     sealed-secrets-controller-5655858cbc-4gzj8          2m           22Mi            
kube-system     svclb-traefik-9ff56fe4-hw8ph                        0m           0Mi             
kube-system     svclb-traefik-9ff56fe4-ml8pr                        0m           0Mi             
kube-system     svclb-traefik-9ff56fe4-zg8pr                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-fq7dj                            3m           42Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
ingress-nginx   105s        Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-67ktn                    Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
frontend-dev    14s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/frontend-frontend                        invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
frontend-dev    14s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                        failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
frontend-dev    14s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                        failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     14s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-backend                         failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
backend-dev     14s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/frontend-backend                         invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     14s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-backend                         failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
ingress-nginx   59s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-67ktn                    Created container controller
ingress-nginx   60s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-67ktn                    Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 45.284s (45.284s including waiting). Image size: 105401148 bytes.
ingress-nginx   58s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-67ktn                    Started container controller
ingress-nginx   55s         Normal    CREATE                           configmap/ingress-nginx-controller                               ConfigMap ingress-nginx/ingress-nginx-controller
frontend-dev    53s         Normal    Sync                             ingress/frontend-frontend                                        Scheduled for sync
frontend-dev    53s         Normal    Sync                             ingress/backend-frontend                                         Scheduled for sync
ingress-nginx   53s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-67ktn                    NGINX reload triggered due to a change in configuration
ingress-nginx   41s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-6x2f9                          Successfully assigned ingress-nginx/ingress-nginx-admission-patch-6x2f9 to k3d-vyking-dev-agent-1
ingress-nginx   42s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                                Created pod: ingress-nginx-admission-patch-6x2f9
ingress-nginx   39s         Normal    Pulling                          pod/ingress-nginx-admission-patch-6x2f9                          Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   26s         Normal    Pulled                           pod/ingress-nginx-admission-patch-6x2f9                          Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 13.488s (13.488s including waiting). Image size: 23913475 bytes.
ingress-nginx   25s         Normal    Created                          pod/ingress-nginx-admission-patch-6x2f9                          Created container patch
ingress-nginx   24s         Normal    Started                          pod/ingress-nginx-admission-patch-6x2f9                          Started container patch
argocd-dev      23s         Normal    OperationStarted                 application/mysql                                                Initiated automated sync to '7ea6357d9f82b54ec18294de7ffce46bc123b4d7'
argocd-dev      23s         Normal    ResourceUpdated                  application/mysql                                                Updated sync status: Unknown -> OutOfSync
argocd-dev      23s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Healthy -> Missing
mysql-dev       20s         Normal    NoPods                           poddisruptionbudget/mysql                                        No matching pods found
ingress-nginx   20s         Normal    Completed                        job/ingress-nginx-admission-patch                                Job completed
mysql-dev       9s          Normal    WaitForFirstConsumer             persistentvolumeclaim/mysql-backups                              waiting for first consumer to be created before binding
argocd-dev      16s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Missing -> Progressing
mysql-dev       16s         Normal    SuccessfulCreate                 statefulset/mysql                                                create Pod mysql-0 in StatefulSet mysql successful
mysql-dev       16s         Normal    SuccessfulCreate                 statefulset/mysql                                                create Claim data-mysql-0 Pod mysql-0 in StatefulSet mysql success
mysql-dev       16s         Normal    WaitForFirstConsumer             persistentvolumeclaim/data-mysql-0                               waiting for first consumer to be created before binding
mysql-dev       9s          Normal    ExternalProvisioning             persistentvolumeclaim/data-mysql-0                               Waiting for a volume to be created either by the external provisioner 'rancher.io/local-path' or manually by the system administrator. If volume creation is delayed, please verify that the provisioner is running and correctly registered.
mysql-dev       15s         Normal    Provisioning                     persistentvolumeclaim/data-mysql-0                               External provisioner is provisioning volume for claim "mysql-dev/data-mysql-0"
kube-system     13s         Normal    Pulling                          pod/helper-pod-create-pvc-58d0d178-8d64-4a13-81eb-677459af8be5   Pulling image "rancher/mirrored-library-busybox:1.36.1"
kube-system     8s          Normal    Created                          pod/helper-pod-create-pvc-58d0d178-8d64-4a13-81eb-677459af8be5   Created container helper-pod
kube-system     8s          Normal    Pulled                           pod/helper-pod-create-pvc-58d0d178-8d64-4a13-81eb-677459af8be5   Successfully pulled image "rancher/mirrored-library-busybox:1.36.1" in 4.387s (4.387s including waiting). Image size: 2147340 bytes.
kube-system     7s          Normal    Started                          pod/helper-pod-create-pvc-58d0d178-8d64-4a13-81eb-677459af8be5   Started container helper-pod
mysql-dev       3s          Normal    ProvisioningSucceeded            persistentvolumeclaim/data-mysql-0                               Successfully provisioned volume pvc-58d0d178-8d64-4a13-81eb-677459af8be5
mysql-dev       1s          Normal    Scheduled                        pod/mysql-0                                                      Successfully assigned mysql-dev/mysql-0 to k3d-vyking-dev-agent-1
mysql-dev       2s          Warning   FailedGetResourceMetric          horizontalpodautoscaler/mysql-hpa                                failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
mysql-dev       1s          Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/mysql-hpa                                invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          7m52s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-applicationset-controller-78f49df558-zcmfn   1/1     Running   0          7m52s   10.42.1.9   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dex-server-796678d5bc-6mkfs                  1/1     Running   0          7m53s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-notifications-controller-6d84bf8458-pmjwh    1/1     Running   0          7m53s   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
argocd-redis-7c7fb7fc74-26hkc                       1/1     Running   0          7m53s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-4w4lh                  1/1     Running   0          7m53s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-dndjw                      1/1     Running   0          7m53s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           7m55s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           7m55s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           7m55s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           7m55s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           7m55s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           7m55s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     7m54s   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.107.216   <none>        8082/TCP                     7m58s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.235.193   <none>        7000/TCP                     7m58s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.32.108    <none>        5556/TCP,5557/TCP,5558/TCP   7m58s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.195.149   <none>        6379/TCP                     7m58s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     7m58s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.142.193   <none>        8081/TCP                     7m58s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.88.18     <none>        8084/TCP                     7m58s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.203.220   <none>        80/TCP,443/TCP               7m58s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     8m
argocd-cmd-params-cm            41     8m
argocd-gpg-keys-cm              0      8m
argocd-notifications-cm         1      8m
argocd-rbac-cm                  4      8m
argocd-redis-health-configmap   2      8m
argocd-ssh-known-hosts-cm       1      8m
argocd-tls-certs-cm             0      8m
kube-root-ca.crt                1      9m26s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      5m26s
argocd-notifications-secret    Opaque               0      8m1s
argocd-redis                   Opaque               1      8m7s
argocd-secret                  Opaque               3      8m1s
repo-vyking-git                Opaque               2      4m58s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      9m26s
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
2m32s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
2m32s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
2m31s       Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to 7ea6357d9f82b54ec18294de7ffce46bc123b4d7 succeeded
2m31s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
2m21s       Normal    OperationStarted     application/frontend                                     Initiated automated sync to '7ea6357d9f82b54ec18294de7ffce46bc123b4d7'
2m21s       Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
2m21s       Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
2m21s       Normal    OperationStarted     application/backend                                      Initiated automated sync to '7ea6357d9f82b54ec18294de7ffce46bc123b4d7'
2m21s       Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
2m21s       Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
2m11s       Normal    OperationCompleted   application/backend                                      Sync operation to 7ea6357d9f82b54ec18294de7ffce46bc123b4d7 succeeded
2m11s       Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
2m11s       Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
2m10s       Normal    ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
2m10s       Normal    OperationCompleted   application/frontend                                     Sync operation to 7ea6357d9f82b54ec18294de7ffce46bc123b4d7 succeeded
2m10s       Normal    ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
35s         Normal    OperationStarted     application/mysql                                        Initiated automated sync to '7ea6357d9f82b54ec18294de7ffce46bc123b4d7'
35s         Normal    ResourceUpdated      application/mysql                                        Updated sync status: Unknown -> OutOfSync
35s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Healthy -> Missing
28s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Missing -> Progressing
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     180m         207Mi           
argocd-applicationset-controller-78f49df558-zcmfn   3m           31Mi            
argocd-dex-server-796678d5bc-6mkfs                  0m           41Mi            
argocd-notifications-controller-6d84bf8458-pmjwh    3m           23Mi            
argocd-redis-7c7fb7fc74-26hkc                       5m           3Mi             
argocd-repo-server-d587f667c-4w4lh                  10m          91Mi            
argocd-server-556b554c94-dndjw                      50m          59Mi            
```


### Applications
```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Progressing
frontend               Synced        Progressing
mysql                  OutOfSync     Progressing
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
default   5m33s
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
NAME                                 READY   STATUS             RESTARTS   AGE     IP           NODE                     NOMINATED NODE   READINESS GATES
backend-frontend-6b7787cff6-dfkxv    0/1     ImagePullBackOff   0          2m24s   10.42.1.11   k3d-vyking-dev-agent-1   <none>           <none>
frontend-frontend-6879df4c4b-vfwpj   0/1     ImagePullBackOff   0          2m21s   10.42.0.10   k3d-vyking-dev-agent-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES                SELECTOR
backend-frontend    0/1     1            0           2m24s   frontend     vyking-frontend:dev   app=backend-frontend
frontend-frontend   0/1     1            0           2m22s   frontend     vyking-frontend:dev   app=frontend-frontend
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
NAME                TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE     SELECTOR
backend-frontend    ClusterIP   10.43.19.170   <none>        8080/TCP   2m29s   app=backend-frontend
frontend-frontend   ClusterIP   10.43.100.58   <none>        8080/TCP   2m27s   app=frontend-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                CLASS    HOSTS                ADDRESS       PORTS     AGE
backend-frontend    <none>   frontend-dev.local   10.43.29.68   80, 443   2m25s
frontend-frontend   <none>   frontend-dev.local   10.43.29.68   80, 443   2m23s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                             DATA   AGE
backend-frontend-nginx-config    1      2m32s
frontend-frontend-nginx-config   1      2m30s
kube-root-ca.crt                 1      2m46s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m38s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-frontend    Deployment/backend-frontend    cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m29s
frontend-frontend   Deployment/frontend-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m27s
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
2m29s       Normal    Scheduled                      pod/frontend-frontend-6879df4c4b-vfwpj      Successfully assigned frontend-dev/frontend-frontend-6879df4c4b-vfwpj to k3d-vyking-dev-agent-0
2m30s       Normal    SuccessfulCreate               replicaset/frontend-frontend-6879df4c4b     Created pod: frontend-frontend-6879df4c4b-vfwpj
2m29s       Warning   FailedMount                    pod/frontend-frontend-6879df4c4b-vfwpj      MountVolume.SetUp failed for volume "nginx-config" : failed to sync configmap cache: timed out waiting for the condition
51s         Warning   Failed                         pod/backend-frontend-6b7787cff6-dfkxv       Failed to pull image "vyking-frontend:dev": failed to pull and unpack image "docker.io/library/vyking-frontend:dev": failed to resolve reference "docker.io/library/vyking-frontend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
40s         Warning   Failed                         pod/backend-frontend-6b7787cff6-dfkxv       Error: ImagePullBackOff
51s         Warning   Failed                         pod/backend-frontend-6b7787cff6-dfkxv       Error: ErrImagePull
26s         Normal    BackOff                        pod/backend-frontend-6b7787cff6-dfkxv       Back-off pulling image "vyking-frontend:dev"
45s         Normal    Pulling                        pod/frontend-frontend-6879df4c4b-vfwpj      Pulling image "vyking-frontend:dev"
30s         Warning   Failed                         pod/frontend-frontend-6879df4c4b-vfwpj      Error: ImagePullBackOff
44s         Warning   Failed                         pod/frontend-frontend-6879df4c4b-vfwpj      Failed to pull image "vyking-frontend:dev": failed to pull and unpack image "docker.io/library/vyking-frontend:dev": failed to resolve reference "docker.io/library/vyking-frontend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
30s         Normal    BackOff                        pod/frontend-frontend-6879df4c4b-vfwpj      Back-off pulling image "vyking-frontend:dev"
44s         Warning   Failed                         pod/frontend-frontend-6879df4c4b-vfwpj      Error: ErrImagePull
30s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-frontend    invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
15s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-frontend    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
30s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-frontend    failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
29s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
14s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
29s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
83s         Normal    Sync                           ingress/backend-frontend                    Scheduled for sync
83s         Normal    Sync                           ingress/frontend-frontend                   Scheduled for sync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
error: Metrics not available for pod frontend-dev/backend-frontend-6b7787cff6-dfkxv, age: 2m35.344615108s

[command failed with exit code 1]
```


- **Service:** `backend-frontend`
- **Namespace:** `frontend-dev`
- **Port:** `8080`

**Port-forward command:**
```bash
kubectl port-forward svc/backend-frontend -n frontend-dev 8080:8080
```

## ⚙️ Backend (`backend-dev`)
### Pods
```bash
+ kubectl get pods -n backend-dev -o wide
NAME                                READY   STATUS             RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
backend-backend-8449699c64-mb2h5    0/1     ImagePullBackOff   0          2m38s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
frontend-backend-868c6988f6-rddmv   0/1     ImagePullBackOff   0          2m35s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES               SELECTOR
backend-backend    0/1     1            0           2m40s   backend      vyking-backend:dev   app=backend-backend
frontend-backend   0/1     1            0           2m37s   backend      vyking-backend:dev   app=frontend-backend
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
NAME               TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE     SELECTOR
backend-backend    ClusterIP   10.43.83.138   <none>        8081/TCP   2m42s   app=backend-backend
frontend-backend   ClusterIP   10.43.77.170   <none>        8081/TCP   2m41s   app=frontend-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME               CLASS     HOSTS                ADDRESS                            PORTS   AGE
backend-backend    traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      2m39s
frontend-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      2m37s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      3m
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      3m
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME               REFERENCE                     TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-backend    Deployment/backend-backend    cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m43s
frontend-backend   Deployment/frontend-backend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m41s
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
2m48s       Normal    ScalingReplicaSet              deployment/backend-backend                 Scaled up replica set backend-backend-8449699c64 to 1
2m45s       Normal    ScalingReplicaSet              deployment/frontend-backend                Scaled up replica set frontend-backend-868c6988f6 to 1
2m44s       Normal    SuccessfulCreate               replicaset/frontend-backend-868c6988f6     Created pod: frontend-backend-868c6988f6-rddmv
65s         Normal    Pulling                        pod/backend-backend-8449699c64-mb2h5       Pulling image "vyking-backend:dev"
2m43s       Normal    Scheduled                      pod/frontend-backend-868c6988f6-rddmv      Successfully assigned backend-dev/frontend-backend-868c6988f6-rddmv to k3d-vyking-dev-server-0
64s         Warning   Failed                         pod/backend-backend-8449699c64-mb2h5       Error: ErrImagePull
64s         Warning   Failed                         pod/backend-backend-8449699c64-mb2h5       Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
52s         Warning   Failed                         pod/backend-backend-8449699c64-mb2h5       Error: ImagePullBackOff
38s         Normal    BackOff                        pod/backend-backend-8449699c64-mb2h5       Back-off pulling image "vyking-backend:dev"
70s         Normal    Pulling                        pod/frontend-backend-868c6988f6-rddmv      Pulling image "vyking-backend:dev"
30s         Normal    BackOff                        pod/frontend-backend-868c6988f6-rddmv      Back-off pulling image "vyking-backend:dev"
69s         Warning   Failed                         pod/frontend-backend-868c6988f6-rddmv      Error: ErrImagePull
69s         Warning   Failed                         pod/frontend-backend-868c6988f6-rddmv      Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
44s         Warning   Failed                         pod/frontend-backend-868c6988f6-rddmv      Error: ImagePullBackOff
44s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend    invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
44s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend    failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
29s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
28s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
43s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
43s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
error: Metrics not available for pod backend-dev/backend-backend-8449699c64-mb2h5, age: 2m49.841364353s

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
NAME      READY   STATUS     RESTARTS   AGE   IP       NODE                     NOMINATED NODE   READINESS GATES
mysql-0   0/1     Init:0/1   0          65s   <none>   k3d-vyking-dev-agent-1   <none>           <none>
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
mysql   0/1     68s   mysql        docker.io/bitnami/mysql:9.4.0-debian-12-r1
```

### DaemonSets
```bash
+ kubectl get daemonset -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Services
```bash
+ kubectl get svc -n mysql-dev -o wide
NAME             TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
mysql            ClusterIP   10.43.251.60   <none>        3306/TCP   70s   app.kubernetes.io/component=primary,app.kubernetes.io/instance=mysql,app.kubernetes.io/name=mysql,app.kubernetes.io/part-of=mysql
mysql-headless   ClusterIP   None           <none>        3306/TCP   70s   app.kubernetes.io/component=primary,app.kubernetes.io/instance=mysql,app.kubernetes.io/name=mysql
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
kube-root-ca.crt   1      5m25s
mysql              1      73s
mysql-init         1      73s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql              Opaque   2      74s
mysql-dev-secret   Opaque   5      4m34s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n mysql-dev
NAME        REFERENCE           TARGETS              MINPODS   MAXPODS   REPLICAS   AGE
mysql-hpa   StatefulSet/mysql   cpu: <unknown>/70%   1         3         1          72s
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
NAME            STATUS    VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
data-mysql-0    Bound     pvc-58d0d178-8d64-4a13-81eb-677459af8be5   8Gi        RWO            local-path     <unset>                 73s
mysql-backups   Pending                                                                        local-path     <unset>                 75s
```

### Recent Events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"mysql-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
LAST SEEN   TYPE      REASON                         OBJECT                                MESSAGE
4m37s       Normal    Unsealed                       sealedsecret/mysql-dev-secret         SealedSecret unsealed successfully
78s         Normal    NoPods                         poddisruptionbudget/mysql             No matching pods found
7s          Normal    WaitForFirstConsumer           persistentvolumeclaim/mysql-backups   waiting for first consumer to be created before binding
74s         Normal    WaitForFirstConsumer           persistentvolumeclaim/data-mysql-0    waiting for first consumer to be created before binding
74s         Normal    SuccessfulCreate               statefulset/mysql                     create Pod mysql-0 in StatefulSet mysql successful
74s         Normal    SuccessfulCreate               statefulset/mysql                     create Claim data-mysql-0 Pod mysql-0 in StatefulSet mysql success
67s         Normal    ExternalProvisioning           persistentvolumeclaim/data-mysql-0    Waiting for a volume to be created either by the external provisioner 'rancher.io/local-path' or manually by the system administrator. If volume creation is delayed, please verify that the provisioner is running and correctly registered.
73s         Normal    Provisioning                   persistentvolumeclaim/data-mysql-0    External provisioner is provisioning volume for claim "mysql-dev/data-mysql-0"
61s         Normal    ProvisioningSucceeded          persistentvolumeclaim/data-mysql-0    Successfully provisioned volume pvc-58d0d178-8d64-4a13-81eb-677459af8be5
14s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/mysql-hpa     failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
59s         Normal    Scheduled                      pod/mysql-0                           Successfully assigned mysql-dev/mysql-0 to k3d-vyking-dev-agent-1
14s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/mysql-hpa     invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
57s         Normal    Pulling                        pod/mysql-0                           Pulling image "docker.io/bitnami/mysql:9.4.0-debian-12-r1"
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
NAME                                       READY   STATUS    RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
cert-manager-55c69bf5cf-q9wsq              1/1     Running   0          5m15s   10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-cainjector-5765b5f544-5t7mb   1/1     Running   0          5m15s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager-webhook-6b67444dc9-4sbjd      1/1     Running   0          5m15s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           5m17s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           5m17s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           5m17s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.78.235   <none>        9402/TCP           5m21s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.84.37    <none>        9402/TCP           5m21s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.253.81   <none>        443/TCP,9402/TCP   5m21s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      5m27s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      4m43s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      5m28s
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
5m24s       Warning   FailedMount         pod/cert-manager-55c69bf5cf-q9wsq               MountVolume.SetUp failed for volume "kube-api-access-gq5bx" : failed to sync configmap cache: timed out waiting for the condition
5m21s       Normal    Pulling             pod/cert-manager-webhook-6b67444dc9-4sbjd       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
5m21s       Normal    Pulling             pod/cert-manager-cainjector-5765b5f544-5t7mb    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
5m21s       Normal    Pulling             pod/cert-manager-55c69bf5cf-q9wsq               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
4m50s       Normal    Created             pod/cert-manager-webhook-6b67444dc9-4sbjd       Created container cert-manager-webhook
4m50s       Normal    Pulled              pod/cert-manager-webhook-6b67444dc9-4sbjd       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 30.643s (30.643s including waiting). Image size: 18192443 bytes.
4m49s       Normal    Started             pod/cert-manager-webhook-6b67444dc9-4sbjd       Started container cert-manager-webhook
4m42s       Normal    Pulled              pod/cert-manager-cainjector-5765b5f544-5t7mb    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 39.212s (39.212s including waiting). Image size: 15426355 bytes.
4m42s       Normal    Created             pod/cert-manager-cainjector-5765b5f544-5t7mb    Created container cert-manager-cainjector
4m39s       Normal    Started             pod/cert-manager-cainjector-5765b5f544-5t7mb    Started container cert-manager-cainjector
4m37s       Normal    Pulled              pod/cert-manager-55c69bf5cf-q9wsq               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 43.942s (43.942s including waiting). Image size: 21189387 bytes.
4m36s       Normal    Created             pod/cert-manager-55c69bf5cf-q9wsq               Created container cert-manager-controller
4m35s       Normal    Started             pod/cert-manager-55c69bf5cf-q9wsq               Started container cert-manager-controller
4m26s       Normal    SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-4l2qw
4m26s       Normal    Scheduled           pod/cert-manager-startupapicheck-4l2qw          Successfully assigned cert-manager/cert-manager-startupapicheck-4l2qw to k3d-vyking-dev-agent-0
4m24s       Normal    Pulling             pod/cert-manager-startupapicheck-4l2qw          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
4m10s       Normal    Created             pod/cert-manager-startupapicheck-4l2qw          Created container cert-manager-startupapicheck
4m10s       Normal    Pulled              pod/cert-manager-startupapicheck-4l2qw          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 14.373s (14.373s including waiting). Image size: 14095526 bytes.
4m9s        Normal    Started             pod/cert-manager-startupapicheck-4l2qw          Started container cert-manager-startupapicheck
4m2s        Normal    Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-q9wsq              4m           25Mi            
cert-manager-cainjector-5765b5f544-5t7mb   3m           24Mi            
cert-manager-webhook-6b67444dc9-4sbjd      1m           16Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-4gzj8   1/1     Running   0          18m   10.42.0.2   k3d-vyking-dev-agent-0   <none>           <none>
```

### Sealed Secrets deployment
```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           18m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.26.0   name=sealed-secrets-controller
```

### Sealed Secrets service
```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.192.137   <none>        8080/TCP   18m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
17m         Normal    Scheduled              pod/svclb-traefik-9ff56fe4-ml8pr                                 Successfully assigned kube-system/svclb-traefik-9ff56fe4-ml8pr to k3d-vyking-dev-agent-1
17m         Normal    Scheduled              pod/svclb-traefik-9ff56fe4-hw8ph                                 Successfully assigned kube-system/svclb-traefik-9ff56fe4-hw8ph to k3d-vyking-dev-server-0
17m         Normal    Scheduled              pod/svclb-traefik-9ff56fe4-zg8pr                                 Successfully assigned kube-system/svclb-traefik-9ff56fe4-zg8pr to k3d-vyking-dev-agent-0
17m         Normal    Pulling                pod/svclb-traefik-9ff56fe4-ml8pr                                 Pulling image "rancher/klipper-lb:v0.4.9"
17m         Normal    Pulling                pod/traefik-5d45fc8cc9-fq7dj                                     Pulling image "rancher/mirrored-library-traefik:2.11.18"
17m         Normal    Pulling                pod/svclb-traefik-9ff56fe4-hw8ph                                 Pulling image "rancher/klipper-lb:v0.4.9"
17m         Normal    Pulling                pod/svclb-traefik-9ff56fe4-zg8pr                                 Pulling image "rancher/klipper-lb:v0.4.9"
17m         Normal    Completed              job/helm-install-traefik                                         Job completed
17m         Normal    Pulled                 pod/svclb-traefik-9ff56fe4-ml8pr                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 8.797s (8.797s including waiting). Image size: 4990278 bytes.
17m         Normal    Created                pod/svclb-traefik-9ff56fe4-ml8pr                                 Created container lb-tcp-80
17m         Normal    Created                pod/svclb-traefik-9ff56fe4-hw8ph                                 Created container lb-tcp-80
17m         Normal    Pulled                 pod/svclb-traefik-9ff56fe4-ml8pr                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    Started                pod/svclb-traefik-9ff56fe4-ml8pr                                 Started container lb-tcp-80
17m         Normal    Pulled                 pod/svclb-traefik-9ff56fe4-hw8ph                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 9.315s (9.315s including waiting). Image size: 4990278 bytes.
17m         Normal    Started                pod/svclb-traefik-9ff56fe4-ml8pr                                 Started container lb-tcp-443
17m         Normal    Created                pod/svclb-traefik-9ff56fe4-ml8pr                                 Created container lb-tcp-443
17m         Normal    Pulled                 pod/svclb-traefik-9ff56fe4-hw8ph                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    Started                pod/svclb-traefik-9ff56fe4-hw8ph                                 Started container lb-tcp-80
17m         Normal    Created                pod/svclb-traefik-9ff56fe4-hw8ph                                 Created container lb-tcp-443
17m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [] -> [172.18.0.4]
17m         Normal    Created                pod/svclb-traefik-9ff56fe4-zg8pr                                 Created container lb-tcp-80
17m         Normal    Pulled                 pod/svclb-traefik-9ff56fe4-zg8pr                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 11.681s (11.681s including waiting). Image size: 4990278 bytes.
17m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.4] -> [172.18.0.2 172.18.0.4]
17m         Normal    Started                pod/svclb-traefik-9ff56fe4-hw8ph                                 Started container lb-tcp-443
17m         Normal    Pulled                 pod/svclb-traefik-9ff56fe4-zg8pr                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    Started                pod/svclb-traefik-9ff56fe4-zg8pr                                 Started container lb-tcp-80
17m         Normal    Created                pod/svclb-traefik-9ff56fe4-zg8pr                                 Created container lb-tcp-443
17m         Normal    Started                pod/svclb-traefik-9ff56fe4-zg8pr                                 Started container lb-tcp-443
17m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
17m         Normal    Pulled                 pod/traefik-5d45fc8cc9-fq7dj                                     Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 23.936s (23.936s including waiting). Image size: 49449055 bytes.
17m         Normal    Started                pod/traefik-5d45fc8cc9-fq7dj                                     Started container traefik
17m         Normal    Created                pod/traefik-5d45fc8cc9-fq7dj                                     Created container traefik
17m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
9m5s        Warning   Unhealthy              pod/metrics-server-5985cbc9d7-44tdt                              Readiness probe failed: Get "https://10.42.2.2:10250/readyz": context deadline exceeded
4m41s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election                    cert-manager-cainjector-5765b5f544-5t7mb_a33d5f77-ff50-4b66-a375-64ec9590c439 became leader
4m40s       Normal    LeaderElection         lease/cert-manager-controller                                    cert-manager-55c69bf5cf-q9wsq-external-cert-manager-controller became leader
93s         Normal    Pulling                pod/helper-pod-create-pvc-58d0d178-8d64-4a13-81eb-677459af8be5   Pulling image "rancher/mirrored-library-busybox:1.36.1"
88s         Normal    Created                pod/helper-pod-create-pvc-58d0d178-8d64-4a13-81eb-677459af8be5   Created container helper-pod
88s         Normal    Pulled                 pod/helper-pod-create-pvc-58d0d178-8d64-4a13-81eb-677459af8be5   Successfully pulled image "rancher/mirrored-library-busybox:1.36.1" in 4.387s (4.387s including waiting). Image size: 2147340 bytes.
87s         Normal    Started                pod/helper-pod-create-pvc-58d0d178-8d64-4a13-81eb-677459af8be5   Started container helper-pod
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
### Deployment backend-frontend
```bash
+ kubectl rollout status deploy backend-frontend -n frontend-dev --timeout=30s
Waiting for deployment "backend-frontend" rollout to finish: 0 of 1 updated replicas are available...
error: timed out waiting for the condition

[command failed with exit code 1]
```

### Deployment frontend-frontend
```bash
+ kubectl rollout status deploy frontend-frontend -n frontend-dev --timeout=30s
Waiting for deployment "frontend-frontend" rollout to finish: 0 of 1 updated replicas are available...
error: timed out waiting for the condition

[command failed with exit code 1]
```


### Namespace `backend-dev`
### Deployment backend-backend
```bash
+ kubectl rollout status deploy backend-backend -n backend-dev --timeout=30s
Waiting for deployment "backend-backend" rollout to finish: 0 of 1 updated replicas are available...
error: timed out waiting for the condition

[command failed with exit code 1]
```

### Deployment frontend-backend
```bash
+ kubectl rollout status deploy frontend-backend -n backend-dev --timeout=30s
Waiting for deployment "frontend-backend" rollout to finish: 0 of 1 updated replicas are available...
error: timed out waiting for the condition

[command failed with exit code 1]
```


### Namespace `mysql-dev`
### StatefulSet mysql
```bash
+ kubectl rollout status statefulset mysql -n mysql-dev --timeout=30s
Waiting for 1 pods to be ready...
statefulset rolling update complete 1 pods at revision mysql-75459d48db...
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

### DaemonSet svclb-traefik-9ff56fe4
```bash
+ kubectl rollout status daemonset svclb-traefik-9ff56fe4 -n kube-system --timeout=30s
daemon set "svclb-traefik-9ff56fe4" successfully rolled out
```


✅ Tests complete.
