# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-18 19:08:51 CEST
- **Environment:** `dev`
- **Cluster Name:** `vyking-dev`
- **Argo CD Namespace:** `argocd-dev`

## 🧭 Access Checks
<details><summary>kubectl version --short</summary>

```bash
+ kubectl version --short

[command failed with exit code 1]
```
</details>

<details><summary>Current context</summary>

```bash
+ kubectl config current-context
k3d-vyking-dev
```
</details>

<details><summary>Available contexts</summary>

```bash
+ kubectl config get-contexts
CURRENT   NAME             CLUSTER          AUTHINFO               NAMESPACE
*         k3d-vyking-dev   k3d-vyking-dev   admin@k3d-vyking-dev   
```
</details>

## 🌐 Cluster Overview
<details><summary>Cluster info</summary>

```bash
+ kubectl cluster-info
Kubernetes control plane is running at https://0.0.0.0:45689
CoreDNS is running at https://0.0.0.0:45689/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:45689/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```
</details>

<details><summary>Nodes</summary>

```bash
+ kubectl get nodes -o wide
NAME                      STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE           KERNEL-VERSION     CONTAINER-RUNTIME
k3d-vyking-dev-agent-0    Ready    <none>                 13m   v1.31.5+k3s1   172.18.0.3    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-agent-1    Ready    <none>                 13m   v1.31.5+k3s1   172.18.0.4    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
k3d-vyking-dev-server-0   Ready    control-plane,master   13m   v1.31.5+k3s1   172.18.0.2    <none>        K3s v1.31.5+k3s1   6.8.0-79-generic   containerd://1.7.23-k3s2
```
</details>

<details><summary>Namespaces</summary>

```bash
+ kubectl get ns
NAME              STATUS   AGE
argocd-dev        Active   5m52s
backend-dev       Active   74s
cert-manager      Active   2m24s
default           Active   13m
frontend-dev      Active   74s
ingress-nginx     Active   59s
kube-node-lease   Active   13m
kube-public       Active   13m
kube-system       Active   13m
mysql-dev         Active   2m32s
```
</details>

<details><summary>Pods (all namespaces)</summary>

```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS                  RESTARTS        AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running                 0               4m49s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-b5mnz   1/1     Running                 0               4m50s   10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-9w8w6                  1/1     Running                 0               4m50s   10.42.2.8    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-7wcgf    1/1     Running                 0               4m51s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-dpv8x                       1/1     Running                 0               4m51s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-gqwsv                  1/1     Running                 0               4m50s   10.42.2.9    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-server-556b554c94-5pclw                      1/1     Running                 1 (4m35s ago)   4m50s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
backend-dev     backend-backend-66c96df8b-7kknr                     1/1     Running                 0               65s     10.42.2.10   k3d-vyking-dev-server-0   <none>           <none>
backend-dev     backend-backend-66c96df8b-fkr8p                     1/1     Running                 0               65s     10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-55c69bf5cf-hgxp6                       1/1     Running                 0               2m21s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-j6b7r            1/1     Running                 0               2m21s   10.42.0.6    k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-tdkfq               1/1     Running                 0               2m21s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
frontend-dev    frontend-frontend-597d68f8cf-glz64                  1/1     Running                 0               62s     10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
ingress-nginx   ingress-nginx-controller-b4b575f8-h27bz             0/1     ContainerCreating       0               34s     <none>       k3d-vyking-dev-agent-0    <none>           <none>
kube-system     coredns-ccb96694c-85tws                             1/1     Running                 0               13m     10.42.0.2    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     helm-install-traefik-6xcsc                          0/1     Completed               0               13m     10.42.2.3    k3d-vyking-dev-server-0   <none>           <none>
kube-system     helm-install-traefik-crd-vfxdl                      0/1     Completed               0               13m     10.42.1.2    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-mnsll             1/1     Running                 0               13m     10.42.0.3    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     metrics-server-5985cbc9d7-dwk2r                     1/1     Running                 0               13m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     sealed-secrets-controller-5655858cbc-48hb7          1/1     Running                 0               12m     10.42.1.3    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     svclb-ingress-nginx-controller-cfddc8d6-2vn82       0/2     Pending                 0               33s     <none>       <none>                    <none>           <none>
kube-system     svclb-ingress-nginx-controller-cfddc8d6-4dfjw       0/2     Pending                 0               33s     <none>       <none>                    <none>           <none>
kube-system     svclb-ingress-nginx-controller-cfddc8d6-lw6gv       0/2     Pending                 0               33s     <none>       <none>                    <none>           <none>
kube-system     svclb-traefik-57d28a11-czhkk                        2/2     Running                 0               11m     10.42.0.4    k3d-vyking-dev-agent-0    <none>           <none>
kube-system     svclb-traefik-57d28a11-hclmg                        2/2     Running                 0               11m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     svclb-traefik-57d28a11-lsm6s                        2/2     Running                 0               11m     10.42.1.4    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     traefik-5d45fc8cc9-rbhlx                            1/1     Running                 0               11m     10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
mysql-dev       mysql-0                                             0/1     Init:ImagePullBackOff   0               35s     10.42.1.13   k3d-vyking-dev-agent-1    <none>           <none>
```
</details>

<details><summary>Services (all namespaces)</summary>

```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE           CLUSTER-IP      EXTERNAL-IP                        PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP      10.43.233.10    <none>                             8082/TCP                     4m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP      10.43.84.26     <none>                             7000/TCP                     4m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP      10.43.48.63     <none>                             5556/TCP,5557/TCP,5558/TCP   4m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP      10.43.123.126   <none>                             6379/TCP                     4m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP      None            <none>                             9121/TCP                     4m52s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP      10.43.14.77     <none>                             8081/TCP                     4m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP      10.43.145.32    <none>                             8084/TCP                     4m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP      10.43.56.155    <none>                             80/TCP,443/TCP               4m52s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
backend-dev     backend-backend                         ClusterIP      10.43.26.94     <none>                             8081/TCP                     65s     app=backend-backend
cert-manager    cert-manager                            ClusterIP      10.43.69.30     <none>                             9402/TCP                     2m22s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP      10.43.231.41    <none>                             9402/TCP                     2m22s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP      10.43.49.142    <none>                             443/TCP,9402/TCP             2m22s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP      10.43.0.1       <none>                             443/TCP                      13m     <none>
frontend-dev    frontend-frontend                       ClusterIP      10.43.159.88    <none>                             8080/TCP                     63s     app=frontend-frontend
ingress-nginx   ingress-nginx-controller                LoadBalancer   10.43.65.46     <pending>                          80:32765/TCP,443:30795/TCP   34s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP      10.43.75.38     <none>                             443/TCP                      34s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP      10.43.0.10      <none>                             53/UDP,53/TCP,9153/TCP       13m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP      10.43.226.186   <none>                             443/TCP                      13m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP      10.43.90.203    <none>                             8080/TCP                     12m     name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP      10.43.106.103   <none>                             8081/TCP                     13m     name=sealed-secrets-controller
kube-system     traefik                                 LoadBalancer   10.43.90.134    172.18.0.2,172.18.0.3,172.18.0.4   80:31468/TCP,443:31509/TCP   11m     app.kubernetes.io/instance=traefik-kube-system,app.kubernetes.io/name=traefik
mysql-dev       mysql                                   ClusterIP      10.43.8.153     <none>                             3306/TCP                     36s     app.kubernetes.io/component=primary,app.kubernetes.io/instance=mysql,app.kubernetes.io/name=mysql,app.kubernetes.io/part-of=mysql
mysql-dev       mysql-headless                          ClusterIP      None            <none>                             3306/TCP                     36s     app.kubernetes.io/component=primary,app.kubernetes.io/instance=mysql,app.kubernetes.io/name=mysql
```
</details>

<details><summary>Ingresses (all namespaces)</summary>

