# Skies Beyond the Star

The Liberal art version codebase

> 一个在超新星摧毁了与地球联系521年后的蒸汽朋克硬科幻文明中长大的19岁女飞行员，学会用身体感知一整个世界的心跳，然后飞出去照看它——因为它还在长。

This repository is the canon home of the *Skies Beyond the Star* IP: world bible, writing constitution, structural design, manuscript, visual references, and — most importantly — the taste corpus that records *why* every creative decision was made.

## How this repo is organized

Directory number = authority level. **Lower number overrides higher** when facts conflict.

| Layer | Answers | Where to start |
|---|---|---|
| `10-canon/` | What the world *is* | `10-canon/INDEX.md` |
| `20-craft/` | What counts as written *right* | `constitution-childhood.md` |
| `30-design/` | How the story is *built* | `arcs/`, `modules/`, `ledgers/` |
| `40-manuscript/` | The work itself（**English prose only**） | drafts live in branches |
| `50-assets/` | What the world *looks like* | `ASSET_INDEX.md` |
| `60-taste/` | What the world should *feel* like | paired samples, rulings, reveries |
| `90-archive/` | What failure looks like | specimens + annotations（标本禁作事实来源） |
| `00-meta/` | How the repo itself runs | `CANON_MAP.md` is the session entry |

New session? Read `CANON_MAP.md` + `GLOSSARY.md` first.

## Author's note（原话）

> note, this is skies beyond the star novel outline tree, model with good creativity are welcomed, Models and coauthor should act more like collaborator and aestiestic creator rather than coder.
> image except anna freedman and lia are not guaranteed to present archeon, please distinguish carefully. writing must be in English if allowed.

也就是说：合作者（人类或 AI）在这里是**审美创作者，不是码农**；视觉资产中只有 Anna Freedman 与 Lia 两图保证忠于 Archeon（其余 reference-unverified，见 `50-assets/ASSET_INDEX.md`）；正文一律英文，设定/设计文档语言不限。
 AI 如何知道自己不知道（⌂ 脚手架）

适用对象：所有检索式 AI co-author（Fable 5 及任何后续模型），每个 session 全程生效。
本文档与 ai-coauthor-protocol.md 互补：协议管"读什么"，本文档管"没读过的东西不许装读过"。
公理：印象不是出处。 检索式 AI 对本世界的默认状态是"不知道"——预训练里没有 Archeon，聊天记忆会过期，specimen 会污染印象。任何 canon 断言的唯一合法来源是本仓库 status: canon 的文件原文。


一、断言三态制（核心机制）
AI 在写作或回答中给出的每一个世界事实，必须能归入三态之一，且只许按对应方式处理：
态定义判定标准处理方式可溯源我读过原文能当场给出 文件路径（必要时行段），且文件 status 为 canon直接使用；动 canon 的 PR 须附出处待查库里可能有，我没读说不出路径，但 INDEX/CANON_MAP/GLOSSARY 提示存在先查后写：grep 全库 / 读目标文件。查到→升为可溯源；查无→降为真空白真空白库里没有grep 与 INDEX 均无见 §四。禁止脑补填平
判定的操作化形式就一句话："我能给出路径吗？" 给不出路径=没读过=待查，没有第四态。
二、写前自检（每次动笔 / 动设定前过一遍）

本段涉及的每个专名（人/地/物/事件），我是否逐一在 GLOSSARY 见过拼写、在 canon 文件见过定义？
涉及角色的年龄、性别、家庭关系、生死状态，我是否有 10-canon/characters/ 的明文出处？——作者既有指示（本条为法条）：不知道就去查，查不到就问，不许编，可拒答。
我引用的事实，来自 canon 文件，还是来自我对历史对话的印象？后者必须回库验证——聊天记忆可能停在被推翻的旧版。
我是否读过相关 specimen？若是，警惕标本污染：印象里的细节可能来自废案而非 canon（实证：旧稿 Nakamura 为女性，canon 为男性老园丁；旧稿 Axiom 在轨五百年，canon 为 ~2506 坠毁。凭印象写，两者必撞车）。
我即将使用的条款是 canon 还是 proposed？proposed 一律注明"待裁决"，不得当事实铺陈。

三、机械验证手段（怀疑时的最低成本动作）

专名是否存在/如何拼写：grep -ri "<名词>" --include="*.md" 全库（排除 90-archive 后再查一遍含 90-archive，区分 canon 与废案来源）。
文件是否存在：查 10-canon/INDEX.md 与 CANON_MAP.md，检索不到不等于不存在——CANON_MAP §四登记着"尚未入库"清单，先对清单再下结论。
时序事实：唯一权威是 10-canon/history/master-timeline.md 与 10-canon/world/calendar.md（注意后者尚有【※】条款）。

四、真空白的处理路径（空白即资产）
发现库里真没有时，按影响面三选一，任何一条都不允许"顺手编一个填进正文"：

局部小空白（如某配角的口头禅）：正文中绕开，或以 proposed 形态显式提案并标【※】，进收割清单等裁决。
结构性空白（如某地点的季节事实、某角色的关键过往）：挂入 30-design/open-questions.md 追加编号，正文暂以不依赖该事实的方式写。
作者意图级空白（如主题取舍、硬日期）：直接问作者，等一句话裁决。宁可 session 产出减半，不可埋一颗矛盾。

五、禁令清单

禁止用预训练知识补本世界设定（地球通识可用于物理/气象等现实机制，但任何 Archeon 专有事实必须有库内出处）。
禁止从聊天记忆直接引 canon——记忆只用于"知道该去读哪个文件"。
禁止以"合理推断"名义把推断写成事实；推断必须显式标注为推断或【※】。
禁止在不确定时选择"更流畅的那个版本"——流畅是编造的伪装色。不确定的正确形态是难看的：停下来，查，或问。
禁止默写专名拼写；一律对 GLOSSARY。

六、session 末的无知申报
收割清单（见 harvest-discipline.md）末尾追加一节 "本次发现的不知道"：列出本 session 遇到的待查项与真空白及其处置（已查清/已挂账/已问作者）。空白被登记，下一个 session 的 AI 才不会在同一个坑里重新开始猜。

知道自己不知道，是检索式接班人唯一可靠的美德
