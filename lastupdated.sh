#!/bin/bash

FOLDER="${1}"
TMP_FILE="/tmp/git_dates"
ORIGIN=$(pwd)
cd "${FOLDER}"

rm -rf "${TMP_FILE}"
touch "${TMP_FILE}"

echo "Starting the process, it might take a minute or two..."

for f in $(find ${FOLDER});
do
 git log -1 --pretty="format:%ci" "${f}" | cat >> "${TMP_FILE}"
 echo " ${f}" >> "${TMP_FILE}"
done
sort -r -k 1,2 -n "${TMP_FILE}"
cd "${ORIGIN}"
