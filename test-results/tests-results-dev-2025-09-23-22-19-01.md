# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-23 22:19:02 CEST
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
Kubernetes control plane is running at https://0.0.0.0:42379
CoreDNS is running at https://0.0.0.0:42379/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:42379/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 27m   v1.31.5+k3s1   172.19.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-83-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 27m   v1.31.5+k3s1   172.19.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-83-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   27m   v1.31.5+k3s1   172.19.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-83-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   8m20s
backend-dev       Active   69s
cert-manager      Active   2m35s
default           Active   27m
frontend-dev      Active   69s
ingress-nginx     Active   47s
kube-node-lease   Active   27m
kube-public       Active   27m
kube-system       Active   27m
mysql-dev         Active   3m27s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS    RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running   0          8m1s    10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-bgvsc   1/1     Running   0          8m1s    10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-dw5hh                  1/1     Running   0          8m3s    10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-nzrpm    1/1     Running   0          8m2s    10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-ntlv4                       1/1     Running   0          8m3s    10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-hrx99                  1/1     Running   0          3m52s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-s6pdt                  1/1     Running   0          8m2s    10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-server-556b554c94-5j7kd                      1/1     Running   0          8m2s    10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-server-556b554c94-h78jp                      1/1     Running   0          3m52s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-55c69bf5cf-bxq4n                       1/1     Running   0          2m31s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-bkj8w            1/1     Running   0          2m31s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-ndcgq               1/1     Running   0          2m31s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-bk8w9           1/1     Running   0          36s     10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-8tj2s                             1/1     Running   0          27m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-g58lx             1/1     Running   0          27m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     metrics-server-5985cbc9d7-d75mm                     1/1     Running   0          27m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     sealed-secrets-controller-79c4ffdbd7-2j496          1/1     Running   0          11m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP   10.43.105.91    <none>        8082/TCP                     8m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP   10.43.54.17     <none>        7000/TCP                     8m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP   10.43.142.18    <none>        5556/TCP,5557/TCP,5558/TCP   8m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP   10.43.224.37    <none>        6379/TCP                     8m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     8m4s    app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP   10.43.60.220    <none>        8081/TCP                     8m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP   10.43.152.73    <none>        8084/TCP                     8m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP   10.43.92.44     <none>        80/TCP,443/TCP               8m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
cert-manager    cert-manager                            ClusterIP   10.43.163.122   <none>        9402/TCP                     2m33s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP   10.43.144.241   <none>        9402/TCP                     2m33s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP   10.43.195.136   <none>        443/TCP,9402/TCP             2m33s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP   10.43.0.1       <none>        443/TCP                      27m     <none>
ingress-nginx   ingress-nginx-controller                ClusterIP   10.43.41.48     <none>        80/TCP,443/TCP               36s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP   10.43.218.179   <none>        443/TCP                      36s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP   10.43.0.10      <none>        53/UDP,53/TCP,9153/TCP       27m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP   10.43.41.67     <none>        443/TCP                      27m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP   10.43.45.238    <none>        8080/TCP                     11m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP   10.43.247.132   <none>        8081/TCP                     11m     name=sealed-secrets-controller
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
argocd-dev      argocd-applicationset-controller   1/1     1            1           8m4s
argocd-dev      argocd-dex-server                  1/1     1            1           8m4s
argocd-dev      argocd-notifications-controller    1/1     1            1           8m4s
argocd-dev      argocd-redis                       1/1     1            1           8m4s
argocd-dev      argocd-repo-server                 2/2     2            2           8m4s
argocd-dev      argocd-server                      2/2     2            2           8m4s
cert-manager    cert-manager                       1/1     1            1           2m33s
cert-manager    cert-manager-cainjector            1/1     1            1           2m33s
cert-manager    cert-manager-webhook               1/1     1            1           2m33s
ingress-nginx   ingress-nginx-controller           1/1     1            1           37s
kube-system     coredns                            1/1     1            1           27m
kube-system     local-path-provisioner             1/1     1            1           27m
kube-system     metrics-server                     1/1     1            1           27m
kube-system     sealed-secrets-controller          1/1     1            1           11m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     8m4s
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
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  27m
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
k3d-vyking-dev-agent-0    326m         10%      615Mi           7%          
k3d-vyking-dev-agent-1    235m         7%       474Mi           5%          
k3d-vyking-dev-server-0   490m         16%      1172Mi          14%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     39m          106Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-bgvsc   3m           52Mi            
argocd-dev      argocd-dex-server-796678d5bc-dw5hh                  1m           24Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-nzrpm    1m           95Mi            
argocd-dev      argocd-redis-7c7fb7fc74-ntlv4                       5m           10Mi            
argocd-dev      argocd-repo-server-d587f667c-hrx99                  16m          61Mi            
argocd-dev      argocd-repo-server-d587f667c-s6pdt                  10m          93Mi            
argocd-dev      argocd-server-556b554c94-5j7kd                      3m           35Mi            
argocd-dev      argocd-server-556b554c94-h78jp                      4m           35Mi            
cert-manager    cert-manager-55c69bf5cf-bxq4n                       9m           77Mi            
cert-manager    cert-manager-cainjector-5765b5f544-bkj8w            9m           57Mi            
cert-manager    cert-manager-webhook-6b67444dc9-ndcgq               2m           58Mi            
ingress-nginx   ingress-nginx-controller-599c5c76cc-bk8w9           6m           90Mi            
kube-system     coredns-ccb96694c-8tj2s                             8m           14Mi            
kube-system     local-path-provisioner-5cf85fd84d-g58lx             1m           6Mi             
kube-system     metrics-server-5985cbc9d7-d75mm                     22m          22Mi            
kube-system     sealed-secrets-controller-79c4ffdbd7-2j496          9m           14Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
cert-manager    2m11s       Normal    Completed                        job/cert-manager-startupapicheck                         Job completed
frontend-dev    67s         Normal    Issuing                          certificate/frontend-cert-dev                            Issuing certificate as Secret does not exist
frontend-dev    66s         Warning   BadConfig                        certificaterequest/frontend-cert-dev-1                   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
frontend-dev    66s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    66s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    66s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    66s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    66s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    66s         Normal    Issuing                          certificate/frontend-cert-dev                            The certificate has been successfully issued
frontend-dev    66s         Normal    Requested                        certificate/frontend-cert-dev                            Created new CertificateRequest resource "frontend-cert-dev-1"
frontend-dev    67s         Normal    Generated                        certificate/frontend-cert-dev                            Stored new private key in temporary Secret resource "frontend-cert-dev-26x4z"
frontend-dev    66s         Normal    cert-manager.io                  certificaterequest/frontend-cert-dev-1                   Certificate request has been approved by cert-manager.io
frontend-dev    66s         Normal    CertificateIssued                certificaterequest/frontend-cert-dev-1                   Certificate fetched from issuer successfully
ingress-nginx   48s         Normal    Pulling                          pod/ingress-nginx-admission-create-2mb9h                 Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   48s         Normal    Scheduled                        pod/ingress-nginx-admission-create-2mb9h                 Successfully assigned ingress-nginx/ingress-nginx-admission-create-2mb9h to k3d-vyking-dev-agent-0
ingress-nginx   48s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-create                       Created pod: ingress-nginx-admission-create-2mb9h
ingress-nginx   45s         Normal    Pulled                           pod/ingress-nginx-admission-create-2mb9h                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 2.66s (2.66s including waiting). Image size: 56758085 bytes.
ingress-nginx   45s         Normal    Created                          pod/ingress-nginx-admission-create-2mb9h                 Created container create
ingress-nginx   44s         Normal    Started                          pod/ingress-nginx-admission-create-2mb9h                 Started container create
ingress-nginx   41s         Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   40s         Normal    Scheduled                        pod/ingress-nginx-controller-599c5c76cc-bk8w9            Successfully assigned ingress-nginx/ingress-nginx-controller-599c5c76cc-bk8w9 to k3d-vyking-dev-agent-0
ingress-nginx   40s         Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-599c5c76cc to 1
ingress-nginx   40s         Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-599c5c76cc           Created pod: ingress-nginx-controller-599c5c76cc-bk8w9
ingress-nginx   39s         Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-bk8w9            Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
ingress-nginx   36s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-bk8w9            Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 2.804s (2.804s including waiting). Image size: 288689258 bytes.
ingress-nginx   36s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-bk8w9            Started container controller
ingress-nginx   36s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-bk8w9            Created container controller
ingress-nginx   34s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
ingress-nginx   33s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-bk8w9            NGINX reload triggered due to a change in configuration
ingress-nginx   16s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-6j2t4                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-6j2t4 to k3d-vyking-dev-server-0
ingress-nginx   16s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-6j2t4
ingress-nginx   15s         Normal    Pulling                          pod/ingress-nginx-admission-patch-6j2t4                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   12s         Normal    Pulled                           pod/ingress-nginx-admission-patch-6j2t4                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 2.778s (2.778s including waiting). Image size: 56758085 bytes.
ingress-nginx   12s         Normal    Created                          pod/ingress-nginx-admission-patch-6j2t4                  Created container patch
ingress-nginx   11s         Normal    Started                          pod/ingress-nginx-admission-patch-6j2t4                  Started container patch
argocd-dev      8s          Normal    ResourceUpdated                  application/frontend                                     Updated health status:  -> Healthy
argocd-dev      8s          Normal    ResourceUpdated                  application/frontend                                     Updated sync status:  -> Unknown
argocd-dev      8s          Normal    ResourceUpdated                  application/backend                                      Updated health status:  -> Healthy
argocd-dev      8s          Normal    ResourceUpdated                  application/backend                                      Updated sync status:  -> Unknown
ingress-nginx   8s          Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          8m6s    10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-applicationset-controller-78f49df558-bgvsc   1/1     Running   0          8m6s    10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dex-server-796678d5bc-dw5hh                  1/1     Running   0          8m8s    10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
argocd-notifications-controller-6d84bf8458-nzrpm    1/1     Running   0          8m7s    10.42.1.4   k3d-vyking-dev-agent-1    <none>           <none>
argocd-redis-7c7fb7fc74-ntlv4                       1/1     Running   0          8m8s    10.42.1.3   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-hrx99                  1/1     Running   0          3m57s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-repo-server-d587f667c-s6pdt                  1/1     Running   0          8m7s    10.42.2.4   k3d-vyking-dev-server-0   <none>           <none>
argocd-server-556b554c94-5j7kd                      1/1     Running   0          8m7s    10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-server-556b554c94-h78jp                      1/1     Running   0          3m57s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           8m8s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           8m8s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           8m8s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           8m8s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 2/2     2            2           8m8s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      2/2     2            2           8m8s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE    CONTAINERS               IMAGES
argocd-application-controller   1/1     8m9s   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### DaemonSets
```bash
+ kubectl get daemonset -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Services
```bash
+ kubectl get svc -n argocd-dev -o wide
NAME                                    TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-application-controller-metrics   ClusterIP   10.43.105.91   <none>        8082/TCP                     8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.54.17    <none>        7000/TCP                     8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.142.18   <none>        5556/TCP,5557/TCP,5558/TCP   8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.224.37   <none>        6379/TCP                     8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None           <none>        9121/TCP                     8m11s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.60.220   <none>        8081/TCP                     8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.152.73   <none>        8084/TCP                     8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.92.44    <none>        80/TCP,443/TCP               8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     8m13s
argocd-cmd-params-cm            41     8m13s
argocd-gpg-keys-cm              0      8m13s
argocd-notifications-cm         1      8m13s
argocd-rbac-cm                  4      8m13s
argocd-redis-health-configmap   2      8m13s
argocd-ssh-known-hosts-cm       1      8m13s
argocd-tls-certs-cm             0      8m13s
kube-root-ca.crt                1      8m27s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      7m57s
argocd-notifications-secret    Opaque               0      8m14s
argocd-redis                   Opaque               1      8m17s
argocd-secret                  Opaque               3      8m14s
repo-vyking-git                Opaque               2      7m33s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      8m27s
sh.helm.release.v1.argocd.v2   helm.sh/release.v1   1      4m13s
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
4m          Normal    Scheduled           pod/argocd-repo-server-d587f667c-hrx99                   Successfully assigned argocd-dev/argocd-repo-server-d587f667c-hrx99 to k3d-vyking-dev-agent-0
4m          Normal    Scheduled           pod/argocd-server-556b554c94-h78jp                       Successfully assigned argocd-dev/argocd-server-556b554c94-h78jp to k3d-vyking-dev-server-0
4m          Normal    SuccessfulCreate    replicaset/argocd-server-556b554c94                      Created pod: argocd-server-556b554c94-h78jp
3m59s       Normal    Created             pod/argocd-repo-server-d587f667c-hrx99                   Created container copyutil
3m59s       Normal    Pulled              pod/argocd-repo-server-d587f667c-hrx99                   Container image "quay.io/argoproj/argocd:v3.1.5" already present on machine
3m58s       Normal    Started             pod/argocd-repo-server-d587f667c-hrx99                   Started container copyutil
3m58s       Normal    Pulled              pod/argocd-server-556b554c94-h78jp                       Container image "quay.io/argoproj/argocd:v3.1.5" already present on machine
3m58s       Normal    Created             pod/argocd-server-556b554c94-h78jp                       Created container server
3m57s       Normal    Started             pod/argocd-server-556b554c94-h78jp                       Started container server
3m53s       Normal    Pulled              pod/argocd-repo-server-d587f667c-hrx99                   Container image "quay.io/argoproj/argocd:v3.1.5" already present on machine
3m52s       Normal    Started             pod/argocd-repo-server-d587f667c-hrx99                   Started container repo-server
3m52s       Normal    Created             pod/argocd-repo-server-d587f667c-hrx99                   Created container repo-server
2m28s       Normal    ResourceUpdated     application/mysql-sealed-secrets                         Updated sync status:  -> Unknown
2m28s       Normal    ResourceUpdated     application/mysql-sealed-secrets                         Updated health status:  -> Healthy
2m28s       Normal    ResourceUpdated     application/mysql                                        Updated sync status:  -> Unknown
2m28s       Normal    ResourceUpdated     application/mysql                                        Updated health status:  -> Healthy
13s         Normal    ResourceUpdated     application/backend                                      Updated sync status:  -> Unknown
13s         Normal    ResourceUpdated     application/backend                                      Updated health status:  -> Healthy
13s         Normal    ResourceUpdated     application/frontend                                     Updated sync status:  -> Unknown
13s         Normal    ResourceUpdated     application/frontend                                     Updated health status:  -> Healthy
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     39m          106Mi           
argocd-applicationset-controller-78f49df558-bgvsc   3m           52Mi            
argocd-dex-server-796678d5bc-dw5hh                  1m           24Mi            
argocd-notifications-controller-6d84bf8458-nzrpm    1m           95Mi            
argocd-redis-7c7fb7fc74-ntlv4                       5m           10Mi            
argocd-repo-server-d587f667c-hrx99                  16m          61Mi            
argocd-repo-server-d587f667c-s6pdt                  10m          93Mi            
argocd-server-556b554c94-5j7kd                      3m           35Mi            
argocd-server-556b554c94-h78jp                      4m           35Mi            
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
default   7m56s
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
kube-root-ca.crt   1      83s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      76s
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
79s         Normal    Issuing              certificate/frontend-cert-dev            Issuing certificate as Secret does not exist
78s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
78s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
78s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
78s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
78s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
78s         Warning   BadConfig            certificaterequest/frontend-cert-dev-1   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
78s         Normal    cert-manager.io      certificaterequest/frontend-cert-dev-1   Certificate request has been approved by cert-manager.io
78s         Normal    CertificateIssued    certificaterequest/frontend-cert-dev-1   Certificate fetched from issuer successfully
79s         Normal    Generated            certificate/frontend-cert-dev            Stored new private key in temporary Secret resource "frontend-cert-dev-26x4z"
78s         Normal    Requested            certificate/frontend-cert-dev            Created new CertificateRequest resource "frontend-cert-dev-1"
78s         Normal    Issuing              certificate/frontend-cert-dev            The certificate has been successfully issued
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
kube-root-ca.crt   1      87s
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
kube-root-ca.crt   1      3m54s
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
NAME                                       READY   STATUS    RESTARTS   AGE    IP          NODE                      NOMINATED NODE   READINESS GATES
cert-manager-55c69bf5cf-bxq4n              1/1     Running   0          3m1s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
cert-manager-cainjector-5765b5f544-bkj8w   1/1     Running   0          3m1s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-webhook-6b67444dc9-ndcgq      1/1     Running   0          3m1s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           3m2s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           3m2s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           3m2s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.163.122   <none>        9402/TCP           3m4s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.144.241   <none>        9402/TCP           3m4s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.195.136   <none>        443/TCP,9402/TCP   3m4s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      3m6s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      2m53s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      3m6s
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
3m4s        Normal   SuccessfulCreate    replicaset/cert-manager-55c69bf5cf              Created pod: cert-manager-55c69bf5cf-bxq4n
3m3s        Normal   Scheduled           pod/cert-manager-cainjector-5765b5f544-bkj8w    Successfully assigned cert-manager/cert-manager-cainjector-5765b5f544-bkj8w to k3d-vyking-dev-agent-1
3m3s        Normal   Scheduled           pod/cert-manager-55c69bf5cf-bxq4n               Successfully assigned cert-manager/cert-manager-55c69bf5cf-bxq4n to k3d-vyking-dev-server-0
3m3s        Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-ndcgq       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-ndcgq to k3d-vyking-dev-agent-1
3m4s        Normal   ScalingReplicaSet   deployment/cert-manager-cainjector              Scaled up replica set cert-manager-cainjector-5765b5f544 to 1
3m1s        Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-ndcgq       Container image "quay.io/jetstack/cert-manager-webhook:v1.16.1" already present on machine
3m1s        Normal   Pulled              pod/cert-manager-55c69bf5cf-bxq4n               Container image "quay.io/jetstack/cert-manager-controller:v1.16.1" already present on machine
3m1s        Normal   Created             pod/cert-manager-55c69bf5cf-bxq4n               Created container cert-manager-controller
3m1s        Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-bkj8w    Container image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" already present on machine
3m1s        Normal   Created             pod/cert-manager-webhook-6b67444dc9-ndcgq       Created container cert-manager-webhook
3m          Normal   Started             pod/cert-manager-webhook-6b67444dc9-ndcgq       Started container cert-manager-webhook
3m          Normal   Created             pod/cert-manager-cainjector-5765b5f544-bkj8w    Created container cert-manager-cainjector
2m59s       Normal   Started             pod/cert-manager-55c69bf5cf-bxq4n               Started container cert-manager-controller
2m58s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-bkj8w    Started container cert-manager-cainjector
2m46s       Normal   Scheduled           pod/cert-manager-startupapicheck-pcd8c          Successfully assigned cert-manager/cert-manager-startupapicheck-pcd8c to k3d-vyking-dev-agent-0
2m47s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-pcd8c
2m45s       Normal   Created             pod/cert-manager-startupapicheck-pcd8c          Created container cert-manager-startupapicheck
2m45s       Normal   Started             pod/cert-manager-startupapicheck-pcd8c          Started container cert-manager-startupapicheck
2m45s       Normal   Pulled              pod/cert-manager-startupapicheck-pcd8c          Container image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" already present on machine
2m40s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-bxq4n              4m           77Mi            
cert-manager-cainjector-5765b5f544-bkj8w   4m           57Mi            
cert-manager-webhook-6b67444dc9-ndcgq      2m           58Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-79c4ffdbd7-2j496   1/1     Running   0          12m   10.42.0.2   k3d-vyking-dev-agent-0   <none>           <none>
```

### Sealed Secrets deployment
```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           12m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.27.1   name=sealed-secrets-controller
```

### Sealed Secrets service
```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.45.238   <none>        8080/TCP   12m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
27m         Normal    AppliedManifest     addon/metrics-server-service                      Applied manifest at "/var/lib/rancher/k3s/server/manifests/metrics-server/metrics-server-service.yaml"
27m         Normal    ApplyingManifest    addon/metrics-server-service                      Applying manifest at "/var/lib/rancher/k3s/server/manifests/metrics-server/metrics-server-service.yaml"
27m         Normal    ApplyingManifest    addon/resource-reader                             Applying manifest at "/var/lib/rancher/k3s/server/manifests/metrics-server/resource-reader.yaml"
27m         Normal    ApplyingManifest    addon/runtimes                                    Applying manifest at "/var/lib/rancher/k3s/server/manifests/runtimes.yaml"
27m         Normal    AppliedManifest     addon/rolebindings                                Applied manifest at "/var/lib/rancher/k3s/server/manifests/rolebindings.yaml"
27m         Normal    ApplyingManifest    addon/rolebindings                                Applying manifest at "/var/lib/rancher/k3s/server/manifests/rolebindings.yaml"
27m         Normal    AppliedManifest     addon/resource-reader                             Applied manifest at "/var/lib/rancher/k3s/server/manifests/metrics-server/resource-reader.yaml"
27m         Normal    AppliedManifest     addon/runtimes                                    Applied manifest at "/var/lib/rancher/k3s/server/manifests/runtimes.yaml"
27m         Normal    ScalingReplicaSet   deployment/local-path-provisioner                 Scaled up replica set local-path-provisioner-5cf85fd84d to 1
27m         Normal    ScalingReplicaSet   deployment/coredns                                Scaled up replica set coredns-ccb96694c to 1
27m         Normal    ScalingReplicaSet   deployment/metrics-server                         Scaled up replica set metrics-server-5985cbc9d7 to 1
27m         Normal    Scheduled           pod/coredns-ccb96694c-8tj2s                       Successfully assigned kube-system/coredns-ccb96694c-8tj2s to k3d-vyking-dev-server-0
27m         Normal    SuccessfulCreate    replicaset/local-path-provisioner-5cf85fd84d      Created pod: local-path-provisioner-5cf85fd84d-g58lx
27m         Normal    SuccessfulCreate    replicaset/coredns-ccb96694c                      Created pod: coredns-ccb96694c-8tj2s
27m         Normal    SuccessfulCreate    replicaset/metrics-server-5985cbc9d7              Created pod: metrics-server-5985cbc9d7-d75mm
27m         Normal    Scheduled           pod/local-path-provisioner-5cf85fd84d-g58lx       Successfully assigned kube-system/local-path-provisioner-5cf85fd84d-g58lx to k3d-vyking-dev-agent-1
27m         Normal    Scheduled           pod/metrics-server-5985cbc9d7-d75mm               Successfully assigned kube-system/metrics-server-5985cbc9d7-d75mm to k3d-vyking-dev-server-0
27m         Normal    Pulling             pod/local-path-provisioner-5cf85fd84d-g58lx       Pulling image "rancher/local-path-provisioner:v0.0.30"
27m         Normal    Pulling             pod/coredns-ccb96694c-8tj2s                       Pulling image "rancher/mirrored-coredns-coredns:1.12.0"
27m         Normal    Pulling             pod/metrics-server-5985cbc9d7-d75mm               Pulling image "rancher/mirrored-metrics-server:v0.7.2"
26m         Normal    Pulled              pod/coredns-ccb96694c-8tj2s                       Successfully pulled image "rancher/mirrored-coredns-coredns:1.12.0" in 43.338s (43.338s including waiting). Image size: 71164071 bytes.
26m         Normal    Created             pod/coredns-ccb96694c-8tj2s                       Created container coredns
26m         Normal    Started             pod/coredns-ccb96694c-8tj2s                       Started container coredns
26m         Normal    Pulled              pod/local-path-provisioner-5cf85fd84d-g58lx       Successfully pulled image "rancher/local-path-provisioner:v0.0.30" in 1m17.742s (1m17.742s including waiting). Image size: 52043662 bytes.
26m         Normal    Started             pod/local-path-provisioner-5cf85fd84d-g58lx       Started container local-path-provisioner
26m         Normal    Created             pod/local-path-provisioner-5cf85fd84d-g58lx       Created container local-path-provisioner
20m         Normal    Created             pod/metrics-server-5985cbc9d7-d75mm               Created container metrics-server
20m         Normal    Pulled              pod/metrics-server-5985cbc9d7-d75mm               Successfully pulled image "rancher/mirrored-metrics-server:v0.7.2" in 6m25.019s (6m25.019s including waiting). Image size: 68121111 bytes.
20m         Warning   Unhealthy           pod/metrics-server-5985cbc9d7-d75mm               Readiness probe failed: Get "https://10.42.2.3:10250/readyz": dial tcp 10.42.2.3:10250: connect: connection refused
20m         Normal    Started             pod/metrics-server-5985cbc9d7-d75mm               Started container metrics-server
20m         Warning   Unhealthy           pod/metrics-server-5985cbc9d7-d75mm               Readiness probe failed: HTTP probe failed with statuscode: 500
12m         Normal    Scheduled           pod/sealed-secrets-controller-79c4ffdbd7-2j496    Successfully assigned kube-system/sealed-secrets-controller-79c4ffdbd7-2j496 to k3d-vyking-dev-agent-0
12m         Normal    SuccessfulCreate    replicaset/sealed-secrets-controller-79c4ffdbd7   Created pod: sealed-secrets-controller-79c4ffdbd7-2j496
12m         Normal    ScalingReplicaSet   deployment/sealed-secrets-controller              Scaled up replica set sealed-secrets-controller-79c4ffdbd7 to 1
11m         Normal    Pulled              pod/sealed-secrets-controller-79c4ffdbd7-2j496    Container image "docker.io/bitnami/sealed-secrets-controller:0.27.1" already present on machine
11m         Normal    Created             pod/sealed-secrets-controller-79c4ffdbd7-2j496    Created container sealed-secrets-controller
11m         Normal    Started             pod/sealed-secrets-controller-79c4ffdbd7-2j496    Started container sealed-secrets-controller
11m         Warning   Unhealthy           pod/sealed-secrets-controller-79c4ffdbd7-2j496    Readiness probe failed: Get "http://10.42.0.2:8080/healthz": dial tcp 10.42.0.2:8080: connect: connection refused
2m57s       Normal    LeaderElection      lease/cert-manager-controller                     cert-manager-55c69bf5cf-bxq4n-external-cert-manager-controller became leader
2m56s       Normal    LeaderElection      lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-bkj8w_6d2e4a34-e630-40f0-b389-38651a14eb6b became leader
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
