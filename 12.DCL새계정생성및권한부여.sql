--새 계정을 생성하려면 일반 계정에서 작업 X , 관리자 계정에서 가능
CREATE USER john1 IDENTIFIED BY 1234;  --비밀번호가 1234인 존 계정 생성
--접속권합 및 사용권한들을 모아서 한꺼번에 connect,resource 롤 부여
GRANT CONNECT , RESOURCE TO john1;
--권한 삭제
REVOKE RESOURCE FROM john1;
--계정 삭제 (계정과 관련된 모든 데이터 삭제)
DROP USER john1 CASCADE ;