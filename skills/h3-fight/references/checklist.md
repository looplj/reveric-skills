# 提交检查

打戏段有下面任一项，就先改，不交付。衔接段（登场、对峙、变身、收刀）不卡字数、招牌、动态机位和五样，仍然要避开 [踩坑](pitfalls.md) 里级别为错误的条目。

检查时把提示词转成小写再对片段。统计范围是每个 `[Shot n]` 后面的正文。

## 不通过

1. 缺六个标题之一：`subject_definitions`、`summary`、`retention_analysis`、`detailed_description`、`overall_soundscape`、`non_diegetic_music`。`non_diegetic_music` 的值是 `N/A`。
2. 镜头少于 5 个或多于 7 个。
3. 第 2 镜起有镜头没有 `At` 加时间点，例如 `At 00:01.000`。
4. 五样不齐。每镜要有运镜、招式、后果、特效、节奏里的至少 4 样。最多允许 1 个镜头缺样，而且这个镜头最多缺 2 样。缺得更多就不通过。
5. 各镜头平均少于 450 个字符。空格和标点都算。好片通常在 500 以上。
6. 16 个招牌片段里出现少于 9 个。
7. 动态机位少于 2 个镜头。动态机位包括 `orbit`、`crane`、`vertical rapid falling`、`falling alongside`、`spiraling`、`circling`、`push-in`、`diving`。
8. 侧面机位多于 2 个镜头。侧面机位指同一个镜头里既有 `side`，又有 `tracking` 或 `profile`。
9. 命中踩坑表里级别为错误的条目。常见的是：写入 LoRA 或作者名、锁死左右或写成只防守不还手、刃停在要活着的人身体前极近处、中文台词写了口音或粤语。识别片段见踩坑表，不要把那些专名抄进提示词。

五样用这些词判断，一句库里的原句通常已经带上：

| 样 | 看这些词 |
| --- | --- |
| 运镜 | camera、close-up、tracking、orbit、crane、pull-back、push-in、tilt、wide shot、low-angle、high-angle、falling shot、establishing shot、medium shot |
| 招式 | slash、thrust、strike、cut、block、parry、deflect、dodge、kick、punch、leap、dash、charge、spin、counter、sweep、swing、dive、draws |
| 后果 | crack、shatter、collapse、crater、debris、dust、explode、tear、crash、blast、break、smash、fragment、gouge |
| 特效 | sword qi、energy、glow、flame、rune、shockwave、impact wave、spark、arc、afterimage、light、ember |
| 节奏 | slow-motion、rhythm、instantly、without drag、zero lag、freeze、supersonic、in one fluid motion、camera shake、within the first |

## 16 个招牌

按小写片段计数。9 到 11 个可以交付，检查结果里写上还缺哪些。12 个及以上不再为数量提醒。完整句子在 [词句零件](phrases.md) 里，标了 ★。

1. `crane shot`
2. `orbits 360`
3. `vertical rapid falling`
4. `freezes on a close-up`
5. `pull-back wide`
6. `supersonic`
7. `zero lag`
8. `afterimage`
9. `three ultra-high-speed`
10. `dissipates the force`
11. `chain reaction`
12. `wind pressure`
13. `impact wave`
14. `rhythm instantly doubles`
15. `without drag`
16. `camera shake`

## 提醒

这些不单独挡住交付。逐条看过，确认这段确实要这样写，再写进检查结果。

- 镜头不是从等级 A 的块整句改来的。换题材后和库原句的重合会下降，字数和招牌仍然要过。
- 只有一个镜头缺了一两样，而且它是收尾或脸部特写。
- 招牌只有 9 到 11 个。
- 脸部特写没有写眼睛看谁。补成过肩或三分之四侧脸。
- 镜头里出现钟、柱、殿、门、桥、树、灯、坠饰、像、墙、台阶或桌子，场景定义却没写它现在的状态。
- 有台词。确认全段只有一句，而且在唯一的脸部特写里。
- 用了否定句去挡画面，例如 `do not show`、`don't draw`、`never include`。改成肯定的当前状态。
- [踩坑](pitfalls.md) 里级别为提醒的条目。改法状态是“待验证”的，检查结果里标出来。

多段片子再按 [多段防单一](multi-segment.md) 看一遍。那里的问题也记成提醒。
