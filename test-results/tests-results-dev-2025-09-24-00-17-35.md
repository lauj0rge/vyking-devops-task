# 🧪 Cluster Test Results for `dev`

## 📋 Summary
- **Generated:** 2025-09-24 00:17:35 CEST
- **Environment:** `dev`
- **Cluster Name:** `vyking-dev`
- **Kubeconfig Path:** `~/.kube/vyking-dev-config`
- **tfvars source:** `terraform/env/dev.tfvars`

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
### cluster-info
```bash
+ kubectl get cluster-info
error: the server doesn't have a resource type "cluster-info"
[command failed 0]
```

### nodes
```bash
+ kubectl get nodes nodes
Error from server (NotFound): nodes "nodes" not found
[command failed 0]
```

### ns
```bash
+ kubectl get ns ns
Error from server (NotFound): namespaces "ns" not found
[command failed 0]
```

### pv
```bash
+ kubectl get pv pv
Error from server (NotFound): persistentvolumes "pv" not found
[command failed 0]
```

### storageclass
```bash
+ kubectl get storageclass storageclass
Error from server (NotFound): storageclasses.storage.k8s.io "storageclass" not found
[command failed 0]
```

### pods (all namespaces)
```bash
+ kubectl get pods -A -o wide
NAMESPACE       NAME                                                READY   STATUS    RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-dev      argocd-application-controller-0                     1/1     Running   0          5m47s   10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-applicationset-controller-78f49df558-n59jl   1/1     Running   0          5m49s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-dex-server-796678d5bc-prs8w                  1/1     Running   0          5m50s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-notifications-controller-6d84bf8458-j78ws    1/1     Running   0          5m49s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-redis-7c7fb7fc74-c47rg                       1/1     Running   0          5m49s   10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-jq7gm                  1/1     Running   0          5m49s   10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
argocd-dev      argocd-repo-server-d587f667c-q7lt9                  1/1     Running   0          5m49s   10.42.0.9    k3d-vyking-dev-agent-0    <none>           <none>
argocd-dev      argocd-server-556b554c94-2lw88                      1/1     Running   0          5m49s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dev      argocd-server-556b554c94-vw2qn                      1/1     Running   0          5m49s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
cert-manager    cert-manager-55c69bf5cf-lwv2x                       1/1     Running   0          2m51s   10.42.1.9    k3d-vyking-dev-agent-1    <none>           <none>
cert-manager    cert-manager-cainjector-5765b5f544-2s7v8            1/1     Running   0          2m51s   10.42.0.12   k3d-vyking-dev-agent-0    <none>           <none>
cert-manager    cert-manager-webhook-6b67444dc9-h4rll               1/1     Running   0          2m51s   10.42.2.7    k3d-vyking-dev-server-0   <none>           <none>
ingress-nginx   ingress-nginx-controller-599c5c76cc-wn7wm           1/1     Running   0          42s     10.42.1.12   k3d-vyking-dev-agent-1    <none>           <none>
kube-system     coredns-ccb96694c-p4mqx                             1/1     Running   0          23m     10.42.2.2    k3d-vyking-dev-server-0   <none>           <none>
kube-system     local-path-provisioner-5cf85fd84d-njtgh             1/1     Running   0          21m     10.42.1.5    k3d-vyking-dev-agent-1    <none>           <none>
kube-system     metrics-server-5985cbc9d7-8v9kw                     1/1     Running   0          23m     10.42.2.4    k3d-vyking-dev-server-0   <none>           <none>
kube-system     sealed-secrets-controller-79c4ffdbd7-cs4n9          1/1     Running   0          9m47s   10.42.0.5    k3d-vyking-dev-agent-0    <none>           <none>
```

