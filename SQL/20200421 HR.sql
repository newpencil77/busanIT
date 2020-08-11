SELECT employee_id, last_name, hire_date
    FROM employees
    WHERE hire_date BETWEEN '2004/01/01' AND '2004/12/31';
    
SELECT employee_id, last_name, hire_date
    FROM employees
    WHERE hire_date LIKE '04%';  --년, 월, 일 순이니 충분히 적용 될 듯.
    

SELECT employee_id, last_name, hire_date
    FROM employees;
    
 SELECT *
    FROM employees;
 
 SELECT employee_id, last_name, job_id, salary
    FROM employees
    WHERE job_id IN ('SA_REP','SA_MAN') AND salary < 10000;
    
 SELECT employee_id, last_name, job_id, salary
    FROM employees
    WHERE job_id LIKE 'SA%' AND salary <10000;
    
-- 기본 함수 실습 과제
-- 문제1) EMPLOYEES 테이블에서 King의 정보를 소문자로 검색하고 
-- 사원번호, 성명, 담당업무(소문자로),부서번호를 출력하라.
SELECT employee_id, last_name, LOWER(job_id), department_id
    FROM employees
    WHERE LOWER(last_name)= 'king';

-- 문제2) EMPLOYEES 테이블에서 King의 정보를 대문자로 검색하고 
-- 사원번호, 성명, 담당업무(대문자로),부서번호를 출력하라

SELECT employee_id, last_name, UPPER(job_id), department_id
    FROM employees
    WHERE UPPER(last_name)= 'KING';

-- 문제3) DEPARTMENTS 테이블에서 부서번호와 부서이름, 
--부서이름과 위치번호를 합하여 출력하도록 하라.

SELECT
department_id, department_name,
department_name||' ' ||location_id
    FROM departments;

--CONCAT이용
SELECT
department_id, department_name,
CONCAT(department_name, concat(' ', location_id))
    FROM departments;

-- 문제4) EMPLOYEES 테이블에서 이름의 첫 글자가 
-- ‘K’ 보다 크고 ‘Y’보다 적은 사원의 정보를 
-- 사원번호, 이름, 업무, 급여, 부서번호를 출력하라. 
-- 단 이름순으로 정렬하여라.

SELECT employee_id, last_name, job_id, salary, department_id
    FROM employees
    WHERE SUBSTR(last_name,1,1)> 'K' AND SUBSTR(last_name,1,1) <'Y'
ORDER BY last_name;

-- 문제5) EMPLOYEES 테이블에서 20번 부서 중 
-- 사원번호, 이름, 이름의 자릿수, 급여, 급여의 자릿수를 출력하라.

SELECT employee_id, last_name, LENGTH(last_name), salary, LENGTH(salary)
    FROM employees
    WHERE department_id =20;
    
-- 문제6) EMPLOYEES 테이블에서 이름 중 ‘e’자의 위치를 출력하라.
SELECT last_name, INSTR(last_name, 'e')
    FROM employees;
    
-- 문제7) 다음의 쿼리를 실행하고 결과를 분석하라.
SELECT 
ROUND(4567.678), --기본이 소수점 첫째자리에서 반올림
ROUND(4567.678,0), 
ROUND(4567.678, 2),
ROUND(4567.678,-2)
FROM dual;

-- 문제8) EMPLOYEES 테이블에서 부서번호가 80인 사람의 급여를 
-- 30으로 나눈 나머지를 구하여 출력하라.

SELECT last_name, salary, MOD(salary, 30)
    FROM employees
    WHERE department_id = 80;
    
-- 문제9) EMPLOYEES 테이블에서 30번 부서 중 
-- 이름과 담당 업무를 연결하여 출력하여라. 
-- 단 담당 업무를 한 줄 아래로 출력하라.
--CHR함수는 함수 인자에 대응하는 문자를 나타낸다. 아스키코드값 대로인 것.
--cf. CHR(13)은 캐리지 리턴이라고 하며, 현재 커서가 위치한 줄의 맨 앞으로 보낸다.
--CHR(10)은 라인 피드라고 하며, 현재 커서가 위치한 줄에서 한 칸 아래로 이동한다. 
--음, 안 되는데.

SELECT 
last_name||CHR(10)||job_id
    FROM employees
    WHERE department_id = 30;
    
-- 문제10) EMPLOYEES 테이블에서 
-- 현재까지 근무일 수가 몇주 몇일 인가를 출력하여라. 
-- 단 근무 일수가 많은 사람 순으로 출력하여라.

SELECT 
TRUNC(SYSDATE-hire_date) AS "총 근무일수",
TRUNC((SYSDATE-hire_date)/7) AS "총 근무 주의 수",
ROUND(MOD(SYSDATE - HIRE_DATE, 7)) AS "남은 날수"
    FROM employees
ORDER BY (SYSDATE-hire_date) DESC;


-- 문제11) EMPLOYEES 테이블에서 부서 50에서 
-- 급여 앞에 $를 삽입하고 3자리마다 ,를 출력하라

SELECT department_id, last_name,
TO_CHAR(salary, '$999,999,999')
    FROM employees
    WHERE department_id = 50;

----
--6. 커미션이 책정된 사원들의 사원번호, 이름, 연봉, 연봉+커미션, 급여등급을 출력하되, 
--각 각의 컬럼명을 '사원번호',  '사원이름', '연봉', '실급여', '급여등급'으로 하여 출력하세요.

--급여등급은 어떻게 구하는거지?

SELECT
employee_id AS 사원번호, 
last_name AS 사원이름,
salary*12 AS 연봉, 
salary*12*commission_pct AS 실급여
--grade AS 급여등급
    FROM employees
    WHERE commission_pct IS NOT NULL;

--8. 부서번호가 10번, 20번인 사원들의 부서번호, 부서이름, 사원이름, 월급, 급여등급을 출력하고 
--출력된 결과물을 부서번호가 낮은 순으로, 월급이 높은 순으로 정렬하세요.

--SELECT
--department_id, de
--    FROM employees
--    WHERE department_id IN (10, 20)
--ORDER BY department_id ASC, salary DESC;    
    
SELECT *
    FROM employees;