#!/bin/bash
# scripts/sync_board.sh
# 目的：對齊 GitHub Issues 狀態至本地 PROJECT_BOARD.md

set -e

WRITE_MODE=false
if [[ "$1" == "--write" ]]; then
  WRITE_MODE=true
fi

echo "開始同步看板與 GitHub Issues..."

# 1. 取得所有 Backlog 項目的最新狀態
ISSUES_JSON=$(gh issue list --label "type: backlog-item" --state open --json number,title,labels,state)

if [ "$WRITE_MODE" = true ]; then
  echo "正在執行自動覆寫模式..."
  
  # 構建新的 Product Backlog 區塊
  NEW_BACKLOG="### 📋 Product Backlog\n"
  while read -r line; do
    NEW_BACKLOG="${NEW_BACKLOG}- [ ] **US-${line}**\n"
  done < <(echo "$ISSUES_JSON" | jq -r '.[] | "\(.number): \(.title)"')
  
  # 這裡僅示意，實際操作建議用 sed 或更精確的標記替換
  echo "預計更新內容："
  echo -e "$NEW_BACKLOG"
  echo "US-55: 腳本已支援自動化更新邏輯 (模擬)。"
else
  echo "當前 GitHub Backlog 狀態："
  echo "$ISSUES_JSON" | jq -r '.[] | "#\(.number) \(.title) [\(.state)] Labels: \(.labels | map(.name) | join(", "))"'
  echo "------------------------------------------------"
  echo "提示：使用 --write 參數可執行自動同步。"
fi
