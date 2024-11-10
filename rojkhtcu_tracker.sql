-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2023 at 04:39 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rojkhtcu_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_sms`
--

CREATE TABLE `all_sms` (
  `all_sms_id` int(100) NOT NULL,
  `main_mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `message_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `call_histories`
--

CREATE TABLE `call_histories` (
  `call_history_id` int(100) NOT NULL,
  `main_mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_history_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(100) NOT NULL,
  `main_mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fcm_token`
--

CREATE TABLE `fcm_token` (
  `fcm_id` int(100) NOT NULL,
  `main_mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fcm_token` text COLLATE utf8_unicode_ci,
  `created_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fcm_token`
--

INSERT INTO `fcm_token` (`fcm_id`, `main_mobile`, `fcm_token`, `created_date`) VALUES
(2, '9289743191', 'cjctxG9eQD2UCPqlcBchos:APA91bF9E3GRpYxMKbrCSnYPzXG2stvJxXTTH8OeRNmypM0e0lf-5Kvp52R6wXxPGkheEJySj73TDtZU9AIXndMdW09wQi-dq5zlBz293TPDj2gGO0psassJHc15Kes169FC_btJWxIa', '2023-11-19 15:50:07'),
(4, '919575811347', 'eD4W3ntHQ8Gbl1KI4Ww8dg:APA91bGK_IdIv6N9cKpJ9haPPmdp8eYPyYssLJRtAyAdya5_vwMFRx0s1T-f9c89ZOs3eW8GDBUo7BinBU8HVHBkyThnszPm1hv6wwPtemFIVAe2wcyJHCv5Axeay8An9MXSuOZZWweC', '2023-11-19 16:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `last_sms`
--

CREATE TABLE `last_sms` (
  `last_sms_id` int(100) NOT NULL,
  `main_mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sms_mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `last_sms`
--

INSERT INTO `last_sms` (`last_sms_id`, `main_mobile`, `last_sms_mobile`, `message`, `type`, `sms_date`, `created_date`) VALUES
(4, '919575811347', 'JM-FLPKRT', 'Flipkart: Use OTP 557291 to log in to your account. DO NOT SHARE this code with anyone, including the delivery executive. @www.flipkart.com #557291', 'Inbox', '2023-11-19 12:24:14', '2023-11-19 12:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(100) NOT NULL,
  `main_mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `main_mobile`, `latitude`, `longitude`, `created_date`) VALUES
(73, '919575811347', '28.62139524', '77.36717818', '2023-11-19 16:39:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_sms`
--
ALTER TABLE `all_sms`
  ADD PRIMARY KEY (`all_sms_id`);

--
-- Indexes for table `call_histories`
--
ALTER TABLE `call_histories`
  ADD PRIMARY KEY (`call_history_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `fcm_token`
--
ALTER TABLE `fcm_token`
  ADD PRIMARY KEY (`fcm_id`);

--
-- Indexes for table `last_sms`
--
ALTER TABLE `last_sms`
  ADD PRIMARY KEY (`last_sms_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_sms`
--
ALTER TABLE `all_sms`
  MODIFY `all_sms_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `call_histories`
--
ALTER TABLE `call_histories`
  MODIFY `call_history_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=941;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1604;

--
-- AUTO_INCREMENT for table `fcm_token`
--
ALTER TABLE `fcm_token`
  MODIFY `fcm_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `last_sms`
--
ALTER TABLE `last_sms`
  MODIFY `last_sms_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
