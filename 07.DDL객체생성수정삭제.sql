--���̺����
CREATE TABLE comp (
    ������ CHAR(10),
    ������ VARCHAR(10)
);
DESC comp;
INSERT INTO comp VALUES('1','�ϳ�');
INSERT INTO comp VALUES('2','��');
INSERT INTO comp VALUES('3','��');

SELECT * FROM comp;
DROP TABLE comp;
-----���ڿ� ��¥ ���̺�
CREATE TABLE ex_date(
    id NUMBER(2),
    start_date DATE DEFAULT SYSDATE
);
DESC ex_date;
INSERT INTO ex_date(id) VALUES(10);
INSERT INTO ex_date(id) VALUES(11);
INSERT INTO ex_date(id) VALUES(12);

SELECT * FROM ex_date;
DROP TABLE ex_date;
-------------����1��----------
CREATE TABLE sample_product(
    product_id NUMBER(2),
    product_name VARCHAR2(20),
    menu_date DATE 
);

DESC sample_product;
INSERT INTO sample_product VALUES(10,'�ϳ�',SYSDATE);

SELECT * FROM sample_product;
DROP TABLE sample_product;
DESCRIBE sample_product;

-------���̺� ��������--------
CREATE TABLE emp1(
    iD Number(3) PRIMARY KEY,
    name VARCHAR2(20)
);
DESC emp1;
INSERT INTO emp1 VALUES(1,'�浿');
INSERT INTO emp1 VALUES(1,'�ؼ�');  --�⺻Ű�� �ߺ��ȵ�


------����1��
CREATE TABLE members(
    member_id Number(2) PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    gender VARCHAR(5) CHECK(gender IN('Man','Woman')),
    birt_day DATE DEFAULT SYSDATE,
    email VARCHAR2(200) UNIQUE NOT NULL
);
