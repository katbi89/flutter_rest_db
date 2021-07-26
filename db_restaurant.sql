-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 06:27 PM
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
(5, 'category', 'category_en', '2021-07-26 18:31:09', '', '');

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
(3, 5, 'fffdsf', 'fffdsf', '2021-07-26 19:00:22', '', '', 120, 33, 'rr', 'rr');

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
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`del_id`);

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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `del_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `foo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `use_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
