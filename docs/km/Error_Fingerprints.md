# Global Error Fingerprints Registry

> **目的**: 提供一套標準化的錯誤特徵字典，加速 RCA 自動化診斷。

## 常見錯誤指紋 (Error Fingerprints)

| Exit Code | 特徵訊息 | 潛在原因 | 建議 Action |
|:---|:---|:---|:---|
| 2 | `syntax error: unexpected end of file` | heredoc 或括號未閉合 | 強制改用 `write_file` |
| 127 | `command not found` | 工具未安裝或路徑未設定 | 執行環境偵測，檢查 $PATH |
| 403 | `API rate limit exceeded` | 外部 API (如 GitHub) 限流 | 觸發 US-41 指數退避重試 |
| 128 | `fatal: not a git repository` | Git 指令執行位置錯誤 | 自動切換至專案根目錄 |

## 使用方式
Agent 失敗時應優先查詢此文件，若匹配特徵，則自動在 RCA 報告中引用對應 Action。
