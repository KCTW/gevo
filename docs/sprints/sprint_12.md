# Sprint 12: 對抗測試與自動重構 (Adversarial & Refactor)

## Sprint 目標
建立 Agent 間的對抗性測試環境以提升決策品質，並實作自動化重構引擎以優化代碼結構。

## 權重調整記錄
歷史資料不足 3 個 Sprint，跳過權重調整

## Sprint Backlog

| Story ID | 標題 | T-shirt | 驗收標準摘要 | 狀態 |
|----------|------|---------|------------|------|
| US-26 | 實作 Agent 對抗性測試環境 | L | 建立測試腳本讓 Architect 與 QA 互相比對 | 完成 |
| US-27 | 建立自動化代碼重構引擎 | M | 實作腳本偵測 code smell 並自動建議重構 | 完成 |
| #58 | retro: 評估全域 KM 雲端同步 | S | 產出可行性報告 | 完成 |

## 平行分群與執行計畫

### Phase 1: 對抗測試
- **US-26**: 實作 `scripts/adversarial_test.sh` 模擬衝突情境。

### Phase 2: 自動優化
- **US-27**: 建立 `scripts/auto_refactor.sh` 並整合 lint 工具。
- **#58**: 調研 GitHub Gist 或其他雲端 KM 同步方案。
