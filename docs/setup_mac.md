# zsh

Setup .zshrc

```zsh:.zshrc
PROMPT='%F{red}𝞴 %F{cyan}%1~ %F{cyan}$ %F{reset}'

# Util
alias lo="tr A-Z a-z"
alias up="tr a-z A-Z"
alias c="pbcopy"
alias ts="date +%s"

#Git
alias gcm="git commit -m "
alias gco="git checkout "
alias gcod="git checkout develop"
alias gad="git add"
alias gada="git add -A "
alias gst="git status"
alias g="git"
alias gbr="git branch"
alias gpso="git push origin"
alias gpsn="git push new"
alias gc="git clean -f -d"
alias gl="git log"
alias gplo="git pull origin"
alias grs="git reset"
alias gcmne="git commit --amend --no-edit"
alias grd="git rebase origin/develop"
alias grc="git rebase --continue"

alias ls='ls -G'
export LSCOLORS=Cxfxcxdxbxegedabagacad

# Go
export GOPATH=~/go

# C++
alias a="./a.out"
```

# iTerm2

* Install [dracula](https://draculatheme.com/iterm) theme
* General -> Theme -> Dark
* Profile -> Colors
    - Cyan normal 77,196,255. light 77,211,255
* Profile -> Text -> Font
    - Courier/Consolas Regular 13
* Profile -> Window
    - Columns 100, Rows 35
* Profile -> Terminal 
    - Uncheck Show bell icon on tabs
    - Check Silence bell

# Vim

Setup .vimrc

```vim:.vimrc
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sheerun/vim-polyglot'
call vundle#end()

syntax enable
filetype plugin indent on

set directory=$HOME/.vim/swap
set visualbell t_vb=
set fileencoding=utf-8
set fileformats=unix
set fileformat=unix
set nobomb
set number
set autoindent tabstop=2 shiftwidth=2 expandtab smarttab
set clipboard=unnamed
autocmd FileType c,cpp,java set cindent tabstop=4 shiftwidth=4 cinoptions=:0g0t0(sus
imap <S-Space> <Space>

set colorcolumn=81
highlight ColorColumn guibg=black

highlight Tab ctermbg=lightblue guibg=lightblue
call matchadd("Tab", "\t")

highlight WhitespaceEOL ctermbg=red guibg=red
call matchadd("WhitespaceEOL", "\\s\\+$")
autocmd BufEnter *.py set ts=2 sw=2
```

Create swap folder

```sh
mkdir .vim/swap 
```

Install vundle 

```zsh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Install plugin from vim command line

```
:PluginInstall
```

# Alfred

Install from [here](https://www.alfredapp.com/)

# SSH

Generat ssh key

```bash
ssh-keygen -t rsa -C your@email.com
```

# Git

```bash
git config --global user.email "Your Email"
git config --global user.name "Your name"
git config --global push.default current
```

# C++

```bash
brew install gcc
```
