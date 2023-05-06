-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2023 at 01:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food01`
--
CREATE DATABASE IF NOT EXISTS `food01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `food01`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_content` longtext DEFAULT NULL,
  `image` varchar(50) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `fb` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `insta` text DEFAULT NULL,
  `android` text DEFAULT NULL,
  `ios` text DEFAULT NULL,
  `copyright` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_title` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_content`, `image`, `logo`, `footer_logo`, `favicon`, `fb`, `twitter`, `insta`, `android`, `ios`, `copyright`, `title`, `short_title`, `mobile`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'About  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'about-5fa8f1af82a9a.jpg', 'logo-6030f93f7573e.png', 'footer-6030f93f752a7.png', 'favicon-6030f9f848460.png', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://play.google.com/store/apps', 'https://www.apple.com/in/itunes/', 'Copyright Restaurant Website © 2020.All Rights Reserved.', 'Single restaurant food ordering Website and Delivery Boy App with Admin Panel', 'Restaurant Website', '+91 7016428845', 'infotechgravity@gmail.com', '518-519, Amby Valley Arcade, VIP Cir, nr. Essar Petroleum, Uttran, Surat, Gujarat 394105', '2021-02-20 12:00:56', '2021-02-20 19:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL DEFAULT '0',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `addons_id` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `item_notes` text DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes . 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` longtext DEFAULT NULL,
  `item_price` varchar(255) NOT NULL,
  `delivery_time` varchar(255) DEFAULT NULL,
  `item_status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_06_05_070854_create_categories_table', 2),
(7, '2020_06_05_103122_create_item_table', 3),
(9, '2020_06_05_110205_create_item_images_table', 4),
(10, '2020_06_05_125414_create_ingredients_table', 5),
(14, '2020_06_06_055110_create_cart_table', 6),
(16, '2020_06_07_051607_create_order_table', 7),
(18, '2020_06_07_063234_create_order_details_table', 8),
(19, '2020_06_16_094849_create_ratting_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(2, 'App\\User', 18),
(2, 'App\\User', 19),
(2, 'App\\User', 20),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(2, 'App\\User', 23),
(2, 'App\\User', 24),
(2, 'App\\User', 25),
(2, 'App\\User', 26),
(2, 'App\\User', 27),
(2, 'App\\User', 28),
(2, 'App\\User', 29),
(2, 'App\\User', 30),
(2, 'App\\User', 31),
(2, 'App\\User', 32),
(2, 'App\\User', 33),
(2, 'App\\User', 34),
(2, 'App\\User', 35),
(2, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 44),
(2, 'App\\User', 45),
(2, 'App\\User', 46),
(2, 'App\\User', 47),
(2, 'App\\User', 48),
(2, 'App\\User', 49),
(2, 'App\\User', 50),
(2, 'App\\User', 51),
(2, 'App\\User', 52),
(2, 'App\\User', 53),
(2, 'App\\User', 54),
(2, 'App\\User', 56),
(2, 'App\\User', 57),
(2, 'App\\User', 58),
(2, 'App\\User', 59),
(2, 'App\\User', 60),
(2, 'App\\User', 61),
(2, 'App\\User', 62),
(2, 'App\\User', 63),
(2, 'App\\User', 64),
(2, 'App\\User', 65),
(2, 'App\\User', 66),
(2, 'App\\User', 68),
(2, 'App\\User', 69),
(2, 'App\\User', 70),
(2, 'App\\User', 71),
(2, 'App\\User', 72),
(2, 'App\\User', 73),
(2, 'App\\User', 74),
(2, 'App\\User', 75),
(2, 'App\\User', 79),
(2, 'App\\User', 80),
(2, 'App\\User', 81),
(2, 'App\\User', 82),
(2, 'App\\User', 83),
(2, 'App\\User', 84),
(2, 'App\\User', 85),
(2, 'App\\User', 86),
(2, 'App\\User', 87),
(2, 'App\\User', 88),
(2, 'App\\User', 89),
(2, 'App\\User', 90),
(2, 'App\\User', 91),
(2, 'App\\User', 92),
(2, 'App\\User', 93),
(2, 'App\\User', 94),
(2, 'App\\User', 95),
(2, 'App\\User', 96),
(2, 'App\\User', 97),
(2, 'App\\User', 98),
(2, 'App\\User', 99),
(2, 'App\\User', 100),
(2, 'App\\User', 101),
(2, 'App\\User', 102),
(2, 'App\\User', 103),
(2, 'App\\User', 104),
(2, 'App\\User', 105),
(2, 'App\\User', 106),
(2, 'App\\User', 107),
(2, 'App\\User', 108),
(2, 'App\\User', 109),
(2, 'App\\User', 110),
(2, 'App\\User', 111),
(2, 'App\\User', 112),
(2, 'App\\User', 113),
(2, 'App\\User', 114),
(2, 'App\\User', 115),
(2, 'App\\User', 116),
(2, 'App\\User', 117),
(2, 'App\\User', 118),
(2, 'App\\User', 119),
(2, 'App\\User', 120),
(2, 'App\\User', 121),
(2, 'App\\User', 122),
(2, 'App\\User', 123),
(2, 'App\\User', 124),
(2, 'App\\User', 125),
(2, 'App\\User', 126),
(2, 'App\\User', 127),
(2, 'App\\User', 128),
(2, 'App\\User', 129),
(2, 'App\\User', 130),
(2, 'App\\User', 131),
(2, 'App\\User', 132),
(2, 'App\\User', 133),
(2, 'App\\User', 134),
(2, 'App\\User', 135),
(2, 'App\\User', 136),
(2, 'App\\User', 137),
(2, 'App\\User', 138),
(2, 'App\\User', 139),
(2, 'App\\User', 140),
(2, 'App\\User', 141),
(2, 'App\\User', 142);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `order_total` varchar(255) NOT NULL,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Delivery , 2 = Pickup',
  `address` varchar(255) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `lat` text DEFAULT NULL,
  `lang` text DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `promocode` varchar(50) DEFAULT NULL,
  `discount_amount` varchar(50) DEFAULT NULL,
  `discount_pr` varchar(50) DEFAULT NULL,
  `tax` varchar(50) DEFAULT NULL,
  `tax_amount` varchar(50) DEFAULT NULL,
  `delivery_charge` varchar(50) DEFAULT NULL,
  `order_notes` text DEFAULT NULL,
  `order_from` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_notification` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Unread , 2 = Read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `item_notes` text DEFAULT NULL,
  `addons_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payment_name` varchar(50) NOT NULL,
  `is_available` int(11) NOT NULL,
  `test_public_key` text NOT NULL,
  `test_secret_key` text NOT NULL,
  `live_public_key` text DEFAULT NULL,
  `live_secret_key` text DEFAULT NULL,
  `environment` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `payment_name`, `is_available`, `test_public_key`, `test_secret_key`, `live_public_key`, `live_secret_key`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'Stripe', 1, '', '', NULL, NULL, 1, '2020-12-29 07:45:15', '2021-02-21 01:26:11'),
