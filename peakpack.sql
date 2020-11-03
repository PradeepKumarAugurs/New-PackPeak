-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2020 at 09:40 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pack Peak', 'admin@peaknpacks.tk', '$2y$10$eve/0l5Cvyki7DfnM0CdiOKOE9YMJHxZmJyoE7552wta/SkuzYdM6', 1, NULL, '2020-08-14 08:25:52', '2020-08-14 08:25:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(11) NOT NULL,
  `form_no` varchar(255) DEFAULT NULL,
  `form_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `form_no`, `form_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'form1', 'Add PickUp', 1, '2020-08-19 10:05:28', '2020-08-19 10:05:28'),
(2, 'form2', 'PickUps Report', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(3, 'form3', 'PickUps Calender', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(4, 'form4', '6 Monthly Compliance Reports', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(5, 'form5', 'All Compliance Index Reports', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(6, 'form6', 'Add Patients', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(7, 'form7', 'New Patients Reports', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(8, 'form8', 'Patients Picked Up Last Month', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(9, 'form9', 'Add Checking', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(10, 'form10', 'Checking Reports', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(11, 'form11', 'Add Near Misses', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(12, 'form12', 'All Near Misses', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(13, 'form13', 'Last Month Miss Reports', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(14, 'form14', 'Near Miss Monthly Reports v2', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(15, 'form15', 'Add Return', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(16, 'form16', 'All Return', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(17, 'form17', 'Add Audit', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(18, 'form18', 'All Audit', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(19, 'form19', 'Add Note For Patients', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(20, 'form20', 'Note For Patients Reports', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27'),
(21, 'form21', 'Sms Tracking Reports', 1, '2020-08-19 10:37:27', '2020-08-19 10:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `hostnames`
--

CREATE TABLE `hostnames` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fqdn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `force_https` tinyint(1) NOT NULL DEFAULT 0,
  `under_maintenance_since` timestamp NULL DEFAULT NULL,
  `website_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostnames`
--

INSERT INTO `hostnames` (`id`, `fqdn`, `redirect_to`, `force_https`, `under_maintenance_since`, `website_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hyn.localhost', NULL, 0, NULL, 1, '2020-08-14 08:29:25', '2020-08-14 08:29:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2017_01_01_000003_tenancy_websites', 1),
(9, '2017_01_01_000005_tenancy_hostnames', 1),
(10, '2018_04_06_000001_tenancy_websites_needs_db_host', 1),
(11, '2020_01_20_000001_create_permissions_table', 1),
(12, '2020_01_20_000002_create_roles_table', 1),
(13, '2020_01_20_000004_create_projects_table', 1),
(14, '2020_01_20_000005_create_permission_role_pivot_table', 1),
(15, '2020_01_20_000006_create_role_user_pivot_table', 1),
(16, '2020_01_20_000007_add_relationship_fields_to_projects_table', 1),
(17, '2020_07_24_114531_create_phermacist_table', 1),
(18, '2020_08_11_124718_create_subscriptions_table', 1),
(19, '2020_08_11_144245_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phermacist`
--

CREATE TABLE `phermacist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phermacist`
--

INSERT INTO `phermacist` (`id`, `username`, `first_name`, `last_name`, `email`, `company_name`, `host_name`, `password`, `subscription`, `created_at`, `updated_at`) VALUES
(1, 'pradeepkumar', 'pradeep', 'kumar', 'pradeep@gmail.com', 'hyn', 'hyn', '$2y$10$1CJ7uzhSuMpIramyVzSo6upWwtpp2RGLLTnJno0fp1XsU2R7hcm8m', '1', '2020-08-14 08:29:32', '2020-08-14 08:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_admins` bigint(20) UNSIGNED DEFAULT NULL,
  `no_of_technicians` bigint(20) UNSIGNED DEFAULT NULL,
  `form1` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Add PickUp',
  `form2` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'PickUps Report',
  `form3` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'PickUps Calender',
  `form4` tinyint(1) NOT NULL DEFAULT 0 COMMENT '6 Monthly Compliance Reports',
  `form5` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'All Compliance Index Reports',
  `form6` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Add Patients',
  `form7` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'New Patients Reports',
  `form8` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Patients Picked Up Last Month',
  `form9` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Add Checking',
  `form10` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Checking Reports',
  `form11` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Add Near Misses',
  `form12` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'All Near Misses',
  `form13` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Last Month Miss Reports',
  `form14` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Near Miss Monthly Reports v2',
  `form15` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Add Return',
  `form16` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'All Return',
  `form17` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Add Audit',
  `form18` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'All Audit',
  `form19` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Add Note For Patients',
  `form20` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Note For Patients Reports',
  `form21` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Sms Tracking Reports',
  `status` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `no_of_admins`, `no_of_technicians`, `form1`, `form2`, `form3`, `form4`, `form5`, `form6`, `form7`, `form8`, `form9`, `form10`, `form11`, `form12`, `form13`, `form14`, `form15`, `form16`, `form17`, `form18`, `form19`, `form20`, `form21`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Large', 1, 3, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, NULL, '2020-08-18 22:53:18'),
(2, 'Medium', 1, 2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-08-18 06:16:14'),
(3, 'Small', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initials_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `initials_name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `company_name`, `phone`, `registration_no`, `address`, `host_name`, `website_id`, `subscription`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pradeep kumar', 'P.K.', 'pradeep', 'kumar', 'pradeep@gmail.com', NULL, '$2y$10$G2ooR2Q61DcVIyNkjCAZXuiD./EoskinG2KqGZbMzt1an4haSniQm', NULL, 'hyn', '043795986349', 'PHA0013593220201408', 'Gomti Nagar, Lucknow, Uttar Pradesh, India', 'hyn', '1', '1', '2020-08-14 08:29:32', '2020-08-14 08:29:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `managed_by_database_connection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'References the database connection key in your database.php'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `uuid`, `created_at`, `updated_at`, `deleted_at`, `managed_by_database_connection`) VALUES
(1, 'hyn', '2020-08-14 08:29:25', '2020-08-14 08:29:25', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostnames`
--
ALTER TABLE `hostnames`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hostnames_fqdn_unique` (`fqdn`),
  ADD KEY `hostnames_website_id_foreign` (`website_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_896871` (`role_id`),
  ADD KEY `permission_id_fk_896871` (`permission_id`);

--
-- Indexes for table `phermacist`
--
ALTER TABLE `phermacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_fk_896888` (`author_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_896880` (`user_id`),
  ADD KEY `role_id_fk_896880` (`role_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `hostnames`
--
ALTER TABLE `hostnames`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phermacist`
--
ALTER TABLE `phermacist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hostnames`
--
ALTER TABLE `hostnames`
  ADD CONSTRAINT `hostnames_website_id_foreign` FOREIGN KEY (`website_id`) REFERENCES `websites` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_896871` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_896871` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `author_fk_896888` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_896880` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_896880` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
