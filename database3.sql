CREATE TABLE countries (id INT AUTO_INCREMENT PRIMARY KEY,
							name VARCHAR(255) NOT NULL);
							
INSERT INTO countries (name) VALUES ('Sweden'), ('Germany'), ('USA'), ('France');

CREATE TABLE brands_countries (id INT AUTO_INCREMENT PRIMARY KEY,
									car_id INT NOT NULL,
									country_id INT NOT NULL);
									
ALTER TABLE brands_countries
ADD CONSTRAINT FK_BrandCountry
FOREIGN KEY (car_id) REFERENCES cars(id);

ALTER TABLE brands_countries
ADD CONSTRAINT FK_CountryBrand
FOREIGN KEY (country_id) REFERENCES countries(id);

INSERT INTO brands_countries (car_id, country_id) VALUES (1, 1), (2, 2), (3, 2), (4, 3), (5, 2), (6, 4);

ALTER TABLE cars DROP COLUMN brand_country;