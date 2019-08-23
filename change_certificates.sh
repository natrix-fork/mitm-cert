#!/usr/bin/env sh
set -e
#CURRENT_FOLDER=`pwd`
# this file have certificate + key
PATH_TO_FILE="mycert.pem"
EXTENSION="${PATH_TO_FILE##*.}"

TEMP=`cat ${PATH_TO_FILE}`

# find
#	in path "/"
#	-type f: files
#	-name "*.pem": with name, end to ".pem"
#	-exec sh change_file.sh {} "${TEMP}" \; : and execute command [sh change_file.sh {} "${TEMP}"]
#		where:
#			- "{}" is path to file
#			- "change_file.sh" script with further processing. Having problems with appending to file via command itself.

ACTION="replace_content_of_file"
find / -type f -name "*.${EXTENSION}" -exec sh "${ACTION}.sh" {} "${TEMP}" \;
