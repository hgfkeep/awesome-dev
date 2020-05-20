# oh my zsh


## 安装

安装命令；`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
配置文件的位置`~/.zshrc`

## 主题

修改配置文件的THEME部分，使用`ys` 主题


## 插件

1. zsh 的插件`zsh-autosuggestions`，直接在`plugins`属性中添加（安装方法`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`）。
2. 使用`zsh-syntax-highlighting` 插件实现命令语法高亮。安装：`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
3. 在`${HOME}/.zshrc` 中plusins配置中添加上述插件，例如：`plugins=(git zsh-syntax-highlighting zsh-autosuggestions )`
