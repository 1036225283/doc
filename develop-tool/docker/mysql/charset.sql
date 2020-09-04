


show variables like 'character%';

set names utf8;


# 表字符编码
SHOW CREATE TABLE tbStockModel;

# 修改字符编码
ALTER TABLE tbStockModel CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;


show variables where Variable_name like '%char%';

show create database stock.tbUserLog;
 set character_set_server=utf8mb4;
alter table tbUserLog character set utf8mb4

--
--备份T
--mysqldump --databases stock > /cloud/mysql/back20200206.sql
--恢复
--mysql  < /cloud/mysql/2020041401.sql
