#! /bin/bash

function test_existence() {
    OP=$1
	FNAME=$2
	if grep -Fq "$OP" "$FNAME"
	then
        # Found
        echo "$OP existing, skip"
        return 1
	fi
    # Not Found
    echo "$OP not existing, will add"
    return 0
}

# colored text in markdown
MD_SNIPPETS="./bundle/vim-snippets/snippets/markdown.snippets"
test_existence cltext $MD_SNIPPETS
retval=$?
if [ "$retval" == 0 ]
then
    printf '\nsnippet cltext\n\t <span style="color: ${0:color};">TEXT</span>' >> $MD_SNIPPETS
fi
