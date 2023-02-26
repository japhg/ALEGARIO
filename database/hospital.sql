-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 12:57 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` int(10) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `twitter` text NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `firstname`, `middlename`, `lastname`, `about`, `street`, `barangay`, `city`, `state`, `country`, `zipcode`, `phoneNumber`, `email`, `twitter`, `facebook`, `instagram`, `linkedin`, `image`, `date_added`) VALUES
(1, 31, 'Super', 'Admin', 'SuperAdmin', '', '', '', '', '', '', 0, '', 'superadmin@alegariocurehms.com', '', '', '', '', '', '2023-02-05 23:35:57'),
(2, 32, 'hr', 'admin', 'hradmin', '', '', '', '', '', '', 0, '', 'hradmin@alegariocurehms.com', '', '', '', '', '', '2023-02-05 23:39:59'),
(3, 33, 'core', 'admin', 'coreadmin', '', '', '', '', '', '', 0, '', 'coreadmin@alegariocurehms.com', '', '', '', '', '', '2023-02-05 23:40:19'),
(4, 34, 'logistics', 'admin', 'logisticsadmin', '', '', '', '', '', '', 0, '', 'logisticsadmin@alegariocurehms.com', '', '', '', '', '', '2023-02-05 23:40:35'),
(5, 35, 'financial', 'admin', 'financialadmin', '', '', '', '', '', '', 0, '', 'financialadmin@alegariocurehms.com', '', '', '', '', '', '2023-02-05 23:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `attempt_table`
--

CREATE TABLE `attempt_table` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(30) NOT NULL,
  `time_count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `user_id`, `first_name`, `last_name`, `contact_number`) VALUES
(2, 22, 'doctor', 'doctor', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_staff`
--

CREATE TABLE `hospital_staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_staff`
--

INSERT INTO `hospital_staff` (`id`, `user_id`, `first_name`, `last_name`, `contact_number`) VALUES
(2, 24, 'Hospital Staff', 'Hospital Staff', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `med_tech`
--

CREATE TABLE `med_tech` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `med_tech`
--

INSERT INTO `med_tech` (`id`, `user_id`, `first_name`, `last_name`, `contact_number`) VALUES
(1, 25, 'Med Tech', 'Med Tech', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `nutritionist`
--

CREATE TABLE `nutritionist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nutritionist`
--

INSERT INTO `nutritionist` (`id`, `user_id`, `first_name`, `last_name`, `contact_number`) VALUES
(1, 26, 'Nutritionist', 'Nutritionist', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `civil_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `user_id`, `first_name`, `last_name`, `contact_number`, `address`, `birth_date`, `age`, `gender`, `civil_status`) VALUES
(2, 30, 'Patient', 'Patient', '09123456789', 'Patient Address', '2001-01-01', 22, 'Male', 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`u_id`, `username`, `password`, `role`) VALUES
(22, 'D72687502873', '$2y$10$r/ulmx6W0zOmOZbLVScxUus1D0JcOTiE9NAu6ObVsJSMVHO2qzOF6', 'DOCTOR'),
(24, 'H51294737698', '$2y$10$P7LyW8FuObCmrxeUH7wG1.rUAXkW0WOkJ9bqMmsSGkE7hXH8nmloq', 'HOSPITAL STAFF'),
(25, 'M85101472097', '$2y$10$dr2H7bMRe2yau/f33QjIcue8JqHH3wpzIvuQ9UQnrZr29Ckt7vU2m', 'MEDTECH'),
(26, 'N85979612632', '$2y$10$yQYhdovCDDtHXPlDPTQHuOauqLPIawhXsyIfWk89tUIaQgQgd7Y0a', 'NUTRITIONIST'),
(30, 'P38825336460', '$2y$10$JaQgfJ4LPINKvVI3UvjUWOReP0R/lAU6phMjgrQAVGQr.tM.ecPNq', 'PATIENT'),
(31, 'superAdmin895', '$2y$10$V/vRRnG0aoEO95QXsooMBeIQz148OElFU9vtIn4Fx.CegAOcegbeu', 'SUPER ADMIN'),
(32, 'hrAdmin701', '$2y$10$Jo91kaGNb4pB0EjEnCY3H.Dd3A9rKPJsERRphMOyYUYQB9l6L6vuK', 'HR ADMIN'),
(33, 'coreAdmin757', '$2y$10$pDurZ9UE1CPXRcrOo4PQWuN5Ta1iyT.RXWsZn9owSwK.3q5b5H8Ie', 'CORE ADMIN'),
(34, 'logAdmin323', '$2y$10$m67xBGcLaplCEChb5nuESeaVWSCNeGKTjGBc5D327JSHq7UaJOPVe', 'LOGISTICS ADMIN'),
(35, 'financialAdmin928', '$2y$10$drh3VMwzZvBubN4IQRhzv.eJgsgQVO2HY7nEMmCuwqkUg5LhC.lNC', 'FINANCIALS ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `attempt_table`
--
ALTER TABLE `attempt_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hospital_staff`
--
ALTER TABLE `hospital_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `med_tech`
--
ALTER TABLE `med_tech`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nutritionist`
--
ALTER TABLE `nutritionist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attempt_table`
--
ALTER TABLE `attempt_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hospital_staff`
--
ALTER TABLE `hospital_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `med_tech`
--
ALTER TABLE `med_tech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nutritionist`
--
ALTER TABLE `nutritionist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`u_id`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`u_id`);

--
-- Constraints for table `hospital_staff`
--
ALTER TABLE `hospital_staff`
  ADD CONSTRAINT `hospital_staff_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`u_id`);

--
-- Constraints for table `med_tech`
--
ALTER TABLE `med_tech`
  ADD CONSTRAINT `med_tech_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`u_id`);

--
-- Constraints for table `nutritionist`
--
ALTER TABLE `nutritionist`
  ADD CONSTRAINT `nutritionist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`u_id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`u_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
