#!/bin/bash

rm -f "Scripts/Output list nâng cao.txt"
exec >> "Scripts/Output list nâng cao.txt" 2>&1

find "Lý nâng cao" -type f -not -name "Thư viện bài học.xlsx"

exec 1>&- 2>&-

python "Scripts/Output directory for markdown.py"