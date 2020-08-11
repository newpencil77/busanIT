-- ���� �ּ�. ����Ű�� CTRL+/

/*
���� ��
�ּ�
*/

--1. ���̺��� ��� ��� ���� �о� ���� ��� *
SELECT * 
FROM DEPARTMENTS;

--2. Ư�� ���� �о� ���� --��ҹ����� ������ ����.
SELECT department_id, department_name --�� 2���� �а� ����. �޸��� ����.
FROM DEPARTMENTS;

--3. ��� ������ ��� (+,-,*,/)
select employee_id, first_name, salary
from employees; --from �� ���� ���� �����ָ� select �κ��� �ڵ��ϼ����� �� �� �ֳ�?

select employee_id, first_name, salary, salary+100, salary+ (salary*0.1) --salrary�� �ڷ����� ���ڱ� ������ ������ ������.
from employees; 

--4. ��(NULL) �̶�? 
--�Է� ���� ����, ��� �������� ����, �� �� ���� ��.
--���� ����(0) �Ǵ� ����('')���� �ٸ���.

SELECT last_name, job_id, salary, commission_pct
FROM employees;

--5. �� ���� ��������ڸ� �־ �� ���̴�.
SELECT last_name, job_id, salary, commission_pct, commission_pct+10
FROM employees;

--6. AS: ���� ��Ī ���ϱ� 
--AS�� ���� �����ϴ�
-- Ư������, ���� ���� �̿��Ϸ��� ū����ǥ�� �����ָ� �ȴ�.
SELECT last_name, last_name AS �̸�, last_name �̸�2, last_name "��Ʈ ����" 
FROM employees;

--7. || ���� ������. ���� ���� ������ �ϳ��� ���� ��� ǥ�� ����.//
--���ڸ� ���� ���� ��������ǥ ���
SELECT first_name, last_name, first_name||last_name, first_name||' '||last_name
FROM employees;

--8. DISTINCT ���� �ߺ��� ����
SELECT department_id
FROM employees;

SELECT DISTINCT department_id
FROM employees;

--9. DESCRIBE or DESC
DESCRIBE employees; --���̺� ���� ������ ����


--����
--����1. employees ���̺��� employee_id, first_name, last_name ���
--���� ���
SELECT employee_id, first_name, last_name
FROM employees;

--����2. employees ���̺��� first_name, salary ���. salary *1.1�� ���������� ��� 
--��Ī, ����
SELECT first_name, salary, (salary *1.1) AS "��������" 
FROM employees;

--����3. employees ���̺��� employee_id�� �����ȣ, first_name�� �̸�, last_name�� ������ ���.
--��Ī
SELECT employee_id "�����ȣ", first_name "�̸�", last_name "��"
FROM employees;

--����4. employees ���̺��� employee_id ���, first_name�� last_name�� �ٿ��� ����ϵ�, ��� �� ĭ ����
-- ���� ���� email����ϵ� @company.com ������ �ٿ��� ���
SELECT employee_id, first_name||' '||last_name, email||'@company.com'
FROM employees;


