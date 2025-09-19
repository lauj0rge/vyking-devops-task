# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-19 21:51:12 CEST
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
Kubernetes control plane is running at https://0.0.0.0:41245
CoreDNS is running at https://0.0.0.0:41245/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:41245/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 19m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 19m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   20m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   10m
backend-dev       Active   2m35s
cert-manager      Active   4m11s
default           Active   20m
frontend-dev      Active   2m35s
ingress-nginx     Active   2m28s
kube-node-lease   Active   20m
kube-public       Active   20m
kube-system       Active   20m
mysql-dev         Active   4m25s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS      RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running     0          8m9s    10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-679r4   1/1     Running     0          8m12s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-qv7s7                  1/1     Running     0          8m12s   10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-5tftw    1/1     Running     0          8m9s    10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-cmkr7                       1/1     Running     0          8m12s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-5w8z8                  1/1     Running     0          8m12s   10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-server-556b554c94-nln6q                      1/1     Running     0          8m12s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
backend-dev     backend-backend-66c96df8b-9rj4q                     1/1     Running     0          2m18s   10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
backend-dev     backend-backend-66c96df8b-kgsvt                     1/1     Running     0          2m18s   10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-jzfd4                       1/1     Running     0          4m      10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-hjj6k            1/1     Running     0          4m      10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-k2q5r               1/1     Running     0          4m      10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
frontend-dev    frontend-frontend-597d68f8cf-jrz92                  1/1     Running     0          2m16s   10.42.2.12   k3d-vyking-dev-server-0   <none>           <none>
ingress-nginx   ingress-nginx-controller-b4b575f8-7824d             1/1     Running     0          104s    10.42.2.13   k3d-vyking-dev-server-0   <none>           <none>
kube-system     coredns-ccb96694c-w552h                             1/1     Running     0          19m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     helm-install-traefik-8bp89                          0/1     Completed   1          19m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-crd-d7bpc                      0/1     Completed   0          19m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-2blrh             1/1     Running     0          19m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     metrics-server-5985cbc9d7-hsgtx                     1/1     Running     0          19m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-9xzgr          1/1     Running     0          19m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-5d2bd1f3-4s6hk                        2/2     Running     0          17m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-5d2bd1f3-k8fvv                        2/2     Running     0          17m     10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-5d2bd1f3-qhsgs                        2/2     Running     0          17m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     traefik-5d45fc8cc9-w6xl2                            1/1     Running     0          17m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.23.78     <none>                             8082/TCP                     8m15s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.144.31    <none>                             7000/TCP                     8m15s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.58.182    <none>                             5556/TCP,5557/TCP,5558/TCP   8m15s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.209.222   <none>                             6379/TCP                     8m15s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     8m15s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.156.205   <none>                             8081/TCP                     8m15s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.85.105    <none>                             8084/TCP                     8m15s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.217.184   <none>                             80/TCP,443/TCP               8m15s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.231.3     <none>                             8081/TCP                     2m20s   app=backend-backend
cert-manager    cert-manager                            ClusterIP      10.43.211.209   <none>                             9402/TCP                     4m5s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.14.233    <none>                             9402/TCP                     4m5s    app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.193.48    <none>                             443/TCP,9402/TCP             4m5s    app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      20m     <none>
frontend-dev    frontend-frontend                       ClusterIP      10.43.174.103   <none>                             8080/TCP                     2m19s   app=frontend-frontend
ingress-nginx   ingress-nginx-controller                NodePort       10.43.140.62    <none>                             80:31100/TCP,443:30118/TCP   105s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.224.21    <none>                             443/TCP                      105s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       19m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.153.135   <none>                             443/TCP                      19m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.252.105   <none>                             8080/TCP                     19m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.171.153   <none>                             8081/TCP                     19m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.192.148   172.18.0.2,172.18.0.3,172.18.0.4   80:30496/TCP,443:30857/TCP   17m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        2m19s
frontend-dev   frontend-frontend   <none>    frontend-dev.local   10.43.140.62                       80, 443   2m16s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           8m14s
argocd-dev      argocd-dex-server                  1/1     1            1           8m14s
argocd-dev      argocd-notifications-controller    1/1     1            1           8m14s
argocd-dev      argocd-redis                       1/1     1            1           8m14s
argocd-dev      argocd-repo-server                 1/1     1            1           8m14s
argocd-dev      argocd-server                      1/1     1            1           8m14s
backend-dev     backend-backend                    2/2     2            2           2m19s
cert-manager    cert-manager                       1/1     1            1           4m3s
cert-manager    cert-manager-cainjector            1/1     1            1           4m4s
cert-manager    cert-manager-webhook               1/1     1            1           4m4s
frontend-dev    frontend-frontend                  1/1     1            1           2m18s
ingress-nginx   ingress-nginx-controller           1/1     1            1           105s
kube-system     coredns                            1/1     1            1           19m
kube-system     local-path-provisioner             1/1     1            1           19m
kube-system     metrics-server                     1/1     1            1           19m
kube-system     sealed-secrets-controller          1/1     1            1           19m
kube-system     traefik                            1/1     1            1           17m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     8m14s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-5d2bd1f3   3         3         3       3            3           <none>          17m
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
kube-system   helm-install-traefik       Complete   1/1           115s       19m
kube-system   helm-install-traefik-crd   Complete   1/1           108s       19m
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
backend-dev    backend-backend     Deployment/backend-backend     cpu: 2%/70%, memory: 32%/70%   1         5         2          2m22s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 3%/80%    1         3         1          2m20s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    318m         10%      569Mi           7%          
k3d-vyking-dev-agent-1    959m         31%      412Mi           5%          
k3d-vyking-dev-server-0   442m         14%      1111Mi          13%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     24m          178Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-679r4   3m           24Mi            
argocd-dev      argocd-dex-server-796678d5bc-qv7s7                  0m           35Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-5tftw    1m           31Mi            
argocd-dev      argocd-redis-7c7fb7fc74-cmkr7                       6m           3Mi             
argocd-dev      argocd-repo-server-d587f667c-5w8z8                  4m           42Mi            
argocd-dev      argocd-server-556b554c94-nln6q                      3m           28Mi            
backend-dev     backend-backend-66c96df8b-9rj4q                     1m           43Mi            
backend-dev     backend-backend-66c96df8b-kgsvt                     2m           39Mi            
cert-manager    cert-manager-55c69bf5cf-jzfd4                       6m           23Mi            
cert-manager    cert-manager-cainjector-5765b5f544-hjj6k            6m           22Mi            
cert-manager    cert-manager-webhook-6b67444dc9-k2q5r               5m           11Mi            
frontend-dev    frontend-frontend-597d68f8cf-jrz92                  1m           4Mi             
ingress-nginx   ingress-nginx-controller-b4b575f8-7824d             5m           48Mi            
kube-system     coredns-ccb96694c-w552h                             7m           15Mi            
kube-system     local-path-provisioner-5cf85fd84d-2blrh             1m           7Mi             
kube-system     metrics-server-5985cbc9d7-hsgtx                     22m          24Mi            
kube-system     sealed-secrets-controller-5655858cbc-9xzgr          7m           15Mi            
kube-system     svclb-traefik-5d2bd1f3-4s6hk                        0m           0Mi             
kube-system     svclb-traefik-5d2bd1f3-k8fvv                        0m           0Mi             
kube-system     svclb-traefik-5d2bd1f3-qhsgs                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-w6xl2                            3m           35Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
argocd-dev      2m15s       Normal    OperationCompleted               application/mysql-sealed-secrets                         Sync operation to e36678bea25638725992c1804dbf21b1e380996c succeeded
backend-dev     2m14s       Normal    Started                          pod/backend-backend-66c96df8b-9rj4q                      Started container backend
frontend-dev    2m14s       Normal    Pulled                           pod/frontend-frontend-597d68f8cf-jrz92                   Container image "vyking-frontend:dev" already present on machine
frontend-dev    2m13s       Normal    Created                          pod/frontend-frontend-597d68f8cf-jrz92                   Created container frontend
frontend-dev    2m11s       Normal    Started                          pod/frontend-frontend-597d68f8cf-jrz92                   Started container frontend
backend-dev     2m6s        Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     2m6s        Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
backend-dev     2m6s        Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
frontend-dev    2m4s        Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/frontend-frontend                invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
frontend-dev    2m4s        Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
frontend-dev    2m4s        Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     2m1s        Normal    Created                          pod/backend-backend-66c96df8b-kgsvt                      Created container backend
backend-dev     2m          Normal    Started                          pod/backend-backend-66c96df8b-kgsvt                      Started container backend
ingress-nginx   115s        Normal    Pulled                           pod/ingress-nginx-admission-create-v7vk8                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 28.527s (28.527s including waiting). Image size: 28450888 bytes.
ingress-nginx   115s        Normal    Created                          pod/ingress-nginx-admission-create-v7vk8                 Created container create
ingress-nginx   115s        Normal    Started                          pod/ingress-nginx-admission-create-v7vk8                 Started container create
backend-dev     81s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
ingress-nginx   110s        Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
frontend-dev    109s        Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
ingress-nginx   108s        Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-b4b575f8 to 1
ingress-nginx   107s        Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-b4b575f8             Created pod: ingress-nginx-controller-b4b575f8-7824d
ingress-nginx   107s        Normal    Scheduled                        pod/ingress-nginx-controller-b4b575f8-7824d              Successfully assigned ingress-nginx/ingress-nginx-controller-b4b575f8-7824d to k3d-vyking-dev-server-0
ingress-nginx   106s        Warning   FailedMount                      pod/ingress-nginx-controller-b4b575f8-7824d              MountVolume.SetUp failed for volume "webhook-cert" : failed to sync secret cache: timed out waiting for the condition
ingress-nginx   105s        Normal    Pulling                          pod/ingress-nginx-controller-b4b575f8-7824d              Pulling image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef"
backend-dev     81s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
argocd-dev      90s         Normal    ResourceUpdated                  application/backend                                      Updated health status: Progressing -> Healthy
ingress-nginx   55s         Normal    Created                          pod/ingress-nginx-controller-b4b575f8-7824d              Created container controller
ingress-nginx   55s         Normal    Pulled                           pod/ingress-nginx-controller-b4b575f8-7824d              Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef" in 50.013s (50.013s including waiting). Image size: 115287729 bytes.
ingress-nginx   54s         Normal    Started                          pod/ingress-nginx-controller-b4b575f8-7824d              Started container controller
ingress-nginx   53s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
argocd-dev      52s         Normal    ResourceUpdated                  application/frontend                                     Updated health status: Progressing -> Healthy
ingress-nginx   52s         Normal    RELOAD                           pod/ingress-nginx-controller-b4b575f8-7824d              NGINX reload triggered due to a change in configuration
frontend-dev    52s         Normal    Sync                             ingress/frontend-frontend                                Scheduled for sync
ingress-nginx   31s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-x58rn
ingress-nginx   31s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-x58rn                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-x58rn to k3d-vyking-dev-agent-1
ingress-nginx   28s         Normal    Pulling                          pod/ingress-nginx-admission-patch-x58rn                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24"
ingress-nginx   16s         Normal    Pulled                           pod/ingress-nginx-admission-patch-x58rn                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 12.774s (12.774s including waiting). Image size: 28450888 bytes.
ingress-nginx   15s         Normal    Started                          pod/ingress-nginx-admission-patch-x58rn                  Started container patch
ingress-nginx   15s         Normal    Created                          pod/ingress-nginx-admission-patch-x58rn                  Created container patch
ingress-nginx   11s         Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          8m14s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-applicationset-controller-78f49df558-679r4   1/1     Running   0          8m17s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-dex-server-796678d5bc-qv7s7                  1/1     Running   0          8m17s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-notifications-controller-6d84bf8458-5tftw    1/1     Running   0          8m14s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-redis-7c7fb7fc74-cmkr7                       1/1     Running   0          8m17s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-5w8z8                  1/1     Running   0          8m17s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
argocd-server-556b554c94-nln6q                      1/1     Running   0          8m17s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           8m18s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           8m18s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           8m18s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           8m18s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           8m18s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           8m18s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-application-controller-metrics   ClusterIP   10.43.23.78     <none>        8082/TCP                     8m21s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.144.31    <none>        7000/TCP                     8m21s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.58.182    <none>        5556/TCP,5557/TCP,5558/TCP   8m21s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.209.222   <none>        6379/TCP                     8m21s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     8m21s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.156.205   <none>        8081/TCP                     8m21s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.85.105    <none>        8084/TCP                     8m21s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.217.184   <none>        80/TCP,443/TCP               8m21s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     8m25s
argocd-cmd-params-cm            41     8m25s
argocd-gpg-keys-cm              0      8m25s
argocd-notifications-cm         1      8m25s
argocd-rbac-cm                  4      8m25s
argocd-redis-health-configmap   2      8m25s
argocd-ssh-known-hosts-cm       1      8m25s
argocd-tls-certs-cm             0      8m25s
kube-root-ca.crt                1      10m
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      7m56s
argocd-notifications-secret    Opaque               0      8m26s
argocd-redis                   Opaque               1      8m35s
argocd-secret                  Opaque               3      8m26s
repo-vyking-git                Opaque               2      4m54s
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
3m52s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status:  -> Healthy
3m52s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status:  -> OutOfSync
2m33s       Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
2m33s       Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
2m33s       Normal    OperationStarted     application/backend                                      Initiated automated sync to 'e36678bea25638725992c1804dbf21b1e380996c'
2m33s       Normal    OperationStarted     application/frontend                                     Initiated automated sync to 'e36678bea25638725992c1804dbf21b1e380996c'
2m33s       Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
2m33s       Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
2m29s       Normal    OperationCompleted   application/backend                                      Sync operation to e36678bea25638725992c1804dbf21b1e380996c succeeded
2m29s       Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
2m28s       Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
2m26s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
2m26s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
2m25s       Normal    ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
2m25s       Normal    ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
2m25s       Normal    OperationCompleted   application/frontend                                     Sync operation to e36678bea25638725992c1804dbf21b1e380996c succeeded
2m24s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
2m24s       Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to e36678bea25638725992c1804dbf21b1e380996c succeeded
99s         Normal    ResourceUpdated      application/backend                                      Updated health status: Progressing -> Healthy
61s         Normal    ResourceUpdated      application/frontend                                     Updated health status: Progressing -> Healthy
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     24m          178Mi           
argocd-applicationset-controller-78f49df558-679r4   3m           24Mi            
argocd-dex-server-796678d5bc-qv7s7                  0m           35Mi            
argocd-notifications-controller-6d84bf8458-5tftw    1m           31Mi            
argocd-redis-7c7fb7fc74-cmkr7                       6m           3Mi             
argocd-repo-server-d587f667c-5w8z8                  4m           42Mi            
argocd-server-556b554c94-nln6q                      3m           28Mi            
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
default   7m58s
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
frontend-frontend-597d68f8cf-jrz92   1/1     Running   0          2m32s   10.42.2.12   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES                SELECTOR
frontend-frontend   1/1     1            1           2m34s   frontend     vyking-frontend:dev   app=frontend-frontend
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
frontend-frontend   ClusterIP   10.43.174.103   <none>        8080/TCP   2m35s   app=frontend-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                CLASS    HOSTS                ADDRESS        PORTS     AGE
frontend-frontend   <none>   frontend-dev.local   10.43.140.62   80, 443   2m33s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                    DATA   AGE
frontend-nginx-config   1      2m36s
kube-root-ca.crt        1      2m53s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m45s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                       MINPODS   MAXPODS   REPLICAS   AGE
frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 3%/80%   1         3         1          2m35s
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
2m48s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m48s       Normal    cert-manager.io                certificaterequest/frontend-cert-dev-1      Certificate request has been approved by cert-manager.io
2m48s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m48s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m48s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m48s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m46s       Warning   BadConfig                      certificaterequest/frontend-cert-dev-1      Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
2m46s       Normal    CertificateIssued              certificaterequest/frontend-cert-dev-1      Certificate fetched from issuer successfully
2m46s       Normal    Issuing                        certificate/frontend-cert-dev               The certificate has been successfully issued
2m37s       Normal    ScalingReplicaSet              deployment/frontend-frontend                Scaled up replica set frontend-frontend-597d68f8cf to 1
2m36s       Normal    Scheduled                      pod/frontend-frontend-597d68f8cf-jrz92      Successfully assigned frontend-dev/frontend-frontend-597d68f8cf-jrz92 to k3d-vyking-dev-server-0
2m36s       Normal    SuccessfulCreate               replicaset/frontend-frontend-597d68f8cf     Created pod: frontend-frontend-597d68f8cf-jrz92
2m30s       Normal    Pulled                         pod/frontend-frontend-597d68f8cf-jrz92      Container image "vyking-frontend:dev" already present on machine
2m29s       Normal    Created                        pod/frontend-frontend-597d68f8cf-jrz92      Created container frontend
2m27s       Normal    Started                        pod/frontend-frontend-597d68f8cf-jrz92      Started container frontend
2m20s       Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m20s       Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
2m20s       Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m5s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
68s         Normal    Sync                           ingress/frontend-frontend                   Scheduled for sync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
NAME                                 CPU(cores)   MEMORY(bytes)   
frontend-frontend-597d68f8cf-jrz92   1m           4Mi             
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
NAME                              READY   STATUS    RESTARTS   AGE     IP          NODE                     NOMINATED NODE   READINESS GATES
backend-backend-66c96df8b-9rj4q   1/1     Running   0          2m40s   10.42.0.8   k3d-vyking-dev-agent-0   <none>           <none>
backend-backend-66c96df8b-kgsvt   1/1     Running   0          2m40s   10.42.1.9   k3d-vyking-dev-agent-1   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES               SELECTOR
backend-backend   2/2     2            2           2m40s   backend      vyking-backend:dev   app=backend-backend
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
NAME              TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)    AGE     SELECTOR
backend-backend   ClusterIP   10.43.231.3   <none>        8081/TCP   2m42s   app=backend-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME              CLASS     HOSTS                ADDRESS                            PORTS   AGE
backend-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      2m42s
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
mysql-credentials-dev   Opaque   5      2m39s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME              REFERENCE                    TARGETS                        MINPODS   MAXPODS   REPLICAS   AGE
backend-backend   Deployment/backend-backend   cpu: 1%/70%, memory: 32%/70%   1         5         2          2m43s
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
2m44s       Normal    ScalingReplicaSet              deployment/backend-backend                Scaled up replica set backend-backend-66c96df8b to 2
2m44s       Normal    Scheduled                      pod/backend-backend-66c96df8b-kgsvt       Successfully assigned backend-dev/backend-backend-66c96df8b-kgsvt to k3d-vyking-dev-agent-1
2m44s       Normal    Scheduled                      pod/backend-backend-66c96df8b-9rj4q       Successfully assigned backend-dev/backend-backend-66c96df8b-9rj4q to k3d-vyking-dev-agent-0
2m44s       Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-9rj4q
2m44s       Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-kgsvt
2m25s       Normal    Pulled                         pod/backend-backend-66c96df8b-kgsvt       Container image "vyking-backend:dev" already present on machine
2m40s       Warning   Failed                         pod/backend-backend-66c96df8b-kgsvt       Error: secret "mysql-credentials-dev" not found
2m39s       Normal    Unsealed                       sealedsecret/mysql-credentials-dev        SealedSecret unsealed successfully
2m38s       Normal    Pulled                         pod/backend-backend-66c96df8b-9rj4q       Container image "vyking-backend:dev" already present on machine
2m37s       Normal    Created                        pod/backend-backend-66c96df8b-9rj4q       Created container backend
2m36s       Normal    Started                        pod/backend-backend-66c96df8b-9rj4q       Started container backend
2m28s       Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m28s       Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
2m28s       Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m23s       Normal    Created                        pod/backend-backend-66c96df8b-kgsvt       Created container backend
2m22s       Normal    Started                        pod/backend-backend-66c96df8b-kgsvt       Started container backend
103s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
103s        Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
NAME                              CPU(cores)   MEMORY(bytes)   
backend-backend-66c96df8b-9rj4q   2m           43Mi            
backend-backend-66c96df8b-kgsvt   1m           39Mi            
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
kube-root-ca.crt   1      4m55s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   6      4m4s
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
4m5s        Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
cert-manager-55c69bf5cf-jzfd4              1/1     Running   0          4m33s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-cainjector-5765b5f544-hjj6k   1/1     Running   0          4m33s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
cert-manager-webhook-6b67444dc9-k2q5r      1/1     Running   0          4m33s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           4m35s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           4m36s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           4m37s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.211.209   <none>        9402/TCP           4m38s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.14.233    <none>        9402/TCP           4m38s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.193.48    <none>        443/TCP,9402/TCP   4m38s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      4m45s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      4m4s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      4m44s
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
4m35s       Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-k2q5r       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-k2q5r to k3d-vyking-dev-agent-1
4m31s       Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-k2q5r       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
4m31s       Normal   Pulling             pod/cert-manager-55c69bf5cf-jzfd4               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
4m31s       Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-hjj6k    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
4m7s        Normal   Created             pod/cert-manager-webhook-6b67444dc9-k2q5r       Created container cert-manager-webhook
4m7s        Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-k2q5r       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 24.279s (24.279s including waiting). Image size: 18192443 bytes.
4m6s        Normal   Started             pod/cert-manager-webhook-6b67444dc9-k2q5r       Started container cert-manager-webhook
4m4s        Normal   Created             pod/cert-manager-cainjector-5765b5f544-hjj6k    Created container cert-manager-cainjector
4m4s        Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-hjj6k    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 26.66s (26.66s including waiting). Image size: 15426355 bytes.
4m3s        Normal   Started             pod/cert-manager-cainjector-5765b5f544-hjj6k    Started container cert-manager-cainjector
3m59s       Normal   Pulled              pod/cert-manager-55c69bf5cf-jzfd4               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 31.956s (31.956s including waiting). Image size: 21189387 bytes.
3m59s       Normal   Created             pod/cert-manager-55c69bf5cf-jzfd4               Created container cert-manager-controller
3m58s       Normal   Started             pod/cert-manager-55c69bf5cf-jzfd4               Started container cert-manager-controller
3m48s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-d5lpr
3m48s       Normal   Scheduled           pod/cert-manager-startupapicheck-d5lpr          Successfully assigned cert-manager/cert-manager-startupapicheck-d5lpr to k3d-vyking-dev-server-0
3m46s       Normal   Pulling             pod/cert-manager-startupapicheck-d5lpr          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
3m35s       Normal   Created             pod/cert-manager-startupapicheck-d5lpr          Created container cert-manager-startupapicheck
3m35s       Normal   Pulled              pod/cert-manager-startupapicheck-d5lpr          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 10.986s (10.986s including waiting). Image size: 14095526 bytes.
3m34s       Normal   Started             pod/cert-manager-startupapicheck-d5lpr          Started container cert-manager-startupapicheck
3m29s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-jzfd4              4m           23Mi            
cert-manager-cainjector-5765b5f544-hjj6k   4m           22Mi            
cert-manager-webhook-6b67444dc9-k2q5r      1m           11Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-9xzgr   1/1     Running   0          20m   10.42.0.3   k3d-vyking-dev-agent-0   <none>           <none>
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
sealed-secrets-controller   ClusterIP   10.43.252.105   <none>        8080/TCP   20m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
18m         Normal    SuccessfulCreate       replicaset/traefik-5d45fc8cc9                     Created pod: traefik-5d45fc8cc9-w6xl2
18m         Normal    Scheduled              pod/traefik-5d45fc8cc9-w6xl2                      Successfully assigned kube-system/traefik-5d45fc8cc9-w6xl2 to k3d-vyking-dev-agent-1
18m         Normal    SuccessfulCreate       daemonset/svclb-traefik-5d2bd1f3                  Created pod: svclb-traefik-5d2bd1f3-qhsgs
18m         Normal    Scheduled              pod/svclb-traefik-5d2bd1f3-k8fvv                  Successfully assigned kube-system/svclb-traefik-5d2bd1f3-k8fvv to k3d-vyking-dev-agent-1
18m         Normal    SuccessfulCreate       daemonset/svclb-traefik-5d2bd1f3                  Created pod: svclb-traefik-5d2bd1f3-k8fvv
18m         Normal    SuccessfulCreate       daemonset/svclb-traefik-5d2bd1f3                  Created pod: svclb-traefik-5d2bd1f3-4s6hk
18m         Normal    Scheduled              pod/svclb-traefik-5d2bd1f3-qhsgs                  Successfully assigned kube-system/svclb-traefik-5d2bd1f3-qhsgs to k3d-vyking-dev-server-0
18m         Normal    Scheduled              pod/svclb-traefik-5d2bd1f3-4s6hk                  Successfully assigned kube-system/svclb-traefik-5d2bd1f3-4s6hk to k3d-vyking-dev-agent-0
18m         Normal    Pulling                pod/svclb-traefik-5d2bd1f3-qhsgs                  Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Pulling                pod/svclb-traefik-5d2bd1f3-k8fvv                  Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Pulling                pod/traefik-5d45fc8cc9-w6xl2                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
18m         Normal    Pulling                pod/svclb-traefik-5d2bd1f3-4s6hk                  Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Completed              job/helm-install-traefik                          Job completed
18m         Normal    Created                pod/svclb-traefik-5d2bd1f3-qhsgs                  Created container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-5d2bd1f3-qhsgs                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 10.542s (10.542s including waiting). Image size: 4990278 bytes.
18m         Normal    Started                pod/svclb-traefik-5d2bd1f3-qhsgs                  Started container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-5d2bd1f3-qhsgs                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Created                pod/svclb-traefik-5d2bd1f3-qhsgs                  Created container lb-tcp-443
18m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.2]
18m         Normal    Started                pod/svclb-traefik-5d2bd1f3-qhsgs                  Started container lb-tcp-443
18m         Normal    Created                pod/svclb-traefik-5d2bd1f3-k8fvv                  Created container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-5d2bd1f3-k8fvv                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 14.5s (14.5s including waiting). Image size: 4990278 bytes.
18m         Normal    Pulled                 pod/svclb-traefik-5d2bd1f3-4s6hk                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 16.952s (16.952s including waiting). Image size: 4990278 bytes.
18m         Normal    Created                pod/svclb-traefik-5d2bd1f3-k8fvv                  Created container lb-tcp-443
18m         Normal    Created                pod/svclb-traefik-5d2bd1f3-4s6hk                  Created container lb-tcp-80
18m         Normal    Started                pod/svclb-traefik-5d2bd1f3-k8fvv                  Started container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-5d2bd1f3-k8fvv                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Started                pod/svclb-traefik-5d2bd1f3-k8fvv                  Started container lb-tcp-443
18m         Normal    Created                pod/svclb-traefik-5d2bd1f3-4s6hk                  Created container lb-tcp-443
18m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2] -> [172.18.0.2 172.18.0.4]
18m         Normal    Pulled                 pod/svclb-traefik-5d2bd1f3-4s6hk                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Started                pod/svclb-traefik-5d2bd1f3-4s6hk                  Started container lb-tcp-80
18m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
18m         Normal    Started                pod/svclb-traefik-5d2bd1f3-4s6hk                  Started container lb-tcp-443
17m         Normal    Started                pod/traefik-5d45fc8cc9-w6xl2                      Started container traefik
17m         Normal    Created                pod/traefik-5d45fc8cc9-w6xl2                      Created container traefik
17m         Normal    Pulled                 pod/traefik-5d45fc8cc9-w6xl2                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 40.973s (40.973s including waiting). Image size: 49449055 bytes.
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
4m2s        Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-hjj6k_62a58195-3884-4b52-8564-ba57fcf748ed became leader
3m58s       Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-jzfd4-external-cert-manager-controller became leader
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

### DaemonSet svclb-traefik-5d2bd1f3
```bash
+ kubectl rollout status daemonset svclb-traefik-5d2bd1f3 -n kube-system --timeout=30s
daemon set "svclb-traefik-5d2bd1f3" successfully rolled out
```


✅ Tests complete.
