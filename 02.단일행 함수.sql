--문자형 함수
SELECT LOWER('ABCD'), UPPER('abcd'),initcap('ab')
from dual;
--concaT(문자열 연결)    substr(문자열,시작위치,출력 문자열 개수)
SELECT CONCAT('헬로우','월드'), substr('헬로우월드',2,3),length('sadsa')
,instr('헬로우''로')
from dual;
--문자형 함수 예제-------------------------
SELECT department_id, last_name, department_id
FROM employees
WHERE lower(last_name) = 'higgins';

SELECT last_name, CONCAT('직업명이  ', job_id) AS 직업명
FROM employees
WHERE SUBSTR(job_id, 4,3) = 'REP';

SELECT REPLACE('헬로우월드', '월드', '세상') 적용결과
FROM   dual;
--예제1번
select UPPER(last_name),LOWER(last_name),INITCAP(email)
from employees;
--예제2번
SELECT substr(job_id,1,2)
from employees;
--숫자형 함수------------------------
SELECT ROUND(15.193,1) 소수첫째, 
       ROUND(15.193,0) 정수,
       ROUND(15.193,-1) "10의자리"
FROM dual;

SELECT employee_id 짝수, last_name
FROM employees
WHERE MOD(employee_id, 2) = 0
ORDER BY 1;

--예제1번
SELECT ROUND(salary/30),ROUND(salary/30,1),ROUND(salary/30,-1)
from employees;

--날짜형 함수----------------
SELECT SYSDATE-1 어제, SYSDATE 오늘, SYSDATE+1 내일
FROM DUAL;

SELECT employee_id, hire_date, 
       MONTHS_BETWEEN(SYSDATE,hire_date) 근무월수,
       ADD_MONTHS(hire_date, 6) "6개월 추가",
       NEXT_DAY(hire_date, '금요일') Next_day, 
       --1(일), 2(월), 3(화), 4(수), 5(목), 6(금), 7(토) 
       LAST_DAY(hire_date) Last_day
       --달의 마지막 날
FROM employees
WHERE MONTHS_BETWEEN(SYSDATE,hire_date) < 150;

--예제1번
SELECT sysdate , hire_date ,FLOOR(MONTHS_BETWEEN(sysdate,hire_date))
from employees
WHERE department_id = 100;
--예제2번
SELECT hire_date ,ADD_MONTHS(hire_date,3),ADD_MONTHS(hire_date,-3)
from employees
WHERE department_id BETWEEN 100 AND 106;

--변환형 함수--------------
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') "sysdate"FROM DUAL;
 
-- 365일 중 몇 일째인지 조회
SELECT TO_CHAR(SYSDATE, 'DDD') "Day of year" FROM DUAL;
 
-- 53주 중 몇 주차 인지 조회
SELECT TO_CHAR(SYSDATE, 'IW') "Week of year" FROM DUAL;
 
-- 해당 월의 이름 조회
SELECT TO_CHAR(SYSDATE, 'MONTH') "Name of month" FROM DUAL;
--예제1번
select employee_id,TO_CHAR(hire_date,'MM/YY')
from employees
WHERE department_id=100;
--예제2번
SELECT last_name 이름,salary 월급
from employees
where salary >10000;

--NULL 관련함수---------------
SELECT last_name, NVL(manager_id, 123) 매니저
FROM employees
WHERE last_name = 'King';
--NVL2 : 값이 NULL이 아니면 1 반환, 이면 0반환
SELECT last_name, NVL2(manager_id, 1, 0) 매니저
FROM employees
WHERE last_name = 'King';

--예제1번
SELECT last_name,salary, NVL(commission_pct,0) 커미션,salary*12+salary*12*NVL(commission_pct,0) 연봉 
FROM employees;
--예제2번
SELECT last_name,salary, commission_pct,
        NVL2(commission_pct,(salary*12)+(salary*12*commission_pct),salary*12) 연봉
FROM employees;

--decode함수 , case 함수
SELECT last_name 이름, job_id, salary,
    CASE  WHEN salary<5000   THEN 'Low'
          WHEN salary<10000  THEN 'Medium'
          WHEN salary<20000  THEN 'Good'
          ELSE                    'Excellent'  
    END "급여 수준"
FROM employees;

--예제1번
SELECT last_name 이름, job_id 직무, salary 월급,
    DECODE(TRUNC(salary/2000),0,0, 1,0.09, 2,0.2, 3,0.3, 4,0.4, 5,0.42, 6,0.44,
                            
                               0.45)  "세율"
FROM employees;
--예제2번
SELECT employee_id,first_name ,last_name, salary,
   CASE         WHEN  salary >= 9000   THEN '상위급여'
                WHEN  salary >= 6000   THEN '중위급여'
                ELSE         '하위급여' 
   END "급여 등급"
FROM employees
where job_id = 'IT_PROG';