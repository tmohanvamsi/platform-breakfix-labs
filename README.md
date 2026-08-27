# Platform BreakFix Labs

Hands-on, production-style failure labs for Platform Engineering, DevOps, SRE, Kubernetes, cloud, and AI infrastructure interviews.

The learning loop is deliberately practical:

> Setup → Write → Deploy → Break → Investigate → Fix → Validate → Explain

## Principles

- Diagnose from symptoms and evidence; do not read the solution first.
- Write the configuration yourself before comparing it with a reference.
- Use progressive hints: Hint 1, Hint 2, then the solution.
- Validate recovery technically and explain it in interview language.
- Clearly distinguish lab practice from real production experience.

## Quick start

Prerequisites: macOS or Linux, Docker, kubectl, kind, Terraform, Helm, Git, and Go.

```bash
./scripts/check-prerequisites.sh
kind create cluster --name platform-lab --config 00-setup/kind/platform-lab.yaml
kubectl cluster-info --context kind-platform-lab
kubectl get nodes -o wide
```

To remove only this lab cluster:

```bash
kind delete cluster --name platform-lab
```

## Initial learning path

1. Terraform broken module/config troubleshooting
2. Kubernetes Pending Pod
3. Kubernetes CrashLoopBackOff
4. Helm and Kustomize
5. Controllers, CRDs, and admission webhooks in Go
6. GitOps and Argo CD
7. Jenkins and Groovy
8. AWS and Ansible
9. Observability and logging
10. AI/GPU infrastructure, system design, and leadership

## Role-specific target profiles

Target profiles translate a public job description into a focused preparation
path without claiming that the generated questions were asked by the company.

- [Arm — Staff Platform and Application Engineer](targets/arm-staff-platform-application-engineer/README.md)

Each profile maps role requirements to existing tracks, identifies missing
coverage, proposes BreakFix scenarios, and provides a role-aligned mock loop.

## Lab contract

Every troubleshooting lab follows:

```text
Scenario → Symptom → Investigation → Evidence → Hypothesis
→ Root cause → Fix → Validation → Prevention → Interview explanation
```

Start with the lab's `README.md`. Do not open `solution/` until you have recorded at least one hypothesis and troubleshooting attempt.

## Repository map

The numbered directories form the curriculum. Each lab normally contains:

```text
lab-XX-topic/
├── README.md
├── working/
├── broken/
├── solution/
├── scripts/
└── interview-notes.md
```

See [ROADMAP.md](ROADMAP.md) for the complete track list and [CONTRIBUTING.md](CONTRIBUTING.md) for the community lab standard.

## Status

The project is being built incrementally. The first three labs are intentionally staged and will be unlocked one at a time.
