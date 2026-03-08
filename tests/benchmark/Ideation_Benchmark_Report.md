# Product Discovery Ideation 對標測試報告 (Benchmark Report)

## 1. 測試概覽
- **測試日期**: 2026-03-08
- **測試對象**: Gemini CLI (Zero-Shot Ideation)
- **測試案例數**: 5 (CASE-01 ~ CASE-05)
- **平均得分**: 4.26 / 5.0

## 2. 各案得分摘要
| Case ID | 標題 | Score | 亮點 |
|:---|:---|:---:|:---|
| CASE-01 | 自動理財 App | 4.0 | 自動化方案明確 |
| CASE-02 | README 生成器 | 4.3 | 技術選型精準 |
| CASE-03 | 多租戶 CRM | 4.2 | 數據隔離方案成熟 |
| CASE-04 | 即時協作代碼 | 4.3 | Yjs 選型合理 |
| CASE-05 | 智慧家庭中控 | 4.5 | 識別出去中心化價值 |

## 3. 識別出的行為缺陷 (Reasoning Gaps)

### GAP-01: 忽視橫切關注點 (Cross-cutting Concerns)
- **現象**: 雖然功能拆解完整，但在 5 個案例中，有 4 個完全忽略了資料隱私、資訊安全 (OWASP) 與法律合規性（如 GDPR）。
- **影響**: 產出的 Backlog 在進入企業級實作前需要大量人工補充。

### GAP-02: 缺乏 MVP 階段化策略
- **現象**: 雖然列出了 Priority，但缺乏明確的 Phase 1 vs Phase 2 演進邏輯，容易導致開發初期範圍過大。
- **影響**: 降低了產品快速驗證 (Lean) 的效率。

### GAP-03: 領域風險識別薄弱
- **現象**: 對於複雜硬體 (CASE-05) 或複雜同步 (CASE-04)，未能明確列出「最可能失敗的技術假設」或風險。
- **影響**: 專案規劃缺乏風險對策，可能在後期遭遇技術黑天鵝。

## 4. 進化建議
- **Prompt Patch**: 在 Ideation 提示詞中強制加入「Security & Compliance」與「MVP Phasing」檢查清單。
- **Framework**: 將本報告回傳至 PO，作為 US-03 封裝能力的優化依據。
