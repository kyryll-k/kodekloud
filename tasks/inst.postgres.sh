#!/bin/bash
DB=kodekloud_db5 && USER=kodekloud_tim && PASS=BruCStnMT5
yum install postgresql-server postgresql-contrib net-tool vim less
postgresql-setup initdb
systemctl start postgresql
systemctl status postgresql
echo "copy this:=>  local   $DB 		$USER					md5"
read ok

vim /var/lib/pgsql/data/pg_hba.conf 

echo " psql"
echo " CREATE DATABASE $DB";
echo " CREATE USER $USER WITH ENCRYPTED PASSWORD '$PASS';"
echo " GRANT ALL PRIVILEGES ON DATABASE $DB TO $USER"
echo " \du - show users    \l - show databases;"
su - postgres

systemctl restart postgresql
psql -d $DB -U $USER -W
