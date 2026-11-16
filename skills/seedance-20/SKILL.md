---
name: seedance-20
description: 把想法写成可提交的 Seedance 2.0 视频提示词。规划单条或连续镜头，绑定图片、视频和音频参考，并从已接受的成片续写。适用于即梦、剪映、豆包上的文生视频、图生视频、参考视频和首尾帧。不负责出片，也不用于其他视频模型。
license: See NOTICE.md for source-specific terms
metadata:
  version: "1.0.0"
  upstream: https://github.com/Emily2040/seedance-2.0
  upstream_commit: 4668457e560eee06e95d7fcfdf441c8c0bba802e
  upstream_version: "6.7.0"
---

# Seedance 2.0

把一个想法写成可以直接提交的导演提示词。准则是导演模型，别去抠每一帧。视频由用户选择的平台生成并计费。本技能不提交生成，也不读取密钥。

写法规则保持上游原文，放在 `references/`。这里只决定读哪一份。一次只读当前环节需要的文件。

## 工作流程

1. 分清任务。想法清楚就写提示词。想法含糊时读 [短访谈](references/interview-short.md)，最多问一个会改变成片的问题，然后起草。用户已经给出的信息不要再问。
2. 动笔前读 [导演判读](references/directors-read.md)。有剧情转折的段落完成它的叙事记录。没有转折的展示、观察和产品镜头只用它的非叙事两行，不要补出人物动机。
3. 有图片、视频或音频时，先给每个素材一个主角色，并写明它不能带过来的东西。读 [素材工作流](references/reference-workflow.md)、[转移合同](references/reference-transfer-contract.md) 和 [平台标签](references/surface-prompt-profiles.md)。`@Image1`、`@Video1`、`@Audio1` 以及中文界面的 `@图片1` 原样保留，不翻译、不改编号、不改成方括号。
4. 按任务读一份流程：
   - 单条成片提示词读 [提示词](references/prompt.md)。
   - 要短时读 [短提示词](references/prompt-short.md)。
   - 比一次生成更长的故事读 [分段](references/sequence.md)。
   - 从已接受成片往下拍读 [续写](references/continuation.md)。
   - 成片不对时读 [诊断](references/troubleshoot.md)。
5. 分镜或多个人物的条目，先做 [镜头表](references/shot-table.md)，再写成提示词。交付前读 [交给模型](references/direct-for-the-model.md)，并对最终措辞做 [审核预检](references/moderation-prescreen.md)。改了词就用一句话说明。禁止内容直接拒绝。

时长、分辨率、参考数量和模型编号以用户当前的平台为准。平台没有写明的上限不要编造。

## 取舍

几条要求冲突时，按它控制的对象排：

1. 安全、权利和平台会拒绝的内容。
2. 当前平台已经核实的限制。
3. 用户明确说不能改的条件。
4. 每个素材必须提供、必须保持、绝不能转移的内容。
5. 身份、空间、时间和道具的连续。
6. 动作因果，以及观众看得清的动作。
7. 运镜和剪辑。
8. 风格、色彩和气氛。
9. 本技能自己的默认值。

用户的要求不能悄悄删掉。更高一级把它压过时，说明改了什么、为什么。

## 多段

故事放不进一次生成时才进入分段。写第一段之前要知道：整段故事要完成什么、结局、按场景排好的节拍、这一段只做哪一件事、这一段结束时画面停在哪里。

续写必须先看到上一条已接受的成片或它的真实尾帧。计划里的结尾不能代替看到的结尾。被拒绝的成片不进入连续性，也不能当作下一段的起点。同一场内才做无缝续接。换场就从设定参考重新开。已经发生的节拍不重演，留给后面的节拍不提前出现。

## 资料

| 当前需要 | 读取 |
| --- | --- |
| 想法含糊 | [短访谈](references/interview-short.md)；需要把感觉问清楚时再读 [访谈](references/interview.md) |
| 单条提示词 | [提示词](references/prompt.md)、[速查](references/quick-ref.md) |
| 压短 | [短提示词](references/prompt-short.md)、[中文词汇](references/vocab/zh.md) |
| 多段计划 | [分段](references/sequence.md)、[项目状态](references/sequence-project-state.md)、[编译](references/prompt-compiler.md) |
| 续写、修尾、接回漂移 | [续写](references/continuation.md)、[交接](references/continuation-handoff.md) |
| 第一次做多段 | [走一遍](references/sequence-worked-trace.md) |
| 一条里有多个镜头 | [多镜头语法](references/multishot-grammar.md)、[镜头表](references/shot-table.md) |
| 运镜 | [运镜](references/camera.md)、[镜头语言](references/cinematography-shot-language.md) |
| 光 | [灯光](references/lighting.md) |
| 动作和物理 | [动作](references/motion.md) |
| 声音、对白、口型 | [声音](references/audio.md)、[声音细则](references/audio-guide.md) |
| 角色一致性 | [角色](references/characters.md) |
| 特效 | [特效](references/vfx.md) |
| 画风 | [风格](references/style.md)；二维动画再读 [二维语法](references/2d-anime-grammar.md) |
| 图生视频、首帧 | [图生视频](references/i2v-guide.md) |
| 首帧和尾帧 | [首尾帧](references/first-last-frame-guide.md) |
| 导演意图和类型范例 | [导演引擎](references/directing-engine.md)；要对着某一种类型看完整例子时再读 [类型库](references/directing-engine-genre-library.md) |
| 中文范例 | [中文范例](references/examples-zh.md)、[中文用法](references/vocab-zh.md) |
| 题材骨架 | [配方](references/recipes.md)、[按模式的例子](references/examples-by-mode.md) |
| 空泛形容词 | [去空话](references/antislop.md)、[空话词表](references/anti-slop-lexicon.md) |
| 明星、品牌、真人、歌曲 | [版权改写](references/copyright.md) |
| 被拦截 | [内容边界](references/filter.md)、[审核预检](references/moderation-prescreen.md) |
| 成片有八成对，或完全不对 | [重拍](references/retake-protocol.md)、[诊断](references/troubleshoot.md) |

## 交付

先给可以复制的提示词。需要时再附模式、素材角色、镜头表和改写说明。导演判读的内部标签不写进提示词。检查说明和资料标题也不写进提示词。
