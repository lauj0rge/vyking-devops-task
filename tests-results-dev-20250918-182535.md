# 🧪 Test Results for `dev`

<details><summary>🌐 Cluster Info</summary>

```bash
Kubernetes control plane is running at https://0.0.0.0:38451
CoreDNS is running at https://0.0.0.0:38451/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:38451/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```
</details>

<details><summary>🖥️ Nodes</summary>

```bash
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 19m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 19m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   20m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```
</details>

<details><summary>📦 Namespaces</summary>

```bash
NAME              STATUS   AGE
argocd-dev        Active   11m
backend-dev       Active   3m14s
cert-manager      Active   6m1s
default           Active   20m
frontend-dev      Active   3m14s
ingress-nginx     Active   2m36s
kube-node-lease   Active   20m
kube-public       Active   20m
kube-system       Active   20m
mysql-dev         Active   6m11s
```
</details>

<details><summary>🟢 Pods (all namespaces)</summary>

```bash
NAMESPACE       NAME                                                READY   STATUS              RESTARTS       AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running             0              10m     10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-8gwx5   1/1     Running             0              10m     10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-v7zns                  1/1     Running             3 (7m3s ago)   10m     10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-tqnd4    1/1     Running             0              10m     10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-56g7z                       1/1     Running             0              10m     10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-m6pbw                  1/1     Running             0              10m     10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-server-556b554c94-bwpfl                      1/1     Running             0              10m     10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
backend-dev     backend-backend-66c96df8b-74g9x                     1/1     Running             0              2m54s   10.42.2.12   k3d-vyking-dev-server-0   <none>           <none>
backend-dev     backend-backend-66c96df8b-qsmff                     1/1     Running             0              2m54s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-jgr7q                       1/1     Running             0              5m55s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-f7fhr            1/1     Running             0              5m55s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-t9rfx               1/1     Running             0              5m55s   10.42.2.10   k3d-vyking-dev-server-0   <none>           <none>
frontend-dev    frontend-frontend-597d68f8cf-mhpmq                  1/1     Running             0              2m48s   10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
ingress-nginx   ingress-nginx-controller-b4b575f8-87llh             0/1     ContainerCreating   0              73s     <none>       k3d-vyking-dev-server-0   <none>           <none>
kube-system     coredns-ccb96694c-s7dq4                             1/1     Running             0              19m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-crd-6bczd                      0/1     Completed           0              19m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-tntvs                          0/1     Completed           1              19m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-spxns             1/1     Running             0              19m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     metrics-server-5985cbc9d7-kxxpm                     1/1     Running             0              19m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-f6xn6          1/1     Running             0              19m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-ingress-nginx-controller-1f1e625f-92gr7       0/2     Pending             0              72s     <none>       <none>                    <none>           <none>
kube-system     svclb-ingress-nginx-controller-1f1e625f-j56r9       0/2     Pending             0              72s     <none>       <none>                    <none>           <none>
kube-system     svclb-ingress-nginx-controller-1f1e625f-pfcrv       0/2     Pending             0              72s     <none>       <none>                    <none>           <none>
kube-system     svclb-traefik-0f675a18-2gmbj                        2/2     Running             0              18m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-0f675a18-spgzk                        2/2     Running             0              18m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-0f675a18-x2pgt                        2/2     Running             0              18m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     traefik-5d45fc8cc9-d6tnq                            1/1     Running             0              18m     10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
```
</details>

<details><summary>🔌 Services (all namespaces)</summary>

```bash
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.172.41    <none>                             8082/TCP                     10m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.112.94    <none>                             7000/TCP                     10m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.14.232    <none>                             5556/TCP,5557/TCP,5558/TCP   10m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.88.64     <none>                             6379/TCP                     10m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     10m     app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.73.201    <none>                             8081/TCP                     10m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.142.126   <none>                             8084/TCP                     10m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.87.149    <none>                             80/TCP,443/TCP               10m     app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.7.65      <none>                             8081/TCP                     2m57s   app=backend-backend
cert-manager    cert-manager                            ClusterIP      10.43.110.192   <none>                             9402/TCP                     5m59s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.131.195   <none>                             9402/TCP                     5m59s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.240.135   <none>                             443/TCP,9402/TCP             5m59s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      20m     <none>
frontend-dev    frontend-frontend                       ClusterIP      10.43.93.211    <none>                             8080/TCP                     2m50s   app=frontend-frontend
ingress-nginx   ingress-nginx-controller                LoadBalancer   10.43.14.139    <pending>                          80:32509/TCP,443:30415/TCP   74s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.82.171    <none>                             443/TCP                      74s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       20m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.197.47    <none>                             443/TCP                      20m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.146.235   <none>                             8080/TCP                     19m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.48.227    <none>                             8081/TCP                     19m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.2.173     172.18.0.2,172.18.0.3,172.18.0.4   80:32017/TCP,443:30705/TCP   18m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```
</details>

