# Interview Notes — Lab 01

Do not read this until you've solved the lab yourself.

## 30-60 second answer I can say

"We had a Terraform module that rendered a service config file and then ran
a validation step against it. Apply wasn't failing at the resource that
actually had the problem — it failed two steps downstream, at a validation
provisioner, with a generic 'replicas must be at least 1' error. Instead of
just patching the validation step, I scrolled back through the full apply
output and found a warning Terraform had printed earlier: 'value for
undeclared variable.' Someone had a typo in the tfvars file — `replica_cnt`
instead of `replica_count` — so Terraform silently fell back to the
variable's default of zero instead of erroring. I fixed the tfvars key, then
made the failure mode safer going forward: removed the numeric default so a
missing/misnamed variable is a hard plan-time error instead of a silent
fallback, and treated Terraform warnings as CI failures so this can't scroll
past unnoticed again."

## Key points

- Don't fix at the point where the error surfaces — trace back to where the
  bad value actually originated.
- Terraform warnings (not just errors) can hide real defects; undeclared
  variables in `.tfvars` are a warning, not a hard failure, by design.
- Defaults on "required" operational variables (replica counts, resource
  sizes) can mask typos by silently substituting a safe-looking value.
- Prevention beats a one-off fix: move the check earlier (plan-time
  precondition) and make warnings visible in CI.

## Likely follow-up question

"How would you have caught this before it ever reached apply?"

Answer: a plan-time `precondition` on the resource asserting
`var.replica_count >= 1`, plus `tflint`/`terraform validate` in CI, and
treating any `Warning:` in `terraform plan` output as a pipeline failure
rather than letting it merge silently.

## Memory line

"Warnings are error messages you haven't read yet — the defect was in the
input, not where the failure surfaced."
