# transfer.sh

免费的文件上传和分享工具，支持web，命令行等多种上传方式
free upload and share files through web or terminal.

## 安装

**不需要安装**一种 HTTP 文件分享服务
DO NOT need install！

## 使用

curl上传：

```shell
curl --upload-file ./hello.txt https://transfer.sh/hello.txt 
```

curl 上传，且限制文件分享的下载数，分享天数：

```shell
curl -H "Max-Downloads: 1" -H "Max-Days: 5" --upload-file ./hello.txt https://transfer.sh/hello.txt 
```

使用命令行别名快速分享：

```shell
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi 
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; } 
```
