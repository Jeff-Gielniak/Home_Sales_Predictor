SELECT *
FROM realtor_cleaned
WHERE city = 'Omaha' AND state = 'Nebraska';

SELECT state, COUNT(*)
FROM realtor_cleaned
GROUP BY state
ORDER BY count DESC;

SELECT city, COUNT(*)
FROM realtor_cleaned
WHERE state = 'Florida'
GROUP BY city
ORDER BY count DESC;

SELECT zip_code, COUNT(*)
FROM realtor_cleaned
WHERE state = 'Florida' AND city = 'Orlando'
GROUP BY zip_code
ORDER BY count DESC;

SELECT *
FROM realtor_cleaned
WHERE zip_code = '32835' 
	OR zip_code = '32808' 
	OR zip_code = '32811';

