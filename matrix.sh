#!/bin/bash

# make sure cmatrix is installed
# make sure tmux is installed
# $ chmod 755 matrix
# $ ./matrix

SESSION=$USER

tmux -2 new-session -d -s $SESSION 'cmatrix'
tmux split-window -h -p 80 'cmatrix'
tmux split-window -h -p 20 'cmatrix'
tmux select-pane -t 1
tmux split-window -v -p 80
tmux split-window -v -p 20 'cmatrix'
tmux select-pane -t 2
tmux attach
