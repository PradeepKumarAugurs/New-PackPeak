-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2020 at 08:19 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peakpack`
--

-- --------------------------------------------------------

--
-- Table structure for table `sub_menus`
--

CREATE TABLE `sub_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `param` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submenu` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_menus`
--

INSERT INTO `sub_menus` (`id`, `menu_id`, `subscription_id`, `name`, `url`, `param`, `icon`, `submenu`, `sequence`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'Add Technician', 'technician', NULL, 'fa-user-md', 0, 10, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(2, 2, 1, 'All Technician', 'all_technician', NULL, 'fa-circle-o', 0, 11, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(3, 3, 1, 'Add New Patient', 'patients', NULL, 'fa-key', 0, 12, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(4, 3, 1, 'New Patient Report', 'new_patients_report', NULL, 'fa-circle-o', 0, 13, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(5, 4, 1, 'Add Pick Ups', 'pickups', NULL, 'fa-circle-o', 0, 14, '2020-09-29 10:20:44', '2020-10-13 08:49:16', NULL),
(6, 4, 1, 'Pickups Report', 'pickups_reports', NULL, 'fa-circle-o', 0, 15, '2020-09-29 10:20:44', '2020-10-12 06:51:06', NULL),
(7, 4, 1, '6 Monthly Compliance Report', 'six_month_compliance', NULL, 'fa-circle-o', 0, 14, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(8, 4, 1, 'All Compliance Index Reports', 'all_compliance', NULL, 'fa-circle-o', 0, 15, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(9, 4, 1, 'Patient Picked Up Last Month', 'patients_picked_up_last_month', NULL, 'fa-circle-o', 0, 16, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(10, 5, 1, 'Add Checking', 'checkings', NULL, 'fa-key', 0, 17, '2020-09-29 10:20:44', '2020-10-13 09:11:41', NULL),
(11, 5, 1, 'Checking Report', 'checkings_report', NULL, 'fa-circle-o', 0, 18, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(12, 6, 1, 'Add Return', 'returns', NULL, 'fa-key', 0, 19, '2020-09-29 10:20:44', '2020-10-13 09:43:54', NULL),
(13, 6, 1, 'All Returns', 'all_returns', NULL, 'fa-circle-o', 0, 20, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(14, 7, 1, 'Add Audit', 'audits', NULL, 'fa-key', 0, 21, '2020-09-29 10:20:44', '2020-10-13 09:43:48', NULL),
(15, 7, 1, 'All Audit', 'all_audits', NULL, 'fa-circle-o', 0, 22, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(16, 8, 1, 'Add Notes For Patients', 'notes_for_patients', NULL, 'fa-circle-o', 0, 23, '2020-09-29 10:20:44', '2020-10-13 09:53:04', NULL),
(17, 8, 1, 'Notes For Patients Report', 'notes_for_patients_report', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(18, 8, 1, 'Sms Tracking Report', 'sms_tracking_report', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(19, 9, 1, 'Near Miss', 'near_miss', NULL, 'fa-key', 0, 24, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(20, 9, 1, 'All Near Misses', 'all_near_miss', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(21, 9, 1, 'Last Month Report', 'nm_last_month', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(22, 9, 1, 'NM Montholy Report V2', 'nm_monthly', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(23, 11, 2, 'Add Technician', 'technician', NULL, 'fa-user-md', 0, 10, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(24, 11, 2, 'All Technician', 'all_technician', NULL, 'fa-circle-o', 0, 11, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(25, 12, 2, 'Add New Patient', 'patients', NULL, 'fa-key', 0, 12, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(26, 12, 2, 'New Patient Report', 'new_patients_report', NULL, 'fa-circle-o', 0, 13, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(27, 13, 2, 'Add Pick Ups', 'pickups', NULL, 'fa-circle-o', 0, 14, '2020-09-29 10:20:44', '2020-10-13 08:49:33', NULL),
(28, 13, 2, 'Pick Ups Report', 'pickups_reports', NULL, 'fa-circle-o', 0, 13, '2020-09-29 10:20:44', '2020-10-13 06:26:51', NULL),
(29, 13, 2, '6 Monthly Compliance Report', 'six_month_compliance', NULL, 'fa-circle-o', 0, 14, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(30, 13, 2, 'All Compliance Index Reports', 'all_compliance', NULL, 'fa-circle-o', 0, 15, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(31, 13, 2, 'Patient Picked Up Last Month', 'patients_picked_up_last_month', NULL, 'fa-circle-o', 0, 16, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(32, 14, 2, 'Add Checking', 'checkings', NULL, 'fa-key', 0, 17, '2020-09-29 10:20:44', '2020-10-13 09:12:04', NULL),
(33, 14, 2, 'Checking Report', 'checkings_report', NULL, 'fa-circle-o', 0, 18, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(34, 15, 2, 'Add Return', 'returns', NULL, 'fa-key', 0, 19, '2020-09-29 10:20:44', '2020-10-13 09:44:13', NULL),
(35, 15, 2, 'All Returns', 'all_returns', NULL, 'fa-circle-o', 0, 20, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(36, 16, 2, 'Add Audit', 'audits', NULL, 'fa-key', 0, 21, '2020-09-29 10:20:44', '2020-10-13 09:44:20', NULL),
(37, 16, 2, 'All Audit', 'all_audits', NULL, 'fa-circle-o', 0, 22, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(38, 17, 2, 'Add Notes For Patients', 'notes_for_patients', NULL, 'fa-circle-o', 0, 23, '2020-09-29 10:20:44', '2020-10-13 09:52:54', NULL),
(39, 17, 2, 'Notes For Patients Report', 'notes_for_patients_report', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(40, 17, 2, 'Sms Tracking Report', 'sms_tracking_report', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(41, 18, 2, 'Near Miss', 'near_miss', NULL, 'fa-key', 0, 24, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(42, 18, 2, 'All Near Misses', 'all_near_miss', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(43, 18, 2, 'Last Month Report', 'nm_last_month', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(44, 18, 2, 'NM Montholy Report V2', 'nm_monthly', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(45, 20, 3, 'Add Technician', 'technician', NULL, 'fa-user-md', 0, 10, '2020-09-29 10:20:44', '2020-10-13 06:24:22', NULL),
(46, 20, 3, 'All Technician', 'all_technician', NULL, 'fa-circle-o', 0, 11, '2020-09-29 10:20:44', '2020-10-13 06:24:22', NULL),
(47, 21, 3, 'Add New Patient', 'patients', NULL, 'fa-key', 0, 12, '2020-09-29 10:20:44', '2020-10-13 06:24:22', NULL),
(48, 21, 3, 'New Patient Report', 'new_patients_report', NULL, 'fa-circle-o', 0, 13, '2020-09-29 10:20:44', '2020-10-13 06:24:22', NULL),
(49, 22, 3, 'Add Pick Ups', 'pickups', NULL, 'fa-circle-o', 0, 14, '2020-09-29 10:20:44', '2020-10-13 08:49:43', NULL),
(50, 22, 3, 'Pick Ups Report', 'pickups_reports', NULL, 'fa-circle-o', 0, 13, '2020-09-29 10:20:44', '2020-10-13 06:28:10', NULL),
(51, 22, 3, '6 Monthly Compliance Report', 'six_month_compliance', NULL, 'fa-circle-o', 0, 14, '2020-09-29 10:20:44', '2020-10-13 06:24:22', NULL),
(52, 22, 3, 'All Compliance Index Reports', 'all_compliance', NULL, 'fa-circle-o', 0, 15, '2020-09-29 10:20:44', '2020-10-13 06:24:22', NULL),
(53, 22, 3, 'Patient Picked Up Last Month', 'patients_picked_up_last_month', NULL, 'fa-circle-o', 0, 16, '2020-09-29 10:20:44', '2020-10-13 06:24:22', NULL),
(54, 23, 3, 'Add Checking', 'checkings', NULL, 'fa-key', 0, 17, '2020-09-29 10:20:44', '2020-10-13 09:12:17', NULL),
(55, 23, 3, 'Checking Report', 'checkings_report', NULL, 'fa-circle-o', 0, 18, '2020-09-29 10:20:44', '2020-10-13 06:24:22', NULL),
(56, 24, 3, 'Add Return', 'returns', NULL, 'fa-key', 0, 19, '2020-09-29 10:20:45', '2020-10-13 09:44:34', NULL),
(57, 24, 3, 'All Returns', 'all_returns', NULL, 'fa-circle-o', 0, 20, '2020-09-29 10:20:45', '2020-10-13 06:24:22', NULL),
(58, 25, 3, 'Add Audit', 'audits', NULL, 'fa-key', 0, 21, '2020-09-29 10:20:45', '2020-10-13 09:44:41', NULL),
(59, 25, 3, 'All Audit', 'all_audits', NULL, 'fa-circle-o', 0, 22, '2020-09-29 10:20:45', '2020-10-13 06:24:22', NULL),
(60, 26, 3, 'Add Notes For Patients', 'notes_for_patients', NULL, 'fa-circle-o', 0, 23, '2020-09-29 10:20:45', '2020-10-13 09:52:35', NULL),
(61, 26, 3, 'Notes For Patients Report', 'notes_for_patients_report', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:45', '2020-10-13 06:24:22', NULL),
(62, 26, 3, 'Sms Tracking Report', 'sms_tracking_report', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:45', '2020-10-13 06:24:22', NULL),
(63, 27, 3, 'Near Miss', 'near_miss', NULL, 'fa-key', 0, 24, '2020-09-29 10:20:45', '2020-10-13 06:24:22', NULL),
(64, 27, 3, 'All Near Misses', 'all_near_miss', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:45', '2020-10-13 06:24:22', NULL),
(65, 27, 3, 'Last Month Report', 'nm_last_month', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:45', '2020-10-13 06:24:22', NULL),
(66, 27, 3, 'NM Montholy Report V2', 'nm_monthly', NULL, 'fa-circle-o', 0, 24, '2020-09-29 10:20:45', '2020-10-13 06:24:22', NULL),
(67, 4, 1, 'Pick Ups Calender', 'pickups_calender', NULL, 'fa-circle-o', 0, 13, '2020-09-29 10:20:44', '2020-10-12 06:51:12', NULL),
(68, 13, 2, 'Pick Ups Calender', 'pickups_calender', NULL, 'fa-circle-o', 0, 13, '2020-09-29 10:20:44', '2020-10-13 06:21:30', NULL),
(69, 22, 3, 'Pick Ups Calender', 'pickups_calender', NULL, 'fa-circle-o', 0, 13, '2020-09-29 10:20:44', '2020-10-13 06:24:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_menus_menu_id_foreign` (`menu_id`),
  ADD KEY `sub_menus_subscription_id_foreign` (`subscription_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sub_menus`
--
ALTER TABLE `sub_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD CONSTRAINT `sub_menus_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `sub_menus_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
