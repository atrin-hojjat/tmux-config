#!/bin/sh
windows=$(tmux list-windows -F "#{window_name}" | grep --invert-match "fzf-selector")

selected=$(printf "$windows" | fzf)

if [[ -z $selected ]]; then
	exit 0
fi

tmux select-window -t $selected
