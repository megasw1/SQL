--집계 함수---------------------
SELECT AVG(salary), MAX(salary),
       MIN(salary), SUM(salary)
FROM employees
WHERE job_id LIKE '%REP%';
--예제1번
SELECT department_id 부서명, count(*) 사원수,MIN(salary) 최소급여,
MAX(salary) 최대급여, sum(salary) 급여합계 ,ROUND(AVG(salary)) 평균월급
FROM employees
GROUP BY department_id
ORDER BY SUM(salary) DESC;
--예제2번
SELECT department_id 부서명, job_id 직종, sum(salary) 급여합계 ,COUNT(*)
FROM employees
GROUP BY department_id,job_id
ORDER BY department_id;
--예제3번
SELECT ROUND(AVG(MAX(salary))) 부서별최고월급평균 , AVG(MIN(salary)) 부서별최저월급평균
FROM employees
GROUP BY department_id ; 

---------HAVING  조건--------
SELECT department_id 부서명, COUNT(*) 사원수
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

--예제1번
SELECT job_id 직종, sum(salary) 월급여합계
FROM employees
GROUP BY job_id
HAVING job_id != 'AC_MGR' AND avg(salary)  > 10000
ORDER BY SUM(SALARY) DESC;
--예제2번
SELECT department_id 부서번호, ROUND(avg(salary)) 평균급여
FROM employees
GROUP BY department_id
HAVING NOT department_id = 40 AND avg(salary) =< 7000;
--예제3번
SELECT job_id 직종, sum(salary) 월급여합계
FROM employees
GROUP BY job_id
HAVING job_id NOT LIKE '%REP%' AND sum(salary)  >= 13000
ORDER BY  SUM(SALARY) DESC;

