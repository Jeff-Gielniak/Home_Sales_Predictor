CREATE TABLE realtor_data (
    brokered_by INTEGER,
    status CHAR(30),
    price INTEGER,
    bed INTEGER,
    bath INTEGER,
    acre_lot FLOAT,
    street INTEGER,
    city CHAR(30),
    state CHAR(30),
    zip_code VARCHAR(10),
    house_size INTEGER,
    prev_sold_date DATE
);

ALTER TABLE realtor_data
ALTER COLUMN city TYPE VARCHAR(100);

CREATE TABLE realtor_cleaned AS
SELECT *
FROM realtor_data
WHERE price IS NOT NULL
  AND bed IS NOT NULL
  AND bath IS NOT NULL
  AND acre_lot IS NOT NULL
  AND city IS NOT NULL
  AND state IS NOT NULL
  AND zip_code IS NOT NULL
  AND house_size IS NOT NULL;

  SELECT status, 
  price, 
  bed, 
  bath, 
  acre_lot, 
  street, 
  city, 
  state, 
  zip_code, 
  house_size, 
  prev_sold_date AS "date_sold"
  FROM realtor_cleaned rc
  ORDER BY RANDOM()
LIMIT (SELECT COUNT(*) * 0.10 FROM realtor_cleaned);
  






