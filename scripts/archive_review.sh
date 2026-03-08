#!/bin/bash
# scripts/archive_review.sh
# 目的：將對抗性辯論紀錄轉化為 ADR 補充材料

set -e

ADR_ID=$1

if [ -z "$ADR_ID" ]; then
  echo "用法: $0 <ADR 編號, 如 011>"
  exit 1
fi

ADR_FILE="docs/adr/ADR-${ADR_ID}.md"

if [ ! -f "$ADR_FILE" ]; then
  echo "❌ 錯誤：找不到 $ADR_FILE"
  exit 1
fi

echo "正在將辯論摘要附加至 $ADR_FILE..."

echo -e "
## 對抗性審查紀錄 (Adversarial Review)
" >> $ADR_FILE
echo "- **辯論日期**: $(date +%Y-%m-%d)" >> $ADR_FILE
echo "- **核心爭議**: [由 Agent 自動填寫]" >> $ADR_FILE
echo "- **最終共識**: [由 Agent 自動填寫]" >> $ADR_FILE

echo "✅ ADR 已更新。"
