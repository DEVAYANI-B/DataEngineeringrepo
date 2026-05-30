CREATE DATABASE training_sql_db;
USE training_sql_db;
CREATE TABLE books
(
 book_id INT PRIMARY KEY,
 book_title VARCHAR(100),
 category VARCHAR(50),
 author VARCHAR(50),
 price DECIMAL(10,2),
 stock INT,
 published_year INT
);
INSERT INTO books VALUES
(1, 'Python Basics', 'Programming', 'Ravi Kumar', 550, 30, 2021),
(2, 'Advanced SQL', 'Database', 'Priya Sharma', 750, 15, 2020),
(3, 'Data Engineering Guide', 'Data', 'Amit Verma', 1200, 10, 2023),
(4, 'Machine Learning Start', 'AI', 'Neha Reddy', 950, 8, 2022),
(5, 'Excel for Business', 'Business', 'Kiran Rao', 400, 50, 2019),
(6, 'Power BI Reports', 'Data', 'Sneha Patel', 850, 12, 2021),
(7, 'Java Fundamentals', 'Programming', 'Arjun Mehta', 600, 20, 2018),
(8, 'Cloud Basics', 'Cloud', 'Rahul Nair', 700, 18, 2022),
(9, 'SQL Interview Prep', 'Database', 'Farhan Ali', 500, 25, 2024),
(10, 'AI for Beginners', 'AI', 'Meera Singh', 650, 5, 2023);

select * from books;
select book_title,category,price from books;

select distinct category from books;
select * from books where category='Programming';
select * from books where price>700;
select * from books where stock<15;
select * from books where category in ('Programming','Database','AI');
select * from books where price between 500 and 900;
select * from books where book_title like '%SQL%';
select * from books where book_title like 'Data%';
select * from books order by price desc;
select * from books order by category asc, price desc;

-- aggregate

select count(*) as TotalBooks from books;
select MAX(price) as Highestprice from books;
select MIN(price) as Lowestprice from books;
select avg(price) as Averageprice from books;
select sum(stock) as Totalstock from books;
select category,count(*) as TotalBooks from books group by category;
select category,avg(price) as Averagepricebycategory from books group by category;
select category,sum(stock) as Totalstockbycategory from books group by category;
select category,count(*) as numberofbooks from books group by category having count(*)>1;
select category,avg(price) as Averageprice from books group by category having avg(price)>700;
CREATE TABLE departments
(
 department_id INT PRIMARY KEY,
 department_name VARCHAR(50),
 location VARCHAR(50)
);
CREATE TABLE employees
(
 employee_id INT PRIMARY KEY,
 employee_name VARCHAR(50),
 department_id INT,
 salary DECIMAL(10,2),
 city VARCHAR(50),
 manager_id INT
);
INSERT INTO departments VALUES
(10, 'IT', 'Hyderabad'),
(20, 'HR', 'Bangalore'),
(30, 'Finance', 'Mumbai'),
(40, 'Sales', 'Delhi'),
(50, 'Marketing', NULL);
INSERT INTO employees VALUES
(101, 'Rahul Sharma', 10, 75000, 'Hyderabad', 201),
(102, 'Priya Reddy', 10, 85000, 'Bangalore', 201),
(103, 'Amit Kumar', 20, 55000, NULL, 202),
(104, 'Sneha Patel', 30, 65000, 'Mumbai', 203),
(105, 'Arjun Verma', NULL, 60000, 'Chennai', 204),
(106, 'Neha Singh', 60, 50000, 'Delhi', NULL),
(107, 'Farhan Ali', 40, NULL, 'Hyderabad', 205),
(108, 'Meera Nair', 10, 90000, 'Pune', 201);
select employees.employee_name,employees.salary,departments.department_name,departments.location from employees inner join departments on employees.department_id=departments.department_id;
select e.employee_id,e.employee_name,e.salary,d.department_name,d.location from employees e left join departments d on e.department_id=d.department_id;