### svc (all namespaces)
```bash
+ kubectl get svc -A -o wide
NAMESPACE       NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE     SELECTOR
argocd-dev      argocd-application-controller-metrics   ClusterIP   10.43.150.191   <none>        8082/TCP                     5m51s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-dev      argocd-applicationset-controller        ClusterIP   10.43.17.90     <none>        7000/TCP                     5m51s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                       ClusterIP   10.43.226.215   <none>        5556/TCP,5557/TCP,5558/TCP   5m51s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-redis                            ClusterIP   10.43.129.0     <none>        6379/TCP                     5m51s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     5m51s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                      ClusterIP   10.43.58.200    <none>        8081/TCP                     5m51s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-repo-server-metrics              ClusterIP   10.43.117.195   <none>        8084/TCP                     5m51s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                           ClusterIP   10.43.14.201    <none>        80/TCP,443/TCP               5m51s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
cert-manager    cert-manager                            ClusterIP   10.43.70.148    <none>        9402/TCP                     2m53s   app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector                 ClusterIP   10.43.35.154    <none>        9402/TCP                     2m53s   app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook                    ClusterIP   10.43.143.96    <none>        443/TCP,9402/TCP             2m53s   app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
default         kubernetes                              ClusterIP   10.43.0.1       <none>        443/TCP                      30m     <none>
ingress-nginx   ingress-nginx-controller                ClusterIP   10.43.71.143    <none>        80/TCP,443/TCP               43s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
ingress-nginx   ingress-nginx-controller-admission      ClusterIP   10.43.62.248    <none>        443/TCP                      43s     app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     kube-dns                                ClusterIP   10.43.0.10      <none>        53/UDP,53/TCP,9153/TCP       30m     k8s-app=kube-dns
kube-system     metrics-server                          ClusterIP   10.43.151.137   <none>        443/TCP                      30m     k8s-app=metrics-server
kube-system     sealed-secrets-controller               ClusterIP   10.43.140.195   <none>        8080/TCP                     9m47s   name=sealed-secrets-controller
kube-system     sealed-secrets-controller-metrics       ClusterIP   10.43.188.252   <none>        8081/TCP                     9m48s   name=sealed-secrets-controller
```

### ingress (all namespaces)
```bash
+ kubectl get ingress -A -o wide
No resources found
```

### deploy (all namespaces)
```bash
+ kubectl get deploy -A -o wide
NAMESPACE       NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                                                                                     SELECTOR
argocd-dev      argocd-applicationset-controller   1/1     1            1           5m51s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dev      argocd-dex-server                  1/1     1            1           5m51s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                                                                                                 app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-dev      argocd-notifications-controller    1/1     1            1           5m51s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-dev      argocd-redis                       1/1     1            1           5m51s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine                                                                       app.kubernetes.io/name=argocd-redis
argocd-dev      argocd-repo-server                 2/2     2            2           5m51s   repo-server                 quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-dev      argocd-server                      2/2     2            2           5m51s   server                      quay.io/argoproj/argocd:v3.1.5                                                                                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
cert-manager    cert-manager                       1/1     1            1           2m53s   cert-manager-controller     quay.io/jetstack/cert-manager-controller:v1.16.1                                                                           app.kubernetes.io/component=controller,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cert-manager
cert-manager    cert-manager-cainjector            1/1     1            1           2m53s   cert-manager-cainjector     quay.io/jetstack/cert-manager-cainjector:v1.16.1                                                                           app.kubernetes.io/component=cainjector,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=cainjector
cert-manager    cert-manager-webhook               1/1     1            1           2m53s   cert-manager-webhook        quay.io/jetstack/cert-manager-webhook:v1.16.1                                                                              app.kubernetes.io/component=webhook,app.kubernetes.io/instance=cert-manager,app.kubernetes.io/name=webhook
ingress-nginx   ingress-nginx-controller           1/1     1            1           43s     controller                  registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a   app.kubernetes.io/component=controller,app.kubernetes.io/instance=ingress-nginx,app.kubernetes.io/name=ingress-nginx
kube-system     coredns                            1/1     1            1           30m     coredns                     rancher/mirrored-coredns-coredns:1.12.0                                                                                    k8s-app=kube-dns
kube-system     local-path-provisioner             1/1     1            1           30m     local-path-provisioner      rancher/local-path-provisioner:v0.0.30                                                                                     app=local-path-provisioner
kube-system     metrics-server                     1/1     1            1           30m     metrics-server              rancher/mirrored-metrics-server:v0.7.2                                                                                     k8s-app=metrics-server
kube-system     sealed-secrets-controller          1/1     1            1           9m48s   sealed-secrets-controller   docker.io/bitnami/sealed-secrets-controller:0.27.1                                                                         name=sealed-secrets-controller
```

