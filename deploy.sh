#!/bin/bash

# Copy all the notes into a single directory before pushing to GitHub

DIRECTORY=.
TARGET_DIR=all-notes
FILE_NAMES=("2-hypothesis-testing" \
"3-binomial-distribution" \
"4-sign-test-wilcoxon-signed-rank-test" \
"5-wilconxon-rank-sum-test-rs-test" \
"6-ansari-bradley-test-kruskal-wallis-test" \
"7-friedman-rank-test")

mkdir "$DIRECTORY/$TARGET_DIR"
for the_file in "$DIRECTORY"/l*/main.pdf; do
    echo "$the_file"
    idx=$(echo "$the_file" | tr -cd '0-9')
    idx=$(("$idx" - 2))
    echo "${FILE_NAMES[$NUMBER]}"
    cp "$the_file" "$DIRECTORY/$TARGET_DIR/${FILE_NAMES[$idx]}.pdf"
done

git push