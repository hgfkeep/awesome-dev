# Git alias 配置

emoji 风格的git commit 配置+ 命令行简化

```shell
alias gad="git commit -am"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias gl="git log"


function gcap() {
    git add . && git commit -m "$*" && git push
}

function gnew() {
    gcap "📦 New: $@"
}

function gimp() {
    gcap "👌 Improve: $@"
}

function gfix() {
    gcap "🐛 Fix: $@"
}

function grlz() {
    gcap "🚀 Release: $@"
}

function gdoc() {
    gcap "📖 Doc: $@"
}

function gtst() {
    gcap "✅ Test: $@"
}
```

## git log 效果

```
* f2dcc98 (HEAD -> master, origin/master) 👌 Improve: clean middle files
* 4b60ade 📦 New: why future is good
```
