# 失敗分析與自癒紀錄 (Failure RCA & Self-Healing Log)

## 1. 事故概況
- **時間**: {{datetime}}
- **操作指令**: `{{command}}`
- **錯誤類型**: {{error_type}} (e.g., SyntaxError, API Timeout, PermissionDenied)

## 2. 失敗分析 (RCA)
- **原始錯誤訊息**: `{{raw_error}}`
- **根本原因**: [解釋為什麼會失敗，例如：heredoc 未閉合、gh CLI 版本過舊、標籤名稱包含空格]
- **受影響範圍**: [受影響的文件或功能]

## 3. 自癒行動 (Self-Healing Actions)
- [x] **立即修復**: [執行的修正指令]
- [ ] **知識更新**: [是否需要更新 GEMINI.md 或 KM 文件以防止再次發生]
- [ ] **Issue 追蹤**: [若無法立即修復，建立的 Issue ID]

## 4. 預防措施 (Prevention)
[為此類錯誤制定的新規則或檢查清單]

---
[REF: US-21]
