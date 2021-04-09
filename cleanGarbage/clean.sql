show databases;

use cleangarbage;


select * from user;
set sql_safe_updates=0;
delete  from user;

# 관리자 권한 주기
update user set role = "ADMIN" where id = 4;