```bash
+ kubectl get ingress -A
NAMESPACE      NAME                CLASS    HOSTS                ADDRESS   PORTS     AGE
frontend-dev   frontend-frontend   <none>   frontend-dev.local             80, 443   61s
```
</details>

<details><summary>Deployments (all namespaces)</summary>

```bash
+ kubectl get deploy -A
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dev      argocd-applicationset-controller   1/1     1            1           4m51s
argocd-dev      argocd-dex-server                  1/1     1            1           4m51s
argocd-dev      argocd-notifications-controller    1/1     1            1           4m51s
argocd-dev      argocd-redis                       1/1     1            1           4m51s
argocd-dev      argocd-repo-server                 1/1     1            1           4m51s
argocd-dev      argocd-server                      1/1     1            1           4m51s
backend-dev     backend-backend                    2/2     2            2           65s
cert-manager    cert-manager                       1/1     1            1           2m22s
cert-manager    cert-manager-cainjector            1/1     1            1           2m22s
cert-manager    cert-manager-webhook               1/1     1            1           2m22s
frontend-dev    frontend-frontend                  1/1     1            1           62s
ingress-nginx   ingress-nginx-controller           0/1     1            0           34s
kube-system     coredns                            1/1     1            1           13m
kube-system     local-path-provisioner             1/1     1            1           13m
kube-system     metrics-server                     1/1     1            1           13m
kube-system     sealed-secrets-controller          1/1     1            1           13m
kube-system     traefik                            1/1     1            1           11m
```
</details>

<details><summary>StatefulSets (all namespaces)</summary>

```bash
+ kubectl get statefulset -A
NAMESPACE    NAME                            READY   AGE
argocd-dev   argocd-application-controller   1/1     4m52s
mysql-dev    mysql                           0/1     36s
```
</details>

<details><summary>DaemonSets (all namespaces)</summary>

```bash
+ kubectl get daemonset -A
NAMESPACE     NAME                                      DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   svclb-ingress-nginx-controller-cfddc8d6   3         3         0       3            0           <none>          35s
kube-system   svclb-traefik-57d28a11                    3         3         3       3            3           <none>          11m
```
</details>

<details><summary>PersistentVolumeClaims (all namespaces)</summary>

```bash
+ kubectl get pvc -A
NAMESPACE   NAME            STATUS    VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
mysql-dev   data-mysql-0    Bound     pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20   8Gi        RWO            local-path     <unset>                 36s
mysql-dev   mysql-backups   Pending                                                                        local-path     <unset>                 37s
```
</details>

<details><summary>PersistentVolumes</summary>

```bash
+ kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                    STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20   8Gi        RWO            Delete           Bound    mysql-dev/data-mysql-0   local-path     <unset>                          23s
```
</details>

<details><summary>StorageClasses</summary>

```bash
+ kubectl get storageclass
NAME                   PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE
local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  13m
```
</details>

<details><summary>Jobs (all namespaces)</summary>

```bash
+ kubectl get jobs -A
NAMESPACE     NAME                       STATUS     COMPLETIONS   DURATION   AGE
kube-system   helm-install-traefik       Complete   1/1           96s        13m
kube-system   helm-install-traefik-crd   Complete   1/1           87s        13m
```
</details>

<details><summary>CronJobs (all namespaces)</summary>

```bash
+ kubectl get cronjobs -A
NAMESPACE   NAME           SCHEDULE      TIMEZONE   SUSPEND   ACTIVE   LAST SCHEDULE   AGE
mysql-dev   mysql-backup   */5 * * * *   <none>     False     0        <none>          37s
```
</details>

<details><summary>Horizontal Pod Autoscalers (all namespaces)</summary>

```bash
+ kubectl get hpa -A
NAMESPACE      NAME                REFERENCE                      TARGETS                               MINPODS   MAXPODS   REPLICAS   AGE
backend-dev    backend-backend     Deployment/backend-backend     cpu: <unknown>/70%, memory: 33%/70%   2         5         2          67s
frontend-dev   frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 7%/80%           1         3         1          64s
mysql-dev      mysql-hpa           StatefulSet/mysql              cpu: <unknown>/70%                    1         3         1          38s
```
</details>

<details><summary>Resource usage (nodes)</summary>

```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    869m         28%      393Mi           4%          
k3d-vyking-dev-agent-1    412m         13%      650Mi           8%          
k3d-vyking-dev-server-0   631m         21%      1261Mi          15%         
```
</details>

<details><summary>Resource usage (pods, all namespaces)</summary>

```bash
+ kubectl top pods -A
NAMESPACE      NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev     argocd-application-controller-0                     41m          163Mi           
argocd-dev     argocd-applicationset-controller-78f49df558-b5mnz   2m           43Mi            
argocd-dev     argocd-dex-server-796678d5bc-9w8w6                  1m           117Mi           
argocd-dev     argocd-notifications-controller-6d84bf8458-7wcgf    1m           21Mi            
argocd-dev     argocd-redis-7c7fb7fc74-dpv8x                       5m           3Mi             
argocd-dev     argocd-repo-server-d587f667c-gqwsv                  7m           92Mi            
argocd-dev     argocd-server-556b554c94-5pclw                      2m           26Mi            
backend-dev    backend-backend-66c96df8b-7kknr                     1m           43Mi            
backend-dev    backend-backend-66c96df8b-fkr8p                     1m           43Mi            
cert-manager   cert-manager-55c69bf5cf-hgxp6                       2m           28Mi            
cert-manager   cert-manager-cainjector-5765b5f544-j6b7r            5m           29Mi            
cert-manager   cert-manager-webhook-6b67444dc9-tdkfq               2m           12Mi            
frontend-dev   frontend-frontend-597d68f8cf-glz64                  1m           9Mi             
kube-system    coredns-ccb96694c-85tws                             9m           15Mi            
kube-system    local-path-provisioner-5cf85fd84d-mnsll             6m           10Mi            
kube-system    metrics-server-5985cbc9d7-dwk2r                     20m          20Mi            
kube-system    sealed-secrets-controller-5655858cbc-48hb7          6m           21Mi            
kube-system    svclb-traefik-57d28a11-czhkk                        0m           0Mi             
kube-system    svclb-traefik-57d28a11-hclmg                        0m           0Mi             
kube-system    svclb-traefik-57d28a11-lsm6s                        0m           0Mi             
kube-system    traefik-5d45fc8cc9-rbhlx                            5m           37Mi            
```
</details>

<details><summary>Recent cluster events</summary>

