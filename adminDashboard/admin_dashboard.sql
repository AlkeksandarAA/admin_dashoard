-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 01:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `rep_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `rep_id`, `created_at`, `updated_at`) VALUES
(1, 'Johnston Group', '7796 Alejandra Plains Suite 603\nRobelborough, DE 98294', 22, '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(2, 'Russel-Welch', '5097 Batz Plain\nBusterfort, RI 17683-5020', 23, '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(3, 'Hansen Group', '67166 Elva Park Suite 231\nSouth Noahmouth, MT 98485-4749', 23, '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(4, 'Balistreri, Morar and Crooks', '36210 Fay Fort Suite 946\nSouth Katlynside, AR 12280', 4, '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(5, 'Wintheiser-Jast', '7781 Peyton Ville\nPort Antoneland, TN 86497', 19, '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(6, 'Bergnaum PLC', '549 Prince Glens Apt. 512\nGersonhaven, MN 47511-5997', 25, '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(7, 'Rath-Schmidt', '348 Corene Mall Suite 417\nBrownview, IA 08531', 25, '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(8, 'Turcotte Ltd', '255 Gulgowski Path Suite 167\nMedaview, FL 33053', 25, '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(9, 'Collins, Bartell and Schowalter', '1863 Mayert Ways Apt. 041\nTerencefurt, MS 63448-2011', 1, '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(10, 'Towne-Tremblay', '8630 Kian Passage\nBalistreriview, HI 04071', 13, '2025-01-11 23:02:53', '2025-01-11 23:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double NOT NULL,
  `issued_by` bigint(20) UNSIGNED NOT NULL,
  `labor_cost` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `work_order` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `paid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `total_price`, `issued_by`, `labor_cost`, `created_at`, `updated_at`, `work_order`, `company_id`, `paid`) VALUES
