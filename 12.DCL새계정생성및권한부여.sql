--�� ������ �����Ϸ��� �Ϲ� �������� �۾� X , ������ �������� ����
CREATE USER john1 IDENTIFIED BY 1234;  --��й�ȣ�� 1234�� �� ���� ����
--���ӱ��� �� �����ѵ��� ��Ƽ� �Ѳ����� connect,resource �� �ο�
GRANT CONNECT , RESOURCE TO john1;
--���� ����
REVOKE RESOURCE FROM john1;
--���� ���� (������ ���õ� ��� ������ ����)
DROP USER john1 CASCADE ;