CREATE SEQUENCE ������1; --�ɼǾ���
CREATE SEQUENCE ������2
start with 1000
INCREMENT BY 10;

SELECT * FROM user_sequences
WHERE sequence_name = '������1';

--���̺� �Է½� ������ �����
DROP TABLE �μ�;
CREATE TABLE �μ�(
   ��ȣ number primary key,
   �̸� VARCHAR2(100)
   );
   
INSERT INTO �μ� VALUES (������2.NEXTVAL,'������');
INSERT INTO �μ� VALUES (������2.NEXTVAL,'���ߺ�');
INSERT INTO �μ� VALUES (������2.NEXTVAL,'ȸ���');
INSERT INTO �μ� VALUES (������2.NEXTVAL,'�濵��');
SELECT * FROM �μ�;

--�������� ���� �� Ȯ��
SELECT ������1.currval FROM dual;
--������ ����
DROP SEQUENCE ������1;

SELECT * FROM �μ�;
UPDATE �μ�
SET ��ȣ = ������1.NEXTVAL;