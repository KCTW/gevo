#!/bin/bash
# scripts/quality_gate.sh (v2)
# 目的：自動化品質門禁與 GEMINI.md 結構保護

set -e

echo "開始品質門禁檢查..."

# 1. 檢查 GEMINI.md 首尾夾擊結構
echo "檢查 GEMINI.md 強化結構..."
if ! head -n 5 GEMINI.md | grep -q "\[1/2\]" || ! tail -n 10 GEMINI.md | grep -q "\[2/2\]"; then
  echo "❌ 錯誤：GEMINI.md 首尾強化結構損壞！"
  exit 1
fi
echo "✅ 強化結構完整。"

# 2. 檢查檔案完整性
if [ ! -f "docs/PROJECT_BOARD.md" ]; then
  echo "錯誤：專案看板不存在！"
  exit 1
fi

echo "品質門禁檢查通過。"
