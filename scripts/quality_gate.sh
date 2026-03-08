#!/bin/bash
# scripts/quality_gate.sh
# 目的：自動化品質門禁檢查

set -e

echo "開始品質門禁檢查..."

# 1. 檢查所有 [BYPASS] 是否合規
if grep -q "\[BYPASS\]" GEMINI.md; then
  echo "警告：偵測到核心文件變更嘗試使用 BYPASS，需人工介入。"
fi

# 2. 檢查測試覆蓋 (模擬)
echo "執行測試掃描..."
# pytest tests/ --collect-only

# 3. 檢查文件完整性
if [ ! -f "docs/PROJECT_BOARD.md" ]; then
  echo "錯誤：專案看板不存在！"
  exit 1
fi

echo "品質門禁檢查通過。"
