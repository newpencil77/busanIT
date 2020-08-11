--������ �Լ��� ��ҹ��� �Լ��� ���� ���� �Լ��� ������.

--1 ��ҹ��� ���� �Լ�(upper, lower, initcap)
SELECT 1+1 
    FROM DUAL; --daul���̺��� �ƹ��͵� ����. ����� ������ִ� ���̺�.

SELECT LOWER('SQL Course'), UPPER('SQL Course'), INITCAP('SQL Course')
    FROM DUAL;

--Ȱ�� ����
SELECT employee_id 
    FROM employees
    WHERE UPPER(first_name) = 'PATRICK'; --�����Ϳ� �ִ� ���� ��ҹ��ڸ� ������. (���� ����� �ڷ�� Patrick��)
    --first_name�� ��� �빮�ڷ� �ٲ㼭 PATRICK�� ���ؼ� ã�� �� ����
    
    
--2. ���� ���� �Լ�_ CONCAT
SELECT first_name, last_name, CONCAT(first_name, last_name) --CONCAT �Լ��� �̿��� �� ���ڿ� ����. ���� �����ڿ� ���
    FROM employees;
    
--3. ���� ���� �Լ�_ SUBSTR ���ڿ� ������ ������ ��ġ�� ���ڿ� ��ȯ. �߶� �شٰ� ���� ��
--SUBSTR(���ڿ�, ������ġ, ��¹��� ����). ��¹��� ������ ������ġ���� ������
SELECT employee_id,
first_name,
SUBSTR(first_name,1,3),
SUBSTR(first_name,2,4),
SUBSTR(first_name,2), --����� ������ ������ ���ڿ��� ������ �����.
SUBSTR(first_name,-3) --���� ��ġ�� ������ �ڿ������� ī��Ʈ
    FROM employees;
    
 
--3. ���� ���� �Լ�_LENGTH ���ڿ��� ���� ��ȯ
 SELECT first_name, LENGTH(first_name)
    FROM employees;

--4. ���� ���� �Լ�_INSTR ������ ������ ��ġ�� ���� 
--INSTR(���ڿ�, �˻�����)--�˻� ���� ��ġ�� ã�� Ƚ���� ������ 1, 1 ��.
--INSTR(���ڿ�, �˻�����, �˻� ���� ��ġ, ~��° ��) 

SELECT first_name, --Nanette�� ���
INSTR(first_name,'e'),
INSTR(first_name,'e',2), --�˻� ���� ��ġ�� 2
INSTR(first_name,'e',5), -- �˻� ���� ��ġ�� 5
INSTR(first_name,'e',1,2) --�ι� ° e�� ��ġ�� ã�� ��.
    FROM employees
    WHERE first_name = 'Nanette';


--5. ���� ���� �Լ�_LPAD�� RPAD/ ~PAD(���ڿ�, ��±���, ä�﹮��) ������ ���ڿ��� ���̸�ŭ ��κп� ���� ä��.
--L�� ����, R�� �����ʿ� ä��.
SELECT employee_id, first_name, salary, LPAD(salary,10,'#'), RPAD(salary,10,'*')
    FROM employees;


--SUBSTR ���� ������ġ�� Ư�� ���� ����, ���� ������ ������ ���� �ֳ�?
--SUBSTR�� INSTR�� ���� �̿��ϸ� ��. ���� ������� ������ �� ���� ���ŷӳ�
SELECT 
INSTR('ddd@fff.com','@'),
SUBSTR('ddd@fff.com', 1, INSTR('ddd@fff.com','@')),
SUBSTR('ddd@fff.com', 1, INSTR('ddd@fff.com','@')-1) --�̷� ������ �ϸ� Ư�� ���� ���� ���븸�� �� �� ���� ��?
    FROM dual;
    

--������ �̿��� ���ڿ� �и�
SELECT 'ȫ �浿' AS ����,
SUBSTR('ȫ �浿',1, INSTR('ȫ �浿', ' ')-1) AS ��, --ù��°���� �߶󳻱�, INSTR�� ������ ã�� ���� ������ ���� �� ��ŭ SUBSTR.
SUBSTR('ȫ �浿', INSTR('ȫ �浿', ' ')+1) AS �̸� --������ ���� ���ؼ� +1�� �� ��.
FROM DUAL;


--REPLACE �Լ� //
--REPLACE(���ڿ�, ������ġ, ġȯ�� ���ڿ�)
--ex.REPLACE('hello', 'el', '**') -> h**lo
SELECT job_id, REPLACE(job_id, 'ACCOUNT', 'ACCNT') AS �Լ�����
    FROM employees
    WHERE job_id LIKE '%ACCOUNT%';

--����1. last_name�� �ҹ��ڿ� �빮�ڷ� ���� ���, email�� ù��° ���ڴ� �빮�ڷ� ���
SELECT 
last_name AS �̸�,
LOWER(last_name) AS LOWER����,
UPPER(last_name) AS UPPER����,
email,
INITCAP(email) AS INICAP����
    FROM employees;
    
--����2. employees ���̺��� job_id ������ ���� ù°�ڸ����� �ΰ��� ���� ���
SELECT 
job_id AS ������,
SUBSTR(job_id, 1,2) AS ����2��
    FROM employees;
    
--���� ���� �����̱�

SELECT employee_id, first_name, last_name, salary, 
CONCAT(email, '@Company.com') AS �̸���,
SUBSTR(�̸���,1, INISTR(�̸���,'@')+1)
    FROM employees
    WHERE employee_id BETWEEN 100 AND 110;
    
    
SELECT *
    FROM employees;
    