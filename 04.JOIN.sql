--JOIN ��������---------------
SELECT e.employee_id, e.last_name, e.department_id, d.department_name
FROM employees e JOIN departments d 
ON e.department_id = d.department_id;
---3�� ���̺� ����
SELECT e.employee_id , l.city, d.department_name
FROM employees e Join departments d
    ON e.department_id = d.department_id
Join locations l 
    ON d.location_id = l.location_id;
--- join �� where ���� �߰�
SELECT e.employee_id, e.last_name,
       d.department_id, d.location_id
FROM employees e
JOIN departments d 
    ON e.department_id = d.department_id
WHERE d.department_id = 50  AND e.salary > 5000;

---����1��
SELECT d.department_name �μ���, l.city ��Ƽ��, c.country_name ������
FROM  departments d JOIN locations l
    ON l.location_id = d.location_id
    JOIN countries c  
    ON c.country_id = l.country_id
WHERE l.city IN ('Seattle' , 'London') AND c.country_name LIKE 'United%';

------��ü JOIN------
select e.last_name ����, m.last_name �Ŵ���
FROM employees e 
JOIN employees m
    ON e.manager_id = m.employee_id;
    
    --�ܺ����� ����
select e.last_name ����, e.department_id �μ���ȣ, d.department_name �μ���
FROM employees e 
LEFT OUTER JOIN departments d
    ON e.department_id = d.department_id;
--�ܺ����� ������
select e.last_name ����, e.department_id �μ���ȣ, d.department_name �μ���
FROM employees e 
RIGHT OUTER JOIN departments d
    ON e.department_id = d.department_id;
--����1��
select c.country_name ����, c.country_id ������ȣ,l.location_id ������ȣ, l.city ����
FROM countries c
LEFT OUTER JOIN locations l
    ON c.country_id = l.country_id
ORDER BY l.location_id DESC;    
---��������
SELECT *
FROM countries
CROSS JOIN regions;