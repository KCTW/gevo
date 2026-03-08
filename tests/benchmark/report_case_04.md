# Ideation Benchmark: CASE-04 (Real-time Collaborative Code Sharing)

## 原始描述
做一個類似 GitHub Gist 但支援即時協作編輯的代碼分享平台。

## AI 產出 Backlog (MVP)

### 1. 核心願景 (Core Vision)
提供具備多人即時編輯與語法高亮能力的代碼片段分享工具，類似「代碼界的 Google Docs」。

### 2. 技術棧 (Tech Stack)
- **Editor**: Monaco Editor (VS Code core)
- **Real-time Engine**: Yjs (CRDT) + WebSockets
- **Backend**: Node.js (Socket.io) + Redis (for pub/sub)

### 3. User Stories (Backlog)

| ID | Title | Priority | AC Summary |
|:---|:---|:---:|:---|
| US-01 | 多人即時同步 | Must | 使用 CRDT 確保編輯衝突自動合併且延遲極低 |
| US-02 | 游標共享顯示 | Should | 顯示其他協作者的游標位置與名稱標籤 |
| US-03 | 代碼片段持久化 | Must | 生成唯一 URL 並儲存代碼、語言類型與標題 |
| US-04 | 唯讀/編輯模式切換 | Could | 支援產生僅限檢視的分享連結 |

## 4. 自由評估 (Based on US-02 Rubric)

- **MVP 範圍 (Scope)**: 5/5 - 即時同步與持久化是核心。
- **Story 切分 (Invest)**: 4/5 - CRDT 的實作應單獨拆分，US-01 略大。
- **技術可行性 (Tech)**: 5/5 - Yjs 是目前的黃金標準。
- **商業洞察 (Insight)**: 3/5 - 未討論協作者權限與安全性（防注入）。

**綜合評分: 4.3/5.0**
