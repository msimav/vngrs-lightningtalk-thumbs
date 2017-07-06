#!/bin/sh

convert background.png -gravity South -pointsize 96 -font 'KelsonSans-Regular' -fill white -annotate +0+300 "$1" -pointsize 64 -annotate +0+220 "$2" out/thumbnail.jpg
