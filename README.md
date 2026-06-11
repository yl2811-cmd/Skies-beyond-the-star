# Skies Beyond the Star

The Liberal art version codebase

> 一个在超新星摧毁了与地球联系521年后的蒸汽朋克硬科幻文明中长大的19岁女飞行员，学会用身体感知一整个世界的心跳，然后飞出去照看它——因为它还在长。

This repository is the canon home of the *Skies Beyond the Star* IP. 自 2026-06-11 起采用**单文件架构**：整部作品（世界圣经、写作宪法、结构设计、账本、裁决、品味层）合一于一个大文件。

## 仓库里只有五样东西

| 路径 | 是什么 |
|---|---|
| `timelapse-consolidated-2026-06-10.md` | **全书唯一权威本体**（0–9 章：全局索引 / 世界观 / 世界地图 / 童年篇 / Arc 计划 / 账本 / 裁决与规约 / 设计原则与悬而未决 / Arc 1 逐集 / 品味层）。新 session 从第 0 章索引进入。 |
| `CLAUDE.md` | AI 必读协议：RLM 调度、精读 vs 粗扫、改一处扫全文、认知协议（断言三态制） |
| `tools/lint-book.sh` | 机械校验：纪年一致性 + 代号引用闭合（`--write` 自动更新 0.4 外部引用清单） |
| `90-archive/` | 旧 2025 正文标本与批注——反面教材库，**禁作事实来源** |
| `50-assets/` | 图像资产（除 Anna Freedman 与 Lia 外不保证忠于 Archeon） |

## 为什么是一个大文件

多文件结构会让 AI 失去全局视角：每次只读到局部，改一处看不见涟漪，且 AI 与人各自翻找、token 翻倍。单个 fable 系列 agent（1M 上下文）可以一遍通读全卷（约 11–14 万 token）形成可靠的全局感知——经实证能跨章咬合设定细节、抓出分散在四处的纪年级矛盾。大文件开头的第 0 章（纪年表 / GLOSSARY / 代号词典）让人和机器都能快速查。

## 怎么和 AI 协作（RLM 工作流）

1. 作者在主会话提问 / 下指令；
2. 主会话（主脑）**不自己通读**，而是派 1 个 fable agent 通读大文件（当前体量 1 个够；每 agent 上限约 256K token，超量按章分片多派）；
3. agent 把**原文引用（带章节定位）+ 自己的解释**搬运回主线；
4. 作者看"引用 + 解释"做判断，主脑据裁决定向修改，改完跑 lint、扫全文同步。

精读还是粗扫：动 canon、跨章问题、新集设计 = agent 全卷精读；单点查询、错字、定点小改 = 第 0 章索引 + 定向 grep 粗扫。细则见 `CLAUDE.md`。

## Author's note（原话）

> note, this is skies beyond the star novel outline tree, model with good creativity are welcomed, Models and coauthor should act more like collaborator and aestiestic creator rather than coder.
> image except anna freedman and lia are not guaranteed to present archeon, please distinguish carefully. writing must be in English if allowed.

也就是说：合作者（人类或 AI）在这里是**审美创作者，不是码农**；视觉资产中只有 Anna Freedman 与 Lia 两图保证忠于 Archeon；正文一律英文，设定/设计文档语言不限。

## 旧结构去哪了

2026-06-11 扁平化重构前的多文件结构（00-meta / 10-canon / 20-craft / 30-design / 40-manuscript / 60-taste）完整保留于分支 **`pre-flatten-2026-06-11`** 与 git 历史：

```sh
git fetch origin pre-flatten-2026-06-11
git show origin/pre-flatten-2026-06-11 --stat   # 看旧结构
git checkout pre-flatten-2026-06-11             # 整体回到旧结构
```

所有有效内容已逐字并入大文件（导航类脚手架除外，其职能由第 0 章与目录取代）。
