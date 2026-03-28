#!/bin/bash
# ============================================================
# Script 3: Disk and Permission Auditor
# Author    : Shalvi Pandey
# Reg No    : 24BCE11141
# ============================================================

# List of directories
DIRS=("/etc" "/var" "/home" "/tmp" "/usr")

echo "======================================"
echo "     Disk and Permission Report"
echo "======================================"

# Loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERM=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "Directory : $DIR"
        echo "Permissions: $PERM"
        echo "Owner      : $OWNER"
        echo "Size       : $SIZE"
        echo "--------------------------------------"
    else
        echo "$DIR does not exist"
    fi
done

# Check LibreOffice config directory (Windows path)
echo ""
echo "Checking LibreOffice directory..."

if [ -d "/c/Program Files/LibreOffice" ]; then
    ls -ld "/c/Program Files/LibreOffice"
else
    echo "LibreOffice directory not found"
fi

echo "======================================"
