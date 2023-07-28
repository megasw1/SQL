--������ ��ȸ
select department_id �μ���ȣ,department_name �μ��̸�
from departments;
--��Ģ����
SELECT last_name �̸�,job_id ����,salary ����,salary+100 ���ʽ�����,salary-salary*0.1 ����
from employees;
--�ߺ� �� ����
select distinct job_id ����
from employees;
--��������
--1
SELECT employee_id ,first_name ,last_name 
from employees;
--2������
SELECT first_name ,salary  , salary*1.1 AS "��������"
from employees;
--3������
SELECT employee_id �����ȣ,first_name �̸�,last_name ��
from employees;

--���Ῥ���� ||
SELECT last_name || ' is a' || job_id as "��������"
from employees;
--���� 4������
SELECT employee_id, first_name || ' ' || last_name,email || '@company.com'
from employees;

--where ������
select *
from employees
where salary > 14000;

select *
from employees
where employee_id = 100;

select *
from employees
where first_name = 'David';

select *
from employees  
where employee_id < 105;

select *
from job_history
where start_date > '06/03/03';

select *
from departments
where location_id != 1700;
--and ,or ,not ������
SELECT last_name, department_id, salary
FROM   employees
WHERE  (department_id = 60
OR     department_id = 80)
AND    salary > 10000;

SELECT * 
FROM employees
WHERE NOT( hire_date > '04/01/01' OR salary > 5000 );
-- == WHERE ( hire_date <= '04/01/01' AND salary <= 5000 )

--����1��
SELECT *
FROM   employees
WHERE  salary > 4000
AND job_id = 'IT_PROG';
--����2��
SELECT  *
FROM   employees
WHERE  salary > 4000
AND job_id = 'IT_PROG'
OR  job_id = 'FI_ACCOUN';

--IN ������
SELECT * 
FROM employees
WHERE salary IN ( 4000, 3000, 2700 ); 
--����1��
SELECT * 
FROM employees
WHERE salary IN ( 10000,17000,24000 ); 
--����2��
SELECT * 
FROM employees
WHERE not department_ID IN (30,50,80,100,110);

--BETWEEN ������
SELECT *
FROM employees
WHERE salary BETWEEN 9000 AND 10000;
--����1��
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 20000;
--����2��
SELECT *
FROM employees
WHERE hire_date BETWEEN '04/01/01' AND '04/12/30';
--����3��
SELECT *
FROM employees
WHERE NOT salary BETWEEN 7000 AND 17000;

--LIKE ������
SELECT *
FROM employees
WHERE last_name LIKE 'B%';
--����1��
SELECT *
FROM employees
WHERE job_id LIKE '%AD%';
--����2��
SELECT *
FROM employees
WHERE job_id LIKE '%AD___';
--����3��
SELECT *
FROM employees
WHERE phone_number LIKE '%1234';
--����4��
SELECT *
FROM employees
WHERE phone_number LIKE '%9'
and not phone_number like '%3%';
--����5��
SELECT *
FROM employees
WHERE job_id like '%MGR%'
OR job_id like '%ASST';

--NULL������
SELECT *
FROM employees
WHERE commission_pct IS NULL;
--����1��
SELECT *
FROM employees
WHERE manager_id IS NULL;

--ORDER BY
SELECT department_id, employee_id, first_name, last_name 
FROM employees
ORDER BY department_id , employee_id;
-- �μ���ȣ�� ����( sorting ) �� �� �����ȣ�� ����
--����1��
SELECT employee_id, first_name, last_name
FROM employees
ORDER BY employee_id DESC;
--����2��
SELECT *
FROM employees
WHERE job_id LIKE '%CLERK%'
ORDER BY salary DESC;
--����3��
SELECT *
FROM employees
WHERE employee_id BETWEEN 120 AND 150
ORDER BY department_id DESC, salary DESC;