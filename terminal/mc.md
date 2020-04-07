# Minio client

它支持管理本地文件系统和与Amazon S3兼容的云存储服务。

## 安装

1. `brew install minio/stable/mc`
2. `docker pull minio/mc`

## 使用

1. 登陆S3: `mc config host add <ALIAS> <YOUR-S3-ENDPOINT> <YOUR-ACCESS-KEY> <YOUR-SECRET-KEY> --api <API-SIGNATURE> --lookup <BUCKET-LOOKUP-TYPE>`
  * 例如登陆S3： `mc config host add minio http://192.168.1.51 BKIKJAA5BMMU2RHO6IBB V7f1CwQqAcwo80UEIJEjc5gVQUSSx5ohQ9GSrr12`
2. 创建block：`mc mb <ALIAS>/<BUCKET-NAME>`
  * 例如在S3 play中创建bucket test: `mc mb play/test`
3. 上传文件到block：`mc cp [--recursive] <PATH> <ALIAS>/<BUCKET-NAME>`
  * 例如： 上传文件a.txt 到test bucket： `mc cp a.txt play/test`
  * 例如：上传文件夹x 到test bucket： `mc cp --recursive x play/test`
4. 下载文件到本地：同样使用`mc cp`

## tricks 和帮助

### 命令提示

使用`mc --autocompletion`开启自动提示。

### alias

```shell
alias ls='mc ls'
alias cp='mc cp'
alias cat='mc cat'
alias mkdir='mc mb'
alias pipe='mc pipe'
alias find='mc find'
```
