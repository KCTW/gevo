#!/bin/bash
# scripts/common.sh
# 目的：存放各腳本共享的基礎邏輯

# 檢查檔案是否存在，不存在則報錯
check_file() {
  if [ ! -f "$1" ]; then
    echo "錯誤：檔案 $1 不存在！"
    exit 1
  fi
}

# 具備指數退避的重試函數 (US-41)
retry_with_backoff() {
  local max_attempts=3
  local timeout=1
  local attempt=1
  local exitCode=0

  while [ $attempt -le $max_attempts ]; do
    set +e
    "$@"
    exitCode=$?
    set -e

    if [ $exitCode -eq 0 ]; then
      return 0
    fi

    echo "⚠️ 指令失敗 (Exit Code: $exitCode)，正在進行第 $attempt 次重試..."
    sleep $timeout
    attempt=$((attempt + 1))
    timeout=$((timeout * 2))
  done

  echo "❌ 達到最大重試次數，任務失敗。"
  return $exitCode
}

