SELECT DISTINCT job
    FROM emp;
    
SELECT job
    FROM emp;
    

SELECT ename
    FROM emp
    WHERE hiredate >'1982/01/01';

SELECT dname AS �μ���, loc AS �μ���ġ
    FROM dept;

SELECT empno ||'-'|| ename AS "������ȣ-�̸�" -- ||�� �Ѵ����� �̰� �� ��Ī ���� ������.
    FROM emp;
    
SELECT sal *12 AS ����, sal*12+comm AS �ѿ���
    FROM emp;
    
SELECT empno, ename -- ����� ���� 
    FROM emp
    WHERE deptno= 10;-- ������ �� ���� ��� ������
    
select empno, ename, sal
    FROM emp
    WHERE sal >=2000;

SELECT empno, ename
    FROM emp
    WHERE ename = 'FORD';
    
SELECT empno, ename
    FROM emp
    WHERE ename = 'FORD';
     

SELECT empno, ename, hiredate
    FROM emp
    WHERE hiredate >= '1980/01/01';

SELECT empno, job, deptno
    FROM emp
    WHERE deptno = 10 AND job = 'CLERK';
    
SELECT empno, ename, hiredate
    FROM emp
    WHERE hiredate >= '1982/01/01' OR job = 'MANAGER';

SELECT empno, ename, hiredate
    FROM emp
    WHERE hiredate BETWEEN '1981/05/05' AND '1981/12/31';
    
SELECT empno, ename, hiredate
    FROM emp
    WHERE hiredate LIKE '81%';
    
SELECT empno, enmae, job
    FROM emp
    WHERE job IN ('MANAGER', 'SALESMAN', 'SALESOMAN');

SELECT empno, ename, job
    FROM emp
    WHERE empno NOT IN (7369, 7521, 7698);
    
SELECT empno, ename, hiredate, sal
    FROM emp
    WHERE ename LIKE 'J%';
    
SELECT ename
    FROM emp
    WHERE ename LIKE '%N';

SELECT ename
    FROM emp
    WHERE ename LIKE '_A%';
    
SELECT ename
    FROM emp
    WHERE ename LIKE '%N%';

SELECT ename
    FROM emp
    WHERE comm IS NULL;
    
SELECT *
    FROM emp
    WHERE lower(ename)= 'ford';

SELECT *
    FROM emp
    WHERE ename = upper('ford');
    
SELECT INITCAP(dname), INITCAP(loc)
    FROM dept
    WHERE deptno = 10;

SELECT deptno, concat(deptno,dname) AS ����
    FROM dept
    WHERE MOD(deptno,2)=0;
    

--28 dept LOC ���̺��� �÷����� Ư�� ���ڿ��� ���� ���� �˻��Ѵ�
SELECT deptno, dname, loc
    FROM dept
    WHERE INSTR(loc, 'DALLAS')>0; --�̷��� � ���ڳ� ���ڿ��� �ֳ� ���ĵ� ���� �� ���� ��.
    
 -- dept LOC . ���̺��� �÷����� Ư�� ���ڿ��� ���� ���� �����ϰ� �˻��Ѵ�   
select deptno, dname, loc 
from dept
where instr(loc,'DALLAS')<1;