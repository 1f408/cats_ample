#!/bin/bash
set -eu
PATH=/usr/bin:/bin:/var/cats/bin

if [[ $# -ne 3 ]]; then
	echo "$0: Not enough parameters." 1>&2
	exit 2
fi

USER_MAP="/var/cats/etc/dogs/usermap.conf"
USER="$1"
NUM="$2"
NUM="${NUM:-1}"
IGNORE="$3"

if [[ ! ${USER} =~ ^[A-Za-z_][0-9A-Za-z_\-]{0,32}$ ]]; then
	echo "$0: bad user parameter." 1>&2
	exit 2
fi
if [[ ! ${NUM} =~ ^[1-9][0-9]?$ ]]; then
	echo "$0: bad number parameter." 1>&2
	exit 2
fi
if [[ ! ${IGNORE} =~ ^([A-Za-z_][0-9A-Za-z_\-]{0,32}(,[A-Za-z_][0-9A-Za-z_\-]{0,32})*)?$ ]]; then
	echo "$0: bad ignore parameter." 1>&2
	exit 2
fi

test -r "${USER_MAP}" || exit 3

line=0
egrep -v ':sysadmin' "${USER_MAP}" | \
	cut -d: -f1 - | grep -x -v "${USER}" | egrep -v -x "${IGNORE//,/|}" | \
	shuf -n "${NUM}" -
exit 0
