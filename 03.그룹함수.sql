--���� �Լ�---------------------
SELECT AVG(salary), MAX(salary),
       MIN(salary), SUM(salary)
FROM employees
WHERE job_id LIKE '%REP%';
--����1��
SELECT department_id �μ���, count(*) �����,MIN(salary) �ּұ޿�,
MAX(salary) �ִ�޿�, sum(salary) �޿��հ� ,ROUND(AVG(salary)) ��տ���
FROM employees
GROUP BY department_id
ORDER BY SUM(salary) DESC;
--����2��
SELECT department_id �μ���, job_id ����, sum(salary) �޿��հ� ,COUNT(*)
FROM employees
GROUP BY department_id,job_id
ORDER BY department_id;
--����3��
SELECT ROUND(AVG(MAX(salary))) �μ����ְ������� , AVG(MIN(salary)) �μ��������������
FROM employees
GROUP BY department_id ; 

---------HAVING  ����--------
SELECT department_id �μ���, COUNT(*) �����
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

--����1��
SELECT job_id ����, sum(salary) ���޿��հ�
FROM employees
GROUP BY job_id
HAVING job_id != 'AC_MGR' AND avg(salary)  > 10000
ORDER BY SUM(SALARY) DESC;
--����2��
SELECT department_id �μ���ȣ, ROUND(avg(salary)) ��ձ޿�
FROM employees
GROUP BY department_id
HAVING NOT department_id = 40 AND avg(salary) =< 7000;
--����3��
SELECT job_id ����, sum(salary) ���޿��հ�
FROM employees
GROUP BY job_id
HAVING job_id NOT LIKE '%REP%' AND sum(salary)  >= 13000
ORDER BY  SUM(SALARY) DESC;

