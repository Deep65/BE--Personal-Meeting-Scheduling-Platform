-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Generation Time: Oct 08, 2023 at 05:31 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meeting-scheduling-platform`
--
CREATE DATABASE IF NOT EXISTS `meeting-scheduling-platform` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `meeting-scheduling-platform`;

-- --------------------------------------------------------

--
-- Table structure for table `slotbookings`
--

DROP TABLE IF EXISTS `slotbookings`;
CREATE TABLE `slotbookings` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `isRescheduled` tinyint(1) NOT NULL,
  `bookingDate` date NOT NULL,
  `createdAt` int(11) NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slotbookings`
--

INSERT INTO `slotbookings` (`id`, `sender_id`, `receiver_id`, `event_name`, `description`, `status`, `isRescheduled`, `bookingDate`, `createdAt`, `updatedAt`, `start_time`, `end_time`) VALUES
(4, 21, 1, 'Test', 'Tedting', '0', 0, '2023-07-08', 2023, '2023-10-08 00:01:37', '00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `useravailabilities`
--

DROP TABLE IF EXISTS `useravailabilities`;
CREATE TABLE `useravailabilities` (
  `id` int(11) NOT NULL,
  `week_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `duration` int(11) NOT NULL,
  `createdAt` date NOT NULL DEFAULT current_timestamp(),
  `updatedAt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `useravailabilities`
--

INSERT INTO `useravailabilities` (`id`, `week_id`, `user_id`, `start_date`, `end_date`, `start_time`, `end_time`, `duration`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2023-10-07', '2023-10-07', '10:00:00', '11:00:00', 1, '2023-10-07', '0000-00-00'),
(3, 1, 1, '2023-10-07', '2023-10-07', '10:00:00', '11:00:00', 1, '2023-10-07', '0000-00-00'),
(4, 2, 1, '2023-10-09', '2023-10-09', '10:00:00', '12:00:00', 2, '2023-10-07', '0000-00-00'),
(5, 3, 1, '2023-10-08', '2023-10-08', '10:00:00', '11:00:00', 1, '2023-10-07', '0000-00-00'),
(8, 1, 1, '2023-10-09', '2023-10-09', '10:00:00', '12:00:00', 2, '2023-10-07', '2023-10-07'),
(9, 4, 1, '2023-11-07', '2023-11-07', '10:00:00', '11:00:00', 1, '2023-10-07', '2023-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `userName` varchar(100) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `refreshToken` int(11) NOT NULL,
  `isActivated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `otp`, `userName`, `phoneNumber`, `createdAt`, `updatedAt`, `refreshToken`, `isActivated`) VALUES
(1, 'Deep Gandhi', 'deepgandhi65@gmail.com', '$2a$10$ZrcH8S2Dk.VFrzdv3WGmXOzIWvqrHHSWl8kxPNAtvxj/03NG50eFC', 293883, 'Deep65', '8401618268', '2023-10-07 13:05:19', '2023-10-07 13:05:19', 0, NULL),
(21, 'Kshitish Dixit', 'kshitishdixit@gmail.com', '$2a$10$wcVaYkZSQfH.URKlpsC4Ee152yFzJ/4v11fmDPqZEa4hWPHjE3cNC', 962507, 'kshitishdixit', '1234567890', '2023-10-08 00:27:22', '2023-10-08 00:27:22', 0, 0),
(22, 'Titus Varghese', 'titusvargheese55@gmail.com', '$2a$10$dyLmaxwZQUt3ovJNIUnJSeoKRCwDhGfQrp7CIBguBCyrkhPHRaGvi', 467274, 'TitusRocks', '1234567890', '2023-10-08 00:58:24', '2023-10-08 00:59:16', 0, 0),
(34, 'Man Shah', 'man@yopmail.com', '$2a$10$NoRq29FsCPPgknnqUzyC7.WhvQnoIvSAEjPJbAkRH/3t1sj1NQifu', 543395, 'manshah', '9874563210', '2023-10-08 02:11:41', '2023-10-08 02:13:11', 0, 0),
(35, 'dsad', 'asdasd@hh.com', '$2a$10$toH5mWHHVyyHPFKS9aZxFu97zDvdu2roO3A5sQWzlgE7L4roYZjRS', 801452, 'asdad', '123456', '2023-10-08 02:24:28', '2023-10-08 02:24:28', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `weeks`
--

DROP TABLE IF EXISTS `weeks`;
CREATE TABLE `weeks` (
  `id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `dayId` int(11) NOT NULL,
  `createdAt` int(11) NOT NULL DEFAULT current_timestamp(),
  `updatedAt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weeks`
--

INSERT INTO `weeks` (`id`, `day`, `dayId`, `createdAt`, `updatedAt`) VALUES
(1, 'Monday', 1, 2147483647, 0),
(2, 'Tuesday', 2, 2147483647, 0),
(3, 'Wednesday', 3, 2147483647, 0),
(4, 'Thursday', 4, 2147483647, 0),
(5, 'Friday', 5, 2147483647, 0),
(6, 'Saturday', 6, 2147483647, 0),
(7, 'Sunday', 7, 2147483647, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `slotbookings`
--
ALTER TABLE `slotbookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `useravailabilities`
--
ALTER TABLE `useravailabilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `week_id` (`week_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`),
  ADD UNIQUE KEY `email_4` (`email`),
  ADD UNIQUE KEY `email_5` (`email`),
  ADD UNIQUE KEY `email_6` (`email`),
  ADD UNIQUE KEY `email_7` (`email`),
  ADD UNIQUE KEY `email_8` (`email`),
  ADD UNIQUE KEY `email_9` (`email`),
  ADD UNIQUE KEY `email_10` (`email`),
  ADD UNIQUE KEY `email_11` (`email`),
  ADD UNIQUE KEY `email_12` (`email`),
  ADD UNIQUE KEY `email_13` (`email`),
  ADD UNIQUE KEY `email_14` (`email`),
  ADD UNIQUE KEY `email_15` (`email`),
  ADD UNIQUE KEY `email_16` (`email`),
  ADD UNIQUE KEY `email_17` (`email`),
  ADD UNIQUE KEY `email_18` (`email`),
  ADD UNIQUE KEY `email_19` (`email`),
  ADD UNIQUE KEY `email_20` (`email`),
  ADD UNIQUE KEY `email_21` (`email`),
  ADD UNIQUE KEY `email_22` (`email`),
  ADD UNIQUE KEY `email_23` (`email`),
  ADD UNIQUE KEY `email_24` (`email`),
  ADD UNIQUE KEY `email_25` (`email`),
  ADD UNIQUE KEY `email_26` (`email`),
  ADD UNIQUE KEY `email_27` (`email`),
  ADD UNIQUE KEY `email_28` (`email`),
  ADD UNIQUE KEY `email_29` (`email`),
  ADD UNIQUE KEY `email_30` (`email`),
  ADD UNIQUE KEY `email_31` (`email`),
  ADD UNIQUE KEY `email_32` (`email`),
  ADD UNIQUE KEY `email_33` (`email`),
  ADD UNIQUE KEY `email_34` (`email`),
  ADD UNIQUE KEY `email_35` (`email`),
  ADD UNIQUE KEY `email_36` (`email`),
  ADD UNIQUE KEY `email_37` (`email`),
  ADD UNIQUE KEY `email_38` (`email`),
  ADD UNIQUE KEY `email_39` (`email`),
  ADD UNIQUE KEY `email_40` (`email`),
  ADD UNIQUE KEY `email_41` (`email`),
  ADD UNIQUE KEY `email_42` (`email`),
  ADD UNIQUE KEY `email_43` (`email`),
  ADD UNIQUE KEY `email_44` (`email`),
  ADD UNIQUE KEY `email_45` (`email`),
  ADD UNIQUE KEY `email_46` (`email`),
  ADD UNIQUE KEY `email_47` (`email`),
  ADD UNIQUE KEY `email_48` (`email`),
  ADD UNIQUE KEY `email_49` (`email`),
  ADD UNIQUE KEY `email_50` (`email`),
  ADD UNIQUE KEY `email_51` (`email`),
  ADD UNIQUE KEY `email_52` (`email`),
  ADD UNIQUE KEY `email_53` (`email`),
  ADD UNIQUE KEY `email_54` (`email`),
  ADD UNIQUE KEY `email_55` (`email`),
  ADD UNIQUE KEY `email_56` (`email`),
  ADD UNIQUE KEY `email_57` (`email`),
  ADD UNIQUE KEY `email_58` (`email`),
  ADD UNIQUE KEY `email_59` (`email`),
  ADD UNIQUE KEY `email_60` (`email`),
  ADD UNIQUE KEY `email_61` (`email`),
  ADD UNIQUE KEY `email_62` (`email`),
  ADD UNIQUE KEY `email_63` (`email`);

--
-- Indexes for table `weeks`
--
ALTER TABLE `weeks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `slotbookings`
--
ALTER TABLE `slotbookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `useravailabilities`
--
ALTER TABLE `useravailabilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `weeks`
--
ALTER TABLE `weeks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `slotbookings`
--
ALTER TABLE `slotbookings`
  ADD CONSTRAINT `slotbookings_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `slotbookings_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `useravailabilities`
--
ALTER TABLE `useravailabilities`
  ADD CONSTRAINT `useravailabilities_ibfk_1` FOREIGN KEY (`week_id`) REFERENCES `weeks` (`id`),
  ADD CONSTRAINT `useravailabilities_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
