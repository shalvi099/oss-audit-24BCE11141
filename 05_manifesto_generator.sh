#!/bin/bash
# ============================================================
# Script 5: Open Source Manifesto Generator
# Author    : Shalvi Pandey
# Reg No    : 24BCE11141
# ============================================================

echo "======================================"
echo " Open Source Manifesto Generator"
echo "======================================"
echo ""

# Take user input
read -p "1. Name one open-source tool you use: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. What would you build and share freely? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating your manifesto..."
echo ""

# Write manifesto to file
echo "----------------------------------------" > $OUTPUT
echo " Open Source Manifesto" >> $OUTPUT
echo " Date: $DATE" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open source." >> $OUTPUT
echo "Using tools like $TOOL, I experience true $FREEDOM in technology." >> $OUTPUT
echo "I aim to build $BUILD and share it freely with the world." >> $OUTPUT
echo "Knowledge should be open, collaborative, and accessible to all." >> $OUTPUT

echo "" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT

# Display output
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT

echo "======================================"

# Example alias (concept demonstration)
# alias manifesto="cat $OUTPUT"
