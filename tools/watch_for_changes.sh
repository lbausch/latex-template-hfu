#!/usr/bin/env bash

RED='\033[0;31m'
NC='\033[0m'

# Build PDF once
/latex/tools/build_pdf.sh

# Watch *.tex files for changes
# Some editors (looking at you TeXstudio!) delete and recreate the edited file - this behaviour kills the inotifywait below
#while inotifywait -e modify *.tex; do /latex/tools/build_pdf.sh; done

# More robust usage of inotifywait using --monitor
inotifywait --monitor --event close_write,create . | while read -r directory events filename; do
    if [[ "$filename" == *".tex"* || "$filename" == *".bib"* ]]; then
        printf "\n${RED}======= ${filename} changed =======${NC}\n"

        /latex/tools/build_pdf.sh
    fi
done
