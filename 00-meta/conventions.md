---
id: meta.conventions
status: canon
date: 2026-06-10
---

# 命名、front-matter 与 status 体系

## 路径与命名

- 目录与文件名：英文 kebab-case；内容语言不限（正文必须英文，设定/设计文档默认中文）。
- 目录编号 = 权威等级（见 CANON_MAP §一），低号覆盖高号。
- 图像统一 kebab-case，禁止空格、括号、双后缀（`(10).png.png` 类已于 Phase 0 消灭）。
- 新名词（人/地/物）入任何文件前先在 `GLOSSARY.md` 注册。

## front-matter 规格

每个 md 文件头部（唯一豁免：根 `README.md`——它是 IP 门面，保持对外干净）：

```yaml
---
id: <层名>.<路径>.<名>     # 如 canon.world.calendar / taste.rulings.0001
status: canon | draft | proposed | deprecated | specimen
date: YYYY-MM-DD            # 最后实质修订日
source: <可选，迁移来源或出处>
scaffold: true              # 可选；⌂ 脚手架文档专用，AGI 接班后整体拆除
---
```

## status 语义

| status | 含义 |
|---|---|
| `canon` | 权威事实/法条，冲突按目录编号裁决 |
| `draft` | 写作中，活在分支 |
| `proposed` | 待作者裁决（如 calendar.md 的【※】条款） |
| `deprecated` | 已被取代，保留仅为追溯 |
| `specimen` | **标本**：禁止作为事实来源，必读作为品味负样本；必须与 `90-archive/annotations/` 批注成对 |

## ID 体系

- 审美裁决：`taste.rulings.NNNN`，四位递增，一裁一文件。
- 结构裁决：`meta.decisions.NNNN`，同上。
- 素材卡：沿用既有 M-NN 编号（M-06…M-28）。
- Episode：`ep-<罗马卷号>-<集号>`，如 `ep-I-01`。

## 行文约定（decisions / canon 文件）

- **不写引述式归因标记**：「裁决人：作者（…）」「理由（作者原话方向）」「作者确认/作者指令/作者裁决/作者亲手」这类一律不写——直接用自己的话陈述事实和理由，配日期与 decisions 编号即可（2026-06-10 起执行，全库已清理一轮）。
- 例外：流程定义文档（repo-plan、harvest-discipline、canon-change-gate、PR 模板等）中"作者裁决/作者原话"是治理机制术语，保留；90-archive 归档层不动；真实逐字引文存证（如 decisions/0005）保留。

## 工作流

- **main = canon**；草稿活在分支；PR = 过审门（对照 `checklists/`）；Tags = 冻结点。
- LFS：`.gitattributes` 中 `*.png` 规则已写好但**注释停用**——2026-06-10 实测本仓库托管通道对 lfs.github.com 授权失败，规则激活会产生无法上传的指针。图像暂按普通对象入库（现有图均 <10MB，安全）。启用步骤：确认 LFS 端点可用 → 取消 `.gitattributes` 注释 → `git lfs migrate import` 一次性转换 `50-assets/`。
