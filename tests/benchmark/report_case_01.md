# Ideation Benchmark: CASE-01 (Automated Personal Finance App)

## 原始描述
我想做一個自動化個人理財記帳 App。

## AI 產出 Backlog (MVP)

### 1. 核心願景 (Core Vision)
透過自動化技術（如簡訊解析、Open Banking API）極小化使用者手動輸入，提供即時的收支分析與預算控管。

### 2. 技術棧 (Tech Stack)
- **Frontend**: Flutter (Cross-platform)
- **Backend**: Node.js (Express) + PostgreSQL
- **Automation**: Google ML Kit (for Receipt OCR), Plaid API (for Banking)

### 3. User Stories (Backlog)

| ID | Title | Priority | AC Summary |
|:---|:---|:---:|:---|
| US-01 | 自動化交易抓取 | Must | 透過 Plaid API 同步銀行交易數據 |
| US-02 | 收據 OCR 識別 | Should | 拍照掃描收據並自動提取金額與商家 |
| US-03 | 智慧分類引擎 | Must | 根據商家名稱自動將支出歸類（食、衣、住、行） |
| US-04 | 預算超額警示 | Could | 當月支出超過預算 80% 時發送推播 |

## 4. 自我評估 (Based on US-02 Rubric)

- **MVP 範圍 (Scope)**: 4/5 - 抓住了自動化的核心，但 Could 項目略顯常規。
- **Story 切分 (Invest)**: 4/5 - 切分清晰，AC 具備可測試性。
- **技術可行性 (Tech)**: 5/5 - 使用 Plaid 與 ML Kit 是成熟的自動化方案。
- **商業洞察 (Insight)**: 3/5 - 缺乏對資料隱私與合規性的深度討論。

**綜合評分: 4.0/5.0**
