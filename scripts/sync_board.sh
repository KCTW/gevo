#!/bin/bash
# scripts/sync_board.sh
# 目的：對齊 GitHub Issues 狀態至本地 PROJECT_BOARD.md

set -e

echo "開始同步看板與 GitHub Issues..."

# 1. 取得所有 Backlog 項目的最新狀態
ISSUES_JSON=$(gh issue list --label "type: backlog-item" --state all --json number,title,labels,state)

# 2. 產出摘要供主 session 參考
echo "當前 GitHub Backlog 狀態："
echo "$ISSUES_JSON" | jq -r '.[] | "#\(.number) \(.title) [\(.state)] Labels: \(.labels | map(.name) | join(", "))"'

# 3. 提示 (本腳本僅產出分析，不自動覆寫文件以防意外)
echo "------------------------------------------------"
echo "同步建議：請根據上方清單更新 docs/PROJECT_BOARD.md 的 [Done] 或 [Backlog] 區塊。"
echo "若要自動化覆寫，請在下次 Sprint 時升級此腳本。"
