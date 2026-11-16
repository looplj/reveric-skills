# 来源、署名与许可

本目录是 [h3-fight](https://github.com/huangserva/h3-fight) 的独立改编，整理日期 2026-11-16。上游提交 `d148e5315a6cabb2db81ed5524068ba0d43b9f06`。它不是上游原版，也不并入本仓库的 `fight-director`。

## 提示词库

`references/shots/`、`references/shot-index.md`、`references/phrases.md`、`references/moves.md`、`references/pitfalls.md`、`references/sources.md`、`references/examples/` 来自上游 `库/` 与 `库对照.md` 所依据的提示词库，采用 [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/)。

署名：h3-fight，https://github.com/huangserva/h3-fight 。分享或再改时保留本说明，并注明后续修改。仓库根目录的 MIT 许可不覆盖这些内容。

`references/phrases.md` 里标 ★ 的 16 个短语来自 BUNNY 作者（Hugging Face [JOKER141](https://huggingface.co/JOKER141) / FourBunny）的演示提示词。上游只收录短语，演示原文不在本目录。第三方材料适用相应权利人的许可。

## 写法与检查

`SKILL.md`、`references/prompt-structure.md`、`references/reference-images.md` 依据上游技能说明和 `docs/参考图怎么出.md` 改写。

`references/checklist.md`、`references/multi-segment.md` 依据上游 MIT 许可的 `工具/检查.py`、`工具/共用.py`、`工具/查重复.py` 整理成文字规则。本目录不收录这些脚本，也不收录 ComfyUI 工作流、字幕工具、配置样例和 `docs/效果/` 的演示 GIF。出片、出图和放大仍以上游仓库为准。

## 这次改了什么

- 把 JSON 镜头库改成按用途拆开的 Markdown，方便按一个镜头位置读取。
- 主技能改成挑选、整句改写和文字自检，不再要求运行 Python。
- 镜头英文、词句、招式写法和踩坑条目保持上游原文。
- 完整来源提示词保留 k4d、C1、日漫C5 三条作六段式范例，其余来源的镜头英文在镜头文件里，来源说明在 `references/sources.md`。
- 等级 B 只作打法参考；衔接镜头只用于登场、对峙和变身。这条使用界限写在索引里，没有改等级本身。

改编者：Reveric contributors。
