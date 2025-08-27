# Step 3: ETL (Transform + Load)

-- 3.1 Populate Departments
INSERT INTO employee_directory.departments (dept_acronym, dept_name_en, dept_name_fr)
SELECT DISTINCT "Department Acronym", "Department Name (EN)", "Department Name (FR")
FROM staging.geds_raw
WHERE "Department Acronym" IS NOT NULL;

-- 3.2 Populate Organizations
INSERT INTO employee_directory.organizations (org_acronym, org_name_en, org_name_fr, org_structure_en, org_structure_fr)
SELECT DISTINCT "Organization Acronym", "Organization Name (EN)", "Organization Name (FR)",
       "Organization Structure (EN)", "Organization Structure (FR")
FROM staging.geds_raw
WHERE "Organization Acronym" IS NOT NULL;

-- 3.3 Populate locations
INSERT INTO employee_directory.locations (postal_code, street_address_en, street_address_fr,
                                          country_en, country_fr, province_en, province_fr, city_en, city_fr)
SELECT DISTINCT "Postal Code", "Street Address (EN)", "Street Address (FR)",
       "Country (EN)", "Country (FR)", "Province (EN)", "Province (FR)", "City (EN)", "City (FR")
FROM staging.geds_raw
WHERE "Postal Code" IS NOT NULL;
-- Note: Assuming postal_code is unique for locations

-- 3.4 Populate Employees
INSERT INTO employee_directory.employees (
    surname, given_name, initials, prefix_en, prefix_fr, suffix_en, suffix_fr,
    title_en, title_fr, telephone_number, fax_number, tdd_number,
    secure_telephone_number, secure_fax_number, alternate_telephone_number,
    email, admin_assistant, admin_assistant_phone, exec_assistant, exec_assistant_phone,
    dept_acronym, org_acronym, postal_code, mailstop, building_en, building_fr, floor, room
)
SELECT
    Surname, GivenName, Initials, "Prefix (EN)", "Prefix (FR)", "Suffix (EN)", "Suffix (FR)",
    "Title (EN)", "Title (FR)", "Telephone Number", "Fax Number", "TDD Number",
    "Secure Telephone Number", "Secure Fax Number", "Alternate Telephone Number",
    Email, "Administrative Assistant", "Administrative Assistant Telephone Number",
    "Executive Assistant", "Executive Assistant Telephone Number",
    "Department Acronym", "Organization Acronym", "Postal Code", Mailstop, "Building (EN)", "Building (FR)", Floor, Room
FROM staging.geds_raw;
-- Note: Foreign keys will ensure referential integrity with departments, organizations, and locations