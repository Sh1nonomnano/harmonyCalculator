# trans

初学鸿蒙（HarmonyOS / ArkTS）时做的小应用：**换算工具**，目前只有 **人民币 ↔ 美元汇率换算**。

- 来源：[Gitee sh1nonomnano/trans](https://gitee.com/sh1nonomnano/trans)（2024-01）
- 主页「换算工具」→「汇率转换」→ 数字键盘输入，CNY/USD 互算
- 点击「更新」会请求 [天行数据 fxrate](https://www.tianapi.com/)；请在 `entry/src/main/ets/pages/translatePage.ets` 里换成你自己的 `YOUR_TIANAPI_KEY`（迁移时已去掉原仓库里的明文 key，请在天行控制台轮换旧 key）

## 打开工程

用 [DevEco Studio](https://developer.huawei.com/consumer/cn/deveco-studio/) 打开本仓库根目录，连接鸿蒙设备或模拟器运行。

本仓库从 Gitee 迁到 GitHub，仅作学习纪念存档。
