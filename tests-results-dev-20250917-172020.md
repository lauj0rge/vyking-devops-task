# 🧪 Test Results for `dev`

<details><summary>🌐 Cluster Info</summary>

```bash
Kubernetes control plane is running at https://0.0.0.0:37653
CoreDNS is running at https://0.0.0.0:37653/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:37653/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```
</details>

<details><summary>🖥️ Nodes</summary>

```bash
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 17m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 17m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   18m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```
</details>

<details><summary>📦 Namespaces</summary>

```bash
NAME              STATUS   AGE
argocd-dev        Active   7m36s
backend-dev       Active   12s
cert-manager      Active   2m10s
default           Active   18m
frontend-dev      Active   12s
kube-node-lease   Active   18m
kube-public       Active   18m
kube-system       Active   18m
mysql-dev         Active   2m20s
```
</details>

<details><summary>🟢 Pods (all namespaces)</summary>

```bash
NAMESPACE      NAME                                                READY   STATUS              RESTARTS   AGE    IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-dev     argocd-application-controller-0                     1/1     Running             0          6m6s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-applicationset-controller-78f49df558-zrtkx   1/1     Running             0          6m8s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-dex-server-796678d5bc-kvfxb                  1/1     Running             0          6m8s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev     argocd-notifications-controller-6d84bf8458-xlf75    1/1     Running             0          6m8s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-redis-7c7fb7fc74-qhcc9                       1/1     Running             0          6m8s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
argocd-dev     argocd-repo-server-d587f667c-7t2md                  1/1     Running             0          6m8s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev     argocd-server-556b554c94-wlgk8                      1/1     Running             0          6m6s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
backend-dev    backend-backend-66c96df8b-8kdpv                     0/1     ContainerCreating   0          3s     <none>      k3d-vyking-dev-server-0   <none>           <none>
backend-dev    backend-backend-66c96df8b-mx6m9                     0/1     ContainerCreating   0          3s     <none>      k3d-vyking-dev-agent-1    <none>           <none>
cert-manager   cert-manager-55c69bf5cf-llmxg                       1/1     Running             0          2m5s   10.42.1.8   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager   cert-manager-cainjector-5765b5f544-fphpz            1/1     Running             0          2m5s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
cert-manager   cert-manager-webhook-6b67444dc9-fmdvp               1/1     Running             0          2m5s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    coredns-ccb96694c-pt4wd                             1/1     Running             0          17m    10.42.0.2   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    helm-install-traefik-crd-vvwmm                      0/1     Completed           0          17m    10.42.1.3   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    helm-install-traefik-lv8vp                          0/1     Completed           2          17m    10.42.2.2   k3d-vyking-dev-server-0   <none>           <none>
kube-system    local-path-provisioner-5cf85fd84d-zm98n             1/1     Running             0          17m    10.42.2.3   k3d-vyking-dev-server-0   <none>           <none>
kube-system    metrics-server-5985cbc9d7-6kmf8                     1/1     Running             0          17m    10.42.1.2   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    sealed-secrets-controller-5655858cbc-cs4qq          1/1     Running             0          17m    10.42.0.3   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    svclb-traefik-97c35943-b6vc2                        2/2     Running             0          16m    10.42.0.4   k3d-vyking-dev-agent-0    <none>           <none>
kube-system    svclb-traefik-97c35943-pbkjg                        2/2     Running             0          16m    10.42.2.4   k3d-vyking-dev-server-0   <none>           <none>
kube-system    svclb-traefik-97c35943-sd2sq                        2/2     Running             0          16m    10.42.1.4   k3d-vyking-dev-agent-1    <none>           <none>
kube-system    traefik-5d45fc8cc9-zvr74                            1/1     Running             0          16m    10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
```
</details>

<details><summary>🔌 Services (all namespaces)</summary>

```bash
NAMESPACE      NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE    SELECTOR
argocd-dev     argocd-application-controller-metrics   ClusterIP      10.43.128.159   <none>                             8082/TCP                     6m9s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev     argocd-applicationset-controller        ClusterIP      10.43.232.152   <none>                             7000/TCP                     6m9s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev     argocd-dex-server                       ClusterIP      10.43.35.45     <none>                             5556/TCP,5557/TCP,5558/TCP   6m9s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev     argocd-redis                            ClusterIP      10.43.17.65     <none>                             6379/TCP                     6m9s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     6m9s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev     argocd-repo-server                      ClusterIP      10.43.206.118   <none>                             8081/TCP                     6m9s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-repo-server-metrics              ClusterIP      10.43.239.169   <none>                             8084/TCP                     6m9s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev     argocd-server                           ClusterIP      10.43.197.57    <none>                             80/TCP,443/TCP               6m9s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev    backend-backend                         ClusterIP      10.43.85.249    <none>                             8081/TCP                     5s     app=backend-backend
cert-manager   cert-manager                            ClusterIP      10.43.147.104   <none>                             9402/TCP                     2m7s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager   cert-manager-cainjector                 ClusterIP      10.43.118.181   <none>                             9402/TCP                     2m7s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager   cert-manager-webhook                    ClusterIP      10.43.135.175   <none>                             443/TCP,9402/TCP             2m7s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default        kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      18m    <none>
kube-system    kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       17m    k8s-app=kube-dns
kube-system    metrics-server                          ClusterIP      10.43.249.132   <none>                             443/TCP                      17m    k8s-app=metrics-server
kube-system    sealed-secrets-controller               ClusterIP      10.43.207.216   <none>                             8080/TCP                     17m    name=sealed-secrets-controller
kube-system    sealed-secrets-controller-metrics       ClusterIP      10.43.105.219   <none>                             8081/TCP                     17m    name=sealed-secrets-controller
kube-system    traefik                                 LoadBalancer   10.43.101.20    172.18.0.2,172.18.0.3,172.18.0.4   80:30537/TCP,443:30579/TCP   16m    app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```
</details>

