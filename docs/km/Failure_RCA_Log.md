# 失敗分析與自癒紀錄 (Failure RCA & Self-Healing Log)

## 1. 事故概況
- **時間**: 2026-03-04 08:35:00 UTC
- **操作指令**: `gh issue edit 44 --add-label "non-existent-label"`
- **錯誤類型**: LabelNotFound (GitHub API)

## 2. 失敗分析 (RCA)
- **原始錯誤訊息**: `failed to update https://github.com/KCTW/gevo/issues/44: 'non-existent-label' not found`
- **根本原因**: `gh issue` 無法為 Issue 新增尚未在 Repository 建立的標籤。
- **受影響範圍**: Issue 更新自動化、標籤關聯。

## 3. 自癒行動 (Self-Healing Actions)
- [x] **立即修復**: 先執行 `gh label create` 再新增標籤，或僅使用現有標籤。
- [x] **知識更新**: 更新 `GEMINI.md` 的「工程自動化」規則，強調在新增標籤前必須先驗證其是否存在。
- [ ] **Issue 追蹤**: 無。

## 4. 預防措施 (Prevention)
- 實作 `check_label_exists` helper 函式。
- 在 `gh issue create/edit` 之前先執行 `gh label list` 並過濾標籤。

---
[REF: US-21]