### statefulset (all namespaces)
```bash
+ kubectl get statefulset -A -o wide
NAMESPACE    NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-dev   argocd-application-controller   1/1     5m51s   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### daemonset (all namespaces)
```bash
+ kubectl get daemonset -A -o wide
No resources found
```

### pvc (all namespaces)
```bash
+ kubectl get pvc -A -o wide
No resources found
```

### jobs (all namespaces)
```bash
+ kubectl get jobs -A -o wide
No resources found
```

### cronjobs (all namespaces)
```bash
+ kubectl get cronjobs -A -o wide
No resources found
```

### hpa (all namespaces)
```bash
+ kubectl get hpa -A -o wide
No resources found
```

### Resource usage (nodes)
```bash
+ kubectl top nodes
NAME                      CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
k3d-vyking-dev-agent-0    217m         7%       555Mi           6%          
k3d-vyking-dev-agent-1    200m         6%       660Mi           8%          
k3d-vyking-dev-server-0   339m         11%      1074Mi          13%         
```

### Resource usage (pods, all namespaces)
```bash
+ kubectl top pods -A
NAMESPACE       NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-dev      argocd-application-controller-0                     24m          107Mi           
argocd-dev      argocd-applicationset-controller-78f49df558-n59jl   4m           27Mi            
argocd-dev      argocd-dex-server-796678d5bc-prs8w                  1m           117Mi           
argocd-dev      argocd-notifications-controller-6d84bf8458-j78ws    1m           46Mi            
argocd-dev      argocd-redis-7c7fb7fc74-c47rg                       4m           10Mi            
argocd-dev      argocd-repo-server-d587f667c-jq7gm                  3m           47Mi            
argocd-dev      argocd-repo-server-d587f667c-q7lt9                  12m          58Mi            
argocd-dev      argocd-server-556b554c94-2lw88                      3m           53Mi            
argocd-dev      argocd-server-556b554c94-vw2qn                      3m           65Mi            
cert-manager    cert-manager-55c69bf5cf-lwv2x                       4m           71Mi            
cert-manager    cert-manager-cainjector-5765b5f544-2s7v8            5m           55Mi            
cert-manager    cert-manager-webhook-6b67444dc9-h4rll               1m           57Mi            
ingress-nginx   ingress-nginx-controller-599c5c76cc-wn7wm           5m           91Mi            
kube-system     coredns-ccb96694c-p4mqx                             6m           26Mi            
kube-system     local-path-provisioner-5cf85fd84d-njtgh             1m           8Mi             
kube-system     metrics-server-5985cbc9d7-8v9kw                     20m          26Mi            
kube-system     sealed-secrets-controller-79c4ffdbd7-cs4n9          2m           13Mi            
```

frontend-dev    70s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    70s         Normal    Requested                        certificate/frontend-cert-dev                            Created new CertificateRequest resource "frontend-cert-dev-1"
frontend-dev    70s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    70s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    70s         Normal    WaitingForApproval               certificaterequest/frontend-cert-dev-1                   Not signing CertificateRequest until it is Approved
frontend-dev    70s         Normal    Generated                        certificate/frontend-cert-dev                            Stored new private key in temporary Secret resource "frontend-cert-dev-mq4r9"
frontend-dev    70s         Normal    Issuing                          certificate/frontend-cert-dev                            Issuing certificate as Secret does not exist
frontend-dev    69s         Warning   BadConfig                        certificaterequest/frontend-cert-dev-1                   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
frontend-dev    69s         Normal    cert-manager.io                  certificaterequest/frontend-cert-dev-1                   Certificate request has been approved by cert-manager.io
frontend-dev    69s         Normal    CertificateIssued                certificaterequest/frontend-cert-dev-1                   Certificate fetched from issuer successfully
frontend-dev    69s         Normal    Issuing                          certificate/frontend-cert-dev                            The certificate has been successfully issued
ingress-nginx   59s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-create                       Created pod: ingress-nginx-admission-create-vlxkm
ingress-nginx   59s         Normal    Scheduled                        pod/ingress-nginx-admission-create-vlxkm                 Successfully assigned ingress-nginx/ingress-nginx-admission-create-vlxkm to k3d-vyking-dev-agent-1
ingress-nginx   57s         Normal    Pulling                          pod/ingress-nginx-admission-create-vlxkm                 Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   55s         Normal    Created                          pod/ingress-nginx-admission-create-vlxkm                 Created container create
ingress-nginx   55s         Normal    Pulled                           pod/ingress-nginx-admission-create-vlxkm                 Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 2.448s (2.448s including waiting). Image size: 56758085 bytes.
ingress-nginx   54s         Normal    Started                          pod/ingress-nginx-admission-create-vlxkm                 Started container create
ingress-nginx   50s         Normal    Completed                        job/ingress-nginx-admission-create                       Job completed
ingress-nginx   48s         Normal    Scheduled                        pod/ingress-nginx-controller-599c5c76cc-wn7wm            Successfully assigned ingress-nginx/ingress-nginx-controller-599c5c76cc-wn7wm to k3d-vyking-dev-agent-1
ingress-nginx   48s         Normal    SuccessfulCreate                 replicaset/ingress-nginx-controller-599c5c76cc           Created pod: ingress-nginx-controller-599c5c76cc-wn7wm
ingress-nginx   48s         Normal    ScalingReplicaSet                deployment/ingress-nginx-controller                      Scaled up replica set ingress-nginx-controller-599c5c76cc to 1
ingress-nginx   46s         Normal    Pulling                          pod/ingress-nginx-controller-599c5c76cc-wn7wm            Pulling image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a"
ingress-nginx   43s         Normal    Pulled                           pod/ingress-nginx-controller-599c5c76cc-wn7wm            Successfully pulled image "registry.k8s.io/ingress-nginx/controller:v1.11.1@sha256:e6439a12b52076965928e83b7b56aae6731231677b01e81818bce7fa5c60161a" in 2.885s (2.885s including waiting). Image size: 288689258 bytes.
ingress-nginx   43s         Normal    Created                          pod/ingress-nginx-controller-599c5c76cc-wn7wm            Created container controller
ingress-nginx   43s         Normal    Started                          pod/ingress-nginx-controller-599c5c76cc-wn7wm            Started container controller
ingress-nginx   40s         Normal    CREATE                           configmap/ingress-nginx-controller                       ConfigMap ingress-nginx/ingress-nginx-controller
ingress-nginx   39s         Normal    RELOAD                           pod/ingress-nginx-controller-599c5c76cc-wn7wm            NGINX reload triggered due to a change in configuration
ingress-nginx   22s         Normal    Scheduled                        pod/ingress-nginx-admission-patch-qkgsx                  Successfully assigned ingress-nginx/ingress-nginx-admission-patch-qkgsx to k3d-vyking-dev-server-0
ingress-nginx   23s         Normal    SuccessfulCreate                 job/ingress-nginx-admission-patch                        Created pod: ingress-nginx-admission-patch-qkgsx
ingress-nginx   21s         Normal    Pulling                          pod/ingress-nginx-admission-patch-qkgsx                  Pulling image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366"
ingress-nginx   18s         Normal    Created                          pod/ingress-nginx-admission-patch-qkgsx                  Created container patch
ingress-nginx   18s         Normal    Pulled                           pod/ingress-nginx-admission-patch-qkgsx                  Successfully pulled image "registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.1@sha256:36d05b4077fb8e3d13663702fa337f124675ba8667cbd949c03a8e8ea6fa4366" in 2.784s (2.785s including waiting). Image size: 56758085 bytes.
ingress-nginx   18s         Normal    Started                          pod/ingress-nginx-admission-patch-qkgsx                  Started container patch
ingress-nginx   13s         Normal    Completed                        job/ingress-nginx-admission-patch                        Job completed
argocd-dev      12s         Normal    ResourceUpdated                  application/backend                                      Updated sync status:  -> Unknown
argocd-dev      12s         Normal    ResourceUpdated                  application/backend                                      Updated health status:  -> Healthy
argocd-dev      11s         Normal    ResourceUpdated                  application/frontend                                     Updated health status:  -> Healthy
argocd-dev      11s         Normal    ResourceUpdated                  application/frontend                                     Updated sync status:  -> Unknown
```