<details><summary>🌍 Ingresses</summary>

```bash
```
</details>

<details><summary>🚦 Argo CD Applications</summary>

```bash
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Progressing
frontend               Unknown       Healthy
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
NAMESPACE     NAME              REFERENCE                    TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-dev   backend-backend   Deployment/backend-backend   cpu: <unknown>/70%, memory: <unknown>/70%   2         5         2          24s
```
</details>

<details><summary>📊 Resource Usage (nodes)</summary>

```bash
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    394m         13%      632Mi           7%          
k3d-vyking-dev-agent-1    467m         15%      543Mi           6%          
k3d-vyking-dev-server-0   551m         18%      1160Mi          14%         
```
</details>

<details><summary>📊 Resource Usage (pods)</summary>

```bash
NAMESPACE      NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev     argocd-application-controller-0                     20m          228Mi           
argocd-dev     argocd-applicationset-controller-78f49df558-zrtkx   6m           26Mi            
argocd-dev     argocd-dex-server-796678d5bc-kvfxb                  1m           80Mi            
argocd-dev     argocd-notifications-controller-6d84bf8458-xlf75    5m           20Mi            
argocd-dev     argocd-redis-7c7fb7fc74-qhcc9                       5m           3Mi             
argocd-dev     argocd-repo-server-d587f667c-7t2md                  58m          82Mi            
argocd-dev     argocd-server-556b554c94-wlgk8                      5m           55Mi            
backend-dev    backend-backend-66c96df8b-8kdpv                     82m          42Mi            
backend-dev    backend-backend-66c96df8b-mx6m9                     43m          42Mi            
cert-manager   cert-manager-55c69bf5cf-llmxg                       7m           30Mi            
cert-manager   cert-manager-cainjector-5765b5f544-fphpz            4m           21Mi            
cert-manager   cert-manager-webhook-6b67444dc9-fmdvp               14m          11Mi            
kube-system    coredns-ccb96694c-pt4wd                             13m          22Mi            
kube-system    local-path-provisioner-5cf85fd84d-zm98n             1m           7Mi             
kube-system    metrics-server-5985cbc9d7-6kmf8                     18m          27Mi            
kube-system    sealed-secrets-controller-5655858cbc-cs4qq          8m           17Mi            
kube-system    svclb-traefik-97c35943-b6vc2                        0m           0Mi             
kube-system    svclb-traefik-97c35943-pbkjg                        0m           0Mi             
kube-system    svclb-traefik-97c35943-sd2sq                        0m           0Mi             
kube-system    traefik-5d45fc8cc9-zvr74                            3m           35Mi            
```
</details>

## 🔗 Connection Tests
### 🛢️ MySQL
❌ No MySQL service found in mysql-dev

### 🎨 Frontend
<details><summary>Frontend services</summary>

```bash
```
</details>

### ⚙️ Backend
<details><summary>Backend services</summary>

```bash
NAME              TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.85.249   <none>        8081/TCP   28s   app=backend-backend
```
</details>

✅ Tests complete.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
# 🧪 Test Results for `dev`
_Generated on 2025-09-17 17:20:45_

## 🚦 Argo CD
<details><summary>ArgoCD Applications</summary>

```bash
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Progressing
frontend               Unknown       Healthy
mysql                  Unknown       Healthy
mysql-sealed-secrets   Synced        Healthy
```
</details>

**UI:** [http://localhost:8080](http://localhost:8080)

## 🎨 Frontend
<details><summary>Pods</summary>

```bash
```
</details>

<details><summary>Services</summary>

```bash
```
</details>

<details><summary>Ingress</summary>

```bash
```
</details>

## ⚙️ Backend
<details><summary>Pods</summary>

```bash
NAME                              READY   STATUS    RESTARTS   AGE   IP           NODE                      NOMINATED NODE   READINESS GATES
backend-backend-66c96df8b-8kdpv   0/1     Running   0          28s   10.42.2.11   k3d-vyking-dev-server-0   <none>           <none>
backend-backend-66c96df8b-mx6m9   0/1     Running   0          28s   10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
```
</details>

<details><summary>Services</summary>

```bash
NAME              TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.85.249   <none>        8081/TCP   31s   app=backend-backend
```
</details>

<details><summary>Ingress</summary>

```bash
```
</details>

## 🛢️ MySQL
❌ No MySQL service found in mysql-dev

✅ Tests complete.
