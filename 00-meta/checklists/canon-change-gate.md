---
id: meta.checklists.canon-change-gate
status: canon
date: 2026-06-10
---

# canon-change-gate · 设定变更过审单

> 任何对 `10-canon/` 的修改（含 proposed → canon 转正）过 PR 前逐条自检。

- [ ] **权威冲突**：与更低编号目录的既有内容冲突吗？（低号覆盖高号；若要推翻低号，需作者显式裁决并入 `00-meta/decisions/`。）
- [ ] **GLOSSARY**：涉及的新名词已注册？既有名词拼写一致？
- [ ] **时间轴**：与 master-timeline（`10-canon/history/master-timeline.md`，唯一权威）/ 既有时序锚点（calendar.md §1.3）矛盾吗？
- [ ] **downstream 扫描**：30-design 的 arcs/modules/ledgers 中哪些卡片引用了被改设定？逐一列出受影响项。
- [ ] **40-manuscript**：已写成的正文里有没有句子依赖旧设定？
- [ ] **伏笔账**：变更是否动了已登记的承诺（红夹克链、阳光莓 hook、风信花链、P-03 弧线等）？伏笔是对读者的承诺，动账必须显式。
- [ ] **specimen 污染检查**：变更的事实来源是否可追溯到 canon/作者裁决，而不是 90-archive 标本？
- [ ] **裁决留痕**：结构性变更已写入 `00-meta/decisions/`（编号递增）？
