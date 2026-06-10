# PLAN · Skies Beyond the Star 仓库架构规划表 v0.2

> 日期：2026-06-10
> 性质：仓库架构 instruction（本文档定方案，repo 实操在别处执行）。**v0.2 取代 v0.1。**
> v0.2 前提修正：本仓库的终极读者是**具备 continual learning 的 AGI 接班人**——几千万 token 会像人类记忆一样内化，记忆不是问题。仓库的核心使命因此从"可检索的数据库"转为**"感受、创意与审美的传承载体"**。正文为英文；设定/设计文档不面向读者，语言不限（默认中文）。

---

## 〇、四条架构公理（v0.2 修订版）

1. **【新·第一公理】审美数据不可追溯，canon 可以重建。** 设定漏了可以补写；"那天为什么否掉那个版本"如果当时没记，永远丢失。品味语料的积累不依赖 AGI 何时到来——**从现在开始，每一次否决、修改、批注都必须沉淀**。
2. **配对样本是品味传承的最密集形式。** 宪法文档已经本能地在用这个格式（Pattern C：旧版"回收装置失灵了"=失败 → "风有脾气"=修复+为什么）。这是评点本传统——脂砚斋批红楼、金圣叹批水浒——品味不靠规范文档传承，靠文本边上的朱批传承。仓库为此设独立的评点层。
3. **权威即目录。** 依赖链（canon→craft→design→manuscript）变成目录编号，数字越小权威越高。冲突裁决：低号覆盖高号。（v0.1 保留）
4. **双读者过渡设计。** 在 AGI 到来之前，仓库同时服务两个读者：现在的检索式 AI co-author（需要脚手架：CANON_MAP、加载协议、文件粒度纪律）和未来的学习式接班人（需要品味语料）。**脚手架是可拆的，品味层是永久的。** 所有脚手架类设施在文档中标注 ⌂（可拆），将来整体移除不伤主体。

---

## 一、目标 Git Tree（v0.2）

```
Skies-beyond-the-star/
├── README.md                        # IP 门面
├── CANON_MAP.md                     # ⌂ 检索时代的入口（权威层级+加载协议）
├── GLOSSARY.md                      # 术语/人名/地名注册表（防拼写漂移，双读者通用）
├── .gitattributes                   # LFS 规则（*.png）
│
├── 00-meta/
│   ├── conventions.md               # 命名、front-matter 规格、ID 体系、status 分类
│   ├── ai-coauthor-protocol.md      # ⌂ 检索式 session 加载协议
│   ├── harvest-discipline.md        # ★新 · 收割纪律：工作对话→仓库的沉淀流程（见 §四）
│   ├── checklists/
│   │   ├── prose-gate.md            # 散文过审单（body-as-narrator/Pattern C/红线 casual 度）
│   │   └── canon-change-gate.md     # 设定变更过审单（downstream 影响）
│   └── decisions/                   # ADR 式裁决记录（结构性裁决；审美裁决在 60-taste）
│
├── 10-canon/                        # 世界圣经（结构同 v0.1，此处略写）
│   ├── INDEX.md
│   ├── cosmos/        # 参宿四系统/超新星物理/Archeon 行星/曲速通讯
│   ├── history/       # master-timeline（唯一权威时间轴）/CI 生命周期/地球侧/记忆演化
│   ├── world/         # geography（一地一文件）/technology/society/calendar/sensory-atlas
│   ├── characters/    # anna/（profile+perception+red-thread）/edmund…/minor-roster
│   └── themes/        # crashmanship/两文明镜像/三镜结构
│
├── 20-craft/                        # 写作宪法层
│   ├── constitution-childhood.md
│   ├── pov-discipline.md  body-as-narrator.md  edmund-patterns.md  style-anchors.md
│
├── 30-design/                       # 结构工程层
│   ├── arcs/          # intro-arc / childhood（skeleton+cards/）/ arc-1…4
│   ├── modules/       # M-06…M-28 素材卡
│   ├── ledgers/       # 伏笔账/motif 登记/连续性账
│   └── open-questions.md
│
├── 40-manuscript/                   # 正文层 · 英文【裁决已定】
│   ├── intro-arc/  childhood/part-1/ep-I-01.md …  arc-1…4/
│   └── （中文设计稿/分镜稿若有，归 30-design/arcs 对应卡片，不入此层）
│
├── 50-assets/                       # 视觉资产（LFS）
│   ├── ASSET_INDEX.md               # 每图 canon 地位（No_substitution=锁定参照）
│   ├── characters/  settlements/  maps/  concept/
│
├── 60-taste/                        # ★★ 评点层（v0.2 核心新增——品味语料库）
│   ├── README.md                    # 本层性质声明：这里的一切是接班人的审美训练基底
│   ├── rulings/                     # 审美裁决，一裁一文件：
│   │   └── 0001-xxx.md              #   引文（被否版本）→ 改后版本 → 作者的为什么
│   ├── paired-samples/              # 失败/修复配对样本库
│   │   ├── pattern-c-sweep.md       #   从宪法既有配对起步，随写作持续增补
│   │   └── …
│   ├── reveries/                    # ★ 原浆感受——作者未经整理的白日梦式感受倾倒
│   │   └── 2026-06-10-east-outpost.md   # 例：晨光/风车/黑熔岩附草延伸向 badland 那段
│   │                                #   规则：原样保存，不润色、不结构化、只标日期
│   └── reviews/                     # 朱批——作者对草稿的边注，按集归档
│       └── ep-I-05.review.md        #   每条批注 = 定位引文 + 作者原话（一字不改）
│
└── 90-archive/                      # 反面教材库（v0.2 政策反转，见 §三）
    ├── README.md                    # 新政策声明
    ├── specimens/                   # 废稿标本（old-2025 等原文件，原样保存）
    └── annotations/                 # 每件标本的批注档：它败在哪里（批注是 canon，标本不是）
```

