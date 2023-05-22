#!/bin/bash
set -eu
PATH=/usr/bin:/bin:/var/cats/bin

if [[ $# -ne 1 ]]; then
	echo "$0: Not enough parameters." 1>&2
	exit 2
fi

USER_MAP="/var/cats/etc/dogs/usermap.conf"
USER="$1"
VIEWPATH="/var/cats/var"

if [[ ! ${USER} =~ ^[A-Za-z_][0-9A-Za-z_\-]{0,32}$ ]]; then
	echo "$0: bad user parameter." 1>&2
	exit 2
fi

test -r "${USER_MAP}" || exit 3
test -d "${VIEWPATH}" || exit 3

git -C "${VIEWPATH}" pull || exit 4
exit 0
