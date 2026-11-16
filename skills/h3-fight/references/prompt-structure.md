# 六段式

一份打戏提示词按这个顺序写六个标题：

1. `subject_definitions`
2. `summary`
3. `retention_analysis`
4. `detailed_description`
5. `overall_soundscape`
6. `non_diegetic_music`

全文对照读 [k4d](examples/k4d.md)、[C1](examples/c1.md) 或 [日漫C5](examples/anime-c5.md)。范例里的人物和场景不要原样交付。

## 人物、场景、画风

- `<Subject 1>` 是主角，对应 `<Picture 1>`。
- `<Subject 2>` 是场景，对应 `<Picture 2>`。
- `<Subject 3>` 是画风。
- `<Subject 4>` 是对手，对应 `<Picture 3>`。
- 多出来的对手、同伴或变身造型继续编号。

人物定义写明脸、衣服、武器和能力来自哪张参考图。能力要写成怎么打：四肢能伸多远、每种招打出去是什么样。收在鞘里的武器写成只能看见鞘，刃和光效只在出鞘后出现，用肯定句写这个状态。

每个人物加一句，代词按人物改：

```text
His pose and facing direction always follow the action and his opponent, never the standing pose of the reference picture.
```

场景定义写下这一段开始时已经存在的破坏。后面还要用的钟、柱、殿、桥、树，写清当前状态，并写 `stays … throughout this video`。大招不要朝它打。下一段的场景定义接着上一段结束时的状态写。

定妆图的姿势和朝向见 [参考图](reference-images.md)。

## summary

用一段话写完这一段的情绪弧线，点明唯一的剧情节拍，并写明有没有台词。长对话和剧情交代放到前后的文戏段。

## retention_analysis

每个 Subject 写它出现在哪些镜头、外观保留到什么程度，以及要保持的脸、衣服、武器、道具和光线。

## 镜头

`detailed_description` 先用一两句重复画风和色板，再写镜头。默认时间点：

| 镜头 | 时间 |
| --- | --- |
| `[Shot 1]` | 开场，可以不写 `At` |
| `[Shot 2]` | `At 00:01.000` |
| `[Shot 3]` | `At 00:04.000` |
| `[Shot 4]` | `At 00:07.000` |
| `[Shot 5]` | `At 00:10.000` |
| `[Shot 6]` | `At 00:12.000` |

每个镜头从 [镜头索引](shot-index.md) 的等级 A 块整句搬。句子结构、招式、后果和节奏词保留，只换人名、武器、颜色和场景物件。剧情节拍所在的那一镜也从最接近的块改。

换题材时照样整句搬：刀改拳脚，剑气改气功波，光色改成这个角色自己的气色。

## 台词和视线

每段最多一句短台词，放在全段唯一的脸部特写里。

- 日语写成 `<d>[Japanese] …</d>`，并写 `speaking Japanese`。
- 中文写成 `<d>[Chinese] …</d>`，并写 `speaking Mandarin Chinese (Putonghua)`。不加口音词。同一个人每段的嗓音句一字不改。

脸部特写写成过肩或三分之四侧脸，眼睛看着对手。过肩句：

```text
the camera looks over <Subject 4>'s shoulder at <Subject 1>'s face, his eyes locked on <Subject 4>
```

## 声音

`overall_soundscape` 从 [词句零件](phrases.md) 的“声音”里搬，和这一段的接触、风和冲击对应。`non_diegetic_music` 写 `N/A`。

## 空间和因果

机位绕着两人转或往上升时，写 `the camera stays on the same side of the two fighters`，并在动作句里重复谁在左、谁在右。

跨镜头的因果连着写：前一镜结尾写出扑、伸手或起跳，后一镜开头接住、拖行或落地。人从坑边到石柱，要在镜头里移动过去。

上一段末帧里没有的人，不要在下一段第一帧已经站好。写成从画外跑进画面，或者上一段最后一镜已经带到他。

伸长的手脚先在画面里看到从身体伸出去。身体部位保持和人连在一起。

## 衔接段

登场、对峙、变身走索引里的衔接镜头，不按打戏的六个位置填满。变身前的造型放 `<Picture 1>`，变身后的造型放 `<Picture 4>`，提示词里写 `<Picture 4>`。
