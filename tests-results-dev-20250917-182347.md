# 🧪 Test Results for `dev`

<details><summary>🌐 Cluster Info</summary>

```bash
Kubernetes control plane is running at https://0.0.0.0:41053
CoreDNS is running at https://0.0.0.0:41053/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:41053/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```
</details>

<details><summary>🖥️ Nodes</summary>

```bash
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 15m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 15m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   15m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```
</details>

<details><summary>📦 Namespaces</summary>

```bash
NAME              STATUS   AGE
argocd-dev        Active   6m6s
backend-dev       Active   11s
cert-manager      Active   86s
default           Active   15m
frontend-dev      Active   11s
kube-node-lease   Active   15m
kube-public       Active   15m
kube-system       Active   15m
mysql-dev         Active   99s
```
</details>

<details><summary>🟢 Pods (all namespaces)</summary>

```bash
NAMESPACE      NAME                                                READY   STATUS              RESTARTS        AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-dev     argocd-application-controller-0                     1/1     Running             0               4m28s   10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-applicationset-controller-78f49df558-2nvn9   1/1     Running             0               4m29s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev     argocd-dex-server-796678d5bc-f55lk                  1/1     Running             3 (2m39s ago)   4m29s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-notifications-controller-6d84bf8458-hjrfv    1/1     Running             0               4m29s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-redis-7c7fb7fc74-q2xr4                       1/1     Running             0               4m29s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-repo-server-d587f667c-5r5l6                  1/1     Running             0               4m28s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-server-556b554c94-tc5gn                      1/1     Running             0               4m28s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
backend-dev    backend-backend-66c96df8b-5rp7m                     0/1     ContainerCreating   0               2s      <none>      k3d-vyking-dev-server-0   <none>           <none>
backend-dev    backend-backend-66c96df8b-dnv6g                     0/1     ContainerCreating   0               2s      <none>      k3d-vyking-dev-agent-0    <none>           <none>
cert-manager   cert-manager-55c69bf5cf-sd7jz                       1/1     Running             0               82s     10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager   cert-manager-cainjector-5765b5f544-zbc8x            1/1     Running             0               82s     10.42.0.9   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager   cert-manager-webhook-6b67444dc9-94h4h               1/1     Running             0               82s     10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
frontend-dev   frontend-frontend-b7fd5848b-kn27r                   0/1     Pending             0               1s      <none>      k3d-vyking-dev-agent-1    <none>           <none>
kube-system    coredns-ccb96694c-smlr4                             1/1     Running             0               15m     10.42.0.3   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    helm-install-traefik-crd-c9g5m                      0/1     Completed           0               15m     10.42.0.2   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    helm-install-traefik-r5vql                          0/1     Completed           0               15m     10.42.2.2   k3d-vyking-dev-server-0   <none>           <none>
kube-system    local-path-provisioner-5cf85fd84d-vd9nl             1/1     Running             0               15m     10.42.1.3   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    metrics-server-5985cbc9d7-jk2p7                     1/1     Running             0               15m     10.42.1.2   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    sealed-secrets-controller-5655858cbc-qndrs          1/1     Running             0               14m     10.42.2.3   k3d-vyking-dev-server-0   <none>           <none>
kube-system    svclb-traefik-437e912e-dbfwz                        2/2     Running             0               13m     10.42.1.4   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    svclb-traefik-437e912e-fffgz                        2/2     Running             0               13m     10.42.2.4   k3d-vyking-dev-server-0   <none>           <none>
kube-system    svclb-traefik-437e912e-j5bpd                        2/2     Running             0               13m     10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    traefik-5d45fc8cc9-4lzmn                            1/1     Running             0               13m     10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
```
</details>

<details><summary>🔌 Services (all namespaces)</summary>

```bash
NAMESPACE      NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev     argocd-application-controller-metrics   ClusterIP      10.43.123.131   <none>                             8082/TCP                     4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev     argocd-applicationset-controller        ClusterIP      10.43.118.147   <none>                             7000/TCP                     4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev     argocd-dex-server                       ClusterIP      10.43.137.152   <none>                             5556/TCP,5557/TCP,5558/TCP   4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev     argocd-redis                            ClusterIP      10.43.97.116    <none>                             6379/TCP                     4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     4m31s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-repo-server                      ClusterIP      10.43.246.88    <none>                             8081/TCP                     4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-repo-server-metrics              ClusterIP      10.43.213.226   <none>                             8084/TCP                     4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-server                           ClusterIP      10.43.16.82     <none>                             80/TCP,443/TCP               4m31s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev    backend-backend                         ClusterIP      10.43.91.33     <none>                             8081/TCP                     3s      app=backend-backend
cert-manager   cert-manager                            ClusterIP      10.43.245.57    <none>                             9402/TCP                     84s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager   cert-manager-cainjector                 ClusterIP      10.43.140.223   <none>                             9402/TCP                     84s     app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager   cert-manager-webhook                    ClusterIP      10.43.47.254    <none>                             443/TCP,9402/TCP             84s     app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default        kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      15m     <none>
frontend-dev   frontend-frontend                       ClusterIP      10.43.244.199   <none>                             80/TCP                       1s      app=frontend-frontend
kube-system    kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       15m     k8s-app=kube-dns
kube-system    metrics-server                          ClusterIP      10.43.225.22    <none>                             443/TCP                      15m     k8s-app=metrics-server
kube-system    sealed-secrets-controller               ClusterIP      10.43.51.93     <none>                             8080/TCP                     14m     name=sealed-secrets-controller
kube-system    sealed-secrets-controller-metrics       ClusterIP      10.43.206.49    <none>                             8081/TCP                     14m     name=sealed-secrets-controller
kube-system    traefik                                 LoadBalancer   10.43.71.108    172.18.0.2,172.18.0.3,172.18.0.4   80:32318/TCP,443:32663/TCP   13m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```
</details>

