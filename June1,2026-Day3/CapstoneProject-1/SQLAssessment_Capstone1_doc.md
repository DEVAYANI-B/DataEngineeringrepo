MySQL Capstone Project 1

Retail Analytics Database

1.Database Design  
The retail\_capstone\_db database was created to analyze the sales and operations of an online retail business. The database stores customer information, product details, orders, payments, and delivery records. Using these tables, we can track the complete order process from the time a customer places an order until it is delivered.

Tables

The database contains 6 tables:

1\. customers  
Primary Key: customer\_id  
Purpose: Stores customer details such as customer name, city, state, gender, and membership type.

2\. products  
Primary Key: product\_id  
Purpose: Stores product information including product name, category, and price.

3\. orders  
Primary Key: order\_id  
Purpose: Stores order details such as order date, customer ID, and order status.

4\. order\_items  
Primary Key: item\_id  
Purpose: Stores the products included in each order along with their quantities.

5\. payments  
Primary Key: payment\_id  
Purpose: Stores payment-related information such as payment mode, payment status, and transaction amount.

6\. deliveries  
Primary Key: delivery\_id  
Purpose: Stores delivery information including delivery partner, delivery status, and destination city.

2\. Table Relationships

* The tables are connected using foreign keys to maintain data consistency.  
* Each customer can place multiple orders.  
* Each order belongs to one customer.  
* An order can contain multiple products.  
* A product can appear in multiple orders.  
* Payments are linked to orders using order\_id.  
* Deliveries are also linked to orders using order\_id.

Relationships used in the database:

1. orders.customer\_id → customers.customer\_id  
2. order\_items.order\_id → orders.order\_id  
3. order\_items.product\_id → products.product\_id  
4. payments.order\_id → orders.order\_id  
5. deliveries.order\_id → orders.order\_id

The order\_items table acts as a bridge between orders and products because one order may contain many products and a product may be purchased in many different orders.

3\. Insights from Analysis  
After running the SQL queries, several useful analysis were found.

Revenue Analysis

* Total revenue generated from successful payments is ₹2,07,900.  
* Electronics is the highest revenue-generating category.  
* The SmartPhone Pro X contributes a major share of the revenue because of its high price.  
* The average payment amount is around ₹13,860.

Customer Analysis

* Some customers placed more than one order, showing repeat purchases.  
* Aditya Sharma, Priya Nair, Sneha Reddy, Ravi Kumar, and Divya Iyer each placed two orders.  
* Gold membership customers generally contributed higher order values compared to other membership types.  
* Hyderabad and Mumbai contributed significantly to overall sales.

Payment Analysis

* UPI is the most frequently used payment mode in the dataset.  
* There are two failed payments, and both belong to cancelled orders.  
* No successful order has a failed payment record.

Delivery Analysis

* Three orders are currently in Pending delivery status.  
* Two orders were cancelled and their delivery records also show cancelled status.  
* Most completed orders have already been delivered successfully.


4\. Data Quality Checks  
Data validation queries were executed to check the quality of the database.

The checks confirmed that:

* Every order has a matching payment record.  
* Every order has a matching delivery record.  
* No invalid customer IDs exist in the orders table.  
* No invalid product IDs exist in the order\_items table.  
* No cancelled order has a successful payment.  
* No delivered order has a failed payment.

These checks indicate that the dataset is consistent and does not contain orphan records.

Conclusion  
This project demonstrates the use of MySQL for designing a relational database and performing business analysis using SQL queries. By using joins, aggregate functions, grouping, subqueries, and data quality checks, meaningful insights were generated from the retail dataset. The database can be further expanded with additional features such as inventory management, supplier information, customer reviews, and return tracking.  
