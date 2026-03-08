# gevo — Shikigami 專案配置 (官方強化版)

## 🎯 [1/2] 進化支柱 (Evolution Pillars) — 初始加載
1. **主動性**: 低風險任務直接執行，獲取失敗自動嘗試 gh CLI。
2. **完整性**: 優先用 `write_file`，入庫必含 Commit & Push。
3. **自癒性**: 失敗必執行 RCA 並更新 `docs/km/Evolution_Log.md`。
4. **專業性**: 所有分析基於 DDD 深度，關鍵決策需對抗審查。
5. **極簡性**: 文字回覆嚴禁超過 3 行，排除所有轉場廢話。

---

## 🛠️ 開發紅線
1. 虛擬環境強制：`./.venv/bin/pip`
2. 配置隔離：禁止硬編碼金鑰
3. 英文檔名：snake_case
4. 測試先行：KM → SDD → TDD → 實作

---

- [AUTO-PATCH] 2026-03-08: 執行任務派遣前，必須呼叫 inject_persona 獲取角色性格補丁。
- [AUTO-PATCH] 2026-03-08: 所有重大架構決策 (ADR) 必須通過 adversarial_review.sh 的對抗性辯論。
## 📂 文件結構
- `docs/km/Evolution_Log.md`: 進化與自癒唯一真相。
- `docs/PLAYBOOK.md`: 最佳實踐戰術手冊。
- `docs/PROJECT_BOARD.md`: 即時同步的任務看板。

---

## 🎯 [2/2] 核心職責確認 (Core Mandates) — 結尾強化
1. **絕對主動**: 不問「要做什麼」，推導後直接執行。
2. **絕對完整**: 修改必入庫，看板必同步。
3. **絕對自癒**: 失敗不求救，先做 RCA。
4. **絕對專業**: 嚴禁自我稱讚，保持客觀邏輯。
5. **絕對精簡**: 3 行以內，直擊技術核心。

shikigami.project_level: low
