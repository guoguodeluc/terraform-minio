
# 配置和缓存
## linux 环境变量
`cat > $HOME/.terraformrc <<EOF
plugin_cache_dir   = "$HOME/.terraform.d/plugin-cache"
disable_checkpoint = true
EOF`
## provider 缓存
`## https://github.com/aminueza/terraform-provider-minio/releases/download/v2.2.0/terraform-provider-minio_2.2.0_linux_amd64.zip
VERSION=2.2.0
wget https://github.com/aminueza/terraform-provider-minio/releases/download/v${VERSION}/terraform-provider-minio_${VERSION}_linux_amd64.zip
mkdir -p ~/.terraform.d/plugins/local/aminueza/minio/${VERSION}/linux_amd64
unzip terraform-provider-minio_2.2.0_linux_amd64.zip -d ~/.terraform.d/plugins/local/aminueza/minio/${VERSION}/linux_amd64`

# 操作步骤
`terraform init
terraform plan
terraform apply`

# 创建流程
## 创建整体流程
![avatar](https://github.com/guoguodeluc/terraform-minio/blob/main/images/workflow.jpg)

## 创建 Minio 资源
![avatar](https://github.com/guoguodeluc/terraform-minio/blob/main/images/minio_resouces.png)
