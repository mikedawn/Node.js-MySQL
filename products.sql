DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

-- use bamazon db --
USE bamazon_db;

-- create products table --
CREATE TABLE products (
	item_id INT AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NULL,
  product_sales DECIMAL(10,2) NULL,
  product_sales DECIMAL(10,2) DEFAULT 0,
	PRIMARY KEY (item_id)

    INSERT INTO `bamazon_db`.`products` (`product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('Nike Shirt', 'Sports', '20.00', '100');
INSERT INTO `bamazon_db`.`products` (`product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('frying pan', 'Kitchen', '10.00', '200');
INSERT INTO `bamazon_db`.`products` (`product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('Liz Claiborn Sweater', 'Women\'s', '40.00', '75');
INSERT INTO `bamazon_db`.`products` (`product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('Polo Shirt', 'Men\'s', '60.00', '50');
INSERT INTO `bamazon_db`.`products` (`product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('Hello Kitty dress', 'Kids-girls', '30.00', '10');
INSERT INTO `bamazon_db`.`products` (`product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('Teen Titan\'s T-Shirt', 'Kids-boys', '19.99', '20');
INSERT INTO `bamazon_db`.`products` (`product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('Samsung TV 50\'', 'Electronics', '500.00', '20');
INSERT INTO `bamazon_db`.`products` (`product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('Love Seat', 'Furniture', '1300', '30');
INSERT INTO `bamazon_db`.`products` (`product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('cell phone holder', 'bargin rack', '1.99', '70');
INSERT INTO `bamazon_db`.`products` (`product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('Hallmark Cards', 'Office', '2.50', '100');

);