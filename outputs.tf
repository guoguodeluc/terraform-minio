## 组和用户信息
output "minio_user_group" {
  value     = minio_iam_group.new_group.group_name
}

output "minio_user_name" {
  value     = minio_iam_user.new_user.name
}

## 密码信息
output "minio_user_secret" {
  value     = minio_iam_user.new_user.secret
  sensitive = true
}

## 密钥信息
output "minio_user_access_key" {
  value     = minio_iam_service_account.new_service_account.access_key
}

output "minio_user_secret_key" {
  value     = minio_iam_service_account.new_service_account.secret_key
  sensitive = true
}

## bucket url 信息
output "minio_url" {
  value     = minio_s3_bucket.new_bucket.bucket_domain_name
}
