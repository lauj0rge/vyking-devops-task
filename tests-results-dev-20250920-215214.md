# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 21:52:14 CEST
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
Kubernetes control plane is running at https://0.0.0.0:36067
CoreDNS is running at https://0.0.0.0:36067/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:36067/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 19m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 19m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   19m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   10m
backend-dev       Active   2m20s
cert-manager      Active   4m33s
default           Active   19m
frontend-dev      Active   2m20s
ingress-nginx     Active   2m8s
kube-node-lease   Active   19m
kube-public       Active   19m
kube-system       Active   19m
mysql-dev         Active   4m48s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS             RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running            0          8m55s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-d5fqd   1/1     Running            0          8m59s   10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-bdrb5                  1/1     Running            0          8m59s   10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-jcpgf    1/1     Running            0          8m55s   10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-nqmk4                       1/1     Running            0          8m59s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-rt6wk                  1/1     Running            0          8m59s   10.42.0.9    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-server-556b554c94-2jzbj                      1/1     Running            0          8m58s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
backend-dev     backend-backend-d875b6fbb-lz8tj                     0/1     ImagePullBackOff   0          2m8s    10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-qnn4p                       1/1     Running            0          4m25s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-c755x            1/1     Running            0          4m25s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-h58rv               1/1     Running            0          4m25s   10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
frontend-dev    frontend-frontend-7cd76559c8-d8tbc                  0/1     ImagePullBackOff   0          2m5s    10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-jswsw           1/1     Running            0          97s     10.42.0.12   k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-b8xtd                             1/1     Running            0          18m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-crd-9ds5b                      0/1     Completed          0          18m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-l5slk                          0/1     Completed          2          18m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-4pzrn             1/1     Running            0          18m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     metrics-server-5985cbc9d7-prg6c                     1/1     Running            0          18m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-j4vk6          1/1     Running            0          18m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-300abef9-g9l64                        2/2     Running            0          17m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-300abef9-jhtvw                        2/2     Running            0          17m     10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-300abef9-zb4h4                        2/2     Running            0          17m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     traefik-5d45fc8cc9-9tsj9                            1/1     Running            0          17m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.150.172   <none>                             8082/TCP                     9m      app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.203.253   <none>                             7000/TCP                     9m      app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.183.116   <none>                             5556/TCP,5557/TCP,5558/TCP   9m      app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.200.196   <none>                             6379/TCP                     9m      app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     9m      app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.135.126   <none>                             8081/TCP                     9m      app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.154.71    <none>                             8084/TCP                     9m      app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.59.206    <none>                             80/TCP,443/TCP               9m      app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.216.252   <none>                             8081/TCP                     2m9s    app=backend-backend
cert-manager    cert-manager                            ClusterIP      10.43.166.197   <none>                             9402/TCP                     4m29s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.157.65    <none>                             9402/TCP                     4m29s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.242.229   <none>                             443/TCP,9402/TCP             4m29s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      19m     <none>
frontend-dev    frontend-frontend                       ClusterIP      10.43.139.17    <none>                             8080/TCP                     2m7s    app=frontend-frontend
ingress-nginx   ingress-nginx-controller                ClusterIP      10.43.255.52    <none>                             80/TCP,443/TCP               98s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.225.128   <none>                             443/TCP                      98s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       19m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.157.83    <none>                             443/TCP                      18m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.195.122   <none>                             8080/TCP                     18m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.203.244   <none>                             8081/TCP                     18m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.224.220   172.18.0.2,172.18.0.3,172.18.0.4   80:31602/TCP,443:30889/TCP   17m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        2m8s
frontend-dev   frontend-frontend   <none>    frontend-dev.local   10.43.255.52                       80, 443   2m6s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           9m
argocd-dev      argocd-dex-server                  1/1     1            1           9m
argocd-dev      argocd-notifications-controller    1/1     1            1           9m
argocd-dev      argocd-redis                       1/1     1            1           9m
argocd-dev      argocd-repo-server                 1/1     1            1           9m
argocd-dev      argocd-server                      1/1     1            1           9m
backend-dev     backend-backend                    0/1     1            0           2m10s
cert-manager    cert-manager                       1/1     1            1           4m28s
cert-manager    cert-manager-cainjector            1/1     1            1           4m28s
cert-manager    cert-manager-webhook               1/1     1            1           4m28s
frontend-dev    frontend-frontend                  0/1     1            0           2m7s
ingress-nginx   ingress-nginx-controller           1/1     1            1           99s
kube-system     coredns                            1/1     1            1           19m
kube-system     local-path-provisioner             1/1     1            1           19m
kube-system     metrics-server                     1/1     1            1           19m
kube-system     sealed-secrets-controller          1/1     1            1           18m
kube-system     traefik                            1/1     1            1           17m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     9m1s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-300abef9   3         3         3       3            3           <none>          17m
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
kube-system   helm-install-traefik       Complete   1/1           91s        18m
kube-system   helm-install-traefik-crd   Complete   1/1           72s        18m
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
backend-dev    backend-backend     Deployment/backend-backend     cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m14s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m11s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    258m         8%       454Mi           5%          
k3d-vyking-dev-agent-1    642m         21%      445Mi           5%          
k3d-vyking-dev-server-0   291m         9%       1177Mi          14%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     22m          143Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-d5fqd   1m           28Mi            
argocd-dev      argocd-dex-server-796678d5bc-bdrb5                  0m           38Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-jcpgf    1m           28Mi            
argocd-dev      argocd-redis-7c7fb7fc74-nqmk4                       4m           3Mi             
argocd-dev      argocd-repo-server-d587f667c-rt6wk                  2m           44Mi            
argocd-dev      argocd-server-556b554c94-2jzbj                      2m           38Mi            
cert-manager    cert-manager-55c69bf5cf-qnn4p                       7m           29Mi            
cert-manager    cert-manager-cainjector-5765b5f544-c755x            4m           45Mi            
cert-manager    cert-manager-webhook-6b67444dc9-h58rv               3m           14Mi            
ingress-nginx   ingress-nginx-controller-599c5c76cc-jswsw           4m           47Mi            
kube-system     coredns-ccb96694c-b8xtd                             8m           24Mi            
kube-system     local-path-provisioner-5cf85fd84d-4pzrn             2m           15Mi            
kube-system     metrics-server-5985cbc9d7-prg6c                     22m          34Mi            
kube-system     sealed-secrets-controller-5655858cbc-j4vk6          2m           26Mi            
kube-system     svclb-traefik-300abef9-g9l64                        0m           0Mi             
kube-system     svclb-traefik-300abef9-jhtvw                        0m           0Mi             
kube-system     svclb-traefik-300abef9-zb4h4                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-9tsj9                            2m           45Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
argocd-dev      2m12s       Normal    ResourceUpdated                  application/frontend                                     Updated health status: Missing -> Progressing
argocd-dev      2m12s       Normal    ResourceUpdated                  application/frontend                                     Updated sync status: OutOfSync -> Synced
backend-dev     18s         Warning   Failed                           pod/backend-backend-d875b6fbb-lz8tj                      Error: ImagePullBackOff
backend-dev     6s          Normal    BackOff                          pod/backend-backend-d875b6fbb-lz8tj                      Back-off pulling image "vyking-backend:dev"
frontend-dev    43s         Normal    Pulling                          pod/frontend-frontend-7cd76559c8-d8tbc                   Pulling image "vyking-frontend:dev"
frontend-dev    43s         Warning   Failed                           pod/frontend-frontend-7cd76559c8-d8tbc                   Failed to pull image "vyking-frontend:dev": failed to pull and unpack image "docker.io/library/vyking-frontend:dev": failed to resolve reference "docker.io/library/vyking-frontend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
frontend-dev    43s         Warning   Failed                           pod/frontend-frontend-7cd76559c8-d8tbc                   Error: ErrImagePull
frontend-dev    13s         Normal    BackOff                          pod/frontend-frontend-7cd76559c8-d8tbc                   Back-off pulling image "vyking-frontend:dev"
frontend-dev    13s         Warning   Failed                           pod/frontend-frontend-7cd76559c8-d8tbc                   Error: ImagePullBackOff
ingress-nginx   2m8s        Normal    SuccessfulCreate                 job/ingress-nginx-admission-create                       Created pod: ingress-nginx-admission-create-zjqfr
ingress-nginx   2m8s        Normal    Scheduled                        pod/ingress-nginx-admission-create-zjqfr                 Successfully assigned ingress-nginx/ingress-nginx-admission-create-zjqfr to k3d-vyking-dev-agent-0
ingress-nginx   2m7s        Warning   FailedMount                      pod/ingress-nginx-admission-create-zjqfr                 MountVolume.SetUp failed for volume "kube-api-access-ctrkh" : failed to sync configmap cache: timed out waiting for the condition
ingress-nginx   2m5s        Normal    Pulling                          pod/ingress-nginx-admission-create-zjqfr                 Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
backend-dev     14s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     14s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
backend-dev     14s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
frontend-dev    12s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/frontend-frontend                invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
frontend-dev    12s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
frontend-dev    12s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
ingress-nginx   112s        Normal    Created                          pod/ingress-nginx-admission-create-zjqfr                 Created container create
ingress-nginx   112s        Normal    Pulled                           pod/ingress-nginx-admission-create-zjqfr                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 13.509s (13.509s including waiting). Image size: 23913475 bytes.
ingress-nginx   111s        Normal    Started                          pod/ingress-nginx-admission-create-zjqfr                 Started container create
ingress-nginx   107s        Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   105s        Normal    Scheduled                        pod/ingress-nginx-controller-599c5c76cc-jswsw            Successfully assigned ingress-nginx/ingress-nginx-controller-599c5c76cc-jswsw to k3d-vyking-dev-agent-0
ingress-nginx   105s        Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-599c5c76cc to 1
ingress-nginx   105s        Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-599c5c76cc           Created pod: ingress-nginx-controller-599c5c76cc-jswsw
ingress-nginx   104s        Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-jswsw            Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
ingress-nginx   57s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-jswsw            Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 47.475s (47.475s including waiting). Image size: 105401148 bytes.
ingress-nginx   56s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-jswsw            Started container controller
ingress-nginx   56s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-jswsw            Created container controller
ingress-nginx   54s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
ingress-nginx   53s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-jswsw            NGINX reload triggered due to a change in configuration
frontend-dev    53s         Normal    Sync                             ingress/frontend-frontend                                Scheduled for sync
ingress-nginx   40s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-2qfvs                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-2qfvs to k3d-vyking-dev-agent-1
ingress-nginx   40s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-2qfvs
ingress-nginx   38s         Normal    Pulling                          pod/ingress-nginx-admission-patch-2qfvs                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   20s         Normal    Created                          pod/ingress-nginx-admission-patch-2qfvs                  Created container patch
ingress-nginx   20s         Normal    Pulled                           pod/ingress-nginx-admission-patch-2qfvs                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 17.94s (17.94s including waiting). Image size: 23913475 bytes.
ingress-nginx   19s         Normal    Started                          pod/ingress-nginx-admission-patch-2qfvs                  Started container patch
ingress-nginx   16s         Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          9m6s    10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-applicationset-controller-78f49df558-d5fqd   1/1     Running   0          9m10s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dex-server-796678d5bc-bdrb5                  1/1     Running   0          9m10s   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
argocd-notifications-controller-6d84bf8458-jcpgf    1/1     Running   0          9m6s    10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
argocd-redis-7c7fb7fc74-nqmk4                       1/1     Running   0          9m10s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-repo-server-d587f667c-rt6wk                  1/1     Running   0          9m10s   10.42.0.9   k3d-vyking-dev-agent-0    <none>           <none>
argocd-server-556b554c94-2jzbj                      1/1     Running   0          9m9s    10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           9m10s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           9m10s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           9m10s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           9m10s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           9m10s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           9m10s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     9m11s   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.150.172   <none>        8082/TCP                     9m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.203.253   <none>        7000/TCP                     9m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.183.116   <none>        5556/TCP,5557/TCP,5558/TCP   9m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.200.196   <none>        6379/TCP                     9m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     9m13s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.135.126   <none>        8081/TCP                     9m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.154.71    <none>        8084/TCP                     9m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.59.206    <none>        80/TCP,443/TCP               9m13s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     9m16s
argocd-cmd-params-cm            41     9m16s
argocd-gpg-keys-cm              0      9m16s
argocd-notifications-cm         1      9m16s
argocd-rbac-cm                  4      9m16s
argocd-redis-health-configmap   2      9m16s
argocd-ssh-known-hosts-cm       1      9m16s
argocd-tls-certs-cm             0      9m16s
kube-root-ca.crt                1      10m
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      6m10s
argocd-notifications-secret    Opaque               0      9m17s
argocd-redis                   Opaque               1      9m22s
argocd-secret                  Opaque               3      9m17s
repo-vyking-git                Opaque               2      5m25s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      10m
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
3m54s       Normal    ResourceUpdated      application/mysql                                        Updated health status:  -> Healthy
3m54s       Normal    ResourceUpdated      application/mysql                                        Updated sync status:  -> Unknown
3m45s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
3m41s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
2m33s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
2m33s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
2m33s       Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to e793e08e644c4b080526f9adcc2b4d417d2451b5 succeeded
2m32s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
2m29s       Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
2m29s       Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
2m29s       Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
2m29s       Normal    OperationStarted     application/frontend                                     Initiated automated sync to 'e793e08e644c4b080526f9adcc2b4d417d2451b5'
2m29s       Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
2m29s       Normal    OperationStarted     application/backend                                      Initiated automated sync to 'e793e08e644c4b080526f9adcc2b4d417d2451b5'
2m24s       Normal    OperationCompleted   application/backend                                      Sync operation to e793e08e644c4b080526f9adcc2b4d417d2451b5 succeeded
2m24s       Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
2m24s       Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
2m22s       Normal    ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
2m22s       Normal    ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
2m22s       Normal    OperationCompleted   application/frontend                                     Sync operation to e793e08e644c4b080526f9adcc2b4d417d2451b5 succeeded
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     22m          143Mi           
argocd-applicationset-controller-78f49df558-d5fqd   1m           28Mi            
argocd-dex-server-796678d5bc-bdrb5                  1m           38Mi            
argocd-notifications-controller-6d84bf8458-jcpgf    1m           28Mi            
argocd-redis-7c7fb7fc74-nqmk4                       4m           3Mi             
argocd-repo-server-d587f667c-rt6wk                  2m           44Mi            
argocd-server-556b554c94-2jzbj                      2m           38Mi            
```


### Applications
```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Progressing
frontend               Synced        Progressing
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
default   6m15s
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
NAME                                 READY   STATUS             RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
frontend-frontend-7cd76559c8-d8tbc   0/1     ImagePullBackOff   0          2m28s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES                SELECTOR
frontend-frontend   0/1     1            0           2m29s   frontend     vyking-frontend:dev   app=frontend-frontend
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
frontend-frontend   ClusterIP   10.43.139.17   <none>        8080/TCP   2m32s   app=frontend-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                CLASS    HOSTS                ADDRESS        PORTS     AGE
frontend-frontend   <none>   frontend-dev.local   10.43.255.52   80, 443   2m31s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                             DATA   AGE
frontend-frontend-nginx-config   1      2m34s
kube-root-ca.crt                 1      2m47s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m41s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
frontend-frontend   Deployment/frontend-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m33s
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
2m47s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m47s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m47s       Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
2m47s       Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
2m47s       Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
2m45s       Normal    CertificateIssued              certificaterequest/frontend-cert-dev-1      Certificate fetched from issuer successfully
2m45s       Warning   BadConfig                      certificaterequest/frontend-cert-dev-1      Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
2m44s       Normal    Issuing                        certificate/frontend-cert-dev               The certificate has been successfully issued
2m37s       Normal    ScalingReplicaSet              deployment/frontend-frontend                Scaled up replica set frontend-frontend-7cd76559c8 to 1
2m36s       Normal    Scheduled                      pod/frontend-frontend-7cd76559c8-d8tbc      Successfully assigned frontend-dev/frontend-frontend-7cd76559c8-d8tbc to k3d-vyking-dev-server-0
2m36s       Normal    SuccessfulCreate               replicaset/frontend-frontend-7cd76559c8     Created pod: frontend-frontend-7cd76559c8-d8tbc
66s         Normal    Pulling                        pod/frontend-frontend-7cd76559c8-d8tbc      Pulling image "vyking-frontend:dev"
21s         Normal    BackOff                        pod/frontend-frontend-7cd76559c8-d8tbc      Back-off pulling image "vyking-frontend:dev"
36s         Warning   Failed                         pod/frontend-frontend-7cd76559c8-d8tbc      Error: ImagePullBackOff
66s         Warning   Failed                         pod/frontend-frontend-7cd76559c8-d8tbc      Error: ErrImagePull
66s         Warning   Failed                         pod/frontend-frontend-7cd76559c8-d8tbc      Failed to pull image "vyking-frontend:dev": failed to pull and unpack image "docker.io/library/vyking-frontend:dev": failed to resolve reference "docker.io/library/vyking-frontend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
20s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
35s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
35s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
76s         Normal    Sync                           ingress/frontend-frontend                   Scheduled for sync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
error: Metrics not available for pod frontend-dev/frontend-frontend-7cd76559c8-d8tbc, age: 2m37.458949292s

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
NAME                              READY   STATUS             RESTARTS   AGE     IP          NODE                     NOMINATED NODE   READINESS GATES
backend-backend-d875b6fbb-lz8tj   0/1     ImagePullBackOff   0          2m45s   10.42.1.9   k3d-vyking-dev-agent-1   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES               SELECTOR
backend-backend   0/1     1            0           2m47s   backend      vyking-backend:dev   app=backend-backend
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
backend-backend   ClusterIP   10.43.216.252   <none>        8081/TCP   2m50s   app=backend-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME              CLASS     HOSTS                ADDRESS                            PORTS   AGE
backend-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      2m49s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      3m4s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      2m59s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME              REFERENCE                    TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-backend   Deployment/backend-backend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          2m53s
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
3m3s        Normal    Unsealed                       sealedsecret/mysql-credentials-dev        SealedSecret unsealed successfully
2m56s       Normal    ScalingReplicaSet              deployment/backend-backend                Scaled up replica set backend-backend-d875b6fbb to 1
2m55s       Normal    Scheduled                      pod/backend-backend-d875b6fbb-lz8tj       Successfully assigned backend-dev/backend-backend-d875b6fbb-lz8tj to k3d-vyking-dev-agent-1
2m55s       Normal    SuccessfulCreate               replicaset/backend-backend-d875b6fbb      Created pod: backend-backend-d875b6fbb-lz8tj
87s         Normal    Pulling                        pod/backend-backend-d875b6fbb-lz8tj       Pulling image "vyking-backend:dev"
87s         Warning   Failed                         pod/backend-backend-d875b6fbb-lz8tj       Failed to pull image "vyking-backend:dev": failed to pull and unpack image "docker.io/library/vyking-backend:dev": failed to resolve reference "docker.io/library/vyking-backend:dev": pull access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
87s         Warning   Failed                         pod/backend-backend-d875b6fbb-lz8tj       Error: ErrImagePull
46s         Normal    BackOff                        pod/backend-backend-d875b6fbb-lz8tj       Back-off pulling image "vyking-backend:dev"
58s         Warning   Failed                         pod/backend-backend-d875b6fbb-lz8tj       Error: ImagePullBackOff
39s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
54s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
54s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
error: Metrics not available for pod backend-dev/backend-backend-d875b6fbb-lz8tj, age: 2m57.944586312s

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
kube-root-ca.crt   1      5m52s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   4      4m41s
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
4m44s       Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
NAME                                       READY   STATUS    RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
cert-manager-55c69bf5cf-qnn4p              1/1     Running   0          5m38s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager-cainjector-5765b5f544-c755x   1/1     Running   0          5m38s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-webhook-6b67444dc9-h58rv      1/1     Running   0          5m38s   10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           5m40s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           5m40s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           5m40s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.166.197   <none>        9402/TCP           5m44s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.157.65    <none>        9402/TCP           5m44s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.242.229   <none>        443/TCP,9402/TCP   5m44s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      5m50s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      4m36s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      5m49s
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
5m42s       Warning   FailedMount         pod/cert-manager-webhook-6b67444dc9-h58rv       MountVolume.SetUp failed for volume "kube-api-access-fpc5q" : failed to sync configmap cache: timed out waiting for the condition
5m40s       Normal    Pulling             pod/cert-manager-cainjector-5765b5f544-c755x    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
5m40s       Normal    Pulling             pod/cert-manager-55c69bf5cf-qnn4p               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
5m38s       Normal    Pulling             pod/cert-manager-webhook-6b67444dc9-h58rv       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
5m          Normal    Pulled              pod/cert-manager-cainjector-5765b5f544-c755x    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 40.02s (40.02s including waiting). Image size: 15426355 bytes.
4m59s       Normal    Created             pod/cert-manager-cainjector-5765b5f544-c755x    Created container cert-manager-cainjector
4m55s       Normal    Started             pod/cert-manager-cainjector-5765b5f544-c755x    Started container cert-manager-cainjector
4m46s       Normal    Pulled              pod/cert-manager-webhook-6b67444dc9-h58rv       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 52.177s (52.177s including waiting). Image size: 18192443 bytes.
4m45s       Normal    Created             pod/cert-manager-webhook-6b67444dc9-h58rv       Created container cert-manager-webhook
4m43s       Normal    Pulled              pod/cert-manager-55c69bf5cf-qnn4p               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 56.953s (56.953s including waiting). Image size: 21189387 bytes.
4m43s       Normal    Created             pod/cert-manager-55c69bf5cf-qnn4p               Created container cert-manager-controller
4m43s       Normal    Started             pod/cert-manager-webhook-6b67444dc9-h58rv       Started container cert-manager-webhook
4m40s       Normal    Started             pod/cert-manager-55c69bf5cf-qnn4p               Started container cert-manager-controller
4m28s       Normal    SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-dbv9d
4m28s       Normal    Scheduled           pod/cert-manager-startupapicheck-dbv9d          Successfully assigned cert-manager/cert-manager-startupapicheck-dbv9d to k3d-vyking-dev-agent-1
4m25s       Normal    Pulling             pod/cert-manager-startupapicheck-dbv9d          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
4m14s       Normal    Pulled              pod/cert-manager-startupapicheck-dbv9d          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 11.249s (11.249s including waiting). Image size: 14095526 bytes.
4m14s       Normal    Created             pod/cert-manager-startupapicheck-dbv9d          Created container cert-manager-startupapicheck
4m13s       Normal    Started             pod/cert-manager-startupapicheck-dbv9d          Started container cert-manager-startupapicheck
4m7s        Normal    Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-qnn4p              3m           23Mi            
cert-manager-cainjector-5765b5f544-c755x   4m           32Mi            
cert-manager-webhook-6b67444dc9-h58rv      2m           13Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-j4vk6   1/1     Running   0          20m   10.42.1.2   k3d-vyking-dev-agent-1   <none>           <none>
```

### Sealed Secrets deployment
```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           20m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.26.0   name=sealed-secrets-controller
```

### Sealed Secrets service
```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.195.122   <none>        8080/TCP   20m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
18m         Normal    SuccessfulCreate       daemonset/svclb-traefik-300abef9                  Created pod: svclb-traefik-300abef9-g9l64
18m         Normal    Scheduled              pod/svclb-traefik-300abef9-jhtvw                  Successfully assigned kube-system/svclb-traefik-300abef9-jhtvw to k3d-vyking-dev-agent-0
18m         Normal    SuccessfulCreate       daemonset/svclb-traefik-300abef9                  Created pod: svclb-traefik-300abef9-jhtvw
18m         Normal    Scheduled              pod/svclb-traefik-300abef9-g9l64                  Successfully assigned kube-system/svclb-traefik-300abef9-g9l64 to k3d-vyking-dev-server-0
18m         Normal    SuccessfulCreate       daemonset/svclb-traefik-300abef9                  Created pod: svclb-traefik-300abef9-zb4h4
18m         Normal    Scheduled              pod/svclb-traefik-300abef9-zb4h4                  Successfully assigned kube-system/svclb-traefik-300abef9-zb4h4 to k3d-vyking-dev-agent-1
18m         Normal    Pulling                pod/svclb-traefik-300abef9-g9l64                  Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Pulling                pod/svclb-traefik-300abef9-zb4h4                  Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Pulling                pod/svclb-traefik-300abef9-jhtvw                  Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Pulling                pod/traefik-5d45fc8cc9-9tsj9                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
18m         Normal    Completed              job/helm-install-traefik                          Job completed
18m         Normal    Pulled                 pod/svclb-traefik-300abef9-g9l64                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 9.707s (9.707s including waiting). Image size: 4990278 bytes.
18m         Normal    Created                pod/svclb-traefik-300abef9-g9l64                  Created container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-300abef9-g9l64                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Started                pod/svclb-traefik-300abef9-g9l64                  Started container lb-tcp-80
18m         Normal    Created                pod/svclb-traefik-300abef9-g9l64                  Created container lb-tcp-443
18m         Normal    Created                pod/svclb-traefik-300abef9-jhtvw                  Created container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-300abef9-jhtvw                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 11.604s (11.604s including waiting). Image size: 4990278 bytes.
18m         Normal    Started                pod/svclb-traefik-300abef9-g9l64                  Started container lb-tcp-443
18m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.2]
18m         Normal    Created                pod/svclb-traefik-300abef9-jhtvw                  Created container lb-tcp-443
18m         Normal    Pulled                 pod/svclb-traefik-300abef9-jhtvw                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Started                pod/svclb-traefik-300abef9-jhtvw                  Started container lb-tcp-80
18m         Normal    Created                pod/svclb-traefik-300abef9-zb4h4                  Created container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-300abef9-zb4h4                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 14.905s (14.905s including waiting). Image size: 4990278 bytes.
18m         Normal    Started                pod/svclb-traefik-300abef9-jhtvw                  Started container lb-tcp-443
18m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2] -> [172.18.0.2 172.18.0.4]
18m         Normal    Created                pod/svclb-traefik-300abef9-zb4h4                  Created container lb-tcp-443
18m         Normal    Pulled                 pod/svclb-traefik-300abef9-zb4h4                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Started                pod/svclb-traefik-300abef9-zb4h4                  Started container lb-tcp-80
18m         Normal    Started                pod/svclb-traefik-300abef9-zb4h4                  Started container lb-tcp-443
18m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
18m         Normal    Pulled                 pod/traefik-5d45fc8cc9-9tsj9                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 41.538s (41.538s including waiting). Image size: 49449055 bytes.
18m         Normal    Created                pod/traefik-5d45fc8cc9-9tsj9                      Created container traefik
18m         Normal    Started                pod/traefik-5d45fc8cc9-9tsj9                      Started container traefik
18m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
10m         Warning   Unhealthy              pod/coredns-ccb96694c-b8xtd                       Readiness probe failed: Get "http://10.42.2.3:8181/ready": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
10m         Warning   Unhealthy              pod/coredns-ccb96694c-b8xtd                       Liveness probe failed: Get "http://10.42.2.3:8080/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
4m50s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-c755x_f6d0a2de-f758-4654-bf26-126489874f41 became leader
4m42s       Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-qnn4p-external-cert-manager-controller became leader
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

### DaemonSet svclb-traefik-300abef9
```bash
+ kubectl rollout status daemonset svclb-traefik-300abef9 -n kube-system --timeout=30s
daemon set "svclb-traefik-300abef9" successfully rolled out
```


✅ Tests complete.
