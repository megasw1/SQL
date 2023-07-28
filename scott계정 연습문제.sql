--예제1번
SELECT EMPNO,ename,SAL
FROM EMP
WHERE DEPTNO =10;
---예제2번
SELECT ename,hiredate,deptno
FROM EMP
WHERE empno =7369;
--예제3번
SELECT *
FROM EMP
WHERE ename = 'ALLEN';
--예제4번
SELECT ename,deptno,sal
FROM emp
WHERE hiredate = '81/02/20';
--예제5번
SELECT *
FROM EMP
WHERE job != 'MANAGER' ;
--예제 6번
SELECT *
FROM emp
WHERE hiredate > '81/04/02';
--예제7번
SELECT ename,sal,deptno
from  emp
WHERE sal >=800;
--예제8번
SELECT *
FROM EMP
WHERE deptno >= 20;
--예제9번
SELECT *
FROM EMP
WHERE ename > 'K';
--예제10번
SELECT *
FROM emp
WHERE hiredate < '81/12/09';
--예제11번
SELECT ename,empno
FROM EMP
WHERE empno<=7698;
--예제12번
SELECT ename,sal,deptno
FROM emp
WHERE hiredate >= '81/04/02' AND hiredate < '82/12/09';
--예제13번
select ename,job,sal
from emp
WHERE 1600<sal AND sal <3000;
--예제14
SELECT *
FROM EMP
WHERE empno NOT BETWEEN 7654 AND 7782;
--예제15번
SELECT *
FROM EMP
WHERE ename BETWEEN 'B' AND 'J';
--예제16번
SELECT *
FROM EMP
WHERE NOT hiredate BETWEEN '81/01/01' AND '81/12/31';
--예제17번
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' OR JOB ='SALESMAN';
--예제18번
SELECT ename,empno,deptno
FROM EMP
WHERE deptno not IN(20,30);
--예제19번
SELECT empno,ename,hiredate,deptno
FROM EMP
WHERE ename LIKE 'S%';
--예제20번
SELECT *
FROM EMP
WHERE hiredate BETWEEN '81/01/01' AND '81/12/31';
--예제21번
SELECT *
FROM EMP
WHERE ename LIKE '%S%';
--22
SELECT *
FROM EMP
WHERE ename LIKE 'M____N';
--23
SELECT *
FROM EMP
WHERE ename LIKE '_A%';
--24
SELECT *
FROM EMP
WHERE comm IS NULL;
--25
SELECT *
FROM EMP
WHERE comm IS NOT NULL;
--26
SELECT ename,deptno,sal
FROM EMP
WHERE deptno =30 AND sal > 1500;
--27
SELECT empno,ename,deptno
FROM EMP
WHERE deptno =30 OR ename LIKE 'K%';
--28
SELECT *
FROM EMP
WHERE deptno =30  AND sal > 1500 AND job = 'MANAGER' ;
--29
SELECT *
FROM EMP
WHERE deptno = 30 
ORDER BY empno ;
--30
SELECT *
FROM EMP
ORDER BY sal DESC;
--31
SELECT *
FROM EMP
ORDER BY deptno,sal DESC;
--32
SELECT deptno,ename,sal
FROM EMP
ORDER BY deptno DESC,ename ASC,sal DESC;
--33
SELECT ename,sal,round(sal*0.13) 보너스,deptno
From emp
WHERE deptno =10;
--34
SELECT ename,sal,NVL(comm,0)커미션,(sal+comm) 총액
FROM EMP
ORDER BY 총액;
--35
SELECT ename,sal,round((sal*0.15),1) 회비
FROM EMP
WHERE sal BETWEEN 1500 AND 3000;
--36
SELECT d.dname, COUNT(e.empno) 사원수
FROM dept d
JOIN emp e ON e.deptno = d.deptno
GROUP BY d.dname
HAVING COUNT(e.empno) > 5;
--37
SELECT job, SUM(sal) 급여합계
FROM emp
WHERE job != 'SALESMAN'
GROUP BY job
HAVING SUM(sal) > 5000;
--38
SELECT emp.empno, emp.ename, emp.sal, salgrade.grade
FROM emp
JOIN salgrade ON emp.sal BETWEEN salgrade.losal AND salgrade.hisal;
--39
SELECT deptno, COUNT(*)  사원수, COUNT(comm)  커미션받은사원수
FROM emp
GROUP BY deptno;
--40
SELECT ename, deptno,
       CASE deptno
            WHEN 10 THEN '총무부'
            WHEN 20 THEN '개발부'
            WHEN 30 THEN '영업부'
            ELSE '기타'
       END AS 부서명
FROM emp;   