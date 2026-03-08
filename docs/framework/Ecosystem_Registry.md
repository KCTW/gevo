# Shikigami Agent Ecosystem Registry

> **目的**: 提供一個全域的「能力註冊表」，讓 AI Agent 能夠感知自身與其他 Sub-Agent 所具備的 Skills，實現更複雜的任務委派。

## 已註冊 Skills

| Skill 名稱 | 類別 | 功能簡述 | 引用路徑 |
|:---|:---|:---|:---|
| `backlog-intake` | Planning | 零啟動產品發想，產出 INVEST Backlog | `skills/backlog-intake/SKILL.md` |
| `sprint-planning` | Ceremony | 擷取 Backlog 建立 Sprint 計畫 | 內建 |
| `sprint-execution` | Execution | 自動化 TDD 與代碼生成 | 內建 |
| `sprint-review` | Ceremony | 產出度量報告與 Retro 日誌 | 內建 |

## 自動發現機制 (Proposal)
未來將實作 `scripts/skill_discovery.sh`，在每次 Sprint 開始前自動掃描 `skills/` 目錄並更新此註冊表。
