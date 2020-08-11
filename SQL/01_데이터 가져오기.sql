-- 한줄 주석. 단축키는 CTRL+/

/*
여러 줄
주석
*/

--1. 테이블의 모든 행과 열을 읽어 오는 방법 *
SELECT * 
FROM DEPARTMENTS;

--2. 특정 열만 읽어 오기 --대소문자의 구분이 없다.
SELECT department_id, department_name --열 2개를 읽고 있음. 콤마로 구분.
FROM DEPARTMENTS;

--3. 산술 연산자 사용 (+,-,*,/)
select employee_id, first_name, salary
from employees; --from 쪽 부터 먼저 적어주면 select 부분을 자동완성으로 쓸 수 있나?

select employee_id, first_name, salary, salary+100, salary+ (salary*0.1) --salrary가 자료형이 숫자기 때문에 연산이 가능함.
from employees; 

--4. 널(NULL) 이란? 
--입력 되지 않은, 사용 가능하지 않은, 알 수 없는 값.
--널은 제로(0) 또는 공백('')과는 다르다.

SELECT last_name, job_id, salary, commission_pct
FROM employees;

--5. 널 값에 산술연산자를 넣어도 널 값이다.
SELECT last_name, job_id, salary, commission_pct, commission_pct+10
FROM employees;

--6. AS: 열에 별칭 정하기 
--AS는 생략 가능하다
-- 특수문자, 공백 등을 이용하려면 큰따옴표를 묶어주면 된다.
SELECT last_name, last_name AS 이름, last_name 이름2, last_name "라스트 네임" 
FROM employees;

--7. || 연결 연산자. 열과 열을 연결해 하나의 열로 결과 표현 가능.//
--문자를 붙일 때는 작은따옴표 사용
SELECT first_name, last_name, first_name||last_name, first_name||' '||last_name
FROM employees;

--8. DISTINCT 열의 중복을 제거
SELECT department_id
FROM employees;

SELECT DISTINCT department_id
FROM employees;

--9. DESCRIBE or DESC
DESCRIBE employees; --테이블에 대한 간략한 설명


--예제
--예제1. employees 테이블에서 employee_id, first_name, last_name 출력
--선택 출력
SELECT employee_id, first_name, last_name
FROM employees;

--예제2. employees 테이블에서 first_name, salary 출력. salary *1.1를 뉴셀러리로 출력 
--별칭, 연산
SELECT first_name, salary, (salary *1.1) AS "뉴셀러리" 
FROM employees;

--예제3. employees 테이블에서 employee_id는 사원번호, first_name은 이름, last_name은 성으로 출력.
--별칭
SELECT employee_id "사원번호", first_name "이름", last_name "성"
FROM employees;

--예제4. employees 테이블에서 employee_id 출력, first_name과 last_name을 붙여서 출력하되, 가운데 한 칸 띄우기
-- 다음 열에 email출력하되 @company.com 문구를 붙여서 출력
SELECT employee_id, first_name||' '||last_name, email||'@company.com'
FROM employees;


