-- 13. Show the patient id and the total number of admissions for patient_id 579.

SELECT patient_id, COUNT(*) as total_admissions 
FROM admissions
WHERE patient_id = '579'

-- 14. Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.

SELECT DISTINCT city
FROM patients
WHERE province_id = 'NS'