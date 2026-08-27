# Arm-Aligned BreakFix Lab Backlog

Every lab must follow:

> Setup → Configure/Code → Deploy → Break → Troubleshoot → Fix → Validate → Explain

Root causes must remain inside `solution/`; titles and opening scenarios must not
reveal the defect.

## P0 — Complete before an interview

### ARM-PF-01 — Distributed build slowdown

- Domain: build platform, Linux, clustered compute
- Scenario: build completion time rises sharply while total demand is stable
- Evidence: queue depth, worker saturation, cache-hit rate, network and disk data
- Deliverable: fault isolation, recovery, capacity guardrail, 60-second answer

### ARM-PF-02 — Artifact delivery failure

- Domain: Artifactory-compatible concepts, networking, integrity
- Scenario: CI succeeds in one environment but downstream consumers intermittently
  cannot retrieve immutable artifacts
- Evidence: repository logs, checksums, proxy/cache behavior, replication state
- Deliverable: restore availability without replacing or mutating released builds

### ARM-PF-03 — Terraform platform promotion

- Domain: Terraform, cloud, policy
- Scenario: a shared module change succeeds in development but is unsafe for stage
  and production
- Evidence: plan output, state boundaries, module versions, policy checks
- Deliverable: controlled promotion, rollback strategy, drift prevention

### ARM-PF-04 — Kubernetes GitOps rollout

- Domain: Kubernetes, Helm, Argo CD
- Scenario: desired state is committed but the workload is degraded and GitOps
  reconciliation cannot safely converge
- Evidence: Argo application state, rendered manifests, events, probes, rollout data
- Deliverable: recovery, health validation, prevention in CI and admission policy

### ARM-PF-05 — Python or Go platform utility

- Domain: coding
- Scenario: implement a CLI that validates service configuration and emits clear
  failures for CI and human users
- Requirements: structured input, validation, exit codes, logs, unit tests
- Deliverable: runnable code plus discussion of maintainability and trade-offs

### ARM-PF-06 — Self-service golden path

- Domain: internal developer platform
- Scenario: teams open tickets for environments and deployments, creating long lead
  times and inconsistent controls
- Deliverable: API/template contract, workflow, guardrails, ownership model, SLOs,
  adoption and developer-experience metrics

### ARM-PF-07 — MCP tool governance incident

- Domain: MCP, agents, platform security
- Scenario: an agent tool produces cross-tenant risk and untraceable infrastructure
  actions under load
- Evidence: identity, authorization, tool arguments, audit events, traces, cost data
- Deliverable: containment, least privilege, approvals, tenancy, evaluation and audit

## P1 — Staff-depth extensions

- Multi-region artifact repository recovery with RPO/RTO decisions
- Jenkins controller/agent saturation and credential rotation
- GitLab runner fleet autoscaling with noisy-neighbor controls
- Kubernetes multi-tenant quotas, priority, preemption and fair scheduling
- Linux fleet patching with canaries and rollback
- Cloud cost regression caused by build-cache or egress behavior
- Platform migration plan with compatibility, adoption and deprecation stages
- Observability design for build, artifact, Kubernetes and MCP control planes

## Lab completion record

For every scenario, save:

- Initial symptoms and scope
- Commands/queries used and why
- At least two hypotheses
- Evidence that eliminated alternatives
- Root cause and immediate mitigation
- Permanent correction and prevention
- Validation output
- A three-line speakable answer and likely follow-ups
