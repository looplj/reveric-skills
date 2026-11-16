# 参考图

新人物和新场景先有图，再写提示词。同一段片子的每一段挂同一套图。图里的颜色和光效会压过文字，想要的颜色画进图里。

| 图 | 要求 |
| --- | --- |
| 人物 `<Picture 1>` | 全身，三分之四侧身的战斗姿势，主角朝画面右边。纯色或简单背景，16:9，宽至少 1600 像素。 |
| 场景 `<Picture 2>` | 没有人。画出后面还要用的钟、柱、桥，以及它们现在的样子。16:9。 |
| 对手 `<Picture 3>` | 和人物相同，朝画面左边。 |
| 变身或其他造型 `<Picture 4>` 起 | 每种造型单独一张，姿势要求相同。变身前放第 1 张，变身后用后面的编号，提示词里写对应的 `<Picture n>`。 |

也可以用一张含正面、侧面、背面的角色设定图代替单张。

人物出图可以按这个结构写，把尖括号换成具体外形：

```text
A full-body character sheet of <外形>, in a dynamic three-quarter side fighting stance facing right, <武器或拳架>, plain light-grey background, cinematic 3D animation style, sharp details, 16:9 landscape, at least 1600 px wide. No text, no watermark.
```

场景：

```text
An empty <场景> with no people, <道具和它们现在的状态>, <光线和天气>, cinematic wide shot, 16:9 landscape, at least 1600 px wide. No text, no watermark.
```

2D 日漫把画风改成 `2D Japanese anime style`。提示词里保留这一句：姿势和朝向跟着动作和对手，不照参考图里的站姿。原句见 [六段式](prompt-structure.md)。
