CREATE DATABASE  IF NOT EXISTS `amazondb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `amazondb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: amazondb
-- ------------------------------------------------------
-- Server version	5.6.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address_type`
--

DROP TABLE IF EXISTS `address_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_type` (
  `Address_Type_Code` int(11) NOT NULL,
  `Address_Type_Description` varchar(45) NOT NULL,
  PRIMARY KEY (`Address_Type_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_type`
--

LOCK TABLES `address_type` WRITE;
/*!40000 ALTER TABLE `address_type` DISABLE KEYS */;
INSERT INTO `address_type` VALUES (1,'Billing'),(2,'Residence'),(3,'Delivery'),(4,'Office');
/*!40000 ALTER TABLE `address_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `Address_id` int(10) unsigned NOT NULL,
  `Address_Line1` varchar(60) NOT NULL,
  `Address_Line2` varchar(60) DEFAULT NULL,
  `City` varchar(15) NOT NULL,
  `State` varchar(15) NOT NULL,
  `Postal_Code` varchar(10) NOT NULL,
  `Country` varchar(15) NOT NULL,
  PRIMARY KEY (`Address_id`),
  UNIQUE KEY `Address_id_UNIQUE` (`Address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (55467,'Bishop Ford 103rd St Stony','bishop ford 103rd st stony','Tulsa','Oklahoma','74904','United States'),(55505,'Carpenter','carpenter','Fort Lauderdale','Florida','33991','United States'),(55578,'Luella','luella','Joliet','Illinois','60429','United States'),(56821,'Webster','webster','Lakewood','Colorado','80270','United States'),(56986,'Brompton','brompton','Gilbert','Arizona','85297','United States'),(57761,'Lawrence Wilson','lawrence wilson','Bakersfield','California','93956','United States'),(58712,'Bryn Mawr Av','bryn mawr av','Peoria','Arizona','85335','United States'),(59372,'Poplar','poplar','Worcester','Massachusetts','01613','United States'),(59563,'Pershing','pershing','Des Moines','Iowa','50388','United States'),(60288,'Lessing','lessing','Tallahassee','Florida','32337','United States'),(61149,'Edens Wilson Av','edens wilson av','Rockford','Illinois','61157','United States'),(62025,'Payne','payne','Tulsa','Oklahoma','74576','United States'),(63106,'Newgard','newgard','Columbia','South Carolina','29030','United States'),(63128,'Orange','orange','Boston','Massachusetts','02923','United States'),(63144,'Lituanica','lituanica','Columbus','Ohio','43793','United States'),(64512,'Edens Peterson Av','edens peterson av','Portland','Oregon','97430','United States'),(65102,'Parkview','parkview','New Orleans','Louisiana','70860','United States'),(65173,'Avalon','avalon','Philadelphia','Pennsylvania','19979','United States'),(65291,'Tahoma','tahoma','Cedar Rapids','Iowa','52223','United States'),(65986,'Estes','estes','Richmond','Virginia','23244','United States');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `Category_id` int(11) NOT NULL,
  `Category_Name` varchar(25) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`Category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (10001,'Convenience Products','consumed regularly and purchased frequently'),(10002,'Shopping Products','consume on a less frequent schedule compared to convenience products'),(10003,'Specialty Products','carry a high price tag relative to convenience and shopping products'),(10004,'Emergency Products','products a customer seeks due to sudden events'),(10005,'Unsought Products','purchase is unplanned by the consumer but occur as a result of marketer’s actions');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_type`
--

DROP TABLE IF EXISTS `contract_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_type` (
  `Contract_Type_ID` int(11) NOT NULL,
  `Contract_Type_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Contract_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_type`
--

LOCK TABLES `contract_type` WRITE;
/*!40000 ALTER TABLE `contract_type` DISABLE KEYS */;
INSERT INTO `contract_type` VALUES (30100,'FIXED PRICE ESCALATION CONTRACT'),(30200,'FIRM FIXED TYPE CONTRACT'),(30300,'FIXED PRICE INCENTIVE CONTRACT'),(30400,'FIXED PRICE REDETERMINATION CONTRACT'),(30500,'COST/COST SHARING CONTRACT'),(30600,'COST PLUS AWARD FEE CONTRACT'),(30700,'COST PLUS FIXED FEE CONTRACT'),(30800,'TIME AND MATERIALS CONTRACT'),(30900,'LETTER SUBCONTRACT'),(30901,'INDEFINITE DELIVERY CONTRACT');
/*!40000 ALTER TABLE `contract_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_order_prodcut_supplier_details`
--

DROP TABLE IF EXISTS `customer_order_prodcut_supplier_details`;
/*!50001 DROP VIEW IF EXISTS `customer_order_prodcut_supplier_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `customer_order_prodcut_supplier_details` AS SELECT 
 1 AS `Order_id`,
 1 AS `Customer_id`,
 1 AS `Customer Name`,
 1 AS `Product_id`,
 1 AS `Quantity`,
 1 AS `Product_Name`,
 1 AS `Suppliers_id`,
 1 AS `Company_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `Customer_id` int(10) unsigned NOT NULL,
  `Customer_FName` varchar(45) NOT NULL,
  `Customer_LName` varchar(45) NOT NULL,
  `Customer_Phone` varchar(12) NOT NULL,
  `Customer_EMail` varchar(45) NOT NULL,
  `Customer_Create_Date` date NOT NULL,
  PRIMARY KEY (`Customer_id`),
  UNIQUE KEY `Customer_id_UNIQUE` (`Customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1276,'Lillianna','Harmon','708-564-0842','Lillianna.HAR9599@gmail.com','2015-11-09'),(1324,'Larry','Schroeder','814-997-7823','Larr.SCHROE1889@mail2web.com','2016-12-18'),(1328,'Dixie','Atkinson','435-874-6885','Dixie.ATKINS3205@live.com','2014-08-27'),(1372,'Carly','Snow','845-898-9064','Ca.SNOW3983@yahoo.com','2016-09-17'),(1394,'Ruth','Lane','706-619-4977','Ruth.LAN8915@hushmail.com','2015-11-25'),(1400,'Sabrina','Mcbride','818-417-7502','Sabrin.MCBRIDE1528@hushmail.com','2016-02-25'),(1506,'Zuri','Gaines','913-349-5065','Zur.GAINES4016@gmail.com','2015-05-15'),(1628,'Bruno','Sawyer','903-633-1410','Br.SAWY6118@live.com','2014-11-26'),(1819,'Alexis','Albert','305-706-1456','Alexi.ALB7026@live.com','2015-09-09'),(1979,'Brooks','Lindsey','606-910-4369','Brook.LIND4888@gmail.com','2014-10-04');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_addresses`
--

DROP TABLE IF EXISTS `customers_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_addresses` (
  `Customer_id` int(10) unsigned NOT NULL,
  `Address_id` int(10) unsigned NOT NULL,
  `Address_Type_Code` int(11) NOT NULL,
  `Date_From` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Customer_id`,`Address_id`,`Address_Type_Code`),
  KEY `fk_Customers_has_Addresses_Addresses1_idx` (`Address_id`),
  KEY `fk_Customers_has_Addresses_Customers_idx` (`Customer_id`),
  KEY `fk_Customers_Addresses_Address_Type1_idx` (`Address_Type_Code`),
  CONSTRAINT `fk_Customers_Addresses_Address_Type1` FOREIGN KEY (`Address_Type_Code`) REFERENCES `address_type` (`Address_Type_Code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customers_has_Addresses_Addresses1` FOREIGN KEY (`Address_id`) REFERENCES `addresses` (`Address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customers_has_Addresses_Customers` FOREIGN KEY (`Customer_id`) REFERENCES `customers` (`Customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_addresses`
--

LOCK TABLES `customers_addresses` WRITE;
/*!40000 ALTER TABLE `customers_addresses` DISABLE KEYS */;
INSERT INTO `customers_addresses` VALUES (1276,55505,1,'2016-12-18 00:00:00'),(1276,65102,1,'2015-11-15 00:00:00'),(1324,59563,2,'2016-05-25 00:00:00'),(1324,65173,4,'2015-09-09 00:00:00'),(1328,65291,3,'2015-11-25 00:00:00'),(1372,56986,3,'2015-11-09 00:00:00'),(1372,61149,4,'2015-05-15 00:00:00'),(1372,63106,2,'2015-12-25 00:00:00'),(1394,60288,4,'2016-09-17 00:00:00'),(1400,65102,3,'2014-10-04 00:00:00'),(1400,65173,3,'2015-10-09 00:00:00'),(1506,55505,4,'2016-07-17 00:00:00'),(1506,63106,2,'2016-02-25 00:00:00'),(1628,56821,2,'2014-08-27 00:00:00'),(1628,65986,1,'2017-12-11 18:23:20'),(1819,56986,2,'2014-09-27 00:00:00'),(1979,61149,1,'2014-11-26 00:00:00');
/*!40000 ALTER TABLE `customers_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_product`
--

DROP TABLE IF EXISTS `deleted_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deleted_product` (
  `Product_id` int(11) NOT NULL,
  `Product_Name` varchar(45) NOT NULL,
  `Delete_Date` datetime DEFAULT NULL,
  `Delete_By` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_product`
--

LOCK TABLES `deleted_product` WRITE;
/*!40000 ALTER TABLE `deleted_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `deleted_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_status`
--

DROP TABLE IF EXISTS `delivery_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_status` (
  `Delivery_Status_id` int(11) NOT NULL,
  `Delivery_Status_Description` varchar(30) NOT NULL,
  PRIMARY KEY (`Delivery_Status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_status`
--

LOCK TABLES `delivery_status` WRITE;
/*!40000 ALTER TABLE `delivery_status` DISABLE KEYS */;
INSERT INTO `delivery_status` VALUES (11,'Preparing for shipment'),(22,'Pakaging'),(33,'Shipped'),(44,'In Transit'),(55,'Delivered');
/*!40000 ALTER TABLE `delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_delivery`
--

DROP TABLE IF EXISTS `order_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_delivery` (
  `Order_id` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `Delivery_Status_id` int(11) NOT NULL,
  PRIMARY KEY (`Date`),
  KEY `fk_Order_Delivery_Delivery_Status1_idx` (`Delivery_Status_id`),
  KEY `fk_Order_Delivery_Order_Details1_idx` (`Order_id`),
  CONSTRAINT `fk_Order_Delivery_Delivery_Status1` FOREIGN KEY (`Delivery_Status_id`) REFERENCES `delivery_status` (`Delivery_Status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Delivery_Order_Details1` FOREIGN KEY (`Order_id`) REFERENCES `order_details` (`Order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_delivery`
--

LOCK TABLES `order_delivery` WRITE;
/*!40000 ALTER TABLE `order_delivery` DISABLE KEYS */;
INSERT INTO `order_delivery` VALUES (4500,'2017-12-11 18:23:25',11),(4500,'2017-12-11 18:23:30',22);
/*!40000 ALTER TABLE `order_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `Order_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` decimal(8,2) DEFAULT NULL,
  `Total` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`Order_id`,`Product_id`),
  KEY `fk_Orders_has_Products_Products1_idx` (`Product_id`),
  KEY `fk_Orders_has_Products_Orders1_idx` (`Order_id`),
  CONSTRAINT `fk_Orders_has_Products_Orders1` FOREIGN KEY (`Order_id`) REFERENCES `orders` (`Order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Orders_has_Products_Products1` FOREIGN KEY (`Product_id`) REFERENCES `products` (`Product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (4510,20004,3,255.55,766.65),(4515,20004,3,255.55,766.65),(4518,20007,10,3255.00,32550.00),(4518,20008,12,1030.55,12366.60),(4518,20018,10,1350.55,13505.50),(4518,20025,12,3738.22,44858.64),(4522,20002,3,355.00,1065.00),(4522,20008,15,1030.55,15458.25);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `Order_id` int(11) NOT NULL,
  `Customer_id` int(10) unsigned NOT NULL,
  `Payment_Method_id` int(11) NOT NULL,
  `Order_Date` date NOT NULL,
  `Shipping_Date` date NOT NULL,
  `Ship_Name` varchar(45) NOT NULL,
  `Ship_Address` varchar(60) NOT NULL,
  `Ship_City` varchar(15) NOT NULL,
  `Ship_State` varchar(15) NOT NULL,
  `Ship_Postal_Code` varchar(10) NOT NULL,
  `Ship_Country` varchar(15) NOT NULL,
  PRIMARY KEY (`Order_id`,`Customer_id`,`Payment_Method_id`),
  UNIQUE KEY `Order_id_UNIQUE` (`Order_id`),
  KEY `fk_Orders_Customers1_idx` (`Customer_id`),
  KEY `fk_Orders_Payment_Method1_idx` (`Payment_Method_id`),
  CONSTRAINT `fk_Orders_Customers1` FOREIGN KEY (`Customer_id`) REFERENCES `customers` (`Customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Orders_Payment_Method1` FOREIGN KEY (`Payment_Method_id`) REFERENCES `payment_method` (`Payment_Method_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4500,1276,2,'2017-12-12','2017-12-14','ABC Shippers','360 Huntington Ave','Boston','MA','02115','USA'),(4511,1276,3,'2017-11-12','2017-11-14','ABC Shippers','360 Mass Ave','Boston','MA','02115','USA'),(4515,1324,2,'2017-05-11','2017-05-13','XYZ Shippers','33 Columbus Ave','Newton','MA','02120','USA'),(4518,1372,7,'2017-01-01','2017-01-03','QWERTY Shippers','49 Symphony Rd','Revere','MA','02130','USA'),(4520,1979,5,'2017-01-11','2017-01-15','UP Shippers','33 AB Road','San Jose','CA','021221','USA'),(4522,1979,6,'2017-09-07','2017-09-09','CDF Shippers','77 XyX Street','Dallas','TX','0222558','USA');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_method` (
  `Payment_Method_id` int(11) NOT NULL,
  `Customer_id` int(10) unsigned NOT NULL,
  `Payment_Method_Type_ID` int(11) NOT NULL,
  `Card_Number` varchar(16) DEFAULT NULL,
  `Valid_From_Year` year(4) DEFAULT NULL,
  `Valid_Till_Year` year(4) DEFAULT NULL,
  PRIMARY KEY (`Payment_Method_id`),
  KEY `fk_Payment_Method_Customers1_idx` (`Customer_id`),
  KEY `fk_Payment_Method_Payment_Method_Type1_idx` (`Payment_Method_Type_ID`),
  CONSTRAINT `fk_Payment_Method_Customers1` FOREIGN KEY (`Customer_id`) REFERENCES `customers` (`Customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Payment_Method_Payment_Method_Type1` FOREIGN KEY (`Payment_Method_Type_ID`) REFERENCES `payment_method_type` (`Payment_Method_Type_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1010,1276,3,NULL,NULL,NULL),(1015,1276,4,NULL,NULL,NULL),(1020,1324,5,NULL,NULL,NULL),(1025,1372,6,NULL,NULL,NULL),(1030,1979,7,NULL,NULL,NULL),(1035,1979,1,'1234567891032145',2015,2020);
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method_type`
--

DROP TABLE IF EXISTS `payment_method_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_method_type` (
  `Payment_Method_Type_ID` int(11) NOT NULL,
  `Payment_Method_Description` varchar(45) NOT NULL,
  PRIMARY KEY (`Payment_Method_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method_type`
--

LOCK TABLES `payment_method_type` WRITE;
/*!40000 ALTER TABLE `payment_method_type` DISABLE KEYS */;
INSERT INTO `payment_method_type` VALUES (1,'Credit Card'),(2,'Debit Card'),(3,'Online Payment'),(4,'Cash Payment'),(5,'Cheque Payment'),(6,'Money Order'),(7,'Gift Card or Voucher');
/*!40000 ALTER TABLE `payment_method_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previous_customer`
--

DROP TABLE IF EXISTS `previous_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previous_customer` (
  `Customer_id` int(11) NOT NULL,
  `Customer_FName` varchar(45) DEFAULT NULL,
  `Customer_LName` varchar(45) DEFAULT NULL,
  `Customer_Phone` varchar(45) DEFAULT NULL,
  `Customer_EMail` varchar(45) DEFAULT NULL,
  `Delete_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previous_customer`
--

LOCK TABLES `previous_customer` WRITE;
/*!40000 ALTER TABLE `previous_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `previous_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previous_valued_customer`
--

DROP TABLE IF EXISTS `previous_valued_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previous_valued_customer` (
  `Customer_id` int(11) NOT NULL,
  `Customer_FName` varchar(45) DEFAULT NULL,
  `Customer_LName` varchar(45) DEFAULT NULL,
  `Customer_Phone` varchar(45) DEFAULT NULL,
  `Customer_EMail` varchar(45) DEFAULT NULL,
  `Delete_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previous_valued_customer`
--

LOCK TABLES `previous_valued_customer` WRITE;
/*!40000 ALTER TABLE `previous_valued_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `previous_valued_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `Product_id` int(11) NOT NULL,
  `Suppliers_id` int(11) NOT NULL,
  `Category_id` int(11) NOT NULL,
  `Product_Name` varchar(45) NOT NULL,
  `Product_Unit_Price` decimal(8,2) NOT NULL,
  `Product_Unit_InStock` int(11) NOT NULL,
  `Product_Availability_Status` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`Product_id`,`Suppliers_id`,`Category_id`),
  UNIQUE KEY `Product_id_UNIQUE` (`Product_id`),
  KEY `fk_Product_Suppliers1_idx` (`Suppliers_id`),
  KEY `fk_Product_Categories1_idx` (`Category_id`),
  CONSTRAINT `fk_Product_Categories1` FOREIGN KEY (`Category_id`) REFERENCES `categories` (`Category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Product_Suppliers1` FOREIGN KEY (`Suppliers_id`) REFERENCES `suppliers` (`Suppliers_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (20001,30800,10001,'Product 1',320.55,100,'Y'),(20002,30800,10002,'Product 2',355.00,197,'Y'),(20003,30800,10002,'Product 3',100.55,0,'N'),(20004,30800,10004,'Product 4',255.55,294,'Y'),(20005,30800,10005,'Product 5',333.33,100,'Y'),(20006,30810,10001,'Product 6',1320.55,0,'N'),(20007,30810,10002,'Product 7',3255.00,190,'Y'),(20008,30810,10002,'Product 8',1030.55,373,'Y'),(20009,30810,10004,'Product 9',2555.55,300,'Y'),(20010,30810,10005,'Product 5',338.33,100,'Y'),(20011,30820,10005,'Product 6',120.55,120,'Y'),(20012,30820,10004,'Product 1',325.00,270,'Y'),(20013,30820,10002,'Product 7',130.55,490,'Y'),(20014,30820,10003,'Product 3',555.55,370,'Y'),(20015,30820,10003,'Product 5',338.22,156,'Y'),(20016,30830,10004,'Product 6',1202.55,1202,'Y'),(20017,30830,10004,'Product 1',3254.00,2704,'Y'),(20018,30830,10001,'Product 7',1350.55,4896,'Y'),(20019,30830,10003,'Product 3',5585.55,3750,'Y'),(20020,30830,10002,'Product 5',3738.22,1569,'Y'),(20021,30840,10005,'Product 2',1202.55,10,'Y'),(20022,30840,10004,'Product 4',3254.00,0,'N'),(20023,30840,10003,'Product 8',1350.55,46,'Y'),(20024,30840,10001,'Product 9',5585.55,30,'Y'),(20025,30840,10002,'Product 7',3738.22,7,'Y');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `Suppliers_id` int(11) NOT NULL,
  `Company_Name` varchar(45) NOT NULL,
  `Contact_Name` varchar(45) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `City` varchar(15) NOT NULL,
  `State` varchar(15) NOT NULL,
  `Postal_Code` varchar(10) NOT NULL,
  `Country` varchar(15) NOT NULL,
  `Supplier_Phone` varchar(12) NOT NULL,
  `Supplier_Fax` varchar(12) DEFAULT NULL,
  `Supplier_EMail` varchar(45) NOT NULL,
  PRIMARY KEY (`Suppliers_id`),
  UNIQUE KEY `Suppliers_id_UNIQUE` (`Suppliers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (30800,'Facebook','Mark J','1 Hacker Way','Menlo Park','California','02115','USA','857-763-0001','857-763-9001','info@facebook.com'),(30810,'Google','Larry P','100 Parker Hill','Dallas','Texas','02125','USA','857-763-0002','857-763-9002','info@google.com'),(30820,'LinkedIN','Matthew H','190 Marino St Way','Atlanta','Georgia','02135','USA','857-763-0003','857-763-9003','info@linkedin.com'),(30830,'Apple','Tin Cook','111 Symphony Rd','NYU','N York','02140','USA','857-763-0004','857-763-9004','info@apple.com'),(30840,'HTC','John H','1020 Misson Main','I Poli','Indina','02195','USA','857-763-0005','857-763-9005','info@htc.com');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers_contract`
--

DROP TABLE IF EXISTS `suppliers_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers_contract` (
  `Suppliers_id` int(11) NOT NULL,
  `Contract_Type_ID` int(11) NOT NULL,
  `Contract_Details` varchar(100) NOT NULL,
  `Date_Contract_Signed` date NOT NULL,
  `Number_Of_Months` smallint(2) NOT NULL,
  `Date_Contract_Expires` date DEFAULT NULL,
  PRIMARY KEY (`Suppliers_id`,`Contract_Type_ID`),
  KEY `fk_Suppliers_Contract_Contract_Type1_idx` (`Contract_Type_ID`),
  CONSTRAINT `fk_Suppliers_Contract_Contract_Type1` FOREIGN KEY (`Contract_Type_ID`) REFERENCES `contract_type` (`Contract_Type_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Suppliers_Contract_Suppliers1` FOREIGN KEY (`Suppliers_id`) REFERENCES `suppliers` (`Suppliers_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers_contract`
--

LOCK TABLES `suppliers_contract` WRITE;
/*!40000 ALTER TABLE `suppliers_contract` DISABLE KEYS */;
INSERT INTO `suppliers_contract` VALUES (30800,30100,'Contract Details : Contract is about','2016-01-01',2,'2016-03-01'),(30800,30200,'Contract Details : Contract is about','2017-02-01',12,'2018-02-01'),(30810,30300,'Contract Details : Contract is about','2010-03-22',22,'2012-01-22'),(30810,30400,'Contract Details : Contract is about','2012-04-07',32,'2014-12-07'),(30810,30500,'Contract Details : Contract is about','2009-05-13',25,'2011-06-13'),(30820,30100,'Contract Details : Contract is about','2011-11-21',72,'2017-11-21'),(30820,30300,'Contract Details : Contract is about','2014-10-17',78,'2021-04-17'),(30820,30600,'Contract Details : Contract is about','2016-12-23',52,'2021-04-23'),(30830,30800,'Contract Details : Contract is about','2017-09-11',13,'2018-10-11'),(30840,30900,'Contract Details : Contract is about','2015-11-07',19,'2017-06-07'),(30840,30901,'Contract Details : Contract is about','2017-08-09',10,'2018-06-09');
/*!40000 ALTER TABLE `suppliers_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `customer_order_prodcut_supplier_details`
--

/*!50001 DROP VIEW IF EXISTS `customer_order_prodcut_supplier_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_order_prodcut_supplier_details` AS select `orders`.`Order_id` AS `Order_id`,`orders`.`Customer_id` AS `Customer_id`,concat_ws(', ',`customers`.`Customer_FName`,`customers`.`Customer_LName`) AS `Customer Name`,`order_details`.`Product_id` AS `Product_id`,`order_details`.`Quantity` AS `Quantity`,`products`.`Product_Name` AS `Product_Name`,`suppliers`.`Suppliers_id` AS `Suppliers_id`,`suppliers`.`Company_Name` AS `Company_Name` from ((((`orders` join `customers` on((`orders`.`Customer_id` = `customers`.`Customer_id`))) join `order_details` on((`orders`.`Order_id` = `order_details`.`Order_id`))) join `products` on((`order_details`.`Product_id` = `products`.`Product_id`))) join `suppliers` on((`products`.`Suppliers_id` = `suppliers`.`Suppliers_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 23:16:48
