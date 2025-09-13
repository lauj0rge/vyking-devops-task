#!/bin/bash
set -e

ENVIRONMENT="${1:-dev}"
CLUSTER_NAME="vyking-${ENVIRONMENT}"
ARGO_NS="argocd-${ENVIRONMENT}"

echo "=== 📊 Status for environment: $ENVIRONMENT ==="

# 1. Cluster info
echo
echo "==> Cluster info"
kubectl cluster-info || true

echo
echo "==> Nodes"
kubectl get nodes -o wide

# 2. Namespaces
echo
echo "==> Namespaces"
kubectl get ns

# 3. Pods
echo
echo "==> Pods (all namespaces)"
kubectl get pods -A -o wide

# 4. Services
echo
echo "==> Services (all namespaces)"
kubectl get svc -A -o wide

# 5. Ingresses
echo
echo "==> Ingresses (all namespaces)"
kubectl get ingress -A || echo "No ingresses defined."

# 6. Argo CD Applications
echo
echo "==> Argo CD Applications"
kubectl get applications -n "$ARGO_NS" || echo "No Argo CD applications yet."

# 7. Argo CD UI link
if [[ "$ENVIRONMENT" == "dev" ]]; then
  LOCAL_PORT=8080
elif [[ "$ENVIRONMENT" == "prod" ]]; then
  LOCAL_PORT=9090
else
  LOCAL_PORT=8080
fi
echo
echo "==> Argo CD UI should be available at: http://localhost:${LOCAL_PORT}"

# 8. Deployment rollout status
echo
echo "==> Checking deployment rollout status"
for ns in $(kubectl get ns -o jsonpath='{.items[*].metadata.name}'); do
  for dep in $(kubectl get deploy -n $ns -o jsonpath='{.items[*].metadata.name}' 2>/dev/null || true); do
    echo "-- $ns/$dep"
    kubectl rollout status deploy/$dep -n $ns --timeout=10s || echo "⚠️  $ns/$dep not ready"
  done
done

# 9. Horizontal Pod Autoscalers
echo
echo "==> HPAs"
kubectl get hpa -A || echo "No HPAs defined."

# 10. Resource usage (if metrics-server is available)
echo
echo "==> Resource usage (nodes)"
if kubectl top nodes >/dev/null 2>&1; then
  kubectl top nodes
else
  echo "⚠️ metrics-server not reporting node metrics"
fi

echo
echo "==> Resource usage (pods)"
if kubectl top pods -A >/dev/null 2>&1; then
  kubectl top pods -A
else
  echo "⚠️ metrics-server not reporting pod metrics"
fi

# 11. Connection hints
echo
echo "==> Connection tests"

# MySQL
if kubectl get svc -n "mysql-${ENVIRONMENT}" | grep -q mysql; then
  MYSQL_SVC=$(kubectl get svc -n "mysql-${ENVIRONMENT}" -o jsonpath='{.items[0].metadata.name}')
  MYSQL_PORT=$(kubectl get svc -n "mysql-${ENVIRONMENT}" $MYSQL_SVC -o jsonpath='{.spec.ports[0].port}')
  echo "MySQL service: $MYSQL_SVC (port $MYSQL_PORT, namespace mysql-${ENVIRONMENT})"
  echo "👉 Test with: kubectl run mysql-client --rm -it --image=bitnami/mysql:8.0 -n mysql-${ENVIRONMENT} -- bash"
else
  echo "No MySQL service found in mysql-${ENVIRONMENT}"
fi

# Frontend
if kubectl get svc -n "frontend-${ENVIRONMENT}" >/dev/null 2>&1; then
  echo
  echo "Frontend services:"
  kubectl get svc -n "frontend-${ENVIRONMENT}" -o wide
fi

# Backend
if kubectl get svc -n "backend-${ENVIRONMENT}" >/dev/null 2>&1; then
  echo
  echo "Backend services:"
  kubectl get svc -n "backend-${ENVIRONMENT}" -o wide
fi

echo
echo "✅ Status check complete"
