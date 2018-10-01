# python 环境

使用pyenv 管理python的环境，包括多个python 版本

## 环境安装

brew install pyenv pyenv-virtualenv


## 使用pyenv 安装python 版本

使用`python` 查看可安装的版本信息：`pyenv install --list`

然后选择安装的版本信息：`pyenv install 3.7.0`


## 使用pyenv-virtualenv管理virtualenv 环境

创建virtualenv 环境：`pyenv virtualenv 3.7.0 env` 其中，后两个参数分别为python的版本，虚拟环境的文件夹名。

active 虚拟环境：`pyenv active env`

deactive虚拟环境：`pyenv deactive env`

卸载虚拟环境： `pyenv uninstall env`