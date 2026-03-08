#!/bin/bash
# scripts/auto_sprint.sh
# 目的：自動化執行 Shikigami Sprint 流程

set -e

COMMAND=$1

case $COMMAND in
  "start")
    echo "開始自動化 Sprint Planning..."
    gemini "/sprint-planning"
    ;;
  "run")
    echo "開始自動化 Sprint Execution..."
    gemini "/sprint-execution"
    ;;
  "finish")
    echo "開始自動化 Sprint Review..."
    gemini "/sprint-review"
    ;;
  *)
    echo "用法: $0 {start|run|finish}"
    exit 1
    ;;
esac
