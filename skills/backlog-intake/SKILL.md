# Shikigami Skill: backlog-intake

## 1. 概述
本 Skill 負責從模糊的「產品點子」自動產出具備技術深度與商業洞察的 Product Backlog。

## 2. 執行指令
```bash
claude -p "執行 backlog-intake: [你的點子描述]"
```

## 3. 核心規範 (Instructions)
1. **三維分析**: 必須包含「橫切關注點 (Security/Compliance)」、「MVP 階段化」與「領域風險評估」。
2. **INVEST 原則**: 產出的 Story 必須獨立、可測試且具備明確的 RICE 評分。
3. **客觀推理**: 嚴禁自我合理化，推導必須基於現有技術棧與市場邏輯。

## 4. 驗收標準 (DoD)
- [ ] 產出結構化的 Markdown Backlog。
- [ ] 識別出至少 2 個核心技術風險。
- [ ] 具備 Phase 1 (MVP) 與 Phase 2 (Scalability) 的明確切分。
