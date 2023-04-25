{{/*
Expand the name of the chart.
*/}}
{{- define "qi-apps.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "qi-apps.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}


{{/*
Fullname of vxApi
*/}}
{{- define "qi-apps.vxApi.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.vxApi.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.vxApi.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "qi-apps.labels" -}}
helm.sh/chart: {{ include "qi-apps.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "qi-apps.vxApi.selectorLabels" -}}
app.kubernetes.io/name: {{ .Values.vxApi.name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Service Acct Names
*/}}
{{- define "qi-apps.vxApi.serviceAccountName" -}}
{{- if .Values.vxApi.serviceAccount.create }}
{{- default (include "qi-apps.vxApi.fullname" .) .Values.vxApi.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.vxApi.serviceAccount.name }}
{{- end }}
{{- end }}
