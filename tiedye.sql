-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 05:05 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiedye`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `custID` int(11) NOT NULL,
  `custPwd` varchar(20) NOT NULL,
  `custPhoneNum` varchar(12) NOT NULL,
  `custEmail` varchar(30) NOT NULL,
  `custUsername` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `productName` varchar(25) NOT NULL,
  `productPrice` float NOT NULL,
  `productImages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `productPrice`, `productImages`) VALUES
(1, 'Friends TieDye', 15, '1p.png'),
(2, 'Rainbow TieDye', 15, '2p.png'),
(3, 'Crop Top TieDye', 10, '3p.png'),
(4, 'Bear TieDye', 15, '4p.png'),
(5, 'Blue TieDye', 10, '5p.png'),
(6, 'Light Blue TieDye', 5, '6p.png'),
(7, 'Rainbow 2 TieDye', 10, '7p.png'),
(8, 'Black Rainbow TieDye', 10, '8p.png'),
(9, 'Black TieDye', 10, '9p.png'),
(10, 'Orange TieDye', 10, '10p.png'),
(11, 'Cloud TieDye', 10, '11p.png'),
(12, 'Two Tone TieDye', 10, '12p.png'),
(13, 'Rainbow 3 TieDye', 15, '13p.png'),
(14, 'Rainbow 4 TieDye', 15, '14p.png'),
(15, 'Rainbow 5', 15, '15p.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`custID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `custID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
