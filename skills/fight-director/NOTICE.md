# 来源、署名与许可说明

本目录是两份用户提供的打斗 Skill 的整合改编版，不是上游原版或官方联合发行。整理日期：2026-11-13。原始输入文件的 SHA-256 见 [source-manifest.json](source-manifest.json)。

## Arvin / Arvin wang

- 项目：Seedance 2.0 二次元打戏 SKILL，v1.0.0。
- 作者：本地文件元数据为 `Arvin`；项目页面贡献者为 `Arvin wang`。
- 来源：[让 AI 真正学会打戏：Seedance专属 SKILL](https://vibeshot.club/open-source/f3ee534b-b960-4402-bef8-a2ed17c16457)。
- 输入文件：用户提供的 `seedance2.0 武打SKILL.md`，原始文件 3119 行。
- 许可：本地 frontmatter 与项目页面均声明 MIT。原输入没有独立 LICENSE 或完整版权年份声明；本目录保留作者身份，并附 [MIT 许可条款](LICENSE-Arvin-MIT.txt)，不虚构原作者版权年份。
- 改编范围：主技能的动作、节奏、摄影与角色方法；`references/` 下 `camera*`、`close-combat`、`characters*`、`action-chains`、`martial-*`、`impact-vfx`、`rhythm-defense`、`styles-scenes`、`weapon-direction`、`combat-patterns` 等资料。

原文件引用但用户提供材料中未包含以下六份附件，本次网络检索也未找到可确认的原附件。现已提供六份功能对应的创作补编，见后文；原附件名如下：

1. 兵器技法资料库_剑法专项.md
2. 兵器技法资料库_长柄镰刀专项.md
3. 兵器技法资料库_梦想一心太刀专项.md
4. 兵器技法资料库_绯雪樱灼流单太刀专项.md
5. 兵器技法资料库_高级轻功专项.md
6. 兵器技法资料库_修仙高级剑招专项.md

## LucianAIGC

- 项目与贡献者：LucianAIGC-打斗skill-V1 / LucianAIGC。
- 来源：[LucianAIGC-打斗skill-V1](https://vibeshot.club/open-source/a6416233-f7a4-40b2-b1c1-8da7a903d867)。
- 输入：用户提供的同名目录，含 `SKILL.md`、`combat-combiner-module-draft.md` 与六份 references。
- 许可状态：所检查的本地 Markdown 文件和项目公开说明中未发现明确许可证条款。网站“开源”分类本身不等于 MIT 授权；本说明不授予额外权利，也不将这些内容自动纳入仓库根目录 MIT 许可。后续分发、再许可或商用所需权限以权利人授权为准。
- 改编范围：主技能的多角色状态、连续性、技能组合与视听方法；`references/style-mechanisms.md`、`role-adaptation.md`、`elements.md`、`vfx-guideline.md` 及 `spells/`、`weapons/`、`fighting/`。
- 原资料进一步注明法术库来自“用户提供的两份法术技能文档”，特效准则来自《特效准则.docx》。这些底层文件及其作者、许可未随本次材料提供，保留原来源说明，不推定另有授权。

## 整合修改

- 主 SKILL.md 重写为任务流程、核心规则和按需读取索引，未复制两份主文件并列运行。
- 将武学、角色、摄影、特效拆成专题；法术、兵器和格斗库进一步按具体类别拆分，保留原技能编号和正文资料。
- 合并并重写输出模板、角色创建、风格场景与诊断清单；这些综合改编内容同时参考两位作者。
- 统一不同来源的格式、时长、技能数量、镜头限制和特效强度；用户要求与主技能规则优先于参考资料的模式化“铁律”。
- 未纳入未经核验的完播率与准确率宣传数据、重复交互菜单及要求读取缺失附件的工作流。
- 原文编号和命名可能不连续；它们是上游创作资料，不代表经核验的武学史、官方角色设定或视频模型技术规格。

整合者：Reveric contributors。原作者及其他权利人的权利和署名予以保留。根目录 LICENSE 不覆盖本说明中许可未明确的第三方内容；本目录整体不作统一 MIT 授权声明。


## 网络检索与补编依据（2026-11-13）

来源和整理说明集中保存在本文件，使用入口与 reference 正文仅保留工作规则及内容索引。

| 来源 | 核验范围与用于何处 |
| --- | --- |
| [公开同内容仓库](https://github.com/wangminrui2022/seedance-combat-prompt/tree/1014c16671bf115189ad8be86bfd70ddf2d3942a) | 查询此提交的完整文件树，仅有 `.gitattributes`、`LICENSE`、`README.md`、`SKILL.md`，没有六份专项附件；未据此认定仓库维护者就是 Arvin，也未把仓库许可替换为原作者声明。 |
| [IWUF 套路规则材料](https://www.iwuf.org/wp-content/uploads/2023/04/TAOLU-RULES-EN-CN-1.pdf) | 搜索索引可核实刺、挂、撩、点、劈、崩、截、剪腕花等剑术基础动作词；PDF直接抓取超时。仅据此使用基础分类，不声称核验九套门派套路、动作数量或2026年最新竞赛要求。剑法表中的对手回应与摄影描述由本项目编排。 |
| [《原神》雷电将军官方角色演示](https://www.youtube.com/watch?v=mvrW4aKwAXw) | 检索结果可确认官方频道与视频身份，未取得逐帧视频内容。提供为角色视觉参考入口；太刀动作表依用户提供的梦想一心方向编写，不声称复现该视频或完整游戏技能。 |
| [《鸣潮》3.3官方更新说明](https://wutheringwaves.kurogames.com/jp/main/news/detail/4614) | 搜索索引载明绯雪为冷凝属性、迅刀角色、灼樱巫女；用于区分其与原文件的火焰刀绯雪。未把上游“12核心式”、冰弓、时停与双形态细节全部当作本次独立核验事实。 |
| [Paço dos Duques 战镰藏品](https://pacodosduques.gov.pt/monumentos/paco-dos-duques/colecao/armas/foice-guerra-pd1018/?lang=en) | 检索摘要说明战镰与农具改装有历史关联；仅用于避免将幻想死神镰描述为唯一“正统”形制。未将藏品说明改写成现实技击教程。 |
| [香港电影资料馆：武影江湖](https://www.filmarchive.gov.hk/sc/web/hkfa/2024/martial/pe-event-2024-martial.html) | 说明武侠电影以钢丝与特技呈现超常动作及御剑飞行；用于将轻功、御剑作为影视表现编排，而非现实能力断言。 |
| [香港电影资料馆：《武馆》](https://www.filmarchive.gov.hk/tc/web/hkfa/2024/martial/pe-event-2024-martial-fs-film10.html) | 影片介绍强调窄巷空间与不同武术的表现关系，支持“场地改变动作选择”的案例补充；表中的具体动作链由本项目编写。 |

检索包括六份专项文件名、作者／项目名与相关关键词。未搜到可确认原附件不等于断言互联网上不存在。网络页面仅用于事实核对与少量概念参考，未整篇复制网页、图片或视频；这些页面的权利仍归各自权利人，不因列入本文件而获本项目再许可。

## 本次补齐的内容与归属

- `references/weapon-direction.md` 恢复自用户提供的 Arvin 原文件第673–789行：兵器动作要素、九套剑法定位、角色搭配、兵器摄影与动作公式。对“正统”和绝对机位禁令作了适用模式调整。
- `references/combat-patterns.md` 前四个案例依据 Arvin 原文件第2892–2909行重写，补回第2950节多区域连击原则；《武馆》案例的概念依据见上表。未观看或声称逐帧核验前四段影视作品。
- `references/specialized/` 下 `sword.md`、`scythe.md`、`raiden-tachi.md`、`hiyuki-tachi.md`、`qinggong.md`、`immortal-sword.md` 是参考已有编排风格写成的功能补编，不是原附件、考据套路或游戏官方招式表。条目数量依次为12、12、12、12、25、25，共98项；九套剑法映射沿用 Arvin 的创作分类。
- 专项表中的编号、名称、动作链、对手应对和镜头承接是本项目的组织与编写；改编所涉及的上游权利仍按各来源分别保留。没有对整个目录另作统一许可。
- 原文件的太刀、角色和门派标签仅作为创作选项。角色版本、武器实体数量、力量来源与用户明确设定由主技能统一处理；缺少证据的官方设定不因编排文字而被确认。
- 原有 LucianAIGC 的法术、兵器、格斗各100条，共300条记录继续保留；这次补编不替换它们。
- 结构、引用和条目检查只能验证资料组织，不代表视频模型实际生成质量已经得到验证。
