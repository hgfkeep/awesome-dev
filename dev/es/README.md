# 问题

## vm.max_map_count 配置太低

报错信息：`max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]`

修改方法： 

1. 临时修改： `sysctl -w vm.max_map_count=262144`
2. 永久修改：`echo 'vm.max_map_count=262144' >> /etc/sysctl.conf`


## 文件句柄数不足

修改：

1. 临时修改：`ulimit -n 4096`
2. 永久修改：`echo '*　　soft　　nofile　　65536' >> /etc/security/limits.conf;echo '*　　hard　　nofile　　65536' >> /etc/security/limits.conf; `
