# pm 快速跳转常用文件夹

## 安装

```shell
wget https://raw.githubusercontent.com/Angelmmiguel/pm/master/install.sh
chmod +x install.sh
./install.sh
```

## 使用

收藏常用文件夹：

```shell
cd projects/awesome-project

# 将当前目录存储到 pm 中，并取一个名字
pm add awesome-project
```

查看常用文件夹列表：

```shell
pm list
```


跳转到文件夹：

```shell
# pm go + 名字 , 迅速切换到该目录
pm go awesome-project
```

删除收藏的文件夹

```shell
pm remove awesome-project
```
