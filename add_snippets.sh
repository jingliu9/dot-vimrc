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
## my lua filter required
test_existence colort $MD_SNIPPETS
retval=$?
if [ "$retval" == 0 ]
then
    printf '\n'
    printf '\nsnippet colort\n\t <span style="color: ${1:color};">${0:text}</span>' >> $MD_SNIPPETS
fi


## `codeblock-line`: code block with line number (pandoc required)
test_existence codeblock-line $MD_SNIPPETS
retval=$?
if [ "$retval" == 0 ]
then
    printf '\n'
    printf '\n# Use pandoc extension (fenced_code_attributes)' >> $MD_SNIPPETS
    printf '\n# Also works for github' >> ${MD_SNIPPETS}
    printf '\nsnippet codeblock-line' >> ${MD_SNIPPETS}
    printf '\n\t~~~~ {#${1:name} .${2:lang} .numberLines startFrom="${0:line}"}' >> ${MD_SNIPPETS}
    printf '\n\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~' >> ${MD_SNIPPETS}
fi

## `underlinet`: underline text in gened pdf (pandoc required)
test_existence underlinet $MD_SNIPPETS
retval=$?
if [ "$retval" == 0 ]
then
    printf '\n'
    printf '\nsnippet underlinet\n\t <span class="underline">${0:text}</span>' >> $MD_SNIPPETS
fi
