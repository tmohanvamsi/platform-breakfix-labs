# Coverage Matrix

Use `Ready`, `Practice`, or `Gap` in the final column. Add links to lab notes or
real, supportable examples; do not convert lab work into production claims.

| Public role signal | What to demonstrate | Repository coverage | Status |
|---|---|---|---|
| Linux infrastructure | Services, processes, storage, networking, permissions, capacity, failure isolation | `01-linux`, `25-sre-incidents` | Practice |
| AWS, Azure, or GCP | Secure network and identity design, compute choices, resilience, cost trade-offs | `06-aws`, `26-system-design` | Practice |
| Terraform, Ansible, Puppet | Reusable modules, state, drift, promotion, testing, safe change | `04-terraform`, `05-ansible` | Practice |
| Jenkins, Artifactory, GitLab | Pipeline design, runners, artifacts, credentials, scaling, recovery | `17-jenkins`, planned `28-build-artifact-systems` | Gap |
| Docker, Kubernetes, Helm, Argo CD | Packaging, scheduling, rollout, GitOps, policy, troubleshooting | `03-docker`, `07-*` through `15-argocd` | Practice |
| Bash, Python, or Ruby | Automation with validation, errors, logs, idempotency, and tests | `23-python-bash-groovy` | Practice |
| Go, Rust, C/C++, or Java | Maintainable service or CLI, concurrency awareness, testing | `12-k8s-controllers-go` | Gap |
| Clustered compute | Scheduling, queues, fairness, quotas, autoscaling, failure recovery | `07-kubernetes-core`, `24-ai-gpu`, `26-system-design` | Practice |
| Build and test enablement | Reproducibility, caches, isolation, fan-out, feedback time | planned `28-build-artifact-systems` | Gap |
| Artifact distribution at scale | Immutability, replication, metadata, retention, integrity, availability | planned `28-build-artifact-systems` | Gap |
| Platform engineering | Self-service, golden paths, APIs, guardrails, adoption, product thinking | planned `29-internal-developer-platforms`, `26-system-design` | Gap |
| MCP, agents, and LLMs | Tool contracts, auth, tenancy, audit, evaluation, cost, observability | planned `30-ai-developer-tooling`, `24-ai-gpu` | Practice |
| Staff ownership | Requirements, RFCs, sequencing, risks, influence, measurable outcomes | `26-system-design`, `27-leadership` | Practice |

## Evidence rule

For each row, prepare both:

1. A technical explanation or lab demonstration
2. A truthful experience statement: `used in production`, `supported adjacent
   teams`, `built as a lab`, or `currently learning`
