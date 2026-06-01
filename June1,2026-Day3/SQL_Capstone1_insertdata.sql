USE retail_capstone_db;

INSERT INTO customers VALUES
(1,'Aditya Sharma','Mumbai','Maharashtra','Male','Gold'),
(2,'Priya Nair','Hyderabad','Telangana','Female','Silver'),
(3,'Ravi Kumar','Chennai','Tamil Nadu','Male','Regular'),
(4,'Sneha Reddy','Hyderabad','Telangana','Female','Gold'),
(5,'Karan Mehta','Mumbai','Maharashtra','Male','Regular'),
(6,'Divya Iyer','Chennai','Tamil Nadu','Female','Silver'),
(7,'Arjun Patel','Ahmedabad','Gujarat','Male','Gold'),
(8,'Meena Joshi','Pune','Maharashtra','Female','Regular'),
(9,'Vikram Singh','Delhi','Delhi','Male','Silver'),
(10,'Ananya Bose','Kolkata','West Bengal','Female','Gold');

INSERT INTO products VALUES
(1,'SmartPhone Pro X','Electronics',75000),
(2,'Wireless Earbuds','Electronics',1300),
(3,'Running Shoes','Fashion',9000),
(4,'Slim Fit Jeans','Fashion',2500),
(5,'Induction Cooktop','Appliances',3500),
(6,'Digital Air Fryer','Appliances',7000),
(7,'Fantasy Novel Box Set','Books',1000),
(8,'Productivity Book','Books',500),
(9,'Premium Yoga Mat','Sports',1200),
(10,'Whey Protein 1kg','Sports',2300);

INSERT INTO orders VALUES
(101,1,'2025-11-10','Delivered'),
(102,2,'2025-12-05','Delivered'),
(103,3,'2025-12-20','Cancelled'),
(104,4,'2026-01-03','Delivered'),
(105,1,'2026-01-15','Delivered'),
(106,5,'2026-01-18','Pending'),
(107,6,'2026-01-22','Delivered'),
(108,7,'2026-02-01','Shipped'),
(109,2,'2026-02-10','Delivered'),
(110,8,'2026-02-14','Cancelled'),
(111,9,'2026-02-20','Delivered'),
(112,10,'2026-03-01','Pending'),
(113,4,'2026-03-05','Shipped'),
(114,3,'2026-03-10','Delivered'),
(115,6,'2026-03-15','Pending');

INSERT INTO order_items VALUES
(1001,101,1,1),
(1002,101,2,2),
(1003,102,3,1),
(1004,103,4,1),
(1005,104,5,1),
(1006,104,6,1),
(1007,105,7,2),
(1008,106,8,1),
(1009,106,9,1),
(1010,107,10,2),
(1011,108,1,1),
(1012,109,2,1),
(1013,109,3,1),
(1014,110,4,2),
(1015,111,5,1),
(1016,112,6,1),
(1017,113,7,1),
(1018,114,9,2),
(1019,115,10,1),
(1020,108,8,3);

INSERT INTO payments VALUES
(201,101,'Credit Card','Success',77600),
(202,102,'UPI','Success',9000),
(203,103,'Net Banking','Failed',2500),
(204,104,'UPI','Success',10500),
(205,105,'Debit Card','Success',2000),
(206,106,'UPI','Pending',1700),
(207,107,'Cash on Del','Success',4600),
(208,108,'Credit Card','Success',76500),
(209,109,'UPI','Success',10300),
(210,110,'Net Banking','Failed',5000),
(211,111,'Debit Card','Success',3500),
(212,112,'UPI','Pending',7000),
(213,113,'Credit Card','Success',1000),
(214,114,'UPI','Success',2400),
(215,115,'Cash on Del','Pending',2300);

INSERT INTO deliveries VALUES
(301,101,'Delhivery','Delivered','Mumbai'),
(302,102,'BlueDart','Delivered','Hyderabad'),
(303,103,'Ekart','Cancelled','Chennai'),
(304,104,'Delhivery','Delivered','Hyderabad'),
(305,105,'BlueDart','Delivered','Mumbai'),
(306,106,'Ekart','Pending','Mumbai'),
(307,107,'Delhivery','Delivered','Chennai'),
(308,108,'BlueDart','Shipped','Ahmedabad'),
(309,109,'Delhivery','Delivered','Hyderabad'),
(310,110,'Ekart','Cancelled','Pune'),
(311,111,'BlueDart','Delivered','Delhi'),
(312,112,'Delhivery','Pending','Kolkata'),
(313,113,'Ekart','Shipped','Hyderabad'),
(314,114,'BlueDart','Delivered','Chennai'),
(315,115,'Delhivery','Pending','Chennai');