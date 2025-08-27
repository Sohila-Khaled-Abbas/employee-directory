CREATE VIEW employee_directory.v_employee_directory AS
SELECT e.employee_id, e.given_name, e.surname, e.title_en, e.title_fr,
       d.dept_name_en, d.dept_name_fr,
       o.org_name_en, o.org_name_fr,
       l.city_en, l.province_en, l.country_en, l.postal_code,
       e.email, e.telephone_number, e.building_en, e.floor, e.room
FROM employee_directory.employees e
LEFT JOIN employee_directory.departments d ON e.dept_acronym = d.dept_acronym
LEFT JOIN employee_directory.organizations o ON e.org_acronym = o.org_acronym
LEFT JOIN employee_directory.locations l ON e.postal_code = l.postal_code;
-- This view consolidates employee information with their respective department, organization, and location details for easy access.