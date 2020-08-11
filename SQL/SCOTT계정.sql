
--emp ���̺��� ��� �˻�
Select *
from emp;

select job
from emp;

select distinct job
from emp;

select dname as "�μ���", loc "�μ���ġ"
from dept;

select empno||'-'||ename
from emp;

--https://jae-jae.tistory.com/183 6��
select sal*12, (sal*12)+comm
from emp;

-----

SELECT DISTINCT deptno
    FROM EMP;
    
SELECT job, deptno
    FROM emp;

SELECT DISTINCT job
    FROM emp;
    
SELECT DISTINCT job, deptno
    FROM emp;

SELECT ENAME,SAL,sal*12 +comm as �����Ѽ���, comm
    FROM emp;
    
SELECT *
    FROM emp
ORDER BY sal desc;
    

SELECT DISTINCT job
    FROM emp;
    

SELECT empno, ename, deptno
    FROM emp
    WHERE deptno =10;

SELECT empno, ename, sal
    FROM emp
    WHERE sal >= 2000;
    
SELECT empno, ename
    FROM emp
    WHERE ename = 'FORD';
    
SELECT empno, ename, hiredate
    FROM emp
    WHERE hiredate >= '1982/01/01';
    
SELECT *
    FROM emp
    WHERE deptno = 10 AND job = 'CLERK';
    
SELECT *
    FROM emp
    WHERE hiredate >= '1982/01/01' OR job = 'MANAGER';
    
SELECT *
    FROM emp
    WHERE hiredate between '1981/05/05' AND '1981/12/31';
    

--125p. 1. emp ���̺��� ���, ENAME�� S�� ������ ��� �����͸� ��� ���
SELECT *
    FROM emp
WHERE ENAME LIKE '%S';

----125p. 2. emp ���̺��� ���, 30�� �μ�(DEPTNO)���� �ٹ��ϰ� �ִ� �����
-- ��å(JOB)�� SALESMAN�� ����� ��� ��ȣ, �̸�, ��å, �޿�, �μ���ȣ�� ���

SELECT empno, ename, job, sal, deptno
    FROM emp
    WHERE DEPTNO = 30 AND JOB = 'SALESMAN';

----125p. 3. emp ���̺��� ���, 20, 30�� �μ�(DEPTNO)���� �ٹ��ϰ� �ִ� �����
-- �޿�(sal)�� 2000 �ʰ��� ����� �� ���� ����� SELECT ���� �����
--��� ��ȣ, �̸�, ��å, �޿�, �μ���ȣ�� ���
--���տ����ڸ� ���x/ ���ѿ����� ���

SELECT empno, ename, job, sal, deptno
    FROM emp
    WHERE DEPTNO IN (20, 30) AND sal > 2000;
        
SELECT empno, ename, job, sal, deptno
    FROM emp
    WHERE DEPTNO IN(20, 30)
INTERSECT
SELECT empno, ename, job, sal, deptno
    FROM emp
    WHERE sal > 2000;    
    
--126p. 4. NOT BETWEEN A AND B �����ڸ� ���� �ʰ�,
-- �޿�(sal) ���� 2000 �̻� 3000���� ���� �̿��� ���� ���� �����͸� ���
/*
SELECT *
    FROM emp;
MINUS
SELECT *
    FROM emp
    WHERE sal BETWEEN 2000 AND 3000; --�̷��� �ϸ� �� �ǳ�?
 */
SELECT * 
  FROM EMP
 WHERE SAL < 2000
    OR SAL > 3000;
 
--126P. 5. ��� �̸��� E�� ���ԵǾ� �ִ� 30�� �μ��� ��� ��
-- �޿��� 1000~2000 ���̰� �ƴ�
-- ��� �̸�, ��� ��ȣ, �޿�, �μ� ��ȣ ���

SELECT ename, empno, sal, deptno
    FROM emp
    WHERE deptno = 30 AND ename LIKE '%E%' AND
        sal NOT BETWEEN 1000 AND 2000; 
 
 --126p. 6. �߰� ������ �������� �ʰ� ����ڰ� �ְ� ��å�� MANAGER, CLERK�� ��� �߿���
 -- ��� �̸��� �� ��° ���ڰ� L�� �ƴ� ����� ���� ���
 
 SELECT *
    FROM emp
    WHERE comm is NULL
    AND MGR is NOT NULL --MGR�� NULL�� �ƴϴ�
    AND job IN ('MANAGER', 'CLERK')
    AND ename NOT LIKE '_L%';
 --   AND ename NOT LIKE '-L%'; --��� �� �����ϱ�. �׳� �ٰ� �ƴ϶� ��� ����
    