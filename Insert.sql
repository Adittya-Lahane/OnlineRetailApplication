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

-- Inserting 20 entries into the "Products" table with random data
INSERT INTO Products (product_name, description, price, stock_quantity, category_id) VALUES
('Smartphone', 'High-end smartphone with advanced features', 799.99, 50, 1),
('Laptop', 'Powerful laptop for professional use', 1299.99, 30, 1),
('T-shirt', 'Comfortable cotton t-shirt for everyday wear', 19.99, 100, 2),
('Jeans', 'Classic denim jeans for men', 49.99, 60, 2),
('Toaster', 'Stainless steel toaster for quick breakfasts', 29.99, 40, 3),
('Coffee Maker', 'Automatic coffee maker with built-in grinder', 79.99, 20, 3),
('Board Game', 'Family board game for hours of fun', 24.99, 75, 4),
('Action Figure', 'Collectible action figure from popular movie', 9.99, 50, 4),
('Novel', 'Bestselling novel by a renowned author', 12.99, 90, 5),
('Cookbook', 'Cookbook with a variety of delicious recipes', 17.99, 70, 5),
('Soccer Ball', 'Durable soccer ball for outdoor play', 14.99, 60, 6),
('Yoga Mat', 'Non-slip yoga mat for fitness and relaxation', 19.99, 30, 6),
('Shampoo', 'Moisturizing shampoo for healthy hair', 7.99, 120, 7),
('Perfume', 'Elegant fragrance for special occasions', 39.99, 50, 7),
('Sofa', 'Comfortable sofa for your living room', 499.99, 10, 8),
('Dining Table', 'Elegant dining table for family gatherings', 299.99, 15, 8),
('Diamond Necklace', 'Exquisite diamond necklace for special occasions', 999.99, 5, 9),
('Gold Earrings', 'Beautiful gold earrings with gemstones', 299.99, 10, 9),
('Chocolate Bars', 'Assorted chocolate bars for sweet cravings', 4.99, 200, 10),
('Red Wine', 'High-quality red wine for celebrations', 24.99, 40, 10);

UPDATE Products set product_name='Earphones' where product_id = 1;


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

-- Inserting 10 entries into the "Orders" table
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2023-09-01', 799.99),
(2, '2023-09-02', 2299.97),
(3, '2023-09-03', 109.98),
(4, '2023-09-04', 94.92),
(5, '2023-09-05', 200.95),
(6, '2023-09-06', 39.93),
(7, '2023-09-07', 24.98),
(8, '2023-09-08', 179.91),
(9, '2023-09-09', 219.96),
(10, '2023-09-10', 329.91);

-- Inserting 10 entries into the "Order_Items" table
INSERT INTO Order_Items (order_id, product_id, quantity, unit_price) VALUES
(2, 2, 1, 1299.99),
(3, 3, 3, 19.99),
(4, 4, 2, 49.99),
(5, 5, 1, 29.99),
(6, 6, 1, 79.99),
(7, 7, 2, 24.99),
(8, 8, 3, 9.99),
(9, 9, 1, 12.99),
(10, 10, 2, 17.99);

-- Inserting 10 entries into the "Reviews" table
INSERT INTO Reviews (product_id, customer_id, rating, comment, review_date) VALUES
(1, 1, 5, 'Great smartphone, highly recommended!', '2023-09-15'),
(2, 2, 4, 'Powerful laptop for my work, but a bit heavy.', '2023-09-16'),
(3, 3, 5, 'Comfortable t-shirt, love the color.', '2023-09-17'),
(4, 4, 4, 'Good quality jeans, fits perfectly.', '2023-09-18'),
(5, 5, 5, 'The toaster works great, easy to use.', '2023-09-19'),
(6, 6, 3, 'Coffee maker is good, but a bit noisy.', '2023-09-20'),
(7, 7, 5, 'Awesome board game, we had so much fun!', '2023-09-21'),
(8, 8, 4, 'The action figure looks cool on my desk.', '2023-09-22'),
(9, 9, 5, 'Could not put the novel down, a must-read!', '2023-09-23'),
(10, 10, 3, 'The cookbook has some great recipes.', '2023-09-24');

-- Inserting 10 entries into the "Payments" table
INSERT INTO Payments (order_id, payment_date, payment_method, amount) VALUES
(1, '2023-09-15', 'Credit Card', 799.99),
(2, '2023-09-16', 'PayPal', 1299.99),
(3, '2023-09-17', 'Debit Card', 59.97),
(4, '2023-09-18', 'PayPal', 99.98),
(5, '2023-09-19', 'Zelle', 29.99),
(6, '2023-09-20', 'Credit Card', 79.99),
(7, '2023-09-21', 'PayPal', 49.98),
(8, '2023-09-22', 'Credit Card', 29.97),
(9, '2023-09-23', 'PayPal', 25.98),
(10, '2023-09-24', 'Credit Card', 35.98);

INSERT INTO ProductTags (product_id, tag_name) VALUES
(1, 'High-End'),
(2, 'Professional'),
(3, 'Casual Wear'),
(4, 'Denim'),
(5, 'Kitchen Appliances'),
(6, 'Coffee Lover'),
(7, 'Family Fun'),
(8, 'Collectibles'),
(9, 'Bestseller'),
(10, 'Cookbook');