## 🚦 Argo CD (`argocd-dev`)
### Pods
```bash
+ kubectl get pods -n argocd-dev -o wide
NAME                                                READY   STATUS    RESTARTS   AGE     IP           NODE                      NOMINATED NODE   READINESS GATES
argocd-application-controller-0                     1/1     Running   0          5m55s   10.42.0.10   k3d-vyking-dev-agent-0    <none>           <none>
argocd-applicationset-controller-78f49df558-n59jl   1/1     Running   0          5m57s   10.42.1.8    k3d-vyking-dev-agent-1    <none>           <none>
argocd-dex-server-796678d5bc-prs8w                  1/1     Running   0          5m58s   10.42.1.6    k3d-vyking-dev-agent-1    <none>           <none>
argocd-notifications-controller-6d84bf8458-j78ws    1/1     Running   0          5m57s   10.42.0.7    k3d-vyking-dev-agent-0    <none>           <none>
argocd-redis-7c7fb7fc74-c47rg                       1/1     Running   0          5m57s   10.42.0.8    k3d-vyking-dev-agent-0    <none>           <none>
argocd-repo-server-d587f667c-jq7gm                  1/1     Running   0          5m57s   10.42.2.5    k3d-vyking-dev-server-0   <none>           <none>
argocd-repo-server-d587f667c-q7lt9                  1/1     Running   0          5m57s   10.42.0.9    k3d-vyking-dev-agent-0    <none>           <none>
argocd-server-556b554c94-2lw88                      1/1     Running   0          5m57s   10.42.1.7    k3d-vyking-dev-agent-1    <none>           <none>
argocd-server-556b554c94-vw2qn                      1/1     Running   0          5m57s   10.42.2.6    k3d-vyking-dev-server-0   <none>           <none>
```

