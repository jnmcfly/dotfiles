#!/bin/sh

MODE_FILE="$HOME/.config/polybar/info-timew.mode"

if [ ! -f "${MODE_FILE}" ]; then
  touch "${MODE_FILE}"
  echo "d" > "${MODE_FILE}"
fi

ACTUAL_MODE=$(cat "${MODE_FILE}")

if timew > /dev/null 2>&1; then
  if [ "$ACTUAL_MODE" = "w" ]; then
    printf '{"text": "%s/week", "class": "true"}' "$(timew summary :week | awk '{print $NF}' | tail -2 | head -1)"
  else
    printf '{"text": "%s/day", "class": "true"}' "$(timew summary :day | awk '{print $NF}' | tail -2 | head -1)"
  fi
else
    printf '{"text": "no tracking", "class": "false"}'
fi



if [ "${1}" = "--weekday" ]; then
  if [ "$ACTUAL_MODE" = "w"  ]; then
    echo "d" > "${MODE_FILE}"
  else
    echo "w" > "${MODE_FILE}"

  fi
fi


if [ "${1}" = "--toggle" ]; then
    if timew; then
        timew stop;
    else
        timew start;
    fi
fi
