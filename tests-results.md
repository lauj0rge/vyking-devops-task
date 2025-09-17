# 🧪 Test Results for dev

```bash
# 🧪 Test Results for `dev`

<details><summary>🌐 Cluster Info</summary>

```bash
Kubernetes control plane is running at https://0.0.0.0:34035
CoreDNS is running at https://0.0.0.0:34035/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:34035/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```
</details>

<details><summary>🖥️ Nodes</summary>

```bash
NAME                      STATUS   ROLES                  AGE     VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 9m      v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 9m      v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   9m15s   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```
</details>

<details><summary>📦 Namespaces</summary>

```bash
NAME              STATUS   AGE
argocd-dev        Active   5m53s
backend-dev       Active   12s
cert-manager      Active   112s
default           Active   9m21s
frontend-dev      Active   12s
kube-node-lease   Active   9m21s
kube-public       Active   9m21s
kube-system       Active   9m21s
mysql-dev         Active   2m6s
```
</details>

<details><summary>🟢 Pods (all namespaces)</summary>

```bash
NAMESPACE      NAME                                                READY   STATUS              RESTARTS   AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-dev     argocd-application-controller-0                     1/1     Running             0          4m20s   10.42.0.9   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-applicationset-controller-78f49df558-br4cb   1/1     Running             0          4m21s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-dex-server-796678d5bc-5l8nv                  1/1     Running             0          4m21s   10.42.2.5   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-notifications-controller-6d84bf8458-sqg92    1/1     Running             0          4m21s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-redis-7c7fb7fc74-xkk96                       1/1     Running             0          4m21s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev     argocd-repo-server-d587f667c-97w9s                  1/1     Running             0          4m21s   10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-server-556b554c94-594gb                      1/1     Running             0          4m21s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
backend-dev    backend-backend-66c96df8b-mxkxn                     0/1     ContainerCreating   0          2s      <none>      k3d-vyking-dev-server-0   <none>           <none>
backend-dev    backend-backend-66c96df8b-wh7vn                     0/1     ContainerCreating   0          2s      <none>      k3d-vyking-dev-agent-1    <none>           <none>
cert-manager   cert-manager-55c69bf5cf-c6rgg                       1/1     Running             0          108s    10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
cert-manager   cert-manager-cainjector-5765b5f544-d98sl            1/1     Running             0          108s    10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager   cert-manager-webhook-6b67444dc9-x24xq               1/1     Running             0          108s    10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
frontend-dev   frontend-frontend-6b8c596f4-4s2ts                   0/1     Pending             0          1s      <none>      k3d-vyking-dev-agent-0    <none>           <none>
kube-system    coredns-ccb96694c-tkc9d                             1/1     Running             0          8m55s   10.42.0.2   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    helm-install-traefik-crd-mmhsn                      0/1     Completed           0          8m55s   10.42.1.3   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    helm-install-traefik-csh4r                          0/1     Completed           1          8m55s   10.42.0.3   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    local-path-provisioner-5cf85fd84d-b2stm             1/1     Running             0          8m55s   10.42.1.4   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    metrics-server-5985cbc9d7-mw6hx                     1/1     Running             0          8m55s   10.42.1.2   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    sealed-secrets-controller-5655858cbc-4msbr          1/1     Running             0          8m41s   10.42.2.2   k3d-vyking-dev-server-0   <none>           <none>
kube-system    svclb-traefik-72c7b9dc-cckgg                        2/2     Running             0          6m49s   10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    svclb-traefik-72c7b9dc-g28b8                        2/2     Running             0          6m49s   10.42.2.4   k3d-vyking-dev-server-0   <none>           <none>
kube-system    svclb-traefik-72c7b9dc-qf6p9                        2/2     Running             0          6m49s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    traefik-5d45fc8cc9-cgmn6                            1/1     Running             0          6m49s   10.42.2.3   k3d-vyking-dev-server-0   <none>           <none>
```
</details>

<details><summary>🔌 Services (all namespaces)</summary>

