create table camp (CAMPID varchar(8) primary key, name varchar(128),start_date date, end_date date, city varchar(128),organizer varchar(128),no_of_donors integer(6));
insert into camp values
('CAMP0001','Red Drops: UAE Blood Donation Campaign','2023-03-12','2023-03-16','AlBarsha','Emirates Red Crescent',3562),
('CAMP0002','UAE Blood Heroes: Blood Donation Drive','2023-04-01','2023-04-01','Karama','Al Noor',521),
('CAMP0003','Ramadan: Give To Live','2023-03-29','2023-04-28','Deira','Al Noor Charitable Trust',24023),
('CAMP0004','United Blood Bank: UAE Blood Donation Camp','2023-02-20','2023-02-24','AlQusais','Dar al Ber society',5622),
('CAMP0005','Blood United: UAE Blood Donation Drive','2023-04-24','2023-05-24','Mankool','Dar al Ber society',50242),
('CAMP0006','Gift of Life: UAE Blood Donation Campaign','2023-04-20','2023-04-21','JLT','Zabeel Ladies Club',1002);

select * from camp;

