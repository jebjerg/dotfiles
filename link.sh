#!/bin/bash
# use repo as PWD
function usage() {
    echo "Usage: link.sh all|[notion|vim|xorg|zsh]+"
}

function link_notion() {
    [[ ! -d $HOME/.notion ]] && mkdir $HOME/.notion
    [[ -d $HOME/.notion ]] && ln -s $PWD/notion/*.lua $HOME/.notion/ >/dev/null 2>&1 || echo "Unable to symlink notion"
}

function link_vim() {
    ln -s $PWD/vim/.vimrc $HOME/.vimrc >/dev/null 2>&1 || echo "Unable to symlink vim"
}

function link_xorg() {
    ln -s $PWD/xorg/.xinitrc $HOME/.xinitrc >/dev/null 2>&1 || echo "Unable to symlink xinitc"
    ln -s $PWD/xorg/.Xresources $HOME/.Xresources >/dev/null 2>&1 || echo "Unable to symlink Xresources"
}

function link_zsh() {
    ln -s $PWD/zsh/.zshrc $HOME/.zshrc >/dev/null 2>&1 || echo "Unable to symlink zsh"
    ln -s $PWD/zsh/cheerful.zsh-theme $HOME/.oh-my-zsh/themes/cheerful.zsh-theme >/dev/null 2>&1 || echo "Unable to symlink zsh theme"
}

[[ $# -gt 0 ]] && for ARG in $*
do
    case $ARG in
        notion)
            link_notion
            ;;
        vim)
            link_vim
            ;;
        xorg)
            link_xorg
            ;;
        zsh)
            link_zsh
            ;;
        all)
            link_notion
            link_vim
            link_xorg
            link_zsh
            ;;
        *)
            usage
    esac
done || usage
