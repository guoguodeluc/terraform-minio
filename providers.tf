terraform {
  required_providers {
    minio = {
      source  = "local/aminueza/minio"
      version = ">=2.2.0"
    }
  }
}

provider "minio" {
  minio_server   = var.minio_server
  minio_user     = var.minio_user
  minio_password = var.minio_password
  minio_ssl      = false
}
