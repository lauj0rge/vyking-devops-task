# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 04:47:24 CEST
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
Kubernetes control plane is running at https://0.0.0.0:40917
CoreDNS is running at https://0.0.0.0:40917/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:40917/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 19m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 19m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   19m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   9m25s
backend-dev       Active   2m17s
cert-manager      Active   4m9s
default           Active   19m
frontend-dev      Active   2m17s
ingress-nginx     Active   2m11s
kube-node-lease   Active   19m
kube-public       Active   19m
kube-system       Active   19m
mysql-dev         Active   4m21s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS      RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running     0          7m52s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-7bkcr   1/1     Running     0          7m54s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-hkpt2                  1/1     Running     0          7m54s   10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-rc4fz    1/1     Running     0          7m54s   10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-n7qdc                       1/1     Running     0          7m54s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-zfqwp                  1/1     Running     0          7m54s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-server-556b554c94-xbcrg                      1/1     Running     0          7m51s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
backend-dev     backend-backend-549575788c-qhgsl                    1/1     Running     0          2m1s    10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
backend-dev     backend-backend-549575788c-zbjgf                    1/1     Running     0          2m1s    10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-6tsvt                       1/1     Running     0          4m      10.42.0.9    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-xj426            1/1     Running     0          4m      10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-qqvj7               1/1     Running     0          4m      10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
frontend-dev    frontend-frontend-597d68f8cf-vjcx9                  1/1     Running     0          119s    10.42.0.12   k3d-vyking-dev-agent-0    <none>           <none>
ingress-nginx   ingress-nginx-controller-b4b575f8-6mwsk             1/1     Running     0          97s     10.42.0.13   k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-jr6ln                             1/1     Running     0          19m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-42pq7                          0/1     Completed   2          19m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-crd-rfhwh                      0/1     Completed   0          19m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-s9vcw             1/1     Running     0          19m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     metrics-server-5985cbc9d7-rxcn5                     1/1     Running     0          19m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-8fcm5          1/1     Running     0          19m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-23331852-jb4mn                        2/2     Running     0          17m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-23331852-kq7wc                        2/2     Running     0          17m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-23331852-wbvfk                        2/2     Running     0          17m     10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
kube-system     traefik-5d45fc8cc9-7whnp                            1/1     Running     0          17m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.195.171   <none>                             8082/TCP                     7m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.238.139   <none>                             7000/TCP                     7m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.175.82    <none>                             5556/TCP,5557/TCP,5558/TCP   7m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.166.231   <none>                             6379/TCP                     7m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     7m57s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.186.24    <none>                             8081/TCP                     7m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.67.187    <none>                             8084/TCP                     7m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.34.98     <none>                             80/TCP,443/TCP               7m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.194.247   <none>                             8081/TCP                     2m3s    app=backend-backend
cert-manager    cert-manager                            ClusterIP      10.43.123.46    <none>                             9402/TCP                     4m5s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.159.114   <none>                             9402/TCP                     4m5s    app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.117.180   <none>                             443/TCP,9402/TCP             4m5s    app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      19m     <none>
frontend-dev    frontend-frontend                       ClusterIP      10.43.121.80    <none>                             8080/TCP                     2m2s    app=frontend-frontend
ingress-nginx   ingress-nginx-controller                NodePort       10.43.60.167    <none>                             80:30503/TCP,443:31401/TCP   99s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.232.123   <none>                             443/TCP                      99s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       19m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.247.155   <none>                             443/TCP                      19m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.105.26    <none>                             8080/TCP                     19m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.121.191   <none>                             8081/TCP                     19m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.137.169   172.18.0.2,172.18.0.3,172.18.0.4   80:32170/TCP,443:30583/TCP   17m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        2m3s
frontend-dev   frontend-frontend   <none>    frontend-dev.local   10.43.60.167                       80, 443   2m1s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           7m57s
argocd-dev      argocd-dex-server                  1/1     1            1           7m57s
argocd-dev      argocd-notifications-controller    1/1     1            1           7m57s
argocd-dev      argocd-redis                       1/1     1            1           7m57s
argocd-dev      argocd-repo-server                 1/1     1            1           7m57s
argocd-dev      argocd-server                      1/1     1            1           7m57s
backend-dev     backend-backend                    2/2     2            2           2m3s
cert-manager    cert-manager                       1/1     1            1           4m4s
cert-manager    cert-manager-cainjector            1/1     1            1           4m4s
cert-manager    cert-manager-webhook               1/1     1            1           4m4s
frontend-dev    frontend-frontend                  1/1     1            1           2m2s
ingress-nginx   ingress-nginx-controller           1/1     1            1           100s
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
argocd-dev   argocd-application-controller   1/1     7m57s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-23331852   3         3         3       3            3           <none>          17m
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
kube-system   helm-install-traefik       Complete   1/1           117s       19m
kube-system   helm-install-traefik-crd   Complete   1/1           95s        19m
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
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 7%/80%    1         3         1          2m6s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    208m         6%       500Mi           6%          
k3d-vyking-dev-agent-1    260m         8%       514Mi           6%          
k3d-vyking-dev-server-0   651m         21%      1253Mi          15%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     19m          149Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-7bkcr   3m           41Mi            
argocd-dev      argocd-dex-server-796678d5bc-hkpt2                  1m           25Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-rc4fz    1m           33Mi            
argocd-dev      argocd-redis-7c7fb7fc74-n7qdc                       4m           3Mi             
argocd-dev      argocd-repo-server-d587f667c-zfqwp                  3m           96Mi            
argocd-dev      argocd-server-556b554c94-xbcrg                      2m           38Mi            
backend-dev     backend-backend-549575788c-qhgsl                    1m           43Mi            
backend-dev     backend-backend-549575788c-zbjgf                    1m           43Mi            
cert-manager    cert-manager-55c69bf5cf-6tsvt                       4m           30Mi            
cert-manager    cert-manager-cainjector-5765b5f544-xj426            4m           43Mi            
cert-manager    cert-manager-webhook-6b67444dc9-qqvj7               5m           42Mi            
frontend-dev    frontend-frontend-597d68f8cf-vjcx9                  1m           9Mi             
ingress-nginx   ingress-nginx-controller-b4b575f8-6mwsk             4m           47Mi            
kube-system     coredns-ccb96694c-jr6ln                             8m           17Mi            
kube-system     local-path-provisioner-5cf85fd84d-s9vcw             1m           7Mi             
kube-system     metrics-server-5985cbc9d7-rxcn5                     18m          28Mi            
kube-system     sealed-secrets-controller-5655858cbc-8fcm5          1m           24Mi            
kube-system     svclb-traefik-23331852-jb4mn                        0m           0Mi             
kube-system     svclb-traefik-23331852-kq7wc                        0m           0Mi             
kube-system     svclb-traefik-23331852-wbvfk                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-7whnp                            2m           52Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
argocd-dev      2m7s        Normal    ResourceUpdated                  application/backend                                      Updated sync status: OutOfSync -> Synced
backend-dev     2m6s        Normal    Created                          pod/backend-backend-549575788c-qhgsl                     Created container backend
frontend-dev    2m6s        Normal    Pulled                           pod/frontend-frontend-597d68f8cf-vjcx9                   Container image "vyking-frontend:dev" already present on machine
backend-dev     2m6s        Normal    Pulled                           pod/backend-backend-549575788c-qhgsl                     Container image "vyking-backend:dev" already present on machine
frontend-dev    2m5s        Normal    Created                          pod/frontend-frontend-597d68f8cf-vjcx9                   Created container frontend
backend-dev     2m5s        Normal    Started                          pod/backend-backend-549575788c-zbjgf                     Started container backend
backend-dev     2m4s        Normal    Started                          pod/backend-backend-549575788c-qhgsl                     Started container backend
frontend-dev    2m4s        Normal    Started                          pod/frontend-frontend-597d68f8cf-vjcx9                   Started container frontend
backend-dev     116s        Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     116s        Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
backend-dev     116s        Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
frontend-dev    114s        Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
frontend-dev    114s        Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
frontend-dev    114s        Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/frontend-frontend                invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
ingress-nginx   114s        Normal    Created                          pod/ingress-nginx-admission-create-2x4zg                 Created container create
ingress-nginx   114s        Normal    Pulled                           pod/ingress-nginx-admission-create-2x4zg                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 17.092s (17.092s including waiting). Image size: 28450888 bytes.
ingress-nginx   113s        Normal    Started                          pod/ingress-nginx-admission-create-2x4zg                 Started container create
ingress-nginx   109s        Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   107s        Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-b4b575f8             Created pod: ingress-nginx-controller-b4b575f8-6mwsk
ingress-nginx   108s        Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-b4b575f8 to 1
ingress-nginx   107s        Normal    Scheduled                        pod/ingress-nginx-controller-b4b575f8-6mwsk              Successfully assigned ingress-nginx/ingress-nginx-controller-b4b575f8-6mwsk to k3d-vyking-dev-agent-0
ingress-nginx   106s        Warning   FailedMount                      pod/ingress-nginx-controller-b4b575f8-6mwsk              MountVolume.SetUp failed for volume "kube-api-access-lx84d" : failed to sync configmap cache: timed out waiting for the condition
ingress-nginx   105s        Normal    Pulling                          pod/ingress-nginx-controller-b4b575f8-6mwsk              Pulling image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef"
backend-dev     85s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
backend-dev     85s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
argocd-dev      98s         Normal    ResourceUpdated                  application/backend                                      Updated health status: Progressing -> Healthy
ingress-nginx   58s         Normal    Pulled                           pod/ingress-nginx-controller-b4b575f8-6mwsk              Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef" in 46.91s (46.91s including waiting). Image size: 115287729 bytes.
ingress-nginx   57s         Normal    Started                          pod/ingress-nginx-controller-b4b575f8-6mwsk              Started container controller
ingress-nginx   58s         Normal    Created                          pod/ingress-nginx-controller-b4b575f8-6mwsk              Created container controller
ingress-nginx   56s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
argocd-dev      55s         Normal    ResourceUpdated                  application/frontend                                     Updated health status: Progressing -> Healthy
ingress-nginx   55s         Normal    RELOAD                           pod/ingress-nginx-controller-b4b575f8-6mwsk              NGINX reload triggered due to a change in configuration
frontend-dev    55s         Normal    Sync                             ingress/frontend-frontend                                Scheduled for sync
ingress-nginx   41s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-fqdzr
ingress-nginx   40s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-fqdzr                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-fqdzr to k3d-vyking-dev-server-0
ingress-nginx   39s         Normal    Pulling                          pod/ingress-nginx-admission-patch-fqdzr                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24"
ingress-nginx   23s         Normal    Started                          pod/ingress-nginx-admission-patch-fqdzr                  Started container patch
ingress-nginx   23s         Normal    Created                          pod/ingress-nginx-admission-patch-fqdzr                  Created container patch
ingress-nginx   24s         Normal    Pulled                           pod/ingress-nginx-admission-patch-fqdzr                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 15.36s (15.36s including waiting). Image size: 28450888 bytes.
ingress-nginx   18s         Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE    IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          8m3s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-applicationset-controller-78f49df558-7bkcr   1/1     Running   0          8m5s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dex-server-796678d5bc-hkpt2                  1/1     Running   0          8m5s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-notifications-controller-6d84bf8458-rc4fz    1/1     Running   0          8m5s   10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
argocd-redis-7c7fb7fc74-n7qdc                       1/1     Running   0          8m5s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-repo-server-d587f667c-zfqwp                  1/1     Running   0          8m5s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-server-556b554c94-xbcrg                      1/1     Running   0          8m2s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           8m7s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           8m7s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           8m7s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           8m7s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           8m7s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           8m7s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE    CONTAINERS               IMAGES
argocd-application-controller   1/1     8m7s   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.195.171   <none>        8082/TCP                     8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.238.139   <none>        7000/TCP                     8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.175.82    <none>        5556/TCP,5557/TCP,5558/TCP   8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.166.231   <none>        6379/TCP                     8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     8m10s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.186.24    <none>        8081/TCP                     8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.67.187    <none>        8084/TCP                     8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.34.98     <none>        80/TCP,443/TCP               8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     8m14s
argocd-cmd-params-cm            41     8m14s
argocd-gpg-keys-cm              0      8m14s
argocd-notifications-cm         1      8m14s
argocd-rbac-cm                  4      8m14s
argocd-redis-health-configmap   2      8m14s
argocd-ssh-known-hosts-cm       1      8m14s
argocd-tls-certs-cm             0      8m14s
kube-root-ca.crt                1      9m40s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      5m11s
argocd-notifications-secret    Opaque               0      8m15s
argocd-redis                   Opaque               1      8m20s
argocd-secret                  Opaque               3      8m15s
repo-vyking-git                Opaque               2      4m55s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      9m40s
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
3m27s       Normal    ResourceUpdated      application/mysql                                        Updated sync status:  -> Unknown
3m26s       Normal    ResourceUpdated      application/mysql                                        Updated health status:  -> Healthy
2m27s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
2m26s       Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to 2c5286f54ee1aebd1f252f9170f4b01b54f619a4 succeeded
2m26s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
2m26s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
2m24s       Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
2m24s       Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
2m24s       Normal    OperationStarted     application/frontend                                     Initiated automated sync to '2c5286f54ee1aebd1f252f9170f4b01b54f619a4'
2m24s       Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
2m24s       Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
2m24s       Normal    OperationStarted     application/backend                                      Initiated automated sync to '2c5286f54ee1aebd1f252f9170f4b01b54f619a4'
2m18s       Normal    OperationCompleted   application/backend                                      Sync operation to 2c5286f54ee1aebd1f252f9170f4b01b54f619a4 succeeded
2m17s       Normal    OperationCompleted   application/frontend                                     Sync operation to 2c5286f54ee1aebd1f252f9170f4b01b54f619a4 succeeded
2m17s       Normal    ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
2m16s       Normal    ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
2m16s       Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
2m16s       Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
107s        Normal    ResourceUpdated      application/backend                                      Updated health status: Progressing -> Healthy
64s         Normal    ResourceUpdated      application/frontend                                     Updated health status: Progressing -> Healthy
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     25m          150Mi           
argocd-applicationset-controller-78f49df558-7bkcr   1m           41Mi            
argocd-dex-server-796678d5bc-hkpt2                  0m           26Mi            
argocd-notifications-controller-6d84bf8458-rc4fz    1m           33Mi            
argocd-redis-7c7fb7fc74-n7qdc                       3m           3Mi             
argocd-repo-server-d587f667c-zfqwp                  6m           96Mi            
argocd-server-556b554c94-xbcrg                      26m          58Mi            
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
default   5m15s
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
NAME                                 READY   STATUS    RESTARTS   AGE     IP           NODE                     NOMINATED NODE   READINESS GATES
frontend-frontend-597d68f8cf-vjcx9   1/1     Running   0          2m22s   10.42.0.12   k3d-vyking-dev-agent-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES                SELECTOR
frontend-frontend   1/1     1            1           2m23s   frontend     vyking-frontend:dev   app=frontend-frontend
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
frontend-frontend   ClusterIP   10.43.121.80   <none>        8080/TCP   2m26s   app=frontend-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                CLASS    HOSTS                ADDRESS        PORTS     AGE
frontend-frontend   <none>   frontend-dev.local   10.43.60.167   80, 443   2m25s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                    DATA   AGE
frontend-nginx-config   1      2m29s
kube-root-ca.crt        1      2m44s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m36s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                       MINPODS   MAXPODS   REPLICAS   AGE
frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 7%/80%   1         3         1          2m27s
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
2m44s       Normal    Issuing                        certificate/frontend-cert-dev               Issuing certificate as Secret does not exist
2m43s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m43s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m43s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m43s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m43s       Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m43s       Normal    cert-manager.io                certificaterequest/frontend-cert-dev-1      Certificate request has been approved by cert-manager.io
2m41s       Warning   BadConfig                      certificaterequest/frontend-cert-dev-1      Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
2m41s       Normal    CertificateIssued              certificaterequest/frontend-cert-dev-1      Certificate fetched from issuer successfully
2m40s       Normal    Issuing                        certificate/frontend-cert-dev               The certificate has been successfully issued
2m31s       Normal    ScalingReplicaSet              deployment/frontend-frontend                Scaled up replica set frontend-frontend-597d68f8cf to 1
2m30s       Normal    SuccessfulCreate               replicaset/frontend-frontend-597d68f8cf     Created pod: frontend-frontend-597d68f8cf-vjcx9
2m29s       Normal    Scheduled                      pod/frontend-frontend-597d68f8cf-vjcx9      Successfully assigned frontend-dev/frontend-frontend-597d68f8cf-vjcx9 to k3d-vyking-dev-agent-0
2m27s       Normal    Pulled                         pod/frontend-frontend-597d68f8cf-vjcx9      Container image "vyking-frontend:dev" already present on machine
2m26s       Normal    Created                        pod/frontend-frontend-597d68f8cf-vjcx9      Created container frontend
2m25s       Normal    Started                        pod/frontend-frontend-597d68f8cf-vjcx9      Started container frontend
2m15s       Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m15s       Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
2m15s       Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
76s         Normal    Sync                           ingress/frontend-frontend                   Scheduled for sync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
NAME                                 CPU(cores)   MEMORY(bytes)   
frontend-frontend-597d68f8cf-vjcx9   1m           9Mi             
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
NAME                               READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
backend-backend-549575788c-qhgsl   1/1     Running   0          2m36s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
backend-backend-549575788c-zbjgf   1/1     Running   0          2m36s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES               SELECTOR
backend-backend   2/2     2            2           2m37s   backend      vyking-backend:dev   app=backend-backend
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
backend-backend   ClusterIP   10.43.194.247   <none>        8081/TCP   2m40s   app=backend-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME              CLASS     HOSTS                ADDRESS                            PORTS   AGE
backend-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      2m39s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      2m56s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      2m48s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME              REFERENCE                    TARGETS                        MINPODS   MAXPODS   REPLICAS   AGE
backend-backend   Deployment/backend-backend   cpu: 1%/70%, memory: 33%/70%   1         5         2          2m41s
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
2m51s       Normal    Unsealed                       sealedsecret/mysql-credentials-dev        SealedSecret unsealed successfully
2m44s       Normal    SuccessfulCreate               replicaset/backend-backend-549575788c     Created pod: backend-backend-549575788c-zbjgf
2m44s       Normal    ScalingReplicaSet              deployment/backend-backend                Scaled up replica set backend-backend-549575788c to 2
2m43s       Normal    Scheduled                      pod/backend-backend-549575788c-zbjgf      Successfully assigned backend-dev/backend-backend-549575788c-zbjgf to k3d-vyking-dev-agent-1
2m44s       Normal    SuccessfulCreate               replicaset/backend-backend-549575788c     Created pod: backend-backend-549575788c-qhgsl
2m43s       Normal    Scheduled                      pod/backend-backend-549575788c-qhgsl      Successfully assigned backend-dev/backend-backend-549575788c-qhgsl to k3d-vyking-dev-server-0
2m40s       Normal    Pulled                         pod/backend-backend-549575788c-zbjgf      Container image "vyking-backend:dev" already present on machine
2m40s       Normal    Created                        pod/backend-backend-549575788c-zbjgf      Created container backend
2m39s       Normal    Created                        pod/backend-backend-549575788c-qhgsl      Created container backend
2m39s       Normal    Pulled                         pod/backend-backend-549575788c-qhgsl      Container image "vyking-backend:dev" already present on machine
2m38s       Normal    Started                        pod/backend-backend-549575788c-zbjgf      Started container backend
2m37s       Normal    Started                        pod/backend-backend-549575788c-qhgsl      Started container backend
2m29s       Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m29s       Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
2m29s       Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
118s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
118s        Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
NAME                               CPU(cores)   MEMORY(bytes)   
backend-backend-549575788c-qhgsl   1m           43Mi            
backend-backend-549575788c-zbjgf   2m           43Mi            
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
kube-root-ca.crt   1      5m13s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   6      4m21s
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
4m24s       Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
cert-manager-55c69bf5cf-6tsvt              1/1     Running   0          4m59s   10.42.0.9   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-cainjector-5765b5f544-xj426   1/1     Running   0          4m59s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
cert-manager-webhook-6b67444dc9-qqvj7      1/1     Running   0          4m59s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           5m2s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           5m2s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           5m2s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
NAME                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)            AGE    SELECTOR
cert-manager              ClusterIP   10.43.123.46    <none>        9402/TCP           5m6s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.159.114   <none>        9402/TCP           5m6s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.117.180   <none>        443/TCP,9402/TCP   5m6s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      5m12s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      4m18s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      5m12s
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
5m7s        Normal   SuccessfulCreate    replicaset/cert-manager-55c69bf5cf              Created pod: cert-manager-55c69bf5cf-6tsvt
5m4s        Normal   Pulling             pod/cert-manager-55c69bf5cf-6tsvt               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
5m2s        Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-qqvj7       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
5m1s        Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-xj426    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
4m36s       Normal   Pulled              pod/cert-manager-55c69bf5cf-6tsvt               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 27.427s (27.427s including waiting). Image size: 21189387 bytes.
4m36s       Normal   Created             pod/cert-manager-55c69bf5cf-6tsvt               Created container cert-manager-controller
4m34s       Normal   Started             pod/cert-manager-55c69bf5cf-6tsvt               Started container cert-manager-controller
4m27s       Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-qqvj7       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 34.995s (34.995s including waiting). Image size: 18192443 bytes.
4m26s       Normal   Created             pod/cert-manager-webhook-6b67444dc9-qqvj7       Created container cert-manager-webhook
4m25s       Normal   Started             pod/cert-manager-webhook-6b67444dc9-qqvj7       Started container cert-manager-webhook
4m24s       Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-xj426    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 36.997s (36.998s including waiting). Image size: 15426355 bytes.
4m23s       Normal   Created             pod/cert-manager-cainjector-5765b5f544-xj426    Created container cert-manager-cainjector
4m21s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-xj426    Started container cert-manager-cainjector
4m8s        Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-xlt48
4m8s        Normal   Scheduled           pod/cert-manager-startupapicheck-xlt48          Successfully assigned cert-manager/cert-manager-startupapicheck-xlt48 to k3d-vyking-dev-agent-0
4m6s        Normal   Pulling             pod/cert-manager-startupapicheck-xlt48          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
3m55s       Normal   Pulled              pod/cert-manager-startupapicheck-xlt48          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 11.372s (11.372s including waiting). Image size: 14095526 bytes.
3m55s       Normal   Created             pod/cert-manager-startupapicheck-xlt48          Created container cert-manager-startupapicheck
3m54s       Normal   Started             pod/cert-manager-startupapicheck-xlt48          Started container cert-manager-startupapicheck
3m48s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-6tsvt              4m           30Mi            
cert-manager-cainjector-5765b5f544-xj426   3m           43Mi            
cert-manager-webhook-6b67444dc9-qqvj7      2m           42Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-8fcm5   1/1     Running   0          20m   10.42.1.3   k3d-vyking-dev-agent-1   <none>           <none>
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
NAME                        TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.105.26   <none>        8080/TCP   20m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
18m         Normal    Scheduled              pod/svclb-traefik-23331852-jb4mn                  Successfully assigned kube-system/svclb-traefik-23331852-jb4mn to k3d-vyking-dev-agent-0
18m         Normal    AppliedDaemonSet       service/traefik                                   Applied LoadBalancer DaemonSet kube-system/svclb-traefik-23331852
18m         Normal    Scheduled              pod/svclb-traefik-23331852-wbvfk                  Successfully assigned kube-system/svclb-traefik-23331852-wbvfk to k3d-vyking-dev-server-0
18m         Normal    SuccessfulCreate       daemonset/svclb-traefik-23331852                  Created pod: svclb-traefik-23331852-kq7wc
18m         Normal    Scheduled              pod/svclb-traefik-23331852-kq7wc                  Successfully assigned kube-system/svclb-traefik-23331852-kq7wc to k3d-vyking-dev-agent-1
18m         Normal    Pulling                pod/traefik-5d45fc8cc9-7whnp                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
18m         Normal    Pulling                pod/svclb-traefik-23331852-kq7wc                  Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Pulling                pod/svclb-traefik-23331852-jb4mn                  Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Pulling                pod/svclb-traefik-23331852-wbvfk                  Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Completed              job/helm-install-traefik                          Job completed
18m         Normal    Pulled                 pod/svclb-traefik-23331852-kq7wc                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 10.469s (10.469s including waiting). Image size: 4990278 bytes.
18m         Normal    Created                pod/svclb-traefik-23331852-kq7wc                  Created container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-23331852-kq7wc                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Created                pod/svclb-traefik-23331852-kq7wc                  Created container lb-tcp-443
18m         Normal    Started                pod/svclb-traefik-23331852-kq7wc                  Started container lb-tcp-80
18m         Normal    Started                pod/svclb-traefik-23331852-kq7wc                  Started container lb-tcp-443
18m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.4]
18m         Normal    Pulled                 pod/svclb-traefik-23331852-jb4mn                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 15.057s (15.057s including waiting). Image size: 4990278 bytes.
18m         Normal    Pulled                 pod/svclb-traefik-23331852-jb4mn                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Started                pod/svclb-traefik-23331852-jb4mn                  Started container lb-tcp-80
18m         Normal    Created                pod/svclb-traefik-23331852-jb4mn                  Created container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-23331852-wbvfk                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 16.17s (16.17s including waiting). Image size: 4990278 bytes.
18m         Normal    Created                pod/svclb-traefik-23331852-wbvfk                  Created container lb-tcp-80
18m         Normal    Created                pod/svclb-traefik-23331852-jb4mn                  Created container lb-tcp-443
18m         Normal    Started                pod/svclb-traefik-23331852-jb4mn                  Started container lb-tcp-443
18m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.4] -> [172.18.0.3 172.18.0.4]
18m         Normal    Started                pod/svclb-traefik-23331852-wbvfk                  Started container lb-tcp-80
18m         Normal    Created                pod/svclb-traefik-23331852-wbvfk                  Created container lb-tcp-443
18m         Normal    Pulled                 pod/svclb-traefik-23331852-wbvfk                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Started                pod/svclb-traefik-23331852-wbvfk                  Started container lb-tcp-443
18m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
18m         Normal    Pulled                 pod/traefik-5d45fc8cc9-7whnp                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 44.532s (44.532s including waiting). Image size: 49449055 bytes.
18m         Normal    Created                pod/traefik-5d45fc8cc9-7whnp                      Created container traefik
18m         Normal    Started                pod/traefik-5d45fc8cc9-7whnp                      Started container traefik
17m         Warning   Unhealthy              pod/traefik-5d45fc8cc9-7whnp                      Readiness probe failed: HTTP probe failed with statuscode: 404
17m         Warning   Unhealthy              pod/traefik-5d45fc8cc9-7whnp                      Liveness probe failed: HTTP probe failed with statuscode: 404
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
8m49s       Warning   Unhealthy              pod/coredns-ccb96694c-jr6ln                       Readiness probe failed: Get "http://10.42.2.3:8181/ready": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
4m36s       Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-6tsvt-external-cert-manager-controller became leader
4m21s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-xj426_fa77dd68-6af2-4d96-bf58-f904fc950c5e became leader
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

### DaemonSet svclb-traefik-23331852
```bash
+ kubectl rollout status daemonset svclb-traefik-23331852 -n kube-system --timeout=30s
daemon set "svclb-traefik-23331852" successfully rolled out
```


✅ Tests complete.