```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -A\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
ingress-nginx   37s         Normal    EnsuringLoadBalancer             service/ingress-nginx-controller                                 Ensuring load balancer
kube-system     36s         Warning   FailedScheduling                 pod/svclb-ingress-nginx-controller-cfddc8d6-4dfjw                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
kube-system     36s         Warning   FailedScheduling                 pod/svclb-ingress-nginx-controller-cfddc8d6-2vn82                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
kube-system     36s         Normal    SuccessfulCreate                 daemonset/svclb-ingress-nginx-controller-cfddc8d6                Created pod: svclb-ingress-nginx-controller-cfddc8d6-4dfjw
kube-system     36s         Normal    SuccessfulCreate                 daemonset/svclb-ingress-nginx-controller-cfddc8d6                Created pod: svclb-ingress-nginx-controller-cfddc8d6-lw6gv
ingress-nginx   36s         Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-b4b575f8                     Created pod: ingress-nginx-controller-b4b575f8-h27bz
kube-system     36s         Normal    SuccessfulCreate                 daemonset/svclb-ingress-nginx-controller-cfddc8d6                Created pod: svclb-ingress-nginx-controller-cfddc8d6-2vn82
kube-system     36s         Normal    Pulling                          pod/helper-pod-create-pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20   Pulling image "rancher/mirrored-library-busybox:1.36.1"
kube-system     36s         Warning   FailedScheduling                 pod/svclb-ingress-nginx-controller-cfddc8d6-lw6gv                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
ingress-nginx   36s         Normal    Scheduled                        pod/ingress-nginx-controller-b4b575f8-h27bz                      Successfully assigned ingress-nginx/ingress-nginx-controller-b4b575f8-h27bz to k3d-vyking-dev-agent-0
ingress-nginx   35s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                                Created pod: ingress-nginx-admission-patch-sfzxf
ingress-nginx   35s         Warning   FailedMount                      pod/ingress-nginx-controller-b4b575f8-h27bz                      MountVolume.SetUp failed for volume "webhook-cert" : failed to sync secret cache: timed out waiting for the condition
ingress-nginx   35s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-sfzxf                          Successfully assigned ingress-nginx/ingress-nginx-admission-patch-sfzxf to k3d-vyking-dev-server-0
ingress-nginx   34s         Normal    Pulling                          pod/ingress-nginx-admission-patch-sfzxf                          Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24"
ingress-nginx   34s         Normal    Pulling                          pod/ingress-nginx-controller-b4b575f8-h27bz                      Pulling image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef"
frontend-dev    34s         Warning   FailedGetResourceMetric          horizontalpodautoscaler/frontend-frontend                        failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
kube-system     31s         Normal    Created                          pod/helper-pod-create-pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20   Created container helper-pod
kube-system     31s         Normal    Pulled                           pod/helper-pod-create-pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20   Successfully pulled image "rancher/mirrored-library-busybox:1.36.1" in 4.522s (4.522s including waiting). Image size: 2147340 bytes.
kube-system     30s         Normal    Started                          pod/helper-pod-create-pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20   Started container helper-pod
kube-system     7s          Warning   FailedScheduling                 pod/svclb-ingress-nginx-controller-cfddc8d6-2vn82                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
kube-system     7s          Warning   FailedScheduling                 pod/svclb-ingress-nginx-controller-cfddc8d6-4dfjw                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
kube-system     7s          Warning   FailedScheduling                 pod/svclb-ingress-nginx-controller-cfddc8d6-lw6gv                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
argocd-dev      26s         Normal    ResourceUpdated                  application/backend                                              Updated health status: Progressing -> Healthy
mysql-dev       25s         Normal    ProvisioningSucceeded            persistentvolumeclaim/data-mysql-0                               Successfully provisioned volume pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20
mysql-dev       25s         Normal    Scheduled                        pod/mysql-0                                                      Successfully assigned mysql-dev/mysql-0 to k3d-vyking-dev-agent-1
mysql-dev       8s          Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/mysql-hpa                                invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
mysql-dev       8s          Warning   FailedGetResourceMetric          horizontalpodautoscaler/mysql-hpa                                failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
backend-dev     7s          Warning   FailedComputeMetricsReplicas     horizontalpodautoscaler/backend-backend                          invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
backend-dev     7s          Warning   FailedGetResourceMetric          horizontalpodautoscaler/backend-backend                          failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
mysql-dev       10s         Normal    Pulling                          pod/mysql-0                                                      Pulling image "docker.io/bitnami/mysql:9.4.0-debian-12-r1"
mysql-dev       21s         Warning   Failed                           pod/mysql-0                                                      Error: ImagePullBackOff
mysql-dev       21s         Normal    BackOff                          pod/mysql-0                                                      Back-off pulling image "docker.io/bitnami/mysql:9.4.0-debian-12-r1"
mysql-dev       9s          Warning   Failed                           pod/mysql-0                                                      Error: ErrImagePull
mysql-dev       9s          Warning   Failed                           pod/mysql-0                                                      Failed to pull image "docker.io/bitnami/mysql:9.4.0-debian-12-r1": rpc error: code = NotFound desc = failed to pull and unpack image "docker.io/bitnami/mysql:9.4.0-debian-12-r1": failed to resolve reference "docker.io/bitnami/mysql:9.4.0-debian-12-r1": docker.io/bitnami/mysql:9.4.0-debian-12-r1: not found
ingress-nginx   12s         Normal    Started                          pod/ingress-nginx-admission-patch-sfzxf                          Started container patch
ingress-nginx   12s         Normal    Created                          pod/ingress-nginx-admission-patch-sfzxf                          Created container patch
ingress-nginx   12s         Normal    Pulled                           pod/ingress-nginx-admission-patch-sfzxf                          Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.6.2@sha256:050a34002d5bb4966849c880c56c91f5320372564245733b33d4b3461b4dbd24" in 21.369s (21.369s including waiting). Image size: 28450888 bytes.
ingress-nginx   7s          Normal    Completed                        job/ingress-nginx-admission-patch                                Job completed
ingress-nginx   0s          Normal    Created                          pod/ingress-nginx-controller-b4b575f8-h27bz                      Created container controller
ingress-nginx   0s          Normal    Pulled                           pod/ingress-nginx-controller-b4b575f8-h27bz                      Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.13.2@sha256:1f7eaeb01933e719c8a9f4acd8181e555e582330c7d50f24484fb64d2ba9b2ef" in 33.837s (33.837s including waiting). Image size: 115287729 bytes.
```
</details>

## 🚦 Argo CD (`argocd-dev`)
<details><summary>Pods</summary>

```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS        AGE     IP          NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0               4m53s   10.42.1.7   k3d-vyking-dev-agent-1    <none>           <none>
argocd-applicationset-controller-78f49df558-b5mnz   1/1     Running   0               4m54s   10.42.0.5   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dex-server-796678d5bc-9w8w6                  1/1     Running   0               4m54s   10.42.2.8   k3d-vyking-dev-server-0   <none>           <none>
argocd-notifications-controller-6d84bf8458-7wcgf    1/1     Running   0               4m55s   10.42.2.6   k3d-vyking-dev-server-0   <none>           <none>
argocd-redis-7c7fb7fc74-dpv8x                       1/1     Running   0               4m55s   10.42.1.6   k3d-vyking-dev-agent-1    <none>           <none>
argocd-repo-server-d587f667c-gqwsv                  1/1     Running   0               4m54s   10.42.2.9   k3d-vyking-dev-server-0   <none>           <none>
argocd-server-556b554c94-5pclw                      1/1     Running   1 (4m39s ago)   4m54s   10.42.2.7   k3d-vyking-dev-server-0   <none>           <none>
```
</details>

<details><summary>Deployments</summary>

```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           4m56s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           4m56s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           4m56s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           4m56s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 1/1     1            1           4m56s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      1/1     1            1           4m56s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```
</details>

<details><summary>StatefulSets</summary>

```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     4m56s   application-controller   quay.io/argoproj/argocd:v3.1.5
```
</details>

<details><summary>DaemonSets</summary>

```bash
+ kubectl get daemonset -n argocd-dev -o wide
```
</details>

<details><summary>Services</summary>

```bash
+ kubectl get svc -n argocd-dev -o wide
NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-application-controller-metrics   ClusterIP   10.43.233.10    <none>        8082/TCP                     4m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.84.26     <none>        7000/TCP                     4m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.48.63     <none>        5556/TCP,5557/TCP,5558/TCP   4m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.123.126   <none>        6379/TCP                     4m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     4m57s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.14.77     <none>        8081/TCP                     4m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.145.32    <none>        8084/TCP                     4m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.56.155    <none>        80/TCP,443/TCP               4m57s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```
</details>

<details><summary>Ingresses</summary>

```bash
+ kubectl get ingress -n argocd-dev
```
</details>

<details><summary>ConfigMaps</summary>

```bash
+ kubectl get configmap -n argocd-dev
NAME                            DATA   AGE
argocd-cm                       18     5m
argocd-cmd-params-cm            41     5m
argocd-gpg-keys-cm              0      5m
argocd-notifications-cm         1      5m
argocd-rbac-cm                  4      5m
argocd-redis-health-configmap   2      5m
argocd-ssh-known-hosts-cm       1      5m
argocd-tls-certs-cm             0      5m
kube-root-ca.crt                1      5m59s
```
</details>

<details><summary>Secrets</summary>

