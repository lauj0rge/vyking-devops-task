#!/usr/bin/env bash
set -euo pipefail

ENVIRONMENT=${1:?Usage: $0 <dev|prod>}

MYSQL_SECRET_NAME="mysql-${ENVIRONMENT}-secret"
MYSQL_NS="mysql-${ENVIRONMENT}"

echo "==> Resolving MySQL connection details..."

MYSQL_USER=$(kubectl get secret "$MYSQL_SECRET_NAME" -n "$MYSQL_NS" -o jsonpath="{.data.username}" | base64 -d)
MYSQL_PASS=$(kubectl get secret "$MYSQL_SECRET_NAME" -n "$MYSQL_NS" -o jsonpath="{.data.password}" | base64 -d)
MYSQL_DB=$(kubectl get secret "$MYSQL_SECRET_NAME" -n "$MYSQL_NS" -o jsonpath="{.data.database}" | base64 -d)

MYSQL_HOST="mysql-${ENVIRONMENT}.${MYSQL_NS}.svc.cluster.local"
MYSQL_PORT=3306

echo "✅ MySQL connection details resolved:"
echo "    Host: $MYSQL_HOST"
echo "    User: $MYSQL_USER"
echo "    Database: $MYSQL_DB"
echo ""
echo "==> To connect, run:"
echo "kubectl run -it --rm mysql-client --image=mysql:8.0 --restart=Never -- \\"
echo "  mysql -h $MYSQL_HOST -P $MYSQL_PORT -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB"
