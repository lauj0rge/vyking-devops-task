# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 20:59:27 CEST
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
Kubernetes control plane is running at https://0.0.0.0:44735
CoreDNS is running at https://0.0.0.0:44735/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:44735/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 18m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 18m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   18m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   9m5s
backend-dev       Active   2m1s
cert-manager      Active   3m54s
default           Active   18m
frontend-dev      Active   2m1s
ingress-nginx     Active   114s
kube-node-lease   Active   18m
kube-public       Active   18m
kube-system       Active   18m
mysql-dev         Active   4m5s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS      RESTARTS       AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running     0              7m32s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-wt862   1/1     Running     0              7m33s   10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-dlgfd                  1/1     Running     4 (5m6s ago)   7m34s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-dfz45    1/1     Running     0              7m33s   10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-vgk29                       1/1     Running     0              7m34s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-g7xpf                  1/1     Running     0              7m33s   10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-server-556b554c94-flg6s                      1/1     Running     0              7m32s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-55c69bf5cf-cxr58                       1/1     Running     0              3m48s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-gb4pg            1/1     Running     0              3m48s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-tsl74               1/1     Running     0              3m48s   10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-4cddm           1/1     Running     0              91s     10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
kube-system     coredns-ccb96694c-6s6ql                             1/1     Running     0              18m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-crd-r94wl                      0/1     Completed   0              18m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     helm-install-traefik-rgbhc                          0/1     Completed   2              18m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-n8f8s             1/1     Running     0              18m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     metrics-server-5985cbc9d7-sxnd7                     1/1     Running     0              18m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-hk9h9          1/1     Running     0              18m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-56365a38-srtj5                        2/2     Running     0              16m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-56365a38-tcpwz                        2/2     Running     0              16m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-56365a38-xgcvv                        2/2     Running     0              16m     10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     traefik-5d45fc8cc9-5f6d6                            1/1     Running     0              16m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.32.29     <none>                             8082/TCP                     7m35s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.29.96     <none>                             7000/TCP                     7m35s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.170.44    <none>                             5556/TCP,5557/TCP,5558/TCP   7m35s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.161.61    <none>                             6379/TCP                     7m35s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     7m35s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.194.173   <none>                             8081/TCP                     7m35s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.121.56    <none>                             8084/TCP                     7m35s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.10.91     <none>                             80/TCP,443/TCP               7m35s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
cert-manager    cert-manager                            ClusterIP      10.43.185.197   <none>                             9402/TCP                     3m51s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.192.205   <none>                             9402/TCP                     3m51s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.95.133    <none>                             443/TCP,9402/TCP             3m51s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      18m     <none>
ingress-nginx   ingress-nginx-controller                ClusterIP      10.43.180.151   <none>                             80/TCP,443/TCP               92s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.113.203   <none>                             443/TCP                      92s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       18m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.6.212     <none>                             443/TCP                      18m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.216.19    <none>                             8080/TCP                     18m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.249.131   <none>                             8081/TCP                     18m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.113.99    172.18.0.2,172.18.0.3,172.18.0.4   80:32021/TCP,443:30491/TCP   16m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
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
argocd-dev      argocd-applicationset-controller   1/1     1            1           7m35s
argocd-dev      argocd-dex-server                  1/1     1            1           7m35s
argocd-dev      argocd-notifications-controller    1/1     1            1           7m35s
argocd-dev      argocd-redis                       1/1     1            1           7m35s
argocd-dev      argocd-repo-server                 1/1     1            1           7m35s
argocd-dev      argocd-server                      1/1     1            1           7m35s
cert-manager    cert-manager                       1/1     1            1           3m50s
cert-manager    cert-manager-cainjector            1/1     1            1           3m50s
cert-manager    cert-manager-webhook               1/1     1            1           3m50s
ingress-nginx   ingress-nginx-controller           1/1     1            1           93s
kube-system     coredns                            1/1     1            1           18m
kube-system     local-path-provisioner             1/1     1            1           18m
kube-system     metrics-server                     1/1     1            1           18m
kube-system     sealed-secrets-controller          1/1     1            1           18m
kube-system     traefik                            1/1     1            1           16m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     7m36s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-56365a38   3         3         3       3            3           <none>          16m
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
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  18m
```

### Jobs (all namespaces)
```bash
+ kubectl get jobs -A
NAMESPACE     NAME                       STATUS     COMPLETIONS   DURATION   AGE
kube-system   helm-install-traefik       Complete   1/1           92s        18m
kube-system   helm-install-traefik-crd   Complete   1/1           74s        18m
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
k3d-vyking-dev-agent-0    243m         8%       585Mi           7%          
k3d-vyking-dev-agent-1    505m         16%      347Mi           4%          
k3d-vyking-dev-server-0   327m         10%      1084Mi          13%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     17m          218Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-wt862   2m           25Mi            
argocd-dev      argocd-dex-server-796678d5bc-dlgfd                  0m           35Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-dfz45    1m           29Mi            
argocd-dev      argocd-redis-7c7fb7fc74-vgk29                       3m           3Mi             
argocd-dev      argocd-repo-server-d587f667c-g7xpf                  1m           71Mi            
argocd-dev      argocd-server-556b554c94-flg6s                      4m           34Mi            
cert-manager    cert-manager-55c69bf5cf-cxr58                       4m           29Mi            
cert-manager    cert-manager-cainjector-5765b5f544-gb4pg            3m           23Mi            
cert-manager    cert-manager-webhook-6b67444dc9-tsl74               2m           16Mi            
ingress-nginx   ingress-nginx-controller-599c5c76cc-4cddm           4m           46Mi            
kube-system     coredns-ccb96694c-6s6ql                             6m           20Mi            
kube-system     local-path-provisioner-5cf85fd84d-n8f8s             1m           8Mi             
kube-system     metrics-server-5985cbc9d7-sxnd7                     18m          28Mi            
kube-system     sealed-secrets-controller-5655858cbc-hk9h9          2m           16Mi            
kube-system     svclb-traefik-56365a38-srtj5                        0m           0Mi             
kube-system     svclb-traefik-56365a38-tcpwz                        0m           0Mi             
kube-system     svclb-traefik-56365a38-xgcvv                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-5f6d6                            3m           33Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
frontend-dev    2m4s        Normal    cert-manager.io                  certificaterequest/frontend-cert-dev-1                   Certificate request has been approved by cert-manager.io
frontend-dev    2m4s        Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    2m4s        Normal    Generated                        certificate/frontend-cert-dev                            Stored new private key in temporary Secret resource "frontend-cert-dev-ppfr5"
frontend-dev    2m4s        Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    2m4s        Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    2m3s        Normal    CertificateIssued                certificaterequest/frontend-cert-dev-1                   Certificate fetched from issuer successfully
frontend-dev    2m3s        Warning   BadConfig                        certificaterequest/frontend-cert-dev-1                   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
frontend-dev    2m2s        Normal    Issuing                          certificate/frontend-cert-dev                            The certificate has been successfully issued
argocd-dev      2m1s        Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
argocd-dev      2m1s        Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
backend-dev     2m1s        Normal    Unsealed                         sealedsecret/mysql-credentials-dev                       SealedSecret unsealed successfully
argocd-dev      2m          Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
argocd-dev      119s        Normal    OperationCompleted               application/mysql-sealed-secrets                         Sync operation to 98d8142936ab15f276af64bfd4b067c6c983107d succeeded
argocd-dev      118s        Normal    ResourceUpdated                  application/frontend                                     Updated health status:  -> Healthy
argocd-dev      118s        Normal    ResourceUpdated                  application/backend                                      Updated sync status:  -> Unknown
argocd-dev      118s        Normal    ResourceUpdated                  application/backend                                      Updated health status:  -> Healthy
argocd-dev      118s        Normal    ResourceUpdated                  application/frontend                                     Updated sync status:  -> Unknown
ingress-nginx   118s        Normal    SuccessfulCreate                 job/ingress-nginx-admission-create                       Created pod: ingress-nginx-admission-create-66m8n
ingress-nginx   116s        Normal    Scheduled                        pod/ingress-nginx-admission-create-66m8n                 Successfully assigned ingress-nginx/ingress-nginx-admission-create-66m8n to k3d-vyking-dev-server-0
ingress-nginx   116s        Normal    Pulling                          pod/ingress-nginx-admission-create-66m8n                 Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   106s        Normal    Started                          pod/ingress-nginx-admission-create-66m8n                 Started container create
ingress-nginx   106s        Normal    Created                          pod/ingress-nginx-admission-create-66m8n                 Created container create
ingress-nginx   106s        Normal    Pulled                           pod/ingress-nginx-admission-create-66m8n                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 10.003s (10.003s including waiting). Image size: 23913475 bytes.
ingress-nginx   101s        Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   98s         Normal    Scheduled                        pod/ingress-nginx-controller-599c5c76cc-4cddm            Successfully assigned ingress-nginx/ingress-nginx-controller-599c5c76cc-4cddm to k3d-vyking-dev-server-0
ingress-nginx   99s         Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-599c5c76cc to 1
ingress-nginx   99s         Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-599c5c76cc           Created pod: ingress-nginx-controller-599c5c76cc-4cddm
ingress-nginx   98s         Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-4cddm            Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
ingress-nginx   56s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-4cddm            Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 42.382s (42.382s including waiting). Image size: 105401148 bytes.
ingress-nginx   56s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-4cddm            Created container controller
ingress-nginx   55s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-4cddm            Started container controller
ingress-nginx   53s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
ingress-nginx   52s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-4cddm            NGINX reload triggered due to a change in configuration
ingress-nginx   34s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-hs485
ingress-nginx   33s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-hs485                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-hs485 to k3d-vyking-dev-agent-1
ingress-nginx   33s         Normal    Pulling                          pod/ingress-nginx-admission-patch-hs485                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   22s         Normal    Created                          pod/ingress-nginx-admission-patch-hs485                  Created container patch
ingress-nginx   22s         Normal    Pulled                           pod/ingress-nginx-admission-patch-hs485                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 11.059s (11.059s including waiting). Image size: 23913475 bytes.
ingress-nginx   21s         Normal    Started                          pod/ingress-nginx-admission-patch-hs485                  Started container patch
ingress-nginx   16s         Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS        AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0               7m41s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-applicationset-controller-78f49df558-wt862   1/1     Running   0               7m42s   10.42.1.9   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dex-server-796678d5bc-dlgfd                  1/1     Running   4 (5m15s ago)   7m43s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
argocd-notifications-controller-6d84bf8458-dfz45    1/1     Running   0               7m42s   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
argocd-redis-7c7fb7fc74-vgk29                       1/1     Running   0               7m43s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-g7xpf                  1/1     Running   0               7m42s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-server-556b554c94-flg6s                      1/1     Running   0               7m41s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           7m44s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           7m44s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           7m44s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           7m44s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           7m44s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           7m44s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     7m44s   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.32.29     <none>        8082/TCP                     7m47s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.29.96     <none>        7000/TCP                     7m47s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.170.44    <none>        5556/TCP,5557/TCP,5558/TCP   7m47s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.161.61    <none>        6379/TCP                     7m47s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     7m47s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.194.173   <none>        8081/TCP                     7m47s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.121.56    <none>        8084/TCP                     7m47s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.10.91     <none>        80/TCP,443/TCP               7m47s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     7m50s
argocd-cmd-params-cm            41     7m50s
argocd-gpg-keys-cm              0      7m50s
argocd-notifications-cm         1      7m50s
argocd-rbac-cm                  4      7m50s
argocd-redis-health-configmap   2      7m50s
argocd-ssh-known-hosts-cm       1      7m50s
argocd-tls-certs-cm             0      7m50s
kube-root-ca.crt                1      9m19s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      4m50s
argocd-notifications-secret    Opaque               0      7m50s
argocd-redis                   Opaque               1      7m54s
argocd-secret                  Opaque               3      7m50s
repo-vyking-git                Opaque               2      4m34s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      9m18s
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
4m58s       Normal    Created              pod/argocd-notifications-controller-6d84bf8458-dfz45     Created container notifications-controller
4m58s       Normal    Pulled               pod/argocd-notifications-controller-6d84bf8458-dfz45     Successfully pulled image "quay.io/argoproj/argocd:v3.1.5" in 2m46.81s (2m46.81s including waiting). Image size: 193683423 bytes.
4m57s       Normal    Created              pod/argocd-server-556b554c94-flg6s                       Created container server
4m57s       Normal    Started              pod/argocd-notifications-controller-6d84bf8458-dfz45     Started container notifications-controller
4m56s       Normal    Started              pod/argocd-server-556b554c94-flg6s                       Started container server
3m34s       Normal    OperationStarted     application/mysql-sealed-secrets                         Initiated automated sync to '98d8142936ab15f276af64bfd4b067c6c983107d'
3m34s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status:  -> OutOfSync
3m34s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status:  -> Healthy
3m26s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
3m24s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
3m11s       Normal    ResourceUpdated      application/mysql                                        Updated health status:  -> Healthy
3m11s       Normal    ResourceUpdated      application/mysql                                        Updated sync status:  -> Unknown
2m9s        Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
2m9s        Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
2m8s        Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
2m7s        Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to 98d8142936ab15f276af64bfd4b067c6c983107d succeeded
2m6s        Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Healthy
2m6s        Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> Unknown
2m6s        Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Healthy
2m6s        Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> Unknown
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     17m          218Mi           
argocd-applicationset-controller-78f49df558-wt862   2m           25Mi            
argocd-dex-server-796678d5bc-dlgfd                  0m           35Mi            
argocd-notifications-controller-6d84bf8458-dfz45    1m           29Mi            
argocd-redis-7c7fb7fc74-vgk29                       3m           3Mi             
argocd-repo-server-d587f667c-g7xpf                  1m           71Mi            
argocd-server-556b554c94-flg6s                      4m           34Mi            
```


### Applications
```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
backend                Unknown       Healthy
frontend               Unknown       Healthy
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
default   4m56s
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
kube-root-ca.crt   1      2m27s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m21s
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
2m29s       Normal    Issuing              certificate/frontend-cert-dev            Issuing certificate as Secret does not exist
2m27s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m27s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m27s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m27s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m27s       Normal    cert-manager.io      certificaterequest/frontend-cert-dev-1   Certificate request has been approved by cert-manager.io
2m27s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m27s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m27s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m27s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m27s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m27s       Normal    Requested            certificate/frontend-cert-dev            Created new CertificateRequest resource "frontend-cert-dev-1"
2m27s       Normal    Generated            certificate/frontend-cert-dev            Stored new private key in temporary Secret resource "frontend-cert-dev-ppfr5"
2m27s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m26s       Normal    CertificateIssued    certificaterequest/frontend-cert-dev-1   Certificate fetched from issuer successfully
2m26s       Warning   BadConfig            certificaterequest/frontend-cert-dev-1   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
2m25s       Normal    Issuing              certificate/frontend-cert-dev            The certificate has been successfully issued
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
kube-root-ca.crt   1      2m43s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      2m34s
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
2m36s       Normal   Unsealed   sealedsecret/mysql-credentials-dev   SealedSecret unsealed successfully
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
kube-root-ca.crt   1      4m52s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   4      3m59s
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
4m3s        Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
cert-manager-55c69bf5cf-cxr58              1/1     Running   0          4m40s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-cainjector-5765b5f544-gb4pg   1/1     Running   0          4m40s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager-webhook-6b67444dc9-tsl74      1/1     Running   0          4m40s   10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           4m41s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           4m41s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           4m41s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.185.197   <none>        9402/TCP           4m44s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.192.205   <none>        9402/TCP           4m44s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.95.133    <none>        443/TCP,9402/TCP   4m44s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      4m49s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      4m
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      4m48s
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
4m44s       Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-tsl74       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-tsl74 to k3d-vyking-dev-agent-1
4m40s       Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-tsl74       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
4m40s       Normal   Pulling             pod/cert-manager-55c69bf5cf-cxr58               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
4m40s       Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-gb4pg    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
4m7s        Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-tsl74       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 33.184s (33.184s including waiting). Image size: 18192443 bytes.
4m7s        Normal   Created             pod/cert-manager-webhook-6b67444dc9-tsl74       Created container cert-manager-webhook
4m5s        Normal   Started             pod/cert-manager-webhook-6b67444dc9-tsl74       Started container cert-manager-webhook
4m          Normal   Created             pod/cert-manager-cainjector-5765b5f544-gb4pg    Created container cert-manager-cainjector
4m          Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-gb4pg    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 39.993s (39.993s including waiting). Image size: 15426355 bytes.
3m58s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-gb4pg    Started container cert-manager-cainjector
3m50s       Normal   Pulled              pod/cert-manager-55c69bf5cf-cxr58               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 50.748s (50.748s including waiting). Image size: 21189387 bytes.
3m49s       Normal   Created             pod/cert-manager-55c69bf5cf-cxr58               Created container cert-manager-controller
3m48s       Normal   Started             pod/cert-manager-55c69bf5cf-cxr58               Started container cert-manager-controller
3m39s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-dcgjb
3m38s       Normal   Scheduled           pod/cert-manager-startupapicheck-dcgjb          Successfully assigned cert-manager/cert-manager-startupapicheck-dcgjb to k3d-vyking-dev-agent-1
3m37s       Normal   Pulling             pod/cert-manager-startupapicheck-dcgjb          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
3m27s       Normal   Created             pod/cert-manager-startupapicheck-dcgjb          Created container cert-manager-startupapicheck
3m27s       Normal   Pulled              pod/cert-manager-startupapicheck-dcgjb          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 9.763s (9.763s including waiting). Image size: 14095526 bytes.
3m26s       Normal   Started             pod/cert-manager-startupapicheck-dcgjb          Started container cert-manager-startupapicheck
3m22s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-cxr58              3m           29Mi            
cert-manager-cainjector-5765b5f544-gb4pg   3m           23Mi            
cert-manager-webhook-6b67444dc9-tsl74      2m           16Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                      NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-hk9h9   1/1     Running   0          18m   10.42.2.2   k3d-vyking-dev-server-0   <none>           <none>
```

### Sealed Secrets deployment
```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           18m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.26.0   name=sealed-secrets-controller
```

### Sealed Secrets service
```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.216.19   <none>        8080/TCP   18m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
17m         Normal    Scheduled              pod/traefik-5d45fc8cc9-5f6d6                      Successfully assigned kube-system/traefik-5d45fc8cc9-5f6d6 to k3d-vyking-dev-server-0
17m         Normal    SuccessfulCreate       daemonset/svclb-traefik-56365a38                  Created pod: svclb-traefik-56365a38-tcpwz
17m         Normal    SuccessfulCreate       daemonset/svclb-traefik-56365a38                  Created pod: svclb-traefik-56365a38-xgcvv
17m         Normal    Scheduled              pod/svclb-traefik-56365a38-xgcvv                  Successfully assigned kube-system/svclb-traefik-56365a38-xgcvv to k3d-vyking-dev-agent-1
17m         Normal    Scheduled              pod/svclb-traefik-56365a38-srtj5                  Successfully assigned kube-system/svclb-traefik-56365a38-srtj5 to k3d-vyking-dev-agent-0
17m         Normal    SuccessfulCreate       daemonset/svclb-traefik-56365a38                  Created pod: svclb-traefik-56365a38-srtj5
17m         Normal    Scheduled              pod/svclb-traefik-56365a38-tcpwz                  Successfully assigned kube-system/svclb-traefik-56365a38-tcpwz to k3d-vyking-dev-server-0
17m         Normal    Pulling                pod/traefik-5d45fc8cc9-5f6d6                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
17m         Normal    Pulling                pod/svclb-traefik-56365a38-xgcvv                  Pulling image "rancher/klipper-lb:v0.4.9"
17m         Normal    Pulling                pod/svclb-traefik-56365a38-tcpwz                  Pulling image "rancher/klipper-lb:v0.4.9"
17m         Normal    Pulling                pod/svclb-traefik-56365a38-srtj5                  Pulling image "rancher/klipper-lb:v0.4.9"
17m         Normal    Completed              job/helm-install-traefik                          Job completed
17m         Normal    Created                pod/svclb-traefik-56365a38-xgcvv                  Created container lb-tcp-80
17m         Normal    Pulled                 pod/svclb-traefik-56365a38-xgcvv                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 10.117s (10.117s including waiting). Image size: 4990278 bytes.
17m         Normal    Pulled                 pod/svclb-traefik-56365a38-srtj5                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 11.935s (11.935s including waiting). Image size: 4990278 bytes.
17m         Normal    Pulled                 pod/svclb-traefik-56365a38-xgcvv                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    Created                pod/svclb-traefik-56365a38-xgcvv                  Created container lb-tcp-443
17m         Normal    Started                pod/svclb-traefik-56365a38-xgcvv                  Started container lb-tcp-80
17m         Normal    Created                pod/svclb-traefik-56365a38-srtj5                  Created container lb-tcp-80
17m         Normal    Started                pod/svclb-traefik-56365a38-srtj5                  Started container lb-tcp-80
17m         Normal    Started                pod/svclb-traefik-56365a38-xgcvv                  Started container lb-tcp-443
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.4]
17m         Normal    Created                pod/svclb-traefik-56365a38-tcpwz                  Created container lb-tcp-80
17m         Normal    Pulled                 pod/svclb-traefik-56365a38-srtj5                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    Pulled                 pod/svclb-traefik-56365a38-tcpwz                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 12.733s (12.733s including waiting). Image size: 4990278 bytes.
17m         Normal    Created                pod/svclb-traefik-56365a38-srtj5                  Created container lb-tcp-443
17m         Normal    Started                pod/svclb-traefik-56365a38-tcpwz                  Started container lb-tcp-80
17m         Normal    Pulled                 pod/svclb-traefik-56365a38-tcpwz                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.4] -> [172.18.0.3 172.18.0.4]
17m         Normal    Started                pod/svclb-traefik-56365a38-srtj5                  Started container lb-tcp-443
17m         Normal    Created                pod/svclb-traefik-56365a38-tcpwz                  Created container lb-tcp-443
17m         Normal    Started                pod/svclb-traefik-56365a38-tcpwz                  Started container lb-tcp-443
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
17m         Normal    Pulled                 pod/traefik-5d45fc8cc9-5f6d6                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 37.888s (37.888s including waiting). Image size: 49449055 bytes.
17m         Normal    Created                pod/traefik-5d45fc8cc9-5f6d6                      Created container traefik
17m         Normal    Started                pod/traefik-5d45fc8cc9-5f6d6                      Started container traefik
16m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
17m         Warning   Unhealthy              pod/traefik-5d45fc8cc9-5f6d6                      Readiness probe failed: HTTP probe failed with statuscode: 404
3m57s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-gb4pg_9b811534-1a91-4b95-895d-73d32fba72a0 became leader
3m46s       Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-cxr58-external-cert-manager-controller became leader
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

### Deployment traefik
```bash
+ kubectl rollout status deploy traefik -n kube-system --timeout=30s
deployment "traefik" successfully rolled out
```

### DaemonSet svclb-traefik-56365a38
```bash
+ kubectl rollout status daemonset svclb-traefik-56365a38 -n kube-system --timeout=30s
daemon set "svclb-traefik-56365a38" successfully rolled out
```


✅ Tests complete.
