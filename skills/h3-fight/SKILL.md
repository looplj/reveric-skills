---
name: h3-fight
description: 为 MiniMax H3 编写武打、刀剑、徒手对打、气功对波、追逐、以小打大和一打多的打戏提示词。从已出片的镜头块整句改写，并按六段式、招牌写法和踩坑表自检。适用于把剧本打斗节拍写成约 10 秒的镜头提示词，或重写已有的 H3 打戏段。文戏、以闪电或法术特效为主的镜头不使用本技能。
license: See NOTICE.md for source-specific terms
metadata:
  version: "1.0.0"
  upstream: https://github.com/huangserva/h3-fight
  upstream_commit: d148e5315a6cabb2db81ed5524068ba0d43b9f06
---

# H3 打戏

一段打戏默认 6 个镜头、约 10 秒。句子从镜头库整句改，只换人名、武器、颜色和场景物件。

提示词正文用英文。用户用中文讲需求即可。交付提示词本身；检查说明、踩坑和资料标题都不要写进提示词。

## 工作流程

1. 确认打法（一对一、一打多、以小打大）、画风、人物、武器、场景、这一段唯一的剧情节拍，以及是单段还是多段。人物、对手或结局不清时先问。
2. 多段片子先读 [打法与近身细分](references/moves.md)，给每段定一个主打法，相邻段不重复。
3. 按六个位置从 [镜头索引](references/shot-index.md) 挑等级 A、打法相符的块，再打开对应镜头文件，整句搬入。剧情节拍所在的那一镜也从最接近的块改。
4. 按 [六段式](references/prompt-structure.md) 拼好人物、场景、画风、情绪弧线、镜头和声音。需要对照全文时读 [k4d](references/examples/k4d.md)、[C1](references/examples/c1.md) 或 [日漫C5](references/examples/anime-c5.md)。
5. 按 [提交检查](references/checklist.md) 和 [踩坑](references/pitfalls.md) 自检。有错误就改完再交付。提醒写进检查结果，确认可以保留后再交付。
6. 多段写完再按 [多段防单一](references/multi-segment.md) 检查打法、节拍和近身回合。

换题材时同样整句搬：刀改拳脚，剑气改气功波，光色改成角色自己的气色。字数和招牌仍然要达标。

登场、对峙、变身用索引里的衔接镜头，不按打戏门槛卡字数和招牌。

## 六个位置

| 镜头 | 时间 | 用途 |
| --- | --- | --- |
| 1 | 0 秒 | 开场爆发或对冲交锋 |
| 2 | 1 秒 | 近身快打 |
| 3 | 4 秒 | 三连反击、腾空剑气、空中对决或大招对撞 |
| 4 | 7 秒 | 特写蓄力或闪避，全段只露一次脸 |
| 5 | 10 秒 | 硬接反击或制胜缴械 |
| 6 | 12 秒 | 收尾、锁刀相抵或落地对峙，写下一段要接的状态 |

## 资料

| 当前需要 | 读取 |
| --- | --- |
| 挑镜头 | [镜头索引](references/shot-index.md)，再读 `references/shots/` 里的一个文件 |
| 补运镜、招式、后果、声音 | [词句零件](references/phrases.md) |
| 换主打法、写具体近身回合 | [打法与近身细分](references/moves.md) |
| 拼六段、台词、视线、道具 | [六段式](references/prompt-structure.md) |
| 定妆图要求 | [参考图](references/reference-images.md) |
| 多段是否重复 | [多段防单一](references/multi-segment.md) |
| 提交前 | [提交检查](references/checklist.md)、[踩坑](references/pitfalls.md) |
| 这条句子出自哪条成片 | [来源](references/sources.md) |

出图、出片、字幕和放大不在本技能里。上游仓库保留 ComfyUI 出片脚本和工作流搭法。

## 交付

先给提示词。另起一段写检查结果：镜头数、平均字数、招牌数、动态机位数，以及仍然留下的提醒。有错误时不交付提示词，先改。
