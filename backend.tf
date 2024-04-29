terraform {
  backend "local" {
    path = "/root/.minio/terraform.tfstate"
  }
}
