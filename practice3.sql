-- 21. Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. Show results ordered ascending by allergies then by first_name then by last_name.

SELECT
  first_name,
  last_name,
  allergies
FROM patients
WHERE
  allergies = 'Penicillin'
  OR allergies = 'Morphine'
ORDER BY
  allergies,
  first_name,
  last_name

-- 22. Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.

SELECT
  patient_id,
  diagnosis
FROM admissions
GROUP BY
  patient_id,
  diagnosis
HAVING COUNT(*) > 1

-- 23. Show the city and the total number of patients in the city.
-- Order from most to least patients and then by city name ascending.

SELECT city, COUNT(*) AS num_patients 
FROM patients
GROUP BY city
ORDER BY num_patients DESC, city ASC

-- 24. Show first name, last name and role of every person that is either patient or doctor.
-- The roles are either "Patient" or "Doctor"

SELECT
  first_name,
  last_name,
  'Patient' AS role
FROM patients
UNION ALL
SELECT
  first_name,
  last_name,
  'Doctor' AS role
FROM doctors

