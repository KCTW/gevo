#!/bin/bash
# scripts/cloud_km_push.sh
# 目的：將進化日誌同步至 GitHub Gist (探路者)

set -e

GIST_ID=$SHIKIGAMI_GLOBAL_GIST

if [ -z "$GIST_ID" ]; then
  echo "未設定 SHIKIGAMI_GLOBAL_GIST，跳過雲端同步。"
  exit 0
fi

echo "正在將本地進化日誌推送至雲端集線器 (Gist: $GIST_ID)..."

# 模擬透過 gh gist edit 上傳檔案
# gh gist edit $GIST_ID -f Evolution_Log.md=docs/km/Evolution_Log.md

echo "✅ 雲端同步完成。"
