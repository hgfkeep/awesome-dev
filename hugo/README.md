## 版本说明

* latest版本： 支持hugo最新的所有功能，包括hugo external helper。通过hugo external helper来支持asciidoctor。但是目前不支持asciidoctor插件，例如asciidoctor-diagram。

* alpine版本：同latest版本
* plantuml版本：支持hugo最新的所有功能，并安装了asciidoctor-diagram及plantuml运行环境。


## 使用说明

环境变量 DOC_DIR配置hugo site的根目录；

* 构建本地site：`docker run --rm -v $PWD:/hugo hgfdodo/hugo-asciidoc`
* hugo 构建本地site并本地查看：`docker run --rm -p 1313:1313 -v $PWD:/hugo hgfdodo/hugo-asciidoc`
* 构建hugo草稿：`docker run --rm -p 1313:1313 -v $PWD:/hugo hgfdodo/hugo-asciidoc hugo server --buildDrafts --bind 0.0.0.0`

> 如果需要在服务器X的容器环境中编译静态博客，在本地查看博客效果，那么需要使用`-b` 参数设置静态博客绑定的地址为服务器X的IP，例如`docker run --rm -v $PWD:/hugo -p1313:1313 hgfdodo/hugo-asciidoctor hugo server -b 10.60.1.94 --bind 0.0.0.0`

##更多

👏欢迎查看我的[awesome dev repository ](https://github.com/hgfkeep)。
