# Role-Derived Question Bank

These are inferred from the public requirements. They are not represented as
questions previously asked by Arm.

## Linux and clustered compute

1. A build farm's queue time doubled, but CPU utilization is only 55%. How do you
   investigate?
2. How would you distinguish CPU, memory, disk, inode, network, lock, and process
   limit failures on Linux?
3. Design fair scheduling for multiple engineering teams sharing clustered compute.
4. How do you roll out an operating-system or runtime change across build workers?

## CI/CD, builds, and artifacts

1. Design a secure, scalable build-and-test platform for hardware and software teams.
2. What makes a build reproducible, and how would you prove it?
3. How would you scale Jenkins agents or GitLab runners while preserving isolation?
4. Design artifact storage and distribution across multiple sites.
5. How do you handle immutability, checksums, provenance, signing, retention, and
   disaster recovery?
6. A cache improves speed but occasionally serves incorrect outputs. What do you do?

## Cloud and infrastructure as code

1. How do you structure Terraform modules and state for dev, stage, and production?
2. How do you detect and safely reconcile drift?
3. When would you choose Terraform versus Ansible?
4. How would you migrate a platform service to cloud with minimal disruption?
5. Explain identity, network, secret, availability, and cost boundaries in your design.

## Containers, Kubernetes, Helm, and Argo CD

1. Walk through a Pending Pod investigation in scheduler order.
2. How do you debug a Helm-rendered workload that differs from your expectation?
3. Argo CD shows `OutOfSync` and `Degraded`. What evidence do you inspect first?
4. How do you design multi-tenancy, quotas, priority and policy for shared clusters?
5. When is Kubernetes the wrong execution platform for a build workload?

## Coding

1. Write a configuration validator with clear errors and non-zero exit codes.
2. Parse build logs and summarize failures by category.
3. Implement bounded retries with backoff and jitter.
4. Design a concurrent worker pool and explain cancellation and error propagation.
5. Build a small HTTP service with health endpoints, structured logs, metrics and
   graceful shutdown.

## Platform engineering and developer experience

1. What is the difference between a platform and a collection of tools?
2. How do you identify the first golden path to build?
3. Which capabilities should be self-service, and which require approval?
4. How do you measure developer productivity without creating harmful incentives?
5. How do you drive adoption when teams already have different pipelines?

## MCP, agents, and LLM tooling

1. What belongs in an MCP server, and what belongs behind a separate service API?
2. How do you secure tool discovery and invocation across teams?
3. How do you prevent an agent from executing destructive or cross-tenant actions?
4. Which metrics, traces and audit data are required for an AI developer platform?
5. How do you evaluate reliability, latency, token cost and tool-call correctness?

## Staff-level ownership

1. Tell me about a platform initiative you owned from ambiguous requirements to
   delivery.
2. Describe a technical decision where you changed direction after new evidence.
3. How do you sequence a multi-month migration while continuing feature delivery?
4. How do you influence teams that do not report to you?
5. What do you do when a strategically important platform is technically sound but
   adoption is low?
