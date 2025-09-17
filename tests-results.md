# 🧪 Test Results for dev

```bash
# 🧪 Test Results for `dev`

<details><summary>🌐 Cluster Info</summary>

```bash
Kubernetes control plane is running at https://0.0.0.0:41865
CoreDNS is running at https://0.0.0.0:41865/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:41865/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```
</details>

<details><summary>🖥️ Nodes</summary>

```bash
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 12m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 12m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   12m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```
</details>

<details><summary>📦 Namespaces</summary>

```bash
NAME              STATUS   AGE
argocd-dev        Active   5m32s
backend-dev       Active   10s
cert-manager      Active   85s
default           Active   12m
frontend-dev      Active   10s
kube-node-lease   Active   12m
kube-public       Active   12m
kube-system       Active   12m
mysql-dev         Active   92s
```
</details>

<details><summary>🟢 Pods (all namespaces)</summary>

```bash
NAMESPACE      NAME                                                READY   STATUS              RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-dev     argocd-application-controller-0                     1/1     Running             0          4m20s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev     argocd-applicationset-controller-78f49df558-psp8j   1/1     Running             0          4m20s   10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-dex-server-796678d5bc-cmrch                  1/1     Running             0          4m20s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev     argocd-notifications-controller-6d84bf8458-bkq4q    1/1     Running             0          4m20s   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-redis-7c7fb7fc74-7b9dt                       1/1     Running             0          4m20s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-repo-server-d587f667c-gs6l9                  1/1     Running             0          4m20s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-server-556b554c94-snh68                      1/1     Running             0          4m20s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
backend-dev    backend-backend-66c96df8b-9zrc2                     0/1     ContainerCreating   0          3s      <none>      k3d-vyking-dev-agent-1    <none>           <none>
backend-dev    backend-backend-66c96df8b-wfs8f                     0/1     ContainerCreating   0          3s      <none>      k3d-vyking-dev-agent-0    <none>           <none>
cert-manager   cert-manager-55c69bf5cf-c9zlg                       1/1     Running             0          80s     10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
cert-manager   cert-manager-cainjector-5765b5f544-vl6m5            1/1     Running             0          80s     10.42.0.9   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager   cert-manager-webhook-6b67444dc9-4kzvt               1/1     Running             0          80s     10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
frontend-dev   frontend-frontend-6b8c596f4-djqx4                   0/1     ContainerCreating   0          2s      <none>      k3d-vyking-dev-server-0   <none>           <none>
kube-system    coredns-ccb96694c-hrhs6                             1/1     Running             0          12m     10.42.2.2   k3d-vyking-dev-server-0   <none>           <none>
kube-system    helm-install-traefik-c4kx5                          0/1     Completed           1          12m     10.42.0.3   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    helm-install-traefik-crd-rh58c                      0/1     Completed           0          12m     10.42.1.2   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    local-path-provisioner-5cf85fd84d-sbz66             1/1     Running             0          12m     10.42.0.2   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    metrics-server-5985cbc9d7-npkkt                     1/1     Running             0          12m     10.42.2.3   k3d-vyking-dev-server-0   <none>           <none>
kube-system    sealed-secrets-controller-5655858cbc-6vbwp          1/1     Running             0          12m     10.42.1.3   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    svclb-traefik-39e5d2e9-89vbx                        2/2     Running             0          11m     10.42.2.4   k3d-vyking-dev-server-0   <none>           <none>
kube-system    svclb-traefik-39e5d2e9-dl8jt                        2/2     Running             0          11m     10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    svclb-traefik-39e5d2e9-f58ch                        2/2     Running             0          11m     10.42.1.4   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    traefik-5d45fc8cc9-kpv4j                            1/1     Running             0          11m     10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
```
</details>

<details><summary>🔌 Services (all namespaces)</summary>

