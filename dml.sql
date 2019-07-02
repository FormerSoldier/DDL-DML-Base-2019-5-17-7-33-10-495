-- 插入记录  
INSERT INTO student VALUES(003,'王五',22,'男');
-- 修改记录  
UPDATE student SET sex='女' WHERE id = 003;
--  删除记录  
DELETE FROM student WHERE id = 003;
-- 查询记录  
SELECT * FROM student WHERE id = 001;