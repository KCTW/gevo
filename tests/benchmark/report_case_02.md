# 測試報告 (TestCase: CASE-02 README 生成 CLI)

## 領域實體與狀態
- **實體**: 原始碼 (Source)、AST (Abstract Syntax Tree)、README 模板 (Template)
- **狀態**: 掃描中、解析中、模板填充、已生成

## 技術需求 (Zero-Shot)
- **US-01**: 使用樹解析器 (如 tree-sitter) 進行多語言代碼語法分析。
- **US-02**: 實作基於 Handlebars/Liquid 的 README 模板引擎。
- **US-03**: 建立 Git Hook 整合，在提交前自動檢查並更新 README。

## 邊界條件
- 處理循環引用或過大的源文件夾。
- 衝突解決：當 README 已手動修改時的合併策略。
