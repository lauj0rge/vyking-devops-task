apiVersion: v1
kind: ConfigMap
metadata:
  name: mysql-init
  namespace: {{ .Release.Namespace }}
data:
  mysql-init.sql: |
    CREATE TABLE IF NOT EXISTS todos (
      id INT AUTO_INCREMENT PRIMARY KEY,
      task VARCHAR(255) NOT NULL
    );
