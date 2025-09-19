# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-19 07:12:28 CEST
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
Kubernetes control plane is running at https://0.0.0.0:42137
CoreDNS is running at https://0.0.0.0:42137/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:42137/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

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
argocd-dev        Active   7m10s
backend-dev       Active   114s
cert-manager      Active   2m58s
default           Active   17m
frontend-dev      Active   114s
ingress-nginx     Active   108s
kube-node-lease   Active   17m
kube-public       Active   17m
kube-system       Active   17m
mysql-dev         Active   3m7s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS      RESTARTS       AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running     0              5m54s   10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-2xqp8   1/1     Running     0              5m55s   10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-8pxzz                  1/1     Running     3 (4m6s ago)   5m55s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-468ws    1/1     Running     0              5m55s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-dlqcf                       1/1     Running     0              5m55s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-pgzf7                  1/1     Running     0              5m54s   10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-server-556b554c94-sqmqd                      1/1     Running     0              5m55s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
backend-dev     backend-backend-66c96df8b-dkf29                     1/1     Running     0              104s    10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
backend-dev     backend-backend-66c96df8b-vhhw4                     1/1     Running     0              103s    10.42.2.10   k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-55c69bf5cf-gd72q                       1/1     Running     0              2m53s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-jfj9l            1/1     Running     0              2m53s   10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-gttbs               1/1     Running     0              2m53s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
frontend-dev    frontend-frontend-597d68f8cf-28c8b                  1/1     Running     0              100s    10.42.2.11   k3d-vyking-dev-server-0   <none>           <none>
ingress-nginx   ingress-nginx-controller-b4b575f8-ml9jk             1/1     Running     0              78s     10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     coredns-ccb96694c-gfbgp                             1/1     Running     0              17m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-crd-ffxf2                      0/1     Completed   0              17m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-jdjtd                          0/1     Completed   1              17m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-j7845             1/1     Running     0              17m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     metrics-server-5985cbc9d7-v7wzv                     1/1     Running     0              17m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-7c7s2          1/1     Running     0              17m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-96af4c72-dx87z                        2/2     Running     0              16m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-96af4c72-ntc4s                        2/2     Running     0              16m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-96af4c72-zzksr                        2/2     Running     0              16m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     traefik-5d45fc8cc9-n27kf                            1/1     Running     0              16m     10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.172.69    <none>                             8082/TCP                     5m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.173.178   <none>                             7000/TCP                     5m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.38.234    <none>                             5556/TCP,5557/TCP,5558/TCP   5m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.30.107    <none>                             6379/TCP                     5m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     5m57s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.146.197   <none>                             8081/TCP                     5m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.5.179     <none>                             8084/TCP                     5m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.191.27    <none>                             80/TCP,443/TCP               5m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.247.128   <none>                             8081/TCP                     104s    app=backend-backend
cert-manager    cert-manager                            ClusterIP      10.43.117.36    <none>                             9402/TCP                     2m55s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.23.126    <none>                             9402/TCP                     2m55s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.189.26    <none>                             443/TCP,9402/TCP             2m55s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      17m     <none>
frontend-dev    frontend-frontend                       ClusterIP      10.43.238.77    <none>                             8080/TCP                     102s    app=frontend-frontend
ingress-nginx   ingress-nginx-controller                NodePort       10.43.179.87    <none>                             80:30796/TCP,443:31685/TCP   78s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.85.84     <none>                             443/TCP                      78s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       17m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.63.245    <none>                             443/TCP                      17m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.212.191   <none>                             8080/TCP                     17m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.18.142    <none>                             8081/TCP                     17m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.41.220    172.18.0.2,172.18.0.3,172.18.0.4   80:32280/TCP,443:32394/TCP   16m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        104s
frontend-dev   frontend-frontend   <none>    frontend-dev.local   10.43.179.87                       80, 443   100s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           5m57s
argocd-dev      argocd-dex-server                  1/1     1            1           5m57s
argocd-dev      argocd-notifications-controller    1/1     1            1           5m57s
argocd-dev      argocd-redis                       1/1     1            1           5m57s
argocd-dev      argocd-repo-server                 1/1     1            1           5m57s
argocd-dev      argocd-server                      1/1     1            1           5m57s
backend-dev     backend-backend                    2/2     2            2           105s
cert-manager    cert-manager                       1/1     1            1           2m55s
cert-manager    cert-manager-cainjector            1/1     1            1           2m55s
cert-manager    cert-manager-webhook               1/1     1            1           2m55s
frontend-dev    frontend-frontend                  1/1     1            1           101s
ingress-nginx   ingress-nginx-controller           1/1     1            1           79s
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
argocd-dev   argocd-application-controller   1/1     5m56s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-96af4c72   3         3         3       3            3           <none>          16m
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
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  17m
```

### Jobs (all namespaces)
```bash
+ kubectl get jobs -A
NAMESPACE     NAME                       STATUS     COMPLETIONS   DURATION   AGE
kube-system   helm-install-traefik       Complete   1/1           83s        17m
kube-system   helm-install-traefik-crd   Complete   1/1           77s        17m
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
backend-dev    backend-backend     Deployment/backend-backend     cpu: 1%/70%, memory: 32%/70%   1         5         2          106s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 5%/80%    1         3         1          103s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    561m         18%      418Mi           5%          
k3d-vyking-dev-agent-1    268m         8%       503Mi           6%          
k3d-vyking-dev-server-0   437m         14%      1380Mi          17%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     34m          161Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-2xqp8   2m           38Mi            
argocd-dev      argocd-dex-server-796678d5bc-8pxzz                  5m           30Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-468ws    1m           21Mi            
argocd-dev      argocd-redis-7c7fb7fc74-dlqcf                       5m           3Mi             
argocd-dev      argocd-repo-server-d587f667c-pgzf7                  4m           93Mi            
argocd-dev      argocd-server-556b554c94-sqmqd                      2m           33Mi            
backend-dev     backend-backend-66c96df8b-dkf29                     1m           39Mi            
backend-dev     backend-backend-66c96df8b-vhhw4                     2m           38Mi            
cert-manager    cert-manager-55c69bf5cf-gd72q                       7m           24Mi            
cert-manager    cert-manager-cainjector-5765b5f544-jfj9l            6m           22Mi            
cert-manager    cert-manager-webhook-6b67444dc9-gttbs               2m           11Mi            
frontend-dev    frontend-frontend-597d68f8cf-28c8b                  1m           6Mi             
ingress-nginx   ingress-nginx-controller-b4b575f8-ml9jk             15m          49Mi            
kube-system     coredns-ccb96694c-gfbgp                             11m          14Mi            
kube-system     local-path-provisioner-5cf85fd84d-j7845             1m           8Mi             
kube-system     metrics-server-5985cbc9d7-v7wzv                     23m          26Mi            
kube-system     sealed-secrets-controller-5655858cbc-7c7s2          1m           21Mi            
kube-system     svclb-traefik-96af4c72-dx87z                        0m           0Mi             
kube-system     svclb-traefik-96af4c72-ntc4s                        0m           0Mi             
kube-system     svclb-traefik-96af4c72-zzksr                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-n27kf                            4m           40Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
backend-dev     76s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
backend-dev     76s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
argocd-dev      88s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
backend-dev     88s         Normal    Unsealed                         sealedsecret/mysql-credentials-dev                       SealedSecret unsealed successfully
argocd-dev      88s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
argocd-dev      87s         Normal    OperationCompleted               application/mysql-sealed-secrets                         Sync operation to 22f7e9fbc8529b9b39fc0dda1b532a1f2d9fec18 succeeded
ingress-nginx   87s         Normal    Pulled                           pod/ingress-nginx-admission-create-8gsm4                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 14.901s (14.901s including waiting). Image size: 28450888 bytes.
argocd-dev      87s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
ingress-nginx   87s         Normal    Created                          pod/ingress-nginx-admission-create-8gsm4                 Created container create
frontend-dev    87s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/frontend-frontend                invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
frontend-dev    87s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
frontend-dev    87s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
ingress-nginx   86s         Normal    Started                          pod/ingress-nginx-admission-create-8gsm4                 Started container create
backend-dev     85s         Normal    Created                          pod/backend-backend-66c96df8b-dkf29                      Created container backend
backend-dev     85s         Normal    Created                          pod/backend-backend-66c96df8b-vhhw4                      Created container backend
backend-dev     84s         Normal    Started                          pod/backend-backend-66c96df8b-vhhw4                      Started container backend
backend-dev     84s         Normal    Started                          pod/backend-backend-66c96df8b-dkf29                      Started container backend
ingress-nginx   82s         Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   81s         Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-b4b575f8 to 1
ingress-nginx   81s         Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-b4b575f8             Created pod: ingress-nginx-controller-b4b575f8-ml9jk
ingress-nginx   80s         Normal    Scheduled                        pod/ingress-nginx-controller-b4b575f8-ml9jk              Successfully assigned ingress-nginx/ingress-nginx-controller-b4b575f8-ml9jk to k3d-vyking-dev-agent-1
ingress-nginx   79s         Normal    Pulling                          pod/ingress-nginx-controller-b4b575f8-ml9jk              Pulling image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef"
frontend-dev    72s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
backend-dev     30s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
argocd-dev      54s         Normal    ResourceUpdated                  application/backend                                      Updated health status: Progressing -> Healthy
backend-dev     30s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
ingress-nginx   40s         Normal    Pulled                           pod/ingress-nginx-controller-b4b575f8-ml9jk              Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef" in 38.275s (38.275s including waiting). Image size: 115287729 bytes.
ingress-nginx   40s         Normal    Started                          pod/ingress-nginx-controller-b4b575f8-ml9jk              Started container controller
ingress-nginx   40s         Normal    Created                          pod/ingress-nginx-controller-b4b575f8-ml9jk              Created container controller
ingress-nginx   39s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
frontend-dev    38s         Normal    Sync                             ingress/frontend-frontend                                Scheduled for sync
ingress-nginx   37s         Normal    RELOAD                           pod/ingress-nginx-controller-b4b575f8-ml9jk              NGINX reload triggered due to a change in configuration
argocd-dev      37s         Normal    ResourceUpdated                  application/frontend                                     Updated health status: Progressing -> Healthy
ingress-nginx   27s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-zk5sw                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-zk5sw to k3d-vyking-dev-agent-0
ingress-nginx   27s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-zk5sw
ingress-nginx   26s         Normal    Pulling                          pod/ingress-nginx-admission-patch-zk5sw                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24"
ingress-nginx   13s         Normal    Pulled                           pod/ingress-nginx-admission-patch-zk5sw                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 13.049s (13.049s including waiting). Image size: 28450888 bytes.
ingress-nginx   13s         Normal    Created                          pod/ingress-nginx-admission-patch-zk5sw                  Created container patch
ingress-nginx   12s         Normal    Started                          pod/ingress-nginx-admission-patch-zk5sw                  Started container patch
ingress-nginx   8s          Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS        AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0               5m58s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
argocd-applicationset-controller-78f49df558-2xqp8   1/1     Running   0               5m59s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dex-server-796678d5bc-8pxzz                  1/1     Running   3 (4m10s ago)   5m59s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-notifications-controller-6d84bf8458-468ws    1/1     Running   0               5m59s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-redis-7c7fb7fc74-dlqcf                       1/1     Running   0               5m59s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-repo-server-d587f667c-pgzf7                  1/1     Running   0               5m58s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
argocd-server-556b554c94-sqmqd                      1/1     Running   0               5m59s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           6m    applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           6m    dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           6m    notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           6m    redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           6m    repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           6m    server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE   CONTAINERS               IMAGES
argocd-application-controller   1/1     6m    application-controller   quay.io/argoproj/argocd:v3.1.5
```

### DaemonSets
```bash
+ kubectl get daemonset -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Services
```bash
+ kubectl get svc -n argocd-dev -o wide
NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE    SELECTOR
argocd-application-controller-metrics   ClusterIP   10.43.172.69    <none>        8082/TCP                     6m2s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.173.178   <none>        7000/TCP                     6m2s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.38.234    <none>        5556/TCP,5557/TCP,5558/TCP   6m2s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.30.107    <none>        6379/TCP                     6m2s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     6m2s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.146.197   <none>        8081/TCP                     6m2s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.5.179     <none>        8084/TCP                     6m2s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.191.27    <none>        80/TCP,443/TCP               6m2s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     6m4s
argocd-cmd-params-cm            41     6m4s
argocd-gpg-keys-cm              0      6m4s
argocd-notifications-cm         1      6m4s
argocd-rbac-cm                  4      6m4s
argocd-redis-health-configmap   2      6m4s
argocd-ssh-known-hosts-cm       1      6m4s
argocd-tls-certs-cm             0      6m4s
kube-root-ca.crt                1      7m15s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      3m45s
argocd-notifications-secret    Opaque               0      6m5s
argocd-redis                   Opaque               1      6m10s
argocd-secret                  Opaque               3      6m5s
repo-vyking-git                Opaque               2      3m25s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      7m15s
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
2m47s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status:  -> Healthy
2m47s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status:  -> OutOfSync
113s        Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
113s        Normal    OperationStarted     application/frontend                                     Initiated automated sync to '22f7e9fbc8529b9b39fc0dda1b532a1f2d9fec18'
113s        Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
113s        Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
113s        Normal    OperationStarted     application/backend                                      Initiated automated sync to '22f7e9fbc8529b9b39fc0dda1b532a1f2d9fec18'
113s        Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
109s        Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
109s        Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
108s        Normal    OperationCompleted   application/backend                                      Sync operation to 22f7e9fbc8529b9b39fc0dda1b532a1f2d9fec18 succeeded
105s        Normal    OperationCompleted   application/frontend                                     Sync operation to 22f7e9fbc8529b9b39fc0dda1b532a1f2d9fec18 succeeded
105s        Normal    ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
105s        Normal    ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
92s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
92s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
91s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
91s         Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to 22f7e9fbc8529b9b39fc0dda1b532a1f2d9fec18 succeeded
58s         Normal    ResourceUpdated      application/backend                                      Updated health status: Progressing -> Healthy
41s         Normal    ResourceUpdated      application/frontend                                     Updated health status: Progressing -> Healthy
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     34m          161Mi           
argocd-applicationset-controller-78f49df558-2xqp8   2m           38Mi            
argocd-dex-server-796678d5bc-8pxzz                  5m           30Mi            
argocd-notifications-controller-6d84bf8458-468ws    1m           21Mi            
argocd-redis-7c7fb7fc74-dlqcf                       5m           3Mi             
argocd-repo-server-d587f667c-pgzf7                  4m           93Mi            
argocd-server-556b554c94-sqmqd                      2m           33Mi            
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
default   3m46s
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
NAME                                 READY   STATUS    RESTARTS   AGE    IP           NODE                      NOMINATED NODE   READINESS GATES
frontend-frontend-597d68f8cf-28c8b   1/1     Running   0          109s   10.42.2.11   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS   IMAGES                SELECTOR
frontend-frontend   1/1     1            1           109s   frontend     vyking-frontend:dev   app=frontend-frontend
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
NAME                TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE    SELECTOR
frontend-frontend   ClusterIP   10.43.238.77   <none>        8080/TCP   112s   app=frontend-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                CLASS    HOSTS                ADDRESS        PORTS     AGE
frontend-frontend   <none>   frontend-dev.local   10.43.179.87   80, 443   110s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                    DATA   AGE
frontend-nginx-config   1      114s
kube-root-ca.crt        1      2m5s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                       MINPODS   MAXPODS   REPLICAS   AGE
frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 5%/80%   1         3         1          112s
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
2m4s        Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m4s        Normal    cert-manager.io                certificaterequest/frontend-cert-dev-1      Certificate request has been approved by cert-manager.io
2m4s        Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m4s        Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m4s        Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m4s        Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m3s        Warning   BadConfig                      certificaterequest/frontend-cert-dev-1      Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
2m3s        Normal    CertificateIssued              certificaterequest/frontend-cert-dev-1      Certificate fetched from issuer successfully
2m3s        Normal    Issuing                        certificate/frontend-cert-dev               The certificate has been successfully issued
115s        Normal    ScalingReplicaSet              deployment/frontend-frontend                Scaled up replica set frontend-frontend-597d68f8cf to 1
114s        Normal    Scheduled                      pod/frontend-frontend-597d68f8cf-28c8b      Successfully assigned frontend-dev/frontend-frontend-597d68f8cf-28c8b to k3d-vyking-dev-server-0
115s        Normal    SuccessfulCreate               replicaset/frontend-frontend-597d68f8cf     Created pod: frontend-frontend-597d68f8cf-28c8b
110s        Normal    Created                        pod/frontend-frontend-597d68f8cf-28c8b      Created container frontend
110s        Normal    Pulled                         pod/frontend-frontend-597d68f8cf-28c8b      Container image "vyking-frontend:dev" already present on machine
109s        Normal    Started                        pod/frontend-frontend-597d68f8cf-28c8b      Started container frontend
99s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
99s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
99s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
84s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
50s         Normal    Sync                           ingress/frontend-frontend                   Scheduled for sync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
NAME                                 CPU(cores)   MEMORY(bytes)   
frontend-frontend-597d68f8cf-28c8b   1m           6Mi             
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
NAME                              READY   STATUS    RESTARTS   AGE    IP           NODE                      NOMINATED NODE   READINESS GATES
backend-backend-66c96df8b-dkf29   1/1     Running   0          2m1s   10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
backend-backend-66c96df8b-vhhw4   1/1     Running   0          2m     10.42.2.10   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS   IMAGES               SELECTOR
backend-backend   2/2     2            2           2m1s   backend      vyking-backend:dev   app=backend-backend
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
NAME              TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE    SELECTOR
backend-backend   ClusterIP   10.43.247.128   <none>        8081/TCP   2m2s   app=backend-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME              CLASS     HOSTS                ADDRESS                            PORTS   AGE
backend-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      2m1s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      2m12s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      103s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME              REFERENCE                    TARGETS                        MINPODS   MAXPODS   REPLICAS   AGE
backend-backend   Deployment/backend-backend   cpu: 1%/70%, memory: 30%/70%   1         5         2          2m2s
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
2m3s        Normal    ScalingReplicaSet              deployment/backend-backend                Scaled up replica set backend-backend-66c96df8b to 2
2m2s        Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-dkf29
2m2s        Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-vhhw4
2m2s        Normal    Scheduled                      pod/backend-backend-66c96df8b-dkf29       Successfully assigned backend-dev/backend-backend-66c96df8b-dkf29 to k3d-vyking-dev-agent-0
2m1s        Normal    Scheduled                      pod/backend-backend-66c96df8b-vhhw4       Successfully assigned backend-dev/backend-backend-66c96df8b-vhhw4 to k3d-vyking-dev-server-0
102s        Normal    Pulled                         pod/backend-backend-66c96df8b-dkf29       Container image "vyking-backend:dev" already present on machine
117s        Warning   Failed                         pod/backend-backend-66c96df8b-dkf29       Error: secret "mysql-credentials-dev" not found
101s        Normal    Pulled                         pod/backend-backend-66c96df8b-vhhw4       Container image "vyking-backend:dev" already present on machine
116s        Warning   Failed                         pod/backend-backend-66c96df8b-vhhw4       Error: secret "mysql-credentials-dev" not found
92s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
92s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
92s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
104s        Normal    Unsealed                       sealedsecret/mysql-credentials-dev        SealedSecret unsealed successfully
101s        Normal    Created                        pod/backend-backend-66c96df8b-vhhw4       Created container backend
101s        Normal    Created                        pod/backend-backend-66c96df8b-dkf29       Created container backend
100s        Normal    Started                        pod/backend-backend-66c96df8b-vhhw4       Started container backend
100s        Normal    Started                        pod/backend-backend-66c96df8b-dkf29       Started container backend
46s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
46s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
NAME                              CPU(cores)   MEMORY(bytes)   
backend-backend-66c96df8b-dkf29   1m           39Mi            
backend-backend-66c96df8b-vhhw4   2m           38Mi            
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
kube-root-ca.crt   1      3m29s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   5      3m
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
3m1s        Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
NAME                                       READY   STATUS    RESTARTS   AGE     IP          NODE                     NOMINATED NODE   READINESS GATES
cert-manager-55c69bf5cf-gd72q              1/1     Running   0          3m18s   10.42.1.6   k3d-vyking-dev-agent-1   <none>           <none>
cert-manager-cainjector-5765b5f544-jfj9l   1/1     Running   0          3m18s   10.42.0.8   k3d-vyking-dev-agent-0   <none>           <none>
cert-manager-webhook-6b67444dc9-gttbs      1/1     Running   0          3m18s   10.42.1.7   k3d-vyking-dev-agent-1   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           3m19s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           3m19s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           3m19s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.117.36   <none>        9402/TCP           3m21s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.23.126   <none>        9402/TCP           3m21s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.189.26   <none>        443/TCP,9402/TCP   3m21s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      3m25s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      2m55s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      3m25s
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
3m21s       Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-gttbs       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-gttbs to k3d-vyking-dev-agent-1
3m19s       Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-jfj9l    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
3m18s       Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-gttbs       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
3m18s       Normal   Pulling             pod/cert-manager-55c69bf5cf-gd72q               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
3m3s        Normal   Started             pod/cert-manager-cainjector-5765b5f544-jfj9l    Started container cert-manager-cainjector
3m4s        Normal   Created             pod/cert-manager-cainjector-5765b5f544-jfj9l    Created container cert-manager-cainjector
3m4s        Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-jfj9l    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 15.13s (15.13s including waiting). Image size: 15426355 bytes.
2m58s       Normal   Pulled              pod/cert-manager-55c69bf5cf-gd72q               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 20.43s (20.43s including waiting). Image size: 21189387 bytes.
2m58s       Normal   Created             pod/cert-manager-55c69bf5cf-gd72q               Created container cert-manager-controller
2m58s       Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-gttbs       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 20.073s (20.073s including waiting). Image size: 18192443 bytes.
2m58s       Normal   Created             pod/cert-manager-webhook-6b67444dc9-gttbs       Created container cert-manager-webhook
2m57s       Normal   Started             pod/cert-manager-webhook-6b67444dc9-gttbs       Started container cert-manager-webhook
2m57s       Normal   Started             pod/cert-manager-55c69bf5cf-gd72q               Started container cert-manager-controller
2m46s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-xfwks
2m46s       Normal   Scheduled           pod/cert-manager-startupapicheck-xfwks          Successfully assigned cert-manager/cert-manager-startupapicheck-xfwks to k3d-vyking-dev-agent-0
2m45s       Normal   Pulling             pod/cert-manager-startupapicheck-xfwks          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
2m39s       Normal   Pulled              pod/cert-manager-startupapicheck-xfwks          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 6.448s (6.448s including waiting). Image size: 14095526 bytes.
2m39s       Normal   Created             pod/cert-manager-startupapicheck-xfwks          Created container cert-manager-startupapicheck
2m38s       Normal   Started             pod/cert-manager-startupapicheck-xfwks          Started container cert-manager-startupapicheck
2m35s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-gd72q              5m           23Mi            
cert-manager-cainjector-5765b5f544-jfj9l   4m           22Mi            
cert-manager-webhook-6b67444dc9-gttbs      2m           11Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-7c7s2   1/1     Running   0          17m   10.42.1.3   k3d-vyking-dev-agent-1   <none>           <none>
```

