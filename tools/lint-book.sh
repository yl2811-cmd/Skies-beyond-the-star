#!/usr/bin/env bash
# lint-book.sh — 对全书唯一权威本体做 grep 级机械校验
#   用法: tools/lint-book.sh          # 只打印报告
#         tools/lint-book.sh --write  # 同时把"外部引用清单"写回 0.4 节（LINT 标记之间）
# 校验项:
#   1) 纪年一致性: 权威口径 = Anna 时代 3031 (Year 521), Sky Fire ~2510, 光到达地球 ~3010。
#      凡 3021 一律告警; "3010 且同段提及 Anna 时代"告警(已知待改写区 Ep7 除外)。
#   2) 引用闭合性: 扫描 M-xx / P-xx / FED-x 代号, 凡未在标题或 0.3 代号词典中定义的列为外部引用。
set -euo pipefail
cd "$(dirname "$0")/.."
BOOK="timelapse-consolidated-2026-06-10.md"

echo "== [1] 纪年一致性 =="
if grep -n "3021" "$BOOK"; then echo "!! 发现 3021（无效年份口径）"; else echo "OK: 无 3021"; fi
echo "-- 3010 出现处（光到达地球=合法；标 Anna 时代=违规；Ep7 待改写区=已知豁免，见 7.2 #17）--"
grep -n "3010" "$BOOK" | grep -v "光到达\|看到\|亲眼\|到达地球" || echo "OK: 3010 仅用于光到达地球语境"

echo
echo "== [2] 引用闭合性（外部引用 = 被引用但无标题级定义且不在 0.3 词典）=="
refs=$(grep -o 'M-[0-9][0-9]*b\?\|P-[0-9][0-9]*\(\.[0-9]\)\?\|FED-[0-9]' "$BOOK" | sort -u)
dict=$(awk '/^## 0\.3 /,/^## 0\.4 /' "$BOOK")
heads=$(grep '^#' "$BOOK")
defs7=$(awk '/^## 7\.1 /,/^# 8\. /' "$BOOK" | grep '^\*\*P-' || true)
ext=""
for c in $refs; do
  if ! printf '%s\n%s\n%s\n' "$heads" "$dict" "$defs7" | grep -q -- "$c"; then ext="$ext$c\n"; fi
done
if [ -n "$ext" ]; then printf "以下代号无定义（外部引用）:\n$ext"; else echo "OK: 所有被引用代号均有定义或词典条目"; fi

if [ "${1:-}" = "--write" ]; then
  python3 - "$BOOK" << 'PY'
import re, sys, subprocess, datetime
book_path = sys.argv[1]
refs = subprocess.run(['bash','-c',
  f"grep -o 'M-[0-9][0-9]*b\\?\\|P-[0-9][0-9]*\\(\\.[0-9]\\)\\?\\|FED-[0-9]' {book_path} | sort -u"],
  capture_output=True, text=True).stdout.split()
t = open(book_path, encoding='utf-8').read()
dict_sec = t[t.index('## 0.3 '):t.index('## 0.4 ')]
heads = '\n'.join(l for l in t.split('\n') if l.startswith('#'))
i71 = t.index('## 7.1 '); i8 = t.index('\n# 8. ')
defs7 = '\n'.join(l for l in t[i71:i8].split('\n') if l.startswith('**P-'))
ext = [c for c in refs if c not in dict_sec and c not in heads and c not in defs7]
today = datetime.date.today().isoformat()
if ext:
    body = '\n'.join(f'- `{c}` — 被引用但本卷无定义，待补' for c in ext)
else:
    body = '（本次扫描：所有被引用代号均有定义或词典条目，无外部引用。）'
block = f'<!-- LINT:EXTERNAL-REFS:BEGIN -->\n生成于 {today}（tools/lint-book.sh --write）：\n\n{body}\n<!-- LINT:EXTERNAL-REFS:END -->'
t = re.sub(r'<!-- LINT:EXTERNAL-REFS:BEGIN -->.*?<!-- LINT:EXTERNAL-REFS:END -->', block, t, flags=re.S)
open(book_path, 'w', encoding='utf-8').write(t)
print('0.4 外部引用清单已写回')
PY
fi
