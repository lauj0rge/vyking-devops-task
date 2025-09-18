#!/usr/bin/env bash
set -euo pipefail

if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi
ENVIRONMENT=${1:?Usage: $0 <dev|prod>}

# -------------------------
# 3. Generate SealedSecrets
# -------------------------
echo "==> Generating sealed secrets for $ENVIRONMENT"

mkdir -p infrastructure/sealed

MYSQL_SECRET_NAME="mysql-${ENVIRONMENT}-secret"
MYSQL_CRED_NAME="mysql-credentials-${ENVIRONMENT}"

case "$ENVIRONMENT" in
  dev)
    kubectl create secret generic ${MYSQL_CRED_NAME} \
      -n backend-${ENVIRONMENT} \
      --from-literal=username=$DEV_DB_USER \
      --from-literal=password=$DEV_DB_PASS \
      --from-literal=database=$DEV_DB_NAME \
      --from-literal=host=mysql.mysql-${ENVIRONMENT}.svc.cluster.local \
      --from-literal=port=3306 \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/${MYSQL_CRED_NAME}.yaml

    kubectl create secret generic ${MYSQL_SECRET_NAME} \
      -n mysql-${ENVIRONMENT} \
      --from-literal=rootPassword=$DEV_DB_ROOT_PASS \
      --from-literal=username=$DEV_DB_USER \
      --from-literal=password=$DEV_DB_PASS \
      --from-literal=database=$DEV_DB_NAME \
      --from-literal=host=mysql.mysql-${ENVIRONMENT}.svc.cluster.local \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/${MYSQL_SECRET_NAME}.yaml
    ;;
  prod)
    kubectl create secret generic ${MYSQL_CRED_NAME} \
      -n backend-${ENVIRONMENT} \
      --from-literal=username=$PROD_DB_USER \
      --from-literal=password=$PROD_DB_PASS \
      --from-literal=database=$PROD_DB_NAME \
      --from-literal=host=mysql.mysql-${ENVIRONMENT}.svc.cluster.local \
      --from-literal=port=3306 \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/${MYSQL_CRED_NAME}.yaml

    kubectl create secret generic ${MYSQL_SECRET_NAME} \
      -n mysql-${ENVIRONMENT} \
      --from-literal=rootPassword=$PROD_DB_ROOT_PASS \
      --from-literal=username=$PROD_DB_USER \
      --from-literal=password=$PROD_DB_PASS \
      --from-literal=database=$PROD_DB_NAME \
      --from-literal=host=mysql.mysql-${ENVIRONMENT}.svc.cluster.local \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/${MYSQL_SECRET_NAME}.yaml
    ;;
esac

echo "✅ SealedSecrets generated for $ENVIRONMENT"

# -------------------------
# 3.1. Secure Git commit & push of sealed secrets
# -------------------------
echo "==> Securely committing sealed secrets to Git"

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

# Safety check: ensure we're in a git repository
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo "⚠️  Not in a git repository. Skipping git operations."
    cd - > /dev/null
else
    # Configure git safely (only if not already configured)
    if [ -z "$(git config user.name)" ]; then
        git config --local user.name "DevOps Bot"
    fi
    if [ -z "$(git config user.email)" ]; then
        git config --local user.email "devops-bot@vyking.io"
    fi

    # Add only the specific sealed secret files
    SEALED_FILES=(
        "infrastructure/sealed/${MYSQL_CRED_NAME}.yaml"
        "infrastructure/sealed/${MYSQL_SECRET_NAME}.yaml"
    )

    FILES_TO_ADD=()
    for file in "${SEALED_FILES[@]}"; do
        if [[ -f "$file" ]]; then
            FILES_TO_ADD+=("$file")
        fi
    done

    if [ ${#FILES_TO_ADD[@]} -eq 0 ]; then
        echo "✅ No sealed secret files to commit"
    else
        # Add files to git
        git add "${FILES_TO_ADD[@]}"

        # Check if there are changes to commit
        if git diff --staged --quiet; then
            echo "✅ No changes in sealed secrets to commit"
        else
            # Create commit with secure message (no sensitive data)
            COMMIT_MSG="chore: update sealed secrets for ${ENVIRONMENT} environment [auto-generated $(date +%Y%m%d-%H%M%S)]"

            if git commit -m "$COMMIT_MSG" --no-verify; then
                echo "✅ Sealed secrets committed locally"

                # Check if we can push (dry-run first)
                if git push --dry-run origin HEAD &> /dev/null; then
                    # Actual push with error handling
                    if git push origin HEAD; then
                        echo "✅ Sealed secrets pushed to remote repository"
                    else
                        echo "⚠️  Failed to push to remote. Error code: $?"
                        echo "The sealed secrets have been committed locally but not pushed to remote."
                        echo "Please push manually with: git push origin HEAD"
                    fi
                else
                    echo "⚠️  No push access or remote not configured. Committed locally only."
                    echo "To configure remote: git remote add origin <your-repo-url>"
                    echo "To push manually: git push -u origin HEAD"
                fi
            else
                echo "❌ Failed to commit sealed secrets. Error code: $?"
                echo "Continuing without git commit..."
            fi
        fi
    fi

    cd - > /dev/null
fi