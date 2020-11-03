-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2020 at 08:20 AM
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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
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
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `subscription_id`, `url`, `param`, `icon`, `submenu`, `sequence`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dashboard', 1, 'dashboard', NULL, 'fa-dashboard', 0, 1, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(2, 'Technician', 1, NULL, NULL, 'fa-user-md', 1, 2, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(3, 'Patients', 1, NULL, NULL, 'fa-wheelchair', 1, 3, '2020-09-29 10:20:44', '2020-09-29 13:07:18', NULL),
(4, 'Pick Ups', 1, NULL, NULL, 'fa-ambulance', 1, 4, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(5, 'Checking', 1, NULL, NULL, 'fa-magic', 1, 5, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(6, 'Returns', 1, NULL, NULL, 'fa-reply', 1, 6, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(7, 'Audits', 1, NULL, NULL, 'fa-edit', 1, 7, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(8, 'Notes For Patient', 1, NULL, NULL, 'fa-tag', 1, 8, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(9, 'Near Misses', 1, NULL, NULL, 'fa-tag', 1, 9, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(10, 'Dashboard', 2, 'dashboard', NULL, 'fa-dashboard', 0, 1, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(11, 'Technician', 2, NULL, NULL, 'fa-user-md', 1, 2, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(12, 'Patients', 2, NULL, NULL, 'fa-wheelchair', 1, 3, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(13, 'Pick Ups', 2, NULL, NULL, 'fa-ambulance', 1, 4, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(14, 'Checking', 2, NULL, NULL, 'fa-magic', 1, 5, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(15, 'Returns', 2, NULL, NULL, 'fa-reply', 1, 6, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(16, 'Audits', 2, NULL, NULL, 'fa-edit', 1, 7, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(17, 'Notes For Patient', 2, NULL, NULL, 'fa-tag', 1, 8, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(18, 'Near Misses', 2, NULL, NULL, 'fa-tag', 1, 9, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(19, 'Dashboard', 3, 'dashboard', NULL, 'fa-dashboard', 0, 1, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(20, 'Technician', 3, NULL, NULL, 'fa-user-md', 1, 2, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(21, 'Patients', 3, NULL, NULL, 'fa-wheelchair', 1, 3, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(22, 'Pick Ups', 3, NULL, NULL, 'fa-ambulance', 1, 4, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(23, 'Checking', 3, NULL, NULL, 'fa-magic', 1, 5, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(24, 'Returns', 3, NULL, NULL, 'fa-reply', 1, 6, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(25, 'Audits', 3, NULL, NULL, 'fa-edit', 1, 7, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(26, 'Notes For Patient', 3, NULL, NULL, 'fa-tag', 1, 8, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(27, 'Near Misses', 3, NULL, NULL, 'fa-tag', 1, 9, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(28, 'Search', 1, 'search', NULL, 'fa-search', 0, 1, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(29, 'Search', 2, 'search', NULL, 'fa-search', 0, 1, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL),
(30, 'Search', 3, 'search', NULL, 'fa-search', 0, 1, '2020-09-29 10:20:44', '2020-09-29 10:20:44', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
