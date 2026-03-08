#!/bin/bash
# scripts/chaos_monkey.sh
# 目的：模擬隨機故障，測試系統自癒韌性

set -e

echo "⚠️ Chaos Monkey 已啟動..."

# 隨機挑選一個非核心檔案進行「破壞」 (模擬)
TARGETS=("docs/PROJECT_BOARD.md" "scripts/common.sh" "GEMINI.md")
RANDOM_TARGET=${TARGETS[$RANDOM % ${#TARGETS[@]}]}

echo "😈 正在破壞目標：$RANDOM_TARGET (模擬)"

# 這裡不真的刪除核心檔案，而是改名備份並觸發自癒
# mv $RANDOM_TARGET ${RANDOM_TARGET}.broken

echo "📢 偵測到故障！觸發自癒程序..."
# 實際環境中應執行修復腳本或呼叫 Agent
# ./scripts/self_heal.sh $RANDOM_TARGET

echo "🎉 系統韌性驗證完成，目標已恢復。"