```bash
+ kubectl get secret -n argocd-dev
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      4m44s
argocd-notifications-secret    Opaque               0      5m
argocd-redis                   Opaque               1      5m9s
argocd-secret                  Opaque               3      5m
repo-vyking-git                Opaque               2      2m51s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      5m59s
```
</details>

<details><summary>Horizontal Pod Autoscalers</summary>

```bash
+ kubectl get hpa -n argocd-dev
```
</details>

<details><summary>Jobs</summary>

```bash
+ kubectl get jobs -n argocd-dev
```
</details>

<details><summary>CronJobs</summary>

```bash
+ kubectl get cronjobs -n argocd-dev
```
</details>

<details><summary>PersistentVolumeClaims</summary>

```bash
+ kubectl get pvc -n argocd-dev
```
</details>

<details><summary>Recent Events</summary>

```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"argocd-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
74s         Normal    ResourceUpdated      application/backend                                      Updated health status:  -> Missing
74s         Normal    OperationStarted     application/backend                                      Initiated automated sync to '8d943de5d761d56d738c16158c8487deafbab5d2'
74s         Normal    ResourceUpdated      application/backend                                      Updated sync status:  -> OutOfSync
73s         Normal    OperationStarted     application/frontend                                     Initiated automated sync to '8d943de5d761d56d738c16158c8487deafbab5d2'
73s         Normal    ResourceUpdated      application/frontend                                     Updated sync status:  -> OutOfSync
73s         Normal    ResourceUpdated      application/frontend                                     Updated health status:  -> Missing
71s         Normal    ResourceUpdated      application/backend                                      Updated sync status: OutOfSync -> Synced
71s         Normal    ResourceUpdated      application/backend                                      Updated health status: Missing -> Progressing
70s         Normal    OperationCompleted   application/backend                                      Sync operation to 8d943de5d761d56d738c16158c8487deafbab5d2 succeeded
68s         Normal    OperationCompleted   application/frontend                                     Sync operation to 8d943de5d761d56d738c16158c8487deafbab5d2 succeeded
67s         Normal    ResourceUpdated      application/frontend                                     Updated sync status: OutOfSync -> Synced
67s         Normal    ResourceUpdated      application/frontend                                     Updated health status: Missing -> Progressing
55s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Healthy -> Progressing
55s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated health status: Progressing -> Healthy
55s         Normal    OperationCompleted   application/mysql-sealed-secrets                         Sync operation to 8d943de5d761d56d738c16158c8487deafbab5d2 succeeded
56s         Normal    ResourceUpdated      application/mysql-sealed-secrets                         Updated sync status: OutOfSync -> Synced
42s         Normal    ResourceUpdated      application/mysql                                        Updated health status: Missing -> Progressing
42s         Normal    OperationCompleted   application/mysql                                        Sync operation to 8d943de5d761d56d738c16158c8487deafbab5d2 succeeded
41s         Normal    ResourceUpdated      application/mysql                                        Updated sync status: OutOfSync -> Synced
30s         Normal    ResourceUpdated      application/backend                                      Updated health status: Progressing -> Healthy
```
</details>

<details><summary>Resource Usage (pods)</summary>

```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     41m          163Mi           
argocd-applicationset-controller-78f49df558-b5mnz   2m           43Mi            
argocd-dex-server-796678d5bc-9w8w6                  1m           117Mi           
argocd-notifications-controller-6d84bf8458-7wcgf    1m           21Mi            
argocd-redis-7c7fb7fc74-dpv8x                       5m           3Mi             
argocd-repo-server-d587f667c-gqwsv                  7m           92Mi            
argocd-server-556b554c94-5pclw                      2m           26Mi            
```
</details>


<details><summary>Applications</summary>

```bash
+ kubectl get applications -n argocd-dev
NAME                   SYNC STATUS   HEALTH STATUS
backend                Synced        Healthy
frontend               Synced        Progressing
mysql                  Synced        Progressing
mysql-sealed-secrets   Synced        Healthy
```
</details>

<details><summary>ApplicationSets</summary>

```bash
+ kubectl get applicationsets -n argocd-dev
```
</details>

<details><summary>AppProjects</summary>

```bash
+ kubectl get appprojects -n argocd-dev
NAME      AGE
default   4m37s
```
</details>

