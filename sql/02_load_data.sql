-- Load data into employee_directory from CSV
-- Make sure you have placed the CSV file in the right path and granted permissions

COPY employee_directory(
    name_en,
    name_fr,
    job_title_en,
    job_title_fr,
    department_en,
    department_fr,
    email,
    phone,
    location,
    classification,
    employment_type,
    language
)
FROM '/path/to/employee_directory.csv'
DELIMITER ','
CSV HEADER
ENCODING 'UTF8';

-- Note: Ensure the CSV file is accessible from the database server's file system