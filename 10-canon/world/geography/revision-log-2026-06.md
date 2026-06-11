地理修订  2026-06-10(大陆级世界地图框架,decisions/0008)
; ---------------------------------------------------------------------------
; 格式沿用 revision-log-2026-05。本轮以作者手绘大陆草图为权威，统一大陆尺度并销三处矛盾。
;
; A) 尺度勘误：
;    - Main Basin 东西 200+ km → 800 km（regional-geography 关键地理单元表录入错误）。
;    - 大陆东西 2000 → 2500 km；南北 3000 km+（主体横向 + 北侧荒地颈部接北极冰盖）。
;    - 同步改 sensory-atlas/continent-from-altitude.md（2000→2500）。
;
; B) 冰盖：terraform 只做到极地冰盖大幅退缩（南缘海冰消融、Azure Main 开放），
;    极地核心冰盖保留。理由：温室气体注入渐进，无法一次性消融全部极地冰。
;    atmosphere-origin-and-terraform.md Phase A 由"冰盖消融→开放海洋"收窄为此义。
;
; C) Ishkar 水系（新结构，proposed，见 hydrology-ishkar.md）：
;    北支（部分向海）+ 南支（Orun 北壁下行）→ 盆地汇成主干。盆地内河流口语统称 Ishkar。
;    basin 无大湖（零星小湖不命名）。待裁：Riverbend = 南支 / 主干。
;
; D) 森林覆盖（套 3-5x 公式，不做真实降水线）：
;    锋面距离 = 0.4 km/yr × (3~5) × 521 yr = 600–1040 km halo。
;    + basin 播种核心 800 km → 植被触及 ~1600 km ≈ 大陆东西 65%。
;    三层：连续密林(basin+Orun迎风) / 自维持疏林(halo,渐稀,覆盖东方草海) / 无植被(halo外)。
;    结论写入 ecology Zone 1/4；公式常量留痕于 decisions/0008 §4。
;
; E) 地图图例锁定：粉=山 绿=峡谷 灰圈=旧取景框 蓝圈=宜居核心。分布近随机。
;
; F) downstream：arc-3.md Frontier "三十万" → census 233k；
;    continuity-ledger 加"大陆尺度"行；CANON_MAP §四销 worldmap 账（资产入库后）。
;
; G) 2026-06-10 追裁（decisions/0009，PR #9 评审对话）：
;    - Riverbend = Ishkar 南支上游（选项 A）。riverbend.md "主流"→"南支主流"，
;      hydrology-ishkar.md proposed → canon，GLOSSARY 定稿。
;    - 三孤儿专名落座大陆以东海域：Vorhan=东侧最大陆块(BARREN) /
;      Keld Archipelago=东北群岛链 / Duskreach=东南离岸陆块。
;      GLOSSARY 补三条；regional-geography 关键地理单元表加行；ecology Zone 5 补位置括注。
