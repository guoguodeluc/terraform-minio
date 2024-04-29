
# 版本
terraform 版本： 1.8.0
provider aminueza/minio版本： 2.2.0

# 配置和缓存
## 下载 terraform
```bash
## 安装较新版本 terraform
## https://releases.hashicorp.com/terraform/1.8.0/terraform_1.8.0_linux_amd64.zip
VERSION=1.8.0
wget https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip
unzip terraform_${VERSION}_linux_amd64.zip 
mv terraform /usr/local/sbin/
## 自动补全
terraform -install-autocomplete
## 查看版本
terraform version
```
## linux 环境变量
```bash
cat > $HOME/.terraformrc <<EOF
plugin_cache_dir   = "$HOME/.terraform.d/plugin-cache"
disable_checkpoint = true
EOF
```
## provider 缓存
```bash
## https://github.com/aminueza/terraform-provider-minio/releases/download/v2.2.0/terraform-provider-minio_2.2.0_linux_amd64.zip
VERSION=2.2.0
wget https://github.com/aminueza/terraform-provider-minio/releases/download/v${VERSION}/terraform-provider-minio_${VERSION}_linux_amd64.zip
mkdir -p ~/.terraform.d/plugins/local/aminueza/minio/${VERSION}/linux_amd64
unzip terraform-provider-minio_2.2.0_linux_amd64.zip -d ~/.terraform.d/plugins/local/aminueza/minio/${VERSION}/linux_amd64
```

# 操作步骤
## 修改变量
```bash
# cat terraform.tfvars 
minio_server        = "192.168.10.51:9000"
minio_user          = "admin"
minio_password      = "admin@xxxx"
new_group_name      = "terraform"
new_user_name       = "terraform"
new_bucket_name     = "terraform1"
new_bucket_quota    = 32212254720
```
## 执行terraform
```bash
terraform init
terraform plan
terraform apply
```

# 创建流程
## 创建整体流程
![avatar](https://github.com/guoguodeluc/terraform-minio/blob/main/images/workflow.jpg)

## 创建 Minio 资源
![avatar](https://github.com/guoguodeluc/terraform-minio/blob/main/images/minio_resouces.png)
