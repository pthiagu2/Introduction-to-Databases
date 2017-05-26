INSERT INTO pthiagu2_Hospital.Department
(Department_ID,Department_Name,Department_Type,Location)
VALUES 
(6787968,'Casualty','Intensive','479-9930 Netus Rd.'),
(4567890,'Admissions','Non-Intensive','P.O. Box 734, 4830 Quisque Rd.'),
(6778558,'Anesthetics','Intensive','Ap #379-4967 Lacinia Rd.'),
(4657687,'Breast Screening','Non-Intensive','P.O. Box 798, 2216 Donec Rd.'),
(3745869,'Cardiology','Non-Intensive','5100 Commodo Road'),
(6879584,'Critical Care','Intensive','213-8070 Quis Rd.'),
(7849375,'Elderly services','Non-Intensive','Ap #534-1570 Nisl Avenue'),
(6787570,'Gastroenterology','Non-Intensive','479-9930 Netus Rd.'),
(4565890,'General Surgery','Non-Intensive','8639 Dui Street'),
(6745587,'Gynecology','Non-Intensive','Ap #253-1304 Tincidunt Avenue'),
(4652687,'Haematology','Non-Intensive','P.O. Box 324, 8166 Arcu Avenue'),
(3545869,'Infection Control','Intensive','206-8101 Aliquet. Street'),
(6879984,'Information Management','Non-Intensive','P.O. Box 708, 6667 Est. Ave'),
(7449375,'Maternity','Intensive','682-1108 Curabitur Road'),
(4569890,'Microbiology','Non-Intensive','Ap #266-7720 Vel Road'),
(6178558,'Occupational Therapy','Non-Intensive','P.O. Box 893, 2552 Non St.'),
(4659687,'Pain Management','Non-Intensive','327-9195 Non, St.'),
(4067890,'Patient Services','Non-Intensive','2892 Mauris, St.'),
(6778528,'Pharmacy','Non-Intensive','584-8437 Imperdiet, Rd.'),
(4657647,'Radiology','Non-Intensive','5689 Justo. St.');

select Department_ID from pthiagu2_Hospital.Department;

DROP table pthiagu2_Hospital.Human_Resource;

INSERT INTO pthiagu2_Hospital.Human_Resource
(ResourceID,DepartmentID,Resource_FirstName,Resource_LastName,Age,Employee_Type,ContactNumber,Specialization)
VALUES 
(283567,6787968,'Leila','Foreman',39,'Medical',5208124977,'Doctor'),
(345378,4567890,'Merritt','Hutchinson','52','Support',1874837740,'Receptionist'),
(245789,6778558,'Ralph','Good',31,'Medical',6808734825,'StudentDoctor'),
(236568,4657687,'Tamekah','Stewart',64,'Medical',4521910132,'Interns'),
(245667,6879584,'Colton','Mercer',67,'Medical',6384102117,'Nurse'),
(453656,7849375,'Andrew','Maldonado',31,'Medical',7217732486,'Doctor'),
(342568,6787570,'Kerry','Baird',65,'Support',8451440824,'ClinicalAssistants'),
(345269,4565890,'Kirestin','Branch',36,'Medical',1013048785,'Doctor'),
(345789,6745587,'Blair','Leach',29,'Medical',2303123621,'Nurse'),
(256768,4652687,'Zane','Franks',27,'Medical',4287408102,'Doctor'),
(346759,3545869,'Vera','Coleman',40,'Medical',9406986372,'Interns'),
(342678,6879984,'Latifah','Barber',49,'Medical',3183918202,'Doctor'),
(324568,7449375,'Nevada','Dillard',32,'Support',7702944214,'IT Analyst'),
(212459,4569890,'Timon','Cleveland',57,'Medical',8356982846,'Doctor'),
(546739,6178558,'Delilah','Hines',25,'Medical',2331069144,'Nurse'),
(213568,4659687,'Rylee','Snider',61,'Medical',1368238907,'Interns'),
(324543,4067890,'Declan','Harding',20,'Medical',5496536917,'Doctor'),
(245367,6778528,'Dalton','Myers',42,'Support',9198414228,'Admin'),
(246788,4657647,'Sophia','Graham',39,'Support',5521057874,'Clerks'),
(674367,3745869,'Kermit','Lowery',20,'Medical',1151218455,'Nurse');

