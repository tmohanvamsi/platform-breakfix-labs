# Solution — Lab 01

Do not read this until you've reproduced the failure in `broken/` and formed
at least one hypothesis.

## Root cause

`broken/terraform.tfvars` sets `replica_cnt = 3`, but `variables.tf` declares
the variable as `replica_count` (with `default = 0`). Terraform does not
error on an undeclared variable in a `.tfvars` file — it only emits a
warning:

```
Warning: Value for undeclared variable

The root module does not declare a variable named "replica_cnt" but a value
was found in file "terraform.tfvars".
```

Because `replica_count` was never actually set, Terraform silently falls
back to its default of `0`. `local_file.app_config` renders successfully
(there's nothing invalid about a config with `replicas: 0`), so the failure
doesn't surface until two resources downstream, at
`null_resource.validate_config`, when `scripts/validate.sh` rejects a
replica count below 1.

The lesson: the error message points at the *validation* step, but the
defect is in the *input variables*. A warning that scrolled by earlier in
the output was the real signal.

## Fix

In `terraform.tfvars`, rename the key to match the declared variable:

```diff
- replica_cnt = 3
+ replica_count = 3
```

## Validation

```bash
terraform apply -auto-approve
# null_resource.validate_config (local-exec): OK: ./output/app.conf has 3 replica(s) configured
```

No warnings should appear on a clean apply, and `output/app.conf` should
contain `replicas: 3`.

## Prevention

- Treat any Terraform warning as a build failure in CI (`terraform plan
  -detailed-exitcode` plus grep for `Warning:` in output, or
  `TF_IN_AUTOMATION=1` with strict log parsing) rather than letting it scroll
  past.
- Avoid silent numeric defaults for required operational values like replica
  counts — omit the `default` on `variable "replica_count"` so a typo like
  this becomes a hard "no value" error at plan time instead of a silent
  fallback.
- Add a plan-time check (e.g. a `precondition` block on the resource, or
  `tflint`) that asserts `replica_count >= 1`, so the failure surfaces at
  `terraform plan` instead of after a resource is already created.
