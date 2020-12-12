-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 03:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catherine and liplan_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BID` int(5) NOT NULL,
  `PremiseId` varchar(255) DEFAULT NULL,
  `Tarrifid` int(5) DEFAULT NULL,
  `StaffID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BID`, `PremiseId`, `Tarrifid`, `StaffID`) VALUES
(901, 'p100', 1, 1001),
(902, 'p200', 2, 3001),
(903, 'p300', 1, 1001),
(904, 'p400', 2, 2001),
(905, 'p500', 1, 7001);

-- --------------------------------------------------------

--
-- Table structure for table `charge_structure`
--

CREATE TABLE `charge_structure` (
  `Tarrifid` int(5) DEFAULT NULL,
  `lower_limit` int(5) DEFAULT NULL,
  `upper_limit` int(5) DEFAULT NULL,
  `Charge` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `charge_structure`
--

INSERT INTO `charge_structure` (`Tarrifid`, `lower_limit`, `upper_limit`, `Charge`) VALUES
(1, 2000, 4000, 3000),
(2, 4000, 6000, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customerid` varchar(255) NOT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `TelephoneNo` int(10) DEFAULT NULL,
  `ZID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customerid`, `CustName`, `TelephoneNo`, `ZID`) VALUES
('c100', 'Cate', 722123456, 21),
('c200', 'Liplan', 786576453, 41),
('c300', 'Bob', 789654346, 31),
('c400', 'Andy', 787632543, 21),
('c500', 'Judy', 795632145, 11),
('c600', 'Mary', 797542456, 11),
('c700', 'Kiptoo', 796574321, 51),
('c800', 'Mercy', 795476532, 41),
('c900', 'Peter', 765432135, 61);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `TransactionID` int(5) NOT NULL,
  `BID` int(5) DEFAULT NULL,
  `ExpectedAmount` int(5) DEFAULT NULL,
  `PaidAmount` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`TransactionID`, `BID`, `ExpectedAmount`, `PaidAmount`) VALUES
(500, 901, 10000, 10000),
(501, 902, 30000, 30000),
(502, 903, 40000, 40000),
(504, 904, 50000, 40000),
(505, 905, 30000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `PlantID` int(5) NOT NULL,
  `Plant_name` varchar(255) DEFAULT NULL,
  `Capacity` int(5) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `RID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`PlantID`, `Plant_name`, `Capacity`, `Status`, `RID`) VALUES
(100, 'plant1', 60000, b'1', 20),
(200, 'plant2', 80000, b'1', 10),
(300, 'plant3', 70000, b'1', 20),
(400, 'plant4', 90000, b'1', 30),
(500, 'plant5', 75000, b'1', 40),
(600, 'plant6', 95000, b'1', 20),
(700, 'plant7', 75000, b'1', 10);

-- --------------------------------------------------------

--
-- Table structure for table `premise`
--

CREATE TABLE `premise` (
  `PremiseId` varchar(255) NOT NULL,
  `MeterNo` int(5) DEFAULT NULL,
  `Customerid` varchar(255) DEFAULT NULL,
  `RID` int(5) NOT NULL,
  `Tarrifid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premise`
--

INSERT INTO `premise` (`PremiseId`, `MeterNo`, `Customerid`, `RID`, `Tarrifid`) VALUES
('p100', 12345, 'c100', 40, 1),
('p200', 23456, 'c200', 10, 2),
('p300', 34567, 'c300', 30, 1),
('p400', 45678, 'c400', 10, 2),
('p500', 56789, 'c500', 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `RID` int(5) NOT NULL,
  `Route_name` varchar(255) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`RID`, `Route_name`, `Status`) VALUES
(10, 'route1', b'1'),
(20, 'route2', b'1'),
(30, 'route3', b'0'),
(40, 'route4', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `SID` int(5) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Office Physical Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`SID`, `Name`, `Office Physical Address`) VALUES
(1, 'Kimironko', 'Office1'),
(2, 'Remera', 'Office2'),
(3, 'Nyamirambo', 'Office3'),
(4, 'Kimihurura', 'Office4'),
(5, 'Rebero', 'Office5'),
(6, 'Kanombe', 'Office6'),
(7, 'Kinyinya', 'Office7'),
(8, 'Nyarugenge', 'Office8'),
(9, 'Gisozi', 'Office9');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(5) NOT NULL,
  `SID` int(5) DEFAULT NULL,
  `StaffName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `SID`, `StaffName`) VALUES
