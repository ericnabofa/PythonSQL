CREATE TABLE maintenance_logs (
    equipment_id SERIAL PRIMARY KEY,
    hours_used INT,
    last_maintenance_date DATE,
    failure_date DATE
);

INSERT INTO maintenance_logs (hours_used, last_maintenance_date, failure_date)
VALUES
(200, '2023-01-01', NULL),
(400, '2023-02-15', '2023-03-01'),
(300, '2023-03-10', NULL),
(600, '2023-04-20', '2023-05-01'),
(250, '2023-05-15', NULL),
(700, '2023-06-25', '2023-07-05'),
(180, '2023-07-10', NULL),
(450, '2023-08-01', NULL),
(800, '2023-08-15', '2023-08-20'),
(320, '2023-09-01', NULL),
(550, '2023-09-25', NULL),
(900, '2023-10-05', '2023-10-15'),
(280, '2023-10-20', NULL),
(620, '2023-11-01', '2023-11-10'),
(500, '2023-11-20', NULL),
(750, '2023-12-05', '2023-12-15'),
(200, '2024-01-01', NULL),
(450, '2024-02-01', NULL),
(680, '2024-02-25', '2024-03-05'),
(800, '2024-03-10', '2024-03-20');


CREATE TABLE usage_stats (
    equipment_id SERIAL PRIMARY KEY,
    usage_hours INT,
    last_check_date DATE
);

INSERT INTO usage_stats (usage_hours, last_check_date)
VALUES
(200, '2023-01-10'),
(400, '2023-02-12'),
(350, '2023-03-15'),
(500, '2023-04-20'),
(180, '2023-05-01'),
(300, '2023-06-18'),
(420, '2023-07-10'),
(250, '2023-08-05'),
(600, '2023-09-10'),
(320, '2023-10-02'),
(550, '2023-11-01'),
(720, '2023-12-01'),
(400, '2024-01-15'),
(350, '2024-02-10'),
(480, '2024-03-05'),
(520, '2024-04-10'),
(600, '2024-05-02'),
(280, '2024-06-15'),
(420, '2024-07-20'),
(550, '2024-08-01');


CREATE TABLE failure_records (
    failure_id SERIAL PRIMARY KEY,
    equipment_id INT,
    failure_date DATE,
    cause VARCHAR(100)
);

INSERT INTO failure_records (equipment_id, failure_date, cause)
VALUES
(1, '2023-01-15', 'Overheating'),
(2, '2023-03-01', 'Worn-out belt'),
(3, '2023-04-05', 'Lubrication failure'),
(4, '2023-05-10', 'Electrical fault'),
(5, '2023-06-15', 'Bearing wear'),
(6, '2023-07-01', 'Corrosion'),
(7, '2023-08-10', 'Hydraulic leak'),
(8, '2023-09-05', 'Overuse'),
(9, '2023-10-12', 'Alignment issue'),
(10, '2023-11-01', 'Motor failure'),
(11, '2023-12-05', 'Blockage'),
(12, '2024-01-20', 'Sensor malfunction'),
(13, '2024-02-15', 'Operator error'),
(14, '2024-03-05', 'Heat damage'),
(15, '2024-04-10', 'Excessive vibration'),
(16, '2024-05-01', 'Improper installation'),
(17, '2024-06-18', 'Wiring issue'),
(18, '2024-07-25', 'Oil contamination'),
(19, '2024-08-10', 'Structural fatigue'),
(20, '2024-08-30', 'Coolant failure');
