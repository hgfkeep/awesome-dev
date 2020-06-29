# 快速搭建ssr

支持的服务器操作系统版本： CentOS 6+，Debian 7+，Ubuntu 12+

## 搭建ssr 脚本

运行：`ss-fly/ss-fly.sh -ssr`
选择服务器端口，密码，机密方式，协议和混淆算法，然后回车就可以安装ssr。

成功后会显示：

```
Congratulations, ShadowsocksR server install completed!
Your Server IP        :  *.*.*.*
Your Server Port      :  your_port
Your Password         :  your_password
Your Protocol         :   *******
Your obfs             : ******
Your Encryption Method:  ******

Welcome to visit:https://shadowsocks.be/9.html
Enjoy it!
```

## 开启bbr加速

bbr 是谷歌开源的内核加速算法。

```
ss-fly/ss-fly.sh -bbr
```

验证bbr加速是否开启，使用命令：

```
sysctl net.ipv4.tcp_available_congestion_control
```

返回`net.ipv4.tcp_available_congestion_control = bbr cubic reno` 即表示开启了bbr加速。