<details><summary>🌍 Ingresses</summary>

```bash
NAMESPACE      NAME                CLASS    HOSTS                ADDRESS   PORTS     AGE
frontend-dev   frontend-frontend   <none>   frontend-dev.local             80, 443   1s
```
</details>

<details><summary>🚦 Argo CD Applications</summary>

```bash
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Progressing
frontend               OutOfSync     Missing
mysql                  Unknown       Healthy
mysql-sealed-secrets   OutOfSync     Healthy
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
Waiting for deployment "backend-backend" rollout to finish: 0 of 2 updated replicas are available...
⚠️  backend-dev/backend-backend not ready
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
NAMESPACE      NAME                REFERENCE                      TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-dev    backend-backend     Deployment/backend-backend     cpu: <unknown>/70%, memory: <unknown>/70%   2         5         2          21s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          19s
```
</details>

<details><summary>📊 Resource Usage (nodes)</summary>

```bash
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    680m         22%      706Mi           8%          
k3d-vyking-dev-agent-1    328m         10%      459Mi           5%          
k3d-vyking-dev-server-0   473m         15%      1070Mi          13%         
```
</details>

<details><summary>📊 Resource Usage (pods)</summary>

```bash
NAMESPACE      NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev     argocd-application-controller-0                     170m         146Mi           
argocd-dev     argocd-applicationset-controller-78f49df558-2nvn9   7m           32Mi            
argocd-dev     argocd-dex-server-796678d5bc-f55lk                  1m           27Mi            
argocd-dev     argocd-notifications-controller-6d84bf8458-hjrfv    1m           70Mi            
argocd-dev     argocd-redis-7c7fb7fc74-q2xr4                       5m           2Mi             
argocd-dev     argocd-repo-server-d587f667c-5r5l6                  41m          95Mi            
argocd-dev     argocd-server-556b554c94-tc5gn                      13m          32Mi            
cert-manager   cert-manager-55c69bf5cf-sd7jz                       18m          24Mi            
cert-manager   cert-manager-cainjector-5765b5f544-zbc8x            4m           21Mi            
cert-manager   cert-manager-webhook-6b67444dc9-94h4h               7m           11Mi            
kube-system    coredns-ccb96694c-smlr4                             11m          28Mi            
kube-system    local-path-provisioner-5cf85fd84d-vd9nl             1m           9Mi             
kube-system    metrics-server-5985cbc9d7-jk2p7                     17m          21Mi            
kube-system    sealed-secrets-controller-5655858cbc-qndrs          2m           29Mi            
kube-system    svclb-traefik-437e912e-dbfwz                        0m           0Mi             
kube-system    svclb-traefik-437e912e-fffgz                        0m           0Mi             
kube-system    svclb-traefik-437e912e-j5bpd                        0m           0Mi             
kube-system    traefik-5d45fc8cc9-4lzmn                            5m           36Mi            
```
</details>

## 🔗 Connection Tests
### 🛢️ MySQL
❌ No MySQL service found in mysql-dev

### 🎨 Frontend
<details><summary>Frontend services</summary>

```bash
NAME                TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE   SELECTOR
frontend-frontend   ClusterIP   10.43.244.199   <none>        80/TCP    21s   app=frontend-frontend
```
</details>

### ⚙️ Backend
<details><summary>Backend services</summary>

```bash
NAME              TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.91.33   <none>        8081/TCP   24s   app=backend-backend
```
</details>

✅ Tests complete.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
# 🧪 Test Results for `dev`
_Generated on 2025-09-17 18:24:10_

## 🚦 Argo CD
<details><summary>ArgoCD Applications</summary>

```bash
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Progressing
frontend               Synced        Progressing
mysql                  Unknown       Healthy
mysql-sealed-secrets   Synced        Healthy
```
</details>

**UI:** [http://localhost:8080](http://localhost:8080)

## 🎨 Frontend
<details><summary>Pods</summary>

```bash
NAME                                READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
frontend-frontend-b7fd5848b-kn27r   1/1     Running   0          23s   10.42.1.8   k3d-vyking-dev-agent-1   <none>           <none>
```
</details>

<details><summary>Services</summary>

```bash
NAME                TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE   SELECTOR
frontend-frontend   ClusterIP   10.43.244.199   <none>        80/TCP    23s   app=frontend-frontend
```
</details>

<details><summary>Ingress</summary>

```bash
NAME                CLASS    HOSTS                ADDRESS   PORTS     AGE
frontend-frontend   <none>   frontend-dev.local             80, 443   22s
```
</details>

## ⚙️ Backend
<details><summary>Pods</summary>

```bash
NAME                              READY   STATUS    RESTARTS   AGE   IP           NODE                      NOMINATED NODE   READINESS GATES
backend-backend-66c96df8b-5rp7m   0/1     Running   0          24s   10.42.2.10   k3d-vyking-dev-server-0   <none>           <none>
backend-backend-66c96df8b-dnv6g   0/1     Running   0          24s   10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
```
</details>

<details><summary>Services</summary>

```bash
NAME              TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.91.33   <none>        8081/TCP   25s   app=backend-backend
```
</details>

<details><summary>Ingress</summary>

```bash
```
</details>

## 🛢️ MySQL
❌ No MySQL service found in mysql-dev

✅ Tests complete.
