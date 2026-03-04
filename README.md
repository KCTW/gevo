# gevo (Gemini Evolution) 🚀

`gevo` 是一個致力於讓 Gemini CLI 實現 **「自主進化 (Self-Evolution)」** 的實驗專案。目標是透過規則固化、高階推理與自癒機制，使其在 Product Discovery 與工程執行能力上對標並超越 Claude Code。

## 📊 進化里程碑
- **v1.0 (MVP) — ✅ 已交付**: 固化 20 項工程自動化規則。
  - **對標得分**: **4.76 / 5.0** (Gemini vs Claude Code 基準測試)。
  - **核心突破**: 精確掌握領域驅動設計 (DDD)、離線狀態機與租戶隔離等高階架構。
- **v1.1 (Expansion) — 🚀 進行中**: 實作系統自癒機制 (Self-Healing) 與能力封裝。

## 🛠️ 核心進化準則 (Top 10 Rules)
1. **指令自檢 (US-07)**: 優先使用 `write_file` 確保語法 100% 安全。
2. **主動執行 (US-08)**: 低風險任務（更新文件、修復 Bug）直接執行，不詢問使用者。
3. **錯誤即 Issue (US-09)**: 任何工具失敗自動轉為 GitHub Issue 追蹤，實現任務閉環。
4. **極致精簡 (US-10)**: 嚴禁超過 3 行文字回覆，專注於工具執行。
5. **入庫完整性 (US-12)**: 修改配置或程式後，主動執行 git commit & push。
6. **變更邊界 (US-13)**: 修改外部框架核心時，必須請求人工確認以確保安全。
7. **預測性推理 (US-18)**: 主動預判並建議下一個高價值任務。
8. **指令推薦 (US-17)**: 回覆結尾主動推薦下一步指令 (如 `/shikigami:sprint`)。
9. **工程自動化 (US-20)**: 優先使用非互動式指令，自動推論環境參數。
10. **自癒分析 (US-21)**: 失敗時自動執行 RCA 並更新 KM 知識庫。

## 📂 專案導覽
- **演進路線圖**: `docs/prd/ROADMAP.md`
- **對標測試報告**: `tests/benchmark/Ideation_Benchmark_Report.md`
- **專案看板**: `docs/PROJECT_BOARD.md`
- **行為規則**: `GEMINI.md`

## 快速啟動
```bash
/shikigami:standup  # 同步當前演進進度
/shikigami:sprint   # 規劃下一階段進化
```

shikigami.project_level: low
