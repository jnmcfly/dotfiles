#!/bin/bash

query=$(kubectl get ns -o json | \
  jq -r '.items[].metadata.name' | \
  rofi -dmenu -i -matching fuzzy -p " $(kubectl config current-context)" -theme ~/.config/rofi/themes/kubens.rasi)
if [[ $query ]]; then
  kubectl config set-context "$(kubectl config current-context)" --namespace "${query}"
else
  exit 0
fi


