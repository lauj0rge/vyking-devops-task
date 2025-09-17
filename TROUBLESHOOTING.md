Tú dijiste:
can you give it to me as a code snippet
ChatGPT Plus

Sure thing 🚀 — here’s the TROUBLESHOOTING.md as a ready-to-use code snippet:

# 🛠️ Troubleshooting Guide for Vyking DevOps Task

This guide helps debug common issues in your **Kubernetes + ArgoCD + Helm + MySQL + Frontend/Backend** stack.

---

## ⚡ General Workflow

1. **Check ArgoCD sync**
   ```bash
   kubectl get applications -n argocd-dev
   kubectl describe application frontend -n argocd-dev


🔴 OutOfSync → run argocd app sync frontend -n argocd-dev.

Check pod health

kubectl get pods -A -o wide
kubectl describe pod <pod> -n <namespace>
kubectl logs <pod> -n <namespace>

🎨 Frontend Issues
1. Pod keeps restarting
   kubectl logs deployment/frontend-frontend -n frontend-dev


❌ nginx: [emerg] → config error → check frontend/templates/configmap.yaml.

❌ CrashLoopBackOff → wrong image → confirm with:

kubectl get deploy frontend-frontend -n frontend-dev -o yaml | grep image:

2. Ingress not accessible
   kubectl get ingress -n frontend-dev
   kubectl describe ingress frontend-frontend -n frontend-dev


Pending ingress? → kubectl get svc -n ingress-nginx

If EXTERNAL-IP = <pending> in local k3d → use NodePort and port-forward:

kubectl port-forward -n ingress-nginx svc/ingress-nginx-controller 8443:443


Then access:

https://frontend-dev.local:8443

3. Wrong backend URL

Check app.js → must point to /api, not hardcoded IPs.

Verify ingress rewrite rules.

⚙️ Backend Issues
1. Out of Sync in ArgoCD

Usually means Helm values mismatch.

Check error:

kubectl get events -n backend-dev --sort-by=.lastTimestamp | tail -20

2. Pod not connecting to MySQL
   kubectl logs deployment/backend-backend -n backend-dev


Error ECONNREFUSED mysql:3306 → check:

kubectl get svc -n mysql-dev


Ensure backend values.yaml points to mysql.mysql-dev.svc.cluster.local.

🛢️ MySQL Issues
1. CrashLoopBackOff
   kubectl logs statefulset/mysql -n mysql-dev


Wrong root password? → regenerate sealed secrets.

PVC stuck in Pending? → check storage class:

kubectl get pvc -n mysql-dev

2. Backups failing
   kubectl logs job/mysql-backup-XXXX -n mysql-dev


❌ Can't connect to MySQL → check secret + service endpoint.

🚦 ArgoCD Issues
1. Can’t access UI

Forward the service:

kubectl port-forward svc/argocd-server -n argocd-dev 8080:443


Then open:

http://localhost:8080

2. Get password
   kubectl -n argocd-dev get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

📈 HPA Issues
1. HPA not scaling
   kubectl get hpa -A
   kubectl describe hpa frontend-frontend -n frontend-dev


❌ missing metrics → install metrics-server:

kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

🔍 Debug Commands Cheat Sheet
kubectl get all -n <ns>          
kubectl describe pod <pod> -n <ns>
kubectl logs <pod> -n <ns> --tail=50
kubectl rollout status deploy/<deploy> -n <ns>
kubectl get events -A --sort-by=.lastTimestamp | tail -20




---

