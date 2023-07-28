--JOIN 동등조인---------------
SELECT e.employee_id, e.last_name, e.department_id, d.department_name
FROM employees e JOIN departments d 
ON e.department_id = d.department_id;
---3개 테이블 조인
SELECT e.employee_id , l.city, d.department_name
FROM employees e Join departments d
    ON e.department_id = d.department_id
Join locations l 
    ON d.location_id = l.location_id;
--- join 에 where 조건 추가
SELECT e.employee_id, e.last_name,
       d.department_id, d.location_id
FROM employees e
JOIN departments d 
    ON e.department_id = d.department_id
WHERE d.department_id = 50  AND e.salary > 5000;

---예제1번
SELECT d.department_name 부서명, l.city 시티명, c.country_name 국가명
FROM  departments d JOIN locations l
    ON l.location_id = d.location_id
    JOIN countries c  
    ON c.country_id = l.country_id
WHERE l.city IN ('Seattle' , 'London') AND c.country_name LIKE 'United%';

------자체 JOIN------
select e.last_name 직원, m.last_name 매니저
FROM employees e 
JOIN employees m
    ON e.manager_id = m.employee_id;
    
    --외부조인 왼쪽
select e.last_name 직원, e.department_id 부서번호, d.department_name 부서명
FROM employees e 
LEFT OUTER JOIN departments d
    ON e.department_id = d.department_id;
--외부조인 오른쪽
select e.last_name 직원, e.department_id 부서번호, d.department_name 부서명
FROM employees e 
RIGHT OUTER JOIN departments d
    ON e.department_id = d.department_id;
--예제1번
select c.country_name 국가, c.country_id 국가번호,l.location_id 지역번호, l.city 도시
FROM countries c
LEFT OUTER JOIN locations l
    ON c.country_id = l.country_id
ORDER BY l.location_id DESC;    
---교차조인
SELECT *
FROM countries
CROSS JOIN regions;