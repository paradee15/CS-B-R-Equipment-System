-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 02:18 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs_equipment_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `E_ID` varchar(6) NOT NULL,
  `E_Name` varchar(50) NOT NULL,
  `E_Type` varchar(20) NOT NULL,
  `E_Status` varchar(20) NOT NULL DEFAULT 'available',
  `Lock_Status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`E_ID`, `E_Name`, `E_Type`, `E_Status`, `Lock_Status`) VALUES
('K00001', 'Logitech Keyboard', 'Keyboard', 'unavailable', 1),
('K00002', 'Acer Keyboard', 'Keyboard', 'available', 0),
('M00001', 'Logitech Mouse', 'Mouse', 'available', 0),
('M00002', 'HP Mouse', 'Mouse', 'available', 0),
('test1', 'test1', 'test1', 'available', 0),
('test2', 'test2', 'test2', 'available', 0),
('test3', 'test3', 'test3', 'unavailable', 0),
('test4', 'test4', 'test4', 'available', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_ID` varchar(50) NOT NULL,
  `user_PW` varchar(50) NOT NULL,
  `user_FName` varchar(50) NOT NULL,
  `user_LName` varchar(50) NOT NULL,
  `Role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_ID`, `user_PW`, `user_FName`, `user_LName`, `Role`) VALUES
('admin@admin.com', 'password', 'Admin', 'Admax', 'admin'),
('student@student.com', 'password', 'Manee', 'Meemore', 'student'),
('teacher@teacher.com', 'password', 'Onepen', 'Twopencil', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `use_history`
--

CREATE TABLE `use_history` (
  `user_Id` varchar(50) NOT NULL,
  `E_ID` varchar(6) NOT NULL,
  `H_ID` varchar(6) NOT NULL,
  `use_Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `waiting_queue`
--

CREATE TABLE `waiting_queue` (
  `q_ID` varchar(4) NOT NULL,
  `E_ID` varchar(6) NOT NULL,
  `user_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`E_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`);

--
-- Indexes for table `use_history`
--
ALTER TABLE `use_history`
  ADD PRIMARY KEY (`H_ID`),
  ADD KEY `user_Id` (`user_Id`),
  ADD KEY `E_ID` (`E_ID`);

--
-- Indexes for table `waiting_queue`
--
ALTER TABLE `waiting_queue`
  ADD PRIMARY KEY (`q_ID`),
  ADD KEY `E_ID` (`E_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `use_history`
--
ALTER TABLE `use_history`
  ADD CONSTRAINT `use_history_ibfk_1` FOREIGN KEY (`user_Id`) REFERENCES `user` (`user_ID`),
  ADD CONSTRAINT `use_history_ibfk_2` FOREIGN KEY (`E_ID`) REFERENCES `equipments` (`E_ID`);

--
-- Constraints for table `waiting_queue`
--
ALTER TABLE `waiting_queue`
  ADD CONSTRAINT `waiting_queue_ibfk_1` FOREIGN KEY (`E_ID`) REFERENCES `equipments` (`E_ID`),
  ADD CONSTRAINT `waiting_queue_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
