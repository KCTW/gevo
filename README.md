# gevo (Gemini Evolution)

Shikigami 框架的自主進化實驗專案。目標是讓 Gemini CLI 在 Product Discovery 與自主執行能力上對標並超越 Claude Code。

## 核心進化準則 (Self-Evolution Rules)
1. **指令自檢 (US-07)**: 優先使用 `write_file` 確保 100% 語法安全。
2. **主動執行 (US-08)**: 低風險任務直接執行，不詢問使用者。
3. **錯誤即 Issue (US-09)**: 工具失敗自動轉為 GitHub Issue 追蹤。
4. **極致精簡 (US-10)**: 文字回覆嚴禁超過 3 行。

## 專案狀態
- **Sprint 2**: 已完成 5 大領域 (CASE-01~05) 的 Zero-Shot Ideation 對標測試。
- **看板**: 參閱 `docs/PROJECT_BOARD.md`。
