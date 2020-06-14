# VIM

## 基本

### 跳转

```shell
ctrl + o # 向后跳【返回】
ctrl + i # 向前跳【跟进】
```

## 插件

### 插件安装（Vundle）

1. 克隆项目到本地
   `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. 配置vimrc文件
   `vim ~/.vimrc`修改内容为

   ```shell
    set nocompatible              " 这是必需的
    filetype off                  " 这是必需的

    " 在此设置运行时路径
    set rtp+=~/.vim/bundle/Vundle.vim
    " vundle初始化
    call vundle#begin()
    " 或者传递一个 Vundle 安装插件的路径
    "call vundle#begin('~/some/path/here')

    " 让 Vundle 管理 Vundle, 必须
    Plugin 'VundleVim/Vundle.vim'

    " 下面是不同支持幅度的例子
    " 保持 Plugin 命令 在 vundle#begin 和 end 之间
    " plugin 在 GitHub 仓库
    Plugin 'tpope/vim-fugitive'
    " 来自http://vim-scripts.org/vim/scripts.html的插件
    " Plugin 'L9'
    " 未托管在GitHub上的Git插件
    " Plugin 'git://git.wincent.com/command-t.git'
    " 本地机器上的git软件库（即编写自己的插件时）
    " Plugin 'file:///home/gmarik/path/to/plugin'
    " sparkup vim脚本在名为vim的该软件库子目录下。
    " 传递路径，合理设置运行时路径。
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " 安装 L9 并避免名称冲突
    " different version somewhere else.
    " Plugin 'ascenator/L9', {'name': 'newL9'}

    "每个插件都应该在这一行之前  
    call vundle#end()            " 这是必需的
    filetype plugin indent on    " 这是必需的
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
    ```

3. 使用
    * 安装一个插件
    打开vim输入`:PluginInstall`。
    `:PluginInstall`命令会安装在.vimrc文件中列出来的所有插件。
    `:PluginInstall <plugin-name>` 安装指定的插件。
    从命令行安装`vim +PluginInstall +qall`。
    如果使用 fish shell 需要在.vimrc添加set shell=/bin/bash。

    * 清理未用插件
    打开vim输入`:PluginClean`
    从命令行安装`vim +:PluginClean`。

    * 搜索插件
    打开vim输入`:PluginSearch <text-list>`
    从命令行安装`vim +:PluginSearch <text-list>`。

4. 插件总结`https://blog.csdn.net/guyue35/article/details/54412428`

### 自动补齐、跳转（jedi-vim）

1. 在.vimrc 添加?jedi-vim 和 supertab

   ```shell
   call vundle#begin()
   #...
    Bundle 'davidhalter/jedi-vim'
    Bundle 'ervandew/supertab'
   #...
   call vundle#end()            " required
   filetype plugin indent on    " required
   ```

2. 打开 vim 使用 `:PluginInstall` 命令安装插件
3. 执行 下面命令
`cd ~/.vim/bundle/jedi-vim/ && git submodule update --init`
4. 在 .vimrc 添加

   ```shell
   let g:SuperTabDefaultCompletionType = "context"
   let g:jedi#popup_on_dot = 0
   ```

