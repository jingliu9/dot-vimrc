#! /bin/bash

RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

function test_existence() {
    OP=$1
	FNAME=$2
	if grep -Fq "$OP" "$FNAME"
	then
        # Found
        echo -e "${CYAN}${OP}${NC} existing, skip"
        return 1
	fi
    # Not Found
    echo -e "${RED}${OP}${NC} not existing, will add"
    return 0
}

# Markdown
MD_SNIPPETS="./bundle/vim-snippets/snippets/markdown.snippets"
## `colort`: colored text in markdown (actually the gened pdf)
test_existence colort $MD_SNIPPETS
retval=$?
if [ "$retval" == 0 ]
then
    printf '\nsnippet colort\n\t <span style="color: ${1:color};">${0:text}</span>' >> $MD_SNIPPETS
fi
