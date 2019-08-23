#!/bin/sh

usage="Usage: $(basename "$0") [OUTPUT_DIR] [-h] 

Serialize WSL to a tar archive to an output location.

where:
    -h      show this help text
    -d      the distribution name"

while getopts ':hs:' option; do
  case "$option" in
    h|help|?) echo "$usage"
       exit
       ;;
  esac
done

TMP_DIR="$(mktemp -d)"
BACKUP_NAME="${TMP_DIR}/`date +%Y-%m-%d`"
OUTPUT_DIR=$1

echo "Serializing to ${BACKUP_NAME}.{tar.gz,log,err}"
tar vzcpf ${BACKUP_NAME}.tar.gz \
    --exclude=/proc                                 \
    --exclude=/dev                                  \
    --exclude=/mnt                                  \
    --exclude=/media                                \
    --exclude=/lost+found                           \
    --exclude=/tmp                                  \
    --exclude=/sys                                  \
    --exclude=/run                                  \
    /                                               \
    > ${BACKUP_NAME}.log        \
    2> ${BACKUP_NAME}.err
echo "Moving to backup location ${OUTPUT_DIR}"
mkdir -p ${OUTPUT_DIR}
mv ${TMP_DIR}/* ${OUTPUT_DIR}
rm -r ${TMP_DIR}