**UI:** [http://localhost:8080](http://localhost:8080)
**Port-forward command:**
```bash
kubectl port-forward svc/argocd-server -n argocd-dev 8080:80
```

## 🎨 Frontend (`frontend-dev`)
<details><summary>Pods</summary>

```bash
+ kubectl get pods -n frontend-dev -o wide
NAME                                 READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
frontend-frontend-597d68f8cf-glz64   1/1     Running   0          71s   10.42.0.8   k3d-vyking-dev-agent-0   <none>           <none>
```
</details>

<details><summary>Deployments</summary>

```bash
+ kubectl get deploy -n frontend-dev -o wide
NAME                READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES                SELECTOR
frontend-frontend   1/1     1            1           71s   frontend     vyking-frontend:dev   app=frontend-frontend
```
</details>

<details><summary>StatefulSets</summary>

```bash
+ kubectl get statefulset -n frontend-dev -o wide
```
</details>

<details><summary>DaemonSets</summary>

```bash
+ kubectl get daemonset -n frontend-dev -o wide
```
</details>

<details><summary>Services</summary>

```bash
+ kubectl get svc -n frontend-dev -o wide
NAME                TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
frontend-frontend   ClusterIP   10.43.159.88   <none>        8080/TCP   73s   app=frontend-frontend
```
</details>

<details><summary>Ingresses</summary>

```bash
+ kubectl get ingress -n frontend-dev
NAME                CLASS    HOSTS                ADDRESS   PORTS     AGE
frontend-frontend   <none>   frontend-dev.local             80, 443   71s
```
</details>

<details><summary>ConfigMaps</summary>

```bash
+ kubectl get configmap -n frontend-dev
NAME                    DATA   AGE
frontend-nginx-config   1      74s
kube-root-ca.crt        1      85s
```
</details>

<details><summary>Secrets</summary>

```bash
+ kubectl get secret -n frontend-dev
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      78s
```
</details>

<details><summary>Horizontal Pod Autoscalers</summary>

```bash
+ kubectl get hpa -n frontend-dev
NAME                REFERENCE                      TARGETS                       MINPODS   MAXPODS   REPLICAS   AGE
frontend-frontend   Deployment/frontend-frontend   cpu: 1%/70%, memory: 7%/80%   1         3         1          73s
```
</details>

<details><summary>Jobs</summary>

```bash
+ kubectl get jobs -n frontend-dev
```
</details>

<details><summary>CronJobs</summary>

```bash
+ kubectl get cronjobs -n frontend-dev
```
</details>

<details><summary>PersistentVolumeClaims</summary>

```bash
+ kubectl get pvc -n frontend-dev
```
</details>

<details><summary>Recent Events</summary>

```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"frontend-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
81s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
81s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
81s         Normal    IssuerNotFound                 certificaterequest/frontend-cert-dev-1      Referenced "ClusterIssuer" not found: clusterissuer.cert-manager.io "selfsigned-issuer" not found
81s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
81s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
81s         Normal    WaitingForApproval             certificaterequest/frontend-cert-dev-1      Not signing CertificateRequest until it is Approved
79s         Warning   BadConfig                      certificaterequest/frontend-cert-dev-1      Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
79s         Normal    CertificateIssued              certificaterequest/frontend-cert-dev-1      Certificate fetched from issuer successfully
79s         Normal    Issuing                        certificate/frontend-cert-dev               The certificate has been successfully issued
73s         Normal    ScalingReplicaSet              deployment/frontend-frontend                Scaled up replica set frontend-frontend-597d68f8cf to 1
72s         Normal    Scheduled                      pod/frontend-frontend-597d68f8cf-glz64      Successfully assigned frontend-dev/frontend-frontend-597d68f8cf-glz64 to k3d-vyking-dev-agent-0
73s         Normal    SuccessfulCreate               replicaset/frontend-frontend-597d68f8cf     Created pod: frontend-frontend-597d68f8cf-glz64
70s         Normal    Pulled                         pod/frontend-frontend-597d68f8cf-glz64      Container image "vyking-frontend:dev" already present on machine
70s         Normal    Created                        pod/frontend-frontend-597d68f8cf-glz64      Created container frontend
69s         Normal    Started                        pod/frontend-frontend-597d68f8cf-glz64      Started container frontend
58s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
58s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
58s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/frontend-frontend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
42s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/frontend-frontend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
6s          Normal    Sync                           ingress/frontend-frontend                   Scheduled for sync
```
</details>

<details><summary>Resource Usage (pods)</summary>

```bash
+ kubectl top pods -n frontend-dev
NAME                                 CPU(cores)   MEMORY(bytes)   
frontend-frontend-597d68f8cf-glz64   1m           9Mi             
```
</details>


- **Service:** `frontend-frontend`
- **Namespace:** `frontend-dev`
- **Port:** `8080`

**Port-forward command:**
```bash
kubectl port-forward svc/frontend-frontend -n frontend-dev 8080:8080
```

## ⚙️ Backend (`backend-dev`)
<details><summary>Pods</summary>

```bash
+ kubectl get pods -n backend-dev -o wide
NAME                              READY   STATUS    RESTARTS   AGE   IP           NODE                      NOMINATED NODE   READINESS GATES
backend-backend-66c96df8b-7kknr   1/1     Running   0          78s   10.42.2.10   k3d-vyking-dev-server-0   <none>           <none>
backend-backend-66c96df8b-fkr8p   1/1     Running   0          78s   10.42.1.10   k3d-vyking-dev-agent-1    <none>           <none>
```
</details>

<details><summary>Deployments</summary>

```bash
+ kubectl get deploy -n backend-dev -o wide
NAME              READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES               SELECTOR
backend-backend   2/2     2            2           78s   backend      vyking-backend:dev   app=backend-backend
```
</details>

<details><summary>StatefulSets</summary>

```bash
+ kubectl get statefulset -n backend-dev -o wide
```
</details>

<details><summary>DaemonSets</summary>

```bash
+ kubectl get daemonset -n backend-dev -o wide
```
</details>

<details><summary>Services</summary>

```bash
+ kubectl get svc -n backend-dev -o wide
NAME              TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)    AGE   SELECTOR
backend-backend   ClusterIP   10.43.26.94   <none>        8081/TCP   78s   app=backend-backend
```
</details>

<details><summary>Ingresses</summary>

```bash
+ kubectl get ingress -n backend-dev
```
</details>

<details><summary>ConfigMaps</summary>

```bash
+ kubectl get configmap -n backend-dev
NAME               DATA   AGE
kube-root-ca.crt   1      89s
```
</details>

<details><summary>Secrets</summary>

```bash
+ kubectl get secret -n backend-dev
NAME                    TYPE     DATA   AGE
mysql-credentials-dev   Opaque   5      63s
```
</details>

<details><summary>Horizontal Pod Autoscalers</summary>

```bash
+ kubectl get hpa -n backend-dev
NAME              REFERENCE                    TARGETS                        MINPODS   MAXPODS   REPLICAS   AGE
backend-backend   Deployment/backend-backend   cpu: 1%/70%, memory: 33%/70%   2         5         2          79s
```
</details>

<details><summary>Jobs</summary>

```bash
+ kubectl get jobs -n backend-dev
```
</details>

<details><summary>CronJobs</summary>

```bash
+ kubectl get cronjobs -n backend-dev
```
</details>

<details><summary>PersistentVolumeClaims</summary>

```bash
+ kubectl get pvc -n backend-dev
```
</details>

<details><summary>Recent Events</summary>

```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"backend-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
LAST SEEN   TYPE      REASON                         OBJECT                                    MESSAGE
80s         Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-fkr8p
80s         Normal    ScalingReplicaSet              deployment/backend-backend                Scaled up replica set backend-backend-66c96df8b to 2
80s         Normal    SuccessfulCreate               replicaset/backend-backend-66c96df8b      Created pod: backend-backend-66c96df8b-7kknr
79s         Normal    Scheduled                      pod/backend-backend-66c96df8b-fkr8p       Successfully assigned backend-dev/backend-backend-66c96df8b-fkr8p to k3d-vyking-dev-agent-1
79s         Normal    Scheduled                      pod/backend-backend-66c96df8b-7kknr       Successfully assigned backend-dev/backend-backend-66c96df8b-7kknr to k3d-vyking-dev-server-0
61s         Normal    Pulled                         pod/backend-backend-66c96df8b-7kknr       Container image "vyking-backend:dev" already present on machine
62s         Normal    Pulled                         pod/backend-backend-66c96df8b-fkr8p       Container image "vyking-backend:dev" already present on machine
76s         Warning   Failed                         pod/backend-backend-66c96df8b-fkr8p       Error: secret "mysql-credentials-dev" not found
76s         Warning   Failed                         pod/backend-backend-66c96df8b-7kknr       Error: secret "mysql-credentials-dev" not found
64s         Normal    Unsealed                       sealedsecret/mysql-credentials-dev        SealedSecret unsealed successfully
49s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get memory utilization: unable to get metrics for resource memory: no metrics returned from resource metrics API
49s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
49s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
61s         Normal    Created                        pod/backend-backend-66c96df8b-fkr8p       Created container backend
61s         Normal    Created                        pod/backend-backend-66c96df8b-7kknr       Created container backend
60s         Normal    Started                        pod/backend-backend-66c96df8b-fkr8p       Started container backend
60s         Normal    Started                        pod/backend-backend-66c96df8b-7kknr       Started container backend
19s         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend-backend   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
19s         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend-backend   invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
```
</details>

<details><summary>Resource Usage (pods)</summary>

```bash
+ kubectl top pods -n backend-dev
NAME                              CPU(cores)   MEMORY(bytes)   
backend-backend-66c96df8b-7kknr   2m           43Mi            
backend-backend-66c96df8b-fkr8p   1m           43Mi            
```
</details>


- **Service:** `backend-backend`
- **Namespace:** `backend-dev`
- **Port:** `8081`

**Port-forward command:**
```bash
kubectl port-forward svc/backend-backend -n backend-dev 8081:8081
```

## 🛢️ MySQL (`mysql-dev`)
<details><summary>Pods</summary>

```bash
+ kubectl get pods -n mysql-dev -o wide
NAME      READY   STATUS              RESTARTS   AGE   IP           NODE                     NOMINATED NODE   READINESS GATES
mysql-0   0/1     Init:ErrImagePull   0          51s   10.42.1.13   k3d-vyking-dev-agent-1   <none>           <none>
```
</details>

<details><summary>Deployments</summary>

```bash
+ kubectl get deploy -n mysql-dev -o wide
```
</details>

<details><summary>StatefulSets</summary>

```bash
+ kubectl get statefulset -n mysql-dev -o wide
NAME    READY   AGE   CONTAINERS   IMAGES
mysql   0/1     52s   mysql        docker.io/bitnami/mysql:9.4.0-debian-12-r1
```
</details>

<details><summary>DaemonSets</summary>

```bash
+ kubectl get daemonset -n mysql-dev -o wide
```
</details>

<details><summary>Services</summary>

```bash
+ kubectl get svc -n mysql-dev -o wide
NAME             TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)    AGE   SELECTOR
mysql            ClusterIP   10.43.8.153   <none>        3306/TCP   53s   app.kubernetes.io/component=primary,app.kubernetes.io/instance=mysql,app.kubernetes.io/name=mysql,app.kubernetes.io/part-of=mysql
mysql-headless   ClusterIP   None          <none>        3306/TCP   53s   app.kubernetes.io/component=primary,app.kubernetes.io/instance=mysql,app.kubernetes.io/name=mysql
```
</details>

<details><summary>Ingresses</summary>

```bash
+ kubectl get ingress -n mysql-dev
```
</details>

<details><summary>ConfigMaps</summary>

```bash
+ kubectl get configmap -n mysql-dev
NAME               DATA   AGE
kube-root-ca.crt   1      2m51s
mysql              1      55s
mysql-init         1      55s
```
</details>

<details><summary>Secrets</summary>

```bash
+ kubectl get secret -n mysql-dev
NAME               TYPE     DATA   AGE
mysql              Opaque   2      55s
mysql-dev-secret   Opaque   5      2m22s
```
</details>

<details><summary>Horizontal Pod Autoscalers</summary>

```bash
+ kubectl get hpa -n mysql-dev
NAME        REFERENCE           TARGETS              MINPODS   MAXPODS   REPLICAS   AGE
mysql-hpa   StatefulSet/mysql   cpu: <unknown>/70%   1         3         1          54s
```
</details>

<details><summary>Jobs</summary>

```bash
+ kubectl get jobs -n mysql-dev
```
</details>

<details><summary>CronJobs</summary>

```bash
+ kubectl get cronjobs -n mysql-dev
NAME           SCHEDULE      TIMEZONE   SUSPEND   ACTIVE   LAST SCHEDULE   AGE
mysql-backup   */5 * * * *   <none>     False     0        <none>          54s
```
</details>

<details><summary>PersistentVolumeClaims</summary>

```bash
+ kubectl get pvc -n mysql-dev
NAME            STATUS    VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
data-mysql-0    Bound     pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20   8Gi        RWO            local-path     <unset>                 54s
mysql-backups   Pending                                                                        local-path     <unset>                 55s
```
</details>

<details><summary>Recent Events</summary>

```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"mysql-dev\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
LAST SEEN   TYPE      REASON                         OBJECT                                MESSAGE
2m23s       Normal    Unsealed                       sealedsecret/mysql-dev-secret         SealedSecret unsealed successfully
57s         Normal    NoPods                         poddisruptionbudget/mysql             No matching pods found
4s          Normal    WaitForFirstConsumer           persistentvolumeclaim/mysql-backups   waiting for first consumer to be created before binding
49s         Normal    ExternalProvisioning           persistentvolumeclaim/data-mysql-0    Waiting for a volume to be created either by the external provisioner 'rancher.io/local-path' or manually by the system administrator. If volume creation is delayed, please verify that the provisioner is running and correctly registered.
54s         Normal    Provisioning                   persistentvolumeclaim/data-mysql-0    External provisioner is provisioning volume for claim "mysql-dev/data-mysql-0"
54s         Normal    SuccessfulCreate               statefulset/mysql                     create Pod mysql-0 in StatefulSet mysql successful
54s         Normal    SuccessfulCreate               statefulset/mysql                     create Claim data-mysql-0 Pod mysql-0 in StatefulSet mysql success
54s         Normal    WaitForFirstConsumer           persistentvolumeclaim/data-mysql-0    waiting for first consumer to be created before binding
41s         Normal    ProvisioningSucceeded          persistentvolumeclaim/data-mysql-0    Successfully provisioned volume pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20
40s         Normal    Scheduled                      pod/mysql-0                           Successfully assigned mysql-dev/mysql-0 to k3d-vyking-dev-agent-1
9s          Warning   FailedGetResourceMetric        horizontalpodautoscaler/mysql-hpa     failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
9s          Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/mysql-hpa     invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
26s         Normal    Pulling                        pod/mysql-0                           Pulling image "docker.io/bitnami/mysql:9.4.0-debian-12-r1"
10s         Warning   Failed                         pod/mysql-0                           Error: ImagePullBackOff
10s         Normal    BackOff                        pod/mysql-0                           Back-off pulling image "docker.io/bitnami/mysql:9.4.0-debian-12-r1"
25s         Warning   Failed                         pod/mysql-0                           Error: ErrImagePull
25s         Warning   Failed                         pod/mysql-0                           Failed to pull image "docker.io/bitnami/mysql:9.4.0-debian-12-r1": rpc error: code = NotFound desc = failed to pull and unpack image "docker.io/bitnami/mysql:9.4.0-debian-12-r1": failed to resolve reference "docker.io/bitnami/mysql:9.4.0-debian-12-r1": docker.io/bitnami/mysql:9.4.0-debian-12-r1: not found
```
</details>

<details><summary>Resource Usage (pods)</summary>

```bash
+ kubectl top pods -n mysql-dev

[command failed with exit code 1]
```
</details>


- **Service:** `mysql`
- **Namespace:** `mysql-dev`
- **Port:** `3306`

**Connection test command:**
```bash
kubectl run mysql-client --rm -it --image=bitnami/mysql:8.0 -n mysql-dev --env MYSQL_HOST=mysql -- bash
```

**Port-forward command:**
```bash
kubectl port-forward svc/mysql -n mysql-dev 3306:3306
```

## 🔐 Cert-Manager (`cert-manager`)
<details><summary>Pods</summary>

```bash
+ kubectl get pods -n cert-manager -o wide
NAME                                       READY   STATUS    RESTARTS   AGE     IP          NODE                     NOMINATED NODE   READINESS GATES
cert-manager-55c69bf5cf-hgxp6              1/1     Running   0          2m41s   10.42.1.8   k3d-vyking-dev-agent-1   <none>           <none>
cert-manager-cainjector-5765b5f544-j6b7r   1/1     Running   0          2m41s   10.42.0.6   k3d-vyking-dev-agent-0   <none>           <none>
cert-manager-webhook-6b67444dc9-tdkfq      1/1     Running   0          2m41s   10.42.0.7   k3d-vyking-dev-agent-0   <none>           <none>
```
</details>

<details><summary>Deployments</summary>

```bash
+ kubectl get deploy -n cert-manager -o wide
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                IMAGES                                             SELECTOR
cert-manager              1/1     1            1           2m43s   cert-manager-controller   quay.io/jetstack/cert-manager-controller:v1.16.1   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   1/1     1            1           2m43s   cert-manager-cainjector   quay.io/jetstack/cert-manager-cainjector:v1.16.1   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      1/1     1            1           2m43s   cert-manager-webhook      quay.io/jetstack/cert-manager-webhook:v1.16.1      app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
```
</details>

<details><summary>StatefulSets</summary>

```bash
+ kubectl get statefulset -n cert-manager -o wide
```
</details>

<details><summary>DaemonSets</summary>

```bash
+ kubectl get daemonset -n cert-manager -o wide
```
</details>

<details><summary>Services</summary>

```bash
+ kubectl get svc -n cert-manager -o wide
NAME                      TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)            AGE     SELECTOR
cert-manager              ClusterIP   10.43.69.30    <none>        9402/TCP           2m43s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager-cainjector   ClusterIP   10.43.231.41   <none>        9402/TCP           2m43s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager-webhook      ClusterIP   10.43.49.142   <none>        443/TCP,9402/TCP   2m43s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
```
</details>

<details><summary>Ingresses</summary>

```bash
+ kubectl get ingress -n cert-manager
```
</details>

<details><summary>ConfigMaps</summary>

```bash
+ kubectl get configmap -n cert-manager
NAME               DATA   AGE
kube-root-ca.crt   1      2m47s
```
</details>

<details><summary>Secrets</summary>

```bash
+ kubectl get secret -n cert-manager
NAME                                 TYPE                 DATA   AGE
cert-manager-webhook-ca              Opaque               3      2m19s
sh.helm.release.v1.cert-manager.v1   helm.sh/release.v1   1      2m47s
```
</details>

<details><summary>Horizontal Pod Autoscalers</summary>

```bash
+ kubectl get hpa -n cert-manager
```
</details>

<details><summary>Jobs</summary>

```bash
+ kubectl get jobs -n cert-manager
```
</details>

<details><summary>CronJobs</summary>

```bash
+ kubectl get cronjobs -n cert-manager
```
</details>

<details><summary>PersistentVolumeClaims</summary>

```bash
+ kubectl get pvc -n cert-manager
```
</details>

<details><summary>Recent Events</summary>

```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ \"cert-manager\"\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 20
2m43s       Normal   Scheduled           pod/cert-manager-webhook-6b67444dc9-tdkfq       Successfully assigned cert-manager/cert-manager-webhook-6b67444dc9-tdkfq to k3d-vyking-dev-agent-0
2m41s       Normal   Pulling             pod/cert-manager-55c69bf5cf-hgxp6               Pulling image "quay.io/jetstack/cert-manager-controller:v1.16.1"
2m40s       Normal   Pulling             pod/cert-manager-webhook-6b67444dc9-tdkfq       Pulling image "quay.io/jetstack/cert-manager-webhook:v1.16.1"
2m40s       Normal   Pulling             pod/cert-manager-cainjector-5765b5f544-j6b7r    Pulling image "quay.io/jetstack/cert-manager-cainjector:v1.16.1"
2m22s       Normal   Created             pod/cert-manager-webhook-6b67444dc9-tdkfq       Created container cert-manager-webhook
2m22s       Normal   Pulled              pod/cert-manager-webhook-6b67444dc9-tdkfq       Successfully pulled image "quay.io/jetstack/cert-manager-webhook:v1.16.1" in 18.164s (18.164s including waiting). Image size: 18192443 bytes.
2m21s       Normal   Started             pod/cert-manager-webhook-6b67444dc9-tdkfq       Started container cert-manager-webhook
2m19s       Normal   Pulled              pod/cert-manager-cainjector-5765b5f544-j6b7r    Successfully pulled image "quay.io/jetstack/cert-manager-cainjector:v1.16.1" in 20.956s (20.956s including waiting). Image size: 15426355 bytes.
2m19s       Normal   Created             pod/cert-manager-cainjector-5765b5f544-j6b7r    Created container cert-manager-cainjector
2m19s       Normal   Started             pod/cert-manager-cainjector-5765b5f544-j6b7r    Started container cert-manager-cainjector
2m18s       Normal   Created             pod/cert-manager-55c69bf5cf-hgxp6               Created container cert-manager-controller
2m18s       Normal   Pulled              pod/cert-manager-55c69bf5cf-hgxp6               Successfully pulled image "quay.io/jetstack/cert-manager-controller:v1.16.1" in 23.147s (23.147s including waiting). Image size: 21189387 bytes.
2m17s       Normal   Started             pod/cert-manager-55c69bf5cf-hgxp6               Started container cert-manager-controller
2m7s        Normal   SuccessfulCreate    job/cert-manager-startupapicheck                Created pod: cert-manager-startupapicheck-bkl4k
2m7s        Normal   Scheduled           pod/cert-manager-startupapicheck-bkl4k          Successfully assigned cert-manager/cert-manager-startupapicheck-bkl4k to k3d-vyking-dev-agent-1
2m5s        Normal   Pulling             pod/cert-manager-startupapicheck-bkl4k          Pulling image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1"
119s        Normal   Pulled              pod/cert-manager-startupapicheck-bkl4k          Successfully pulled image "quay.io/jetstack/cert-manager-startupapicheck:v1.16.1" in 6.199s (6.199s including waiting). Image size: 14095526 bytes.
119s        Normal   Started             pod/cert-manager-startupapicheck-bkl4k          Started container cert-manager-startupapicheck
119s        Normal   Created             pod/cert-manager-startupapicheck-bkl4k          Created container cert-manager-startupapicheck
114s        Normal   Completed           job/cert-manager-startupapicheck                Job completed
```
</details>

<details><summary>Resource Usage (pods)</summary>

```bash
+ kubectl top pods -n cert-manager
NAME                                       CPU(cores)   MEMORY(bytes)   
cert-manager-55c69bf5cf-hgxp6              4m           28Mi            
cert-manager-cainjector-5765b5f544-j6b7r   5m           29Mi            
cert-manager-webhook-6b67444dc9-tdkfq      2m           12Mi            
```
</details>


## 🔄 Sealed Secrets (`kube-system`)
<details><summary>Sealed Secrets pods</summary>

```bash
+ kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
NAME                                         READY   STATUS    RESTARTS   AGE   IP          NODE                     NOMINATED NODE   READINESS GATES
sealed-secrets-controller-5655858cbc-48hb7   1/1     Running   0          13m   10.42.1.3   k3d-vyking-dev-agent-1   <none>           <none>
```
</details>

<details><summary>Sealed Secrets deployment</summary>

```bash
+ kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS                  IMAGES                                               SELECTOR
sealed-secrets-controller   1/1     1            1           13m   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.26.0   name=sealed-secrets-controller
```
</details>

<details><summary>Sealed Secrets service</summary>

```bash
+ kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
NAME                        TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE   SELECTOR
sealed-secrets-controller   ClusterIP   10.43.90.203   <none>        8080/TCP   13m   name=sealed-secrets-controller
```
</details>

<details><summary>Recent kube-system events</summary>

```bash
+ bash -lc set\ -o\ pipefail\;\ kubectl\ get\ events\ -n\ kube-system\ --sort-by=.metadata.creationTimestamp\ \|\ tail\ -n\ 40
11m         Normal    Started                pod/svclb-traefik-57d28a11-czhkk                                 Started container lb-tcp-80
11m         Normal    Pulled                 pod/svclb-traefik-57d28a11-czhkk                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
11m         Normal    Created                pod/svclb-traefik-57d28a11-czhkk                                 Created container lb-tcp-443
11m         Normal    Started                pod/svclb-traefik-57d28a11-czhkk                                 Started container lb-tcp-443
11m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [] -> [172.18.0.3]
11m         Normal    Pulled                 pod/svclb-traefik-57d28a11-lsm6s                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 13.898s (13.898s including waiting). Image size: 4990278 bytes.
11m         Normal    Pulled                 pod/svclb-traefik-57d28a11-hclmg                                 Successfully pulled image "rancher/klipper-lb:v0.4.9" in 13.703s (13.703s including waiting). Image size: 4990278 bytes.
11m         Normal    Created                pod/svclb-traefik-57d28a11-hclmg                                 Created container lb-tcp-80
11m         Normal    Created                pod/svclb-traefik-57d28a11-lsm6s                                 Created container lb-tcp-80
11m         Normal    Started                pod/svclb-traefik-57d28a11-hclmg                                 Started container lb-tcp-80
11m         Normal    Pulled                 pod/svclb-traefik-57d28a11-hclmg                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
11m         Normal    Created                pod/svclb-traefik-57d28a11-hclmg                                 Created container lb-tcp-443
11m         Normal    Started                pod/svclb-traefik-57d28a11-lsm6s                                 Started container lb-tcp-80
11m         Normal    Created                pod/svclb-traefik-57d28a11-lsm6s                                 Created container lb-tcp-443
11m         Normal    Pulled                 pod/svclb-traefik-57d28a11-lsm6s                                 Container image "rancher/klipper-lb:v0.4.9" already present on machine
11m         Normal    Started                pod/svclb-traefik-57d28a11-lsm6s                                 Started container lb-tcp-443
11m         Normal    Started                pod/svclb-traefik-57d28a11-hclmg                                 Started container lb-tcp-443
11m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.3] -> [172.18.0.3 172.18.0.4]
11m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
11m         Normal    Pulled                 pod/traefik-5d45fc8cc9-rbhlx                                     Successfully pulled image "rancher/mirrored-library-traefik:2.11.18" in 34.907s (34.908s including waiting). Image size: 49449055 bytes.
11m         Normal    Created                pod/traefik-5d45fc8cc9-rbhlx                                     Created container traefik
11m         Normal    Started                pod/traefik-5d45fc8cc9-rbhlx                                     Started container traefik
11m         Normal    UpdatedLoadBalancer    service/traefik                                                  Updated LoadBalancer with new IPs: [172.18.0.2 172.18.0.3 172.18.0.4] -> [172.18.0.2 172.18.0.3 172.18.0.4]
11m         Warning   Unhealthy              pod/traefik-5d45fc8cc9-rbhlx                                     Readiness probe failed: HTTP probe failed with statuscode: 404
5m7s        Warning   Unhealthy              pod/metrics-server-5985cbc9d7-dwk2r                              Readiness probe failed: Get "https://10.42.2.2:10250/readyz": net/http: request canceled (Client.Timeout exceeded while awaiting headers)
2m19s       Normal    LeaderElection         lease/cert-manager-cainjector-leader-election                    cert-manager-cainjector-5765b5f544-j6b7r_0861f322-dd12-477b-88f2-e4878e19f6a6 became leader
2m18s       Normal    LeaderElection         lease/cert-manager-controller                                    cert-manager-55c69bf5cf-hgxp6-external-cert-manager-controller became leader
58s         Warning   FailedScheduling       pod/svclb-ingress-nginx-controller-cfddc8d6-4dfjw                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
58s         Warning   FailedScheduling       pod/svclb-ingress-nginx-controller-cfddc8d6-2vn82                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
58s         Normal    Pulling                pod/helper-pod-create-pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20   Pulling image "rancher/mirrored-library-busybox:1.36.1"
58s         Normal    SuccessfulCreate       daemonset/svclb-ingress-nginx-controller-cfddc8d6                Created pod: svclb-ingress-nginx-controller-cfddc8d6-4dfjw
58s         Normal    SuccessfulCreate       daemonset/svclb-ingress-nginx-controller-cfddc8d6                Created pod: svclb-ingress-nginx-controller-cfddc8d6-2vn82
58s         Warning   FailedScheduling       pod/svclb-ingress-nginx-controller-cfddc8d6-lw6gv                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
58s         Normal    SuccessfulCreate       daemonset/svclb-ingress-nginx-controller-cfddc8d6                Created pod: svclb-ingress-nginx-controller-cfddc8d6-lw6gv
53s         Normal    Created                pod/helper-pod-create-pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20   Created container helper-pod
53s         Normal    Pulled                 pod/helper-pod-create-pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20   Successfully pulled image "rancher/mirrored-library-busybox:1.36.1" in 4.522s (4.522s including waiting). Image size: 2147340 bytes.
52s         Normal    Started                pod/helper-pod-create-pvc-5f1de3f4-2179-441a-9b61-f9fcb6bf8d20   Started container helper-pod
29s         Warning   FailedScheduling       pod/svclb-ingress-nginx-controller-cfddc8d6-2vn82                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
29s         Warning   FailedScheduling       pod/svclb-ingress-nginx-controller-cfddc8d6-4dfjw                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
29s         Warning   FailedScheduling       pod/svclb-ingress-nginx-controller-cfddc8d6-lw6gv                0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports. preemption: 0/3 nodes are available: 1 node(s) didn't have free ports for the requested pod ports, 2 Preemption is not helpful for scheduling.
```
</details>


## 🚀 Workload Rollouts
### Namespace `argocd-dev`
<details><summary>Deployment argocd-applicationset-controller</summary>

```bash
+ kubectl rollout status deploy argocd-applicationset-controller -n argocd-dev --timeout=30s
deployment "argocd-applicationset-controller" successfully rolled out
```
</details>

<details><summary>Deployment argocd-dex-server</summary>

```bash
+ kubectl rollout status deploy argocd-dex-server -n argocd-dev --timeout=30s
deployment "argocd-dex-server" successfully rolled out
```
</details>

<details><summary>Deployment argocd-notifications-controller</summary>

```bash
+ kubectl rollout status deploy argocd-notifications-controller -n argocd-dev --timeout=30s
deployment "argocd-notifications-controller" successfully rolled out
```
</details>

<details><summary>Deployment argocd-redis</summary>

```bash
+ kubectl rollout status deploy argocd-redis -n argocd-dev --timeout=30s
deployment "argocd-redis" successfully rolled out
```
</details>

<details><summary>Deployment argocd-repo-server</summary>

```bash
+ kubectl rollout status deploy argocd-repo-server -n argocd-dev --timeout=30s
deployment "argocd-repo-server" successfully rolled out
```
</details>

<details><summary>Deployment argocd-server</summary>

```bash
+ kubectl rollout status deploy argocd-server -n argocd-dev --timeout=30s
deployment "argocd-server" successfully rolled out
```
</details>

<details><summary>StatefulSet argocd-application-controller</summary>

```bash
+ kubectl rollout status statefulset argocd-application-controller -n argocd-dev --timeout=30s
partitioned roll out complete: 1 new pods have been updated...
```
</details>


### Namespace `frontend-dev`
<details><summary>Deployment frontend-frontend</summary>

```bash
+ kubectl rollout status deploy frontend-frontend -n frontend-dev --timeout=30s
deployment "frontend-frontend" successfully rolled out
```
</details>


### Namespace `backend-dev`
<details><summary>Deployment backend-backend</summary>

```bash
+ kubectl rollout status deploy backend-backend -n backend-dev --timeout=30s
deployment "backend-backend" successfully rolled out
```
</details>


### Namespace `mysql-dev`
<details><summary>StatefulSet mysql</summary>

```bash
+ kubectl rollout status statefulset mysql -n mysql-dev --timeout=30s
Waiting for 1 pods to be ready...

[command failed with exit code 1]
```
</details>


### Namespace `cert-manager`
<details><summary>Deployment cert-manager</summary>

```bash
+ kubectl rollout status deploy cert-manager -n cert-manager --timeout=30s
deployment "cert-manager" successfully rolled out
```
</details>

<details><summary>Deployment cert-manager-cainjector</summary>

```bash
+ kubectl rollout status deploy cert-manager-cainjector -n cert-manager --timeout=30s
deployment "cert-manager-cainjector" successfully rolled out
```
</details>

<details><summary>Deployment cert-manager-webhook</summary>

```bash
+ kubectl rollout status deploy cert-manager-webhook -n cert-manager --timeout=30s
deployment "cert-manager-webhook" successfully rolled out
```
</details>


### Namespace `kube-system`
<details><summary>Deployment coredns</summary>

```bash
+ kubectl rollout status deploy coredns -n kube-system --timeout=30s
deployment "coredns" successfully rolled out
```
</details>

<details><summary>Deployment local-path-provisioner</summary>

```bash
+ kubectl rollout status deploy local-path-provisioner -n kube-system --timeout=30s
deployment "local-path-provisioner" successfully rolled out
```
</details>

<details><summary>Deployment metrics-server</summary>

```bash
+ kubectl rollout status deploy metrics-server -n kube-system --timeout=30s
deployment "metrics-server" successfully rolled out
```
</details>

<details><summary>Deployment sealed-secrets-controller</summary>

```bash
+ kubectl rollout status deploy sealed-secrets-controller -n kube-system --timeout=30s
deployment "sealed-secrets-controller" successfully rolled out
```
</details>

<details><summary>Deployment traefik</summary>

```bash
+ kubectl rollout status deploy traefik -n kube-system --timeout=30s
deployment "traefik" successfully rolled out
```
</details>

<details><summary>DaemonSet svclb-ingress-nginx-controller-cfddc8d6</summary>

```bash
+ kubectl rollout status daemonset svclb-ingress-nginx-controller-cfddc8d6 -n kube-system --timeout=30s
Waiting for daemon set "svclb-ingress-nginx-controller-cfddc8d6" rollout to finish: 0 of 3 updated pods are available...

[command failed with exit code 1]
```
</details>

<details><summary>DaemonSet svclb-traefik-57d28a11</summary>

```bash
+ kubectl rollout status daemonset svclb-traefik-57d28a11 -n kube-system --timeout=30s
daemon set "svclb-traefik-57d28a11" successfully rolled out
```
</details>


✅ Tests complete.
