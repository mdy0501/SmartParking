create table couple(name nvarchar2(60), status nvarchar2(60));

insert into couple(name) select name from student;

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
from couple;

-- null�Լ� lnnvl 3������
select count(*) as �ַ��ο�
from couple
where lnnvl(status = 'Ŀ��');