-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.46 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table neurony.brands_countries
CREATE TABLE IF NOT EXISTS `brands_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_BrandCountry` (`car_id`),
  KEY `FK_CountryBrand` (`country_id`),
  CONSTRAINT `FK_BrandCountry` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  CONSTRAINT `FK_CountryBrand` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table neurony.brands_countries: ~6 rows (approximately)
/*!40000 ALTER TABLE `brands_countries` DISABLE KEYS */;
REPLACE INTO `brands_countries` (`id`, `car_id`, `country_id`) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 2),
	(4, 4, 3),
	(5, 5, 2),
	(6, 6, 4);
/*!40000 ALTER TABLE `brands_countries` ENABLE KEYS */;

-- Dumping structure for table neurony.cars
CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `seats` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table neurony.cars: ~6 rows (approximately)
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
REPLACE INTO `cars` (`id`, `brand`, `model`, `seats`, `color`, `year`) VALUES
	(1, 'Volvo', 'S80', 5, 'Grey', '2002'),
	(2, 'Audi', 'TT', 2, 'Red', '2007'),
	(3, 'Volkswagen', 'Golf Mk2', 4, 'Blue', '2004'),
	(4, 'Ford', 'Focus', 5, 'White', '2015'),
	(5, 'BMW', '320D', 5, 'Grey', '2010'),
	(6, 'Renault', 'Megane', 5, 'Blue', '2009');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;

-- Dumping structure for table neurony.countries
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table neurony.countries: ~4 rows (approximately)
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
REPLACE INTO `countries` (`id`, `name`) VALUES
	(1, 'Sweden'),
	(2, 'Germany'),
	(3, 'USA'),
	(4, 'France');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
