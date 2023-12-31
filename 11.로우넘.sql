SELECT ROWNUM, EMP.* 
FROM EMP 
WHERE ROWNUM <= 5;
?
SELECT ROWNUM, EMP.* 
FROM EMP 
WHERE ROWNUM BETWEEN 6 AND 10; --로우넘은 1번부터 번호를 매기는 거라 다은 조건으론 검색 안됨

SELECT * FROM (SELECT ROWNUM AS RN,emp.*  FROM emp) 
where RN between 6 AND 10; 

--정렬(ORDER BY) 이전에 ROWNUM
SELECT ROWNUM,EMP.*
FROM EMP
WHERE ROWNUM <=5 ORDER BY ENAME;
--정렬한 테이블을 서브쿼리에 넣은 다음에 로우넘으로 번호
SELECT ROWNUM, A.*
FROM (
    SELECT EMPNO, ENAME FROM EMP ORDER BY ENAME
) A
WHERE ROWNUM <= 5;