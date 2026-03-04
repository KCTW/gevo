# 測試報告 (TestCase: CASE-03 企業級 CRM)

## 領域實體與狀態
- **實體**: 客戶 (Lead/Account)、機會 (Opportunity)、角色 (Role)、租戶 (Tenant)
- **狀態**: 潛在、開發中、已結案、已凍結

## 技術需求 (Zero-Shot)
- **US-01**: 實作資料庫 Row-Level Security (RLS) 確保租戶隔離。
- **US-02**: 基於 RBAC (Role-Based Access Control) 的動態權限篩選。
- **US-03**: 實作事件驅動的日誌審計系統 (Audit Log)。

## 邊界條件
- 超大型租戶的查詢效能瓶頸。
- 權限變更時的快取清理延遲。
