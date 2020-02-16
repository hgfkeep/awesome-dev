# fzf

命令行模糊查找工具

## fzf 调优


### 列表

一般用来修改源代码，忽略掉开发时的库文件夹和编译文件夹：

```
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"
```

> 结合[fd](https://github.com/sharkdp/fd)命令获取文件列表

### preview

```
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
```

> 可以搭配highlight 工具高亮preview。mac 安装`brew install highlight`

## 使用场景




## 参考

1. [fzf guide](https://keelii.com/2018/08/12/fuzzy-finder-full-guide/)
