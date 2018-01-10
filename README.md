# Database-Project : Relational Database Design for E-Commerce Management

### Problem Statement 
The goal of this project will be to design a relational database that will describe all the entity related to e-commerce and properly 
covers all the relative scenarios in an e-commerce business using relational database management systems(RDBMS) like MySQL, MS SQL 
Server, OracleDB etc.

### Design Approach 
MySQL Workbench tool is used for designing database for an e-commerce business. Which can be able to track the record of Customers, 
Suppliers, Products, Customer orders, Customer payments and order delivery. A customer places an order for purchasing product which 
is supplied by a supplier. A customer can place an order for multiple products and a particular product can be supplied by multiple 
suppliers.

Entities are created for capturing data for customers, suppliers, orders, and payment used by customers. 


Finally, views, triggers, procedures are written for applying run-time conditions and performing analytics.

### Entities of concern 

**Customer:** Details of the customer like the First name, Last name, Address details, Contact details, payment method used by customer to place order 

**Supplier:** Details of the supplier like Name, Contact person name, contact details, Address details, contract details 

**Product:** Details of the product like Product name, Product Category, Price, availability 

**Order:** Details of the order placed by customer like Product, Quantity of product, order date, Order delivery status