(1, 12983, 14, 648, '2025-01-11 23:02:55', '2025-01-11 23:02:55', 16, 4, 1),
(2, 6347, 25, 608, '2025-01-11 23:02:55', '2025-01-11 23:02:55', 42, 5, 1),
(3, 1948, 17, 819, '2025-01-11 23:02:55', '2025-01-11 23:02:55', 32, 7, 1),
(4, 17623, 6, 559, '2025-01-11 23:02:55', '2025-01-11 23:02:55', 4, 2, 1),
(5, 11220, 24, 842, '2025-01-11 23:02:55', '2025-01-11 23:02:55', 38, 5, 1),
(6, 5357, 15, 664, '2025-01-11 23:02:55', '2025-01-11 23:02:55', 24, 1, 0),
(7, 1000, 34, 653, '2025-01-11 23:02:55', '2025-01-11 23:02:55', 30, 6, 1),
(8, 11776, 15, 689, '2025-01-11 23:02:55', '2025-01-11 23:02:55', 48, 9, 0),
(9, 19330, 28, 773, '2025-01-11 23:02:55', '2025-01-11 23:02:55', 61, 7, 1),
(10, 1377, 8, 580, '2025-01-11 23:02:55', '2025-01-11 23:02:55', 21, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `material` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `material`, `price`, `created_at`, `updated_at`, `quantity`) VALUES
(1, 'cumque', 70, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 43),
(2, 'sunt', 125, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 46),
(3, 'et', 71, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 55),
(4, 'quasi', 56, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 11),
(5, 'in', 74, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 38),
(6, 'qui', 45, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 36),
(7, 'qui', 31, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 55),
(8, 'illo', 40, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 35),
(9, 'reprehenderit', 67, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 51),
(10, 'eos', 63, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 12),
(11, 'tempora', 63, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 4),
(12, 'ab', 6, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 28),
(13, 'voluptatibus', 23, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 50),
(14, 'suscipit', 90, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 34),
(15, 'alias', 27, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 17),
(16, 'accusamus', 101, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 49),
(17, 'dolor', 65, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 34),
(18, 'sed', 41, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 46),
(19, 'facilis', 64, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 41),
(20, 'eligendi', 2, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 42),
(21, 'minus', 118, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 30),
(22, 'magni', 10, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 3),
(23, 'id', 143, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 10),
(24, 'hic', 48, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 40),
(25, 'cupiditate', 20, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 46),
(26, 'eligendi', 81, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 14),
(27, 'minima', 142, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 15),
(28, 'aperiam', 81, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 19),
(29, 'cupiditate', 64, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 48),
(30, 'natus', 108, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 45),
(31, 'praesentium', 143, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 5),
(32, 'eum', 18, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 22),
(33, 'accusamus', 58, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 55),
(34, 'a', 64, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 27),
(35, 'dolor', 47, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 22),
(36, 'voluptatem', 79, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 24),
(37, 'sit', 81, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 3),
(38, 'nostrum', 63, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 54),
(39, 'provident', 56, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 48),
(40, 'voluptas', 117, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 9),
(41, 'quia', 79, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 51),
(42, 'voluptatem', 14, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 13),
(43, 'sit', 15, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 43),
(44, 'doloremque', 129, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 41),
(45, 'dicta', 136, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 43),
(46, 'in', 74, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 53),
(47, 'quas', 16, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 1),
(48, 'vel', 62, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 56),
(49, 'velit', 127, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 20),
(50, 'aperiam', 9, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 51),
(51, 'at', 119, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 20),
(52, 'expedita', 63, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 41),
(53, 'animi', 65, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 36),
(54, 'ratione', 27, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 47),
(55, 'quia', 101, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 42),
(56, 'animi', 20, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 39),
(57, 'ducimus', 48, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 1),
(58, 'dolor', 110, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 25),
(59, 'voluptas', 50, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 39),
(60, 'labore', 93, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 55),
(61, 'iusto', 10, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 38),
(62, 'ea', 2, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 14),
(63, 'occaecati', 95, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 55),
(64, 'dolores', 21, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 50),
(65, 'veniam', 19, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 15),
(66, 'et', 148, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 56),
(67, 'velit', 25, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 8),
(68, 'cum', 71, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 15),
(69, 'at', 60, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 33),
(70, 'repellendus', 120, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 16),
(71, 'aut', 38, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 41),
(72, 'atque', 4, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 9),
(73, 'eius', 141, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 21),
(74, 'eligendi', 118, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 33),
(75, 'a', 17, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 50),
(76, 'voluptas', 70, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 31),
(77, 'voluptatem', 42, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 7),
(78, 'facilis', 140, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 56),
(79, 'et', 26, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 28),
(80, 'eaque', 121, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 28),
(81, 'aspernatur', 42, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 18),
(82, 'libero', 143, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 36),
(83, 'aperiam', 86, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 34),
(84, 'nisi', 136, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 26),
(85, 'aperiam', 47, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 54),
(86, 'quae', 64, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 41),
(87, 'ut', 94, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 31),
(88, 'repudiandae', 81, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 14),
(89, 'qui', 24, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 30),
(90, 'corporis', 91, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 39),
(91, 'exercitationem', 67, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 8),
(92, 'et', 56, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 9),
(93, 'a', 19, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 37),
(94, 'voluptatum', 128, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 41),
(95, 'dolores', 39, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 39),
(96, 'quia', 64, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 13),
(97, 'distinctio', 139, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 24),
(98, 'facere', 125, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 6),
(99, 'aspernatur', 5, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 47),
(100, 'voluptas', 129, '2025-01-11 23:02:53', '2025-01-11 23:02:53', 16);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_02_180821_create_personal_access_tokens_table', 1),
(5, '2025_01_07_191100_create_materials_table', 1),
(6, '2025_01_07_191218_create_invoices_table', 1),
(7, '2025_01_07_191328_create_companies_table', 1),
(8, '2025_01_07_191430_create_work_orders_table', 1),
(9, '2025_01_07_193223_add_work_order_id_to_invoices_table', 1),
(10, '2025_01_07_193248_add_company_id_to_invoices_table', 1),
(11, '2025_01_09_025723_add_paid_to_invoices_table', 1),
(12, '2025_01_10_223915_add_quantity_to_materials_table', 1),
(13, '2025_01_11_234203_add_ordered_to_work_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('mfTZsteMHYiP1h1NStDchacvJiMfezwT5ryJFYw7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHdNZXRwcDNzc3hYcFhEbm8yM05rMDJqc2xZZTJDdld4RDUzTGNGNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736642416);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` tinyint(4) NOT NULL,
  `postion` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `postion`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miss Madie Feest III', 'tremblay.jayden@example.org', 3, 'ut', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'hmMdMRUcpG', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(2, 'Theo Bradtke DVM', 'lucius54@example.org', 2, 'et', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'TAty2sDtrO', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(3, 'Prof. Gordon Effertz', 'hailee43@example.net', 2, 'ratione', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'hHxYb0JXF4', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(4, 'Vaughn Kub', 'letitia81@example.com', 3, 'pariatur', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'ole4Y6nvNa', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(5, 'Javonte Bailey', 'erling81@example.org', 2, 'accusantium', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'cQRocwNiYk', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(6, 'Miss Oceane Weimann IV', 'jakubowski.andre@example.net', 2, 'quo', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'RMFNO31LwC', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(7, 'Daniella Wuckert', 'vidal.reynolds@example.net', 3, 'voluptatibus', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', '9sPTYP56nL', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(8, 'Ali Strosin', 'billie.effertz@example.com', 1, 'vel', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'TyfaiqTAmy', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(9, 'Shanelle Barton', 'kieran.stiedemann@example.org', 2, 'placeat', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'D6OV34YWTM', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(10, 'Prof. Elbert Yundt V', 'xlockman@example.com', 2, 'labore', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'Qk2mw9wS3f', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(11, 'Sierra Hilpert', 'mathew.dubuque@example.com', 2, 'nemo', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'glipI7jiAa', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(12, 'Cristopher Schmeler', 'ohartmann@example.com', 2, 'qui', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'HDELgEUm5p', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(13, 'Prof. Laurianne Graham MD', 'hoppe.marques@example.org', 3, 'maiores', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'ctO3fjtcdJ', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(14, 'Mr. Reinhold Pacocha IV', 'athena56@example.net', 1, 'illum', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'KgYdciXUE4', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(15, 'Saige Flatley', 'lolita.schroeder@example.org', 2, 'explicabo', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'G4YI3boB9g', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(16, 'Ms. Vincenza Kreiger', 'ckub@example.net', 2, 'doloremque', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 't2OhKlXib2', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(17, 'Parker Jakubowski', 'yward@example.net', 3, 'quia', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'mjLIjoBhRy', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(18, 'Luigi Smitham', 'boris.oconnell@example.net', 2, 'aliquid', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'fcZU9o8iwu', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(19, 'Mable Oberbrunner', 'demetris82@example.org', 3, 'eos', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'OoFlF5A6NW', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(20, 'Kadin Fahey', 'lexie.schowalter@example.com', 2, 'voluptas', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'b4rJE0vSsn', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(21, 'Nicholaus Steuber', 'rcormier@example.org', 2, 'sint', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'R3jmmBC2kF', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(22, 'Damian Beahan II', 'terry.lora@example.com', 3, 'error', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'VIsiRqFTiK', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(23, 'Dr. Colleen Hintz', 'whahn@example.org', 3, 'consequatur', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'RWXGAbQddo', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(24, 'Marlene Berge', 'brittany12@example.net', 2, 'voluptatem', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'h5XjmfQi1R', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(25, 'Donald Barrows', 'noelia70@example.com', 3, 'omnis', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'W6eWooizlF', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(26, 'Dr. Lupe Durgan DDS', 'elnora87@example.net', 1, 'recusandae', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'cU6WnDFa9U', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(27, 'Prof. Katelin Gutmann', 'jschiller@example.com', 3, 'ut', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 's58ABJgblC', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(28, 'Nikita Gulgowski', 'cschuster@example.com', 3, 'enim', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'Ao9tYGVlSD', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(29, 'Prof. Sallie Runte IV', 'kfunk@example.org', 1, 'qui', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'hukiVMicdJ', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(30, 'Keira Bins', 'annabell80@example.com', 3, 'expedita', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', '29XGYINZJZ', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(31, 'Mr. Declan Hand DVM', 'ephraim29@example.org', 1, 'repellat', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'pgOZCUf8wg', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(32, 'Rosalyn Johns', 'hrowe@example.com', 2, 'maiores', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'ETmmGAA1oA', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(33, 'Jaeden Collins', 'ambrose31@example.com', 2, 'reiciendis', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'ALnmMYBxsK', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(34, 'Dr. Maiya Wilkinson', 'priscilla63@example.org', 1, 'ad', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'FopeJADzRV', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(35, 'Myles Lockman', 'kailey.mills@example.net', 2, 'corporis', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'lQiVEIGNNm', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(36, 'Dr. Winfield Hauck', 'hassan15@example.org', 3, 'dolor', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'zEQT2mvGkU', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(37, 'Nova Dooley', 'mschowalter@example.com', 2, 'ipsum', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'u2hRTSOFPC', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(38, 'Benny Cummerata', 'leannon.francis@example.org', 3, 'minus', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'G95PhHqxqg', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(39, 'Miss Pearline Leffler IV', 'elvie61@example.net', 2, 'aut', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'cKXFieICKx', '2025-01-11 23:02:53', '2025-01-11 23:02:53'),
(40, 'Deron Marquardt', 'amcclure@example.net', 3, 'nostrum', '2025-01-11 23:02:53', '$2y$12$CMJiyaecMxJlSrBb8uMotOViTwqoyrjCnJXnHC6UizvfbOBY3BRvO', 'D4uGGAsmiu', '2025-01-11 23:02:53', '2025-01-11 23:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `work_orders`
--

CREATE TABLE `work_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mats_id` bigint(20) UNSIGNED NOT NULL,
  `order_by` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordered_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_orders`
