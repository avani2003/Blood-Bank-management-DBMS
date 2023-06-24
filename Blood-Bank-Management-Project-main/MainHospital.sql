use dbms_project;


create table MainHospital(id int primary key,
                          name varchar(100),
                          number int,
                          address varchar(100));

INSERT INTO MainHospital (id, name, number, address) VALUES (1, "St. Mary's Hospital", 0551346781, "Bur Dubai");
INSERT INTO MainHospital (id, name, number, address) VALUES (2, 'General Hospital', 0551164876, "Bur Dubai");
INSERT INTO MainHospital (id, name, number, address) VALUES (3, 'Community Hospital', 0588735155, 'Karama');
INSERT INTO MainHospital (id, name, number, address) VALUES (4, 'Memorial Hospital', 0567830022, 'Karama');
INSERT INTO MainHospital (id, name, number, address) VALUES (5, 'University Hospital', 0526220205, 'Karama');
INSERT INTO MainHospital (id, name, number, address) VALUES (6,"Rashid Hospital", 0509008383, 'Jadaf');
INSERT INTO MainHospital (id, name, number, address) VALUES (7, 'Prime Clinic', 0558923034, 'Bur Dubai');
INSERT INTO MainHospital (id, name, number, address) VALUES (8, 'Zulekha Hospital', 0567210101, 'Barsha');
INSERT INTO MainHospital (id, name, number, address) VALUES (9, 'Health Hub Clinic', 0506540202, 'Silicon Oasis');
INSERT INTO MainHospital (id, name, number, address) VALUES (10, 'Aster', 0509274820, "Mankhool");
INSERT INTO MainHospital (id, name, number, address) VALUES (11, 'Saudi-German Hospital', 0586549000, 'Barsha');
INSERT INTO MainHospital (id, name, number, address) VALUES (12, 'Medcare', 0567840202, 'Al Safa');
INSERT INTO MainHospital (id, name, number, address) VALUES (13, 'Geriatric Hospital', 0553215656, 'Karama');
INSERT INTO MainHospital (id, name, number, address) VALUES (14, 'Maternity Clinic', 0509587463, 'Nahda');
INSERT INTO MainHospital (id, name, number, address) VALUES (15, 'Neurology Health Clinic', 0567828282, 'Silicon Oasis');
INSERT INTO MainHospital (id, name, number, address) VALUES (16, 'Orthopedic Hospital', 0546372800, 'Jumeriah');
INSERT INTO MainHospital (id, name, number, address) VALUES (17, 'Pediatric Clinic', 0544673218, 'Marina');
INSERT INTO MainHospital (id, name, number, address) VALUES (18, 'Pulmonary Hospital', 0559876345, 'Barsha');
INSERT INTO MainHospital (id, name, number, address) VALUES (19, 'Eye Hospital', 0569087654, 'Quasis');
INSERT INTO MainHospital (id, name, number, address) VALUES (20, 'Women and Child Clinic', 0509876543, 'Quasis');

alter table
