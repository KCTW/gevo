#!/bin/bash
# scripts/auto_release.sh
# 目的：自動化版本發佈與部署

set -e

VERSION=$1

if [ -z "$VERSION" ]; then
  echo "請指定版本號 (如 v1.1.0)。"
  exit 1
fi

echo "準備發佈版本：$VERSION"

# 1. 執行品質門禁
./scripts/quality_gate.sh

# 2. 建立 Git Tag (模擬)
echo "建立 Git Tag $VERSION..."
# git tag -a $VERSION -m "Release $VERSION"

# 3. 產出 GitHub Release (模擬)
echo "產出 GitHub Release..."
# gh release create $VERSION --title "Release $VERSION" --notes "自動化發佈摘要"

echo "版本 $VERSION 發佈成功。"
