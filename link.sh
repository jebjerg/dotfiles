#!/bin/bash
# use repo as PWD
function usage() {
    echo "Usage: link.sh all|[fish|notion|tmux|vim|xorg|zsh]+"
}

function link_fish() {
    ln -s $PWD/fish/config.fish $HOME/.config/fish/config.fish >/dev/null 2>&1 || echo "Unable to symlink fish"
}

function link_notion() {
    [[ ! -d $HOME/.notion ]] && mkdir $HOME/.notion
    [[ -d $HOME/.notion ]] && ln -s $PWD/notion/*.lua $HOME/.notion/ >/dev/null 2>&1 || echo "Unable to symlink notion"
}

function link_tmux() {
    [[ ! -f $HOME/.tmux.conf ]] && [[ ! -L $HOME/.tmux.conf ]] && ln -s $PWD/tmux/.tmux.conf $HOME/.tmux.conf >/dev/null 2>&1 || echo "Unable to link tmux"
}

function link_vim() {
    ln -s $PWD/vim/.vimrc $HOME/.vimrc >/dev/null 2>&1 || echo "Unable to symlink vim"
    ([[ -d $HOME/.vim/ ]] && [[ ! -d $HOME/.vim/templates ]] && ln -s $PWD/vim/templates $HOME/.vim/) || echo "Unable to link templates"
}

function link_xorg() {
    ln -s $PWD/xorg/.xinitrc $HOME/.xinitrc >/dev/null 2>&1 || echo "Unable to symlink xinitc"
    ln -s $PWD/xorg/.Xresources $HOME/.Xresources >/dev/null 2>&1 || echo "Unable to symlink Xresources"
}

function link_zsh() {
    ln -s $PWD/zsh/.zshrc $HOME/.zshrc >/dev/null 2>&1 || echo "Unable to symlink zsh"
    ln -s $PWD/zsh/*.zsh-theme $HOME/.oh-my-zsh/themes/ >/dev/null 2>&1 || echo "Unable to symlink zsh theme"
}

[[ $# -gt 0 ]] && for ARG in $*
do
    case $ARG in
        fish)
            link_fish
            ;;
        notion)
            link_notion
            ;;
        tmux)
            link_tmux
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
            link_fish
            link_notion
            link_tmux
            link_vim
            link_xorg
            link_zsh
            ;;
        *)
            usage
    esac
done || usage
