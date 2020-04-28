#!/bin/bash

# from https://stackoverflow.com/questions/59895/how-to-get-the-source-directory-of-a-bash-script-from-within-the-script-itself
nav_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
nav_home="${nav_home}/.."

if python3 -m nav $PWD; then
	source $nav_home/tmp/navigate_to.sh
	rm $nav_home/tmp/navigate_to.sh
fi
