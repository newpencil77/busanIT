SELECT DISTINCT job
    FROM emp;
    
SELECT job
    FROM emp;
    

SELECT ename
    FROM emp
    WHERE hiredate >'1982/01/01';

SELECT dname AS 부서명, loc AS 부서위치
    FROM dept;

SELECT empno ||'-'|| ename AS "직원번호-이름" -- ||를 한다음에 이걸 또 별칭 지정 가능함.
    FROM emp;
    
SELECT sal *12 AS 연봉, sal*12+comm AS 총연봉
    FROM emp;
    
SELECT empno, ename -- 출력할 값에 
    FROM emp
    WHERE deptno= 10;-- 조건을 둘 열이 없어도 괜찮음
    
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

SELECT deptno, concat(deptno,dname) AS 연결
    FROM dept
    WHERE MOD(deptno,2)=0;
    

--28 dept LOC 테이블에서 컬럼에서 특정 문자열을 가진 열만 검색한다
SELECT deptno, dname, loc
    FROM dept
    WHERE INSTR(loc, 'DALLAS')>0; --이렇게 어떤 문자나 문자열이 있냐 없냐도 구할 수 있을 듯.
    
 -- dept LOC . 테이블에서 컬럼에서 특정 문자열을 가진 열을 제외하고 검색한다   
select deptno, dname, loc 
from dept
where instr(loc,'DALLAS')<1;