(1001, 1, 'Bello'),
(2001, 2, 'Brenda'),
(3001, 3, 'Cedric'),
(4001, 4, 'Fiona'),
(5001, 5, 'Deen'),
(6001, 6, 'Wanjii'),
(7001, 7, 'Deji'),
(8001, 8, 'Diane'),
(9001, 9, 'Dave');

-- --------------------------------------------------------

--
-- Table structure for table `tariff`
--

CREATE TABLE `tariff` (
  `TarrifName` varchar(255) DEFAULT NULL,
  `TarrifID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tariff`
--

INSERT INTO `tariff` (`TarrifName`, `TarrifID`) VALUES
('Domestic', 1),
('Commercial', 2);

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `ZID` int(5) NOT NULL,
  `SID` int(5) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`ZID`, `SID`, `Name`) VALUES
(11, 1, 'Masoro'),
(21, 2, 'Bumbogo'),
(31, 3, 'Nyarutarama'),
(41, 4, 'Kagugu'),
(51, 5, 'Nyabugogo'),
(61, 6, 'Kacyiru'),
(71, 7, 'Musanze'),
(81, 8, 'Huye'),
(91, 9, 'Gisenyi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BID`),
  ADD KEY `ibfk_5` (`PremiseId`),
  ADD KEY `ibfk_6` (`Tarrifid`),
  ADD KEY `ibfk_11` (`StaffID`);

--
-- Indexes for table `charge_structure`
--
ALTER TABLE `charge_structure`
  ADD KEY `ibfk_4` (`Tarrifid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customerid`),
  ADD KEY `ibfk_8` (`ZID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `ibfk_7` (`BID`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`PlantID`),
  ADD KEY `ibfk_10` (`RID`);

--
-- Indexes for table `premise`
--
ALTER TABLE `premise`
  ADD PRIMARY KEY (`PremiseId`),
  ADD KEY `ibfk_2` (`Customerid`),
  ADD KEY `ibfk_9` (`RID`),
  ADD KEY `ibfk_12` (`Tarrifid`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `ibfk_3` (`SID`);

--
-- Indexes for table `tariff`
--
ALTER TABLE `tariff`
  ADD PRIMARY KEY (`TarrifID`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`ZID`),
  ADD KEY `ibfk_1` (`SID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `ibfk_11` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ibfk_5` FOREIGN KEY (`PremiseId`) REFERENCES `premise` (`PremiseId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ibfk_6` FOREIGN KEY (`Tarrifid`) REFERENCES `tariff` (`TarrifID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `charge_structure`
--
ALTER TABLE `charge_structure`
  ADD CONSTRAINT `ibfk_4` FOREIGN KEY (`Tarrifid`) REFERENCES `tariff` (`TarrifID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `ibfk_8` FOREIGN KEY (`ZID`) REFERENCES `zones` (`ZID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `ibfk_7` FOREIGN KEY (`BID`) REFERENCES `bill` (`BID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plant`
--
ALTER TABLE `plant`
  ADD CONSTRAINT `ibfk_10` FOREIGN KEY (`RID`) REFERENCES `route` (`RID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `premise`
--
ALTER TABLE `premise`
  ADD CONSTRAINT `ibfk_12` FOREIGN KEY (`Tarrifid`) REFERENCES `tariff` (`TarrifID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ibfk_2` FOREIGN KEY (`Customerid`) REFERENCES `customer` (`Customerid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ibfk_9` FOREIGN KEY (`RID`) REFERENCES `route` (`RID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `ibfk_3` FOREIGN KEY (`SID`) REFERENCES `sector` (`SID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `zones`
--
ALTER TABLE `zones`
  ADD CONSTRAINT `ibfk_1` FOREIGN KEY (`SID`) REFERENCES `sector` (`SID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
