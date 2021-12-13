-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 20, 2021 at 01:15 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `excelitai`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avater` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `designation`, `avater`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'fahimkhan', 'fahimkhanmpi373950@gmail.com', '$2y$10$eRparySIQYc2S3h2CcKmXe.Bz4wbqBkV3BNJorG6uzMnwjQBkwkqS', 'super-admin', '1632120991admin.jpg', '01725760300', '2021-09-01 03:53:13', '2021-09-20 00:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`id`, `name`, `designation`, `email`, `profile_photo`, `phone_number`, `created_at`, `updated_at`) VALUES
(6, 'Irin Oasman', 'Chairman', 'irinoasman@gmail.com', '1632046914_management_.jpg', '01234567890', '2021-09-19 04:21:54', '2021-09-19 04:21:54'),
(7, 'Md Badroddoza', 'Managing Director', 'badroddoza@gmail.com', '1632046994_management_.jpg', '01234567890', '2021-09-19 04:23:14', '2021-09-19 04:23:14'),
(8, 'Shahid Mahmum', 'Chief Executive Officer', 'mahmum@gmail.com', '1632047093_management_.jpg', '01234567890', '2021-09-19 04:24:53', '2021-09-19 04:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_09_01_061724_create_admins_table', 1),
(11, '2021_09_02_092605_create_software_teams_table', 2),
(12, '2021_09_02_094013_create_sliders_table', 3),
(13, '2021_09_07_101134_create_management_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 1, 'excel it ai', '346f638c48073fbcae09498d12651e10a3504e662192e10a639727a03d07237f', '[\"*\"]', '2021-09-01 04:08:21', '2021-09-01 04:07:13', '2021-09-01 04:08:21'),
(10, 'App\\Models\\Admin', 1, 'excel it ai', '9c9de49e2a520160647bc595615cdc366abf8ece561dbe3659adb5fbd9121a21', '[\"*\"]', '2021-09-12 03:48:39', '2021-09-02 02:07:10', '2021-09-12 03:48:39'),
(11, 'App\\Models\\Admin', 1, 'excel it ai', '32af69c0a822b3046214f019fa898f4320d646ad7535cb056775a55c91238423', '[\"*\"]', '2021-09-13 04:59:48', '2021-09-13 04:30:26', '2021-09-13 04:59:48'),
(12, 'App\\Models\\Admin', 1, 'excel it ai', '54a9471c99925f4c5f356d2138820f57a8cea1059b010deed466c6aa9603bb73', '[\"*\"]', '2021-09-18 23:54:22', '2021-09-18 23:06:42', '2021-09-18 23:54:22'),
(13, 'App\\Models\\Admin', 1, 'excel it ai', 'ce18659159b06c987698c3d3aa925eca44d9841610865a791ae7d9ed382188b6', '[\"*\"]', '2021-09-19 04:24:53', '2021-09-18 23:55:09', '2021-09-19 04:24:53'),
(14, 'App\\Models\\Admin', 1, 'excel it ai', 'fd737a69db436a3ebf7ee0ff17aae50bb2f28847c59c8074a45d1158178c7094', '[\"*\"]', '2021-09-19 04:28:03', '2021-09-19 04:26:14', '2021-09-19 04:28:03'),
(15, 'App\\Models\\Admin', 1, 'excel it ai', 'f9474a336fcd815bb7eb73684d67d212208cb6e8468cab44a28b9678e402f8f2', '[\"*\"]', '2021-09-20 03:43:46', '2021-09-20 00:54:49', '2021-09-20 03:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `slider_description`, `slider_img`, `created_at`, `updated_at`) VALUES
(67, 'Web Application Development', 'Web components are core parts of full stack mobile products. Our internal team can help you build Web Admins, Content Management Systems or small CRMS. Our team of crack frontend developers routinely deliver stunning, fully responsive websites that help our customers outshine their competition.', '1632033037slider_.png', '2021-09-19 00:30:38', '2021-09-19 00:30:38'),
(68, 'Mobile Application Development', 'Our mobile application development solutions include various domains and topics. This service is about creating mobile applications for end-user smartphones, tablets, and other devices. In general, you can get full-cycle software development with all the necessary stages: business analysis, architecture planning, UI/UX design and prototyping, development, testing and QA, release with deployment or publication, and further tech suppor', '1632033087slider_.png', '2021-09-19 00:31:27', '2021-09-19 00:31:27'),
(69, 'UI/UX Design', 'UI/UX design services include two critical aspects: user interface and user experience.', '1632033118slider_.png', '2021-09-19 00:31:58', '2021-09-19 00:31:58'),
(70, 'Custom Software Development', 'Any customized software solution is all about unique products and services. You can get virtually whatever you need, from AI satellite data analysis software to regular online shop. Through custom software outsourcing experience, you get a significant market advantage. The thing is that your bespoke software will be unique and unavailable to competitors, unlike ready-made packages by product vendors that sell their solutions to different teams.', '1632033152slider_.png', '2021-09-19 00:32:33', '2021-09-19 00:32:33'),
(71, 'Digital Marketing', 'Digital Marketing Activity \nElaborate the history of Digital Marketing', '1632033293slider_.png', '2021-09-19 00:34:53', '2021-09-19 00:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `software_teams`
--

CREATE TABLE `software_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `software_teams`
--

INSERT INTO `software_teams` (`id`, `name`, `designation`, `employee_id`, `email`, `profile_photo`, `phone_number`, `created_at`, `updated_at`) VALUES
(66, 'Sakkhar', 'Technical Project Manager', '202101', 'Sakkhar@gmail.com', '1632034698softwareteam_.jpg', '01234567890', '2021-09-19 00:58:18', '2021-09-19 00:58:18'),
(67, 'Hasibur Rahman', 'Software Engineer', '202102', 'hasibur2060@gmail.com', '1632034760softwareteam_.jpg', '01799328264', '2021-09-19 00:59:20', '2021-09-19 00:59:20'),
(68, 'M.A.Monyeem', 'Software Engineer', '202103', 'monyeem@gmail.com', '1632034819softwareteam_.jpg', '01234567890', '2021-09-19 01:00:19', '2021-09-19 01:00:19'),
(69, 'Zinat Sultana', 'Junior UI/UX Designer', '202104', 'sultana@gmail.com', '1632034864softwareteam_.jpg', '01234567890', '2021-09-19 01:01:04', '2021-09-19 01:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'fahimkhanmpi373950@gmail.com', NULL, '$2y$10$X2z5NoSno9mkhWck/CL8V..lMELQIe1OYWThShj1c1ANo.CTWf05y', NULL, '2021-09-01 04:03:07', '2021-09-01 04:03:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `software_teams`
--
ALTER TABLE `software_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `software_teams`
--
ALTER TABLE `software_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
