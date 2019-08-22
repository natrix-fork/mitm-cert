#!/usr/bin/env sh
set -e
PATH_TO_FILE="${1}"
NEW_CONTENT="${2}"
EXTENSION="${PATH_TO_FILE##*.}"
echo "${NEW_CONTENT}" > "${PATH_TO_FILE}"
