/*Sa se scrie o interogare care sa intoarca toate inregistrarile pentru masini mai noi de
anul 2010. 
*/
SELECT c.id, c.brand, c.model, c.seats, c.color, c.year, co.name as brand_country FROM cars c
INNER JOIN brands_countries bc ON c.id = bc.car_id
INNER JOIN countries co ON co.id = bc.country_id
 WHERE c.year >= 2010;