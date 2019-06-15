docker run -d --name=softether-vpnclient \
--net=host --privileged \
-e VPN_SERVER=<Softether VPN server> \
-e VPN_PORT=<Softether VPN port> \
-e ACCOUNT_USER=<Registered username> \
-e ACCOUNT_PASS=<Registered password> \
-e VIRTUAL_HUB=<Virtual Hub name> \
-e TAP_IPADDR=<IP address/netmask> \
mitsutaka/softether-vpnclient

# 服务器端，VIRTUAL_HUB端填入之前在manager上新建的虚拟HUB名称 ，TAP_IPADDR，最好采用指定IP的方式，尤其是DNS服务器，需要固定IP地址

