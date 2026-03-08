# gevo (Gemini Evolution) 🚀

> **讓 AI 不只是執行工具，而是能自我修正、持續進化的工程夥伴。**

`gevo` 是一個實驗專案，旨在透過 **「規則固化 (Rules Consolidation)」** 與 **「自癒分析 (Self-Healing)」**，讓 Gemini CLI 具備超越傳統 AI 的自主執行與架構發想能力。

---

## 💡 核心理念：為什麼需要 gevo？

傳統 AI 常面臨「指令斷裂」、「語法錯誤」或「過度詢問」等痛點。`gevo` 透過 30+ 項演進規則，解決以下問題：
- **不再等待指令**：具備預測性推理，主動執行低風險任務。
- **不再反覆詢問**：強化資源獲取與環境偵測能力。
- **不再無視錯誤**：失敗時自動執行 RCA (根本原因分析) 並更新知識庫。

## 📈 進化里程碑

### ✅ v1.0 核心演進 (Sprint 7)
- **行為固化**: 實作指令自檢、消除 Wait-for-Prompt、極致精簡通訊。
- **自主工程**: 達成 100% 任務完整性自檢。

### ✅ v1.1 自癒與擴張 (Sprint 13)
- **自癒內核**: 工具失敗自動觸發 RCA 並更新 `docs/km/Failure_RCA_Log.md`。
- **流程自動化**: 實作 `auto_sprint.sh` 達成端到端 Sprint 週期管理。
- **對抗測試**: 建立 Architect 與 QA 對抗環境，提升決策深度。
- **發想封裝**: 正式封裝 `backlog-intake` Skill，對標測試平均分 **4.26 / 5.0**。

## 🛠️ 進化工具箱 (Toolbox)

| 腳本 | 說明 |
|:---|:---|
| `scripts/auto_sprint.sh` | 一鍵啟動 Planning / Execution / Review 流程。 |
| `scripts/sync_board.sh` | 自動對齊 GitHub Issues 與本地專案看板。 |
| `scripts/monitor_evolution.sh` | 即時監控進化指標 (Velocity, Token Cost)。 |
| `scripts/adversarial_test.sh` | 執行 Agent 間的對抗性架構審查。 |
| `scripts/quality_gate.sh` | 自動化品質門禁檢查。 |

---

## 📂 演進指南
- **[行為準則]**: `GEMINI.md` — 定義 AI 在此專案中的行動邏輯。
- **[進化路線]**: `docs/prd/ROADMAP.md` — 下一階段的演進目標。
- **[測試報告]**: `tests/benchmark/` — 實證進化強度的對標紀錄。

---

## 快速啟動
```bash
# 檢視當前進化指標
./scripts/monitor_evolution.sh

# 啟動新一輪 Sprint
./scripts/auto_sprint.sh start
```

shikigami.project_level: low
