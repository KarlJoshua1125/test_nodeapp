-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 06:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `personalinfo`
--

CREATE TABLE `personalinfo` (
  `id` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `civilstatus` varchar(255) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `hobby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personalinfo`
--

INSERT INTO `personalinfo` (`id`, `firstname`, `middlename`, `lastname`, `birthdate`, `gender`, `address`, `region`, `city`, `civilstatus`, `zipcode`, `hobby`) VALUES
(5, 'Karl', 'Mendoza', 'Gonzales', '2000-11-25', 'Male', 'Brgy. 3 Calatagan, Batangas', 'Region IV-A', 'Batangas', 'Single', 4215, 'Coding,Playing Games,Others'),
(26, 'Karl Joshua', 'Mendoza', 'Gonzales', '2023-05-18', 'Male', 'Brgy. 3 Calatagan, Batangas', 'Region IV-B', 'Cagayan De Oro', 'Married', 1234, 'Reading,Watching Movies,Singing'),
(27, 'Karl Joshua', 'Mendoza', 'Gonzales', '2023-05-18', 'Male', 'Brgy. 3 Calatagan, Batangas', 'Region IV-B', 'Cagayan De Oro', 'Married', 1234, 'Reading,Watching Movies,Singing'),
(28, 'Francheska', '-', 'Gubaton', '2023-05-19', 'Female', 'Manila', 'Region V', 'Davao', 'Single', 1234, 'Coding,Reading,Dancing'),
(29, 'Ghuel', 'Ewan', 'Teves', '2023-05-22', 'Male', 'Manila', 'Region IV-B', 'Davao', 'Widowed', 4215, 'Coding,Reading,Singing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Karljoshua', 'karl.joshuagonzales25@gmail.com', 'karl123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personalinfo`
--
ALTER TABLE `personalinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personalinfo`
--
ALTER TABLE `personalinfo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
