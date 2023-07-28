-- 현재 날짜를 표시
select sysdate from dual;
--HR 계정을 언락하고 비밀번호 설정
alter user HR account unlock identified by 3598;
--scott.sql을 실행 (연습용 scott계정을 사용하기 위한
@C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\scott.sql
--scott계정의 비번 설정
alter user scott identified by 3598;
