#!/bin/bash
# scripts/km_sync.sh
# 目的：跨專案同步進化日誌

set -e

REMOTE_REPO=$1

if [ -z "$REMOTE_REPO" ]; then
  echo "用法: $0 <遠端專案 Git URL>"
  exit 1
fi

echo "正在同步來自 $REMOTE_REPO 的進化知識..."

# 模擬克隆並提取日誌
mkdir -p tmp_sync
git clone --depth 1 $REMOTE_REPO tmp_sync/remote_project

if [ -f "tmp_sync/remote_project/docs/km/Evolution_Log.md" ]; then
  echo -e "

# --- 來自遠端專案的知識同步 ($(date)) ---
" >> docs/km/Evolution_Log.md
  cat tmp_sync/remote_project/docs/km/Evolution_Log.md >> docs/km/Evolution_Log.md
  echo "✅ 知識已成功合併。"
else
  echo "⚠️ 遠端專案不含 Evolution_Log.md，同步終止。"
fi

rm -rf tmp_sync
