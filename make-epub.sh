#!/bin/bash
# This script requires pandoc (http://pandoc.org) to run. It assumes you're running from
# the root directory of the repo, and places completed epubs in /epub/.
# Note the tail -n +2 skips the first line in each file, which removes redundant
# headers that screw with TOC generation.

mkdir epub
cd "up & going"
tail -n +2 foreword.md ch1.md ch2.md ch3.md apA.md README.md | pandoc  --chapters -S -f markdown_github -t epub --epub-metadata=metadata.xml --epub-cover-image=cover.jpg --data-dir "./" -o "../epub/YDKJS - 01 - Up & Going.epub"
cd "../types & grammar"
tail -n +2 foreword.md ch1.md ch2.md ch3.md ch4.md ch5.md apA.md apB.md README.md | pandoc  --chapters -S -f markdown_github -t epub --epub-metadata=metadata.xml --epub-cover-image=cover.jpg --data-dir "./" -o "../epub/YDKJS - 02 - Types & Grammar.epub"
cd "../this & object prototypes"
tail -n +2 foreword.md ch1.md ch2.md ch3.md ch4.md ch5.md ch6.md apA.md apB.md README.md | pandoc  --chapters -S -f markdown_github -t epub --epub-metadata=metadata.xml --epub-cover-image=cover.jpg --data-dir "./" -o "../epub/YDKJS - 03 - This & Object Prototypes.epub"
cd "../es6 & beyond"
tail -n +2 foreword.md ch1.md ch2.md ch3.md ch4.md ch5.md ch6.md ch7.md ch8.md apA.md README.md | pandoc  --chapters -S -f markdown_github -t epub --epub-metadata=metadata.xml --epub-cover-image=cover.jpg --data-dir "./" -o "../epub/YDKJS - 04 - ES6 & Beyond.epub"
cd "../scope & closures"
tail -n +2 ch1.md ch2.md ch3.md ch4.md ch5.md apA.md apB.md apC.md apD.md README.md | pandoc  --chapters -S -f markdown_github -t epub --epub-metadata=metadata.xml --epub-cover-image=cover.jpg --data-dir "./" -o "../epub/YDKJS - 05 - Scope & Closures.epub"
cd "../async & performance"
tail -n +2 foreword.md ch1.md ch2.md ch3.md ch4.md ch5.md ch6.md apA.md apB.md apC.md README.md | pandoc  --chapters -S -f markdown_github -t epub --epub-metadata=metadata.xml --epub-cover-image=cover.jpg --data-dir "./" -o "../epub/YDKJS - 06 - Async & Performance.epub"
