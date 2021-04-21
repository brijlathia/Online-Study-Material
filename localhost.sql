-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2017 at 05:35 PM
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
CREATE DATABASE IF NOT EXISTS `id632510_notes` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id632510_notes`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `B_ID` int(5) NOT NULL,
  `B_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`B_ID`, `B_NAME`) VALUES
(1, 'Automobile Engineering'),
(2, 'Civil Engineering'),
(3, 'Computer Engineering'),
(4, 'Mechatronics Engineering'),
(5, 'Information Technology'),
(6, 'Mechanical Engineering'),
(7, 'Electrical Engineering'),
(8, 'Electronics & Communication'),
(9, 'Electronics & Telecommunication'),
(10, 'Production Engineering'),
(11, 'Enviroment Engineering'),
(12, 'Bio-Medical Engineering'),
(13, 'Chemical Engineering'),
(14, 'Instrumentation & Control'),
(15, 'Computer Science Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `CLG_ID` int(5) NOT NULL,
  `CLG_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `C_ID` int(5) NOT NULL,
  `C_NAME` varchar(50) DEFAULT NULL,
  `U_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`C_ID`, `C_NAME`, `U_ID`) VALUES
(1, 'DE (Diploma Engineering)', 0),
(2, 'BE (Bechlor Engineering)', 0),
(3, 'ME (Masters Engineering)', 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `info_professor`
--

CREATE TABLE `info_professor` (
  `id` int(11) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `interest` varchar(50) NOT NULL,
  `experience` double NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info_student`
--

CREATE TABLE `info_student` (
  `ID` int(5) NOT NULL,
  `SEMESTER` int(5) DEFAULT NULL,
  `SID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID` int(11) NOT NULL,
  `S_NAME` varchar(50) NOT NULL,
  `B_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `U_ID` int(5) NOT NULL,
  `U_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`U_ID`, `U_NAME`) VALUES
(1, 'GTU (Gujarat Technological University)'),
(2, 'CHANGA (CHARUSAT University)'),
(3, 'Ganpat University'),
(4, 'Nirma University'),
(5, 'DDU (Dharmsinh Desai University)'),
(6, 'MSU (Maharaja Sayajirao University)'),
(7, 'R.K. University'),
(8, 'Marwadi University'),
(9, 'Rai University'),
(10, 'Uka Tarsadia University'),
(11, 'Parul University');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `REFERENCE` varchar(50) NOT NULL,
  `FILE` varchar(50) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `B_ID` int(11) NOT NULL,
  `SEMESTER` int(5) NOT NULL,
  `SUB_ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`CLG_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`C_ID`),
  ADD KEY `U_ID` (`U_ID`);

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
-- Indexes for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `info_student`
--
ALTER TABLE `info_student`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SID` (`SID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `B_ID` (`B_ID`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`U_ID`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `C_ID` (`C_ID`),
  ADD KEY `B_ID` (`B_ID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `SUB_ID` (`SUB_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `B_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `CLG_ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `C_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `info_common`
--
ALTER TABLE `info_common`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `info_professor`
--
ALTER TABLE `info_professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `info_student`
--
ALTER TABLE `info_student`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `U_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
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

--
-- Constraints for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD CONSTRAINT `info_professor_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `info_common` (`ID`);

--
-- Constraints for table `info_student`
--
ALTER TABLE `info_student`
  ADD CONSTRAINT `info_student_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upload`
--
ALTER TABLE `upload`
  ADD CONSTRAINT `upload_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `course` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_2` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_3` FOREIGN KEY (`UID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_4` FOREIGN KEY (`SUB_ID`) REFERENCES `subject` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `id632510_notes`
--
CREATE DATABASE IF NOT EXISTS `id632510_notes` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id632510_notes`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `B_ID` int(5) NOT NULL,
  `B_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`B_ID`, `B_NAME`) VALUES
(1, 'Automobile Engineering'),
(2, 'Civil Engineering'),
(3, 'Computer Engineering'),
(4, 'Mechatronics Engineering'),
(5, 'Information Technology'),
(6, 'Mechanical Engineering'),
(7, 'Electrical Engineering'),
(8, 'Electronics & Communication'),
(9, 'Electronics & Telecommunication'),
(10, 'Production Engineering'),
(11, 'Enviroment Engineering'),
(12, 'Bio-Medical Engineering'),
(13, 'Chemical Engineering'),
(14, 'Instrumentation & Control'),
(15, 'Computer Science Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `CLG_ID` int(5) NOT NULL,
  `CLG_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `C_ID` int(5) NOT NULL,
  `C_NAME` varchar(50) DEFAULT NULL,
  `U_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`C_ID`, `C_NAME`, `U_ID`) VALUES
(1, 'DE (Diploma Engineering)', 0),
(2, 'BE (Bechlor Engineering)', 0),
(3, 'ME (Masters Engineering)', 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `info_professor`
--

CREATE TABLE `info_professor` (
  `id` int(11) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `interest` varchar(50) NOT NULL,
  `experience` double NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info_student`
--

CREATE TABLE `info_student` (
  `ID` int(5) NOT NULL,
  `SEMESTER` int(5) DEFAULT NULL,
  `SID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID` int(11) NOT NULL,
  `S_NAME` varchar(50) NOT NULL,
  `B_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `U_ID` int(5) NOT NULL,
  `U_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`U_ID`, `U_NAME`) VALUES
(1, 'GTU (Gujarat Technological University)'),
(2, 'CHANGA (CHARUSAT University)'),
(3, 'Ganpat University'),
(4, 'Nirma University'),
(5, 'DDU (Dharmsinh Desai University)'),
(6, 'MSU (Maharaja Sayajirao University)'),
(7, 'R.K. University'),
(8, 'Marwadi University'),
(9, 'Rai University'),
(10, 'Uka Tarsadia University'),
(11, 'Parul University');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `REFERENCE` varchar(50) NOT NULL,
  `FILE` varchar(50) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `B_ID` int(11) NOT NULL,
  `SEMESTER` int(5) NOT NULL,
  `SUB_ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`CLG_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`C_ID`),
  ADD KEY `U_ID` (`U_ID`);

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
-- Indexes for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `info_student`
--
ALTER TABLE `info_student`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SID` (`SID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `B_ID` (`B_ID`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`U_ID`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `C_ID` (`C_ID`),
  ADD KEY `B_ID` (`B_ID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `SUB_ID` (`SUB_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `B_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `CLG_ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `C_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `info_common`
--
ALTER TABLE `info_common`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `info_professor`
--
ALTER TABLE `info_professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `info_student`
--
ALTER TABLE `info_student`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `U_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
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

--
-- Constraints for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD CONSTRAINT `info_professor_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `info_common` (`ID`);

--
-- Constraints for table `info_student`
--
ALTER TABLE `info_student`
  ADD CONSTRAINT `info_student_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upload`
--
ALTER TABLE `upload`
  ADD CONSTRAINT `upload_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `course` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_2` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_3` FOREIGN KEY (`UID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_4` FOREIGN KEY (`SUB_ID`) REFERENCES `subject` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `id632510_notes`
--
CREATE DATABASE IF NOT EXISTS `id632510_notes` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id632510_notes`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `B_ID` int(5) NOT NULL,
  `B_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`B_ID`, `B_NAME`) VALUES
(1, 'Automobile Engineering'),
(2, 'Civil Engineering'),
(3, 'Computer Engineering'),
(4, 'Mechatronics Engineering'),
(5, 'Information Technology'),
(6, 'Mechanical Engineering'),
(7, 'Electrical Engineering'),
(8, 'Electronics & Communication'),
(9, 'Electronics & Telecommunication'),
(10, 'Production Engineering'),
(11, 'Enviroment Engineering'),
(12, 'Bio-Medical Engineering'),
(13, 'Chemical Engineering'),
(14, 'Instrumentation & Control'),
(15, 'Computer Science Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `CLG_ID` int(5) NOT NULL,
  `CLG_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `C_ID` int(5) NOT NULL,
  `C_NAME` varchar(50) DEFAULT NULL,
  `U_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`C_ID`, `C_NAME`, `U_ID`) VALUES
(1, 'DE (Diploma Engineering)', 0),
(2, 'BE (Bechlor Engineering)', 0),
(3, 'ME (Masters Engineering)', 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `info_professor`
--

CREATE TABLE `info_professor` (
  `id` int(11) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `interest` varchar(50) NOT NULL,
  `experience` double NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info_student`
--

CREATE TABLE `info_student` (
  `ID` int(5) NOT NULL,
  `SEMESTER` int(5) DEFAULT NULL,
  `SID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID` int(11) NOT NULL,
  `S_NAME` varchar(50) NOT NULL,
  `B_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `U_ID` int(5) NOT NULL,
  `U_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`U_ID`, `U_NAME`) VALUES
(1, 'GTU (Gujarat Technological University)'),
(2, 'CHANGA (CHARUSAT University)'),
(3, 'Ganpat University'),
(4, 'Nirma University'),
(5, 'DDU (Dharmsinh Desai University)'),
(6, 'MSU (Maharaja Sayajirao University)'),
(7, 'R.K. University'),
(8, 'Marwadi University'),
(9, 'Rai University'),
(10, 'Uka Tarsadia University'),
(11, 'Parul University');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `REFERENCE` varchar(50) NOT NULL,
  `FILE` varchar(50) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `B_ID` int(11) NOT NULL,
  `SEMESTER` int(5) NOT NULL,
  `SUB_ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`CLG_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`C_ID`),
  ADD KEY `U_ID` (`U_ID`);

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
-- Indexes for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `info_student`
--
ALTER TABLE `info_student`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SID` (`SID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `B_ID` (`B_ID`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`U_ID`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `C_ID` (`C_ID`),
  ADD KEY `B_ID` (`B_ID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `SUB_ID` (`SUB_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `B_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `CLG_ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `C_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `info_common`
--
ALTER TABLE `info_common`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `info_professor`
--
ALTER TABLE `info_professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `info_student`
--
ALTER TABLE `info_student`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `U_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
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

--
-- Constraints for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD CONSTRAINT `info_professor_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `info_common` (`ID`);

--
-- Constraints for table `info_student`
--
ALTER TABLE `info_student`
  ADD CONSTRAINT `info_student_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upload`
--
ALTER TABLE `upload`
  ADD CONSTRAINT `upload_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `course` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_2` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_3` FOREIGN KEY (`UID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_4` FOREIGN KEY (`SUB_ID`) REFERENCES `subject` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `id632510_notes`
--
CREATE DATABASE IF NOT EXISTS `id632510_notes` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id632510_notes`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `B_ID` int(5) NOT NULL,
  `B_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`B_ID`, `B_NAME`) VALUES
(1, 'Automobile Engineering'),
(2, 'Civil Engineering'),
(3, 'Computer Engineering'),
(4, 'Mechatronics Engineering'),
(5, 'Information Technology'),
(6, 'Mechanical Engineering'),
(7, 'Electrical Engineering'),
(8, 'Electronics & Communication'),
(9, 'Electronics & Telecommunication'),
(10, 'Production Engineering'),
(11, 'Enviroment Engineering'),
(12, 'Bio-Medical Engineering'),
(13, 'Chemical Engineering'),
(14, 'Instrumentation & Control'),
(15, 'Computer Science Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `CLG_ID` int(5) NOT NULL,
  `CLG_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `C_ID` int(5) NOT NULL,
  `C_NAME` varchar(50) DEFAULT NULL,
  `U_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`C_ID`, `C_NAME`, `U_ID`) VALUES
(1, 'DE (Diploma Engineering)', 0),
(2, 'BE (Bechlor Engineering)', 0),
(3, 'ME (Masters Engineering)', 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `info_professor`
--

CREATE TABLE `info_professor` (
  `id` int(11) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `interest` varchar(50) NOT NULL,
  `experience` double NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info_student`
--

CREATE TABLE `info_student` (
  `ID` int(5) NOT NULL,
  `SEMESTER` int(5) DEFAULT NULL,
  `SID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID` int(11) NOT NULL,
  `S_NAME` varchar(50) NOT NULL,
  `B_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `U_ID` int(5) NOT NULL,
  `U_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`U_ID`, `U_NAME`) VALUES
(1, 'GTU (Gujarat Technological University)'),
(2, 'CHANGA (CHARUSAT University)'),
(3, 'Ganpat University'),
(4, 'Nirma University'),
(5, 'DDU (Dharmsinh Desai University)'),
(6, 'MSU (Maharaja Sayajirao University)'),
(7, 'R.K. University'),
(8, 'Marwadi University'),
(9, 'Rai University'),
(10, 'Uka Tarsadia University'),
(11, 'Parul University');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `REFERENCE` varchar(50) NOT NULL,
  `FILE` varchar(50) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `B_ID` int(11) NOT NULL,
  `SEMESTER` int(5) NOT NULL,
  `SUB_ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`CLG_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`C_ID`),
  ADD KEY `U_ID` (`U_ID`);

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
-- Indexes for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `info_student`
--
ALTER TABLE `info_student`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SID` (`SID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `B_ID` (`B_ID`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`U_ID`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `C_ID` (`C_ID`),
  ADD KEY `B_ID` (`B_ID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `SUB_ID` (`SUB_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `B_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `CLG_ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `C_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `info_common`
--
ALTER TABLE `info_common`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `info_professor`
--
ALTER TABLE `info_professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `info_student`
--
ALTER TABLE `info_student`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `U_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
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

--
-- Constraints for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD CONSTRAINT `info_professor_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `info_common` (`ID`);

--
-- Constraints for table `info_student`
--
ALTER TABLE `info_student`
  ADD CONSTRAINT `info_student_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upload`
--
ALTER TABLE `upload`
  ADD CONSTRAINT `upload_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `course` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_2` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_3` FOREIGN KEY (`UID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_4` FOREIGN KEY (`SUB_ID`) REFERENCES `subject` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `id632510_notes`
--
CREATE DATABASE IF NOT EXISTS `id632510_notes` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id632510_notes`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `B_ID` int(5) NOT NULL,
  `B_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`B_ID`, `B_NAME`) VALUES
(1, 'Automobile Engineering'),
(2, 'Civil Engineering'),
(3, 'Computer Engineering'),
(4, 'Mechatronics Engineering'),
(5, 'Information Technology'),
(6, 'Mechanical Engineering'),
(7, 'Electrical Engineering'),
(8, 'Electronics & Communication'),
(9, 'Electronics & Telecommunication'),
(10, 'Production Engineering'),
(11, 'Enviroment Engineering'),
(12, 'Bio-Medical Engineering'),
(13, 'Chemical Engineering'),
(14, 'Instrumentation & Control'),
(15, 'Computer Science Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `CLG_ID` int(5) NOT NULL,
  `CLG_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `C_ID` int(5) NOT NULL,
  `C_NAME` varchar(50) DEFAULT NULL,
  `U_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`C_ID`, `C_NAME`, `U_ID`) VALUES
(1, 'DE (Diploma Engineering)', 0),
(2, 'BE (Bechlor Engineering)', 0),
(3, 'ME (Masters Engineering)', 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `info_professor`
--

CREATE TABLE `info_professor` (
  `id` int(11) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `interest` varchar(50) NOT NULL,
  `experience` double NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info_student`
--

CREATE TABLE `info_student` (
  `ID` int(5) NOT NULL,
  `SEMESTER` int(5) DEFAULT NULL,
  `SID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID` int(11) NOT NULL,
  `S_NAME` varchar(50) NOT NULL,
  `B_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `U_ID` int(5) NOT NULL,
  `U_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`U_ID`, `U_NAME`) VALUES
(1, 'GTU (Gujarat Technological University)'),
(2, 'CHANGA (CHARUSAT University)'),
(3, 'Ganpat University'),
(4, 'Nirma University'),
(5, 'DDU (Dharmsinh Desai University)'),
(6, 'MSU (Maharaja Sayajirao University)'),
(7, 'R.K. University'),
(8, 'Marwadi University'),
(9, 'Rai University'),
(10, 'Uka Tarsadia University'),
(11, 'Parul University');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `REFERENCE` varchar(50) NOT NULL,
  `FILE` varchar(50) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `B_ID` int(11) NOT NULL,
  `SEMESTER` int(5) NOT NULL,
  `SUB_ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`CLG_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`C_ID`),
  ADD KEY `U_ID` (`U_ID`);

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
-- Indexes for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `info_student`
--
ALTER TABLE `info_student`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SID` (`SID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `B_ID` (`B_ID`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`U_ID`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `C_ID` (`C_ID`),
  ADD KEY `B_ID` (`B_ID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `SUB_ID` (`SUB_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `B_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `CLG_ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `C_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `info_common`
--
ALTER TABLE `info_common`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `info_professor`
--
ALTER TABLE `info_professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `info_student`
--
ALTER TABLE `info_student`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `U_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
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

--
-- Constraints for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD CONSTRAINT `info_professor_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `info_common` (`ID`);

--
-- Constraints for table `info_student`
--
ALTER TABLE `info_student`
  ADD CONSTRAINT `info_student_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upload`
--
ALTER TABLE `upload`
  ADD CONSTRAINT `upload_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `course` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_2` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_3` FOREIGN KEY (`UID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_4` FOREIGN KEY (`SUB_ID`) REFERENCES `subject` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `id632510_notes`
--
CREATE DATABASE IF NOT EXISTS `id632510_notes` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id632510_notes`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `B_ID` int(5) NOT NULL,
  `B_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`B_ID`, `B_NAME`) VALUES
(1, 'Automobile Engineering'),
(2, 'Civil Engineering'),
(3, 'Computer Engineering'),
(4, 'Mechatronics Engineering'),
(5, 'Information Technology'),
(6, 'Mechanical Engineering'),
(7, 'Electrical Engineering'),
(8, 'Electronics & Communication'),
(9, 'Electronics & Telecommunication'),
(10, 'Production Engineering'),
(11, 'Enviroment Engineering'),
(12, 'Bio-Medical Engineering'),
(13, 'Chemical Engineering'),
(14, 'Instrumentation & Control'),
(15, 'Computer Science Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `CLG_ID` int(5) NOT NULL,
  `CLG_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `C_ID` int(5) NOT NULL,
  `C_NAME` varchar(50) DEFAULT NULL,
  `U_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`C_ID`, `C_NAME`, `U_ID`) VALUES
(1, 'DE (Diploma Engineering)', 0),
(2, 'BE (Bechlor Engineering)', 0),
(3, 'ME (Masters Engineering)', 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `info_professor`
--

CREATE TABLE `info_professor` (
  `id` int(11) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `interest` varchar(50) NOT NULL,
  `experience` double NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info_student`
--

CREATE TABLE `info_student` (
  `ID` int(5) NOT NULL,
  `SEMESTER` int(5) DEFAULT NULL,
  `SID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID` int(11) NOT NULL,
  `S_NAME` varchar(50) NOT NULL,
  `B_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `U_ID` int(5) NOT NULL,
  `U_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`U_ID`, `U_NAME`) VALUES
(1, 'GTU (Gujarat Technological University)'),
(2, 'CHANGA (CHARUSAT University)'),
(3, 'Ganpat University'),
(4, 'Nirma University'),
(5, 'DDU (Dharmsinh Desai University)'),
(6, 'MSU (Maharaja Sayajirao University)'),
(7, 'R.K. University'),
(8, 'Marwadi University'),
(9, 'Rai University'),
(10, 'Uka Tarsadia University'),
(11, 'Parul University');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `REFERENCE` varchar(50) NOT NULL,
  `FILE` varchar(50) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `B_ID` int(11) NOT NULL,
  `SEMESTER` int(5) NOT NULL,
  `SUB_ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`CLG_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`C_ID`),
  ADD KEY `U_ID` (`U_ID`);

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
-- Indexes for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `info_student`
--
ALTER TABLE `info_student`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SID` (`SID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `B_ID` (`B_ID`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`U_ID`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `C_ID` (`C_ID`),
  ADD KEY `B_ID` (`B_ID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `SUB_ID` (`SUB_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `B_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `CLG_ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `C_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `info_common`
--
ALTER TABLE `info_common`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `info_professor`
--
ALTER TABLE `info_professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `info_student`
--
ALTER TABLE `info_student`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `U_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
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

--
-- Constraints for table `info_professor`
--
ALTER TABLE `info_professor`
  ADD CONSTRAINT `info_professor_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `info_common` (`ID`);

--
-- Constraints for table `info_student`
--
ALTER TABLE `info_student`
  ADD CONSTRAINT `info_student_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upload`
--
ALTER TABLE `upload`
  ADD CONSTRAINT `upload_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `course` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_2` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_3` FOREIGN KEY (`UID`) REFERENCES `info_common` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upload_ibfk_4` FOREIGN KEY (`SUB_ID`) REFERENCES `subject` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
