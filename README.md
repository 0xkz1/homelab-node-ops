# Homelab Distributed Node Deployments & Ops

## Overview
This repository contains my personal collection of infrastructure configurations, custom Dockerfiles, and automation scripts used to deploy, manage, and maintain multiple decentralized compute and Web3 AI nodes (such as Gensyn, Gaianet, and Drosera) on a headless Linux environment.

Rather than developing the core node software, my focus here was on **DevOps, containerization, and system administration**. Many of these bleeding-edge projects have unstable official deployment guides; I successfully diagnosed build failures, customized Docker images, and managed their execution environments.

## Skills Demonstrated
- **Linux System Administration:** Persistent process management using CLI tools.
- **Containerization & CI/CD Troubleshooting:** Deep-diving into failing `Dockerfile`s to fix dependency conflicts, package mismatches, and build errors to ensure stable execution.
- **Bug Reporting & Core Team Escalation (The Rockstar Workflow):** Rather than working in a silo, I actively functioned as a frontline QA/DevOps tester for these alpha-stage Web3 tools. I encountered undocumented crashes, extracted relevant stack traces, and **communicated directly with the core developers via Discord**. I escalated complex issues to lead programmers, tested their hotfixes in my local environment, and established a continuous feedback loop. This perfectly mirrors the required process of handling incoming support requests and escalating issues to Tools Leads.

## Included Configurations
* **`rl-swarm/`**: Contains custom `Dockerfile.webserver` and `.sh` initialization scripts designed to containerize and deploy complex dependency-heavy software.
* **`gaianet/`**: Custom node configurations (`config.json`) deployed for AI node orchestration.
* **`aztec/`**: `docker-compose.yml` demonstrating multi-container orchestration.
* **`drosera-trap/`** & **`.inference/`**: Configuration manifests validating understanding of toml/json node tuning.

## Why `Tmux` over Full-Automation?
Due to the bleeding-edge nature of these distributed systems—which natively pull breaking updates frequently—relying on a unified full-automation launch script introduced massive single points of failure. 

Instead of an easily broken master script, I architected a persistent, decoupled execution environment using isolated `tmux` sessions. This design choice isolated dependencies and allowed for surgical updates natively, granular performance monitoring on an individual node basis, and immediate troubleshooting without causing cascading downtime across the entire architecture. 

## Validating `Tmux` Usage
To prove my proficiency with terminal multiplexing and persistent environments, I have included my personal `.tmux.conf` in the root of this repository. It includes my custom plugin configurations, keybindings, and environment settings that I used to manage these node clusters.

## Proof of Work (Node Dashboards)
Here are screenshots from the respective web dashboards of these decentralized networks, proving that my nodes were successfully deployed, maintained uptime, and accumulated contribution points:

*(Note: Add your screenshot images here via GitHub!)*
- **rl-swarm Dashboard:**
  ![rl-swarm points](Rl-swarm_Screenshot%202026-04-26%20at%2017.13.13.png)
- **Gaianet Dashboard:**
  ![Gaianet points]()

## Relevance to Development Support
Running experimental distributed nodes requires identical problem-solving methodologies to maintaining a game studio's automation pipelines. Whether it's fixing a broken CI/CD runner build, diagnosing why a data processing pipeline fails on a specific OS, or managing background processes, this homelab experience highlights my ability to jump into unfamiliar Linux/Docker environments and establish reliable tools support.

---

# (Japanese) ホームラボ：分散型ノードのデプロイと運用

## 概要
このリポジトリは、ヘッドレスLinux環境において、複数の分散型コンピューティングおよびWeb3のAIノード（Gensyn、Gaianet、Droseraなど）をデプロイし、管理・維持するために使用したインフラ設定、カスタムDockerfile、自動化スクリプトの個人的なコレクションです。

