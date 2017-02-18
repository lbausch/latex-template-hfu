#!/usr/bin/env bash

ARG="${1:-watch}"

case "$ARG" in
"build")
    COMMAND="/bin/bash -c 'cd /latex && ./tools/build_pdf.sh'"
    ;;
"shell")
    COMMAND="/bin/bash"
    ;;
"watch" | *)
    COMMAND="/bin/bash -c 'cd /latex && ./tools/watch_for_changes.sh'"
    ;;
esac;

eval "docker run --name latex  -it --user=latex --rm -v $(pwd):/latex lbausch/latex:latest $COMMAND"
