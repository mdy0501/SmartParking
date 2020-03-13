 create table project_3(
    name nvarchar2(38),
    id number(38),
    birth nvarchar2(38),
    address nvarchar2(38),
    age nvarchar2(38)
    );
    
    DROP TABLE PROJECT_3;
   
    insert into project_3 values ('���ȣ', 1120, '19901120', '����', 28);
    insert into project_3 values ('��ȣ��', 1116, '19921116', '�λ�', 26);
    insert into project_3 values ('�氡��', 0601, '19930601', '�뱸', 25);
    insert into project_3 values ('�ڹ�ȣ', 1213, '19901213', '����', 28);
    insert into project_3 values ('��â��', 0730, '19880730', '����', '�̸�');

    select * from project_3;
    select to_char(a.id, 'RN') as �θ��ڻ���, age as ����, to_date(a.birth, 'yyyy-mm-dd') as ����_��¥��, to_number(a.birth) as ����_����
    from PROJECT_3 a;
    
    select ROUND(EXP(4.709530201)), ROUND(LN(8.689987011*10e+92)), LOG(10, 10e+34), MOD(1081, 46), REMAINDER(1081, 46), ABS(-3), CEIL(0.898), FLOOR(16.125), ROUND(1.304,0), TRUNC(33,-1), POWER(1,0), SQRT(961)
from dual;--ddddddddddddddddddddddddd

-- �������ڿ� �ð�
select sysdate, systimestamp
  from dual;

-- �� ��¥ ������ ���� ��
select months_between(sysdate, '20121225') mon1
  from dual;

-- interger ��ŭ�� ���� ���� ��¥
select add_months(sysdate, 1)
  from dual;

-- �ش� �� ������ ����
select last_day('20170201')
  from dual;

-- ROUND: �� ���� �ݿø�
select sysdate, ROUND(TO_DATE('20170228'), 'month')
  from dual;

-- �� ��¥ ������ ���� ��
select months_between('20170301', SYSDATE) mon1
  from dual;

-- ���� ������ �ش� ���� ��¥
select next_day(sysdate, '�ݿ���')
  from dual;

create table client_info (
grade nvarchar2(20),
k_last nvarchar2(20),
k_first nvarchar2(20),
e_last nvarchar2(20),
e_first nvarchar2(20),
bday nvarchar2(20),
tel1 nvarchar2(20),
tel2 nvarchar2(20),
tel3 nvarchar2(20),
phone1 nvarchar2(20),
phone2 nvarchar2(20),
phone3 nvarchar2(20),
gender char(1),
addr1 nvarchar2(40),
addr2 nvarchar2(40),
moto nvarchar2(100));




insert into client_info values
('A','ȫ','�浿','hong ','gildong', '851209', 
'02', '234', '1234', '010', '9137', '1871', 'M',
'��ȭ�� ��Ͽ� 2��', '���￪ 7���ⱸ ��', '������ ���� ����');

insert into client_info values
('B','��','��Ź','ma ','dongtak', '781021', 
'031', '875', '1135', '010', '9377', '9071', 'F',
'��ȭ�� 3�� ���', '�λ걤���� �ؿ�뱸 �𷡻���', 'û�Ҹ� ������');

insert into client_info values
('A','��','��¯','ihn ','sazzang', '880429', 
'031', '724', '9080', '010', '9315', '9041', 'F',
'�������б� �����', '�����Ա��� 5���ⱸ ��ȣ��', '���ϰ� ������');

insert into client_info values
('A','��','����','park ','gu meh ', '900326', 
'063', '724', '9903', '010', '1583', '4151', 'M',
'�ѱ����б� ü����', '�濵�� �κ�', ' ������ ����� ����');

insert into client_info values
('A','��','��ġ','jeon ','wo ochi ', '701126', 
'033', '798', '9903', '010', '5903', '4618', 'M',
'�޵� ������ ����', '���� Ÿ�ӽ�����', ' Just do it');
select * from client_info;

select grade as ������, replace(grade,'A','VIP') as ������ from client_info;
select concat(k_last,k_first) as �̸� from client_info;
select gender as ������, lower(gender) as ������ from client_info;
SELECT * FROM client_info WHERE LENGTH(TEL1)=2;
select moto as ������, substr(moto,1,5) as ������ from client_info;