--

INSERT INTO `work_orders` (`id`, `mats_id`, `order_by`, `worker_id`, `created_at`, `updated_at`, `ordered_date`) VALUES
(1, 52, 7, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-12-18'),
(2, 2, 36, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-11-17'),
(3, 77, 17, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-05-23'),
(4, 13, 17, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-03-28'),
(5, 12, 13, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-02-19'),
(6, 90, 1, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-08-01'),
(7, 36, 23, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-08-16'),
(8, 2, 13, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-03-09'),
(9, 91, 1, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-05-22'),
(10, 34, 30, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-02-26'),
(11, 47, 28, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-01-20'),
(12, 21, 17, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-09-02'),
(13, 23, 19, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-01-20'),
(14, 78, 13, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-11-20'),
(15, 2, 4, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-07-15'),
(16, 35, 36, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-11-06'),
(17, 74, 13, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-02-08'),
(18, 78, 40, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-10-09'),
(19, 19, 1, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-03-27'),
(20, 96, 36, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-02-01'),
(21, 57, 7, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-06-09'),
(22, 19, 13, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-04-26'),
(23, 9, 1, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-04-21'),
(24, 19, 13, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-12-18'),
(25, 34, 38, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-06-01'),
(26, 17, 40, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-09-17'),
(27, 69, 19, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2025-01-06'),
(28, 52, 7, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2025-01-02'),
(29, 23, 40, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-05-26'),
(30, 85, 25, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-02-03'),
(31, 9, 13, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-02-25'),
(32, 51, 22, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-09-30'),
(33, 64, 40, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-05-03'),
(34, 3, 27, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-06-22'),
(35, 82, 13, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-05-06'),
(36, 24, 38, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-10-16'),
(37, 9, 19, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-09-21'),
(38, 27, 25, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-06-25'),
(39, 72, 17, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-07-17'),
(40, 70, 7, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-12-04'),
(41, 1, 38, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-11-16'),
(42, 6, 36, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-05-09'),
(43, 28, 7, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-10-10'),
(44, 89, 7, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-08-21'),
(45, 87, 36, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-03-04'),
(46, 71, 7, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-11-16'),
(47, 47, 7, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-10-11'),
(48, 77, 38, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-11-11'),
(49, 24, 1, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-03-28'),
(50, 45, 25, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-10-26'),
(51, 39, 30, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-02-29'),
(52, 1, 17, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-04-20'),
(53, 23, 19, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-06-20'),
(54, 14, 1, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-05-19'),
(55, 11, 36, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-08-05'),
(56, 78, 19, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-08-11'),
(57, 92, 23, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-05-10'),
(58, 46, 36, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-05-07'),
(59, 62, 30, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-11-10'),
(60, 12, 30, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2025-01-08'),
(61, 22, 38, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-08-11'),
(62, 71, 4, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-02-13'),
(63, 77, 1, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-07-06'),
(64, 81, 27, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-09-25'),
(65, 47, 23, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-06-14'),
(66, 87, 36, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-04-20'),
(67, 78, 22, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-08-14'),
(68, 57, 19, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-01-27'),
(69, 82, 13, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-08-21'),
(70, 20, 19, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-01-15'),
(71, 86, 7, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-05-31'),
(72, 76, 28, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-11-12'),
(73, 1, 17, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2025-01-02'),
(74, 85, 27, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-11-07'),
(75, 93, 38, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-09-25'),
(76, 10, 38, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-06-07'),
(77, 26, 36, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-10-27'),
(78, 42, 17, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-03-04'),
(79, 21, 23, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-06-03'),
(80, 62, 30, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-01-20'),
(81, 86, 28, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-06-12'),
(82, 19, 13, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-04-07'),
(83, 78, 23, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-09-14'),
(84, 43, 30, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-03-10'),
(85, 22, 28, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-04-22'),
(86, 60, 27, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-04-24'),
(87, 26, 7, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-11-13'),
(88, 9, 19, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-07-02'),
(89, 76, 1, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-05-07'),
(90, 33, 23, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-12-13'),
(91, 25, 25, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-12-26'),
(92, 60, 13, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-08-05'),
(93, 69, 25, 34, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-07-09'),
(94, 18, 13, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-08-25'),
(95, 92, 30, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-01-29'),
(96, 74, 13, 26, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-01-21'),
(97, 10, 38, 8, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-02-02'),
(98, 42, 27, 31, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-10-01'),
(99, 96, 30, 14, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-12-19'),
(100, 39, 40, 29, '2025-01-11 23:02:54', '2025-01-11 23:02:54', '2024-08-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_rep_id_foreign` (`rep_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_issued_by_foreign` (`issued_by`),
  ADD KEY `invoices_work_order_foreign` (`work_order`),
  ADD KEY `invoices_company_id_foreign` (`company_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `work_orders`
--
ALTER TABLE `work_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_orders_mats_id_foreign` (`mats_id`),
  ADD KEY `work_orders_order_by_foreign` (`order_by`),
  ADD KEY `work_orders_worker_id_foreign` (`worker_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `work_orders`
--
ALTER TABLE `work_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_rep_id_foreign` FOREIGN KEY (`rep_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `invoices_issued_by_foreign` FOREIGN KEY (`issued_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `invoices_work_order_foreign` FOREIGN KEY (`work_order`) REFERENCES `work_orders` (`id`);

--
-- Constraints for table `work_orders`
--
ALTER TABLE `work_orders`
  ADD CONSTRAINT `work_orders_mats_id_foreign` FOREIGN KEY (`mats_id`) REFERENCES `materials` (`id`),
  ADD CONSTRAINT `work_orders_order_by_foreign` FOREIGN KEY (`order_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `work_orders_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
