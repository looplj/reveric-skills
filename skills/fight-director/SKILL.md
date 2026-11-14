---
name: fight-director
description: 为武侠、写实格斗、动漫、仙侠、法术、机甲和巨兽战斗设计动作链、空间调度、分镜与可复制的视频提示词。适用于打戏创作、角色战斗风格设计和已有打斗提示词的局部修复，默认面向 Seedance，也可按用户指定模型调整。
license: See NOTICE.md for source-specific terms
metadata:
  version: "1.0.0"
---

# 打斗导演

根据角色、场景和战斗目标，设计动作链、空间调度、分镜及可直接复制的视频提示词。

## 工作流程

1. 确定本次任务：生成打戏、设计角色战斗风格、推荐方案或修复已有提示词。提取用户指定的角色、能力、视觉风格、场景、时长、结局和参考素材。
2. 选择能实现战斗目标的动作，先排攻防与走位，再安排镜头、特效和声音。角色设计、技能选择和各类表现按下表读取资料。
3. 按 [输出格式](references/output-format.md) 编译成品，对照用户要求检查结果。修改已有提示词时，保留有效设定，只调整问题段及其相邻衔接。

核心设定不清时询问；风格、动作和镜头的表现细节可以按已知需求补全。用户已指定或授权代选的内容直接执行。

## 编排要点

- 每次主要攻击写清起势、轨迹、目标、对手回应与后续动作。连招通过重心转移、收招和防线变化衔接。
- 用当前位置、移动原因、路径和落点组织空间。破防后保留失衡或恢复过程，摔投后交代控制、脱身或起身。
- 景别容纳关键动作：近景看手法与接触，全景看腾跃、投摔和大范围位移。运镜跟随明确目标，切镜承接动作方向、视线或环境锚点。
- 特效绑定角色能力、身体或兵器轨迹；声音与接触材质同步。按用户风格决定写实反馈或夸张表现，保留已要求的力量感、华丽程度和破坏规模。
- 上一镜头的结束状态成为下一镜头的起点。人物姿态、兵器持握、受击状态和环境破坏持续到后续镜头。

## 资料选择

按当前环节读取相关附件，技能库先查索引，再读对应类别。

| 当前需要 | 读取入口 |
| --- | --- |
| 世界观、美学、机制与角色职业适配 | [风格与机制](references/style-mechanisms.md)、[角色适配](references/role-adaptation.md) |
| 具体徒手武学、踢技、摔投、命名连招 | [武学索引](references/martial-index.md) |
| 预设角色或角色卡 | [角色索引与创建](references/characters.md) |
| 兵器、枪械、机械武装 | [兵器索引](references/weapons/index.md)、[兵器定位与摄影](references/weapon-direction.md) |
| 专项剑法、长镰、太刀、轻功与修仙剑招 | [专项索引](references/specialized/index.md) |
| 元素法术与混合施法 | [法术索引](references/spells/index.md)、必要时读[元素绑定](references/elements.md) |
| 超凡体术、机甲近战、巨兽战斗 | [格斗技能索引](references/fighting/index.md) |
| 镜头设计与近身交锋 | [镜头规格](references/camera.md)、[重点镜头范式](references/camera-patterns.md)、[近景对招](references/close-combat.md) |
| 攻防递进、破防、终结与追击 | [动作链](references/action-chains.md)、[节奏与防守](references/rhythm-defense.md)、[打斗模式与多区域连击](references/combat-patterns.md) |
| 劲气、空气反馈、复杂特效 | [劲气与反馈](references/impact-vfx.md)、[特效准则](references/vfx-guideline.md) |
| 视觉风格或场景未定 | [风格与场景](references/styles-scenes.md) |
| 最终输出与问题修复 | [输出格式](references/output-format.md)、[诊断清单](references/diagnostics.md) |

## 交付检查

角色、能力与参考素材一致；攻击有回应；位移与状态恢复有过程；镜头看得清动作；特效与破坏符合设定；时间轴连续且等于指定时长；结局满足要求。正文只保留当前交付需要的内容。
