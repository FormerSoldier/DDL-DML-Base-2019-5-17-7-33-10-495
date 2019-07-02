-- **数据库级别：**  
--  显示所有数据库  
SHOW DATABASES;

--  进入某个数据库  
USE database_name;

--  创建一个数据库  
CREATE DATABASE ddl_database;

--  创建指定字符集的数据库  
CREATE DATABASE ddl2_database CHARACTER SET UTF8;

--  显示数据库的创建信息   
SHOW CREATE DATABASE ddl2_database;

--  修改数据库的编码  
ALTER DATABASE ddl2_database CHARACTER SET GB2312;

--  删除一个数据库   
DROP DATABASE ddl2_database;


/*
	创建一个数据库与一张表进行下面的操作
*/
CREATE DATABASE DML_database;
use DML_database;
CREATE TABLE test(
	id		INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	info	VARCHAR(300)
);
CREATE TABLE test2(
	id 		INT PRIMARY KEY,
	test_id	INT,
	CONSTRAINT fk_test_id	FOREIGN KEY(test_id) REFERENCES new_test(id)
);

-- **表级别**
--  修改表名
RENAME TABLE test TO new_test;

--  修改字段的数据类型
ALTER TABLE new_test MODIFY id INT(15);

ALTER TABLE new_test CHANGE info info	CHAR(200);

--  修改字段名
ALTER TABLE new_test CHANGE info infomation CHAR(200);

--  添加字段
ALTER TABLE new_test ADD COLUMN exact INT(11);

--  删除字段
ALTER TABLE new_test DROP COLUMN exact;
--  修改表的存储引擎
ALTER TABLE new_test ENGINE=MyISAM;
--  删除表的外键约束
ALTER TABLE test2 DROP FOREIGN KEY fk_test_id;

--  删除一张表
DROP TABLE test2;