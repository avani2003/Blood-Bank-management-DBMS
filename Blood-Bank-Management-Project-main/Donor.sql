Drop table Donor;
Create table Donor (
DonorID varchar(9) primary key,
First_Name varchar(50) NOT NULL,
Last_name varchar(50) NOT NULL,
Date_of_Birth date NOT NULL,
Age integer(3),
Blood_Group varchar(3) NOT NULL,
medical_report text,
Contact_Number varchar(25) NOT NULL,
City varchar(100),
email_id varchar(50),
Last_Donation_Date date);

DELIMITER $$
CREATE TRIGGER add_age
BEFORE INSERT ON Donor
FOR EACH ROW
BEGIN
    SET NEW.Age = TIMESTAMPDIFF(YEAR, NEW.date_of_birth, CURDATE());
    
END$$

DELIMITER ;

DELIMITER $$
DELIMITER // 
CREATE TRIGGER update_donation_date
BEFORE INSERT ON donation
FOR EACH ROW 
BEGIN
  UPDATE donor 
  SET Last_Donation_Date = NEW.Donation_date
  WHERE DonorID = NEW.DonorID ;
END//



INSERT INTO Donor (DonorID,First_Name,Last_name,Date_of_Birth,Blood_Group,medical_report,Contact_Number,email_id,City) values
('DAB888650','Ayushi','Bhandari','2004-02-26','B+','No Allergies or chronical diseases','971569505399','f20210012@dubai.bits-pilani.ac.in','Mankool'),
('DAK892230','Avani','Kottalgi','2003-04-2','O+','Pollen Allergy','971557463895','f20210049@dubai.bits-pilani.ac.in','Karama'),
('DMR795202','Mrudula','Rahate','2003-05-12','O-','No Allergies or chronical diseases','971521484893','f20210023@dubai.bits-pilani.ac.in','Mankool'),
('DSD299321','Shreya','Doodipala','2003-11-7','A+','Dust Allergy','971521484893','f20210028@dubai.bits-pilani.ac.in','Karama'),
('DSV111000','Shriya','Varanasi','2003-09-20','B-','Type 2 diabeties','971521592343','f20210047@dubai.bits-pilani.ac.in','Deira'),
('DBG657036','Baishali','Guha','2004-03-1','A+','Allergic to Soy','971541736494','f20210003@dubai.bits-pilani.ac.in','DSO'),
('DRG952180','Riddhi','Goswami','2003-08-2','AB+','Pollen Allergy','971553247466','f20210017@dubai.bits-pilani.ac.in','Karama'),
('DVD789794','Vivek','Desai','1980-06-12','B-','Type 2 diabeties','971553244567','vivekdesai@gmail.com','Al Barsha'),
('DAK092429','Aryan','Kapoor','1995-08-16','B+','Dust Allergy','971553244567','ak1995@gmail.com','Al Barsha'),
('DPS092766','Preeti','Singh','2001-10-25','O+','No Allergies or chronical diseases','971569323477','preetisingh01@hotmail.com','Al Qusais'),
('DDS186543','Diya','Sharma','1958-06-17','AB-','No Allergies or chronical diseases','971509894163','diya.sharma@hotmail.com','JLT'),
('DLR654417','Laranya','Rane','2002-01-30','B+','Drug Allergy','971557894846','laranyarane06@yahoo.com','AlNahda'),
('DAV712457','Ashok','Vyay','1994-02-13','A-','Type 1 Diabeties','971509894163','ashok.v@gemseducation.ac.in','JLT'),
('DSS599036','Sarthak','Shah','2000-02-13','B+','Pet Allergy','971546583210','sarthakshah213@gemseducation.ac.in','Ras AlKhor'),
('DSS857806','Shoiab','Sheikh','1966-04-11','O+','Type 1 Diabeties','971523234659','shoiabss@git.edu.in','Al Qusais'),
('DMB491925','Malvika','Balakrishnan','2003-05-8','AB-','No allergies or chronic diseases','971568492365','malavikarb2003@hotmail.com','Deira'),
('DAK886208','Ayush','Kumar','1984-07-19','A-','No allergies or chronic diseases','971553293664','ayushyadavkumar@yahoo.com','Al Barsha'),
('DSK955266','Salman','Khan','1972-01-4','AB+','No allergies or chronic diseases','971564953617','skf19720104@hotmail.com','Zabeel'),
('DNG117706','Nandini','Gupta','2000-08-31','O+','Pet Allergy','971507638942','nanugupta@gmail.com','Deira'),
('DPY722732','Prem','Yadav','1968-09-1','B-','Type 1 Diabeties','971526169834','pyadav@yahoo.com','Zabeel')
;

select * from Donor;
DELIMITER //


/*--------FUNCTION TO INSERT A NEW ENTRY-------*/
CREATE FUNCTION insert_new_donor(first_name varchar(50), last_name varchar(50), Date_of_Birth date,Blood_Group varchar(3), medical_report text,Contact_Number varchar(25),
City varchar(100), email_id varchar(50))
RETURNS VARCHAR(200)
no sql
BEGIN
 DECLARE first_name_char CHAR(1);
  DECLARE last_name_char CHAR(1);
  DECLARE unique_id VARCHAR(10);
  
  -- Extract first letter of first name
  SET first_name_char = upper(SUBSTRING(first_name, 1, 1));
  -- Extract first letter of last name
  SET last_name_char = upper(SUBSTRING(last_name, 1, 1));
  -- Generate random 6-digit number
  SET @random_number = FLOOR(RAND() * 1000000);
  -- Concatenate 'D', first name initial, last name initial, and random number
  SET unique_id = CONCAT('D', first_name_char, last_name_char, LPAD(@random_number, 6, '0'));
  -- Insert user details into 'users' table
  INSERT INTO Donor (DonorID,First_Name,Last_name,Date_of_Birth,Blood_Group,medical_report,Contact_Number,email_id,City)
  VALUES (unique_id, first_name , last_name , Date_of_Birth , Blood_Group , medical_report ,Contact_Number,City , email_id);
  
  RETURN CONCAT('Entry Successfully done.\n','Name:',first_name,' ',last_name,'\n Donor ID:', unique_id);
END //

DELIMITER ;

select insert_new_donor('Namita','Achan','2004-02-02','B+','High BP','971542369874','Zabeel','namitaachan@gmail.com');

select * from donor;
