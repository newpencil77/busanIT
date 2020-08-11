--1. ���̺��� ��� ������ ��������
SELECT *
    FROM employees;
    
--2. WHERE ���� ������ ���� �����Ѵ�. FROM������ ��ġ��.
--�����Ϸ��� ���̺�κ��� (FROM)
--�ش� ���� ������(WHERE)
--���� ����(SELECT)�Ͽ� ��ȸ

SELECT *
    FROM employees --employees ���̺���
    WHERE department_id = 90; --department_id�� 90�� �͸�
    
SELECT *
    FROM employees --employees ���̺���
    WHERE salary = 24000; --salary�� 24000�� �͸�
    
/*WHERE �� ���� ������ ��.
����(String)�� ��¥(DATE) ���� �׻� '����ǥ' ����� ǥ��.
���� ���� ��ҹ��� ����.(Case-Sensitive)
��¥���� ��¥ ���˿� ����� �ʰ� (Format-Sensitive)  
����Ŭ�� ���� ������ RR-DD-MM(RR�� 2 �ڸ��� �⵵ ǥ��)  
*/

--3. WHERE + ���ڿ�(���� �����ͷ� ������ ��)
SELECT employee_id, first_name, last_name, job_id
    FROM employees
    WHERE first_name = 'Steven'; --���⿡�� �ҹ��� s�� ���� ���� �� ����.
    
--4. WHERE + ��¥
SELECT *
    FROM employees
    WHERE hire_date = '03/10/17'; --RR-MM-DD

--5. �� ������//
SELECT *
    FROM employees
    WHERE salary >= 10000;
    
SELECT *
    FROM employees
    WHERE hire_date >= '03/10/17'; --03.10.17���� �� ������
    
SELECT *
    FROM employees
    WHERE first_name > 'King'; --���ĺ�(�ƽ�Ű�ڵ�)���� ū �̸�. K������ ���ڰ�
    
    
--����1. employees���̺��� employee_id�� 100�� ���� �������
SELECT *
    FROM employees
    WHERE employee_id = 100;
    
--����2. employees���̺��� first_name �� David�� ���� ���� ���
SELECT *
    FROM employees
    WHERE first_name = 'David';
    
--����3. employees���̺��� employee_id�� 105 ������ ���� ���� ���
SELECT *
    FROM employees
    WHERE employee_id <= 105;

--����4. job_ history ���̺��� start_date �� 2006�� 3�� 3�� ������ ���� ���
SELECT *
    FROM job_history
    WHERE start_date > '06/03/03';

--����5. departments ���̺��� location_id�� 1700�� �ƴ� ��� �μ� ���
SELECT *
    FROM departments
    WHERE location_id != 1700;
   
    
--6. and or
SELECT last_name, department_id, salary
    FROM employees
    WHERE department_id = 60 OR (department_id = 80 AND salary > 10000); --department_id �� 60�̰ų�// department_id�� 80�̸鼭 salary�� 10000�ʰ��� ��.
    
SELECT last_name, department_id, salary
    FROM employees
    WHERE (department_id = 90 OR department_id = 80) AND salary > 10000; --department_id �� 90�̰ų� department_id�� 80 // �̸鼭 salary�� 10000�ʰ��� ��.
    
--7. Null ������
SELECT first_name, commission_pct
    FROM employees;

SELECT *
    FROM employees
    WHERE commission_pct is null; -- =null�� �� ��. 

--����1.
SELECT *
    FROM employees
    WHERE salary > 4000 AND job_id = 'IT_PROG';

--����2. 
SELECT *
    FROM employees
    WHERE salary > 4000 and (job_id = 'IT_PROG' OR job_id ='FI_ACCOUNT');

SELECT *
    FROM employees
    WHERE salary > 4000 and job_id IN('IT_PROG','FI_ACCOUNT'); --IN Ȱ��. Ư�� �� ������ ������ ���� ��
    

--IN ������
SELECT *
    FROM employees
    WHERE salary = 4000 OR salary = 3000 OR salary = 2700;
    
SELECT *
    FROM employees
    WHERE salary IN (4000, 3000, 2700); --���� �� ���� ����� ���� ���� �����.
    
--����1. employees���̺��� salary�� 10000, 17000, 24000�� �� ���.
--IN
SELECT *
    FROM employees
    WHERE salary IN (10000, 17000, 24000);

