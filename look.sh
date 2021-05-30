#!/usr/bin/env bash

# shopt -s lastpipe
git diff --cached --name-only | \
 GREP_COLOR='4;5;37;41' xargs grep --color --with-filename -ni '@nocheckin' >&2 \
 && exit 1
