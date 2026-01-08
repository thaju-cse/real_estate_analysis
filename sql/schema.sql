create database real_estate_db;
use real_estate_db;

-- CREATE TABLE real_estate (
--     property_id INT PRIMARY KEY,
--     city VARCHAR(20),
--     location TEXT,
--     house_type VARCHAR(20),
--     house_size FLOAT,
--     price INT,
--     price_per_sqft FLOAT,
--     size_bucket VARCHAR(10),
--     furnishing_status VARCHAR(30),
--     isNegotiable VARCHAR(20)
-- ); '''


--  -- SET SESSION local_infile = 1;
-- SET GLOBAL local_infile = 1;

-- LOAD DATA INFILE 'real_estate_clean.csv'
-- INTO TABLE real_estate
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- LOAD DATA LOCAL INFILE 'real_estate_clean.csv'
-- INTO TABLE real_estate
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

show tables;
describe table real_estate_clean;

-- drop table real_estate;
ALTER TABLE real_estate_clean RENAME TO real_estate;


ALTER TABLE real_estate
DROP COLUMN `latitude`,
DROP COLUMN `longitude`,
DROP COLUMN `verificationDate`,
DROP COLUMN `SecurityDeposit`,
DROP COLUMN `currency`;

select property_id from real_estate order by property_id desc limit 5;

ALTER TABLE real_estate
MODIFY city VARCHAR(20),
MODIFY location VARCHAR(100),
MODIFY house_type VARCHAR(50),
MODIFY house_size FLOAT,
MODIFY price INT,
MODIFY price_per_sqft FLOAT,
MODIFY size_bucket VARCHAR(10),
MODIFY Status VARCHAR(30),
MODIFY isNegotiable VARCHAR(20);

ALTER TABLE real_estate
ADD COLUMN property_id INT AUTO_INCREMENT PRIMARY KEY;


-- checking nulls 

SELECT
  SUM(house_size IS NULL) AS null_size,
  SUM(price IS NULL) AS null_price
FROM real_estate;

-- remove bad rows
SET SQL_SAFE_UPDATES = 0;


DELETE FROM real_estate
WHERE house_size IS NULL OR price IS NULL;
SET SQL_SAFE_UPDATES = 1;

-- adding indexes

CREATE INDEX idx_city ON real_estate(city);
CREATE INDEX idx_location ON real_estate(location);

SELECT COUNT(*) FROM real_estate;

SELECT MIN(price), MAX(price) FROM real_estate;

DESCRIBE real_estate;