--����2. employees ���̺��� departmnet_ID�� ~�� �ƴ� �� ���.
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
WHERE salary between 9000 AND 10000; --���� �� ���� ����� ���� ���� �����.
--between���� A�� ��(���� ��)�� B���� �׻� �۾ƾ���.

--����1.
SELECT *
    FROM employees
WHERE  salary between 10000 and 20000;

--����2.
SELECT *
    FROM employees
WHERE hire_date between '2004/01/01' AND '2004/12/30';

--����3.
SELECT *
    FROM employees
WHERE salary < 7000 OR salary > 17000; --BETWEEN�� �ݴ���. �׷��� NOT�� �ٿ��� Ȱ�� ����.

SELECT *
    FROM employees
WHERE salary NOT BETWEEN 7000 AND 17000;


/*LIKE �����ڴ�_�� %�� ���.
%���ڰ� 0�� �Ǵ� 1�� �̻�.
_���ڰ� 1�� */

SELECT *
    FROM employees
    WHERE last_name LIKE 'B%'; --�빮�� B�� ����
    
SELECT *
    FROM employees;
    
SELECT *
    FROM employees
    WHERE last_name LIKE '%b%'; --��� ��ġ���� b�� ������ ���

SELECT *
    FROM employees
    WHERE first_name LIKE '_d%'; --ù���� �ڿ� d�� ������ ���

SELECT *
    FROM employees
    WHERE first_name LIKE '__s%'; --�� ���� �ڿ� s�� ������ ���
    

--����1. employees ���̺��� job_id ���� AD�� �����ϴ� ��� ������
SELECT *
    FROM employees
    WHERE job_id LIKE '%AD%'; --AD����
    
--����2. 1 �ϸ鼭, AD�� ������� ���ڿ��� 3�ڸ��� ������.
SELECT *
    FROM employees
    WHERE job_id LIKE '%AD___';-- ������� 3��
 
--����3. ��ȭ��ȣ ���ڸ��� 1234�� ������
SELECT *
    FROM employees
    WHERE phone_number LIKE '%1234';

--����4. ��ȭ��ȣ�� 3�� ���� x ��ȭ��ȣ ���ڸ��� 9
SELECT *
    FROM employees
    WHERE phone_number NOT LIKE '%3%' AND phone_number LIKE '%9'; --�̷� ������ �ۿ� ���ϳ�?
    
--����5. job_id�� MGR�� �����ϰų� ASST�� ����
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
    
--����. manager_id�� null���� ���� ���� ���
SELECT *
    FROM employees
    WHERE manager_id is NULL;
    

--ORDER BY ���� ���� //
SELECT *
    FROM employees
    ORDER BY last_name; --�⺻�� ��������. ASC. ascending ���� ������ ū ��. A~
    
SELECT *
    FROM employees
    ORDER BY last_name DESC; --descending. ��������
    
 SELECT *
    FROM employees
    ORDER BY salary DESC;   

--��Ƽ ����. ���� 2�� �̻� ������ ��
SELECT department_id, employee_id,first_name, last_name 
    FROM employees
    ORDER BY department_id, employee_id; --�μ���ȣ�� ���� �� �����ȣ�� ���� (�Ѵ� ��������)

--���� �����ؼ� �����ϴ� �� ����.
SELECT department_id, last_name, salary*12 AS ���� --���� ���� �����ؼ� '����'���� ��Ī ����
    FROM employees
ORDER BY ���� DESC; --������������ ����

SELECT department_id, last_name, salary*12 AS ���� 
    FROM employees
ORDER BY 3 DESC; --���ڷ� ���� ���� (�� ��� 1�� department_id, 2�� last_name)

--����1  employee_id, first_name, last_name ���. employee_id �������� �������� ����
SELECT employee_id, first_name, last_name
    FROM employees
ORDER BY employee_id DESC;

--����2 employees ���̺��� job_id�� CLERK�� �ܾ ���� �������� salary�� ���� ������ ����
SELECT *
    FROM employees
    WHERE job_id LIKE '%CLERK%'
ORDER BY salary DESC;

--����3 employees ���̺��� employee_id�� 120���� 150�������� ������ 
--�μ���ȣ(department_id)�� ū ������ �����ϰ�, �μ���ȣ�� ���� �� ����(salary)�� ū ������ ����
SELECT *
    FROM employees
    WHERE employee_id BETWEEN 120 AND 150
ORDER BY department_id DESC, salary DESC;