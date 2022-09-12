-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12 سبتمبر 2022 الساعة 19:39
-- إصدار الخادم: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test1`
--

-- --------------------------------------------------------

--
-- بنية الجدول `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `todo_id` bigint(20) UNSIGNED NOT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `todo_id`, `comments`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'comment', '2022-09-09 13:21:16', '2022-09-09 13:21:16');

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2022_06_20_083800_create_todos_table', 2),
(10, '2022_06_21_070246_alter_todo_table_01', 2),
(11, '2022_06_22_092325_alter_todo_table_02', 2),
(12, '2022_09_12_124855_create_reset_code_passwords_table', 3);

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0bf951d2c1d759bbda4b7db39bd9a5bf89d06acf421e0ea682f7b488e00baecde3c803235d2a5499', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-09 10:33:45', '2022-09-09 10:33:45', '2023-09-09 13:33:45'),
('13c6db76418776706d18996b5e66e69417f8370b0c6f654c09c7203978c5f4e2156c80ad10b49ff7', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-09 10:36:34', '2022-09-09 10:36:34', '2023-09-09 13:36:34'),
('2a91fa7eb92460cfd79b5a127a40d5c8b74f281af153f10c0c194c9cd46a3b17f70b579ef4d2c494', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-06 13:45:37', '2022-09-06 13:45:37', '2023-09-06 16:45:37'),
('2b0f7e122282ec473fdf82b201eabc299d2038ed06628d20c0b6ae990d3a925f557665d48a8ddf3a', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:34:57', '2022-09-12 13:34:57', '2023-09-12 16:34:57'),
('355b951ba0dc343971ce553e09b8e1cd422cd7ca96d9dba12ff56d54455d077d594c93f4b16cbe38', 10, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-04 09:38:06', '2022-09-04 09:38:06', '2023-09-04 12:38:06'),
('3944255134f32db337ee5728e844589fb32441fb174c4237d77121248cfff7ff011190f2da65bed5', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:30:36', '2022-09-12 13:30:36', '2023-09-12 16:30:36'),
('4154f2721dbcf80f203bb90469e5e6a08ff4c8c6e51ee5a30964f9723e725a5e8b4ea8dd4dba7c63', 10, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-04 09:38:27', '2022-09-04 09:38:27', '2023-09-04 12:38:27'),
('43d9bf734a208da9539063bbd478d4b2e9acec61a1c3a5b3d4a85921e13301a9ebeafda466942a07', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:32:34', '2022-09-12 13:32:34', '2023-09-12 16:32:34'),
('47ff23f35d51ea727fe00338707a6005ee1645d2e3b889480843058c7000e86561371f05ff9a4fbf', 5, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-06 14:48:08', '2022-09-06 14:48:08', '2023-09-06 17:48:08'),
('4e30775451f0d94de63c26816de3c7aaf04a0b1e0e122c9c1e1be32a87694d3149a9a9f3bdf06371', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:40:06', '2022-09-12 13:40:06', '2023-09-12 16:40:06'),
('4f1811f6bbfab1be556241e280ed6894924890ed232bf30bd2d1f1ba523a94f62cb1a0b14e39dd26', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-09 10:36:20', '2022-09-09 10:36:20', '2023-09-09 13:36:20'),
('6094718aa2cb886dec6319bb53ff644e940ca716aa4ac962b5d9df1de43acfd5e455803d4106fc83', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:40:45', '2022-09-12 13:40:45', '2023-09-12 16:40:45'),
('63d73052bb6d57bc1cf4bc5fff9225b240a05630cc7b3fcdb60db9332023f5981b2a978b2a9aca1e', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:37:40', '2022-09-12 13:37:40', '2023-09-12 16:37:40'),
('6db7c3214cac6b3af613bf65157e7b2478e5329c163c21bff212dde0a7177c6ee75e1b480af6c5d7', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:40:39', '2022-09-12 13:40:39', '2023-09-12 16:40:39'),
('730342e48b7aa90dc6f8482c9084746c3d77a4977053d54da5f48779df3265888ae1400c65d3298e', 10, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-04 09:39:58', '2022-09-04 09:39:58', '2023-09-04 12:39:58'),
('753a2938388a61ee29a94ff222b29a8066766f3bb18159a33c4c69b671cf821fea5fae7e71deb10e', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-09 10:38:36', '2022-09-09 10:38:36', '2023-09-09 13:38:36'),
('7f622e860da2a85a9857e58737ec935a599a06d2dd3d2a90496fb989d289227a975a4041b227cb13', 10, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'TutsForWeb', '[]', 0, '2022-09-04 09:33:04', '2022-09-04 09:33:04', '2023-09-04 12:33:04'),
('83d6675f3afc18829e420e1972dd0c88aca41bfa814f1eb473c43ca87decaf31a83a2544bb07b565', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-09 10:37:24', '2022-09-09 10:37:24', '2023-09-09 13:37:24'),
('87349d853b07a5a6d5aa0ee113b42fc4aebcb017373e064e5eff70e55b96853ff45e07d9e6f35777', 8, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'TutsForWeb', '[]', 0, '2022-09-03 07:26:39', '2022-09-03 07:26:39', '2023-09-03 10:26:39'),
('8a2d9e1c1e90c5a8c7f3b5e14f33c4f65fb8a96c11636c859bf7fa14e8d5ea6ce4489992585e5859', 6, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-03 04:05:59', '2022-09-03 04:05:59', '2023-09-03 07:05:59'),
('8d11f64bd2ac5e56bf67d200c13e86b34201799c3c390bd0e7d83da29ef392ba210b39d66cb355d3', 5, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-09 09:53:04', '2022-09-09 09:53:04', '2023-09-09 12:53:04'),
('91e7f91e58c1e4e12587cb9803d7eeb6958acf983c1d35dafd345cea0db3df8795b295084164fb06', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-09 10:10:58', '2022-09-09 10:10:58', '2023-09-09 13:10:58'),
('955cd8667bd872e35682e50694087798ce5dd9b3704596d0f6979527ba7ed0497423e254a1f3d10d', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:31:06', '2022-09-12 13:31:06', '2023-09-12 16:31:06'),
('96439746e87e79256c53efed3eb7b48d0a5542abd18e5a04a60a8dea1ed4935ece4b5c500f9cbf5d', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:29:23', '2022-09-12 13:29:23', '2023-09-12 16:29:23'),
('9c4cb44adda1768d4b49fba906b94088a0a97bfde064aad2a61e17e08a24265c5eadabb5b84f5b58', 11, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'TutsForWeb', '[]', 0, '2022-09-09 19:20:16', '2022-09-09 19:20:16', '2023-09-09 22:20:16'),
('9dffbf41ace30ec7b896f6d4b35d1509223cda3cdd8c47ee7e3e1b2346142afe814b304d5217eaa7', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:34:33', '2022-09-12 13:34:33', '2023-09-12 16:34:33'),
('a0ae9f78c6a444e68cd9acc07ce9442f3b5a72ba499a61cba0209bf4bb656a904fe5542c63380803', 10, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-04 09:40:19', '2022-09-04 09:40:19', '2023-09-04 12:40:19'),
('a26c8acd36a42e8a88bb6691400d2f66bf5c18623cae89e71c6f93c7490e290bf0c62e5d5abf8b16', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:31:41', '2022-09-12 13:31:41', '2023-09-12 16:31:41'),
('a3e5e5fdc3b4cc3094f0655e60a84973afa334fd0f1e25204a9c0b2f71d2a67ce6dcb4623c33061d', 10, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-04 09:38:40', '2022-09-04 09:38:40', '2023-09-04 12:38:40'),
('a48555a64b7716967183ec7011ed09378e0087653f6049d05b2b7b3a84a9d27fc0484ca5f888a597', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:25:54', '2022-09-12 13:25:54', '2023-09-12 16:25:54'),
('a5a2fd85498aa54bebaa77fc1af3967d8a88db9704af7b8607daa8f4cff2591e4036e6e918af6a9d', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-09 10:38:22', '2022-09-09 10:38:22', '2023-09-09 13:38:22'),
('a640d9f91bd8135b40991d0713975ca1069db4e3f85700fa1b0bc582efaa5334d1c95f8eea1347a3', 10, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-04 09:41:06', '2022-09-04 09:41:06', '2023-09-04 12:41:06'),
('a6eee47be534925e41d56153a5a6be6879616c5d2a1b799a8fa30e62b1ece62c0999b2b971545efd', 7, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'TutsForWeb', '[]', 0, '2022-09-03 04:17:43', '2022-09-03 04:17:43', '2023-09-03 07:17:43'),
('b5f2c1953b35774e2b032d46a52f22764d132615f66a0e274c65142dbdf3d9869bacb9edb70c6321', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:37:13', '2022-09-12 13:37:13', '2023-09-12 16:37:13'),
('c2dd935986e724515af395ddc25d862b14c9ffe6070831b498c48d4ef382cd7dd333be8b60651cd6', 9, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'TutsForWeb', '[]', 0, '2022-09-04 09:17:03', '2022-09-04 09:17:03', '2023-09-04 12:17:03'),
('c88e416075a62fd8532be6027c988d0ac1a31fdba262549eec31c64bc8bdae0aa74a0e751fa8022c', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-09 18:44:16', '2022-09-09 18:44:16', '2023-09-09 21:44:16'),
('d310e8b5d0161f6fd4a71bc5b9473b6f9e52826b3ae4a76d1f7a3850b86b8f3587270876a678059e', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:40:50', '2022-09-12 13:40:50', '2023-09-12 16:40:50'),
('d62db2f79091724c008643e485b83a57ba4e8ed62b4867767dcf6786a1acacd8ea1be4f90f5ec458', 10, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-04 09:41:46', '2022-09-04 09:41:46', '2023-09-04 12:41:46'),
('d719430a5c2e9eb2a074c37622b85810cae226eb3e66a2fe44bb2f1bfa527168e95d67e37d473a29', 7, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-03 07:21:32', '2022-09-03 07:21:32', '2023-09-03 10:21:32'),
('db5bc3cb0489bf9b54a7b99d8f1fbed9c7dc214f8eda7c7950ba1c09331c0a54dce39215f24b8349', 10, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-04 09:33:44', '2022-09-04 09:33:44', '2023-09-04 12:33:44'),
('eae23d71179bd82611672139776080e8db9c7a38bb0917ccd35ff2e38af3042aa3d5cbd0853334b2', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:39:37', '2022-09-12 13:39:37', '2023-09-12 16:39:37'),
('ed8ef0fb9afb5b50f21ab305492c34dfd68a58a78ffb5e0557922524c5056f8bcef6c21643806e64', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:36:27', '2022-09-12 13:36:27', '2023-09-12 16:36:27'),
('f5cdd114576b0063ae1ce765b0b85a92b01819d8ad77b0c084ea157dc4d91774f41b71a7be65d0ad', 1, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-12 13:33:49', '2022-09-12 13:33:49', '2023-09-12 16:33:49'),
('fc8287a35f169fc7cc627e7e9b98e59365e61bb8a6e8b29923d2a3f11747168b19ff02670d4d5727', 6, '972cd7cf-339c-4894-81b3-a5cd150339fe', 'Token_name', '[]', 0, '2022-09-03 04:05:14', '2022-09-03 04:05:14', '2023-09-03 07:05:14');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('972cd7cf-339c-4894-81b3-a5cd150339fe', NULL, 'Laravel Personal Access Client', 'JjIcyZszhZzicIBwJoBL7RRtYiYnMM4jaQCiPIAX', NULL, 'http://localhost', 1, 0, 0, '2022-09-03 04:02:30', '2022-09-03 04:02:30'),
('972cd7d0-0883-47cf-a6d6-4718752802f5', NULL, 'Laravel Password Grant Client', 'JHdJlAR4mGuozntJmcKjMxhBhlAGU2UT9W08wCl4', 'users', 'http://localhost', 0, 1, 0, '2022-09-03 04:02:30', '2022-09-03 04:02:30');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '972cd7cf-339c-4894-81b3-a5cd150339fe', '2022-09-03 04:02:30', '2022-09-03 04:02:30');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `price`, `created_at`, `updated_at`, `type`, `details`, `location`, `area`, `state`, `position`, `img1`, `img2`, `img3`, `img4`, `img5`, `room`) VALUES
(1, 1, 'ali', 400, NULL, '2022-09-09 14:45:40', '11', 'oo', '200', 'dfgfdg', 'fdgfdg', 'fgddfg', '', '', '', '', '', NULL),
(2, 0, 'fdgfdg', 2000, NULL, NULL, 'dfgfdg', 'dfgfdg', 'dfgfdg', 'dfgfdg', 'fdgfdg', 'fgddfg', '', '', '', '', '', NULL),
(3, 7, 'villa', 1500, '2022-09-03 04:42:12', '2022-09-03 04:42:13', 'sell', 'test', 'damascuse', NULL, 'available', NULL, '1662190932.jpg', NULL, NULL, NULL, NULL, NULL),
(4, 7, 'villa', 200, '2022-09-03 04:47:31', '2022-09-03 04:54:28', 'sell', 'test', 'damascuse', NULL, 'available', NULL, '1662191668.jpg', NULL, NULL, NULL, NULL, NULL),
(5, 2, 'rita', 5656, '2022-09-06 13:48:11', '2022-09-06 13:48:11', 'fdg', '123123', 'nanosy880@gmadddil.comd', NULL, 'available', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 'rita', 5656, '2022-09-06 14:26:18', '2022-09-06 14:26:18', 'fdg', '123123', 'nanosy880@gmadddil.comd', NULL, 'available', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 'rita', 222, '2022-09-06 14:26:32', '2022-09-06 14:26:32', 'fdg', '123123', 'nanosy880@gmadddil.comd', NULL, 'available', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `reset_code_passwords`
--

CREATE TABLE `reset_code_passwords` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `officer_id` int(50) DEFAULT NULL,
  `products_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `todos`
--

INSERT INTO `todos` (`id`, `name`, `description`, `created_at`, `updated_at`, `user_id`, `status`, `officer_id`, `products_id`) VALUES
(1, 'test', 'one', '2022-09-21 14:23:23', '2022-09-06 11:46:31', 5, 111, NULL, 0),
(2, 'test222', 'descripe', '2022-09-06 16:48:45', '2022-09-06 14:47:46', 10, 222, NULL, 0),
(3, 'ritahh', 'descripe', '2022-09-06 14:32:41', '2022-09-06 14:32:41', 2, 0, 3, 2),
(4, 'rrrrrrr', 'descripe', '2022-09-06 14:37:25', '2022-09-06 14:37:25', 2, 0, 3, 2),
(5, 'rrrrrrr', 'descripe', '2022-09-06 14:38:13', '2022-09-06 14:38:13', 2, 0, 3, 2),
(6, 'rrrrrrr', 'descripe', '2022-09-06 14:39:41', '2022-09-06 14:39:41', 2, 0, 3, 2),
(7, 'rrrrrrr', 'descripe', '2022-09-06 14:39:58', '2022-09-06 14:39:58', 2, 0, 3, 2),
(8, 'rrrrrrr', 'descripe', '2022-09-06 14:40:09', '2022-09-06 14:40:09', 2, 0, 3, 2),
(9, 'rrrrrrr', 'descripe', '2022-09-06 14:42:09', '2022-09-06 14:42:09', 2, 0, 3, 2),
(10, 'rrrrrrr', 'descripe', '2022-09-06 14:56:55', '2022-09-06 14:56:55', 2, 0, 3, 2),
(11, 'rrrrrrr', 'descripe', '2022-09-06 14:57:47', '2022-09-06 14:57:47', 2, 0, 3, 2),
(12, 'rrrrrrr', 'descripe', '2022-09-06 14:59:07', '2022-09-06 14:59:07', 2, 0, 3, 2),
(13, 'rrrrrrr', 'descripe', '2022-09-06 14:59:24', '2022-09-06 14:59:24', 5, 0, 3, 2),
(14, 'rrrrrrr', 'descripe', '2022-09-06 14:59:58', '2022-09-06 14:59:58', 5, 0, 3, 2),
(15, 'rrrrrrr', 'descripe', '2022-09-06 15:00:05', '2022-09-06 15:00:05', 5, 0, 3, 2),
(16, 'rrrrrrr', 'descripe', '2022-09-09 10:20:51', '2022-09-09 10:20:51', 1, 0, 1, 1),
(17, 'rrrrrrr', 'descripe', '2022-09-09 10:46:44', '2022-09-09 10:46:44', 1, 0, 1, 2);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `warrant` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CODE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `warrant`, `phone`, `test`, `CODE`) VALUES
(1, '121321ssss', 'nanosy880@gmail.com', NULL, '$2y$10$4q60NJ7S.O2cPmL4rZ4s8uYsT4IT2/MiSrnUral/ckE8beMJMjDDS', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5NzJjZDdjZi0zMzljLTQ4OTQtODFiMy1hNWNkMTUwMzM5ZmUiLCJqdGkiOiJkMzEwZThiNWQwMTYxZjZmZDRhNzFiYzViOTQ3M2I2ZjllNTI4MjZiM2FlNGE3NmQxZjdhMzg1MGI4NmI4ZjM1ODcyNzA4NzZhNjc4MDU5ZSIsImlhdCI6MTY2MzAwMDg1MCwibmJmIjoxNjYzMDAwODUwLCJleHAiOjE2OTQ1MzY4NTAsInN1YiI6IjEiLCJzY29wZXMiOltdfQ.l_4AZ4_16dG7pZwmZboiHZtSWUFx-4jPogcgvZ3-0fc9Cu9Qii3pPehg1-mH2zTfXjGQQIP60gpizYAala1GHSxyU5qEsn-cCNyrWjxfeXRcBx_IARDxzmjTR3Tby9-8O2kip2vhIq-KvYRJ-16E6ma1dtBOIhv5up4XYqzg9NorVnbvP8Woc-9787ZPuz53LU4fTl4L_ZDAdolVCGF25YcZVf6CXMEGifug6IT9K4ejxIVVdw2SZvT0CBPFKN2cTSg0Sc0qShtHBBgA9Z07zOpmr5vwiYYu79ceifMvNDK9mA9QlH3nQ03lFKO9BjO-qIVSSO-XSY_tV0xhKNqLGu-rLM94MuxXKYoFk1UYpPhq_w10tyBN622B6b1mo1Zi9WwW7wWLpYef8e61UEZnFF9DjrQTlh-E7-Cds5_ZZ5fpjHaU1FrxzAOcG4gn__kiJpXBkL0nl7flseyNWwfGTjF_mJf70NmI6-YKWCGMMcNnRU8vFaahtoJqHLc28AP-5wzXfWC1Hfoe8ZtLMTmMFRgdS5O9U1Mitpb7Ib2BxK_HITWp_bYjO5yEzoqQtK27NxFkhbum_iOu-3kzixaWKEEvbIkF-upU4CWKp7P_JmHRoPcvq1MYs0L7CkuuWRmKygYPA1sz16uEE1r93zh1G757ZQHztISeeNgCaTXI-TQ', '2022-09-02 04:10:15', '2022-09-12 13:40:50', 'officer', NULL, '111', '167949'),
(3, 'aaaafff', 'nanosy880@gmadddil.comdffff', NULL, '$2y$10$7yib7Xmra327b50qlEBHTuIiKMoA4nELxdHOEs0PAUL3X8IZ4YLXO', NULL, '2022-09-02 12:36:11', '2022-09-02 12:36:11', NULL, NULL, NULL, NULL),
(4, 'aaaafff11', 'nanosy880@gmadddil.comdffff111', NULL, '$2y$10$qKQuOvWfmYJmlH7l8dGNcuTdY1RB8ZoZU./DD9HFWbTNFB7qTgBGi', NULL, '2022-09-02 12:40:57', '2022-09-02 12:40:57', NULL, NULL, NULL, NULL),
(5, 'ali', 'nanosy980@gmadddil.com', NULL, '$2y$10$7DYSMy54uaXBceDXEL9u0eOG6n5minw2.vyutdcVT8/m7Ir1F4mP.', NULL, '2022-09-03 03:35:44', '2022-09-03 03:35:44', NULL, NULL, NULL, NULL),
(6, 'jjjj', 'nanosy980@gmail.com', NULL, '$2y$10$5fRXWgp7ehO4H5/rRAe4SOy0pg.dld2gJxCWzRSweGREWTjGU1Go.', '111', '2022-09-03 03:42:05', '2022-09-12 12:44:31', 'admin', NULL, NULL, '204397'),
(7, 'ali', 'nanosy8880@gmail.com1', NULL, '$2y$10$iX7EfDzXPtUjyGCPBTpTyukRCvZGqQ/cBGDWpFesaHP2izOM5EoFW', NULL, '2022-09-03 04:17:42', '2022-09-03 04:17:42', NULL, '0936807754', NULL, NULL),
(8, 'dfgdg', 'nanosy8880dfgdfg@gmail.com1', NULL, '$2y$10$mzWtMsfD/LhX4TeN0v3heuMrXzid6QBMihP8zHfHeGbJZS3pDPNJi', NULL, '2022-09-03 07:26:39', '2022-09-03 07:26:39', 'user', '123123dfgfdg', NULL, NULL),
(9, 'dfff', 'nanosy8880dfgdfg@gmfffail.comfff1', NULL, '$2y$10$XlxHPP3azGisWJskczzIg.kjdcTOXF9tz84/ubpFjipFUSyOdk48.', NULL, '2022-09-04 09:17:02', '2022-09-04 09:17:02', 'user', '123123dfgfdgfff', NULL, NULL),
(10, 'ali1', 'ali@Gmail.com', NULL, '$2y$10$IfNZt5FI5Ks9BC0gVs9fouvxBPnyGjZwLD2yDetHKJwm30SIoqmCa', NULL, '2022-09-04 09:33:04', '2022-09-04 09:33:04', 'user', 'ali12345678', NULL, NULL),
(11, 'علي', 'nanosy880yyyyy@gmadddil.comfghgtfhfghgfhd', NULL, '$2y$10$htud0kUg0NyVdPBx2MJegudY7zXfEJw7zldoH1rr6lwMe.04yP/ya', NULL, '2022-09-09 19:20:16', '2022-09-09 19:20:16', 'user', '1000000000', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_todo_id_foreign` (`todo_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_code_passwords`
--
ALTER TABLE `reset_code_passwords`
  ADD KEY `reset_code_passwords_email_index` (`email`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
