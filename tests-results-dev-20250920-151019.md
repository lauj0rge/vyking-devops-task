# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 15:10:19 CEST
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
Kubernetes control plane is running at https://0.0.0.0:37275
CoreDNS is running at https://0.0.0.0:37275/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:37275/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 18m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 18m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   19m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   9m32s
backend-dev       Active   2m28s
cert-manager      Active   4m28s
default           Active   19m
frontend-dev      Active   2m28s
ingress-nginx     Active   2m15s
kube-node-lease   Active   19m
kube-public       Active   19m
kube-system       Active   19m
mysql-dev         Active   4m42s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS             RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running            0          8m3s    10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-j58lv   1/1     Running            0          8m1s    10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-n9gpr                  1/1     Running            0          8m4s    10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-98tsq    1/1     Running            0          8m4s    10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-ssvjn                       1/1     Running            0          8m4s    10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-rkmd8                  1/1     Running            0          8m4s    10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-server-556b554c94-56fc5                      1/1     Running            0          8m4s    10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
backend-dev     vyking-app-backend-54db67956d-cn656                 0/1     ImagePullBackOff   0          2m15s   10.42.1.11   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-vrfbx                       1/1     Running            0          4m21s   10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-7775v            1/1     Running            0          4m21s   10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-d47jq               1/1     Running            0          4m21s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
frontend-dev    vyking-app-frontend-7d558cb5f4-mpfbx                0/1     ImagePullBackOff   0          2m14s   10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-dmxd9           1/1     Running            0          106s    10.42.0.9    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-96vhz                             1/1     Running            0          18m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-crd-c8gmr                      0/1     Completed          0          18m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-w7ftf                          0/1     Completed          2          18m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-rq5ml             1/1     Running            0          18m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     metrics-server-5985cbc9d7-vhwkw                     1/1     Running            0          18m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-btxgs          1/1     Running            0          18m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-03957d7e-2gxsf                        2/2     Running            0          17m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-03957d7e-lp2mz                        2/2     Running            0          17m     10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-03957d7e-n2t5z                        2/2     Running            0          17m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     traefik-5d45fc8cc9-rghll                            1/1     Running            0          17m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.165.103   <none>                             8082/TCP                     8m7s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.215.226   <none>                             7000/TCP                     8m7s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.26.119    <none>                             5556/TCP,5557/TCP,5558/TCP   8m7s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.65.57     <none>                             6379/TCP                     8m7s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     8m7s    app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.133.52    <none>                             8081/TCP                     8m7s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.147.16    <none>                             8084/TCP                     8m7s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.200.133   <none>                             80/TCP,443/TCP               8m7s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     vyking-app-backend                      ClusterIP      10.43.57.170    <none>                             8081/TCP                     2m16s   app=vyking-app-backend
cert-manager    cert-manager                            ClusterIP      10.43.184.197   <none>                             9402/TCP                     4m24s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.220.212   <none>                             9402/TCP                     4m24s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.31.27     <none>                             443/TCP,9402/TCP             4m24s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      19m     <none>
frontend-dev    vyking-app-frontend                     ClusterIP      10.43.233.91    <none>                             8080/TCP                     2m16s   app=vyking-app-frontend
ingress-nginx   ingress-nginx-controller                ClusterIP      10.43.168.69    <none>                             80/TCP,443/TCP               107s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.79.175    <none>                             443/TCP                      107s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       18m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.206.158   <none>                             443/TCP                      18m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.48.43     <none>                             8080/TCP                     18m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.228.196   <none>                             8081/TCP                     18m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.205.197   172.18.0.2,172.18.0.3,172.18.0.4   80:31294/TCP,443:32466/TCP   17m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                  CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    vyking-app-backend    traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        2m14s
frontend-dev   vyking-app-frontend   <none>    frontend-dev.local   10.43.168.69                       80, 443   2m14s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           8m7s
argocd-dev      argocd-dex-server                  1/1     1            1           8m7s
argocd-dev      argocd-notifications-controller    1/1     1            1           8m7s
argocd-dev      argocd-redis                       1/1     1            1           8m7s
argocd-dev      argocd-repo-server                 1/1     1            1           8m7s
argocd-dev      argocd-server                      1/1     1            1           8m7s
backend-dev     vyking-app-backend                 0/1     1            0           2m17s
cert-manager    cert-manager                       1/1     1            1           4m23s
cert-manager    cert-manager-cainjector            1/1     1            1           4m23s
cert-manager    cert-manager-webhook               1/1     1            1           4m23s
frontend-dev    vyking-app-frontend                0/1     1            0           2m17s
ingress-nginx   ingress-nginx-controller           1/1     1            1           108s
kube-system     coredns                            1/1     1            1           19m
kube-system     local-path-provisioner             1/1     1            1           18m
kube-system     metrics-server                     1/1     1            1           18m
kube-system     sealed-secrets-controller          1/1     1            1           18m
kube-system     traefik                            1/1     1            1           17m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     8m7s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-03957d7e   3         3         3       3            3           <none>          17m
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
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  19m
```

### Jobs (all namespaces)
```bash
+ kubectl get jobs -A
NAMESPACE     NAME                       STATUS     COMPLETIONS   DURATION   AGE
kube-system   helm-install-traefik       Complete   1/1           110s       18m
kube-system   helm-install-traefik-crd   Complete   1/1           90s        18m
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
backend-dev    vyking-app-backend    Deployment/vyking-app-backend    cpu: <unknown>/70%, memory: <unknown>/70%   2         5         1          2m22s
frontend-dev   vyking-app-frontend   Deployment/vyking-app-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m22s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    332m         11%      593Mi           7%          
k3d-vyking-dev-agent-1    464m         15%      413Mi           5%          
k3d-vyking-dev-server-0   444m         14%      1124Mi          14%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     45m          147Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-j58lv   4m           32Mi            
argocd-dev      argocd-dex-server-796678d5bc-n9gpr                  0m           30Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-98tsq    2m           31Mi            
argocd-dev      argocd-redis-7c7fb7fc74-ssvjn                       4m           3Mi             
argocd-dev      argocd-repo-server-d587f667c-rkmd8                  11m          58Mi            
argocd-dev      argocd-server-556b554c94-56fc5                      4m           38Mi            
cert-manager    cert-manager-55c69bf5cf-vrfbx                       4m           22Mi            
cert-manager    cert-manager-cainjector-5765b5f544-7775v            2m           25Mi            
cert-manager    cert-manager-webhook-6b67444dc9-d47jq               3m           13Mi            
ingress-nginx   ingress-nginx-controller-599c5c76cc-dmxd9           4m           46Mi            
kube-system     coredns-ccb96694c-96vhz                             7m           18Mi            
kube-system     local-path-provisioner-5cf85fd84d-rq5ml             1m           15Mi            
kube-system     metrics-server-5985cbc9d7-vhwkw                     22m          32Mi            
kube-system     sealed-secrets-controller-5655858cbc-btxgs          4m           16Mi            
kube-system     svclb-traefik-03957d7e-2gxsf                        0m           0Mi             
kube-system     svclb-traefik-03957d7e-lp2mz                        0m           0Mi             
kube-system     svclb-traefik-03957d7e-n2t5z                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-rghll                            3m           45Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
argocd-dev      77s         Normal    OperationStarted                 application/vyking-app                                   Initiated automated sync to '30951497919611f9183b766dfbc54237a556bc4c'
argocd-dev      76s         Normal    OperationCompleted               application/vyking-app                                   Partial sync operation to 30951497919611f9183b766dfbc54237a556bc4c succeeded
backend-dev     76s         Normal    SuccessfulDelete                 replicaset/vyking-app-backend-54db67956d                 Deleted pod: vyking-app-backend-54db67956d-h45gf
argocd-dev      75s         Normal    ResourceUpdated                  application/vyking-app                                   Updated sync status: OutOfSync -> Synced
backend-dev     68s         Normal    SuccessfulCreate                 replicaset/vyking-app-backend-54db67956d                 Created pod: vyking-app-backend-54db67956d-f627x
argocd-dev      68s         Normal    ResourceUpdated                  application/vyking-app                                   Updated sync status: Synced -> OutOfSync
backend-dev     67s         Normal    Scheduled                        pod/vyking-app-backend-54db67956d-f627x                  Successfully assigned backend-dev/vyking-app-backend-54db67956d-f627x to k3d-vyking-dev-server-0
backend-dev     24s         Normal    Pulling                          pod/vyking-app-backend-54db67956d-f627x                  Pulling image "vyking-backend:dev"
backend-dev     37s         Warning   Failed                           pod/vyking-app-backend-54db67956d-f627x                  Error: ImagePullBackOff
backend-dev     22s         Warning   Failed                           pod/vyking-app-backend-54db67956d-f627x                  Error: ErrImagePull
backend-dev     22s         Warning   Failed                           pod/vyking-app-backend-54db67956d-f627x                  Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
backend-dev     37s         Normal    BackOff                          pod/vyking-app-backend-54db67956d-f627x                  Back-off pulling image "vyking-backend:dev"
ingress-nginx   62s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-dmxd9            Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 50.009s (50.009s including waiting). Image size: 105401148 bytes.
ingress-nginx   62s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-dmxd9            Created container controller
ingress-nginx   61s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-dmxd9            Started container controller
ingress-nginx   60s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
frontend-dev    59s         Normal    Sync                             ingress/vyking-app-frontend                              Scheduled for sync
ingress-nginx   58s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-dmxd9            NGINX reload triggered due to a change in configuration
backend-dev     23s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/vyking-app-backend               failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     23s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/vyking-app-backend               failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
backend-dev     23s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/vyking-app-backend               invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
ingress-nginx   38s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-wwzwd                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-wwzwd to k3d-vyking-dev-agent-1
ingress-nginx   39s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-wwzwd
ingress-nginx   37s         Normal    Pulling                          pod/ingress-nginx-admission-patch-wwzwd                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   24s         Normal    Pulled                           pod/ingress-nginx-admission-patch-wwzwd                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 13.578s (13.578s including waiting). Image size: 23913475 bytes.
ingress-nginx   23s         Normal    Started                          pod/ingress-nginx-admission-patch-wwzwd                  Started container patch
ingress-nginx   23s         Normal    Created                          pod/ingress-nginx-admission-patch-wwzwd                  Created container patch
argocd-dev      22s         Normal    OperationStarted                 application/vyking-app                                   Initiated automated sync to '30951497919611f9183b766dfbc54237a556bc4c'
argocd-dev      21s         Normal    OperationCompleted               application/vyking-app                                   Partial sync operation to 30951497919611f9183b766dfbc54237a556bc4c succeeded
backend-dev     20s         Normal    SuccessfulDelete                 replicaset/vyking-app-backend-54db67956d                 Deleted pod: vyking-app-backend-54db67956d-f627x
argocd-dev      20s         Normal    ResourceUpdated                  application/vyking-app                                   Updated sync status: OutOfSync -> Synced
ingress-nginx   17s         Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
backend-dev     7s          Normal    SuccessfulCreate                 replicaset/vyking-app-backend-54db67956d                 Created pod: vyking-app-backend-54db67956d-hg45z
argocd-dev      7s          Normal    ResourceUpdated                  application/vyking-app                                   Updated sync status: Synced -> OutOfSync
backend-dev     7s          Normal    Scheduled                        pod/vyking-app-backend-54db67956d-hg45z                  Successfully assigned backend-dev/vyking-app-backend-54db67956d-hg45z to k3d-vyking-dev-server-0
backend-dev     5s          Normal    Pulling                          pod/vyking-app-backend-54db67956d-hg45z                  Pulling image "vyking-backend:dev"
backend-dev     4s          Warning   Failed                           pod/vyking-app-backend-54db67956d-hg45z                  Error: ErrImagePull
backend-dev     4s          Warning   Failed                           pod/vyking-app-backend-54db67956d-hg45z                  Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
backend-dev     3s          Warning   Failed                           pod/vyking-app-backend-54db67956d-hg45z                  Error: ImagePullBackOff
backend-dev     3s          Normal    BackOff                          pod/vyking-app-backend-54db67956d-hg45z                  Back-off pulling image "vyking-backend:dev"
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          8m14s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-applicationset-controller-78f49df558-j58lv   1/1     Running   0          8m12s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-dex-server-796678d5bc-n9gpr                  1/1     Running   0          8m15s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-notifications-controller-6d84bf8458-98tsq    1/1     Running   0          8m15s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-redis-7c7fb7fc74-ssvjn                       1/1     Running   0          8m15s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-repo-server-d587f667c-rkmd8                  1/1     Running   0          8m15s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-56fc5                      1/1     Running   0          8m15s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           8m17s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           8m17s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           8m17s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           8m17s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           8m17s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           8m17s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     8m18s   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.165.103   <none>        8082/TCP                     8m20s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.215.226   <none>        7000/TCP                     8m20s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.26.119    <none>        5556/TCP,5557/TCP,5558/TCP   8m20s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.65.57     <none>        6379/TCP                     8m20s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     8m20s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.133.52    <none>        8081/TCP                     8m20s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.147.16    <none>        8084/TCP                     8m20s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.200.133   <none>        80/TCP,443/TCP               8m20s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     8m24s
argocd-cmd-params-cm            41     8m24s
argocd-gpg-keys-cm              0      8m24s
argocd-notifications-cm         1      8m24s
argocd-rbac-cm                  4      8m24s
argocd-redis-health-configmap   2      8m24s
argocd-ssh-known-hosts-cm       1      8m24s
argocd-tls-certs-cm             0      8m24s
kube-root-ca.crt                1      9m47s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      7m57s
argocd-notifications-secret    Opaque               0      8m25s
argocd-redis                   Opaque               1      8m29s
argocd-secret                  Opaque               3      8m25s
repo-vyking-git                Opaque               2      5m20s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      9m47s
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
2m16s       Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: Synced -> OutOfSync
2m14s       Normal    OperationCompleted   application/vyking-app                                   Partial sync operation to 30951497919611f9183b766dfbc54237a556bc4c succeeded
2m13s       Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: OutOfSync -> Synced
2m1s        Normal    OperationStarted     application/vyking-app                                   Initiated automated sync to '30951497919611f9183b766dfbc54237a556bc4c'
2m1s        Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: Synced -> OutOfSync
119s        Normal    OperationCompleted   application/vyking-app                                   Partial sync operation to 30951497919611f9183b766dfbc54237a556bc4c succeeded
118s        Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: OutOfSync -> Synced
106s        Normal    OperationStarted     application/vyking-app                                   Initiated automated sync to '30951497919611f9183b766dfbc54237a556bc4c'
106s        Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: Synced -> OutOfSync
103s        Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: OutOfSync -> Synced
103s        Normal    OperationCompleted   application/vyking-app                                   Partial sync operation to 30951497919611f9183b766dfbc54237a556bc4c succeeded
91s         Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: Synced -> OutOfSync
85s         Normal    OperationStarted     application/vyking-app                                   Initiated automated sync to '30951497919611f9183b766dfbc54237a556bc4c'
84s         Normal    OperationCompleted   application/vyking-app                                   Partial sync operation to 30951497919611f9183b766dfbc54237a556bc4c succeeded
83s         Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: OutOfSync -> Synced
76s         Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: Synced -> OutOfSync
30s         Normal    OperationStarted     application/vyking-app                                   Initiated automated sync to '30951497919611f9183b766dfbc54237a556bc4c'
29s         Normal    OperationCompleted   application/vyking-app                                   Partial sync operation to 30951497919611f9183b766dfbc54237a556bc4c succeeded
28s         Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: OutOfSync -> Synced
15s         Normal    ResourceUpdated      application/vyking-app                                   Updated sync status: Synced -> OutOfSync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     45m          147Mi           
argocd-applicationset-controller-78f49df558-j58lv   4m           32Mi            
argocd-dex-server-796678d5bc-n9gpr                  0m           30Mi            
argocd-notifications-controller-6d84bf8458-98tsq    2m           31Mi            
argocd-redis-7c7fb7fc74-ssvjn                       4m           3Mi             
argocd-repo-server-d587f667c-rkmd8                  11m          58Mi            
argocd-server-556b554c94-56fc5                      4m           38Mi            
```


### Applications
```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
mysql                  Unknown       Healthy
mysql-sealed-secrets   Synced        Healthy
vyking-app             OutOfSync     Progressing
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
default   7m57s
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
NAME                                   READY   STATUS             RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
vyking-app-frontend-7d558cb5f4-mpfbx   0/1     ImagePullBackOff   0          2m37s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                  READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES                SELECTOR
vyking-app-frontend   0/1     1            0           2m38s   frontend     vyking-frontend:dev   app=vyking-app-frontend
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
NAME                  TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE     SELECTOR
vyking-app-frontend   ClusterIP   10.43.233.91   <none>        8080/TCP   2m40s   app=vyking-app-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                  CLASS    HOSTS                ADDRESS        PORTS     AGE
vyking-app-frontend   <none>   frontend-dev.local   10.43.168.69   80, 443   2m38s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                               DATA   AGE
kube-root-ca.crt                   1      2m54s
vyking-app-frontend-nginx-config   1      2m42s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m48s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                  REFERENCE                        TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
vyking-app-frontend   Deployment/vyking-app-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m41s
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
2m52s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1        Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m52s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1        Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m52s       Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1        Not signing CertificateRequest until it is Approved
2m52s       Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1        Not signing CertificateRequest until it is Approved
2m52s       Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1        Not signing CertificateRequest until it is Approved
2m51s       Normal    Issuing                        certificate/frontend-cert-dev                 The certificate has been successfully issued
2m51s       Normal    CertificateIssued              certificaterequest/frontend-cert-dev-1        Certificate fetched from issuer successfully
2m51s       Warning   BadConfig                      certificaterequest/frontend-cert-dev-1        Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
2m44s       Normal    ScalingReplicaSet              deployment/vyking-app-frontend                Scaled up replica set vyking-app-frontend-7d558cb5f4 to 1
2m44s       Normal    SuccessfulCreate               replicaset/vyking-app-frontend-7d558cb5f4     Created pod: vyking-app-frontend-7d558cb5f4-mpfbx
2m42s       Normal    Scheduled                      pod/vyking-app-frontend-7d558cb5f4-mpfbx      Successfully assigned frontend-dev/vyking-app-frontend-7d558cb5f4-mpfbx to k3d-vyking-dev-server-0
71s         Normal    Pulling                        pod/vyking-app-frontend-7d558cb5f4-mpfbx      Pulling image "vyking-frontend:dev"
28s         Normal    BackOff                        pod/vyking-app-frontend-7d558cb5f4-mpfbx      Back-off pulling image "vyking-frontend:dev"
43s         Warning   Failed                         pod/vyking-app-frontend-7d558cb5f4-mpfbx      Error: ImagePullBackOff
70s         Warning   Failed                         pod/vyking-app-frontend-7d558cb5f4-mpfbx      Error: ErrImagePull
70s         Warning   Failed                         pod/vyking-app-frontend-7d558cb5f4-mpfbx      Failed to pull image "vyking-frontend:dev": failed to pull and unpack image "docker.io/library/vyking-frontend:dev": failed to resolve reference "docker.io/library/vyking-frontend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
26s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/vyking-app-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
42s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/vyking-app-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
42s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/vyking-app-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
79s         Normal    Sync                           ingress/vyking-app-frontend                   Scheduled for sync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
error: Metrics not available for pod frontend-dev/vyking-app-frontend-7d558cb5f4-mpfbx, age: 2m44.71230002s

