
# vimrc

```
Vim settings, plugins...
```

##	Dirtree

```
.
├── colors				" 配色
├── install				" ./install
├── package
│   ├── ccglue-release-0.6.0.tar.bz2
│   ├── cscope-15.8a.tar.gz
│   ├── ctags-5.8.tar.gz
│   └── vim-7.4.tar.bz2
├── README.md			" this
├── scripts
│   ├── ktags			" kernel tag script
│   ├── tags			" general tag script
│   └── vimdir_tar.sh	" 打包.vim目录
└── vimrc				" vim 配置文件

```

## Install

for Unix-like(Mac, Linux):

```
$ git clone git@github.com:oujf/vim-install.git ./vim-install
$ cd vim-install
$ ./install

Launch `vim` and run `:PluginInstall`
To install from command line: `vim +PluginInstall +qall`
```
