use bansach


INSERT INTO Customer( first_name, last_name, email, password, address, phone_number) VALUES ( N'Nguyễn', N'Nam', 'aotr@gmail.com', '123456', N'Hà Nội', '0849838232');
INSERT INTO Customer( first_name, last_name, email, password, address, phone_number) VALUES ( N'Nguyễn', N'Hằng', 'hehe@gmail.com', '123456', N'Hà Nội', '0849823422');
INSERT INTO Customer( first_name, last_name, email, password, address, phone_number) VALUES ( N'Trần', N'Thanh', 'aotr1@gmail.com', '123456', N'Hà Nội', '0849818232');
INSERT INTO Customer( first_name, last_name, email, password, address, phone_number) VALUES ( N'Hoàng', N'Nam', 'aotr2@gmail.com', '123456', N'Hà Nội', '0849848232');
INSERT INTO Customer( first_name, last_name, email, password, address, phone_number) VALUES ( N'Nguyễn', N'Trung', 'aotr3@gmail.com', '123456', N'Hà Nội', '0859838232');
INSERT INTO Customer( first_name, last_name, email, password, address, phone_number) VALUES ( N'Lý', N'Vinh', 'hehe1@gmail.com', '123456', N'Hà Nội', '0849558232');
INSERT INTO Customer( first_name, last_name, email, password, address, phone_number) VALUES ( N'Ma', N'Đại', 'aotr5@gmail.com', '123456', N'Hà Nội', '0849838532');
INSERT INTO Customer( first_name, last_name, email, password, address, phone_number) VALUES ( N'Nguyễn', N'Linh', 'aot2r@gmail.com', '123456', N'Hà Nội', '0859838232');
INSERT INTO Customer( first_name, last_name, email, password, address, phone_number) VALUES ( N'Nguyễn', N'Thảo', 'aotr5@gmail.com', '123456', N'Hà Nội', '0849538232');
INSERT INTO Customer( first_name, last_name, email, password, address, phone_number) VALUES ( N'Hoàng', N'Phương', 'aotr1@gmail.com', '123456', N'Hà Nội', '084538232');
INSERT INTO Customer( first_name, last_name, email, password, address, phone_number) VALUES ( N'Nguyễn', N'Hằng', 'aot4r@gmail.com', '123456', N'Hà Nội', '0845838232');

inSERT INTO Shipment( shipment_date, address, city, state, country, zip_code, customer_id) VALUES ( '20/02/2003','Cầu Giấy', 'Hà Nội','Đang giao' , 'Việt Nam', '10000', 1);
INSERT INTO Shipment( shipment_date, address, city, state, country, zip_code, customer_id) VALUES ( '20/02/2003',N'Cầu Giấy', N'Hà Nội',N'Đang giao' , N'Việt Nam', '10000', 1);
INSERT INTO Shipment( shipment_date, address, city, state, country, zip_code, customer_id) VALUES ( '20/02/2003',N'Hải Hậu', N'Nam Định',N'Đang giao' , N'Việt Nam', '10000', 1);
INSERT INTO Shipment( shipment_date, address, city, state, country, zip_code, customer_id) VALUES ( '20/02/2003',N'Lý Thường Kiệt', N'Hà Nội',N'Đang giao' , N'Việt Nam', '10000', 1);
INSERT INTO Shipment( shipment_date, address, city, state, country, zip_code, customer_id) VALUES ( '20/02/2003',N'Cầu Giấy', N'Hà Nội',N'Đang giao' , N'Việt Nam', '10000', 1);



INSERT INTO Payment( payment_date, payment_method, amount, customer_id) VALUES ('20/10/2024', 'bank', '5', 1);
INSERT INTO Payment( payment_date, payment_method, amount, customer_id) VALUES ('23/10/2024', 'bank', '10', 2);
INSERT INTO Payment( payment_date, payment_method, amount, customer_id) VALUES ('26/10/2024', 'bank', '2', 4);
INSERT INTO Payment( payment_date, payment_method, amount, customer_id) VALUES ('26/11/2024', 'bank', '7', 3);
INSERT INTO Payment( payment_date, payment_method, amount, customer_id) VALUES ('26/12/2024', 'bank', '2', 5);

INSERT INTO Category( name) VALUES ( N'Đồ dùng học tập');
INSERT INTO Category( name) VALUES ( N'Sách học tập');
INSERT INTO Category( name) VALUES ( N'Sách truyện');

INSERT INTO Product( SKU, photo, description, price, stock, category_id) VALUES (N'Bút chì', 'anh1.png', N'Đây là bút chì', 2000, '20%', 1);
INSERT INTO Product( SKU, photo, description, price, stock, category_id) VALUES (N'Bé lên bà', 'anh3.png', N'Đây là sacgs', 222000, '20%', 2);
INSERT INTO Product( SKU, photo, description, price, stock, category_id) VALUES (N'Thước kẻ', 'anh2.png', N'Đây là thước kẻ', 2000, '20%', 1);

INSERT INTO Order_list( order_date, total_price, shipment_id, customer_id, payment_id) VALUES ('12/10/2024', '100000', 2, 1, 2);
INSERT INTO Order_list( order_date, total_price, shipment_id, customer_id, payment_id) VALUES ('12/10/2024', '100000', 3, 2, 2);

INSERT INTO Card(quantile, customer_id, product_id) VALUES (5, 1, 2);
INSERT INTO Card(quantile, customer_id, product_id) VALUES (3, 1, 3);
INSERT INTO Card(quantile, customer_id, product_id) VALUES (1, 5, 1);

INSERT INTO Wishlist(quantile,customer_id, product_id) VALUES (2, 1, 1);
INSERT INTO Wishlist(quantile,customer_id, product_id) VALUES (2, 2, 2);
INSERT INTO Wishlist(quantile,customer_id, product_id) VALUES (3, 4, 1);

INSERT INTO Order_item(quantity, price, order_id, product_id) VALUES ( 3, 400000, 1, 1);
INSERT INTO Order_item(quantity, price, order_id, product_id) VALUES ( 3, 400000, 1, 2);