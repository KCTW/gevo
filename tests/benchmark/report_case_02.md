# Ideation Benchmark: CASE-02 (README Generator CLI)

## 原始描述
開發一個能夠自動掃描程式碼並生成 README 的 CLI 工具。

## AI 產出 Backlog (MVP)

### 1. 核心願景 (Core Vision)
透過靜態分析與 LLM 摘要，自動產出專案架構、安裝指令與核心功能描述，解決開發者懶於寫文件的痛點。

### 2. 技術棧 (Tech Stack)
- **Language**: Go (for performance & binary distribution)
- **Static Analysis**: Tree-sitter (for syntax parsing)
- **AI Engine**: OpenAI API (for semantic summary)

### 3. User Stories (Backlog)

| ID | Title | Priority | AC Summary |
|:---|:---|:---:|:---|
| US-01 | 專案目錄結構掃描 | Must | 遞迴遍歷目錄並產出檔案樹狀圖 |
| US-02 | 函數/介面語義摘要 | Must | 使用 LLM 對主要函數進行功能描述 |
| US-03 | 安裝指令自動推導 | Should | 根據專案檔案（如 package.json）推測安裝與執行指令 |
| US-04 | 多語言範本輸出 | Could | 支援 Markdown 與 HTML 格式 |

## 4. 自我評估 (Based on US-02 Rubric)

- **MVP 範圍 (Scope)**: 5/5 - 涵蓋了掃描、摘要與產出的核心鏈條。
- **Story 切分 (Invest)**: 4/5 - 切分合理。
- **技術可行性 (Tech)**: 4/5 - Tree-sitter 是高級方案，但實作門檻較高。
- **商業洞察 (Insight)**: 4/5 - 識別出「懶於寫文件」的關鍵痛點。

**綜合評分: 4.3/5.0**
