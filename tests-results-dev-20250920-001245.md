# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-20 00:12:45 CEST
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
Kubernetes control plane is running at https://0.0.0.0:44055
CoreDNS is running at https://0.0.0.0:44055/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:44055/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

### Nodes
```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 15m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 15m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   15m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```

### Namespaces
```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   6m3s
backend-dev       Active   83s
cert-manager      Active   2m40s
default           Active   15m
frontend-dev      Active   83s
ingress-nginx     Active   78s
kube-node-lease   Active   15m
kube-public       Active   15m
kube-system       Active   15m
mysql-dev         Active   2m48s
```

### Pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS                       RESTARTS        AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running                      0               5m2s    10.42.0.9    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-6ng8d   1/1     Running                      0               5m3s    10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-p8lxl                  1/1     Running                      3 (3m31s ago)   5m3s    10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-scqlp    1/1     Running                      0               5m3s    10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-n96s7                       1/1     Running                      0               5m2s    10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-9w9j6                  1/1     Running                      0               5m3s    10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-server-556b554c94-r2xhj                      1/1     Running                      0               5m3s    10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
backend-dev     backend-backend-66c96df8b-lllf6                     0/1     CreateContainerConfigError   0               72s     10.42.0.12   k3d-vyking-dev-agent-0    <none>           <none>
backend-dev     backend-backend-66c96df8b-ngt7v                     0/1     CreateContainerConfigError   0               72s     10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-p9pqj                       1/1     Running                      0               2m35s   10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-744vc            1/1     Running                      0               2m35s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-zkfkt               1/1     Running                      0               2m35s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
frontend-dev    frontend-frontend-597d68f8cf-jmfbk                  1/1     Running                      0               70s     10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
ingress-nginx   ingress-nginx-controller-b4b575f8-7fhpj             1/1     Running                      0               54s     10.42.0.13   k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-66q7c                             1/1     Running                      0               15m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     helm-install-traefik-crd-z9mq8                      0/1     Completed                    0               15m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-qzs4x                          0/1     Completed                    2               15m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-bhkvx             1/1     Running                      0               15m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     metrics-server-5985cbc9d7-qswwh                     1/1     Running                      0               15m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-xstwh          1/1     Running                      0               15m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-4402c125-2kn2f                        2/2     Running                      0               13m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-traefik-4402c125-9766b                        2/2     Running                      0               13m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-4402c125-fjdsn                        2/2     Running                      0               13m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     traefik-5d45fc8cc9-8bgkw                            1/1     Running                      0               13m     10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
```

### Services (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.79.143    <none>                             8082/TCP                     5m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.202.205   <none>                             7000/TCP                     5m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.189.253   <none>                             5556/TCP,5557/TCP,5558/TCP   5m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.178.191   <none>                             6379/TCP                     5m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     5m4s    app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.129.245   <none>                             8081/TCP                     5m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.120.44    <none>                             8084/TCP                     5m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.85.239    <none>                             80/TCP,443/TCP               5m4s    app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.52.122    <none>                             8081/TCP                     73s     app=backend-backend
cert-manager    cert-manager                            ClusterIP      10.43.158.150   <none>                             9402/TCP                     2m37s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.135.103   <none>                             9402/TCP                     2m36s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.253.132   <none>                             443/TCP,9402/TCP             2m37s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      15m     <none>
frontend-dev    frontend-frontend                       ClusterIP      10.43.20.179    <none>                             8080/TCP                     71s     app=frontend-frontend
ingress-nginx   ingress-nginx-controller                NodePort       10.43.26.125    <none>                             80:30621/TCP,443:30219/TCP   54s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.24.75     <none>                             443/TCP                      54s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       15m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.178.20    <none>                             443/TCP                      15m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.51.176    <none>                             8080/TCP                     15m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.169.148   <none>                             8081/TCP                     15m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.157.103   172.18.0.2,172.18.0.3,172.18.0.4   80:32648/TCP,443:31159/TCP   13m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
```

### Ingresses (all namespaces)
```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS     HOSTS                ADDRESS                            PORTS     AGE
backend-dev    backend-backend     traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80        71s
frontend-dev   frontend-frontend   <none>    frontend-dev.local   10.43.26.125                       80, 443   70s
```

