-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 15, 2023 at 04:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `merona_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `nama`, `description`, `price`, `image`, `category_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(48, 'LIPSTIK WARDAH', 'MATTE Lipstik dengan hasil yang lembut dan Vitamin E', '45000', 'public/images/product-1688661310.png', 8, 1, '2023-07-06 09:35:10', '2023-07-06 09:35:10', NULL),
(49, 'FONDATION MAKE OVER', 'Tekstur terasa ringan sehingga cocok digunakan sehari-hari', '150000', 'public/images/product-1688661400.png', 5, 1, '2023-07-06 09:36:40', '2023-07-06 09:36:40', NULL),
(50, 'FACIAL GARNIER', 'Sabun cuci muka untuk pria yang diperkaya extra Wasabi', '17800', 'public/images/product-1688661457.png', 6, 1, '2023-07-06 09:37:37', '2023-07-06 09:37:37', NULL),
(51, 'BLASH ON IMPLORA', 'Warna natural dan matte finish yang menyempurnakan wajah', '20500', 'public/images/product-1688661499.png', 9, 1, '2023-07-06 09:38:19', '2023-07-06 09:38:19', NULL),
(52, 'PENSIL BARENBLISS', 'Pensil Alis Matic dengan ujung berbentuk diamond', '49000', 'public/images/product-1688661539.png', 7, 1, '2023-07-06 09:38:59', '2023-07-06 09:38:59', NULL),
(54, 'SERUM SOMETHINC', 'Oil Serum dengan kandungan bakuchoil', '93500', 'public/images/product-1688661870.png', 10, 1, '2023-07-06 09:44:30', '2023-07-06 09:44:30', NULL),
(55, 'LIP BARENBLISS', 'Beraroma bunga persik bertekstur gel ringan', '65000', 'public/images/product-1688661921.png', 8, 1, '2023-07-06 09:45:21', '2023-07-06 09:45:21', NULL),
(56, 'FONDATION WARDAH', 'Matte fondation dengan SPF 30 PA+++ yang ringan', '78000', 'public/images/product-1688661975.png', 5, 1, '2023-07-06 09:46:15', '2023-07-06 09:46:15', NULL),
(57, 'SERUM IMPLORA', 'Mencerahkan kulit dan Menyamarkan Noda', '35000', 'public/images/product-1688662015.png', 10, 1, '2023-07-06 09:46:55', '2023-07-06 09:46:55', NULL),
(58, 'FACIAL NIVEA', 'Mengandung Active Vitamin C mencerahkan kulit', '36000', 'public/images/product-1688662162.png', 6, 1, '2023-07-06 09:49:23', '2023-07-06 09:49:23', NULL),
(59, 'PENSIL WARDAH', 'Pensil alis wardah yang menghasilkan warna netral', '42000', 'public/images/product-1688662255.png', 7, 1, '2023-07-06 09:50:55', '2023-07-06 09:50:55', NULL),
(60, 'SERUM NUFACE', 'Serum untuk mencegah jerawat, atau blackhead', '37000', 'public/images/product-1688662290.png', 10, 1, '2023-07-06 09:51:30', '2023-07-06 09:51:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `barang_id`, `qty`, `created_at`, `updated_at`) VALUES
(8, 6, 49, 1, '2023-07-14 19:36:03', '2023-07-14 19:36:03'),
(9, 6, 50, 1, '2023-07-14 19:36:05', '2023-07-14 19:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'FONDATION', 'https://raw.githubusercontent.com/elhazent/merona-asset/main/fondation.png', '2023-07-02 07:34:25', NULL, NULL),
(6, 'FACIAL FOAM', 'https://raw.githubusercontent.com/elhazent/merona-asset/main/facial-foam.png', '2023-07-02 07:35:03', NULL, NULL),
(7, 'PENSIL ALIS', 'https://raw.githubusercontent.com/elhazent/merona-asset/main/pensil-alis.png', '2023-07-02 07:35:25', NULL, NULL),
(8, 'LIP', 'https://raw.githubusercontent.com/elhazent/merona-asset/main/lip.png', '2023-07-02 07:35:43', NULL, NULL),
(9, 'BLUSH ON', 'https://raw.githubusercontent.com/elhazent/merona-asset/main/blush-on.png', '2023-07-02 07:36:02', NULL, NULL),
(10, 'SERUM', 'https://raw.githubusercontent.com/elhazent/merona-asset/main/serum.png', NULL, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_28_150553_create_category_table', 1),
(6, '2023_06_28_150640_create_barang_table', 1),
(7, '2023_06_28_151134_create_transaksi_table', 1),
(8, '2023_06_28_151440_create_pembayaran_table', 1),
(9, '2023_06_30_073214_add_image_column_to_barangs_table', 2),
(10, '2023_06_30_073125_add_image_column_to_barang_table', 3),
(11, '2023_07_02_062033_add_image_column_to_categories_table', 3),
(12, '2023_07_08_161107_create_cart_table', 4),
(13, '2023_07_13_164207_update_transaction_table', 5),
(14, '2023_07_13_164853_create_transaction_item_table', 6),
(15, '2023_07_13_165007_delete_barang_id_from_transaction', 7),
(16, '2023_07_13_165252_add_qty_to_transaction_item_table', 8),
(17, '2023_07_13_171834_add_timestamp_transaction_items', 9);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', '7130b4a541c88d1bcfd667e636030a57adf8d3bc33124722b0e26a561c4cbc3d', '[\"*\"]', '2023-06-29 09:08:17', NULL, '2023-06-29 08:58:24', '2023-06-29 09:08:17'),
(2, 'App\\Models\\User', 2, 'token', 'f890e75e112e79f03cd2bceaac0d0666b3ef56c1a420bf34023dd0d082d58881', '[\"*\"]', '2023-06-30 22:02:00', NULL, '2023-06-29 09:09:17', '2023-06-30 22:02:00'),
(3, 'App\\Models\\User', 2, 'token', '4e48d475fa777283b5583efafd90c3753ac08ecc78d32c7b9192382c1843cd03', '[\"*\"]', NULL, NULL, '2023-07-04 00:37:26', '2023-07-04 00:37:26'),
(4, 'App\\Models\\User', 1, 'token', 'e8d502c1e21ab5d8ee627e7a388b169f21ae128a2eba800cadb6be571ade581a', '[\"*\"]', NULL, NULL, '2023-07-04 00:40:14', '2023-07-04 00:40:14'),
(5, 'App\\Models\\User', 1, 'token', '28011fd9ae955503d282a1e105cb1db6c864e81eac9f2fdb1b35204847d8338e', '[\"*\"]', NULL, NULL, '2023-07-04 00:48:01', '2023-07-04 00:48:01'),
(6, 'App\\Models\\User', 1, 'token', '30d56c2669254648aadfec31bc62f3ce82789065ee60dbbcef7620d3882e0a2b', '[\"*\"]', NULL, NULL, '2023-07-04 00:50:24', '2023-07-04 00:50:24'),
(7, 'App\\Models\\User', 1, 'token', 'bfd05bdcefb4b36f8243aba177fdd916f98a7faf795d2df22fc19deeccac604f', '[\"*\"]', NULL, NULL, '2023-07-04 00:51:55', '2023-07-04 00:51:55'),
(8, 'App\\Models\\User', 1, 'token', '51345ff3363176dbc8f485afcd7b017885fe890628bcabaaa6dd5b1c8944ad57', '[\"*\"]', NULL, NULL, '2023-07-04 00:52:28', '2023-07-04 00:52:28'),
(9, 'App\\Models\\User', 1, 'token', '7de1244572b14045eb103301ca4f71c07b3d78f017496790c54e7cd25564e160', '[\"*\"]', NULL, NULL, '2023-07-04 00:52:36', '2023-07-04 00:52:36'),
(10, 'App\\Models\\User', 1, 'token', 'a15e8bc827857dd0224546664e9ce3ceffda82c25f1f57d04424840a2ab3f1e7', '[\"*\"]', NULL, NULL, '2023-07-04 00:53:29', '2023-07-04 00:53:29'),
(11, 'App\\Models\\User', 1, 'token', '05fed7b56fc2242b0a5eab96c0866757b6266005ba1d428b56268607f054a860', '[\"*\"]', NULL, NULL, '2023-07-04 00:55:21', '2023-07-04 00:55:21'),
(12, 'App\\Models\\User', 1, 'token', '531c623d2841e8e8fef55b2b2eeec69424637dfeff8932807269cfc0be4e5183', '[\"*\"]', NULL, NULL, '2023-07-04 00:56:09', '2023-07-04 00:56:09'),
(13, 'App\\Models\\User', 1, 'token', 'e897edc5ef48feba2662683e83a6ca2fa75cbb0926074591cfa5626c0fac1088', '[\"*\"]', NULL, NULL, '2023-07-04 00:58:05', '2023-07-04 00:58:05'),
(14, 'App\\Models\\User', 1, 'token', 'd6ac9f8ce3f9699ec85c662248a960b39f51fd6227e670ed240db7988875a828', '[\"*\"]', NULL, NULL, '2023-07-04 00:58:32', '2023-07-04 00:58:32'),
(15, 'App\\Models\\User', 1, 'token', '9b3da34bfb9a7635f494921edc8806d761a48e5a2bf342d27546ad63e29773f5', '[\"*\"]', NULL, NULL, '2023-07-04 00:58:46', '2023-07-04 00:58:46'),
(16, 'App\\Models\\User', 1, 'token', '075c9282040c388c7a4c360ebf4aace8cee827380daf2b54ef1ce3ca82855248', '[\"*\"]', NULL, NULL, '2023-07-04 00:59:14', '2023-07-04 00:59:14'),
(17, 'App\\Models\\User', 1, 'token', '5207e0f1999dd781b5daaf06871c49cccd47d455cda548f49789fc90c199fd66', '[\"*\"]', NULL, NULL, '2023-07-04 00:59:44', '2023-07-04 00:59:44'),
(18, 'App\\Models\\User', 1, 'token', '1ef8ec76d7dc54c20ea4df9601b9e280975ddbbc82b2412cddd2762ef73e5693', '[\"*\"]', NULL, NULL, '2023-07-04 01:00:07', '2023-07-04 01:00:07'),
(19, 'App\\Models\\User', 1, 'token', '03f0f36becf434f64b57affad7d1fb3239c170f6466a19e600bce3ee28284919', '[\"*\"]', NULL, NULL, '2023-07-04 01:00:34', '2023-07-04 01:00:34'),
(20, 'App\\Models\\User', 1, 'token', 'a3914694a8ea01de48368569f2f414496d853eda299b5ae4398d48fe3670695f', '[\"*\"]', '2023-07-06 09:51:30', NULL, '2023-07-05 10:23:10', '2023-07-06 09:51:30'),
(21, 'App\\Models\\User', 1, 'token', 'e5ba991ae2da570937ed8562745a2f6b5becc06139346cf6c0dd10207823cb66', '[\"*\"]', '2023-07-13 09:37:57', NULL, '2023-07-13 09:23:52', '2023-07-13 09:37:57'),
(22, 'App\\Models\\User', 2, 'token', '481cedd1269fa5777dd6f19b8779afa8e1409992097363896099408c5357147f', '[\"*\"]', '2023-07-13 10:19:26', NULL, '2023-07-13 09:38:15', '2023-07-13 10:19:26'),
(23, 'App\\Models\\User', 1, 'token', '0be0146fa28dae991e64a3d031ec60f67076f24905c4c16a30efaf40ef6b4acf', '[\"*\"]', '2023-07-14 19:36:22', NULL, '2023-07-13 10:20:13', '2023-07-14 19:36:22'),
(24, 'App\\Models\\User', 1, 'token', '1f90493cf02266373b3ebe1d906bb50037292c2c693a3c664349d7b6a2f89b19', '[\"*\"]', NULL, NULL, '2023-07-14 17:38:19', '2023-07-14 17:38:19'),
(25, 'App\\Models\\User', 1, 'token', '99ba1d6a9b17e439f5110e21c9552ab871f9f1f705338e557b1c050ea31ec66c', '[\"*\"]', NULL, NULL, '2023-07-14 17:39:18', '2023-07-14 17:39:18'),
(26, 'App\\Models\\User', 1, 'token', 'c3693b5ff5b9a0ba98d9a42c27d75108412ca22c252c4e58b4d08215552ca450', '[\"*\"]', '2023-07-14 19:18:53', NULL, '2023-07-14 17:45:25', '2023-07-14 19:18:53'),
(27, 'App\\Models\\User', 6, 'token', 'c83fbac7e4d269856fe9c35815d9894b5f19e567d7107f8be927e6728430e123', '[\"*\"]', '2023-07-14 19:49:03', NULL, '2023-07-14 19:33:02', '2023-07-14 19:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `kurir` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `nama`, `email`, `phone`, `alamat`, `kota`, `kurir`, `payment_method`, `total_amount`, `fee`) VALUES
(2, 2, '2023-07-13 10:19:26', '2023-07-13 10:19:26', NULL, 'Jamal', 'jamal@gmail.com', '08123432412', 'Jl. Masjid Alfalah', 'Jakarta Barat', 'JNE', 'OVO', '60000', '500'),
(3, 1, '2023-07-13 10:20:48', '2023-07-13 10:20:48', NULL, 'Jamal', 'jamal@gmail.com', '08123432412', 'Jl. Masjid Alfalah', 'Jakarta Barat', 'JNE', 'OVO', '60000', '500'),
(4, 1, '2023-07-13 10:23:40', '2023-07-13 10:23:40', NULL, 'Jamal', 'jamal@gmail.com', '08123432412', 'Jl. Masjid Alfalah', 'Jakarta Barat', 'JNE', 'OVO', '60000', '500'),
(5, 1, '2023-07-14 19:18:01', '2023-07-14 19:18:01', NULL, 'Test', 'test@mail.com', '08123423141', 'Jetis', 'Jakarta', 'JNE', 'OVO', '557000', '500'),
(6, 6, '2023-07-14 19:34:56', '2023-07-14 19:34:56', NULL, 'Asmi', 'asmi@gmail.com', '081234123441', 'Srengseng', 'Jakarta Barat', 'JNE', 'DANA', '195000', '500');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`id`, `barang_id`, `transaction_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 48, 2, 1, '2023-07-13 10:19:26', '2023-07-13 10:19:26'),
(2, 49, 2, 2, '2023-07-13 10:19:26', '2023-07-13 10:19:26'),
(3, 48, 3, 1, '2023-07-13 10:20:48', '2023-07-13 10:20:48'),
(4, 48, 4, 1, '2023-07-13 10:23:40', '2023-07-13 10:23:40'),
(5, 49, 5, 2, '2023-07-14 19:18:01', '2023-07-14 19:18:01'),
(6, 49, 5, 1, '2023-07-14 19:18:01', '2023-07-14 19:18:01'),
(7, 55, 5, 1, '2023-07-14 19:18:01', '2023-07-14 19:18:01'),
(8, 59, 5, 1, '2023-07-14 19:18:01', '2023-07-14 19:18:01'),
(9, 48, 6, 1, '2023-07-14 19:34:56', '2023-07-14 19:34:56'),
(10, 49, 6, 1, '2023-07-14 19:34:56', '2023-07-14 19:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `email`, `password`, `phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Admin Ganteng', 'admin@merona.my.id', '$2y$10$ruV/MNEVM8rjjN2oVKPPQuKutgGRZGK47ggAbQ7vExlIlseDnRrEm', '081233959235', '2023-06-29 15:57:40', NULL, NULL),
(2, 'seller', 'Seller Ganteng', 'seller@merona.my.id', '$2y$10$ruV/MNEVM8rjjN2oVKPPQuKutgGRZGK47ggAbQ7vExlIlseDnRrEm', '0812344323432', '2023-06-29 16:08:31', NULL, NULL),
(6, 'testing', 'Admin Lagi', NULL, '$2y$10$3IAPaiu1vwjGhrijRMZjR.odsehmS6A.6cE/fKEOnQrR.j8u6QY1q', NULL, '2023-07-14 19:32:33', '2023-07-14 19:32:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangs_category_id_foreign` (`category_id`),
  ADD KEY `barangs_user_id_foreign` (`user_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `barangs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
