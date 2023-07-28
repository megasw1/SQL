--데이터 조회
select department_id 부서번호,department_name 부서이름
from departments;
--사칙연산
SELECT last_name 이름,job_id 직종,salary 월급,salary+100 보너스월급,salary-salary*0.1 감봉
from employees;
--중복 값 제거
select distinct job_id 직종
from employees;
--예제문제
--1
SELECT employee_id ,first_name ,last_name 
from employees;
--2번문제
SELECT first_name ,salary  , salary*1.1 AS "뉴셀러리"
from employees;
--3번문제
SELECT employee_id 사원번호,first_name 이름,last_name 성
from employees;

--연결연산자 ||
SELECT last_name || ' is a' || job_id as "직업정보"
from employees;
--예제 4번문제
SELECT employee_id, first_name || ' ' || last_name,email || '@company.com'
from employees;

--where 조건절
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
--and ,or ,not 연산자
SELECT last_name, department_id, salary
FROM   employees
WHERE  (department_id = 60
OR     department_id = 80)
AND    salary > 10000;

SELECT * 
FROM employees
WHERE NOT( hire_date > '04/01/01' OR salary > 5000 );
-- == WHERE ( hire_date <= '04/01/01' AND salary <= 5000 )

--예제1번
SELECT *
FROM   employees
WHERE  salary > 4000
AND job_id = 'IT_PROG';
--예제2번
SELECT  *
FROM   employees
WHERE  salary > 4000
AND job_id = 'IT_PROG'
OR  job_id = 'FI_ACCOUN';

--IN 연산잔
SELECT * 
FROM employees
WHERE salary IN ( 4000, 3000, 2700 ); 
--예제1번
SELECT * 
FROM employees
WHERE salary IN ( 10000,17000,24000 ); 
--예제2번
SELECT * 
FROM employees
WHERE not department_ID IN (30,50,80,100,110);

--BETWEEN 연산자
SELECT *
FROM employees
WHERE salary BETWEEN 9000 AND 10000;
--예제1번
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 20000;
--예제2번
SELECT *
FROM employees
WHERE hire_date BETWEEN '04/01/01' AND '04/12/30';
--예제3번
SELECT *
FROM employees
WHERE NOT salary BETWEEN 7000 AND 17000;

--LIKE 연산자
SELECT *
FROM employees
WHERE last_name LIKE 'B%';
--예제1번
SELECT *
FROM employees
WHERE job_id LIKE '%AD%';
--예제2번
SELECT *
FROM employees
WHERE job_id LIKE '%AD___';
--예제3번
SELECT *
FROM employees
WHERE phone_number LIKE '%1234';
--예제4번
SELECT *
FROM employees
WHERE phone_number LIKE '%9'
and not phone_number like '%3%';
--예제5번
SELECT *
FROM employees
WHERE job_id like '%MGR%'
OR job_id like '%ASST';

--NULL연산자
SELECT *
FROM employees
WHERE commission_pct IS NULL;
--예제1번
SELECT *
FROM employees
WHERE manager_id IS NULL;

--ORDER BY
SELECT department_id, employee_id, first_name, last_name 
FROM employees
ORDER BY department_id , employee_id;
-- 부서번호로 정렬( sorting ) 한 후 사원번호로 정렬
--예제1번
SELECT employee_id, first_name, last_name
FROM employees
ORDER BY employee_id DESC;
--예제2번
SELECT *
FROM employees
WHERE job_id LIKE '%CLERK%'
ORDER BY salary DESC;
--예제3번
SELECT *
FROM employees
WHERE employee_id BETWEEN 120 AND 150
ORDER BY department_id DESC, salary DESC;