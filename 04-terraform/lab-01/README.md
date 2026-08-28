# Lab 01 — Terraform Configuration Troubleshooting

Difficulty: beginner

## Scenario

A platform team uses a small Terraform module to render a service's deployment
config from a template and then validate it before it's considered ready.
The module has two resources:

- `local_file.app_config` — renders `templates/app.conf.tmpl` into
  `output/app.conf` using values from `variables.tf` / `terraform.tfvars`.
- `null_resource.validate_config` — runs `../scripts/validate.sh` against the
  rendered file to confirm it's safe to ship.

The `working/` directory is a known-good baseline: `terraform init && terraform
apply` there succeeds cleanly. Someone copied that module into `broken/` for a
new service and only touched `terraform.tfvars`. Nothing else changed.

## Symptom

Running `terraform apply` in `broken/` does not fail immediately. The plan
looks reasonable and `local_file.app_config` is created successfully. The
failure shows up later, at the `null_resource.validate_config` step:

```
Error running command './../scripts/validate.sh ./output/app.conf': exit
status 1. Output: FAIL: replicas must be at least 1, got 0
```

The rendered file says `replicas: 0`, even though the team believes they
configured more than that.

## Objective

1. Reproduce the failure in `broken/`.
2. Investigate using the terraform apply output in full (not just the last
   error) — Scope → Events → Logs → Hypothesis → Isolate.
3. Identify why the rendered config ends up with `replicas: 0`.
4. Fix it in `broken/` yourself and get `terraform apply` to succeed with the
   validation script printing `OK`.
5. Only after that, compare against `solution/`.

## Setup

```bash
cd 04-terraform/lab-01/broken
terraform init
terraform apply
```

No cloud credentials, Docker, or kind cluster are required — this lab only
uses the local Terraform providers (`local`, `null`).

## Cleanup

```bash
terraform destroy -auto-approve
rm -rf .terraform terraform.tfstate terraform.tfstate.backup output
```
