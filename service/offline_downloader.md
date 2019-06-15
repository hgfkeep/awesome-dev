使用aria2和web UI 前段组建远程服务器离线下载工具

基于docker： `docker pull abcminiuser/docker-aria2-with-webui`

启动：

```shell
sudo docker run -d \
--name aria2-with-webui \
-p 6800:6800 \
-p 6880:80 \
-v /home/docker/Downloads:/data \
-e SECRET=docker \
-e PGID=1000 \
-e PUID=1000 \
abcminiuser/docker-aria2-with-webui
```
**特别注意：PUID和PGID所表示的用户，必须对/home/docker/Downloads 目录有写文件权限**。可以通过PUID-PGID对应的用户创建该目录即可

> 1. PGID 和 PUID是 docker的gid 和 uid，使用命令 `id <username>`查看。
> 2. SECRET 参数可以使用secrete 远程访问aria2。

