# Web3 Node Ops Console

## Overview
This repository contains my personal infrastructure configurations, custom Dockerfiles, and automation scripts used to deploy, manage, and maintain experimental Web3 and AI compute nodes (e.g., Gensyn, Gaianet, Drosera) in a headless Linux environment.

Many of these alpha-stage projects are inherently unstable. This repository serves as a record of my work identifying bugs, providing detailed feedback and logs to the core dev teams (often via Discord), and refining my local Docker/Tmux deployment configurations to ensure these decentralized systems operate reliably as they evolve.

## Upstream / Related Projects
These are the upstream projects and references that informed the nodes operated in this repository:

- Aztec: https://docs.aztec.network/operate/operators/setup/registering_sequencer
- Gensyn rl-swarm: https://github.com/gensyn-ai/rl-swarm 
- Gensyn BlockAssist: https://github.com/gensyn-ai/blockassist
- Gaianet: https://github.com/gaianet-ai/gaianet-node
- Nexus Network: https://docs.nexus.xyz/network/proving-on-the-layer-1/contribute-via-cli


## Repository Contents
* **`rl-swarm/`**: Contains custom `Dockerfile.webserver` and `.sh` initialization scripts designed to containerize and deploy complex dependency-heavy software.
* **`gaianet/`**: Custom node configurations (`config.json`) deployed for AI node orchestration.
* **`aztec/`**: `docker-compose.yml` demonstrating multi-container orchestration.
* **`nexus-network/`**: Configuration manifests for node tuning.

## Execution Strategy (`Tmux`)
Relying on a unified, fully automated master launch script for these bleeding-edge setups often introduces massive single points of failure due to frequent upstream breaking changes.

Instead, I orchestrate these nodes using a decoupled environment via `tmux`. This isolates dependencies, allows granular monitoring per-node, and enables surgical updates and troubleshooting without causing cascading downtime across the broader homelab architecture.

## Workflow & Issue Resolution
Since these are early-stage decentralized networks, undocumented crashes are frequent. My workflow heavily relies on diagnosing infrastructure issues (networking, dependency conflicts), extracting actionable stack traces, and communicating bugs directly with the core dev teams (often via Discord) to test and deploy hotfixes locally.

## Operational History & Proof of Work
### Terminal Environment
To maintain professional-grade persistent environments, I use `tmux`. My personal configuration (`.tmux.conf`) is included in the root of this repository, showing my custom plugin and session management setup.

### Operational Dashboards
The following snapshots capture the stable uptime and network contributions achieved during my active operation phase (Jan–Feb 2026):

- **rl-swarm Dashboard:**
  ![rl-swarm](Proof-Of-Work/Rl-swarm_Screenshot%202026-04-26%20at%2017.13.13.png)
- **Gaianet Dashboard:**
  ![Gaianet](Proof-Of-Work/Gaianet_Screenshot%202026-04-26%20at%2017.32.40.png)

---

# (Japanese) Web3 Node Ops Console

## 概要
このリポジトリは、ヘッドレスLinux環境において実験的なWeb3およびAIノード（Gensyn、Gaianet、Droseraなど）をデプロイ・管理・維持するために作成した、個人的なインフラ構成ファイル、カスタムDockerfile、自動化スクリプトの集積です。

アルファ段階のプロジェクトは本質的に不安定です。本リポジトリは、ノード運用中に遭遇したバグの特定やコア開発チームへの詳細なフィードバック（ログの提供等）を行い、提供された修正を自身の環境に反映させながら、DockerやTmuxを用いたデプロイ設定を最適化して安定稼働を維持してきたプロセスの記録です。

## 内容物
* **`rl-swarm/`**: 複雑な依存関係を持つソフトウェアをコンテナ化してデプロイするためのカスタム `Dockerfile.webserver` および初期化スクリプト (`.sh`)。
* **`gaianet/`**: AIノードオーケストレーション用のカスタムノード設定 (`config.json`)。
* **`aztec/`**: マルチコンテナの起動を管理する `docker-compose.yml`。
* **`drosera-trap/`**: ノードチューニング用のマニフェストファイル。

## 運用戦略 (`Tmux`)
頻繁に破壊的なアップデートが走る最先端のシステムにおいて、すべてを一つの自動化起動スクリプトに依存させると、致命的な単一障害点が生じます。

これを避けるため、私は `tmux` の個別セッションを用いた非依存型の実行環境を構築しています。これにより、ノードごとの細かなリソース監視が可能になり、環境全体をダウンさせることなく特定のノードだけのアップデートやトラブルシューティングを行うことができます。

## トラブルシューティングのワークフロー
開発初期のネットワークツールであるため、予期せぬクラッシュが頻発します。そのため、インフラやネットワークの競合エラーを特定して有用なログを抽出し、Discord等を通じて直接コア開発チームにエラー報告（エスカレーション）を行い、ローカルでテストしてパッチを適用するというサイクルを基本の運用フローとしています。

## 運用の実績と証明
### 実行環境
永続的な実行環境をプロフェッショナルに維持するため、`tmux` を活用しています。ルートディレクトリに含まれる `.tmux.conf` は、私がノード管理に使用している実際のプラグイン構成やセッション設定です。

### 運用ダッシュボード
以下のスクリーンショットは、2026年1月から2月の主要な稼働期間における、安定したアップタイムとネットワークへの貢献を証明する記録です。

- **rl-swarm:**
  ![rl-swarm](Proof-Of-Work/Rl-swarm_Screenshot%202026-04-26%20at%2017.13.13.png)
- **Gaianet:**
  ![Gaianet](Proof-Of-Work/Gaianet_Screenshot%202026-04-26%20at%2017.32.40.png)
