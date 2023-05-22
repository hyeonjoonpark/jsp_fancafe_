create table fans_info (
student_number varchar2(10) primary key,
student_name varchar2(10),
email varchar2(30),
fans_grade varchar(20),
income_date varchar2(15)
);

insert into fans_info values('2407', '������', '2022058@bssm.hs.kr', 'M', '2022-03-02');

insert into fans_info values('2405', '������', '2022037@bssm.hs.kr', 'F', '2023-05-05');

select * from fans_schedule;
delete * from fans_schedule where schedule_id = 2;

drop table fans_schedule;

create table fans_schedule (
schedule_id number,
title varchar2(500),
detail varchar2(500),
place varchar2(500),
time varchar2(100),
fans_count number(4),
media_id varchar2(100),
primary key(schedule_id)
);

insert into fans_schedule values(1, 'BSSM �ҹ���', '��1ȸ �ֺ��� ������ �ҹ���', 'BSSM �ΰ����� ���߽�', '2023-05-22 13:30', 0, 'm001');

create table media_info (
media_id varchar2(100) primary key,
media_name varchar2(100),
media_place varchar2(100)
);

insert into media_info values('m001', 'MBC', '���� ���ǵ�');