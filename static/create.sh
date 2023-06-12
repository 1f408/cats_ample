#!/bin/bash
set -eu

readonly CURRENT=$(cd $(dirname $0);pwd)
readonly ROOT="./mds/"

exec {lock_fd}< "$0"
flock ${lock_fd} || {
  echo "flock error" 1>&2
  exit 1
}

if [ -e ${ROOT} ]; then
    URLS=()
    while read -r path; do
        FILE=${path#${ROOT}}
        case ${FILE} in
        *\.md) URLS+=(${FILE}) ;;
        *\.markdown) URLS+=(${FILE}) ;;
        esac
    done < <(find ${ROOT} -mindepth 1)
else
    echo "Don't find input directory."
    exit 1
fi

readonly OUT=${CURRENT}/htmls/
mkdir -p ${OUT}

for URL in "${URLS[@]}" ; do
    SUBDIR=${OUT}${URL%/*}
    case ${SUBDIR} in
    *\.md) ;;
    *\.markdown) ;;
    *) mkdir -p ${SUBDIR}
    esac
    cat_mdview -d ${URL} ${CURRENT}/static.toml > ${OUT}${URL%.*}.html
    echo "create: ${URL%.*}.html"
done

echo "done"
exit 0

