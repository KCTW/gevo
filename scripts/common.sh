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

# 產出標準化的 RCA 紀錄 (模擬)
log_failure() {
  echo "執行 RCA：$1" >> docs/km/Evolution_Log.md
}
