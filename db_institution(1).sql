-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 16, 2021 at 08:52 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_institution`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '13_10_21_000000_create_admin_login_table', 1),
(2, '13_10_21_000000_create_courses_table', 1),
(3, '14_10_21_000000_create_answers_table', 1),
(4, '14_10_21_000000_create_exam_table', 1),
(5, '14_10_21_000000_create_examtype_table', 1),
(6, '14_10_21_000000_create_questions_table', 1),
(7, '14_10_21_000000_create_questionwise_result_table', 1),
(8, '14_10_21_000000_create_result_table', 1),
(9, '14_10_21_000000_create_students_table', 1),
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(14, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(15, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(16, '2016_06_01_000004_create_oauth_clients_table', 2),
(17, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(18, '2021_10_16_183641_create_articles_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('4af04ead9fb10b92bda7381e6b1c283ff9e23507970af882ea79e3132f28a90bf82576afc0814756', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-16 15:36:09', '2021-10-16 15:36:09', '2022-10-16 19:36:09'),
('72740ef6066581075a5682921fa4d503e04cd651640fd6208b4635137bb41f5e4a7dddfe5579dd4e', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-16 15:25:49', '2021-10-16 15:25:49', '2022-10-16 19:25:49'),
('82f7d68ebb65eca4a92447e3e030108df5b02999c81030b1b7195699c57bd38ef05b535e315e1018', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-16 15:38:49', '2021-10-16 15:38:49', '2022-10-16 19:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'institution Personal Access Client', 'jyJhUaqU1jbhQJOTuHhZkbMbIXxjNSSBTi5chgeR', NULL, 'http://localhost', 1, 0, 0, '2021-10-16 15:24:48', '2021-10-16 15:24:48'),
(2, NULL, 'institution Password Grant Client', 'Dj0Ew1a5s5UjE846q5PUBIzfCAvQgyLQ4m787CR1', 'users', 'http://localhost', 0, 1, 0, '2021-10-16 15:24:48', '2021-10-16 15:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-10-16 15:24:48', '2021-10-16 15:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_login`
--

