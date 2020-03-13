
# vimrc

```
Vim install and plugins configure
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
