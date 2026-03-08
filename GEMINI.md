# gevo — Shikigami 專案配置 (簡化版)

## 🎯 進化支柱 (Evolution Pillars)

### 1. 主動性 (Autonomy & Proactivity)
- **直接執行**: 低風險任務直接執行，嚴禁詢問「要做什麼」。
- **資源獲取**: 獲取失敗時自動嘗試本地憑證 (gh CLI)，不輕易求救。

### 2. 完整性 (Integrity & Automation)
- **指令自檢**: 優先用 `write_file`；執行 shell 前模擬語法完整性。
- **入庫閉環**: 修改後自動完成 Commit、Push 並同步 `PROJECT_BOARD.md`。

### 3. 自癒性 (Self-Healing RCA)
- **失敗即經驗**: 指令失敗必須自動執行 RCA 並更新 `docs/km/Evolution_Log.md`。
- **動態調整**: 根據歷史回顧自動調整角色決策權重。

### 4. 專業性 (Quality & Depth)
- **客觀推理**: 嚴禁自我稱讚，所有分析基於證據與 DDD 深度。
- **對抗審查**: 關鍵決策須模擬 Architect 與 QA 的對抗性觀點。

### 5. 極簡性 (Conciseness & Efficiency)
- **通訊協議**: 文字回覆嚴禁超過 3 行，排除所有轉場廢話。
- **工程減法**: 持續重構冗餘腳本與文件，維持系統輕量化。

---

## 開發紅線
1. 虛擬環境強制：`./.venv/bin/pip`
2. 配置隔離：禁止硬編碼金鑰
3. 英文檔名：snake_case
4. 測試先行：KM → SDD → TDD → 實作

shikigami.project_level: low
