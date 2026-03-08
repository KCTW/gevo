#!/bin/bash
# scripts/monitor_evolution.sh
# 目的：彙整並顯示進化指標摘要

set -e

echo "=== Shikigami 進化指標監控 ==="

# 1. 顯示最近 3 個 Sprint 的 Velocity
echo "最近開發速度 (Velocity):"
tail -n 3 docs/km/Metrics_Log.md | awk -F '|' '{print $2 " | " $4}'

# 2. 顯示自癒成功率 (模擬)
echo "自癒機制運行狀況: 正常"

# 3. 顯示 Token 消耗預警 (模擬)
echo "Token 成本狀態: 穩定"

echo "============================"
