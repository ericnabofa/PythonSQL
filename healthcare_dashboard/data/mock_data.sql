CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    condition VARCHAR(50),
    admission_date DATE,
    discharge_date DATE
);

INSERT INTO patients (age, gender, condition, admission_date, discharge_date)
VALUES
(30, 'Male', 'Diabetes', '2023-01-10', '2023-01-15'),
(45, 'Female', 'Hypertension', '2023-02-01', '2023-02-10'),
(60, 'Male', 'Cancer', '2023-03-12', '2023-03-20'),
(25, 'Female', 'Asthma', '2023-04-15', '2023-04-18'),
(50, 'Male', 'Hypertension', '2023-05-10', '2023-05-20'),
(35, 'Female', 'Diabetes', '2023-06-01', '2023-06-05'),
(40, 'Male', 'Asthma', '2023-07-10', '2023-07-12'),
(28, 'Female', 'Cancer', '2023-08-01', '2023-08-15'),
(65, 'Male', 'Diabetes', '2023-09-10', '2023-09-20'),
(55, 'Female', 'Hypertension', '2023-10-01', '2023-10-10'),
(32, 'Male', 'Asthma', '2023-11-10', '2023-11-12'),
(46, 'Female', 'Cancer', '2023-12-01', '2023-12-15'),
(70, 'Male', 'Hypertension', '2024-01-01', '2024-01-10'),
(29, 'Female', 'Asthma', '2024-02-10', '2024-02-15'),
(50, 'Male', 'Diabetes', '2024-03-01', '2024-03-10'),
(42, 'Female', 'Hypertension', '2024-04-10', '2024-04-20'),
(34, 'Male', 'Cancer', '2024-05-10', '2024-05-18'),
(58, 'Female', 'Asthma', '2024-06-01', '2024-06-05'),
(61, 'Male', 'Cancer', '2024-07-15', '2024-07-25'),
(48, 'Female', 'Diabetes', '2024-08-01', '2024-08-10');


CREATE TABLE treatments (
    treatment_id SERIAL PRIMARY KEY,
    patient_id INT,
    treatment_type VARCHAR(50),
    cost DECIMAL(10, 2),
    treatment_date DATE
);

INSERT INTO treatments (patient_id, treatment_type, cost, treatment_date)
VALUES
(1, 'Insulin Therapy', 150.00, '2023-01-12'),
(2, 'Blood Pressure Monitoring', 200.00, '2023-02-03'),
(3, 'Chemotherapy', 1000.00, '2023-03-14'),
(4, 'Inhaler Therapy', 75.00, '2023-04-16'),
(5, 'Medication Adjustment', 120.00, '2023-05-12'),
(6, 'Dietary Counseling', 100.00, '2023-06-02'),
(7, 'Nebulization', 50.00, '2023-07-11'),
(8, 'Radiation Therapy', 1500.00, '2023-08-05'),
(9, 'Blood Sugar Test', 30.00, '2023-09-15'),
(10, 'ECG', 80.00, '2023-10-02'),
(11, 'Oxygen Therapy', 300.00, '2023-11-11'),
(12, 'Tumor Surgery', 5000.00, '2023-12-04'),
(13, 'Physical Therapy', 200.00, '2024-01-03'),
(14, 'Asthma Control', 90.00, '2024-02-12'),
(15, 'Regular Checkup', 70.00, '2024-03-06'),
(16, 'Dialysis', 400.00, '2024-04-13'),
(17, 'Surgical Biopsy', 2500.00, '2024-05-14'),
(18, 'Rehabilitation', 500.00, '2024-06-02'),
(19, 'Wound Care', 150.00, '2024-07-18'),
(20, 'Counseling Session', 100.00, '2024-08-08');



CREATE TABLE hospital_resources (
    resource_id SERIAL PRIMARY KEY,
    resource_type VARCHAR(50),
    availability INT,
    last_maintenance_date DATE
);

INSERT INTO hospital_resources (resource_type, availability, last_maintenance_date)
VALUES
('Ventilator', 10, '2023-01-01'),
('Oxygen Tank', 50, '2023-01-10'),
('MRI Machine', 2, '2023-02-15'),
('CT Scanner', 3, '2023-03-05'),
('Hospital Beds', 100, '2023-03-20'),
('Defibrillator', 8, '2023-04-12'),
('Ultrasound Machine', 5, '2023-05-07'),
('X-Ray Machine', 4, '2023-05-25'),
('Wheelchair', 20, '2023-06-01'),
('Blood Pressure Monitor', 15, '2023-06-15'),
('Syringe Pump', 12, '2023-07-05'),
('ECG Machine', 6, '2023-07-20'),
('Infusion Pump', 10, '2023-08-10'),
('Patient Monitor', 8, '2023-09-01'),
('Surgical Instruments', 50, '2023-09-18'),
('Ambulance', 5, '2023-10-01'),
('Sterilizer', 4, '2023-10-15'),
('Dialysis Machine', 3, '2023-11-05'),
('Laboratory Equipment', 15, '2023-11-20'),
('Rehabilitation Equipment', 10, '2023-12-01');
