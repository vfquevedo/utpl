
DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    Order_ID INTEGER PRIMARY KEY,
    Product TEXT,
    Quantity_Ordered INTEGER,
    Price_Each REAL,
    Order_Date TEXT,
    City TEXT
);

-- Insert sample data
INSERT INTO sales (Order_ID, Product, Quantity_Ordered, Price_Each, Order_Date, City) VALUES
(101, 'Laptop', 1, 1200.00, '2023-01-15', 'Quito'),
(102, 'Mouse', 2, 25.00, '2023-01-17', 'Guayaquil'),
(103, 'Keyboard', 1, 45.00, '2023-02-01', 'Quito'),
(104, 'Monitor', 1, 300.00, '2023-02-03', 'Cuenca'),
(105, 'Mouse', 3, 25.00, '2023-03-10', 'Guayaquil'),
(106, 'Laptop', 2, 1200.00, '2023-03-15', 'Quito');
