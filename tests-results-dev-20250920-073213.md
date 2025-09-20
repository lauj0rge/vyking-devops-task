# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 07:32:13 CEST
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
Kubernetes control plane is running at https://0.0.0.0:38769
CoreDNS is running at https://0.0.0.0:38769/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:38769/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

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
backend-dev       Active   3m8s
cert-manager      Active   5m8s
default           Active   19m
frontend-dev      Active   3m8s
ingress-nginx     Active   2m59s
kube-node-lease   Active   19m
kube-public       Active   19m
kube-system       Active   19m
mysql-dev         Active   5m20s
vyking-app        Active   3m8s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS             RESTARTS      AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running            0             9m7s    10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-gz485   1/1     Running            0             9m8s    10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-7zpkt                  1/1     Running            0             9m7s    10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-xkl8z    1/1     Running            0             9m8s    10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-t96ql                       1/1     Running            0             9m8s    10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-lt65n                  1/1     Running            0             9m8s    10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-server-556b554c94-cbgsk                      1/1     Running            0             9m8s    10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-m66s6                       1/1     Running            0             5m2s    10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-6qnn7            1/1     Running            0             5m2s    10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-f5ztg               1/1     Running            0             5m2s    10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
ingress-nginx   ingress-nginx-controller-b4b575f8-czm8x             1/1     Running            0             2m17s   10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-pfszs                             1/1     Running            0             19m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-crd-gxw9h                      0/1     Completed          0             19m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     helm-install-traefik-s8lfl                          0/1     Completed          2             19m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-h294c             1/1     Running            0             19m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     metrics-server-5985cbc9d7-pcjkh                     1/1     Running            0             19m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-bmnm6          1/1     Running            0             19m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-dac4b1ac-kzf85                        2/2     Running            0             17m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-dac4b1ac-qtxzg                        2/2     Running            0             17m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-dac4b1ac-wtb2k                        2/2     Running            0             17m     10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     traefik-5d45fc8cc9-vxffx                            1/1     Running            0             17m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
mysql-dev       mysql-0                                             0/1     CrashLoopBackOff   3 (14s ago)   4m13s   10.42.2.11   k3d-vyking-dev-server-0   <none>           <none>
mysql-dev       mysql-backup-29305770-tjr7n                         0/1     ErrImagePull       0             2m18s   10.42.1.12   k3d-vyking-dev-agent-1    <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.8.145     <none>                             8082/TCP                     9m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.82.207    <none>                             7000/TCP                     9m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.129.109   <none>                             5556/TCP,5557/TCP,5558/TCP   9m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.208.150   <none>                             6379/TCP                     9m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     9m10s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.245.80    <none>                             8081/TCP                     9m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.212.102   <none>                             8084/TCP                     9m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.113.148   <none>                             80/TCP,443/TCP               9m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
cert-manager    cert-manager                            ClusterIP      10.43.21.233    <none>                             9402/TCP                     5m5s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.246.191   <none>                             9402/TCP                     5m5s    app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.250.71    <none>                             443/TCP,9402/TCP             5m5s    app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      19m     <none>
ingress-nginx   ingress-nginx-controller                NodePort       10.43.64.198    <none>                             80:31219/TCP,443:30878/TCP   2m18s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.201.167   <none>                             443/TCP                      2m18s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       19m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.51.158    <none>                             443/TCP                      19m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.39.178    <none>                             8080/TCP                     19m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.49.200    <none>                             8081/TCP                     19m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.163.197   172.18.0.2,172.18.0.3,172.18.0.4   80:32006/TCP,443:30886/TCP   17m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
mysql-dev       mysql                                   ClusterIP      10.43.56.214    <none>                             3306/TCP                     4m14s   app=mysql
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
argocd-dev      argocd-applicationset-controller   1/1     1            1           9m11s
argocd-dev      argocd-dex-server                  1/1     1            1           9m11s
argocd-dev      argocd-notifications-controller    1/1     1            1           9m11s
argocd-dev      argocd-redis                       1/1     1            1           9m11s
argocd-dev      argocd-repo-server                 1/1     1            1           9m11s
argocd-dev      argocd-server                      1/1     1            1           9m11s
cert-manager    cert-manager                       1/1     1            1           5m6s
cert-manager    cert-manager-cainjector            1/1     1            1           5m6s
cert-manager    cert-manager-webhook               1/1     1            1           5m6s
ingress-nginx   ingress-nginx-controller           1/1     1            1           2m19s
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
argocd-dev   argocd-application-controller   1/1     9m10s
mysql-dev    mysql                           0/1     4m16s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-dac4b1ac   3         3         3       3            3           <none>          17m
```

### PersistentVolumeClaims (all namespaces)
```bash
+ kubectl get pvc -A
NAMESPACE   NAME            STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
mysql-dev   data-mysql-0    Bound    pvc-b4d84355-527d-4413-b81e-53e94a6d146f   1Gi        RWO            local-path     <unset>                 4m16s
mysql-dev   mysql-backups   Bound    pvc-99c4373f-35db-444d-ac3f-f347ea3fb424   2Gi        RWO            local-path     <unset>                 4m18s
```

### PersistentVolumes
```bash
+ kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                     STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-99c4373f-35db-444d-ac3f-f347ea3fb424   2Gi        RWO            Delete           Bound    mysql-dev/mysql-backups   local-path     <unset>                          2m5s
pvc-b4d84355-527d-4413-b81e-53e94a6d146f   1Gi        RWO            Delete           Bound    mysql-dev/data-mysql-0    local-path     <unset>                          4m2s
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
kube-system   helm-install-traefik       Complete   1/1           105s       19m
kube-system   helm-install-traefik-crd   Complete   1/1           90s        19m
mysql-dev     mysql-backup-29305770      Running    0/1           2m23s      2m23s
```

### CronJobs (all namespaces)
```bash
+ kubectl get cronjobs -A
NAMESPACE   NAME           SCHEDULE      TIMEZONE   SUSPEND   ACTIVE   LAST SCHEDULE   AGE
mysql-dev   mysql-backup   */5 * * * *   <none>     False     1        2m23s           4m18s
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
k3d-vyking-dev-agent-0    354m         11%      490Mi           6%          
k3d-vyking-dev-agent-1    243m         8%       505Mi           6%          
k3d-vyking-dev-server-0   328m         10%      1161Mi          14%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     14m          124Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-gz485   2m           23Mi            
argocd-dev      argocd-dex-server-796678d5bc-7zpkt                  1m           32Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-xkl8z    1m           33Mi            
argocd-dev      argocd-redis-7c7fb7fc74-t96ql                       4m           2Mi             
argocd-dev      argocd-repo-server-d587f667c-lt65n                  4m           38Mi            
argocd-dev      argocd-server-556b554c94-cbgsk                      4m           34Mi            
cert-manager    cert-manager-55c69bf5cf-m66s6                       4m           38Mi            
cert-manager    cert-manager-cainjector-5765b5f544-6qnn7            4m           23Mi            
cert-manager    cert-manager-webhook-6b67444dc9-f5ztg               1m           12Mi            
ingress-nginx   ingress-nginx-controller-b4b575f8-czm8x             4m           47Mi            
kube-system     coredns-ccb96694c-pfszs                             7m           17Mi            
kube-system     local-path-provisioner-5cf85fd84d-h294c             2m           23Mi            
kube-system     metrics-server-5985cbc9d7-pcjkh                     18m          23Mi            
kube-system     sealed-secrets-controller-5655858cbc-bmnm6          2m           24Mi            
kube-system     svclb-traefik-dac4b1ac-kzf85                        0m           0Mi             
kube-system     svclb-traefik-dac4b1ac-qtxzg                        0m           0Mi             
kube-system     svclb-traefik-dac4b1ac-wtb2k                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-vxffx                            2m           35Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
mysql-dev       2m26s       Normal    Provisioning                     persistentvolumeclaim/mysql-backups                              External provisioner is provisioning volume for claim "mysql-dev/mysql-backups"
mysql-dev       2m22s       Normal    ExternalProvisioning             persistentvolumeclaim/mysql-backups                              Waiting for a volume to be created either by the external provisioner 'rancher.io/local-path' or manually by the system administrator. If volume creation is delayed, please verify that the provisioner is running and correctly registered.
ingress-nginx   2m26s       Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                              Scaled up replica set ingress-nginx-controller-b4b575f8 to 1
ingress-nginx   2m25s       Normal    Scheduled                        pod/ingress-nginx-controller-b4b575f8-czm8x                      Successfully assigned ingress-nginx/ingress-nginx-controller-b4b575f8-czm8x to k3d-vyking-dev-agent-0
ingress-nginx   2m26s       Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-b4b575f8                     Created pod: ingress-nginx-controller-b4b575f8-czm8x
kube-system     2m23s       Normal    Pulling                          pod/helper-pod-create-pvc-99c4373f-35db-444d-ac3f-f347ea3fb424   Pulling image "rancher/mirrored-library-busybox:1.36.1"
ingress-nginx   2m22s       Normal    Pulling                          pod/ingress-nginx-controller-b4b575f8-czm8x                      Pulling image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef"
kube-system     2m17s       Normal    Pulled                           pod/helper-pod-create-pvc-99c4373f-35db-444d-ac3f-f347ea3fb424   Successfully pulled image "rancher/mirrored-library-busybox:1.36.1" in 6.579s (6.579s including waiting). Image size: 2147340 bytes.
kube-system     2m16s       Normal    Created                          pod/helper-pod-create-pvc-99c4373f-35db-444d-ac3f-f347ea3fb424   Created container helper-pod
kube-system     2m16s       Normal    Started                          pod/helper-pod-create-pvc-99c4373f-35db-444d-ac3f-f347ea3fb424   Started container helper-pod
mysql-dev       2m10s       Normal    ProvisioningSucceeded            persistentvolumeclaim/mysql-backups                              Successfully provisioned volume pvc-99c4373f-35db-444d-ac3f-f347ea3fb424
mysql-dev       2m10s       Normal    Scheduled                        pod/mysql-backup-29305770-tjr7n                                  Successfully assigned mysql-dev/mysql-backup-29305770-tjr7n to k3d-vyking-dev-agent-1
mysql-dev       34s         Normal    Pulling                          pod/mysql-backup-29305770-tjr7n                                  Pulling image "bitnami/mysql:8"
mysql-dev       3s          Normal    BackOff                          pod/mysql-backup-29305770-tjr7n                                  Back-off pulling image "bitnami/mysql:8"
mysql-dev       31s         Warning   Failed                           pod/mysql-backup-29305770-tjr7n                                  Failed to pull image "bitnami/mysql:8": rpc error: code = NotFound desc = failed to pull and unpack image "docker.io/bitnami/mysql:8": failed to resolve reference "docker.io/bitnami/mysql:8": docker.io/bitnami/mysql:8: not found
mysql-dev       31s         Warning   Failed                           pod/mysql-backup-29305770-tjr7n                                  Error: ErrImagePull
mysql-dev       18s         Warning   Failed                           pod/mysql-backup-29305770-tjr7n                                  Error: ImagePullBackOff
mysql-dev       78s         Normal    Pulled                           pod/mysql-0                                                      Successfully pulled image "bitnami/mysql:8.0" in 2m46.325s (2m46.325s including waiting). Image size: 239770540 bytes.
mysql-dev       25s         Normal    Created                          pod/mysql-0                                                      Created container mysql
mysql-dev       24s         Normal    Started                          pod/mysql-0                                                      Started container mysql
argocd-dev      75s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Progressing -> Healthy
argocd-dev      73s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Healthy -> Progressing
mysql-dev       25s         Normal    Pulled                           pod/mysql-0                                                      Container image "bitnami/mysql:8.0" already present on machine
argocd-dev      71s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Healthy -> Progressing
mysql-dev       9s          Warning   BackOff                          pod/mysql-0                                                      Back-off restarting failed container mysql in pod mysql-0_mysql-dev(7d9deac7-b627-41a8-9068-95037d55fe33)
argocd-dev      71s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Progressing -> Healthy
ingress-nginx   61s         Normal    Pulled                           pod/ingress-nginx-controller-b4b575f8-czm8x                      Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef" in 1m21.47s (1m21.47s including waiting). Image size: 115287729 bytes.
ingress-nginx   61s         Normal    Created                          pod/ingress-nginx-controller-b4b575f8-czm8x                      Created container controller
ingress-nginx   60s         Normal    Started                          pod/ingress-nginx-controller-b4b575f8-czm8x                      Started container controller
ingress-nginx   59s         Normal    CREATE                           configmap/ingress-nginx-controller                               ConfigMap ingress-nginx/ingress-nginx-controller
ingress-nginx   57s         Normal    RELOAD                           pod/ingress-nginx-controller-b4b575f8-czm8x                      NGINX reload triggered due to a change in configuration
argocd-dev      55s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Progressing -> Healthy
argocd-dev      54s         Normal    ResourceUpdated                  application/mysql                                                Updated health status: Healthy -> Progressing
ingress-nginx   39s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-b4gv9                          Successfully assigned ingress-nginx/ingress-nginx-admission-patch-b4gv9 to k3d-vyking-dev-server-0
ingress-nginx   39s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                                Created pod: ingress-nginx-admission-patch-b4gv9
ingress-nginx   38s         Normal    Pulling                          pod/ingress-nginx-admission-patch-b4gv9                          Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24"
ingress-nginx   23s         Normal    Pulled                           pod/ingress-nginx-admission-patch-b4gv9                          Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 14.319s (14.319s including waiting). Image size: 28450888 bytes.
ingress-nginx   23s         Normal    Created                          pod/ingress-nginx-admission-patch-b4gv9                          Created container patch
ingress-nginx   22s         Normal    Started                          pod/ingress-nginx-admission-patch-b4gv9                          Started container patch
ingress-nginx   18s         Normal    Completed                        job/ingress-nginx-admission-patch                                Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          9m19s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-applicationset-controller-78f49df558-gz485   1/1     Running   0          9m20s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
argocd-dex-server-796678d5bc-7zpkt                  1/1     Running   0          9m19s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-notifications-controller-6d84bf8458-xkl8z    1/1     Running   0          9m20s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-redis-7c7fb7fc74-t96ql                       1/1     Running   0          9m20s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-lt65n                  1/1     Running   0          9m20s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-server-556b554c94-cbgsk                      1/1     Running   0          9m20s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           9m21s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           9m21s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           9m21s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           9m21s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           9m21s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           9m21s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     9m21s   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.8.145     <none>        8082/TCP                     9m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.82.207    <none>        7000/TCP                     9m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.129.109   <none>        5556/TCP,5557/TCP,5558/TCP   9m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.208.150   <none>        6379/TCP                     9m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     9m24s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.245.80    <none>        8081/TCP                     9m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.212.102   <none>        8084/TCP                     9m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.113.148   <none>        80/TCP,443/TCP               9m24s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     9m28s
argocd-cmd-params-cm            41     9m28s
argocd-gpg-keys-cm              0      9m28s
argocd-notifications-cm         1      9m28s
argocd-rbac-cm                  4      9m28s
argocd-redis-health-configmap   2      9m28s
argocd-ssh-known-hosts-cm       1      9m28s
argocd-tls-certs-cm             0      9m28s
kube-root-ca.crt                1      10m
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      6m28s
argocd-notifications-secret    Opaque               0      9m28s
argocd-redis                   Opaque               1      9m32s
argocd-secret                  Opaque               3      9m29s
repo-vyking-git                Opaque               2      6m
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
4m38s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
4m33s       Normal    OperationCompleted   application/mysql                                        Sync operation to 55e889736db680b5d12373839c6234ede1c887c1 succeeded
4m30s       Normal    ResourceUpdated      application/mysql                                        Updated sync status: OutOfSync -> Synced
4m30s       Normal    ResourceUpdated      application/mysql                                        Updated health status: Missing -> Progressing
3m24s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
3m24s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
3m23s       Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to 55e889736db680b5d12373839c6234ede1c887c1 succeeded
3m23s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
3m13s       Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Healthy
3m13s       Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> Unknown
3m12s       Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Healthy
3m12s       Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> Unknown
3m12s       Normal    ResourceUpdated      application/vyking-app                                   Updated sync status:  -> Unknown
3m12s       Normal    ResourceUpdated      application/vyking-app                                   Updated health status:  -> Healthy
86s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Progressing -> Healthy
84s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Healthy -> Progressing
82s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Progressing -> Healthy
82s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Healthy -> Progressing
66s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Progressing -> Healthy
65s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Healthy -> Progressing
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     14m          124Mi           
argocd-applicationset-controller-78f49df558-gz485   2m           23Mi            
argocd-dex-server-796678d5bc-7zpkt                  1m           32Mi            
argocd-notifications-controller-6d84bf8458-xkl8z    1m           33Mi            
argocd-redis-7c7fb7fc74-t96ql                       4m           2Mi             
argocd-repo-server-d587f667c-lt65n                  4m           38Mi            
argocd-server-556b554c94-cbgsk                      4m           34Mi            
```


### Applications
```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
backend                Unknown       Healthy
frontend               Unknown       Healthy
mysql                  Synced        Progressing
mysql-sealed-secrets   Synced        Healthy
vyking-app             Unknown       Healthy
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
default   6m34s
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
kube-root-ca.crt   1      3m38s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      3m26s
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
3m37s       Normal    Issuing              certificate/frontend-cert-dev            Issuing certificate as Secret does not exist
3m35s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
3m35s       Normal    cert-manager.io      certificaterequest/frontend-cert-dev-1   Certificate request has been approved by cert-manager.io
3m35s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
3m35s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
3m35s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
3m35s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
3m35s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
3m35s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
3m35s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
3m35s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
3m35s       Normal    Requested            certificate/frontend-cert-dev            Created new CertificateRequest resource "frontend-cert-dev-1"
3m36s       Normal    Generated            certificate/frontend-cert-dev            Stored new private key in temporary Secret resource "frontend-cert-dev-ntcbn"
3m35s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
3m31s       Normal    CertificateIssued    certificaterequest/frontend-cert-dev-1   Certificate fetched from issuer successfully
3m31s       Warning   BadConfig            certificaterequest/frontend-cert-dev-1   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
3m31s       Normal    Issuing              certificate/frontend-cert-dev            The certificate has been successfully issued
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
kube-root-ca.crt   1      3m50s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      3m45s
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
3m47s       Normal   Unsealed   sealedsecret/mysql-credentials-dev   SealedSecret unsealed successfully
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
mysql-0                       0/1     Error              4 (58s ago)   4m57s   10.42.2.11   k3d-vyking-dev-server-0   <none>           <none>
mysql-backup-29305770-tjr7n   0/1     ImagePullBackOff   0             3m2s    10.42.1.12   k3d-vyking-dev-agent-1    <none>           <none>
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
mysql   0/1     4m59s   mysql        bitnami/mysql:8.0
```

### DaemonSets
```bash
+ kubectl get daemonset -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Services
```bash
+ kubectl get svc -n mysql-dev -o wide
NAME    TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
mysql   ClusterIP   10.43.56.214   <none>        3306/TCP   5m    app=mysql
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
kube-root-ca.crt   1      6m8s
mysql-initdb       2      5m2s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   6      5m9s
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
mysql-backup-29305770   Running   0/1           3m6s       3m6s
```

