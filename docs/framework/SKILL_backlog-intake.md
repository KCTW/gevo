# Shikigami Skill: backlog-intake (優化建議書)

[REF: US-03 / Ideation_Benchmark_Report.md]

## 1. 核心目標
提升 AI Agent 的零啟動產品發想能力，確保產出的 Backlog 具備專業的技術深度、商業洞察與可實作性。

## 2. 核心提示詞補丁 (Prompt Patch)

在執行發想時，必須強制引入以下三個審查維度：

### A. 橫切關注點 (Cross-cutting Concerns)
- **Security**: 必須識別潛在的資安風險（如：數據加密、注入攻擊防範）。
- **Compliance**: 必須考關隱私法規（GDPR/CCPA）與行業標準。

### B. MVP 階段化策略
- **Phase 1 (Lean MVP)**: 僅包含達成核心價值的最小功能集。
- **Phase 2 (Scalability)**: 包含進階功能、效能優化與擴展性需求。

### C. 領域風險評估
- 必須條列出「最可能失敗的技術假設」並給出初步對策。

## 3. User Story 規範 (INVEST 原則)

所有產出的 Story 必須包含：
- **As a... I want... So that...** 標準格式。
- **Acceptance Criteria (AC)**: 必須是具體、可觀察、可測試的描述。
- **RICE Score**: 用於初步排序。

## 4. 執行流程 (Workflow)

1. **Intake**: 接收模糊點子描述。
2. **Analysis**: 套用上述三維度進行邏輯拆解。
3. **Drafting**: 生成 Backlog 列表。
4. **Self-Audit**: 根據 `tests/benchmark/scoring_rubric.md` 進行內部自評。
5. **Output**: 產出結構化 Markdown Backlog。
