# Mock Interview Loop

This is a role-aligned practice loop, not a claim about Arm's exact process.

## Round 1 — Hiring manager and role alignment (45 minutes)

- 5 minutes: concise introduction and why engineering platforms
- 15 minutes: one end-to-end technical ownership story
- 10 minutes: developer experience and cross-team influence
- 10 minutes: role-specific technical follow-ups
- 5 minutes: candidate questions

Pass signal: clear ownership, truthful scope, structured answers, and business impact.

## Round 2 — Coding and automation (60 minutes)

- Choose Python or Go
- Implement one utility from `question-bank.md`
- Add validation, error handling, logs, and at least two tests
- Explain complexity, failure modes, and production hardening

Pass signal: working core logic, calm decomposition, testable design, and explicit
trade-offs. Perfect syntax is less important than a coherent implementation.

## Round 3 — Platform technical depth (60 minutes)

- Linux/clustered-compute troubleshooting
- Terraform and configuration management
- CI/CD, build frameworks, and artifact systems
- Kubernetes, Helm, and Argo CD
- MCP/agent platform safety and observability

Pass signal: evidence-driven diagnosis rather than a list of commands.

## Round 4 — Staff system design (60 minutes)

Prompt: Design an engineering platform that provides build, test, artifact and
self-service deployment capabilities for globally distributed hardware and software
teams.

Cover:

1. Users, workloads, scale assumptions and success metrics
2. Control plane and data plane
3. Build execution, scheduling and caching
4. Artifact integrity, replication and lifecycle
5. CI/CD and GitOps interfaces
6. Identity, tenancy, secrets and policy
7. Availability, capacity, observability, RPO and RTO
8. Adoption, migration, ownership and cost

Pass signal: requirements first, explicit trade-offs, failure handling, and an
incremental delivery plan.

## Round 5 — Leadership and collaboration (45 minutes)

Prepare stories for:

- Ambiguous requirements
- A production incident
- A disagreement over architecture
- A migration or deprecation
- Mentoring and raising engineering standards
- A delivery that missed expectations and what changed afterward

Pass signal: personal contribution is clear, collaborators receive credit, and the
answer ends with measurable learning or improvement.

## Scoring

Score each category from 1 to 4:

- Technical accuracy
- Structure and concision
- Troubleshooting method
- Coding and testing
- Architecture trade-offs
- Staff ownership and influence
- Truthful alignment to actual experience

A score below 3 becomes the next lab or practice session.
