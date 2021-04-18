-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 12:59 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `دانشگاه علوم تحقیقات`
--

-- --------------------------------------------------------

--
-- Table structure for table `دانشجویان`
--

CREATE TABLE `دانشجویان` (
  `کد_دانشجویی` int(10) NOT NULL,
  `نام` varchar(50) CHARACTER SET utf32 COLLATE utf32_persian_ci NOT NULL,
  `نام_خانوادگی` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `تاریخ_تولد` date NOT NULL,
  `مقطع` varchar(20) COLLATE utf8mb4_persian_ci NOT NULL,
  `کد_رشته` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `دانشجویان`
--
ALTER TABLE `دانشجویان`
  ADD PRIMARY KEY (`کد_دانشجویی`),
  ADD KEY `کد_رشته` (`کد_رشته`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `دانشجویان`
--
ALTER TABLE `دانشجویان`
  MODIFY `کد_دانشجویی` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `دانشجویان`
--
ALTER TABLE `دانشجویان`
  ADD CONSTRAINT `دانشجویان_ibfk_1` FOREIGN KEY (`کد_رشته`) REFERENCES `رشته` (`کد_رشته`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
