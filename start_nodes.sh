#!/bin/bash

# セッション名
SESSION_NAME="nodes"

# 既にセッションが存在するか確認
tmux has-session -t $SESSION_NAME 2>/dev/null

if [ $? != 0 ]; then
  # 新しいセッションを作成し、最初のペインを開く
  tmux new-session -d -s $SESSION_NAME -n "dashboard" "bash"

  # 8回分割して合計9つのペインを作成
  for i in {1..8}; do
    tmux split-window -t $SESSION_NAME "bash"
  done

  # 3x3の均等なタイル状に再配置
  tmux select-layout -t $SESSION_NAME tiled

  # 【1】 Rl-swarm (左上)
  # .venvフォルダは存在していたので、sourceコマンドで仮想環境に入ります。
  tmux send-keys -t $SESSION_NAME:0.0 "cd ~/rl-swarm && source .venv/bin/activate && ./run_rl_swarm.sh" C-m

  # 【2】 blockassist (上中央)
  tmux send-keys -t $SESSION_NAME:0.1 "cd ~/Block-Assist && python run.py" C-m

  # 【3】 Nexus (右上)
  tmux send-keys -t $SESSION_NAME:0.2 "nexus-network start" C-m

  # 【4】 gaianet (中左)
  tmux send-keys -t $SESSION_NAME:0.3 "gaianet start" C-m

  # 【5】 inference (中中央)
  # ※コマンドが不明なため、推測のパスを入れています。正しいものに書き換えてください。
  # グローバルコマンドとしてインストールされている場合は、単純に "inference node start" などの可能性があります。
  tmux send-keys -t $SESSION_NAME:0.4 "cd ~/.inference && ./inference-cli-linux-amd64/binaries/0.3.262 node start" C-m

  # 【6】〜【9】 残りの空きペイン (中右〜下段)
  # 必要になったら以下をアンコメントして追加のツールを設定できます
  # tmux send-keys -t $SESSION_NAME:0.5 "echo 'Pane 6'" C-m
  # tmux send-keys -t $SESSION_NAME:0.6 "echo 'Pane 7'" C-m
  # tmux send-keys -t $SESSION_NAME:0.7 "echo 'Pane 8'" C-m
  # tmux send-keys -t $SESSION_NAME:0.8 "echo 'Pane 9'" C-m

  # 最初のペインにフォーカスを戻す
  tmux select-pane -t $SESSION_NAME:0.0
fi

# セッションにアタッチして画面を表示
tmux attach-session -t $SESSION_NAME
