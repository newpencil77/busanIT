--1. 테이블의 모든 데이터 가져오기
SELECT *
    FROM employees;
    
--2. WHERE 절에 가져올 행을 선택한다. FROM다음에 위치함.
--참조하려는 테이블로부터 (FROM)
--해당 조건 식으로(WHERE)
--열을 선택(SELECT)하여 조회

SELECT *
    FROM employees --employees 테이블에서
    WHERE department_id = 90; --department_id가 90인 것만
    
SELECT *
    FROM employees --employees 테이블에서
    WHERE salary = 24000; --salary가 24000인 것만
    
/*WHERE 절 사용시 주의할 점.
문자(String)와 날짜(DATE) 값은 항상 '따옴표' 사용해 표시.
문자 값은 대소문자 구분.(Case-Sensitive)
날짜값은 날짜 포맷에 벗어나지 않게 (Format-Sensitive)  
오라클의 날자 포맷은 RR-DD-MM(RR은 2 자릿수 년도 표기)  
*/

--3. WHERE + 문자열(문자 데이터로 구성된 열)
SELECT employee_id, first_name, last_name, job_id
    FROM employees
    WHERE first_name = 'Steven'; --여기에서 소문자 s를 쓰면 값이 안 나옴.
    
--4. WHERE + 날짜
SELECT *
    FROM employees
    WHERE hire_date = '03/10/17'; --RR-MM-DD

--5. 비교 연산자//
SELECT *
    FROM employees
    WHERE salary >= 10000;
    
SELECT *
    FROM employees
    WHERE hire_date >= '03/10/17'; --03.10.17부터 그 이후의
    
SELECT *
    FROM employees
    WHERE first_name > 'King'; --알파벳(아스키코드)보다 큰 이름. K이후의 문자값
    
    
--예제1. employees테이블에서 employee_id가 100인 직원 정보출력
SELECT *
    FROM employees
    WHERE employee_id = 100;
    
--예제2. employees테이블에서 first_name 이 David인 직원 정보 출력
SELECT *
    FROM employees
    WHERE first_name = 'David';
    
--예제3. employees테이블에서 employee_id가 105 이하인 직원 정보 출력
SELECT *
    FROM employees
    WHERE employee_id <= 105;

--예제4. job_ history 테이블에서 start_date 가 2006년 3월 3일 이후인 정보 출력
SELECT *
    FROM job_history
    WHERE start_date > '06/03/03';

--예제5. departments 테이블에서 location_id가 1700이 아닌 모든 부서 출력
SELECT *
    FROM departments
    WHERE location_id != 1700;
   
    
--6. and or
SELECT last_name, department_id, salary
    FROM employees
    WHERE department_id = 60 OR (department_id = 80 AND salary > 10000); --department_id 가 60이거나// department_id가 80이면서 salary가 10000초과인 값.
    
SELECT last_name, department_id, salary
    FROM employees
    WHERE (department_id = 90 OR department_id = 80) AND salary > 10000; --department_id 가 90이거나 department_id가 80 // 이면서 salary가 10000초과인 값.
    
--7. Null 연산자
SELECT first_name, commission_pct
    FROM employees;

SELECT *
    FROM employees
    WHERE commission_pct is null; -- =null은 안 됨. 

--예제1.
SELECT *
    FROM employees
    WHERE salary > 4000 AND job_id = 'IT_PROG';

--예제2. 
SELECT *
    FROM employees
    WHERE salary > 4000 and (job_id = 'IT_PROG' OR job_id ='FI_ACCOUNT');

SELECT *
    FROM employees
    WHERE salary > 4000 and job_id IN('IT_PROG','FI_ACCOUNT'); --IN 활용. 특정 열 데이터 값에서 여러 개
    

--IN 연산자
SELECT *
    FROM employees
    WHERE salary = 4000 OR salary = 3000 OR salary = 2700;
    
SELECT *
    FROM employees
    WHERE salary IN (4000, 3000, 2700); --위의 두 가지 방법은 같은 값을 출력함.
    
--예제1. employees테이블에서 salary가 10000, 17000, 24000인 값 출력.
--IN
SELECT *
    FROM employees
    WHERE salary IN (10000, 17000, 24000);

--예제2. employees 테이블에서 departmnet_ID가 ~가 아닌 값 출력.
--NOT IN
SELECT *
    FROM employees
    WHERE department_ID NOT IN (30, 50, 80, 100, 110);
    
    
--BETWEEN A AND B//
SELECT *
    FROM employees
WHERE salary > = 9000 AND salary <= 10000;

SELECT *
    FROM employees
