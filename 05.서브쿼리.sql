SELECT last_name �̸�, hire_date �������
FROM employees
WHERE hire_date > ( SELECT hire_date
                    FROM   employees
                    WHERE last_name = 'Popp');
           
--�����Լ��� ��뷡�� ����������         
SELECT last_name �̸�, job_id ����, salary �޿�
FROM employees
WHERE salary =    ( SELECT min(salary)
                    FROM employees);
 --����1��                   
SELECT last_name �̸�, salary �޿�
FROM employees
WHERE salary >    ( SELECT salary
                    FROM employees
                    WHERE last_name = 'Abel');
       
--����2��             
SELECT last_name �̸�
FROM employees
WHERE salary >    ( SELECT salary
                    FROM employees
                    WHERE last_name = 'Bull');
--����3��                  
SELECT last_name �̸�, salary ,manager_id
FROM employees
WHERE manager_id =  ( SELECT employee_id
                    FROM employees
                    WHERE last_name = 'Russell');
--����4��
SELECT last_name �̸�, salary ,manager_id
FROM employees
WHERE job_id =  ( SELECT job_id
                    FROM jobs
                    WHERE job_title = 'Stock Manager');
                    
--�������� ������-------------
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary  < ALL
                    ( SELECT salary
                      FROM employees
                      WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';
--����2��
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary  < ANY
                    ( SELECT salary
                      FROM employees
                      WHERE job_id = 'ST_MAN');
--����3��
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary  < ALL
                    ( SELECT salary
                      FROM employees
                      WHERE job_id = 'IT_PROG');

--���߿�----------------
SELECT employee_id, first_name, job_id, salary, manager_id
FROM employees
WHERE (manager_id, job_id) IN  (SELECT manager_id, job_id
                                FROM employees  
                                WHERE first_name = 'Bruce')
AND first_name <> 'Bruce';

---���տ�����
select employee_id, job_id
from employees
union
select employee_id, job_id
from job_history;
--����1��
select department_id 
from employees
union
select department_id
from departments;
--����2��
select department_id �μ���ȣ
from employees
union all
select department_id
from departments;
--����3��
select department_id �μ���ȣ
from employees
intersect
select department_id
from departments;
--����4��
select department_id �μ���ȣ
from departments
minus
select department_id
from employees;