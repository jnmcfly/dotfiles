#!/usr/bin/env bash

MOOD=$1
BLUR=${2:=false}

case "$(xrandr | grep -wc connected )" in
  1) bspc monitor %eDP-1 -d sh browser code slack discord lens 1 2 3 4 5;
    feh --bg-fill "${HOME}/.wallpapers/${MOOD}/secondary$($BLUR && echo "_blur").jpg";
  ;;
  2) ~/.screenlayout/dual.sh;
    bspc monitor %HDMI-1 -d sh browser code e1 e2 e3 e4 lens && bspc monitor %eDP-1 -d slack discord 1 2 3;
    feh --bg-fill "${HOME}/.wallpapers/${MOOD}/primary$($BLUR && echo "_blur").jpg" "${HOME}/.wallpapers/${MOOD}/secondary$($BLUR && echo "_blur").jpg";
  ;;
  *) echo default
  ;;
esac