### CronJobs
```bash
+ kubectl get cronjobs -n mysql-dev
NAME           SCHEDULE      TIMEZONE   SUSPEND   ACTIVE   LAST SCHEDULE   AGE
mysql-backup   */5 * * * *   <none>     False     1        3m6s            5m1s
```

### PersistentVolumeClaims
```bash
+ kubectl get pvc -n mysql-dev
NAME            STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
data-mysql-0    Bound    pvc-b4d84355-527d-4413-b81e-53e94a6d146f   1Gi        RWO            local-path     <unset>                 5m2s
mysql-backups   Bound    pvc-99c4373f-35db-444d-ac3f-f347ea3fb424   2Gi        RWO            local-path     <unset>                 5m4s
```

### Recent Events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"mysql-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
5m1s        Normal    Provisioning            persistentvolumeclaim/data-mysql-0    External provisioner is provisioning volume for claim "mysql-dev/data-mysql-0"
4m47s       Normal    ProvisioningSucceeded   persistentvolumeclaim/data-mysql-0    Successfully provisioned volume pvc-b4d84355-527d-4413-b81e-53e94a6d146f
4m45s       Normal    Scheduled               pod/mysql-0                           Successfully assigned mysql-dev/mysql-0 to k3d-vyking-dev-server-0
4m44s       Normal    Pulling                 pod/mysql-0                           Pulling image "bitnami/mysql:8.0"
3m7s        Normal    SuccessfulCreate        job/mysql-backup-29305770             Created pod: mysql-backup-29305770-tjr7n
3m7s        Normal    SuccessfulCreate        cronjob/mysql-backup                  Created job mysql-backup-29305770
3m6s        Normal    Provisioning            persistentvolumeclaim/mysql-backups   External provisioner is provisioning volume for claim "mysql-dev/mysql-backups"
3m2s        Normal    ExternalProvisioning    persistentvolumeclaim/mysql-backups   Waiting for a volume to be created either by the external provisioner 'rancher.io/local-path' or manually by the system administrator. If volume creation is delayed, please verify that the provisioner is running and correctly registered.
2m49s       Normal    Scheduled               pod/mysql-backup-29305770-tjr7n       Successfully assigned mysql-dev/mysql-backup-29305770-tjr7n to k3d-vyking-dev-agent-1
2m50s       Normal    ProvisioningSucceeded   persistentvolumeclaim/mysql-backups   Successfully provisioned volume pvc-99c4373f-35db-444d-ac3f-f347ea3fb424
74s         Normal    Pulling                 pod/mysql-backup-29305770-tjr7n       Pulling image "bitnami/mysql:8"
58s         Warning   Failed                  pod/mysql-backup-29305770-tjr7n       Error: ImagePullBackOff
43s         Normal    BackOff                 pod/mysql-backup-29305770-tjr7n       Back-off pulling image "bitnami/mysql:8"
71s         Warning   Failed                  pod/mysql-backup-29305770-tjr7n       Error: ErrImagePull
71s         Warning   Failed                  pod/mysql-backup-29305770-tjr7n       Failed to pull image "bitnami/mysql:8": rpc error: code = NotFound desc = failed to pull and unpack image "docker.io/bitnami/mysql:8": failed to resolve reference "docker.io/bitnami/mysql:8": docker.io/bitnami/mysql:8: not found
118s        Normal    Pulled                  pod/mysql-0                           Successfully pulled image "bitnami/mysql:8.0" in 2m46.325s (2m46.325s including waiting). Image size: 239770540 bytes.
19s         Normal    Created                 pod/mysql-0                           Created container mysql
18s         Normal    Started                 pod/mysql-0                           Started container mysql
19s         Normal    Pulled                  pod/mysql-0                           Container image "bitnami/mysql:8.0" already present on machine
15s         Warning   BackOff                 pod/mysql-0                           Back-off restarting failed container mysql in pod mysql-0_mysql-dev(7d9deac7-b627-41a8-9068-95037d55fe33)
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n mysql-dev
error: Metrics not available for pod mysql-dev/mysql-0, age: 5m2.611371506s

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
cert-manager-55c69bf5cf-m66s6              1/1     Running   0          5m53s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-cainjector-5765b5f544-6qnn7   1/1     Running   0          5m53s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-webhook-6b67444dc9-f5ztg      1/1     Running   0          5m53s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           5m55s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           5m55s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           5m55s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.21.233    <none>        9402/TCP           5m57s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.246.191   <none>        9402/TCP           5m57s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.250.71    <none>        443/TCP,9402/TCP   5m57s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      6m1s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      5m13s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      6m
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
5m54s       Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-f5ztg       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-f5ztg to k3d-vyking-dev-server-0
5m52s       Normal   Pulling             pod/cert-manager-55c69bf5cf-m66s6               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
5m52s       Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-6qnn7    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
5m51s       Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-f5ztg       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
5m28s       Normal   Created             pod/cert-manager-cainjector-5765b5f544-6qnn7    Created container cert-manager-cainjector
5m28s       Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-6qnn7    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 23.417s (23.417s including waiting). Image size: 15426355 bytes.
5m26s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-6qnn7    Started container cert-manager-cainjector
5m18s       Normal   Created             pod/cert-manager-webhook-6b67444dc9-f5ztg       Created container cert-manager-webhook
5m18s       Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-f5ztg       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 32.323s (32.323s including waiting). Image size: 18192443 bytes.
5m17s       Normal   Pulled              pod/cert-manager-55c69bf5cf-m66s6               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 34.522s (34.522s including waiting). Image size: 21189387 bytes.
5m17s       Normal   Created             pod/cert-manager-55c69bf5cf-m66s6               Created container cert-manager-controller
5m16s       Normal   Started             pod/cert-manager-webhook-6b67444dc9-f5ztg       Started container cert-manager-webhook
5m15s       Normal   Started             pod/cert-manager-55c69bf5cf-m66s6               Started container cert-manager-controller
4m59s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-j242m
4m58s       Normal   Scheduled           pod/cert-manager-startupapicheck-j242m          Successfully assigned cert-manager/cert-manager-startupapicheck-j242m to k3d-vyking-dev-agent-1
4m57s       Normal   Pulling             pod/cert-manager-startupapicheck-j242m          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
4m47s       Normal   Created             pod/cert-manager-startupapicheck-j242m          Created container cert-manager-startupapicheck
4m47s       Normal   Pulled              pod/cert-manager-startupapicheck-j242m          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 10.366s (10.366s including waiting). Image size: 14095526 bytes.
4m46s       Normal   Started             pod/cert-manager-startupapicheck-j242m          Started container cert-manager-startupapicheck
4m40s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-m66s6              4m           38Mi            
cert-manager-cainjector-5765b5f544-6qnn7   4m           23Mi            
cert-manager-webhook-6b67444dc9-f5ztg      2m           12Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-bmnm6   1/1     Running   0          20m   10.42.1.3   k3d-vyking-dev-agent-1   <none>           <none>
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
sealed-secrets-controller   ClusterIP   10.43.39.178   <none>        8080/TCP   20m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
18m         Normal    Pulling                pod/svclb-traefik-dac4b1ac-kzf85                                 Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Pulling                pod/svclb-traefik-dac4b1ac-wtb2k                                 Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Pulling                pod/traefik-5d45fc8cc9-vxffx                                     Pulling image "rancher/mirrored-library-traefik:2.11.18"
18m         Normal    Pulling                pod/svclb-traefik-dac4b1ac-qtxzg                                 Pulling image "rancher/klipper-lb:v0.4.9"
18m         Normal    Completed              job/helm-install-traefik                                         Job completed
18m         Normal    Pulled                 pod/svclb-traefik-dac4b1ac-qtxzg                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 10.074s (10.074s including waiting). Image size: 4990278 bytes.
18m         Normal    Created                pod/svclb-traefik-dac4b1ac-qtxzg                                 Created container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-dac4b1ac-qtxzg                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Started                pod/svclb-traefik-dac4b1ac-qtxzg                                 Started container lb-tcp-80
18m         Normal    Created                pod/svclb-traefik-dac4b1ac-qtxzg                                 Created container lb-tcp-443
18m         Normal    Started                pod/svclb-traefik-dac4b1ac-qtxzg                                 Started container lb-tcp-443
18m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [] -> [172.18.0.2]
18m         Normal    Created                pod/svclb-traefik-dac4b1ac-kzf85                                 Created container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-dac4b1ac-kzf85                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 16.199s (16.199s including waiting). Image size: 4990278 bytes.
18m         Normal    Pulled                 pod/svclb-traefik-dac4b1ac-wtb2k                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 15.835s (15.835s including waiting). Image size: 4990278 bytes.
18m         Normal    Pulled                 pod/svclb-traefik-dac4b1ac-kzf85                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Created                pod/svclb-traefik-dac4b1ac-wtb2k                                 Created container lb-tcp-80
18m         Normal    Created                pod/svclb-traefik-dac4b1ac-kzf85                                 Created container lb-tcp-443
18m         Normal    Started                pod/svclb-traefik-dac4b1ac-kzf85                                 Started container lb-tcp-80
18m         Normal    Pulled                 pod/svclb-traefik-dac4b1ac-wtb2k                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
18m         Normal    Created                pod/svclb-traefik-dac4b1ac-wtb2k                                 Created container lb-tcp-443
18m         Normal    Started                pod/svclb-traefik-dac4b1ac-wtb2k                                 Started container lb-tcp-80
18m         Normal    Started                pod/svclb-traefik-dac4b1ac-wtb2k                                 Started container lb-tcp-443
18m         Normal    Started                pod/svclb-traefik-dac4b1ac-kzf85                                 Started container lb-tcp-443
18m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
18m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.2] -> [172.18.0.2 172.18.0.4]
18m         Normal    Pulled                 pod/traefik-5d45fc8cc9-vxffx                                     Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 39.404s (39.404s including waiting). Image size: 49449055 bytes.
18m         Normal    Created                pod/traefik-5d45fc8cc9-vxffx                                     Created container traefik
17m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
17m         Normal    Started                pod/traefik-5d45fc8cc9-vxffx                                     Started container traefik
5m23s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election                    cert-manager-cainjector-5765b5f544-6qnn7_db426151-c860-4dfc-aa0c-bdfaaf603afd became leader
5m14s       Normal    LeaderElection         lease/cert-manager-controller                                    cert-manager-55c69bf5cf-m66s6-external-cert-manager-controller became leader
5m5s        Normal    Pulling                pod/helper-pod-create-pvc-b4d84355-527d-4413-b81e-53e94a6d146f   Pulling image "rancher/mirrored-library-busybox:1.36.1"
5m          Normal    Pulled                 pod/helper-pod-create-pvc-b4d84355-527d-4413-b81e-53e94a6d146f   Successfully pulled image "rancher/mirrored-library-busybox:1.36.1" in 5.321s (5.321s including waiting). Image size: 2147340 bytes.
5m          Normal    Created                pod/helper-pod-create-pvc-b4d84355-527d-4413-b81e-53e94a6d146f   Created container helper-pod
4m59s       Normal    Started                pod/helper-pod-create-pvc-b4d84355-527d-4413-b81e-53e94a6d146f   Started container helper-pod
3m10s       Normal    Pulling                pod/helper-pod-create-pvc-99c4373f-35db-444d-ac3f-f347ea3fb424   Pulling image "rancher/mirrored-library-busybox:1.36.1"
3m4s        Normal    Pulled                 pod/helper-pod-create-pvc-99c4373f-35db-444d-ac3f-f347ea3fb424   Successfully pulled image "rancher/mirrored-library-busybox:1.36.1" in 6.579s (6.579s including waiting). Image size: 2147340 bytes.
3m3s        Normal    Started                pod/helper-pod-create-pvc-99c4373f-35db-444d-ac3f-f347ea3fb424   Started container helper-pod
3m3s        Normal    Created                pod/helper-pod-create-pvc-99c4373f-35db-444d-ac3f-f347ea3fb424   Created container helper-pod
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

### DaemonSet svclb-traefik-dac4b1ac
```bash
+ kubectl rollout status daemonset svclb-traefik-dac4b1ac -n kube-system --timeout=30s
daemon set "svclb-traefik-dac4b1ac" successfully rolled out
```


✅ Tests complete.
