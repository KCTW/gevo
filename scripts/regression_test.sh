#!/bin/bash
# scripts/regression_test.sh
# 目的：確保專案的「進化規則」未被破壞或遺失

set -e

echo "開始執行進化回歸測試 (Evolution Regression Test)..."

# 1. 檢查 GEMINI.md 是否包含 5 大支柱
echo "檢查 5 大進化支柱完整性..."
REQUIRED_PILLARS=("Autonomy & Proactivity" "Integrity & Automation" "Self-Healing RCA" "Quality & Depth" "Conciseness & Efficiency")

for pillar in "${REQUIRED_PILLARS[@]}"; do
  if ! grep -q "$pillar" GEMINI.md; then
    echo "❌ 錯誤：GEMINI.md 遺失核心支柱 '$pillar'，發生回歸！"
    exit 1
  fi
done
echo "✅ 5 大核心支柱檢查通過。"

# 2. 檢查核心腳本是否齊全
echo "檢查核心腳本狀態..."
REQUIRED_SCRIPTS=("scripts/auto_sprint.sh" "scripts/sync_board.sh" "scripts/quality_gate.sh" "scripts/common.sh")

for script in "${REQUIRED_SCRIPTS[@]}"; do
  if [ ! -x "$script" ]; then
    echo "❌ 錯誤：腳本 '$script' 遺失或缺乏執行權限！"
    exit 1
  fi
done
echo "✅ 核心腳本檢查通過。"

echo "🎉 回歸測試通過！系統處於穩定進化狀態。"