### Deployments (all namespaces)
```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           5m4s
argocd-dev      argocd-dex-server                  1/1     1            1           5m4s
argocd-dev      argocd-notifications-controller    1/1     1            1           5m4s
argocd-dev      argocd-redis                       1/1     1            1           5m4s
argocd-dev      argocd-repo-server                 1/1     1            1           5m4s
argocd-dev      argocd-server                      1/1     1            1           5m4s
backend-dev     backend-backend                    0/2     2            0           73s
cert-manager    cert-manager                       1/1     1            1           2m37s
cert-manager    cert-manager-cainjector            1/1     1            1           2m37s
cert-manager    cert-manager-webhook               1/1     1            1           2m37s
frontend-dev    frontend-frontend                  1/1     1            1           71s
ingress-nginx   ingress-nginx-controller           1/1     1            1           55s
kube-system     coredns                            1/1     1            1           15m
kube-system     local-path-provisioner             1/1     1            1           15m
kube-system     metrics-server                     1/1     1            1           15m
kube-system     sealed-secrets-controller          1/1     1            1           15m
kube-system     traefik                            1/1     1            1           13m
```

### StatefulSets (all namespaces)
```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     5m4s
```

### DaemonSets (all namespaces)
```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-traefik-4402c125   3         3         3       3            3           <none>          13m
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
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  15m
```

### Jobs (all namespaces)
```bash
+ kubectl get jobs -A
NAMESPACE     NAME                       STATUS     COMPLETIONS   DURATION   AGE
kube-system   helm-install-traefik       Complete   1/1           99s        15m
kube-system   helm-install-traefik-crd   Complete   1/1           78s        15m
```

### CronJobs (all namespaces)
```bash
+ kubectl get cronjobs -A
No resources found
```

### Horizontal Pod Autoscalers (all namespaces)
```bash
+ kubectl get hpa -A
NAMESPACE      NAME                REFERENCE                      TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-dev    backend-backend     Deployment/backend-backend     cpu: <unknown>/70%, memory: <unknown>/70%   1         5         2          74s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 7%/80%                 1         3         1          72s
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    387m         12%      764Mi           9%          
k3d-vyking-dev-agent-1    362m         12%      324Mi           4%          
k3d-vyking-dev-server-0   374m         12%      1046Mi          13%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     14m          190Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-6ng8d   4m           35Mi            
argocd-dev      argocd-dex-server-796678d5bc-p8lxl                  2m           33Mi            
argocd-dev      argocd-notifications-controller-6d84bf8458-scqlp    1m           21Mi            
argocd-dev      argocd-redis-7c7fb7fc74-n96s7                       5m           3Mi             
argocd-dev      argocd-repo-server-d587f667c-9w9j6                  4m           97Mi            
argocd-dev      argocd-server-556b554c94-r2xhj                      3m           26Mi            
cert-manager    cert-manager-55c69bf5cf-p9pqj                       4m           25Mi            
cert-manager    cert-manager-cainjector-5765b5f544-744vc            5m           22Mi            
cert-manager    cert-manager-webhook-6b67444dc9-zkfkt               2m           12Mi            
frontend-dev    frontend-frontend-597d68f8cf-jmfbk                  1m           4Mi             
ingress-nginx   ingress-nginx-controller-b4b575f8-7fhpj             31m          47Mi            
kube-system     coredns-ccb96694c-66q7c                             9m           15Mi            
kube-system     local-path-provisioner-5cf85fd84d-bhkvx             1m           7Mi             
kube-system     metrics-server-5985cbc9d7-qswwh                     18m          27Mi            
kube-system     sealed-secrets-controller-5655858cbc-xstwh          1m           19Mi            
kube-system     svclb-traefik-4402c125-2kn2f                        0m           0Mi             
kube-system     svclb-traefik-4402c125-9766b                        0m           0Mi             
kube-system     svclb-traefik-4402c125-fjdsn                        0m           0Mi             
kube-system     traefik-5d45fc8cc9-8bgkw                            2m           38Mi            
```