(2, 'RazorPay', 1, '', '', NULL, NULL, 1, '2020-12-29 07:45:15', '2021-02-21 01:26:27'),
(3, 'COD', 1, '', '', NULL, NULL, 1, '2020-12-29 07:54:50', '2020-12-29 09:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `id` bigint(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacypolicy`
--

CREATE TABLE `privacypolicy` (
  `id` int(11) NOT NULL,
  `privacypolicy_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `privacypolicy`
--

INSERT INTO `privacypolicy` (`id`, `privacypolicy_content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-13 12:37:35', '2021-02-15 16:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `promocode`
--

CREATE TABLE `promocode` (
  `id` bigint(20) NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `offer_code` varchar(20) NOT NULL,
  `offer_amount` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratting`
--

CREATE TABLE `ratting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ratting` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `label` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19'),
(2, 'user', 'User', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `termscondition_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `termscondition_content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-13 12:37:35', '2020-12-31 10:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `open_time` varchar(20) NOT NULL,
  `close_time` varchar(20) NOT NULL,
  `always_close` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `day`, `open_time`, `close_time`, `always_close`, `created_at`, `updated_at`) VALUES
(1, 'Monday', '12:00am', '11:59pm', 2, '2021-02-12 12:30:30', '2021-02-12 19:30:30'),
(2, 'Tuesday', '12:00am', '11:59pm', 2, '2021-02-12 12:30:30', '2021-02-12 19:30:30'),
(3, 'Wednesday', '12:00am', '11:59pm', 2, '2021-02-12 12:30:30', '2021-02-12 19:30:30'),
(4, 'Thursday', '12:00am', '11:59pm', 2, '2021-02-12 12:30:30', '2021-02-12 19:30:30'),
(5, 'Friday', '12:00am', '11:59pm', 2, '2021-02-12 12:30:30', '2021-02-12 19:30:30'),
(6, 'Saturday', '12:00am', '11:59pm', 2, '2021-02-12 12:30:30', '2021-02-12 19:30:30'),
(7, 'Sunday', '12:00am', '11:59pm', 2, '2021-02-12 12:30:30', '2021-02-12 19:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_number` varchar(50) DEFAULT NULL,
  `wallet` varchar(20) NOT NULL,
  `payment_id` text DEFAULT NULL,
  `order_type` int(11) NOT NULL,
  `transaction_type` varchar(255) NOT NULL COMMENT '1 = Cancelled Order, 2 = Order Confirmed, 3 = Referral',
  `username` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `profile_image` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `login_type` varchar(10) NOT NULL,
  `google_id` text DEFAULT NULL,
  `facebook_id` text DEFAULT NULL,
  `type` int(11) NOT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `delivery_charge` varchar(50) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `max_order_qty` int(11) DEFAULT NULL,
  `min_order_amount` int(11) DEFAULT NULL,
  `max_order_amount` int(11) DEFAULT NULL,
  `lat` text DEFAULT NULL,
  `lang` text DEFAULT NULL,
  `map` text DEFAULT NULL,
  `firebase` text DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `token` longtext NOT NULL,
  `referral_amount` varchar(99) DEFAULT NULL,
  `wallet` varchar(50) DEFAULT '00',
  `referral_code` varchar(10) DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `otp` varchar(6) DEFAULT NULL,
  `is_verified` int(11) DEFAULT NULL COMMENT '1 = Yes , 2 = No',
  `purchase_key` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `profile_image`, `password`, `login_type`, `google_id`, `facebook_id`, `type`, `tax`, `delivery_charge`, `currency`, `max_order_qty`, `min_order_amount`, `max_order_amount`, `lat`, `lang`, `map`, `firebase`, `timezone`, `token`, `referral_amount`, `wallet`, `referral_code`, `is_available`, `otp`, `is_verified`, `purchase_key`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '', 'unknown.png', '$2y$10$RKFRI21R2SVyf/QMSj92H.srHuJXPWKk7VCbK8R3LJvRHuUobvjai', 'email', NULL, NULL, 1, '5', '10', '$', 10, 10, 1000, '40.7128', '-74.0060', 'Map Key', 'Firebase Key', 'Asia/Kolkata', '', '20', NULL, NULL, 1, NULL, NULL, NULL, '2020-06-05 07:21:20', '2021-02-21 01:20:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_user_id_foreign` (`user_id`),
  ADD KEY `cart_item_id_foreign` (`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_item_id_foreign` (`item_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_images_item_id_foreign` (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_user_id_foreign` (`user_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratting`
--
ALTER TABLE `ratting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratting_user_id_foreign` (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promocode`
--
ALTER TABLE `promocode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratting`
--
ALTER TABLE `ratting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `food_ordering`
--
CREATE DATABASE IF NOT EXISTS `food_ordering` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `food_ordering`;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Oder Now', 'lorem-ipsum-is', 'http://localhost:8000/storage/photos/1/Banner/banner-04.jpg', '<h2><span style=\"font-weight: bold; color: rgb(99, 99, 99);\">Up to 10%</span></h2>', 'active', '2020-08-14 01:47:38', '2023-04-30 07:19:05'),
(2, 'Your meal is ready', 'lorem-ipsum', 'http://localhost:8000/storage/photos/1/Banner/banner-02.jpg', '<p>Up to 90%</p>', 'active', '2020-08-14 01:50:23', '2023-04-30 07:20:03'),
(4, 'We are here for you', 'banner', '/storage/photos/1/Banner/banner-06.jpg', '<h2><br></h2><h2><span style=\"color: rgb(156, 0, 255);\"></span></h2>', 'active', '2020-08-17 20:46:59', '2023-04-30 07:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', 'adidas', 'active', '2020-08-14 04:23:00', '2020-08-14 04:23:00'),
(2, 'Nike', 'nike', 'active', '2020-08-14 04:23:08', '2020-08-14 04:23:08'),
(3, 'Kappa', 'kappa', 'active', '2020-08-14 04:23:48', '2020-08-14 04:23:48'),
(4, 'Prada', 'prada', 'active', '2020-08-14 04:24:08', '2020-08-14 04:24:08'),
(6, 'Brand', 'brand', 'active', '2020-08-17 20:50:31', '2020-08-17 20:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `status` enum('new','progress','delivered','cancel') NOT NULL DEFAULT 'new',
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `order_id`, `user_id`, `price`, `status`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(12, 39, 16, 2, 25.00, 'new', 1, 25.00, '2023-04-23 13:57:26', '2023-04-25 13:07:27'),
(17, 38, 16, 2, 34.00, 'new', 1, 34.00, '2023-04-23 15:39:05', '2023-04-25 13:07:27'),
(18, 38, 15, 2, 34.00, 'new', 1, 34.00, '2023-04-24 02:00:50', '2023-04-24 02:35:59'),
(19, 39, 15, 2, 25.00, 'new', 1, 25.00, '2023-04-24 02:01:24', '2023-04-24 02:35:59'),
(20, 13, 16, 2, 14.85, 'new', 1, 14.85, '2023-04-25 13:05:48', '2023-04-25 13:07:27'),
(21, 37, 16, 2, 34.00, 'new', 1, 34.00, '2023-04-25 13:06:27', '2023-04-25 13:07:27'),
(22, 23, 17, 31, 95.00, 'new', 1, 95.00, '2023-04-26 13:17:55', '2023-04-26 13:21:41'),
(23, 17, NULL, 34, 17.00, 'new', 1, 17.00, '2023-04-28 06:19:43', '2023-04-28 06:19:43'),
(24, 19, NULL, 34, 71.25, 'new', 1, 71.25, '2023-04-28 06:20:36', '2023-04-28 06:20:36'),
(25, 23, 18, 1, 95.00, 'new', 1, 95.00, '2023-04-28 22:08:00', '2023-04-28 22:11:41'),
(26, 39, 18, 1, 25.00, 'new', 1, 25.00, '2023-04-28 22:08:22', '2023-04-28 22:11:41'),
(27, 14, 19, 1, 45.00, 'new', 1, 45.00, '2023-04-28 22:12:18', '2023-04-28 22:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `summary` text DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(12, 'Bread', 'bread', '<p>\"There are people in the world so hungry, that God cannot appear to them except in the form of bread.\" - Mahatma Gandhi<br></p>', 'http://localhost:8000/storage/photos/1/Category/Bread/Tasty Buns.jpg', 1, NULL, NULL, 'active', '2023-04-23 10:23:18', '2023-04-23 10:23:18'),
(13, 'Cakes and Cookies', 'cakes-and-cookies', '<p><span style=\"font-size: 1rem;\">\"Life is uncertain, but you can always count on a cake.\"&nbsp;</span><br></p>', 'http://localhost:8000/storage/photos/1/Category/Eggless-Chocolate-Cake.jpg', 1, NULL, NULL, 'active', '2023-04-23 10:27:27', '2023-04-23 10:27:27'),
(14, 'Main Meal', 'main-meal', NULL, 'http://localhost:8000/storage/photos/1/Category/Mushroom-fried-rice.jpg', 1, NULL, NULL, 'active', '2023-04-23 10:29:54', '2023-04-23 10:29:54'),
(15, 'Beverages', 'drinks', NULL, 'http://localhost:8000/storage/photos/1/Category/Bashews-CocoPine-300x300.jpg', 1, NULL, NULL, 'active', '2023-04-23 10:34:11', '2023-04-23 13:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `chatter_categories`
--

CREATE TABLE `chatter_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) NOT NULL,
  `color` varchar(20) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_categories`
--

INSERT INTO `chatter_categories` (`id`, `parent_id`, `order`, `name`, `color`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Introductions', '#3498DB', 'introductions', NULL, NULL),
(2, NULL, 2, 'General', '#2ECC71', 'general', NULL, NULL),
(3, NULL, 3, 'Feedback', '#9B59B6', 'feedback', NULL, NULL),
(4, NULL, 4, 'Random', '#f19009', 'random', NULL, '2023-04-25 06:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `chatter_discussion`
--

CREATE TABLE `chatter_discussion` (
  `id` int(10) UNSIGNED NOT NULL,
  `chatter_category_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(191) NOT NULL,
  `user_id` bigint(10) UNSIGNED NOT NULL,
  `sticky` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `answered` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `color` varchar(20) DEFAULT '#232629',
  `status` varchar(25) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_discussion`
--

INSERT INTO `chatter_discussion` (`id`, `chatter_category_id`, `title`, `user_id`, `sticky`, `views`, `answered`, `created_at`, `updated_at`, `slug`, `color`, `status`) VALUES
(11, 2, 'User Discusson', 2, 0, 0, 0, '2023-04-24 16:18:00', '2023-04-24 16:18:00', 'user-discusson', '#393833', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `chatter_post`
--

CREATE TABLE `chatter_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `chatter_discussion_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(10) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `markdown` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_post`
--

INSERT INTO `chatter_post` (`id`, `chatter_discussion_id`, `user_id`, `body`, `created_at`, `updated_at`, `markdown`, `locked`) VALUES
(13, 11, 2, '<p>Akpevwe jenkins is my name and i want you to know</p>', '2023-04-24 16:18:01', '2023-04-24 16:18:01', 0, 0),
(14, 11, 1, '<p>hello testing the comment</p>', '2023-04-25 02:58:50', '2023-04-25 02:58:50', 0, 0),
(19, 11, 1, '<p>What is hola bro</p>', '2023-04-28 06:22:19', '2023-04-28 06:22:19', 0, 0),
(20, 11, 34, '<p>hw far</p>\r\n<p>watin de sup</p>', '2023-04-28 06:24:00', '2023-04-28 06:24:00', 0, 0),
(21, 11, 34, '<p>hola is hello in spanish</p>\r\n<p>&nbsp;</p>', '2023-04-28 06:37:24', '2023-04-28 06:37:24', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chatter_user_discussion`
--

CREATE TABLE `chatter_user_discussion` (
  `user_id` bigint(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_user_discussion`
--

INSERT INTO `chatter_user_discussion` (`user_id`, `discussion_id`) VALUES
(2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `type` enum('fixed','percent') NOT NULL DEFAULT 'fixed',
  `value` decimal(20,2) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'abc123', 'fixed', '300.00', 'active', NULL, NULL),
(2, '111111', 'percent', '10.00', 'active', NULL, NULL),
(5, 'abcd', 'fixed', '250.00', 'active', '2020-08-17 20:54:58', '2020-08-17 20:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `users_id` varchar(25) NOT NULL,
  `latituid` varchar(225) NOT NULL,
  `longituid` varchar(25) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `users_id`, `latituid`, `longituid`, `created_at`, `updated_at`) VALUES
(187, '1', '-20.285992', '57.366905', '2023-04-27', '2023-04-27 13:08:05'),
(188, '1', '-20.285992', '57.366905', '2023-04-27', '2023-04-27 13:08:16'),
(189, '1', '-20.285999', '57.366901', '2023-04-27', '2023-04-27 13:10:25'),
(190, '1', '-20.285999', '57.366901', '2023-04-27', '2023-04-27 13:10:29'),
(191, '1', '-20.285999', '57.366901', '2023-04-27', '2023-04-27 13:10:49'),
(192, '1', '-20.285999', '57.366901', '2023-04-27', '2023-04-27 13:14:05'),
(193, '1', '-20.285999', '57.366901', '2023-04-27', '2023-04-27 13:14:06'),
(194, '2', '-20.286036', '57.366849', '2023-04-27', '2023-04-27 13:17:35'),
(195, '1', '-20.2858173', '57.3668201', '2023-04-27', '2023-04-27 19:57:12'),
(196, '1', '-20.2859175', '57.3668117', '2023-04-28', '2023-04-27 21:01:45'),
(197, '1', '-20.2859081', '57.3668188', '2023-04-28', '2023-04-27 21:02:17'),
(198, '1', '-20.2859081', '57.3668188', '2023-04-28', '2023-04-27 21:02:19'),
(199, '1', '-20.2859081', '57.3668188', '2023-04-28', '2023-04-27 21:08:26'),
(200, '1', '-20.2859081', '57.3668188', '2023-04-28', '2023-04-27 21:08:28'),
(201, '1', '-20.2859334', '57.3668149', '2023-04-28', '2023-04-27 21:08:51'),
(202, '1', '-20.273831', '57.3835702', '2023-04-28', '2023-04-28 10:07:32'),
(203, '1', '-20.273831', '57.3835702', '2023-04-28', '2023-04-28 10:07:34'),
(204, '1', '-20.2637312', '57.7470464', '2023-04-29', '2023-04-29 02:00:38'),
(205, '1', '-20.2637312', '57.7470464', '2023-04-29', '2023-04-29 02:00:41'),
(206, '1', '-20.2859049', '57.366831', '2023-04-29', '2023-04-29 02:03:24'),
(207, '1', '-20.2859049', '57.366831', '2023-04-29', '2023-04-29 02:06:38'),
(208, '1', '-20.2859049', '57.366831', '2023-04-29', '2023-04-29 02:06:40'),
(209, '1', '-20.2858966', '57.3668231', '2023-04-29', '2023-04-29 02:13:49'),
(210, '1', '-20.2858966', '57.3668231', '2023-04-29', '2023-04-29 02:33:04'),
(211, '1', '-20.2859311', '57.3668181', '2023-04-30', '2023-04-30 05:37:02'),
(212, '1', '-20.2859197', '57.3668067', '2023-04-30', '2023-04-30 05:46:43'),
(213, '1', '-20.2814459', '57.3939668', '2023-04-30', '2023-04-30 09:26:40'),
(214, '1', '-20.2814458', '57.393971', '2023-04-30', '2023-04-30 10:11:31'),
(215, '1', '-20.2814499', '57.393945', '2023-04-30', '2023-04-30 11:18:16'),
(216, '1', '-20.2814499', '57.393945', '2023-04-30', '2023-04-30 11:18:19'),
(217, '1', '-20.2814561', '57.3939379', '2023-04-30', '2023-04-30 11:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` text NOT NULL,
  `email` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `message` longtext NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `email`, `photo`, `phone`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 'Prajwal Rai', 'About price', 'prajwal.iar@gmail.com', NULL, '9807009999', 'Hello sir i am from kathmandu nepal.', '2023-04-26 13:21:48', '2020-08-14 08:00:01', '2023-04-26 13:21:48'),
(2, 'Prajwal Rai', 'About Price', 'prajwal.iar@gmail.com', NULL, '9800099000', 'Hello i am Prajwal Rai', '2020-08-18 03:04:15', '2020-08-15 07:52:39', '2020-08-18 03:04:16'),
(3, 'Prajwal Rai', 'lorem ipsum', 'prajwal.iar@gmail.com', NULL, '1200990009', 'hello sir sdfdfd dfdjf ;dfjd fd ldkfd', '2023-04-23 16:39:42', '2020-08-17 21:15:12', '2023-04-23 16:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_10_021010_create_brands_table', 1),
(5, '2020_07_10_025334_create_banners_table', 1),
(6, '2020_07_10_112147_create_categories_table', 1),
(7, '2020_07_11_063857_create_products_table', 1),
(8, '2020_07_12_073132_create_post_categories_table', 1),
(9, '2020_07_12_073701_create_post_tags_table', 1),
(10, '2020_07_12_083638_create_posts_table', 1),
(11, '2020_07_13_151329_create_messages_table', 1),
(12, '2020_07_14_023748_create_shippings_table', 1),
(13, '2020_07_15_054356_create_orders_table', 1),
(14, '2020_07_15_102626_create_carts_table', 1),
(15, '2020_07_16_041623_create_notifications_table', 1),
(16, '2020_07_16_053240_create_coupons_table', 1),
(17, '2020_07_23_143757_create_wishlists_table', 1),
(18, '2020_07_24_074930_create_product_reviews_table', 1),
(19, '2020_07_24_131727_create_post_comments_table', 1),
(20, '2020_08_01_143408_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('2033f8c8-ec45-4c8f-90e2-00da087184bb', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/15\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:22:05', '2023-04-24 02:35:59', '2023-04-26 13:22:05'),
('2145a8e3-687d-444a-8873-b3b2fb77a342', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2023-04-26 13:23:25', '2020-08-15 07:31:21', '2023-04-26 13:23:25'),
('3af39f84-cab4-4152-9202-d448435c67de', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/4\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:23:21', '2020-08-15 07:54:52', '2023-04-26 13:23:21'),
('540ca3e9-0ff9-4e2e-9db3-6b5abc823422', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2020-08-15 07:30:44', '2020-08-14 07:12:28', '2020-08-15 07:30:44'),
('58405c84-546e-4415-9496-0bce281a9b99', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/17\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:21:57', '2023-04-26 13:21:41', '2023-04-26 13:21:57'),
('5d9cbc2f-bc01-41dd-8b92-4f51be6549c1', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/14\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:22:44', '2023-04-24 02:32:48', '2023-04-26 13:22:44'),
('5da09dd1-3ffc-43b0-aba2-a4260ba4cc76', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', '2023-04-26 13:23:22', '2020-08-15 07:51:02', '2023-04-26 13:23:22'),
('5e91e603-024e-45c5-b22f-36931fef0d90', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/white-sports-casual-t\",\"fas\":\"fa-star\"}', '2023-04-26 13:23:23', '2020-08-15 07:44:07', '2023-04-26 13:23:23'),
('5edf87a6-b00f-4321-812e-eabcf671dd59', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/11\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:22:51', '2023-04-24 02:29:26', '2023-04-26 13:22:51'),
('66063576-e31f-4ce9-ab6d-54d20a820b3e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/19\",\"fas\":\"fa-file-alt\"}', NULL, '2023-04-28 22:12:38', '2023-04-28 22:12:38'),
('6a51aa5a-9eac-4ccb-ad75-0f0db0c4b4ff', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/10\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:22:53', '2023-04-24 02:03:15', '2023-04-26 13:22:53'),
('73a3b51a-416a-4e7d-8ca2-53b216d9ad8e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2023-04-26 13:23:37', '2020-08-14 07:11:03', '2023-04-26 13:23:37'),
('8605db5d-1462-496e-8b5f-8b923d88912c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/1\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:23:32', '2020-08-14 07:20:44', '2023-04-26 13:23:32'),
('8f5d538c-a8df-4cde-99a1-5ef49c4b7a1f', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/7\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:23:02', '2023-04-23 15:10:47', '2023-04-26 13:23:02'),
('95dcd049-893e-46c2-9e60-a57ea5672259', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/18\",\"fas\":\"fa-file-alt\"}', NULL, '2023-04-28 22:11:40', '2023-04-28 22:11:40'),
('a123ada2-7aad-4e22-ab9e-9bb39639b700', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/13\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:22:12', '2023-04-24 02:30:22', '2023-04-26 13:22:12'),
('a6ec5643-748c-4128-92e2-9a9f293f53b5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:23:06', '2020-08-17 21:17:03', '2023-04-26 13:23:06'),
('ae3b7cbc-8b28-427d-8b1a-1fd274a98e30', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/12\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:22:51', '2023-04-24 02:29:49', '2023-04-26 13:22:51'),
('b186a883-42f2-4a05-8fc5-f0d3e10309ff', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/2\",\"fas\":\"fa-file-alt\"}', '2020-08-15 04:17:24', '2020-08-14 22:14:55', '2020-08-15 04:17:24'),
('c28e98ae-dd2c-4b1e-a3c1-88c7f4e09e7c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/8\",\"fas\":\"fa-file-alt\"}', '2023-04-23 16:39:26', '2023-04-23 15:46:09', '2023-04-23 16:39:26'),
('d2fd7c33-b0fe-47d6-8bc6-f377d404080d', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2023-04-26 13:26:05', '2020-08-14 07:08:50', '2023-04-26 13:26:05'),
('d34785b0-0319-45bb-9ccb-857d8c1c58d1', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/16\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:22:36', '2023-04-25 13:07:25', '2023-04-26 13:22:36'),
('d53e073a-76b7-45f7-a8b1-d3d82e29aefb', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/6\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:23:06', '2023-04-23 13:59:06', '2023-04-26 13:23:06'),
('dff78b90-85c8-42ee-a5b1-de8ad0b21be4', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/3\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:23:26', '2020-08-15 06:40:54', '2023-04-26 13:23:26'),
('e28b0a73-4819-4016-b915-0e525d4148f5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/lorem-ipsum-is-simply\",\"fas\":\"fa-star\"}', '2023-04-26 13:23:15', '2020-08-17 21:08:16', '2023-04-26 13:23:15'),
('ece7d3ec-c5be-428a-b25b-fd07dbaf9ac7', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/9\",\"fas\":\"fa-file-alt\"}', '2023-04-26 13:22:55', '2023-04-24 02:02:41', '2023-04-26 13:22:55'),
('ffffa177-c54e-4dfe-ba43-27c466ff1f4b', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', '2023-04-26 13:23:13', '2020-08-17 21:13:29', '2023-04-26 13:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `shipping_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment_method` enum('cod','paypal') NOT NULL DEFAULT 'cod',
  `payment_status` enum('paid','unpaid') NOT NULL DEFAULT 'unpaid',
  `status` enum('new','process','delivered','cancel') NOT NULL DEFAULT 'new',
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `post_code` varchar(191) DEFAULT NULL,
  `address1` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `sub_total`, `shipping_id`, `coupon`, `total_amount`, `quantity`, `payment_method`, `payment_status`, `status`, `first_name`, `last_name`, `email`, `phone`, `country`, `post_code`, `address1`, `address2`, `created_at`, `updated_at`) VALUES
(2, 'ORD-YFF8BF0YBK', 2, 1939.03, 1, NULL, 2039.03, 1, 'cod', 'unpaid', 'delivered', 'Sandhya', 'Rai', 'user@gmail.com', '90000000990', 'NP', NULL, 'Lalitpur', NULL, '2020-08-14 22:14:49', '2020-08-14 22:15:19'),
(15, 'ORD-CWPHXHHILO', 2, 59.00, NULL, NULL, 59.00, 2, 'cod', 'unpaid', 'delivered', 'User', NULL, 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, '2023-04-24 02:35:59', '2023-04-24 04:20:48'),
(16, 'ORD-TR9TXAGP3E', 2, 107.85, NULL, NULL, 107.85, 4, 'cod', 'unpaid', 'delivered', 'User', NULL, 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, '2023-04-25 13:07:19', '2023-04-25 13:28:44'),
(17, 'ORD-O16DEZKGVC', 31, 95.00, NULL, NULL, 95.00, 1, 'cod', 'unpaid', 'new', 'James Owens', NULL, 'James@gmail.com', NULL, NULL, NULL, NULL, NULL, '2023-04-26 13:21:40', '2023-04-26 13:21:40'),
(18, 'ORD-9XP041KMJI', 1, 120.00, NULL, NULL, 120.00, 2, 'cod', 'unpaid', 'new', 'Akpevwe Jenkins', NULL, 'admin@live.mdx.ac.uk', NULL, NULL, NULL, NULL, NULL, '2023-04-28 22:11:35', '2023-04-28 22:11:35'),
(19, 'ORD-8U9RDOG0KS', 1, 45.00, NULL, NULL, 45.00, 1, 'cod', 'unpaid', 'new', 'Akpevwe Jenkins', NULL, 'admin@live.mdx.ac.uk', NULL, NULL, NULL, NULL, NULL, '2023-04-28 22:12:38', '2023-04-28 22:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('James@gmail.com', '$2y$10$.TQTB5iBo2YhojvKmTId5O7M3iz5Bp0KN0yKwuzV91p73YFs4rgF6', '2023-04-26 04:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `summary` text NOT NULL,
  `description` longtext DEFAULT NULL,
  `quote` text DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `tags` varchar(191) DEFAULT NULL,
  `post_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `replied_comment` text DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `user_id`, `post_id`, `comment`, `status`, `replied_comment`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Testing comment edited', 'active', NULL, NULL, '2020-08-14 07:08:42', '2020-08-15 06:59:58'),
(2, NULL, NULL, 'testing 2', 'active', NULL, 1, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
(3, 2, NULL, 'That\'s cool', 'active', NULL, 2, '2020-08-14 07:12:27', '2020-08-14 07:12:27'),
(4, 1, NULL, 'nice', 'active', NULL, NULL, '2020-08-15 07:31:19', '2020-08-15 07:31:19'),
(5, NULL, NULL, 'nice blog', 'active', NULL, NULL, '2020-08-15 07:51:01', '2020-08-15 07:51:01'),
(6, 2, NULL, 'nice', 'active', NULL, NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29'),
(7, 2, NULL, 'really', 'active', NULL, 6, '2020-08-17 21:13:51', '2020-08-17 21:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Enjoy', 'enjoy', 'active', '2020-08-14 01:53:52', '2020-08-14 01:53:52'),
(2, '2020', '2020', 'active', '2020-08-14 01:54:09', '2020-08-14 01:54:09'),
(3, 'Visit nepal 2020', 'visit-nepal-2020', 'active', '2020-08-14 01:54:33', '2020-08-14 01:54:33'),
(4, 'Tag', 'tag', 'active', '2020-08-15 06:59:31', '2020-08-15 06:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `summary` text NOT NULL,
  `description` longtext DEFAULT NULL,
  `photo` text NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 1,
  `size` varchar(191) DEFAULT 'M',
  `condition` enum('default','new','hot') NOT NULL DEFAULT 'default',
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT 6,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(13, 'Tasty Buns', 'tasty-buns-2304230140-780', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Excellent buns that can be used for hamburgers or just plain dinner rolls. They don\'t take long to make and you will never fail them!</span><br></p>', NULL, 'http://localhost:8000/storage/photos/1/Products/Bread/Tasty Buns.jpg', 8, 'M', 'new', 'active', 15.00, 1.00, 1, 12, NULL, 6, '2023-04-23 11:01:40', '2023-04-25 13:29:32'),
(14, 'Club Sandwich', 'club-sandwich', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">This layered sandwich, a favourite in snack-bar across the island, makes a tasty meal for one. Easy to make, the club sandwich is perfect for a brunch.</span><br></p>', NULL, 'http://localhost:8000/storage/photos/1/Products/Bread/Club Sandwich.jpg', 14, '', 'hot', 'active', 45.00, NULL, 1, 12, NULL, 6, '2023-04-23 11:09:47', '2023-04-23 11:09:47'),
(15, 'Naan Poulet', 'naan-poulet', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Naan is a popular Indian bread, traditionally made in a ‘tandoor’- an Indian clay oven, but we now improvise and use other means, including a home oven. Stuffed with chicken mince, (or any other minced filling of your choice), this mouth-watering dish makes a great starter or main meal.</span><br></p>', NULL, 'http://localhost:8000/storage/photos/1/Products/Bread/Naan Poulet (Naan Keema Chicken).jpg', 8, '', 'hot', 'active', 365.00, 3.00, 1, 12, NULL, 6, '2023-04-23 11:12:46', '2023-04-23 11:12:46'),
(16, 'Makatia Coco', 'makatia-coco', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">This typical Mauritian bun needs no introduction to the locals.</span><br></p>', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Believed to have originated from the slave period, the bun was originally made with left over bread and sweetened with sugar to overcome the bitter taste of old dough. The new and improved recipe is now a soft and fluffy bun, filled with coconut and enjoyed by many for afternoon tea.</span><br></p>', 'http://localhost:8000/storage/photos/1/Products/Bread/sweet-buns-with-coconut-filling-makatias.jpg', 30, '', 'default', 'active', 14.00, NULL, 1, 12, NULL, 6, '2023-04-23 11:22:05', '2023-04-23 11:22:05'),
(17, 'Naan', 'naan', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">A popular favorite during the Muslim fasting period, Naan is often served before or when ending the fast. It can be stuffed with mince, cheese or even plain.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><ul class=\"text\" style=\"box-sizing: inherit; margin-bottom: 30px; padding: 0px; list-style: none; text-align: justify; color: rgb(55, 55, 55); font-size: 14px; font-family: Roboto;\"><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Warm water</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tsp sugar</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">15g active yeast</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 ½ cup plain flour</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tbsp salt</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3 tbsp melted butter</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 egg</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Cheddar (or any cheese of your preference)</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Soft cheese</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Shredded cheese</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Sesame seeds</li></ul>', 'http://localhost:8000/storage/photos/1/Products/Bread/naan.jpg', 8, '', 'new', 'active', 17.00, 0.00, 1, 12, NULL, 6, '2023-04-23 11:27:35', '2023-04-23 11:27:35'),
(18, 'Du Pain Frire', 'du-pain-frire', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">A popular favourite among Mauritians that you can find in almost all the homes. Making use of the versatile Bajia batter of gram flour, slices of bread are dipped, fried and accompanied with a spicy chutney of tomato &amp; coriander.</span><br></p>', '<ol><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Gram Flour (Besan)</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">White Flour</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Salt</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Sodium Bicarbonate</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Spring Onions</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Oil</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Slice Bread</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Water</li></ol>', 'http://localhost:8000/storage/photos/1/Products/Bread/du-pain-frire-bread-slices-fried-in-batter.jpg', 8, '', 'new', 'active', 11.00, 0.00, 1, 12, NULL, 6, '2023-04-23 11:29:34', '2023-04-23 11:29:34'),
(19, 'Eggless Chocolate Cake', 'eggless-chocolate-cake', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Eggless chocolate cakes have a reputation of being dense and not as tasty but this recipe will change all of that.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 cup melted butter</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 tbsps brown sugar</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2/3 cup (150 ml) water</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 tsps vanilla essence</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tin condensed milk (400 gms)</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 3/4 cups all-purpose flour</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/4 cup unsweetened cocoa powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3/4 tsp baking soda</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 3/4 tsps baking powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/4 tsp salt</p>', 'http://localhost:8000/storage/photos/1/Products/cakes/Eggless-Chocolate-Cake-4.jpg', 9, ',S', 'default', 'active', 75.00, 5.00, 1, 13, NULL, 6, '2023-04-23 11:34:08', '2023-04-23 11:34:08'),
(20, 'Orange Cupcake', 'orange-cupcake', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Simple and easy orange cupcakes, the orange meringue is simply delicious thanks to the meringue mixture that you will love.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">200g flour</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">15gr almond powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 tsp vanilla extract</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">200g of sugar</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3g of salt</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 pack of yeast</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">150g of butter</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">4 eggs</p>', 'http://localhost:8000/storage/photos/1/Products/cakes/Cupcakes-orange-5.jpg', 10, '', 'default', 'active', 34.00, 0.00, 1, 13, NULL, 6, '2023-04-23 11:37:17', '2023-04-23 11:37:17'),
(21, 'Banana Muffins', 'banana-muffins', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">The sweet batter full of mashed bananas, ground cinnamon, and toasted nuts. Banana Muffins are a snap to make.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 cup walnuts or pecans</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 3/4 cups all-purpose flour</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3/4 cup granulated white sugar</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 teaspoon baking powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/4 teaspoon baking soda</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/4 teaspoon salt</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 teaspoon ground cinnamon</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 large eggs, lightly beaten</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 cup unsalted butter, melted and cooled</p>', 'http://localhost:8000/storage/photos/1/Products/cakes/banana-muffin.jpg', 13, '', 'hot', 'active', 50.00, 0.00, 1, 13, NULL, 6, '2023-04-23 11:40:52', '2023-04-23 11:40:52'),
(22, 'Kebab Bread', 'kebab-bread', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">This fast food has been referred to as kebab since the stalls started popping up in Mauritius. We don’t know the actual period when kebabs started getting popular but we surely know that it’s appreciated by everyone on our little island.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 1/2 Pounds Chicken Breast</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 cup Yogurt</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">salt and pepper to taste</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Tbsp Granulate (powder)Onion Or 1 Grated onions</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Tbsp Granulate Garlic Or Powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Tsp cinnamon Powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/4 Cloves Powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Tbsp Paprika</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">4 Tbsp Tomato paste</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Tsp Vinegar</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 Big Spoon Honey</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3 Tbsp Olive Oil</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Half Or a whole Lime Juice (Very Sour one)</p>', 'http://localhost:8000/storage/photos/1/Products/Main meal/kebab-1.jpg', 12, '', 'new', 'active', 125.00, 10.00, 1, 14, NULL, 6, '2023-04-23 11:49:13', '2023-04-23 11:49:13'),
(23, 'Mushroom Fried', 'mushroom-fried', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Use that leftover rice to make this easy Mushroom Fried Rice and see it disappear in minutes. Here is how to cook Mushroom Fried Rice.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3 cups, cold left over cooked rice</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 cups, cleaned, sliced White mushrooms blanched in hot water for 30 seconds</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 medium size, sliced Green capsicum</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">5 Beans, trim the ends and julienne</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 Spring onions sliced with greens</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3 Garlic, finely minced</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 tsp White vinegar</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3/4 tsp Light soy sauce</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tsp White pepper powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Salt to taste</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">4 tbsps Sesame oil (or any cooking oil)</p>', 'http://localhost:8000/storage/photos/1/Products/Main meal/Mushroom-fried-rice.jpg', 100, '', 'default', 'active', 100.00, 5.00, 1, 14, NULL, 6, '2023-04-23 11:51:26', '2023-04-23 11:51:26'),
(24, 'Chicken Masala Curry', 'chicken-masala-curry', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">There are certain recipes which always remain our favorites and we can never be tired of cooking them over and over again. One such favorite recipe that we cook often and is enjoyed by our family and friends is the Spicy Chicken Masala Curry.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p><span class=\"sub-subtitle\" style=\"box-sizing: inherit; color: rgb(36, 36, 36); font-weight: 700; display: block; margin-bottom: 5px; font-family: Roboto; text-align: justify;\">Marinate:</span></p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1½ kg chicken, washed and cut into medium sized pieces</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3 tbsp curds</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tsp red chilli powder (adjust to suit your spice level)</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1¼ tsp turmeric pwd</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">salt to taste</p><p><span class=\"sub-subtitle\" style=\"box-sizing: inherit; color: rgb(36, 36, 36); font-weight: 700; display: block; margin-bottom: 5px; font-family: Roboto; text-align: justify;\">Make a paste:</span></p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">6-7 cashewnuts</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">4-5 tbsps milk</p><p><span class=\"sub-subtitle\" style=\"box-sizing: inherit; color: rgb(36, 36, 36); font-weight: 700; display: block; margin-bottom: 5px; font-family: Roboto; text-align: justify;\">Dry roast and make a fine powder:</span></p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tbsp cinnamon</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">10-12 curry leaves</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3 cloves</p><p><span class=\"sub-subtitle\" style=\"box-sizing: inherit; color: rgb(36, 36, 36); font-weight: 700; display: block; margin-bottom: 5px; font-family: Roboto; text-align: justify;\">Rest of the ingredients:</span></p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3-4 tbsps oil</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 big onions finely chopped</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 large tomato finely chopped</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tsp ginger-garlic paste</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tsp coriander powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3/4 tsp black pepper powder (adjust to suit your spice level)</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1¼ tsp cumin powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">coriander leaves for garnish</p>', 'http://localhost:8000/storage/photos/1/Products/Main meal/spicy-chicken-masala-3.jpg', 21, '', 'default', 'active', 98.00, 0.00, 1, 14, NULL, 6, '2023-04-23 11:56:00', '2023-04-23 11:56:00'),
(25, 'Asian Grilled Chicken', 'asian-grilled-chicken', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">A quick and easy recipe for Asian chicken. Leave to marinate overnight, for even more flavor!</span><br></p>', '<ul><li style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1½ cups (375 mL) organic farm chicken broth</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 tablespoons (30 mL) soy sauce</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 tablespoon (30 mL) lime juice</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tablespoon (15 mL) fresh coriander, chopped</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 garlic cloves, minced</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 teaspoon (5 mL) grated fresh ginger root</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 teaspoon (5 mL) sugar</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/4 teaspoon (1 mL) crushed red pepper flakes</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">4 (about 1 lb / 500 g) boneless skinless chicken breasts</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tablespoon (15 mL) corn starch</li></ul>', 'http://localhost:8000/storage/photos/1/Products/Main meal/poulet-grille-2.jpg', 45, '', 'default', 'active', 74.00, 2.00, 1, 14, NULL, 6, '2023-04-23 11:59:00', '2023-04-23 11:59:00'),
(26, 'Fried Chicken', 'fried-chicken', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Perfect Fried Chicken with the crispiest, most flavorful crunchy outside with moist and juicy meat on the inside.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3 eggs</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/3 cup water</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">About 1 cup hot red pepper</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 cups self-rising flour</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 teaspoon pepper</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1- 2 1/2 lbs cut chicken</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Oil for frying</p>', 'http://localhost:8000/storage/photos/1/Products/Main meal/Fried-Chicken-5.jpg', 40, '', 'new', 'active', 66.00, 2.00, 1, 14, NULL, 6, '2023-04-23 12:01:52', '2023-04-23 12:01:52'),
(27, 'Macaroni and Cheese', 'macaroni-and-cheese', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Easy, flavorful, rich and creamy macaroni and cheese! A go-to recipe and always a crowd favorite! Perfect side dish that people of all ages love.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">8 ounces uncooked elbow macaroni</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 cups shredded Cheddar cheese</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 cup grated Parmesan cheese</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3 cups milk</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/4 cup butter</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 1/2 tablespoons all-purpose flour</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 tablespoons butter</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 cup bread crumbs</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 pinch paprika</p>', 'http://localhost:8000/storage/photos/1/Products/Main meal/mac-and-cheese-4.jpg', 32, '', 'new', 'active', 120.00, 7.00, 1, 14, NULL, 6, '2023-04-23 12:04:02', '2023-04-23 12:04:02'),
(28, 'Pulao', 'pulao', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Pulao is of Persian origin, it is a dish made of rice with vegetables or chicken, embellished with a tasty mix of many spices. This dish is a classic of Indian cuisine, with many regional or family variants.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">300 g of chicken breasts</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">300 g sausages cut into bevels</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tbsp of garlic and ginger paste</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 minced onion</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">4 cloves</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">4 seeds of cardamom</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 cinnamon stick</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tbsp of ground cumin</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tbsp of turmeric</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Salt pepper</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Some chopped mint leaves</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Fresh chilled coriander</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Basmati rice half cooked</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tbsp of ghee (or butter)</p>', 'http://localhost:8000/storage/photos/1/Products/Main meal/pulao-recette-2.jpg', 44, '', 'default', 'active', 121.00, 9.00, 1, 14, NULL, 6, '2023-04-23 12:07:42', '2023-04-23 12:07:42'),
(29, 'Kichri', 'kichri', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Of Indian origin, it is a dish made from rice, yellow split pea dholl and a hint of spices. This balanced dish can be enjoyed with any other food, although it is often accompanied by tomato sauce or chutney.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 cups rice</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 cup lentils</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/4 cup yellow split pea dholl</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 cup carrot, roughly chopped</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tablespoon thyme leaves</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">3-4 curry leaves</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/4 teaspoon mustard seed</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tablespoon garlic paste</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tablespoon ginger paste</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 small onion, finely sliced</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 teaspoon turmeric powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 teaspoon cumin powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 teaspoon curry powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 tablespoons oil</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Salt</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Water</p>', 'http://localhost:8000/storage/photos/1/Products/Main meal/kichri-recette-1.jpg', 54, '', 'default', 'active', 97.00, 0.00, 1, 14, NULL, 6, '2023-04-23 12:09:47', '2023-04-23 12:09:47'),
(30, 'Lamb Biryani', 'lamb-biryani', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">This dish from the Indian subcontinent is prepared with basmati rice, meat or vegetables. For lamb biryano, the pieces of meat are marinated overnight for the tasty dish. To serve very hot and sprinkled with freshly chopped coriander and fried onions.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">800 g lamb shoulder cut into pieces</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 onions</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">20 g fresh ginger</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">150 g of butter</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">350 g of basmati rice</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tablespoon of turmeric</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tablespoon cumin powder</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 cinnamon stick</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">4 cloves</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 anise</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">12 green cardamom</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Saffron</p>', 'http://localhost:8000/storage/photos/1/Products/Main meal/briani-agneau-recette-3.jpg', 45, '', 'default', 'active', 109.00, 0.00, 1, 14, NULL, 6, '2023-04-23 12:12:34', '2023-04-23 12:12:34'),
(31, 'Cantonese Rice', 'cantonese-rice', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">If you like Chinese and Sino-Mauritian cuisine, this dish is a must. This version is very easy to make at home and full of flavors.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 cup Rice</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 cup of water</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 kg chicken breast</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 eggs</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 cup canned corn</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 cup canned peas</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 tbsp soy sauce</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Oil</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Salt &amp; pepper</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Garlic and ginger paste</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Carrots</p>', 'http://localhost:8000/storage/photos/1/Products/Main meal/riz-cantonnais-recette-2.jpg', 45, '', 'default', 'active', 110.00, 0.00, 1, 14, NULL, 6, '2023-04-23 12:14:14', '2023-04-23 12:14:14'),
(32, 'Chicken Spaghetti', 'chicken-spaghetti', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Delicious chicken spaghetti with a sauce of onions, herbs and tomatoes&nbsp;</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">500g Chicken breast</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1.5l Water</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Salt and pepper</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Oil</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Thyme and parsley</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 tablespoon of oyster sauce</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">500g spaghetti</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 teaspoons ginger garlic paste</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 teaspoon of oregano</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">250g of tomato sauce</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 chopped onion</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Grated cheese</p>', 'http://localhost:8000/storage/photos/1/Products/Main meal/spaghetti-poulet-recette-1.jpg', 43, '', 'default', 'active', 98.00, 5.00, 1, 14, NULL, 6, '2023-04-23 12:16:36', '2023-04-23 12:16:36'),
(33, 'Boiled Noodles with Chicken', 'boiled-noodles-with-chicken', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">Mine Bouillie ”Noodles Broth ” is the talk of the town really here in Mauritius. Being among the most popular Street Food/Snack and quick grab of the day meal.</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p><span class=\"subtitle\" style=\"box-sizing: inherit; color: rgb(32, 32, 32); font-size: 20px; font-weight: 700; display: block; margin-bottom: 15px; font-family: Roboto; text-align: justify;\">For Chicken</span></p><ul class=\"text\" style=\"box-sizing: inherit; margin-bottom: 30px; padding: 0px; list-style: none; text-align: justify; color: rgb(55, 55, 55); font-size: 14px; font-family: Roboto;\"><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/4 Cup / 30g Chicken Breast, Cubed</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 Tsp Fish Sauce</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 Tsp Sesame Oil</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 Tsp Light Soy Sauce</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Salt to taste</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Black Pepper</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Tsp Garlic Paste</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Oil</li></ul><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 Tsp Dark Soy Sauce</p><p><span class=\"subtitle\" style=\"box-sizing: inherit; color: rgb(32, 32, 32); font-size: 20px; font-weight: 700; display: block; margin-bottom: 15px; font-family: Roboto; text-align: justify;\">Boiled Noodle</span></p><ul class=\"text\" style=\"box-sizing: inherit; margin-bottom: 30px; padding: 0px; list-style: none; text-align: justify; color: rgb(55, 55, 55); font-size: 14px; font-family: Roboto;\"><ul><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Fresh Noodle</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Bring water to boil with 1 Tbsp of salt for 2 Minutes</li></ul><li style=\"box-sizing: inherit; color: rgb(55, 55, 55); font-size: 14px; font-family: Roboto; text-align: justify;\">(IF FRESH NOODLE AREN\'T AVAILABLE, YOU CAN SIMPLY USE DRY NOODLE, BOIL FOR 5 MINUTES)</li></ul><p><span class=\"subtitle\" style=\"box-sizing: inherit; color: rgb(32, 32, 32); font-size: 20px; font-weight: 700; display: block; margin-bottom: 15px; font-family: Roboto; text-align: justify;\">Sautéed Bean Sprouts</span></p><ul><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Cup/ 100g Bean Sprouts, Washed and Cleaned</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 Tsp Garlic Paste</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/4 Tsp Ginger Paste</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Oil</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Spring Onion</li><li style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1/2 Tsp Light Soy Sauce</li></ul>', 'http://localhost:8000/storage/photos/1/Products/Main meal/boiled noodles.jpg', 12, '', 'default', 'active', 109.00, 0.00, 1, 14, NULL, 6, '2023-04-23 12:30:19', '2023-04-23 12:30:19'),
(34, 'Fried Noodles', 'fried-noodles', '<p><span style=\"color: rgb(55, 55, 55); font-family: Roboto; font-size: 14px; text-align: justify;\">The dish is basically stir fry noodles topped with ingredients which are all well-seasoned with Chinese dark and fish sauce. It is a re-invented Chinese dish that can be made within minutes.&nbsp;</span><br></p>', '<h3 class=\"title\" style=\"box-sizing: inherit; font-family: Roboto; line-height: 1.1; color: rgb(0, 119, 202); font-size: 26px; text-align: justify;\">Recipe Ingredients</h3><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Oil For Cooking</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Portion Of Noddle 150 G ( For 1 Serving )</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Handful Of Shredded Cabbage</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Handful Of Carrot Cut Into Matchsticks</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Spring Onion</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Some Garlic Chives (La Queue L\'ail)</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 Eggs (optional) For Garnishing</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Tbsp Dark Soy Sauce</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 Tbsp Oyster Sauce</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Tsp Of Rice Wine Vinegar</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">2 Tsp Of Fish Sauce</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Tsp Of Sesame Oil</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Black Pepper</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">Garlic Sauce - Depending Of Your Liking</p><p style=\"box-sizing: inherit; margin-bottom: 2px; display: flex;\">1 Handful Bok Choy| Pak Choi</p>', 'http://localhost:8000/storage/photos/1/Products/Main meal/Fried Noodles.jpg', 22, '', 'default', 'active', 93.00, 0.00, 1, 14, NULL, 6, '2023-04-23 12:46:46', '2023-04-23 12:46:46'),
(35, 'Fanta', 'fanta', '<p><span style=\"color: rgb(51, 51, 51); font-family: speedee;\">Caffeine-free Fanta Orange full of bubbly, refreshing orange flavor.</span><br></p>', NULL, 'http://localhost:8000/storage/photos/1/Products/Drinks/fanta.jpg', 50, '', 'default', 'active', 25.00, NULL, 1, 15, NULL, 6, '2023-04-23 12:51:42', '2023-04-23 12:51:42'),
(36, 'Coke', 'coke', '<p><span style=\"color: rgb(51, 51, 51); font-family: speedee;\">A cold and refreshing complement to all of our menu items.</span><br></p>', NULL, 'http://localhost:8000/storage/photos/1/Products/Drinks/coke.jpg', 55, '', 'default', 'active', 34.00, 0.00, 1, 15, NULL, 6, '2023-04-23 12:54:15', '2023-04-23 12:54:15'),
(37, 'Sprite', 'sprite', '<p><span style=\"color: rgb(51, 51, 51); font-family: speedee;\">Delicious lemon-lime taste with no caffeine.</span><br></p>', NULL, 'http://localhost:8000/storage/photos/1/Products/Drinks/sprite.jpg', 53, '', 'default', 'active', 34.00, NULL, 1, 15, NULL, 6, '2023-04-23 12:56:26', '2023-04-25 13:29:32'),
(38, 'Diet Coke', 'diet-coke', '<p><span style=\"color: rgb(51, 51, 51); font-family: speedee;\">Icy cold Diet Coke, with zero calories.</span><br></p>', NULL, 'http://localhost:8000/storage/photos/1/Products/Drinks/diet-coke.jpg', 50, '', 'default', 'active', 34.00, NULL, 1, 15, NULL, 6, '2023-04-23 12:57:44', '2023-04-25 13:29:32'),
(39, 'Table Water', 'table-water', '<p><span style=\"color: rgb(51, 51, 51); font-family: speedee;\">Our Table Water is purified water enhanced with minerals for a pure, fresh taste.</span><br></p>', NULL, 'http://localhost:8000/storage/photos/1/Products/Drinks/table-water.jpg', 57, 'S,M,L', 'default', 'active', 25.00, NULL, 1, 15, NULL, 6, '2023-04-23 13:04:09', '2023-04-25 13:29:32'),
(40, 'French Fries', 'french-fries', '<p><span style=\"color: rgb(51, 51, 51); font-family: speedee;\">With zero grams of trans fat per labeled serving, these epic fries are crispy and golden on the outside and fluffy on the inside. Available in sizes small, regular, medium and large.</span><br></p>', NULL, 'http://localhost:8000/storage/photos/1/Products/Main meal/french-fries.jpg', 49, '', 'hot', 'active', 95.00, NULL, 1, 14, NULL, 6, '2023-04-23 13:36:25', '2023-04-24 05:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` tinyint(4) NOT NULL DEFAULT 0,
  `review` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `short_des` text NOT NULL,
  `logo` varchar(191) NOT NULL,
  `photo` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, '<span style=\"color: rgb(46, 47, 48); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(239, 239, 239);\">he prices are typically reasonable, and the restaurant may offer meal plans or discounts to students and faculty. The ambiance is usually relaxed and conducive to conversation and relaxation, often making it a popular spot for socializing and networking. Overall, a university restaurant serves as an essential hub for the campus community, offering a space for nourishment, bonding, and support</span>', '<span style=\"color: rgb(46, 47, 48); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(239, 239, 239);\">MDX Restaurant is a dining facility located at Middlesex University Mauritius. It primarily caters to students, faculty, and staff members. The restaurant generally has ample seating arrangements, both indoors and outdoors, and offers a range of cuisines to cater to diverse tastes and preferences.</span>', 'http://localhost:8000/storage/photos/1/download.png', '/storage/photos/1/blog3.jpg', 'Middlesex University Flic en flac', '+23059324926', 'admin@gmail.com', NULL, '2023-04-24 05:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `type`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kahtmandu', '100.00', 'active', '2020-08-14 04:22:17', '2020-08-14 04:22:17'),
(2, 'Out of valley', '300.00', 'active', '2020-08-14 04:22:41', '2020-08-14 04:22:41'),
(3, 'Pokhara', '400.00', 'active', '2020-08-15 06:54:04', '2020-08-15 06:54:04'),
(4, 'Dharan', '400.00', 'active', '2020-08-17 20:50:48', '2020-08-17 20:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `role` enum('admin','user','staff','resturant') NOT NULL DEFAULT 'user',
  `provider` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akpevwe Jenkins', 'admin@live.mdx.ac.uk', NULL, '$2y$10$GOGIJdzJydYJ5nAZ42iZNO3IL1fdvXoSPdUOH3Ajy5hRmi0xBmTzm', 'http://localhost:8000/storage/photos/1/1663585002667.png', 'admin', NULL, NULL, 'active', '2BzbqYxVVntJYZvCV4VCZ3fdMvfcHOdIVjCjNj3hwSXWg83HSi3kti6qGbv2', NULL, '2023-04-28 22:03:19'),
(2, 'User', 'user@live.mdx.ac.uk', NULL, '$2y$10$BkQ/l9GA/ZN/17AIzAaedOqPL/sMhC8NJzO5QmpU.PliuPU7L5hmO', '/storage/photos/1/users/user2.jpg', 'resturant', NULL, NULL, 'active', '8QdlRp0l1hBrmI70OXxeIqlC1OWGF6QYNFAMddLEs9d5E5u88LPBKGIWu5AR', NULL, '2023-04-26 04:12:29'),
(30, 'New Benin Supper Market', 'Unuavworhoakpevwe@live.mdx.ac.uk', NULL, '$2y$10$LRTyEQ.q3UiWaRmI2RgFqOxhCpeH033Y4Gzymh.Gl2.KYYWRLU5oq', 'http://localhost:8000/storage/photos/1/1663585002667.png', 'user', NULL, NULL, 'active', NULL, '2023-04-25 07:57:29', '2023-04-25 07:57:29'),
(31, 'James Owens', 'James@live.mdx.ac.uk', NULL, '$2y$10$LSaBbtWk02SwLCTYj8olKuCAw4BmSep2fBAECoHoTnkdpJdWEOqma', NULL, 'user', NULL, NULL, 'active', 'lGryXElOmgGPOgCuV2cSKqkuPnm0WeQgcB0wjfClN6jdJRgbuAljX9xzQJSQ', '2023-04-26 04:23:32', '2023-04-26 04:23:32'),
(32, 'testing ser', 'test@gmai.com', NULL, '$2y$10$zn9QbIxIlpi9laBvAwCUnuOI5xj/6STmZlF4zoT8xS1hZmPvCmy6S', NULL, 'user', NULL, NULL, 'active', NULL, '2023-04-26 04:32:09', '2023-04-26 04:32:09'),
(33, 'created user', 'sdfsdf@gmail.com', NULL, '$2y$10$Gg0hrFN.y0t25hppPYgQGusNAfpkhBLppo6UOg4kklHc1T52jz09u', NULL, 'user', NULL, NULL, 'active', NULL, '2023-04-26 04:46:33', '2023-04-26 04:46:33'),
(34, 'Ben', 'benjamin@live.mdx.ac.uk', NULL, '$2y$10$C8TY/F4h3lWXt2tr9StwP.w5lVX6nIU1jHR9tWj7Yb4lVXQs/ADNy', NULL, 'user', NULL, NULL, 'active', NULL, '2023-04-28 06:18:30', '2023-04-28 06:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'user'),
(2, 'admin'),
(3, 'resturant'),
(4, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `cart_id`, `user_id`, `price`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(3, 39, 19, 2, 25.00, 1, 25.00, '2023-04-24 02:01:03', '2023-04-24 02:01:24'),
(4, 17, 24, 34, 17.00, 1, 17.00, '2023-04-28 06:20:01', '2023-04-28 06:20:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Indexes for table `chatter_categories`
--
ALTER TABLE `chatter_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chatter_discussion_slug_unique` (`slug`),
  ADD KEY `chatter_discussion_chatter_category_id_foreign` (`chatter_category_id`),
  ADD KEY `chatter_discussion_user_id_foreign` (`user_id`);

--
-- Indexes for table `chatter_post`
--
ALTER TABLE `chatter_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chatter_post_chatter_discussion_id_foreign` (`chatter_discussion_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `chatter_user_discussion`
--
ALTER TABLE `chatter_user_discussion`
  ADD PRIMARY KEY (`user_id`,`discussion_id`),
  ADD KEY `chatter_user_discussion_user_id_index` (`user_id`),
  ADD KEY `chatter_user_discussion_discussion_id_index` (`discussion_id`),
  ADD KEY `discussion_id` (`discussion_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`),
  ADD KEY `posts_post_tag_id_foreign` (`post_tag_id`),
  ADD KEY `posts_added_by_foreign` (`added_by`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chatter_categories`
--
ALTER TABLE `chatter_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `chatter_post`
--
ALTER TABLE `chatter_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  ADD CONSTRAINT `chatter_discussion_chatter_category_id_foreign` FOREIGN KEY (`chatter_category_id`) REFERENCES `chatter_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chatter_discussion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chatter_post`
--
ALTER TABLE `chatter_post`
  ADD CONSTRAINT `chatter_post_chatter_discussion_id_foreign` FOREIGN KEY (`chatter_discussion_id`) REFERENCES `chatter_discussion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chatter_post_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chatter_user_discussion`
--
ALTER TABLE `chatter_user_discussion`
  ADD CONSTRAINT `chatter_user_discussion_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `chatter_discussion` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_cat_id_foreign` FOREIGN KEY (`post_cat_id`) REFERENCES `post_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_tag_id_foreign` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tags` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_searchable` tinyint(1) NOT NULL DEFAULT 0,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(50) NOT NULL,
  `key` varchar(255) NOT NULL,
  `position` smallint(5) UNSIGNED DEFAULT 1,
  `attribute_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_product_attribute`
--

CREATE TABLE `attribute_value_product_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `product_custom_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `seo_title` varchar(60) DEFAULT NULL,
  `seo_description` varchar(160) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `shipping_amount` int(11) NOT NULL DEFAULT 0,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `seo_title` varchar(60) DEFAULT NULL,
  `seo_description` varchar(160) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `type` enum('manual','auto') NOT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `match_conditions` enum('all','any') DEFAULT NULL,
  `published_at` datetime NOT NULL DEFAULT '2023-03-13 13:03:31',
  `seo_title` varchar(60) DEFAULT NULL,
  `seo_description` varchar(160) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collection_rules`
--

CREATE TABLE `collection_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rule` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `collection_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `total_use` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `discountable_type` varchar(255) NOT NULL,
  `discountable_id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `apply_to` varchar(255) NOT NULL,
  `min_required` varchar(255) NOT NULL,
  `min_required_value` varchar(255) DEFAULT NULL,
  `eligibility` varchar(255) NOT NULL,
  `usage_limit` int(10) UNSIGNED DEFAULT NULL,
  `usage_limit_per_user` tinyint(1) NOT NULL DEFAULT 0,
  `total_use` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `start_at` datetime NOT NULL,
  `end_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `street_address_plus` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `latitude` decimal(10,5) DEFAULT NULL,
  `longitude` decimal(10,5) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_histories`
--

CREATE TABLE `inventory_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stockable_type` varchar(255) NOT NULL,
  `stockable_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `old_quantity` int(11) NOT NULL DEFAULT 0,
  `event` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legals`
--

CREATE TABLE `legals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `legals`
--

INSERT INTO `legals` (`id`, `title`, `slug`, `content`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 'Refund policy', 'refund-policy', NULL, 1, '2023-03-13 09:05:44', '2023-03-13 09:05:44'),
(2, 'Privacy policy', 'privacy-policy', NULL, 1, '2023-03-13 09:05:44', '2023-03-13 09:05:44'),
(3, 'Terms of use', 'terms-of-use', NULL, 1, '2023-03-13 09:05:44', '2023-03-13 09:05:44'),
(4, 'Shipping policy', 'shipping-policy', NULL, 1, '2023-03-13 09:05:44', '2023-03-13 09:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2019_05_03_000001_create_customer_columns', 2),
(6, '2019_05_03_000002_create_subscriptions_table', 2),
(7, '2019_05_03_000003_create_subscription_items_table', 2),
(8, '2019_11_18_220125_create_permission_tables', 2),
(9, '2020_00_00_000001_create_system_countries_table', 2),
(10, '2020_00_00_000001_create_system_currencies_table', 2),
(11, '2020_00_00_000001_create_system_settings_table', 2),
(12, '2020_00_01_000000_create_user_addresses_table', 2),
(13, '2020_00_02_000001_add_two_factor_columns_to_users_table', 2),
(14, '2020_00_02_000001_create_channels_table', 2),
(15, '2020_00_02_000002_create_inventories_table', 2),
(16, '2020_00_02_000003_create_categories_table', 2),
(17, '2020_00_02_000004_create_brands_table', 2),
(18, '2020_00_02_000005_create_collections_table', 2),
(19, '2020_00_02_000006_create_products_table', 2),
(20, '2020_00_02_000007_create_attributes_table', 2),
(21, '2020_00_02_000007_create_carriers_table', 2),
(22, '2020_00_02_000008_create_payment_methods_table', 2),
(23, '2020_00_02_000009_create_discounts_table', 2),
(24, '2020_00_02_000010_create_reviews_table', 2),
(25, '2020_00_03_000001_create_orders_table', 2),
(26, '2020_00_03_000002_create_order_shippings_table', 2),
(27, '2020_00_03_000002_create_users_geolocation_history_table', 2),
(28, '2020_00_03_000003_create_order_items_table', 2),
(29, '2020_00_03_000004_create_order_refunds_table', 2),
(30, '2021_01_18_174504_create_legals_table', 2),
(31, '2021_02_10_153239_create_product_has_relations_table', 2),
(32, '2022_06_14_224741_update_gender_columns_on_users_table', 2),
(33, '2023_03_13_130255_create_media_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `number` varchar(32) NOT NULL,
  `price_amount` int(11) DEFAULT NULL,
  `status` varchar(32) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `shipping_total` int(11) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `parent_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'The product name at the moment of buying',
  `sku` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price_amount` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_refunds`
--

CREATE TABLE `order_refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_reason` longtext DEFAULT NULL,
  `refund_amount` varchar(255) DEFAULT NULL,
  `status` enum('pending','treatment','partial-refund','refunded','cancelled','rejected') NOT NULL DEFAULT 'pending',
  `notes` longtext NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_shippings`
--

CREATE TABLE `order_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipped_at` date NOT NULL,
  `received_at` date NOT NULL,
  `returned_at` date NOT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `tracking_number_url` varchar(255) DEFAULT NULL,
  `voucher` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`voucher`)),
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `carrier_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `can_be_removed` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `display_name`, `description`, `can_be_removed`, `created_at`, `updated_at`) VALUES
(1, 'access_dashboard', 'web', 'system', 'Access Dashboard', 'This permission allow user to access to the dashboard.', 0, '2023-03-13 09:05:01', '2023-03-13 09:05:01'),
(2, 'access_setting', 'web', 'system', 'Access Setting', 'This permission allow user to view the setting page.', 0, '2023-03-13 09:05:01', '2023-03-13 09:05:01'),
(3, 'view_users', 'web', 'system', 'Views Users', 'This permission allow user to access to the administrator area.', 0, '2023-03-13 09:05:01', '2023-03-13 09:05:01'),
(4, 'manage_mail', 'web', 'system', 'Manage mail setting', 'This permission allow user to manage the mail configuration with template.', 0, '2023-03-13 09:05:01', '2023-03-13 09:05:01'),
(5, 'impersonate', 'web', 'system', 'Impersonate User', 'This permission allow user to logged with the account of another user.', 0, '2023-03-13 09:05:01', '2023-03-13 09:05:01'),
(6, 'view_analytics', 'web', 'system', 'Views & Reports analytics', 'This permission allow user to view, analyze and make reports statistics for shop.', 0, '2023-03-13 09:05:02', '2023-03-13 09:05:02'),
(7, 'setting_analytics', 'web', 'system', 'Manage Analytics setting', 'This permission allow user to add, update, and remove analytics settings such as Google Analytics, Facebook Pixel and more.', 0, '2023-03-13 09:05:02', '2023-03-13 09:05:02'),
(8, 'browse_brands', 'web', 'brands', 'Browse Brands', 'This permission allow you to browse all the brands, with actions as search, filters and more.', 0, '2023-03-13 09:05:02', '2023-03-13 09:05:02'),
(9, 'read_brands', 'web', 'brands', 'Read Brands', 'This permission allow you to read the content of a record of brands.', 0, '2023-03-13 09:05:02', '2023-03-13 09:05:02'),
(10, 'edit_brands', 'web', 'brands', 'Edit Brands', 'This permission allow you to edit the content of a record of brands.', 0, '2023-03-13 09:05:02', '2023-03-13 09:05:02'),
(11, 'add_brands', 'web', 'brands', 'Add Brands', 'This permission allow you to add a new record of brands.', 0, '2023-03-13 09:05:02', '2023-03-13 09:05:02'),
(12, 'delete_brands', 'web', 'brands', 'Delete Brands', 'This permission allow you to removed a record of brands.', 0, '2023-03-13 09:05:02', '2023-03-13 09:05:02'),
(13, 'browse_categories', 'web', 'categories', 'Browse Categories', 'This permission allow you to browse all the categories, with actions as search, filters and more.', 0, '2023-03-13 09:05:02', '2023-03-13 09:05:02'),
(14, 'read_categories', 'web', 'categories', 'Read Categories', 'This permission allow you to read the content of a record of categories.', 0, '2023-03-13 09:05:02', '2023-03-13 09:05:02'),
(15, 'edit_categories', 'web', 'categories', 'Edit Categories', 'This permission allow you to edit the content of a record of categories.', 0, '2023-03-13 09:05:03', '2023-03-13 09:05:03'),
(16, 'add_categories', 'web', 'categories', 'Add Categories', 'This permission allow you to add a new record of categories.', 0, '2023-03-13 09:05:03', '2023-03-13 09:05:03'),
(17, 'delete_categories', 'web', 'categories', 'Delete Categories', 'This permission allow you to removed a record of categories.', 0, '2023-03-13 09:05:03', '2023-03-13 09:05:03'),
(18, 'browse_collections', 'web', 'collections', 'Browse Collections', 'This permission allow you to browse all the collections, with actions as search, filters and more.', 0, '2023-03-13 09:05:03', '2023-03-13 09:05:03'),
(19, 'read_collections', 'web', 'collections', 'Read Collections', 'This permission allow you to read the content of a record of collections.', 0, '2023-03-13 09:05:03', '2023-03-13 09:05:03'),
(20, 'edit_collections', 'web', 'collections', 'Edit Collections', 'This permission allow you to edit the content of a record of collections.', 0, '2023-03-13 09:05:03', '2023-03-13 09:05:03'),
(21, 'add_collections', 'web', 'collections', 'Add Collections', 'This permission allow you to add a new record of collections.', 0, '2023-03-13 09:05:03', '2023-03-13 09:05:03'),
(22, 'delete_collections', 'web', 'collections', 'Delete Collections', 'This permission allow you to removed a record of collections.', 0, '2023-03-13 09:05:03', '2023-03-13 09:05:03'),
(23, 'browse_products', 'web', 'products', 'Browse Products', 'This permission allow you to browse all the products, with actions as search, filters and more.', 0, '2023-03-13 09:05:04', '2023-03-13 09:05:04'),
(24, 'read_products', 'web', 'products', 'Read Products', 'This permission allow you to read the content of a record of products.', 0, '2023-03-13 09:05:04', '2023-03-13 09:05:04'),
(25, 'edit_products', 'web', 'products', 'Edit Products', 'This permission allow you to edit the content of a record of products.', 0, '2023-03-13 09:05:04', '2023-03-13 09:05:04'),
(26, 'add_products', 'web', 'products', 'Add Products', 'This permission allow you to add a new record of products.', 0, '2023-03-13 09:05:04', '2023-03-13 09:05:04'),
(27, 'delete_products', 'web', 'products', 'Delete Products', 'This permission allow you to removed a record of products.', 0, '2023-03-13 09:05:04', '2023-03-13 09:05:04'),
(28, 'browse_customers', 'web', 'customers', 'Browse Customers', 'This permission allow you to browse all the customers, with actions as search, filters and more.', 0, '2023-03-13 09:05:04', '2023-03-13 09:05:04'),
(29, 'read_customers', 'web', 'customers', 'Read Customers', 'This permission allow you to read the content of a record of customers.', 0, '2023-03-13 09:05:04', '2023-03-13 09:05:04'),
(30, 'edit_customers', 'web', 'customers', 'Edit Customers', 'This permission allow you to edit the content of a record of customers.', 0, '2023-03-13 09:05:04', '2023-03-13 09:05:04'),
(31, 'add_customers', 'web', 'customers', 'Add Customers', 'This permission allow you to add a new record of customers.', 0, '2023-03-13 09:05:04', '2023-03-13 09:05:04'),
(32, 'delete_customers', 'web', 'customers', 'Delete Customers', 'This permission allow you to removed a record of customers.', 0, '2023-03-13 09:05:05', '2023-03-13 09:05:05'),
(33, 'browse_orders', 'web', 'orders', 'Browse Orders', 'This permission allow you to browse all the orders, with actions as search, filters and more.', 0, '2023-03-13 09:05:05', '2023-03-13 09:05:05'),
(34, 'read_orders', 'web', 'orders', 'Read Orders', 'This permission allow you to read the content of a record of orders.', 0, '2023-03-13 09:05:05', '2023-03-13 09:05:05'),
(35, 'edit_orders', 'web', 'orders', 'Edit Orders', 'This permission allow you to edit the content of a record of orders.', 0, '2023-03-13 09:05:05', '2023-03-13 09:05:05'),
(36, 'add_orders', 'web', 'orders', 'Add Orders', 'This permission allow you to add a new record of orders.', 0, '2023-03-13 09:05:05', '2023-03-13 09:05:05'),
(37, 'delete_orders', 'web', 'orders', 'Delete Orders', 'This permission allow you to removed a record of orders.', 0, '2023-03-13 09:05:05', '2023-03-13 09:05:05'),
(38, 'browse_discounts', 'web', 'discounts', 'Browse Discounts', 'This permission allow you to browse all the discounts, with actions as search, filters and more.', 0, '2023-03-13 09:05:05', '2023-03-13 09:05:05'),
(39, 'read_discounts', 'web', 'discounts', 'Read Discounts', 'This permission allow you to read the content of a record of discounts.', 0, '2023-03-13 09:05:05', '2023-03-13 09:05:05'),
(40, 'edit_discounts', 'web', 'discounts', 'Edit Discounts', 'This permission allow you to edit the content of a record of discounts.', 0, '2023-03-13 09:05:05', '2023-03-13 09:05:05'),
(41, 'add_discounts', 'web', 'discounts', 'Add Discounts', 'This permission allow you to add a new record of discounts.', 0, '2023-03-13 09:05:05', '2023-03-13 09:05:05'),
(42, 'delete_discounts', 'web', 'discounts', 'Delete Discounts', 'This permission allow you to removed a record of discounts.', 0, '2023-03-13 09:05:05', '2023-03-13 09:05:05'),
(43, 'browse_inventories', 'web', 'products', 'Browse Inventories', 'This permission allow you to browse all the inventories, with actions as search, filters and more.', 0, '2023-03-13 09:05:06', '2023-03-13 09:05:06'),
(44, 'read_inventories', 'web', 'products', 'Read Inventories', 'This permission allow you to read the content of a record of inventories.', 0, '2023-03-13 09:05:06', '2023-03-13 09:05:06'),
(45, 'edit_inventories', 'web', 'products', 'Edit Inventories', 'This permission allow you to edit the content of a record of inventories.', 0, '2023-03-13 09:05:06', '2023-03-13 09:05:06'),
(46, 'add_inventories', 'web', 'products', 'Add Inventories', 'This permission allow you to add a new record of inventories.', 0, '2023-03-13 09:05:06', '2023-03-13 09:05:06'),
(47, 'delete_inventories', 'web', 'products', 'Delete Inventories', 'This permission allow you to removed a record of inventories.', 0, '2023-03-13 09:05:06', '2023-03-13 09:05:06'),
(48, 'browse_attributes', 'web', 'products', 'Browse Attributes', 'This permission allow you to browse all the attributes, with actions as search, filters and more.', 0, '2023-03-13 09:05:06', '2023-03-13 09:05:06'),
(49, 'read_attributes', 'web', 'products', 'Read Attributes', 'This permission allow you to read the content of a record of attributes.', 0, '2023-03-13 09:05:06', '2023-03-13 09:05:06'),
(50, 'edit_attributes', 'web', 'products', 'Edit Attributes', 'This permission allow you to edit the content of a record of attributes.', 0, '2023-03-13 09:05:06', '2023-03-13 09:05:06'),
(51, 'add_attributes', 'web', 'products', 'Add Attributes', 'This permission allow you to add a new record of attributes.', 0, '2023-03-13 09:05:06', '2023-03-13 09:05:06'),
(52, 'delete_attributes', 'web', 'products', 'Delete Attributes', 'This permission allow you to removed a record of attributes.', 0, '2023-03-13 09:05:07', '2023-03-13 09:05:07');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `security_stock` int(11) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_visible` tinyint(1) NOT NULL DEFAULT 0,
  `old_price_amount` int(11) DEFAULT NULL,
  `price_amount` int(11) DEFAULT NULL,
  `cost_amount` int(11) DEFAULT NULL,
  `type` enum('deliverable','downloadable') DEFAULT NULL,
  `backorder` tinyint(1) NOT NULL DEFAULT 0,
  `requires_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `published_at` datetime DEFAULT '2023-03-13 13:03:33',
  `seo_title` varchar(60) DEFAULT NULL,
  `seo_description` varchar(160) DEFAULT NULL,
  `weight_value` decimal(10,5) UNSIGNED DEFAULT 0.00000,
  `weight_unit` varchar(255) NOT NULL DEFAULT 'kg',
  `height_value` decimal(10,5) UNSIGNED DEFAULT 0.00000,
  `height_unit` varchar(255) NOT NULL DEFAULT 'cm',
  `width_value` decimal(10,5) UNSIGNED DEFAULT 0.00000,
  `width_unit` varchar(255) NOT NULL DEFAULT 'cm',
  `depth_value` decimal(10,5) UNSIGNED DEFAULT 0.00000,
  `depth_unit` varchar(255) NOT NULL DEFAULT 'cm',
  `volume_value` decimal(10,5) UNSIGNED DEFAULT 0.00000,
  `volume_unit` varchar(255) NOT NULL DEFAULT 'l',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_has_relations`
--

CREATE TABLE `product_has_relations` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `productable_type` varchar(255) NOT NULL,
  `productable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_recommended` tinyint(1) NOT NULL DEFAULT 0,
  `rating` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `reviewrateable_type` varchar(255) NOT NULL,
  `reviewrateable_id` bigint(20) UNSIGNED NOT NULL,
  `author_type` varchar(255) NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `can_be_removed` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `display_name`, `description`, `can_be_removed`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'web', 'Administrator', 'Site administrator with access to shop admin panel and developer tools.', 0, '2023-03-13 09:05:00', '2023-03-13 09:05:00'),
(2, 'manager', 'web', 'Manager', 'Site manager with access to shop admin panel and publishing menus.', 0, '2023-03-13 09:05:00', '2023-03-13 09:05:00'),
(3, 'user', 'web', 'User', 'Site customer role with access on front site.', 0, '2023-03-13 09:05:01', '2023-03-13 09:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_status` varchar(255) NOT NULL,
  `stripe_plan` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_plan` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_countries`
--

CREATE TABLE `system_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_official` varchar(255) NOT NULL,
  `cca2` varchar(255) NOT NULL,
  `cca3` varchar(255) NOT NULL,
  `flag` varchar(255) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `currencies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`currencies`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_countries`
--

INSERT INTO `system_countries` (`id`, `name`, `name_official`, `cca2`, `cca3`, `flag`, `latitude`, `longitude`, `currencies`) VALUES
(1, 'Aruba', 'Aruba', 'AW', 'ABW', '🇦🇼', '12.50000000', '-69.96666666', '{\"AWG\":{\"name\":\"Aruban florin\",\"symbol\":\"\\u0192\"}}'),
(2, 'Afghanistan', 'Islamic Republic of Afghanistan', 'AF', 'AFG', '🇦🇫', '33.00000000', '65.00000000', '{\"AFN\":{\"name\":\"Afghan afghani\",\"symbol\":\"\\u060b\"}}'),
(3, 'Angola', 'Republic of Angola', 'AO', 'AGO', '🇦🇴', '-12.50000000', '18.50000000', '{\"AOA\":{\"name\":\"Angolan kwanza\",\"symbol\":\"Kz\"}}'),
(4, 'Anguilla', 'Anguilla', 'AI', 'AIA', '🇦🇮', '18.25000000', '-63.16666666', '{\"XCD\":{\"name\":\"Eastern Caribbean dollar\",\"symbol\":\"$\"}}'),
(5, 'Åland Islands', 'Åland Islands', 'AX', 'ALA', '🇦🇽', '60.11666700', '19.90000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(6, 'Albania', 'Republic of Albania', 'AL', 'ALB', '🇦🇱', '41.00000000', '20.00000000', '{\"ALL\":{\"name\":\"Albanian lek\",\"symbol\":\"L\"}}'),
(7, 'Andorra', 'Principality of Andorra', 'AD', 'AND', '🇦🇩', '42.50000000', '1.50000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(8, 'United Arab Emirates', 'United Arab Emirates', 'AE', 'ARE', '🇦🇪', '24.00000000', '54.00000000', '{\"AED\":{\"name\":\"United Arab Emirates dirham\",\"symbol\":\"\\u062f.\\u0625\"}}'),
(9, 'Argentina', 'Argentine Republic', 'AR', 'ARG', '🇦🇷', '-34.00000000', '-64.00000000', '{\"ARS\":{\"name\":\"Argentine peso\",\"symbol\":\"$\"}}'),
(10, 'Armenia', 'Republic of Armenia', 'AM', 'ARM', '🇦🇲', '40.00000000', '45.00000000', '{\"AMD\":{\"name\":\"Armenian dram\",\"symbol\":\"\\u058f\"}}'),
(11, 'American Samoa', 'American Samoa', 'AS', 'ASM', '🇦🇸', '-14.33333333', '-170.00000000', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(12, 'Antarctica', 'Antarctica', 'AQ', 'ATA', '🇦🇶', '-90.00000000', '0.00000000', '[]'),
(13, 'French Southern and Antarctic Lands', 'Territory of the French Southern and Antarctic Lands', 'TF', 'ATF', '🇹🇫', '-49.25000000', '69.16700000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(14, 'Antigua and Barbuda', 'Antigua and Barbuda', 'AG', 'ATG', '🇦🇬', '17.05000000', '-61.80000000', '{\"XCD\":{\"name\":\"Eastern Caribbean dollar\",\"symbol\":\"$\"}}'),
(15, 'Australia', 'Commonwealth of Australia', 'AU', 'AUS', '🇦🇺', '-27.00000000', '133.00000000', '{\"AUD\":{\"name\":\"Australian dollar\",\"symbol\":\"$\"}}'),
(16, 'Austria', 'Republic of Austria', 'AT', 'AUT', '🇦🇹', '47.33333333', '13.33333333', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(17, 'Azerbaijan', 'Republic of Azerbaijan', 'AZ', 'AZE', '🇦🇿', '40.50000000', '47.50000000', '{\"AZN\":{\"name\":\"Azerbaijani manat\",\"symbol\":\"\\u20bc\"}}'),
(18, 'Burundi', 'Republic of Burundi', 'BI', 'BDI', '🇧🇮', '-3.50000000', '30.00000000', '{\"BIF\":{\"name\":\"Burundian franc\",\"symbol\":\"Fr\"}}'),
(19, 'Belgium', 'Kingdom of Belgium', 'BE', 'BEL', '🇧🇪', '50.83333333', '4.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(20, 'Benin', 'Republic of Benin', 'BJ', 'BEN', '🇧🇯', '9.50000000', '2.25000000', '{\"XOF\":{\"name\":\"West African CFA franc\",\"symbol\":\"Fr\"}}'),
(21, 'Burkina Faso', 'Burkina Faso', 'BF', 'BFA', '🇧🇫', '13.00000000', '-2.00000000', '{\"XOF\":{\"name\":\"West African CFA franc\",\"symbol\":\"Fr\"}}'),
(22, 'Bangladesh', 'People\'s Republic of Bangladesh', 'BD', 'BGD', '🇧🇩', '24.00000000', '90.00000000', '{\"BDT\":{\"name\":\"Bangladeshi taka\",\"symbol\":\"\\u09f3\"}}'),
(23, 'Bulgaria', 'Republic of Bulgaria', 'BG', 'BGR', '🇧🇬', '43.00000000', '25.00000000', '{\"BGN\":{\"name\":\"Bulgarian lev\",\"symbol\":\"\\u043b\\u0432\"}}'),
(24, 'Bahrain', 'Kingdom of Bahrain', 'BH', 'BHR', '🇧🇭', '26.00000000', '50.55000000', '{\"BHD\":{\"name\":\"Bahraini dinar\",\"symbol\":\".\\u062f.\\u0628\"}}'),
(25, 'Bahamas', 'Commonwealth of the Bahamas', 'BS', 'BHS', '🇧🇸', '24.25000000', '-76.00000000', '{\"BSD\":{\"name\":\"Bahamian dollar\",\"symbol\":\"$\"},\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(26, 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BA', 'BIH', '🇧🇦', '44.00000000', '18.00000000', '{\"BAM\":{\"name\":\"Bosnia and Herzegovina convertible mark\",\"symbol\":\"\"}}'),
(27, 'Saint Barthélemy', 'Collectivity of Saint Barthélemy', 'BL', 'BLM', '🇧🇱', '18.50000000', '-63.41666666', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(28, 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', '🇸🇭', '-15.95000000', '-5.72000000', '{\"GBP\":{\"name\":\"Pound sterling\",\"symbol\":\"\\u00a3\"},\"SHP\":{\"name\":\"Saint Helena pound\",\"symbol\":\"\\u00a3\"}}'),
(29, 'Belarus', 'Republic of Belarus', 'BY', 'BLR', '🇧🇾', '53.00000000', '28.00000000', '{\"BYN\":{\"name\":\"Belarusian ruble\",\"symbol\":\"Br\"}}'),
(30, 'Belize', 'Belize', 'BZ', 'BLZ', '🇧🇿', '17.25000000', '-88.75000000', '{\"BZD\":{\"name\":\"Belize dollar\",\"symbol\":\"$\"}}'),
(31, 'Bermuda', 'Bermuda', 'BM', 'BMU', '🇧🇲', '32.33333333', '-64.75000000', '{\"BMD\":{\"name\":\"Bermudian dollar\",\"symbol\":\"$\"}}'),
(32, 'Bolivia', 'Plurinational State of Bolivia', 'BO', 'BOL', '🇧🇴', '-17.00000000', '-65.00000000', '{\"BOB\":{\"name\":\"Bolivian boliviano\",\"symbol\":\"Bs.\"}}'),
(33, 'Caribbean Netherlands', 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', '12.18000000', '-68.25000000', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(34, 'Brazil', 'Federative Republic of Brazil', 'BR', 'BRA', '🇧🇷', '-10.00000000', '-55.00000000', '{\"BRL\":{\"name\":\"Brazilian real\",\"symbol\":\"R$\"}}'),
(35, 'Barbados', 'Barbados', 'BB', 'BRB', '🇧🇧', '13.16666666', '-59.53333333', '{\"BBD\":{\"name\":\"Barbadian dollar\",\"symbol\":\"$\"}}'),
(36, 'Brunei', 'Nation of Brunei, Abode of Peace', 'BN', 'BRN', '🇧🇳', '4.50000000', '114.66666666', '{\"BND\":{\"name\":\"Brunei dollar\",\"symbol\":\"$\"},\"SGD\":{\"name\":\"Singapore dollar\",\"symbol\":\"$\"}}'),
(37, 'Bhutan', 'Kingdom of Bhutan', 'BT', 'BTN', '🇧🇹', '27.50000000', '90.50000000', '{\"BTN\":{\"name\":\"Bhutanese ngultrum\",\"symbol\":\"Nu.\"},\"INR\":{\"name\":\"Indian rupee\",\"symbol\":\"\\u20b9\"}}'),
(38, 'Bouvet Island', 'Bouvet Island', 'BV', 'BVT', '🇧🇻', '-54.43333333', '3.40000000', '[]'),
(39, 'Botswana', 'Republic of Botswana', 'BW', 'BWA', '🇧🇼', '-22.00000000', '24.00000000', '{\"BWP\":{\"name\":\"Botswana pula\",\"symbol\":\"P\"}}'),
(40, 'Central African Republic', 'Central African Republic', 'CF', 'CAF', '🇨🇫', '7.00000000', '21.00000000', '{\"XAF\":{\"name\":\"Central African CFA franc\",\"symbol\":\"Fr\"}}'),
(41, 'Canada', 'Canada', 'CA', 'CAN', '🇨🇦', '60.00000000', '-95.00000000', '{\"CAD\":{\"name\":\"Canadian dollar\",\"symbol\":\"$\"}}'),
(42, 'Cocos (Keeling) Islands', 'Territory of the Cocos (Keeling) Islands', 'CC', 'CCK', '🇨🇨', '-12.50000000', '96.83333333', '{\"AUD\":{\"name\":\"Australian dollar\",\"symbol\":\"$\"}}'),
(43, 'Switzerland', 'Swiss Confederation', 'CH', 'CHE', '🇨🇭', '47.00000000', '8.00000000', '{\"CHF\":{\"name\":\"Swiss franc\",\"symbol\":\"Fr.\"}}'),
(44, 'Chile', 'Republic of Chile', 'CL', 'CHL', '🇨🇱', '-30.00000000', '-71.00000000', '{\"CLP\":{\"name\":\"Chilean peso\",\"symbol\":\"$\"}}'),
(45, 'China', 'People\'s Republic of China', 'CN', 'CHN', '🇨🇳', '35.00000000', '105.00000000', '{\"CNY\":{\"name\":\"Chinese yuan\",\"symbol\":\"\\u00a5\"}}'),
(46, 'Ivory Coast', 'Republic of Côte d\'Ivoire', 'CI', 'CIV', '🇨🇮', '8.00000000', '-5.00000000', '{\"XOF\":{\"name\":\"West African CFA franc\",\"symbol\":\"Fr\"}}'),
(47, 'Cameroon', 'Republic of Cameroon', 'CM', 'CMR', '🇨🇲', '6.00000000', '12.00000000', '{\"XAF\":{\"name\":\"Central African CFA franc\",\"symbol\":\"Fr\"}}'),
(48, 'DR Congo', 'Democratic Republic of the Congo', 'CD', 'COD', '🇨🇩', '0.00000000', '25.00000000', '{\"CDF\":{\"name\":\"Congolese franc\",\"symbol\":\"FC\"}}'),
(49, 'Republic of the Congo', 'Republic of the Congo', 'CG', 'COG', '🇨🇬', '-1.00000000', '15.00000000', '{\"XAF\":{\"name\":\"Central African CFA franc\",\"symbol\":\"Fr\"}}'),
(50, 'Cook Islands', 'Cook Islands', 'CK', 'COK', '🇨🇰', '-21.23333333', '-159.76666666', '{\"CKD\":{\"name\":\"Cook Islands dollar\",\"symbol\":\"$\"},\"NZD\":{\"name\":\"New Zealand dollar\",\"symbol\":\"$\"}}'),
(51, 'Colombia', 'Republic of Colombia', 'CO', 'COL', '🇨🇴', '4.00000000', '-72.00000000', '{\"COP\":{\"name\":\"Colombian peso\",\"symbol\":\"$\"}}'),
(52, 'Comoros', 'Union of the Comoros', 'KM', 'COM', '🇰🇲', '-12.16666666', '44.25000000', '{\"KMF\":{\"name\":\"Comorian franc\",\"symbol\":\"Fr\"}}'),
(53, 'Cape Verde', 'Republic of Cabo Verde', 'CV', 'CPV', '🇨🇻', '16.00000000', '-24.00000000', '{\"CVE\":{\"name\":\"Cape Verdean escudo\",\"symbol\":\"Esc\"}}'),
(54, 'Costa Rica', 'Republic of Costa Rica', 'CR', 'CRI', '🇨🇷', '10.00000000', '-84.00000000', '{\"CRC\":{\"name\":\"Costa Rican col\\u00f3n\",\"symbol\":\"\\u20a1\"}}'),
(55, 'Cuba', 'Republic of Cuba', 'CU', 'CUB', '🇨🇺', '21.50000000', '-80.00000000', '{\"CUC\":{\"name\":\"Cuban convertible peso\",\"symbol\":\"$\"},\"CUP\":{\"name\":\"Cuban peso\",\"symbol\":\"$\"}}'),
(56, 'Curaçao', 'Country of Curaçao', 'CW', 'CUW', '🇨🇼', '12.11666700', '-68.93333300', '{\"ANG\":{\"name\":\"Netherlands Antillean guilder\",\"symbol\":\"\\u0192\"}}'),
(57, 'Christmas Island', 'Territory of Christmas Island', 'CX', 'CXR', '🇨🇽', '-10.50000000', '105.66666666', '{\"AUD\":{\"name\":\"Australian dollar\",\"symbol\":\"$\"}}'),
(58, 'Cayman Islands', 'Cayman Islands', 'KY', 'CYM', '🇰🇾', '19.50000000', '-80.50000000', '{\"KYD\":{\"name\":\"Cayman Islands dollar\",\"symbol\":\"$\"}}'),
(59, 'Cyprus', 'Republic of Cyprus', 'CY', 'CYP', '🇨🇾', '35.00000000', '33.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(60, 'Czechia', 'Czech Republic', 'CZ', 'CZE', '🇨🇿', '49.75000000', '15.50000000', '{\"CZK\":{\"name\":\"Czech koruna\",\"symbol\":\"K\\u010d\"}}'),
(61, 'Germany', 'Federal Republic of Germany', 'DE', 'DEU', '🇩🇪', '51.00000000', '9.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(62, 'Djibouti', 'Republic of Djibouti', 'DJ', 'DJI', '🇩🇯', '11.50000000', '43.00000000', '{\"DJF\":{\"name\":\"Djiboutian franc\",\"symbol\":\"Fr\"}}'),
(63, 'Dominica', 'Commonwealth of Dominica', 'DM', 'DMA', '🇩🇲', '15.41666666', '-61.33333333', '{\"XCD\":{\"name\":\"Eastern Caribbean dollar\",\"symbol\":\"$\"}}'),
(64, 'Denmark', 'Kingdom of Denmark', 'DK', 'DNK', '🇩🇰', '56.00000000', '10.00000000', '{\"DKK\":{\"name\":\"Danish krone\",\"symbol\":\"kr\"}}'),
(65, 'Dominican Republic', 'Dominican Republic', 'DO', 'DOM', '🇩🇴', '19.00000000', '-70.66666666', '{\"DOP\":{\"name\":\"Dominican peso\",\"symbol\":\"$\"}}'),
(66, 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZ', 'DZA', '🇩🇿', '28.00000000', '3.00000000', '{\"DZD\":{\"name\":\"Algerian dinar\",\"symbol\":\"\\u062f.\\u062c\"}}'),
(67, 'Ecuador', 'Republic of Ecuador', 'EC', 'ECU', '🇪🇨', '-2.00000000', '-77.50000000', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(68, 'Egypt', 'Arab Republic of Egypt', 'EG', 'EGY', '🇪🇬', '27.00000000', '30.00000000', '{\"EGP\":{\"name\":\"Egyptian pound\",\"symbol\":\"\\u00a3\"}}'),
(69, 'Eritrea', 'State of Eritrea', 'ER', 'ERI', '🇪🇷', '15.00000000', '39.00000000', '{\"ERN\":{\"name\":\"Eritrean nakfa\",\"symbol\":\"Nfk\"}}'),
(70, 'Western Sahara', 'Sahrawi Arab Democratic Republic', 'EH', 'ESH', '🇪🇭', '24.50000000', '-13.00000000', '{\"DZD\":{\"name\":\"Algerian dinar\",\"symbol\":\"\\u062f\\u062c\"},\"MAD\":{\"name\":\"Moroccan dirham\",\"symbol\":\"DH\"},\"MRU\":{\"name\":\"Mauritanian ouguiya\",\"symbol\":\"UM\"}}'),
(71, 'Spain', 'Kingdom of Spain', 'ES', 'ESP', '🇪🇸', '40.00000000', '-4.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(72, 'Estonia', 'Republic of Estonia', 'EE', 'EST', '🇪🇪', '59.00000000', '26.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(73, 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ET', 'ETH', '🇪🇹', '8.00000000', '38.00000000', '{\"ETB\":{\"name\":\"Ethiopian birr\",\"symbol\":\"Br\"}}'),
(74, 'Finland', 'Republic of Finland', 'FI', 'FIN', '🇫🇮', '64.00000000', '26.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(75, 'Fiji', 'Republic of Fiji', 'FJ', 'FJI', '🇫🇯', '-18.00000000', '175.00000000', '{\"FJD\":{\"name\":\"Fijian dollar\",\"symbol\":\"$\"}}'),
(76, 'Falkland Islands', 'Falkland Islands', 'FK', 'FLK', '🇫🇰', '-51.75000000', '-59.00000000', '{\"FKP\":{\"name\":\"Falkland Islands pound\",\"symbol\":\"\\u00a3\"}}'),
(77, 'France', 'French Republic', 'FR', 'FRA', '🇫🇷', '46.00000000', '2.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(78, 'Faroe Islands', 'Faroe Islands', 'FO', 'FRO', '🇫🇴', '62.00000000', '-7.00000000', '{\"DKK\":{\"name\":\"Danish krone\",\"symbol\":\"kr\"},\"FOK\":{\"name\":\"Faroese kr\\u00f3na\",\"symbol\":\"kr\"}}'),
(79, 'Micronesia', 'Federated States of Micronesia', 'FM', 'FSM', '🇫🇲', '6.91666666', '158.25000000', '[]'),
(80, 'Gabon', 'Gabonese Republic', 'GA', 'GAB', '🇬🇦', '-1.00000000', '11.75000000', '{\"XAF\":{\"name\":\"Central African CFA franc\",\"symbol\":\"Fr\"}}'),
(81, 'United Kingdom', 'United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBR', '🇬🇧', '54.00000000', '-2.00000000', '{\"GBP\":{\"name\":\"British pound\",\"symbol\":\"\\u00a3\"}}'),
(82, 'Georgia', 'Georgia', 'GE', 'GEO', '🇬🇪', '42.00000000', '43.50000000', '{\"GEL\":{\"name\":\"lari\",\"symbol\":\"\\u20be\"}}'),
(83, 'Guernsey', 'Bailiwick of Guernsey', 'GG', 'GGY', '🇬🇬', '49.46666666', '-2.58333333', '{\"GBP\":{\"name\":\"British pound\",\"symbol\":\"\\u00a3\"},\"GGP\":{\"name\":\"Guernsey pound\",\"symbol\":\"\\u00a3\"}}'),
(84, 'Ghana', 'Republic of Ghana', 'GH', 'GHA', '🇬🇭', '8.00000000', '-2.00000000', '{\"GHS\":{\"name\":\"Ghanaian cedi\",\"symbol\":\"\\u20b5\"}}'),
(85, 'Gibraltar', 'Gibraltar', 'GI', 'GIB', '🇬🇮', '36.13333333', '-5.35000000', '{\"GIP\":{\"name\":\"Gibraltar pound\",\"symbol\":\"\\u00a3\"}}'),
(86, 'Guinea', 'Republic of Guinea', 'GN', 'GIN', '🇬🇳', '11.00000000', '-10.00000000', '{\"GNF\":{\"name\":\"Guinean franc\",\"symbol\":\"Fr\"}}'),
(87, 'Guadeloupe', 'Guadeloupe', 'GP', 'GLP', '🇬🇵', '16.25000000', '-61.58333300', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(88, 'Gambia', 'Republic of the Gambia', 'GM', 'GMB', '🇬🇲', '13.46666666', '-16.56666666', '{\"GMD\":{\"name\":\"dalasi\",\"symbol\":\"D\"}}'),
(89, 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GW', 'GNB', '🇬🇼', '12.00000000', '-15.00000000', '{\"XOF\":{\"name\":\"West African CFA franc\",\"symbol\":\"Fr\"}}'),
(90, 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GQ', 'GNQ', '🇬🇶', '2.00000000', '10.00000000', '{\"XAF\":{\"name\":\"Central African CFA franc\",\"symbol\":\"Fr\"}}'),
(91, 'Greece', 'Hellenic Republic', 'GR', 'GRC', '🇬🇷', '39.00000000', '22.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(92, 'Grenada', 'Grenada', 'GD', 'GRD', '🇬🇩', '12.11666666', '-61.66666666', '{\"XCD\":{\"name\":\"Eastern Caribbean dollar\",\"symbol\":\"$\"}}'),
(93, 'Greenland', 'Greenland', 'GL', 'GRL', '🇬🇱', '72.00000000', '-40.00000000', '{\"DKK\":{\"name\":\"krone\",\"symbol\":\"kr.\"}}'),
(94, 'Guatemala', 'Republic of Guatemala', 'GT', 'GTM', '🇬🇹', '15.50000000', '-90.25000000', '{\"GTQ\":{\"name\":\"Guatemalan quetzal\",\"symbol\":\"Q\"}}'),
(95, 'French Guiana', 'Guiana', 'GF', 'GUF', '🇬🇫', '4.00000000', '-53.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(96, 'Guam', 'Guam', 'GU', 'GUM', '🇬🇺', '13.46666666', '144.78333333', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(97, 'Guyana', 'Co-operative Republic of Guyana', 'GY', 'GUY', '🇬🇾', '5.00000000', '-59.00000000', '{\"GYD\":{\"name\":\"Guyanese dollar\",\"symbol\":\"$\"}}'),
(98, 'Hong Kong', 'Hong Kong Special Administrative Region of the People\'s Republic of China', 'HK', 'HKG', '🇭🇰', '22.26700000', '114.18800000', '{\"HKD\":{\"name\":\"Hong Kong dollar\",\"symbol\":\"$\"}}'),
(99, 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HM', 'HMD', '🇭🇲', '-53.10000000', '72.51666666', '[]'),
(100, 'Honduras', 'Republic of Honduras', 'HN', 'HND', '🇭🇳', '15.00000000', '-86.50000000', '{\"HNL\":{\"name\":\"Honduran lempira\",\"symbol\":\"L\"}}'),
(101, 'Croatia', 'Republic of Croatia', 'HR', 'HRV', '🇭🇷', '45.16666666', '15.50000000', '{\"HRK\":{\"name\":\"Croatian kuna\",\"symbol\":\"kn\"}}'),
(102, 'Haiti', 'Republic of Haiti', 'HT', 'HTI', '🇭🇹', '19.00000000', '-72.41666666', '{\"HTG\":{\"name\":\"Haitian gourde\",\"symbol\":\"G\"}}'),
(103, 'Hungary', 'Hungary', 'HU', 'HUN', '🇭🇺', '47.00000000', '20.00000000', '{\"HUF\":{\"name\":\"Hungarian forint\",\"symbol\":\"Ft\"}}'),
(104, 'Indonesia', 'Republic of Indonesia', 'ID', 'IDN', '🇮🇩', '-5.00000000', '120.00000000', '{\"IDR\":{\"name\":\"Indonesian rupiah\",\"symbol\":\"Rp\"}}'),
(105, 'Isle of Man', 'Isle of Man', 'IM', 'IMN', '🇮🇲', '54.25000000', '-4.50000000', '{\"GBP\":{\"name\":\"British pound\",\"symbol\":\"\\u00a3\"},\"IMP\":{\"name\":\"Manx pound\",\"symbol\":\"\\u00a3\"}}'),
(106, 'India', 'Republic of India', 'IN', 'IND', '🇮🇳', '20.00000000', '77.00000000', '{\"INR\":{\"name\":\"Indian rupee\",\"symbol\":\"\\u20b9\"}}'),
(107, 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IO', 'IOT', '🇮🇴', '-6.00000000', '71.50000000', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(108, 'Ireland', 'Republic of Ireland', 'IE', 'IRL', '🇮🇪', '53.00000000', '-8.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(109, 'Iran', 'Islamic Republic of Iran', 'IR', 'IRN', '🇮🇷', '32.00000000', '53.00000000', '{\"IRR\":{\"name\":\"Iranian rial\",\"symbol\":\"\\ufdfc\"}}'),
(110, 'Iraq', 'Republic of Iraq', 'IQ', 'IRQ', '🇮🇶', '33.00000000', '44.00000000', '{\"IQD\":{\"name\":\"Iraqi dinar\",\"symbol\":\"\\u0639.\\u062f\"}}'),
(111, 'Iceland', 'Iceland', 'IS', 'ISL', '🇮🇸', '65.00000000', '-18.00000000', '{\"ISK\":{\"name\":\"Icelandic kr\\u00f3na\",\"symbol\":\"kr\"}}'),
(112, 'Israel', 'State of Israel', 'IL', 'ISR', '🇮🇱', '31.47000000', '35.13000000', '{\"ILS\":{\"name\":\"Israeli new shekel\",\"symbol\":\"\\u20aa\"}}'),
(113, 'Italy', 'Italian Republic', 'IT', 'ITA', '🇮🇹', '42.83333333', '12.83333333', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(114, 'Jamaica', 'Jamaica', 'JM', 'JAM', '🇯🇲', '18.25000000', '-77.50000000', '{\"JMD\":{\"name\":\"Jamaican dollar\",\"symbol\":\"$\"}}'),
(115, 'Jersey', 'Bailiwick of Jersey', 'JE', 'JEY', '🇯🇪', '49.25000000', '-2.16666666', '{\"GBP\":{\"name\":\"British pound\",\"symbol\":\"\\u00a3\"},\"JEP\":{\"name\":\"Jersey pound\",\"symbol\":\"\\u00a3\"}}'),
(116, 'Jordan', 'Hashemite Kingdom of Jordan', 'JO', 'JOR', '🇯🇴', '31.00000000', '36.00000000', '{\"JOD\":{\"name\":\"Jordanian dinar\",\"symbol\":\"\\u062f.\\u0627\"}}'),
(117, 'Japan', 'Japan', 'JP', 'JPN', '🇯🇵', '36.00000000', '138.00000000', '{\"JPY\":{\"name\":\"Japanese yen\",\"symbol\":\"\\u00a5\"}}'),
(118, 'Kazakhstan', 'Republic of Kazakhstan', 'KZ', 'KAZ', '🇰🇿', '48.00000000', '68.00000000', '{\"KZT\":{\"name\":\"Kazakhstani tenge\",\"symbol\":\"\\u20b8\"}}'),
(119, 'Kenya', 'Republic of Kenya', 'KE', 'KEN', '🇰🇪', '1.00000000', '38.00000000', '{\"KES\":{\"name\":\"Kenyan shilling\",\"symbol\":\"Sh\"}}'),
(120, 'Kyrgyzstan', 'Kyrgyz Republic', 'KG', 'KGZ', '🇰🇬', '41.00000000', '75.00000000', '{\"KGS\":{\"name\":\"Kyrgyzstani som\",\"symbol\":\"\\u0441\"}}'),
(121, 'Cambodia', 'Kingdom of Cambodia', 'KH', 'KHM', '🇰🇭', '13.00000000', '105.00000000', '{\"KHR\":{\"name\":\"Cambodian riel\",\"symbol\":\"\\u17db\"},\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(122, 'Kiribati', 'Independent and Sovereign Republic of Kiribati', 'KI', 'KIR', '🇰🇮', '1.41666666', '173.00000000', '{\"AUD\":{\"name\":\"Australian dollar\",\"symbol\":\"$\"},\"KID\":{\"name\":\"Kiribati dollar\",\"symbol\":\"$\"}}'),
(123, 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KN', 'KNA', '🇰🇳', '17.33333333', '-62.75000000', '{\"XCD\":{\"name\":\"Eastern Caribbean dollar\",\"symbol\":\"$\"}}'),
(124, 'South Korea', 'Republic of Korea', 'KR', 'KOR', '🇰🇷', '37.00000000', '127.50000000', '{\"KRW\":{\"name\":\"South Korean won\",\"symbol\":\"\\u20a9\"}}'),
(125, 'Kosovo', 'Republic of Kosovo', 'XK', 'UNK', '🇽🇰', '42.66666700', '21.16666700', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(126, 'Kuwait', 'State of Kuwait', 'KW', 'KWT', '🇰🇼', '29.50000000', '45.75000000', '{\"KWD\":{\"name\":\"Kuwaiti dinar\",\"symbol\":\"\\u062f.\\u0643\"}}'),
(127, 'Laos', 'Lao People\'s Democratic Republic', 'LA', 'LAO', '🇱🇦', '18.00000000', '105.00000000', '{\"LAK\":{\"name\":\"Lao kip\",\"symbol\":\"\\u20ad\"}}'),
(128, 'Lebanon', 'Lebanese Republic', 'LB', 'LBN', '🇱🇧', '33.83333333', '35.83333333', '{\"LBP\":{\"name\":\"Lebanese pound\",\"symbol\":\"\\u0644.\\u0644\"}}'),
(129, 'Liberia', 'Republic of Liberia', 'LR', 'LBR', '🇱🇷', '6.50000000', '-9.50000000', '{\"LRD\":{\"name\":\"Liberian dollar\",\"symbol\":\"$\"}}'),
(130, 'Libya', 'State of Libya', 'LY', 'LBY', '🇱🇾', '25.00000000', '17.00000000', '{\"LYD\":{\"name\":\"Libyan dinar\",\"symbol\":\"\\u0644.\\u062f\"}}'),
(131, 'Saint Lucia', 'Saint Lucia', 'LC', 'LCA', '🇱🇨', '13.88333333', '-60.96666666', '{\"XCD\":{\"name\":\"Eastern Caribbean dollar\",\"symbol\":\"$\"}}'),
(132, 'Liechtenstein', 'Principality of Liechtenstein', 'LI', 'LIE', '🇱🇮', '47.26666666', '9.53333333', '{\"CHF\":{\"name\":\"Swiss franc\",\"symbol\":\"Fr\"}}'),
(133, 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LK', 'LKA', '🇱🇰', '7.00000000', '81.00000000', '{\"LKR\":{\"name\":\"Sri Lankan rupee\",\"symbol\":\"Rs  \\u0dbb\\u0dd4\"}}'),
(134, 'Lesotho', 'Kingdom of Lesotho', 'LS', 'LSO', '🇱🇸', '-29.50000000', '28.50000000', '{\"LSL\":{\"name\":\"Lesotho loti\",\"symbol\":\"L\"},\"ZAR\":{\"name\":\"South African rand\",\"symbol\":\"R\"}}'),
(135, 'Lithuania', 'Republic of Lithuania', 'LT', 'LTU', '🇱🇹', '56.00000000', '24.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(136, 'Luxembourg', 'Grand Duchy of Luxembourg', 'LU', 'LUX', '🇱🇺', '49.75000000', '6.16666666', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(137, 'Latvia', 'Republic of Latvia', 'LV', 'LVA', '🇱🇻', '57.00000000', '25.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(138, 'Macau', 'Macao Special Administrative Region of the People\'s Republic of China', 'MO', 'MAC', '🇲🇴', '22.16666666', '113.55000000', '{\"MOP\":{\"name\":\"Macanese pataca\",\"symbol\":\"P\"}}'),
(139, 'Saint Martin', 'Saint Martin', 'MF', 'MAF', '🇲🇫', '18.08333333', '-63.95000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(140, 'Morocco', 'Kingdom of Morocco', 'MA', 'MAR', '🇲🇦', '32.00000000', '-5.00000000', '{\"MAD\":{\"name\":\"Moroccan dirham\",\"symbol\":\"\\u062f.\\u0645.\"}}'),
(141, 'Monaco', 'Principality of Monaco', 'MC', 'MCO', '🇲🇨', '43.73333333', '7.40000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(142, 'Moldova', 'Republic of Moldova', 'MD', 'MDA', '🇲🇩', '47.00000000', '29.00000000', '{\"MDL\":{\"name\":\"Moldovan leu\",\"symbol\":\"L\"}}'),
(143, 'Madagascar', 'Republic of Madagascar', 'MG', 'MDG', '🇲🇬', '-20.00000000', '47.00000000', '{\"MGA\":{\"name\":\"Malagasy ariary\",\"symbol\":\"Ar\"}}'),
(144, 'Maldives', 'Republic of the Maldives', 'MV', 'MDV', '🇲🇻', '3.25000000', '73.00000000', '{\"MVR\":{\"name\":\"Maldivian rufiyaa\",\"symbol\":\".\\u0783\"}}'),
(145, 'Mexico', 'United Mexican States', 'MX', 'MEX', '🇲🇽', '23.00000000', '-102.00000000', '{\"MXN\":{\"name\":\"Mexican peso\",\"symbol\":\"$\"}}'),
(146, 'Marshall Islands', 'Republic of the Marshall Islands', 'MH', 'MHL', '🇲🇭', '9.00000000', '168.00000000', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(147, 'North Macedonia', 'Republic of North Macedonia', 'MK', 'MKD', '🇲🇰', '41.83333333', '22.00000000', '{\"MKD\":{\"name\":\"denar\",\"symbol\":\"den\"}}'),
(148, 'Mali', 'Republic of Mali', 'ML', 'MLI', '🇲🇱', '17.00000000', '-4.00000000', '{\"XOF\":{\"name\":\"West African CFA franc\",\"symbol\":\"Fr\"}}'),
(149, 'Malta', 'Republic of Malta', 'MT', 'MLT', '🇲🇹', '35.83333333', '14.58333333', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(150, 'Myanmar', 'Republic of the Union of Myanmar', 'MM', 'MMR', '🇲🇲', '22.00000000', '98.00000000', '{\"MMK\":{\"name\":\"Burmese kyat\",\"symbol\":\"Ks\"}}'),
(151, 'Montenegro', 'Montenegro', 'ME', 'MNE', '🇲🇪', '42.50000000', '19.30000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(152, 'Mongolia', 'Mongolia', 'MN', 'MNG', '🇲🇳', '46.00000000', '105.00000000', '{\"MNT\":{\"name\":\"Mongolian t\\u00f6gr\\u00f6g\",\"symbol\":\"\\u20ae\"}}'),
(153, 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands', 'MP', 'MNP', '🇲🇵', '15.20000000', '145.75000000', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(154, 'Mozambique', 'Republic of Mozambique', 'MZ', 'MOZ', '🇲🇿', '-18.25000000', '35.00000000', '{\"MZN\":{\"name\":\"Mozambican metical\",\"symbol\":\"MT\"}}'),
(155, 'Mauritania', 'Islamic Republic of Mauritania', 'MR', 'MRT', '🇲🇷', '20.00000000', '-12.00000000', '{\"MRU\":{\"name\":\"Mauritanian ouguiya\",\"symbol\":\"UM\"}}'),
(156, 'Montserrat', 'Montserrat', 'MS', 'MSR', '🇲🇸', '16.75000000', '-62.20000000', '{\"XCD\":{\"name\":\"Eastern Caribbean dollar\",\"symbol\":\"$\"}}'),
(157, 'Martinique', 'Martinique', 'MQ', 'MTQ', '🇲🇶', '14.66666700', '-61.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(158, 'Mauritius', 'Republic of Mauritius', 'MU', 'MUS', '🇲🇺', '-20.28333333', '57.55000000', '{\"MUR\":{\"name\":\"Mauritian rupee\",\"symbol\":\"\\u20a8\"}}'),
(159, 'Malawi', 'Republic of Malawi', 'MW', 'MWI', '🇲🇼', '-13.50000000', '34.00000000', '{\"MWK\":{\"name\":\"Malawian kwacha\",\"symbol\":\"MK\"}}'),
(160, 'Malaysia', 'Malaysia', 'MY', 'MYS', '🇲🇾', '2.50000000', '112.50000000', '{\"MYR\":{\"name\":\"Malaysian ringgit\",\"symbol\":\"RM\"}}'),
(161, 'Mayotte', 'Department of Mayotte', 'YT', 'MYT', '🇾🇹', '-12.83333333', '45.16666666', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(162, 'Namibia', 'Republic of Namibia', 'NA', 'NAM', '🇳🇦', '-22.00000000', '17.00000000', '{\"NAD\":{\"name\":\"Namibian dollar\",\"symbol\":\"$\"},\"ZAR\":{\"name\":\"South African rand\",\"symbol\":\"R\"}}'),
(163, 'New Caledonia', 'New Caledonia', 'NC', 'NCL', '🇳🇨', '-21.50000000', '165.50000000', '{\"XPF\":{\"name\":\"CFP franc\",\"symbol\":\"\\u20a3\"}}'),
(164, 'Niger', 'Republic of Niger', 'NE', 'NER', '🇳🇪', '16.00000000', '8.00000000', '{\"XOF\":{\"name\":\"West African CFA franc\",\"symbol\":\"Fr\"}}'),
(165, 'Norfolk Island', 'Territory of Norfolk Island', 'NF', 'NFK', '🇳🇫', '-29.03333333', '167.95000000', '{\"AUD\":{\"name\":\"Australian dollar\",\"symbol\":\"$\"}}'),
(166, 'Nigeria', 'Federal Republic of Nigeria', 'NG', 'NGA', '🇳🇬', '10.00000000', '8.00000000', '{\"NGN\":{\"name\":\"Nigerian naira\",\"symbol\":\"\\u20a6\"}}'),
(167, 'Nicaragua', 'Republic of Nicaragua', 'NI', 'NIC', '🇳🇮', '13.00000000', '-85.00000000', '{\"NIO\":{\"name\":\"Nicaraguan c\\u00f3rdoba\",\"symbol\":\"C$\"}}'),
(168, 'Niue', 'Niue', 'NU', 'NIU', '🇳🇺', '-19.03333333', '-169.86666666', '{\"NZD\":{\"name\":\"New Zealand dollar\",\"symbol\":\"$\"}}'),
(169, 'Netherlands', 'Kingdom of the Netherlands', 'NL', 'NLD', '🇳🇱', '52.50000000', '5.75000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(170, 'Norway', 'Kingdom of Norway', 'NO', 'NOR', '🇳🇴', '62.00000000', '10.00000000', '{\"NOK\":{\"name\":\"Norwegian krone\",\"symbol\":\"kr\"}}'),
(171, 'Nepal', 'Federal Democratic Republic of Nepal', 'NP', 'NPL', '🇳🇵', '28.00000000', '84.00000000', '{\"NPR\":{\"name\":\"Nepalese rupee\",\"symbol\":\"\\u20a8\"}}'),
(172, 'Nauru', 'Republic of Nauru', 'NR', 'NRU', '🇳🇷', '-0.53333333', '166.91666666', '{\"AUD\":{\"name\":\"Australian dollar\",\"symbol\":\"$\"}}'),
(173, 'New Zealand', 'New Zealand', 'NZ', 'NZL', '🇳🇿', '-41.00000000', '174.00000000', '{\"NZD\":{\"name\":\"New Zealand dollar\",\"symbol\":\"$\"}}'),
(174, 'Oman', 'Sultanate of Oman', 'OM', 'OMN', '🇴🇲', '21.00000000', '57.00000000', '{\"OMR\":{\"name\":\"Omani rial\",\"symbol\":\"\\u0631.\\u0639.\"}}'),
(175, 'Pakistan', 'Islamic Republic of Pakistan', 'PK', 'PAK', '🇵🇰', '30.00000000', '70.00000000', '{\"PKR\":{\"name\":\"Pakistani rupee\",\"symbol\":\"\\u20a8\"}}'),
(176, 'Panama', 'Republic of Panama', 'PA', 'PAN', '🇵🇦', '9.00000000', '-80.00000000', '{\"PAB\":{\"name\":\"Panamanian balboa\",\"symbol\":\"B\\/.\"},\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(177, 'Pitcairn Islands', 'Pitcairn Group of Islands', 'PN', 'PCN', '🇵🇳', '-25.06666666', '-130.10000000', '{\"NZD\":{\"name\":\"New Zealand dollar\",\"symbol\":\"$\"}}'),
(178, 'Peru', 'Republic of Peru', 'PE', 'PER', '🇵🇪', '-10.00000000', '-76.00000000', '{\"PEN\":{\"name\":\"Peruvian sol\",\"symbol\":\"S\\/.\"}}'),
(179, 'Philippines', 'Republic of the Philippines', 'PH', 'PHL', '🇵🇭', '13.00000000', '122.00000000', '{\"PHP\":{\"name\":\"Philippine peso\",\"symbol\":\"\\u20b1\"}}'),
(180, 'Palau', 'Republic of Palau', 'PW', 'PLW', '🇵🇼', '7.50000000', '134.50000000', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(181, 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PG', 'PNG', '🇵🇬', '-6.00000000', '147.00000000', '{\"PGK\":{\"name\":\"Papua New Guinean kina\",\"symbol\":\"K\"}}'),
(182, 'Poland', 'Republic of Poland', 'PL', 'POL', '🇵🇱', '52.00000000', '20.00000000', '{\"PLN\":{\"name\":\"Polish z\\u0142oty\",\"symbol\":\"z\\u0142\"}}'),
(183, 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PR', 'PRI', '🇵🇷', '18.25000000', '-66.50000000', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(184, 'North Korea', 'Democratic People\'s Republic of Korea', 'KP', 'PRK', '🇰🇵', '40.00000000', '127.00000000', '{\"KPW\":{\"name\":\"North Korean won\",\"symbol\":\"\\u20a9\"}}'),
(185, 'Portugal', 'Portuguese Republic', 'PT', 'PRT', '🇵🇹', '39.50000000', '-8.00000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(186, 'Paraguay', 'Republic of Paraguay', 'PY', 'PRY', '🇵🇾', '-23.00000000', '-58.00000000', '{\"PYG\":{\"name\":\"Paraguayan guaran\\u00ed\",\"symbol\":\"\\u20b2\"}}'),
(187, 'Palestine', 'State of Palestine', 'PS', 'PSE', '🇵🇸', '31.90000000', '35.20000000', '{\"EGP\":{\"name\":\"Egyptian pound\",\"symbol\":\"E\\u00a3\"},\"ILS\":{\"name\":\"Israeli new shekel\",\"symbol\":\"\\u20aa\"},\"JOD\":{\"name\":\"Jordanian dinar\",\"symbol\":\"JD\"}}'),
(188, 'French Polynesia', 'French Polynesia', 'PF', 'PYF', '🇵🇫', '-15.00000000', '-140.00000000', '{\"XPF\":{\"name\":\"CFP franc\",\"symbol\":\"\\u20a3\"}}'),
(189, 'Qatar', 'State of Qatar', 'QA', 'QAT', '🇶🇦', '25.50000000', '51.25000000', '{\"QAR\":{\"name\":\"Qatari riyal\",\"symbol\":\"\\u0631.\\u0642\"}}'),
(190, 'Réunion', 'Réunion Island', 'RE', 'REU', '🇷🇪', '-21.15000000', '55.50000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(191, 'Romania', 'Romania', 'RO', 'ROU', '🇷🇴', '46.00000000', '25.00000000', '{\"RON\":{\"name\":\"Romanian leu\",\"symbol\":\"lei\"}}'),
(192, 'Russia', 'Russian Federation', 'RU', 'RUS', '🇷🇺', '60.00000000', '100.00000000', '{\"RUB\":{\"name\":\"Russian ruble\",\"symbol\":\"\\u20bd\"}}'),
(193, 'Rwanda', 'Republic of Rwanda', 'RW', 'RWA', '🇷🇼', '-2.00000000', '30.00000000', '{\"RWF\":{\"name\":\"Rwandan franc\",\"symbol\":\"Fr\"}}'),
(194, 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SA', 'SAU', '🇸🇦', '25.00000000', '45.00000000', '{\"SAR\":{\"name\":\"Saudi riyal\",\"symbol\":\"\\u0631.\\u0633\"}}'),
(195, 'Sudan', 'Republic of the Sudan', 'SD', 'SDN', '🇸🇩', '15.00000000', '30.00000000', '{\"SDG\":{\"name\":\"Sudanese pound\",\"symbol\":\"\"}}'),
(196, 'Senegal', 'Republic of Senegal', 'SN', 'SEN', '🇸🇳', '14.00000000', '-14.00000000', '{\"XOF\":{\"name\":\"West African CFA franc\",\"symbol\":\"Fr\"}}'),
(197, 'Singapore', 'Republic of Singapore', 'SG', 'SGP', '🇸🇬', '1.36666666', '103.80000000', '{\"SGD\":{\"name\":\"Singapore dollar\",\"symbol\":\"$\"}}'),
(198, 'South Georgia', 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '🇬🇸', '-54.50000000', '-37.00000000', '{\"SHP\":{\"name\":\"Saint Helena pound\",\"symbol\":\"\\u00a3\"}}'),
(199, 'Svalbard and Jan Mayen', 'Svalbard og Jan Mayen', 'SJ', 'SJM', '🇸🇯', '78.00000000', '20.00000000', '{\"NOK\":{\"name\":\"krone\",\"symbol\":\"kr\"}}'),
(200, 'Solomon Islands', 'Solomon Islands', 'SB', 'SLB', '🇸🇧', '-8.00000000', '159.00000000', '{\"SBD\":{\"name\":\"Solomon Islands dollar\",\"symbol\":\"$\"}}'),
(201, 'Sierra Leone', 'Republic of Sierra Leone', 'SL', 'SLE', '🇸🇱', '8.50000000', '-11.50000000', '{\"SLL\":{\"name\":\"Sierra Leonean leone\",\"symbol\":\"Le\"}}'),
(202, 'El Salvador', 'Republic of El Salvador', 'SV', 'SLV', '🇸🇻', '13.83333333', '-88.91666666', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(203, 'San Marino', 'Most Serene Republic of San Marino', 'SM', 'SMR', '🇸🇲', '43.76666666', '12.41666666', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(204, 'Somalia', 'Federal Republic of Somalia', 'SO', 'SOM', '🇸🇴', '10.00000000', '49.00000000', '{\"SOS\":{\"name\":\"Somali shilling\",\"symbol\":\"Sh\"}}'),
(205, 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'PM', 'SPM', '🇵🇲', '46.83333333', '-56.33333333', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(206, 'Serbia', 'Republic of Serbia', 'RS', 'SRB', '🇷🇸', '44.00000000', '21.00000000', '{\"RSD\":{\"name\":\"Serbian dinar\",\"symbol\":\"\\u0434\\u0438\\u043d.\"}}'),
(207, 'South Sudan', 'Republic of South Sudan', 'SS', 'SSD', '🇸🇸', '7.00000000', '30.00000000', '{\"SSP\":{\"name\":\"South Sudanese pound\",\"symbol\":\"\\u00a3\"}}'),
(208, 'São Tomé and Príncipe', 'Democratic Republic of São Tomé and Príncipe', 'ST', 'STP', '🇸🇹', '1.00000000', '7.00000000', '{\"STN\":{\"name\":\"S\\u00e3o Tom\\u00e9 and Pr\\u00edncipe dobra\",\"symbol\":\"Db\"}}'),
(209, 'Suriname', 'Republic of Suriname', 'SR', 'SUR', '🇸🇷', '4.00000000', '-56.00000000', '{\"SRD\":{\"name\":\"Surinamese dollar\",\"symbol\":\"$\"}}'),
(210, 'Slovakia', 'Slovak Republic', 'SK', 'SVK', '🇸🇰', '48.66666666', '19.50000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(211, 'Slovenia', 'Republic of Slovenia', 'SI', 'SVN', '🇸🇮', '46.11666666', '14.81666666', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(212, 'Sweden', 'Kingdom of Sweden', 'SE', 'SWE', '🇸🇪', '62.00000000', '15.00000000', '{\"SEK\":{\"name\":\"Swedish krona\",\"symbol\":\"kr\"}}'),
(213, 'Eswatini', 'Kingdom of Eswatini', 'SZ', 'SWZ', '🇸🇿', '-26.50000000', '31.50000000', '{\"SZL\":{\"name\":\"Swazi lilangeni\",\"symbol\":\"L\"},\"ZAR\":{\"name\":\"South African rand\",\"symbol\":\"R\"}}'),
(214, 'Sint Maarten', 'Sint Maarten', 'SX', 'SXM', '🇸🇽', '18.03333300', '-63.05000000', '{\"ANG\":{\"name\":\"Netherlands Antillean guilder\",\"symbol\":\"\\u0192\"}}'),
(215, 'Seychelles', 'Republic of Seychelles', 'SC', 'SYC', '🇸🇨', '-4.58333333', '55.66666666', '{\"SCR\":{\"name\":\"Seychellois rupee\",\"symbol\":\"\\u20a8\"}}'),
(216, 'Syria', 'Syrian Arab Republic', 'SY', 'SYR', '🇸🇾', '35.00000000', '38.00000000', '{\"SYP\":{\"name\":\"Syrian pound\",\"symbol\":\"\\u00a3\"}}'),
(217, 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TC', 'TCA', '🇹🇨', '21.75000000', '-71.58333333', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(218, 'Chad', 'Republic of Chad', 'TD', 'TCD', '🇹🇩', '15.00000000', '19.00000000', '{\"XAF\":{\"name\":\"Central African CFA franc\",\"symbol\":\"Fr\"}}'),
(219, 'Togo', 'Togolese Republic', 'TG', 'TGO', '🇹🇬', '8.00000000', '1.16666666', '{\"XOF\":{\"name\":\"West African CFA franc\",\"symbol\":\"Fr\"}}'),
(220, 'Thailand', 'Kingdom of Thailand', 'TH', 'THA', '🇹🇭', '15.00000000', '100.00000000', '{\"THB\":{\"name\":\"Thai baht\",\"symbol\":\"\\u0e3f\"}}'),
(221, 'Tajikistan', 'Republic of Tajikistan', 'TJ', 'TJK', '🇹🇯', '39.00000000', '71.00000000', '{\"TJS\":{\"name\":\"Tajikistani somoni\",\"symbol\":\"\\u0405\\u041c\"}}'),
(222, 'Tokelau', 'Tokelau', 'TK', 'TKL', '🇹🇰', '-9.00000000', '-172.00000000', '{\"NZD\":{\"name\":\"New Zealand dollar\",\"symbol\":\"$\"}}'),
(223, 'Turkmenistan', 'Turkmenistan', 'TM', 'TKM', '🇹🇲', '40.00000000', '60.00000000', '{\"TMT\":{\"name\":\"Turkmenistan manat\",\"symbol\":\"m\"}}'),
(224, 'Timor-Leste', 'Democratic Republic of Timor-Leste', 'TL', 'TLS', '🇹🇱', '-8.83333333', '125.91666666', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(225, 'Tonga', 'Kingdom of Tonga', 'TO', 'TON', '🇹🇴', '-20.00000000', '-175.00000000', '{\"TOP\":{\"name\":\"Tongan pa\\u02bbanga\",\"symbol\":\"T$\"}}'),
(226, 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TT', 'TTO', '🇹🇹', '11.00000000', '-61.00000000', '{\"TTD\":{\"name\":\"Trinidad and Tobago dollar\",\"symbol\":\"$\"}}'),
(227, 'Tunisia', 'Tunisian Republic', 'TN', 'TUN', '🇹🇳', '34.00000000', '9.00000000', '{\"TND\":{\"name\":\"Tunisian dinar\",\"symbol\":\"\\u062f.\\u062a\"}}'),
(228, 'Turkey', 'Republic of Turkey', 'TR', 'TUR', '🇹🇷', '39.00000000', '35.00000000', '{\"TRY\":{\"name\":\"Turkish lira\",\"symbol\":\"\\u20ba\"}}'),
(229, 'Tuvalu', 'Tuvalu', 'TV', 'TUV', '🇹🇻', '-8.00000000', '178.00000000', '{\"AUD\":{\"name\":\"Australian dollar\",\"symbol\":\"$\"},\"TVD\":{\"name\":\"Tuvaluan dollar\",\"symbol\":\"$\"}}'),
(230, 'Taiwan', 'Republic of China (Taiwan)', 'TW', 'TWN', '🇹🇼', '23.50000000', '121.00000000', '{\"TWD\":{\"name\":\"New Taiwan dollar\",\"symbol\":\"$\"}}'),
(231, 'Tanzania', 'United Republic of Tanzania', 'TZ', 'TZA', '🇹🇿', '-6.00000000', '35.00000000', '{\"TZS\":{\"name\":\"Tanzanian shilling\",\"symbol\":\"Sh\"}}'),
(232, 'Uganda', 'Republic of Uganda', 'UG', 'UGA', '🇺🇬', '1.00000000', '32.00000000', '{\"UGX\":{\"name\":\"Ugandan shilling\",\"symbol\":\"Sh\"}}'),
(233, 'Ukraine', 'Ukraine', 'UA', 'UKR', '🇺🇦', '49.00000000', '32.00000000', '{\"UAH\":{\"name\":\"Ukrainian hryvnia\",\"symbol\":\"\\u20b4\"}}'),
(234, 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UM', 'UMI', '🇺🇲', '19.30000000', '166.63333300', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(235, 'Uruguay', 'Oriental Republic of Uruguay', 'UY', 'URY', '🇺🇾', '-33.00000000', '-56.00000000', '{\"UYU\":{\"name\":\"Uruguayan peso\",\"symbol\":\"$\"}}'),
(236, 'United States', 'United States of America', 'US', 'USA', '🇺🇸', '38.00000000', '-97.00000000', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(237, 'Uzbekistan', 'Republic of Uzbekistan', 'UZ', 'UZB', '🇺🇿', '41.00000000', '64.00000000', '{\"UZS\":{\"name\":\"Uzbekistani so\\u02bbm\",\"symbol\":\"so\'m\"}}'),
(238, 'Vatican City', 'Vatican City State', 'VA', 'VAT', '🇻🇦', '41.90000000', '12.45000000', '{\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"}}'),
(239, 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VC', 'VCT', '🇻🇨', '13.25000000', '-61.20000000', '{\"XCD\":{\"name\":\"Eastern Caribbean dollar\",\"symbol\":\"$\"}}'),
(240, 'Venezuela', 'Bolivarian Republic of Venezuela', 'VE', 'VEN', '🇻🇪', '8.00000000', '-66.00000000', '{\"VES\":{\"name\":\"Venezuelan bol\\u00edvar soberano\",\"symbol\":\"Bs.S.\"}}'),
(241, 'British Virgin Islands', 'Virgin Islands', 'VG', 'VGB', '🇻🇬', '18.43138300', '-64.62305000', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(242, 'United States Virgin Islands', 'Virgin Islands of the United States', 'VI', 'VIR', '🇻🇮', '18.35000000', '-64.93333300', '{\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"}}'),
(243, 'Vietnam', 'Socialist Republic of Vietnam', 'VN', 'VNM', '🇻🇳', '16.16666666', '107.83333333', '{\"VND\":{\"name\":\"Vietnamese \\u0111\\u1ed3ng\",\"symbol\":\"\\u20ab\"}}'),
(244, 'Vanuatu', 'Republic of Vanuatu', 'VU', 'VUT', '🇻🇺', '-16.00000000', '167.00000000', '{\"VUV\":{\"name\":\"Vanuatu vatu\",\"symbol\":\"Vt\"}}'),
(245, 'Wallis and Futuna', 'Territory of the Wallis and Futuna Islands', 'WF', 'WLF', '🇼🇫', '-13.30000000', '-176.20000000', '{\"XPF\":{\"name\":\"CFP franc\",\"symbol\":\"\\u20a3\"}}'),
(246, 'Samoa', 'Independent State of Samoa', 'WS', 'WSM', '🇼🇸', '-13.58333333', '-172.33333333', '{\"WST\":{\"name\":\"Samoan t\\u0101l\\u0101\",\"symbol\":\"T\"}}'),
(247, 'Yemen', 'Republic of Yemen', 'YE', 'YEM', '🇾🇪', '15.00000000', '48.00000000', '{\"YER\":{\"name\":\"Yemeni rial\",\"symbol\":\"\\ufdfc\"}}'),
(248, 'South Africa', 'Republic of South Africa', 'ZA', 'ZAF', '🇿🇦', '-29.00000000', '24.00000000', '{\"ZAR\":{\"name\":\"South African rand\",\"symbol\":\"R\"}}'),
(249, 'Zambia', 'Republic of Zambia', 'ZM', 'ZMB', '🇿🇲', '-15.00000000', '30.00000000', '{\"ZMW\":{\"name\":\"Zambian kwacha\",\"symbol\":\"ZK\"}}'),
(250, 'Zimbabwe', 'Republic of Zimbabwe', 'ZW', 'ZWE', '🇿🇼', '-20.00000000', '30.00000000', '{\"BWP\":{\"name\":\"Botswana pula\",\"symbol\":\"P\"},\"CNY\":{\"name\":\"Chinese yuan\",\"symbol\":\"\\u00a5\"},\"EUR\":{\"name\":\"Euro\",\"symbol\":\"\\u20ac\"},\"GBP\":{\"name\":\"British pound\",\"symbol\":\"\\u00a3\"},\"INR\":{\"name\":\"Indian rupee\",\"symbol\":\"\\u20b9\"},\"JPY\":{\"name\":\"Japanese yen\",\"symbol\":\"\\u00a5\"},\"USD\":{\"name\":\"United States dollar\",\"symbol\":\"$\"},\"ZAR\":{\"name\":\"South African rand\",\"symbol\":\"Rs\"},\"ZWB\":{\"name\":\"Zimbabwean bonds\",\"symbol\":\"$\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `system_currencies`
--

CREATE TABLE `system_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `format` varchar(50) NOT NULL,
  `exchange_rate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_currencies`
--

INSERT INTO `system_currencies` (`id`, `name`, `code`, `symbol`, `format`, `exchange_rate`) VALUES
(1, 'UAE Dirham', 'AED', 'دإ‏', 'دإ‏ 1,0.00', '0'),
(2, 'Afghanistan, Afghani', 'AFN', '؋', '؋1,0.00', '0'),
(3, 'Albania, Lek', 'ALL', 'Lek', '1,0.00Lek', '0'),
(4, 'Armenian Dram', 'AMD', '&#1423;', '1,0.00 &#1423;', '0'),
(5, 'Netherlands Antillian Guilder', 'ANG', 'ƒ', 'ƒ1,0.00', '0'),
(6, 'Angola, Kwanza', 'AOA', 'Kz', 'Kz1,0.00', '0'),
(7, 'Argentine Peso', 'ARS', '$', '$ 1,0.00', '0'),
(8, 'Australian Dollar', 'AUD', '$', '$1,0.00', '0'),
(9, 'Aruban Guilder', 'AWG', 'ƒ', 'ƒ1,0.00', '0'),
(10, 'Azerbaijanian Manat', 'AZN', '₼', '1 0,00 ₼', '0'),
(11, 'Bosnia and Herzegovina, Convertible Marks', 'BAM', 'КМ', '1,0.00 КМ', '0'),
(12, 'Barbados Dollar', 'BBD', '$', '$1,0.00', '0'),
(13, 'Bangladesh, Taka', 'BDT', '৳', '৳ 1,0.', '0'),
(14, 'Bulgarian Lev', 'BGN', 'лв.', '1 0,00 лв.', '0'),
(15, 'Bahraini Dinar', 'BHD', '.د.', '.د. 1,0.000', '0'),
(16, 'Burundi Franc', 'BIF', 'FBu', '1,0.FBu', '0'),
(17, 'Bermudian Dollar', 'BMD', '$', '$1,0.00', '0'),
(18, 'Brunei Dollar', 'BND', '$', '$1,0.', '0'),
(19, 'Bolivia, Boliviano', 'BOB', 'Bs', 'Bs 1,0.00', '0'),
(20, 'Brazilian Real', 'BRL', 'R$', 'R$ 1,0.00', '0'),
(21, 'Bahamian Dollar', 'BSD', '$', '$1,0.00', '0'),
(22, 'Bhutan, Ngultrum', 'BTN', 'Nu.', 'Nu. 1,0.0', '0'),
(23, 'Botswana, Pula', 'BWP', 'P', 'P1,0.00', '0'),
(24, 'Belarussian Ruble', 'BYN', 'р.', '1 0,00 р.', '0'),
(25, 'Belize Dollar', 'BZD', 'BZ$', 'BZ$1,0.00', '0'),
(26, 'Canadian Dollar', 'CAD', '$', '$1,0.00', '0'),
(27, 'Franc Congolais', 'CDF', 'FC', '1,0.00FC', '0'),
(28, 'Swiss Franc', 'CHF', 'CHF', '1\'0.00 CHF', '0'),
(29, 'Chilean Peso', 'CLP', '$', '$ 1,0.00', '0'),
(30, 'China Yuan Renminbi', 'CNY', '¥', '¥1,0.00', '0'),
(31, 'Colombian Peso', 'COP', '$', '$ 1,0.00', '0'),
(32, 'Costa Rican Colon', 'CRC', '₡', '₡1,0.00', '0'),
(33, 'Cuban Convertible Peso', 'CUC', 'CUC', 'CUC1,0.00', '0'),
(34, 'Cuban Peso', 'CUP', '$MN', '$MN1,0.00', '0'),
(35, 'Cape Verde Escudo', 'CVE', '$', '$1,0.00', '0'),
(36, 'Czech Koruna', 'CZK', 'Kč', '1 0,00 Kč', '0'),
(37, 'Djibouti Franc', 'DJF', 'Fdj', '1,0.Fdj', '0'),
(38, 'Danish Krone', 'DKK', 'kr.', '1 0,00 kr.', '0'),
(39, 'Dominican Peso', 'DOP', 'RD$', 'RD$1,0.00', '0'),
(40, 'Algerian Dinar', 'DZD', 'د.ج‏', 'د.ج‏ 1,0.00', '0'),
(41, 'Egyptian Pound', 'EGP', 'ج.م', 'ج.م 1,0.00', '0'),
(42, 'Eritrea, Nakfa', 'ERN', 'Nfk', '1,0.00Nfk', '0'),
(43, 'Ethiopian Birr', 'ETB', 'ETB', 'ETB1,0.00', '0'),
(44, 'Euro', 'EUR', '€', '1.0,00 €', '0'),
(45, 'Fiji Dollar', 'FJD', '$', '$1,0.00', '0'),
(46, 'Falkland Islands Pound', 'FKP', '£', '£1,0.00', '0'),
(47, 'Pound Sterling', 'GBP', '£', '£1,0.00', '0'),
(48, 'Georgia, Lari', 'GEL', 'Lari', '1 0,00 Lari', '0'),
(49, 'Ghana Cedi', 'GHS', '₵', '₵1,0.00', '0'),
(50, 'Gibraltar Pound', 'GIP', '£', '£1,0.00', '0'),
(51, 'Gambia, Dalasi', 'GMD', 'D', '1,0.00D', '0'),
(52, 'Guinean franc', 'GNF', 'FG', '1,0.00FG', '0'),
(53, 'Guatemala, Quetzal', 'GTQ', 'Q', 'Q1,0.00', '0'),
(54, 'Guyana Dollar', 'GYD', '$', '$1,0.00', '0'),
(55, 'Hong Kong Dollar', 'HKD', 'HK$', 'HK$1,0.00', '0'),
(56, 'Honduras, Lempira', 'HNL', 'L.', 'L. 1,0.00', '0'),
(57, 'Croatian Kuna', 'HRK', 'kn', '1,0.00 kn', '0'),
(58, 'Haiti, Gourde', 'HTG', 'G', 'G1,0.00', '0'),
(59, 'Hungary, Forint', 'HUF', 'Ft', '1 0,00 Ft', '0'),
(60, 'Indonesia, Rupiah', 'IDR', 'Rp', 'Rp1,0.', '0'),
(61, 'New Israeli Shekel', 'ILS', '₪', '₪ 1,0.00', '0'),
(62, 'Indian Rupee', 'INR', '₹', '1,0.00₹', '0'),
(63, 'Iraqi Dinar', 'IQD', 'د.ع.‏', 'د.ع.‏ 1,0.00', '0'),
(64, 'Iranian Rial', 'IRR', '﷼', '﷼ 1,0/00', '0'),
(65, 'Iceland Krona', 'ISK', 'kr.', '1,0. kr.', '0'),
(66, 'Jamaican Dollar', 'JMD', 'J$', 'J$1,0.00', '0'),
(67, 'Jordanian Dinar', 'JOD', 'د.ا.‏', 'د.ا.‏ 1,0.000', '0'),
(68, 'Japan, Yen', 'JPY', '¥', '¥1,0.', '0'),
(69, 'Kenyan Shilling', 'KES', 'S', 'S1,0.00', '0'),
(70, 'Kyrgyzstan, Som', 'KGS', 'сом', '1 0-00 сом', '0'),
(71, 'Cambodia, Riel', 'KHR', '៛', '1,0.៛', '0'),
(72, 'Comoro Franc', 'KMF', 'CF', '1,0.00CF', '0'),
(73, 'North Korean Won', 'KPW', '₩', '₩1,0.', '0'),
(74, 'South Korea, Won', 'KRW', '₩', '₩1,0.', '0'),
(75, 'Kuwaiti Dinar', 'KWD', 'دينار‎‎‏', 'دينار‎‎‏ 1,0.000', '0'),
(76, 'Cayman Islands Dollar', 'KYD', '$', '$1,0.00', '0'),
(77, 'Kazakhstan, Tenge', 'KZT', '₸', '₸1 0-00', '0'),
(78, 'Laos, Kip', 'LAK', '₭', '1,0.₭', '0'),
(79, 'Lebanese Pound', 'LBP', 'ل.ل.‏', 'ل.ل.‏ 1,0.00', '0'),
(80, 'Sri Lanka Rupee', 'LKR', '₨', '₨ 1,0.', '0'),
(81, 'Liberian Dollar', 'LRD', '$', '$1,0.00', '0'),
(82, 'Lesotho, Loti', 'LSL', 'M', '1,0.00M', '0'),
(83, 'Libyan Dinar', 'LYD', 'د.ل.‏', 'د.ل.‏1,0.000', '0'),
(84, 'Moroccan Dirham', 'MAD', 'د.م.‏', 'د.م.‏ 1,0.00', '0'),
(85, 'Moldovan Leu', 'MDL', 'lei', '1,0.00 lei', '0'),
(86, 'Malagasy Ariary', 'MGA', 'Ar', 'Ar1,0.', '0'),
(87, 'Macedonia, Denar', 'MKD', 'ден.', '1,0.00 ден.', '0'),
(88, 'Myanmar, Kyat', 'MMK', 'K', 'K1,0.00', '0'),
(89, 'Mongolia, Tugrik', 'MNT', '₮', '₮1 0,00', '0'),
(90, 'Macao, Pataca', 'MOP', 'MOP$', 'MOP$1,0.00', '0'),
(91, 'Mauritania, Ouguiya', 'MRU', 'UM', '1,0.00UM', '0'),
(92, 'Maltese Lira', 'MTL', '₤', '₤1,0.00', '0'),
(93, 'Mauritius Rupee', 'MUR', '₨', '₨1,0.00', '0'),
(94, 'Maldives, Rufiyaa', 'MVR', 'MVR', '1,0.0 MVR', '0'),
(95, 'Malawi, Kwacha', 'MWK', 'MK', 'MK1,0.00', '0'),
(96, 'Mexican Peso', 'MXN', '$', '$1,0.00', '0'),
(97, 'Malaysian Ringgit', 'MYR', 'RM', 'RM1,0.00', '0'),
(98, 'Mozambique Metical', 'MZN', 'MT', 'MT1,0.', '0'),
(99, 'Namibian Dollar', 'NAD', '$', '$1,0.00', '0'),
(100, 'Nigeria, Naira', 'NGN', '₦', '₦1,0.00', '0'),
(101, 'Nicaragua, Cordoba Oro', 'NIO', 'C$', 'C$ 1,0.00', '0'),
(102, 'Norwegian Krone', 'NOK', 'kr', '1.0,00 kr', '0'),
(103, 'Nepalese Rupee', 'NPR', '₨', '₨1,0.00', '0'),
(104, 'New Zealand Dollar', 'NZD', '$', '$1,0.00', '0'),
(105, 'Rial Omani', 'OMR', '﷼', '﷼ 1,0.000', '0'),
(106, 'Panama, Balboa', 'PAB', 'B/.', 'B/. 1,0.00', '0'),
(107, 'Peru, Nuevo Sol', 'PEN', 'S/.', 'S/. 1,0.00', '0'),
(108, 'Papua New Guinea, Kina', 'PGK', 'K', 'K1,0.00', '0'),
(109, 'Philippine Peso', 'PHP', '₱', '₱1,0.00', '0'),
(110, 'Pakistan Rupee', 'PKR', '₨', '₨1,0.00', '0'),
(111, 'Poland, Zloty', 'PLN', 'zł', '1 0,00 zł', '0'),
(112, 'Paraguay, Guarani', 'PYG', '₲', '₲ 1,0.00', '0'),
(113, 'Qatari Rial', 'QAR', '﷼', '﷼ 1,0.00', '0'),
(114, 'Romania, New Leu', 'RON', 'lei', '1,0.00 lei', '0'),
(115, 'Serbian Dinar', 'RSD', 'Дин.', '1,0.00 Дин.', '0'),
(116, 'Russian Ruble', 'RUB', '₽', '1 0,00 ₽', '0'),
(117, 'Rwanda Franc', 'RWF', 'RWF', 'RWF 1 0,00', '0'),
(118, 'Saudi Riyal', 'SAR', '﷼', '﷼ 1,0.00', '0'),
(119, 'Solomon Islands Dollar', 'SBD', '$', '$1,0.00', '0'),
(120, 'Seychelles Rupee', 'SCR', '₨', '₨1,0.00', '0'),
(121, 'Sudanese Pound', 'SDG', 'ج.س', '1,0.00 Sd', '0'),
(122, 'Swedish Krona', 'SEK', 'kr', '1 0,00 kr', '0'),
(123, 'Singapore Dollar', 'SGD', '$', '$1,0.00', '0'),
(124, 'Saint Helena Pound', 'SHP', '£', '£1,0.00', '0'),
(125, 'Sierra Leone, Leone', 'SLL', 'Le', 'Le1,0.00', '0'),
(126, 'Somali Shilling', 'SOS', 'S', 'S1,0.00', '0'),
(127, 'Surinam Dollar', 'SRD', '$', '$1,0.00', '0'),
(128, 'South Sudanese pound', 'SSP', 'SS£', 'SS £1,0.00', '0'),
(129, 'Sao Tome and Principe, Dobra', 'STN', 'Db', 'Db1,0.00', '0'),
(130, 'El Salvador Colon', 'SVC', '₡', '₡1,0.00', '0'),
(131, 'Syrian Pound', 'SYP', '£', '£ 1,0.00', '0'),
(132, 'Swaziland, Lilangeni', 'SZL', 'E', 'E1,0.00', '0'),
(133, 'Thailand, Baht', 'THB', '฿', '฿1,0.00', '0'),
(134, 'Tajikistan, Somoni', 'TJS', 'TJS', '1 0;00 TJS', '0'),
(135, 'Turkmenistani New Manat', 'TMT', 'm', '1 0,m', '0'),
(136, 'Tunisian Dinar', 'TND', 'د.ت.‏', 'د.ت.‏ 1,0.000', '0'),
(137, 'Tonga, Paanga', 'TOP', 'T$', 'T$1,0.00', '0'),
(138, 'Turkish Lira', 'TRY', 'TL', '₺1,0.00', '0'),
(139, 'Trinidad and Tobago Dollar', 'TTD', 'TT$', 'TT$1,0.00', '0'),
(140, 'New Taiwan Dollar', 'TWD', 'NT$', 'NT$1,0.00', '0'),
(141, 'Tanzanian Shilling', 'TZS', 'TSh', 'TSh1,0.00', '0'),
(142, 'Ukraine, Hryvnia', 'UAH', '₴', '1 0,00₴', '0'),
(143, 'Uganda Shilling', 'UGX', 'USh', 'USh1,0.00', '0'),
(144, 'US Dollar', 'USD', '$', '$1,0.00', '0'),
(145, 'Peso Uruguayo', 'UYU', '$U', '$U 1,0.00', '0'),
(146, 'Uzbekistan Sum', 'UZS', 'сўм', '1 0,00 сўм', '0'),
(147, 'Venezuela Bolivares soberano', 'VES', 'Bs. S.', 'Bs. S. 1,0.00', '0'),
(148, 'Viet Nam, Dong', 'VND', '₫', '1,0.0 ₫', '0'),
(149, 'Vanuatu, Vatu', 'VUV', 'VT', '1,0.VT', '0'),
(150, 'Samoa, Tala', 'WST', 'WS$', 'WS$1,0.00', '0'),
(151, 'Central African CFA Franc', 'XAF', 'FCFA', '1,0.00 FCFA', '0'),
(152, 'East Caribbean Dollar', 'XCD', '$', '$1,0.00', '0'),
(153, 'West African CFA Franc', 'XOF', 'FCFA', '1,0.00 FCFA', '0'),
(154, 'CFP Franc', 'XPF', 'F', '1,0.00F', '0'),
(155, 'Yemeni Rial', 'YER', '﷼', '﷼ 1,0.00', '0'),
(156, 'South Africa, Rand', 'ZAR', 'R', 'R 1,0.00', '0'),
(157, 'Zambia Kwacha', 'ZMW', 'ZK', 'ZK1,0.00', '0'),
(158, 'Zimbabwean dollar', 'ZWL', '$', '$1,0.00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`value`)),
  `locked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `created_at`, `updated_at`, `key`, `display_name`, `value`, `locked`) VALUES
(1, '2023-03-24 04:25:05', '2023-03-24 04:25:05', 'shop_name', 'Store name', '\"UNI-Food Hub\"', 1),
(2, '2023-03-24 04:25:05', '2023-03-24 04:25:05', 'shop_email', 'Store email', '\"Unuavworhoakpevwe@gmail.com\"', 1),
(3, '2023-03-24 04:25:05', '2023-03-24 04:25:05', 'shop_about', 'Store description', '\"<div>&nbsp;<\\/div><div>With an array of food and drink available on campus, you can use the Uni Food Hub app to access it all at the click of a button.<br><br><\\/div><div>You can:<br><br><\\/div><ul><li><ul><li>click, collect, and refuel on campus<\\/li><li>boost your balance \\u2013 anyone can top up your account<\\/li><li>earn loyalty points every time you order<\\/li><li>&nbsp;<\\/li><\\/ul><\\/li><\\/ul>\"', 1),
(4, '2023-03-24 04:25:05', '2023-03-24 04:25:05', 'shop_country_id', 'Country', '158', 1),
(5, '2023-03-24 04:25:05', '2023-03-24 04:25:05', 'shop_currency_id', 'Store Currency', '93', 1),
(6, '2023-03-24 04:25:05', '2023-03-24 04:25:05', 'shop_street_address', 'Store street address', '\"Middlesex University Mauritius  Coastal Road, 90203, Uniciti, Mauritius  Telephone: +230 403 6400\"', 1),
(7, '2023-03-24 04:25:05', '2023-03-24 04:25:05', 'shop_zipcode', 'Zip Code', '\"90502\"', 1),
(8, '2023-03-24 04:25:05', '2023-03-24 04:25:05', 'shop_city', 'Store city', '\"Flic en Flac\"', 1),
(9, '2023-03-24 04:25:06', '2023-03-24 04:25:06', 'shop_phone_number', 'Store phone number', '\"0905486557\"', 1),
(10, '2023-03-24 04:25:06', '2023-03-24 04:25:06', 'shop_lng', 'Longitude', NULL, 1),
(11, '2023-03-24 04:25:06', '2023-03-24 04:25:06', 'shop_lat', 'Latitude', NULL, 1),
(12, '2023-03-24 04:25:06', '2023-03-24 04:25:06', 'shop_facebook_link', 'Facebook Page', NULL, 1),
(13, '2023-03-24 04:25:06', '2023-03-24 04:25:06', 'shop_instagram_link', 'Twitter account', NULL, 1),
(14, '2023-03-24 04:25:06', '2023-03-24 04:25:06', 'shop_twitter_link', 'Instagram account', NULL, 1),
(15, '2023-03-24 04:34:48', '2023-03-24 04:34:48', 'shop_legal_name', 'Store Legal name', '\"Middlesex University\"', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT 'male',
  `phone_number` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `avatar_type` varchar(255) NOT NULL DEFAULT 'gravatar',
  `avatar_location` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `opt_in` tinyint(1) NOT NULL DEFAULT 0,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `phone_number`, `birth_date`, `avatar_type`, `avatar_location`, `timezone`, `opt_in`, `last_login_at`, `last_login_ip`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jenkins', 'Akpevwe', 'male', NULL, NULL, 'gravatar', NULL, NULL, 0, '2023-03-13 09:10:42', '127.0.0.1', 'admin@admin.com', '2023-03-13 09:10:42', '$2y$10$l2V0MDezf5VJOonM98AYguRUEant0yVpB0JthY9kZ2Gy4d6ZEAKdu', NULL, NULL, NULL, '2023-03-13 09:10:42', '2023-03-13 09:10:42', NULL),
(3, 'Akpevwe', 'Unuavworho', 'male', NULL, NULL, 'gravatar', NULL, NULL, 0, '2023-03-14 07:03:01', '127.0.0.1', 'unuavworhoakpevwe@gmail.com', '2023-03-14 07:03:01', '$2y$10$2hngICCzoyztS4hSyJcymu.bnYVwGbk.GlX69yO0d3.9zOzNrHDXu', NULL, NULL, NULL, '2023-03-14 07:03:01', '2023-03-14 07:03:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_geolocation_history`
--

CREATE TABLE `users_geolocation_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ip_api` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`ip_api`)),
  `extreme_ip_lookup` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`extreme_ip_lookup`)),
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) NOT NULL,
  `street_address_plus` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('billing','shipping') NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_values_key_unique` (`key`),
  ADD KEY `attribute_values_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `attribute_value_product_attribute`
--
ALTER TABLE `attribute_value_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_value_product_attribute_attribute_value_id_index` (`attribute_value_id`),
  ADD KEY `attribute_value_product_attribute_product_attribute_id_index` (`product_attribute_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `carriers`
--
ALTER TABLE `carriers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carriers_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channels_slug_unique` (`slug`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `collections_slug_unique` (`slug`);

--
-- Indexes for table `collection_rules`
--
ALTER TABLE `collection_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collection_rules_collection_id_index` (`collection_id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_discountable_type_discountable_id_index` (`discountable_type`,`discountable_id`),
  ADD KEY `discountables_discount_id_index` (`discount_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discounts_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventories_code_unique` (`code`),
  ADD UNIQUE KEY `inventories_email_unique` (`email`),
  ADD KEY `inventories_country_id_index` (`country_id`);

--
-- Indexes for table `inventory_histories`
--
ALTER TABLE `inventory_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_histories_stockable_type_stockable_id_index` (`stockable_type`,`stockable_id`),
  ADD KEY `inventory_histories_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  ADD KEY `inventory_histories_inventory_id_index` (`inventory_id`),
  ADD KEY `inventory_histories_user_id_index` (`user_id`);

--
-- Indexes for table `legals`
--
ALTER TABLE `legals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `legals_title_unique` (`title`),
  ADD UNIQUE KEY `legals_slug_unique` (`slug`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_parent_order_id_index` (`parent_order_id`),
  ADD KEY `orders_payment_method_id_index` (`payment_method_id`),
  ADD KEY `orders_shipping_address_id_index` (`shipping_address_id`),
  ADD KEY `orders_user_id_index` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_type_product_id_index` (`product_type`,`product_id`),
  ADD KEY `order_items_sku_index` (`sku`),
  ADD KEY `order_items_order_id_index` (`order_id`);

--
-- Indexes for table `order_refunds`
--
ALTER TABLE `order_refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_refunds_order_id_index` (`order_id`),
  ADD KEY `order_refunds_user_id_index` (`user_id`);

--
-- Indexes for table `order_shippings`
--
ALTER TABLE `order_shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_shippings_order_id_index` (`order_id`),
  ADD KEY `order_shippings_carrier_id_index` (`carrier_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_slug_unique` (`slug`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD UNIQUE KEY `products_barcode_unique` (`barcode`),
  ADD KEY `products_parent_id_index` (`parent_id`),
  ADD KEY `products_brand_id_index` (`brand_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_index` (`product_id`),
  ADD KEY `product_attributes_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `product_has_relations`
--
ALTER TABLE `product_has_relations`
  ADD KEY `product_has_relations_productable_type_productable_id_index` (`productable_type`,`productable_id`),
  ADD KEY `product_has_relations_product_id_index` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewrateable_type_reviewrateable_id_index` (`reviewrateable_type`,`reviewrateable_id`),
  ADD KEY `reviews_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `system_countries`
--
ALTER TABLE `system_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_currencies`
--
ALTER TABLE `system_currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_currencies_code_index` (`code`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_settings_key_unique` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_geolocation_history`
--
ALTER TABLE `users_geolocation_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_geolocation_history_user_id_index` (`user_id`),
  ADD KEY `users_geolocation_history_order_id_index` (`order_id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_country_id_index` (`country_id`),
  ADD KEY `user_addresses_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_value_product_attribute`
--
ALTER TABLE `attribute_value_product_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carriers`
--
ALTER TABLE `carriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collection_rules`
--
ALTER TABLE `collection_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_histories`
--
ALTER TABLE `inventory_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legals`
--
ALTER TABLE `legals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_refunds`
--
ALTER TABLE `order_refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_shippings`
--
ALTER TABLE `order_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_countries`
--
ALTER TABLE `system_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `system_currencies`
--
ALTER TABLE `system_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_geolocation_history`
--
ALTER TABLE `users_geolocation_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value_product_attribute`
--
ALTER TABLE `attribute_value_product_attribute`
  ADD CONSTRAINT `attribute_value_product_attribute_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `attribute_value_product_attribute_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `collection_rules`
--
ALTER TABLE `collection_rules`
  ADD CONSTRAINT `collection_rules_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discountables`
--
ALTER TABLE `discountables`
  ADD CONSTRAINT `discountables_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `system_countries` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `inventory_histories`
--
ALTER TABLE `inventory_histories`
  ADD CONSTRAINT `inventory_histories_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventory_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_parent_order_id_foreign` FOREIGN KEY (`parent_order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_shipping_address_id_foreign` FOREIGN KEY (`shipping_address_id`) REFERENCES `user_addresses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_refunds`
--
ALTER TABLE `order_refunds`
  ADD CONSTRAINT `order_refunds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_refunds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_shippings`
--
ALTER TABLE `order_shippings`
  ADD CONSTRAINT `order_shippings_carrier_id_foreign` FOREIGN KEY (`carrier_id`) REFERENCES `carriers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_has_relations`
--
ALTER TABLE `product_has_relations`
  ADD CONSTRAINT `product_has_relations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_geolocation_history`
--
ALTER TABLE `users_geolocation_history`
  ADD CONSTRAINT `users_geolocation_history_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_geolocation_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `system_countries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"food_ordering\",\"table\":\"location\"},{\"db\":\"food_ordering\",\"table\":\"products\"},{\"db\":\"food_ordering\",\"table\":\"chatter_post\"},{\"db\":\"food_ordering\",\"table\":\"chatter_discussion\"},{\"db\":\"food_ordering\",\"table\":\"user_role\"},{\"db\":\"food_ordering\",\"table\":\"users\"},{\"db\":\"food_ordering\",\"table\":\"chatter_categories\"},{\"db\":\"food_ordering\",\"table\":\"posts\"},{\"db\":\"food_ordering\",\"table\":\"post_categories\"},{\"db\":\"food_ordering\",\"table\":\"post_comments\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('food_ordering', 'chatter_post', 'body');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'food_ordering', 'chatter_discussion', '{\"sorted_col\":\"`chatter_discussion`.`chatter_category_id` ASC\"}', '2023-04-25 11:46:17'),
('root', 'food_ordering', 'chatter_post', '{\"sorted_col\":\"`chatter_post`.`chatter_discussion_id` ASC\"}', '2023-04-25 11:47:28'),
('root', 'food_ordering', 'location', '{\"sorted_col\":\"`location`.`latituid` ASC\"}', '2023-04-27 21:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-04-30 11:21:44', '{\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
