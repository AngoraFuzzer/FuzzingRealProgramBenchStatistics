#!/bin/sh

cat Readme.md| awk ' BEGIN { RS = "\n" ; FS = "," } /^\-/  {tot[$1]++}  END {for (i in tot) print tot[i],i} ' | sort -r -n  > rank.txt