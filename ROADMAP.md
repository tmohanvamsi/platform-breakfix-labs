# Roadmap

## Phase 1 — Interview-critical foundations

- `04-terraform`: language, modules, providers, state, drift, import, backends, and failure diagnosis
- `07-kubernetes-core`: resource authoring and workload troubleshooting
- `11-helm-kustomize`: packaging, overlays, upgrades, and rollbacks
- `12-k8s-controllers-go`: CRDs, reconciliation, status, finalizers, RBAC, and owner references
- `13-k8s-webhooks`: validating and mutating admission in Go and Python
- `15-argocd`: GitOps reconciliation, drift, sync, health, and rollback

## Phase 2 — Delivery and cloud operations

- Jenkins, GitHub Actions, AWS, Ansible
- Kubernetes networking and storage
- Prometheus, Grafana, Alertmanager
- Fluent Bit and EFK
- Argo Workflows

## Phase 3 — Senior platform depth

- Linux, Docker, Kubernetes internals
- Bash, Python, and Groovy automation
- SRE incident simulations
- AI/GPU Kubernetes
- Platform system design
- Leadership and behavioral practice

## Phase 4 — Staff platform specializations

- Large-scale build systems, remote execution, caching, and artifact distribution
- Internal developer platforms, golden paths, self-service, and platform metrics
- AI developer tooling, MCP servers, agents, policy, and observability
- Role-specific target profiles that compose labs without duplicating them

## Track directories

```text
00-setup                    14-secrets
01-linux                    15-argocd
02-git                      16-argo-workflows
03-docker                   17-jenkins
04-terraform                18-github-actions
05-ansible                  19-prometheus
06-aws                      20-grafana
07-kubernetes-core          21-alertmanager
08-kubernetes-internals     22-fluentbit-efk
09-kubernetes-networking    23-python-bash-groovy
10-kubernetes-storage       24-ai-gpu
11-helm-kustomize           25-sre-incidents
12-k8s-controllers-go       26-system-design
13-k8s-webhooks             27-leadership
28-build-artifact-systems
29-internal-developer-platforms
30-ai-developer-tooling
```

The Phase 4 directories are planned. Until their first complete lab is added,
their scenarios are tracked in role profiles under `targets/` rather than as
empty folders.

## Target profiles

- `targets/arm-staff-platform-application-engineer`: preparation map for Arm
  Job ID `2025-14605`, covering Linux, cloud, IaC, CI/CD, artifact systems,
  Kubernetes/GitOps, coding, developer experience, and AI tooling.
