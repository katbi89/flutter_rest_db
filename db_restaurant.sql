-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 06:50 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bil_id` int(11) NOT NULL,
  `bil_address` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bil_after_note` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bil_before_note` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bil_rate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_id` int(11) DEFAULT NULL,
  `del_id` int(11) DEFAULT NULL,
  `bil_regdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bil_id`, `bil_address`, `bil_after_note`, `bil_before_note`, `bil_rate`, `cus_id`, `del_id`, `bil_regdate`) VALUES
(1, '', NULL, '', NULL, 1, NULL, '2021-07-27 16:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_name_en` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_regdate` datetime DEFAULT NULL,
  `cat_thumbnail` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_name_en`, `cat_regdate`, `cat_thumbnail`, `cat_image`) VALUES
(6, 'mshawi', 'mshawi', '2021-07-27 15:46:17', '1270956413185824e15f2640e12a57ef.jpg', '09f69f46a79f6eaff6b0f54f3c6d2eee.jpg'),
(7, 'kbab', 'kbab', '2021-07-27 15:46:59', '5b1eb2b8de9c6ebf38e502115f3d9362.jpg', 'ed5a05af3cecb961fa1d437be0579a92.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_pwd` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_mobile` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `cus_email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_regdate` datetime DEFAULT NULL,
  `cus_block` int(11) DEFAULT NULL,
  `cus_token` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `cus_address` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_lan` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `cus_lat` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `cus_note` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_thumbnail` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `cus_image` varchar(250) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `cus_pwd`, `cus_mobile`, `cus_email`, `cus_regdate`, `cus_block`, `cus_token`, `cus_address`, `cus_lan`, `cus_lat`, `cus_note`, `cus_thumbnail`, `cus_image`) VALUES
(1, 'customer', '12345678', '12345678', 'customer@gmail.com', '2021-07-27 15:31:10', NULL, NULL, NULL, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `del_id` int(11) NOT NULL,
  `del_name` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `del_mobile` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del_pwd` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del_regdate` datetime DEFAULT NULL,
  `del_lastdate` datetime DEFAULT NULL,
  `del_thumbnail` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `del_image` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `del_note` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`del_id`, `del_name`, `del_mobile`, `del_pwd`, `del_regdate`, `del_lastdate`, `del_thumbnail`, `del_image`, `del_note`) VALUES
(3, 'ahmad', '12345678', '12345678', '2021-07-27 15:47:54', NULL, '', '', 'ahmad malki');

-- --------------------------------------------------------

--
-- Table structure for table `detail_bill`
--

CREATE TABLE `detail_bill` (
  `det_id` int(11) NOT NULL,
  `foo_id` int(11) NOT NULL,
  `bil_id` int(11) NOT NULL,
  `det_qty` int(11) NOT NULL,
  `det_price` int(11) NOT NULL,
  `det_regdate` datetime DEFAULT NULL,
  `det_note` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `detail_bill`
--

INSERT INTO `detail_bill` (`det_id`, `foo_id`, `bil_id`, `det_qty`, `det_price`, `det_regdate`, `det_note`) VALUES
(1, 4, 1, 2, 150, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `fav_id` int(11) NOT NULL,
  `foo_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `fav_regdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `foo_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `foo_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foo_name_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foo_regdate` datetime DEFAULT NULL,
  `foo_image` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `foo_thumbnail` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `foo_price` int(11) DEFAULT NULL,
  `foo_offer` int(11) DEFAULT NULL,
  `foo_info` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foo_info_en` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`foo_id`, `cat_id`, `foo_name`, `foo_name_en`, `foo_regdate`, `foo_image`, `foo_thumbnail`, `foo_price`, `foo_offer`, `foo_info`, `foo_info_en`) VALUES
(4, 6, 'koko', 'koko', '2021-07-27 15:54:20', 'a3c990cdfa62dd9d49e33df531b71137.jpg', '638a148b4d2445155476e0667a82f146.jpg', 150, 50, 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `use_id` int(11) NOT NULL,
  `use_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_mobile` int(11) NOT NULL,
  `use_pwd` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_datetime` datetime NOT NULL,
  `use_active` tinyint(1) NOT NULL DEFAULT 1,
  `use_token` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `use_lastdate` datetime NOT NULL,
  `use_note` varchar(500) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`use_id`, `use_name`, `use_mobile`, `use_pwd`, `use_datetime`, `use_active`, `use_token`, `use_lastdate`, `use_note`) VALUES
(1, 'bilal', 930544949, '12345678', '2021-07-25 15:55:12', 1, 'wjeiwenwejwkejwke98w9e8wewnew8wehwenj232jh32j3h2j3h2j', '2021-07-25 15:55:12', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bil_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`del_id`);

--
-- Indexes for table `detail_bill`
--
ALTER TABLE `detail_bill`
  ADD PRIMARY KEY (`det_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`foo_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`use_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `del_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `detail_bill`
--
ALTER TABLE `detail_bill`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `foo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `use_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
