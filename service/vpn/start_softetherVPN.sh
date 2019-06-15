docker run -d --cap-add NET_ADMIN \
-p 500:500/udp \
-p 4500:4500/udp \
-p 1701:1701/tcp \
-p 1194:1194/udp \
-p 5555:5555/tcp \
-p 443:443/tcp \
-p 992:992 \
-e PSK=psk \
-e SPW=pw \
-e USERS=vpn:vpnpass;vpn2:vpnpass2 \
siomiz/softethervpn

# USERS格式：username:password;user2:pass2;user3:pass3
# PSK是预共享密钥，SPW是管理密钥(用于登录 SoftEther Server 管理器)
# 详细配置：https://blog.mylonly.com/15440788666202.html
