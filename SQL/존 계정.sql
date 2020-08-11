--존 계정
CREATE TABLE T1(
ID NUMBER PRIMARY KEY
);

/* 권한이 없음.
ORA-01031: insufficient privileges
01031. 00000 -  "insufficient privileges"
*Cause:    An attempt was made to perform a database operation without
           the necessary privileges.
*Action:   Ask your database administrator or designated security
           administrator to grant you the necessary privileges

테이블 생성 권한을 받아도 테이블스페이스에 관한 권한이 없음 
-> 존에게 새 테이블 스페이스를 만들어주고 그것을 기본으로 설정한 뒤, 사용할 권한을 줬음
ORA-01950: no privileges on tablespace 'SYSTEM'
01950. 00000 -  "no privileges on tablespace '%s'"
*Cause:    User does not have privileges to allocate an extent in the
           specified tablespace.
*Action:   Grant the user the appropriate system privileges or grant the user
           space resource on the tablespace.

->ROLE을 통해 관련 권한 묶음을 줄 수 있음
*/

INSERT INTO T1 VALUES (1);
SELECT * FROM T1;

CREATE TABLE T3(
ID NUMBER PRIMARY KEY
);