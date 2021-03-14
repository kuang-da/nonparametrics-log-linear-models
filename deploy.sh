#!/bin/bash

# Copy all the notes into a single directory before pushing to GitHub

DIRECTORY=.
TARGET_DIR=all-notes
FILE_NAMES=("2-hypothesis-testing" \
"3-binomial-distribution" \
"4-sign-test-wilcoxon-signed-rank-test" \
"5-wilconxon-rank-sum-test-rs-test" \
"6-ansari-bradley-test-kruskal-wallis-test" \
"7-friedman-rank-test" \
"8-kendall-spearman-corrlation-coefficient-cohen-kappa" \
"9-prop-in-tabble-chi-squared-test" \
"10-odds-ratio-fisher-exact" \
"11-ij-table-ijk-table")
NUMBER=0
mkdir "$DIRECTORY/$TARGET_DIR"
for the_file in "$DIRECTORY"/l*/main.pdf; do
    echo "$the_file"
    idx=$(echo "$the_file" | tr -cd '0-9')
    idx=$(("$idx" - 2))
    echo "${FILE_NAMES[$NUMBER]}"
    NUMBER=$(( NUMBER + 1 ))
    cp "$the_file" "$DIRECTORY/$TARGET_DIR/${FILE_NAMES[$idx]}.pdf"
done

# git push