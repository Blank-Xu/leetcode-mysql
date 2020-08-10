#!/usr/bin/env bash

MYSQL=$1
DATABASE_NAME=$2
echo 'MYSQL_PATH: '${MYSQL}
echo 'DATABASE_NAME: '${DATABASE_NAME}

PATH=$(cd `dirname $0`; pwd)
echo 'PATH: '${PATH}

USERNAME="travis"

MYSQL_CLIENT=`${MYSQL} -h 127.0.0.1 -P 3306 -u ${USERNAME} ${DATABASE_NAME}`
echo 'MYSQL_CLIENT: '${MYSQL_CLIENT}

#echo ''
#${MYSQL_CLIENT} < ''



echo 'test start'

echo '150-199---------------------------------------------'
cd ${PATH}/150-199

echo '175. Combine Two Tables.sql'
${MYSQL_CLIENT} < '175. Combine Two Tables.sql'

echo '176. Second Highest Salary.sql'
${MYSQL_CLIENT} < '176. Second Highest Salary.sql'

echo '181. Employees Earning More Than Their Managers.sql'
${MYSQL_CLIENT} < '181. Employees Earning More Than Their Managers.sql'




echo '550-599---------------------------------------------'
cd ${PATH}/550-599

echo '595. Big Countries.sql'
${MYSQL_CLIENT} < '595. Big Countries.sql'




echo '600-649---------------------------------------------'
cd ${PATH}/600-649

echo '620. Not Boring Movies.sql'
${MYSQL_CLIENT} < '620. Not Boring Movies.sql'

echo '627. Swap Salary.sql'
${MYSQL_CLIENT} < '627. Swap Salary.sql'