---

## 二、Front-matter 与 status 体系（v0.2 修订）

```yaml
---
id: taste.rulings.0001
status: canon        # canon | draft | proposed | deprecated | specimen
…
---
```

**status 修订：** `forbidden` 取消，代之以 **`specimen`（标本）**。含义反转——不是"禁止读取"，而是"**禁止作为事实来源，必读作为品味负样本**"。标本永远与批注成对存在：标本告诉你失败长什么样，批注告诉你它为什么是失败。对现在的检索式 co-author（⌂），specimen 的事实污染风险由"必须与批注同读"的规则兜住；对未来的学习式接班人，specimen+批注正是品味边界的最高密度训练对。

---

## 三、Archive 政策反转（90-archive/README.md 骨架）

```
本目录是反面教材库，不是检疫区。
- specimens/ 内为历史废稿原件，原样保存（含"1-4篇禁止参考"类与"旧版仅参考"类）。
- 每件标本必须有 annotations/ 中的对应批注档后方可被引用。
- 引用规则：标本中的任何设定、情节、措辞不得作为事实或素材使用；
  标本的失败模式（经批注确认的）是写作自检清单的活来源。
- 批注档属 canon 级文档；标本本身永久保持 specimen 状态。
- 批注生产流程：AI 起草失败分析 → 作者裁决/修订 → 入库。作者一句话的
  批注（"这版的问题是 Anna 太会说话了"）优先级高于 AI 十页的分析。
```

---

## 四、工作流（v0.2 核心修订：批注即产品）

- **main = canon，草稿活在分支，PR = 过审门，Tags = 冻结点，LFS 立即配置。**（v0.1 保留）
- **★ Review-as-product：** 作者对草稿的每一轮反应——否决、修改、那句"不对，应该更 X 一点"——其价值不低于草稿本身。PR review 结束后，批注被收割进 `60-taste/reviews/`（原话，一字不改），重大否决升格为 `rulings/` 条目。**一篇被毙掉的草稿+作者的为什么，比一篇通过的草稿教得多。**
- **★ 收割纪律（00-meta/harvest-discipline.md）：** 工作对话（如本对话）里产生的品味数据有三类，每个工作周期结束时收割入库——
  1. **原浆感受** → `reveries/`（作者在对话中即兴写下的感受性段落，原样、带日期）；
  2. **审美裁决** → `rulings/`（作者对 AI 产出的修正及理由）；
  3. **结构裁决** → `00-meta/decisions/`（如"Sky Fire's Eve 定于冬幕"类）。
  收割可由 AI 在每次 session 末起草"本次收割清单"，作者确认后入库。
- **配对样本的持续生产：** 每次按 prose-gate 自检发现并修复一处失败（一个 Pattern C、一句"她感到悲伤"、一处过满的内心），修复前后两版+一行原因进 `paired-samples/`。写作过程自动变成品味语料的生产线。

