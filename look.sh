#!/usr/bin/env bash

red=`tput setaf 1`
reset=`tput sgr0`

err_code=0
shopt -s lastpipe
grep -Rni '@nocheckin' $@ | while read -r line; do
    echo -e "${red}$line${reset}"
    err_code=1
done

exit $err_code
