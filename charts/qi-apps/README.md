# qi-apps

### version: 0.3.1<!-- x-release-please-version -->

![AppVersion: 1.16.0](https://img.shields.io/badge/AppVersion-1.16.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| fullnameOverride | string | `""` |  |
| nameOverride | string | `""` |  |
| secrets.pullSecrets.github.auth | string | `nil` |  |
| secrets.vxapi.enabled | bool | `false` |  |
| secrets.vxapi.entries | list | `[]` |  |
| vxApi.affinity | object | `{}` |  |
| vxApi.autoscaling.enabled | bool | `false` |  |
| vxApi.autoscaling.maxReplicas | int | `100` |  |
| vxApi.autoscaling.minReplicas | int | `1` |  |
| vxApi.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| vxApi.deployment.annotations | object | `{}` |  |
| vxApi.extraEnv | list | `[]` |  |
| vxApi.image.pullPolicy | string | `"IfNotPresent"` |  |
| vxApi.image.repository | string | `"nginx"` |  |
| vxApi.image.tag | string | `""` |  |
| vxApi.imagePullSecrets | list | `[]` |  |
| vxApi.ingress.annotations | object | `{}` |  |
| vxApi.ingress.className | string | `""` |  |
| vxApi.ingress.enabled | bool | `false` |  |
| vxApi.ingress.hosts[0].host | string | `"chart-example.local"` |  |
| vxApi.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| vxApi.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| vxApi.ingress.tls | list | `[]` |  |
| vxApi.name | string | `"vx-api"` |  |
| vxApi.nodeSelector | object | `{}` |  |
| vxApi.podAnnotations | object | `{}` |  |
| vxApi.podSecurityContext | object | `{}` |  |
| vxApi.replicaCount | int | `1` |  |
| vxApi.resources | object | `{}` |  |
| vxApi.secretName | string | `"vx-api-secret-env"` |  |
| vxApi.securityContext | object | `{}` |  |
| vxApi.service.port | int | `80` |  |
| vxApi.service.type | string | `"ClusterIP"` |  |
| vxApi.serviceAccount.annotations | object | `{}` |  |
| vxApi.serviceAccount.create | bool | `true` |  |
| vxApi.serviceAccount.name | string | `""` |  |
| vxApi.tolerations | list | `[]` |  |

