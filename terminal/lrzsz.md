# lrzsz 上传下载远程文件

## 安装

1. 安装lrzsz：`brew install lrzsz`
2. iterm2支持zmodem：
   1. `curl https://raw.github.com/mmastrac/iterm2-zmodem/master/iterm2-send-zmodem.sh -o /usr/local/bin/iterm2-send-zmodem.sh`
   2. `curl https://raw.github.com/mmastrac/iterm2-zmodem/master/iterm2-recv-zmodem.sh -o /usr/local/bin/iterm2-recv-zmodem.sh`
   3. 上述脚本增加可执行权限：`chmod +x /usr/local/bin/iterm2-send-zmodem.sh ; chmod +x /usr/local/bin/iterm2-recv-zmodem.sh`
3. 添加iterm trigger：Profiles -> advance -> trigger

