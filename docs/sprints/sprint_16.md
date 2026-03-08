# Sprint 16: 生態系註冊與提示詞優化 (Ecosystem & Intelligence)

## Sprint 目標
建立 Agent 能力的集中註冊表，並實作基於歷史錯誤 (RCA) 自動優化提示詞的機制。

## 權重調整記錄
持續穩定，維持目前審查權重

## Sprint Backlog

| Story ID | 標題 | T-shirt | 驗收標準摘要 | 狀態 |
|----------|------|---------|------------|------|
| US-32 | 建立 Agent 生態系統註冊表 | M | 建立全域的 Skills 註冊表，方便 Agent 查詢能力 | 完成 |
| US-36 | 基於 RCA 的提示詞優化 | M | 讀取 RCA 記錄自動推薦 Prompt 補丁 | 完成 |
| US-38 | 自主化文件更新系統 | S | 腳本自動對齊 README 與原始碼狀態 | 完成 |

## 執行計畫

### Phase 1: 生態系與文件
- **US-32**: 建立 `docs/framework/Ecosystem_Registry.md`。
- **US-38**: 實作 `scripts/auto_doc_update.sh`。

### Phase 2: 智慧演進
- **US-36**: 實作 `scripts/prompt_optimizer.sh` 分析 RCA 並生成補丁。
