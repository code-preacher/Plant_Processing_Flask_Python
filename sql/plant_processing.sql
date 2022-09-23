-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 06:28 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plant_processing`
--

-- --------------------------------------------------------

--
-- Table structure for table `plant_record`
--

CREATE TABLE `plant_record` (
  `id` int(30) NOT NULL,
  `plant` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant_record`
--

INSERT INTO `plant_record` (`id`, `plant`, `state`) VALUES
(1, 'rice', 'kano'),
(2, 'rice', 'adamawa'),
(3, 'ginger', 'kano'),
(4, 'garlic', 'katsina'),
(5, 'yam', 'benue'),
(6, 'onions', 'kebbi'),
(7, 'rice', 'cross river'),
(8, 'ginger', 'akwa ibom'),
(9, 'tomatoes', 'jos'),
(10, 'pepper', 'benue');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plant_record`
--
ALTER TABLE `plant_record`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plant_record`
--
ALTER TABLE `plant_record`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
