-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2017 at 04:56 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id632510_notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `info_common`
--

CREATE TABLE `info_common` (
  `ID` int(5) NOT NULL,
  `FNAME` varchar(50) DEFAULT NULL,
  `LNAME` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASS` varchar(50) DEFAULT NULL,
  `MOBILE` int(12) DEFAULT NULL,
  `GENDER` tinyint(1) DEFAULT NULL,
  `C_ID` int(11) NOT NULL,
  `U_ID` int(11) NOT NULL,
  `CLG_ID` int(11) NOT NULL,
  `B_ID` int(11) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info_common`
--
ALTER TABLE `info_common`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `C_ID` (`C_ID`),
  ADD KEY `U_ID` (`U_ID`),
  ADD KEY `CLG_ID` (`CLG_ID`),
  ADD KEY `B_ID` (`B_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info_common`
--
ALTER TABLE `info_common`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `info_common`
--
ALTER TABLE `info_common`
  ADD CONSTRAINT `info_common_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `course` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `info_common_ibfk_2` FOREIGN KEY (`U_ID`) REFERENCES `university` (`U_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `info_common_ibfk_3` FOREIGN KEY (`CLG_ID`) REFERENCES `college` (`CLG_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `info_common_ibfk_4` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
