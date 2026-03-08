# Failure RCA (Root Cause Analysis) Template

## 1. 錯誤情境 (Context)
- **觸發指令/操作**: [例：執行 `cat >> file <<EOF`]
- **錯誤訊息 (Exit Code)**: [例：Exit Code 2, syntax error]
- **發生時間**: YYYY-MM-DD

## 2. 根因分析 (Root Cause)
- **直接原因 (Direct Cause)**: [例：heredoc 未正確閉合]
- **深層原因 (Underlying Cause)**: [例：在未自檢的情況下直接生成多行 shell 腳本，缺乏語法驗證防線]

## 3. 修復與預防 (Action Items)
- **立即修復**: [例：改用 `write_file` 工具重寫]
- **系統性預防**: [例：在 GEMINI.md 中加入「指令自檢」規則，限制 heredoc 的使用]

## 4. 驗證 (Validation)
- [ ] 規則已更新至 `GEMINI.md` 或對應 Skill
- [ ] 執行 `scripts/regression_test.sh` 確保無副作用