### Deploy
```bash
+ kubectl get deploy -n argocd-dev -o wide
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE     CONTAINERS                  IMAGES                                                 SELECTOR
argocd-applicationset-controller   1/1     1            1           5m58s   applicationset-controller   quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                  1/1     1            1           5m58s   dex-server                  ghcr.io/dexidp/dex:v2.44.0                             app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-notifications-controller    1/1     1            1           5m58s   notifications-controller    quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-notifications-controller
argocd-redis                       1/1     1            1           5m58s   redis                       ecr-public.aws.com/docker/library/redis:7.2.8-alpine   app.kubernetes.io/name=argocd-redis
argocd-repo-server                 2/2     2            2           5m58s   repo-server                 quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                      2/2     2            2           5m58s   server                      quay.io/argoproj/argocd:v3.1.5                         app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### Statefulset
```bash
+ kubectl get statefulset -n argocd-dev -o wide
NAME                            READY   AGE     CONTAINERS               IMAGES
argocd-application-controller   1/1     5m58s   application-controller   quay.io/argoproj/argocd:v3.1.5
```

### Daemonset
```bash
+ kubectl get daemonset -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Svc
```bash
+ kubectl get svc -n argocd-dev -o wide
NAME                                    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE    SELECTOR
argocd-application-controller-metrics   ClusterIP   10.43.150.191   <none>        8082/TCP                     6m1s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-application-controller
argocd-applicationset-controller        ClusterIP   10.43.17.90     <none>        7000/TCP                     6m1s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-applicationset-controller
argocd-dex-server                       ClusterIP   10.43.226.215   <none>        5556/TCP,5557/TCP,5558/TCP   6m1s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-dex-server
argocd-redis                            ClusterIP   10.43.129.0     <none>        6379/TCP                     6m1s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-redis-metrics                    ClusterIP   None            <none>        9121/TCP                     6m1s   app.kubernetes.io/component=redis,app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-redis
argocd-repo-server                      ClusterIP   10.43.58.200    <none>        8081/TCP                     6m1s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-repo-server-metrics              ClusterIP   10.43.117.195   <none>        8084/TCP                     6m1s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-repo-server
argocd-server                           ClusterIP   10.43.14.201    <none>        80/TCP,443/TCP               6m1s   app.kubernetes.io/instance=argocd,app.kubernetes.io/name=argocd-server
```