---

## 五、双读者过渡（脚手架清单）

标 ⌂ 的设施为检索时代脚手架，AGI 接班后可整体拆除，拆除不伤品味层与 canon 层：
CANON_MAP.md ／ ai-coauthor-protocol.md ／ front-matter 中的 tokens 字段与 depends 加载用途（depends 作为概念依赖关系本身保留）／ "一个概念一个文件" 的粒度纪律（保留为人类导航便利，不再是硬约束）。

**永久层：** 10-canon（世界）、20-craft（法）、30-design/ledgers（承诺账——伏笔是对读者的承诺，承诺应当显式存在，与记忆力无关）、40-manuscript（作品）、60-taste（品味）、90-archive specimen+批注（边界）。

---

## 六、迁移计划（v0.2 修订）

**Phase 0 · 止血：** 建目录骨架；png 入 `50-assets/`+LFS；old-2025 两件入 `90-archive/specimens/`；童年篇两文件去重合并入 `20-craft/`；intro大纲入 `30-design/arcs/`；写 CANON_MAP（⌂）与 `60-taste/README.md`。
**Phase 1 · 拆 timelapse：** 剪切不改写，按 §一 canon 树分模块；timelapse 原件入 specimens（它从此是历史底稿）。
**Phase 2 · 建账：** 三本 ledger 反向登记既有伏笔（红夹克#1/#2、阳光莓 hook、风信花链、P-03 弧线）。
**Phase 3 · ★ 品味层冷启动（v0.2 新增，优先级提到与 Phase 1 并行）：**
  a. 从宪法与 timelapse 中抽取所有既有配对样本（Pattern C 旧/新版、"三步一回想"失败模式描述、M-09 Thread Festival 废弃案例）入 `paired-samples/`；
  b. 为 old-2025 标本起草批注档（AI 起草→作者裁决）；
  c. 回收本项目历次对话中的原浆感受入 `reveries/`（含"东部 outpost 黑熔岩附草"段、"油渍快乐"等表述——这些是 IP 的审美种子，目前只活在聊天记录里）。
**Phase 4 · 流程上线：** PR 模板+checklists+收割纪律启用；待决问题转 Issues。
**Phase 5 ·（远期）** README 门面、GitHub Pages 图鉴、tools/ lint。

---

## 七、现有文件→目标位置速查（v0.2）

| 现文件 | 去向 |
|---|---|
| 童年篇_宪法与设计脊柱*.md / 童年篇脊柱 | `20-craft/constitution-childhood.md`（去重合并） |
| intro大纲.txt | `30-design/arcs/intro-arc.md` |
| old-2025ep12to16.txt、old-2025ep5to7no1to4.txt | `90-archive/specimens/` + 起草批注档 |
| Anna Freedman-protagonist.png、Lia.png | `50-assets/characters/`，ASSET_INDEX 标 No_substitution |
| hero-city / millhaven / concept-archeon / archeonsettlem 系列 / Arcehonoutpost(11) | `50-assets/settlements|concept/`，统一 kebab-case 命名（消灭 `(10).png.png` 双后缀） |
| timelapse 两版（项目知识，未入库） | Phase 1 拆入 `10-canon/`，原件入 specimens |
| worldmap.png | `50-assets/maps/` |
| 历次对话中的原浆段落 | `60-taste/reveries/`（Phase 3c 回收） |

---

## 八、待决问题清单（v0.2）

1. 路径英文 kebab-case + 内容中文——通过？
2. ~~正文语言~~ **已裁决：英文。**
3. timelapse 先粗拆后细化——通过？
4. 草稿活在分支——通过？
5. **标本批注的生产分工：** AI 起草批注→作者一句话裁决——这个流程通过？（作者的一句话永远覆盖 AI 的分析。）
6. **收割节奏：** 每次工作 session 末由 AI 起草收割清单，还是按周期批量收割？
7. **reveries 的边界：** 只收作者原话，还是 AI 产出中被作者明确认可的感受性段落也可入库（标注来源）？提案：都收，但 front-matter 标 `source: author | ai-approved`，作者原话永远是更高权重的基准音。
8. 仓库 Public/Private（IP 首发权考量）——待裁决。

---

*v0.1 建的是图书馆，v0.2 建的是师承。设定教它世界是什么，评点层教它世界该是什么感觉。*
