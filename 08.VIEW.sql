DROP VIEW EMP_V2; -- �� ����

CREATE VIEW EMP_V2
AS
SELECT EMPLOYEE_ID ������ȣ ,FIRST_NAME �̸� ,LAST_NAME ��,
EMAIL,HIRE_DATE,JOB_ID
FROM EMPLOYEES;

SELECT * FROM EMP_V2;


--DML ��� , �� ���� �Է�
--��� ���� �������� ���̺��� �ƴѵ� �Է��� ���� -> ������ �並 ���� ���̺� �Էµ�
INSERT INTO EMP_V2 (������ȣ,�̸�,��,EMAIL,HIRE_DATE,JOB_ID)
VALUES (207,'�浿','ȫ','HONG',SYSDATE,'IT_PROG');
-- �� ���� ����
DELETE FROM EMP_V2 
WHERE ������ȣ = 207;

SELECT * FROM EMP_V2
WHERE EMP_ID=207;

SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID=207;

CREATE VIEW EMP_read(������ȣ,�̸�,��,�̸���,�������,����)
AS
SELECT employee_id,first_name,last_name, email,hire_date,job_id
FROM employees with read only;

SELECT * FROM emp_read;
DELETE FROM EMP_READ WhERE ������ȣ = 100; --�б⸸ �����ϱ⋚�� �Է� ���� ���� �Ұ�
