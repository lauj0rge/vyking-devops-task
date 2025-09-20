# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 05:38:13 CEST
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
Kubernetes control plane is running at https://0.0.0.0:45589
CoreDNS is running at https://0.0.0.0:45589/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:45589/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

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
argocd-dev        Active   8m28s
backend-dev       Active   2m34s
cert-manager      Active   4m6s
default           Active   17m
frontend-dev      Active   2m34s
ingress-nginx     Active   2m27s
kube-node-lease   Active   17m
kube-public       Active   17m
kube-system       Active   17m
mysql-dev         Active   4m18s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS             RESTARTS      AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running            0             7m20s   10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-pwk84   1/1     Running            0             7m21s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-ghd5k                  1/1     Running            0             7m21s   10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-tjlpf    1/1     Running            0             7m21s   10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-56rxp                       1/1     Running            0             7m21s   10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-znccp                  1/1     Running            0             7m20s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-server-556b554c94-qmkrd                      1/1     Running            0             7m21s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-l28xb                       1/1     Running            0             4m      10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-vd84k            1/1     Running            0             4m      10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-sdzwj               1/1     Running            0             4m      10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
ingress-nginx   ingress-nginx-controller-b4b575f8-tltk5             1/1     Running            0             108s    10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-2brv2                             1/1     Running            0             17m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-4tlv2                          0/1     Completed          1             17m     10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-crd-f8fx2                      0/1     Completed          0             17m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-sc4df             1/1     Running            0             17m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     metrics-server-5985cbc9d7-t47bh                     1/1     Running            0             17m     10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-rnfw9          1/1     Running            0             17m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-98bdb6dc-4rf25                        2/2     Running            0             16m     10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-98bdb6dc-nhh5q                        2/2     Running            0             16m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-98bdb6dc-vlmh4                        2/2     Running            0             16m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     traefik-5d45fc8cc9-dcz7v                            1/1     Running            0             16m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
mysql-dev       mysql-0                                             0/1     Error              3 (26s ago)   3m31s   10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
mysql-dev       mysql-backup-29305655-t7ggv                         0/1     ImagePullBackOff   0             3m14s   10.42.2.11   k3d-vyking-dev-server-0   <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.200.34    <none>                             8082/TCP                     7m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.101.26    <none>                             7000/TCP                     7m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.147.117   <none>                             5556/TCP,5557/TCP,5558/TCP   7m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.233.182   <none>                             6379/TCP                     7m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     7m24s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.38.20     <none>                             8081/TCP                     7m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.94.159    <none>                             8084/TCP                     7m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.239.159   <none>                             80/TCP,443/TCP               7m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
cert-manager    cert-manager                            ClusterIP      10.43.3.73      <none>                             9402/TCP                     4m3s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.52.132    <none>                             9402/TCP                     4m3s    app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.141.9     <none>                             443/TCP,9402/TCP             4m3s    app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      17m     <none>
ingress-nginx   ingress-nginx-controller                NodePort       10.43.30.4      <none>                             80:31801/TCP,443:30453/TCP   109s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.148.119   <none>                             443/TCP                      109s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       17m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.189.129   <none>                             443/TCP                      17m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.78.184    <none>                             8080/TCP                     17m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.127.20    <none>                             8081/TCP                     17m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.31.186    172.18.0.2,172.18.0.3,172.18.0.4   80:31884/TCP,443:31209/TCP   16m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
mysql-dev       mysql                                   ClusterIP      10.43.69.217    <none>                             3306/TCP                     3m33s   app=mysql
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
No resources found
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           7m22s
argocd-dev      argocd-dex-server                  1/1     1            1           7m22s
argocd-dev      argocd-notifications-controller    1/1     1            1           7m22s
argocd-dev      argocd-redis                       1/1     1            1           7m23s
argocd-dev      argocd-repo-server                 1/1     1            1           7m22s
argocd-dev      argocd-server                      1/1     1            1           7m23s
cert-manager    cert-manager                       1/1     1            1           4m2s
cert-manager    cert-manager-cainjector            1/1     1            1           4m2s
cert-manager    cert-manager-webhook               1/1     1            1           4m2s
ingress-nginx   ingress-nginx-controller           1/1     1            1           109s
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
argocd-dev   argocd-application-controller   1/1     7m22s
mysql-dev    mysql                           0/1     3m32s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-98bdb6dc   3         3         3       3            3           <none>          16m
```

### PersistentVolumeClaims (all namespaces)
```bash
+ kubectl get pvc -A
NAMESPACE   NAME            STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
mysql-dev   data-mysql-0    Bound    pvc-220ffcdf-9ec2-4229-9d57-fce6d28ba334   1Gi        RWO            local-path     <unset>                 3m33s
mysql-dev   mysql-backups   Bound    pvc-feaf4ba1-cca5-4120-98a0-1198215713ac   2Gi        RWO            local-path     <unset>                 3m34s
```

### PersistentVolumes
```bash
+ kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                     STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-220ffcdf-9ec2-4229-9d57-fce6d28ba334   1Gi        RWO            Delete           Bound    mysql-dev/data-mysql-0    local-path     <unset>                          3m22s
pvc-feaf4ba1-cca5-4120-98a0-1198215713ac   2Gi        RWO            Delete           Bound    mysql-dev/mysql-backups   local-path     <unset>                          3m
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
kube-system   helm-install-traefik       Complete   1/1           81s        17m
kube-system   helm-install-traefik-crd   Complete   1/1           75s        17m
mysql-dev     mysql-backup-29305655      Running    0/1           3m17s      3m17s
```

### CronJobs (all namespaces)
```bash
+ kubectl get cronjobs -A
NAMESPACE   NAME           SCHEDULE      TIMEZONE   SUSPEND   ACTIVE   LAST SCHEDULE   AGE
mysql-dev   mysql-backup   */5 * * * *   <none>     False     1        3m17s           3m34s
```

### Horizontal Pod Autoscalers (all namespaces)
```bash
+ kubectl get hpa -A
No resources found
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    253m         8%       477Mi           6%          
k3d-vyking-dev-agent-1    663m         22%      498Mi           6%          
k3d-vyking-dev-server-0   386m         12%      1165Mi          14%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     18m          126Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-pwk84   4m           34Mi            
argocd-dev      argocd-dex-server-796678d5bc-ghd5k                  3m           72Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-tjlpf    2m           20Mi            
argocd-dev      argocd-redis-7c7fb7fc74-56rxp                       4m           3Mi             
argocd-dev      argocd-repo-server-d587f667c-znccp                  10m          37Mi            
argocd-dev      argocd-server-556b554c94-qmkrd                      3m           37Mi            
cert-manager    cert-manager-55c69bf5cf-l28xb                       5m           23Mi            
cert-manager    cert-manager-cainjector-5765b5f544-vd84k            5m           23Mi            
cert-manager    cert-manager-webhook-6b67444dc9-sdzwj               2m           20Mi            
ingress-nginx   ingress-nginx-controller-b4b575f8-tltk5             5m           46Mi            
kube-system     coredns-ccb96694c-2brv2                             8m           15Mi            
kube-system     local-path-provisioner-5cf85fd84d-sc4df             1m           17Mi            
kube-system     metrics-server-5985cbc9d7-t47bh                     20m          22Mi            
kube-system     sealed-secrets-controller-5655858cbc-rnfw9          7m           17Mi            
kube-system     svclb-traefik-98bdb6dc-4rf25                        0m           0Mi             
kube-system     svclb-traefik-98bdb6dc-nhh5q                        0m           0Mi             
kube-system     svclb-traefik-98bdb6dc-vlmh4                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-dcz7v                            4m           33Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
argocd-dev      2m25s       Normal    ResourceUpdated                  application/frontend                                             Updated sync status:  -> Unknown
argocd-dev      2m25s       Normal    OperationCompleted               application/mysql-sealed-secrets                                 Sync operation to 41b23153679c85c0213fe55325e99975bdec1798 succeeded
argocd-dev      2m25s       Normal    ResourceUpdated                  application/frontend                                             Updated health status:  -> Healthy
argocd-dev      2m25s       Normal    ResourceUpdated                  application/backend                                              Updated sync status:  -> Unknown
argocd-dev      2m25s       Normal    ResourceUpdated                  application/backend                                              Updated health status:  -> Healthy
ingress-nginx   2m22s       Normal    Scheduled                        pod/ingress-nginx-admission-create-c6g9z                         Successfully assigned ingress-nginx/ingress-nginx-admission-create-c6g9z to k3d-vyking-dev-agent-0
ingress-nginx   2m23s       Normal    SuccessfulCreate                 job/ingress-nginx-admission-create                               Created pod: ingress-nginx-admission-create-c6g9z
ingress-nginx   2m22s       Normal    Pulling                          pod/ingress-nginx-admission-create-c6g9z                         Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24"
ingress-nginx   2m2s        Normal    Created                          pod/ingress-nginx-admission-create-c6g9z                         Created container create
ingress-nginx   2m2s        Normal    Pulled                           pod/ingress-nginx-admission-create-c6g9z                         Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 19.097s (19.097s including waiting). Image size: 28450888 bytes.
ingress-nginx   2m1s        Normal    Started                          pod/ingress-nginx-admission-create-c6g9z                         Started container create
ingress-nginx   115s        Normal    Completed                        job/ingress-nginx-admission-create                               Job completed
ingress-nginx   113s        Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                              Scaled up replica set ingress-nginx-controller-b4b575f8 to 1
ingress-nginx   113s        Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-b4b575f8                     Created pod: ingress-nginx-controller-b4b575f8-tltk5
ingress-nginx   112s        Normal    Scheduled                        pod/ingress-nginx-controller-b4b575f8-tltk5                      Successfully assigned ingress-nginx/ingress-nginx-controller-b4b575f8-tltk5 to k3d-vyking-dev-agent-0
ingress-nginx   110s        Normal    Pulling                          pod/ingress-nginx-controller-b4b575f8-tltk5                      Pulling image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef"
mysql-dev       56s         Normal    Pulled                           pod/mysql-0                                                      Successfully pulled image "bitnami/mysql:8.0" in 2m25.921s (2m25.921s including waiting). Image size: 239770540 bytes.
mysql-dev       6s          Normal    Created                          pod/mysql-0                                                      Created container mysql
mysql-dev       6s          Normal    Started                          pod/mysql-0                                                      Started container mysql
argocd-dev      52s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Progressing -> Healthy
ingress-nginx   51s         Normal    Pulled                           pod/ingress-nginx-controller-b4b575f8-tltk5                      Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef" in 59.21s (59.21s including waiting). Image size: 115287729 bytes.
ingress-nginx   51s         Normal    Created                          pod/ingress-nginx-controller-b4b575f8-tltk5                      Created container controller
argocd-dev      50s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Healthy -> Progressing
mysql-dev       6s          Normal    Pulled                           pod/mysql-0                                                      Container image "bitnami/mysql:8.0" already present on machine
ingress-nginx   50s         Normal    Started                          pod/ingress-nginx-controller-b4b575f8-tltk5                      Started container controller
argocd-dev      49s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Progressing -> Healthy
mysql-dev       5s          Warning   BackOff                          pod/mysql-0                                                      Back-off restarting failed container mysql in pod mysql-0_mysql-dev(05a202f6-dd8a-4b07-9e2d-8147f8b632c3)
ingress-nginx   47s         Normal    CREATE                           configmap/ingress-nginx-controller                               ConfigMap ingress-nginx/ingress-nginx-controller
argocd-dev      47s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Healthy -> Progressing
ingress-nginx   46s         Warning   RELOAD                           pod/ingress-nginx-controller-b4b575f8-tltk5                      Error reloading NGINX: exit status 1...
ingress-nginx   43s         Normal    RELOAD                           pod/ingress-nginx-controller-b4b575f8-tltk5                      NGINX reload triggered due to a change in configuration
argocd-dev      30s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Progressing -> Healthy
argocd-dev      29s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Healthy -> Progressing
ingress-nginx   27s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                                Created pod: ingress-nginx-admission-patch-bb9n5
ingress-nginx   26s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-bb9n5                          Successfully assigned ingress-nginx/ingress-nginx-admission-patch-bb9n5 to k3d-vyking-dev-agent-1
ingress-nginx   26s         Normal    Pulling                          pod/ingress-nginx-admission-patch-bb9n5                          Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24"
ingress-nginx   15s         Normal    Created                          pod/ingress-nginx-admission-patch-bb9n5                          Created container patch
ingress-nginx   15s         Normal    Started                          pod/ingress-nginx-admission-patch-bb9n5                          Started container patch
ingress-nginx   15s         Normal    Pulled                           pod/ingress-nginx-admission-patch-bb9n5                          Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 10.901s (10.901s including waiting). Image size: 28450888 bytes.
ingress-nginx   11s         Normal    Completed                        job/ingress-nginx-admission-patch                                Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          7m25s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
argocd-applicationset-controller-78f49df558-pwk84   1/1     Running   0          7m26s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dex-server-796678d5bc-ghd5k                  1/1     Running   0          7m26s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-notifications-controller-6d84bf8458-tjlpf    1/1     Running   0          7m26s   10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
argocd-redis-7c7fb7fc74-56rxp                       1/1     Running   0          7m26s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-repo-server-d587f667c-znccp                  1/1     Running   0          7m25s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-server-556b554c94-qmkrd                      1/1     Running   0          7m26s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           7m27s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           7m27s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           7m27s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           7m28s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           7m27s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           7m28s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     7m27s   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.200.34    <none>        8082/TCP                     7m29s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.101.26    <none>        7000/TCP                     7m29s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.147.117   <none>        5556/TCP,5557/TCP,5558/TCP   7m29s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.233.182   <none>        6379/TCP                     7m29s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     7m29s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.38.20     <none>        8081/TCP                     7m29s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.94.159    <none>        8084/TCP                     7m29s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.239.159   <none>        80/TCP,443/TCP               7m29s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     7m32s
argocd-cmd-params-cm            41     7m32s
argocd-gpg-keys-cm              0      7m32s
argocd-notifications-cm         1      7m32s
argocd-rbac-cm                  4      7m32s
argocd-redis-health-configmap   2      7m32s
argocd-ssh-known-hosts-cm       1      7m32s
argocd-tls-certs-cm             0      7m32s
kube-root-ca.crt                1      8m35s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      7m7s
argocd-notifications-secret    Opaque               0      7m32s
argocd-redis                   Opaque               1      7m35s
argocd-secret                  Opaque               3      7m32s
repo-vyking-git                Opaque               2      4m42s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      8m35s
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
3m50s       Normal    OperationStarted     application/mysql                                        Initiated automated sync to '41b23153679c85c0213fe55325e99975bdec1798'
3m43s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
3m41s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
3m38s       Normal    OperationCompleted   application/mysql                                        Sync operation to 41b23153679c85c0213fe55325e99975bdec1798 succeeded
3m36s       Normal    ResourceUpdated      application/mysql                                        Updated health status: Missing -> Progressing
3m35s       Normal    ResourceUpdated      application/mysql                                        Updated sync status: OutOfSync -> Synced
2m30s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
2m30s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
2m29s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
2m28s       Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> Unknown
2m28s       Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Healthy
2m28s       Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Healthy
2m28s       Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> Unknown
2m28s       Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to 41b23153679c85c0213fe55325e99975bdec1798 succeeded
55s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Progressing -> Healthy
53s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Healthy -> Progressing
52s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Progressing -> Healthy
50s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Healthy -> Progressing
33s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Progressing -> Healthy
32s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Healthy -> Progressing
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     18m          126Mi           
argocd-applicationset-controller-78f49df558-pwk84   4m           34Mi            
argocd-dex-server-796678d5bc-ghd5k                  3m           72Mi            
argocd-notifications-controller-6d84bf8458-tjlpf    2m           20Mi            
argocd-redis-7c7fb7fc74-56rxp                       4m           3Mi             
argocd-repo-server-d587f667c-znccp                  10m          37Mi            
argocd-server-556b554c94-qmkrd                      3m           37Mi            
```


### Applications
```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
backend                Unknown       Healthy
frontend               Unknown       Healthy
mysql                  Synced        Progressing
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
default   7m7s
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
No resources found in frontend-dev namespace.
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
No resources found in frontend-dev namespace.
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
No resources found in frontend-dev namespace.
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
No resources found in frontend-dev namespace.
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      2m45s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m34s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
No resources found in frontend-dev namespace.
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
LAST SEEN   TYPE      REASON               OBJECT                                   MESSAGE
2m41s       Normal    Issuing              certificate/frontend-cert-dev            Issuing certificate as Secret does not exist
2m40s       Normal    Generated            certificate/frontend-cert-dev            Stored new private key in temporary Secret resource "frontend-cert-dev-655zg"
2m39s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m39s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m39s       Normal    Requested            certificate/frontend-cert-dev            Created new CertificateRequest resource "frontend-cert-dev-1"
2m39s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m39s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m38s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m38s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m38s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m39s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m38s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m38s       Normal    cert-manager.io      certificaterequest/frontend-cert-dev-1   Certificate request has been approved by cert-manager.io
2m38s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m36s       Normal    CertificateIssued    certificaterequest/frontend-cert-dev-1   Certificate fetched from issuer successfully
2m36s       Warning   BadConfig            certificaterequest/frontend-cert-dev-1   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
2m34s       Normal    Issuing              certificate/frontend-cert-dev            The certificate has been successfully issued
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
No resources found in frontend-dev namespace.
```


## ⚙️ Backend (`backend-dev`)
### Pods
```bash
+ kubectl get pods -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
No resources found in backend-dev namespace.
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
No resources found in backend-dev namespace.
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
No resources found in backend-dev namespace.
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      2m51s
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
No resources found in backend-dev namespace.
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
LAST SEEN   TYPE     REASON     OBJECT                               MESSAGE
2m41s       Normal   Unsealed   sealedsecret/mysql-credentials-dev   SealedSecret unsealed successfully
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
No resources found in backend-dev namespace.
```


## 🛢️ MySQL (`mysql-dev`)
### Pods
```bash
+ kubectl get pods -n mysql-dev -o wide
NAME                          READY   STATUS             RESTARTS      AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
mysql-0                       0/1     CrashLoopBackOff   3 (21s ago)   3m52s   10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
mysql-backup-29305655-t7ggv   0/1     ErrImagePull       0             3m35s   10.42.2.11   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### StatefulSets
```bash
+ kubectl get statefulset -n mysql-dev -o wide
NAME    READY   AGE     CONTAINERS   IMAGES
mysql   0/1     3m52s   mysql        bitnami/mysql:8.0
```

### DaemonSets
```bash
+ kubectl get daemonset -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Services
```bash
+ kubectl get svc -n mysql-dev -o wide
NAME    TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE     SELECTOR
mysql   ClusterIP   10.43.69.217   <none>        3306/TCP   3m54s   app=mysql
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
kube-root-ca.crt   1      4m40s
mysql-initdb       2      3m54s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   6      4m1s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n mysql-dev
No resources found in mysql-dev namespace.
```

### Jobs
```bash
+ kubectl get jobs -n mysql-dev
NAME                    STATUS    COMPLETIONS   DURATION   AGE
mysql-backup-29305655   Running   0/1           3m38s      3m38s
```

### CronJobs
```bash
+ kubectl get cronjobs -n mysql-dev
NAME           SCHEDULE      TIMEZONE   SUSPEND   ACTIVE   LAST SCHEDULE   AGE
mysql-backup   */5 * * * *   <none>     False     1        3m38s           3m55s
```

### PersistentVolumeClaims
```bash
+ kubectl get pvc -n mysql-dev
NAME            STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
data-mysql-0    Bound    pvc-220ffcdf-9ec2-4229-9d57-fce6d28ba334   1Gi        RWO            local-path     <unset>                 3m56s
mysql-backups   Bound    pvc-feaf4ba1-cca5-4120-98a0-1198215713ac   2Gi        RWO            local-path     <unset>                 3m57s
```

### Recent Events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"mysql-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
3m55s       Normal    Provisioning            persistentvolumeclaim/data-mysql-0    External provisioner is provisioning volume for claim "mysql-dev/data-mysql-0"
3m44s       Normal    ProvisioningSucceeded   persistentvolumeclaim/data-mysql-0    Successfully provisioned volume pvc-220ffcdf-9ec2-4229-9d57-fce6d28ba334
3m44s       Normal    Scheduled               pod/mysql-0                           Successfully assigned mysql-dev/mysql-0 to k3d-vyking-dev-agent-1
3m42s       Normal    Pulling                 pod/mysql-0                           Pulling image "bitnami/mysql:8.0"
3m39s       Normal    SuccessfulCreate        job/mysql-backup-29305655             Created pod: mysql-backup-29305655-t7ggv
3m39s       Normal    Provisioning            persistentvolumeclaim/mysql-backups   External provisioner is provisioning volume for claim "mysql-dev/mysql-backups"
3m34s       Normal    ExternalProvisioning    persistentvolumeclaim/mysql-backups   Waiting for a volume to be created either by the external provisioner 'rancher.io/local-path' or manually by the system administrator. If volume creation is delayed, please verify that the provisioner is running and correctly registered.
3m39s       Normal    SuccessfulCreate        cronjob/mysql-backup                  Created job mysql-backup-29305655
3m23s       Normal    Scheduled               pod/mysql-backup-29305655-t7ggv       Successfully assigned mysql-dev/mysql-backup-29305655-t7ggv to k3d-vyking-dev-server-0
3m23s       Normal    ProvisioningSucceeded   persistentvolumeclaim/mysql-backups   Successfully provisioned volume pvc-feaf4ba1-cca5-4120-98a0-1198215713ac
111s        Normal    Pulling                 pod/mysql-backup-29305655-t7ggv       Pulling image "bitnami/mysql:8"
99s         Warning   Failed                  pod/mysql-backup-29305655-t7ggv       Error: ImagePullBackOff
86s         Normal    BackOff                 pod/mysql-backup-29305655-t7ggv       Back-off pulling image "bitnami/mysql:8"
109s        Warning   Failed                  pod/mysql-backup-29305655-t7ggv       Error: ErrImagePull
109s        Warning   Failed                  pod/mysql-backup-29305655-t7ggv       Failed to pull image "bitnami/mysql:8": rpc error: code = NotFound desc = failed to pull and unpack image "docker.io/bitnami/mysql:8": failed to resolve reference "docker.io/bitnami/mysql:8": docker.io/bitnami/mysql:8: not found
26s         Normal    Created                 pod/mysql-0                           Created container mysql
76s         Normal    Pulled                  pod/mysql-0                           Successfully pulled image "bitnami/mysql:8.0" in 2m25.921s (2m25.921s including waiting). Image size: 239770540 bytes.
26s         Normal    Started                 pod/mysql-0                           Started container mysql
26s         Normal    Pulled                  pod/mysql-0                           Container image "bitnami/mysql:8.0" already present on machine
13s         Warning   BackOff                 pod/mysql-0                           Back-off restarting failed container mysql in pod mysql-0_mysql-dev(05a202f6-dd8a-4b07-9e2d-8147f8b632c3)
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n mysql-dev
error: Metrics not available for pod mysql-dev/mysql-0, age: 3m57.335621559s

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
cert-manager-55c69bf5cf-l28xb              1/1     Running   0          4m30s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-cainjector-5765b5f544-vd84k   1/1     Running   0          4m30s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-webhook-6b67444dc9-sdzwj      1/1     Running   0          4m30s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           4m31s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           4m31s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           4m31s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.3.73     <none>        9402/TCP           4m33s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.52.132   <none>        9402/TCP           4m33s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.141.9    <none>        443/TCP,9402/TCP   4m33s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      4m38s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      4m1s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      4m37s
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
4m33s       Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-sdzwj       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-sdzwj to k3d-vyking-dev-server-0
4m31s       Normal   Pulling             pod/cert-manager-55c69bf5cf-l28xb               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
4m30s       Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-sdzwj       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
4m30s       Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-vd84k    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
4m12s       Normal   Created             pod/cert-manager-cainjector-5765b5f544-vd84k    Created container cert-manager-cainjector
4m12s       Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-vd84k    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 17.219s (17.219s including waiting). Image size: 15426355 bytes.
4m12s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-vd84k    Started container cert-manager-cainjector
4m9s        Normal   Pulled              pod/cert-manager-55c69bf5cf-l28xb               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 21.826s (21.826s including waiting). Image size: 21189387 bytes.
4m9s        Normal   Created             pod/cert-manager-55c69bf5cf-l28xb               Created container cert-manager-controller
4m8s        Normal   Started             pod/cert-manager-55c69bf5cf-l28xb               Started container cert-manager-controller
4m6s        Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-sdzwj       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 24.072s (24.125s including waiting). Image size: 18192443 bytes.
4m6s        Normal   Created             pod/cert-manager-webhook-6b67444dc9-sdzwj       Created container cert-manager-webhook
4m5s        Normal   Started             pod/cert-manager-webhook-6b67444dc9-sdzwj       Started container cert-manager-webhook
3m51s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-v2c4m
3m51s       Normal   Scheduled           pod/cert-manager-startupapicheck-v2c4m          Successfully assigned cert-manager/cert-manager-startupapicheck-v2c4m to k3d-vyking-dev-agent-0
3m50s       Normal   Pulling             pod/cert-manager-startupapicheck-v2c4m          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
3m39s       Normal   Pulled              pod/cert-manager-startupapicheck-v2c4m          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 11.02s (11.02s including waiting). Image size: 14095526 bytes.
3m39s       Normal   Created             pod/cert-manager-startupapicheck-v2c4m          Created container cert-manager-startupapicheck
3m38s       Normal   Started             pod/cert-manager-startupapicheck-v2c4m          Started container cert-manager-startupapicheck
3m30s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-l28xb              5m           23Mi            
cert-manager-cainjector-5765b5f544-vd84k   3m           23Mi            
cert-manager-webhook-6b67444dc9-sdzwj      1m           19Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-rnfw9   1/1     Running   0          17m   10.42.1.2   k3d-vyking-dev-agent-1   <none>           <none>
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
NAME                        TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.78.184   <none>        8080/TCP   17m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
16m         Normal    Pulling                pod/svclb-traefik-98bdb6dc-4rf25                                 Pulling image "rancher/klipper-lb:v0.4.9"
16m         Normal    Pulling                pod/svclb-traefik-98bdb6dc-nhh5q                                 Pulling image "rancher/klipper-lb:v0.4.9"
16m         Normal    Completed              job/helm-install-traefik                                         Job completed
16m         Normal    Pulling                pod/traefik-5d45fc8cc9-dcz7v                                     Pulling image "rancher/mirrored-library-traefik:2.11.18"
16m         Normal    Created                pod/svclb-traefik-98bdb6dc-4rf25                                 Created container lb-tcp-80
16m         Normal    Pulled                 pod/svclb-traefik-98bdb6dc-4rf25                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 7.715s (7.715s including waiting). Image size: 4990278 bytes.
16m         Normal    Pulling                pod/svclb-traefik-98bdb6dc-vlmh4                                 Pulling image "rancher/klipper-lb:v0.4.9"
16m         Normal    Created                pod/svclb-traefik-98bdb6dc-4rf25                                 Created container lb-tcp-443
16m         Normal    Started                pod/svclb-traefik-98bdb6dc-nhh5q                                 Started container lb-tcp-80
16m         Normal    Pulled                 pod/svclb-traefik-98bdb6dc-nhh5q                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
16m         Normal    Created                pod/svclb-traefik-98bdb6dc-nhh5q                                 Created container lb-tcp-80
16m         Normal    Pulled                 pod/svclb-traefik-98bdb6dc-4rf25                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
16m         Normal    Pulled                 pod/svclb-traefik-98bdb6dc-nhh5q                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 8.326s (8.326s including waiting). Image size: 4990278 bytes.
16m         Normal    Started                pod/svclb-traefik-98bdb6dc-4rf25                                 Started container lb-tcp-80
16m         Normal    Created                pod/svclb-traefik-98bdb6dc-nhh5q                                 Created container lb-tcp-443
16m         Normal    Started                pod/svclb-traefik-98bdb6dc-4rf25                                 Started container lb-tcp-443
16m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [] -> [172.18.0.2]
16m         Normal    Started                pod/svclb-traefik-98bdb6dc-nhh5q                                 Started container lb-tcp-443
16m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.2] -> [172.18.0.2 172.18.0.4]
16m         Normal    Created                pod/svclb-traefik-98bdb6dc-vlmh4                                 Created container lb-tcp-80
16m         Normal    Pulled                 pod/svclb-traefik-98bdb6dc-vlmh4                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 10.247s (10.247s including waiting). Image size: 4990278 bytes.
16m         Normal    Created                pod/svclb-traefik-98bdb6dc-vlmh4                                 Created container lb-tcp-443
16m         Normal    Pulled                 pod/svclb-traefik-98bdb6dc-vlmh4                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
16m         Normal    Started                pod/svclb-traefik-98bdb6dc-vlmh4                                 Started container lb-tcp-80
16m         Normal    Started                pod/svclb-traefik-98bdb6dc-vlmh4                                 Started container lb-tcp-443
16m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
16m         Normal    Pulled                 pod/traefik-5d45fc8cc9-dcz7v                                     Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 25.365s (25.365s including waiting). Image size: 49449055 bytes.
16m         Normal    Created                pod/traefik-5d45fc8cc9-dcz7v                                     Created container traefik
16m         Normal    Started                pod/traefik-5d45fc8cc9-dcz7v                                     Started container traefik
16m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
4m11s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election                    cert-manager-cainjector-5765b5f544-vd84k_215a09b3-ee65-45ad-ba2c-8d293ef17bec became leader
4m10s       Normal    LeaderElection         lease/cert-manager-controller                                    cert-manager-55c69bf5cf-l28xb-external-cert-manager-controller became leader
4m4s        Normal    Pulling                pod/helper-pod-create-pvc-220ffcdf-9ec2-4229-9d57-fce6d28ba334   Pulling image "rancher/mirrored-library-busybox:1.36.1"
4m          Normal    Pulled                 pod/helper-pod-create-pvc-220ffcdf-9ec2-4229-9d57-fce6d28ba334   Successfully pulled image "rancher/mirrored-library-busybox:1.36.1" in 3.627s (3.627s including waiting). Image size: 2147340 bytes.
4m          Normal    Created                pod/helper-pod-create-pvc-220ffcdf-9ec2-4229-9d57-fce6d28ba334   Created container helper-pod
3m59s       Normal    Started                pod/helper-pod-create-pvc-220ffcdf-9ec2-4229-9d57-fce6d28ba334   Started container helper-pod
3m48s       Normal    Pulling                pod/helper-pod-create-pvc-feaf4ba1-cca5-4120-98a0-1198215713ac   Pulling image "rancher/mirrored-library-busybox:1.36.1"
3m41s       Normal    Pulled                 pod/helper-pod-create-pvc-feaf4ba1-cca5-4120-98a0-1198215713ac   Successfully pulled image "rancher/mirrored-library-busybox:1.36.1" in 7.222s (7.222s including waiting). Image size: 2147340 bytes.
3m40s       Normal    Created                pod/helper-pod-create-pvc-feaf4ba1-cca5-4120-98a0-1198215713ac   Created container helper-pod
3m40s       Normal    Started                pod/helper-pod-create-pvc-feaf4ba1-cca5-4120-98a0-1198215713ac   Started container helper-pod
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


### Namespace `mysql-dev`
### StatefulSet mysql
```bash
+ kubectl rollout status statefulset mysql -n mysql-dev --timeout=30s
Waiting for 1 pods to be ready...
partitioned roll out complete: 1 new pods have been updated...
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

### DaemonSet svclb-traefik-98bdb6dc
```bash
+ kubectl rollout status daemonset svclb-traefik-98bdb6dc -n kube-system --timeout=30s
daemon set "svclb-traefik-98bdb6dc" successfully rolled out
```


✅ Tests complete.
