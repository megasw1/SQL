SELECT ROWNUM, EMP.* 
FROM EMP 
WHERE ROWNUM <= 5;
?
SELECT ROWNUM, EMP.* 
FROM EMP 
WHERE ROWNUM BETWEEN 6 AND 10; --�ο���� 1������ ��ȣ�� �ű�� �Ŷ� ���� �������� �˻� �ȵ�

SELECT * FROM (SELECT ROWNUM AS RN,emp.*  FROM emp) 
where RN between 6 AND 10; 

--����(ORDER BY) ������ ROWNUM
SELECT ROWNUM,EMP.*
FROM EMP
WHERE ROWNUM <=5 ORDER BY ENAME;
--������ ���̺��� ���������� ���� ������ �ο������ ��ȣ
SELECT ROWNUM, A.*
FROM (
    SELECT EMPNO, ENAME FROM EMP ORDER BY ENAME
) A
WHERE ROWNUM <= 5;