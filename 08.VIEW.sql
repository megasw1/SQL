DROP VIEW EMP_V2; -- 뷰 삭제

CREATE VIEW EMP_V2
AS
SELECT EMPLOYEE_ID 직원번호 ,FIRST_NAME 이름 ,LAST_NAME 성,
EMAIL,HIRE_DATE,JOB_ID
FROM EMPLOYEES;

SELECT * FROM EMP_V2;


--DML 사용 , 새 직원 입력
--뷰는 실제 물리적인 테이블이 아닌데 입력을 했음 -> 실제로 뷰를 만든 테이블에 입력됨
INSERT INTO EMP_V2 (직원번호,이름,성,EMAIL,HIRE_DATE,JOB_ID)
VALUES (207,'길동','홍','HONG',SYSDATE,'IT_PROG');
-- 새 직원 삭제
DELETE FROM EMP_V2 
WHERE 직원번호 = 207;

SELECT * FROM EMP_V2
WHERE EMP_ID=207;

SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID=207;

CREATE VIEW EMP_read(직원번호,이름,성,이메일,고용일자,직종)
AS
SELECT employee_id,first_name,last_name, email,hire_date,job_id
FROM employees with read only;

SELECT * FROM emp_read;
DELETE FROM EMP_READ WhERE 직원번호 = 100; --읽기만 가능하기떄문 입력 수정 삭제 불가
