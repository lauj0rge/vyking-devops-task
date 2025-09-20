{{- define "vyking.environment" -}}
{{- default "dev" .Values.global.environment -}}
{{- end -}}

{{- define "vyking.frontend.fullname" -}}
{{- printf "%s-frontend" .Release.Name -}}
{{- end -}}

{{- define "vyking.backend.fullname" -}}
{{- printf "%s-backend" .Release.Name -}}
{{- end -}}

{{- define "vyking.componentLabels" -}}
{{- $root := .root -}}
{{- $component := .component -}}
{{- $values := .values -}}
{{- $base := dict "app.kubernetes.io/name" $component "app.kubernetes.io/component" $component "app.kubernetes.io/instance" $root.Release.Name "app.kubernetes.io/part-of" "vyking-app" "app.kubernetes.io/managed-by" "Helm" "app.kubernetes.io/environment" (include "vyking.environment" $root) -}}
{{- $extra := default (dict) $values.labels -}}
{{- toYaml (merge $base $extra) -}}
{{- end -}}

{{- define "vyking.componentSelectorLabels" -}}
{{- $root := .root -}}
{{- $component := .component -}}
{{- $values := .values -}}
{{- $base := dict "app.kubernetes.io/name" $component "app.kubernetes.io/instance" $root.Release.Name -}}
{{- $extra := default (dict) $values.selectorLabels -}}
{{- toYaml (merge $base $extra) -}}
{{- end -}}

{{- define "vyking.componentServiceName" -}}
{{- $root := .root -}}
{{- $component := .component | default "" -}}
{{- if eq $component "frontend" -}}
{{ include "vyking.frontend.fullname" $root }}
{{- else if eq $component "backend" -}}
{{ include "vyking.backend.fullname" $root }}
{{- else -}}
{{- $component -}}
{{- end -}}
{{- end -}}

{{- define "vyking.componentServicePort" -}}
{{- $root := .root -}}
{{- $component := .component | default "" -}}
{{- if eq $component "frontend" -}}
{{- $root.Values.frontend.service.port -}}
{{- else if eq $component "backend" -}}
{{- $root.Values.backend.service.port -}}
{{- else -}}
{{- 0 -}}
{{- end -}}
{{- end -}}