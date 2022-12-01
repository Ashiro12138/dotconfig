# dotconfig
Various dot config files

## Vim
### Install VimPlug
```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
### Install vim plugins
```
$ vim
```
```
:PlugInstall
```

## Powerlevel10k
```
$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
```
```
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```
To configure
```
$ p10k configure
```
When in doubt https://github.com/romkatv/powerlevel10k#manual
