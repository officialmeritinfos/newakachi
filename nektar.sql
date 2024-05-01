-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 11:54 AM
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
-- Database: `nektar`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `automatic_deposit_methods`
--

CREATE TABLE `automatic_deposit_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `merchantId` varchar(255) NOT NULL,
  `pubKey` varchar(255) NOT NULL,
  `secKey` varchar(255) NOT NULL,
  `charge` char(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coins`
--

CREATE TABLE `coins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `asset` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coins`
--

INSERT INTO `coins` (`id`, `name`, `asset`, `code`, `address`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Bitcoin', 'BTC', 'BTC', 'bc1qzaefkxmgh62usfmxhw20z9c5va7snj60rxa03w', 1, '2022-05-22 02:14:25', '2024-01-14 02:57:00'),
(5, 'USDT (TRC20)', 'TRX', 'TRX', 'TSx3Vz3t3EA7gkGEszBeswjymRTYNUmCvb', 1, '2022-09-12 11:58:00', '2024-02-04 03:04:29'),
(6, 'Ethereum', 'ETH', 'ETH', '0x4f28704a80DBA5987d69781207581C9D65Afc890', 1, '2022-09-12 11:59:52', '2024-01-14 02:58:09'),
(7, 'USDT (ERC20)', 'ETH', 'ETH', '0x4f28704a80DBA5987d69781207581C9D65Afc890', 1, '2023-12-16 14:43:44', '2024-02-04 03:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `cryptoAmount` varchar(100) DEFAULT NULL,
  `asset` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `transactionHash` varchar(255) DEFAULT NULL,
  `paymentRef` varchar(100) DEFAULT NULL,
  `paymentProof` varchar(255) DEFAULT NULL,
  `paymentMethod` int(11) DEFAULT NULL,
  `methodType` int(11) DEFAULT NULL,
  `timeOfPayment` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '2',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiration` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_verifications`
--

INSERT INTO `email_verifications` (`id`, `email`, `token`, `expiration`, `created_at`, `updated_at`) VALUES
(2, 'Andrew34', 'a41da2fa9be510454827d81ba9d0b72dc9582ce4', '1704194828', '2024-01-01 10:27:08', '2024-01-01 10:27:08'),
(3, 'Andrew34', '4e621de974b30a75ae3e694dcd6aed3c44030d1f', '1704195247', '2024-01-01 10:34:07', '2024-01-01 10:34:07'),
(4, 'Andrew34', '6334588f148ee1bb243cf70b3b63bfaf2585b6b1', '1704197799', '2024-01-01 11:16:39', '2024-01-01 11:16:39'),
(5, 'Andrew34', '0448ed1629dfbadcccb3294217144afc4060ea03', '1704198268', '2024-01-01 11:24:28', '2024-01-01 11:24:28'),
(6, 'Andrew34', 'bd7db3ecc7f9bfa6c04425ce2e8342b03f927ff9', '1704198444', '2024-01-01 11:27:24', '2024-01-01 11:27:24'),
(7, 'Andrew34', '9b925f74b3b76b391803c89f3c3b79368b178b6b', '1704202906', '2024-01-01 12:41:46', '2024-01-01 12:41:46'),
(8, 'Andrew34', '09f34477ec2a19410f79a4cdf3c295a67dcb23e1', '1704205026', '2024-01-01 13:17:06', '2024-01-01 13:17:06'),
(9, 'Andrew34', 'bc1a1219f94f4a4458f0351f3e358b21db817695', '1704206465', '2024-01-01 13:41:05', '2024-01-01 13:41:05'),
(10, 'Andrew34', 'cbe6e376aab20b80a0a470c3e1802f295279cd3a', '1704214791', '2024-01-01 15:59:51', '2024-01-01 15:59:51'),
(11, 'Andrew34', '61c37dfc369ff1a2902e05b6fdcb4dfa688eee37', '1704221655', '2024-01-01 17:54:15', '2024-01-01 17:54:15'),
(12, 'Andrew34', '98770e9b272d52b33f1e228af227f3ce7b73b856', '1704225215', '2024-01-01 18:53:35', '2024-01-01 18:53:35'),
(13, 'Andrew34', '748a76d1e3b9a9841e65078aa19f2da159dafa5d', '1704256427', '2024-01-02 03:33:47', '2024-01-02 03:33:47'),
(14, 'Andrew34', '3aa949b3f1f661683ba5d987b8444055902340ce', '1704306099', '2024-01-02 17:21:39', '2024-01-02 17:21:39'),
(15, 'Andrew34', '81d836016a8a56b58ce13c391850e4d71c4b1951', '1704643689', '2024-01-06 15:08:09', '2024-01-06 15:08:09');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fiat_deposit_methods`
--

CREATE TABLE `fiat_deposit_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(255) NOT NULL,
  `charge` char(30) NOT NULL,
  `details` char(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL,
  `email` char(150) NOT NULL,
  `phone` char(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `notification` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `emailVerification` int(11) NOT NULL DEFAULT 2,
  `twoFactor` int(11) NOT NULL DEFAULT 1,
  `registration` int(11) NOT NULL DEFAULT 1,
  `withdrawal` int(11) NOT NULL DEFAULT 1,
  `compounding` int(11) NOT NULL DEFAULT 2,
  `paymentMethod` int(11) NOT NULL DEFAULT 2,
  `codeExpiration` char(50) NOT NULL DEFAULT '24 Hours',
  `minDeposit` char(50) NOT NULL DEFAULT '50',
  `refBonus` char(255) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `currency` char(30) NOT NULL,
  `currencySign` char(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `name`, `email`, `phone`, `address`, `notification`, `description`, `emailVerification`, `twoFactor`, `registration`, `withdrawal`, `compounding`, `paymentMethod`, `codeExpiration`, `minDeposit`, `refBonus`, `logo`, `favicon`, `currency`, `currencySign`, `created_at`, `updated_at`) VALUES
(1, 'Haagon Limited', 'info@haagonlimited.com', '', 'SILVERSTREAM HOUSE 32 FITZROY STREET\nLONDON\nENGLAND W1T 6EB', 1, NULL, 1, 2, 1, 1, 2, 2, '24 Hours', '30', '5', 'haagonlimited.png', 'haagonlimited.png', 'SSP', '', '2022-05-16 15:54:10', '2022-05-16 15:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `roi` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `profitPerReturn` varchar(255) NOT NULL,
  `currentProfit` varchar(255) NOT NULL,
  `nextReturn` varchar(255) NOT NULL,
  `currentReturn` varchar(255) NOT NULL,
  `returnType` varchar(255) NOT NULL,
  `numberOfReturns` varchar(255) NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `package` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `asset` varchar(200) DEFAULT NULL,
  `wallet` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investments`
--

INSERT INTO `investments` (`id`, `user`, `amount`, `roi`, `reference`, `source`, `profitPerReturn`, `currentProfit`, `nextReturn`, `currentReturn`, `returnType`, `numberOfReturns`, `duration`, `package`, `service`, `asset`, `wallet`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '500', '2', 'OK1o76Q3k7jH2a9', 'balance', '10', '0', '1713503765', '0', '1', '7', '7 Days', 4, 1, 'TRX', 'TSx3Vz3t3EA7gkGEszBeswjymRTYNUmCvb', 2, NULL, '2024-04-18 04:16:05', '2024-04-18 04:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `investment_returns`
--

CREATE TABLE `investment_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `investment` int(11) NOT NULL,
  `amount` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(83, 'default', '{\"uuid\":\"45caeb71-cc59-4a08-ae1b-cabad79fc245\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653199227, 1653199227),
(84, 'default', '{\"uuid\":\"eefdcc0b-6802-4c32-b348-1d0ce5b7feb1\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:175:\\\"\\n                Your withdrawal request with reference Id <b>BxHO1Hwbit <\\/b>\\n                has been received and forwarded to you. This should reflect soonest.\\n            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:19:\\\"Withdrawal Approval\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653200428, 1653200428),
(85, 'default', '{\"uuid\":\"5d8fe169-47fb-4b23-9199-c0346ba727e0\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:170:\\\"\\n                Your withdrawal request with reference Id <b>BxHO1Hwbit <\\/b>\\n                has been rejected and account refunded of the requested amount.\\n            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:19:\\\"Withdrawal Rejected\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653200547, 1653200547),
(86, 'default', '{\"uuid\":\"40aef2d8-9048-4761-8060-60e5dcbcb7ff\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:83:\\\"\\n                Your Account balance has been credited with $<b>100 .\\n            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:13:\\\"Balance Topup\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653201677, 1653201677),
(87, 'default', '{\"uuid\":\"9e4fc5fc-3db3-467d-8dd8-4877d3486d21\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653225047, 1653225047),
(88, 'default', '{\"uuid\":\"6e37dbff-def2-4168-86a2-46252c19a015\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653245555, 1653245555),
(89, 'default', '{\"uuid\":\"32ab5846-3d15-4454-a66c-7e02f23a357e\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653307234, 1653307234),
(90, 'default', '{\"uuid\":\"121e2ae5-d7e9-4e92-9c8d-a27a86914266\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653408912, 1653408912),
(91, 'default', '{\"uuid\":\"1b7d1f2c-9edd-4dc3-9560-0bca7765a279\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653415234, 1653415234),
(92, 'default', '{\"uuid\":\"4e27a6d1-fe9a-4804-bb4a-c5f1cb20d2c0\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653514764, 1653514764),
(93, 'default', '{\"uuid\":\"3f744b29-5d34-489b-b13e-3d42925818ef\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653523229, 1653523229),
(94, 'default', '{\"uuid\":\"dd9f72ae-dae0-454a-8c5a-7629c55b5767\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653609650, 1653609650),
(95, 'default', '{\"uuid\":\"eda625cb-bdb8-4a18-82db-5f4259495801\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653701868, 1653701868),
(96, 'default', '{\"uuid\":\"d7a32f28-5b89-4cd1-a5af-5663219f1a15\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653704439, 1653704439),
(97, 'default', '{\"uuid\":\"2d33747b-6cce-443c-ac21-93a46ff81f60\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653717620, 1653717620),
(98, 'default', '{\"uuid\":\"a2c718fb-a44f-4d43-a870-f0bf2de09d44\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653804047, 1653804047),
(99, 'default', '{\"uuid\":\"c3ef5a17-4a55-410f-8c27-48ef441b9df8\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:475:\\\"\\n                                Your Investment with reference Id is <b>ICJTrfxDNomNhCs<\\/b> has returned\\n                                <b>$22500<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653847247, 1653847247),
(100, 'default', '{\"uuid\":\"da35d8fb-2547-4481-8ca1-be01e50f4891\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653912031, 1653912031),
(101, 'default', '{\"uuid\":\"038af14c-16a3-4df4-b8ec-8b84a24cb05c\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654020026, 1654020026),
(102, 'default', '{\"uuid\":\"b8eda0d5-73b9-474e-87cd-5c751811f3ce\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654031268, 1654031268),
(103, 'default', '{\"uuid\":\"18f82431-67b7-44c2-8c04-7da9b922330c\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:475:\\\"\\n                                Your Investment with reference Id is <b>N696VqSV4YQYIAZ<\\/b> has returned\\n                                <b>$15000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654084837, 1654084837),
(104, 'default', '{\"uuid\":\"5d573853-5845-4b58-a037-21ee5f45989f\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654101924, 1654101924),
(105, 'default', '{\"uuid\":\"2ee7529f-dc99-4713-84c9-c89afce82fe2\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654106431, 1654106431),
(106, 'default', '{\"uuid\":\"e0dd1ead-4562-468f-8622-bc736343fbca\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654119464, 1654119464),
(107, 'default', '{\"uuid\":\"6a5764ec-36d2-453d-8788-882068e4e19c\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654192849, 1654192849),
(108, 'default', '{\"uuid\":\"b9908b76-372b-49d0-b1b8-2044a6a46a59\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654276902, 1654276902),
(109, 'default', '{\"uuid\":\"2a8fe910-b73f-4481-9cab-42197db37560\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654300850, 1654300850),
(110, 'default', '{\"uuid\":\"02e6abbd-2cd5-41da-828e-0f8f7b86f160\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654408817, 1654408817),
(111, 'default', '{\"uuid\":\"33c9db7c-d60c-4d12-8d6e-de0789d503d5\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:475:\\\"\\n                                Your Investment with reference Id is <b>ICJTrfxDNomNhCs<\\/b> has returned\\n                                <b>$22500<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654473638, 1654473638),
(112, 'default', '{\"uuid\":\"81e9f0c8-7e9f-4844-a260-8fd1dad4e0ad\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654495245, 1654495245),
(113, 'default', '{\"uuid\":\"10ba1f9d-9623-41ed-b389-9389a3f5e85c\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654603203, 1654603203),
(114, 'default', '{\"uuid\":\"946362da-c992-4ba0-8c9a-fd9127671c3e\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654689643, 1654689643),
(115, 'default', '{\"uuid\":\"c90bae1a-b0f0-4bc9-bccf-28ba6e2300b2\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:475:\\\"\\n                                Your Investment with reference Id is <b>N696VqSV4YQYIAZ<\\/b> has returned\\n                                <b>$15000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654689643, 1654689643);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manual_deposit_methods`
--

CREATE TABLE `manual_deposit_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `asset` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `hasMemo` int(11) NOT NULL DEFAULT 2,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
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
(150, '2014_10_12_000000_create_users_table', 1),
(151, '2014_10_12_100000_create_password_resets_table', 1),
(152, '2019_08_19_000000_create_failed_jobs_table', 1),
(153, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(154, '2022_05_04_161831_create_general_settings_table', 1),
(155, '2022_05_04_161906_create_deposits_table', 1),
(156, '2022_05_04_161916_create_withdrawals_table', 1),
(157, '2022_05_04_161941_create_manual_deposit_methods_table', 1),
(158, '2022_05_04_161954_create_logins_table', 1),
(159, '2022_05_04_162007_create_activities_table', 1),
(160, '2022_05_04_162207_create_two_factors_table', 1),
(161, '2022_05_04_162235_create_investments_table', 1),
(162, '2022_05_04_162243_create_packages_table', 1),
(163, '2022_05_04_162254_create_return_types_table', 1),
(164, '2022_05_04_162321_create_automatic_deposit_methods_table', 1),
(165, '2022_05_04_164508_create_fiat_deposit_methods_table', 1),
(166, '2022_05_04_172626_create_faqs_table', 1),
(167, '2022_05_04_172635_create_abouts_table', 1),
(168, '2022_05_04_172646_create_mails_table', 1),
(169, '2022_05_04_172656_create_pages_table', 1),
(170, '2022_05_04_172704_create_services_table', 1),
(171, '2022_05_07_152340_create_email_verifications_table', 1),
(172, '2022_05_07_154520_create_jobs_table', 1),
(173, '2022_05_16_155540_create_coins_table', 1),
(174, '2022_05_17_093014_create_investment_returns_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `minAmount` varchar(100) NOT NULL,
  `maxAmount` varchar(100) DEFAULT NULL,
  `roi` varchar(50) NOT NULL,
  `numberOfReturns` varchar(50) NOT NULL,
  `returnType` varchar(100) NOT NULL,
  `Duration` varchar(100) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `isUnlimited` int(11) NOT NULL DEFAULT 2,
  `isVip` int(11) NOT NULL DEFAULT 2,
  `canLoan` int(11) NOT NULL DEFAULT 2,
  `withdrawEnd` int(11) NOT NULL DEFAULT 1,
  `referral` varchar(150) DEFAULT NULL,
  `reinvest` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `minAmount`, `maxAmount`, `roi`, `numberOfReturns`, `returnType`, `Duration`, `service`, `status`, `isUnlimited`, `isVip`, `canLoan`, `withdrawEnd`, `referral`, `reinvest`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'WIND ENERGY SHARES', '100', '9999', '1.5', '7', '1', '7 Days', NULL, 1, 2, 2, 2, 2, '10', 1, NULL, '2022-05-18 06:54:07', '2024-02-04 14:55:38'),
(5, 'HYDRO POWER SHARES', '10000', '99999', '3', '30', '1', '1 Month', NULL, 1, 2, 2, 2, 2, '10', 1, NULL, '2022-05-18 06:54:39', '2024-02-04 14:58:22'),
(6, 'SOLAR ENERGY SHARES', '100000', '1000000', '5', '60', '1', '2 Months', NULL, 1, 2, 2, 2, 2, '10', 1, NULL, '2022-05-18 06:55:08', '2024-02-04 14:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
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
  `expiration` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promos`
--

CREATE TABLE `promos` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `created_at` varchar(150) DEFAULT NULL,
  `updated_at` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_types`
--

CREATE TABLE `return_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_types`
--

INSERT INTO `return_types` (`id`, `name`, `duration`, `created_at`, `updated_at`) VALUES
(1, 'Daily', '24 Hours', NULL, NULL),
(2, 'Weekly', '7 Days', NULL, NULL),
(3, 'Monthly', '30 Days', NULL, NULL),
(4, 'Quarterly', '3 Months', NULL, NULL),
(5, 'Bi-annal', '6 Months', NULL, NULL),
(6, 'Yearly', '1 Year', NULL, NULL),
(7, '2 Days', '48 Hours', NULL, NULL),
(8, '3 Days', '72 Hours', NULL, NULL),
(9, '4 Days', '96 Hours', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `short` text DEFAULT NULL,
  `content` longtext NOT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `two_factors`
--

CREATE TABLE `two_factors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiration` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `userRef` char(50) NOT NULL,
  `profit` char(50) NOT NULL DEFAULT '0',
  `loan` varchar(150) NOT NULL DEFAULT '0',
  `balance` char(50) NOT NULL DEFAULT '0',
  `withdrawals` char(50) NOT NULL DEFAULT '0',
  `refBal` char(50) NOT NULL DEFAULT '0',
  `registrationIp` char(50) DEFAULT NULL,
  `phone` char(50) DEFAULT NULL,
  `country` char(100) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `photo` char(150) DEFAULT NULL,
  `canWithdraw` int(11) NOT NULL DEFAULT 1,
  `canCompound` int(11) NOT NULL DEFAULT 2,
  `canLoan` int(11) NOT NULL DEFAULT 2,
  `status` int(11) NOT NULL DEFAULT 1,
  `referral` int(11) DEFAULT NULL,
  `refBonus` char(50) DEFAULT NULL,
  `accountPin` varchar(255) DEFAULT NULL,
  `twoWay` int(11) NOT NULL DEFAULT 2,
  `is_admin` int(11) NOT NULL DEFAULT 2,
  `twoWayPassed` int(11) NOT NULL DEFAULT 2,
  `emailVerified` int(11) NOT NULL DEFAULT 2,
  `passwordRaw` varchar(150) DEFAULT NULL,
  `frontImage` varchar(150) DEFAULT NULL,
  `backImage` varchar(150) DEFAULT NULL,
  `docType` varchar(150) DEFAULT NULL,
  `docNumber` varchar(150) DEFAULT NULL,
  `selfie` varchar(150) DEFAULT NULL,
  `isVerified` int(11) NOT NULL DEFAULT 2,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `userRef`, `profit`, `loan`, `balance`, `withdrawals`, `refBal`, `registrationIp`, `phone`, `country`, `dateOfBirth`, `photo`, `canWithdraw`, `canCompound`, `canLoan`, `status`, `referral`, `refBonus`, `accountPin`, `twoWay`, `is_admin`, `twoWayPassed`, `emailVerified`, `passwordRaw`, `frontImage`, `backImage`, `docType`, `docNumber`, `selfie`, `isVerified`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Richard John', 'hisysadmin@haagonlimited.com', 'hisysadmin', NULL, '$2y$10$M3W7RgZAtMZSoh8yQJPukOO100JsD7/rq4yVnKzbJq8OjLNr4p0k6', '4IfqceV0gM', '0', '0', '0', '0', '0', '127.0.0.1', '2134360183', 'United States', '1987-03-21', NULL, 1, 2, 2, 1, 0, NULL, NULL, 2, 1, 1, 1, NULL, '1713418362_cpxNT18LaQEZkgKYgxPMgCItQdtmPbQgJCyoniK5.jpg', '1713418362_WBTiC09Iobu6k3lUK4Vi5a4YFrLBw7YtOjOWuusJ.png', 'Drivers License', '122333', '1713418362_11jfISwdF2GqUsGPTEk3pYR3bUEIrfZGDVaQ2DYo.png', 1, NULL, NULL, '2024-04-15 06:21:59', '2024-04-22 07:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `asset` varchar(100) NOT NULL,
  `cryptoAmount` varchar(100) DEFAULT NULL,
  `details` varchar(255) NOT NULL,
  `transHash` varchar(255) DEFAULT NULL,
  `paymentRef` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `automatic_deposit_methods`
--
ALTER TABLE `automatic_deposit_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_verifications_email_index` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fiat_deposit_methods`
--
ALTER TABLE `fiat_deposit_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment_returns`
--
ALTER TABLE `investment_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_deposit_methods`
--
ALTER TABLE `manual_deposit_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
-- Indexes for table `promos`
--
ALTER TABLE `promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_types`
--
ALTER TABLE `return_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `two_factors`
--
ALTER TABLE `two_factors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `two_factors_token_unique` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_userref_unique` (`userRef`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `automatic_deposit_methods`
--
ALTER TABLE `automatic_deposit_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coins`
--
ALTER TABLE `coins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fiat_deposit_methods`
--
ALTER TABLE `fiat_deposit_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investment_returns`
--
ALTER TABLE `investment_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manual_deposit_methods`
--
ALTER TABLE `manual_deposit_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promos`
--
ALTER TABLE `promos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `return_types`
--
ALTER TABLE `return_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `two_factors`
--
ALTER TABLE `two_factors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
