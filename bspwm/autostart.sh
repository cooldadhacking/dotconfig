dunst &
xsetroot -cursor_name left_ptr &
# xrandr -s 1920x1080 &
xbacklight -set 30 &
xinput set-prop 12 309 1 &
picom --config ~/.config/picom/picom.conf --experimental-backends &
feh --bg-fill ~/Pictures/cat-waves.png &
#nitrogen --restore &
# polybar example -c ~/.config/polybar/config.ini &
/home/f4ther/.config/polybar/launch.sh --blocks
ncmpcpp &
