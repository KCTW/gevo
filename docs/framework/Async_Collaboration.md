# Shikigami Async Collaboration Framework

## 1. 概述
本框架允許不同的 AI Agent 在背景執行長時間任務，並透過「狀態文件 (State Files)」進行異步通訊。

## 2. 協作機制 (Lock-based)
- **Lock File**: `docs/framework/collaboration.lock`
- **State Exchange**: Agent 將進度寫入 `docs/framework/async_tasks/[task_id].json`。

## 3. 異步流程
1. **Submit**: 主 Agent 提交 Task 描述至 JSON。
2. **Pickup**: 背景 Agent 讀取並標記為 `processing`。
3. **Notify**: 完成後寫入 `completed` 狀態。
4. **Collect**: 主 Agent 在下一輪 Standup 收集結果。
