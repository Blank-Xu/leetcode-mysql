#!/usr/bin/env bash

PATH=$(cd `dirname $0`; pwd)
DATABASE_NAME="leetcode-mysql-test"

echo 'PATH: '${PATH}


echo "create database"
mysql -e "CREATE DATABASE IF NOT EXISTS ${DATABASE_NAME};"
mysql -e "USE ${DATABASE_NAME};"

#echo ''
#mysql < ''



echo '150-199---------------------------------------------'
cd ${PATH}/150-199

echo '175. Combine Two Tables.sql'
mysql < '175. Combine Two Tables.sql'

echo '176. Second Highest Salary.sql'
mysql < '176. Second Highest Salary.sql'

echo '181. Employees Earning More Than Their Managers.sql'
mysql < '181. Employees Earning More Than Their Managers.sql'



echo '550-599---------------------------------------------'
cd ${PATH}/550-599

echo '595. Big Countries.sql'
mysql < '595. Big Countries.sql'



echo '600-649---------------------------------------------'
cd ${PATH}/600-649

echo '620. Not Boring Movies.sql'
mysql < '620. Not Boring Movies.sql'

echo '627. Swap Salary.sql'
mysql < '627. Swap Salary.sql'
