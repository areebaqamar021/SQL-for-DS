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

-- 16. Show unique first names from the patients table which only occurs once in the list.

-- For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. If only 1 person is named 'Leo' then include them in the output.

SELECT first_name
FROM patients
GROUP BY first_name
HAVING COUNT(*) = 1

-- 17. Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.

SELECT patient_id, first_name
FROM patients
WHERE first_name LIKE "s____%s"

-- 18. Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.

-- Primary diagnosis is stored in the admissions table.

SELECT patients.patient_id, first_name, last_name 
FROM patients
JOIN admissions ON admissions.patient_id = patients.patient_id
WHERE admissions.diagnosis = 'Dementia'

-- 19. Display every patient's first_name.
-- Order the list by the length of each name and then by alphabetically.

SELECT first_name
FROM patients
ORDER BY lEN(first_name), first_name

-- 20. Show the total amount of male patients and the total amount of female patients in the patients table.
-- Display the two results in the same row.

SELECT (
    SELECT COUNT(*)
    FROM patients
    WHERE
      gender = 'M'
  ) AS 'male_patients',
  (
    SELECT COUNT(*)
    FROM patients
    WHERE
      gender = 'F'
  ) AS 'female_patients'

