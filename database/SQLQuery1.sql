
-- Tạo mới database bansach
CREATE DATABASE bansach;
go
-- Sử dụng database bansach
USE bansach;
go
CREATE TABLE Card (card_id int IDENTITY NOT NULL, quantile int NULL, customer_id int NOT NULL, product_id int NOT NULL, PRIMARY KEY (card_id));
CREATE TABLE Category (category_id int IDENTITY NOT NULL, name nvarchar(255) NULL, PRIMARY KEY (category_id));
CREATE TABLE Customer (customer_id int IDENTITY NOT NULL, first_name nvarchar(100) NULL, last_name nvarchar(100) NULL, email nvarchar(100) NULL, password nvarchar(100) NULL, address nvarchar(100) NULL, phone_number nvarchar(100) NULL,PRIMARY KEY (customer_id));
CREATE TABLE Order_list (order_id int IDENTITY NOT NULL, order_date nvarchar(100) NULL, total_price nvarchar(100) NULL, shipment_id int NOT NULL, customer_id int NOT NULL, payment_id int NOT NULL, PRIMARY KEY (order_id));
CREATE TABLE Order_item (order_item_id int IDENTITY NOT NULL, quantity int NULL, price nvarchar(100) NULL, order_id int NOT NULL, product_id int NOT NULL, PRIMARY KEY (order_item_id));
CREATE TABLE Payment (payment_id int IDENTITY NOT NULL, payment_date nvarchar(100) NULL, payment_method nvarchar(255) NULL, amount nvarchar(100) NULL, customer_id int NOT NULL, PRIMARY KEY (payment_id));
CREATE TABLE Product (product_id int IDENTITY NOT NULL,photo nvarchar(100) NULL, SKU nvarchar(100) NULL, description nvarchar(255) NULL, price nvarchar(100) NULL, stock nvarchar(255) NULL, category_id int NOT NULL, PRIMARY KEY (product_id));
CREATE TABLE Shipment (shipment_id int IDENTITY NOT NULL, shipment_date nvarchar(100) NULL, address nvarchar(255) NULL, city nvarchar(100) NULL, state nvarchar(20) NULL, country nvarchar(50) NULL, zip_code nvarchar(10) NULL, customer_id int NOT NULL, PRIMARY KEY (shipment_id));
CREATE TABLE Wishlist (wishlist_id int IDENTITY NOT NULL,quantile int Not NULL, customer_id int NOT NULL, product_id int NOT NULL, PRIMARY KEY (wishlist_id));
ALTER TABLE Payment ADD CONSTRAINT FKPayment333551 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id);

ALTER TABLE Wishlist ADD CONSTRAINT FKWishlist767879 FOREIGN KEY (product_id) REFERENCES Product (product_id);
ALTER TABLE Order_item ADD CONSTRAINT FKOrder_item181738 FOREIGN KEY (product_id) REFERENCES Product (product_id);

ALTER TABLE Product ADD CONSTRAINT FKProduct928863 FOREIGN KEY (category_id) REFERENCES Category (category_id);
ALTER TABLE Card ADD CONSTRAINT FKCard322829 FOREIGN KEY (product_id) REFERENCES Product (product_id);
ALTER TABLE Wishlist ADD CONSTRAINT FKWishlist667360 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id);
ALTER TABLE Card ADD CONSTRAINT FKCard758069 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id);
ALTER TABLE Order_item ADD CONSTRAINT FKOrder_item654385 FOREIGN KEY (order_id) REFERENCES Order_list (order_id);
ALTER TABLE Order_list ADD CONSTRAINT FKOrder764662 FOREIGN KEY (payment_id) REFERENCES Payment (payment_id);
ALTER TABLE Order_list ADD CONSTRAINT FKOrder118974 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id);
ALTER TABLE Shipment ADD CONSTRAINT FKShipment979833 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id);
ALTER TABLE Order_list ADD CONSTRAINT FKOrder527765 FOREIGN KEY (shipment_id) REFERENCES Shipment (shipment_id);

