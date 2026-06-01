use hospital_db;
insert into departments values
(1,'Cardiology'),
(2,'Neurology'),
(3,'Orthopedics'),
(4,'Dermatology'),
(5,'General Medicine');

insert into patients values
(1,'Arjun Sharma','Male',35,'Hyderabad','9876543210'),
(2,'Priya Reddy','Female',28,'Hyderabad','9876543211'),
(3,'Ravi Kumar','Male',45,'Chennai','9876543212'),
(4,'Sunita Patel','Female',52,'Mumbai','9876543213'),
(5,'Kiran Mehta','Male',38,'Delhi','9876543214'),
(6,'Deepa Nair','Female',60,'Bangalore','9876543215'),
(7,'Anil Verma','Male',42,'Hyderabad','9876543216'),
(8,'Meera Iyer','Female',33,'Chennai','9876543217'),
(9,'Suresh Pillai','Male',55,'Hyderabad','9876543218'),
(10,'Kavitha Rao','Female',47,'Pune','9876543219'),
(11,'Rajesh Gupta','Male',29,'Delhi','9876543220'),
(12,'Lakshmi Devi','Female',65,'Hyderabad','9876543221');

insert into doctors values
(1,'Dr. Prakash Rao','Cardiologist',1,1200),
(2,'Dr. Anita Sharma','Neurologist',2,900),
(3,'Dr. Suresh Nair','Orthopedic',3,850),
(4,'Dr. Meena Pillai','Dermatologist',4,700),
(5,'Dr. Kiran Das','General Physician',5,500),
(6,'Dr. Venkat Reddy','Cardiologist',1,1500),
(7,'Dr. Shalini Menon','Neurologist',2,950),
(8,'Dr. Ritu Agarwal','General Physician',5,600);

insert into appointments values
(1,1,1,'2026-01-05','Completed'),
(2,2,2,'2026-01-10','Completed'),
(3,3,3,'2026-01-15','Cancelled'),
(4,4,1,'2026-01-20','Completed'),
(5,5,4,'2026-01-25','Completed'),
(6,6,5,'2026-02-01','Completed'),
(7,7,6,'2026-02-05','Completed'),
(8,8,2,'2026-02-10','Cancelled'),
(9,9,1,'2026-02-15','Completed'),
(10,10,7,'2026-02-20','Completed'),
(11,11,3,'2026-03-01','Completed'),
(12,12,5,'2026-03-05','Cancelled'),
(13,1,6,'2026-03-10','Completed'),
(14,2,4,'2026-03-12','Completed'),
(15,3,8,'2026-03-15','Completed'),
(16,4,7,'2026-03-18','Completed'),
(17,5,1,'2026-03-20','Completed'),
(18,6,2,'2026-03-22','Completed'),
(19,7,3,'2026-03-25','Completed'),
(20,8,6,'2026-03-28','Completed');

insert into treatments values
(1,1,'ECG',800),
(2,2,'MRI Brain',3500),
(3,4,'Echo Cardiogram',2500),
(4,5,'Skin Biopsy',1200),
(5,6,'Blood Test',400),
(6,7,'Angiography',8000),
(7,9,'Stress Test',1500),
(8,10,'EEG',2000),
(9,11,'X-Ray Knee',600),
(10,13,'CT Coronary',6000),
(11,14,'Laser Treatment',3000),
(12,15,'General Checkup',300),
(13,16,'Nerve Conduction',1800),
(14,17,'Holter Monitor',2200),
(15,18,'Lumbar Puncture',4500);

insert into bills values
(1,1,1,'2026-01-05',2000,'Paid'),
(2,2,2,'2026-01-10',4400,'Paid'),
(3,4,4,'2026-01-20',3700,'Paid'),
(4,5,5,'2026-01-25',1900,'Paid'),
(5,6,6,'2026-02-01',900,'Paid'),
(6,7,7,'2026-02-05',9500,'Paid'),
(7,9,9,'2026-02-15',2700,'Paid'),
(8,10,10,'2026-02-20',2950,'Pending'),
(9,11,11,'2026-03-01',1450,'Paid'),
(10,1,13,'2026-03-10',7200,'Paid'),
(11,2,14,'2026-03-12',3700,'Pending'),
(12,3,15,'2026-03-15',800,'Paid'),
(13,4,16,'2026-03-18',2750,'Paid'),
(14,5,17,'2026-03-20',3400,'Pending'),
(15,6,18,'2026-03-22',5450,'Paid');

insert into payments values
(1,1,'Cash',2000,'Success'),
(2,2,'UPI',4400,'Success'),
(3,3,'Credit Card',3700,'Success'),
(4,4,'Debit Card',1900,'Success'),
(5,5,'UPI',900,'Success'),
(6,6,'Net Banking',9500,'Success'),
(7,7,'UPI',2700,'Success'),
(8,9,'Cash',1450,'Success'),
(9,10,'Credit Card',7200,'Success'),
(10,12,'UPI',800,'Success'),
(11,13,'Net Banking',2750,'Success'),
(12,15,'Cash',5450,'Success'),
(13,8,'UPI',0,'Failed'),
(14,11,'Debit Card',3000,'Partial'),
(15,14,'Cash',2000,'Partial');