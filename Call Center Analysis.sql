create database Call_Center;
use Call_Center;
create table Callcenter_Deatils(
id varchar(50) primary key not null,
customer_name varchar(50),
sentiment varchar (100),
csat_score text,
call_timestamp text,
reason varchar (200),
city varchar (50),
state varchar(50),
channel varchar (50),
response_time varchar (30),
call_duration_in_minutes text,
call_center varchar(200)
);
-- sql 

-- Total No. of Callsid

select * from  Callcenter_Deatils;
 select count(distinct customer_name) as 'Total calls'
 from callcenter_deatils;
 
-- total calls by sentimen

select count(sentiment) as 'total calls by sentiment'
from callcenter_deatils
group by sentiment;

select count(id), sentiment as 'total calls by sentiment'
from callcenter_deatils
group by sentiment;

-- Total calls by Response Time  
select count(id), response_time as 'Total calls by Response Time'
from  callcenter_deatils
group by response_time;

select avg(csat_score)
from callcenter_deatils;

select * from  Callcenter_Deatils;


select min(csat_score) from Callcenter_Deatils;
select max(csat_score) from Callcenter_Deatils;
select sum(csat_score) from Callcenter_Deatils;

select customer_name, state
from Callcenter_Deatils;

-- return all customer from the state that contain A
select customer_name, state
from Callcenter_Deatils
where customer_name like 'A%''B%';

select customer_name, state
from Callcenter_Deatils
where customer_name like 'A%';


-- return all customer from the City that contain L

select customer_name, city
from Callcenter_Deatils
where customer_name like 'L%';

-- return all customers that starts with 'a' or starts with 'b' from city.
select customer_name, city
from Callcenter_Deatils
where customer_name like 'A%' or customer_name like 'B%';



-- return all customers that starts with 'a' aand are at least 3 characters in length
select customer_name,city
from Callcenter_Deatils
where customer_name like"a__%";

-- return all customer from indiana, NY and Texas 

select customer_name, state
from Callcenter_Deatils
where state in ('Texas', 'Indiana', 'New York');



-- return all customers from 'Los Angeles/CA' cal1_center

select customer_name, call_center
from Callcenter_Deatils
where call_center like "Los Angeles/CA";

--  total calls by reason

select count(id), reason as 'total calls by reason'
from Callcenter_Deatils
group by reason;

-- total calls by state
select count(id), state as 'total calls by state'
from Callcenter_Deatils
group by state;


-- total call by channel
select count(id), channel as 'total call by channel'
from Callcenter_Deatils
group by channel;



