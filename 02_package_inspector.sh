#!/bin/bash
# ============================================================
# Script 2: FOSS Package Inspector
# Author    : Shalvi Pandey
# Reg No    : 24BCE11141
# Software  : LibreOffice
# ============================================================

PACKAGE="LibreOffice"

echo "======================================"
echo "   FOSS Package Inspector"
echo "======================================"
echo "Checking package: $PACKAGE"
echo "--------------------------------------"

# Correct path check with quotes (VERY IMPORTANT)
if [ -d "/c/Program Files/LibreOffice" ] || [ -d "/c/Program Files (x86)/LibreOffice" ]; then
    echo "LibreOffice is installed on this system."
    echo "Location: C:\\Program Files\\LibreOffice"
else
    echo "LibreOffice is NOT installed on this system."
fi

echo ""
echo "--------------------------------------"
echo "Package Description:"

case $PACKAGE in
    LibreOffice)
        echo "LibreOffice: a free and open-source office suite used for documents, spreadsheets, and presentations."
        ;;
    *)
        echo "No description available."
        ;;
esac

echo "======================================"
