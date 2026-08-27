# Interview Answer Template

## Three-line speakable answer

1. **Scope:** State the system, symptom or decision and the impact.
2. **Method:** Explain how you narrowed it using evidence or trade-offs.
3. **Outcome:** Give the fix/design, validation and prevention or measurable result.

## Key points

- Assumptions and scale
- Evidence or decision criteria
- Alternatives considered
- Failure handling and security
- Validation and observability
- Prevention or next iteration

## Memory line

> Scope → Evidence → Decision → Validate → Prevent

## Troubleshooting version

> I first establish impact and whether the problem is application, platform or
> dependency-wide. I follow the request or workload path using events, logs,
> metrics and recent changes, testing one hypothesis at a time. After recovery, I
> validate user-facing health and add a guardrail that detects or prevents recurrence.

## System-design version

> I start with users, workloads, scale and success criteria. I separate the control
> and data planes, then design security, reliability, observability and lifecycle
> around the critical path. I finish with trade-offs, failure modes and an
> incremental rollout that proves value before expanding.

## Honesty labels

Use the accurate phrase:

- “I implemented this in production.”
- “I supported or integrated with this system.”
- “I built and validated this in a local lab.”
- “I have not operated this directly; here is how I would approach it.”
