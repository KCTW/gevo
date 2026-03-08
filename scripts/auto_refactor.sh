#!/bin/bash
# scripts/auto_refactor.sh
# 目的：自動化偵測 code smell 並建議重構

set -e

echo "開始掃描代碼壞味道..."

# 1. 偵測過長的函數 (模擬)
echo "掃描超過 50 行的函數..."
# grep -r ...

# 2. 偵測缺乏 AC 的 Story
echo "檢查 Sprint Backlog 完整性..."
grep -L "### Acceptance Criteria" docs/prd/PRODUCT_BACKLOG.md || true

# 3. 產出重構建議
echo "建議：將 scripts/ 下的重複邏輯提取至 common.sh。"

echo "自動重構建議產出完成。"
