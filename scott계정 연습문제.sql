--����1��
SELECT EMPNO,ename,SAL
FROM EMP
WHERE DEPTNO =10;
---����2��
SELECT ename,hiredate,deptno
FROM EMP
WHERE empno =7369;
--����3��
SELECT *
FROM EMP
WHERE ename = 'ALLEN';
--����4��
SELECT ename,deptno,sal
FROM emp
WHERE hiredate = '81/02/20';
--����5��
SELECT *
FROM EMP
WHERE job != 'MANAGER' ;
--���� 6��
SELECT *
FROM emp
WHERE hiredate > '81/04/02';
--����7��
SELECT ename,sal,deptno
from  emp
WHERE sal >=800;
--����8��
SELECT *
FROM EMP
WHERE deptno >= 20;
--����9��
SELECT *
FROM EMP
WHERE ename > 'K';
--����10��
SELECT *
FROM emp
WHERE hiredate < '81/12/09';
--����11��
SELECT ename,empno
FROM EMP
WHERE empno<=7698;
--����12��
SELECT ename,sal,deptno
FROM emp
WHERE hiredate >= '81/04/02' AND hiredate < '82/12/09';
--����13��
select ename,job,sal
from emp
WHERE 1600<sal AND sal <3000;
--����14
SELECT *
FROM EMP
WHERE empno NOT BETWEEN 7654 AND 7782;
--����15��
SELECT *
FROM EMP
WHERE ename BETWEEN 'B' AND 'J';
--����16��
SELECT *
FROM EMP
WHERE NOT hiredate BETWEEN '81/01/01' AND '81/12/31';
--����17��
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' OR JOB ='SALESMAN';
--����18��
SELECT ename,empno,deptno
FROM EMP
WHERE deptno not IN(20,30);
--����19��
SELECT empno,ename,hiredate,deptno
FROM EMP
WHERE ename LIKE 'S%';
--����20��
SELECT *
FROM EMP
WHERE hiredate BETWEEN '81/01/01' AND '81/12/31';
--����21��
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
SELECT ename,sal,round(sal*0.13) ���ʽ�,deptno
From emp
WHERE deptno =10;
--34
SELECT ename,sal,NVL(comm,0)Ŀ�̼�,(sal+comm) �Ѿ�
FROM EMP
ORDER BY �Ѿ�;
--35
SELECT ename,sal,round((sal*0.15),1) ȸ��
FROM EMP
WHERE sal BETWEEN 1500 AND 3000;
--36
SELECT d.dname, COUNT(e.empno) �����
FROM dept d
JOIN emp e ON e.deptno = d.deptno
GROUP BY d.dname
HAVING COUNT(e.empno) > 5;
--37
SELECT job, SUM(sal) �޿��հ�
FROM emp
WHERE job != 'SALESMAN'
GROUP BY job
HAVING SUM(sal) > 5000;
--38
SELECT emp.empno, emp.ename, emp.sal, salgrade.grade
FROM emp
JOIN salgrade ON emp.sal BETWEEN salgrade.losal AND salgrade.hisal;
--39
SELECT deptno, COUNT(*)  �����, COUNT(comm)  Ŀ�̼ǹ��������
FROM emp
GROUP BY deptno;
--40
SELECT ename, deptno,
       CASE deptno
            WHEN 10 THEN '�ѹ���'
            WHEN 20 THEN '���ߺ�'
            WHEN 30 THEN '������'
            ELSE '��Ÿ'
       END AS �μ���
FROM emp;   