SELECT employee_id, last_name, hire_date
    FROM employees
    WHERE hire_date BETWEEN '2004/01/01' AND '2004/12/31';
    
SELECT employee_id, last_name, hire_date
    FROM employees
    WHERE hire_date LIKE '04%';  --��, ��, �� ���̴� ����� ���� �� ��.
    

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
    
-- �⺻ �Լ� �ǽ� ����
-- ����1) EMPLOYEES ���̺��� King�� ������ �ҹ��ڷ� �˻��ϰ� 
-- �����ȣ, ����, ������(�ҹ��ڷ�),�μ���ȣ�� ����϶�.
SELECT employee_id, last_name, LOWER(job_id), department_id
    FROM employees
    WHERE LOWER(last_name)= 'king';

-- ����2) EMPLOYEES ���̺��� King�� ������ �빮�ڷ� �˻��ϰ� 
-- �����ȣ, ����, ������(�빮�ڷ�),�μ���ȣ�� ����϶�

SELECT employee_id, last_name, UPPER(job_id), department_id
    FROM employees
    WHERE UPPER(last_name)= 'KING';

-- ����3) DEPARTMENTS ���̺��� �μ���ȣ�� �μ��̸�, 
--�μ��̸��� ��ġ��ȣ�� ���Ͽ� ����ϵ��� �϶�.

SELECT
department_id, department_name,
department_name||' ' ||location_id
    FROM departments;

--CONCAT�̿�
SELECT
department_id, department_name,
CONCAT(department_name, concat(' ', location_id))
    FROM departments;

-- ����4) EMPLOYEES ���̺��� �̸��� ù ���ڰ� 
-- ��K�� ���� ũ�� ��Y������ ���� ����� ������ 
-- �����ȣ, �̸�, ����, �޿�, �μ���ȣ�� ����϶�. 
-- �� �̸������� �����Ͽ���.

SELECT employee_id, last_name, job_id, salary, department_id
    FROM employees
    WHERE SUBSTR(last_name,1,1)> 'K' AND SUBSTR(last_name,1,1) <'Y'
ORDER BY last_name;

-- ����5) EMPLOYEES ���̺��� 20�� �μ� �� 
-- �����ȣ, �̸�, �̸��� �ڸ���, �޿�, �޿��� �ڸ����� ����϶�.

SELECT employee_id, last_name, LENGTH(last_name), salary, LENGTH(salary)
    FROM employees
    WHERE department_id =20;
    
-- ����6) EMPLOYEES ���̺��� �̸� �� ��e������ ��ġ�� ����϶�.
SELECT last_name, INSTR(last_name, 'e')
    FROM employees;
    
-- ����7) ������ ������ �����ϰ� ����� �м��϶�.
SELECT 
ROUND(4567.678), --�⺻�� �Ҽ��� ù°�ڸ����� �ݿø�
ROUND(4567.678,0), 
ROUND(4567.678, 2),
ROUND(4567.678,-2)
FROM dual;

-- ����8) EMPLOYEES ���̺��� �μ���ȣ�� 80�� ����� �޿��� 
-- 30���� ���� �������� ���Ͽ� ����϶�.

SELECT last_name, salary, MOD(salary, 30)
    FROM employees
    WHERE department_id = 80;
    
-- ����9) EMPLOYEES ���̺��� 30�� �μ� �� 
-- �̸��� ��� ������ �����Ͽ� ����Ͽ���. 
-- �� ��� ������ �� �� �Ʒ��� ����϶�.
--CHR�Լ��� �Լ� ���ڿ� �����ϴ� ���ڸ� ��Ÿ����. �ƽ�Ű�ڵ尪 ����� ��.
--cf. CHR(13)�� ĳ���� �����̶�� �ϸ�, ���� Ŀ���� ��ġ�� ���� �� ������ ������.
--CHR(10)�� ���� �ǵ��� �ϸ�, ���� Ŀ���� ��ġ�� �ٿ��� �� ĭ �Ʒ��� �̵��Ѵ�. 
--��, �� �Ǵµ�.

SELECT 
last_name||CHR(10)||job_id
    FROM employees
    WHERE department_id = 30;
    
-- ����10) EMPLOYEES ���̺��� 
-- ������� �ٹ��� ���� ���� ���� �ΰ��� ����Ͽ���. 
-- �� �ٹ� �ϼ��� ���� ��� ������ ����Ͽ���.

SELECT 
TRUNC(SYSDATE-hire_date) AS "�� �ٹ��ϼ�",
TRUNC((SYSDATE-hire_date)/7) AS "�� �ٹ� ���� ��",
ROUND(MOD(SYSDATE - HIRE_DATE, 7)) AS "���� ����"
    FROM employees
ORDER BY (SYSDATE-hire_date) DESC;


-- ����11) EMPLOYEES ���̺��� �μ� 50���� 
-- �޿� �տ� $�� �����ϰ� 3�ڸ����� ,�� ����϶�

SELECT department_id, last_name,
TO_CHAR(salary, '$999,999,999')
    FROM employees
    WHERE department_id = 50;

----
--6. Ŀ�̼��� å���� ������� �����ȣ, �̸�, ����, ����+Ŀ�̼�, �޿������ ����ϵ�, 
--�� ���� �÷����� '�����ȣ',  '����̸�', '����', '�Ǳ޿�', '�޿����'���� �Ͽ� ����ϼ���.

--�޿������ ��� ���ϴ°���?

SELECT
employee_id AS �����ȣ, 
last_name AS ����̸�,
salary*12 AS ����, 
salary*12*commission_pct AS �Ǳ޿�
--grade AS �޿����
    FROM employees
    WHERE commission_pct IS NOT NULL;

--8. �μ���ȣ�� 10��, 20���� ������� �μ���ȣ, �μ��̸�, ����̸�, ����, �޿������ ����ϰ� 
--��µ� ������� �μ���ȣ�� ���� ������, ������ ���� ������ �����ϼ���.

--SELECT
--department_id, de
--    FROM employees
--    WHERE department_id IN (10, 20)
--ORDER BY department_id ASC, salary DESC;    
    
SELECT *
    FROM employees;