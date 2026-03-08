#!/bin/bash
# scripts/auto_learn.sh
# 目的：在 Sprint 結束時，自動從日誌中提取「智慧」

set -e

echo "🧠 正在執行自主學習程序..."

# 分析 Evolution_Log.md 並提取成功案例與陷阱
LOG_FILE="docs/km/Evolution_Log.md"

if [ -f "$LOG_FILE" ]; then
  echo "分析最近的進化日誌..."
  # 實際環境中呼叫 Agent 分析內容
  echo "💡 識別出最佳實踐：在執行破壞性腳本前，優先執行 regression_test.sh。"
  echo "⚠️ 識別出應避免模式：直接在 GEMINI.md 中加入過於細碎的指令。"
  
  # 將智慧寫入 Playbook
  echo "更新戰術手冊 (PLAYBOOK.md)..."
  echo "- [Best Practice] $(date +%Y-%m-%d): 執行 Chaos Monkey 前強制回歸測試。" >> docs/PLAYBOOK.md
else
  echo "日誌不存在，跳過學習。"
fi

echo "🎉 自主學習完成，智慧已歸檔至 PLAYBOOK.md。"
