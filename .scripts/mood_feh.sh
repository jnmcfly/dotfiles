#!/bin/bash

main() {
  
  feh --randomize --bg-fill "${HOME}"/.wallpapers/"${1}"/ &

}

main $MOOD
