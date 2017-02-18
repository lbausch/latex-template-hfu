#!/usr/bin/env bash

GREEN='\033[0;32m'
NC='\033[0m'

# http://tex.stackexchange.com/questions/5989/exit-codes-of-pdflatex
function build_pdf {
    NAME=$1

    run_pdflatex $NAME
    run_biber
    run_pdflatex $NAME

    if [ $? == 0 ] ; then
        run_pdflatex $NAME
    fi

    printf "\n"
}


function run_biber {
    printf $GREEN
    cat <<EOL

########  #### ########  ######## ########
##     ##  ##  ##     ## ##       ##     ##
##     ##  ##  ##     ## ##       ##     ##
########   ##  ########  ######   ########
##     ##  ##  ##     ## ##       ##   ##
##     ##  ##  ##     ## ##       ##    ##
########  #### ########  ######## ##     ##

EOL
    printf $NC

    biber *.bcf
}


function run_pdflatex {
    printf $GREEN
    cat <<EOL

########  ########  ######## ##          ###    ######## ######## ##     ##
##     ## ##     ## ##       ##         ## ##      ##    ##        ##   ##
##     ## ##     ## ##       ##        ##   ##     ##    ##         ## ##
########  ##     ## ######   ##       ##     ##    ##    ######      ###
##        ##     ## ##       ##       #########    ##    ##         ## ##
##        ##     ## ##       ##       ##     ##    ##    ##        ##   ##
##        ########  ##       ######## ##     ##    ##    ######## ##     ##

EOL
    printf $NC

    texfot pdflatex -shell-escape -file-line-error -synctex=1 -interaction=nonstopmode $1
}

build_pdf "document.tex"
