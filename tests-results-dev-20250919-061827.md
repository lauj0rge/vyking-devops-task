# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-19 06:18:27 CEST
- **Environment:** `dev`
- **Cluster Name:** `vyking-dev`
- **Argo CD Namespace:** `argocd-dev`

## 🧭 Access Checks
### kubectl version --short
```bash
+ kubectl version --short
error: unknown flag: --short
See 'kubectl version --help' for usage.

[command failed with exit code 1]
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
Kubernetes control plane is running at https://0.0.0.0:38613
CoreDNS is running at https://0.0.0.0:38613/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:38613/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 21m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 21m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   21m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   9m44s
backend-dev       Active   3m7s
cert-manager      Active   4m30s
default           Active   21m
frontend-dev      Active   3m7s
ingress-nginx     Active   3m3s
kube-node-lease   Active   21m
kube-public       Active   21m
kube-system       Active   21m
mysql-dev         Active   4m39s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS      RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running     0          8m6s    10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-l9z6x   1/1     Running     0          8m8s    10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-5c65g                  1/1     Running     0          8m7s    10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-c66w6    1/1     Running     0          8m8s    10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-bh2wf                       1/1     Running     0          8m8s    10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-nktdr                  1/1     Running     0          8m8s    10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-server-556b554c94-l5r25                      1/1     Running     0          8m8s    10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
backend-dev     backend-backend-66c96df8b-4246f                     1/1     Running     0          2m59s   10.42.0.9    k3d-vyking-dev-agent-0    <none>           <none>
backend-dev     backend-backend-66c96df8b-5r2jc                     1/1     Running     0          2m59s   10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-55c69bf5cf-qbp28                       1/1     Running     0          4m26s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-pgpqx            1/1     Running     0          4m26s   10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-gvqqd               1/1     Running     0          4m26s   10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
frontend-dev    frontend-frontend-597d68f8cf-n855n                  1/1     Running     0          2m57s   10.42.1.11   k3d-vyking-dev-agent-1    <none>           <none>
ingress-nginx   ingress-nginx-controller-b4b575f8-qqb6x             1/1     Running     0          2m35s   10.42.1.12   k3d-vyking-dev-agent-1    <none>           <none>
kube-system     coredns-ccb96694c-zz9q4                             1/1     Running     0          21m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-crd-l4x8h                      0/1     Completed   0          21m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-szcjp                          0/1     Completed   0          21m     10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-28ls7             1/1     Running     0          21m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     metrics-server-5985cbc9d7-q7s28                     1/1     Running     0          21m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-prc5j          1/1     Running     0          21m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-d4656989-7jn6b                        2/2     Running     0          19m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-d4656989-92g5r                        2/2     Running     0          19m     10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-d4656989-mphm9                        2/2     Running     0          19m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     traefik-5d45fc8cc9-2rhh6                            1/1     Running     0          19m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.108.167   <none>                             8082/TCP                     8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.34.49     <none>                             7000/TCP                     8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.221.11    <none>                             5556/TCP,5557/TCP,5558/TCP   8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.202.14    <none>                             6379/TCP                     8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     8m10s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.53.22     <none>                             8081/TCP                     8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.130.141   <none>                             8084/TCP                     8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.227.38    <none>                             80/TCP,443/TCP               8m10s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.181.193   <none>                             8081/TCP                     3m      app=backend-backend
cert-manager    cert-manager                            ClusterIP      10.43.79.33     <none>                             9402/TCP                     4m29s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.233.206   <none>                             9402/TCP                     4m29s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.30.10     <none>                             443/TCP,9402/TCP             4m29s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      21m     <none>
frontend-dev    frontend-frontend                       ClusterIP      10.43.232.128   <none>                             8080/TCP                     2m59s   app=frontend-frontend
ingress-nginx   ingress-nginx-controller                NodePort       10.43.10.169    <none>                             80:31568/TCP,443:30463/TCP   2m36s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.253.39    <none>                             443/TCP                      2m36s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       21m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.35.80     <none>                             443/TCP                      21m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.204.41    <none>                             8080/TCP                     21m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.242.88    <none>                             8081/TCP                     21m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.173.6     172.18.0.2,172.18.0.3,172.18.0.4   80:30824/TCP,443:30762/TCP   19m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        3m
frontend-dev   frontend-frontend   <none>    frontend-dev.local   10.43.10.169                       80, 443   2m58s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           8m10s
argocd-dev      argocd-dex-server                  1/1     1            1           8m10s
argocd-dev      argocd-notifications-controller    1/1     1            1           8m10s
argocd-dev      argocd-redis                       1/1     1            1           8m10s
argocd-dev      argocd-repo-server                 1/1     1            1           8m10s
argocd-dev      argocd-server                      1/1     1            1           8m10s
backend-dev     backend-backend                    2/2     2            2           3m1s
cert-manager    cert-manager                       1/1     1            1           4m29s
cert-manager    cert-manager-cainjector            1/1     1            1           4m29s
cert-manager    cert-manager-webhook               1/1     1            1           4m29s
frontend-dev    frontend-frontend                  1/1     1            1           2m59s
ingress-nginx   ingress-nginx-controller           1/1     1            1           2m37s
kube-system     coredns                            1/1     1            1           21m
kube-system     local-path-provisioner             1/1     1            1           21m
kube-system     metrics-server                     1/1     1            1           21m
kube-system     sealed-secrets-controller          1/1     1            1           21m
kube-system     traefik                            1/1     1            1           19m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     8m11s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-d4656989   3         3         3       3            3           <none>          19m
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
