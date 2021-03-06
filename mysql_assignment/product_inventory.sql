-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2017 at 07:36 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `price_info`
--

CREATE TABLE `price_info` (
  `cid` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `min_value` int(11) NOT NULL,
  `max_value` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price_info`
--

INSERT INTO `price_info` (`cid`, `p_id`, `min_value`, `max_value`, `price`, `created_date`) VALUES
(1, 1, 1, 10, 500, '2017-12-11 06:54:28'),
(2, 1, 11, 50, 485, '2017-12-11 06:54:47'),
(3, 1, 51, 200, 475, '2017-12-11 06:55:09'),
(4, 1, 201, 1000, 450, '2017-12-11 06:55:42'),
(5, 2, 1, 50, 1000, '2017-12-11 06:57:11'),
(6, 2, 51, 200, 950, '2017-12-11 06:57:11'),
(7, 2, 201, 1000, 900, '2017-12-11 06:57:11'),
(8, 3, 1, 5, 250, '2017-12-11 06:59:03'),
(9, 3, 6, 50, 240, '2017-12-11 06:59:04'),
(10, 3, 51, 200, 230, '2017-12-11 06:59:04'),
(11, 3, 201, 1000, 220, '2017-12-11 06:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `pid` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`pid`, `product_name`, `created_date`) VALUES
(1, 'Earphones', '2017-12-11 06:49:00'),
(2, 'Memory Card', '2017-12-11 06:49:17'),
(3, 'Hammer', '2017-12-11 06:49:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `price_info`
--
ALTER TABLE `price_info`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `min_value` (`min_value`),
  ADD KEY `max_value` (`max_value`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `product_name` (`product_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `price_info`
--
ALTER TABLE `price_info`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
