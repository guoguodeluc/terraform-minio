terraform {
  backend "local" {
    path = "~/.minio/terraform.tfstate"
  }
}