<details><summary>🌍 Ingresses</summary>

```bash
NAMESPACE      NAME                CLASS    HOSTS                ADDRESS   PORTS     AGE
frontend-dev   frontend-frontend   <none>   frontend-dev.local             80, 443   2m47s
```
</details>

<details><summary>🚦 Argo CD Applications</summary>

```bash
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Healthy
frontend               Synced        Progressing
mysql                  Unknown       Healthy
mysql-sealed-secrets   Synced        Healthy
```
</details>

👉 **Argo CD UI:** [http://localhost:8080](http://localhost:8080)

## 🚀 Deployment Rollout Status
### 📦 argocd-dev/argocd-applicationset-controller
<details><summary>Status</summary>

```bash
deployment "argocd-applicationset-controller" successfully rolled out
```
</details>

### 📦 argocd-dev/argocd-dex-server
<details><summary>Status</summary>

```bash
deployment "argocd-dex-server" successfully rolled out
```
</details>

### 📦 argocd-dev/argocd-notifications-controller
<details><summary>Status</summary>

```bash
deployment "argocd-notifications-controller" successfully rolled out
```
</details>

### 📦 argocd-dev/argocd-redis
<details><summary>Status</summary>

```bash
deployment "argocd-redis" successfully rolled out
```
</details>

### 📦 argocd-dev/argocd-repo-server
<details><summary>Status</summary>

```bash
deployment "argocd-repo-server" successfully rolled out
```
</details>

### 📦 argocd-dev/argocd-server
<details><summary>Status</summary>

```bash
deployment "argocd-server" successfully rolled out
```
</details>

### 📦 backend-dev/backend-backend
<details><summary>Status</summary>

```bash
deployment "backend-backend" successfully rolled out
```
</details>

### 📦 cert-manager/cert-manager
<details><summary>Status</summary>

```bash
deployment "cert-manager" successfully rolled out
```
</details>

### 📦 cert-manager/cert-manager-cainjector
<details><summary>Status</summary>

```bash
deployment "cert-manager-cainjector" successfully rolled out
```
</details>

### 📦 cert-manager/cert-manager-webhook
<details><summary>Status</summary>

```bash
deployment "cert-manager-webhook" successfully rolled out
```
</details>

### 📦 frontend-dev/frontend-frontend
<details><summary>Status</summary>

```bash
deployment "frontend-frontend" successfully rolled out
```
</details>

### 📦 ingress-nginx/ingress-nginx-controller
<details><summary>Status</summary>

```bash
Waiting for deployment "ingress-nginx-controller" rollout to finish: 0 of 1 updated replicas are available...
⚠️  ingress-nginx/ingress-nginx-controller not ready
```
</details>

### 📦 kube-system/coredns
<details><summary>Status</summary>

```bash
deployment "coredns" successfully rolled out
```
</details>

### 📦 kube-system/local-path-provisioner
<details><summary>Status</summary>

```bash
deployment "local-path-provisioner" successfully rolled out
```
</details>

### 📦 kube-system/metrics-server
<details><summary>Status</summary>

```bash
deployment "metrics-server" successfully rolled out
```
</details>

### 📦 kube-system/sealed-secrets-controller
<details><summary>Status</summary>

```bash
deployment "sealed-secrets-controller" successfully rolled out
```
</details>

### 📦 kube-system/traefik
<details><summary>Status</summary>

```bash
deployment "traefik" successfully rolled out
```
</details>

<details><summary>📈 HPAs</summary>

```bash
NAMESPACE      NAME                REFERENCE                      TARGETS                        MINPODS   MAXPODS   REPLICAS   AGE
backend-dev    backend-backend     Deployment/backend-backend     cpu: 1%/70%, memory: 33%/70%   2         5         2          3m17s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 4%/80%    1         3         1          3m11s
```
</details>

<details><summary>📊 Resource Usage (nodes)</summary>

```bash
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    269m         8%       396Mi           4%          
k3d-vyking-dev-agent-1    342m         11%      503Mi           6%          
k3d-vyking-dev-server-0   873m         29%      1183Mi          14%         
```
</details>

<details><summary>📊 Resource Usage (pods)</summary>

```bash
NAMESPACE      NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev     argocd-application-controller-0                     28m          128Mi           
argocd-dev     argocd-applicationset-controller-78f49df558-8gwx5   2m           42Mi            
argocd-dev     argocd-dex-server-796678d5bc-v7zns                  15m          35Mi            
argocd-dev     argocd-notifications-controller-6d84bf8458-tqnd4    1m           27Mi            
argocd-dev     argocd-redis-7c7fb7fc74-56g7z                       4m           3Mi             
argocd-dev     argocd-repo-server-d587f667c-m6pbw                  2m           81Mi            
argocd-dev     argocd-server-556b554c94-bwpfl                      3m           33Mi            
backend-dev    backend-backend-66c96df8b-74g9x                     1m           43Mi            
backend-dev    backend-backend-66c96df8b-qsmff                     2m           43Mi            
cert-manager   cert-manager-55c69bf5cf-jgr7q                       5m           24Mi            
cert-manager   cert-manager-cainjector-5765b5f544-f7fhr            3m           20Mi            
cert-manager   cert-manager-webhook-6b67444dc9-t9rfx               3m           11Mi            
frontend-dev   frontend-frontend-597d68f8cf-mhpmq                  1m           6Mi             
kube-system    coredns-ccb96694c-s7dq4                             7m           15Mi            
kube-system    local-path-provisioner-5cf85fd84d-spxns             1m           7Mi             
kube-system    metrics-server-5985cbc9d7-kxxpm                     21m          22Mi            
kube-system    sealed-secrets-controller-5655858cbc-f6xn6          2m           13Mi            
kube-system    svclb-traefik-0f675a18-2gmbj                        0m           0Mi             
kube-system    svclb-traefik-0f675a18-spgzk                        0m           0Mi             
kube-system    svclb-traefik-0f675a18-x2pgt                        0m           0Mi             
kube-system    traefik-5d45fc8cc9-d6tnq                            3m           32Mi            
```
</details>

## 🔗 Connection Tests
### 🛢️ MySQL
❌ No MySQL service found in mysql-dev

### 🎨 Frontend
<details><summary>Frontend services</summary>

```bash
NAME                TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE     SELECTOR
frontend-frontend   ClusterIP   10.43.93.211   <none>        8080/TCP   3m14s   app=frontend-frontend
```
</details>

### ⚙️ Backend
<details><summary>Backend services</summary>

```bash
NAME              TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)    AGE     SELECTOR
backend-backend   ClusterIP   10.43.7.65   <none>        8081/TCP   3m21s   app=backend-backend
```
</details>

✅ Tests complete.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
# 🧪 Test Results for `dev`
_Generated on 2025-09-18 18:26:02_

## 🚦 Argo CD
<details><summary>ArgoCD Applications</summary>

```bash
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Healthy
frontend               Synced        Progressing
mysql                  Unknown       Healthy
mysql-sealed-secrets   Synced        Healthy
```
</details>

**UI:** [http://localhost:8080](http://localhost:8080)

## 🎨 Frontend
<details><summary>Pods</summary>

```bash
NAME                                 READY   STATUS    RESTARTS   AGE     IP          NODE                     NOMINATED NODE   READINESS GATES
frontend-frontend-597d68f8cf-mhpmq   1/1     Running   0          3m14s   10.42.0.8   k3d-vyking-dev-agent-0   <none>           <none>
```
</details>

<details><summary>Services</summary>

```bash
NAME                TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE     SELECTOR
frontend-frontend   ClusterIP   10.43.93.211   <none>        8080/TCP   3m15s   app=frontend-frontend
```
</details>

<details><summary>Ingress</summary>

```bash
NAME                CLASS    HOSTS                ADDRESS   PORTS     AGE
frontend-frontend   <none>   frontend-dev.local             80, 443   3m13s
```
</details>

## ⚙️ Backend
<details><summary>Pods</summary>

```bash
NAME                              READY   STATUS    RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
backend-backend-66c96df8b-74g9x   1/1     Running   0          3m21s   10.42.2.12   k3d-vyking-dev-server-0   <none>           <none>
backend-backend-66c96df8b-qsmff   1/1     Running   0          3m21s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
```
</details>

<details><summary>Services</summary>

```bash
NAME              TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)    AGE     SELECTOR
backend-backend   ClusterIP   10.43.7.65   <none>        8081/TCP   3m23s   app=backend-backend
```
</details>

<details><summary>Ingress</summary>

```bash
```
</details>

## 🛢️ MySQL
❌ No MySQL service found in mysql-dev

✅ Tests complete.