WHERE salary between 9000 AND 10000; --위의 두 가지 방법은 같은 값을 출력함.
--between에서 A의 값(앞의 값)은 B보다 항상 작아야함.

--예제1.
SELECT *
    FROM employees
WHERE  salary between 10000 and 20000;

--예제2.
SELECT *
    FROM employees
WHERE hire_date between '2004/01/01' AND '2004/12/30';

--예제3.
SELECT *
    FROM employees
WHERE salary < 7000 OR salary > 17000; --BETWEEN의 반대임. 그래서 NOT을 붙여서 활용 가능.

SELECT *
    FROM employees
WHERE salary NOT BETWEEN 7000 AND 17000;


/*LIKE 연산자는_와 %를 사용.
%문자가 0개 또는 1개 이상.
_문자가 1개 */

SELECT *
    FROM employees
    WHERE last_name LIKE 'B%'; --대문자 B로 시작
    
SELECT *
    FROM employees;
    
SELECT *
    FROM employees
    WHERE last_name LIKE '%b%'; --어느 위치에든 b가 있으면 출력

SELECT *
    FROM employees
    WHERE first_name LIKE '_d%'; --첫글자 뒤에 d가 나오면 출력

SELECT *
    FROM employees
    WHERE first_name LIKE '__s%'; --두 글자 뒤에 s가 나오면 출력
    

--예제1. employees 테이블에서 job_id 값이 AD를 포함하는 모든 데이터
SELECT *
    FROM employees
    WHERE job_id LIKE '%AD%'; --AD포함
    
--예제2. 1 하면서, AD에 따라오는 문자열이 3자리인 데이터.
SELECT *
    FROM employees
    WHERE job_id LIKE '%AD___';-- 언더라인 3개
 
--예제3. 전화번호 뒷자리가 1234로 끝나는
SELECT *
    FROM employees
    WHERE phone_number LIKE '%1234';

--예제4. 전화번호에 3이 들어가지 x 전화번호 끝자리가 9
SELECT *
    FROM employees
    WHERE phone_number NOT LIKE '%3%' AND phone_number LIKE '%9'; --이런 식으로 밖에 못하나?
    
--예제5. job_id에 MGR을 포함하거나 ASST를 포함
SELECT *
    FROM employees
    WHERE job_id LIKE '%MGR%' OR job_id LIKE '%ASST%';
    
    
--is NULL / is NOT NULL
SELECT *
    FROM employees
    WHERE commission_pct is NULL;
    
SELECT *
    FROM employees
    WHERE commission_pct is NOT NULL;
    
--예제. manager_id가 null값인 직원 정보 출력
SELECT *
    FROM employees
    WHERE manager_id is NULL;
    

--ORDER BY 정렬 순서 //
SELECT *
    FROM employees
    ORDER BY last_name; --기본이 오름차순. ASC. ascending 작은 순에서 큰 순. A~
    
SELECT *
    FROM employees
    ORDER BY last_name DESC; --descending. 내림차순
    
 SELECT *
    FROM employees
    ORDER BY salary DESC;   

--멀티 정렬. 열을 2개 이상 정렬할 때
SELECT department_id, employee_id,first_name, last_name 
    FROM employees
    ORDER BY department_id, employee_id; --부서번호로 정렬 후 사원번호로 정렬 (둘다 오름차순)

--열을 생성해서 정렬하는 것 가능.
SELECT department_id, last_name, salary*12 AS 연봉 --새로 열을 생성해서 '연봉'으로 별칭 지정
    FROM employees
ORDER BY 연봉 DESC; --내림차순으로 정렬

SELECT department_id, last_name, salary*12 AS 연봉 
    FROM employees
ORDER BY 3 DESC; --숫자로 구분 가능 (이 경우 1은 department_id, 2는 last_name)

--예제1  employee_id, first_name, last_name 출력. employee_id 기준으로 내림차순 정렬
SELECT employee_id, first_name, last_name
    FROM employees
ORDER BY employee_id DESC;

--예제2 employees 테이블에서 job_id에 CLERK란 단어가 들어가는 직원들을 salary가 높은 순으로 정렬
SELECT *
    FROM employees
    WHERE job_id LIKE '%CLERK%'
ORDER BY salary DESC;

--예제3 employees 테이블에서 employee_id가 120에서 150번까지의 직원을 
--부서번호(department_id)가 큰 순으로 정렬하고, 부서번호가 같을 시 월급(salary)이 큰 순으로 정렬
SELECT *
    FROM employees
    WHERE employee_id BETWEEN 120 AND 150
ORDER BY department_id DESC, salary DESC;