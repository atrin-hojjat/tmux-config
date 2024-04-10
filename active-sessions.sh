#!/bin/sh
windows=$(tmux ls -F "#{session_name}")

selected=$(printf "$windows" | fzf)

if [[ -z $selected ]]; then
	exit 0
fi

tmux switch -t $selected
