# 日倉物流再造系統模組拆解 (Logistics System Decomposition)

[REF: docs/logistics_system_prd.pdf]

## 1. 核心 Epic
- **Epic-01**: WMS 核心進出庫與預判引擎 (US-LOG-01~11)
- **Epic-02**: 出貨操作與自動面單系統 (US-LOG-12~16)
- **Epic-03**: ECMS 與文件自動化 (US-LOG-17~20)
- **Epic-04**: 系統管理與視覺化儀表板 (US-LOG-21~22)

## 2. 模組技術對照表 (User Stories)

| ID | 模組名稱 | 核心實體 (Entities) | 關鍵邏輯 (Logic) |
|---|---|---|---|
| US-LOG-01 | 貨到付款處理 | CodOrder, Payment | 自動比對金額, 紅字顯示差異 |
| US-LOG-02 | 掃描入庫 | InboundRecord, OrderStatus | 檢查「已成立」狀態, 阻擋異常 |
| US-LOG-03 | 鑑定狀態檢查 | AuthStatus (C-3, C-1-a) | 阻擋未鑑定, 標記仿品 |
| US-LOG-04 | 付款狀態檢查 | PaymentStatus (B-1) | 阻擋未付款, 架位待命 |
| US-LOG-05 | 合規檢查 | Compliance (Lithium, Alcohol) | 禁運品退貨, 電池標籤貼附 |
| US-LOG-06 | 到齊檢查 | InventoryStatus (B-2) | 檢查子訂單完整性才可釋放 |
| US-LOG-07 | 出貨規則檢查 | ShippingRule (MemberType) | 非會員 2 件限制, 會員 3 件集貨 |
| US-LOG-08 | 加值服務檢查 | ValueAdded (Photo, Pack) | 開箱拍照、加強包裝流程控制 |
| US-LOG-09 | 重大提醒檢查 | CriticalAlert (B-9) | 顯示作業員特定注意訊息 |
| US-LOG-10 | 倉別與通路檢查 | WarehouseType (ECMS, X) | 自動判斷自購或通路來源 |
| US-LOG-11 | 運送方式決策 | FreightType (Air, Sea, Transfer) | 基於標籤自動判定航路 |
| US-LOG-12 | 出貨操作核心 | ShippingProcess | 整合判斷結果，顯示剩餘數量 |
| US-LOG-13 | 人工覆寫機制 | ManualOverride, AuditLog | 記錄作業員手動調整原因 |
| US-LOG-14 | 國際運送調整 | FreightCorrection | 當自動判定與實際包裹衝突時調整 |
| US-LOG-15 | 分口出貨設定 | PartialShipment | 多箱出貨金額與數量拆分 |
| US-LOG-16 | 出貨單列印 | ShippingLabel | 整合佐川/ECMS 格式與代發標記 |
| US-LOG-17 | 合併箱作業 | ConsolidationBox | 掃描合併箱條碼並綁定子單 |
| US-LOG-18 | ECMS 出口文件 | CustomsDocument | 根據倉別自動產出出口申報檔 |
| US-LOG-19 | 商品登錄與入荷 | ItemRegistry | ECMS 系統資料同步與上傳 |
| US-LOG-20 | 海運在庫管理 | SeaInventory | 海運專屬狀態追蹤與列印 |
| US-LOG-21 | 帳號權限管理 | User, Role, ACL | 系統登入與功能權限控制 |
| US-LOG-22 | 儀表板與統計 | AnalyticsDashboard | 出貨量、異常率、可疑件追蹤 |

## 3. 下一步行動
1. [ ] 在 GitHub 僅建立一個 Epic Issue (#43) 連結此文件。
2. [ ] 更新 `docs/PROJECT_BOARD.md` 狀態。
