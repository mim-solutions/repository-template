#!/usr/bin/env bash
set -ex
TEMP=$(mktemp --directory)
sh .hooks/strip_notebooks.py --all --no-index --output "$TEMP"
diff -rq ./stripped "$TEMP" --exclude .gitkeep
rm -rf "$TEMP"
