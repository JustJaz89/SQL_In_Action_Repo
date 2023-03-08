SELECT * FROM intro_sql.final_airbnb;
SELECT COUNT(*) FROM intro_sql.final_airbnb;
SELECT host_name FROM intro_sql.final_airbnb WHERE host_id = 63613;
SELECT DISTINCT neighbourhood FROM intro_sql.final_airbnb;
SELECT MIN(Price) AS "MIN(price)" FROM intro_sql.final_airbnb;
SELECT MAX(Price) AS "MAX(price)" FROM intro_sql.final_airbnb;
SELECT AVG(availability_365) FROM intro_sql.final_airbnb;
SELECT * FROM intro_sql.final_airbnb WHERE number_of_reviews = 0;
SELECT id, room_type, number_of_reviews FROM intro_sql.final_airbnb WHERE number_of_reviews = 605;
SELECT neighbourhood FROM intro_sql.final_airbnb GROUP BY neighbourhood ORDER BY COUNT(neighbourhood) DESC LIMIT 1;
SELECT * FROM intro_sql.final_airbnb WHERE minimum_nights < 7 AND reviews_per_month = 4.47;

ALTER TABLE intro_sql.final_airbnb ADD COLUMN calculated_number_of_listings INT DEFAULT 6;
SELECT host_name, calculated_number_of_listings FROM intro_sql.final_airbnb WHERE host_name = 'The Box House Hotel' LIMIT 1;
-- ALTER TABLE intro_sql.final_airbnb DROP calculated_number_of_listings;
