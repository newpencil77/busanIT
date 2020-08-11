--문자형 함수는 대소문자 함수와 문자 조작 함수로 나뉜다.

--1 대소문자 조작 함수(upper, lower, initcap)
SELECT 1+1 
    FROM DUAL; --daul테이블은 아무것도 없음. 결과만 출력해주는 테이블.

SELECT LOWER('SQL Course'), UPPER('SQL Course'), INITCAP('SQL Course')
    FROM DUAL;

--활용 예시
SELECT employee_id 
    FROM employees
    WHERE UPPER(first_name) = 'PATRICK'; --데이터에 있는 값은 대소문자를 구분함. (본래 저장된 자료는 Patrick임)
    --first_name을 모두 대문자로 바꿔서 PATRICK과 비교해서 찾을 수 있음
    
    
--2. 문자 조작 함수_ CONCAT
SELECT first_name, last_name, CONCAT(first_name, last_name) --CONCAT 함수를 이용해 두 문자열 연결. 연결 연산자와 비슷
    FROM employees;
    
--3. 문자 조작 함수_ SUBSTR 문자열 내에서 지정된 위치의 문자열 반환. 잘라서 준다고 보면 됨
--SUBSTR(문자열, 시작위치, 출력문자 개수). 출력문자 개수는 시작위치점을 포함함
SELECT employee_id,
first_name,
SUBSTR(first_name,1,3),
SUBSTR(first_name,2,4),
SUBSTR(first_name,2), --출력할 갯수가 없으면 문자열의 끝까지 출력함.
SUBSTR(first_name,-3) --시작 위치가 음수면 뒤에서부터 카운트
    FROM employees;
    
 
--3. 문자 조작 함수_LENGTH 문자열의 길이 반환
 SELECT first_name, LENGTH(first_name)
    FROM employees;

--4. 문자 조작 함수_INSTR 지정된 문자의 위치를 리턴 
--INSTR(문자열, 검색문자)--검사 시작 위치와 찾을 횟수가 없으면 1, 1 임.
--INSTR(문자열, 검색문자, 검사 시작 위치, ~번째 값) 

SELECT first_name, --Nanette의 경우
INSTR(first_name,'e'),
INSTR(first_name,'e',2), --검사 시작 위치가 2
INSTR(first_name,'e',5), -- 검사 시작 위치가 5
INSTR(first_name,'e',1,2) --두번 째 e의 위치를 찾는 것.
    FROM employees
    WHERE first_name = 'Nanette';


--5. 문자 조작 함수_LPAD와 RPAD/ ~PAD(문자열, 출력길이, 채울문자) 지정된 문자열의 길이만큼 빈부분에 문자 채움.
--L은 왼쪽, R은 오른쪽에 채움.
SELECT employee_id, first_name, salary, LPAD(salary,10,'#'), RPAD(salary,10,'*')
    FROM employees;


--SUBSTR 에서 시작위치를 특정 문자 다음, 같은 식으로 지정할 수도 있나?
--SUBSTR와 INSTR를 같이 이용하면 됨. 단일 기능으로 가능한 것 보다 번거롭네
SELECT 
INSTR('ddd@fff.com','@'),
SUBSTR('ddd@fff.com', 1, INSTR('ddd@fff.com','@')),
SUBSTR('ddd@fff.com', 1, INSTR('ddd@fff.com','@')-1) --이런 식으로 하면 특정 문자 앞의 내용만도 뺄 수 있을 듯?
    FROM dual;
    

--공백을 이용해 문자열 분리
SELECT '홍 길동' AS 성명,
SUBSTR('홍 길동',1, INSTR('홍 길동', ' ')-1) AS 성, --첫번째부터 잘라내기, INSTR로 공백을 찾은 다음 공백을 빼준 것 만큼 SUBSTR.
SUBSTR('홍 길동', INSTR('홍 길동', ' ')+1) AS 이름 --공백을 빼기 위해서 +1을 한 것.
FROM DUAL;


--REPLACE 함수 //
--REPLACE(문자열, 시작위치, 치환할 문자열)
--ex.REPLACE('hello', 'el', '**') -> h**lo
SELECT job_id, REPLACE(job_id, 'ACCOUNT', 'ACCNT') AS 함수적용
    FROM employees
    WHERE job_id LIKE '%ACCOUNT%';

--예제1. last_name을 소문자와 대문자로 각각 출력, email의 첫번째 문자는 대문자로 출력
SELECT 
last_name AS 이름,
LOWER(last_name) AS LOWER적용,
UPPER(last_name) AS UPPER적용,
email,
INITCAP(email) AS INICAP적용
    FROM employees;
    
--예제2. employees 테이블에서 job_id 데이터 값의 첫째자리부터 두개의 문자 출력
SELECT 
job_id AS 직업명,
SUBSTR(job_id, 1,2) AS 앞의2개
    FROM employees;
    
--없는 글자 덧붙이기

SELECT employee_id, first_name, last_name, salary, 
CONCAT(email, '@Company.com') AS 이메일,
SUBSTR(이메일,1, INISTR(이메일,'@')+1)
    FROM employees
    WHERE employee_id BETWEEN 100 AND 110;
    
    
SELECT *
    FROM employees;
    