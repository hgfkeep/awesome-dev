# awesome development environment configuration

## 开发时依赖环境

依赖的系统均适用docker运行：

1. 避免在自己的电脑上安装太多的软件
2. 方便依赖的系统迁移
3. 方便依赖的共享
4. 随时可以清理

### 核心依赖

1. kafka：[一键运行脚本](./dev/kafka/start_kafka.sh)
2. mysql：[一键运行脚本](./dev/mysql/start_mysql.sh)
3. redis：[一键运行脚本](./dev/redis/start_redis.sh)
4. zookeeper：[一键运行脚本](./dev/zookeeper/start_zookeeper.sh)
5. es: [docker-compose](./dev/es/docker-compose.yml)
6. rust-jupyter: [docker-compose](./dev/rust/docker-compose.yml) (详细情况参考：[docker-rust-jupyter](https://github.com/hgfkeep/rust-jupyter))
7. mongo: [一键运行脚本](./dev/mongo/start_mongo.sh)

## hugo

[hugo](https://gohugo.io) 是一个静态博客生成器，类似hexo和jekyll。
使用方法见[说明](./hugo/README.md)。


## IDEA的Editor配置


## iterms color配置

* Dracula.itermcolors
* Snazzy.itermcolors
* material-design-colors.itermcolors

## kubernetes有用的脚本

* [批量推送镜像到dockerhub](./kubernetes/push_images_to_registry.sh)

## terminal

terminal 常用的命令配置

### ohmyzsh调教

* 高亮插件
* 根据历史输入自动提示

## 服务部署

1. [gitlab代码仓库](./service/gitlab/start_gitlab.sh)
2. [部署harbor容器仓库](./service/harbor.md)
3. [aria2+webUI实现离线下载服务](./service/offline_downloader.md)
4. [VPN服务](./service/vpn)


