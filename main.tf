## 创建组和用户
resource "minio_iam_group" "new_group" {
  name          = var.new_group_name
  disable_group = false 
}

resource "minio_iam_user" "new_user" {
  name          = var.new_user_name
  disable_user  = false
}

resource "minio_iam_group_user_attachment" "new_group_user" {
  group_name = minio_iam_group.new_group.group_name
  user_name  = minio_iam_user.new_user.id
}

resource "minio_iam_service_account" "new_service_account" {
  target_user = minio_iam_user.new_user.name
}

## 创建 bucket
resource "minio_s3_bucket" "new_bucket" {
  bucket = var.new_bucket_name
  acl    = "private"
  quota  = var.new_bucket_quota
}


## 创建策略
resource "minio_iam_group_policy" "new_group_policy" {
  name   = var.new_group_name
  group  = minio_iam_group.new_group.group_name
  policy = <<EOF
{
  "Version":"2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["s3:*"],
      "Resource": [ "arn:aws:s3:::${var.new_bucket_name}/*","arn:aws:s3:::${var.new_bucket_name}" ]
    }
  ]
}
EOF
}

## 给指定组绑定策略
resource "minio_iam_group_policy_attachment" "new_group" {
  group_name  = minio_iam_group.new_group.group_name
  policy_name = var.new_group_name
}
