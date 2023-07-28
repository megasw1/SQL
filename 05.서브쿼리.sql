SELECT last_name 이름, hire_date 고용일자
FROM employees
WHERE hire_date > ( SELECT hire_date
                    FROM   employees
                    WHERE last_name = 'Popp');
           
--집계함수를 사용래서 서브쿼리로         
SELECT last_name 이름, job_id 직종, salary 급여
FROM employees
WHERE salary =    ( SELECT min(salary)
                    FROM employees);
 --예제1번                   
SELECT last_name 이름, salary 급여
FROM employees
WHERE salary >    ( SELECT salary
                    FROM employees
                    WHERE last_name = 'Abel');
       
--예제2번             
SELECT last_name 이름
FROM employees
WHERE salary >    ( SELECT salary
                    FROM employees
                    WHERE last_name = 'Bull');
--예제3번                  
SELECT last_name 이름, salary ,manager_id
FROM employees
WHERE manager_id =  ( SELECT employee_id
                    FROM employees
                    WHERE last_name = 'Russell');
--예제4번
SELECT last_name 이름, salary ,manager_id
FROM employees
WHERE job_id =  ( SELECT job_id
                    FROM jobs
                    WHERE job_title = 'Stock Manager');
                    
--서브쿼리 다중행-------------
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary  < ALL
                    ( SELECT salary
                      FROM employees
                      WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';
--예제2번
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary  < ANY
                    ( SELECT salary
                      FROM employees
                      WHERE job_id = 'ST_MAN');
--예제3번
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary  < ALL
                    ( SELECT salary
                      FROM employees
                      WHERE job_id = 'IT_PROG');

--다중열----------------
SELECT employee_id, first_name, job_id, salary, manager_id
FROM employees
WHERE (manager_id, job_id) IN  (SELECT manager_id, job_id
                                FROM employees  
                                WHERE first_name = 'Bruce')
AND first_name <> 'Bruce';

---집합연산자
select employee_id, job_id
from employees
union
select employee_id, job_id
from job_history;
--예제1번
select department_id 
from employees
union
select department_id
from departments;
--예제2번
select department_id 부서번호
from employees
union all
select department_id
from departments;
--예제3번
select department_id 부서번호
from employees
intersect
select department_id
from departments;
--예제4번
select department_id 부서번호
from departments
minus
select department_id
from employees;