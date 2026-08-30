# Platform Break/Fix Labs — Project Context

This repository is a hands-on interview preparation lab for:

- Senior DevOps Engineer
- Site Reliability Engineer
- Platform Engineer
- Kubernetes Platform Engineer
- Cloud Platform Engineer
- AI Infrastructure Engineer

## Goal

Use this repository to practice:

Setup → Write config → Deploy → Break → Troubleshoot → Fix → Validate → Explain in interview language

The purpose is not only to build working infrastructure.

Each topic must include intentionally broken scenarios so I can practice diagnosing production-style failures.

## Core Tracks

1. Terraform
2. Ansible
3. AWS
4. Docker
5. Kubernetes Core
6. Kubernetes Internals
7. Kubernetes Networking
8. Kubernetes Storage
9. Helm / Kustomize
10. Kubernetes CRDs / Controllers / Operators in Go
11. Validating Admission Webhooks
12. Mutating Admission Webhooks
13. Secrets / Sealed Secrets
14. Git / GitOps
15. Argo CD
16. Argo Workflows
17. Jenkins / Groovy
18. GitHub Actions
19. Prometheus
20. Grafana
21. Alertmanager
22. Fluent Bit / EFK
23. Python / Bash / Groovy automation
24. AI / GPU Kubernetes
25. SRE incidents
26. System Design
27. Leadership

## Lab Format

Each lab should contain:

- README.md
- working/
- broken/
- solution/
- scripts/
- interview-notes.md

The README should explain only:

- scenario
- symptom
- objective

Do NOT reveal the root cause immediately.

## Troubleshooting Method

Use:

Scope → Events → Logs → Metrics → Hypothesis → Isolate → Fix → Validate → Prevent

## Interview Practice

After every lab, generate:

- 30–60 second answer I can say
- key points
- likely follow-up question
- memory line

## Initial Priority

Start with:

1. Terraform broken module/config
2. Kubernetes Pending Pod
3. Kubernetes CrashLoopBackOff
4. Helm
5. Kubernetes Go controller / CRD
6. Validating webhook
7. Mutating webhook
8. Argo CD / GitOps
9. Jenkins
10. AWS
11. Ansible
12. Prometheus / Grafana / Alertmanager

## Local Environment

Prefer:

Mac → Docker Desktop → kind

Cluster:

- 1 control-plane
- 2 workers

Cluster name:

platform-lab
