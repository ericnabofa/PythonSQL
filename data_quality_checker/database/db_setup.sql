CREATE TABLE sales_data (
    sale_id SERIAL PRIMARY KEY,
    customer_id INT,
    product_id INT,
    amount DECIMAL(10, 2),
    sale_date DATE
);

INSERT INTO sales_data (customer_id, product_id, amount, sale_date)
VALUES
(1, 101, 150.00, '2023-01-10'),
(2, 102, 200.00, '2023-02-15'),
(3, 103, 250.00, '2023-03-20'),
(4, 104, 300.00, '2023-04-25'),
(5, 105, 350.00, '2023-05-30'),
(6, 106, 400.00, '2023-06-05'),
(7, 107, 450.00, '2023-07-10'),
(8, 108, 500.00, '2023-08-15'),
(9, 109, 550.00, '2023-09-20'),
(10, 110, 600.00, '2023-10-25'),
(11, 111, 650.00, '2023-11-30'),
(12, 112, 700.00, '2023-12-05'),
(13, 113, 750.00, '2024-01-10'),
(14, 114, 800.00, '2024-02-15'),
(15, 115, 850.00, '2024-03-20'),
(16, 116, 900.00, '2024-04-25'),
(17, 117, 950.00, '2024-05-30'),
(18, 118, 1000.00, '2024-06-05'),
(19, 119, 1050.00, '2024-07-10'),
(20, 120, 1100.00, '2024-08-15');


CREATE TABLE customer_data (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    date_of_birth DATE,
    join_date DATE
);

INSERT INTO customer_data (name, email, date_of_birth, join_date)
VALUES
('John Doe', 'john@example.com', '1985-01-15', '2023-01-01'),
('Jane Smith', 'jane@example.com', '1990-05-20', '2023-02-01'),
('Alice Brown', 'alice@example.com', '1988-03-25', '2023-03-01'),
('Bob Johnson', 'bob@example.com', '1995-04-10', '2023-04-01'),
('Charlie Davis', 'charlie@example.com', '1982-07-08', '2023-05-01'),
('Eve Wilson', 'eve@example.com', '1992-08-12', '2023-06-01'),
('Frank Thomas', 'frank@example.com', '1980-09-15', '2023-07-01'),
('Grace Lee', 'grace@example.com', '1986-10-20', '2023-08-01'),
('Hank Green', 'hank@example.com', '1983-11-25', '2023-09-01'),
('Ivy King', 'ivy@example.com', '1991-12-05', '2023-10-01'),
('Jack White', 'jack@example.com', '1984-01-15', '2023-11-01'),
('Karen Black', 'karen@example.com', '1987-02-18', '2023-12-01'),
('Leo Brown', 'leo@example.com', '1993-03-25', '2024-01-01'),
('Mia Taylor', 'mia@example.com', '1990-04-10', '2024-02-01'),
('Noah Johnson', 'noah@example.com', '1995-05-05', '2024-03-01'),
('Olivia Moore', 'olivia@example.com', '1994-06-12', '2024-04-01'),
('Paul Walker', 'paul@example.com', '1989-07-20', '2024-05-01'),
('Quinn Adams', 'quinn@example.com', '1992-08-25', '2024-06-01'),
('Rachel Scott', 'rachel@example.com', '1985-09-30', '2024-07-01'),
('Sam Carter', 'sam@example.com', '1988-10-10', '2024-08-01');
