use dbms_project;

CREATE TABLE Inventory (
blood_group VARCHAR(3) PRIMARY KEY,
quantity int );

INSERT INTO Inventory VALUES ('O-', 150), ('O+', 130), ('A+', 100), ('A-', 113), ('B+', 125), ('B-', 142), ('AB+', 109), ('AB-', 98);