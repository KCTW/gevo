# Sprint 20: 規則自動熱更新 (Dynamic Patching)

## Sprint 目標
建立「規則熱更新」機制，讓 Agent 能自動將失敗教訓固化進 GEMINI.md，並確保提示詞結構的穩固。

## 權重調整記錄
首尾夾擊提示詞已啟用，觀察遵循率中。

## Sprint Backlog

| Story ID | 標題 | T-shirt | 驗收標準摘要 | 狀態 |
|----------|------|---------|------------|------|
| US-55 | 實作 prompt_patcher.sh | M | 自動從 RCA 提取規則並寫入 GEMINI.md | 完成 |
| US-56 | 升級 quality_gate.sh | S | 增加 GEMINI.md 首尾結構完整性檢查 | 完成 |

## 執行計畫

### Phase 1: 防禦加固
- **US-56**: 更新 `scripts/quality_gate.sh` 檢核夾擊結構。

### Phase 2: 自動演進
- **US-55**: 實作 `scripts/prompt_patcher.sh` 邏輯。
