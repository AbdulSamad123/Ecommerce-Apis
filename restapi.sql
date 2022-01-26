-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 12:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banks`
--

CREATE TABLE `tbl_banks` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_banks`
--

INSERT INTO `tbl_banks` (`id`, `bank_name`) VALUES
(1, 'klla'),
(2, 'test'),
(3, 'test'),
(4, 'test1'),
(5, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_basics`
--

CREATE TABLE `tbl_basics` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `city` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_basics`
--

INSERT INTO `tbl_basics` (`id`, `name`, `phone`, `city`) VALUES
(1, 'abc', '1234', 'test'),
(2, 'abc', '1234', 'test'),
(3, 'abc', '1234', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`category_id`, `category_name`) VALUES
(1, 'gift');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`id`, `product_name`, `status`) VALUES
(1, 'gift', 'booked'),
(2, 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_reviews`
--

INSERT INTO `tbl_reviews` (`review_id`, `product_id`, `comment`) VALUES
(1, 1, 'was nice experience'),
(2, 1, 'test'),
(3, 1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategories`
--

CREATE TABLE `tbl_subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(50) NOT NULL,
  `maincategory_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subcategories`
--

INSERT INTO `tbl_subcategories` (`subcategory_id`, `subcategory_name`, `maincategory_name`) VALUES
(1, 'watch', 'gift1'),
(2, 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone_number` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `con_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `phone_number`, `password`, `con_password`) VALUES
(1, 'Ali', 'Due@gmail.com', '', '9039202', ''),
(2, 'Kamran', 'Ali@gmail.com', '', '00300444', ''),
(4, 'akn', 'akn@email.com', '', '123456', ''),
(5, 'akn', 'akn@email.com', '', '123456', ''),
(6, 'test', 'test@test.com', '', '12345', ''),
(7, 'test', 'test@test.com', '', '12345', ''),
(8, 'test', 'test@test.com', '123456', '123', '123'),
(13, 'test', 'test@test.com', '123456', '123', '123'),
(14, 'test', 'test@test.com', '123456', '123', '123'),
(15, 'test', 'test@test.com', '123456', '123', '123'),
(16, 'test', 'test@test.com', '123456', '123', '123'),
(17, 'test', 'test@test.com', '123456', '$2y$10$p9AFhYAYd2NsRzoj.lX2.eKyx4/.wsQr5RoFheDFlGVai0YORt5hy', '$2y$10$e0uTtlaJ80hew2WmmwV5kOBeyp.oM/AhOW3jMJROYlpkCn5FiIXjK');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verifications`
--

CREATE TABLE `tbl_verifications` (
  `id` int(11) NOT NULL,
  `account_name` varchar(300) NOT NULL,
  `cnic_number` varchar(300) NOT NULL,
  `cnic_picture` varchar(300) DEFAULT NULL,
  `account_number` varchar(300) NOT NULL,
  `bill_number` varchar(300) NOT NULL,
  `bill_picture` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_verifications`
--

INSERT INTO `tbl_verifications` (`id`, `account_name`, `cnic_number`, `cnic_picture`, `account_number`, `bill_number`, `bill_picture`) VALUES
(1, 'test', '727299', '', '83udus', 'isisie2', NULL),
(2, 'test', '727299', '', '83udus', 'isisie2', NULL),
(3, 'test', '727299', '', '83udus', 'isisie2', NULL),
(4, 'test', '727299111', NULL, '83udus', 'isisie2', NULL),
(5, 'test', '727299111', NULL, '83udus', 'isisie2', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_banks`
--
ALTER TABLE `tbl_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_basics`
--
ALTER TABLE `tbl_basics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_subcategories`
--
ALTER TABLE `tbl_subcategories`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_verifications`
--
ALTER TABLE `tbl_verifications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_banks`
--
ALTER TABLE `tbl_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_basics`
--
ALTER TABLE `tbl_basics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_subcategories`
--
ALTER TABLE `tbl_subcategories`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_verifications`
--
ALTER TABLE `tbl_verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
