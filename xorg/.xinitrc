setxkbmap dk
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xmodmap $HOME/.Xmodmap
feh --bg-max lockbg.a.png
xrandr --output VGA-0 --left-of DVI-D-0
exec notion
