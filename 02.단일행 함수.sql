--������ �Լ�
SELECT LOWER('ABCD'), UPPER('abcd'),initcap('ab')
from dual;
--concaT(���ڿ� ����)    substr(���ڿ�,������ġ,��� ���ڿ� ����)
SELECT CONCAT('��ο�','����'), substr('��ο����',2,3),length('sadsa')
,instr('��ο�''��')
from dual;
--������ �Լ� ����-------------------------
SELECT department_id, last_name, department_id
FROM employees
WHERE lower(last_name) = 'higgins';

SELECT last_name, CONCAT('��������  ', job_id) AS ������
FROM employees
WHERE SUBSTR(job_id, 4,3) = 'REP';

SELECT REPLACE('��ο����', '����', '����') ������
FROM   dual;
--����1��
select UPPER(last_name),LOWER(last_name),INITCAP(email)
from employees;
--����2��
SELECT substr(job_id,1,2)
from employees;
--������ �Լ�------------------------
SELECT ROUND(15.193,1) �Ҽ�ù°, 
       ROUND(15.193,0) ����,
       ROUND(15.193,-1) "10���ڸ�"
FROM dual;

SELECT employee_id ¦��, last_name
FROM employees
WHERE MOD(employee_id, 2) = 0
ORDER BY 1;

--����1��
SELECT ROUND(salary/30),ROUND(salary/30,1),ROUND(salary/30,-1)
from employees;

--��¥�� �Լ�----------------
SELECT SYSDATE-1 ����, SYSDATE ����, SYSDATE+1 ����
FROM DUAL;

SELECT employee_id, hire_date, 
       MONTHS_BETWEEN(SYSDATE,hire_date) �ٹ�����,
       ADD_MONTHS(hire_date, 6) "6���� �߰�",
       NEXT_DAY(hire_date, '�ݿ���') Next_day, 
       --1(��), 2(��), 3(ȭ), 4(��), 5(��), 6(��), 7(��) 
       LAST_DAY(hire_date) Last_day
       --���� ������ ��
FROM employees
WHERE MONTHS_BETWEEN(SYSDATE,hire_date) < 150;

--����1��
SELECT sysdate , hire_date ,FLOOR(MONTHS_BETWEEN(sysdate,hire_date))
from employees
WHERE department_id = 100;
--����2��
SELECT hire_date ,ADD_MONTHS(hire_date,3),ADD_MONTHS(hire_date,-3)
from employees
WHERE department_id BETWEEN 100 AND 106;

--��ȯ�� �Լ�--------------
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') "sysdate"FROM DUAL;
 
-- 365�� �� �� ��°���� ��ȸ
SELECT TO_CHAR(SYSDATE, 'DDD') "Day of year" FROM DUAL;
 
-- 53�� �� �� ���� ���� ��ȸ
SELECT TO_CHAR(SYSDATE, 'IW') "Week of year" FROM DUAL;
 
-- �ش� ���� �̸� ��ȸ
SELECT TO_CHAR(SYSDATE, 'MONTH') "Name of month" FROM DUAL;
--����1��
select employee_id,TO_CHAR(hire_date,'MM/YY')
from employees
WHERE department_id=100;
--����2��
SELECT last_name �̸�,salary ����
from employees
where salary >10000;

--NULL �����Լ�---------------
SELECT last_name, NVL(manager_id, 123) �Ŵ���
FROM employees
WHERE last_name = 'King';
--NVL2 : ���� NULL�� �ƴϸ� 1 ��ȯ, �̸� 0��ȯ
SELECT last_name, NVL2(manager_id, 1, 0) �Ŵ���
FROM employees
WHERE last_name = 'King';

--����1��
SELECT last_name,salary, NVL(commission_pct,0) Ŀ�̼�,salary*12+salary*12*NVL(commission_pct,0) ���� 
FROM employees;
--����2��
SELECT last_name,salary, commission_pct,
        NVL2(commission_pct,(salary*12)+(salary*12*commission_pct),salary*12) ����
FROM employees;

--decode�Լ� , case �Լ�
SELECT last_name �̸�, job_id, salary,
    CASE  WHEN salary<5000   THEN 'Low'
          WHEN salary<10000  THEN 'Medium'
          WHEN salary<20000  THEN 'Good'
          ELSE                    'Excellent'  
    END "�޿� ����"
FROM employees;

--����1��
SELECT last_name �̸�, job_id ����, salary ����,
    DECODE(TRUNC(salary/2000),0,0, 1,0.09, 2,0.2, 3,0.3, 4,0.4, 5,0.42, 6,0.44,
                            
                               0.45)  "����"
FROM employees;
--����2��
SELECT employee_id,first_name ,last_name, salary,
   CASE         WHEN  salary >= 9000   THEN '�����޿�'
                WHEN  salary >= 6000   THEN '�����޿�'
                ELSE         '�����޿�' 
   END "�޿� ���"
FROM employees
where job_id = 'IT_PROG';