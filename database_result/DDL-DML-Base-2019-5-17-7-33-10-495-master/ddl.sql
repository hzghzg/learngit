-- **数据库级别：**  
--  显示所有数据库  
show databases;
--  进入某个数据库  
use database_name;
--  创建一个数据库  
create database database_name;
--  创建指定字符集的数据库  
create database database_name DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
--  显示数据库的创建信息   
show create database database_name;
--  修改数据库的编码  
alter database database_name character set utf8;
--  删除一个数据库   
drop database database_name;
-- **表级别**
--  修改表名
rename table oldname to newname;
--  修改字段的数据类型
alter table table_name modify col_name new_type;
--  修改字段名
alter table table_name change old_col_name new_col_name new_col_type;
--  添加字段
alter table table_name add new_col new_col_type;

--  删除字段
alter table table_name drop column col_name;
--  修改表的存储引擎
alter table table_name engine=new_engine_name;
--  删除表的外键约束
alter table table_name drop foreign key constraint_name;
--  删除一张表
drop table table_name;