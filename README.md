
# vimrc

```
Vim settings, plugins...
```

##	Dirtree

```
.
├── install             " auto install script
├── package
│   ├── ccglue-release-0.6.0.tar.bz2
│   ├── cscope-15.8a.tar.gz
│   ├── ctags-5.8.tar.gz
│   ├── global-6.3.3.tar.gz
│   ├── global-6.5.5.tar.gz
│   ├── vim-7.4.tar.bz2
│   └── vim-8.0.tar.bz2
├── README.md           " this doc
├── scripts
│   ├── ktags           " kernel tag script
│   ├── mtags           " tag for macOS, same tags
│   ├── tags            " general tag script
│   └── vimdir_tar.sh   " tar .vim dir script
└── vimrc               " vim runcomm

```

## Install

for Unix-like(Mac, Linux):

```
$ git clone https://github.com/oujf/vim-install.git ./vim-install
$ cd vim-install
$ ./install
$ ./install_mac		//for macOS install

Launch `vim` and run `:PluginInstall`
Start install from command line: `vim +PluginInstall +qall`

For macOS
$ brew install vim --with-override-system-vi --with-python3 --with-lua
$ mkdir -p ~/.vim
$ mkdir -p ~/.vim/.swap
$ mkdir -p ~/.vim/.undodir
$ cp -v vimrc ~/.vim/vimrc
$ cp -rf scripts/ ~/.vim/
$ sudo ln -s ~/.vim/scripts/ktags /usr/local/bin/ktags
$ sudo ln -s ~/.vim/scripts/tags /usr/local/bin/tag
```