```bash
NAMESPACE      NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev     argocd-application-controller-metrics   ClusterIP      10.43.174.210   <none>                             8082/TCP                     4m22s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev     argocd-applicationset-controller        ClusterIP      10.43.204.55    <none>                             7000/TCP                     4m22s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev     argocd-dex-server                       ClusterIP      10.43.202.123   <none>                             5556/TCP,5557/TCP,5558/TCP   4m22s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev     argocd-redis                            ClusterIP      10.43.224.217   <none>                             6379/TCP                     4m22s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     4m22s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-repo-server                      ClusterIP      10.43.190.74    <none>                             8081/TCP                     4m22s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-repo-server-metrics              ClusterIP      10.43.201.117   <none>                             8084/TCP                     4m22s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-server                           ClusterIP      10.43.143.13    <none>                             80/TCP,443/TCP               4m22s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev    backend-backend                         ClusterIP      10.43.96.88     <none>                             8081/TCP                     3s      app=backend-backend
cert-manager   cert-manager                            ClusterIP      10.43.33.113    <none>                             9402/TCP                     82s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager   cert-manager-cainjector                 ClusterIP      10.43.237.79    <none>                             9402/TCP                     82s     app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager   cert-manager-webhook                    ClusterIP      10.43.150.243   <none>                             443/TCP,9402/TCP             82s     app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default        kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      12m     <none>
frontend-dev   frontend-frontend                       ClusterIP      10.43.133.212   <none>                             80/TCP                       3s      app=frontend-frontend
kube-system    kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       12m     k8s-app=kube-dns
kube-system    metrics-server                          ClusterIP      10.43.24.10     <none>                             443/TCP                      12m     k8s-app=metrics-server
kube-system    sealed-secrets-controller               ClusterIP      10.43.161.89    <none>                             8080/TCP                     12m     name=sealed-secrets-controller
kube-system    sealed-secrets-controller-metrics       ClusterIP      10.43.108.54    <none>                             8081/TCP                     12m     name=sealed-secrets-controller
kube-system    traefik                                 LoadBalancer   10.43.179.22    172.18.0.2,172.18.0.3,172.18.0.4   80:32744/TCP,443:30793/TCP   11m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```
</details>

<details><summary>🌍 Ingresses</summary>

```bash
NAMESPACE      NAME                CLASS    HOSTS                ADDRESS   PORTS     AGE
frontend-dev   frontend-frontend   <none>   frontend-dev.local             80, 443   2s
```
</details>

<details><summary>🚦 Argo CD Applications</summary>

```bash
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Progressing
frontend               Synced        Progressing
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
backend-dev    backend-backend     Deployment/backend-backend     cpu: <unknown>/70%, memory: <unknown>/70%   2         5         2          23s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: <unknown>/70%, memory: 7%/80%          1         3         1          22s
```
</details>

<details><summary>📊 Resource Usage (nodes)</summary>

```bash
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    400m         13%      438Mi           5%          
k3d-vyking-dev-agent-1    412m         13%      687Mi           8%          
k3d-vyking-dev-server-0   752m         25%      1069Mi          13%         
```
</details>

<details><summary>📊 Resource Usage (pods)</summary>

```bash
NAMESPACE      NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev     argocd-application-controller-0                     149m         204Mi           
argocd-dev     argocd-applicationset-controller-78f49df558-psp8j   11m          29Mi            
argocd-dev     argocd-dex-server-796678d5bc-cmrch                  1m           75Mi            
argocd-dev     argocd-notifications-controller-6d84bf8458-bkq4q    4m           62Mi            
argocd-dev     argocd-redis-7c7fb7fc74-7b9dt                       5m           2Mi             
argocd-dev     argocd-repo-server-d587f667c-gs6l9                  54m          94Mi            
argocd-dev     argocd-server-556b554c94-snh68                      6m           34Mi            
cert-manager   cert-manager-55c69bf5cf-c9zlg                       7m           30Mi            
cert-manager   cert-manager-cainjector-5765b5f544-vl6m5            6m           29Mi            
cert-manager   cert-manager-webhook-6b67444dc9-4kzvt               9m           12Mi            
frontend-dev   frontend-frontend-6b8c596f4-djqx4                   16m          10Mi            
kube-system    coredns-ccb96694c-hrhs6                             10m          14Mi            
kube-system    local-path-provisioner-5cf85fd84d-sbz66             1m           7Mi             
kube-system    metrics-server-5985cbc9d7-npkkt                     19m          20Mi            
kube-system    sealed-secrets-controller-5655858cbc-6vbwp          5m           17Mi            
kube-system    svclb-traefik-39e5d2e9-89vbx                        0m           0Mi             
kube-system    svclb-traefik-39e5d2e9-dl8jt                        0m           0Mi             
kube-system    svclb-traefik-39e5d2e9-f58ch                        0m           0Mi             
kube-system    traefik-5d45fc8cc9-kpv4j                            3m           36Mi            
```
</details>

## 🔗 Connection Tests
### 🛢️ MySQL
❌ No MySQL service found in mysql-dev

### 🎨 Frontend
<details><summary>Frontend services</summary>

```bash
NAME                TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE   SELECTOR
frontend-frontend   ClusterIP   10.43.133.212   <none>        80/TCP    24s   app=frontend-frontend
```
</details>

### ⚙️ Backend
<details><summary>Backend services</summary>

```bash
NAME              TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.96.88   <none>        8081/TCP   24s   app=backend-backend
```
</details>

✅ Tests complete.
```
