#!/bin/bash
# scripts/prompt_patcher.sh
# 目的：自動將 RCA 教訓寫入 GEMINI.md

set -e

echo "正在執行規則熱更新 (Dynamic Patching)..."

LESSON=$1

if [ -z "$LESSON" ]; then
  echo "用法: $0 "一條新規則描述""
  exit 1
fi

# 在開發紅線區 (第 25 行左右) 插入新規則
sed -i "20i - [AUTO-PATCH] $(date +%Y-%m-%d): $LESSON" GEMINI.md

echo "✅ 規則已成功注入 GEMINI.md 中間段落。"
./scripts/quality_gate.sh