### Recent cluster events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
backend-dev     71s         Warning   Failed                           pod/backend-backend-66c96df8b-lllf6                      Error: secret "mysql-credentials-dev" not found
frontend-dev    70s         Normal    Created                          pod/frontend-frontend-597d68f8cf-jmfbk                   Created container frontend
backend-dev     3s          Normal    Pulled                           pod/backend-backend-66c96df8b-ngt7v                      Container image "vyking-backend:dev" already present on machine
backend-dev     69s         Warning   Failed                           pod/backend-backend-66c96df8b-ngt7v                      Error: secret "mysql-credentials-dev" not found
frontend-dev    69s         Normal    Started                          pod/frontend-frontend-597d68f8cf-jmfbk                   Started container frontend
ingress-nginx   64s         Normal    Pulled                           pod/ingress-nginx-admission-create-hncmd                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 10.904s (10.904s including waiting). Image size: 28450888 bytes.
ingress-nginx   63s         Normal    Started                          pod/ingress-nginx-admission-create-hncmd                 Started container create
ingress-nginx   63s         Normal    Created                          pod/ingress-nginx-admission-create-hncmd                 Created container create
ingress-nginx   59s         Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
backend-dev     13s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                  invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     13s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
backend-dev     13s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                  failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
argocd-dev      58s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
argocd-dev      58s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
frontend-dev    58s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
frontend-dev    58s         Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/frontend-frontend                invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
frontend-dev    58s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     58s         Normal    Unsealed                         sealedsecret/mysql-credentials-dev                       SealedSecret unsealed successfully
backend-dev     7s          Warning   Failed                           pod/backend-backend-66c96df8b-lllf6                      Error: couldn't find key password in Secret backend-dev/mysql-credentials-dev
ingress-nginx   57s         Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-b4b575f8 to 1
ingress-nginx   57s         Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-b4b575f8             Created pod: ingress-nginx-controller-b4b575f8-7fhpj
argocd-dev      57s         Normal    OperationCompleted               application/mysql-sealed-secrets                         Sync operation to d5537c13694d192dae0f52eaa4229765fa946363 succeeded
argocd-dev      57s         Normal    ResourceUpdated                  application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
ingress-nginx   56s         Normal    Scheduled                        pod/ingress-nginx-controller-b4b575f8-7fhpj              Successfully assigned ingress-nginx/ingress-nginx-controller-b4b575f8-7fhpj to k3d-vyking-dev-agent-0
ingress-nginx   56s         Normal    Pulling                          pod/ingress-nginx-controller-b4b575f8-7fhpj              Pulling image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef"
backend-dev     3s          Warning   Failed                           pod/backend-backend-66c96df8b-ngt7v                      Error: couldn't find key password in Secret backend-dev/mysql-credentials-dev
frontend-dev    43s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
ingress-nginx   28s         Normal    Pulled                           pod/ingress-nginx-controller-b4b575f8-7fhpj              Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef" in 27.672s (27.672s including waiting). Image size: 115287729 bytes.
ingress-nginx   28s         Normal    Created                          pod/ingress-nginx-controller-b4b575f8-7fhpj              Created container controller
ingress-nginx   27s         Normal    Started                          pod/ingress-nginx-controller-b4b575f8-7fhpj              Started container controller
ingress-nginx   27s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
frontend-dev    25s         Normal    Sync                             ingress/frontend-frontend                                Scheduled for sync
argocd-dev      25s         Normal    ResourceUpdated                  application/frontend                                     Updated health status: Progressing -> Healthy
ingress-nginx   25s         Normal    RELOAD                           pod/ingress-nginx-controller-b4b575f8-7fhpj              NGINX reload triggered due to a change in configuration
ingress-nginx   13s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-r6knj                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-r6knj to k3d-vyking-dev-server-0
ingress-nginx   13s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-r6knj
ingress-nginx   12s         Normal    Pulled                           pod/ingress-nginx-admission-patch-r6knj                  Container image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" already present on machine
ingress-nginx   12s         Normal    Created                          pod/ingress-nginx-admission-patch-r6knj                  Created container patch
ingress-nginx   12s         Normal    Started                          pod/ingress-nginx-admission-patch-r6knj                  Started container patch
ingress-nginx   8s          Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS        AGE    IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0               5m6s   10.42.0.9   k3d-vyking-dev-agent-0    <none>           <none>
argocd-applicationset-controller-78f49df558-6ng8d   1/1     Running   0               5m7s   10.42.1.5   k3d-vyking-dev-agent-1    <none>           <none>
argocd-dex-server-796678d5bc-p8lxl                  1/1     Running   3 (3m35s ago)   5m7s   10.42.0.8   k3d-vyking-dev-agent-0    <none>           <none>
argocd-notifications-controller-6d84bf8458-scqlp    1/1     Running   0               5m7s   10.42.0.6   k3d-vyking-dev-agent-0    <none>           <none>
argocd-redis-7c7fb7fc74-n96s7                       1/1     Running   0               5m6s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-9w9j6                  1/1     Running   0               5m7s   10.42.0.7   k3d-vyking-dev-agent-0    <none>           <none>
argocd-server-556b554c94-r2xhj                      1/1     Running   0               5m7s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           5m7s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           5m7s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           5m7s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           5m7s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           5m7s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           5m7s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### StatefulSets
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE    CONTAINERS               IMAGES
argocd-application-controller   1/1     5m7s   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### DaemonSets
```bash
+ kubectl get daemonset -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Services
```bash
+ kubectl get svc -n argocd-dev -o wide
NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE    SELECTOR
argocd-application-controller-metrics   ClusterIP   10.43.79.143    <none>        8082/TCP                     5m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.202.205   <none>        7000/TCP                     5m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.189.253   <none>        5556/TCP,5557/TCP,5558/TCP   5m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.178.191   <none>        6379/TCP                     5m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     5m8s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.129.245   <none>        8081/TCP                     5m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.120.44    <none>        8084/TCP                     5m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.85.239    <none>        80/TCP,443/TCP               5m8s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
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
argocd-cm                       18     5m10s
argocd-cmd-params-cm            41     5m10s
argocd-gpg-keys-cm              0      5m10s
argocd-notifications-cm         1      5m10s
argocd-rbac-cm                  4      5m10s
argocd-redis-health-configmap   2      5m10s
argocd-ssh-known-hosts-cm       1      5m10s
argocd-tls-certs-cm             0      5m10s
kube-root-ca.crt                1      6m8s
```

### Secrets
```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      3m16s
argocd-notifications-secret    Opaque               0      5m11s
argocd-redis                   Opaque               1      5m16s
argocd-secret                  Opaque               3      5m11s
repo-vyking-git                Opaque               2      3m4s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      6m9s
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
2m25s       Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status:  -> Healthy
107s        Normal    ResourceUpdated      application/mysql                                        Updated health status:  -> Healthy
107s        Normal    ResourceUpdated      application/mysql                                        Updated sync status:  -> Unknown
82s         Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
82s         Normal    OperationStarted     application/frontend                                     Initiated automated sync to 'd5537c13694d192dae0f52eaa4229765fa946363'
82s         Normal    OperationStarted     application/backend                                      Initiated automated sync to 'd5537c13694d192dae0f52eaa4229765fa946363'
82s         Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
82s         Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
82s         Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
77s         Normal    OperationCompleted   application/backend                                      Sync operation to d5537c13694d192dae0f52eaa4229765fa946363 succeeded
77s         Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
77s         Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
76s         Normal    ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
76s         Normal    ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
76s         Normal    OperationCompleted   application/frontend                                     Sync operation to d5537c13694d192dae0f52eaa4229765fa946363 succeeded
62s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
62s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
61s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
61s         Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to d5537c13694d192dae0f52eaa4229765fa946363 succeeded
29s         Normal    ResourceUpdated      application/frontend                                     Updated health status: Progressing -> Healthy
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     24m          191Mi           
argocd-applicationset-controller-78f49df558-6ng8d   3m           35Mi            
argocd-dex-server-796678d5bc-p8lxl                  1m           33Mi            
argocd-notifications-controller-6d84bf8458-scqlp    1m           21Mi            
argocd-redis-7c7fb7fc74-n96s7                       4m           3Mi             
argocd-repo-server-d587f667c-9w9j6                  3m           97Mi            
argocd-server-556b554c94-r2xhj                      2m           26Mi            
```


### Applications
```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Progressing
frontend               Synced        Healthy
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
default   3m18s
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
NAME                                 READY   STATUS    RESTARTS   AGE   IP          NODE                      NOMINATED NODE   READINESS GATES
frontend-frontend-597d68f8cf-jmfbk   1/1     Running   0          78s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES                SELECTOR
frontend-frontend   1/1     1            1           79s   frontend     vyking-frontend:dev   app=frontend-frontend
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
NAME                TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
frontend-frontend   ClusterIP   10.43.20.179   <none>        8080/TCP   81s   app=frontend-frontend
```

### Ingresses
```bash
+ kubectl get ingress -n frontend-dev
NAME                CLASS    HOSTS                ADDRESS        PORTS     AGE
frontend-frontend   <none>   frontend-dev.local   10.43.26.125   80, 443   80s
```

### ConfigMaps
```bash
+ kubectl get configmap -n frontend-dev
NAME                    DATA   AGE
frontend-nginx-config   1      82s
kube-root-ca.crt        1      93s
```

### Secrets
```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      88s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                       MINPODS   MAXPODS   REPLICAS   AGE
frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 3%/80%   1         3         1          80s
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
90s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
90s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
90s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
90s         Normal    Requested                      certificate/frontend-cert-dev               Created new CertificateRequest resource "frontend-cert-dev-1"
90s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
90s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
89s         Normal    CertificateIssued              certificaterequest/frontend-cert-dev-1      Certificate fetched from issuer successfully
89s         Warning   BadConfig                      certificaterequest/frontend-cert-dev-1      Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
88s         Normal    Issuing                        certificate/frontend-cert-dev               The certificate has been successfully issued
81s         Normal    SuccessfulCreate               replicaset/frontend-frontend-597d68f8cf     Created pod: frontend-frontend-597d68f8cf-jmfbk
81s         Normal    Scheduled                      pod/frontend-frontend-597d68f8cf-jmfbk      Successfully assigned frontend-dev/frontend-frontend-597d68f8cf-jmfbk to k3d-vyking-dev-server-0
81s         Normal    ScalingReplicaSet              deployment/frontend-frontend                Scaled up replica set frontend-frontend-597d68f8cf to 1
80s         Normal    Pulled                         pod/frontend-frontend-597d68f8cf-jmfbk      Container image "vyking-frontend:dev" already present on machine
78s         Normal    Created                        pod/frontend-frontend-597d68f8cf-jmfbk      Created container frontend
77s         Normal    Started                        pod/frontend-frontend-597d68f8cf-jmfbk      Started container frontend
66s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
66s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
66s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
51s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
33s         Normal    Sync                           ingress/frontend-frontend                   Scheduled for sync
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n frontend-dev
NAME                                 CPU(cores)   MEMORY(bytes)   
frontend-frontend-597d68f8cf-jmfbk   1m           4Mi             
```


- **Service:** `frontend-frontend`
- **Namespace:** `frontend-dev`
- **Port:** `8080`

**Port-forward command:**
```bash
kubectl port-forward svc/frontend-frontend -n frontend-dev 8080:8080
```

## ⚙️ Backend (`backend-dev`)
### Pods
```bash
+ kubectl get pods -n backend-dev -o wide
NAME                              READY   STATUS                       RESTARTS   AGE   IP           NODE                     NOMINATED NODE   READINESS GATES
backend-backend-66c96df8b-lllf6   0/1     CreateContainerConfigError   0          85s   10.42.0.12   k3d-vyking-dev-agent-0   <none>           <none>
backend-backend-66c96df8b-ngt7v   0/1     CreateContainerConfigError   0          85s   10.42.1.8    k3d-vyking-dev-agent-1   <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES               SELECTOR
backend-backend   0/2     2            0           85s   backend      vyking-backend:dev   app=backend-backend
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
NAME              TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.52.122   <none>        8081/TCP   87s   app=backend-backend
```

### Ingresses
```bash
+ kubectl get ingress -n backend-dev
NAME              CLASS     HOSTS                ADDRESS                            PORTS   AGE
backend-backend   traefik   frontend-dev.local   172.18.0.2,172.18.0.3,172.18.0.4   80      85s
```

### ConfigMaps
```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      97s
```

### Secrets
```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      69s
```

### Horizontal Pod Autoscalers
```bash
+ kubectl get hpa -n backend-dev
NAME              REFERENCE                    TARGETS                                     MINPODS   MAXPODS   REPLICAS   AGE
backend-backend   Deployment/backend-backend   cpu: <unknown>/70%, memory: <unknown>/70%   1         5         2          86s
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
LAST SEEN   TYPE      REASON                         OBJECT                                    MESSAGE
87s         Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-ngt7v
87s         Normal    ScalingReplicaSet              deployment/backend-backend                Scaled up replica set backend-backend-66c96df8b to 2
87s         Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-lllf6
86s         Normal    Scheduled                      pod/backend-backend-66c96df8b-lllf6       Successfully assigned backend-dev/backend-backend-66c96df8b-lllf6 to k3d-vyking-dev-agent-0
86s         Normal    Scheduled                      pod/backend-backend-66c96df8b-ngt7v       Successfully assigned backend-dev/backend-backend-66c96df8b-ngt7v to k3d-vyking-dev-agent-1
85s         Warning   FailedMount                    pod/backend-backend-66c96df8b-ngt7v       MountVolume.SetUp failed for volume "kube-api-access-m97hb" : failed to sync configmap cache: timed out waiting for the condition
4s          Normal    Pulled                         pod/backend-backend-66c96df8b-lllf6       Container image "vyking-backend:dev" already present on machine
83s         Warning   Failed                         pod/backend-backend-66c96df8b-lllf6       Error: secret "mysql-credentials-dev" not found
3s          Normal    Pulled                         pod/backend-backend-66c96df8b-ngt7v       Container image "vyking-backend:dev" already present on machine
81s         Warning   Failed                         pod/backend-backend-66c96df8b-ngt7v       Error: secret "mysql-credentials-dev" not found
10s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
10s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
10s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
70s         Normal    Unsealed                       sealedsecret/mysql-credentials-dev        SealedSecret unsealed successfully
4s          Warning   Failed                         pod/backend-backend-66c96df8b-lllf6       Error: couldn't find key password in Secret backend-dev/mysql-credentials-dev
3s          Warning   Failed                         pod/backend-backend-66c96df8b-ngt7v       Error: couldn't find key password in Secret backend-dev/mysql-credentials-dev
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n backend-dev
error: metrics not available yet

