drop sequence seq_1;

create SEQUENCE seq_1
increment by 1
start with 0
minvalue 0
maxvalue 100
nocycle
nocache;

insert into major values(seq_1.currval,'');
insert into major values(seq_1.nextval,'��������');
insert into major values(seq_1.nextval,'��ǻ�Ͱ���');
insert into major values(seq_1.nextval,'������');
insert into major values(seq_1.nextval,'�������');
insert into major values(seq_1.nextval,'������������');
insert into major values(seq_1.nextval,'��������');
insert into major values(seq_1.nextval,'�߾��߹���');
insert into major values(seq_1.nextval,'����');
insert into major values(seq_1.nextval,'������');
insert into major values(seq_1.nextval,'���������');
insert into major values(seq_1.nextval,'�������');
insert into major values(seq_1.nextval,'�濵������');

delete  from major;

create table major(
  code number primary key,
  name nvarchar2(20) NOT null);  
create table city(
  code number primary key,
  name nvarchar2(20) NOT NULL);
create table student(
  no number primary key,
  name nvarchar2(20) NOT NULL,
  gender char(1) NOT NULL,
  constraints check1 check(gender in('m','f')),
  major number NOT NULL,
  constraints major1 foreign key(major)
  references major(code),
  city number NOT NULL,
  constraints city1 foreign key(city)
  references city(code),
  created_at date default sysdate);
  
  
  
  
  create sequence seq_2 start with 0
                        increment by 1
                        minvalue 0
                        maxvalue 100
                        nocycle
                        nocache;
                        
  delete from city;
                        
  select seq_2.currval from dual;
  
  drop sequence seq_2;
  insert into city values(seq_2.nextval,'����');
  insert into city values(seq_2.nextval,'��õ');
  insert into city values(seq_2.nextval,'â��');
  insert into city values(seq_2.nextval,'�λ�');
  insert into city values(seq_2.nextval,'��õ');
  insert into city values(seq_2.nextval,'����');
  insert into city values(seq_2.nextval,'�뱸');
  insert into city values(seq_2.nextval,'����');
  insert into city values(seq_2.nextval,'����');
  insert into city values(seq_2.nextval,'����');
  
  select * from city;
  
create sequence seq_3
increment by 1
start with 0
minvalue 0
maxvalue 100
nocycle
nocache;

delete from student;
drop sequence seq_3;

insert into student(no,name,gender,major,city) values(seq_3.currval,'','m',0,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'������','m',9,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'������','f',1,5);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'���ȣ','m',1,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�赿��','m',5,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�輭��','m',1,1);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'��ƿ�','f',5,7);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'��켺','m',7,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'������','f',4,9);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�����','f',1,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�ε���','m',1,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�ڹ�ȣ','m',3,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'������','f',0,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'���߱�','m',8,8);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'������','m',10,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'������','m',1,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'��âȯ','m',1,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'���ʷ�','f',1,5);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'������','m',3,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�氡��','f',2,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�缺��','m',5,4);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�����','m',4,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�����','m',1,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�̸�','m',5,4);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�̸��','m',2,9);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�̼���','f',6,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'��â��','m',4,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'��ȣ��','m',11,3);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�ӿ���','f',1,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'������','m',1,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'����ȯ','m',1,0);
insert into student(no,name,gender,major,city) values(seq_3.nextval,'�ֹ���','f',4,1);