---4�� ��Ÿ�Լ� ����
 
create table distance(
  ��õ number,
  â�� number,
  �λ� number,
  ��õ number,
  ���� number,
  �뱸 number,
  ���� number,
  ���� number,
  ���� number
);
 
insert into distance values(35,364,392,43,44,285,126,243,26);
 
select * from distance;
 
select GREATEST(��õ,����,����,����,�뱸,����,â��,��õ,�λ�) as �յ�,
decode(GREATEST(��õ,����,����,����,�뱸,����,â��,��õ,�λ�),392,'�λ�',
                                                        364,'â��',
                                                        35,'��õ',
                                                        43,'��õ',
                                                        44,'����',
                                                        285,'�뱸',
                                                        126,'����',
                                                        243,'����',
                                                        26,'����',
                                                        '����') ���� from distance;
select Least(��õ,����,����,����,�뱸,����,â��,��õ,�λ�)as ����,
decode(least(��õ,����,����,����,�뱸,����,â��,��õ,�λ�),392,'�λ�',
                                                        364,'â��',
                                                        35,'��õ',
                                                        43,'��õ',
                                                        44,'����',
                                                        285,'�뱸',
                                                        126,'����',
                                                        243,'����',
                                                        26,'����',
                                                        '����') ���� from distance;
                                                        
                                                        

 create table couple(name nvarchar2(60), status nvarchar2(60));

insert into couple(name) select name from STUTENTS;

delete from couple;

select *
from couple
where status is not null;

update couple set status='Ŀ��' where name='������';
update couple set status='Ŀ��' where name='���ȣ';
update couple set status='Ŀ��' where name='�輭��';
update couple set status='Ŀ��' where name='��켺';
update couple set status='Ŀ��' where name='������';
update couple set status='Ŀ��' where name='�氡��';
update couple set status='Ŀ��' where name='�缺��';
update couple set status='Ŀ��' where name='�ӿ���';
update couple set status='Ŀ��' where name='����ȯ';
update couple set status='Ŀ��' where name='�ֹ���';

-- null�Լ� nvl 1������
select nvl(name, status) as �ַ��λ��
from couple
where status is null;

-- null�Լ� lnnvl 3������
select count(*) as �ַ��ο�
from couple
where lnnvl(status = 'Ŀ��');