Create Database:
CREATE TABLE Regions
( region_id INT PRIMARY KEY, region_name VARCHAR(25)
);
CREATE TABLE Countries (
country_id CHAR(2) PRIMARY KEY, country_name VARCHAR(40), region_id INT, FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);
CREATE TABLE Locations (
location_id INT PRIMARY KEY, street_address VARCHAR(25), postal_code VARCHAR(12), city VARCHAR(30), state_province VARCHAR(12), country_id CHAR(2), FOREIGN KEY (country_id) REFERENCES Countries(country_id)
);
CREATETABLE Jobs (
job_id VARCHAR(10) PRIMARY KEY, job_title VARCHAR(35), min_salary INT, max_salary INT
);
CREATE TABLE Departments (
department_id INT PRIMARY KEY, department_name VARCHAR(30), location_id INT, manager_id INT, FOREIGN KEY (location_id) REFERENCES Locations(location_id), FOREIGN KEY (manager_id) REFERENCES Employees(employee_id) ON DELETE SET NULL
);
CREATE TABLE Employees (
employee_id INT PRIMARY KEY, first_name VARCHAR(20), last_name VARCHAR(25), email VARCHAR(25), phone_number VARCHAR(20), hire_date DATE, job_id VARCHAR(10), department_id INT, manager_id INT, commission_pct FLOAT, FOREIGN KEY (job_id) REFERENCES Jobs(job_id), FOREIGN KEY (department_id) REFERENCES Departments(department_id), FOREIGN KEY (manager_id) REFERENCES Employees(employee_id) ON DELETE SET NULL
);
CREATE TABLE Job_History
( employee_id INT, start_date DATE, end_date DATE, job_id VARCHAR(10), department_id INT, FOREIGN KEY (employee_id) REFERENCES Employees(employee_id), FOREIGN KEY (job_id) REFERENCES Jobs(job_id), FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
• Values insert:
INSERT INTO Employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, department_id, manager_id, commission_pct) VALUES
(1, 'Ferdaus', 'Hossen', 'Ferdaus@company.com',
'01xxxxxx', '2024-05-15', 'SALES', 101, 2001, 0.20), (2, 'Keya', 'Keya',
'Keya@company.com', '01xxxxxx', '2024-05- 14', 'IT_PROG', 102, 1001, 0.15), (3, 'Md', 'ms', 'md@company.com', '01xxxxxx', '2024-05-13', 'MARKETING', 203, 1002, 0.20), (4, 'Rumi', 'riya', 'riya@company.com',
'01xxxxxx', '2024-05-12', 'FINANCE', 201, 2002, 0.05), (5, 'Rafi', 'Rafi', 'rafi@company.com',
'01xxxxxx', '2024-05-11', 'HR', 103, 1001, 0.00), (6, 'Rine', 'rinee', 'riya@company.com', '01xxxxxx', '2024-04-30', 'SALES', 102, 2002, 0.10), (7, 'Ridoy', 'Rody',
'ridoy@company.com', '01xxxxxx', '2024- 04-29', 'IT_PROG', 101, 1002, 0.15), (8, 'taj', 'taju',
'taj@company.com', '01xxxxxx', '2024- 04-28', 'MARKETING', 203, 1003, 0.20), (9, 'nuru', 'nare',
'nuru@company.com', '01xxxxxx', '2024- 04-27', 'FINANCE', 202, 2001, 0.05), (10, 'rupa', 'rumi',
'Rupa@company.com','01xxxxxx','2024-04- 26', 'HR', 103, 1003, 0.00);