コアとなるノードソフトウェア自体を開発するのではなく、ここでは**DevOps、コンテナ化、システム管理**に焦点を当てています。これら最先端のプロジェクトの多くは、公式のデプロイガイドが不安定です。私はビルドの失敗を診断し、Dockerイメージをカスタマイズして、実行環境を構築・管理しました。

## 実証されているスキル
- **Linuxシステム管理:** CLIツールを使用した継続的なプロセス管理。
- **コンテナ化およびCI/CDのトラブルシューティング:** 失敗した`Dockerfile`を深く掘り下げ、依存関係の競合やパッケージの不一致、ビルドエラーを修正して安定した実行環境を確保。
- **バグ報告と開発コアチームへのエスカレーション (Rockstarのワークフロー):** 私は孤立して作業するのではなく、これらアルファ段階のWeb3ツールの最前線QA/DevOpsテスターとして機能しました。ドキュメント化されていないクラッシュに遭遇した際、関連するスタックトレースを抽出し、**Discord経由でコア開発者と直接コミュニケーションをとりました**。複雑な問題をリードプログラマーにエスカレーションし、彼らのホットフィックスをローカル環境でテストし、継続的なフィードバックループを確立しました。これは、「サポートリクエストを処理し、ツールリードに問題をエスカレーションする」という求人要件のプロセスと完全に一致する強みです。

## 含まれる構成ファイル
* **`rl-swarm/`**: カスタムの`Dockerfile.webserver`と初期化スクリプト(`.sh`)。複雑で依存関係の多いソフトウェアをコンテナ化してデプロイするために設計されたものです。
* **`gaianet/`**: AIノードのオーケストレーション用にデプロイされたカスタムノード構成（`config.json`）。
* **`aztec/`**: マルチコンテナのオーケストレーションを示す`docker-compose.yml`。
* **`drosera-trap/`** & **`.inference/`**: toml/jsonを使用したノードチューニングへの理解を示すための構成マニフェスト。

## なぜ完全自動化よりも`Tmux`を選んだのか？
頻繁に破壊的なアップデートを実行する最先端の分散システムの性質上、統合された完全自動化の起動スクリプトに依存すると、致命的な単一障害点が生じてしまいます。

容易に壊れるマスタースクリプトの代わりに、分離された`tmux`セッションを利用して、永続的で切り離された実行環境を構築しました。この設計アプローチにより、依存関係が細かく切り離され、個別のノードベースできめ細かいパフォーマンス監視が可能になります。結果として、アーキテクチャ全体へ影響を波及させることなく、ノード単体での段階的なアップデートと即座のトラブルシューティングが可能になりました。

## `Tmux` 使用の裏付け
ターミナルマルチプレクサと永続的な環境構築のスキルを証明するため、このリポジトリのルートに私の個人的な `.tmux.conf` を含めています。このファイルには、ノードクラスターを管理するために私がカスタマイズしたプラグイン、キーバインド、環境設定が記載されています。

## 運用実績の証明 (ノード・ダッシュボード)
以下は、各分散ネットワークのウェブダッシュボードのスクリーンショットです。これにより、各ノードが正常にデプロイされ、稼働時間を維持し、コントリビューションポイントを獲得していたことが証明されます。

*(※ここにGithub上でダッシュボードのスクリーンショット画像をドラッグ・アンド・ドロップで貼り付けてください)*
- **rl-swarm:**
  ![rl-swarm points](Rl-swarm_Screenshot%202026-04-26%20at%2017.13.13.png)
- **Gaianet:**
  ![Gaianet points]()

## 開発サポート（Development Support）職への親和性
実験的な分散ノードをゼロベースから運用することは、大規模ゲームスタジオのアセットやビルド自動化パイプラインを維持する上での問題解決手法と完全に一致しています。
CI/CDランナーのビルドエラー修正、データ処理パイプラインが特定のOSで失敗する理由の診断、バックグラウンドプロセスの監視など、このホームラボでのトラブルシューティング経験は、未知のLinux/Docker環境に飛び込み、信頼性の高いツール群のサポートを確立する能力を直接的に証明するものです。