-- Inserting 10 entries into the "ProductAttributes" table
INSERT INTO ProductAttributes (product_id, attribute_name, attribute_value) VALUES
(1, 'Color', 'White'),
(2, 'Color', 'Black'),
(3, 'Color', 'Silver'),
(4, 'Material', 'Cotton'),
(5, 'Fit', 'Slim Fit'),
(6, 'Material', 'Stainless Steel'),
(7, 'Features', 'Built-in Grinder'),
(8, 'Age Group', 'Family'),
(9, 'Type', 'Action Figure'),
(10, 'Genre', 'Fiction'),
(11, 'Cuisine', 'Various');

-- Inserting 10 entries into the "ShippingAddresses" table
INSERT INTO ShippingAddresses (customer_id, address_line1, address_line2, city, state, zip_code) VALUES
(1, '123 Main St', '2408 ', 'Mamba St', 'CA', '90001'),
(2, '111', 'President Blvd', 'New York', 'NY', '10001'),
(3, '333', 'Main St', 'San Francisco', 'CA', '94101'),
(4, '1515 Center St', 'Unit 3', 'Chicago', 'IL', '60601'),
(5, '202 Maple St', NULL, ' Dynasty Blvd', 'TX', '77001'),
(6, '123 ESPN St', 'Apt 5C', 'Miami', 'FL', '33101'),
(7, '3030 Splash Bvld', NULL, 'Seattle', 'WA', '98101'),
(8, '1395 Coit Rd', 'Suite 101', 'Dallas', 'TX', '75201'),
(9, '111 Ball St', NULL, 'Boston', 'MA', '02101'),
(10, '6969 Haiyaaa St', 'Unit 7', 'San Diego', 'CA', '92101');

-- Inserting 10 entries into the "Cart" table
INSERT INTO Cart (customer_id, product_id, quantity) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 2),
(5, 5, 1),
(6, 6, 4),
(7, 7, 2),
(8, 8, 3),
(9, 9, 1),
(10, 10, 2);

-- Inserting 10 entries into the "Warehouses" table
INSERT INTO Warehouses (warehouse_name, location) VALUES
('Main Warehouse', 'Los Angeles, CA'),
('East Warehouse', 'New York, NY'),
('West Warehouse', 'San Francisco, CA'),
('Midwest Warehouse', 'Chicago, IL'),
('South Warehouse', 'Houston, TX'),
('Florida Warehouse', 'Miami, FL'),
('Northwest Warehouse', 'Seattle, WA'),
('Texas Warehouse', 'Dallas, TX'),
('New England Warehouse', 'Boston, MA'),
('California Warehouse', 'San Diego, CA');

-- Inserting 10 entries into the "Inventory" table
INSERT INTO Inventory (product_id, warehouse_id, quantity) VALUES
(1, 1, 30),
(2, 2, 20),
(3, 3, 40),
(4, 4, 25),
(5, 5, 50),
(6, 6, 15),
(7, 7, 35),
(8, 8, 10),
(9, 9, 5),
(10, 10, 60);

-- Inserting 10 entries into the "ProductVariants" table
INSERT INTO ProductVariants (product_id, variant_name, price_adjustment, stock_quantity) VALUES
(1, '24HR Battery',0,40),
(1, '36HR Battery',5,60),
(2, '64GB', 0, 30),
(2, '128GB', 100, 20),
(3, '13-inch', 0, 10),
(3, '15-inch', 200, 20),
(4, 'Small', 0, 30),
(4, 'Medium', 10, 15),
(5, 'Blue', 0, 20),
(5, 'Black', 5, 40),
(6, 'Two-Slice', 0, 15),
(6, 'Four-Slice', 10, 10);

-- Inserting 10 entries into the "OrderStatus" table
INSERT INTO OrderStatus (status_name) VALUES
('Processing'),
('Shipped'),
('Delivered'),
('Cancelled'),
('Returned'),
('Refunded'),
('On Hold'),
('Completed'),
('Out for Delivery');

-- Inserting 10 entries into the "OrderHistory" table
INSERT INTO OrderHistory (order_id, status_id, status_date) VALUES
(1, 1, '2023-10-15 09:00:00'),
(1, 2, '2023-10-16 10:30:00'),
(2, 1, '2023-10-15 11:45:00'),
(2, 3, '2023-10-16 14:15:00'),
(3, 1, '2023-10-15 16:20:00'),
(3, 3, '2023-10-17 08:45:00'),
(4, 1, '2023-10-15 17:30:00'),
(4, 4, '2023-10-18 12:10:00'),
(5, 1, '2023-10-15 18:15:00'),
(5, 2, '2023-10-19 16:30:00');

INSERT INTO OrderHistory (order_id, status_id, status_date) VALUES
(10, 6, '2024-10-15 09:00:00'),
(8, 6, '2024-10-16 10:30:00');

-- Inserting 10 entries into the "Returns" table
INSERT INTO Returns (order_id, return_date, reason) VALUES
(10, '2024-10-15', 'Defective'),
(8, '2024-10-16', 'Defective');
