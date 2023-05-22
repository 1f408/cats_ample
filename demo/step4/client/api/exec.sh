#!/bin/bash
set -eu
PATH=/usr/bin:/bin:/var/cats/bin

if [[ $# -ne 1 ]]; then
	echo "$0: No parameters required." 1>&2
	exit 2
fi

echo "Success!"

exit 0
