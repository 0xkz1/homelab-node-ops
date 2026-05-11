#!/bin/bash

# セッション名とウィンドウ名
SESSION_NAME="nodes"
WINDOW_NAME="dashboard"

# 1. 既存の同名セッションがあれば終了
tmux kill-session -t $SESSION_NAME 2>/dev/null

# 2. 新しいセッションを作成（ウィンドウ名を指定）
tmux new-session -d -s $SESSION_NAME -n $WINDOW_NAME "bash"

# 3. ペインを分割して合計9つにする（分割ごとにtiledを実行）
for i in {1..8}; do
  tmux split-window -t $SESSION_NAME:$WINDOW_NAME "bash"
  tmux select-layout -t $SESSION_NAME:$WINDOW_NAME tiled
done

# 4. 画面の初期化を待つ
sleep 1

# 5. 各ペインにコマンドを送信（お使いの環境に合わせて 1番から開始）
# [Pane 1] Rl-swarm
tmux send-keys -t $SESSION_NAME:$WINDOW_NAME.1 "cd ~/rl-swarm && source .venv/bin/activate && ./run_rl_swarm.sh" C-m

# [Pane 2] Block-Assist
tmux send-keys -t $SESSION_NAME:$WINDOW_NAME.2 "cd ~/Block-Assist && python run.py" C-m

# [Pane 3] Nexus
tmux send-keys -t $SESSION_NAME:$WINDOW_NAME.3 "nexus-network start" C-m

# [Pane 4] Gaianet
tmux send-keys -t $SESSION_NAME:$WINDOW_NAME.4 "gaianet start" C-m

# [Pane 5] Inference
tmux send-keys -t $SESSION_NAME:$WINDOW_NAME.5 "cd ~/.inference && ./inference-cli-linux-amd64/binaries/0.3.262 node start" C-m

# 最初のペイン（1番）にフォーカス
tmux select-pane -t $SESSION_NAME:$WINDOW_NAME.1

# アタッチ
tmux attach-session -t $SESSION_NAME
