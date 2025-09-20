# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 16:23:57 CEST
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
Kubernetes control plane is running at https://0.0.0.0:41555
CoreDNS is running at https://0.0.0.0:41555/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:41555/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

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
argocd-dev        Active   9m26s
backend-dev       Active   2m10s
cert-manager      Active   4m12s
default           Active   18m
frontend-dev      Active   2m10s
ingress-nginx     Active   2m4s
kube-node-lease   Active   18m
kube-public       Active   18m
kube-system       Active   18m
mysql-dev         Active   4m24s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS      RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running     0          7m56s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-flzxp   1/1     Running     0          7m58s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-w6l6r                  1/1     Running     0          7m58s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-4wpt6    1/1     Running     0          7m58s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-26phn                       1/1     Running     0          7m56s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-w4jkg                  1/1     Running     0          7m58s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-server-556b554c94-f2pdh                      1/1     Running     0          7m58s   10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-55c69bf5cf-2mb54                       1/1     Running     0          4m6s    10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-d68wt            1/1     Running     0          4m6s    10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-nghpf               1/1     Running     0          4m6s    10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-ltbll           1/1     Running     0          100s    10.42.1.12   k3d-vyking-dev-agent-1    <none>           <none>
kube-system     coredns-ccb96694c-k2rnm                             1/1     Running     0          18m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-crd-2nlvf                      0/1     Completed   0          18m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-spmqg                          0/1     Completed   1          18m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-xj2q2             1/1     Running     0          18m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     metrics-server-5985cbc9d7-cs2dd                     1/1     Running     0          18m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-h7lp6          1/1     Running     0          17m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-f5f22a9c-d29hr                        2/2     Running     0          16m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-f5f22a9c-ns6q4                        2/2     Running     0          16m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-f5f22a9c-vm8b4                        2/2     Running     0          16m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     traefik-5d45fc8cc9-ndhfr                            1/1     Running     0          16m     10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE    SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.22.104    <none>                             8082/TCP                     8m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.54.140    <none>                             7000/TCP                     8m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.8.158     <none>                             5556/TCP,5557/TCP,5558/TCP   8m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.250.158   <none>                             6379/TCP                     8m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     8m     app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.71.13     <none>                             8081/TCP                     8m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.215.243   <none>                             8084/TCP                     8m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.58.40     <none>                             80/TCP,443/TCP               8m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
cert-manager    cert-manager                            ClusterIP      10.43.200.74    <none>                             9402/TCP                     4m8s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.230.196   <none>                             9402/TCP                     4m8s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.101.23    <none>                             443/TCP,9402/TCP             4m8s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      18m    <none>
ingress-nginx   ingress-nginx-controller                ClusterIP      10.43.36.76     <none>                             80/TCP,443/TCP               101s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.32.100    <none>                             443/TCP                      101s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       18m    k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.127.96    <none>                             443/TCP                      18m    k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.99.134    <none>                             8080/TCP                     17m    name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.155.89    <none>                             8081/TCP                     17m    name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.160.154   172.18.0.2,172.18.0.3,172.18.0.4   80:32686/TCP,443:30979/TCP   16m    app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
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
argocd-dev      argocd-applicationset-controller   1/1     1            1           8m
argocd-dev      argocd-dex-server                  1/1     1            1           8m
argocd-dev      argocd-notifications-controller    1/1     1            1           8m
argocd-dev      argocd-redis                       1/1     1            1           8m
argocd-dev      argocd-repo-server                 1/1     1            1           8m
argocd-dev      argocd-server                      1/1     1            1           8m
cert-manager    cert-manager                       1/1     1            1           4m8s
cert-manager    cert-manager-cainjector            1/1     1            1           4m8s
cert-manager    cert-manager-webhook               1/1     1            1           4m8s
ingress-nginx   ingress-nginx-controller           1/1     1            1           102s
kube-system     coredns                            1/1     1            1           18m
kube-system     local-path-provisioner             1/1     1            1           18m
kube-system     metrics-server                     1/1     1            1           18m
kube-system     sealed-secrets-controller          1/1     1            1           17m
kube-system     traefik                            1/1     1            1           16m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     7m59s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-f5f22a9c   3         3         3       3            3           <none>          16m
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
kube-system   helm-install-traefik       Complete   1/1           95s        18m
kube-system   helm-install-traefik-crd   Complete   1/1           88s        18m
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
k3d-vyking-dev-agent-0    600m         20%      523Mi           6%          
k3d-vyking-dev-agent-1    233m         7%       515Mi           6%          
k3d-vyking-dev-server-0   263m         8%       1066Mi          13%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     22m          192Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-flzxp   2m           24Mi            
argocd-dev      argocd-dex-server-796678d5bc-w6l6r                  0m           38Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-4wpt6    1m           21Mi            
argocd-dev      argocd-redis-7c7fb7fc74-26phn                       3m           4Mi             
argocd-dev      argocd-repo-server-d587f667c-w4jkg                  2m           52Mi            
argocd-dev      argocd-server-556b554c94-f2pdh                      2m           46Mi            
cert-manager    cert-manager-55c69bf5cf-2mb54                       5m           62Mi            
cert-manager    cert-manager-cainjector-5765b5f544-d68wt            4m           51Mi            
cert-manager    cert-manager-webhook-6b67444dc9-nghpf               4m           19Mi            
ingress-nginx   ingress-nginx-controller-599c5c76cc-ltbll           6m           51Mi            
kube-system     coredns-ccb96694c-k2rnm                             5m           23Mi            
kube-system     local-path-provisioner-5cf85fd84d-xj2q2             1m           19Mi            
kube-system     metrics-server-5985cbc9d7-cs2dd                     17m          29Mi            
kube-system     sealed-secrets-controller-5655858cbc-h7lp6          3m           19Mi            
kube-system     svclb-traefik-f5f22a9c-d29hr                        0m           0Mi             
kube-system     svclb-traefik-f5f22a9c-ns6q4                        0m           0Mi             
kube-system     svclb-traefik-f5f22a9c-vm8b4                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-ndhfr                            2m           47Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
frontend-dev    2m11s       Normal    cert-manager.io                  certificaterequest/frontend-cert-dev-1                   Certificate request has been approved by cert-manager.io
frontend-dev    2m11s       Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev    2m11s       Normal    Requested                        certificate/frontend-cert-dev                            Created new CertificateRequest resource "frontend-cert-dev-1"
frontend-dev    2m11s       Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev    2m11s       Normal    IssuerNotFound                   certificaterequest/frontend-cert-dev-1                   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
frontend-dev    2m8s        Normal    CertificateIssued                certificaterequest/frontend-cert-dev-1                   Certificate fetched from issuer successfully
frontend-dev    2m8s        Warning   BadConfig                        certificaterequest/frontend-cert-dev-1                   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
frontend-dev    2m7s        Normal    Issuing                          certificate/frontend-cert-dev                            The certificate has been successfully issued
argocd-dev      2m6s        Normal    ResourceUpdated                  application/frontend                                     Updated health status:  -> Healthy
argocd-dev      2m6s        Normal    ResourceUpdated                  application/backend                                      Updated sync status:  -> Unknown
argocd-dev      2m6s        Normal    ResourceUpdated                  application/backend                                      Updated health status:  -> Healthy
argocd-dev      2m6s        Normal    ResourceUpdated                  application/frontend                                     Updated sync status:  -> Unknown
ingress-nginx   2m4s        Normal    Scheduled                        pod/ingress-nginx-admission-create-45wx6                 Successfully assigned ingress-nginx/ingress-nginx-admission-create-45wx6 to k3d-vyking-dev-agent-1
ingress-nginx   2m5s        Normal    SuccessfulCreate                 job/ingress-nginx-admission-create                       Created pod: ingress-nginx-admission-create-45wx6
ingress-nginx   2m4s        Normal    Pulling                          pod/ingress-nginx-admission-create-45wx6                 Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   113s        Normal    Pulled                           pod/ingress-nginx-admission-create-45wx6                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 10.601s (10.601s including waiting). Image size: 23913475 bytes.
ingress-nginx   113s        Normal    Created                          pod/ingress-nginx-admission-create-45wx6                 Created container create
ingress-nginx   112s        Normal    Started                          pod/ingress-nginx-admission-create-45wx6                 Started container create
ingress-nginx   109s        Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   108s        Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-599c5c76cc to 1
ingress-nginx   107s        Normal    Scheduled                        pod/ingress-nginx-controller-599c5c76cc-ltbll            Successfully assigned ingress-nginx/ingress-nginx-controller-599c5c76cc-ltbll to k3d-vyking-dev-agent-1
ingress-nginx   107s        Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-599c5c76cc           Created pod: ingress-nginx-controller-599c5c76cc-ltbll
ingress-nginx   106s        Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-ltbll            Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
backend-dev     61s         Normal    Unsealed                         sealedsecret/mysql-credentials-dev                       SealedSecret unsealed successfully
argocd-dev      61s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
argocd-dev      61s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
argocd-dev      61s         Normal    OperationCompleted               application/mysql-sealed-secrets                         Sync operation to dc1e5e7fc460d193c172684e45ef8dc48d2474f1 succeeded
argocd-dev      61s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
ingress-nginx   55s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-ltbll            Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 50.748s (50.748s including waiting). Image size: 105401148 bytes.
ingress-nginx   54s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-ltbll            Created container controller
ingress-nginx   54s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-ltbll            Started container controller
ingress-nginx   52s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
ingress-nginx   51s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-ltbll            NGINX reload triggered due to a change in configuration
ingress-nginx   33s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-sqkzq
ingress-nginx   32s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-sqkzq                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-sqkzq to k3d-vyking-dev-agent-0
ingress-nginx   31s         Normal    Pulling                          pod/ingress-nginx-admission-patch-sqkzq                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   20s         Normal    Created                          pod/ingress-nginx-admission-patch-sqkzq                  Created container patch
ingress-nginx   20s         Normal    Pulled                           pod/ingress-nginx-admission-patch-sqkzq                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 11.371s (11.371s including waiting). Image size: 23913475 bytes.
ingress-nginx   19s         Normal    Started                          pod/ingress-nginx-admission-patch-sqkzq                  Started container patch
ingress-nginx   14s         Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE    IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          8m5s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-applicationset-controller-78f49df558-flzxp   1/1     Running   0          8m7s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dex-server-796678d5bc-w6l6r                  1/1     Running   0          8m7s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-notifications-controller-6d84bf8458-4wpt6    1/1     Running   0          8m7s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-redis-7c7fb7fc74-26phn                       1/1     Running   0          8m5s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-repo-server-d587f667c-w4jkg                  1/1     Running   0          8m7s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-f2pdh                      1/1     Running   0          8m7s   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           8m8s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           8m8s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           8m8s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           8m8s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           8m8s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           8m8s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE    CONTAINERS               IMAGES
argocd-application-controller   1/1     8m8s   application-controller   quay.io/argoproj/argocd:v3.1.5
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
argocd-application-controller-metrics   ClusterIP   10.43.22.104    <none>        8082/TCP                     8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.54.140    <none>        7000/TCP                     8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.8.158     <none>        5556/TCP,5557/TCP,5558/TCP   8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.250.158   <none>        6379/TCP                     8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     8m11s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.71.13     <none>        8081/TCP                     8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.215.243   <none>        8084/TCP                     8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.58.40     <none>        80/TCP,443/TCP               8m11s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
kube-root-ca.crt                1      9m38s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      5m19s
argocd-notifications-secret    Opaque               0      8m15s
argocd-redis                   Opaque               1      8m19s
argocd-secret                  Opaque               3      8m15s
repo-vyking-git                Opaque               2      4m55s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      9m38s
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
5m28s       Normal    Pulling              pod/argocd-dex-server-796678d5bc-w6l6r                   Pulling image "ghcr.io/dexidp/dex:v2.44.0"
5m27s       Normal    Started              pod/argocd-server-556b554c94-f2pdh                       Started container server
5m2s        Normal    Pulled               pod/argocd-dex-server-796678d5bc-w6l6r                   Successfully pulled image "ghcr.io/dexidp/dex:v2.44.0" in 25.861s (25.861s including waiting). Image size: 45872393 bytes.
5m2s        Normal    Created              pod/argocd-dex-server-796678d5bc-w6l6r                   Created container dex-server
5m2s        Normal    Started              pod/argocd-dex-server-796678d5bc-w6l6r                   Started container dex-server
3m53s       Normal    OperationStarted     application/mysql-sealed-secrets                         Initiated automated sync to 'dc1e5e7fc460d193c172684e45ef8dc48d2474f1'
3m53s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status:  -> Healthy
3m53s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status:  -> OutOfSync
3m44s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
3m41s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
3m24s       Normal    ResourceUpdated      application/mysql                                        Updated sync status:  -> Unknown
3m24s       Normal    ResourceUpdated      application/mysql                                        Updated health status:  -> Healthy
2m15s       Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Healthy
2m15s       Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> Unknown
2m15s       Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Healthy
2m15s       Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> Unknown
70s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
70s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
70s         Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to dc1e5e7fc460d193c172684e45ef8dc48d2474f1 succeeded
70s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     10m          192Mi           
argocd-applicationset-controller-78f49df558-flzxp   2m           24Mi            
argocd-dex-server-796678d5bc-w6l6r                  2m           34Mi            
argocd-notifications-controller-6d84bf8458-4wpt6    1m           22Mi            
argocd-redis-7c7fb7fc74-26phn                       3m           4Mi             
argocd-repo-server-d587f667c-w4jkg                  3m           52Mi            
argocd-server-556b554c94-f2pdh                      90m          80Mi            
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
default   5m23s
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
kube-root-ca.crt   1      2m33s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      2m24s
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
2m32s       Normal    Issuing              certificate/frontend-cert-dev            Issuing certificate as Secret does not exist
2m31s       Normal    Generated            certificate/frontend-cert-dev            Stored new private key in temporary Secret resource "frontend-cert-dev-j7lr9"
2m30s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m30s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m30s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m30s       Normal    cert-manager.io      certificaterequest/frontend-cert-dev-1   Certificate request has been approved by cert-manager.io
2m30s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m30s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m30s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m30s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m30s       Normal    IssuerNotFound       certificaterequest/frontend-cert-dev-1   Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
2m30s       Normal    Requested            certificate/frontend-cert-dev            Created new CertificateRequest resource "frontend-cert-dev-1"
2m30s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m30s       Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
2m27s       Normal    CertificateIssued    certificaterequest/frontend-cert-dev-1   Certificate fetched from issuer successfully
2m27s       Warning   BadConfig            certificaterequest/frontend-cert-dev-1   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
2m26s       Normal    Issuing              certificate/frontend-cert-dev            The certificate has been successfully issued
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
kube-root-ca.crt   1      2m42s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      87s
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
90s         Normal   Unsealed   sealedsecret/mysql-credentials-dev   SealedSecret unsealed successfully
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
kube-root-ca.crt   1      5m5s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   5      4m14s
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
4m16s       Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
cert-manager-55c69bf5cf-2mb54              1/1     Running   0          4m54s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
cert-manager-cainjector-5765b5f544-d68wt   1/1     Running   0          4m54s   10.42.1.9   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager-webhook-6b67444dc9-nghpf      1/1     Running   0          4m54s   10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           4m56s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           4m56s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           4m56s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.200.74    <none>        9402/TCP           4m58s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.230.196   <none>        9402/TCP           4m58s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.101.23    <none>        443/TCP,9402/TCP   4m58s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      5m3s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      4m16s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      5m3s
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
4m59s       Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-nghpf       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-nghpf to k3d-vyking-dev-agent-0
4m56s       Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-nghpf       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
4m54s       Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-d68wt    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
4m55s       Normal   Pulling             pod/cert-manager-55c69bf5cf-2mb54               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
4m24s       Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-nghpf       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 31.947s (31.947s including waiting). Image size: 18192443 bytes.
4m23s       Normal   Created             pod/cert-manager-webhook-6b67444dc9-nghpf       Created container cert-manager-webhook
4m22s       Normal   Started             pod/cert-manager-webhook-6b67444dc9-nghpf       Started container cert-manager-webhook
4m15s       Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-d68wt    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 39.712s (39.712s including waiting). Image size: 15426355 bytes.
4m14s       Normal   Created             pod/cert-manager-cainjector-5765b5f544-d68wt    Created container cert-manager-cainjector
4m11s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-d68wt    Started container cert-manager-cainjector
4m7s        Normal   Pulled              pod/cert-manager-55c69bf5cf-2mb54               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 47.509s (47.509s including waiting). Image size: 21189387 bytes.
4m6s        Normal   Created             pod/cert-manager-55c69bf5cf-2mb54               Created container cert-manager-controller
4m3s        Normal   Started             pod/cert-manager-55c69bf5cf-2mb54               Started container cert-manager-controller
3m46s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-rz6rz
3m46s       Normal   Scheduled           pod/cert-manager-startupapicheck-rz6rz          Successfully assigned cert-manager/cert-manager-startupapicheck-rz6rz to k3d-vyking-dev-agent-1
3m44s       Normal   Pulling             pod/cert-manager-startupapicheck-rz6rz          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
3m33s       Normal   Pulled              pod/cert-manager-startupapicheck-rz6rz          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 10.526s (10.526s including waiting). Image size: 14095526 bytes.
3m33s       Normal   Created             pod/cert-manager-startupapicheck-rz6rz          Created container cert-manager-startupapicheck
3m32s       Normal   Started             pod/cert-manager-startupapicheck-rz6rz          Started container cert-manager-startupapicheck
3m26s       Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-2mb54              3m           62Mi            
cert-manager-cainjector-5765b5f544-d68wt   4m           51Mi            
cert-manager-webhook-6b67444dc9-nghpf      1m           19Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                      NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-h7lp6   1/1     Running   0          18m   10.42.2.3   k3d-vyking-dev-server-0   <none>           <none>
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
sealed-secrets-controller   ClusterIP   10.43.99.134   <none>        8080/TCP   18m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
17m         Normal    SuccessfulCreate       daemonset/svclb-traefik-f5f22a9c                  Created pod: svclb-traefik-f5f22a9c-vm8b4
17m         Normal    SuccessfulCreate       replicaset/traefik-5d45fc8cc9                     Created pod: traefik-5d45fc8cc9-ndhfr
17m         Normal    SuccessfulCreate       daemonset/svclb-traefik-f5f22a9c                  Created pod: svclb-traefik-f5f22a9c-d29hr
17m         Normal    Scheduled              pod/svclb-traefik-f5f22a9c-vm8b4                  Successfully assigned kube-system/svclb-traefik-f5f22a9c-vm8b4 to k3d-vyking-dev-agent-0
17m         Normal    Scheduled              pod/svclb-traefik-f5f22a9c-ns6q4                  Successfully assigned kube-system/svclb-traefik-f5f22a9c-ns6q4 to k3d-vyking-dev-agent-1
17m         Normal    SuccessfulCreate       daemonset/svclb-traefik-f5f22a9c                  Created pod: svclb-traefik-f5f22a9c-ns6q4
17m         Normal    Scheduled              pod/svclb-traefik-f5f22a9c-d29hr                  Successfully assigned kube-system/svclb-traefik-f5f22a9c-d29hr to k3d-vyking-dev-server-0
17m         Normal    Pulling                pod/traefik-5d45fc8cc9-ndhfr                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
17m         Normal    Pulling                pod/svclb-traefik-f5f22a9c-d29hr                  Pulling image "rancher/klipper-lb:v0.4.9"
17m         Normal    Pulling                pod/svclb-traefik-f5f22a9c-ns6q4                  Pulling image "rancher/klipper-lb:v0.4.9"
17m         Normal    Pulling                pod/svclb-traefik-f5f22a9c-vm8b4                  Pulling image "rancher/klipper-lb:v0.4.9"
17m         Normal    Completed              job/helm-install-traefik                          Job completed
17m         Normal    Pulled                 pod/svclb-traefik-f5f22a9c-d29hr                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 6.096s (6.096s including waiting). Image size: 4990278 bytes.
17m         Normal    Created                pod/svclb-traefik-f5f22a9c-d29hr                  Created container lb-tcp-80
17m         Normal    Started                pod/svclb-traefik-f5f22a9c-d29hr                  Started container lb-tcp-80
17m         Normal    Pulled                 pod/svclb-traefik-f5f22a9c-d29hr                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    Created                pod/svclb-traefik-f5f22a9c-d29hr                  Created container lb-tcp-443
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.2]
17m         Normal    Started                pod/svclb-traefik-f5f22a9c-d29hr                  Started container lb-tcp-443
17m         Normal    Pulled                 pod/svclb-traefik-f5f22a9c-ns6q4                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 11.943s (11.943s including waiting). Image size: 4990278 bytes.
17m         Normal    Created                pod/svclb-traefik-f5f22a9c-ns6q4                  Created container lb-tcp-80
17m         Normal    Started                pod/svclb-traefik-f5f22a9c-ns6q4                  Started container lb-tcp-80
17m         Normal    Pulled                 pod/svclb-traefik-f5f22a9c-vm8b4                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 13.168s (13.168s including waiting). Image size: 4990278 bytes.
17m         Normal    Created                pod/svclb-traefik-f5f22a9c-ns6q4                  Created container lb-tcp-443
17m         Normal    Pulled                 pod/svclb-traefik-f5f22a9c-ns6q4                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    Started                pod/svclb-traefik-f5f22a9c-ns6q4                  Started container lb-tcp-443
17m         Normal    Created                pod/svclb-traefik-f5f22a9c-vm8b4                  Created container lb-tcp-80
17m         Normal    Pulled                 pod/svclb-traefik-f5f22a9c-vm8b4                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
17m         Normal    Started                pod/svclb-traefik-f5f22a9c-vm8b4                  Started container lb-tcp-80
17m         Normal    Created                pod/svclb-traefik-f5f22a9c-vm8b4                  Created container lb-tcp-443
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
17m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2] -> [172.18.0.2 172.18.0.4]
17m         Normal    Started                pod/svclb-traefik-f5f22a9c-vm8b4                  Started container lb-tcp-443
17m         Normal    Pulled                 pod/traefik-5d45fc8cc9-ndhfr                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 37.046s (37.046s including waiting). Image size: 49449055 bytes.
17m         Normal    Created                pod/traefik-5d45fc8cc9-ndhfr                      Created container traefik
16m         Normal    Started                pod/traefik-5d45fc8cc9-ndhfr                      Started container traefik
16m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
16m         Warning   Unhealthy              pod/traefik-5d45fc8cc9-ndhfr                      Readiness probe failed: HTTP probe failed with statuscode: 404
4m8s        Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-d68wt_1493bb94-cf1d-45c2-a9e5-7a3536647947 became leader
4m3s        Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-2mb54-external-cert-manager-controller became leader
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

### DaemonSet svclb-traefik-f5f22a9c
```bash
+ kubectl rollout status daemonset svclb-traefik-f5f22a9c -n kube-system --timeout=30s
daemon set "svclb-traefik-f5f22a9c" successfully rolled out
```


✅ Tests complete.
