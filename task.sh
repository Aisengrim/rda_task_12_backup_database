#! /bin/bash

mysqldump -u"DB_USER" -p"DB_PASSWORD" ShopDB --no-create-db --result-file=ShopDB.backup.sql | mysql -u"DB_USER" -p"DB_PASSWORD" ShopDBReserve > ShopDB.backup.sql

mysqldump -u"DB_USER" -p"DB_PASSWORD" --no-create-info --result-file=ShopDBNoInfo.backup.sql | mysqldump -u"DB_USER" -p"DB_PASSWORD" ShopDBDevelopment > ShopDBNoInfo.backup.sql