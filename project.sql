-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2024 at 05:04 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dht22`
--

CREATE TABLE `tbl_dht22` (
  `id` int(11) NOT NULL,
  `temp` float NOT NULL,
  `humi` float NOT NULL,
  `dmy` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_smartfarm`
--

CREATE TABLE `tbl_smartfarm` (
  `id` int(11) NOT NULL,
  `zone` varchar(200) COLLATE utf8_bin NOT NULL,
  `board` varchar(50) COLLATE utf8_bin NOT NULL,
  `temp` float NOT NULL,
  `humi` float NOT NULL,
  `dmy` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_smartfarm`
--

INSERT INTO `tbl_smartfarm` (`id`, `zone`, `board`, `temp`, `humi`, `dmy`) VALUES
(1, 'Zone A', 'ESP32', 27.35, 87.9, '2024-01-15 11:23:59'),
(2, 'Zone A', 'ESP32', 27.35, 87.9, '2024-01-15 11:25:28'),
(3, 'Zone A', 'ESP8266', 25.35, 107.9, '2024-01-15 11:26:46'),
(4, 'zone B ', '', 0, 0, '2024-01-15 11:50:41'),
(5, 'zone B ', 'PICO', 0, 0, '2024-01-15 11:51:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_dht22`
--
ALTER TABLE `tbl_dht22`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_smartfarm`
--
ALTER TABLE `tbl_smartfarm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dht22`
--
ALTER TABLE `tbl_dht22`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_smartfarm`
--
ALTER TABLE `tbl_smartfarm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;