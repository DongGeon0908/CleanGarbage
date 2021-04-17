show databases;
use cleanGarbage;
drop database cleanGarbage;
create database cleanGarbage character set utf8 default collate utf8_general_ci;
select * from user;
show variables like 'c%';



-- 유저이름@아이피주소
create user 'cleanGarbage'@'%' identified by 'cleanGarbage123456789a';
-- ON DB이름.테이블명
-- TO 유저이름@아이피주소
GRANT ALL PRIVILEGES ON *.* TO 'cleanGarbage'@'%';
CREATE DATABASE cleanGarbage CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
use cleanGarbage;

show tables;

show variables like 'c%';
SELECT VERSION();

-- 권한 설정
update user set role = "ADMIN";

-- sql safe  모드 해제
set sql_safe_updates=0;

-- sql safe 모드
set sql_safe_updates=1;