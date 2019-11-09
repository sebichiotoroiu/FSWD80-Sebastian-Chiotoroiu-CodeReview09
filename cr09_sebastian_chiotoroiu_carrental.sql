-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2019 at 01:12 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_sebastian_chiotoroiu_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `aditional_charge`
--

CREATE TABLE `aditional_charge` (
  `return_check_id` int(11) NOT NULL,
  `refilltank` varchar(25) NOT NULL,
  `aditional_cost` varchar(25) NOT NULL,
  `damages` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aditional_charge`
--

INSERT INTO `aditional_charge` (`return_check_id`, `refilltank`, `aditional_cost`, `damages`) VALUES
(1, 'yes', 'no', 'no'),
(2, 'no', 'no', 'no'),
(3, 'yes', 'yes', 'no'),
(4, 'yes', 'yes', 'no'),
(5, 'no', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `reservation_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pickup_loc_id` int(25) NOT NULL,
  `return_loc_id` int(25) NOT NULL,
  `car_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `return_end_date_id` int(11) NOT NULL,
  `price_per_day` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`reservation_id`, `customer_id`, `pickup_loc_id`, `return_loc_id`, `car_id`, `company_id`, `start_date`, `return_end_date_id`, `price_per_day`) VALUES
(1, 5, 4, 4, 2, 2, '2019-11-08', 1, 68),
(2, 1, 3, 1, 4, 5, '2019-11-03', 2, 61),
(3, 4, 1, 2, 5, 6, '2019-11-07', 3, 54),
(4, 3, 2, 3, 3, 4, '2019-11-20', 4, 120),
(5, 2, 5, 5, 1, 1, '2019-12-16', 5, 110);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `year` date NOT NULL,
  `model` varchar(25) NOT NULL,
  `fuel` varchar(25) NOT NULL,
  `color` varchar(25) NOT NULL,
  `seat` int(11) NOT NULL,
  `availability_inspection` varchar(25) NOT NULL,
  `insurance_id` int(11) NOT NULL,
  `extra_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `year`, `model`, `fuel`, `color`, `seat`, `availability_inspection`, `insurance_id`, `extra_id`) VALUES
(1, '2018-12-12', 'Bmw', 'diesel', 'black', 5, 'yes', 3, 1),
(2, '2019-11-03', 'Audi', 'diesel', 'red', 5, 'yes', 2, 4),
(3, '2019-07-14', 'Tesla', 'electric', 'white', 5, 'yes', 5, 3),
(4, '2019-11-03', 'Bmw', 'electric', 'silver', 5, 'yes', 1, 5),
(5, '2019-02-10', 'Skoda', 'petrol', 'red', 5, 'yes', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `name`) VALUES
(1, 'Sixt'),
(2, 'Avis'),
(3, 'Hertz'),
(4, 'Schiller'),
(5, 'Europcar'),
(6, 'Alamo');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` int(11) NOT NULL,
  `customer_detail_id` int(11) NOT NULL,
  `customer_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `customer_detail_id`, `customer_address_id`) VALUES
(1, 'Emil', 'Racovita', 'emil.racovita@yahoo.com', 755666598, 1, 2),
(2, 'Marin', 'Preda', 'marin@gmail.com', 766595632, 2, 5),
(3, 'Gica', 'Petrescu', 'gica@uxl.com', 722555888, 3, 4),
(4, 'Enescu', 'Petre', 'enescu123@petrom.com', 445694236, 5, 3),
(5, 'Anda', 'Adam', 'anda.adam23@music.com', 733258865, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `customer_address_id` int(25) NOT NULL,
  `address_city` varchar(25) NOT NULL,
  `address_country` varchar(25) NOT NULL,
  `address_zip` int(11) NOT NULL,
  `address_num` int(11) NOT NULL,
  `address_street` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`customer_address_id`, `address_city`, `address_country`, `address_zip`, `address_num`, `address_street`) VALUES
(1, 'Wien', 'Austria', 1030, 25, 'Oilor'),
(2, 'Wien', 'Austria', 1050, 24, 'Pratestern'),
(3, 'Wien', 'Austria', 1010, 56, 'Calcedonia'),
(4, 'Wien', 'Austria', 1120, 25, 'Landstrasse'),
(5, 'Wien', 'Austria', 1060, 99, 'Jospeh');

-- --------------------------------------------------------

--
-- Table structure for table `customer_detail`
--

CREATE TABLE `customer_detail` (
  `customer_detail_id` int(25) NOT NULL,
  `birth_place` varchar(25) NOT NULL,
  `birt_date` date NOT NULL,
  `gender` varchar(25) NOT NULL,
  `passport_num` int(25) NOT NULL,
  `credit_card_num` int(11) NOT NULL,
  `driving_license` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_detail`
--