INSERT INTO pthiagu2_Hospital.Patient
(ResourceID,Patient_ID,First_Name,Last_Name,Age,Patient_Address,Gender)
VALUES
(283567,6767968,'Morgan','Freeman',32,'Ap #202-4012 Et, St.','Male'),
(345378,4567820,'Mary','Hutchinson',36,'Ap #764-6669 Ligula. Ave','Female'),
(245789,5778558,'Ralph','Gold',31,'P.O. Box 753, 1235 Orci. Road','Female'),
(236568,4687687,'Alex','Stewart',25,'Ap #773-311 Dui, St.','Male'),
(245667,6879584,'Rahu','Mahajan',56,'Ap #260-5498 Nec, Rd.','Male'),
(453656,7849375,'Andrew','Symonds',39,'Ap #366-1930 Aliquam Avenue','Male'),
(342568,6187570,'Terry','Bald',47,'462-1201 Varius Street','Male'),
(345269,4565090,'Christian','Bale',69,'Ap #158-8068 Tortor, Ave','Male'),
(345789,6745987,'Amitabh','Bachan',37,'363-6569 Non, Road','Male'),
(256768,4683687,'Tom','Franks',87,'Ap #999-1787 Integer St.','Male'),
(346759,3547869,'David','Coleman',67,'P.O. Box 729, 8856 Natoque Ave','Male'),
(342678,2879984,'Roger','Federer',42,'453-118 Lacus. Road','Male'),
(324568,5449375,'Rafeal','Nadal',92,'846-5094 Sed Ave','Male'),
(212459,4669890,'Thomas','Berdych',54,'Ap #366-1930 Aliquam Avenue','Male'),
(546739,6178558,'Sidharth','Abhimanyu',30,'Ap #782-257 Adipiscing. Ave','Male'),
(213568,4619687,'Thomas','Snider',78,'846-5094 Sed Ave','Male'),
(324543,6067890,'Robert','Harding',62,'Ap #999-1787 Integer St.','Male'),
(245367,7778528,'Priyanka','Myers',58,'P.O. Box 291, 1821 Convallis Rd.','Female'),
(246788,8657647,'Abhraham','Graham',21,'218-2430 Orci. Av.','Male'),
(674367,9745869,'Frank','Hardy',50,'3478 Condimentum. Street','Male');

select * from pthiagu2_Hospital.Patient;

INSERT INTO pthiagu2_Hospital.Room
(PatientID,RoomID,Room_Type,Duration,Location)
VALUES
(6767968,10,'Standard Ward',1,'1st Floor'),
(4567820,22,'Semi-Private',3,'2nd Floor'),
(5778558,40,'Private',3,'3rd Floor'),
(4687687,16,'Standard Ward',2,'1st Floor'),
(6879584,54,'Private',5,'3rd Floor'),
(7849375,25,'Semi-Private',3,'2nd Floor'),
(6187570,13,'Standard Ward',4,'1st Floor'),
(4565090,35,'Private',6,'3rd Floor'),
(6745987,45,'Private',3,'3rd Floor'),
(4683687,75,'Private',11,'3rd Floor'),
(3547869,90,'Private',10,'3rd Floor'),
(2879984,12,'Private',4,'3rd Floor'),
(5449375,34,'Semi-Private',2,'2nd Floor'),
(4669890,14,'Standard Ward',14,'1st Floor'),
(6178558,71,'Semi-Private',3,'2nd Floor'),
(4619687,17,'Standard Ward',2,'1st Floor'),
(6067890,21,'Semi-Private',2,'2nd Floor'),
(7778528,39,'Semi-Private',11,'2nd Floor'),
(8657647,72,'Semi-Private',2,'2nd Floor'),
(9745869,27,'Semi-Private',16,'2nd Floor');

delete from pthiagu2_Hospital.Room;

select * from pthiagu2_Hospital.Room;

INSERT INTO pthiagu2_Hospital.Record
(CatalogID,Record_Description,Record_Type,Application)
VALUES
(21,'Surgical history','Medical Record',20141103),
(45,'Physical examination','Medical Encounters',20101001),
(57,'Orders','Order and Prescriptions',20040319),
(46,'Chief Complaint','Medical Encounters',20000119),
(68,'Surgical history','Medical Record',19920418),
(78,'Assessment and plan','Medical Encounters',19870412),
(61,'Notes','Progress Notes',19930211),
(49,'Obstetric history','Medical Record',19940606),
(41,'Chief Complaint','Medical Encounters',19990210),
(75,'Habits','Medical Encounters',19600330),
(90,'Notes','Progress Notes',19750726),
(12,'Growth chart and developmental history','Medical Record',19820418),
(34,'Assessment and plan','Medical Encounters',19900818),
(14,'Chief Complaint','Medical Encounters',19880418),
(71,'Immunization history','Medical History',19760723),
(17,'Growth chart and developmental history','Medical Record',19940330),
(28,'Orders','Order and Prescriptions',19990418),
(39,'Test results','Test results',19930512),
(72,'Assessment and plan','Medical Encounters',19920422),
(27,'Surgical history','Medical Record',19910408);

UPDATE pthiagu2_Hospital.Record SET application = 19924422 where CatalogID = 72;

DROP TRIGGER IF EXISTS ROOM_UPDATE;

DELIMITER //

CREATE TRIGGER ROOM_UPDATE
	BEFORE INSERT ON pthiagu2_Hospital.Room
	FOR EACH ROW 
BEGIN 
	IF NEW.Duration > 10 THEN
			   SET NEW.Duration = cast(New.Duration as char);
               SET NEW.Duration = 'Long';
	END IF;
END //

DELIMITER ; 


INSERT INTO pthiagu2_Hospital.Record_has_Human_Resource
(Human_Resource_ResourceID,Record_CatalogID)
VALUES 
(283567,21),
(345378,45),
(245789,57),
(236568,46),
(245667,68),
(453656,78),
(342568,61),
(345269,49),
(345789,41),
(256768,75),
(346759,90),
(342678,12),
(324568,34),
(212459,14),
(546739,71),
(213568,17),
(324543,28),
(245367,39),
(246788,72),
(674367,27);

select * from pthiagu2_Hospital.Record_has_Human_Resource;