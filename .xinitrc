#!/bin/sh
xsetroot -solid grey20
xrdb -load ~/.Xresources
2bwm &
exec urxvt
