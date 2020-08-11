
--emp 테이블에서 사원 검색
Select *
from emp;

select job
from emp;

select distinct job
from emp;

select dname as "부서명", loc "부서위치"
from dept;

select empno||'-'||ename
from emp;

--https://jae-jae.tistory.com/183 6번
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

SELECT ENAME,SAL,sal*12 +comm as 연간총수입, comm
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
    

--125p. 1. emp 테이블을 사용, ENAME이 S로 끝나는 사원 데이터를 모두 출력
SELECT *
    FROM emp
WHERE ENAME LIKE '%S';

----125p. 2. emp 테이블을 사용, 30번 부서(DEPTNO)에서 근무하고 있는 사원중
-- 직책(JOB)이 SALESMAN인 사원의 사원 번호, 이름, 직책, 급여, 부서번호를 출력

SELECT empno, ename, job, sal, deptno
    FROM emp
    WHERE DEPTNO = 30 AND JOB = 'SALESMAN';

----125p. 3. emp 테이블을 사용, 20, 30번 부서(DEPTNO)에서 근무하고 있는 사원중
-- 급여(sal)가 2000 초과인 사원을 두 가지 방식의 SELECT 문을 사용해
--사원 번호, 이름, 직책, 급여, 부서번호를 출력
--집합연산자를 사용x/ 집한연산자 사용

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
    
--126p. 4. NOT BETWEEN A AND B 연산자를 쓰지 않고,
-- 급여(sal) 값이 2000 이상 3000이하 범위 이외의 값을 가진 데이터만 출력
/*
SELECT *
    FROM emp;
MINUS
SELECT *
    FROM emp
    WHERE sal BETWEEN 2000 AND 3000; --이렇게 하면 안 되나?
 */
SELECT * 
  FROM EMP
 WHERE SAL < 2000
    OR SAL > 3000;
 
--126P. 5. 사원 이름에 E가 포함되어 있는 30번 부서의 사원 중
-- 급여가 1000~2000 사이가 아닌
-- 사원 이름, 사원 번호, 급여, 부서 번호 출력

SELECT ename, empno, sal, deptno
    FROM emp
    WHERE deptno = 30 AND ename LIKE '%E%' AND
        sal NOT BETWEEN 1000 AND 2000; 
 
 --126p. 6. 추가 수당이 존재하지 않고 상급자가 있고 직책이 MANAGER, CLERK인 사원 중에서
 -- 사원 이름의 두 번째 글자가 L이 아닌 사원의 정보 출력
 
 SELECT *
    FROM emp
    WHERE comm is NULL
    AND MGR is NOT NULL --MGR이 NULL이 아니다
    AND job IN ('MANAGER', 'CLERK')
    AND ename NOT LIKE '_L%';
 --   AND ename NOT LIKE '-L%'; --언더 바 주의하기. 그냥 바가 아니라 언더 바임
    