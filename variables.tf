## Minio 服务登录信息
variable "minio_server" {
  description = "URL of the MinIO server"
  type        = string
  default     = "http://localhost:9000"
}

variable "minio_user" {
  description = "Username for the MinIO server"
  type        = string
}

variable "minio_password" {
  description = "Password for the MinIO server"
  type        = string
}

## Minio 新创建的用户和组
variable "new_group_name" {
  description = "Name of the new group"
  type        = string
}

variable "new_user_name" {
  description = "Name of the new user"
  type        = string
}

## Minio 新的对象bucket
variable "new_bucket_name" {
  description = "Name of the bucket to be created"
  type        = string
}

variable "new_bucket_quota" {
  description = "Quota of the bucket ( Default 30G )"
  type        = number
  default     = 32212254720
}
