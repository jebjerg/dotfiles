setxkbmap us
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xmodmap $HOME/.Xmodmap
feh --bg-max lockbg.a.png
autocutsel -fork &
autocutsel -selection PRIMARY -fork &
#xrandr --output DVI-D-0 --primary && exec openbox
xrandr --output VGA-0 --left-of DVI-D-0 --rotate left --auto --primary && exec notion
