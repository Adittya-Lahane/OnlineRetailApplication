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

-- Create ProductTags Table
CREATE TABLE ProductTags (
    tag_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    tag_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create ProductAttributes Table
CREATE TABLE ProductAttributes (
attribute_id INT AUTO_INCREMENT PRIMARY KEY,
product_id INT,
attribute_name VARCHAR(255) NOT NULL,
attribute_value VARCHAR(255) NOT NULL,
FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create Warehouses Table
CREATE TABLE Warehouses (
warehouse_id INT AUTO_INCREMENT PRIMARY KEY,
warehouse_name VARCHAR(255) NOT NULL,
location VARCHAR(255) NOT NULL
);

-- Create Inventory Table
CREATE TABLE Inventory (
inventory_id INT AUTO_INCREMENT PRIMARY KEY,
product_id INT,
warehouse_id INT,
quantity INT NOT NULL,
FOREIGN KEY (product_id) REFERENCES Products(product_id),
FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id)
);

-- Create ProductVariants Table
CREATE TABLE ProductVariants (
    variant_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    variant_name VARCHAR(255) NOT NULL,
    price_adjustment DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create OrderStatus Table
CREATE TABLE OrderStatus (
status_id INT AUTO_INCREMENT PRIMARY KEY,
status_name VARCHAR(50) NOT NULL
);

-- Create OrderHistory Table
CREATE TABLE OrderHistory (
order_history_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
status_id INT,
status_date DATETIME NOT NULL,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (status_id) REFERENCES OrderStatus(status_id)
);

-- Create Returns Table
CREATE TABLE Returns (
return_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
return_date DATE NOT NULL,
reason TEXT,
FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);







