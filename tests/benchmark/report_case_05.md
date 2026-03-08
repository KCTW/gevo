# Ideation Benchmark: CASE-05 (Smart Home Central System)

## 原始描述
設計一個智慧家庭中控系統，可整合不同品牌的燈光與溫度感測器。

## AI 產出 Backlog (MVP)

### 1. 核心願景 (Core Vision)
提供一個去中心化、跨協議的家庭自動化平台，將分散的智慧硬體整合至統一介面，實現場景自動化。

### 2. 技術棧 (Tech Stack)
- **OS**: Raspberry Pi (Home Assistant Core)
- **Protocols**: Zigbee2MQTT, Matter (future-proof)
- **Engine**: Python (Asyncio)

### 3. User Stories (Backlog)

| ID | Title | Priority | AC Summary |
|:---|:---|:---:|:---|
| US-01 | 跨協議設備探索 | Must | 自動偵測並配對 Zigbee 與 Wi-Fi 設備 |
| US-02 | 硬體抽象層 (HAL) | Must | 統一不同品牌的屬性（如：開/關、亮度、數值） |
| US-03 | 場景自動化引擎 | Should | 設定「如果溫度 > 28度 且 有人在家 則 開冷氣」 |
| US-04 | 本地儀表板 | Must | 即時顯示所有設備狀態與快速控制開關 |

## 4. 自由評估 (Based on US-02 Rubric)

- **MVP 範圍 (Scope)**: 5/5 - 整合與自動化是核心價值。
- **Story 切分 (Invest)**: 4/5 - 抽象層的實作描述清晰。
- **技術可行性 (Tech)**: 4/5 - MQTT/Zigbee 整合複雜度高，需強調。
- **商業洞察 (Insight)**: 5/5 - 識別出「去中心化」對隱私保護的關鍵性。

**綜合評分: 4.5/5.0**