### Sealed Secrets deployment
```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           17m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.26.0   name=sealed-secrets-controller
```

### Sealed Secrets service
```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.212.191   <none>        8080/TCP   17m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
16m         Normal    ScalingReplicaSet      deployment/traefik                                Scaled up replica set traefik-5d45fc8cc9 to 1
16m         Normal    AppliedDaemonSet       service/traefik                                   Applied LoadBalancer DaemonSet kube-system/svclb-traefik-96af4c72
16m         Normal    SuccessfulCreate       daemonset/svclb-traefik-96af4c72                  Created pod: svclb-traefik-96af4c72-dx87z
16m         Normal    Scheduled              pod/svclb-traefik-96af4c72-zzksr                  Successfully assigned kube-system/svclb-traefik-96af4c72-zzksr to k3d-vyking-dev-server-0
16m         Normal    Scheduled              pod/svclb-traefik-96af4c72-ntc4s                  Successfully assigned kube-system/svclb-traefik-96af4c72-ntc4s to k3d-vyking-dev-agent-0
16m         Normal    Scheduled              pod/traefik-5d45fc8cc9-n27kf                      Successfully assigned kube-system/traefik-5d45fc8cc9-n27kf to k3d-vyking-dev-agent-0
16m         Normal    SuccessfulCreate       daemonset/svclb-traefik-96af4c72                  Created pod: svclb-traefik-96af4c72-zzksr
16m         Normal    SuccessfulCreate       replicaset/traefik-5d45fc8cc9                     Created pod: traefik-5d45fc8cc9-n27kf
16m         Normal    Pulling                pod/traefik-5d45fc8cc9-n27kf                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
16m         Normal    Pulling                pod/svclb-traefik-96af4c72-ntc4s                  Pulling image "rancher/klipper-lb:v0.4.9"
16m         Normal    Pulling                pod/svclb-traefik-96af4c72-dx87z                  Pulling image "rancher/klipper-lb:v0.4.9"
16m         Normal    Pulling                pod/svclb-traefik-96af4c72-zzksr                  Pulling image "rancher/klipper-lb:v0.4.9"
16m         Normal    Completed              job/helm-install-traefik                          Job completed
16m         Normal    Created                pod/svclb-traefik-96af4c72-dx87z                  Created container lb-tcp-80
16m         Normal    Pulled                 pod/svclb-traefik-96af4c72-dx87z                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 9.568s (9.568s including waiting). Image size: 4990278 bytes.
16m         Normal    Pulled                 pod/svclb-traefik-96af4c72-zzksr                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 10.085s (10.085s including waiting). Image size: 4990278 bytes.
16m         Normal    Created                pod/svclb-traefik-96af4c72-zzksr                  Created container lb-tcp-80
16m         Normal    Started                pod/svclb-traefik-96af4c72-dx87z                  Started container lb-tcp-80
16m         Normal    Pulled                 pod/svclb-traefik-96af4c72-dx87z                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
16m         Normal    Started                pod/svclb-traefik-96af4c72-zzksr                  Started container lb-tcp-80
16m         Normal    Pulled                 pod/svclb-traefik-96af4c72-zzksr                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
16m         Normal    Created                pod/svclb-traefik-96af4c72-dx87z                  Created container lb-tcp-443
16m         Normal    Created                pod/svclb-traefik-96af4c72-zzksr                  Created container lb-tcp-443
16m         Normal    Created                pod/svclb-traefik-96af4c72-ntc4s                  Created container lb-tcp-80
16m         Normal    Pulled                 pod/svclb-traefik-96af4c72-ntc4s                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 14.848s (14.848s including waiting). Image size: 4990278 bytes.
16m         Normal    Started                pod/svclb-traefik-96af4c72-dx87z                  Started container lb-tcp-443
16m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.4]
16m         Normal    Pulled                 pod/svclb-traefik-96af4c72-ntc4s                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
16m         Normal    Started                pod/svclb-traefik-96af4c72-ntc4s                  Started container lb-tcp-80
16m         Normal    Started                pod/svclb-traefik-96af4c72-zzksr                  Started container lb-tcp-443
16m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.4] -> [172.18.0.2 172.18.0.4]
16m         Normal    Created                pod/svclb-traefik-96af4c72-ntc4s                  Created container lb-tcp-443
16m         Normal    Started                pod/svclb-traefik-96af4c72-ntc4s                  Started container lb-tcp-443
16m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
16m         Normal    Created                pod/traefik-5d45fc8cc9-n27kf                      Created container traefik
16m         Normal    Pulled                 pod/traefik-5d45fc8cc9-n27kf                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 29.934s (29.934s including waiting). Image size: 49449055 bytes.
15m         Normal    Started                pod/traefik-5d45fc8cc9-n27kf                      Started container traefik
15m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
3m5s        Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-jfj9l_1b88e301-2e04-443c-9768-1bc3533694dc became leader
3m          Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-gd72q-external-cert-manager-controller became leader
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

### DaemonSet svclb-traefik-96af4c72
```bash
+ kubectl rollout status daemonset svclb-traefik-96af4c72 -n kube-system --timeout=30s
daemon set "svclb-traefik-96af4c72" successfully rolled out
```


✅ Tests complete.
