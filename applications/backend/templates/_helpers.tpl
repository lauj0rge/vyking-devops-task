{{/*
Common labels
*/}}
{{- define "vyking.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/part-of: vyking-app
app.kubernetes.io/environment: {{ .Values.global.environment | default "dev" }}
{{- end }}
