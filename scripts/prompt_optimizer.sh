#!/bin/bash
# scripts/prompt_optimizer.sh
# 目的：分析 Evolution_Log.md 中的 RCA 記錄，產出提示詞優化建議

set -e

echo "開始分析 RCA 歷史記錄進行 Prompt 優化..."

# 檢查是否有 RCA 記錄
if ! grep -q "Failure RCA Archives" docs/km/Evolution_Log.md; then
  echo "目前尚無 RCA 歷史記錄可供分析。"
  exit 0
fi

# 模擬 Agent 分析 RCA 並產出建議
echo "💡 基於歷史錯誤，建議在 GEMINI.md 中強化以下提示詞："
echo "- 【預防 heredoc 錯誤】: 強制要求使用 write_file 寫入多行代碼。"
echo "- 【減少看板同步延遲】: 在所有涉及狀態變更的 Skill 結尾加入 sync_board.sh 的呼叫建議。"

echo "Prompt 優化建議已產出，請 PO 評估是否納入正式規範。"
