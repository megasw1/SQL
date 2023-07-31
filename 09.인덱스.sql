SELECT 
    table_name ���̺��,
    INDEX_name �ε����̸�,
    COLUMN_name �÷��̸�
FROM ALL_IND_COLUMNS
WHERE TABLE_NAME = 'MEMBERS'; --���̺� ���� �빮��
-- �⺻Ű ����ũ ���� �ڵ����� �ε����� ������ ���� �⺻Ű�� ������� �ܷ�Ű�� �ε����� ����

CREATE TABLE members(
    member_id NUMBER,
    first_name VARCHAR2(100) NOT NULL,
    last_name VARCHAR2(100) NOT NULL,
    gender CHAR(1) NOT NULL,
    dob DATE NOT NULL,
    email VARCHAR2(255) NOT NULL,
    PRIMARY KEY(member_id) --���������� �Ʒ��� �࿡ ���� ���� �� ��ȣ�ȿ� ���� �̸� �Է�
);

EXPLAIN PLAN FOR
SELECT * FROM members
WHERE last_name=  'Harse';

--���� Ȯ��
SELECT
    PLAN_TABLE_OUTPUT
FROM
    TABLE(DBMS_XPLAN.DISPLAY());
    
--�ε��� �����
CREATE INDEX members_last_name_i 
ON members(last_name);

--�ε��� ����
DROP INDEX members_last_name_i; --�ε����� ���̺� ������ �ڵ����� �ȴ