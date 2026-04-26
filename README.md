# Homelab Distributed Node Deployments & Ops

## Overview
This repository contains my personal collection of infrastructure configurations, custom Dockerfiles, and automation scripts used to deploy, manage, and maintain multiple decentralized compute and Web3 AI nodes (such as Gensyn, Gaianet, and Drosera) on a headless Linux environment.

Rather than developing the core node software, my focus here was on **DevOps, containerization, and system administration**. Many of these bleeding-edge projects have unstable official deployment guides; I successfully diagnosed build failures, customized Docker images, and managed their execution environments.

## Skills Demonstrated
- **Linux System Administration:** Persistent process management using CLI tools.
- **Containerization & CI/CD Troubleshooting:** Deep-diving into failing `Dockerfile`s to fix dependency conflicts, package mismatches, and build errors to ensure stable execution.
- **Problem Solving & Support:** Diagnosing infrastructure and networking issues in complex, undocumented third-party software—similar to supporting custom internal tools in a large-scale development pipeline. 

## Included Configurations
* **`rl-swarm/`**: Contains custom `Dockerfile.webserver` and `.sh` initialization scripts designed to containerize and deploy complex dependency-heavy software.
* **`gaianet/`**: Custom node configurations (`config.json`) deployed for AI node orchestration.
* **`aztec/`**: `docker-compose.yml` demonstrating multi-container orchestration.
* **`drosera-trap/`** & **`.inference/`**: Configuration manifests validating understanding of toml/json node tuning.

## Why `Tmux` over Full-Automation?
Due to the bleeding-edge nature of these distributed systems—which natively pull breaking updates frequently—relying on a unified full-automation launch script introduced massive single points of failure. 

Instead of an easily broken master script, I architected a persistent, decoupled execution environment using isolated `tmux` sessions. This design choice isolated dependencies and allowed for surgical updates natively, granular performance monitoring on an individual node basis, and immediate troubleshooting without causing cascading downtime across the entire architecture. 

## Relevance to Development Support
Running experimental distributed nodes requires identical problem-solving methodologies to maintaining a game studio's automation pipelines. Whether it's fixing a broken CI/CD runner build, diagnosing why a data processing pipeline fails on a specific OS, or managing background processes, this homelab experience highlights my ability to jump into unfamiliar Linux/Docker environments and establish reliable tools support.
