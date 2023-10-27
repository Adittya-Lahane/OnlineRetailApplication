CREATE database OnlineRetailApplication;
use OnlineRetailApplication;
SHOW Tables;

-- Create Categories Table
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);



-- Create Products Table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15),
    address TEXT
);

-- Create Orders Table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Order_Items Table
CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create Reviews Table
CREATE TABLE Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating INT NOT NULL,
    comment TEXT,
    review_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create ShippingAddresses Table
CREATE TABLE ShippingAddresses (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    address_line1 VARCHAR(255) NOT NULL,
    address_line2 VARCHAR(255),
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    zip_code VARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Payments Table
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Create Coupons Table
CREATE TABLE Coupons (
    coupon_id INT AUTO_INCREMENT PRIMARY KEY,
    coupon_code VARCHAR(20) NOT NULL,
    discount_percentage DECIMAL(5, 2) NOT NULL,
    valid_from DATE NOT NULL,
    valid_to DATE NOT NULL
);

-- Create Cart Table
CREATE TABLE Cart (
    cart_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


-- Insert Statements


INSERT INTO Categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home & Kitchen'),
(4, 'Toys & Games'),
(5, 'Books'),
(6, 'Sports & Outdoors'),
(7, 'Health & Beauty'),
(8, 'Furniture'),
(9, 'Jewelry'),
(10, 'Food & Beverages');

INSERT INTO Customers values
(1, 'Kobe', 'Bryant', 'kb24@nba.com', '824-224-2424', '2408 Mamba St'),
(2, 'Barack', 'Obama', 'potus44@whitehouse.com', '444-242-2008', '111 President Blvd'),
(3, 'Chris', 'Pines', 'cpines@gmail.com', '111-222-3333', '333 Main St'),
(4, 'Shaquille', 'O-Neal', 'bigshaq@nba.com', '348-234-3432', '1515 Center St'),
(5, 'Phil', 'Jackson', '11rings@nba.com', '111-111-1111', '1111 Dynasty Blvd'),
(6, 'Stephen', 'Smith', 'stephena@espn.com', '888-777-6666', '123 ESPN St'),
(7, 'Stephen', 'Curry', 'chefcurry@swish.edu', '303-303-3030', '3030 Splash Bvld'),
(8, 'Jimmy', 'Cheng', 'jcheng@utdallas.edu', '214-777-9999', '1395 Coit Rd'),
(9, 'Kenny', 'Smith', 'kennysmith@nbaontnt.com', '222-555-8888', '111 Ball St'),
(10, 'Nigel', 'Ng', 'haiyaaaaa@gmail.com', '111-333-5555' , '6969 Haiyaaa St');

INSERT INTO coupons VALUES
(1001, 'ABCD30', 25.3, '2023-09-15', '2023-12-15'),
(1002, 'LAL824', 24.8, '2023-8-24', '2024-2-24'),
(1003, 'MEME69', 69.69, '2023-10-31', '2023-12-31'),
(1004, 'MOO8', 20.5, '2023-8-5', '2023-10-7'),
(1005, 'EEE4', 17.3, '2022-12-31', '2023-12-31'),
(1006, 'AAAH1', 15.15, '2023-10-7', '2023-11-7'),
(1007, 'SHHH1', 11.11, '2023-10-9', '2023-12-12'),
(1008, 'HIYA24', 20, '2023-10-12', '2023-12-12'),
(1009, 'LOLOL69', 69, '2023-10-10', '2023-12-10'),
(1010, 'HAHAHA66', 23, '2023-9-23', '2023-12-23');




select * from categories;
select * from customers;
select * from coupons;






