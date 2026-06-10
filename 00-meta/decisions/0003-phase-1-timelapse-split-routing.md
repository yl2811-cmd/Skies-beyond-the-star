---
id: meta.decisions.0003
status: canon
date: 2026-06-10
---

# 0003 · Phase 1 拆 timelapse 的路由裁量与标本格式

## 背景

执行 repo-plan v0.2 §六 Phase 1：`timelapse.txt`（大纲01，5971 行 / 666,015 字节）按行段剪切入库，原件转标本。本档备案执行中的全部裁量。

## 裁决

1. **Part B/E 入 30-design，偏离 §六字面但符合 §一目标树。** repo-plan §六写"拆入 10-canon/"，但源文档中童年素材库（M 卡）、童年篇架构、EP/Arc 集级设计、P-01~P-25 设计原则属结构工程层——目标树（§一）本就把 arcs/modules 划给 30-design。以目标树为准。
2. **canon 内部上提/下放**（均整块剪切，无改写）：3.4b 浮力工程演化 → world/technology；3.6 两文明对比 → themes；1.4a 大气起源 → cosmos；D§3 Anna 航线覆盖 → characters/anna；素材卡区尾部的 Anna-Lia baseline 与童年感知速查表 → characters；§F5 Ep7 场景种子 → 30-design（draft）。
3. **Part C 尾部 CRITICAL 地名规则块（L3317-3406）→ 20-craft/geography-discipline.md**：它自称"写任何 scene 前必读"，是"怎么写才算对"层。
4. **settlement 一地一文件**（repo-plan §一明文）；A 部快照与 D 部 Year 521 签名合于同文件；13 个三行级小聚落整表入 minor-settlements.md（对应 minor-roster 先例，避免过碎）。
5. **节庆五节一文件**（共 59 行，不再细拆）；时序与 calendar.md（proposed）重叠处只加互见注，不去重。
6. **源文档交错与编号错位原样保留**（节庆"四、"嵌 §2、2.7-2.10 在 3.x 之后、M-18b 无标题嵌卡等）——剪切不改写；修复留给后续 canon 编辑流程。
7. **标本格式**：specimens/ 内非 .md 原件（`timelapse-outline-01.txt` 及 old-2025 两件先例）**豁免 front-matter**，字节级原样保存；元数据与引用规则由配对批注档承载。conventions 的 front-matter 规格自此明确不适用于 specimens/ 原件。
8. **换行符规一化是唯一全局格式变更**：源文件为 CRLF，89 个拆分件统一写为 LF；文本内容逐字未动（已机器验证），原始字节由标本保存。
9. **唯一允许的新增内容**：每文件 front-matter（id/status/date/source 行段）+ 两处单行互见注（festivals.md → calendar；timelapse-appendix-seeds.md → Phase 2 转 deprecated 预告）。全部登记于批注档迁移清单。
10. **status 分配**：全部 canon，例外两件——`history/earth-side/ring.md`（proposed，大量 TBD）、`30-design/arcs/intro-ep7-b-line-seeds.md` 与 `30-design/ledgers/timelapse-appendix-seeds.md`（draft）。
11. **随附执行**：intro-arc §二超新星物理整块上提 `10-canon/cosmos/supernova-physics.md`（CANON_MAP/cosmos README 已点名），intro-arc 留指针。

## 影响

- `10-canon/INDEX.md` 重写为全量表；缺口（CI-lifecycle、red-thread、crashmanship、三镜结构）显式登记。
- 验证记录（覆盖性=行段并集 [1,5971] 无重叠、逐段逐字比对 PASS、字节总账）见批注档 `90-archive/annotations/timelapse-outline-01.annotation.md`。
