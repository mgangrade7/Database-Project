-- Stored procedure 
-- 1. SP_Order_Details_Retrival: Used to display all the orders placed by customers by taking Order_ID and Cust_ID as input. 
Delimiter //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Order_Details_Retrival`(IN Order_ID INT, IN Cust_ID int)
BEGIN
	SELECT 
    orders.Order_id,
    orders.Customer_id,
    CONCAT_WS(', ',
            customers.Customer_FName,
            customers.Customer_LName) AS 'Customer Name',
    order_details.Product_id,
    order_details.Quantity,
    products.Product_Name,
    suppliers.Suppliers_id,
    suppliers.Company_Name,
    suppliers.Contact_Name,
    suppliers.Supplier_EMail,
    suppliers.Supplier_Phone
    
FROM
    orders
        INNER JOIN
    customers ON orders.Customer_id = customers.Customer_id
        INNER JOIN
    order_details ON orders.Order_id = order_details.Order_id
        INNER JOIN
    products ON order_details.Product_id = products.Product_id
        INNER JOIN
    suppliers ON products.Suppliers_id = suppliers.Suppliers_id
    Where
    orders.Order_id = Order_ID AND
    orders.Customer_id = Cust_ID;    
    
END//
Delimiter ;

-- 2. SP_Track_Order : Used to display shipment status of a an order.
Delimiter //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Track_Order`(IN Order_ID INT)
BEGIN
SELECT 
    order_delivery.Order_id,
  --  order_delivery.Delivery_Status_id,
    delivery_status.Delivery_Status_Description,
    order_delivery.Date
FROM
    order_delivery,
    delivery_status
WHERE
    order_delivery.Delivery_Status_id = delivery_status.Delivery_Status_id
        AND order_delivery.Order_id = Order_ID;

END //
Delimiter ;

-- View
-- 1. customer_order_prodcut_supplier_details: used to display order of the customer along with quantity and supplier details

CREATE VIEW `Customer_Order_Prodcut_Supplier_Details` AS
    SELECT 
        orders.Order_id,
        orders.Customer_id,
        CONCAT_WS(', ',
                customers.Customer_FName,
                customers.Customer_LName) AS 'Customer Name',
        order_details.Product_id,
        order_details.Quantity,
        products.Product_Name,
        suppliers.Suppliers_id,
        suppliers.Company_Name
    FROM
        orders
            INNER JOIN
        customers ON orders.Customer_id = customers.Customer_id
            INNER JOIN
        order_details ON orders.Order_id = order_details.Order_id
            INNER JOIN
        products ON order_details.Product_id = products.Product_id
            INNER JOIN
        suppliers ON products.Suppliers_id = suppliers.Suppliers_id;
        
-- Trigger
-- 1.
Delimiter $$
CREATE DEFINER = CURRENT_USER 
TRIGGER `AmazonDB`.`Suppliers_Contract_BEFORE_INSERT` 
BEFORE INSERT ON `Suppliers_Contract` FOR EACH ROW
BEGIN
	SET 
    NEW.Date_Contract_Expires = 
    DATE_ADD(NEW.Date_Contract_Signed, INTERVAL NEW.Number_Of_Months MONTH);
END $$
Delimiter ;

-- 2. 
Delimiter $$
CREATE DEFINER = CURRENT_USER 
TRIGGER `AmazonDB`.`Products_BEFORE_INSERT` 
BEFORE INSERT ON `Products` FOR EACH ROW
BEGIN
	IF NEW.Product_Unit_Price < 0 THEN
		SET NEW.Product_Unit_Price = 0;
	END IF;
    
    IF NEW.Product_Unit_InStock < 1 THEN
		SET NEW.Product_Unit_InStock = 0;
        SET NEW.Product_Availability_Status = 'N';
	END IF;
    
    IF NEW.Product_Unit_InStock > 0 THEN
	SET NEW.Product_Availability_Status = 'Y';
	END IF;
END $$
Delimiter ;

-- 3.
Delimiter $$
CREATE DEFINER = CURRENT_USER 
TRIGGER `AmazonDB`.`Products_AFTER_DELETE` 
AFTER DELETE ON `Products` FOR EACH ROW
BEGIN

	Insert INTO Deleted_Product(Product_id, Product_Name, Delete_Date, Delete_By)
	values (OLD.Product_id, OLD.Product_Name, now(), user());

END $$
Delimiter ;

-- 4.
Delimiter $$
CREATE DEFINER = CURRENT_USER 
TRIGGER `AmazonDB`.`Order_Details_BEFORE_INSERT` 
BEFORE INSERT ON `Order_Details` FOR EACH ROW
BEGIN
    declare quantity INTEGER;
    declare price DECIMAL(8,2);
	
    SET @quantity = (Select p.Product_Unit_InStock From Products p WHERE p.Product_id = NEW.Product_id);
	
    IF NEW.Quantity > @quantity THEN
    
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Quantity not available';
    
    ELSEIF NEW.Quantity <= @quantity THEN
    
    UPDATE Products
    SET Product_Unit_InStock = @quantity - NEW.Quantity
    WHERE Products.Product_id = NEW.Product_id;
    
    SET @price = (Select p.Product_Unit_Price From Products p WHERE p.Product_id = NEW.Product_id);
    
    SET NEW.Price = @price;
    SET NEW.Total = NEW.Quantity * @price;
    SET NEW.Order_Date = now();
	END IF; 
END $$
Delimiter ;
    
-- 5.
Delimiter $$
CREATE DEFINER = CURRENT_USER 
TRIGGER `AmazonDB`.`Payment_Method_BEFORE_INSERT` 
BEFORE INSERT ON `Payment_Method` FOR EACH ROW
BEGIN
	IF ((NEW.Payment_Method_Type_ID = 1 OR NEW.Payment_Method_Type_ID = 2) 
				AND	
		(NEW.Card_number IS NULL OR NEW.Valid_From_Year IS NULL OR NEW.Valid_Till_Year IS NULL) )   
    
    THEN
    
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ivalid Data Entry : Card number/
    Valid From Year and valid Till Year are mandatory';
    
    End if;
   
    
END $$
Delimiter ;

-- 6.
Delimiter $$
CREATE DEFINER = CURRENT_USER 
TRIGGER `AmazonDB`.`Payment_Method_BEFORE_UPDATE` 
BEFORE UPDATE ON `Payment_Method` FOR EACH ROW
BEGIN

	IF ((NEW.Payment_Method_Type_ID = 1 OR NEW.Payment_Method_Type_ID = 2) 
				AND	
		(NEW.Card_number IS NULL OR NEW.Valid_From_Year IS NULL OR NEW.Valid_Till_Year IS NULL) )   
    
    THEN
    
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ivalid Data Entry : Card number/
    Valid From Year and valid Till Year are mandatory';
    
    End if;

END $$
Delimiter ;