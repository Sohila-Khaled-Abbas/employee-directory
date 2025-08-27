-- Step 2: Integration Schema
CREATE SCHEMA IF NOT EXISTS employee_directory;

-- 2.1 Departments
CREATE TABLE employee_directory.departments (
    dept_id SERIAL PRIMARY KEY,
    dept_acronym TEXT UNIQUE,
    dept_name_en TEXT,
    dept_name_fr TEXT
);

-- 2.2 Organizations
CREATE TABLE employee_directory.organizations (
    org_id SERIAL PRIMARY KEY,
    org_acronym TEXT UNIQUE,
    org_name_en TEXT,
    org_name_fr TEXT,
    org_structure_en TEXT,
    org_structure_fr TEXT
);

-- 2.3 Locations
CREATE TABLE employee_directory.locations (
    location_id SERIAL PRIMARY KEY,
    postal_code TEXT UNIQUE,
    street_address_en TEXT,
    street_address_fr TEXT,
    country_en TEXT,
    country_fr TEXT,
    province_en TEXT,
    province_fr TEXT,
    city_en TEXT,
    city_fr TEXT
);

-- 2.4 Employees
CREATE TABLE employee_directory.employees (
    employee_id SERIAL PRIMARY KEY,
    surname TEXT,
    given_name TEXT,
    initials TEXT,
    prefix_en TEXT,
    prefix_fr TEXT,
    suffix_en TEXT,
    suffix_fr TEXT,
    title_en TEXT,
    title_fr TEXT,
    telephone_number TEXT,
    fax_number TEXT,
    tdd_number TEXT,
    secure_telephone_number TEXT,
    secure_fax_number TEXT,
    alternate_telephone_number TEXT,
    email TEXT UNIQUE,
    admin_assistant TEXT,
    admin_assistant_phone TEXT,
    exec_assistant TEXT,
    exec_assistant_phone TEXT,
    dept_acronym TEXT REFERENCES employee_directory.departments(dept_acronym),
    org_acronym TEXT REFERENCES employee_directory.organizations(org_acronym),
    postal_code TEXT REFERENCES employee_directory.locations(postal_code),
    mailstop TEXT,
    building_en TEXT,
    building_fr TEXT,
    floor TEXT,
    room TEXT
);