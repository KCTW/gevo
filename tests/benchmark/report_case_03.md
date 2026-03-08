# Ideation Benchmark: CASE-03 (Multi-Tenant CRM System)

## 原始描述
建構一個支援多租戶與角色權限控管的企業級 CRM 系統。

## AI 產出 Backlog (MVP)

### 1. 核心願景 (Core Vision)
提供具備強大數據隔離與靈活權限管理的客戶關係平台，確保不同企業間數據互不干擾。

### 2. 技術棧 (Tech Stack)
- **Framework**: Django (with `django-tenants`)
- **Database**: PostgreSQL (Schema-based isolation)
- **Auth**: Keycloak (for external RBAC/SSO)

### 3. User Stories (Backlog)

| ID | Title | Priority | AC Summary |
|:---|:---|:---:|:---|
| US-01 | 租戶數據隔離 | Must | 基於 PostgreSQL Schema 的物理數據隔離 |
| US-02 | 角色權限矩陣 (RBAC) | Must | 自定義 Admin、Manager、Staff 權限集 |
| US-03 | 客戶線索管理 | Must | CRUD 操作、標籤與進度追蹤 |
| US-04 | 操作日誌審計 (Audit Log) | Should | 記錄所有敏感數據的變更者與時間 |

## 4. 自由評估 (Based on US-02 Rubric)

- **MVP 範圍 (Scope)**: 4/5 - 抓住了多租戶核心，但 CRM 業務功能略顯簡化。
- **Story 切分 (Invest)**: 4/5 - 技術導向的故事切分清晰。
- **技術可行性 (Tech)**: 5/5 - Schema-based 隔離是企業級首選。
- **商業洞察 (Insight)**: 4/5 - 考慮到 Audit Log 在 B2B 場景的重要性。

**綜合評分: 4.2/5.0**
