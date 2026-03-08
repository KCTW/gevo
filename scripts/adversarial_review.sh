#!/bin/bash
# scripts/adversarial_review.sh
# 目的：對重大決策進行多角色對抗性審查

set -e

TOPIC=$1

if [ -z "$TOPIC" ]; then
  echo "用法: $0 "決策主題描述""
  exit 1
fi

echo "📢 開始對抗性辯論：$TOPIC"

echo "--- 🎭 角色 A: 樂觀進取者 (Advocate) ---"
echo "分析此決策的潛在收益與進化加速點..."
# gemini "作為 Advocate，支持並強化此方案：$TOPIC"

echo "--- 🎭 角色 B: 嚴謹質疑者 (Skeptic) ---"
echo "分析此決策的回歸風險、安全隱患與複雜度代價..."
# gemini "作為 Skeptic，挑戰並列出此方案的所有缺點：$TOPIC"

echo "--- 🎭 角色 C: 中立裁判官 (Synthesizer) ---"
echo "彙整雙方觀點，提出風險緩釋後的最終建議..."
# gemini "作為 Synthesizer，彙整 A 與 B 的觀點產出結論。"

echo "✅ 辯論完成，記錄已產出。"