[command failed with exit code 1]
```


- **Service:** `backend-backend`
- **Namespace:** `backend-dev`
- **Port:** `8081`

**Port-forward command:**
```bash
kubectl port-forward svc/backend-backend -n backend-dev 8081:8081
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
kube-root-ca.crt   1      3m6s
```

### Secrets
```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql-dev-secret   Opaque   6      2m32s
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
2m33s       Normal   Unsealed   sealedsecret/mysql-dev-secret   SealedSecret unsealed successfully
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
cert-manager-55c69bf5cf-p9pqj              1/1     Running   0          2m56s   10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager-cainjector-5765b5f544-744vc   1/1     Running   0          2m56s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
cert-manager-webhook-6b67444dc9-zkfkt      1/1     Running   0          2m56s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
```

### Deployments
```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           2m57s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           2m57s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           2m57s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
cert-manager              ClusterIP   10.43.158.150   <none>        9402/TCP           2m59s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.135.103   <none>        9402/TCP           2m58s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.253.132   <none>        443/TCP,9402/TCP   2m59s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
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
kube-root-ca.crt   1      3m2s
```

### Secrets
```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      2m29s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      3m2s
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
2m57s       Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-zkfkt       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-zkfkt to k3d-vyking-dev-agent-1
2m55s       Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-zkfkt       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
2m55s       Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-744vc    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
2m54s       Normal   Pulling             pod/cert-manager-55c69bf5cf-p9pqj               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
2m35s       Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-zkfkt       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 20.045s (20.045s including waiting). Image size: 18192443 bytes.
2m34s       Normal   Created             pod/cert-manager-webhook-6b67444dc9-zkfkt       Created container cert-manager-webhook
2m31s       Normal   Started             pod/cert-manager-webhook-6b67444dc9-zkfkt       Started container cert-manager-webhook
2m30s       Normal   Created             pod/cert-manager-cainjector-5765b5f544-744vc    Created container cert-manager-cainjector
2m30s       Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-744vc    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 24.62s (24.62s including waiting). Image size: 15426355 bytes.
2m29s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-744vc    Started container cert-manager-cainjector
2m25s       Normal   Pulled              pod/cert-manager-55c69bf5cf-p9pqj               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 28.748s (28.749s including waiting). Image size: 21189387 bytes.
2m25s       Normal   Created             pod/cert-manager-55c69bf5cf-p9pqj               Created container cert-manager-controller
2m23s       Normal   Started             pod/cert-manager-55c69bf5cf-p9pqj               Started container cert-manager-controller
2m16s       Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-hx9dt
2m15s       Normal   Scheduled           pod/cert-manager-startupapicheck-hx9dt          Successfully assigned cert-manager/cert-manager-startupapicheck-hx9dt to k3d-vyking-dev-agent-0
2m14s       Normal   Pulling             pod/cert-manager-startupapicheck-hx9dt          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
2m8s        Normal   Created             pod/cert-manager-startupapicheck-hx9dt          Created container cert-manager-startupapicheck
2m8s        Normal   Pulled              pod/cert-manager-startupapicheck-hx9dt          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 6.293s (6.293s including waiting). Image size: 14095526 bytes.
2m6s        Normal   Started             pod/cert-manager-startupapicheck-hx9dt          Started container cert-manager-startupapicheck
2m2s        Normal   Completed           job/cert-manager-startupapicheck                Job completed
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-p9pqj              5m           25Mi            
cert-manager-cainjector-5765b5f544-744vc   2m           23Mi            
cert-manager-webhook-6b67444dc9-zkfkt      1m           12Mi            
```


## 🔄 Sealed Secrets (`kube-system`)
### Sealed Secrets pods
```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                      NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-xstwh   1/1     Running   0          15m   10.42.2.3   k3d-vyking-dev-server-0   <none>           <none>
```

### Sealed Secrets deployment
```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           15m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.26.0   name=sealed-secrets-controller
```

### Sealed Secrets service
```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.51.176   <none>        8080/TCP   15m   name=sealed-secrets-controller
```

### Recent kube-system events
```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
14m         Normal    Scheduled              pod/svclb-traefik-4402c125-2kn2f                  Successfully assigned kube-system/svclb-traefik-4402c125-2kn2f to k3d-vyking-dev-agent-1
14m         Normal    Scheduled              pod/svclb-traefik-4402c125-9766b                  Successfully assigned kube-system/svclb-traefik-4402c125-9766b to k3d-vyking-dev-agent-0
14m         Normal    Pulling                pod/svclb-traefik-4402c125-2kn2f                  Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Pulling                pod/traefik-5d45fc8cc9-8bgkw                      Pulling image "rancher/mirrored-library-traefik:2.11.18"
14m         Normal    Pulling                pod/svclb-traefik-4402c125-9766b                  Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Pulling                pod/svclb-traefik-4402c125-fjdsn                  Pulling image "rancher/klipper-lb:v0.4.9"
14m         Normal    Completed              job/helm-install-traefik                          Job completed
14m         Normal    Pulled                 pod/svclb-traefik-4402c125-2kn2f                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 8.673s (8.673s including waiting). Image size: 4990278 bytes.
14m         Normal    Created                pod/svclb-traefik-4402c125-9766b                  Created container lb-tcp-80
14m         Normal    Pulled                 pod/svclb-traefik-4402c125-9766b                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 7.887s (7.887s including waiting). Image size: 4990278 bytes.
14m         Normal    Pulled                 pod/svclb-traefik-4402c125-9766b                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Created                pod/svclb-traefik-4402c125-9766b                  Created container lb-tcp-443
14m         Normal    Started                pod/svclb-traefik-4402c125-9766b                  Started container lb-tcp-443
14m         Normal    Pulled                 pod/svclb-traefik-4402c125-2kn2f                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
14m         Normal    Started                pod/svclb-traefik-4402c125-9766b                  Started container lb-tcp-80
14m         Normal    Started                pod/svclb-traefik-4402c125-2kn2f                  Started container lb-tcp-80
14m         Normal    Created                pod/svclb-traefik-4402c125-2kn2f                  Created container lb-tcp-80
14m         Normal    Started                pod/svclb-traefik-4402c125-2kn2f                  Started container lb-tcp-443
14m         Normal    Created                pod/svclb-traefik-4402c125-2kn2f                  Created container lb-tcp-443
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [] -> [172.18.0.3]
14m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3] -> [172.18.0.3 172.18.0.4]
13m         Normal    Created                pod/svclb-traefik-4402c125-fjdsn                  Created container lb-tcp-80
13m         Normal    Pulled                 pod/svclb-traefik-4402c125-fjdsn                  Successfully pulled image "rancher/klipper-lb:v0.4.9" in 16.99s (16.99s including waiting). Image size: 4990278 bytes.
13m         Normal    Started                pod/svclb-traefik-4402c125-fjdsn                  Started container lb-tcp-80
13m         Normal    Pulled                 pod/svclb-traefik-4402c125-fjdsn                  Container image "rancher/klipper-lb:v0.4.9" already present on machine
13m         Normal    Started                pod/svclb-traefik-4402c125-fjdsn                  Started container lb-tcp-443
13m         Normal    Created                pod/svclb-traefik-4402c125-fjdsn                  Created container lb-tcp-443
13m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
13m         Normal    Pulled                 pod/traefik-5d45fc8cc9-8bgkw                      Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 41.122s (41.122s including waiting). Image size: 49449055 bytes.
13m         Normal    Created                pod/traefik-5d45fc8cc9-8bgkw                      Created container traefik
13m         Normal    Started                pod/traefik-5d45fc8cc9-8bgkw                      Started container traefik
13m         Normal    UpdatedLoadBalancer    service/traefik                                   Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
10m         Warning   Unhealthy              pod/metrics-server-5985cbc9d7-qswwh               Readiness probe failed: Get "https://10.42.1.3:10250/readyz": context deadline exceeded
9m47s       Warning   Unhealthy              pod/coredns-ccb96694c-66q7c                       Readiness probe failed: Get "http://10.42.1.2:8181/ready": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
10m         Warning   Unhealthy              pod/metrics-server-5985cbc9d7-qswwh               Readiness probe failed: Get "https://10.42.1.3:10250/readyz": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
9m52s       Warning   Unhealthy              pod/metrics-server-5985cbc9d7-qswwh               Readiness probe failed: Get "https://10.42.1.3:10250/readyz": net/http: request canceled while waiting for connection (Client.Timeout exceeded while awaiting headers)
9m52s       Warning   Unhealthy              pod/coredns-ccb96694c-66q7c                       Liveness probe failed: Get "http://10.42.1.2:8080/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
9m41s       Warning   Unhealthy              pod/metrics-server-5985cbc9d7-qswwh               Liveness probe failed: Get "https://10.42.1.3:10250/livez": net/http: request canceled while waiting for connection (Client.Timeout exceeded while awaiting headers)
2m29s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election     cert-manager-cainjector-5765b5f544-744vc_67b9045c-1657-4862-8be8-b57c2d28a175 became leader
2m23s       Normal    LeaderElection         lease/cert-manager-controller                     cert-manager-55c69bf5cf-p9pqj-external-cert-manager-controller became leader
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


### Namespace `frontend-dev`
### Deployment frontend-frontend
```bash
+ kubectl rollout status deploy frontend-frontend -n frontend-dev --timeout=30s
deployment "frontend-frontend" successfully rolled out
```


### Namespace `backend-dev`
### Deployment backend-backend
```bash
+ kubectl rollout status deploy backend-backend -n backend-dev --timeout=30s
Waiting for deployment "backend-backend" rollout to finish: 0 of 2 updated replicas are available...
error: timed out waiting for the condition

[command failed with exit code 1]
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

### DaemonSet svclb-traefik-4402c125
```bash
+ kubectl rollout status daemonset svclb-traefik-4402c125 -n kube-system --timeout=30s
daemon set "svclb-traefik-4402c125" successfully rolled out
```


✅ Tests complete.
