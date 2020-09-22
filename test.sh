#!/usr/bin/env bash

MYSQL=$1
DATABASE_NAME=$2
echo 'MYSQL_PATH: '${MYSQL}
echo 'DATABASE_NAME: '${DATABASE_NAME}

USERNAME="travis"


echo '#################### test starting ####################'

find . -name "*.sql" | while read file
do
  echo "----------"${file}
  ${MYSQL} -u${USERNAME} ${DATABASE_NAME} < "${file}"
done

echo "----------"

echo '#################### test finished ####################'
