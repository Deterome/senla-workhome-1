create table members(memid serial primary key, surname character varying(200), firstname character varying(200), address character varying(300), zipcode integer, telephone character varying(20), recommendedby integer, joindate timestamp, foreign key(recommendedby) references members(memid));

insert into members (surname, firstname, address, zipcode, telephone, joindate) values ('Smith', 'Darren', '8 Bloomsbury Close, Boston', 4321, '555-555-5555', '2012-07-02 10:25:05');
insert into members (surname, firstname, address, zipcode, telephone, recommendedby, joindate) values ('Rumney', 'Henrietta', '3 Bloomsbury Close, Boston', 4321, '555-555-5555', 1, '2012-09-17 13:25:05');
insert into members (surname, firstname, address, zipcode, telephone, recommendedby, joindate) values ('Wick', 'John', 'Paris', 777, '8-800-555-35-35', 1, '2014-09-19 00:00:01');
insert into members (surname, firstname, address, zipcode, telephone, recommendedby, joindate) values ('Jones', 'Douglas', '3 Bloomsbury Close, Boston', 4321, '555-555-5555', 3, '2012-07-02 12:25:05');

select * from members;

select distinct mems_1.firstname, mems_1.surname 
	from 
		members mems_1
		inner join members mems_2
			on mems_2.recommendedby=mems_1.memid 
	order by surname, firstname;

drop table members;