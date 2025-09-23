-- 13. Show the patient id and the total number of admissions for patient_id 579.

SELECT patient_id, COUNT(*) as total_admissions 
FROM admissions
WHERE patient_id = '579'

-- 14. Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.

SELECT DISTINCT city
FROM patients
WHERE province_id = 'NS'

-- 15. Write a query to find the first_name, last name and birth date of patients who has height greater than 160 and weight greater than 70

SELECT first_name, last_name, birth_date
FROM patients
WHERE height > 160 and weight > 70

-- 16. Write a query to find list of patients first_name, last_name, and allergies where allergies are not null and are from the city of 'Hamilton'

SELECT first_name, last_name, allergies
FROM patients
WHERE allergies IS NOT NULL AND city = 'Hamilton'

----------------- MEDIUM QUESTIONS -------------------

-- 17. Show unique birth years from patients and order them by ascending.

SELECT DISTINCT YEAR(birth_date) AS birth_year
FROM patients
ORDER BY birth_year