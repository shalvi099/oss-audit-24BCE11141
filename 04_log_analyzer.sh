#!/bin/bash
# ============================================================
# Script 4: Log File Analyzer
# Author    : Shalvi Pandey
# Reg No    : 24BCE11141
# ============================================================

LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword = error
COUNT=0

echo "======================================"
echo "        Log File Analyzer"
echo "======================================"

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    echo "Usage: ./script4.sh <logfile> [keyword]"
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Show last 5 matching lines
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "======================================"
