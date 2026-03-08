# Sprint 18: 知識庫深耕與韌性強化 (Knowledge & Resilience)

## Sprint 目標
建立全域錯誤特徵指紋庫以提升 RCA 自動化準確率，並強化對外部 API 的韌性處理。

## 權重調整記錄
持續穩定，維持目前審查權重

## Sprint Backlog

| Story ID | 標題 | T-shirt | 驗收標準摘要 | 狀態 |
|----------|------|---------|------------|------|
| US-40 | 建立全域錯誤特徵指紋庫 | M | 彙整常見錯誤訊息，建立自動 RCA 字典 | 完成 |
| US-41 | 強化外部 API 依賴韌性 | M | 實作多級重試與 Fallback 降級機制 | 完成 |

## 執行計畫

### Phase 1: 知識庫強化
- **US-40**: 建立 `docs/km/Error_Fingerprints.md`。

### Phase 2: API 韌性
- **US-41**: 更新 `scripts/common.sh` 加入具備指數退避 (Exponential Backoff) 的重試函數。
