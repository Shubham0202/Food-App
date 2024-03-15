-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 07:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vadpi`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `fid` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `fimage` varchar(100) NOT NULL,
  `fprice` float NOT NULL,
  `fstock` int(20) NOT NULL,
  `fdetails` varchar(500) NOT NULL,
  `fingredients` varchar(200) NOT NULL,
  `ftype` varchar(10) NOT NULL,
  `fcategory` varchar(30) NOT NULL,
  `fadded_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`fid`, `fname`, `fimage`, `fprice`, `fstock`, `fdetails`, `fingredients`, `ftype`, `fcategory`, `fadded_time`) VALUES
(4, 'jamboo vapav', 'assets/foodImages/jamboo vapav.jpg', 99, 90, 'New record created successfully New record created successfullyNew record created successfully', 'potato,bread,', 'veg', 'birthday,home party', '2024-03-08 15:08:25'),
(5, 'pink cake', 'assets/foodImages/pink cake.jpg', 399, 100, 'An ice cream cake is a cake with ice cream as the filling for a swiss roll or a layer cake. ', 'milk, chocolate ice cream,strowberry,berry,🍒 (cherry),sugar', '', '', '2024-03-08 15:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `upass` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
