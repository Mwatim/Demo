CREATE DATABASE netresult;
CREATE USER 'usernetresultof'@'localhost' IDENTIFIED WITH mysql_native_password BY 'ULbU2BisFdtUgCa*';
GRANT ALL PRIVILEGES ON netresult.* TO 'usernetresultof'@'localhost' WITH GRANT OPTION;
USE netresult;
SHOW TABLES;
DESCRIBE home_companyfoundingyear;
SELECT * FROM home_companyfoundingyear;
