# 打法与近身细分

打法种类表。多段片子每段选一个“主打法”，相邻段不重复，整片至少用 6 类。工具/查重复.py 用这里的“认”正则数每段用了哪些。“写法”是可以整句搬进镜头的英文，<A> 出招的人、<B> 挨打的人。来由：2D 日漫测试 A 五段只用到 拳、腿、格挡、气功波、冲撞、空中追击 这几类，每段还是同一个节拍顺序，看片都说单一。另一种单一是“节拍单一”：每段都照作者六镜头顺序（对冲→快打→三连→特写→垂直下坠硬接→拉远收尾），五段就是同一个节奏放五遍。单段保留六镜头节奏，但第 1、3、5 镜在各段之间要换打法。已验证：日漫测试 C 就是按这张表每段换主打法写的，看片评价“动作非常完美”。注意按词数算会高估“拳脚连打”（伸缩拳的招全带 punch），这条提醒看实际镜头再判断。本技能里的计数见 [多段防单一](multi-segment.md)。

## 打法种类

多段片子每段选一个主打法。相邻段不重复，整片至少 6 类。写法可以整句搬，`<A>` 是出招的人，`<B>` 是接招的人。

### 拳脚连打

- 适合：近身快打。日漫测试 A 用得最多，一段最多一个镜头

```text
<A> throws a fast combo—jab, hook, rising knee—each blow pulled back and thrown again in one continuous flow
```

### 格挡拨挡

- 适合：防守。别让它连续几段都当主打法

```text
<B> deflects each blow with his forearms with zero lag, every block throwing a burst of sparks
```

### 接住对方拳脚

- 适合：力量对比、剧情反转（主角第一次接住反派的拳）

```text
<B> catches <A>'s fist bare-handed in mid-swing, the shockwave of the stopped punch blasting the dust behind them; both strain, then <B> twists the arm and counters
```

### 擒拿摔投

- 适合：日漫测试 A 完全没有的一类；徒手戏最能拉开花样

```text
<A> grabs <B> by the arm, swings him around in a full circle and hurls him down into the ground, the tiles shattering in a crater
```

### 头槌肘击

- 适合：近身发狠、搞笑

```text
<A> slams a headbutt into <B>'s forehead, both reeling back with a ringing crack
```

### 瞬移假动作

- 适合：高手过招、心理战；节奏变化（打着打着突然空了一拳）

```text
<A>'s punch passes through an afterimage—<B> vanishes and reappears behind him; <A> spins and blocks just in time, then vanishes too, the two flickering across the battlefield
```

### 空中追击

- 适合：换空间；一段最多一次

```text
<A> kicks <B> into the sky and chases him upward, overtaking him and smashing him back down in a spiral of dust
```

### 借地形

- 适合：场景互动；每段的场景物件不同就自然不重复

```text
<A> rips a stone pillar out of the ground and swings it like a club; <B> shatters it with one punch, rubble raining down
```

### 地面缠斗

- 适合：落差：从天上打到地上

```text
<A> pins <B> to the ground and pounds him, <B> twists free and rolls away as the ground caves in under the next punch
```

### 浮空连段

- 适合：格斗游戏感；作为三连反击的变体

```text
<A> launches <B> upward with a rising kick, juggles him with three blows in mid-air and spikes him back down
```

### 远程气波/气刃

- 适合：远程；别每段都放；也包括气刃踢气刃、伸缩远程拳这类隔空出手

```text
<A> cups his hands and fires a blazing beam; <B> swats it aside and it blows apart a distant mesa
```

### 光束对拼

- 适合：决战段的高潮；整片只用一次

```text
the two beams collide between them and lock, both straining as the clash point swings back and forth, the ground peeling away beneath them
```

### 冲撞对冲

- 适合：开场；日漫测试 A 每段第 1 镜都是它，换成别的开场（瞬移偷袭、从地下钻出、扔石柱）

```text
both burst forward at the same instant in a supersonic charge
```

### 道具喜剧梗

- 适合：喜剧片：把人物的道具和台词梗演进打斗里（射雕：小蛇咬卡、风扇鼓风机、一脚“踢出董事局”）

```text
the two little snakes on his staff bite the edge of the card and get their teeth stuck
```

## 近身细分

近身手部对打的细分。日漫测试 A 的近身镜头写的都是笼统词：trade punches and kicks at blinding speed、a furious close-range combo、a frantic flurry of punches and kicks、fists crashing together，H3 就画成同一种你一拳我一拳，看片说“像早年的老动画”。写法：每个近身镜头写 ≥ 3 个具体回合，每个回合写成“<A> 出什么招 → <B> 怎么接/怎么挨”，回合之间换招式、换部位（头/腹/腿/手腕）、换方向；每一下挨打要有看得见的反应（头被打偏、身体对折、被推得滑出去）。整片至少用 6 种细分，同一种最多用 2 次；“对拳互抵”最容易用烂，整片最多 1 次。工具/查重复.py 会数。

### 拨挡反击

- 适合：高手的从容，防守变进攻

```text
<B> slaps <A>'s straight punch aside with an open palm, steps inside the guard and drives an elbow into <A>'s ribs
```

### 抓腕翻转

- 适合：力量/技巧压制，接下一招

```text
<B> catches <A>'s wrist mid-punch, twists the arm outward and yanks <A> off balance straight into a rising knee
```

### 前臂对砸

- 适合：势均力敌的开场交手

```text
their forearms smash together with a ringing crack and a ring of shockwave, both sliding back a step on scraping feet
```

### 闪身贴靠

- 适合：小个子打大个子，贴身

```text
<B> ducks under <A>'s hook so close the fist ruffles his hair, then rams his shoulder into <A>'s chest, knocking the wind out of him
```

### 声东击西

- 适合：心理战，节奏变化

```text
<A> feints a high jab; as <B>'s guard rises, <A> drops low and hammers a punch into his exposed stomach
```

### 转身背拳

- 适合：一个回合的收尾重击

```text
<A> spins a full turn and whips a backfist across <B>'s jaw, snapping his head sideways
```

### 膝撞顶腹

- 适合：碾压、一招制服（少年打反派）

```text
<A> pulls <B> in and drives a knee deep into his stomach; <B> folds in half around it, spit flying, eyes bulging
```

### 掌底推击

- 适合：短促有力的打断

```text
<A> thrusts the heel of his palm up under <B>'s chin, snapping his head back and lifting him off his feet
```

### 擦拳闪避

- 适合：表现差距、冷静（变身后的少年）

```text
<B> sways his head aside by a hair; <A>'s fist grazes his cheek, the wind of it whipping his hair back, and <B> doesn't even blink
```

### 同时中拳

- 适合：势均力敌、热血名场面

```text
they swing at the same instant and both fists land—a cross-counter—each face snapping sideways, both skidding back and glaring
```

### 破防

- 适合：转折：防守被打穿

```text
<A>'s punch smashes into <B>'s crossed-arm guard and blasts the arms apart, leaving him wide open for the follow-up
```

### 扫腿挑起

- 适合：接浮空连段、空中追击

```text
<A> drops and sweeps <B>'s legs out from under him, then launches him into the air with a rising kick
```

### 锁喉压制

- 适合：压制、反派的狠

```text
<A> grabs <B> by the collar, pins him against the rock face and hammers knees into his body one after another
```

### 对拳互抵

- 适合：最容易用烂，整片最多 1 次

```text
their fists meet head-on, a sphere of shockwave exploding outward and carving the ground in a ring
```
