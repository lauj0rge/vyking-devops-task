# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-22 10:37:04 CEST
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
Kubernetes control plane is running at https://0.0.0.0:34235
CoreDNS is running at https://0.0.0.0:34235/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:34235/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 45m   v1.31.5+k3s1   172.19.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-83-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 45m   v1.31.5+k3s1   172.19.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-83-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   45m   v1.31.5+k3s1   172.19.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-83-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   41m
backend-dev       Active   20m
cert-manager      Active   25m
default           Active   45m
frontend-dev      Active   20m
ingress-nginx     Active   20m
kube-node-lease   Active   45m
kube-public       Active   45m
kube-system       Active   45m
mysql-dev         Active   26m
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS        RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running       0          29m     10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-2tcsw   1/1     Running       0          29m     10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-fl57q                  1/1     Running       0          29m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-qvhnl    1/1     Running       0          29m     10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-tr2fj                       1/1     Running       0          29m     10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-2v4gw                  1/1     Running       0          29m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-server-556b554c94-g65sr                      1/1     Running       0          29m     10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-55c69bf5cf-2fgjn                       1/1     Running       0          25m     10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-gs5bm            1/1     Running       0          25m     10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-v6wgx               1/1     Running       0          25m     10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-hlbws           1/1     Running       0          35s     10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-z455r           0/1     Terminating   0          8m55s   <none>       k3d-vyking-dev-agent-1    <none>           <none>
kube-system     coredns-ccb96694c-blx9q                             1/1     Running       0          43m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-5sl6m             1/1     Running       0          45m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     metrics-server-5985cbc9d7-znxpj                     1/1     Running       0          45m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     sealed-secrets-controller-79c4ffdbd7-dl8fx          1/1     Running       0          44m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP   10.43.136.17    <none>        8082/TCP                     29m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP   10.43.148.212   <none>        7000/TCP                     29m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP   10.43.160.68    <none>        5556/TCP,5557/TCP,5558/TCP   29m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP   10.43.152.81    <none>        6379/TCP                     29m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     29m     app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP   10.43.219.171   <none>        8081/TCP                     29m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP   10.43.52.10     <none>        8084/TCP                     29m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP   10.43.41.162    <none>        80/TCP,443/TCP               29m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
cert-manager    cert-manager                            ClusterIP   10.43.159.206   <none>        9402/TCP                     25m     app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP   10.43.200.191   <none>        9402/TCP                     25m     app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP   10.43.129.80    <none>        443/TCP,9402/TCP             25m     app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP   10.43.0.1       <none>        443/TCP                      45m     <none>
ingress-nginx   ingress-nginx-controller                ClusterIP   10.43.184.82    <none>        80/TCP,443/TCP               8m55s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP   10.43.152.48    <none>        443/TCP                      8m55s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP   10.43.0.10      <none>        53/UDP,53/TCP,9153/TCP       45m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP   10.43.6.134     <none>        443/TCP                      45m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP   10.43.120.232   <none>        8080/TCP                     44m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP   10.43.62.220    <none>        8081/TCP                     44m     name=sealed-secrets-controller
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
argocd-dev      argocd-applicationset-controller   1/1     1            1           29m
argocd-dev      argocd-dex-server                  1/1     1            1           29m
argocd-dev      argocd-notifications-controller    1/1     1            1           29m
argocd-dev      argocd-redis                       1/1     1            1           29m
argocd-dev      argocd-repo-server                 1/1     1            1           29m
argocd-dev      argocd-server                      1/1     1            1           29m
cert-manager    cert-manager                       1/1     1            1           25m
cert-manager    cert-manager-cainjector            1/1     1            1           25m
cert-manager    cert-manager-webhook               1/1     1            1           25m
ingress-nginx   ingress-nginx-controller           1/1     1            1           8m56s
kube-system     coredns                            1/1     1            1           45m
kube-system     local-path-provisioner             1/1     1            1           45m
kube-system     metrics-server                     1/1     1            1           45m
kube-system     sealed-secrets-controller          1/1     1            1           44m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     29m
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
No resources found
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
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  45m
```

### Jobs (all namespaces)
```bash
+ kubectl get jobs -A
No resources found
```

### CronJobs (all namespaces)
```bash
+ kubectl get cronjobs -A
No resources found
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
k3d-vyking-dev-agent-0    240m         8%       558Mi           7%          
k3d-vyking-dev-agent-1    310m         10%      473Mi           5%          
k3d-vyking-dev-server-0   400m         13%      965Mi           12%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     14m          91Mi            
argocd-dev      argocd-applicationset-controller-78f49df558-2tcsw   3m           22Mi            
argocd-dev      argocd-dex-server-796678d5bc-fl57q                  1m           68Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-qvhnl    3m           22Mi            
argocd-dev      argocd-redis-7c7fb7fc74-tr2fj                       5m           2Mi             
argocd-dev      argocd-repo-server-d587f667c-2v4gw                  19m          62Mi            
argocd-dev      argocd-server-556b554c94-g65sr                      2m           29Mi            
cert-manager    cert-manager-55c69bf5cf-2fgjn                       6m           23Mi            
cert-manager    cert-manager-cainjector-5765b5f544-gs5bm            4m           19Mi            
cert-manager    cert-manager-webhook-6b67444dc9-v6wgx               2m           11Mi            
ingress-nginx   ingress-nginx-controller-599c5c76cc-hlbws           3m           50Mi            
kube-system     coredns-ccb96694c-blx9q                             7m           21Mi            
kube-system     local-path-provisioner-5cf85fd84d-5sl6m             1m           7Mi             
kube-system     metrics-server-5985cbc9d7-znxpj                     21m          22Mi            
kube-system     sealed-secrets-controller-79c4ffdbd7-dl8fx          2m           8Mi             
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
frontend-dev    20m         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    20m         Normal    Requested                        certificate/frontend-cert-dev                            Created new CertificateRequest resource "frontend-cert-dev-1"
frontend-dev    20m         Normal    Issuing                          certificate/frontend-cert-dev                            The certificate has been successfully issued
ingress-nginx   20m         Normal    SuccessfulCreate                 job/ingress-nginx-admission-create                       Created pod: ingress-nginx-admission-create-x6lvs
ingress-nginx   20m         Normal    Scheduled                        pod/ingress-nginx-admission-create-x6lvs                 Successfully assigned ingress-nginx/ingress-nginx-admission-create-x6lvs to k3d-vyking-dev-agent-1
ingress-nginx   20m         Normal    Pulling                          pod/ingress-nginx-admission-create-x6lvs                 Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
argocd-dev      19m         Normal    ResourceUpdated                  application/frontend                                     Updated health status:  -> Healthy
argocd-dev      19m         Normal    ResourceUpdated                  application/backend                                      Updated sync status:  -> Unknown
argocd-dev      19m         Normal    ResourceUpdated                  application/frontend                                     Updated sync status:  -> Unknown
argocd-dev      19m         Normal    ResourceUpdated                  application/backend                                      Updated health status:  -> Healthy
ingress-nginx   15m         Normal    SuccessfulCreate                 job/ingress-nginx-admission-create                       Created pod: ingress-nginx-admission-create-tlhcg
ingress-nginx   15m         Normal    Scheduled                        pod/ingress-nginx-admission-create-tlhcg                 Successfully assigned ingress-nginx/ingress-nginx-admission-create-tlhcg to k3d-vyking-dev-agent-0
ingress-nginx   15m         Normal    Pulling                          pod/ingress-nginx-admission-create-tlhcg                 Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   15m         Normal    Pulled                           pod/ingress-nginx-admission-create-tlhcg                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 1.555s (1.555s including waiting). Image size: 56758085 bytes.
ingress-nginx   15m         Normal    Created                          pod/ingress-nginx-admission-create-tlhcg                 Created container create
ingress-nginx   15m         Normal    Started                          pod/ingress-nginx-admission-create-tlhcg                 Started container create
ingress-nginx   9m1s        Normal    Created                          pod/ingress-nginx-admission-create-x6lvs                 Created container create
ingress-nginx   9m1s        Normal    Pulled                           pod/ingress-nginx-admission-create-x6lvs                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 11m16.149s (11m16.149s including waiting). Image size: 56758085 bytes.
ingress-nginx   9m1s        Normal    Started                          pod/ingress-nginx-admission-create-x6lvs                 Started container create
ingress-nginx   9m          Normal    Killing                          pod/ingress-nginx-admission-create-x6lvs                 Stopping container create
ingress-nginx   8m59s       Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   8m58s       Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-599c5c76cc to 1
ingress-nginx   8m58s       Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-599c5c76cc           Created pod: ingress-nginx-controller-599c5c76cc-z455r
ingress-nginx   8m57s       Normal    Scheduled                        pod/ingress-nginx-controller-599c5c76cc-z455r            Successfully assigned ingress-nginx/ingress-nginx-controller-599c5c76cc-z455r to k3d-vyking-dev-agent-1
ingress-nginx   8m57s       Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-z455r            Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
ingress-nginx   38s         Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-599c5c76cc           Created pod: ingress-nginx-controller-599c5c76cc-hlbws
ingress-nginx   37s         Normal    Scheduled                        pod/ingress-nginx-controller-599c5c76cc-hlbws            Successfully assigned ingress-nginx/ingress-nginx-controller-599c5c76cc-hlbws to k3d-vyking-dev-agent-0
ingress-nginx   35s         Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-hlbws            Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
ingress-nginx   34s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-hlbws            Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 1.899s (1.899s including waiting). Image size: 288689258 bytes.
ingress-nginx   33s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
ingress-nginx   33s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-hlbws            Created container controller
ingress-nginx   33s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-hlbws            Started container controller
ingress-nginx   31s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-hlbws            NGINX reload triggered due to a change in configuration
ingress-nginx   13s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-qpsfw                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-qpsfw to k3d-vyking-dev-server-0
ingress-nginx   13s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-qpsfw
ingress-nginx   12s         Normal    Pulling                          pod/ingress-nginx-admission-patch-qpsfw                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   10s         Normal    Started                          pod/ingress-nginx-admission-patch-qpsfw                  Started container patch
ingress-nginx   10s         Normal    Created                          pod/ingress-nginx-admission-patch-qpsfw                  Created container patch
ingress-nginx   10s         Normal    Pulled                           pod/ingress-nginx-admission-patch-qpsfw                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 1.8s (1.8s including waiting). Image size: 56758085 bytes.
ingress-nginx   6s          Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE   IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          29m   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-applicationset-controller-78f49df558-2tcsw   1/1     Running   0          29m   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dex-server-796678d5bc-fl57q                  1/1     Running   0          29m   10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
argocd-notifications-controller-6d84bf8458-qvhnl    1/1     Running   0          29m   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
argocd-redis-7c7fb7fc74-tr2fj                       1/1     Running   0          29m   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-repo-server-d587f667c-2v4gw                  1/1     Running   0          29m   10.42.1.4   k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-g65sr                      1/1     Running   0          29m   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           29m   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           29m   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           29m   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           29m   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           29m   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           29m   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE   CONTAINERS               IMAGES
argocd-application-controller   1/1     29m   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### DaemonSets
```bash
+ kubectl get daemonset -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Services
```bash
+ kubectl get svc -n argocd-dev -o wide
NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE   SELECTOR
argocd-application-controller-metrics   ClusterIP   10.43.136.17    <none>        8082/TCP                     29m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.148.212   <none>        7000/TCP                     29m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.160.68    <none>        5556/TCP,5557/TCP,5558/TCP   29m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.152.81    <none>        6379/TCP                     29m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     29m   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.219.171   <none>        8081/TCP                     29m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.52.10     <none>        8084/TCP                     29m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.41.162    <none>        80/TCP,443/TCP               29m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     29m
argocd-cmd-params-cm            41     29m
argocd-gpg-keys-cm              0      29m
argocd-notifications-cm         1      29m
argocd-rbac-cm                  4      29m
argocd-redis-health-configmap   2      29m
argocd-ssh-known-hosts-cm       1      29m
argocd-tls-certs-cm             0      29m
kube-root-ca.crt                1      41m
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      28m
argocd-notifications-secret    Opaque               0      29m
argocd-redis                   Opaque               1      32m
argocd-secret                  Opaque               3      29m
repo-vyking-git                Opaque               2      26m
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      41m
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
29m         Normal    Started             pod/argocd-application-controller-0                      Started container application-controller
29m         Normal    Pulled              pod/argocd-repo-server-d587f667c-2v4gw                   Container image "quay.io/argoproj/argocd:v3.1.5" already present on machine
29m         Normal    Started             pod/argocd-server-556b554c94-g65sr                       Started container server
29m         Normal    Started             pod/argocd-repo-server-d587f667c-2v4gw                   Started container repo-server
29m         Normal    Created             pod/argocd-repo-server-d587f667c-2v4gw                   Created container repo-server
29m         Normal    Pulling             pod/argocd-dex-server-796678d5bc-fl57q                   Pulling image "ghcr.io/dexidp/dex:v2.44.0"
27m         Normal    Pulled              pod/argocd-redis-7c7fb7fc74-tr2fj                        Successfully pulled image "ecr-public.aws.com/docker/library/redis:7.2.8-alpine" in 2m5.258s (2m5.258s including waiting). Image size: 16851748 bytes.
27m         Normal    Created             pod/argocd-redis-7c7fb7fc74-tr2fj                        Created container redis
27m         Normal    Started             pod/argocd-redis-7c7fb7fc74-tr2fj                        Started container redis
26m         Normal    Pulled              pod/argocd-dex-server-796678d5bc-fl57q                   Successfully pulled image "ghcr.io/dexidp/dex:v2.44.0" in 2m25.417s (2m25.417s including waiting). Image size: 45872393 bytes.
26m         Normal    Created             pod/argocd-dex-server-796678d5bc-fl57q                   Created container dex-server
26m         Normal    Started             pod/argocd-dex-server-796678d5bc-fl57q                   Started container dex-server
25m         Normal    ResourceUpdated     application/mysql-sealed-secrets                         Updated sync status:  -> Unknown
25m         Normal    ResourceUpdated     application/mysql-sealed-secrets                         Updated health status:  -> Healthy
25m         Normal    ResourceUpdated     application/mysql                                        Updated sync status:  -> Unknown
25m         Normal    ResourceUpdated     application/mysql                                        Updated health status:  -> Healthy
19m         Normal    ResourceUpdated     application/backend                                      Updated health status:  -> Healthy
19m         Normal    ResourceUpdated     application/frontend                                     Updated sync status:  -> Unknown
19m         Normal    ResourceUpdated     application/frontend                                     Updated health status:  -> Healthy
19m         Normal    ResourceUpdated     application/backend                                      Updated sync status:  -> Unknown
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     14m          91Mi            
argocd-applicationset-controller-78f49df558-2tcsw   3m           22Mi            
argocd-dex-server-796678d5bc-fl57q                  1m           68Mi            
argocd-notifications-controller-6d84bf8458-qvhnl    3m           22Mi            
argocd-redis-7c7fb7fc74-tr2fj                       5m           2Mi             
argocd-repo-server-d587f667c-2v4gw                  19m          62Mi            
argocd-server-556b554c94-g65sr                      2m           29Mi            
```


### Applications
```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
backend                Unknown       Healthy
frontend               Unknown       Healthy
mysql                  Unknown       Healthy
mysql-sealed-secrets   Unknown       Healthy
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
default   29m
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
kube-root-ca.crt   1      20m
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      20m
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
20m         Normal    Issuing              certificate/frontend-cert-dev            Issuing certificate as Secret does not exist
20m         Normal    Generated            certificate/frontend-cert-dev            Stored new private key in temporary Secret resource "frontend-cert-dev-gbvl9"
20m         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
20m         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
20m         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
20m         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
20m         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
20m         Warning   BadConfig            certificaterequest/frontend-cert-dev-1   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
20m         Normal    CertificateIssued    certificaterequest/frontend-cert-dev-1   Certificate fetched from issuer successfully
20m         Normal    cert-manager.io      certificaterequest/frontend-cert-dev-1   Certificate request has been approved by cert-manager.io
20m         Normal    Requested            certificate/frontend-cert-dev            Created new CertificateRequest resource "frontend-cert-dev-1"
20m         Normal    Issuing              certificate/frontend-cert-dev            The certificate has been successfully issued
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
kube-root-ca.crt   1      20m
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
No resources found in backend-dev namespace.
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
No resources found in backend-dev namespace.
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
kube-root-ca.crt   1      26m
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
No resources found in mysql-dev namespace.
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
No resources found in mysql-dev namespace.
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
NAME                                       READY   STATUS    RESTARTS   AGE   IP          NODE                      NOMINATED NODE   READINESS GATES
cert-manager-55c69bf5cf-2fgjn              1/1     Running   0          26m   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
cert-manager-cainjector-5765b5f544-gs5bm   1/1     Running   0          26m   10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-webhook-6b67444dc9-v6wgx      1/1     Running   0          26m   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           26m   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           26m   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           26m   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
NAME                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)            AGE   SELECTOR
cert-manager              ClusterIP   10.43.159.206   <none>        9402/TCP           26m   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.200.191   <none>        9402/TCP           26m   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.129.80    <none>        443/TCP,9402/TCP   26m   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      26m
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      23m
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      26m
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
26m         Normal   ScalingReplicaSet   deployment/cert-manager-cainjector              Scaled up replica set cert-manager-cainjector-5765b5f544 to 1
26m         Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-v6wgx       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
26m         Normal   Pulling             pod/cert-manager-55c69bf5cf-2fgjn               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
26m         Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-gs5bm    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
24m         Normal   Created             pod/cert-manager-cainjector-5765b5f544-gs5bm    Created container cert-manager-cainjector
24m         Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-gs5bm    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 1m59.596s (1m59.596s including waiting). Image size: 15426355 bytes.
24m         Normal   Started             pod/cert-manager-cainjector-5765b5f544-gs5bm    Started container cert-manager-cainjector
23m         Normal   Started             pod/cert-manager-webhook-6b67444dc9-v6wgx       Started container cert-manager-webhook
23m         Normal   Created             pod/cert-manager-webhook-6b67444dc9-v6wgx       Created container cert-manager-webhook
23m         Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-v6wgx       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 2m26.561s (2m26.561s including waiting). Image size: 18192443 bytes.
23m         Normal   Started             pod/cert-manager-55c69bf5cf-2fgjn               Started container cert-manager-controller
23m         Normal   Pulled              pod/cert-manager-55c69bf5cf-2fgjn               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 2m52.988s (2m52.988s including waiting). Image size: 21189387 bytes.
23m         Normal   Created             pod/cert-manager-55c69bf5cf-2fgjn               Created container cert-manager-controller
23m         Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-v4tgc
23m         Normal   Scheduled           pod/cert-manager-startupapicheck-v4tgc          Successfully assigned cert-manager/cert-manager-startupapicheck-v4tgc to k3d-vyking-dev-agent-1
23m         Normal   Pulling             pod/cert-manager-startupapicheck-v4tgc          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
21m         Normal   Started             pod/cert-manager-startupapicheck-v4tgc          Started container cert-manager-startupapicheck
21m         Normal   Created             pod/cert-manager-startupapicheck-v4tgc          Created container cert-manager-startupapicheck
21m         Normal   Pulled              pod/cert-manager-startupapicheck-v4tgc          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 1m58.956s (1m58.956s including waiting). Image size: 14095526 bytes.
21m         Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-2fgjn              4m           23Mi            
cert-manager-cainjector-5765b5f544-gs5bm   4m           19Mi            
cert-manager-webhook-6b67444dc9-v6wgx      2m           11Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                      NOMINATED NODE   READINESS GATES
sealed-secrets-controller-79c4ffdbd7-dl8fx   1/1     Running   0          45m   10.42.2.3   k3d-vyking-dev-server-0   <none>           <none>
```

### Sealed Secrets deployment
```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           45m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.27.1   name=sealed-secrets-controller
```

### Sealed Secrets service
```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.120.232   <none>        8080/TCP   45m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
46m         Normal    Scheduled           pod/metrics-server-5985cbc9d7-znxpj               Successfully assigned kube-system/metrics-server-5985cbc9d7-znxpj to k3d-vyking-dev-agent-1
46m         Normal    SuccessfulCreate    replicaset/metrics-server-5985cbc9d7              Created pod: metrics-server-5985cbc9d7-znxpj
46m         Normal    ScalingReplicaSet   deployment/metrics-server                         Scaled up replica set metrics-server-5985cbc9d7 to 1
46m         Normal    ScalingReplicaSet   deployment/coredns                                Scaled up replica set coredns-ccb96694c to 1
46m         Normal    Scheduled           pod/local-path-provisioner-5cf85fd84d-5sl6m       Successfully assigned kube-system/local-path-provisioner-5cf85fd84d-5sl6m to k3d-vyking-dev-server-0
46m         Normal    Scheduled           pod/coredns-ccb96694c-hjrqw                       Successfully assigned kube-system/coredns-ccb96694c-hjrqw to k3d-vyking-dev-agent-0
46m         Normal    ScalingReplicaSet   deployment/local-path-provisioner                 Scaled up replica set local-path-provisioner-5cf85fd84d to 1
46m         Normal    SuccessfulCreate    replicaset/local-path-provisioner-5cf85fd84d      Created pod: local-path-provisioner-5cf85fd84d-5sl6m
46m         Normal    Pulling             pod/coredns-ccb96694c-hjrqw                       Pulling image "rancher/mirrored-coredns-coredns:1.12.0"
46m         Normal    Pulling             pod/metrics-server-5985cbc9d7-znxpj               Pulling image "rancher/mirrored-metrics-server:v0.7.2"
45m         Normal    Pulling             pod/local-path-provisioner-5cf85fd84d-5sl6m       Pulling image "rancher/local-path-provisioner:v0.0.30"
45m         Normal    Scheduled           pod/sealed-secrets-controller-79c4ffdbd7-dl8fx    Successfully assigned kube-system/sealed-secrets-controller-79c4ffdbd7-dl8fx to k3d-vyking-dev-server-0
45m         Normal    SuccessfulCreate    replicaset/sealed-secrets-controller-79c4ffdbd7   Created pod: sealed-secrets-controller-79c4ffdbd7-dl8fx
45m         Normal    ScalingReplicaSet   deployment/sealed-secrets-controller              Scaled up replica set sealed-secrets-controller-79c4ffdbd7 to 1
45m         Normal    Pulled              pod/sealed-secrets-controller-79c4ffdbd7-dl8fx    Container image "docker.io/bitnami/sealed-secrets-controller:0.27.1" already present on machine
45m         Warning   Unhealthy           pod/sealed-secrets-controller-79c4ffdbd7-dl8fx    Readiness probe failed: Get "http://10.42.2.3:8080/healthz": dial tcp 10.42.2.3:8080: connect: connection refused
45m         Normal    Started             pod/sealed-secrets-controller-79c4ffdbd7-dl8fx    Started container sealed-secrets-controller
45m         Normal    Created             pod/sealed-secrets-controller-79c4ffdbd7-dl8fx    Created container sealed-secrets-controller
44m         Normal    Scheduled           pod/coredns-ccb96694c-blx9q                       Successfully assigned kube-system/coredns-ccb96694c-blx9q to k3d-vyking-dev-agent-1
44m         Normal    SuccessfulCreate    replicaset/coredns-ccb96694c                      Created pod: coredns-ccb96694c-blx9q
44m         Normal    Pulling             pod/coredns-ccb96694c-blx9q                       Pulling image "rancher/mirrored-coredns-coredns:1.12.0"
43m         Normal    Created             pod/local-path-provisioner-5cf85fd84d-5sl6m       Created container local-path-provisioner
43m         Normal    Pulled              pod/local-path-provisioner-5cf85fd84d-5sl6m       Successfully pulled image "rancher/local-path-provisioner:v0.0.30" in 2m11.277s (2m11.277s including waiting). Image size: 18584855 bytes.
43m         Normal    Started             pod/local-path-provisioner-5cf85fd84d-5sl6m       Started container local-path-provisioner
42m         Normal    Pulled              pod/metrics-server-5985cbc9d7-znxpj               Successfully pulled image "rancher/mirrored-metrics-server:v0.7.2" in 3m2.187s (3m2.187s including waiting). Image size: 19494186 bytes.
42m         Normal    Created             pod/metrics-server-5985cbc9d7-znxpj               Created container metrics-server
42m         Warning   Unhealthy           pod/metrics-server-5985cbc9d7-znxpj               Readiness probe failed: Get "https://10.42.1.2:10250/readyz": dial tcp 10.42.1.2:10250: connect: connection refused
42m         Normal    Started             pod/metrics-server-5985cbc9d7-znxpj               Started container metrics-server
42m         Normal    Pulled              pod/coredns-ccb96694c-hjrqw                       Successfully pulled image "rancher/mirrored-coredns-coredns:1.12.0" in 3m6.541s (3m6.541s including waiting). Image size: 20938299 bytes.
42m         Normal    Created             pod/coredns-ccb96694c-hjrqw                       Created container coredns
42m         Normal    Started             pod/coredns-ccb96694c-hjrqw                       Started container coredns
42m         Normal    Killing             pod/coredns-ccb96694c-hjrqw                       Stopping container coredns
42m         Warning   Unhealthy           pod/coredns-ccb96694c-hjrqw                       Readiness probe failed: Get "http://10.42.0.2:8181/ready": dial tcp 10.42.0.2:8181: connect: connection refused
42m         Warning   Unhealthy           pod/metrics-server-5985cbc9d7-znxpj               Readiness probe failed: Get "https://10.42.1.2:10250/readyz": net/http: request canceled while waiting for connection (Client.Timeout exceeded while awaiting headers)
42m         Warning   Unhealthy           pod/metrics-server-5985cbc9d7-znxpj               Readiness probe failed: HTTP probe failed with statuscode: 500
41m         Normal    Pulled              pod/coredns-ccb96694c-blx9q                       Successfully pulled image "rancher/mirrored-coredns-coredns:1.12.0" in 3m4.513s (3m4.513s including waiting). Image size: 20938299 bytes.
41m         Normal    Created             pod/coredns-ccb96694c-blx9q                       Created container coredns
41m         Normal    Started             pod/coredns-ccb96694c-blx9q                       Started container coredns
24m         Normal    LeaderElection      lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-gs5bm_e6b9c38b-b0bc-443f-acd2-33e064219d61 became leader
23m         Normal    LeaderElection      lease/cert-manager-controller                     cert-manager-55c69bf5cf-2fgjn-external-cert-manager-controller became leader
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


✅ Tests complete.
