#!/bin/bash

MAGIC_FILE="school.mgc"
FILE_TO_CHECK="$1"

OFFSET=0
EXPECTED_SIGNATURE="SCHOOL"
SIGNATURE=$(hexdump -s $OFFSET -n ${#EXPECTED_SIGNATURE} -e '"" %s ""' "$FILE_TO_CHECK")

if [[ $SIGNATURE == $EXPECTED_SIGNATURE ]]; then
  echo "$FILE_TO_CHECK: School data file"
else
  echo "$FILE_TO_CHECK: Not a School data file"
fi
