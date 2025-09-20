# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 17:55:41 CEST
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
Kubernetes control plane is running at https://0.0.0.0:39003
CoreDNS is running at https://0.0.0.0:39003/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:39003/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 16m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 16m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   16m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   8m27s
backend-dev       Active   2m7s
cert-manager      Active   3m39s
default           Active   16m
frontend-dev      Active   2m7s
ingress-nginx     Active   2m1s
kube-node-lease   Active   16m
kube-public       Active   16m
kube-system       Active   16m
mysql-dev         Active   3m49s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS      RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running     0          6m58s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-6nxq6   1/1     Running     0          6m59s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-8489t                  1/1     Running     0          6m59s   10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-259lh    1/1     Running     0          6m57s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-czm6x                       1/1     Running     0          6m59s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-vp7pn                  1/1     Running     0          6m59s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-server-556b554c94-p4wjt                      1/1     Running     0          6m59s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
backend-dev     backend-backend-8449699c64-brdsb                    1/1     Running     0          111s    10.42.0.11   k3d-vyking-dev-agent-0    <none>           <none>
backend-dev     frontend-backend-868c6988f6-t6fwr                   1/1     Running     0          112s    10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-55c69bf5cf-kr9ww                       1/1     Running     0          3m35s   10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-qf9d6            1/1     Running     0          3m35s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-mgxl9               1/1     Running     0          3m35s   10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
frontend-dev    backend-frontend-6b7787cff6-w8wfd                   1/1     Running     0          111s    10.42.1.11   k3d-vyking-dev-agent-1    <none>           <none>
frontend-dev    frontend-frontend-6879df4c4b-9kdjj                  1/1     Running     0          113s    10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-vxb9z           1/1     Running     0          84s     10.42.0.12   k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-m4w8s                             1/1     Running     0          16m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-crd-m7wf5                      0/1     Completed   0          16m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-lkmts                          0/1     Completed   1          16m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-7cmkd             1/1     Running     0          16m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     metrics-server-5985cbc9d7-dswkj                     1/1     Running     0          16m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-4r77j          1/1     Running     0          16m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-7c71dc76-2bkr7                        2/2     Running     0          14m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-7c71dc76-ljqlk                        2/2     Running     0          14m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-7c71dc76-rhd4c                        2/2     Running     0          14m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     traefik-5d45fc8cc9-q5n52                            1/1     Running     0          14m     10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.67.24     <none>                             8082/TCP                     7m1s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.253.205   <none>                             7000/TCP                     7m      app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.109.36    <none>                             5556/TCP,5557/TCP,5558/TCP   7m      app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.151.25    <none>                             6379/TCP                     7m1s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     7m      app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.142.79    <none>                             8081/TCP                     7m      app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.63.45     <none>                             8084/TCP                     7m1s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.109.41    <none>                             80/TCP,443/TCP               7m      app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.81.38     <none>                             8081/TCP                     113s    app=backend-backend
backend-dev     frontend-backend                        ClusterIP      10.43.147.216   <none>                             8081/TCP                     114s    app=frontend-backend
cert-manager    cert-manager                            ClusterIP      10.43.192.89    <none>                             9402/TCP                     3m36s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.222.26    <none>                             9402/TCP                     3m36s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.200.199   <none>                             443/TCP,9402/TCP             3m36s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      16m     <none>
frontend-dev    backend-frontend                        ClusterIP      10.43.151.54    <none>                             8080/TCP                     113s    app=backend-frontend
frontend-dev    frontend-frontend                       ClusterIP      10.43.79.228    <none>                             8080/TCP                     114s    app=frontend-frontend
ingress-nginx   ingress-nginx-controller                ClusterIP      10.43.218.236   <none>                             80/TCP,443/TCP               85s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.167.105   <none>                             443/TCP                      85s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       16m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.32.144    <none>                             443/TCP                      16m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.50.57     <none>                             8080/TCP                     16m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.44.15     <none>                             8081/TCP                     16m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.121.10    172.18.0.2,172.18.0.3,172.18.0.4   80:30222/TCP,443:31054/TCP   14m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        110s
backend-dev    frontend-backend    traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        112s
frontend-dev   backend-frontend    <none>    frontend-dev.local   10.43.218.236                      80, 443   110s
frontend-dev   frontend-frontend   <none>    frontend-dev.local   10.43.218.236                      80, 443   112s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           6m59s
argocd-dev      argocd-dex-server                  1/1     1            1           6m59s
argocd-dev      argocd-notifications-controller    1/1     1            1           6m59s
argocd-dev      argocd-redis                       1/1     1            1           6m59s
argocd-dev      argocd-repo-server                 1/1     1            1           6m59s
argocd-dev      argocd-server                      1/1     1            1           6m59s
backend-dev     backend-backend                    1/1     1            1           112s
backend-dev     frontend-backend                   1/1     1            1           113s
cert-manager    cert-manager                       1/1     1            1           3m35s
cert-manager    cert-manager-cainjector            1/1     1            1           3m35s
cert-manager    cert-manager-webhook               1/1     1            1           3m35s
frontend-dev    backend-frontend                   1/1     1            1           112s
frontend-dev    frontend-frontend                  1/1     1            1           113s
ingress-nginx   ingress-nginx-controller           1/1     1            1           84s
kube-system     coredns                            1/1     1            1           16m
kube-system     local-path-provisioner             1/1     1            1           16m
kube-system     metrics-server                     1/1     1            1           16m
kube-system     sealed-secrets-controller          1/1     1            1           16m
kube-system     traefik                            1/1     1            1           14m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     7m
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-7c71dc76   3         3         3       3            3           <none>          14m
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
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  16m
```

### Jobs (all namespaces)
```bash
+ kubectl get jobs -A
NAMESPACE     NAME                       STATUS     COMPLETIONS   DURATION   AGE
kube-system   helm-install-traefik       Complete   1/1           81s        16m
kube-system   helm-install-traefik-crd   Complete   1/1           75s        16m
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
backend-dev    backend-backend     Deployment/backend-backend     cpu: 2%/70%, memory: 33%/80%   1         3         1          114s
backend-dev    frontend-backend    Deployment/frontend-backend    cpu: 1%/70%, memory: 33%/80%   1         3         1          116s
frontend-dev   backend-frontend    Deployment/backend-frontend    cpu: 1%/70%, memory: 2%/80%    1         3         1          114s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 7%/80%    1         3         1          116s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    251m         8%       523Mi           6%          
k3d-vyking-dev-agent-1    276m         9%       520Mi           6%          
k3d-vyking-dev-server-0   743m         24%      1097Mi          13%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     22m          132Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-6nxq6   2m           45Mi            
argocd-dev      argocd-dex-server-796678d5bc-8489t                  1m           38Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-259lh    1m           34Mi            
argocd-dev      argocd-redis-7c7fb7fc74-czm6x                       4m           3Mi             
argocd-dev      argocd-repo-server-d587f667c-vp7pn                  3m           52Mi            
argocd-dev      argocd-server-556b554c94-p4wjt                      3m           35Mi            
backend-dev     backend-backend-8449699c64-brdsb                    1m           43Mi            
backend-dev     frontend-backend-868c6988f6-t6fwr                   1m           43Mi            
cert-manager    cert-manager-55c69bf5cf-kr9ww                       5m           31Mi            
cert-manager    cert-manager-cainjector-5765b5f544-qf9d6            4m           21Mi            
cert-manager    cert-manager-webhook-6b67444dc9-mgxl9               3m           15Mi            
frontend-dev    backend-frontend-6b7787cff6-w8wfd                   1m           3Mi             
frontend-dev    frontend-frontend-6879df4c4b-9kdjj                  1m           9Mi             
ingress-nginx   ingress-nginx-controller-599c5c76cc-vxb9z           4m           47Mi            
kube-system     coredns-ccb96694c-m4w8s                             9m           16Mi            
kube-system     local-path-provisioner-5cf85fd84d-7cmkd             1m           9Mi             
kube-system     metrics-server-5985cbc9d7-dswkj                     23m          28Mi            
kube-system     sealed-secrets-controller-5655858cbc-4r77j          5m           20Mi            
kube-system     svclb-traefik-7c71dc76-2bkr7                        0m           0Mi             
kube-system     svclb-traefik-7c71dc76-ljqlk                        0m           0Mi             
kube-system     svclb-traefik-7c71dc76-rhd4c                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-q5n52                            4m           50Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
backend-dev     84s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
backend-dev     84s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     99s         Normal    Started                          pod/backend-backend-8449699c64-brdsb                     Started container backend
backend-dev     99s         Normal    Created                          pod/backend-backend-8449699c64-brdsb                     Created container backend
backend-dev     98s         Normal    Created                          pod/frontend-backend-868c6988f6-t6fwr                    Created container backend
backend-dev     97s         Normal    Started                          pod/frontend-backend-868c6988f6-t6fwr                    Started container backend
ingress-nginx   93s         Normal    Started                          pod/ingress-nginx-admission-create-lszqk                 Started container create
ingress-nginx   93s         Normal    Pulled                           pod/ingress-nginx-admission-create-lszqk                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 22.789s (22.789s including waiting). Image size: 23913475 bytes.
ingress-nginx   93s         Normal    Created                          pod/ingress-nginx-admission-create-lszqk                 Created container create
ingress-nginx   90s         Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
default         88s         Warning   FreeDiskSpaceFailed              node/k3d-vyking-dev-server-0                             Failed to garbage collect required amount of images. Attempted to free 7513339494 bytes, but only found 50143627 bytes eligible to free.
ingress-nginx   88s         Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-599c5c76cc to 1
default         88s         Warning   ImageGCFailed                    node/k3d-vyking-dev-server-0                             Failed to garbage collect required amount of images. Attempted to free 7513339494 bytes, but only found 50143627 bytes eligible to free.
ingress-nginx   88s         Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-599c5c76cc           Created pod: ingress-nginx-controller-599c5c76cc-vxb9z
ingress-nginx   87s         Normal    Scheduled                        pod/ingress-nginx-controller-599c5c76cc-vxb9z            Successfully assigned ingress-nginx/ingress-nginx-controller-599c5c76cc-vxb9z to k3d-vyking-dev-agent-0
ingress-nginx   87s         Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-vxb9z            Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
frontend-dev    86s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
frontend-dev    84s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-frontend                 failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
default         80s         Warning   FreeDiskSpaceFailed              node/k3d-vyking-dev-agent-0                              Failed to garbage collect required amount of images. Attempted to free 7567083110 bytes, but only found 50143627 bytes eligible to free.
default         80s         Warning   ImageGCFailed                    node/k3d-vyking-dev-agent-0                              Failed to garbage collect required amount of images. Attempted to free 7567083110 bytes, but only found 50143627 bytes eligible to free.
default         75s         Warning   ImageGCFailed                    node/k3d-vyking-dev-agent-1                              Failed to garbage collect required amount of images. Attempted to free 7468930662 bytes, but only found 550102269 bytes eligible to free.
default         75s         Warning   FreeDiskSpaceFailed              node/k3d-vyking-dev-agent-1                              Failed to garbage collect required amount of images. Attempted to free 7468930662 bytes, but only found 550102269 bytes eligible to free.
backend-dev     56s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-backend                 failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
backend-dev     54s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
ingress-nginx   37s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-vxb9z            Started container controller
ingress-nginx   37s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-vxb9z            Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 49.395s (49.395s including waiting). Image size: 105401148 bytes.
ingress-nginx   37s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-vxb9z            Created container controller
ingress-nginx   36s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
frontend-dev    34s         Normal    Sync                             ingress/backend-frontend                                 Scheduled for sync
frontend-dev    34s         Normal    Sync                             ingress/frontend-frontend                                Scheduled for sync
ingress-nginx   34s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-vxb9z            NGINX reload triggered due to a change in configuration
argocd-dev      34s         Normal    ResourceUpdated                  application/frontend                                     Updated health status: Progressing -> Healthy
argocd-dev      34s         Normal    ResourceUpdated                  application/backend                                      Updated health status: Progressing -> Healthy
ingress-nginx   24s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-9psg8
ingress-nginx   23s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-9psg8                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-9psg8 to k3d-vyking-dev-server-0
ingress-nginx   23s         Normal    Pulling                          pod/ingress-nginx-admission-patch-9psg8                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   12s         Normal    Started                          pod/ingress-nginx-admission-patch-9psg8                  Started container patch
ingress-nginx   12s         Normal    Created                          pod/ingress-nginx-admission-patch-9psg8                  Created container patch
ingress-nginx   12s         Normal    Pulled                           pod/ingress-nginx-admission-patch-9psg8                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 10.469s (10.47s including waiting). Image size: 23913475 bytes.
ingress-nginx   9s          Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE    IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          7m3s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
argocd-applicationset-controller-78f49df558-6nxq6   1/1     Running   0          7m4s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dex-server-796678d5bc-8489t                  1/1     Running   0          7m4s   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
argocd-notifications-controller-6d84bf8458-259lh    1/1     Running   0          7m2s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-redis-7c7fb7fc74-czm6x                       1/1     Running   0          7m4s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-repo-server-d587f667c-vp7pn                  1/1     Running   0          7m4s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-p4wjt                      1/1     Running   0          7m4s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           7m4s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           7m4s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           7m4s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           7m4s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           7m4s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           7m4s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE    CONTAINERS               IMAGES
argocd-application-controller   1/1     7m4s   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.67.24     <none>        8082/TCP                     7m6s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.253.205   <none>        7000/TCP                     7m5s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.109.36    <none>        5556/TCP,5557/TCP,5558/TCP   7m5s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.151.25    <none>        6379/TCP                     7m6s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     7m5s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.142.79    <none>        8081/TCP                     7m5s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.63.45     <none>        8084/TCP                     7m6s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.109.41    <none>        80/TCP,443/TCP               7m5s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     7m9s
argocd-cmd-params-cm            41     7m9s
argocd-gpg-keys-cm              0      7m9s
argocd-notifications-cm         1      7m9s
argocd-rbac-cm                  4      7m9s
argocd-redis-health-configmap   2      7m9s
argocd-ssh-known-hosts-cm       1      7m9s
argocd-tls-certs-cm             0      7m9s
kube-root-ca.crt                1      8m34s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      6m51s
argocd-notifications-secret    Opaque               0      7m9s
argocd-redis                   Opaque               1      7m13s
argocd-secret                  Opaque               3      7m9s
repo-vyking-git                Opaque               2      4m12s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      8m34s
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
2m50s       Normal    ResourceUpdated      application/mysql                                        Updated health status:  -> Healthy
2m50s       Normal    ResourceUpdated      application/mysql                                        Updated sync status:  -> Unknown
2m5s        Normal    OperationStarted     application/backend                                      Initiated automated sync to '280cd94ac6f1a4100bd2bb593fa87ded9d434454'
2m5s        Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
2m5s        Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
2m5s        Normal    OperationStarted     application/frontend                                     Initiated automated sync to '280cd94ac6f1a4100bd2bb593fa87ded9d434454'
2m5s        Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
2m5s        Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
119s        Normal    OperationCompleted   application/frontend                                     Sync operation to 280cd94ac6f1a4100bd2bb593fa87ded9d434454 succeeded
118s        Normal    ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
118s        Normal    ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
117s        Normal    OperationCompleted   application/backend                                      Sync operation to 280cd94ac6f1a4100bd2bb593fa87ded9d434454 succeeded
117s        Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
116s        Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
114s        Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
114s        Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
113s        Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
112s        Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to 280cd94ac6f1a4100bd2bb593fa87ded9d434454 succeeded
38s         Normal    ResourceUpdated      application/backend                                      Updated health status: Progressing -> Healthy
38s         Normal    ResourceUpdated      application/frontend                                     Updated health status: Progressing -> Healthy
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     22m          132Mi           
argocd-applicationset-controller-78f49df558-6nxq6   2m           45Mi            
argocd-dex-server-796678d5bc-8489t                  1m           38Mi            
argocd-notifications-controller-6d84bf8458-259lh    1m           34Mi            
argocd-redis-7c7fb7fc74-czm6x                       4m           3Mi             
argocd-repo-server-d587f667c-vp7pn                  3m           52Mi            
argocd-server-556b554c94-p4wjt                      3m           35Mi            
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
default   6m53s
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
NAME                                 READY   STATUS    RESTARTS   AGE    IP           NODE                     NOMINATED NODE   READINESS GATES
backend-frontend-6b7787cff6-w8wfd    1/1     Running   0          2m1s   10.42.1.11   k3d-vyking-dev-agent-1   <none>           <none>
frontend-frontend-6879df4c4b-9kdjj   1/1     Running   0          2m3s   10.42.1.10   k3d-vyking-dev-agent-1   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS   IMAGES                SELECTOR
backend-frontend    1/1     1            1           2m3s   frontend     vyking-frontend:dev   app=backend-frontend
frontend-frontend   1/1     1            1           2m4s   frontend     vyking-frontend:dev   app=frontend-frontend
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
backend-frontend    ClusterIP   10.43.151.54   <none>        8080/TCP   2m5s   app=backend-frontend
frontend-frontend   ClusterIP   10.43.79.228   <none>        8080/TCP   2m6s   app=frontend-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                CLASS    HOSTS                ADDRESS         PORTS     AGE
backend-frontend    <none>   frontend-dev.local   10.43.218.236   80, 443   2m2s
frontend-frontend   <none>   frontend-dev.local   10.43.218.236   80, 443   2m4s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                             DATA   AGE
backend-frontend-nginx-config    1      2m7s
frontend-frontend-nginx-config   1      2m7s
kube-root-ca.crt                 1      2m20s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m14s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                       MINPODS   MAXPODS   REPLICAS   AGE
backend-frontend    Deployment/backend-frontend    cpu: 1%/70%, memory: 2%/80%   1         3         1          2m4s
frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 7%/80%   1         3         1          2m6s
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
2m8s        Normal    SuccessfulCreate               replicaset/frontend-frontend-6879df4c4b     Created pod: frontend-frontend-6879df4c4b-9kdjj
2m6s        Normal    ScalingReplicaSet              deployment/backend-frontend                 Scaled up replica set backend-frontend-6b7787cff6 to 1
2m4s        Normal    Scheduled                      pod/backend-frontend-6b7787cff6-w8wfd       Successfully assigned frontend-dev/backend-frontend-6b7787cff6-w8wfd to k3d-vyking-dev-agent-1
2m6s        Normal    SuccessfulCreate               replicaset/backend-frontend-6b7787cff6      Created pod: backend-frontend-6b7787cff6-w8wfd
2m3s        Normal    Created                        pod/frontend-frontend-6879df4c4b-9kdjj      Created container frontend
2m3s        Normal    Pulled                         pod/frontend-frontend-6879df4c4b-9kdjj      Container image "vyking-frontend:dev" already present on machine
2m1s        Normal    Created                        pod/backend-frontend-6b7787cff6-w8wfd       Created container frontend
2m1s        Normal    Pulled                         pod/backend-frontend-6b7787cff6-w8wfd       Container image "vyking-frontend:dev" already present on machine
2m1s        Normal    Started                        pod/frontend-frontend-6879df4c4b-9kdjj      Started container frontend
2m          Normal    Started                        pod/backend-frontend-6b7787cff6-w8wfd       Started container frontend
112s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
112s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
112s        Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
110s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-frontend    failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
110s        Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-frontend    invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
110s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-frontend    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
97s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
95s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-frontend    failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
45s         Normal    Sync                           ingress/backend-frontend                    Scheduled for sync
45s         Normal    Sync                           ingress/frontend-frontend                   Scheduled for sync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
NAME                                 CPU(cores)   MEMORY(bytes)   
backend-frontend-6b7787cff6-w8wfd    1m           3Mi             
frontend-frontend-6879df4c4b-9kdjj   1m           9Mi             
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
NAME                                READY   STATUS    RESTARTS   AGE    IP           NODE                      NOMINATED NODE   READINESS GATES
backend-backend-8449699c64-brdsb    1/1     Running   0          2m8s   10.42.0.11   k3d-vyking-dev-agent-0    <none>           <none>
frontend-backend-868c6988f6-t6fwr   1/1     Running   0          2m9s   10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS   IMAGES               SELECTOR
backend-backend    1/1     1            1           2m9s    backend      vyking-backend:dev   app=backend-backend
frontend-backend   1/1     1            1           2m10s   backend      vyking-backend:dev   app=frontend-backend
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
NAME               TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE     SELECTOR
backend-backend    ClusterIP   10.43.81.38     <none>        8081/TCP   2m11s   app=backend-backend
frontend-backend   ClusterIP   10.43.147.216   <none>        8081/TCP   2m12s   app=frontend-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME               CLASS     HOSTS                ADDRESS                            PORTS   AGE
backend-backend    traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      2m9s
frontend-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      2m11s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      2m26s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      2m5s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME               REFERENCE                     TARGETS                        MINPODS   MAXPODS   REPLICAS   AGE
backend-backend    Deployment/backend-backend    cpu: 1%/70%, memory: 33%/80%   1         3         1          2m10s
frontend-backend   Deployment/frontend-backend   cpu: 1%/70%, memory: 33%/80%   1         3         1          2m12s
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
2m12s       Normal    SuccessfulCreate               replicaset/backend-backend-8449699c64      Created pod: backend-backend-8449699c64-brdsb
2m12s       Normal    ScalingReplicaSet              deployment/backend-backend                 Scaled up replica set backend-backend-8449699c64 to 1
2m11s       Normal    Scheduled                      pod/backend-backend-8449699c64-brdsb       Successfully assigned backend-dev/backend-backend-8449699c64-brdsb to k3d-vyking-dev-agent-0
115s        Normal    Pulled                         pod/frontend-backend-868c6988f6-t6fwr      Container image "vyking-backend:dev" already present on machine
2m9s        Warning   Failed                         pod/frontend-backend-868c6988f6-t6fwr      Error: secret "mysql-credentials-dev" not found
117s        Normal    Pulled                         pod/backend-backend-8449699c64-brdsb       Container image "vyking-backend:dev" already present on machine
2m9s        Warning   Failed                         pod/backend-backend-8449699c64-brdsb       Error: secret "mysql-credentials-dev" not found
2m7s        Normal    Unsealed                       sealedsecret/mysql-credentials-dev         SealedSecret unsealed successfully
103s        Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
103s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
103s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
116s        Normal    Created                        pod/backend-backend-8449699c64-brdsb       Created container backend
101s        Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend    invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
116s        Normal    Started                        pod/backend-backend-8449699c64-brdsb       Started container backend
101s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend    failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
101s        Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
115s        Normal    Created                        pod/frontend-backend-868c6988f6-t6fwr      Created container backend
114s        Normal    Started                        pod/frontend-backend-868c6988f6-t6fwr      Started container backend
73s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-backend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
71s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend    failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
NAME                                CPU(cores)   MEMORY(bytes)   
backend-backend-8449699c64-brdsb    1m           43Mi            
frontend-backend-868c6988f6-t6fwr   1m           43Mi            
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
kube-root-ca.crt   1      4m14s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   5      3m26s
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
3m28s       Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
NAME                                       READY   STATUS    RESTARTS   AGE    IP          NODE                      NOMINATED NODE   READINESS GATES
cert-manager-55c69bf5cf-kr9ww              1/1     Running   0          4m5s   10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-cainjector-5765b5f544-qf9d6   1/1     Running   0          4m5s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
cert-manager-webhook-6b67444dc9-mgxl9      1/1     Running   0          4m5s   10.42.1.9   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           4m5s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           4m5s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           4m5s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.192.89    <none>        9402/TCP           4m7s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.222.26    <none>        9402/TCP           4m7s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.200.199   <none>        443/TCP,9402/TCP   4m7s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      4m11s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      3m30s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      4m11s
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
4m7s        Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-mgxl9       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-mgxl9 to k3d-vyking-dev-agent-1
4m5s        Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-mgxl9       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
4m5s        Normal   Pulling             pod/cert-manager-55c69bf5cf-kr9ww               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
4m5s        Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-qf9d6    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
3m40s       Normal   Created             pod/cert-manager-cainjector-5765b5f544-qf9d6    Created container cert-manager-cainjector
3m40s       Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-qf9d6    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 25.24s (25.24s including waiting). Image size: 15426355 bytes.
3m39s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-qf9d6    Started container cert-manager-cainjector
3m37s       Normal   Pulled              pod/cert-manager-55c69bf5cf-kr9ww               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 28.356s (28.356s including waiting). Image size: 21189387 bytes.
3m36s       Normal   Started             pod/cert-manager-55c69bf5cf-kr9ww               Started container cert-manager-controller
3m36s       Normal   Created             pod/cert-manager-55c69bf5cf-kr9ww               Created container cert-manager-controller
3m35s       Normal   Created             pod/cert-manager-webhook-6b67444dc9-mgxl9       Created container cert-manager-webhook
3m35s       Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-mgxl9       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 29.81s (29.81s including waiting). Image size: 18192443 bytes.
3m33s       Normal   Started             pod/cert-manager-webhook-6b67444dc9-mgxl9       Started container cert-manager-webhook
3m22s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-fm9cg
3m21s       Normal   Scheduled           pod/cert-manager-startupapicheck-fm9cg          Successfully assigned cert-manager/cert-manager-startupapicheck-fm9cg to k3d-vyking-dev-agent-0
3m19s       Normal   Pulling             pod/cert-manager-startupapicheck-fm9cg          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
3m8s        Normal   Started             pod/cert-manager-startupapicheck-fm9cg          Started container cert-manager-startupapicheck
3m8s        Normal   Created             pod/cert-manager-startupapicheck-fm9cg          Created container cert-manager-startupapicheck
3m8s        Normal   Pulled              pod/cert-manager-startupapicheck-fm9cg          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 10.841s (10.841s including waiting). Image size: 14095526 bytes.
3m3s        Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-kr9ww              4m           31Mi            
cert-manager-cainjector-5765b5f544-qf9d6   3m           21Mi            
cert-manager-webhook-6b67444dc9-mgxl9      1m           16Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-4r77j   1/1     Running   0          16m   10.42.1.3   k3d-vyking-dev-agent-1   <none>           <none>
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
sealed-secrets-controller   ClusterIP   10.43.50.57   <none>        8080/TCP   16m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
15m         Normal    ScalingReplicaSet      deployment/traefik                                Scaled up replica set traefik-5d45fc8cc9 to 1
15m         Normal    AppliedDaemonSet       service/traefik                                   Applied LoadBalancer DaemonSet kube-system/svclb-traefik-7c71dc76
15m         Normal    SuccessfulCreate       daemonset/svclb-traefik-7c71dc76                  Created pod: svclb-traefik-7c71dc76-2bkr7
15m         Normal    SuccessfulCreate       daemonset/svclb-traefik-7c71dc76                  Created pod: svclb-traefik-7c71dc76-ljqlk
15m         Normal    Scheduled              pod/svclb-traefik-7c71dc76-ljqlk                  Successfully assigned kube-system/svclb-traefik-7c71dc76-ljqlk to k3d-vyking-dev-agent-1
15m         Normal    Scheduled              pod/svclb-traefik-7c71dc76-rhd4c                  Successfully assigned kube-system/svclb-traefik-7c71dc76-rhd4c to k3d-vyking-dev-server-0
15m         Normal    Pulling                pod/svclb-traefik-7c71dc76-ljqlk                  Pulling image "rancher/klipper-lb:v0.4.9"
15m         Normal    Pulling                pod/svclb-traefik-7c71dc76-2bkr7                  Pulling image "rancher/klipper-lb:v0.4.9"
15m         Normal    Pulling                pod/svclb-traefik-7c71dc76-rhd4c                  Pulling image "rancher/klipper-lb:v0.4.9"
15m         Normal    Pulling                pod/traefik-5d45fc8cc9-q5n52                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
15m         Normal    Completed              job/helm-install-traefik                          Job completed
15m         Normal    Pulled                 pod/svclb-traefik-7c71dc76-2bkr7                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
15m         Normal    Pulled                 pod/svclb-traefik-7c71dc76-2bkr7                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 6.298s (6.298s including waiting). Image size: 4990278 bytes.
15m         Normal    Created                pod/svclb-traefik-7c71dc76-2bkr7                  Created container lb-tcp-80
15m         Normal    Started                pod/svclb-traefik-7c71dc76-2bkr7                  Started container lb-tcp-80
15m         Normal    Created                pod/svclb-traefik-7c71dc76-2bkr7                  Created container lb-tcp-443
15m         Normal    Started                pod/svclb-traefik-7c71dc76-2bkr7                  Started container lb-tcp-443
15m         Normal    Pulled                 pod/svclb-traefik-7c71dc76-ljqlk                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 10.374s (10.374s including waiting). Image size: 4990278 bytes.
15m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.3]
15m         Normal    Started                pod/svclb-traefik-7c71dc76-ljqlk                  Started container lb-tcp-80
15m         Normal    Created                pod/svclb-traefik-7c71dc76-ljqlk                  Created container lb-tcp-80
15m         Normal    Pulled                 pod/svclb-traefik-7c71dc76-rhd4c                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 10.066s (10.066s including waiting). Image size: 4990278 bytes.
15m         Normal    Created                pod/svclb-traefik-7c71dc76-rhd4c                  Created container lb-tcp-80
15m         Normal    Pulled                 pod/svclb-traefik-7c71dc76-ljqlk                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
15m         Normal    Created                pod/svclb-traefik-7c71dc76-ljqlk                  Created container lb-tcp-443
15m         Normal    Started                pod/svclb-traefik-7c71dc76-ljqlk                  Started container lb-tcp-443
15m         Normal    Pulled                 pod/svclb-traefik-7c71dc76-rhd4c                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
15m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3] -> [172.18.0.3 172.18.0.4]
15m         Normal    Started                pod/svclb-traefik-7c71dc76-rhd4c                  Started container lb-tcp-80
15m         Normal    Created                pod/svclb-traefik-7c71dc76-rhd4c                  Created container lb-tcp-443
15m         Normal    Started                pod/svclb-traefik-7c71dc76-rhd4c                  Started container lb-tcp-443
15m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
14m         Normal    Created                pod/traefik-5d45fc8cc9-q5n52                      Created container traefik
14m         Normal    Pulled                 pod/traefik-5d45fc8cc9-q5n52                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 32.021s (32.021s including waiting). Image size: 49449055 bytes.
14m         Normal    Started                pod/traefik-5d45fc8cc9-q5n52                      Started container traefik
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
14m         Warning   Unhealthy              pod/traefik-5d45fc8cc9-q5n52                      Readiness probe failed: Get "http://10.42.0.5:9000/ping": dial tcp 10.42.0.5:9000: connect: connection refused
14m         Warning   Unhealthy              pod/traefik-5d45fc8cc9-q5n52                      Readiness probe failed: HTTP probe failed with statuscode: 404
3m42s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-qf9d6_e7bbe968-0bbe-42e1-bdc5-cacfbc950be9 became leader
3m40s       Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-kr9ww-external-cert-manager-controller became leader
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
deployment "backend-frontend" successfully rolled out
```

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

### Deployment frontend-backend
```bash
+ kubectl rollout status deploy frontend-backend -n backend-dev --timeout=30s
deployment "frontend-backend" successfully rolled out
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

### DaemonSet svclb-traefik-7c71dc76
```bash
+ kubectl rollout status daemonset svclb-traefik-7c71dc76 -n kube-system --timeout=30s
daemon set "svclb-traefik-7c71dc76" successfully rolled out
```


✅ Tests complete.
