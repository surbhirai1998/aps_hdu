create table woman_user(
	id number primary key,
	name varchar2(30) not null,
	email varchar2(30) not null,
	password varchar2(16) not null,
	dob varchar2(15),
	state varchar2(20), 
	city varchar2(20),
	mobileNo varchar2(10)
);
insert into woman_user(
	id,name,email,password,dob,state,city,mobileNo) 
	values((select nvl(max(id)+1,100) from woman_user),'Nikita','nikki@gmail.com','123456','1991-12-30','Rajasthan','Jaipur','9999999999');
	
create table doctor_user(
	id number primary key,
	name varchar2(30) not null,
	email varchar2(30) not null,
	password varchar2(16) not null,
	city varchar2(20),
	mobileNo varchar2(10),
	experience number(3),
	qualification varchar2(100)
);	
insert into doctor_user(
id,name,email,password,city,mobileNo,experience,qualification
) values((select nvl(max(id)+1,100) from doctor_user),'Dr.Sharan Gupta',
'gupta@gmail.com','123456','Jaipur','7777777777',6,'MBBS');


create table report(
	id number primary key,
	name varchar2(30) not null,
	email varchar2(30) not null,
	dob varchar2(15),
	gender varchar2(15),
	d_name varchar2(30) not null,
	d_email varchar2(30) not null,
	suggestions varchar2(100),
	test varchar2(100)
);

create table meds(
	id number primary key,
	r_id number,
	med_description varchar2(50),
	constraint cfk foreign key(r_id) references report(id)
);

insert into report
(id,name,email,dob,gender,d_name,d_email,suggestions,test) 
values
((select nvl(max(id)+1,1000) from report),'Nikita','nikki@gmail.com','1991-12-30','Female','Dr.Sharan Gupta'
,'gupta@gmail.com','drink more water',null);


insert into meds(id,r_id,med_description)values((select nvl(max(id)+1,1000) from meds),
(select max(id) from report),'med1 to be taken once in morning');

	