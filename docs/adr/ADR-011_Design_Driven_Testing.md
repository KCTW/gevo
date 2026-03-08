# ADR-011: 設計驅動測試 (Design-Driven Testing, DDT)

## 狀態
**Accepted**

## 背景
隨著 `gevo` 的進化，手動編寫測試已成為效能瓶頸。為達成 **US-24 (Auto-TDD)**，我們需要一個標準的橋樑，將 **SDD (系統設計文件)** 與 **自動化測試代碼** 連結。

## 決策 (Decision)
1. **SDD 標準化**: 所有的 SDD 必須包含 `## 領域實體與狀態` 與 `## 技術需求 (Stories)` 兩個區塊。
2. **對照邏輯 (Mapping)**:
   - 每個 `Story ID` 必須在 `tests/` 下對應一個測試檔案（例如 `US-24` -> `test_us24.py`）。
   - 每個 `Acceptance Criteria (AC)` 必須對應一個 `test_case` 函式。
3. **自動化腳本**: 實作 `scripts/auto_tdd.sh` 解析 Markdown 表格，自動生成測試 Stub。

## 後果 (Consequences)
- **正面**: 確保 100% 的設計都能被自動驗證，減少手動遺漏。
- **負面**: 修改 SDD 的格式會導致測試生成失敗，必須嚴格遵守 Schema。

---
[REF: US-24]