DROP TABLE IF EXISTS `tbl_admin_login`;
CREATE TABLE IF NOT EXISTS `tbl_admin_login` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbl_admin_login_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_answers`
--

DROP TABLE IF EXISTS `tbl_answers`;
CREATE TABLE IF NOT EXISTS `tbl_answers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fk_bint_question_id` bigint NOT NULL,
  `var_answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_answers`
--

INSERT INTO `tbl_answers` (`id`, `fk_bint_question_id`, `var_answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'A1', NULL, NULL),
(2, 2, 'A2', NULL, NULL),
(3, 3, 'A3', NULL, NULL),
(4, 4, 'A4', NULL, NULL),
(5, 5, 'A5', NULL, NULL),
(6, 6, 'A6', NULL, NULL),
(7, 7, 'A7', NULL, NULL),
(8, 8, 'A8', NULL, NULL),
(9, 9, 'A9', NULL, NULL),
(10, 10, 'A10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

DROP TABLE IF EXISTS `tbl_courses`;
CREATE TABLE IF NOT EXISTS `tbl_courses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `var_course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `var_course_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `var_course_name`, `var_course_description`, `created_at`, `updated_at`) VALUES
(2, 'BCOM', 'Bachelor Of Commerce', NULL, NULL),
(3, 'BA', 'Bachelors of arts', '2021-10-16 16:14:25', '2021-10-16 16:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam`
--

DROP TABLE IF EXISTS `tbl_exam`;
CREATE TABLE IF NOT EXISTS `tbl_exam` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fk_bint_examtype_id` bigint NOT NULL,
  `fk_bint_student_id` bigint NOT NULL,
  `fk_bint_question_id` bigint NOT NULL,
  `var_entered_answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_exam`
--

INSERT INTO `tbl_exam` (`id`, `fk_bint_examtype_id`, `fk_bint_student_id`, `fk_bint_question_id`, `var_entered_answer`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'A2', NULL, NULL),
(2, 1, 1, 2, 'A2', NULL, NULL),
(3, 1, 1, 3, 'A1', NULL, NULL),
(4, 1, 1, 4, 'A4', NULL, NULL),
(5, 2, 2, 1, 'A1', NULL, NULL),
(6, 2, 2, 2, 'A3', NULL, NULL),
(7, 2, 2, 3, 'A1', NULL, NULL),
(8, 2, 2, 4, 'A2', NULL, NULL),
(9, 3, 3, 6, 'A6', NULL, NULL),
(10, 3, 3, 7, 'A7', NULL, NULL),
(11, 3, 3, 8, 'A8', NULL, NULL),
(12, 3, 3, 9, 'A10', NULL, NULL),
(13, 3, 4, 5, 'A5', NULL, NULL),
(14, 3, 4, 6, 'A6', NULL, NULL),
(15, 3, 4, 7, 'A7', NULL, NULL),
(16, 3, 4, 8, 'A8', NULL, NULL),
(17, 3, 5, 3, 'A3', NULL, NULL),
(18, 3, 5, 4, 'A4', NULL, NULL),
(19, 3, 5, 5, 'A5', NULL, NULL),
(20, 3, 5, 6, 'A7', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_examtype`
--

DROP TABLE IF EXISTS `tbl_examtype`;
CREATE TABLE IF NOT EXISTS `tbl_examtype` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `var_exam_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_examtype`
--

INSERT INTO `tbl_examtype` (`id`, `var_exam_type`, `created_at`, `updated_at`) VALUES
(1, 'Series', NULL, NULL),
(2, 'Semester', NULL, NULL),
(3, 'Final', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

DROP TABLE IF EXISTS `tbl_questions`;
CREATE TABLE IF NOT EXISTS `tbl_questions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `var_question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`id`, `var_question`, `created_at`, `updated_at`) VALUES
(1, 'Q1', NULL, NULL),
(2, 'Q2', NULL, NULL),
(3, 'Q3', NULL, NULL),
(4, 'Q4', NULL, NULL),
(5, 'Q5', NULL, NULL),
(6, 'Q6', NULL, NULL),
(7, 'Q7', NULL, NULL),
(8, 'Q8', NULL, NULL),
(9, 'Q9', NULL, NULL),
(10, 'Q10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questionwise_result`
--

DROP TABLE IF EXISTS `tbl_questionwise_result`;
CREATE TABLE IF NOT EXISTS `tbl_questionwise_result` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fk_bint_student_id` bigint NOT NULL,
  `fk_bint_question_id` bigint NOT NULL,
  `fk_bint_examtype_id` bigint NOT NULL,
  `bln_is_correct` tinyint(1) NOT NULL,
  `bln_is_wrong` tinyint(1) NOT NULL,
  `bln_is_appeared` tinyint(1) NOT NULL,
  `bln_is_passed` tinyint(1) NOT NULL,
  `bln_is_failed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_questionwise_result`
--

INSERT INTO `tbl_questionwise_result` (`id`, `fk_bint_student_id`, `fk_bint_question_id`, `fk_bint_examtype_id`, `bln_is_correct`, `bln_is_wrong`, `bln_is_appeared`, `bln_is_passed`, `bln_is_failed`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0, 1, 1, 1, 0, NULL, NULL),
(2, 1, 2, 2, 1, 0, 1, 1, 0, NULL, NULL),
(3, 1, 3, 3, 0, 1, 1, 1, 0, NULL, NULL),
(4, 1, 4, 3, 1, 0, 1, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

DROP TABLE IF EXISTS `tbl_result`;
CREATE TABLE IF NOT EXISTS `tbl_result` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fk_bint_student_id` bigint NOT NULL,
  `fk_bint_course_id` bigint NOT NULL,
  `fk_bint_exmtyp_id` bigint NOT NULL,
  `bln_is_appeared` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bln_is_passed` tinyint(1) NOT NULL,
  `bln_is_failed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`id`, `fk_bint_student_id`, `fk_bint_course_id`, `fk_bint_exmtyp_id`, `bln_is_appeared`, `bln_is_passed`, `bln_is_failed`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '1', 1, 0, NULL, NULL),
(2, 1, 1, 2, '1', 1, 0, NULL, NULL),
(3, 2, 1, 2, '1', 0, 1, NULL, NULL),
(4, 2, 1, 3, '1', 1, 0, NULL, NULL),
(5, 3, 1, 2, '1', 0, 1, NULL, NULL),
(6, 3, 1, 3, '1', 0, 1, NULL, NULL),
(7, 4, 2, 2, '1', 1, 0, NULL, NULL),
(8, 4, 2, 3, '1', 1, 0, NULL, NULL),
(9, 4, 2, 1, '1', 1, 0, NULL, NULL),
(10, 5, 2, 3, '1', 1, 0, NULL, NULL),
(11, 5, 2, 2, '1', 1, 0, NULL, NULL),
(12, 5, 2, 1, '1', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

DROP TABLE IF EXISTS `tbl_students`;
CREATE TABLE IF NOT EXISTS `tbl_students` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `var_student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `var_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `var_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dat_dob` date NOT NULL,
  `fk_bint_course_id` bigint NOT NULL,
  `var_student_reg_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dat_batch_year` year NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbl_students_var_email_unique` (`var_email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `var_student_name`, `var_email`, `var_phone_number`, `dat_dob`, `fk_bint_course_id`, `var_student_reg_no`, `dat_batch_year`, `created_at`, `updated_at`) VALUES
(1, 'Vishnu', 'vishnu@gmail.com', '586841842', '1992-05-21', 1, 'S1', 2020, NULL, NULL),
(3, 'Sreenath', 'sreenath@gmail.com', '586351123', '1989-07-21', 1, 'S3', 2021, NULL, NULL),
(4, 'Arun', 'arun@gmail.com', '582251123', '1990-02-11', 2, 'S4', 2021, NULL, NULL),
(5, 'Mohamed', 'mohamed@gmail.com', '582123423', '1989-04-17', 2, 'S5', 2021, NULL, NULL),
(6, 'tes11t', 'test@gmail.com', '33', '2021-02-12', 1, '333', 2001, '2021-10-16 16:21:33', '2021-10-16 16:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rithu', 'rithu@gmail.com', NULL, '$2y$10$gzXFyhhlqfc0P.kY/lVJuOfAnxzBkrJ532a0vFWADWIkYEKH1WbCW', NULL, '2021-10-16 15:13:46', '2021-10-16 15:13:46'),
(2, 'priya', 'priya@gmail.com', NULL, '$2y$10$BGExmFHB/B0jEEaG2/q2eOrskNH6Cgpb/A/NMVvyAdvRj5kgVa1x2', NULL, '2021-10-16 15:36:08', '2021-10-16 15:36:08');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
