terraform {
  required_version = ">= 1.5.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "app_config" {
  filename = "${path.module}/output/app.conf"

  content = templatefile("${path.module}/templates/app.conf.tmpl", {
    app_name      = var.app_name
    environment   = var.environment
    replica_count = var.replica_count
  })
}

resource "null_resource" "validate_config" {
  depends_on = [local_file.app_config]

  triggers = {
    config_hash = local_file.app_config.content_md5
  }

  provisioner "local-exec" {
    command = "${path.module}/../scripts/validate.sh ${local_file.app_config.filename}"
  }
}

output "rendered_config_path" {
  value = local_file.app_config.filename
}
