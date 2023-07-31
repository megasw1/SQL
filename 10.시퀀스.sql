CREATE SEQUENCE 시퀀스1; --옵션없이
CREATE SEQUENCE 시퀀스2
start with 1000
INCREMENT BY 10;

SELECT * FROM user_sequences
WHERE sequence_name = '시퀀스1';

--테이블에 입력시 시퀀스 사용방법
DROP TABLE 부서;
CREATE TABLE 부서(
   번호 number primary key,
   이름 VARCHAR2(100)
   );
   
INSERT INTO 부서 VALUES (시퀀스2.NEXTVAL,'영업부');
INSERT INTO 부서 VALUES (시퀀스2.NEXTVAL,'개발부');
INSERT INTO 부서 VALUES (시퀀스2.NEXTVAL,'회계부');
INSERT INTO 부서 VALUES (시퀀스2.NEXTVAL,'경영부');
SELECT * FROM 부서;

--시퀀스의 현재 값 확인
SELECT 시퀀스1.currval FROM dual;
--시퀀스 삭제
DROP SEQUENCE 시퀀스1;

SELECT * FROM 부서;
UPDATE 부서
SET 번호 = 시퀀스1.NEXTVAL;