### Ingress
```bash
+ kubectl get ingress -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Configmap
```bash
+ kubectl get configmap -n argocd-dev -o wide
NAME                            DATA   AGE
argocd-cm                       18     6m4s
argocd-cmd-params-cm            41     6m4s
argocd-gpg-keys-cm              0      6m4s
argocd-notifications-cm         1      6m4s
argocd-rbac-cm                  4      6m4s
argocd-redis-health-configmap   2      6m4s
argocd-ssh-known-hosts-cm       1      6m4s
argocd-tls-certs-cm             0      6m4s
kube-root-ca.crt                1      6m21s
```

### Secret
```bash
+ kubectl get secret -n argocd-dev -o wide
NAME                           TYPE                 DATA   AGE
argocd-initial-admin-secret    Opaque               1      5m41s
argocd-notifications-secret    Opaque               0      6m6s
argocd-redis                   Opaque               1      6m9s
argocd-secret                  Opaque               3      6m6s
repo-vyking-git                Opaque               2      5m3s
sh.helm.release.v1.argocd.v1   helm.sh/release.v1   1      6m21s
```

### Hpa
```bash
+ kubectl get hpa -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Jobs
```bash
+ kubectl get jobs -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Cronjobs
```bash
+ kubectl get cronjobs -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

### Pvc
```bash
+ kubectl get pvc -n argocd-dev -o wide
No resources found in argocd-dev namespace.
```

5m42s       Warning   Unhealthy           pod/argocd-server-556b554c94-2lw88                       Readiness probe failed: Get "http://10.42.1.7:8080/healthz": dial tcp 10.42.1.7:8080: connect: connection refused
5m35s       Normal    Pulled              pod/argocd-dex-server-796678d5bc-prs8w                   Container image "ghcr.io/dexidp/dex:v2.44.0" already present on machine
5m34s       Normal    Created             pod/argocd-dex-server-796678d5bc-prs8w                   Created container dex-server
5m32s       Normal    Started             pod/argocd-dex-server-796678d5bc-prs8w                   Started container dex-server
5m30s       Normal    Created             pod/argocd-repo-server-d587f667c-q7lt9                   Created container repo-server
5m30s       Normal    Pulled              pod/argocd-repo-server-d587f667c-q7lt9                   Container image "quay.io/argoproj/argocd:v3.1.5" already present on machine
5m29s       Normal    Pulled              pod/argocd-repo-server-d587f667c-jq7gm                   Container image "quay.io/argoproj/argocd:v3.1.5" already present on machine
5m28s       Normal    Created             pod/argocd-repo-server-d587f667c-jq7gm                   Created container repo-server
5m28s       Normal    Started             pod/argocd-repo-server-d587f667c-q7lt9                   Started container repo-server
5m27s       Normal    Started             pod/argocd-repo-server-d587f667c-jq7gm                   Started container repo-server
2m47s       Normal    ResourceUpdated     application/mysql-sealed-secrets                         Updated sync status:  -> Unknown
2m47s       Normal    ResourceUpdated     application/mysql-sealed-secrets                         Updated health status:  -> Healthy
2m46s       Normal    ResourceUpdated     application/mysql                                        Updated health status:  -> Healthy
2m46s       Normal    ResourceUpdated     application/mysql                                        Updated sync status:  -> Unknown
22s         Normal    ResourceUpdated     application/backend                                      Updated sync status:  -> Unknown
22s         Normal    ResourceUpdated     application/backend                                      Updated health status:  -> Healthy
21s         Normal    ResourceUpdated     application/frontend                                     Updated health status:  -> Healthy
21s         Normal    ResourceUpdated     application/frontend                                     Updated sync status:  -> Unknown
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n argocd-dev
NAME                                                CPU(cores)   MEMORY(bytes)   
argocd-application-controller-0                     24m          107Mi           
argocd-applicationset-controller-78f49df558-n59jl   4m           27Mi            
argocd-dex-server-796678d5bc-prs8w                  1m           117Mi           
argocd-notifications-controller-6d84bf8458-j78ws    1m           46Mi            
argocd-redis-7c7fb7fc74-c47rg                       4m           10Mi            
argocd-repo-server-d587f667c-jq7gm                  3m           47Mi            
argocd-repo-server-d587f667c-q7lt9                  12m          58Mi            
argocd-server-556b554c94-2lw88                      3m           53Mi            
argocd-server-556b554c94-vw2qn                      3m           65Mi            
```

## 🎨 Frontend (`frontend-dev`)
### Pods
```bash
+ kubectl get pods -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Deploy
```bash
+ kubectl get deploy -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Statefulset
```bash
+ kubectl get statefulset -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Daemonset
```bash
+ kubectl get daemonset -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Svc
```bash
+ kubectl get svc -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Ingress
```bash
+ kubectl get ingress -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Configmap
```bash
+ kubectl get configmap -n frontend-dev -o wide
NAME               DATA   AGE
kube-root-ca.crt   1      96s
```

### Secret
```bash
+ kubectl get secret -n frontend-dev -o wide
NAME               TYPE                DATA   AGE
frontend-tls-dev   kubernetes.io/tls   3      86s
```

### Hpa
```bash
+ kubectl get hpa -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Jobs
```bash
+ kubectl get jobs -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Cronjobs
```bash
+ kubectl get cronjobs -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Pvc
```bash
+ kubectl get pvc -n frontend-dev -o wide
No resources found in frontend-dev namespace.
```

