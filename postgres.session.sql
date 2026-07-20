-- 1. CLEANUP (Optional)
-- This drops the table if it already exists, allowing you to re-run the script anytime to reset the data.
DROP TABLE IF EXISTS employees;

-- 2. CREATE THE TABLE
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    hire_date DATE,
    salary NUMERIC(10, 2),
    skills TEXT[]
);

-- 3. INSERT SAMPLE DATA
INSERT INTO employees (first_name, last_name, department, hire_date, salary, skills) VALUES
('Alex', 'Mercer', 'Engineering', '2021-03-15', 85000.00, '{"SQL", "Python", "Docker"}'),
('Maya', 'Lin', 'Engineering', '2023-06-01', 92000.00, '{"Go", "Kubernetes", "PostgreSQL"}'),
('David', 'Ross', 'Marketing', '2022-11-10', 64000.00, '{"SEO", "Copywriting", "Analytics"}'),
('Elena', 'Petrov', 'Sales', '2020-01-22', 78000.00, '{"Negotiation", "CRM", "SQL"}'),
('Marcus', 'Vance', 'HR', '2024-02-14', 58000.00, '{"Recruiting", "Onboarding"}'),
('Chloe', 'Zhao', 'Engineering', '2022-08-19', 105000.00, '{"Python", "Machine Learning", "AWS"}'),
('Jordan', 'Blake', 'Sales', '2023-10-05', 71000.00, '{"Cold Calling", "Salesforce"}');

-- 4. VERIFY THE DATA
SELECT * FROM employees where department = 'Sales';