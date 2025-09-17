🛠️ Troubleshooting Guide for Vyking DevOps Task
This guide helps debug common issues in your Kubernetes + ArgoCD + Helm + MySQL + Frontend/Backend stack.

⚡ General Workflow
Check ArgoCD Sync Status
bash
kubectl get applications -n argocd-dev
kubectl describe application frontend -n argocd-dev
🔴 OutOfSync → Run: argocd app sync frontend -n argocd-dev

Check Pod Health
bash
kubectl get pods -A -o wide
kubectl describe pod <pod> -n <namespace>
kubectl logs <pod> -n <namespace>
🎨 Frontend Issues
1. Pod Keeps Restarting
   bash
   kubectl logs deployment/frontend-frontend -n frontend-dev
   ❌ nginx: [emerg] → Config error → Check frontend/templates/configmap.yaml

❌ CrashLoopBackOff → Wrong image → Confirm with:

bash
kubectl get deploy frontend-frontend -n frontend-dev -o yaml | grep image:
2. Ingress Not Accessible
   bash
   kubectl get ingress -n frontend-dev
   kubectl describe ingress frontend-frontend -n frontend-dev
   Pending ingress? → Check ingress controller:

bash
kubectl get svc -n ingress-nginx
If EXTERNAL-IP = <pending> in local k3d → Use NodePort and port-forward:

bash
kubectl port-forward -n ingress-nginx svc/ingress-nginx-controller 8443:443
Then access: https://frontend-dev.local:8443

3. Wrong Backend URL
   Check app.js → Must point to /api, not hardcoded IPs. Verify ingress rewrite rules.

⚙️ Backend Issues
1. Out of Sync in ArgoCD
   Usually means Helm values mismatch. Check error:

bash
kubectl get events -n backend-dev --sort-by=.lastTimestamp | tail -20
2. Pod Not Connecting to MySQL
   bash
   kubectl logs deployment/backend-backend -n backend-dev
   Error ECONNREFUSED mysql:3306 → Check:

bash
kubectl get svc -n mysql-dev
Ensure backend values.yaml points to mysql.mysql-dev.svc.cluster.local

🛢️ MySQL Issues
1. CrashLoopBackOff
   bash
   kubectl logs statefulset/mysql -n mysql-dev
   Wrong root password? → Regenerate sealed secrets.

PVC stuck in Pending? → Check storage class:

bash
kubectl get pvc -n mysql-dev
2. Backups Failing
   bash
   kubectl logs job/mysql-backup-XXXX -n mysql-dev
   ❌ Can't connect to MySQL → Check secret + service endpoint.

🚦 ArgoCD Issues
1. Can't Access UI
   Forward the service:

bash
kubectl port-forward svc/argocd-server -n argocd-dev 8080:443
Then open: http://localhost:8080

2. Get Password
   bash
   kubectl -n argocd-dev get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
   📈 HPA Issues
1. HPA Not Scaling
   bash
   kubectl get hpa -A
   kubectl describe hpa frontend-frontend -n frontend-dev
   ❌ Missing metrics → Install metrics-server:

bash
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
🔍 Debug Commands Cheat Sheet
bash
kubectl get all -n <ns>
kubectl describe pod <pod> -n <ns>
kubectl logs <pod> -n <ns> --tail=50
kubectl rollout status deploy/<deploy> -n <ns>
kubectl get events -A --sort-by=.lastTimestamp | tail -20