[command failed with exit code 1]
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
NAME                                  READY   STATUS             RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
vyking-app-backend-54db67956d-cn656   0/1     ImagePullBackOff   0          2m48s   10.42.1.11   k3d-vyking-dev-agent-1    <none>           <none>
vyking-app-backend-54db67956d-hg45z   0/1     ErrImagePull       0          31s     10.42.2.15   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES               SELECTOR
vyking-app-backend   0/2     2            0           2m49s   backend      vyking-backend:dev   app=vyking-app-backend
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
NAME                 TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE     SELECTOR
vyking-app-backend   ClusterIP   10.43.57.170   <none>        8081/TCP   2m51s   app=vyking-app-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME                 CLASS     HOSTS                ADDRESS                            PORTS   AGE
vyking-app-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      2m49s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      3m5s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      3m3s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME                 REFERENCE                       TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
vyking-app-backend   Deployment/vyking-app-backend   cpu: <unknown>/70%, memory: <unknown>/70%   2         5         2          2m52s
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
109s        Normal    BackOff                        pod/vyking-app-backend-54db67956d-h45gf      Back-off pulling image "vyking-backend:dev"
106s        Normal    SuccessfulDelete               replicaset/vyking-app-backend-54db67956d     Deleted pod: vyking-app-backend-54db67956d-h45gf
98s         Normal    SuccessfulCreate               replicaset/vyking-app-backend-54db67956d     Created pod: vyking-app-backend-54db67956d-f627x
98s         Normal    Scheduled                      pod/vyking-app-backend-54db67956d-f627x      Successfully assigned backend-dev/vyking-app-backend-54db67956d-f627x to k3d-vyking-dev-server-0
54s         Normal    Pulling                        pod/vyking-app-backend-54db67956d-f627x      Pulling image "vyking-backend:dev"
52s         Warning   Failed                         pod/vyking-app-backend-54db67956d-f627x      Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
67s         Normal    BackOff                        pod/vyking-app-backend-54db67956d-f627x      Back-off pulling image "vyking-backend:dev"
52s         Warning   Failed                         pod/vyking-app-backend-54db67956d-f627x      Error: ErrImagePull
67s         Warning   Failed                         pod/vyking-app-backend-54db67956d-f627x      Error: ImagePullBackOff
7s          Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/vyking-app-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
7s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/vyking-app-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
7s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/vyking-app-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
50s         Normal    SuccessfulDelete               replicaset/vyking-app-backend-54db67956d     Deleted pod: vyking-app-backend-54db67956d-f627x
37s         Normal    Scheduled                      pod/vyking-app-backend-54db67956d-hg45z      Successfully assigned backend-dev/vyking-app-backend-54db67956d-hg45z to k3d-vyking-dev-server-0
37s         Normal    SuccessfulCreate               replicaset/vyking-app-backend-54db67956d     Created pod: vyking-app-backend-54db67956d-hg45z
23s         Normal    Pulling                        pod/vyking-app-backend-54db67956d-hg45z      Pulling image "vyking-backend:dev"
22s         Warning   Failed                         pod/vyking-app-backend-54db67956d-hg45z      Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
22s         Warning   Failed                         pod/vyking-app-backend-54db67956d-hg45z      Error: ErrImagePull
7s          Normal    BackOff                        pod/vyking-app-backend-54db67956d-hg45z      Back-off pulling image "vyking-backend:dev"
7s          Warning   Failed                         pod/vyking-app-backend-54db67956d-hg45z      Error: ImagePullBackOff
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
error: Metrics not available for pod backend-dev/vyking-app-backend-54db67956d-cn656, age: 2m56.332490921s

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
kube-root-ca.crt   1      5m29s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   5      4m33s
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
4m33s       Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
cert-manager-55c69bf5cf-vrfbx              1/1     Running   0          5m14s   10.42.1.9   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-cainjector-5765b5f544-7775v   1/1     Running   0          5m14s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
cert-manager-webhook-6b67444dc9-d47jq      1/1     Running   0          5m14s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           5m15s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           5m15s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           5m15s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.184.197   <none>        9402/TCP           5m18s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.220.212   <none>        9402/TCP           5m18s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.31.27     <none>        443/TCP,9402/TCP   5m18s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      5m25s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      4m26s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      5m24s
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
5m21s       Normal   ScalingReplicaSet   deployment/cert-manager-cainjector              Scaled up replica set cert-manager-cainjector-5765b5f544 to 1
5m16s       Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-d47jq       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
5m16s       Normal   Pulling             pod/cert-manager-55c69bf5cf-vrfbx               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
5m16s       Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-7775v    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
4m37s       Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-7775v    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 39.423s (39.423s including waiting). Image size: 15426355 bytes.
4m37s       Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-d47jq       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 39.611s (39.611s including waiting). Image size: 18192443 bytes.
4m36s       Normal   Created             pod/cert-manager-cainjector-5765b5f544-7775v    Created container cert-manager-cainjector
4m37s       Normal   Created             pod/cert-manager-webhook-6b67444dc9-d47jq       Created container cert-manager-webhook
4m33s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-7775v    Started container cert-manager-cainjector
4m31s       Normal   Started             pod/cert-manager-webhook-6b67444dc9-d47jq       Started container cert-manager-webhook
4m25s       Normal   Pulled              pod/cert-manager-55c69bf5cf-vrfbx               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 50.551s (50.551s including waiting). Image size: 21189387 bytes.
4m25s       Normal   Created             pod/cert-manager-55c69bf5cf-vrfbx               Created container cert-manager-controller
4m21s       Normal   Started             pod/cert-manager-55c69bf5cf-vrfbx               Started container cert-manager-controller
4m12s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-rkrbb
4m11s       Normal   Scheduled           pod/cert-manager-startupapicheck-rkrbb          Successfully assigned cert-manager/cert-manager-startupapicheck-rkrbb to k3d-vyking-dev-agent-1
4m9s        Normal   Pulling             pod/cert-manager-startupapicheck-rkrbb          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
3m58s       Normal   Created             pod/cert-manager-startupapicheck-rkrbb          Created container cert-manager-startupapicheck
3m58s       Normal   Pulled              pod/cert-manager-startupapicheck-rkrbb          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 10.708s (10.708s including waiting). Image size: 14095526 bytes.
3m57s       Normal   Started             pod/cert-manager-startupapicheck-rkrbb          Started container cert-manager-startupapicheck
3m51s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-vrfbx              5m           22Mi            
cert-manager-cainjector-5765b5f544-7775v   5m           25Mi            
cert-manager-webhook-6b67444dc9-d47jq      1m           13Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-btxgs   1/1     Running   0          19m   10.42.0.3   k3d-vyking-dev-agent-0   <none>           <none>
```

### Sealed Secrets deployment
```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           19m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.26.0   name=sealed-secrets-controller
```

### Sealed Secrets service
```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.48.43   <none>        8080/TCP   19m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
18m         Normal    Scheduled              pod/svclb-traefik-03957d7e-2gxsf                  Successfully assigned kube-system/svclb-traefik-03957d7e-2gxsf to k3d-vyking-dev-agent-0
18m         Normal    SuccessfulCreate       daemonset/svclb-traefik-03957d7e                  Created pod: svclb-traefik-03957d7e-2gxsf
18m         Normal    Scheduled              pod/svclb-traefik-03957d7e-n2t5z                  Successfully assigned kube-system/svclb-traefik-03957d7e-n2t5z to k3d-vyking-dev-agent-1
18m         Normal    SuccessfulCreate       daemonset/svclb-traefik-03957d7e                  Created pod: svclb-traefik-03957d7e-lp2mz
18m         Normal    Scheduled              pod/svclb-traefik-03957d7e-lp2mz                  Successfully assigned kube-system/svclb-traefik-03957d7e-lp2mz to k3d-vyking-dev-server-0
18m         Normal    SuccessfulCreate       daemonset/svclb-traefik-03957d7e                  Created pod: svclb-traefik-03957d7e-n2t5z
18m         Normal    Scheduled              pod/traefik-5d45fc8cc9-rghll                      Successfully assigned kube-system/traefik-5d45fc8cc9-rghll to k3d-vyking-dev-server-0
18m         Normal    Pulling                pod/svclb-traefik-03957d7e-n2t5z                  Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Pulling                pod/traefik-5d45fc8cc9-rghll                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
18m         Normal    Pulling                pod/svclb-traefik-03957d7e-2gxsf                  Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Pulling                pod/svclb-traefik-03957d7e-lp2mz                  Pulling image "rancher/klipper-lb:v0.4.9"
17m         Normal    Completed              job/helm-install-traefik                          Job completed
17m         Normal    Pulled                 pod/svclb-traefik-03957d7e-n2t5z                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 12.237s (12.237s including waiting). Image size: 4990278 bytes.
17m         Normal    Created                pod/svclb-traefik-03957d7e-n2t5z                  Created container lb-tcp-80
17m         Normal    Pulled                 pod/svclb-traefik-03957d7e-2gxsf                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 13.89s (13.89s including waiting). Image size: 4990278 bytes.
17m         Normal    Created                pod/svclb-traefik-03957d7e-2gxsf                  Created container lb-tcp-80
17m         Normal    Started                pod/svclb-traefik-03957d7e-n2t5z                  Started container lb-tcp-80
17m         Normal    Pulled                 pod/svclb-traefik-03957d7e-n2t5z                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    Created                pod/svclb-traefik-03957d7e-n2t5z                  Created container lb-tcp-443
17m         Normal    Pulled                 pod/svclb-traefik-03957d7e-2gxsf                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    Created                pod/svclb-traefik-03957d7e-2gxsf                  Created container lb-tcp-443
17m         Normal    Started                pod/svclb-traefik-03957d7e-2gxsf                  Started container lb-tcp-80
17m         Normal    Started                pod/svclb-traefik-03957d7e-n2t5z                  Started container lb-tcp-443
17m         Normal    Created                pod/svclb-traefik-03957d7e-lp2mz                  Created container lb-tcp-80
17m         Normal    Started                pod/svclb-traefik-03957d7e-2gxsf                  Started container lb-tcp-443
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.3]
17m         Normal    Pulled                 pod/svclb-traefik-03957d7e-lp2mz                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 15.585s (15.585s including waiting). Image size: 4990278 bytes.
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3] -> [172.18.0.3 172.18.0.4]
17m         Normal    Pulled                 pod/svclb-traefik-03957d7e-lp2mz                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    Started                pod/svclb-traefik-03957d7e-lp2mz                  Started container lb-tcp-80
17m         Normal    Created                pod/svclb-traefik-03957d7e-lp2mz                  Created container lb-tcp-443
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
17m         Normal    Started                pod/svclb-traefik-03957d7e-lp2mz                  Started container lb-tcp-443
17m         Normal    Pulled                 pod/traefik-5d45fc8cc9-rghll                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 42.808s (42.808s including waiting). Image size: 49449055 bytes.
17m         Normal    Created                pod/traefik-5d45fc8cc9-rghll                      Created container traefik
17m         Normal    Started                pod/traefik-5d45fc8cc9-rghll                      Started container traefik
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
8m54s       Warning   Unhealthy              pod/coredns-ccb96694c-96vhz                       Liveness probe failed: Get "http://10.42.2.2:8080/health": dial tcp 10.42.2.2:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
4m33s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-7775v_6f871599-6258-4971-ac9a-7d7f8192aa62 became leader
4m24s       Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-vrfbx-external-cert-manager-controller became leader
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
Waiting for deployment "vyking-app-frontend" rollout to finish: 0 of 1 updated replicas are available...
error: timed out waiting for the condition

[command failed with exit code 1]
```


### Namespace `backend-dev`
### Deployment vyking-app-backend
```bash
+ kubectl rollout status deploy vyking-app-backend -n backend-dev --timeout=30s
Waiting for deployment "vyking-app-backend" rollout to finish: 0 of 2 updated replicas are available...
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

### DaemonSet svclb-traefik-03957d7e
```bash
+ kubectl rollout status daemonset svclb-traefik-03957d7e -n kube-system --timeout=30s
daemon set "svclb-traefik-03957d7e" successfully rolled out
```


✅ Tests complete.
