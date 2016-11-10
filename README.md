
# vimrc

```
Vim settings, plugins...
```

##	Dirtree

```
.
├── colors				" theme
├── install				" ./install
├── package
│   ├── ccglue-release-0.6.0.tar.bz2
│   ├── global-6.3.3.tar.gz
│   ├── cscope-15.8a.tar.gz
│   ├── ctags-5.8.tar.gz
│   └── vim-7.4.tar.bz2
├── README.md			" this
├── scripts
│   ├── ktags			" kernel tag script
│   ├── tags			" general tag script
│   └── vimdir_tar.sh	" tar .vim dir
└── vimrc				" vim runcomm

```

## Install

for Unix-like(Mac, Linux):

```
$ git clone git@github.com:oujf/vim-install.git ./vim-install
$ cd vim-install
$ ./install

Launch `vim` and run `:PluginInstall`
Start install from command line: `vim +PluginInstall +qall`
```