```bash
NAMESPACE      NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev     argocd-application-controller-metrics   ClusterIP      10.43.129.116   <none>                             8082/TCP                     4m23s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev     argocd-applicationset-controller        ClusterIP      10.43.249.135   <none>                             7000/TCP                     4m23s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev     argocd-dex-server                       ClusterIP      10.43.50.71     <none>                             5556/TCP,5557/TCP,5558/TCP   4m23s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev     argocd-redis                            ClusterIP      10.43.136.173   <none>                             6379/TCP                     4m23s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     4m23s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-repo-server                      ClusterIP      10.43.70.72     <none>                             8081/TCP                     4m23s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-repo-server-metrics              ClusterIP      10.43.226.245   <none>                             8084/TCP                     4m23s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-server                           ClusterIP      10.43.101.153   <none>                             80/TCP,443/TCP               4m23s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev    backend-backend                         ClusterIP      10.43.84.144    <none>                             8081/TCP                     3s      app=backend-backend
cert-manager   cert-manager                            ClusterIP      10.43.130.186   <none>                             9402/TCP                     109s    app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager   cert-manager-cainjector                 ClusterIP      10.43.220.195   <none>                             9402/TCP                     109s    app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager   cert-manager-webhook                    ClusterIP      10.43.126.133   <none>                             443/TCP,9402/TCP             109s    app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default        kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      9m18s   <none>
frontend-dev   frontend-frontend                       ClusterIP      10.43.67.201    <none>                             80/TCP                       3s      app=frontend-frontend
kube-system    kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       9m8s    k8s-app=kube-dns
kube-system    metrics-server                          ClusterIP      10.43.28.172    <none>                             443/TCP                      9m3s    k8s-app=metrics-server
kube-system    sealed-secrets-controller               ClusterIP      10.43.215.188   <none>                             8080/TCP                     8m41s   name=sealed-secrets-controller
kube-system    sealed-secrets-controller-metrics       ClusterIP      10.43.168.250   <none>                             8081/TCP                     8m43s   name=sealed-secrets-controller
kube-system    traefik                                 LoadBalancer   10.43.167.91    172.18.0.2,172.18.0.3,172.18.0.4   80:32098/TCP,443:31253/TCP   6m49s   app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
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
Waiting for deployment "frontend-frontend" rollout to finish: 0 of 1 updated replicas are available...
⚠️  frontend-dev/frontend-frontend not ready
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
backend-dev    backend-backend     Deployment/backend-backend     cpu: <unknown>/70%, memory: <unknown>/70%   2         5         2          36s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: <unknown>/70%, memory: <unknown>/80%   1         3         1          35s
```
</details>

<details><summary>📊 Resource Usage (nodes)</summary>

```bash
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    341m         11%      542Mi           6%          
k3d-vyking-dev-agent-1    351m         11%      268Mi           3%          
k3d-vyking-dev-server-0   355m         11%      1326Mi          16%         
```
</details>

<details><summary>📊 Resource Usage (pods)</summary>

```bash
NAMESPACE      NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev     argocd-application-controller-0                     110m         156Mi           
argocd-dev     argocd-applicationset-controller-78f49df558-br4cb   2m           24Mi            
argocd-dev     argocd-dex-server-796678d5bc-5l8nv                  0m           80Mi            
argocd-dev     argocd-notifications-controller-6d84bf8458-sqg92    3m           21Mi            
argocd-dev     argocd-redis-7c7fb7fc74-xkk96                       5m           2Mi             
argocd-dev     argocd-repo-server-d587f667c-97w9s                  5m           92Mi            
argocd-dev     argocd-server-556b554c94-594gb                      24m          25Mi            
cert-manager   cert-manager-55c69bf5cf-c6rgg                       4m           57Mi            
cert-manager   cert-manager-cainjector-5765b5f544-d98sl            4m           24Mi            
cert-manager   cert-manager-webhook-6b67444dc9-x24xq               2m           19Mi            
kube-system    coredns-ccb96694c-tkc9d                             12m          14Mi            
kube-system    local-path-provisioner-5cf85fd84d-b2stm             1m           7Mi             
kube-system    metrics-server-5985cbc9d7-mw6hx                     21m          19Mi            
kube-system    sealed-secrets-controller-5655858cbc-4msbr          1m           16Mi            
kube-system    svclb-traefik-72c7b9dc-cckgg                        0m           0Mi             
kube-system    svclb-traefik-72c7b9dc-g28b8                        0m           0Mi             
kube-system    svclb-traefik-72c7b9dc-qf6p9                        0m           0Mi             
kube-system    traefik-5d45fc8cc9-cgmn6                            4m           26Mi            
```
</details>

## 🔗 Connection Tests
### 🛢️ MySQL
❌ No MySQL service found in mysql-dev

### 🎨 Frontend
<details><summary>Frontend services</summary>

```bash
NAME                TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)   AGE   SELECTOR
frontend-frontend   ClusterIP   10.43.67.201   <none>        80/TCP    39s   app=frontend-frontend
```
</details>

### ⚙️ Backend
<details><summary>Backend services</summary>

```bash
NAME              TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.84.144   <none>        8081/TCP   39s   app=backend-backend
```
</details>

✅ Tests complete.
```
