setxkbmap dk
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xmodmap $HOME/.Xmodmap
exec i3