### Recent Events
```bash
+ kubectl get events -n frontend-dev --sort-by=.metadata.creationTimestamp
LAST SEEN   TYPE      REASON               OBJECT                                   MESSAGE
89s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
89s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
89s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
89s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
89s         Normal    WaitingForApproval   certificaterequest/frontend-cert-dev-1   Not signing CertificateRequest until it is Approved
89s         Normal    Issuing              certificate/frontend-cert-dev            Issuing certificate as Secret does not exist
89s         Normal    Generated            certificate/frontend-cert-dev            Stored new private key in temporary Secret resource "frontend-cert-dev-mq4r9"
89s         Normal    Requested            certificate/frontend-cert-dev            Created new CertificateRequest resource "frontend-cert-dev-1"
88s         Normal    cert-manager.io      certificaterequest/frontend-cert-dev-1   Certificate request has been approved by cert-manager.io
88s         Warning   BadConfig            certificaterequest/frontend-cert-dev-1   Certificate will be issued with an empty Issuer DN, which contravenes RFC 5280 and could break some strict clients
88s         Normal    CertificateIssued    certificaterequest/frontend-cert-dev-1   Certificate fetched from issuer successfully
88s         Normal    Issuing              certificate/frontend-cert-dev            The certificate has been successfully issued
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

### Deploy
```bash
+ kubectl get deploy -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Statefulset
```bash
+ kubectl get statefulset -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Daemonset
```bash
+ kubectl get daemonset -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Svc
```bash
+ kubectl get svc -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Ingress
```bash
+ kubectl get ingress -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Configmap
```bash
+ kubectl get configmap -n backend-dev -o wide
NAME               DATA   AGE
kube-root-ca.crt   1      102s
```

### Secret
```bash
+ kubectl get secret -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Hpa
```bash
+ kubectl get hpa -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Jobs
```bash
+ kubectl get jobs -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Cronjobs
```bash
+ kubectl get cronjobs -n backend-dev -o wide
No resources found in backend-dev namespace.
```

### Pvc
```bash
+ kubectl get pvc -n backend-dev -o wide
No resources found in backend-dev namespace.
```

No resources found in backend-dev namespace.
### Recent Events
```bash
+ kubectl get events -n backend-dev --sort-by=.metadata.creationTimestamp
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

### Deploy
```bash
+ kubectl get deploy -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Statefulset
```bash
+ kubectl get statefulset -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Daemonset
```bash
+ kubectl get daemonset -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Svc
```bash
+ kubectl get svc -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Ingress
```bash
+ kubectl get ingress -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Configmap
```bash
+ kubectl get configmap -n mysql-dev -o wide
NAME               DATA   AGE
kube-root-ca.crt   1      4m15s
```

### Secret
```bash
+ kubectl get secret -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Hpa
```bash
+ kubectl get hpa -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Jobs
```bash
+ kubectl get jobs -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Cronjobs
```bash
+ kubectl get cronjobs -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

### Pvc
```bash
+ kubectl get pvc -n mysql-dev -o wide
No resources found in mysql-dev namespace.
```

No resources found in mysql-dev namespace.
### Recent Events
```bash
+ kubectl get events -n mysql-dev --sort-by=.metadata.creationTimestamp
```

### Resource Usage (pods)
```bash
+ kubectl top pods -n mysql-dev
No resources found in mysql-dev namespace.
```

✅ Tests complete.
