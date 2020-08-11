--�� ����
CREATE TABLE T1(
ID NUMBER PRIMARY KEY
);

/* ������ ����.
ORA-01031: insufficient privileges
01031. 00000 -  "insufficient privileges"
*Cause:    An attempt was made to perform a database operation without
           the necessary privileges.
*Action:   Ask your database administrator or designated security
           administrator to grant you the necessary privileges

���̺� ���� ������ �޾Ƶ� ���̺����̽��� ���� ������ ���� 
-> ������ �� ���̺� �����̽��� ������ְ� �װ��� �⺻���� ������ ��, ����� ������ ����
ORA-01950: no privileges on tablespace 'SYSTEM'
01950. 00000 -  "no privileges on tablespace '%s'"
*Cause:    User does not have privileges to allocate an extent in the
           specified tablespace.
*Action:   Grant the user the appropriate system privileges or grant the user
           space resource on the tablespace.

->ROLE�� ���� ���� ���� ������ �� �� ����
*/

INSERT INTO T1 VALUES (1);
SELECT * FROM T1;

CREATE TABLE T3(
ID NUMBER PRIMARY KEY
);