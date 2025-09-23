# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-23 21:03:58 CEST
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
Kubernetes control plane is running at https://0.0.0.0:34863
CoreDNS is running at https://0.0.0.0:34863/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:34863/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 29m   v1.31.5+k3s1   172.19.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-83-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 29m   v1.31.5+k3s1   172.19.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-83-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   29m   v1.31.5+k3s1   172.19.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-83-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   10m
backend-dev       Active   72s
cert-manager      Active   7m18s
default           Active   29m
frontend-dev      Active   72s
ingress-nginx     Active   55s
kube-node-lease   Active   29m
kube-public       Active   29m
kube-system       Active   29m
mysql-dev         Active   8m17s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS    RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running   0          9m55s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-bjww7   1/1     Running   0          9m56s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-b2rx2                  1/1     Running   0          9m56s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-gn8b2    1/1     Running   0          9m57s   10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-f9pjt                       1/1     Running   0          9m57s   10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-9ls7g                  1/1     Running   0          9m56s   10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-server-556b554c94-m69jx                      1/1     Running   0          9m57s   10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-9vz7r                       1/1     Running   0          7m14s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-vnh5h            1/1     Running   0          7m14s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-tqs4s               1/1     Running   0          7m14s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-68twp           1/1     Running   0          40s     10.42.2.10   k3d-vyking-dev-server-0   <none>           <none>
kube-system     coredns-ccb96694c-jd5h7                             1/1     Running   0          24m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-2nbk4             1/1     Running   0          24m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     metrics-server-5985cbc9d7-kd6vj                     1/1     Running   0          24m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     sealed-secrets-controller-79c4ffdbd7-m4v7d          1/1     Running   0          13m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP   10.43.156.79    <none>        8082/TCP                     9m59s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP   10.43.133.35    <none>        7000/TCP                     9m59s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP   10.43.204.54    <none>        5556/TCP,5557/TCP,5558/TCP   9m59s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP   10.43.226.226   <none>        6379/TCP                     9m59s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     9m59s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP   10.43.170.240   <none>        8081/TCP                     9m59s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP   10.43.52.119    <none>        8084/TCP                     9m59s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP   10.43.212.18    <none>        80/TCP,443/TCP               9m59s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
cert-manager    cert-manager                            ClusterIP   10.43.216.51    <none>        9402/TCP                     7m16s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP   10.43.150.232   <none>        9402/TCP                     7m16s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP   10.43.95.235    <none>        443/TCP,9402/TCP             7m16s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP   10.43.0.1       <none>        443/TCP                      29m     <none>
ingress-nginx   ingress-nginx-controller                ClusterIP   10.43.72.192    <none>        80/TCP,443/TCP               41s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP   10.43.107.221   <none>        443/TCP                      41s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP   10.43.0.10      <none>        53/UDP,53/TCP,9153/TCP       29m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP   10.43.135.36    <none>        443/TCP                      29m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP   10.43.223.249   <none>        8080/TCP                     13m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP   10.43.15.107    <none>        8081/TCP                     13m     name=sealed-secrets-controller
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
argocd-dev      argocd-applicationset-controller   1/1     1            1           9m58s
argocd-dev      argocd-dex-server                  1/1     1            1           9m58s
argocd-dev      argocd-notifications-controller    1/1     1            1           9m58s
argocd-dev      argocd-redis                       1/1     1            1           9m58s
argocd-dev      argocd-repo-server                 1/1     1            1           9m58s
argocd-dev      argocd-server                      1/1     1            1           9m58s
cert-manager    cert-manager                       1/1     1            1           7m16s
cert-manager    cert-manager-cainjector            1/1     1            1           7m16s
cert-manager    cert-manager-webhook               1/1     1            1           7m16s
ingress-nginx   ingress-nginx-controller           1/1     1            1           42s
kube-system     coredns                            1/1     1            1           29m
kube-system     local-path-provisioner             1/1     1            1           29m
kube-system     metrics-server                     1/1     1            1           29m
kube-system     sealed-secrets-controller          1/1     1            1           13m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     9m59s
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
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  29m
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
k3d-vyking-dev-agent-0    476m         15%      449Mi           5%          
k3d-vyking-dev-agent-1    329m         10%      539Mi           6%          
k3d-vyking-dev-server-0   380m         12%      1045Mi          13%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     35m          129Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-bjww7   2m           26Mi            
argocd-dev      argocd-dex-server-796678d5bc-b2rx2                  2m           24Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-gn8b2    1m           23Mi            
argocd-dev      argocd-redis-7c7fb7fc74-f9pjt                       5m           11Mi            
argocd-dev      argocd-repo-server-d587f667c-9ls7g                  11m          60Mi            
argocd-dev      argocd-server-556b554c94-m69jx                      2m           72Mi            
cert-manager    cert-manager-55c69bf5cf-9vz7r                       5m           79Mi            
cert-manager    cert-manager-cainjector-5765b5f544-vnh5h            4m           56Mi            
cert-manager    cert-manager-webhook-6b67444dc9-tqs4s               2m           58Mi            
ingress-nginx   ingress-nginx-controller-599c5c76cc-68twp           5m           92Mi            
kube-system     coredns-ccb96694c-jd5h7                             9m           14Mi            
kube-system     local-path-provisioner-5cf85fd84d-2nbk4             1m           7Mi             
kube-system     metrics-server-5985cbc9d7-kd6vj                     20m          19Mi            
kube-system     sealed-secrets-controller-79c4ffdbd7-m4v7d          8m           13Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
cert-manager    2m13s       Normal    Completed                        job/cert-manager-startupapicheck                         Job completed
frontend-dev    74s         Normal    Issuing                          certificate/frontend-cert-dev                            Issuing certificate as Secret does not exist
frontend-dev    72s         Normal    Requested                        certificate/frontend-cert-dev                            Created new CertificateRequest resource "frontend-cert-dev-1"
frontend-dev    72s         Normal    Generated                        certificate/frontend-cert-dev                            Stored new private key in temporary Secret resource "frontend-cert-dev-k4j5d"
frontend-dev    72s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    72s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    72s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    72s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    72s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    72s         Normal    cert-manager.io                  certificaterequest/frontend-cert-dev-1                   Certificate request has been approved by cert-manager.io
frontend-dev    72s         Warning   BadConfig                        certificaterequest/frontend-cert-dev-1                   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
frontend-dev    72s         Normal    CertificateIssued                certificaterequest/frontend-cert-dev-1                   Certificate fetched from issuer successfully
frontend-dev    72s         Normal    Issuing                          certificate/frontend-cert-dev                            The certificate has been successfully issued
ingress-nginx   59s         Normal    Scheduled                        pod/ingress-nginx-admission-create-4cwcs                 Successfully assigned ingress-nginx/ingress-nginx-admission-create-4cwcs to k3d-vyking-dev-server-0
ingress-nginx   60s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-create                       Created pod: ingress-nginx-admission-create-4cwcs
ingress-nginx   58s         Normal    Pulling                          pod/ingress-nginx-admission-create-4cwcs                 Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   55s         Normal    Created                          pod/ingress-nginx-admission-create-4cwcs                 Created container create
ingress-nginx   55s         Normal    Pulled                           pod/ingress-nginx-admission-create-4cwcs                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 2.999s (2.999s including waiting). Image size: 56758085 bytes.
ingress-nginx   54s         Normal    Started                          pod/ingress-nginx-admission-create-4cwcs                 Started container create
ingress-nginx   49s         Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   47s         Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-599c5c76cc to 1
ingress-nginx   46s         Normal    Scheduled                        pod/ingress-nginx-controller-599c5c76cc-68twp            Successfully assigned ingress-nginx/ingress-nginx-controller-599c5c76cc-68twp to k3d-vyking-dev-server-0
ingress-nginx   47s         Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-599c5c76cc           Created pod: ingress-nginx-controller-599c5c76cc-68twp
ingress-nginx   46s         Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-68twp            Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
ingress-nginx   42s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-68twp            Created container controller
ingress-nginx   43s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-68twp            Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 3.056s (3.056s including waiting). Image size: 288689258 bytes.
ingress-nginx   42s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-68twp            Started container controller
ingress-nginx   38s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
ingress-nginx   36s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-68twp            NGINX reload triggered due to a change in configuration
ingress-nginx   21s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-9n5bd                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-9n5bd to k3d-vyking-dev-agent-0
ingress-nginx   22s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-9n5bd
ingress-nginx   20s         Normal    Pulling                          pod/ingress-nginx-admission-patch-9n5bd                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   17s         Normal    Created                          pod/ingress-nginx-admission-patch-9n5bd                  Created container patch
ingress-nginx   17s         Normal    Started                          pod/ingress-nginx-admission-patch-9n5bd                  Started container patch
ingress-nginx   17s         Normal    Pulled                           pod/ingress-nginx-admission-patch-9n5bd                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 2.807s (2.807s including waiting). Image size: 56758085 bytes.
argocd-dev      15s         Normal    ResourceUpdated                  application/backend                                      Updated sync status:  -> Unknown
argocd-dev      14s         Normal    ResourceUpdated                  application/frontend                                     Updated health status:  -> Healthy
argocd-dev      14s         Normal    ResourceUpdated                  application/frontend                                     Updated sync status:  -> Unknown
argocd-dev      15s         Normal    ResourceUpdated                  application/backend                                      Updated health status:  -> Healthy
ingress-nginx   12s         Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE   IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          10m   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-applicationset-controller-78f49df558-bjww7   1/1     Running   0          10m   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-dex-server-796678d5bc-b2rx2                  1/1     Running   0          10m   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-notifications-controller-6d84bf8458-gn8b2    1/1     Running   0          10m   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
argocd-redis-7c7fb7fc74-f9pjt                       1/1     Running   0          10m   10.42.1.4   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-9ls7g                  1/1     Running   0          10m   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-m69jx                      1/1     Running   0          10m   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           10m   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           10m   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           10m   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           10m   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           10m   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           10m   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE   CONTAINERS               IMAGES
argocd-application-controller   1/1     10m   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.156.79    <none>        8082/TCP                     10m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.133.35    <none>        7000/TCP                     10m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.204.54    <none>        5556/TCP,5557/TCP,5558/TCP   10m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.226.226   <none>        6379/TCP                     10m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     10m   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.170.240   <none>        8081/TCP                     10m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.52.119    <none>        8084/TCP                     10m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.212.18    <none>        80/TCP,443/TCP               10m   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     10m
argocd-cmd-params-cm            41     10m
argocd-gpg-keys-cm              0      10m
argocd-notifications-cm         1      10m
argocd-rbac-cm                  4      10m
argocd-redis-health-configmap   2      10m
argocd-ssh-known-hosts-cm       1      10m
argocd-tls-certs-cm             0      10m
kube-root-ca.crt                1      10m
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      9m49s
argocd-notifications-secret    Opaque               0      10m
argocd-redis                   Opaque               1      10m
argocd-secret                  Opaque               3      10m
repo-vyking-git                Opaque               2      9m31s
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
10m         Normal    Started             pod/argocd-applicationset-controller-78f49df558-bjww7    Started container applicationset-controller
10m         Normal    Pulled              pod/argocd-redis-7c7fb7fc74-f9pjt                        Successfully pulled image "ecr-public.aws.com/docker/library/redis:7.2.8-alpine" in 4.851s (4.851s including waiting). Image size: 41700998 bytes.
10m         Normal    Created             pod/argocd-redis-7c7fb7fc74-f9pjt                        Created container redis
10m         Normal    Started             pod/argocd-repo-server-d587f667c-9ls7g                   Started container copyutil
9m59s       Normal    Started             pod/argocd-application-controller-0                      Started container application-controller
9m59s       Normal    Started             pod/argocd-redis-7c7fb7fc74-f9pjt                        Started container redis
9m48s       Normal    Pulled              pod/argocd-dex-server-796678d5bc-b2rx2                   Container image "ghcr.io/dexidp/dex:v2.44.0" already present on machine
9m47s       Normal    Created             pod/argocd-repo-server-d587f667c-9ls7g                   Created container repo-server
9m47s       Normal    Created             pod/argocd-dex-server-796678d5bc-b2rx2                   Created container dex-server
9m47s       Normal    Pulled              pod/argocd-repo-server-d587f667c-9ls7g                   Container image "quay.io/argoproj/argocd:v3.1.5" already present on machine
9m46s       Normal    Started             pod/argocd-dex-server-796678d5bc-b2rx2                   Started container dex-server
9m45s       Normal    Started             pod/argocd-repo-server-d587f667c-9ls7g                   Started container repo-server
7m21s       Normal    ResourceUpdated     application/mysql                                        Updated sync status:  -> Unknown
7m20s       Normal    ResourceUpdated     application/mysql                                        Updated health status:  -> Healthy
7m15s       Normal    ResourceUpdated     application/mysql-sealed-secrets                         Updated sync status:  -> Unknown
7m15s       Normal    ResourceUpdated     application/mysql-sealed-secrets                         Updated health status:  -> Healthy
20s         Normal    ResourceUpdated     application/backend                                      Updated sync status:  -> Unknown
20s         Normal    ResourceUpdated     application/backend                                      Updated health status:  -> Healthy
19s         Normal    ResourceUpdated     application/frontend                                     Updated sync status:  -> Unknown
19s         Normal    ResourceUpdated     application/frontend                                     Updated health status:  -> Healthy
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     35m          129Mi           
argocd-applicationset-controller-78f49df558-bjww7   2m           26Mi            
argocd-dex-server-796678d5bc-b2rx2                  2m           24Mi            
argocd-notifications-controller-6d84bf8458-gn8b2    1m           23Mi            
argocd-redis-7c7fb7fc74-f9pjt                       5m           11Mi            
argocd-repo-server-d587f667c-9ls7g                  11m          60Mi            
argocd-server-556b554c94-m69jx                      2m           72Mi            
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
default   9m52s
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
kube-root-ca.crt   1      93s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      86s
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
90s         Normal    Issuing              certificate/frontend-cert-dev            Issuing certificate as Secret does not exist
88s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
88s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
88s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
88s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
88s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
88s         Normal    cert-manager.io      certificaterequest/frontend-cert-dev-1   Certificate request has been approved by cert-manager.io
88s         Warning   BadConfig            certificaterequest/frontend-cert-dev-1   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
88s         Normal    CertificateIssued    certificaterequest/frontend-cert-dev-1   Certificate fetched from issuer successfully
88s         Normal    Generated            certificate/frontend-cert-dev            Stored new private key in temporary Secret resource "frontend-cert-dev-k4j5d"
88s         Normal    Requested            certificate/frontend-cert-dev            Created new CertificateRequest resource "frontend-cert-dev-1"
88s         Normal    Issuing              certificate/frontend-cert-dev            The certificate has been successfully issued
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
kube-root-ca.crt   1      100s
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
kube-root-ca.crt   1      8m50s
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
NAME                                       READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
cert-manager-55c69bf5cf-9vz7r              1/1     Running   0          7m49s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-cainjector-5765b5f544-vnh5h   1/1     Running   0          7m49s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-webhook-6b67444dc9-tqs4s      1/1     Running   0          7m49s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           7m50s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           7m50s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           7m50s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.216.51    <none>        9402/TCP           7m52s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.150.232   <none>        9402/TCP           7m52s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.95.235    <none>        443/TCP,9402/TCP   7m52s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      7m56s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      7m43s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      7m55s
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
7m52s       Normal   SuccessfulCreate    replicaset/cert-manager-55c69bf5cf              Created pod: cert-manager-55c69bf5cf-9vz7r
7m51s       Normal   Scheduled           pod/cert-manager-cainjector-5765b5f544-vnh5h    Successfully assigned cert-manager/cert-manager-cainjector-5765b5f544-vnh5h to k3d-vyking-dev-agent-1
7m51s       Normal   Scheduled           pod/cert-manager-55c69bf5cf-9vz7r               Successfully assigned cert-manager/cert-manager-55c69bf5cf-9vz7r to k3d-vyking-dev-agent-0
7m51s       Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-tqs4s       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-tqs4s to k3d-vyking-dev-server-0
7m49s       Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-vnh5h    Container image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" already present on machine
7m49s       Normal   Created             pod/cert-manager-cainjector-5765b5f544-vnh5h    Created container cert-manager-cainjector
7m49s       Normal   Pulled              pod/cert-manager-55c69bf5cf-9vz7r               Container image "quay.io/jetstack/cert-manager-controller:v1.16.1" already present on machine
7m49s       Normal   Created             pod/cert-manager-55c69bf5cf-9vz7r               Created container cert-manager-controller
7m48s       Normal   Started             pod/cert-manager-55c69bf5cf-9vz7r               Started container cert-manager-controller
7m48s       Normal   Created             pod/cert-manager-webhook-6b67444dc9-tqs4s       Created container cert-manager-webhook
7m48s       Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-tqs4s       Container image "quay.io/jetstack/cert-manager-webhook:v1.16.1" already present on machine
7m47s       Normal   Started             pod/cert-manager-webhook-6b67444dc9-tqs4s       Started container cert-manager-webhook
7m47s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-vnh5h    Started container cert-manager-cainjector
7m33s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-fbxs5
7m32s       Normal   Scheduled           pod/cert-manager-startupapicheck-fbxs5          Successfully assigned cert-manager/cert-manager-startupapicheck-fbxs5 to k3d-vyking-dev-server-0
7m31s       Normal   Pulling             pod/cert-manager-startupapicheck-fbxs5          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
2m49s       Normal   Started             pod/cert-manager-startupapicheck-fbxs5          Started container cert-manager-startupapicheck
2m49s       Normal   Created             pod/cert-manager-startupapicheck-fbxs5          Created container cert-manager-startupapicheck
2m49s       Normal   Pulled              pod/cert-manager-startupapicheck-fbxs5          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 4m42.343s (4m42.343s including waiting). Image size: 14095526 bytes.
2m44s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-9vz7r              4m           79Mi            
cert-manager-cainjector-5765b5f544-vnh5h   3m           56Mi            
cert-manager-webhook-6b67444dc9-tqs4s      2m           58Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-79c4ffdbd7-m4v7d   1/1     Running   0          14m   10.42.0.4   k3d-vyking-dev-agent-0   <none>           <none>
```

### Sealed Secrets deployment
```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           14m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.27.1   name=sealed-secrets-controller
```

### Sealed Secrets service
```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.223.249   <none>        8080/TCP   14m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
28m         Normal    Pulled              pod/local-path-provisioner-5cf85fd84d-rxsss       Successfully pulled image "rancher/local-path-provisioner:v0.0.30" in 1m27.797s (1m27.798s including waiting). Image size: 52043662 bytes.
28m         Normal    Started             pod/local-path-provisioner-5cf85fd84d-rxsss       Started container local-path-provisioner
28m         Normal    Created             pod/local-path-provisioner-5cf85fd84d-rxsss       Created container local-path-provisioner
26m         Normal    Created             pod/metrics-server-5985cbc9d7-phtvv               Created container metrics-server
26m         Normal    Pulled              pod/metrics-server-5985cbc9d7-phtvv               Successfully pulled image "rancher/mirrored-metrics-server:v0.7.2" in 2m25.38s (2m25.38s including waiting). Image size: 68121111 bytes.
26m         Normal    Started             pod/metrics-server-5985cbc9d7-phtvv               Started container metrics-server
24m         Warning   Unhealthy           pod/metrics-server-5985cbc9d7-phtvv               Readiness probe failed: Get "https://10.42.1.2:10250/readyz": dial tcp 10.42.1.2:10250: connect: connection refused
26m         Warning   Unhealthy           pod/metrics-server-5985cbc9d7-phtvv               Readiness probe failed: HTTP probe failed with statuscode: 500
24m         Normal    Killing             pod/coredns-ccb96694c-nctpr                       Stopping container coredns
24m         Normal    Scheduled           pod/coredns-ccb96694c-jd5h7                       Successfully assigned kube-system/coredns-ccb96694c-jd5h7 to k3d-vyking-dev-server-0
24m         Normal    SuccessfulCreate    replicaset/metrics-server-5985cbc9d7              Created pod: metrics-server-5985cbc9d7-kd6vj
24m         Normal    SuccessfulCreate    replicaset/coredns-ccb96694c                      Created pod: coredns-ccb96694c-jd5h7
24m         Normal    SuccessfulCreate    replicaset/local-path-provisioner-5cf85fd84d      Created pod: local-path-provisioner-5cf85fd84d-2nbk4
24m         Normal    Killing             pod/metrics-server-5985cbc9d7-phtvv               Stopping container metrics-server
24m         Normal    Killing             pod/local-path-provisioner-5cf85fd84d-rxsss       Stopping container local-path-provisioner
24m         Normal    Scheduled           pod/local-path-provisioner-5cf85fd84d-2nbk4       Successfully assigned kube-system/local-path-provisioner-5cf85fd84d-2nbk4 to k3d-vyking-dev-agent-0
24m         Normal    Scheduled           pod/metrics-server-5985cbc9d7-kd6vj               Successfully assigned kube-system/metrics-server-5985cbc9d7-kd6vj to k3d-vyking-dev-agent-1
24m         Warning   Unhealthy           pod/coredns-ccb96694c-nctpr                       Readiness probe failed: Get "http://10.42.2.2:8181/ready": dial tcp 10.42.2.2:8181: connect: connection refused
24m         Normal    Pulled              pod/metrics-server-5985cbc9d7-kd6vj               Container image "rancher/mirrored-metrics-server:v0.7.2" already present on machine
24m         Normal    Pulled              pod/coredns-ccb96694c-jd5h7                       Container image "rancher/mirrored-coredns-coredns:1.12.0" already present on machine
24m         Normal    Created             pod/coredns-ccb96694c-jd5h7                       Created container coredns
24m         Normal    Pulled              pod/local-path-provisioner-5cf85fd84d-2nbk4       Container image "rancher/local-path-provisioner:v0.0.30" already present on machine
24m         Warning   Unhealthy           pod/metrics-server-5985cbc9d7-phtvv               Readiness probe failed: Get "https://10.42.1.2:10250/readyz": net/http: request canceled while waiting for connection (Client.Timeout exceeded while awaiting headers)
24m         Normal    Created             pod/local-path-provisioner-5cf85fd84d-2nbk4       Created container local-path-provisioner
24m         Normal    Started             pod/coredns-ccb96694c-jd5h7                       Started container coredns
24m         Normal    Created             pod/metrics-server-5985cbc9d7-kd6vj               Created container metrics-server
24m         Warning   Unhealthy           pod/metrics-server-5985cbc9d7-kd6vj               Readiness probe failed: Get "https://10.42.1.3:10250/readyz": dial tcp 10.42.1.3:10250: connect: connection refused
24m         Warning   Unhealthy           pod/coredns-ccb96694c-jd5h7                       Readiness probe failed: Get "http://10.42.2.3:8181/ready": dial tcp 10.42.2.3:8181: connect: connection refused
24m         Normal    Started             pod/metrics-server-5985cbc9d7-kd6vj               Started container metrics-server
24m         Normal    Started             pod/local-path-provisioner-5cf85fd84d-2nbk4       Started container local-path-provisioner
24m         Warning   Unhealthy           pod/metrics-server-5985cbc9d7-kd6vj               Readiness probe failed: HTTP probe failed with statuscode: 500
14m         Normal    ScalingReplicaSet   deployment/sealed-secrets-controller              Scaled up replica set sealed-secrets-controller-79c4ffdbd7 to 1
14m         Normal    SuccessfulCreate    replicaset/sealed-secrets-controller-79c4ffdbd7   Created pod: sealed-secrets-controller-79c4ffdbd7-m4v7d
14m         Normal    Scheduled           pod/sealed-secrets-controller-79c4ffdbd7-m4v7d    Successfully assigned kube-system/sealed-secrets-controller-79c4ffdbd7-m4v7d to k3d-vyking-dev-agent-0
14m         Normal    Created             pod/sealed-secrets-controller-79c4ffdbd7-m4v7d    Created container sealed-secrets-controller
14m         Normal    Pulled              pod/sealed-secrets-controller-79c4ffdbd7-m4v7d    Container image "docker.io/bitnami/sealed-secrets-controller:0.27.1" already present on machine
14m         Normal    Started             pod/sealed-secrets-controller-79c4ffdbd7-m4v7d    Started container sealed-secrets-controller
14m         Warning   Unhealthy           pod/sealed-secrets-controller-79c4ffdbd7-m4v7d    Readiness probe failed: Get "http://10.42.0.4:8080/healthz": dial tcp 10.42.0.4:8080: connect: connection refused
7m47s       Normal    LeaderElection      lease/cert-manager-controller                     cert-manager-55c69bf5cf-9vz7r-external-cert-manager-controller became leader
7m45s       Normal    LeaderElection      lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-vnh5h_b089e515-867c-4c8b-a8d6-7dba49cd663c became leader
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
