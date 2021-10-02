#!/bin/bash
# * Shell Script Description *
# A shell script that displays the file size and number of words
# of each file inside of a directory.
#
echo
for f in "$1"/*; do
  if [ -f "$f" ]; then
    file_name="$(basename "${f}")"
    file_size="$(du -sh "${f}" | cut -f1)"
    word_count=$(wc -w < "${f}" | cut -d ' ' -f1)
    echo "--------------------------------------------------------------------"
    echo "   Processing $file_name file..."
    echo "--------------------------------------------------------------------"
    echo
    echo "   Size Of File: = $file_size bytes"
    echo "Number Of Words: = $word_count words"
    echo
  fi
done
echo "--------------------------------------------------------------------"
echo "There Are No Files Left To Process Inside Of This Directory."
echo "Shell Script Will Now Terminate..."
echo