INSERT INTO `customer_detail` (`customer_detail_id`, `birth_place`, `birt_date`, `gender`, `passport_num`, `credit_card_num`, `driving_license`) VALUES
(1, 'Wien', '2020-11-04', 'female', 1002003001, 100, 'yes'),
(2, 'Salzburg', '1979-11-05', 'male', 1002003004, 100300, 'yes'),
(3, 'Budapest', '1997-12-03', 'female', 1002003007, 10030056, 'yes'),
(4, 'Bucharest', '1996-05-04', 'male', 1002003009, 2003004, 'yes'),
(5, 'Paris', '1969-11-07', 'female', 1002003005, 21355432, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `extra_id` int(11) NOT NULL,
  `navigation` varchar(25) NOT NULL,
  `cam` varchar(25) NOT NULL,
  `senzors` varchar(25) NOT NULL,
  `parking_car` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`extra_id`, `navigation`, `cam`, `senzors`, `parking_car`) VALUES
(1, 'yes', 'yes', 'yes', 'yes'),
(2, 'no', 'yes', 'yes', 'no'),
(3, 'no', 'no', 'yes', 'no'),
(4, 'yes', 'no', 'no', 'no'),
(5, 'yes', 'no', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `insurance_id` int(11) NOT NULL,
  `company_ins` varchar(25) NOT NULL,
  `valability` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`insurance_id`, `company_ins`, `valability`) VALUES
(1, 'Axxa', '2020-01-31'),
(2, 'Vienna Insurance Group', '2020-07-31'),
(3, 'Generali', '2020-11-08'),
(4, 'ING', '2020-06-15'),
(5, 'Aviva', '2020-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `locations_id` int(11) NOT NULL,
  `city` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `street` varchar(25) NOT NULL,
  `number` int(11) NOT NULL,
  `phone_loc` int(11) NOT NULL,
  `zip_code_loc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`locations_id`, `city`, `country`, `street`, `number`, `phone_loc`, `zip_code_loc`) VALUES
(1, 'Wien', 'Austria', 'Leopoldine', 23, 724308489, 1020),
(2, 'Wien', 'Austria', 'Margaretenstrasse', 113, 726289356, 1050),
(3, 'Salzburg', 'Austria', 'Landstrasse', 12, 755309456, 1013),
(4, 'Bucharest', 'Romania', 'Bucur', 33, 721560987, 120536),
(5, 'Wien', 'Austria', 'Leopoldine', 45, 231459789, 1020);

-- --------------------------------------------------------

--
-- Table structure for table `return_check`
--

CREATE TABLE `return_check` (
  `return_end_date_id` int(11) NOT NULL,
  `return_check_id` int(11) NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `return_check`
--

INSERT INTO `return_check` (`return_end_date_id`, `return_check_id`, `end_date`) VALUES
(1, 1, '2019-12-26'),
(2, 2, '2019-12-20'),
(3, 3, '2019-11-18'),
(4, 4, '2020-01-14'),
(5, 5, '2019-12-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aditional_charge`
--
ALTER TABLE `aditional_charge`
  ADD PRIMARY KEY (`return_check_id`) USING BTREE;

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`reservation_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `pickup_loc` (`pickup_loc_id`),
  ADD UNIQUE KEY `return_loc` (`return_loc_id`),
  ADD UNIQUE KEY `car_id` (`car_id`),
  ADD UNIQUE KEY `company_id` (`company_id`),
  ADD UNIQUE KEY `return_end_date_id` (`return_end_date_id`) USING BTREE;

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `insurance_id` (`insurance_id`),
  ADD UNIQUE KEY `extra_id` (`extra_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_address_id` (`customer_address_id`),
  ADD UNIQUE KEY `customer_detail_id` (`customer_detail_id`) USING BTREE;

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`customer_address_id`) USING BTREE;

--
-- Indexes for table `customer_detail`
--
ALTER TABLE `customer_detail`
  ADD PRIMARY KEY (`customer_detail_id`) USING BTREE;

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`extra_id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`insurance_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`locations_id`);

--
-- Indexes for table `return_check`
--
ALTER TABLE `return_check`
  ADD PRIMARY KEY (`return_end_date_id`) USING BTREE,
  ADD UNIQUE KEY `return_check_id` (`return_check_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aditional_charge`
--
ALTER TABLE `aditional_charge`
  ADD CONSTRAINT `aditional_charge_ibfk_1` FOREIGN KEY (`return_check_id`) REFERENCES `return_check` (`return_check_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`pickup_loc_id`) REFERENCES `locations` (`locations_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`return_loc_id`) REFERENCES `locations` (`locations_id`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`),
  ADD CONSTRAINT `booking_ibfk_5` FOREIGN KEY (`return_end_date_id`) REFERENCES `return_check` (`return_end_date_id`),
  ADD CONSTRAINT `booking_ibfk_6` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `booking_ibfk_7` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`extra_id`) REFERENCES `extra` (`extra_id`),
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`insurance_id`) REFERENCES `insurance` (`insurance_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customer_detail_id`) REFERENCES `customer_detail` (`customer_detail_id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`customer_address_id`) REFERENCES `customer_address` (`customer_address_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
