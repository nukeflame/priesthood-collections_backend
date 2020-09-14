-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2020 at 07:01 PM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_priesthood_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_region_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `firstname`, `lastname`, `mobile_no`, `other_mobile_no`, `delivery_address`, `state_region_id`, `city_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Peters', 'Doe', '+254700412227', NULL, 'Mombasa Road', '1', '2', 1, '2020-09-05 05:31:43', '2020-09-05 05:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(1023) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_fee` decimal(11,2) NOT NULL,
  `vat` int(11) DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mobile_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpesa_trans_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `payment_method`, `total_fee`, `vat`, `coupon_id`, `user_id`, `mobile_no`, `mpesa_trans_id`, `created_at`, `updated_at`) VALUES
(1, 'payOnline', '21703.00', 0, NULL, 1, '254700412127', NULL, '2020-08-29 13:51:34', '2020-08-29 13:51:55'),
(2, 'cashDelivery', '235.00', 0, NULL, 1, '254700412127', NULL, '2020-09-01 04:54:14', '2020-09-01 04:54:25'),
(3, 'payOnline', '470.00', 0, NULL, 1, '254700412127', NULL, '2020-09-03 13:55:42', '2020-09-03 14:17:53'),
(4, 'payOnline', '1.00', 0, NULL, 1, '254700412127', NULL, '2020-09-03 14:18:48', '2020-09-03 14:18:58'),
(5, 'payOnline', '468.00', 0, NULL, 1, '254700412127', NULL, '2020-09-03 14:24:36', '2020-09-03 19:56:57'),
(6, 'payOnline', '235.00', 0, NULL, 1, NULL, NULL, '2020-09-03 20:03:11', '2020-09-03 20:03:11'),
(7, 'payOnline', '235.00', 0, NULL, 1, NULL, NULL, '2020-09-03 20:16:29', '2020-09-03 20:16:29'),
(9, 'payOnline', '468.00', 0, NULL, 1, NULL, NULL, '2020-09-03 21:01:12', '2020-09-04 04:18:46'),
(10, 'payOnline', '1.00', 0, NULL, 1, NULL, NULL, '2020-09-04 04:30:16', '2020-09-04 04:30:16'),
(11, 'payOnline', '1.00', 0, NULL, 1, NULL, NULL, '2020-09-04 04:37:59', '2020-09-04 04:37:59'),
(12, 'payOnline', '1.00', 0, NULL, 1, NULL, NULL, '2020-09-04 04:39:45', '2020-09-04 04:39:45'),
(13, 'payOnline', '1.00', 0, NULL, 1, NULL, NULL, '2020-09-04 04:55:10', '2020-09-04 04:55:10'),
(14, 'payOnline', '235.00', 0, NULL, 1, NULL, NULL, '2020-09-04 21:06:59', '2020-09-04 21:06:59'),
(15, 'payOnline', '235.00', 0, NULL, 1, NULL, NULL, '2020-09-05 05:47:38', '2020-09-05 05:47:38'),
(16, 'payOnline', '234.00', 0, NULL, 1, NULL, NULL, '2020-09-05 05:54:12', '2020-09-05 05:54:12'),
(17, 'payOnline', '1.00', 0, NULL, 1, NULL, NULL, '2020-09-05 06:02:42', '2020-09-05 06:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_lists`
--

CREATE TABLE `cart_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProductName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` decimal(11,2) NOT NULL,
  `Description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `SKU` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `TotalPrice` decimal(11,2) DEFAULT NULL,
  `Media` json DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `processed` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_lists`
--

INSERT INTO `cart_lists` (`id`, `ProductName`, `Price`, `Description`, `SKU`, `Quantity`, `TotalPrice`, `Media`, `userId`, `processed`, `created_at`, `updated_at`) VALUES
(25, 'Long Sleeve Tshirt', '234.00', '<p>Product description</p>', 'PJ2674L4L', 2, '468.00', '[{\"id\": 3, \"name\": \"WxIJ5hqRI4ZIBEeeR3LR2kPogBiMIx8P.jpg\", \"pivot\": {\"media_id\": 3, \"product_id\": 1}, \"width\": 800, \"height\": 800, \"user_id\": 1, \"created_at\": \"2020-08-29T08:03:32.000000Z\", \"updated_at\": \"2020-08-29T08:03:32.000000Z\", \"product_thumb\": 0}, {\"id\": 2, \"name\": \"nhRwgqSsYhIZCwBfBT0lz6Z6GRiTFiI5.jpg\", \"pivot\": {\"media_id\": 2, \"product_id\": 1}, \"width\": 810, \"height\": 1080, \"user_id\": 1, \"created_at\": \"2020-08-29T07:59:53.000000Z\", \"updated_at\": \"2020-08-29T07:59:53.000000Z\", \"product_thumb\": 1}]', 1, 0, '2020-09-05 06:05:08', '2020-09-05 06:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `slug`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'Tshirts', NULL, 't-shirts', 2, '2020-05-12 09:58:19', '2020-05-12 09:58:19'),
(2, 'Clothes', NULL, 'clothes', 0, '2020-05-12 20:20:12', '2020-05-12 20:20:12'),
(3, 'Handbag', NULL, 'handbag', 0, '2020-05-12 20:58:47', '2020-05-12 20:58:47'),
(4, 'Jeans', NULL, 'jeans', 2, '2020-05-12 21:22:01', '2020-05-12 21:22:01'),
(5, 'Sweatshirts', NULL, 'sweatshirts', 0, '2020-05-12 21:22:27', '2020-05-12 21:22:27'),
(6, 'Trousers', NULL, 'trousers', 0, '2020-05-12 21:22:40', '2020-05-12 21:22:40'),
(7, 'Phones', NULL, 'phones', 8, '2020-05-12 21:23:07', '2020-05-12 21:23:07'),
(8, 'Accessories', NULL, 'accessories', 0, '2020-05-12 21:23:21', '2020-05-12 21:23:21'),
(9, 'Dell', 'Dell Product', 'dell', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `amount`, `currency`, `source`, `description`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, '235.00', 'kes', 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919', 'Test Charges', NULL, '2020-09-03 20:23:46', '2020-09-03 20:23:46'),
(2, '235.00', 'kes', '038458ML', 'Mpesa Transactions', NULL, '2020-09-03 20:37:23', '2020-09-03 20:37:23'),
(3, '235.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-03 20:43:34', '2020-09-03 20:43:34'),
(4, '235.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-03 20:43:39', '2020-09-03 20:43:39'),
(5, '235.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-03 20:57:26', '2020-09-03 20:57:26'),
(6, '2.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-03 21:01:15', '2020-09-03 21:01:15'),
(7, '2.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-03 21:02:18', '2020-09-03 21:02:18'),
(8, '2.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-04 04:18:58', '2020-09-04 04:18:58'),
(9, '1.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-04 04:30:25', '2020-09-04 04:30:25'),
(10, '1.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-04 04:38:02', '2020-09-04 04:38:02'),
(11, '1.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-04 04:39:49', '2020-09-04 04:39:49'),
(12, '1.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-04 04:55:13', '2020-09-04 04:55:13'),
(13, '235.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-04 21:07:01', '2020-09-04 21:07:01'),
(14, '235.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-05 05:47:48', '2020-09-05 05:47:48'),
(15, '234.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-05 05:54:28', '2020-09-05 05:54:28'),
(16, '1.00', 'kes', '038458ML', 'Mpesa Transaction', NULL, '2020-09-05 06:02:45', '2020-09-05 06:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mombasa', 'msa', NULL, NULL),
(2, 'Nairobi', 'nai', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'redis', 'default', '{\"uuid\":\"5fb8b846-984d-46b5-a819-0a2d9a15704b\",\"displayName\":\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:45:\\\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\\\":25:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"kenpetersm@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"},\"id\":\"1\",\"attempts\":0,\"type\":\"mail\",\"tags\":[\"App\\\\Models\\\\Order:1\"],\"pushedAt\":\"1599335981.0087\"}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"1kenpeters1@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials s124sm18665732wme.29 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials s124sm18665732wme.29 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials s124sm18665732wme.29 - gsmtp\r\n\". in /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(519): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'welcome\', Array, Object(Closure))\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#14 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#31 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 {main}', '2020-09-05 19:59:47'),
(2, 'redis', 'default', '{\"uuid\":\"558ab4cb-55a1-43f2-95cb-29e0b3544db1\",\"displayName\":\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:45:\\\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\\\":25:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"kenpetersm@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"},\"id\":\"2\",\"attempts\":0,\"type\":\"mail\",\"tags\":[\"App\\\\Models\\\\Order:1\"],\"pushedAt\":\"1599336739.5464\"}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"1kenpeters1@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d3sm12061532wrr.84 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d3sm12061532wrr.84 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d3sm12061532wrr.84 - gsmtp\r\n\". in /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(519): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'welcome\', Array, Object(Closure))\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#14 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#31 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 {main}', '2020-09-05 20:12:27'),
(3, 'redis', 'default', '{\"uuid\":\"695779da-8c29-4a51-b361-da510859aec0\",\"displayName\":\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:45:\\\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\\\":25:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"kenpetersm@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"},\"id\":\"4\",\"attempts\":0,\"type\":\"mail\",\"tags\":[\"App\\\\Models\\\\Order:1\"],\"pushedAt\":\"1599337478.1479\"}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"1kenpeters1@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials b11sm19523386wrt.38 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials b11sm19523386wrt.38 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials b11sm19523386wrt.38 - gsmtp\r\n\". in /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(519): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'welcome\', Array, Object(Closure))\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#14 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#31 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 {main}', '2020-09-05 20:24:45');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(4, 'redis', 'default', '{\"uuid\":\"38704280-daec-4d08-a54b-fcf2f5691360\",\"displayName\":\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:45:\\\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\\\":25:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:16:\\\"pknuek@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"},\"id\":\"3\",\"attempts\":0,\"type\":\"mail\",\"tags\":[\"App\\\\Models\\\\Order:1\"],\"pushedAt\":\"1599340142.1631\"}', 'InvalidArgumentException: View [view.name] not found. in /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php:137\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'view.name\', Array)\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Factory.php(131): Illuminate\\View\\FileViewFinder->find(\'view.name\')\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(382): Illuminate\\View\\Factory->make(\'view.name\', Array)\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'view.name\', Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'view.name\', NULL, NULL, Array)\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'view.name\', Array, Object(Closure))\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#14 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#31 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 {main}', '2020-09-05 21:09:02'),
(5, 'redis', 'default', '{\"uuid\":\"e4dcc801-1164-4267-80ab-e94a698979fb\",\"displayName\":\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:45:\\\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\\\":25:{s:3:\\\"otp\\\";i:5930991;s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"pkdnduek@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"},\"id\":\"5\",\"attempts\":0,\"type\":\"mail\",\"tags\":[],\"pushedAt\":\"1599342997.9895\"}', 'ErrorException: Undefined variable: user in /var/www/html/react/projects/priesthood-collections/backend/storage/framework/views/9cfe997c48a924446a57f1ab0d869b5460cce2ec.php:7\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/storage/framework/views/9cfe997c48a924446a57f1ab0d869b5460cce2ec.php(7): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/html/r...\', 7, Array)\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/PhpEngine.php(41): include(\'/var/www/html/r...\')\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'/var/www/html/r...\', Array)\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/facade/ignition/src/Views/Engines/CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(122): Illuminate\\View\\View->getContents()\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(91): Illuminate\\View\\View->renderContents()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(382): Illuminate\\View\\View->render()\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'emails.verifyUs...\', Array)\n#9 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.verifyUs...\', NULL, NULL, Array)\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'emails.verifyUs...\', Array, Object(Closure))\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#14 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#45 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 {main}\n\nNext Facade\\Ignition\\Exceptions\\ViewException: Undefined variable: user (View: /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php) in /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php:7\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php(7): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/html/r...\', 7, Array)\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/PhpEngine.php(41): include(\'/var/www/html/r...\')\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'/var/www/html/r...\', Array)\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/facade/ignition/src/Views/Engines/CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(122): Illuminate\\View\\View->getContents()\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(91): Illuminate\\View\\View->renderContents()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(382): Illuminate\\View\\View->render()\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'emails.verifyUs...\', Array)\n#9 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.verifyUs...\', NULL, NULL, Array)\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'emails.verifyUs...\', Array, Object(Closure))\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#14 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#45 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 {main}', '2020-09-05 21:56:47');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(6, 'redis', 'default', '{\"uuid\":\"7d3fdd11-abec-49b2-abf0-2d41b6687732\",\"displayName\":\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:45:\\\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\\\":25:{s:3:\\\"otp\\\";i:2155945;s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"kenneth@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"},\"id\":\"6\",\"attempts\":0,\"type\":\"mail\",\"tags\":[],\"pushedAt\":\"1599343143.9794\"}', 'ErrorException: Undefined variable: user in /var/www/html/react/projects/priesthood-collections/backend/storage/framework/views/9cfe997c48a924446a57f1ab0d869b5460cce2ec.php:7\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/storage/framework/views/9cfe997c48a924446a57f1ab0d869b5460cce2ec.php(7): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/html/r...\', 7, Array)\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/PhpEngine.php(41): include(\'/var/www/html/r...\')\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'/var/www/html/r...\', Array)\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/facade/ignition/src/Views/Engines/CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(122): Illuminate\\View\\View->getContents()\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(91): Illuminate\\View\\View->renderContents()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(382): Illuminate\\View\\View->render()\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'emails.verifyUs...\', Array)\n#9 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.verifyUs...\', NULL, NULL, Array)\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'emails.verifyUs...\', Array, Object(Closure))\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#14 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#45 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 {main}\n\nNext Facade\\Ignition\\Exceptions\\ViewException: Undefined variable: user (View: /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php) in /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php:7\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php(7): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/html/r...\', 7, Array)\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/PhpEngine.php(41): include(\'/var/www/html/r...\')\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'/var/www/html/r...\', Array)\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/facade/ignition/src/Views/Engines/CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(122): Illuminate\\View\\View->getContents()\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(91): Illuminate\\View\\View->renderContents()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(382): Illuminate\\View\\View->render()\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'emails.verifyUs...\', Array)\n#9 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.verifyUs...\', NULL, NULL, Array)\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'emails.verifyUs...\', Array, Object(Closure))\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#14 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#45 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 {main}', '2020-09-05 21:59:04'),
(7, 'redis', 'default', '{\"uuid\":\"a76bc35b-8e23-4fb1-a3c9-81603785a7f0\",\"displayName\":\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:45:\\\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\\\":25:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:16:\\\"pknuek@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"},\"id\":\"7\",\"attempts\":0,\"type\":\"mail\",\"tags\":[\"App\\\\User:15\"],\"pushedAt\":\"1599343758.0575\"}', 'ErrorException: Undefined variable: user in /var/www/html/react/projects/priesthood-collections/backend/storage/framework/views/9cfe997c48a924446a57f1ab0d869b5460cce2ec.php:7\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/storage/framework/views/9cfe997c48a924446a57f1ab0d869b5460cce2ec.php(7): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/html/r...\', 7, Array)\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/PhpEngine.php(41): include(\'/var/www/html/r...\')\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'/var/www/html/r...\', Array)\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/facade/ignition/src/Views/Engines/CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(122): Illuminate\\View\\View->getContents()\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(91): Illuminate\\View\\View->renderContents()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(382): Illuminate\\View\\View->render()\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'emails.verifyUs...\', Array)\n#9 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.verifyUs...\', NULL, NULL, Array)\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'emails.verifyUs...\', Array, Object(Closure))\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#14 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#45 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 {main}\n\nNext Facade\\Ignition\\Exceptions\\ViewException: Undefined variable: user (View: /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php) in /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php:7\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php(7): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/html/r...\', 7, Array)\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/PhpEngine.php(41): include(\'/var/www/html/r...\')\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'/var/www/html/r...\', Array)\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/facade/ignition/src/Views/Engines/CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(122): Illuminate\\View\\View->getContents()\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(91): Illuminate\\View\\View->renderContents()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(382): Illuminate\\View\\View->render()\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'emails.verifyUs...\', Array)\n#9 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.verifyUs...\', NULL, NULL, Array)\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'emails.verifyUs...\', Array, Object(Closure))\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#14 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#45 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 {main}', '2020-09-05 22:09:18');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(8, 'redis', 'default', '{\"uuid\":\"a76bc35b-8e23-4fb1-a3c9-81603785a7f0\",\"timeout\":null,\"tags\":[\"App\\\\User:15\"],\"id\":\"8\",\"data\":{\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:45:\\\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\\\":25:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:16:\\\"pknuek@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\",\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\"},\"displayName\":\"App\\\\Mail\\\\Verification\\\\CustomVerifyEmailQueued\",\"timeoutAt\":null,\"pushedAt\":\"1599343902.8328\",\"type\":\"job\",\"maxExceptions\":null,\"maxTries\":null,\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"delay\":null,\"attempts\":0,\"retry_of\":\"7\"}', 'ErrorException: Undefined variable: user in /var/www/html/react/projects/priesthood-collections/backend/storage/framework/views/9cfe997c48a924446a57f1ab0d869b5460cce2ec.php:7\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/storage/framework/views/9cfe997c48a924446a57f1ab0d869b5460cce2ec.php(7): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/html/r...\', 7, Array)\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/PhpEngine.php(41): include(\'/var/www/html/r...\')\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'/var/www/html/r...\', Array)\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/facade/ignition/src/Views/Engines/CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(122): Illuminate\\View\\View->getContents()\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(91): Illuminate\\View\\View->renderContents()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(382): Illuminate\\View\\View->render()\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'emails.verifyUs...\', Array)\n#9 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.verifyUs...\', NULL, NULL, Array)\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'emails.verifyUs...\', Array, Object(Closure))\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#14 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#45 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 {main}\n\nNext Facade\\Ignition\\Exceptions\\ViewException: Undefined variable: user (View: /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php) in /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php:7\nStack trace:\n#0 /var/www/html/react/projects/priesthood-collections/backend/resources/views/emails/verifyUser.blade.php(7): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/html/r...\', 7, Array)\n#1 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/PhpEngine.php(41): include(\'/var/www/html/r...\')\n#2 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/Engines/CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'/var/www/html/r...\', Array)\n#3 /var/www/html/react/projects/priesthood-collections/backend/vendor/facade/ignition/src/Views/Engines/CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#4 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'/var/www/html/r...\', Array)\n#5 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(122): Illuminate\\View\\View->getContents()\n#6 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/View/View.php(91): Illuminate\\View\\View->renderContents()\n#7 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(382): Illuminate\\View\\View->render()\n#8 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'emails.verifyUs...\', Array)\n#9 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.verifyUs...\', NULL, NULL, Array)\n#10 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(170): Illuminate\\Mail\\Mailer->send(\'emails.verifyUs...\', Array, Object(Closure))\n#11 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#12 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(171): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#13 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#14 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#15 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#16 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#21 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#30 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#35 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#37 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#38 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#39 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#40 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#41 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#42 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#43 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#45 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/react/projects/priesthood-collections/backend/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /var/www/html/react/projects/priesthood-collections/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 /var/www/html/react/projects/priesthood-collections/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 {main}', '2020-09-05 22:11:43');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `product_thumb` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `name`, `width`, `height`, `product_thumb`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'x6rlbXsw9XsFv11nbolNPoQgMIUellhu.jpg', 810, 1080, 0, 1, '2020-08-29 07:59:53', '2020-08-29 07:59:53'),
(2, 'nhRwgqSsYhIZCwBfBT0lz6Z6GRiTFiI5.jpg', 810, 1080, 1, 1, '2020-08-29 07:59:53', '2020-08-29 07:59:53'),
(3, 'WxIJ5hqRI4ZIBEeeR3LR2kPogBiMIx8P.jpg', 800, 800, 0, 1, '2020-08-29 08:03:32', '2020-08-29 08:03:32'),
(4, 'bHMoYWW6ErKwwmVtdu0PZERozlnqA6LT.jpg', 800, 800, 1, 1, '2020-08-29 08:03:33', '2020-08-29 08:03:33'),
(5, 'M17reL2UMOQZ5Y9qbVkYeIjENoSRx0I6.jpg', 800, 800, 0, 1, '2020-08-29 08:35:16', '2020-08-29 08:35:16'),
(6, 'wVhWpH80D4ZTZlOaA3OaFpNqi6POzz9V.jpg', 800, 800, 0, 1, '2020-08-29 08:35:16', '2020-08-29 08:35:16'),
(7, 'NqsSIGhu7TM4rOLgLizb9Sted1zRygS4.jpg', 800, 800, 1, 1, '2020-08-29 08:35:16', '2020-08-29 08:35:16');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_04_11_010002_create_audits_table', 1),
(10, '2020_04_17_211101_create_roles_table', 2),
(11, '2020_04_17_211518_create_user_roles_table', 2),
(12, '2020_04_23_011339_create_products_table', 3),
(13, '2020_04_25_044734_create_posts_table', 4),
(14, '2020_04_28_222328_create_media_table', 5),
(15, '2020_04_28_222450_create_product_media_table', 5),
(16, '2020_04_11_114929_create_orders_table', 6),
(18, '2020_05_11_102959_create_shippings_table', 7),
(19, '2020_05_12_095943_create_categories_table', 8),
(20, '2020_05_12_232705_create_product_category_table', 9),
(21, '2020_05_18_142908_create_cart_lists_table', 10),
(22, '2020_05_23_125550_create_addresses_table', 11),
(23, '2020_05_25_104916_create_state_regions_table', 12),
(24, '2020_05_25_105135_create_cities_table', 12),
(25, '2020_05_25_232353_create_billings_table', 13),
(26, '2020_05_29_131507_create_order_statuses_table', 14),
(27, '2020_05_29_163556_create_order_item_table', 15),
(28, '2020_05_31_031452_create_settings_table', 16),
(31, '2020_06_17_142147_create_mpesa_transactions_table', 17),
(32, '2020_06_22_083625_create_promo_products_table', 18),
(33, '2020_07_01_094208_create_promo_product_items_table', 19),
(34, '2020_08_27_005336_create_stocks_table', 20),
(35, '2020_08_27_084233_create_brands_table', 21),
(36, '2020_09_03_165856_create_charges_table', 22),
(37, '2020_09_06_003200_create_verify_users_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_transactions`
--

CREATE TABLE `mpesa_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `FirstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MiddleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhoneNumber` int(11) DEFAULT NULL,
  `TransactionDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MpesaReceiptNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TransAmount` decimal(11,2) DEFAULT NULL,
  `OrgAccountBalance` decimal(11,2) DEFAULT NULL,
  `ResultDesc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mpesa_transactions`
--

INSERT INTO `mpesa_transactions` (`id`, `FirstName`, `MiddleName`, `LastName`, `PhoneNumber`, `TransactionDate`, `MpesaReceiptNumber`, `TransAmount`, `OrgAccountBalance`, `ResultDesc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ken', 'Peters', 'Ken', 117576791, NULL, 'OFI11SPW9V', '12127.00', '117576791.00', 'The balance is insufficient for the transaction', NULL, '2020-06-18 23:12:06', '2020-06-18 23:12:06'),
(2, 'Ken', 'Peters', 'Ken', 117576791, '2020-06-19 02:20:16', 'OFI11SPW9V', '12127.00', '117576791.00', 'The balance is insufficient for the transaction', NULL, '2020-06-18 23:20:16', '2020-06-18 23:20:16'),
(3, NULL, NULL, NULL, NULL, '2020-06-19 02:21:46', NULL, NULL, NULL, 'The balance is insufficient for the transaction', NULL, '2020-06-18 23:21:46', '2020-06-18 23:21:46'),
(4, 'Ken', 'Peters', 'Ken', 117576791, '2020-07-06 11:57:44', '---', '0.00', '0.00', 'The balance is insufficient for the transaction', NULL, '2020-07-06 08:57:44', '2020-07-06 08:57:44'),
(5, 'Ken', 'Peters', 'Ken', 117576791, '2020-07-16 09:40:37', '---', '0.00', '0.00', 'The balance is insufficient for the transaction', NULL, '2020-07-16 06:40:37', '2020-07-16 06:40:37'),
(6, 'Ken', 'Peters', 'Ken', 117576791, '2020-08-07 06:58:55', '---', '0.00', '0.00', 'The balance is insufficient for the transaction', NULL, '2020-08-07 03:58:55', '2020-08-07 03:58:55'),
(7, 'Ken', 'Peters', 'Ken', 117576791, '2020-08-29 16:51:55', '---', '0.00', '0.00', 'The balance is insufficient for the transaction', NULL, '2020-08-29 13:51:55', '2020-08-29 13:51:55'),
(8, 'Ken', 'Peters', 'Ken', 117576791, '2020-09-01 07:54:25', '---', '0.00', '0.00', 'The balance is insufficient for the transaction', NULL, '2020-09-01 04:54:25', '2020-09-01 04:54:25'),
(9, 'Ken', 'Peters', 'Ken', 117576791, '2020-09-03 17:17:53', '---', '0.00', '0.00', 'The balance is insufficient for the transaction', NULL, '2020-09-03 14:17:53', '2020-09-03 14:17:53'),
(10, 'Ken', 'Peters', 'Ken', 117576791, '2020-09-03 17:18:58', '---', '0.00', '0.00', 'The balance is insufficient for the transaction', NULL, '2020-09-03 14:18:58', '2020-09-03 14:18:58'),
(11, 'Ken', 'Peters', 'Ken', 117576791, '2020-09-03 17:24:41', '---', '0.00', '0.00', 'The balance is insufficient for the transaction', NULL, '2020-09-03 14:24:41', '2020-09-03 14:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01e7a63dd466f9d7f9b25ab71f7022fee3ca1d1bf8a085dc074c35f791b2731913e9e5343a69fefc', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:55:04', '2020-05-28 00:55:04', '2021-05-28 03:55:04'),
('032343323944caf9f5798df8008aa4ce784ebca39015da584871a8b053f18bbb3a6323a3cf4d093f', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:59:57', '2020-05-28 00:59:57', '2021-05-28 03:59:57'),
('033a08e9eadb4b68a5e7308d7ec1870fd5e4ec011e1e1c5925dd8e9c46911298b7b0b480e0b04c2a', 2, 2, NULL, '[\"*\"]', 0, '2020-05-25 20:00:18', '2020-05-25 20:00:18', '2021-05-25 23:00:18'),
('0443f047e636cc1b51e6b8a84c7264b55e4391003c6a74240970548bbbcee504e5b0e84853dceddd', 1, 2, NULL, '[\"*\"]', 0, '2020-08-20 09:06:57', '2020-08-20 09:06:57', '2021-08-20 12:06:57'),
('055b6b469dc4bae53177b1003bc26b22d169ed7582aa282e62cbdf37a47fcfbf5c63d3685a43586a', 1, 2, NULL, '[\"*\"]', 0, '2020-06-05 18:31:34', '2020-06-05 18:31:34', '2021-06-05 21:31:34'),
('0600f30ca10120e1f4c9f77d1a83ff800f7794020da78a7aedae9c7f194f2560fe1c8e2bb1c03739', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 09:54:51', '2020-05-28 09:54:51', '2021-05-28 12:54:51'),
('065cccd2689338723e36e5c4aa69a1fbdc2f97aadb6049dec5b19e00d083de2aad76a5b36e0f9155', 61, 2, NULL, '[\"*\"]', 0, '2020-07-16 06:37:04', '2020-07-16 06:37:04', '2021-07-16 09:37:04'),
('0701a22afa7eb6688d62c11491be966cea7aca1fbaf47c7ffca17cc5e7f75007e23b3e97e2ea9aa0', 63, 2, NULL, '[\"*\"]', 0, '2020-06-08 14:25:24', '2020-06-08 14:25:24', '2021-06-08 17:25:24'),
('07568e9200326125174e5c8d64ceb94e454af1b77f63d6840419d8d34fb6f61ed9be465d5efe5400', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:51:42', '2020-05-27 23:51:42', '2021-05-28 02:51:42'),
('08e069681686b72f2da31ee376bdf2fa327eb83f07ce6843d3e19e60771f124ef8da042536713931', 1, 2, NULL, '[\"*\"]', 0, '2020-07-02 07:20:52', '2020-07-02 07:20:52', '2021-07-02 10:20:52'),
('09b77aa4be91f772d27b263484542ccff2f121a3a7a22b88f8229d05c1e73f51125c83e61fd59cef', 1, 2, NULL, '[\"*\"]', 0, '2020-08-19 06:09:09', '2020-08-19 06:09:09', '2021-08-19 09:09:09'),
('09cbc36a515821b5eeeaa892e683cc81f27435f2f7f7bfc441d24fd19d4022b21e1e3ddeda8bec22', 1, 2, NULL, '[\"*\"]', 0, '2020-08-11 04:34:16', '2020-08-11 04:34:16', '2021-08-11 07:34:16'),
('09fcfb2017a8b56be0eeb9ce8c2fd2f2c5761a01cebd3068583501efaef33b9bcbc686ba68899545', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:35:47', '2020-05-28 00:35:47', '2021-05-28 03:35:47'),
('0a029a2fce0ea4eaca972697dd01ef75c168e24d9dc0d29bc4fba7a6ce0411e01ce479c6a0548b4e', 1, 2, NULL, '[\"*\"]', 0, '2020-06-06 04:20:22', '2020-06-06 04:20:22', '2021-06-06 07:20:22'),
('0a28956086c4a1f1fb3aaaf3a82688dfd7a10797abb237b43351c6937ead8d3700ceee507b95b0de', 1, 2, NULL, '[\"*\"]', 0, '2020-07-07 08:56:33', '2020-07-07 08:56:33', '2021-07-07 11:56:33'),
('0aee524eaac98af1eb06dedd1cf103a972c3a07e576d8e98866ef00c7d97658febdcfe3af6e3aaee', 2, 2, NULL, '[\"*\"]', 0, '2020-06-24 02:57:17', '2020-06-24 02:57:17', '2021-06-24 05:57:17'),
('0af41219a4bbb46985f429e2aad08343a383f57f1d4e4277d364f7f476d9c6be7889b87ec3d7f759', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:02:38', '2020-05-28 01:02:38', '2021-05-28 04:02:38'),
('0d045c6f676b9ad923250b20b2a651cf0b3ab8251b5b659822601ade512ca2b36775a225ebfb96d0', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:54:30', '2020-05-28 00:54:30', '2021-05-28 03:54:30'),
('0d4b44628deaa9306ef173be8850036bbfe8e7511242857d971c3feec830d48772961c6da28c0199', 64, 1, 'PriestHood Password Grant Client', '[]', 0, '2020-06-11 14:12:24', '2020-06-11 14:12:24', '2021-06-11 17:12:24'),
('0d9bb0af6033038fb6121af07d28dac3f11ba4be852c841ab04a03b23f196bb15057e99f459afa87', 2, 2, NULL, '[\"*\"]', 0, '2020-05-21 07:36:43', '2020-05-21 07:36:43', '2021-05-21 10:36:43'),
('0e21756f572e51408307ae3b104eb59150a7f224665ca8464a869fd1174ac608fdd8d7b6b101272f', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 08:32:54', '2020-05-27 08:32:54', '2021-05-27 11:32:54'),
('0e4cdfad37f185c831782ca14509ad9d6584c370c5160865423d16ae8f4d6229f47c0072cb233bdc', 1, 2, NULL, '[\"*\"]', 0, '2020-06-05 04:58:00', '2020-06-05 04:58:00', '2021-06-05 07:58:00'),
('0eadaca5fd5d14bf457b9b0301119409305e9b610074914c2fc6308280079ec1c4a92655cc0dfcc7', 2, 2, NULL, '[\"*\"]', 0, '2020-05-19 12:21:43', '2020-05-19 12:21:43', '2021-05-19 15:21:43'),
('104e1d33bf6501626a5a3bbc79f1e472e807ae5b42fb3b88261dc96fcbbdc85c7f45a1a7c0c2dd50', 1, 2, NULL, '[\"*\"]', 0, '2020-09-04 21:45:46', '2020-09-04 21:45:46', '2021-09-05 00:45:46'),
('1138b115d5c2a0ecf4fc300f0e449e2a1e09d02b61b3ea063e56a603675413dad59fdd1690a5c691', 1, 2, NULL, '[\"*\"]', 0, '2020-09-04 04:18:00', '2020-09-04 04:18:00', '2021-09-04 07:18:00'),
('1163ceb4d7655402f93102fdfd3ea4d922743eabcf49c74acc6e840147fd15a927d823d6e06059de', 2, 2, NULL, '[\"*\"]', 0, '2020-06-15 06:34:58', '2020-06-15 06:34:58', '2021-06-15 09:34:58'),
('1440a3d3de099077595e9ee93392dd1a687d3de310d573d5c59f2b28ad79158452f8d8a16ebfb115', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:42:22', '2020-05-28 00:42:22', '2021-05-28 03:42:22'),
('18cee9021aa32f3a01c94e11fadc02dc541224e01d4e2dd433dd273a562873f6444c8561ce9972eb', 41, 1, 'PriestHood Password Grant Client', '[]', 0, '2020-05-19 12:20:51', '2020-05-19 12:20:51', '2021-05-19 15:20:51'),
('191e7bf980ba9731134fee19af1ff7550ed888995987c805168acc18a6e50a30d4ea453e49e973fd', 62, 2, NULL, '[\"*\"]', 0, '2020-06-17 09:24:11', '2020-06-17 09:24:11', '2021-06-17 12:24:11'),
('19361f7fdafeee5aab19eab7635622483a676e1dbf92017c19ede7ad83e92ad54bf5546fcf545d16', 1, 2, NULL, '[\"*\"]', 0, '2020-09-03 13:14:54', '2020-09-03 13:14:54', '2021-09-03 16:14:54'),
('19fecd097498d0f2d4958bd69d743dd2a5f1a6cb9dfc5de1920a8aa372b4cf5f9e2bac5d6384d7e7', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:35:10', '2020-05-28 00:35:10', '2021-05-28 03:35:10'),
('1b1897451031472824f9285955ff95adf28c22abf7a511a22c86c71a8267a5945125a3a0b9eee383', 1, 2, NULL, '[\"*\"]', 0, '2020-06-09 19:01:06', '2020-06-09 19:01:06', '2021-06-09 22:01:06'),
('1ce1679ce8d07913fdfac422bfc3f9672219e903866244d4a6ed06a196e23f294ac812fe132ca5b8', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:02:59', '2020-05-28 00:02:59', '2021-05-28 03:02:59'),
('1dad7f0964faf8d79b22017c5408717e5bc4ec35923114b406cf0aba5ca636f31a80125d3449657c', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:00:22', '2020-05-28 01:00:22', '2021-05-28 04:00:22'),
('1edd5df590565b3fdf66bd90b391f0501df0ca659414b18b8276d20e7f35920cbc295b10e8b5cc0d', 62, 2, NULL, '[\"*\"]', 0, '2020-08-24 10:17:55', '2020-08-24 10:17:55', '2021-08-24 13:17:55'),
('1fa85b27f37d3cb424358da9d7ef3b94d8bb90f5b5de136f263cab00d88a4bc8dd6a0247a9701199', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 22:54:35', '2020-05-27 22:54:35', '2021-05-28 01:54:35'),
('20f1249d1684932b647e0bb80f2fe64b1d0e524bc0433b8e52076f53d02c99bcab16d400ade0d2d7', 1, 2, NULL, '[\"*\"]', 0, '2020-06-16 03:38:38', '2020-06-16 03:38:38', '2021-06-16 06:38:38'),
('2103926a976901e54f0334a77c1f491e8721c6471a54e3a26073bb2641226fee244e52e0767db7d1', 1, 2, NULL, '[\"*\"]', 0, '2020-06-10 05:55:54', '2020-06-10 05:55:54', '2021-06-10 08:55:54'),
('218ffe6df5ba5e6c7a1be197e1ef46a9de210e9fbe5cba3491f648028ada78199f2e29c595443d64', 2, 2, NULL, '[\"*\"]', 0, '2020-06-24 08:54:08', '2020-06-24 08:54:08', '2021-06-24 11:54:08'),
('23b4ee0a1ea4c9e8942bddc54867d1ce0e7f2b96c7a3452d12a4e74682b55c8fcc3f5004c59543f0', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:05:40', '2020-05-28 01:05:40', '2021-05-28 04:05:40'),
('23f8ae1bbc544ee3364c0614cb53ac6ee6a4e1921b9a25ed5eceaabc61311baca418b348642af8a7', 1, 2, NULL, '[\"*\"]', 0, '2020-05-21 05:40:09', '2020-05-21 05:40:09', '2021-05-21 08:40:09'),
('24386f60609251916dcbc9dde701edf0bd96c0eb7e940d28c0a8b24081ffce216bd018d854d2a0ce', 1, 2, NULL, '[\"*\"]', 0, '2020-05-30 21:28:40', '2020-05-30 21:28:40', '2021-05-31 00:28:40'),
('2491b55eab048843322f10abc1fe7315c5a61f6ebff4cfec206742327da3ed8033ae6a42a8a1d2a0', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:32:50', '2020-05-28 00:32:50', '2021-05-28 03:32:50'),
('253f05d9ce7b05d2dadbf939a307891f482b8bac932e89746fd1fd7b89e18550b1fbec2d549cd69b', 2, 2, NULL, '[\"*\"]', 0, '2020-05-30 18:09:56', '2020-05-30 18:09:56', '2021-05-30 21:09:56'),
('260625ca6554cf15bd514f9b740642551beb5cd8b18351ffcbb9aaeb2b1b0039dfa14702b88b35ec', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:10:32', '2020-05-28 00:10:32', '2021-05-28 03:10:32'),
('26fe3875821cdbd049c1158e19a52701a02417ed62e7495b73f7fd102444f2474db1bb15f3b74535', 1, 2, NULL, '[\"*\"]', 0, '2020-08-24 14:51:46', '2020-08-24 14:51:46', '2021-08-24 17:51:46'),
('288b728f339c6a6fb582c4a1e31011e9a9cf9b52f26b96b875902aa674d10eb6b6d7e82c273bad97', 62, 2, NULL, '[\"*\"]', 0, '2020-08-24 09:02:46', '2020-08-24 09:02:46', '2021-08-24 12:02:46'),
('2b36a9bf49190103d319aec1c6521d53f731acd88c428a1ecfbad0c2e5bb4afe69a7cb7271cded25', 1, 2, NULL, '[\"*\"]', 0, '2020-08-15 05:41:59', '2020-08-15 05:41:59', '2021-08-15 08:41:59'),
('2b7198aea9f5aeaafe07fe615f8625b99a09b0c48d7eb06d377c261ec30fe3fa5c1e77fcf22f11c2', 1, 2, NULL, '[\"*\"]', 0, '2020-05-31 09:35:14', '2020-05-31 09:35:14', '2021-05-31 12:35:14'),
('2e0a7745686fee6afb1a0fb29953cbab49583c0cc760a9d3e58967b284a885e3f50f4930e8cd836d', 1, 2, NULL, '[\"*\"]', 0, '2020-07-16 05:54:03', '2020-07-16 05:54:03', '2021-07-16 08:54:03'),
('2ed38913344ea18c706ab1beba6ee1c7e58ab2e896298cdfc992f82b78ed0809294b783ef23585b7', 1, 2, NULL, '[\"*\"]', 0, '2020-05-28 11:08:40', '2020-05-28 11:08:40', '2021-05-28 14:08:40'),
('2f1222f1e950c7819db1bcb16d812446d13744eebb9c994c79974ff1d6ec24c5b677801c58ac4a6f', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 11:08:02', '2020-05-28 11:08:02', '2021-05-28 14:08:02'),
('30b03b0b777641cdccc5079cafd3a2f6da703787d2090673d5c797f362e69ab215e8d14257612668', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:00:33', '2020-05-28 00:00:33', '2021-05-28 03:00:33'),
('31391c5b518afa0303dca5ce82b3bb666ea09c9bdf60786835d898d85ab82ea8966c5f8002a4e12d', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:47:01', '2020-05-27 23:47:01', '2021-05-28 02:47:01'),
('3214181e4c3dab404e67ce02d972bd2b444ba3cbd54bbc3ee7a9badeecc0a39aaaf2d1b21097d9e7', 2, 2, NULL, '[\"*\"]', 0, '2020-06-09 19:10:04', '2020-06-09 19:10:04', '2021-06-09 22:10:04'),
('32d151746f1e174033206ed4e63e1da79e89863f9d6a44876432a75b2b6429fa7461d91fdd3652ec', 2, 2, NULL, '[\"*\"]', 0, '2020-05-29 07:31:53', '2020-05-29 07:31:53', '2021-05-29 10:31:53'),
('332e014ec161429a2cc6a139eb21ad860de285774b3706a4160605d06bc20ab9cd922259e5605c43', 62, 2, NULL, '[\"*\"]', 0, '2020-08-25 21:19:27', '2020-08-25 21:19:27', '2021-08-26 00:19:27'),
('380fca70f5c509145a5a2a54e0c6602784e433218e80fc1cb024e6f3ca32400bd5bd47c8ab0e8042', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:31:59', '2020-05-28 00:31:59', '2021-05-28 03:31:59'),
('388d442fc6b3d38fb4250d7c4e796d5f5e5f8a72d6c83012dac10eac856ef359861173695453f6af', 1, 2, NULL, '[\"*\"]', 0, '2020-06-19 07:44:49', '2020-06-19 07:44:49', '2021-06-19 10:44:49'),
('38bed9e3e731d7d11b356e411cb14f2515f73832a1e5ee7470c578366b075e3c68b06a19627de791', 1, 2, NULL, '[\"*\"]', 0, '2020-07-06 08:44:02', '2020-07-06 08:44:02', '2021-07-06 11:44:02'),
('398568a183cfb311cdc3db9a83a4584969fdb05ef96ea93962ce8c5379756c4259c71617bc5f4168', 2, 2, NULL, '[\"*\"]', 0, '2020-08-10 13:12:22', '2020-08-10 13:12:22', '2021-08-10 16:12:22'),
('3acc6c5a9a47c148bb5e14debc51b025fe865405bbb78d0903da74699800bbf3951a1d1a17fc5590', 1, 2, NULL, '[\"*\"]', 0, '2020-06-18 04:36:49', '2020-06-18 04:36:49', '2021-06-18 07:36:49'),
('3b91cd02d7c58d97341d4ddb696f685a3a44a2b4887b3e09defd9d587473ba740b377048bea928d0', 1, 2, NULL, '[\"*\"]', 0, '2020-08-24 08:04:27', '2020-08-24 08:04:27', '2021-08-24 11:04:27'),
('3bfa3890af286e986fcf0249eacf46aabdecc04a1e8ff506418515ddf20ad251d18dd44f3700fcab', 1, 2, NULL, '[\"*\"]', 0, '2020-06-16 03:46:06', '2020-06-16 03:46:06', '2021-06-16 06:46:06'),
('3c5bf34632eb06294ef112f375864763e6ae23d056251389a09805b36be16ebff13aacf2230db2ff', 1, 2, NULL, '[\"*\"]', 0, '2020-08-13 04:41:38', '2020-08-13 04:41:38', '2021-08-13 07:41:38'),
('3d5f67f80f985a0a14ab536b9c339d509f960410169c36fa1d40e805b43a3c1ddd08ca2a32f21fa1', 1, 2, NULL, '[\"*\"]', 0, '2020-07-24 05:31:23', '2020-07-24 05:31:23', '2021-07-24 08:31:23'),
('3da3429c54e294a8bcb1c03775f1b8c912f22fa0d55fb2b133404304274fae69b266bcc3d89a6cb9', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:11:47', '2020-05-28 01:11:47', '2021-05-28 04:11:47'),
('3f08ef27ad7140edcfea58dbc3a156953bc386d6f11d3a90cfa9a6188294a027ac6b439090b3503d', 1, 2, NULL, '[\"*\"]', 0, '2020-08-14 03:34:41', '2020-08-14 03:34:41', '2021-08-14 06:34:41'),
('415f4b8595ec24f8605b0268c29b2345c990380a64584799e07d5751713ee56b8d5288cd2d643df4', 2, 2, NULL, '[\"*\"]', 0, '2020-06-04 05:16:59', '2020-06-04 05:16:59', '2021-06-04 08:16:59'),
('418f0b71fd97abcc03eac96dfac09a12ae27de228e361dcf64e32c68c2735dcfdda2a485ae79606d', 1, 2, NULL, '[\"*\"]', 0, '2020-07-08 10:24:59', '2020-07-08 10:24:59', '2021-07-08 13:24:59'),
('429e1f0b9d55217b567396c0902fc956372a30e84271556d75c19715642d95d3f65a41e04bc23461', 62, 2, NULL, '[\"*\"]', 0, '2020-09-04 21:31:24', '2020-09-04 21:31:24', '2021-09-05 00:31:24'),
('42feab9994f62f2ac0f50bb82015560b1cb5faa8d36851cb7d51005c1fcfca1c9d6dc23702443dd5', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:55:49', '2020-05-27 23:55:49', '2021-05-28 02:55:49'),
('45e6a5b47a4e619a945d2a27cbf4588388438827169c4fb460406282e959581217286e9ece7ac426', 1, 2, NULL, '[\"*\"]', 0, '2020-08-25 22:20:27', '2020-08-25 22:20:27', '2021-08-26 01:20:27'),
('4686597d3879b7479eed5f29becd144beb23be07c4f68b08a62a9fb521956462009e9c6475d141e1', 1, 2, NULL, '[\"*\"]', 0, '2020-07-27 03:18:23', '2020-07-27 03:18:23', '2021-07-27 06:18:23'),
('4aa855f12d81c40e3b83829b6fe41143b22dad127c97b77f9e5eda6e2f45de8248eb6defdd5c2342', 1, 2, NULL, '[\"*\"]', 0, '2020-06-15 06:49:22', '2020-06-15 06:49:22', '2021-06-15 09:49:22'),
('4af2170ca83f9676513293d9ad9ef89396ec2fc7c685f804237181f18295a6ea86c9051c4bd70be3', 2, 2, NULL, '[\"*\"]', 0, '2020-06-12 10:42:10', '2020-06-12 10:42:10', '2021-06-12 13:42:10'),
('4c07f87d55a2187c14375ef9b4eb0647fbd28bd263517ee0fb87b620fa4d818d260aec8e7162946c', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:16:34', '2020-05-28 00:16:34', '2021-05-28 03:16:34'),
('4c2cc7ca08822d33a4f71993900983da842852d3b862094788c268ac50257d220173a3ec7beb7898', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:16:49', '2020-05-28 00:16:49', '2021-05-28 03:16:49'),
('4c39986277ae3ff9942732223efe3f4f031330ab2a193edc4f9223ed8b46527b6f02e6b267778411', 60, 2, NULL, '[\"*\"]', 0, '2020-06-04 09:29:10', '2020-06-04 09:29:10', '2021-06-04 12:29:10'),
('4c7764c0811f5c1617d9a71cfcaf6cb212b31dd2b08ca8d895469d6f17630cb925caf2babfbc6084', 62, 2, NULL, '[\"*\"]', 0, '2020-08-24 15:06:06', '2020-08-24 15:06:06', '2021-08-24 18:06:06'),
('4d5141a0af181eb24f821eae643e43b80c9047cb2eb5822c339e375f33aaaa4a452a4048fe1ac5b8', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:30:32', '2020-05-27 23:30:32', '2021-05-28 02:30:32'),
('4df58496d1fd03f1caf674701cadc5ae35284415ca5662d53195c386152868193941b2bed62b4f78', 1, 2, NULL, '[\"*\"]', 0, '2020-05-29 08:12:41', '2020-05-29 08:12:41', '2021-05-29 11:12:41'),
('4edeac24403b36d0bee06703469d9743ca12474f77ccbac92a598b12b055f74d01b738a2b4f0cfee', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:22:54', '2020-05-28 01:22:54', '2021-05-28 04:22:54'),
('506fdb03fd1f1891cbf999060095e8ccb501a1f21938d97386f2e612422bcc9bf4c2e9db14ec6a4d', 1, 2, NULL, '[\"*\"]', 0, '2020-06-10 20:02:07', '2020-06-10 20:02:07', '2021-06-10 23:02:07'),
('52f1e08b8df3b9e83085e5f87c49553b01725017c21d26773cd88caab13bdbb580e49abceead4151', 1, 2, NULL, '[\"*\"]', 0, '2020-06-04 05:17:21', '2020-06-04 05:17:21', '2021-06-04 08:17:21'),
('56b81fcd83abadeda6aee65394b363cb198d731debea2fa7e5c0092c00f7d9db75e6b1cc64eba843', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:08:56', '2020-05-28 00:08:56', '2021-05-28 03:08:56'),
('573a57e82e33b2520aca1edbebb436b5484978ab3bc03a51427eb558485a2cdf180806025179b7ce', 1, 2, NULL, '[\"*\"]', 0, '2020-06-27 05:58:29', '2020-06-27 05:58:29', '2021-06-27 08:58:29'),
('59f996650b39192dfc8312ccf2a734655a667659d2ad911790bec070fc04a6e06a2e81c912eee9ec', 1, 2, NULL, '[\"*\"]', 0, '2020-08-07 04:11:17', '2020-08-07 04:11:17', '2021-08-07 07:11:17'),
('5a80c3d9cf5eebba8ca73bbc099fe14943bf5433f0f3db66bb29853b21421fe5e01a7baa6112e4ad', 66, 2, NULL, '[\"*\"]', 0, '2020-08-07 03:56:59', '2020-08-07 03:56:59', '2021-08-07 06:56:59'),
('5ba3114c61c0981d618808014596b94d92068cdfaa9040db3750e2ac3d5a65bf9a747231c56a8997', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:31:47', '2020-05-27 23:31:47', '2021-05-28 02:31:47'),
('5f7fed28405155baeedb72fd2b1fcc23db53302a230e342a350689afee18174bdb3b374ec6128eed', 68, 1, 'PriestHood Password Grant Client', '[]', 0, '2020-09-04 21:29:32', '2020-09-04 21:29:32', '2021-09-05 00:29:32'),
('612a1ffc2ac8f3faea601724da649b624bee2625de9c8c44b36b4964ab2b809cfd4491e3b49f1f5c', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:39:23', '2020-05-28 00:39:23', '2021-05-28 03:39:23'),
('616670dd40c5764c70f0ca49aa664fb0e9a5dc5b7a6c66ca604ed639ac69730ac018dec46ddce546', 1, 2, NULL, '[\"*\"]', 0, '2020-07-03 04:40:44', '2020-07-03 04:40:44', '2021-07-03 07:40:44'),
('61e7a86d07476f010d8c95d128ed71a4523f57d71468fc18c4273f3746961d3cdce5cce00cb927ed', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 06:54:07', '2020-05-27 06:54:07', '2021-05-27 09:54:07'),
('61e826cf630ac373bc8df43dd48f3b4be2b5b1b66fdb4cd46c42841c56558a336ddd220f9c56f563', 1, 2, NULL, '[\"*\"]', 0, '2020-05-24 10:11:03', '2020-05-24 10:11:03', '2021-05-24 13:11:03'),
('6230be3db3636558e0c070b997b08008f81b96b5ad33bd43707dc08716de37f3363c35543d1b8b01', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:38:56', '2020-05-27 23:38:56', '2021-05-28 02:38:56'),
('636934dead13f53ad2072c555f173e8333a2418899515419b06bbca9de69c73b2093c2934b366a12', 1, 2, NULL, '[\"*\"]', 0, '2020-06-22 05:43:56', '2020-06-22 05:43:56', '2021-06-22 08:43:56'),
('63f5f1c9df0eb89466b5e805be0662035d9ce404570e26ba0c95abb6205e9ad3e1e1057342815b83', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:34:40', '2020-05-27 23:34:40', '2021-05-28 02:34:40'),
('648e0d711a109c1b2dd562cdf8e0066b1e5ce03ba2a15d63270b625f2678e0aff0d43debd44e2adf', 1, 2, NULL, '[\"*\"]', 0, '2020-06-13 11:15:20', '2020-06-13 11:15:20', '2021-06-13 14:15:20'),
('64c25c0c75361b36b422f346f6a774faf7728385e3184f37778d1fe233188edffd0b83af6c913551', 62, 2, NULL, '[\"*\"]', 0, '2020-06-15 07:23:24', '2020-06-15 07:23:24', '2021-06-15 10:23:24'),
('65e2539655e5a45d0bc97512bdc447c7baa7f9fb8a61b403c65e968fe49fe6d0d15525ad648fcd6e', 2, 2, NULL, '[\"*\"]', 0, '2020-06-09 19:13:53', '2020-06-09 19:13:53', '2021-06-09 22:13:53'),
('66337ae16e19b0b5784c4968a68c8d079123739ae0207faa06b3b7d5f6cb604339c7c6dde4b7eeea', 1, 2, NULL, '[\"*\"]', 0, '2020-06-01 06:17:24', '2020-06-01 06:17:24', '2021-06-01 09:17:24'),
('679b644cb9e55b3651d074a16c5a154f7a905f088eaccefeb059aade52a0cd8eb2099e825295c7f0', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:22:31', '2020-05-28 01:22:31', '2021-05-28 04:22:31'),
('67e61b40488724e1a41c2e86db10ae8ba47be9d87779d1c59f8e1fed5bf96d8a95d4625a952f4151', 62, 2, NULL, '[\"*\"]', 0, '2020-08-25 05:43:09', '2020-08-25 05:43:09', '2021-08-25 08:43:09'),
('6ccc822dda30fe8b94b7947797ac808aa3ac4140b14329542f13b8f541254905ecd05f9986b35be7', 1, 2, NULL, '[\"*\"]', 0, '2020-06-21 20:52:52', '2020-06-21 20:52:52', '2021-06-21 23:52:52'),
('6d5266e4ce8e66b3ed55a0977321421dca3f29a2bb0444d9d8b54e07ef20ea5c3126cd65da608e5d', 1, 2, NULL, '[\"*\"]', 0, '2020-08-31 17:31:38', '2020-08-31 17:31:38', '2021-08-31 20:31:38'),
('6f52729d092da327614ca5aa9e9a19b525dfec4394d9991cffe0abaffabbebe5420b74be1e5cca01', 1, 2, NULL, '[\"*\"]', 0, '2020-07-21 06:13:23', '2020-07-21 06:13:23', '2021-07-21 09:13:23'),
('6fdba78dae83374bc0c14fb423d066acf3eb3844d630fec92f7be33cd37bbc8dce84f41c7ab43fa3', 1, 2, NULL, '[\"*\"]', 0, '2020-07-30 17:13:04', '2020-07-30 17:13:04', '2021-07-30 20:13:04'),
('7109994d80229648cd9609cb801735dd9b238a2117354fd13fc06e5e4390b9fb514b61cf8c1aba01', 1, 2, NULL, '[\"*\"]', 0, '2020-07-24 05:31:25', '2020-07-24 05:31:25', '2021-07-24 08:31:25'),
('7422ed82260062d6bb7cf5d209e45a7db7b603628d8bd7740826328c8f27df6b7aa732bc481132b6', 1, 2, NULL, '[\"*\"]', 0, '2020-08-25 12:29:38', '2020-08-25 12:29:38', '2021-08-25 15:29:38'),
('752d3da3a45f6f46a070b4ea5c5b33bf39a669e6ab92b3a348907b284a6edd62614a51ff5131ef95', 67, 1, 'PriestHood Password Grant Client', '[]', 0, '2020-08-24 15:05:49', '2020-08-24 15:05:49', '2021-08-24 18:05:49'),
('76cc3c9ac4b213cafeef093532479d89fe35500ac2933c6f3db487309f82a91f3e77c5da2fe79d00', 62, 2, NULL, '[\"*\"]', 0, '2020-09-01 04:55:59', '2020-09-01 04:55:59', '2021-09-01 07:55:59'),
('780199bc6337dc0da5ee4f3278ce6fad63651f8cd7f3467ad664b1c2bb892028d0d3d6793358f142', 1, 2, NULL, '[\"*\"]', 0, '2020-06-17 10:34:33', '2020-06-17 10:34:33', '2021-06-17 13:34:33'),
('78968386ec03ef829ac753f4bd7642ae38c4ba25de4443e639a7cd972d5008808c96642c502f863f', 2, 2, NULL, '[\"*\"]', 0, '2020-05-19 14:00:21', '2020-05-19 14:00:21', '2021-05-19 17:00:21'),
('794312f359c029d1018f98738305efaf0be5e4ef896acbfb579cd73b6462fbdb322d2805e0268eb4', 2, 2, NULL, '[\"*\"]', 0, '2020-05-19 13:59:16', '2020-05-19 13:59:16', '2021-05-19 16:59:16'),
('7b4c3bddc42c5401648a64c65f2e3c50cd90a31cc02811a39fb07b1460b6e645ed9f90ce715498ed', 1, 2, NULL, '[\"*\"]', 0, '2020-05-31 21:31:19', '2020-05-31 21:31:19', '2021-06-01 00:31:19'),
('7b827b0ede7bc9b5a771476d2980149c3b84c50d5d34581fa2633ac13c770f019587124bdb632921', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:51:46', '2020-05-28 00:51:46', '2021-05-28 03:51:46'),
('7c8f796a14f2fc9e85ca6c8e71d997bf612b77e24497bdc48b5c136737318e1f570241014ee0025d', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:44:24', '2020-05-28 01:44:24', '2021-05-28 04:44:24'),
('7ca0e2c83b349e2de96b476aea634994e60f3090ea90a6414a70cc73b13c7461777743eeb1cf96fc', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:44:33', '2020-05-27 23:44:33', '2021-05-28 02:44:33'),
('7cca3e92cce2413a23c862b7280a88c0e12b8481351140e291cb2f7c9176873aeddaa855ab933e83', 1, 2, NULL, '[\"*\"]', 0, '2020-08-02 09:37:41', '2020-08-02 09:37:41', '2021-08-02 12:37:41'),
('7d11ae3af8395d893a453a41c07df7c1d18986a52f4c61005d3c5e04df2d5eb1b00f7bebe8cecf6b', 2, 2, NULL, '[\"*\"]', 0, '2020-06-09 05:31:53', '2020-06-09 05:31:53', '2021-06-09 08:31:53'),
('7d24d49a6ead11324255454357142e909d664801f85b60bba6430b36b60ea171dceb0c122f1903ae', 2, 2, NULL, '[\"*\"]', 0, '2020-05-20 05:52:08', '2020-05-20 05:52:08', '2021-05-20 08:52:08'),
('7d6c052fb2c4ba0417ac00b7f7eb14a365de73e54bb3c602abdcdb198f0a235ae8aa96be23f16019', 1, 2, NULL, '[\"*\"]', 0, '2020-06-28 06:03:47', '2020-06-28 06:03:47', '2021-06-28 09:03:47'),
('7ea1cabf4036c12fd1588c1a8f49bde03926075b741f03a0b5fdbe68f212ddbe12910b42ed08e2f2', 2, 2, NULL, '[\"*\"]', 0, '2020-06-01 20:50:35', '2020-06-01 20:50:35', '2021-06-01 23:50:35'),
('8077ead1b508dbf62bc5b614efebe376cee460ec06d77b00c8142371f77105a8eb44a675a598159d', 1, 2, NULL, '[\"*\"]', 0, '2020-06-24 02:57:36', '2020-06-24 02:57:36', '2021-06-24 05:57:36'),
('8115f00803285423d783e4cbc30b6b9ab763da5fe79373c468447815ee9347c45c1e329cdb5db448', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:44:05', '2020-05-28 00:44:05', '2021-05-28 03:44:05'),
('822e3e59f9eec619d4047c3969ed4c081c63ab623ca50d5e246a2eda2b6cf7e01f372abe32318d15', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:42:39', '2020-05-27 23:42:39', '2021-05-28 02:42:39'),
('82d86b2ddfbaa89b4b32f54b133c49e949c4518f4e911b0ca712e0e88898b8d159884788eb3dda91', 1, 2, NULL, '[\"*\"]', 0, '2020-05-21 20:11:10', '2020-05-21 20:11:10', '2021-05-21 23:11:10'),
('8358d788aca763611362dfff4787b08dfbd2612f8b2322e9cc8820f7c973e868d98199872a69e20b', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:34:19', '2020-05-28 00:34:19', '2021-05-28 03:34:19'),
('83db42c3fb927facb67cacd543a50bcb603b4ff748b3154ab7cc9d7e71568a4bd0d036c7edb46d00', 1, 2, NULL, '[\"*\"]', 0, '2020-08-07 04:45:40', '2020-08-07 04:45:40', '2021-08-07 07:45:40'),
('84def7320b7f3772a1701f1c06c0e722ad24e6cb9dc71e5e6f82954c780fbca61dabd33066c1d5f6', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:12:53', '2020-05-28 00:12:53', '2021-05-28 03:12:53'),
('87fab891939d9c8a737268043e9ce8ff2d725b9ed31c8e816ebcf89cb4a03de0701db9751a054477', 1, 2, NULL, '[\"*\"]', 0, '2020-08-24 09:02:05', '2020-08-24 09:02:05', '2021-08-24 12:02:05'),
('888431a343b72597f19cd5af2c55f6f673ad13556ac8f6bf4269803bab4ebcb3d4bdf6c0a6625ff2', 1, 2, NULL, '[\"*\"]', 0, '2020-06-10 09:51:01', '2020-06-10 09:51:01', '2021-06-10 12:51:01'),
('890da28197ab9f7d362c72c39c4f334683012c8898cc56de16e1caad97407b0573d2303bf4f6b68c', 2, 2, NULL, '[\"*\"]', 0, '2020-05-24 10:09:49', '2020-05-24 10:09:49', '2021-05-24 13:09:49'),
('8a01d89832faf307bbff04f8309fed8b30d2cdd7f8335dd11c119b0471d24bf33d496ee267c5625e', 2, 2, NULL, '[\"*\"]', 0, '2020-06-12 11:41:51', '2020-06-12 11:41:51', '2021-06-12 14:41:51'),
('8c92938851d38188118c8896d283e24d9895da56ef54d75f512f2c01d836a287cabdd757942b365c', 2, 2, NULL, '[\"*\"]', 0, '2020-06-09 05:32:07', '2020-06-09 05:32:07', '2021-06-09 08:32:07'),
('8da7e3c94bec16c487a30524f9fd1cb1eefdba9f156876bd466af3a43af6b6b2554a7c7d21f61d3a', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:43:07', '2020-05-27 23:43:07', '2021-05-28 02:43:07'),
('8daa7ecead2a3062b81bd840b020094a472d6dc94ea676570eb0f289c4fcbf21c13849c7257a1cad', 1, 2, NULL, '[\"*\"]', 0, '2020-07-25 02:34:23', '2020-07-25 02:34:23', '2021-07-25 05:34:23'),
('8e0f4d9dd21a00f54976c56393e6126f25600a1906243020bde8ea81f0075cc41ae6a2491a308239', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:53:20', '2020-05-27 23:53:20', '2021-05-28 02:53:20'),
('8f862fc0f08155cf22d19bab6d26e9b2f9ae10bba60768eb4c71437a025702d2f17a66dd2ba9a854', 1, 2, NULL, '[\"*\"]', 0, '2020-06-26 10:10:30', '2020-06-26 10:10:30', '2021-06-26 13:10:30'),
('900b3d8b68f0e78b0904f1e1fdf5d9d5c42f5a2869b23a66886d72682a10f7a4dd83dc51faf7a3d5', 1, 2, NULL, '[\"*\"]', 0, '2020-07-04 05:16:13', '2020-07-04 05:16:13', '2021-07-04 08:16:13'),
('932d48e18ef7cb5e3a33ef15ef3d4d91d3c2e605c31e9553b13203004848dc077c62db3294b318eb', 1, 2, NULL, '[\"*\"]', 0, '2020-06-30 18:59:34', '2020-06-30 18:59:34', '2021-06-30 21:59:34'),
('93e92db7fa05b8e4711d4e5fa3040878ea23dc686d2b150591affafafba01d3655ac3595e4b07765', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:10:32', '2020-05-28 01:10:32', '2021-05-28 04:10:32'),
('949ebef51555f5374e5f336a7cbd8e100ee28282d6c5b2ab58168c52c316d69cad5d26ab4875ce82', 1, 2, NULL, '[\"*\"]', 0, '2020-09-04 21:06:45', '2020-09-04 21:06:45', '2021-09-05 00:06:45'),
('952ca059bb3377a131eb7de9fbb44986955b5cf9c5963e7c5f0690ecac162879498f4c5858ffe2d7', 2, 2, NULL, '[\"*\"]', 0, '2020-05-22 09:15:54', '2020-05-22 09:15:54', '2021-05-22 12:15:54'),
('96e1c0e8de3f3adcbcc3fdc4c2a59943ae0ad4bad586eb16fe89cbecc38b40ea99832c48faa4156d', 63, 1, 'PriestHood Password Grant Client', '[]', 0, '2020-06-08 14:17:11', '2020-06-08 14:17:11', '2021-06-08 17:17:11'),
('976a44fa1ad07baaea44920f147cb7681812ff6796924b79c5bee0a9d5adcf5736dde2a2dcde4951', 1, 2, NULL, '[\"*\"]', 0, '2020-08-27 15:49:28', '2020-08-27 15:49:28', '2021-08-27 18:49:28'),
('9820bfcc521d9aa161f40c022e2af025cd8f782bb54690c5a394e8aec10a5b7c77329e1114542d72', 39, 1, 'PriestHood Password Grant Client', '[]', 0, '2020-05-19 10:41:12', '2020-05-19 10:41:12', '2021-05-19 13:41:12'),
('99c3c7a11bd737b577c0086970269dc23f37772406a1d0df531877cde2646ae8c82eb98b12f1f5d8', 1, 2, NULL, '[\"*\"]', 0, '2020-09-03 09:58:49', '2020-09-03 09:58:49', '2021-09-03 12:58:49'),
('9ac3e9715f4cec85c71e7e1fad1b07e7e29538f3b1e42556173542a4877b81f41549be0bb96fe43a', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 19:41:13', '2020-05-27 19:41:13', '2021-05-27 22:41:13'),
('9ae95d1d568676f37b880ec4f3d7fffd26be031043f0b1c309b445a0fbb8e818c1d8990abb85d65e', 66, 1, 'PriestHood Password Grant Client', '[]', 0, '2020-08-07 03:56:25', '2020-08-07 03:56:25', '2021-08-07 06:56:25'),
('9afeb5ce296c50552dead4f768e6cb7b828a7ee3f23b7e7ac324d87e7ae6221dee46e05718e4d1d6', 1, 2, NULL, '[\"*\"]', 0, '2020-06-10 05:57:10', '2020-06-10 05:57:10', '2021-06-10 08:57:10'),
('9b7d5fe4388417a5ab7f2ef2fe8294bd71942dab6cd9b36d9ff1b85bac83741d627199302859093f', 2, 2, NULL, '[\"*\"]', 0, '2020-05-30 08:15:08', '2020-05-30 08:15:08', '2021-05-30 11:15:08'),
('9b9fa884791837a110ee93af6c54377b4f345584ea4a78b21bf791f9c835d3d998971c5c2d35cdaa', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 19:32:03', '2020-05-27 19:32:03', '2021-05-27 22:32:03'),
('9bd4d994ccbb3db058fca33bc70ff18ada4d605a49fbf4db908a45be4d65a5687fdf8e9c8b98e122', 2, 2, NULL, '[\"*\"]', 0, '2020-05-21 04:42:57', '2020-05-21 04:42:57', '2021-05-21 07:42:57'),
('9c834f54cf935449540c0fde9ac0c4e1a7150148b82045126b9d5162c44b48295308bd45799ec932', 1, 2, NULL, '[\"*\"]', 0, '2020-06-01 22:36:54', '2020-06-01 22:36:54', '2021-06-02 01:36:54'),
('9cbd2bf6cceadbb5f76433ca0ed9f1744d75dbc8274b0a402f5b84cc19553634ca6a5c9f63dd8064', 1, 2, NULL, '[\"*\"]', 0, '2020-06-11 07:11:12', '2020-06-11 07:11:12', '2021-06-11 10:11:12'),
('9cc455470e3821a557f74f7b5fde3fc04472a24d1810a35eb279de1ff803422de98df3687ddb2ade', 1, 2, NULL, '[\"*\"]', 0, '2020-06-23 13:55:27', '2020-06-23 13:55:27', '2021-06-23 16:55:27'),
('9d716ba43a0d8face7678155db1cfaba5bccd9b3720c71e02d1e11a7e33f3348eb3ac1ef3b0ee879', 1, 2, NULL, '[\"*\"]', 0, '2020-07-22 14:21:42', '2020-07-22 14:21:42', '2021-07-22 17:21:42'),
('9df493e8058c5d35a71e21b75e3fafb65893ac84248727ce050821f07bd43c3e5ad2a41cc7fa1134', 2, 2, NULL, '[\"*\"]', 0, '2020-05-24 07:33:59', '2020-05-24 07:33:59', '2021-05-24 10:33:59'),
('9e2e98ae3afdf083e58f50d681237bb82399ad72ab10fbe40bd5fecd1de92076131f3a80dedf470f', 2, 2, NULL, '[\"*\"]', 0, '2020-05-19 13:50:42', '2020-05-19 13:50:42', '2021-05-19 16:50:42'),
('a2a9cbaba1bd6a55996df83e58abacd495fc8f4a6396a479fc554e34c8cbc1c293c8d24e46b6f3cd', 1, 2, NULL, '[\"*\"]', 0, '2020-05-23 11:50:50', '2020-05-23 11:50:50', '2021-05-23 14:50:50'),
('a33cb96301442ccb92f1519fb75ec8aaafd69510e7507545d616b0e406f9bbf5452a6a594119196b', 1, 2, NULL, '[\"*\"]', 0, '2020-08-10 19:19:42', '2020-08-10 19:19:42', '2021-08-10 22:19:42'),
('a370a073677457032de12ddbd512ac31317494cd1a74d01188a2ad307baf52e07622462e1af9b801', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:58:55', '2020-05-27 23:58:55', '2021-05-28 02:58:55'),
('a3a24e1b54f35f09951d2470d9cae97fd3e2280b9a26ed64928311fb3a8b2a6a210a832249792a24', 2, 2, NULL, '[\"*\"]', 0, '2020-05-20 08:57:21', '2020-05-20 08:57:21', '2021-05-20 11:57:21'),
('a4c429e1defd9136cdca36252028a2ba12e925153ab74350a36994bd9be9aca4fb3fd038d94d32ab', 2, 2, NULL, '[\"*\"]', 0, '2020-06-03 04:43:12', '2020-06-03 04:43:12', '2021-06-03 07:43:12'),
('a623882e4ff8e795d8ada4300177d636bf3179a2cb3ae828b7ecb50035679d2d7d9b52e26bc41731', 1, 2, NULL, '[\"*\"]', 0, '2020-05-24 09:27:26', '2020-05-24 09:27:26', '2021-05-24 12:27:26'),
('a959bf1dc815ab924add1548944724d57f0398349e3bf80864669328b3453d18bec328f466a63268', 2, 2, NULL, '[\"*\"]', 0, '2020-05-24 10:10:21', '2020-05-24 10:10:21', '2021-05-24 13:10:21'),
('aa4b48ab7c06c06decb917dc7a02892ec0b5fd5593a4d235f8194724981d4f8600ee39e78f197523', 1, 2, NULL, '[\"*\"]', 0, '2020-06-14 03:11:20', '2020-06-14 03:11:20', '2021-06-14 06:11:20'),
('ab406b46df3fc28d1d529c85b4f419d73b653e5fe46bedd1902c6439cb37de269b202d57959fed25', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:01:27', '2020-05-28 00:01:27', '2021-05-28 03:01:27'),
('ab5ed40882cbee85499bb8b054b8dd9e21df455aae01eb6258ac49c17fd892aaf849a662de773741', 1, 2, NULL, '[\"*\"]', 0, '2020-05-21 07:37:49', '2020-05-21 07:37:49', '2021-05-21 10:37:49'),
('abc207d97c086b7ea5ca6b6c304786806d889a8f4d1957d6f61dfb2c1b827fa21b5161a436cf7de4', 2, 2, NULL, '[\"*\"]', 0, '2020-05-29 08:12:31', '2020-05-29 08:12:31', '2021-05-29 11:12:31'),
('adb182d83f4a8844346e8f6d6e381c9c5e884f6d1d345238e047cb275d28ce34b5f61242e182e5c1', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:05:57', '2020-05-28 01:05:57', '2021-05-28 04:05:57'),
('ae6181d0b776875b01ad1173ff29ca2c59b19ddd4c33a8a968f6084ee2167f9452416790a20f18d3', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:47:58', '2020-05-27 23:47:58', '2021-05-28 02:47:58'),
('af8d0e6ab1bdf2cda861ccc7faf9a78a362f14104dc00522237cacf30dbe574fe47e7b41ba1a856c', 1, 2, NULL, '[\"*\"]', 0, '2020-08-16 19:16:07', '2020-08-16 19:16:07', '2021-08-16 22:16:07'),
('b04a99573d684a6e6010245c9138e9abda64c941f0f4f7963058e55adddaf480e45c4d55ff47e484', 1, 2, NULL, '[\"*\"]', 0, '2020-08-26 16:40:35', '2020-08-26 16:40:35', '2021-08-26 19:40:35'),
('b2b607c718646d4bbf3bbce1e9947dc95177be57ae66beeec3b5054b299b5642f4a69a31d81ddff0', 2, 2, NULL, '[\"*\"]', 0, '2020-05-21 19:06:37', '2020-05-21 19:06:37', '2021-05-21 22:06:37'),
('b2fdffb82a030cf2956214b63e387bca8f9e6a38ce9a557a910ade6f0a4cc8003e322a4e2f95c965', 1, 2, NULL, '[\"*\"]', 0, '2020-06-29 06:05:42', '2020-06-29 06:05:42', '2021-06-29 09:05:42'),
('b30614af7d72d57394463d047fe9c9b73027a523ce89fdb1f67c6e5c5c78681388fba1c1f5512352', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 12:58:00', '2020-05-28 12:58:00', '2021-05-28 15:58:00'),
('b3ad5c9f2a97b4e4da7fa96e9307b4f9c47c89d3a4dce8fd0a2fc6b775dad5abf053a7212ef6bca6', 2, 2, NULL, '[\"*\"]', 0, '2020-05-23 09:14:39', '2020-05-23 09:14:39', '2021-05-23 12:14:39'),
('b48c1869b044af766fd92f71726c9d36c8e9a0a894e6b64eb3af6754acae7b4fc1d693302d128011', 62, 2, NULL, '[\"*\"]', 0, '2020-08-24 10:16:05', '2020-08-24 10:16:05', '2021-08-24 13:16:05'),
('b4f0348d588265cf73d2a64e59761692bf3cebf6b93e2d12895e1aa4967ee5050c2dd3b76295a428', 1, 2, NULL, '[\"*\"]', 0, '2020-08-24 10:14:01', '2020-08-24 10:14:01', '2021-08-24 13:14:01'),
('b5069ba787e017b104a0b8fd81f0b0dc3d10427411dcc7ba3783326214aafd8a1c543cde8f9117f7', 62, 2, NULL, '[\"*\"]', 0, '2020-08-24 09:03:18', '2020-08-24 09:03:18', '2021-08-24 12:03:18'),
('b713d5a12592ee2c6c2373984be5238c571818915e81d88a1204a186a767b851208d9e3b9092781b', 1, 2, NULL, '[\"*\"]', 0, '2020-06-11 13:24:37', '2020-06-11 13:24:37', '2021-06-11 16:24:37'),
('b9cc7eb7a5f2ddeb00609dc66105f043a0138b408678aff1a1e38ed221807d7d6a91e8aa4ca96ebe', 2, 2, NULL, '[\"*\"]', 0, '2020-05-21 20:40:49', '2020-05-21 20:40:49', '2021-05-21 23:40:49'),
('ba0dd52320d46d1ade3533051290a8ab10558b4260fa6820d0a26cc848cb7a32b8f6463676417cb5', 1, 2, NULL, '[\"*\"]', 0, '2020-06-17 09:23:29', '2020-06-17 09:23:29', '2021-06-17 12:23:29'),
('ba4ae7e81117335d3621573590e2fbf3a317be4ff9f9ff2c2b034d92452f756dfef7319bc57b7e96', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:45:01', '2020-05-27 23:45:01', '2021-05-28 02:45:01'),
('ba5a5bc7e215c237a473a31e771de37e9ca107064cc38459b4e088218b6321fdaa8fd26d080480fb', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:58:17', '2020-05-28 00:58:17', '2021-05-28 03:58:17'),
('ba83671de107cd834820353f3fc80705e40abf7fb3632c8c9afd33b0f0e20ea4de8a4f291eab4a79', 2, 2, NULL, '[\"*\"]', 0, '2020-05-24 10:09:00', '2020-05-24 10:09:00', '2021-05-24 13:09:00'),
('bafb0223d26717a17fa5ea96861d186c6e017448f63ba7050a0de0aede8ce39888e02f1209df7a80', 1, 2, NULL, '[\"*\"]', 0, '2020-06-01 11:59:19', '2020-06-01 11:59:19', '2021-06-01 14:59:19'),
('bb9cf058bf3552891741956d36cfeffc40155d63ae33959bce4b182e349eae43febceee4b02aced0', 2, 2, NULL, '[\"*\"]', 0, '2020-05-15 03:17:42', '2020-05-15 03:17:42', '2021-05-15 06:17:42'),
('bc0cae53906fc645662ef414723355098b6acdc948b768983b7f3fb76dbbd05b1a79e51e2f1765e0', 1, 2, NULL, '[\"*\"]', 0, '2020-06-24 08:55:08', '2020-06-24 08:55:08', '2021-06-24 11:55:08'),
('bcf1eab15e8adcf6776904718446755d6be416bd282b6013793be5e853828f2dd32dcc5eca01244d', 1, 2, NULL, '[\"*\"]', 0, '2020-07-17 19:52:30', '2020-07-17 19:52:30', '2021-07-17 22:52:30'),
('bfac4272ec9075406772f08427c67b2e46161d8ee64520116438d039df03a2408d58185706f2b61a', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:50:15', '2020-05-27 23:50:15', '2021-05-28 02:50:15'),
('c15cdec1f386ecfe9757ddb55292bfe45791daf210171fbae9b754cfe16c674e809127e31c1b2e46', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:33:17', '2020-05-28 00:33:17', '2021-05-28 03:33:17'),
('c18fd91120e3974f303cef2f03a06224a540afced7afa342c7b5e39b8b0606e97921aefeccfc2e6b', 2, 2, NULL, '[\"*\"]', 0, '2020-05-25 05:58:18', '2020-05-25 05:58:18', '2021-05-25 08:58:18'),
('c243efe1fec3e2e14f95f6f13399bb20a904fe48e214be6c15b746cc50f45e371afc94b40bdac5fc', 1, 2, NULL, '[\"*\"]', 0, '2020-06-09 19:14:04', '2020-06-09 19:14:04', '2021-06-09 22:14:04'),
('c43157657e5f0ce17060d7aaa5b9e4f31298c13c483c6fcf12c420c36c64f81c2798994d40a9c3b4', 1, 2, NULL, '[\"*\"]', 0, '2020-07-09 04:51:49', '2020-07-09 04:51:49', '2021-07-09 07:51:49'),
('c437321b08faa32991a9b504aa7b73b16ccfa84bb7e8eebff1c2c33c8256d5c9d1465e4912f60fb2', 2, 2, NULL, '[\"*\"]', 0, '2020-06-13 11:13:26', '2020-06-13 11:13:26', '2021-06-13 14:13:26'),
('c49fef93907ccf2152ee7db50d93fbec35ee489185aab55f8980276ee523a0e3133dd95f76587757', 1, 2, NULL, '[\"*\"]', 0, '2020-07-01 05:30:56', '2020-07-01 05:30:56', '2021-07-01 08:30:56'),
('c50423758a2938095536fe6b638b73b02954bb2a09048494338cd2869d219e67e291e745b07a0409', 1, 2, NULL, '[\"*\"]', 0, '2020-06-13 04:56:01', '2020-06-13 04:56:01', '2021-06-13 07:56:01'),
('c65f24c4a12607c450d807b5b25cfbc30f60472017b7ceb8808da3cf05fc2a9c41c24f18c7990fbb', 2, 2, NULL, '[\"*\"]', 0, '2020-05-19 14:01:29', '2020-05-19 14:01:29', '2021-05-19 17:01:29'),
('c70c3cc85644ca36b184ae34597a6ef7ba32357d51b90c473f8c7add507eee95e98ac0db7bfd23dd', 1, 2, NULL, '[\"*\"]', 0, '2020-05-27 06:54:24', '2020-05-27 06:54:24', '2021-05-27 09:54:24'),
('c710f7ff2f759207f24d684faa8613fe6de887b9c0cb7dd06ffbbc3d28515ea7fd0107e541d34cb4', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:03:32', '2020-05-28 00:03:32', '2021-05-28 03:03:32'),
('c87cd2f9149a816fce17506d2da93801b8b4baec04b7dfa8de4ad66569d278af2d457ddad5d05a63', 1, 2, NULL, '[\"*\"]', 0, '2020-08-30 18:55:05', '2020-08-30 18:55:05', '2021-08-30 21:55:05'),
('cb6a41044811d2bd342ef9189831d66175a7b1a455fb927f46383ab7213b7cd42ba95548f6ffe995', 1, 2, NULL, '[\"*\"]', 0, '2020-08-24 15:00:45', '2020-08-24 15:00:45', '2021-08-24 18:00:45'),
('cd81b7f89cd0fce9bc1b1bbaa4dc73008494152f198fd4bd3830ae1e18863a096384e6a52a9b7cc8', 68, 2, NULL, '[\"*\"]', 0, '2020-09-04 21:30:21', '2020-09-04 21:30:21', '2021-09-05 00:30:21'),
('ce375e5da7da0c878103cedb1db90a6b74e2cf362896d3b0c3fdc2f951b94ac83894633ec23c28e6', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:59:51', '2020-05-27 23:59:51', '2021-05-28 02:59:51'),
('ce68b74aab4442b6e0261f9f0ae0d9082b478027d2882d5295df8ba56a8f8cc2aabaf3815dd0a859', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 22:50:43', '2020-05-27 22:50:43', '2021-05-28 01:50:43'),
('d02d57ca3c081a8f7e1e0296ed0c51537f11cb02149c4fc41722bfcb34f7f56d419bba7021b3bed2', 40, 1, 'PriestHood Password Grant Client', '[]', 0, '2020-05-19 12:15:45', '2020-05-19 12:15:45', '2021-05-19 15:15:45'),
('d2292d31ad303715c2a5504b33389613e79f9842da0c82ae7b479c810587497a420afd203715577c', 1, 2, NULL, '[\"*\"]', 0, '2020-09-01 20:58:42', '2020-09-01 20:58:42', '2021-09-01 23:58:42'),
('d57e39fa1389040ce7901c9bde080e4eab85b9a781c27421aa8c04b1f10822c2b1e021c417fd9444', 1, 2, NULL, '[\"*\"]', 0, '2020-06-03 04:44:17', '2020-06-03 04:44:17', '2021-06-03 07:44:17'),
('d649e9dbd76b677eef6c2c65b0ef5ff7585cce8dc5642a30987d496d5ac58f4a9beb148c62dd71ff', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:01:39', '2020-05-28 01:01:39', '2021-05-28 04:01:39'),
('d69875d000ce77f9d3a489c1790b8265bcb1a7bf5e0567b50001f00138bd237b8cfa8716675bee9e', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:41:09', '2020-05-27 23:41:09', '2021-05-28 02:41:09'),
('d70b5ad0634d613f5abf938c895896ad988e1db62d4bd6bca4cbd2960a41e22e87777b22911d26b5', 2, 2, NULL, '[\"*\"]', 0, '2020-06-09 19:10:23', '2020-06-09 19:10:23', '2021-06-09 22:10:23'),
('d89ac83e72ca93f4295134a9a3c75543725988e492faa75d4af7c3d90decf2eaf79092761a5cf0da', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:41:49', '2020-05-28 00:41:49', '2021-05-28 03:41:49'),
('d8a89c37897c18d95d22e681beb036044a331779987966192b2fa80def60f440b07046a86571a0aa', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:18:02', '2020-05-28 00:18:02', '2021-05-28 03:18:02'),
('d8ea1fed7bba99cafd0856cc19582de43d98c86ff38e1e9c5926e0d29a8d61931dbdb6f7e1d47af4', 1, 2, NULL, '[\"*\"]', 0, '2020-06-09 05:36:27', '2020-06-09 05:36:27', '2021-06-09 08:36:27'),
('d9e4190048d7b3d66e5a030e1bea1b32ac47506c787b80c70f5089f6a0ca3024655118e423d87284', 1, 2, NULL, '[\"*\"]', 0, '2020-09-05 11:13:25', '2020-09-05 11:13:25', '2021-09-05 14:13:25'),
('db87aa750f9f715a7dbf8ece84aab72fecfe6f4358a74e6166a1b3e8641e25063c7e0afc0fd2b515', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 14:30:11', '2020-05-27 14:30:11', '2021-05-27 17:30:11'),
('db9689a565027db0316a192c4b743861683e69f00e334ffb2906597bb3a158ec1ba4d4c353b1ed4d', 1, 2, NULL, '[\"*\"]', 0, '2020-08-20 21:54:36', '2020-08-20 21:54:36', '2021-08-21 00:54:36'),
('df4d2bd4326cf4779421c31370d71a8ee142e83268ad54346848699309cbd3edc9594269aee88113', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:08:05', '2020-05-28 00:08:05', '2021-05-28 03:08:05'),
('e036c9d845844008441f3159eb00e6bd73f2fc3bba0f1ee6b0bc7ad49683c35f2af4abc19714ceb0', 1, 2, NULL, '[\"*\"]', 0, '2020-05-29 07:39:36', '2020-05-29 07:39:36', '2021-05-29 10:39:36'),
('e1df7a551760982d0faed207dbacbc1de52ba2ac4b963532038e3c2b474fe255bb2117921b920585', 1, 2, NULL, '[\"*\"]', 0, '2020-06-30 04:30:30', '2020-06-30 04:30:30', '2021-06-30 07:30:30'),
('e21e63ed7c4a0dd69c1bf49a5f427da103896b9ed712a560cf2f98611ac56dd40731262bbe10af13', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:56:49', '2020-05-27 23:56:49', '2021-05-28 02:56:49'),
('e3524f2daa0a19ee676f540e7c0e7771b5cb8a554e722477d5f29d6904cd878a506fb27041ff61aa', 1, 2, NULL, '[\"*\"]', 0, '2020-05-28 12:58:13', '2020-05-28 12:58:13', '2021-05-28 15:58:13'),
('e38361aa29afcd207c8aef08a417a107a366093925a85a0ac5ecf4b453ea14fb8f179d8b0b831ea9', 1, 2, NULL, '[\"*\"]', 0, '2020-06-18 19:45:14', '2020-06-18 19:45:14', '2021-06-18 22:45:14'),
('e3e3073a08d3aaaefdac4ef5468e1a754675d42491cc100c76a882c52f5e6d86098aa3f27e081b07', 1, 2, NULL, '[\"*\"]', 0, '2020-08-29 07:07:33', '2020-08-29 07:07:33', '2021-08-29 10:07:33'),
('e5bfd7aa3e741dc794d8ff08040843c2dfb279a1e2031b1b2fa7d965c8d1f6baad854efd9a81101b', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:05:00', '2020-05-28 01:05:00', '2021-05-28 04:05:00'),
('e65034ecaf99ad8520b6c6bbb67e23f82c0f12ddb91482c97231775aca36a254f39ce805ed407a28', 1, 2, NULL, '[\"*\"]', 0, '2020-05-28 09:59:37', '2020-05-28 09:59:37', '2021-05-28 12:59:37'),
('e6e742e1598fb6c054324174ae41fefb468deb2d2c0e944985d93e1d3ab972c6603ae1cf4f6f9341', 2, 2, NULL, '[\"*\"]', 0, '2020-06-17 09:22:51', '2020-06-17 09:22:51', '2021-06-17 12:22:51'),
('e743cddd8b76747f726838908a03558082c61fd265e37fd5fbfaec32dbc72e1e49d9a43ca7aeb074', 1, 2, NULL, '[\"*\"]', 0, '2020-06-20 19:28:45', '2020-06-20 19:28:45', '2021-06-20 22:28:45'),
('e84be435b72c7090cfc9c6340c23d280337efb58a32339f5ed855e93762be0c723ae45cb0e049df3', 1, 2, NULL, '[\"*\"]', 0, '2020-08-27 06:02:31', '2020-08-27 06:02:31', '2021-08-27 09:02:31'),
('e89aa0355049b7ff0cdd7e4888d3bc5844c0547a772045b7faccc3a8cbe1c2568e6fe053e367253f', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:44:47', '2020-05-28 00:44:47', '2021-05-28 03:44:47'),
('e8f3fe31d12adaecb23d3d873a5dc2787f34539d9c3bf1e0ff03006d96845879305350518719472a', 1, 2, NULL, '[\"*\"]', 0, '2020-06-07 10:25:22', '2020-06-07 10:25:22', '2021-06-07 13:25:22'),
('e95ef27c58781fe66e55fa14476c26977e4a42baf5aa0df9036e7a9e52c858e1b2ead5550800710b', 1, 2, NULL, '[\"*\"]', 0, '2020-06-01 20:51:18', '2020-06-01 20:51:18', '2021-06-01 23:51:18'),
('eaf7232476b0a960a41d075acd0dde9c7a63c892ccdb65a66ac9895e94a1535f08984413187c5b8f', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:36:57', '2020-05-27 23:36:57', '2021-05-28 02:36:57'),
('eb5596856281c42814c2f9576ebc7af82946d3714ec95f9de0b4992cfdc1a4dac14fcf0b87db3a20', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:46:36', '2020-05-28 01:46:36', '2021-05-28 04:46:36'),
('eb6bb74016261b154010dd102ea22a410115b8cca385e02f961f72916004c4b9600c5e34d0950a73', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:19:52', '2020-05-28 00:19:52', '2021-05-28 03:19:52'),
('ec9f342d51a4d748d4a36cf1db0a2808f7d0241bb4102a187b9eda54c0fa97767f1bf25b4a4ffd4b', 1, 2, NULL, '[\"*\"]', 0, '2020-06-13 09:17:00', '2020-06-13 09:17:00', '2021-06-13 12:17:00'),
('ecf8b0ebcce43b5b9c7a7c0f5384c5fdcc01e879eba0e21a894f08634fe5d99b9868d32df9e5ee89', 2, 2, NULL, '[\"*\"]', 0, '2020-05-21 07:24:36', '2020-05-21 07:24:36', '2021-05-21 10:24:36'),
('edcb50379795abfcbad99a4bbc39160015ef303b2055a591b663e326bb2413a8165322a42b7c1e00', 63, 2, NULL, '[\"*\"]', 0, '2020-06-08 14:22:11', '2020-06-08 14:22:11', '2021-06-08 17:22:11'),
('f015dbe71e4aa5076a2ed8464b44c2330c2b00382882bff7bac4e33dd58f2e7125655c695fa82d69', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:20:25', '2020-05-28 00:20:25', '2021-05-28 03:20:25'),
('f0481d594f3fb36abf5d4cc7c66aa25aac1d94f32b079dcc82100272bcc4846e9b437feb32f1fec5', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 23:52:32', '2020-05-27 23:52:32', '2021-05-28 02:52:32'),
('f07d630cc9d41b702ac84cf73c70236262bb2587d9ce596a2b03c42a565a2d9c8b600b912aa8c26e', 1, 2, NULL, '[\"*\"]', 0, '2020-07-07 11:42:36', '2020-07-07 11:42:36', '2021-07-07 14:42:36'),
('f2478dd61e78d1d93bf1e8cb5d2f5374399a4568da64b1556d76bde7c724ff9f34698bd1e07cb50c', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 00:46:54', '2020-05-28 00:46:54', '2021-05-28 03:46:54'),
('f2ac4cf70e5eb515ce4d05ad1d6712fbcc6379db62ff9b4aa662894b89dec32716e97b13031c4cff', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:19:47', '2020-05-28 01:19:47', '2021-05-28 04:19:47'),
('f2ecddab522c5f5460cabadcdd7f4fca91ecb0b64e0ca1529edd1811fe331a6e16b400c39aacf58e', 1, 2, NULL, '[\"*\"]', 0, '2020-06-30 04:29:57', '2020-06-30 04:29:57', '2021-06-30 07:29:57'),
('f45f458b2ff47edcc7f831997e1348d23c225a81cbad2d769677087a56ef5172d726af6ca3b5af56', 1, 2, NULL, '[\"*\"]', 0, '2020-06-02 07:45:08', '2020-06-02 07:45:08', '2021-06-02 10:45:08'),
('f58d905e94fc8319ac824f30569b2534127490f175fb169d51ca0d5615af90e9d5c590eeac1d9715', 2, 2, NULL, '[\"*\"]', 0, '2020-05-28 01:01:17', '2020-05-28 01:01:17', '2021-05-28 04:01:17'),
('f7096f573d188687468a5f8ddd66d3f128a2a12fd3e87227e0267dd8ba956d556b45d6f00a251fb4', 2, 2, NULL, '[\"*\"]', 0, '2020-05-27 18:58:11', '2020-05-27 18:58:11', '2021-05-27 21:58:11'),
('f7d5c3c64ff9e919b083cd9b1185b9663afb834e43155e4aefc144644f6678b33573161c42969438', 1, 2, NULL, '[\"*\"]', 0, '2020-06-25 13:21:56', '2020-06-25 13:21:56', '2021-06-25 16:21:56'),
('f9617aae040112027a00fc2fcb2ad176af4a1730dc130181c493e834bcc4e12150a242fea3365e1c', 1, 2, NULL, '[\"*\"]', 0, '2020-08-24 16:49:59', '2020-08-24 16:49:59', '2021-08-24 19:49:59'),
('f9beaf456c0d8ed76a7ef2f41cc32c923cd09e72ef4f9b9aae0074ddaebb3c1973e75a51a34deb78', 1, 2, NULL, '[\"*\"]', 0, '2020-09-01 04:53:20', '2020-09-01 04:53:20', '2021-09-01 07:53:20'),
('f9dfa42bc760cafaeb3c539a7fa0e9b57cba8f7181893fd6f79184dd1e4ccd334f7e115b5b3be332', 61, 2, NULL, '[\"*\"]', 0, '2020-06-15 08:47:29', '2020-06-15 08:47:29', '2021-06-15 11:47:29'),
('fbb99de2d507b8579d58bdd1c8e684353cd4e5e8699f53986cfe53ee0bb2db3fbce4959af3b95dc8', 1, 2, NULL, '[\"*\"]', 0, '2020-08-18 20:53:27', '2020-08-18 20:53:27', '2021-08-18 23:53:27'),
('fc6e071561200e74cce4f4683a867877dcba391631aff450b3276a6112b236be0ab974514ff3c279', 1, 2, NULL, '[\"*\"]', 0, '2020-08-04 18:41:48', '2020-08-04 18:41:48', '2021-08-04 21:41:48'),
('fd4a63f7fcab06c26e4f76b1e7723514dea2e7eb0044fd0b6d1d1e33e9a06195c2c7f1e25075d1f5', 62, 2, NULL, '[\"*\"]', 0, '2020-06-16 06:46:37', '2020-06-16 06:46:37', '2021-06-16 09:46:36'),
('fdc0fb443191b7c0392bae64498a86713aaf84c7bf6e90c131f75c99ff018bb54f70b13ebbfa4a2a', 63, 2, NULL, '[\"*\"]', 0, '2020-06-08 14:22:32', '2020-06-08 14:22:32', '2021-06-08 17:22:32'),
('fef9772c1b7927f60d84692b9b5888bb9b819be7bb358e511b7717f6c06fbbefbcaff9e0ca249694', 1, 2, NULL, '[\"*\"]', 0, '2020-06-16 13:01:56', '2020-06-16 13:01:56', '2021-06-16 16:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Priesthood Personal Access Client', '2TnDZlRLzVZug0VRHDSmo1EMK6NBkvfmVNMpN6i8', 'http://localhost', 1, 0, 0, '2020-04-17 14:59:42', '2020-04-17 14:59:42'),
(2, NULL, 'Priesthood Password Grant Client', 'fLKaxPUzlsbOYzooA4qypVbYjdaJ9Bq2m9q5lqun', 'http://localhost', 0, 1, 0, '2020-04-17 14:59:42', '2020-04-17 14:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-04-17 14:59:42', '2020-04-17 14:59:42');

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

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('009ee21f2c64846cecc5032f1d606e7d01a029b074d5c5cd62f36f1ecece4eba4cf63ae4f4e2e42c', '2b36a9bf49190103d319aec1c6521d53f731acd88c428a1ecfbad0c2e5bb4afe69a7cb7271cded25', 0, '2021-08-15 08:41:59'),
('01213c70e25331bb50dc4aad13d584b0f4c207c70135eb5c5aee3cbf610056823922fb0502b10fd2', 'bb9cf058bf3552891741956d36cfeffc40155d63ae33959bce4b182e349eae43febceee4b02aced0', 0, '2021-05-15 06:17:43'),
('03ea05ab6a89f90207db3dd6b0a4a27285eca605cac2e480cd414baab5eff6a942c0b266277604e2', 'ec9f342d51a4d748d4a36cf1db0a2808f7d0241bb4102a187b9eda54c0fa97767f1bf25b4a4ffd4b', 0, '2021-06-13 12:17:00'),
('068e5f294ff022de4b51f613262289f3e457d1eaad26a41806845dfc004b8539010284b3f39bed9a', '332e014ec161429a2cc6a139eb21ad860de285774b3706a4160605d06bc20ab9cd922259e5605c43', 0, '2021-08-26 00:19:28'),
('07c607b0ad83af67b855c78de68538d81134477a45f040f9bcdca7a6f72050b5e1d26ef054aa2ab0', 'b30614af7d72d57394463d047fe9c9b73027a523ce89fdb1f67c6e5c5c78681388fba1c1f5512352', 0, '2021-05-28 15:58:00'),
('080ce5de5d2a0549ebc96f778297bb29ae71b19d00a8d82510791ce79f27d0c7c65785214e5ec093', '398568a183cfb311cdc3db9a83a4584969fdb05ef96ea93962ce8c5379756c4259c71617bc5f4168', 0, '2021-08-10 16:12:22'),
('0843d48fffa44cf0597500edae873220a85bf3ab42c206b5ef3f6f29c9fbbb3131247ca27e8a44e6', 'a2a9cbaba1bd6a55996df83e58abacd495fc8f4a6396a479fc554e34c8cbc1c293c8d24e46b6f3cd', 0, '2021-05-23 14:50:50'),
('087da7659cae9cccd553a08a369e79d2d1b934287756ca76553439fda53c48a421b67030a9b0096d', 'f9dfa42bc760cafaeb3c539a7fa0e9b57cba8f7181893fd6f79184dd1e4ccd334f7e115b5b3be332', 0, '2021-06-15 11:47:29'),
('095c646246a2612117d53d2a9b7c4837d3869743cb9492b9130421e2d3346cd3d432901e9122e91f', '4aa855f12d81c40e3b83829b6fe41143b22dad127c97b77f9e5eda6e2f45de8248eb6defdd5c2342', 0, '2021-06-15 09:49:22'),
('0b4b34f0783d6fbabf7119aa4a7d6b11f899f1088c77ef4585e4c07a25ba93f44865c30f50a4147a', 'f7d5c3c64ff9e919b083cd9b1185b9663afb834e43155e4aefc144644f6678b33573161c42969438', 0, '2021-06-25 16:21:57'),
('0b9a96024a20d63304553752d25c9b7ff99dad8d17c9e64539a3812d00d0a4396459217387bdbd6a', 'e84be435b72c7090cfc9c6340c23d280337efb58a32339f5ed855e93762be0c723ae45cb0e049df3', 0, '2021-08-27 09:02:31'),
('0be1422d8236fe8ab05b70221d11d03e335028c46551b3ea4bed78f48a18e90064d771b8a8310425', '065cccd2689338723e36e5c4aa69a1fbdc2f97aadb6049dec5b19e00d083de2aad76a5b36e0f9155', 0, '2021-07-16 09:37:05'),
('0c621f14bac98dee75f7acea6ffc16c047d944bcce6eadc0c24fed8dfa72ab60cb593ab983d70e26', '7ea1cabf4036c12fd1588c1a8f49bde03926075b741f03a0b5fdbe68f212ddbe12910b42ed08e2f2', 0, '2021-06-01 23:50:36'),
('0e17cf9799c9ef6d6f561f5d7d966247f813fe5709ae34bfa497337929470b3c53b9ddd0732a1460', '104e1d33bf6501626a5a3bbc79f1e472e807ae5b42fb3b88261dc96fcbbdc85c7f45a1a7c0c2dd50', 0, '2021-09-05 00:45:46'),
('1103ff89a7984fac1cb93bfe01507d19cdb00513e80b53e99be26c12fc720cb685be9830d2dadefe', 'ecf8b0ebcce43b5b9c7a7c0f5384c5fdcc01e879eba0e21a894f08634fe5d99b9868d32df9e5ee89', 0, '2021-05-21 10:24:37'),
('11be6721a9270e16cd36e1e1ddfe9e28703344b41689bedc2788bd6033047f5d68684864c6138699', '0d9bb0af6033038fb6121af07d28dac3f11ba4be852c841ab04a03b23f196bb15057e99f459afa87', 0, '2021-05-21 10:36:43'),
('126d08a0d312f3508525ffe51a29d49fbf07392f0b598627f5e145b0f96a31a754ab8d768f653d94', '506fdb03fd1f1891cbf999060095e8ccb501a1f21938d97386f2e612422bcc9bf4c2e9db14ec6a4d', 0, '2021-06-10 23:02:07'),
('143cc00f32a5c4b936e9a1454bed22ac4b115d6f6abcedfd97a20ad7ae65919c54de7d2922af18e9', 'a623882e4ff8e795d8ada4300177d636bf3179a2cb3ae828b7ecb50035679d2d7d9b52e26bc41731', 0, '2021-05-24 12:27:26'),
('1929e98020fa28f904c5824cd7331f27fa0d321889541a4ca66eb034d5d52ac06f8d5525851ac734', '218ffe6df5ba5e6c7a1be197e1ef46a9de210e9fbe5cba3491f648028ada78199f2e29c595443d64', 0, '2021-06-24 11:54:09'),
('1a2264b0eabdd6fe99a721eaa797bb930276e4ddda79535acead728a5972c400faf9ae0c0d863ffe', '7422ed82260062d6bb7cf5d209e45a7db7b603628d8bd7740826328c8f27df6b7aa732bc481132b6', 0, '2021-08-25 15:29:38'),
('1bbc959775b9e75f7143e8f3912066957a896c226da8483cf9c3626c24590c4006456f9feef3d29e', '4df58496d1fd03f1caf674701cadc5ae35284415ca5662d53195c386152868193941b2bed62b4f78', 0, '2021-05-29 11:12:41'),
('1c41a255785967d7f10a0ceb4588d2d0bb76805418e3ca904502330863c910c3a5a6f5020efcef3e', '0e21756f572e51408307ae3b104eb59150a7f224665ca8464a869fd1174ac608fdd8d7b6b101272f', 0, '2021-05-27 11:32:54'),
('1c8264de6ed770223ad3c75a3a220d0a7a8a77615d77125170d27303b8835c3770e15435ac00d5e9', '4af2170ca83f9676513293d9ad9ef89396ec2fc7c685f804237181f18295a6ea86c9051c4bd70be3', 0, '2021-06-12 13:42:11'),
('1c8f98c47fce4d45060d3022edb5550c76c1ef1286551683f4d965b293e676f5c7fb58032fa716c8', '794312f359c029d1018f98738305efaf0be5e4ef896acbfb579cd73b6462fbdb322d2805e0268eb4', 0, '2021-05-19 16:59:16'),
('1cbfdb4b0e9dd5a943024bde660baee3c9f08771948d4e40bf9dd3a21f2fdcd165e0985019f2795d', '949ebef51555f5374e5f336a7cbd8e100ee28282d6c5b2ab58168c52c316d69cad5d26ab4875ce82', 0, '2021-09-05 00:06:45'),
('1e99acd3015c53c86f8ea8d21db0b7db58b9c6ef0ed6dc4d18c275cb701101f7a3751602667990e4', 'ab406b46df3fc28d1d529c85b4f419d73b653e5fe46bedd1902c6439cb37de269b202d57959fed25', 0, '2021-05-28 03:01:27'),
('20bf957a48fc2ebce056a06d5116a6ea55ad3041afdeefb29266951b15d4d581173846e06e230c06', '3c5bf34632eb06294ef112f375864763e6ae23d056251389a09805b36be16ebff13aacf2230db2ff', 0, '2021-08-13 07:41:38'),
('2168995797becb96c895c9d3771d86cafb4ed05f924737d2bb915d5024103e0d6ba48b23f965a2fc', '7c8f796a14f2fc9e85ca6c8e71d997bf612b77e24497bdc48b5c136737318e1f570241014ee0025d', 0, '2021-05-28 04:44:24'),
('231ad478aa0e68d5f84b9e4de78be89b71c04c9bb846c40494c0f6603c9693bcc7f7884d5b65e517', 'b48c1869b044af766fd92f71726c9d36c8e9a0a894e6b64eb3af6754acae7b4fc1d693302d128011', 0, '2021-08-24 13:16:05'),
('2547730f1828c91236f77ce028dc3b23ecc5561a95d4280bef10e6d15ce8846c869824bea55b8956', '7d11ae3af8395d893a453a41c07df7c1d18986a52f4c61005d3c5e04df2d5eb1b00f7bebe8cecf6b', 0, '2021-06-09 08:31:54'),
('255ccdcacede53c432ae739f5fd432200cdb810a0aeb0840b1c9155d31de7a0d5c7dcc5f87414cb7', '0a28956086c4a1f1fb3aaaf3a82688dfd7a10797abb237b43351c6937ead8d3700ceee507b95b0de', 0, '2021-07-07 11:56:34'),
('29349e41f156f4d20803c51f9f32fdd51a517ae0170439564d4201d99f437d016a6fb91836d61891', '08e069681686b72f2da31ee376bdf2fa327eb83f07ce6843d3e19e60771f124ef8da042536713931', 0, '2021-07-02 10:20:52'),
('29864feb45bb310093b3f92c9e291c2f0fff04b61da858c1cbffd2cd42ff42775e9cf36b868a1620', '9ac3e9715f4cec85c71e7e1fad1b07e7e29538f3b1e42556173542a4877b81f41549be0bb96fe43a', 0, '2021-05-27 22:41:13'),
('2b80769c5514eca1692a61c17a85f22da7a08f19e1cddea15a372820b25d8b2fa3b8b5a7ac52596f', '2f1222f1e950c7819db1bcb16d812446d13744eebb9c994c79974ff1d6ec24c5b677801c58ac4a6f', 0, '2021-05-28 14:08:02'),
('2be4a440b4becbef0ba41bb8e86a50f118cbd1e37c5eb583082af34519aad340f45869a42c097610', '3b91cd02d7c58d97341d4ddb696f685a3a44a2b4887b3e09defd9d587473ba740b377048bea928d0', 0, '2021-08-24 11:04:28'),
('2cff3a9d584adc5fe9ac238c7a046ba613f159d8707357d28369130d6e076c9aecfbd6122eb8f07c', '4c39986277ae3ff9942732223efe3f4f031330ab2a193edc4f9223ed8b46527b6f02e6b267778411', 0, '2021-06-04 12:29:11'),
('2e03b65bc5b52b3566486a9a4a511101d7917186362b6628ca2710a5d0366aa46d1e2fdc95249a13', '415f4b8595ec24f8605b0268c29b2345c990380a64584799e07d5751713ee56b8d5288cd2d643df4', 0, '2021-06-04 08:17:00'),
('2e9c7634077a0a1302e24f850f544e02aec8015a33767d86c6ea1761f3c0122c03bb357b2f29fd12', '01e7a63dd466f9d7f9b25ab71f7022fee3ca1d1bf8a085dc074c35f791b2731913e9e5343a69fefc', 0, '2021-05-28 03:55:05'),
('2ec3ba137e06521c1c15720d82d2bbc09e29cd500d06476735fd127f6ce7b17ef1eab0fd3843e103', 'e3524f2daa0a19ee676f540e7c0e7771b5cb8a554e722477d5f29d6904cd878a506fb27041ff61aa', 0, '2021-05-28 15:58:13'),
('2fef988b97a379eea42613556cd04b45fd9d5217ca69d5e62d41b93af2dd76d173407951c4db9c9d', 'b3ad5c9f2a97b4e4da7fa96e9307b4f9c47c89d3a4dce8fd0a2fc6b775dad5abf053a7212ef6bca6', 0, '2021-05-23 12:14:39'),
('300aa34979b9a5f6904e961f2989cd9a274a0d60292736aef69b7c3fa56da423cb84f21632b4a138', 'e65034ecaf99ad8520b6c6bbb67e23f82c0f12ddb91482c97231775aca36a254f39ce805ed407a28', 0, '2021-05-28 12:59:37'),
('3061e679182c81280051c8db3cbeadcfc1198be427d2061d32fd022f40aa55d15f02a93d010ce477', '9b9fa884791837a110ee93af6c54377b4f345584ea4a78b21bf791f9c835d3d998971c5c2d35cdaa', 0, '2021-05-27 22:32:03'),
('30ac5472125921081dee616b1285cf988f0d8e64ce1e4daef6ef738bd74571c6500dd59d29b651f1', '055b6b469dc4bae53177b1003bc26b22d169ed7582aa282e62cbdf37a47fcfbf5c63d3685a43586a', 0, '2021-06-05 21:31:34'),
('30d776665c465ef70b085fdae9a4d999e9f0c9d8edec0e033ff9388e4a209091eef0ac4fbdc23e0f', '32d151746f1e174033206ed4e63e1da79e89863f9d6a44876432a75b2b6429fa7461d91fdd3652ec', 0, '2021-05-29 10:31:54'),
('311f4c1a755fb1561ba2377e16651b2b32c6369fcb32ca12985eb8319634c206c874f7827b6b2ed4', '952ca059bb3377a131eb7de9fbb44986955b5cf9c5963e7c5f0690ecac162879498f4c5858ffe2d7', 0, '2021-05-22 12:15:55'),
('31408dc009f4f1d0b4e0e0653e0b884359d0a9d591b5cee53b4e1a3c9172af116ada98b8eac72fc9', 'ab5ed40882cbee85499bb8b054b8dd9e21df455aae01eb6258ac49c17fd892aaf849a662de773741', 0, '2021-05-21 10:37:49'),
('32577b33ff6042ad29195c88b637444c0ea3d650d7d90ab9f5a0c8e6a4e485f04ac82cd19b28f38b', '429e1f0b9d55217b567396c0902fc956372a30e84271556d75c19715642d95d3f65a41e04bc23461', 0, '2021-09-05 00:31:24'),
('32e57118e852b3d3088b80ad7da816acfa45d9e6f84ac6fb785a6d7c320975f547d7cc1be0eb7d67', 'eaf7232476b0a960a41d075acd0dde9c7a63c892ccdb65a66ac9895e94a1535f08984413187c5b8f', 0, '2021-05-28 02:36:57'),
('333518986474d1ab3e1b270846be0487aa3ca33daf642414123bd24e636d4731a55f2802f53d99fc', '288b728f339c6a6fb582c4a1e31011e9a9cf9b52f26b96b875902aa674d10eb6b6d7e82c273bad97', 0, '2021-08-24 12:02:46'),
('33788eaadd22f44b8d718c1d44da7f32e8de0eaae8d2c0c2acf0ea4d448cc94ac206451a59876f34', '8a01d89832faf307bbff04f8309fed8b30d2cdd7f8335dd11c119b0471d24bf33d496ee267c5625e', 0, '2021-06-12 14:41:51'),
('34ec3cb7073216d3fe5540876be47fa4bd6f44dd2de8412602afab50963e5b4833c4179706535336', 'a33cb96301442ccb92f1519fb75ec8aaafd69510e7507545d616b0e406f9bbf5452a6a594119196b', 0, '2021-08-10 22:19:46'),
('35962c926e34548fc0e120c909cb6ac404796433d80ffc3fff94017fe55dfbb676bd0c9a3f7455ab', '9cbd2bf6cceadbb5f76433ca0ed9f1744d75dbc8274b0a402f5b84cc19553634ca6a5c9f63dd8064', 0, '2021-06-11 10:11:12'),
('3a39606f639a78647d0fe6d53430cd703c635d6becd3506fed39e540507a1d1c46b64af349f07ce9', '976a44fa1ad07baaea44920f147cb7681812ff6796924b79c5bee0a9d5adcf5736dde2a2dcde4951', 0, '2021-08-27 18:49:28'),
('3a87c6b8d75d48a62ca2ed87b6a360b270a7a1ef34e007728fd5e48177aa1c7df5cfd6eb86a3178b', 'c70c3cc85644ca36b184ae34597a6ef7ba32357d51b90c473f8c7add507eee95e98ac0db7bfd23dd', 0, '2021-05-27 09:54:24'),
('3d2547cc9521f928494ba8d200c37e4bfce01721b53de5e8b8c28a83d6ac738f3999676dee320351', 'db87aa750f9f715a7dbf8ece84aab72fecfe6f4358a74e6166a1b3e8641e25063c7e0afc0fd2b515', 0, '2021-05-27 17:30:11'),
('3e1d084c34ede508d20fbcda7a6faa24404cdaa2b7f1313e544a14773ae17a47bafffaa0cac75892', '1b1897451031472824f9285955ff95adf28c22abf7a511a22c86c71a8267a5945125a3a0b9eee383', 0, '2021-06-09 22:01:07'),
('3ea5d37466fc5c95b4e44570a002bff1b8c638847ee66c4dbd9c00a71ec1134ecf70e58517783519', 'c50423758a2938095536fe6b638b73b02954bb2a09048494338cd2869d219e67e291e745b07a0409', 0, '2021-06-13 07:56:02'),
('3ea96f5277a4f4d1d1dea3bc37c6e56067444bc876f0f3142ea0fecffd07bd5cb656ba3aefdda9d5', 'c49fef93907ccf2152ee7db50d93fbec35ee489185aab55f8980276ee523a0e3133dd95f76587757', 0, '2021-07-01 08:30:56'),
('3f22551866ed4fa564cb5054cc695a62b6e2af8b8c5317d6dde25f5b110fdc1a7401fca02e19e947', '7cca3e92cce2413a23c862b7280a88c0e12b8481351140e291cb2f7c9176873aeddaa855ab933e83', 0, '2021-08-02 12:37:42'),
('3f9162bb3875395afdf667c934379521897797d15e082cc8955b999f388bfbcc735dbe827de65bc5', '3d5f67f80f985a0a14ab536b9c339d509f960410169c36fa1d40e805b43a3c1ddd08ca2a32f21fa1', 0, '2021-07-24 08:31:24'),
('40bc9cdca166363bbf472b88edfdc4aadf53db1162409e2ebe7551bb2024429a32939da02b2fab5f', '31391c5b518afa0303dca5ce82b3bb666ea09c9bdf60786835d898d85ab82ea8966c5f8002a4e12d', 0, '2021-05-28 02:47:01'),
('416d4fe3eb54b7081a9739428e0aa6876b87d0c453dba81f6e7e05d6dbcd314ef81a6470821beaf8', '932d48e18ef7cb5e3a33ef15ef3d4d91d3c2e605c31e9553b13203004848dc077c62db3294b318eb', 0, '2021-06-30 21:59:36'),
('42a32dd36dff0d6116f6b056ffb3f53126b16e5addbd0a47b32d2eeb06162596a93e2aafc18e6413', '9e2e98ae3afdf083e58f50d681237bb82399ad72ab10fbe40bd5fecd1de92076131f3a80dedf470f', 0, '2021-05-19 16:50:42'),
('42de53951ae3ca4bef845a966466937ee0117ae249d17a4b6bdd97956a432660f0bd35583cf71a0c', '07568e9200326125174e5c8d64ceb94e454af1b77f63d6840419d8d34fb6f61ed9be465d5efe5400', 0, '2021-05-28 02:51:42'),
('44b1045b3a18feba1d36ea72f0f5c40f61e9961aef7539d66d22680bb1cac86c2624bd2dac364e47', 'bcf1eab15e8adcf6776904718446755d6be416bd282b6013793be5e853828f2dd32dcc5eca01244d', 0, '2021-07-17 22:52:31'),
('462a066af4ec7dfd0ce823fd95a1154b579cb128e880ea702e39e9538668901cf1817a2d85e76dd5', 'eb6bb74016261b154010dd102ea22a410115b8cca385e02f961f72916004c4b9600c5e34d0950a73', 0, '2021-05-28 03:19:52'),
('4718ae55f4a4abc1c45315c10aafdc6c5dde68a801c11307a173cc694ffce4f8d7e731e212a88124', '61e7a86d07476f010d8c95d128ed71a4523f57d71468fc18c4273f3746961d3cdce5cce00cb927ed', 0, '2021-05-27 09:54:07'),
('49d4785403064d595f0a111869ef5da72e22fd3db8f4c704ee5a5aa5f21001815199a958e4ca7e09', 'ba4ae7e81117335d3621573590e2fbf3a317be4ff9f9ff2c2b034d92452f756dfef7319bc57b7e96', 0, '2021-05-28 02:45:01'),
('4d585276cde923e6c44bfa0510003425d461088dbf6ea126b50d7459e5a38373133644c2c5be3b7d', '6f52729d092da327614ca5aa9e9a19b525dfec4394d9991cffe0abaffabbebe5420b74be1e5cca01', 0, '2021-07-21 09:13:23'),
('4ec763e4407c174f3ba028d77704b3be825245a6ceefc752b6675aeafa5596be14b8687d20826d16', '4c7764c0811f5c1617d9a71cfcaf6cb212b31dd2b08ca8d895469d6f17630cb925caf2babfbc6084', 0, '2021-08-24 18:06:06'),
('512f8dca9cffee1dfec65c3b81b869eb10921065fcbbb3af85388d61386765159658e6376477ccbf', '8e0f4d9dd21a00f54976c56393e6126f25600a1906243020bde8ea81f0075cc41ae6a2491a308239', 0, '2021-05-28 02:53:20'),
('541baa557583b1b4a19e585326dbda12140151c57ae74236a0c8c3f0dbbe4afb54345b1a76959ff6', '2103926a976901e54f0334a77c1f491e8721c6471a54e3a26073bb2641226fee244e52e0767db7d1', 0, '2021-06-10 08:55:54'),
('54850b78c6664437d0eb57828b4f5a934bf38b927b291248977fdb54ee71a65ce3a6083c8cd960d8', '9bd4d994ccbb3db058fca33bc70ff18ada4d605a49fbf4db908a45be4d65a5687fdf8e9c8b98e122', 0, '2021-05-21 07:42:58'),
('556db4ddebfa8b6b460b022d2cbb26eb9c11e3f66029088b965a1815a0ec6fa57c690e19da295633', 'd9e4190048d7b3d66e5a030e1bea1b32ac47506c787b80c70f5089f6a0ca3024655118e423d87284', 0, '2021-09-05 14:13:25'),
('55822d5a709d9fc191ba584fd3fd17e9de0c90455f218f452e22cf2e0ed36c66087b6195f21cb1a8', 'cb6a41044811d2bd342ef9189831d66175a7b1a455fb927f46383ab7213b7cd42ba95548f6ffe995', 0, '2021-08-24 18:00:46'),
('562ab3288c23c1bebe59c3958f3755c7d0277c0b35edf4a89ad8bea40984b06f4d6db595b6935a14', '4d5141a0af181eb24f821eae643e43b80c9047cb2eb5822c339e375f33aaaa4a452a4048fe1ac5b8', 0, '2021-05-28 02:30:32'),
('574c5dc1dc05087199015f38230c1cd1fccf677c6c45e993566eb0ace9e7fee7910959f955d94b25', '4686597d3879b7479eed5f29becd144beb23be07c4f68b08a62a9fb521956462009e9c6475d141e1', 0, '2021-07-27 06:18:24'),
('5b366ca268dec3c50a2ce4405ec672146b4f1bd912227e6e64dacf7f8f7fd4a51dc0278340670d0a', 'c65f24c4a12607c450d807b5b25cfbc30f60472017b7ceb8808da3cf05fc2a9c41c24f18c7990fbb', 0, '2021-05-19 17:01:29'),
('5bb7eed58eda12dd0bf086dc0f257c8a880acf8c47374841b324945bb3a555720db4301f815bc2f7', '26fe3875821cdbd049c1158e19a52701a02417ed62e7495b73f7fd102444f2474db1bb15f3b74535', 0, '2021-08-24 17:51:47'),
('5da2ceb187dbd722b10ce0ced84853cafdf91d9fa50b44cbdbb90276a2bed8ab0a9d7f97072ea2f8', 'f015dbe71e4aa5076a2ed8464b44c2330c2b00382882bff7bac4e33dd58f2e7125655c695fa82d69', 0, '2021-05-28 03:20:25'),
('6146a6e56b07cf9ef33627d0d0f83177da7312466454007ac27066febf4ded670eb90a870c1f79e4', '888431a343b72597f19cd5af2c55f6f673ad13556ac8f6bf4269803bab4ebcb3d4bdf6c0a6625ff2', 0, '2021-06-10 12:51:02'),
('643cad89b52f93296c4bcacfe38aaa03ed547332d8872842020b400488c5911d379f4bc570398bcd', '388d442fc6b3d38fb4250d7c4e796d5f5e5f8a72d6c83012dac10eac856ef359861173695453f6af', 0, '2021-06-19 10:44:49'),
('6490b3361187e7f3e1fa80a4027e38fedfac1e70d5b755ba7b518020f0a795a00e03cb80f6d6f9ac', '9b7d5fe4388417a5ab7f2ef2fe8294bd71942dab6cd9b36d9ff1b85bac83741d627199302859093f', 0, '2021-05-30 11:15:08'),
('6591d8b005bcec79d25f67741a62f23d3059ad756e4e2a54bc9f4d5ff0261e92018156a706856767', '3f08ef27ad7140edcfea58dbc3a156953bc386d6f11d3a90cfa9a6188294a027ac6b439090b3503d', 0, '2021-08-14 06:34:42'),
('6652e2f3fdb91e0eaf5eefe64cdbbeb0a80938575bc3a7b31487c92adc494f07cfa4205f4ece2d25', 'bafb0223d26717a17fa5ea96861d186c6e017448f63ba7050a0de0aede8ce39888e02f1209df7a80', 0, '2021-06-01 14:59:20'),
('66e9082392107dc325f76a57b2693775073bff9afd75e745f5d678bd133d542fa0a59c49aa8c510f', 'edcb50379795abfcbad99a4bbc39160015ef303b2055a591b663e326bb2413a8165322a42b7c1e00', 0, '2021-06-08 17:22:11'),
('685680a187e755791436fa8624c2c7ffc3e01d261daf7ccbbdb1366e6e6066dde16a23a79ff4d014', 'c243efe1fec3e2e14f95f6f13399bb20a904fe48e214be6c15b746cc50f45e371afc94b40bdac5fc', 0, '2021-06-09 22:14:04'),
('68cd8e5be4fd6895b6d95d7d01bae63877cc570210e8090c957f572405ca6f27c23ed6ea08c30c82', 'b713d5a12592ee2c6c2373984be5238c571818915e81d88a1204a186a767b851208d9e3b9092781b', 0, '2021-06-11 16:24:37'),
('6a521c6b5770eed284e9a1a780137157d5dfa1004245897c3cf95f04fe1dfa3ee55a197ba77afb41', '8077ead1b508dbf62bc5b614efebe376cee460ec06d77b00c8142371f77105a8eb44a675a598159d', 0, '2021-06-24 05:57:36'),
('6c419480173a8e77a653b4ee3143150587ecb2fa77a145fe208bc5ce4bd2f5eda23d44cbfd20c248', 'f7096f573d188687468a5f8ddd66d3f128a2a12fd3e87227e0267dd8ba956d556b45d6f00a251fb4', 0, '2021-05-27 21:58:11'),
('6d1590e8b2d373dc0f01cb4b5840415d332701346566a32bee30eaea35355dacf1735c9828d31b16', '0d045c6f676b9ad923250b20b2a651cf0b3ab8251b5b659822601ade512ca2b36775a225ebfb96d0', 0, '2021-05-28 03:54:30'),
('6d61faee044b215d5669221b4a0bf60469e9268f0e0e8bf0db1620c2d4ce84c49dbaa5dc0d6e996a', 'e89aa0355049b7ff0cdd7e4888d3bc5844c0547a772045b7faccc3a8cbe1c2568e6fe053e367253f', 0, '2021-05-28 03:44:47'),
('6d89b5f42d07a8b57fc46e20e1304f7ad612bff006347d685a96e05f4c2166a423e3b40d49acdf77', '1138b115d5c2a0ecf4fc300f0e449e2a1e09d02b61b3ea063e56a603675413dad59fdd1690a5c691', 0, '2021-09-04 07:18:00'),
('6dd5f61e2a30b370c8cac1c59032473f6e383485f35ff6c1ab5e926ab7ac301546c1b9d68fe11637', 'f9beaf456c0d8ed76a7ef2f41cc32c923cd09e72ef4f9b9aae0074ddaebb3c1973e75a51a34deb78', 0, '2021-09-01 07:53:21'),
('6e2cd639b6f0307bb5c4aea892ad28a3e9cb2a4755063a048c1474ee22482cc619b164cb3d8c2515', '7ca0e2c83b349e2de96b476aea634994e60f3090ea90a6414a70cc73b13c7461777743eeb1cf96fc', 0, '2021-05-28 02:44:33'),
('6e692ccd626782603bf41f4aa305f011ef81b8f11a710808cea5d6f7f091cd33381177e6e12017c3', '9c834f54cf935449540c0fde9ac0c4e1a7150148b82045126b9d5162c44b48295308bd45799ec932', 0, '2021-06-02 01:36:54'),
('6e83a5f92513df9117dad3ee22e0a7671bd107319ea007f26ba5264dd34af646930588570a7232cf', 'bc0cae53906fc645662ef414723355098b6acdc948b768983b7f3fb76dbbd05b1a79e51e2f1765e0', 0, '2021-06-24 11:55:08'),
('7032a4dbc4ac97a9b25f9b008d9975b25b70a0269c69851700c4d3b3d7e3e3ef305c63dabc6b6230', '0eadaca5fd5d14bf457b9b0301119409305e9b610074914c2fc6308280079ec1c4a92655cc0dfcc7', 0, '2021-05-19 15:21:43'),
('7051c84042e4f7ba04c03f6c3454bd42baef6bc281a9c745fc1fc3d91c9958bc18469a24b9ee70d2', '23f8ae1bbc544ee3364c0614cb53ac6ee6a4e1921b9a25ed5eceaabc61311baca418b348642af8a7', 0, '2021-05-21 08:40:09'),
('7080efc4ac66dd0852ef6b13ab703b76e3853a2877622ca5274a47fa913924f4e27759aedfec616d', '8c92938851d38188118c8896d283e24d9895da56ef54d75f512f2c01d836a287cabdd757942b365c', 0, '2021-06-09 08:32:07'),
('75410120d0b5a868f4e2eb14b90908a196b78b76d80fadef6d3ed6f32d14eb897ba037ea72fbf5e8', '7109994d80229648cd9609cb801735dd9b238a2117354fd13fc06e5e4390b9fb514b61cf8c1aba01', 0, '2021-07-24 08:31:25'),
('7659a7daed5c0c689bd8a8c93b4ad46a8f96ca2d34ec7eff3e25e365a61e8c0864acf3a93beb7663', '8daa7ecead2a3062b81bd840b020094a472d6dc94ea676570eb0f289c4fcbf21c13849c7257a1cad', 0, '2021-07-25 05:34:24'),
('77e67c5f0f915addf190ea1e1d647b7dcdfb0f5169b604cc321e79b54aa559a60afd64ac23b9ec07', 'c437321b08faa32991a9b504aa7b73b16ccfa84bb7e8eebff1c2c33c8256d5c9d1465e4912f60fb2', 0, '2021-06-13 14:13:27'),
('7850aecbd8aba725633416ace402a46add66ea63240569b7bb741a9cb23e7c7eb6e27552c65d88fb', '5a80c3d9cf5eebba8ca73bbc099fe14943bf5433f0f3db66bb29853b21421fe5e01a7baa6112e4ad', 0, '2021-08-07 06:56:59'),
('78b3cfdb93cab807a6acc120d7d3069269dd3b5291d57e4eb991970382b9a440340d0d03bf18fd5f', 'e8f3fe31d12adaecb23d3d873a5dc2787f34539d9c3bf1e0ff03006d96845879305350518719472a', 0, '2021-06-07 13:25:22'),
('79069a1f2e128ca79a2a01b6178bdc9c5af87e2d7552ad56de3081a5203651936cf59e56ec1196fc', '6d5266e4ce8e66b3ed55a0977321421dca3f29a2bb0444d9d8b54e07ef20ea5c3126cd65da608e5d', 0, '2021-08-31 20:31:38'),
('79a716e12e3ce4886fc66af3714996d2ba4bfea05bcdd360738fbfa23892fb55e10165e5c9291e24', '2e0a7745686fee6afb1a0fb29953cbab49583c0cc760a9d3e58967b284a885e3f50f4930e8cd836d', 0, '2021-07-16 08:54:04'),
('79cd4547ce31d74bc583921f08c9ab041017610a45ddbfd1850aafa2e566af683c262dd975bed17e', '1440a3d3de099077595e9ee93392dd1a687d3de310d573d5c59f2b28ad79158452f8d8a16ebfb115', 0, '2021-05-28 03:42:22'),
('7a023b3376757f7c4c10d070229d08ac29f9d26c6d8c4482fd781801688bb0210e5ebaa0fa07c590', '260625ca6554cf15bd514f9b740642551beb5cd8b18351ffcbb9aaeb2b1b0039dfa14702b88b35ec', 0, '2021-05-28 03:10:32'),
('7a2d5f64ffa83ff126db63867da9881d97e4b2e3f36ba38d1af24ab8f74948ddc8c8ec7d06bc6b2b', 'd57e39fa1389040ce7901c9bde080e4eab85b9a781c27421aa8c04b1f10822c2b1e021c417fd9444', 0, '2021-06-03 07:44:17'),
('7a81bcffdb6988bf6d4e7a0ea10e462a6dfd50b0a215b0af1b4cc7067a0e1f8ea7a20c34198dc7fc', '2b7198aea9f5aeaafe07fe615f8625b99a09b0c48d7eb06d377c261ec30fe3fa5c1e77fcf22f11c2', 0, '2021-05-31 12:35:15'),
('7b016984e530ab53f9cf4a94d28c6d17cbefe27383dcd7f714eb0c24b6cd5188cf1de38e643254d5', 'e1df7a551760982d0faed207dbacbc1de52ba2ac4b963532038e3c2b474fe255bb2117921b920585', 0, '2021-06-30 07:30:31'),
('7bf936b47c9e9ad7146b8e06cd1314d9bb79e9c1ac4ad613f05552b42d26ca5b5c8894b896eb62de', 'b2b607c718646d4bbf3bbce1e9947dc95177be57ae66beeec3b5054b299b5642f4a69a31d81ddff0', 0, '2021-05-21 22:06:38'),
('7c1f42536614168fc236a55b74415fd4210e019caa8bf9320035918c82ecb2502b183a9c2b9e3e18', '8115f00803285423d783e4cbc30b6b9ab763da5fe79373c468447815ee9347c45c1e329cdb5db448', 0, '2021-05-28 03:44:05'),
('7c4a3314ad69f2940fd35196aae041543c7ca3520b44a683e4d307c92241d4984e861b208c2f198d', '2491b55eab048843322f10abc1fe7315c5a61f6ebff4cfec206742327da3ed8033ae6a42a8a1d2a0', 0, '2021-05-28 03:32:51'),
('7e77bb0a781c2bed8defb918d8bbb1a8a296a2df98f8b1e7a99b4c641679446c48d31511e37d0d81', 'f45f458b2ff47edcc7f831997e1348d23c225a81cbad2d769677087a56ef5172d726af6ca3b5af56', 0, '2021-06-02 10:45:08'),
('7ea8f0db2154bd180a0aa61f5388ef91f952ac9d1e7c0f34a00946fe4dab18b132b98020b85269bf', 'd89ac83e72ca93f4295134a9a3c75543725988e492faa75d4af7c3d90decf2eaf79092761a5cf0da', 0, '2021-05-28 03:41:49'),
('7f520662dd034e72352cb1b19d69543e27b9d61f99e7ded8d298cd82dd8c749a34c9e93a46a7f56c', '84def7320b7f3772a1701f1c06c0e722ad24e6cb9dc71e5e6f82954c780fbca61dabd33066c1d5f6', 0, '2021-05-28 03:12:53'),
('7fbd5fdb1c002812fb69b196d1c3afb8ec33e92305e7246fe34cdc99c8d689c6a2342b72a943c6b6', 'a3a24e1b54f35f09951d2470d9cae97fd3e2280b9a26ed64928311fb3a8b2a6a210a832249792a24', 0, '2021-05-20 11:57:22'),
('7ff078323a4fa84c9209f39dee2c43efb75bc2037f0f114e6bf0ad86af03ae1d2492af15992932c2', '20f1249d1684932b647e0bb80f2fe64b1d0e524bc0433b8e52076f53d02c99bcab16d400ade0d2d7', 0, '2021-06-16 06:38:38'),
('800c210e6c77f182ec2c55560691a54f1d6f32aac61f7803eebf0c27922bb8cc0408fe6e88982ad7', 'db9689a565027db0316a192c4b743861683e69f00e334ffb2906597bb3a158ec1ba4d4c353b1ed4d', 0, '2021-08-21 00:54:37'),
('80e9f273d119f7b0bd084a1fbcee3f48d15207bb4e61456f30fe022c3f4eb951499e7a44b33b8c08', 'fef9772c1b7927f60d84692b9b5888bb9b819be7bb358e511b7717f6c06fbbefbcaff9e0ca249694', 0, '2021-06-16 16:01:56'),
('80f1bfcee3b21018349cfcb86e47c845a5904b50589a2a230913bfc3f5a855a3146e2404a9c7fdf6', '66337ae16e19b0b5784c4968a68c8d079123739ae0207faa06b3b7d5f6cb604339c7c6dde4b7eeea', 0, '2021-06-01 09:17:25'),
('810b1d7217d7e11cb5879b13c0e58f4a0fc0f5ceb2b3a19ca2a3359c3f22e869c61d2167c51d22f1', '09cbc36a515821b5eeeaa892e683cc81f27435f2f7f7bfc441d24fd19d4022b21e1e3ddeda8bec22', 0, '2021-08-11 07:34:17'),
('81b380b741e3f3ac1d763dac9bb07a9204732052c94146d57d81fa4626176bfc6f081c6552c90680', '56b81fcd83abadeda6aee65394b363cb198d731debea2fa7e5c0092c00f7d9db75e6b1cc64eba843', 0, '2021-05-28 03:08:56'),
('820e685df38d1d14887497ca4a4e5989889ef890865ae86ca2a3da5b83075af5fbaf950eba1d2b54', '4edeac24403b36d0bee06703469d9743ca12474f77ccbac92a598b12b055f74d01b738a2b4f0cfee', 0, '2021-05-28 04:22:54'),
('824e3cb80505ddff616a993283d79ca3ad006ed676ea3e0076ba3e31601d673c87971baaf1fe02f3', '5ba3114c61c0981d618808014596b94d92068cdfaa9040db3750e2ac3d5a65bf9a747231c56a8997', 0, '2021-05-28 02:31:47'),
('825416b2082a2e64b3aa67d180eecfa6c3420c80f2f54962c977526f341d5a3fd3250aa1493abc57', '0701a22afa7eb6688d62c11491be966cea7aca1fbaf47c7ffca17cc5e7f75007e23b3e97e2ea9aa0', 0, '2021-06-08 17:25:24'),
('87f074a0475b5a5d40f0a03e44acae688cc41c2621c83357f51a92a76003404c931516e99fbcc7de', 'b04a99573d684a6e6010245c9138e9abda64c941f0f4f7963058e55adddaf480e45c4d55ff47e484', 0, '2021-08-26 19:40:35'),
('88f652f30f22e413430cec85819d97744ffba69b3cc8c171129d8166472755ae0ffe96626b043f12', 'e036c9d845844008441f3159eb00e6bd73f2fc3bba0f1ee6b0bc7ad49683c35f2af4abc19714ceb0', 0, '2021-05-29 10:39:36'),
('8c23459c1469beab3dfb37d7d9feb940ac38555359e67b9261109499e4e17dcfe64138fa344899cb', '3acc6c5a9a47c148bb5e14debc51b025fe865405bbb78d0903da74699800bbf3951a1d1a17fc5590', 0, '2021-06-18 07:36:50'),
('8c63077bbb064b071c009d5c7d6cbffb7e29a1dcb2cc62aa2392aa2da9442e60a000484dc1723e9d', '0aee524eaac98af1eb06dedd1cf103a972c3a07e576d8e98866ef00c7d97658febdcfe3af6e3aaee', 0, '2021-06-24 05:57:17'),
('8cf1b15ae84b1877f5a264d879a88c7b75b2d0a5decf6369c1d5e0aebf1cb8408746fd207c55dfe4', '679b644cb9e55b3651d074a16c5a154f7a905f088eaccefeb059aade52a0cd8eb2099e825295c7f0', 0, '2021-05-28 04:22:31'),
('8d7a88cbfbb8dff22b83e4ec0242ec231d5373581211b69f6dde7dce73ca11f9dace60ebf6108d5e', '4c07f87d55a2187c14375ef9b4eb0647fbd28bd263517ee0fb87b620fa4d818d260aec8e7162946c', 0, '2021-05-28 03:16:34'),
('8dafdf91eb7804c47fa36a642ac780279cf45affb5b5fe1fc6a2fc7f8ea356ff9888e5d2000ac3d0', '19fecd097498d0f2d4958bd69d743dd2a5f1a6cb9dfc5de1920a8aa372b4cf5f9e2bac5d6384d7e7', 0, '2021-05-28 03:35:10'),
('8ead437c782409bd947d9ffd7b32c68fcf83ccc872295b49e32a68dfa810e277cab4b36a90a8df1e', '1dad7f0964faf8d79b22017c5408717e5bc4ec35923114b406cf0aba5ca636f31a80125d3449657c', 0, '2021-05-28 04:00:22'),
('8fa61944f7ae6ad1cb5e67b812d371f3921b89312a2937d4588b570cfa81ed1c425709104809b48c', 'a370a073677457032de12ddbd512ac31317494cd1a74d01188a2ad307baf52e07622462e1af9b801', 0, '2021-05-28 02:58:55'),
('8fe1c7814390c23719866fe40a7acce99452511551987b85bdf2275ca92ce33b5077d40595d483b7', 'eb5596856281c42814c2f9576ebc7af82946d3714ec95f9de0b4992cfdc1a4dac14fcf0b87db3a20', 0, '2021-05-28 04:46:36'),
('8ff23373d9ee7abe16ed0723043b5fb11c29b1de6d44cd5d4147d54be2a8ed062f1c1a02e70d0472', '7b4c3bddc42c5401648a64c65f2e3c50cd90a31cc02811a39fb07b1460b6e645ed9f90ce715498ed', 0, '2021-06-01 00:31:20'),
('935a188e261fdc2617502a5b5a92ac41f3b3e3fbf0af4ce6e19e0268b8300d7c0660d56e567a7313', '0af41219a4bbb46985f429e2aad08343a383f57f1d4e4277d364f7f476d9c6be7889b87ec3d7f759', 0, '2021-05-28 04:02:38'),
('937918cb748076fe6e26da05cdb0884194cc4718649cce2b7c9154f3bd3ee714bfedd4f5a42d1213', 'd8a89c37897c18d95d22e681beb036044a331779987966192b2fa80def60f440b07046a86571a0aa', 0, '2021-05-28 03:18:02'),
('947c09da2fd2eeeda092c24cba07bfad858e29c045862ded39d29fc5174a988a7ede22db2c7207d6', 'e6e742e1598fb6c054324174ae41fefb468deb2d2c0e944985d93e1d3ab972c6603ae1cf4f6f9341', 0, '2021-06-17 12:22:51'),
('94cda8255f4b780fbea0e0549b53778bab2ff3a2ac8d6eba3e5110f699edb8b3bc8f9a8c27374065', '30b03b0b777641cdccc5079cafd3a2f6da703787d2090673d5c797f362e69ab215e8d14257612668', 0, '2021-05-28 03:00:33'),
('96954a2749cb14baa7c5f4d966c34d47073473319c76f98e223272c5d2567504e47e16c9a8e0cadf', '59f996650b39192dfc8312ccf2a734655a667659d2ad911790bec070fc04a6e06a2e81c912eee9ec', 0, '2021-08-07 07:11:17'),
('96cdaf33e990378fc1f914c5577574f63dc681e5216b3a4fc1a5b4edbea0734ea6c799011916edb9', '9df493e8058c5d35a71e21b75e3fafb65893ac84248727ce050821f07bd43c3e5ad2a41cc7fa1134', 0, '2021-05-24 10:33:59'),
('97b28397f5a18951cc505fa3ae9ec2e056c4412ebac0d20db8d6b033529897a47c06de89376dc2f2', 'a4c429e1defd9136cdca36252028a2ba12e925153ab74350a36994bd9be9aca4fb3fd038d94d32ab', 0, '2021-06-03 07:43:13'),
('984dbe37ec367fd3fedfa6c794c3f116591f454a1bd8044cd4f1e4672458e4a5f03b5c54141a8efb', '2ed38913344ea18c706ab1beba6ee1c7e58ab2e896298cdfc992f82b78ed0809294b783ef23585b7', 0, '2021-05-28 14:08:40'),
('98882119b21e7671ab9c0a05f113a89064db491c45ace90397850462acb9c52534175438077b0ae1', '7b827b0ede7bc9b5a771476d2980149c3b84c50d5d34581fa2633ac13c770f019587124bdb632921', 0, '2021-05-28 03:51:46'),
('98defa198b7790028360fe53c2153513c62aed23be9a47f8f23378d1cb3f1ba7b18790273d42a949', 'e38361aa29afcd207c8aef08a417a107a366093925a85a0ac5ecf4b453ea14fb8f179d8b0b831ea9', 0, '2021-06-18 22:45:14'),
('9977b276cb3a563c12fe5afc00f86d34d6d1bdbc9a672beda2fc4fdb37af808e404f769fcae769b6', '23b4ee0a1ea4c9e8942bddc54867d1ce0e7f2b96c7a3452d12a4e74682b55c8fcc3f5004c59543f0', 0, '2021-05-28 04:05:40'),
('9a65cd40c00fab940c93ae81feea438253550c3d6aa9c262dc81526a11680511c659ef5f486a67e8', '52f1e08b8df3b9e83085e5f87c49553b01725017c21d26773cd88caab13bdbb580e49abceead4151', 0, '2021-06-04 08:17:22'),
('9c2cf861bcb2adf3330b0166240ac766d8b823a94243eda91287c87735dac21d4b8bf5813f691f72', '7d6c052fb2c4ba0417ac00b7f7eb14a365de73e54bb3c602abdcdb198f0a235ae8aa96be23f16019', 0, '2021-06-28 09:03:47'),
('9da41d9507326c27e063a79e73ca276044b8c1d55257129972c1f17b84647c59aa9a0df57a6d04bf', 'fdc0fb443191b7c0392bae64498a86713aaf84c7bf6e90c131f75c99ff018bb54f70b13ebbfa4a2a', 0, '2021-06-08 17:22:32'),
('9e620f592664f673779d7ac4fa929f59171ab0e2109148998ff8c8e8ae0d7675f519af39fa79315d', '648e0d711a109c1b2dd562cdf8e0066b1e5ce03ba2a15d63270b625f2678e0aff0d43debd44e2adf', 0, '2021-06-13 14:15:20'),
('a0290b22de37f57de4d25a1195f95eadd7843fc22de5c44274ac0d2ec542c45545f9d08a5848349a', '822e3e59f9eec619d4047c3969ed4c081c63ab623ca50d5e246a2eda2b6cf7e01f372abe32318d15', 0, '2021-05-28 02:42:40'),
('a0de643e75718b6bc48c30db13a25003a751959d299abc1df220970628e2ad1ddca4790068438e7b', '93e92db7fa05b8e4711d4e5fa3040878ea23dc686d2b150591affafafba01d3655ac3595e4b07765', 0, '2021-05-28 04:10:32'),
('a0ed640e0d6b8053a89b2ba320cbf2c0a9c68686ed5699b3786c48a2a7be37ac8f1fea72c7395320', '0e4cdfad37f185c831782ca14509ad9d6584c370c5160865423d16ae8f4d6229f47c0072cb233bdc', 0, '2021-06-05 07:58:00'),
('a27ecdb49a5686fdde8a8fcb64e9482b02703ab6af14b873fe46d03306dddb530a6fd616b0f9e0d4', 'c87cd2f9149a816fce17506d2da93801b8b4baec04b7dfa8de4ad66569d278af2d457ddad5d05a63', 0, '2021-08-30 21:55:06'),
('a2b9bb6a7a357a3db345573e54a6b9b0b1782fc184071cdb5f921abc23a2036f8008b6094ebad70b', 'e95ef27c58781fe66e55fa14476c26977e4a42baf5aa0df9036e7a9e52c858e1b2ead5550800710b', 0, '2021-06-01 23:51:18'),
('a372a90684f812ce65365ea226188a45bbf9d6dc645369c115a7f74f92373ce8b5d55e25b875a467', 'ce375e5da7da0c878103cedb1db90a6b74e2cf362896d3b0c3fdc2f951b94ac83894633ec23c28e6', 0, '2021-05-28 02:59:51'),
('a4bf649729b792f2c187ab6732677dd72d12ddb568e69e7839f09e15af41adec4582a6e9169cc6f1', '033a08e9eadb4b68a5e7308d7ec1870fd5e4ec011e1e1c5925dd8e9c46911298b7b0b480e0b04c2a', 0, '2021-05-25 23:00:19'),
('a59a5cda376c2c88120544085dfb473495d7fb28f7d5205c98a49d37fe962950cfa45af4aa27bcaf', '76cc3c9ac4b213cafeef093532479d89fe35500ac2933c6f3db487309f82a91f3e77c5da2fe79d00', 0, '2021-09-01 07:55:59'),
('a5e0bf29f0a7c1b95fdac2017af07e1f892c0f6bb68feb052a60efea6ce615cf51b681d00a865ce3', '83db42c3fb927facb67cacd543a50bcb603b4ff748b3154ab7cc9d7e71568a4bd0d036c7edb46d00', 0, '2021-08-07 07:45:40'),
('a83c929e4c316f20ff7ca1813866d92315bc522d95f26ae1ea230a41b905a2c49c0d0bb93067bde6', '032343323944caf9f5798df8008aa4ce784ebca39015da584871a8b053f18bbb3a6323a3cf4d093f', 0, '2021-05-28 03:59:57'),
('a8a05d582ae3f0f79bdc2d8771ad9ec6714d0de123412a58bd58374d319118548f234525128f5fb6', '38bed9e3e731d7d11b356e411cb14f2515f73832a1e5ee7470c578366b075e3c68b06a19627de791', 0, '2021-07-06 11:44:02'),
('a9c8ac3c66a631723b377679e774c7d355d4611090c1c1eac49adba21703bcfad229748bbad5cc1f', '8358d788aca763611362dfff4787b08dfbd2612f8b2322e9cc8820f7c973e868d98199872a69e20b', 0, '2021-05-28 03:34:19'),
('aa74f58365eb93c5236d1144ee85231d54e27344ea1a2c66f2e629ce90554e0a2256589bea589f5e', 'aa4b48ab7c06c06decb917dc7a02892ec0b5fd5593a4d235f8194724981d4f8600ee39e78f197523', 0, '2021-06-14 06:11:20'),
('aab8a9eaf91ab885492d5d2182f4c9c05c5cd868c70c64838c9e2d06a09b401f2164497d35725303', 'f58d905e94fc8319ac824f30569b2534127490f175fb169d51ca0d5615af90e9d5c590eeac1d9715', 0, '2021-05-28 04:01:17'),
('ae5f55e0196410366b83cf605569689a5fbb258a1bae28764ee362a25ec353f8632a6af1476d0d6c', '573a57e82e33b2520aca1edbebb436b5484978ab3bc03a51427eb558485a2cdf180806025179b7ce', 0, '2021-06-27 08:58:29'),
('af91de0122f4c4799f6d02f4caad9edc4e4ed93c540c6667ae7dd46ba8addc68b7fdb43e0a029c86', '4c2cc7ca08822d33a4f71993900983da842852d3b862094788c268ac50257d220173a3ec7beb7898', 0, '2021-05-28 03:16:49'),
('b2b6a371ff7fdbce8de9293dbdaf218bbecd0a4547c12801ae4868c3a75e4697216cf2b6df14725d', '0a029a2fce0ea4eaca972697dd01ef75c168e24d9dc0d29bc4fba7a6ce0411e01ce479c6a0548b4e', 0, '2021-06-06 07:20:22'),
('b3aee61b7c85273433a0e9cf76673103d394897f87ec5ac4e9cf78cd517b75fc92a2b44f96639a98', 'b2fdffb82a030cf2956214b63e387bca8f9e6a38ce9a557a910ade6f0a4cc8003e322a4e2f95c965', 0, '2021-06-29 09:05:48'),
('b41a15987233ce61046efc57a6a1b79131672178fb61814db4200cf8b7e10cbf1be02996a25a12c1', 'f2ecddab522c5f5460cabadcdd7f4fca91ecb0b64e0ca1529edd1811fe331a6e16b400c39aacf58e', 0, '2021-06-30 07:30:02'),
('b43028eede21cd51686da1cfbcec0994d35c855201aabdb9c5dd898c01a259810126dfe27683d25a', '61e826cf630ac373bc8df43dd48f3b4be2b5b1b66fdb4cd46c42841c56558a336ddd220f9c56f563', 0, '2021-05-24 13:11:03'),
('b5595302e9b937c09a8700abe29c0829126dd8cfef69ec728d8c0bb3c7d4636b4f018c956fa52a65', '900b3d8b68f0e78b0904f1e1fdf5d9d5c42f5a2869b23a66886d72682a10f7a4dd83dc51faf7a3d5', 0, '2021-07-04 08:16:13'),
('b5c5014af652a0f585fe5489b5f53627d4a9d1bb81c672d8b0dbd70d5cef818adc9b613f0b37fc2a', 'c15cdec1f386ecfe9757ddb55292bfe45791daf210171fbae9b754cfe16c674e809127e31c1b2e46', 0, '2021-05-28 03:33:17'),
('b71341103ca8d1738f031ec2deaebbef4fd03cc1546fedbbc305609120c4f2ed0d4609ff4479d77c', '253f05d9ce7b05d2dadbf939a307891f482b8bac932e89746fd1fd7b89e18550b1fbec2d549cd69b', 0, '2021-05-30 21:09:57'),
('b75fc253cad7cc3bae82d2ec339197b6915cc09be405d8df25054b51e314bb6d5bda6f48deb47771', 'e21e63ed7c4a0dd69c1bf49a5f427da103896b9ed712a560cf2f98611ac56dd40731262bbe10af13', 0, '2021-05-28 02:56:49'),
('b7eab16c05ab2718e2afc1c1dec1d0a09d1bec54ae767e13a5e01e3433958109ffeb6450e802897d', 'bfac4272ec9075406772f08427c67b2e46161d8ee64520116438d039df03a2408d58185706f2b61a', 0, '2021-05-28 02:50:15'),
('b87a3af0c5cf29cb45cb38b878d4cdadde24f456f000936b431021206d269c69a70ae4e1e2b30da2', '3214181e4c3dab404e67ce02d972bd2b444ba3cbd54bbc3ee7a9badeecc0a39aaaf2d1b21097d9e7', 0, '2021-06-09 22:10:05'),
('b9f9e5e523fa7b367ca590b9a4703c09e122fb0aa379ac4e3d16bce54b89864bbb9b18c32a1a0fae', '890da28197ab9f7d362c72c39c4f334683012c8898cc56de16e1caad97407b0573d2303bf4f6b68c', 0, '2021-05-24 13:09:49'),
('ba3dccdd8b46820cbddc72f1f8c36fb60413e2d55b1bf5cf8c43bbc5ac72996bb4a98cd85874ebc7', '09b77aa4be91f772d27b263484542ccff2f121a3a7a22b88f8229d05c1e73f51125c83e61fd59cef', 0, '2021-08-19 09:09:10'),
('ba649999ec39ec68da6e8d49f71c840650f2fa0544cadf69094fead4d0747d23ccf7ca3116680c2f', 'cd81b7f89cd0fce9bc1b1bbaa4dc73008494152f198fd4bd3830ae1e18863a096384e6a52a9b7cc8', 0, '2021-09-05 00:30:22'),
('ba95e4573e785bac124a079ef6643ba97ac42686bf1e81e54e46c41ca0f9e67fe04cadda9be465a7', '780199bc6337dc0da5ee4f3278ce6fad63651f8cd7f3467ad664b1c2bb892028d0d3d6793358f142', 0, '2021-06-17 13:34:33'),
('bc2c7d84410aa997543b7f6e9f1f948d429d42f86a560dff5eb404dfe7058ca9e191062e0cfc5338', '418f0b71fd97abcc03eac96dfac09a12ae27de228e361dcf64e32c68c2735dcfdda2a485ae79606d', 0, '2021-07-08 13:24:59'),
('bd3f8c62cab1e113111154f1e5ba3d2b2b29f303c617ed8018fbed6a343ba00bfc7158727cfc46b9', '612a1ffc2ac8f3faea601724da649b624bee2625de9c8c44b36b4964ab2b809cfd4491e3b49f1f5c', 0, '2021-05-28 03:39:23'),
('be758f40e4bd36bcdcca35c99fdc86d4c715cafadfac21ec2b499bcaa19481557befeccfe22b38b7', '24386f60609251916dcbc9dde701edf0bd96c0eb7e940d28c0a8b24081ffce216bd018d854d2a0ce', 0, '2021-05-31 00:28:40'),
('beb8096f9bb7afc7ff25b8eba90a4535972bae110ff18ee90c1aa1489f9db0244439e39556d08ad2', '380fca70f5c509145a5a2a54e0c6602784e433218e80fc1cb024e6f3ca32400bd5bd47c8ab0e8042', 0, '2021-05-28 03:31:59'),
('bf04ba8b641dd70d526e889bf69fffa2661d645fa63fc143f8751e496d57f868192ff61285fa7450', 'c18fd91120e3974f303cef2f03a06224a540afced7afa342c7b5e39b8b0606e97921aefeccfc2e6b', 0, '2021-05-25 08:58:18'),
('c03f0d713c6a5095f099965b7b8a3049859278ab25fcfa325c4a11b3332d853d74fb4ccac0648286', '0600f30ca10120e1f4c9f77d1a83ff800f7794020da78a7aedae9c7f194f2560fe1c8e2bb1c03739', 0, '2021-05-28 12:54:51'),
('c1c0794d0e076f60be1a7ab1468a192a1d9b2814b1750af8c377f4a41dcab3ce709f8265f04e5d31', 'f9617aae040112027a00fc2fcb2ad176af4a1730dc130181c493e834bcc4e12150a242fea3365e1c', 0, '2021-08-24 19:50:00'),
('c22b3deb21b93625bf131aaa7777a0a2bb4be33e09659c06a9ee6a6d9d52d55f22adf341720b87b7', 'b9cc7eb7a5f2ddeb00609dc66105f043a0138b408678aff1a1e38ed221807d7d6a91e8aa4ca96ebe', 0, '2021-05-21 23:40:49'),
('c3b20217d895c9f2bfcb12d886cc06e0518ce83f04b5a44e13d43387760c54189b6057d1a8433c16', 'ba0dd52320d46d1ade3533051290a8ab10558b4260fa6820d0a26cc848cb7a32b8f6463676417cb5', 0, '2021-06-17 12:23:29'),
('c4ae06042f7f03ef06e325210c3f399799b15551b4df162f35b9f4fd279a73ba87b4897a3a7dfd2a', '8f862fc0f08155cf22d19bab6d26e9b2f9ae10bba60768eb4c71437a025702d2f17a66dd2ba9a854', 0, '2021-06-26 13:10:31'),
('c4ef885a4787debbb41826ebb9b5e91a84b7c964137c752996738f91005e6da4e99ed0dee56f251b', 'e3e3073a08d3aaaefdac4ef5468e1a754675d42491cc100c76a882c52f5e6d86098aa3f27e081b07', 0, '2021-08-29 10:07:33'),
('c504cb624d4a30ddd98b88a4189ac8348d7e62a93a86c810e5750243307a183398852a726eca52bd', '42feab9994f62f2ac0f50bb82015560b1cb5faa8d36851cb7d51005c1fcfca1c9d6dc23702443dd5', 0, '2021-05-28 02:55:49'),
('c61d1d4ea5e0155bb343a2cd0360f2c42f490629bdd3477cda379e1d036a9a9bc15225c9ed76725e', '6fdba78dae83374bc0c14fb423d066acf3eb3844d630fec92f7be33cd37bbc8dce84f41c7ab43fa3', 0, '2021-07-30 20:13:04'),
('c62ed6ac3708772a929020dfbebe4aef446b7a0e8a840c0ca0954747d7faff10f47be633c91eeaed', 'c43157657e5f0ce17060d7aaa5b9e4f31298c13c483c6fcf12c420c36c64f81c2798994d40a9c3b4', 0, '2021-07-09 07:51:49'),
('c6965f131e58a171f3d3b4830d6430eca2696f086b6113a19a7bf9fd1b7c4ec9c5cbe3a9c7853969', '63f5f1c9df0eb89466b5e805be0662035d9ce404570e26ba0c95abb6205e9ad3e1e1057342815b83', 0, '2021-05-28 02:34:40'),
('c6acc344d43bbcd7bb0911d51db582b48e1ff71965ce04016f8c31e66d2a95d1a8a79d3a7b50e466', '9d716ba43a0d8face7678155db1cfaba5bccd9b3720c71e02d1e11a7e33f3348eb3ac1ef3b0ee879', 0, '2021-07-22 17:21:42'),
('c7eca4e6855661ddc46b726f709721f4f8d535f5f0d1c6737d77f717f2f51f8ffdc9fb23d9007b28', '67e61b40488724e1a41c2e86db10ae8ba47be9d87779d1c59f8e1fed5bf96d8a95d4625a952f4151', 0, '2021-08-25 08:43:09'),
('ca75c374358f34e8fc1e4b05b0d4b2f88f845709daafa2e341cbb7e89cca723518747341ee09a5f4', '1ce1679ce8d07913fdfac422bfc3f9672219e903866244d4a6ed06a196e23f294ac812fe132ca5b8', 0, '2021-05-28 03:02:59'),
('cb023dc33ca9ee7a05ef394522a7b1346e0b647a32e931034621b4192343d7083e51b87bfba45463', 'fbb99de2d507b8579d58bdd1c8e684353cd4e5e8699f53986cfe53ee0bb2db3fbce4959af3b95dc8', 0, '2021-08-18 23:53:29'),
('cb2cd0b1a3ecedceb7998f2e9085415a2ced63e38c87ab740af003b523772d4bf2f7028963c9c63e', '65e2539655e5a45d0bc97512bdc447c7baa7f9fb8a61b403c65e968fe49fe6d0d15525ad648fcd6e', 0, '2021-06-09 22:13:53'),
('cc296b65947857d3ed4c99c3a8c92df70f4575f09d71a06ac43058fd0ef8a5ac97c295d2bdf184e6', '1163ceb4d7655402f93102fdfd3ea4d922743eabcf49c74acc6e840147fd15a927d823d6e06059de', 0, '2021-06-15 09:34:58'),
('ce9bcd7a3818eb615744f517c40e9b6f6d5296396f1082846d84a64ae18599a5145b41cc751c8740', 'fd4a63f7fcab06c26e4f76b1e7723514dea2e7eb0044fd0b6d1d1e33e9a06195c2c7f1e25075d1f5', 0, '2021-06-16 09:46:37'),
('ce9c843dd24760b8d50cea194153c11c0ca21c8ecaeb45033b118a029d8ca48484dd16fb834efdbd', 'abc207d97c086b7ea5ca6b6c304786806d889a8f4d1957d6f61dfb2c1b827fa21b5161a436cf7de4', 0, '2021-05-29 11:12:31'),
('cec148caa3ef242f0e049f63a827f514409c50fb56337b888aeaa8d454051eb1da3982b24242bc54', 'd8ea1fed7bba99cafd0856cc19582de43d98c86ff38e1e9c5926e0d29a8d61931dbdb6f7e1d47af4', 0, '2021-06-09 08:36:27'),
('d2d77fd4b114920493b2ec1aa2c2fba500361c5d6de52404cf6ce6aaf70a8e130c2609145e92b233', '191e7bf980ba9731134fee19af1ff7550ed888995987c805168acc18a6e50a30d4ea453e49e973fd', 0, '2021-06-17 12:24:11'),
('d3a7538016f1fc19b365537520c86fe27e7f5155fa208017d3fecb852d947858dd2d205adbbcbd77', '8da7e3c94bec16c487a30524f9fd1cb1eefdba9f156876bd466af3a43af6b6b2554a7c7d21f61d3a', 0, '2021-05-28 02:43:07'),
('d3b5d3b3bc26cfaf3d4aa084457ce145ae99ec2bffc8c279f423970e5db0b3ef63a23d3c84b5fbe4', 'e743cddd8b76747f726838908a03558082c61fd265e37fd5fbfaec32dbc72e1e49d9a43ca7aeb074', 0, '2021-06-20 22:28:45'),
('d3feebc7d2253c79554044b05edd0b49aba349d2b5077fe621ce9785884796c020f5a09ed08f9538', '78968386ec03ef829ac753f4bd7642ae38c4ba25de4443e639a7cd972d5008808c96642c502f863f', 0, '2021-05-19 17:00:21'),
('d6047b739ccd7326b64dd5e20378d2743e48016533067a88cde08be5217a22dec8fa13f4deb9ad5d', '636934dead13f53ad2072c555f173e8333a2418899515419b06bbca9de69c73b2093c2934b366a12', 0, '2021-06-22 08:43:57'),
('d6c13aa62a05d1ab7081a46b50123bd5fff5f1084a62f50dc2bf7786047b0c7c5f7760fb36914fb3', '0443f047e636cc1b51e6b8a84c7264b55e4391003c6a74240970548bbbcee504e5b0e84853dceddd', 0, '2021-08-20 12:06:57'),
('d7788cb49706c2b6a3f30f62d41847786b38712e3183c07266193722a2966a1b2980c27001b685fe', '9cc455470e3821a557f74f7b5fde3fc04472a24d1810a35eb279de1ff803422de98df3687ddb2ade', 0, '2021-06-23 16:55:27'),
('d7805640c74ce9d75a21d94d34352a67c313d8f8e5a612752a683ee0d1aae7c9bfd97ef20276815c', '64c25c0c75361b36b422f346f6a774faf7728385e3184f37778d1fe233188edffd0b83af6c913551', 0, '2021-06-15 10:23:24'),
('d7bc3c56c4e90ef196408fc0f5595b117e4537fa7367bd1ef19cd0b274358c8d8cd01289179c74b8', '6230be3db3636558e0c070b997b08008f81b96b5ad33bd43707dc08716de37f3363c35543d1b8b01', 0, '2021-05-28 02:38:56'),
('d82c308a643e8776e8fa15c367462b858b27a32fc987c9c2a76be57c795faab41345ab985c284150', '3bfa3890af286e986fcf0249eacf46aabdecc04a1e8ff506418515ddf20ad251d18dd44f3700fcab', 0, '2021-06-16 06:46:07'),
('d87395fe5bdfe4811318458c9d963909fcd6bc32d387be1b2771499784c2d4943495e0578182d93f', 'f07d630cc9d41b702ac84cf73c70236262bb2587d9ce596a2b03c42a565a2d9c8b600b912aa8c26e', 0, '2021-07-07 14:42:37'),
('d8acb104263dbb6c26c193fd8f3c4b2b5c08eea73165315857032f759f720db4772961b35cd6b402', '7d24d49a6ead11324255454357142e909d664801f85b60bba6430b36b60ea171dceb0c122f1903ae', 0, '2021-05-20 08:52:08'),
('dc5c3b04cd3b59565b4978faba854a5fe96b893fbe3b66298972141c6eba049f2872ae9a1e43ff8f', '45e6a5b47a4e619a945d2a27cbf4588388438827169c4fb460406282e959581217286e9ece7ac426', 0, '2021-08-26 01:20:28'),
('dff8d8df958ab29990f433bc9395adb212c690ac6fd06b67a4145c29dddbb2d958f54bcee0e92393', 'ce68b74aab4442b6e0261f9f0ae0d9082b478027d2882d5295df8ba56a8f8cc2aabaf3815dd0a859', 0, '2021-05-28 01:50:44'),
('e064a442f7015e95ff607e0268cf0ad4c45e12922512cdb81274ea73a5b2f8980e4127f7e785263f', 'af8d0e6ab1bdf2cda861ccc7faf9a78a362f14104dc00522237cacf30dbe574fe47e7b41ba1a856c', 0, '2021-08-16 22:16:07'),
('e099f62c9bfc78229bd7bb0afc0a1069df02e1d7d063db4d04b99f5ff4a2cbf91d65b4bac74ac0ad', 'df4d2bd4326cf4779421c31370d71a8ee142e83268ad54346848699309cbd3edc9594269aee88113', 0, '2021-05-28 03:08:06'),
('e09b94ba554a5805a251e64daf1853b3ea2ea817090928a730504e6793ba0a76a0ec2615cd8a227e', '87fab891939d9c8a737268043e9ce8ff2d725b9ed31c8e816ebcf89cb4a03de0701db9751a054477', 0, '2021-08-24 12:02:05'),
('e0db8d98d9f20ab580918576786abc3c6880c36cb62e892af42ae762816e7f7861449c5dd045e353', '1edd5df590565b3fdf66bd90b391f0501df0ca659414b18b8276d20e7f35920cbc295b10e8b5cc0d', 0, '2021-08-24 13:17:55'),
('e2e4db29468d4d387eead74bece488237bdec470ae577b4c5403b9f8d31a71bb01bd2d7938323307', 'b4f0348d588265cf73d2a64e59761692bf3cebf6b93e2d12895e1aa4967ee5050c2dd3b76295a428', 0, '2021-08-24 13:14:01'),
('e39a30f06813fe0771482eb678dae68dba0a6f740e8738f6bb191341444fcda64f8470279efe9b23', 'ba5a5bc7e215c237a473a31e771de37e9ca107064cc38459b4e088218b6321fdaa8fd26d080480fb', 0, '2021-05-28 03:58:17'),
('e39d1979e6d37f17b6d6a58ed95f519700ab269806b79e699aa41194a7b144458a6e7a7efb883d2e', 'adb182d83f4a8844346e8f6d6e381c9c5e884f6d1d345238e047cb275d28ce34b5f61242e182e5c1', 0, '2021-05-28 04:05:57'),
('e6b358a0bb208d87b230f931ff52a658fce7aad176212412dba9df94de53ddab0d69c6fed2869ed2', 'a959bf1dc815ab924add1548944724d57f0398349e3bf80864669328b3453d18bec328f466a63268', 0, '2021-05-24 13:10:21'),
('e6de355f87cf8651740e66d86ae043de27f19c3f09ee941cfbadec76dcc7cbe5f6d1fbe2711767d0', 'fc6e071561200e74cce4f4683a867877dcba391631aff450b3276a6112b236be0ab974514ff3c279', 0, '2021-08-04 21:41:48'),
('e9401d89456c0b07e9ca4192e2bf2e2bd6032840b75c554204a5be30ea2cc06c48fd8b1d6ef2c883', '3da3429c54e294a8bcb1c03775f1b8c912f22fa0d55fb2b133404304274fae69b266bcc3d89a6cb9', 0, '2021-05-28 04:11:48'),
('ea4582764e8324d5fd942e5c558ed104c1a7865e2a4b9f085eec68493e02b2892631701f679f2f8b', 'f0481d594f3fb36abf5d4cc7c66aa25aac1d94f32b079dcc82100272bcc4846e9b437feb32f1fec5', 0, '2021-05-28 02:52:32'),
('ea9f1be72d1eb3962710d74f911518b660c25ecd42f2f1995e9252c12ec8f685b4e94e07b31270f4', 'f2ac4cf70e5eb515ce4d05ad1d6712fbcc6379db62ff9b4aa662894b89dec32716e97b13031c4cff', 0, '2021-05-28 04:19:47'),
('ed74fe13b07aa94df24ab13bd73e7ad4b8754fb54f01fd97199c3e3bc5007ccfb05da71025f6d099', 'd649e9dbd76b677eef6c2c65b0ef5ff7585cce8dc5642a30987d496d5ac58f4a9beb148c62dd71ff', 0, '2021-05-28 04:01:39'),
('ef07db5d62e2e91e66d6a6e7076f42b63c07f43c85ec165ee8047310c1e5959486aedd03a05ad299', '9afeb5ce296c50552dead4f768e6cb7b828a7ee3f23b7e7ac324d87e7ae6221dee46e05718e4d1d6', 0, '2021-06-10 08:57:11'),
('f12cc8b391e57aa417c6e1750c31711ed13232c2fcfa361d42d361b6acd80d1cc75c954693a538c5', '82d86b2ddfbaa89b4b32f54b133c49e949c4518f4e911b0ca712e0e88898b8d159884788eb3dda91', 0, '2021-05-21 23:11:11'),
('f1ef4a15b0ea4ee7fc6a9af475634e8ac8f9469a714404649590222b17c80e71a71df336323a7417', 'd70b5ad0634d613f5abf938c895896ad988e1db62d4bd6bca4cbd2960a41e22e87777b22911d26b5', 0, '2021-06-09 22:10:23'),
('f4575987c6d18e2c10926815a7ef35384798c015360cf9d02900e4fc234402ce451145e03b0ae755', '99c3c7a11bd737b577c0086970269dc23f37772406a1d0df531877cde2646ae8c82eb98b12f1f5d8', 0, '2021-09-03 12:58:51'),
('f5acf0b42b5221d0e99c1fc15c9888c4abbcfc7b9101b9404af54a1d78f3f1ee4d690468efd5f150', '09fcfb2017a8b56be0eeb9ce8c2fd2f2c5761a01cebd3068583501efaef33b9bcbc686ba68899545', 0, '2021-05-28 03:35:47'),
('f5b21718e3a850ea15b3c47e3dc76e8bd356e05332a50a016138036a17c86dfd22db15a9d2a6ebdc', 'ae6181d0b776875b01ad1173ff29ca2c59b19ddd4c33a8a968f6084ee2167f9452416790a20f18d3', 0, '2021-05-28 02:47:59'),
('f65a66c31194e265fdd703afaae55eaecdc0958a378ca466c79a0586d6f65a6863894b6289a54636', 'e5bfd7aa3e741dc794d8ff08040843c2dfb279a1e2031b1b2fa7d965c8d1f6baad854efd9a81101b', 0, '2021-05-28 04:05:00'),
('f8796111f359557edd6bfc570dc29e051f1e84c099db5cec608273d4f96a53a4ac30684f23eac22f', '616670dd40c5764c70f0ca49aa664fb0e9a5dc5b7a6c66ca604ed639ac69730ac018dec46ddce546', 0, '2021-07-03 07:40:44'),
('f8b4250c188d4e981d214669de629241b50593627e15bab64351a8321e7494cc0c7378d279172676', '1fa85b27f37d3cb424358da9d7ef3b94d8bb90f5b5de136f263cab00d88a4bc8dd6a0247a9701199', 0, '2021-05-28 01:54:35'),
('f8b8513091b75bf08baee4593fe17e0273bf35e6c97aa9d96df90c53db2a3e6f46151cf235ff4a44', 'd2292d31ad303715c2a5504b33389613e79f9842da0c82ae7b479c810587497a420afd203715577c', 0, '2021-09-01 23:58:42'),
('f915c6aaa064b41765942866edd38c33654fa4032ab71e8e178459e98a9297d5ffc47cbcd351e142', 'ba83671de107cd834820353f3fc80705e40abf7fb3632c8c9afd33b0f0e20ea4de8a4f291eab4a79', 0, '2021-05-24 13:09:00'),
('fa45f1aa78994a211949b7b56d384a46588b91f9b8fb3503a4f6d5f8e694b6d5e981baf8aa03ca65', 'c710f7ff2f759207f24d684faa8613fe6de887b9c0cb7dd06ffbbc3d28515ea7fd0107e541d34cb4', 0, '2021-05-28 03:03:32'),
('faa2269f3d17c07e125124f311e797b445b89a29384b97eccd26c268a248e43c4a104fc0f9e2a018', 'b5069ba787e017b104a0b8fd81f0b0dc3d10427411dcc7ba3783326214aafd8a1c543cde8f9117f7', 0, '2021-08-24 12:03:19'),
('fc24e14a9bb2ef1f572871d3f669c7192ba42cec3420cd22b04da8f97bd06f9cb7672b614eacf5ab', '19361f7fdafeee5aab19eab7635622483a676e1dbf92017c19ede7ad83e92ad54bf5546fcf545d16', 0, '2021-09-03 16:14:55'),
('ff24dc8d47391306fa2dd682edcb40571fabcd052fae998895b366300e4767e23df92d116eb2b526', '6ccc822dda30fe8b94b7947797ac808aa3ac4140b14329542f13b8f541254905ecd05f9986b35be7', 0, '2021-06-21 23:52:53'),
('ff83baf758ea69622e7beeb31e1f952805f9951343be613919e9c4f39ef15cd00aa6f0102efb05c7', 'f2478dd61e78d1d93bf1e8cb5d2f5374399a4568da64b1556d76bde7c724ff9f34698bd1e07cb50c', 0, '2021-05-28 03:46:54'),
('ffa0ed66e1211a61c61eb8822fc74744fb9d015279b393ae9336c1264efdeea42fb021fb3b5617e3', 'd69875d000ce77f9d3a489c1790b8265bcb1a7bf5e0567b50001f00138bd237b8cfa8716675bee9e', 0, '2021-05-28 02:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci,
  `total` decimal(11,2) DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `billing_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `payment_id` bigint(20) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `cart`, `total`, `address_id`, `billing_id`, `shipping_id`, `customer_id`, `order_status_id`, `payment_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '349806188', '[{\"id\":21,\"Description\":\"<p>Product description<\\/p>\",\"Media\":[{\"id\":7,\"name\":\"NqsSIGhu7TM4rOLgLizb9Sted1zRygS4.jpg\",\"pivot\":{\"media_id\":7,\"product_id\":2},\"width\":800,\"height\":800,\"user_id\":1,\"created_at\":\"2020-08-29T08:35:16.000000Z\",\"updated_at\":\"2020-08-29T08:35:16.000000Z\",\"product_thumb\":1},{\"id\":5,\"name\":\"M17reL2UMOQZ5Y9qbVkYeIjENoSRx0I6.jpg\",\"pivot\":{\"media_id\":5,\"product_id\":2},\"width\":800,\"height\":800,\"user_id\":1,\"created_at\":\"2020-08-29T08:35:16.000000Z\",\"updated_at\":\"2020-08-29T08:35:16.000000Z\",\"product_thumb\":0},{\"id\":6,\"name\":\"wVhWpH80D4ZTZlOaA3OaFpNqi6POzz9V.jpg\",\"pivot\":{\"media_id\":6,\"product_id\":2},\"width\":800,\"height\":800,\"user_id\":1,\"created_at\":\"2020-08-29T08:35:16.000000Z\",\"updated_at\":\"2020-08-29T08:35:16.000000Z\",\"product_thumb\":0}],\"Price\":\"1.00\",\"ProductName\":\"wuwehw\",\"Quantity\":1,\"SKU\":\"50\",\"TotalPrice\":\"1.00\",\"ShippingAmount\":0,\"user\":{\"id\":1,\"name\":\"peters\",\"firstname\":\"Peters\",\"lastname\":\"Example\",\"avatar\":\"http:\\/\\/localhost:3000\\/static\\/media\\/slide-01.e1387133.jpg\",\"email\":\"peters@example.com\",\"email_verified_at\":null,\"access_portal\":1,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":20,\"Description\":\"<p>Product description<\\/p>\",\"Media\":[{\"id\":3,\"name\":\"WxIJ5hqRI4ZIBEeeR3LR2kPogBiMIx8P.jpg\",\"pivot\":{\"media_id\":3,\"product_id\":1},\"width\":800,\"height\":800,\"user_id\":1,\"created_at\":\"2020-08-29T08:03:32.000000Z\",\"updated_at\":\"2020-08-29T08:03:32.000000Z\",\"product_thumb\":0},{\"id\":2,\"name\":\"nhRwgqSsYhIZCwBfBT0lz6Z6GRiTFiI5.jpg\",\"pivot\":{\"media_id\":2,\"product_id\":1},\"width\":810,\"height\":1080,\"user_id\":1,\"created_at\":\"2020-08-29T07:59:53.000000Z\",\"updated_at\":\"2020-08-29T07:59:53.000000Z\",\"product_thumb\":1}],\"Price\":\"234.00\",\"ProductName\":\"Long Sleeve Tshirt\",\"Quantity\":1,\"SKU\":\"PJ2674L4L\",\"TotalPrice\":\"234.00\",\"ShippingAmount\":0,\"user\":{\"id\":1,\"name\":\"peters\",\"firstname\":\"Peters\",\"lastname\":\"Example\",\"avatar\":\"http:\\/\\/localhost:3000\\/static\\/media\\/slide-01.e1387133.jpg\",\"email\":\"peters@example.com\",\"email_verified_at\":null,\"access_portal\":1,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', '0.00', 1, 0, 0, '1', 1, 0, NULL, '2020-09-05 05:31:43', '2020-09-05 05:31:43'),
(3, '348219919', '[{\"id\":20,\"ProductName\":\"Long Sleeve Tshirt\",\"Price\":\"234.00\",\"Description\":\"<p>Product description<\\/p>\",\"SKU\":\"PJ2674L4L\",\"Quantity\":1,\"TotalPrice\":\"234.00\",\"Media\":\"[{\\\"id\\\": 3, \\\"name\\\": \\\"WxIJ5hqRI4ZIBEeeR3LR2kPogBiMIx8P.jpg\\\", \\\"pivot\\\": {\\\"media_id\\\": 3, \\\"product_id\\\": 1}, \\\"width\\\": 800, \\\"height\\\": 800, \\\"user_id\\\": 1, \\\"created_at\\\": \\\"2020-08-29T08:03:32.000000Z\\\", \\\"updated_at\\\": \\\"2020-08-29T08:03:32.000000Z\\\", \\\"product_thumb\\\": 0}, {\\\"id\\\": 2, \\\"name\\\": \\\"nhRwgqSsYhIZCwBfBT0lz6Z6GRiTFiI5.jpg\\\", \\\"pivot\\\": {\\\"media_id\\\": 2, \\\"product_id\\\": 1}, \\\"width\\\": 810, \\\"height\\\": 1080, \\\"user_id\\\": 1, \\\"created_at\\\": \\\"2020-08-29T07:59:53.000000Z\\\", \\\"updated_at\\\": \\\"2020-08-29T07:59:53.000000Z\\\", \\\"product_thumb\\\": 1}]\",\"userId\":1,\"processed\":1,\"created_at\":\"2020-09-04T22:24:35.000000Z\",\"updated_at\":\"2020-09-05T05:47:48.000000Z\"},{\"id\":21,\"ProductName\":\"wuwehw\",\"Price\":\"1.00\",\"Description\":\"<p>Product description<\\/p>\",\"SKU\":\"50\",\"Quantity\":1,\"TotalPrice\":\"1.00\",\"Media\":\"[{\\\"id\\\": 7, \\\"name\\\": \\\"NqsSIGhu7TM4rOLgLizb9Sted1zRygS4.jpg\\\", \\\"pivot\\\": {\\\"media_id\\\": 7, \\\"product_id\\\": 2}, \\\"width\\\": 800, \\\"height\\\": 800, \\\"user_id\\\": 1, \\\"created_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"updated_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"product_thumb\\\": 1}, {\\\"id\\\": 5, \\\"name\\\": \\\"M17reL2UMOQZ5Y9qbVkYeIjENoSRx0I6.jpg\\\", \\\"pivot\\\": {\\\"media_id\\\": 5, \\\"product_id\\\": 2}, \\\"width\\\": 800, \\\"height\\\": 800, \\\"user_id\\\": 1, \\\"created_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"updated_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"product_thumb\\\": 0}, {\\\"id\\\": 6, \\\"name\\\": \\\"wVhWpH80D4ZTZlOaA3OaFpNqi6POzz9V.jpg\\\", \\\"pivot\\\": {\\\"media_id\\\": 6, \\\"product_id\\\": 2}, \\\"width\\\": 800, \\\"height\\\": 800, \\\"user_id\\\": 1, \\\"created_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"updated_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"product_thumb\\\": 0}]\",\"userId\":1,\"processed\":1,\"created_at\":\"2020-09-04T22:24:42.000000Z\",\"updated_at\":\"2020-09-05T05:47:48.000000Z\"}]', '235.00', 1, 15, 1, '1', 3, 14, NULL, '2020-09-05 05:47:27', '2020-09-05 05:47:48'),
(4, '259027362', '[{\"id\":22,\"Description\":\"<p>Product description<\\/p>\",\"Media\":[{\"id\":7,\"name\":\"NqsSIGhu7TM4rOLgLizb9Sted1zRygS4.jpg\",\"pivot\":{\"media_id\":7,\"product_id\":2},\"width\":800,\"height\":800,\"user_id\":1,\"created_at\":\"2020-08-29T08:35:16.000000Z\",\"updated_at\":\"2020-08-29T08:35:16.000000Z\",\"product_thumb\":1},{\"id\":5,\"name\":\"M17reL2UMOQZ5Y9qbVkYeIjENoSRx0I6.jpg\",\"pivot\":{\"media_id\":5,\"product_id\":2},\"width\":800,\"height\":800,\"user_id\":1,\"created_at\":\"2020-08-29T08:35:16.000000Z\",\"updated_at\":\"2020-08-29T08:35:16.000000Z\",\"product_thumb\":0},{\"id\":6,\"name\":\"wVhWpH80D4ZTZlOaA3OaFpNqi6POzz9V.jpg\",\"pivot\":{\"media_id\":6,\"product_id\":2},\"width\":800,\"height\":800,\"user_id\":1,\"created_at\":\"2020-08-29T08:35:16.000000Z\",\"updated_at\":\"2020-08-29T08:35:16.000000Z\",\"product_thumb\":0}],\"Price\":\"1.00\",\"ProductName\":\"wuwehw\",\"Quantity\":1,\"SKU\":\"50\",\"TotalPrice\":\"1.00\",\"ShippingAmount\":0,\"user\":{\"id\":1,\"name\":\"peters\",\"firstname\":\"Peters\",\"lastname\":\"Example\",\"avatar\":\"http:\\/\\/localhost:3000\\/static\\/media\\/slide-01.e1387133.jpg\",\"email\":\"peters@example.com\",\"email_verified_at\":null,\"access_portal\":1,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', '1.00', 1, NULL, 2, '1', 1, 0, NULL, '2020-09-05 05:51:57', '2020-09-05 05:51:57'),
(5, '898850711', '[{\"id\":23,\"Description\":\"<p>Product description<\\/p>\",\"Media\":[{\"id\":3,\"name\":\"WxIJ5hqRI4ZIBEeeR3LR2kPogBiMIx8P.jpg\",\"pivot\":{\"media_id\":3,\"product_id\":1},\"width\":800,\"height\":800,\"user_id\":1,\"created_at\":\"2020-08-29T08:03:32.000000Z\",\"updated_at\":\"2020-08-29T08:03:32.000000Z\",\"product_thumb\":0},{\"id\":2,\"name\":\"nhRwgqSsYhIZCwBfBT0lz6Z6GRiTFiI5.jpg\",\"pivot\":{\"media_id\":2,\"product_id\":1},\"width\":810,\"height\":1080,\"user_id\":1,\"created_at\":\"2020-08-29T07:59:53.000000Z\",\"updated_at\":\"2020-08-29T07:59:53.000000Z\",\"product_thumb\":1}],\"Price\":\"234.00\",\"ProductName\":\"Long Sleeve Tshirt\",\"Quantity\":1,\"SKU\":\"PJ2674L4L\",\"TotalPrice\":\"234.00\",\"ShippingAmount\":0,\"user\":{\"id\":1,\"name\":\"peters\",\"firstname\":\"Peters\",\"lastname\":\"Example\",\"avatar\":\"http:\\/\\/localhost:3000\\/static\\/media\\/slide-01.e1387133.jpg\",\"email\":\"peters@example.com\",\"email_verified_at\":null,\"access_portal\":1,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', '234.00', 1, NULL, 2, '1', 1, 0, NULL, '2020-09-05 05:52:21', '2020-09-05 05:52:21'),
(6, '896619451', '[{\"id\":23,\"Description\":\"<p>Product description<\\/p>\",\"Media\":[{\"id\":3,\"name\":\"WxIJ5hqRI4ZIBEeeR3LR2kPogBiMIx8P.jpg\",\"pivot\":{\"media_id\":3,\"product_id\":1},\"width\":800,\"height\":800,\"user_id\":1,\"created_at\":\"2020-08-29T08:03:32.000000Z\",\"updated_at\":\"2020-08-29T08:03:32.000000Z\",\"product_thumb\":0},{\"id\":2,\"name\":\"nhRwgqSsYhIZCwBfBT0lz6Z6GRiTFiI5.jpg\",\"pivot\":{\"media_id\":2,\"product_id\":1},\"width\":810,\"height\":1080,\"user_id\":1,\"created_at\":\"2020-08-29T07:59:53.000000Z\",\"updated_at\":\"2020-08-29T07:59:53.000000Z\",\"product_thumb\":1}],\"Price\":\"234.00\",\"ProductName\":\"Long Sleeve Tshirt\",\"Quantity\":1,\"SKU\":\"PJ2674L4L\",\"TotalPrice\":\"234.00\",\"ShippingAmount\":0,\"user\":{\"id\":1,\"name\":\"peters\",\"firstname\":\"Peters\",\"lastname\":\"Example\",\"avatar\":\"http:\\/\\/localhost:3000\\/static\\/media\\/slide-01.e1387133.jpg\",\"email\":\"peters@example.com\",\"email_verified_at\":null,\"access_portal\":1,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', '234.00', 1, NULL, 2, '1', 1, 0, NULL, '2020-09-05 05:53:17', '2020-09-05 05:53:17'),
(7, '317726364', '[{\"id\":23,\"ProductName\":\"Long Sleeve Tshirt\",\"Price\":\"234.00\",\"Description\":\"<p>Product description<\\/p>\",\"SKU\":\"PJ2674L4L\",\"Quantity\":1,\"TotalPrice\":\"234.00\",\"Media\":\"[{\\\"id\\\": 3, \\\"name\\\": \\\"WxIJ5hqRI4ZIBEeeR3LR2kPogBiMIx8P.jpg\\\", \\\"pivot\\\": {\\\"media_id\\\": 3, \\\"product_id\\\": 1}, \\\"width\\\": 800, \\\"height\\\": 800, \\\"user_id\\\": 1, \\\"created_at\\\": \\\"2020-08-29T08:03:32.000000Z\\\", \\\"updated_at\\\": \\\"2020-08-29T08:03:32.000000Z\\\", \\\"product_thumb\\\": 0}, {\\\"id\\\": 2, \\\"name\\\": \\\"nhRwgqSsYhIZCwBfBT0lz6Z6GRiTFiI5.jpg\\\", \\\"pivot\\\": {\\\"media_id\\\": 2, \\\"product_id\\\": 1}, \\\"width\\\": 810, \\\"height\\\": 1080, \\\"user_id\\\": 1, \\\"created_at\\\": \\\"2020-08-29T07:59:53.000000Z\\\", \\\"updated_at\\\": \\\"2020-08-29T07:59:53.000000Z\\\", \\\"product_thumb\\\": 1}]\",\"userId\":1,\"processed\":1,\"created_at\":\"2020-09-05T05:52:13.000000Z\",\"updated_at\":\"2020-09-05T05:54:27.000000Z\"}]', '234.00', 1, 16, 2, '1', 3, 15, NULL, '2020-09-05 05:54:09', '2020-09-05 05:54:28'),
(8, '187777143', '[{\"id\":24,\"ProductName\":\"wuwehw\",\"Price\":\"1.00\",\"Description\":\"<p>Product description<\\/p>\",\"SKU\":\"50\",\"Quantity\":1,\"TotalPrice\":\"1.00\",\"Media\":\"[{\\\"id\\\": 7, \\\"name\\\": \\\"NqsSIGhu7TM4rOLgLizb9Sted1zRygS4.jpg\\\", \\\"pivot\\\": {\\\"media_id\\\": 7, \\\"product_id\\\": 2}, \\\"width\\\": 800, \\\"height\\\": 800, \\\"user_id\\\": 1, \\\"created_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"updated_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"product_thumb\\\": 1}, {\\\"id\\\": 5, \\\"name\\\": \\\"M17reL2UMOQZ5Y9qbVkYeIjENoSRx0I6.jpg\\\", \\\"pivot\\\": {\\\"media_id\\\": 5, \\\"product_id\\\": 2}, \\\"width\\\": 800, \\\"height\\\": 800, \\\"user_id\\\": 1, \\\"created_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"updated_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"product_thumb\\\": 0}, {\\\"id\\\": 6, \\\"name\\\": \\\"wVhWpH80D4ZTZlOaA3OaFpNqi6POzz9V.jpg\\\", \\\"pivot\\\": {\\\"media_id\\\": 6, \\\"product_id\\\": 2}, \\\"width\\\": 800, \\\"height\\\": 800, \\\"user_id\\\": 1, \\\"created_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"updated_at\\\": \\\"2020-08-29T08:35:16.000000Z\\\", \\\"product_thumb\\\": 0}]\",\"userId\":1,\"processed\":1,\"created_at\":\"2020-09-05T06:02:02.000000Z\",\"updated_at\":\"2020-09-05T06:02:45.000000Z\"}]', '1.00', 1, 17, 2, '1', 3, 16, NULL, '2020-09-05 06:02:39', '2020-09-05 06:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', 'An Incomplete Order happens when a shpper reached the payment page but did not complete the transaction', NULL, NULL),
(2, 'Awaiting Payment', 'dd', 'Pending Order happens when a shpper reached the payment page but did not complete the transaction', NULL, NULL),
(3, 'Awaiting Fulfillment', 'awaiting_pending', 'Awaiting Payment Order happens when a shpper reached the payment page but did not complete the transaction', NULL, NULL),
(4, 'Awaiting Shipment', 'awaiting_fulfillment', 'Awaiting Fulfilment Order happens when a shpper reached the payment page but did not complete the transaction', NULL, NULL),
(5, 'Awaiting Pickup', 'awaiting_pickup', NULL, NULL, NULL),
(6, 'Partially Shipped', 'partially_shipped', NULL, NULL, NULL),
(7, 'Completed', 'completed', NULL, NULL, NULL),
(8, 'Shipped', 'shipped', NULL, NULL, NULL),
(9, 'Cancelled', 'cancelled', NULL, NULL, NULL),
(10, 'Declined', 'declined', NULL, NULL, NULL),
(11, 'Refunded', 'refunded', NULL, NULL, NULL),
(12, 'Disputed', 'disputed', NULL, NULL, NULL),
(13, 'Manual Verification Required', 'manual_verification_required', NULL, NULL, NULL),
(14, 'Partially Refunded', 'partially_refunded', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) NOT NULL,
  `post_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_status` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) NOT NULL,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  `post_visibility` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_author`, `post_date`, `content`, `title`, `status`, `comment_status`, `slug`, `post_parent`, `guid`, `menu_order`, `post_type`, `comment_count`, `post_visibility`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-06 12:21:35', NULL, 'Top Offers', 'publish', '0', 'mobile_deals', 0, NULL, '0', 'normalPost', 0, 1, NULL, '2020-07-06 09:02:48', '2020-07-06 09:21:35'),
(2, 1, '2020-07-07 12:02:32', NULL, 'Deals Of The Day', 'publish', '0', 'deals_of_the_day', 0, NULL, '0', 'normalPost', 0, 1, NULL, '2020-07-06 09:53:57', '2020-07-06 12:02:48'),
(3, 1, '2020-07-07 12:02:29', NULL, 'Big Steals Of The Weak', 'publish', '0', 'big_steals_of_the week', 0, NULL, '0', 'featuredPost', 0, 1, NULL, '2020-07-06 10:32:37', '2020-07-06 12:02:39'),
(4, 1, '2020-07-07 12:53:57', NULL, 'Best Today Deals', 'publish', '0', 'today_deals', 0, NULL, '0', 'homepageAd', 0, 1, NULL, '2020-07-07 09:09:15', '2020-07-07 09:10:58'),
(5, 1, '2020-07-09 09:16:58', '<h4><strong>Header Content</strong></h4><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><th>Header 1</th><td colspan=\"2\">ddgd</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><th>&nbsp;</th><td>dhd</td><td>dgd</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><th>&nbsp;</th><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><th>&nbsp;</th><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure>', 'Blog', 'publish', '0', 'blog', 0, 'http://localhost:8001/blog', '0', 'page', 0, 1, NULL, '2020-07-09 06:16:58', '2020-07-09 06:16:58'),
(6, 1, '2020-07-09 09:54:45', '<blockquote><h4><strong>ddcc</strong></h4></blockquote><ol><li><strong>dhd</strong></li><li><strong>dd</strong></li></ol><ul><li><strong>dd</strong></li></ul><blockquote><h2><strong>dddd</strong></h2><p>&nbsp;</p></blockquote>', 'Contact', 'publish', '0', 'contact', 0, 'http://localhost:8001/contact', '0', 'page', 0, 1, NULL, '2020-07-09 06:54:45', '2020-07-09 06:54:45'),
(7, 1, '2020-07-09 04:14:17', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fvfffffffff</p>', 'Blog', 'publish', '0', 'blog', 0, 'http://localhost:8001/blog', '0', 'page', 0, 1, NULL, '2020-07-09 13:14:17', '2020-07-09 13:14:17'),
(8, 1, '2020-07-09 04:17:56', '<h2><strong>What Are The Secrets To Start- Up Success?</strong></h2><p>&nbsp;</p><p>What a crazy time. I have five children in colleghigh school graduates.jpge or pursing post graduate studies Each of my children attends college far from home, the closest of which is more than 800 miles away. While I miss being with my older children, I know that a college experience can be the source of great growth and experience can be the source of source of great growth and can provide them with even greater in future.</p><p>&nbsp;</p><blockquote><p>Do what you love to do and give it your very best. Whether it\'s business or baseball, or the theater, or any field. If you don\'t love what you\'re doing and you can\'t give it your best, get out of it. Life is too short. You\'ll be an old man before you know it. risus. Ut tincidunt, erat eget feugiat eleifend, eros magna dapibus diam.</p></blockquote><p>&nbsp;</p><p>What a crazy time. I have five children in colleghigh school graduates.jpge or pursing post graduate studies Each of my children attends college far from home, the closest of which is more than 800 miles away. While I miss being with my older children, I know that a college experience can be the source of great growth and experience can be the source of source of great growth and can provide them with even greater in future.</p><p>&nbsp;</p><p>&nbsp;</p><p>What a crazy time. I have five children in colleghigh school graduates.jpge or pursing post graduate studies Each of my children attends college far from home, the closest of which is more than 800 miles away. While I miss being with my older children, I know that a college experience can be the source of great growth and experience can be the source of source of great growth and can provide them with even greater in future.</p>', 'Blog', 'publish', '0', 'blog', 0, 'http://localhost:8001/blog', '0', 'page', 0, 1, NULL, '2020-07-09 13:17:56', '2020-07-09 13:17:56'),
(9, 1, '2020-08-21 01:40:49', NULL, 'Women\'s Fashion', 'publish', '0', 'fashion', 0, NULL, '0', 'normalPost', 0, 0, NULL, '2020-07-17 19:55:22', '2020-07-17 19:55:37'),
(10, 1, '2020-08-02 12:40:18', NULL, 'Knockout Deals', 'publish', '0', 'knockout_deals', 0, NULL, '0', 'featuredPost', 0, 1, NULL, '2020-08-02 09:39:07', '2020-08-02 09:40:18'),
(11, 1, '2020-08-04 21:46:01', NULL, 'post home', 'publish', '0', 'post_home', 0, NULL, '0', 'homepageAd', 0, 0, NULL, '2020-08-04 18:44:09', '2020-08-04 18:44:48'),
(12, 1, '2020-08-21 01:18:16', NULL, 'Traditional Wear', 'publish', '0', 'traditional-wear', 0, NULL, '0', 'normalPost', 0, 1, NULL, '2020-08-20 22:11:04', '2020-08-20 22:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `compare_price` decimal(10,2) DEFAULT '0.00',
  `shipping_price` decimal(10,2) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` bigint(20) DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `specifications` longtext COLLATE utf8mb4_unicode_ci,
  `purchase_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `brand_id`, `compare_price`, `shipping_price`, `sku`, `tags`, `qty`, `description`, `specifications`, `purchase_note`, `product_thumbnail`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Long Sleeve Tshirt', '234.00', 0, '344.00', '0.00', 'PJ2674L4L', NULL, 0, '<p>Product description</p>', '<p>More specifications</p>', NULL, 'bHMoYWW6ErKwwmVtdu0PZERozlnqA6LT.jpg', NULL, '2020-08-29 08:03:33', '2020-08-29 08:03:33'),
(2, 'wuwehw', '1.00', 0, '0.00', '0.00', '50', NULL, 0, '<p>Product description</p>', '<p>Model: Dell Refurbished Optilex SSF 7010 CPU CORE i5 3470 3.2 Ghz 4GB RAM 500GB HDD - Black DT - SSF loaded with Windows 10 Operating System. Has an intel Chipset , Core i5-3470 @ 3.2 GHz Processor ,  4GB Memory Installed(RAM) , Up to 4 DIMM slots; Non-ECC dual-channel 1600MHz DDR3 SDRAM; up to 16GB Memory Supported, Hard Drive 500GB , DVD-R/RW  Optical Drive,  Integrated Intel HD Graphics 2000/2500/3000/4000 Graphics, Integrated REALTEK ALC269Q High Definition Audio,  Integrated Intel 82579LM Ethernet LAN 10/100/1000\n\nPorts: 4 External USB 3.0 ports (2 front; 2 rear) and 6 External USB 2.0 ports (2 front; 4 rear) and 2 Internal USB 2.0; 1 RJ-45; 1 Serial; 1 VGA; 2 DisplayPort; 2 PS/2; 2 Line-in (stereo/microphone); 2 Line-out (headphone/speaker)\n\nPower Supply Unit: Standard 275W PSU\n\nDimensions: 14.17\" high x 4.02\" wide x 16.14\" deep\n\nSystem Weight: 8 KG\nRefurbished Optilex SSF 7010 CPU CORE i5 3470 3.2 Ghz 4GB RAM 500GB HDD - Black Technical Specifications;\nModel : OptiPlex 7010\nCPU Type : Intel Core i5\nStorage HDD: 500GB,4GB RAM\n3.2GHz speed.\nOptical Drive : DVD-R/RW\nWindows 10 installed.\nReady for use.\nJust the CPU. /p>', NULL, 'NqsSIGhu7TM4rOLgLizb9Sted1zRygS4.jpg', NULL, '2020-08-29 08:35:16', '2020-08-29 08:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 7, NULL, NULL),
(2, 1, 5, NULL, NULL),
(3, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_media`
--

CREATE TABLE `product_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_media`
--

INSERT INTO `product_media` (`id`, `media_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 7, 2, NULL, NULL),
(4, 5, 2, NULL, NULL),
(5, 6, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promo_products`
--

CREATE TABLE `promo_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_products`
--

INSERT INTO `promo_products` (`id`, `product_name`, `product_price`, `product_info`, `product_avatar`, `slug`, `tags`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Apple Mobile Phones', 'From KES 9,799', 'iPhone 6, 7 & More', 'http://localhost:8001/storage/assets/images/ja1sBQQg8PsBA3G6gRJ667qY7hkcCnv622kTRtSP.jpeg', 'apple-mobile-phones', 'apple phones', 1, '2020-07-06 09:05:11', '2020-07-06 09:05:11'),
(2, 'Samsung Mobiles', 'From KES 2,999', 'S6 Edge, Note 8 & More', 'http://localhost:8001/storage/assets/images/KzVtwJMFgRmejLRFyxPmAzVXza6xWHWlIBGxFLRB.jpeg', 'samsung-mobiles', 'samsung phones', 1, '2020-07-06 09:07:06', '2020-07-06 09:07:06'),
(3, 'Redmi Note 6 Pro', 'Min 40% Off', '4GB & 6GB RAM', 'http://localhost:8001/storage/assets/images/ULjQqD0sjtntUWzBQki6cnnlN3wp9rB7Uknyc7zw.jpeg', 'redmi-note-6-pro', 'redmi note', 1, '2020-07-06 09:09:28', '2020-07-06 09:09:28'),
(4, 'Phones with 3GB+ RAM', 'From KES 4,299', 'Nokia, Moto, Mi & More', 'http://localhost:8001/storage/assets/images/NJqZC3RlBS8lEXqAUy4plM9y6hmpwzzAB05fCgje.jpeg', 'phones-with-3gb-ram', 'phones with 3gb+ ram', 1, '2020-07-06 09:12:17', '2020-07-06 09:12:17'),
(5, 'Earphones & Headphones', 'From KES 299', 'JBL, Philips, Sony, Motorola & More', 'http://localhost:8001/storage/assets/images/mkGWdPrTylOiU43KVVQgjwY5rdMsFuJNVE0ERBeh.jpeg', 'earphones-headphones', 'earhones & headphones', 1, '2020-07-06 09:14:47', '2020-07-06 09:14:47'),
(6, 'Top Brand Laptops', 'Up to 85% Off.', 'Dell, Acer, HP & More', 'http://localhost:8001/storage/assets/images/OvHRlX1CpJtCrfpAe3JnRY9kfwM9KjfounaKiwa4.jpeg', 'top-brand-laptops', 'top laptops brand', 1, '2020-07-06 09:17:15', '2020-07-06 09:17:15'),
(7, 'Redmi Note 4', 'From KES 5,499', '32GB & 64GB', 'http://localhost:8001/storage/assets/images/kyhSdqcRmPJH1taEYEJVMtxczJv1RgVFgfeSCZxI.jpeg', 'redmi-note-4', 'redmi note 4', 1, '2020-07-06 09:19:42', '2020-07-06 09:19:42'),
(8, 'Headphones & Speakers', 'Up to 50% Off', 'JBL, Sony & More', 'http://localhost:8001/storage/assets/images/ooTWrtud8YFKTaFwjtFnksODlRYnjPBM6ARNOnYO.jpeg', 'headphones-speakers', 'headphones & speakers', 2, '2020-07-06 09:56:22', '2020-07-06 09:56:22'),
(9, 'Data Storage Devices', 'From KES 299', 'Samsung, Toshiba & More', 'http://localhost:8001/storage/assets/images/S6n2jbtz6zts9b2qDCbANJeJKqJY1XIwz2fkLeC1.jpeg', 'data-storage-devices', 'data storage devices', 2, '2020-07-06 09:58:17', '2020-07-06 09:58:17'),
(10, 'Metronaut, Billion & More', 'Min55%+Extra5%Off', 'Men\'s Footwear', 'http://localhost:8001/storage/assets/images/TigdoK6AROzWSEtmeNBsn1v7gPo8f1UZAWvpVhbI.jpeg', 'metronaut-billion-more', 'mens footwear', 2, '2020-07-06 10:05:21', '2020-07-06 10:05:21'),
(11, 'Car & Bike Accessories', 'From KES 400+Extra 10% Off', 'Top Selling', 'http://localhost:8001/storage/assets/images/wZxlEdshJlxGIWGHihRTzftyrDBDTy91XmawYVSe.jpeg', 'car-bike-accessories', 'car and bike accessories', 2, '2020-07-06 10:07:15', '2020-07-06 10:07:15'),
(12, 'Fast Charging Powerbank', 'Upto 60% Off', 'Top Rated', 'http://localhost:8001/storage/assets/images/zBAPHyryIzBTMuCyQznLpftz89B6lqBDxIOBJmIF.jpeg', 'fast-charging-powerbank', 'charging powerbank', 2, '2020-07-06 10:10:42', '2020-07-06 10:10:42'),
(13, 'Top Deals On Fans', 'Up to 50% Off', 'Orient, Havells & More', 'http://localhost:8001/storage/assets/images/3fNgijSLuYZ1Mz4OS1LBR9AjwzTnRgH3UsroEK7X.jpeg', 'top-deals-on-fans', 'top deals and fans', 2, '2020-07-06 10:14:40', '2020-07-06 10:14:40'),
(14, 'Sports & Fitness Accessories', 'From KES 99', 'Badminton, Dumbbells & More', 'http://localhost:8001/storage/assets/images/eo312eW4A2mA4c15QjOLYYCuSP4oRZVcIjKOZ1a3.jpeg', 'sports-fitness-accessories', 'sports & fitness accessories', 2, '2020-07-06 10:16:53', '2020-07-06 10:16:53'),
(15, 'Big Steals Of The Weak', 'upto 70% Off', 'Appliances, Electronics & More', 'http://localhost:8001/storage/assets/images/nMqDwaO4yJGpIqYqGLw2t5zcVA8eix2TgBTBITMo.jpeg', 'big-steals-of-the-weak', 'appliances', 3, '2020-07-06 10:37:34', '2020-07-06 10:37:34'),
(16, 'Dual Inverter Acs', 'From KES 23,000', '100% Copper Eco Friendly', 'http://localhost:8001/storage/assets/images/lHU6jy6WadlSBSqzSwtjq4QKfIlqSaWSt5nc2ioZ.jpeg', 'dual-inverter-acs', 'acs', 4, '2020-07-07 09:10:58', '2020-07-07 09:10:58'),
(17, 'Best Items', 'From 30,000', 'Best Items', 'http://localhost:8001/storage/assets/images/SZNEES40o9ZH45FY53CL0IpjTdRxrrlkb2ZKKhBJ.jpeg', 'best-items', 'items', 4, '2020-07-07 09:11:58', '2020-07-07 09:11:58'),
(18, 'Fridge', 'From KES 10,300', 'Fridges', 'http://localhost:8001/storage/assets/images/ouhjQBfEYCSpheLwFmEZytTVyXALou54AJgQJRw8.jpeg', 'fridge', 'fridges', 4, '2020-07-07 09:12:44', '2020-07-07 09:12:44'),
(19, 'hdsd', 'sdh', 'hd', NULL, 'hdsd', 'djfjf', 9, '2020-07-17 19:55:37', '2020-07-17 19:55:37'),
(20, 'Knockout Deals', 'sdh', 'Knockout Dealshd', 'http://localhost:8001/storage/assets/images/cokJnhJ5mLq2xtTbc6xEjVVaXqhPSldTiGFldiFz.jpeg', 'knockout-deals', 'Knockout Deals', 10, '2020-08-02 09:40:18', '2020-08-02 09:40:18'),
(21, 'Best Selling Headphones', '50% off', 'Best Selling Headphones', 'http://localhost:8001/storage/assets/images/jBLcUpjS2yhlrgQORbFZuOKkGBCSPfbOCiS3S4Gp.jpeg', 'best-selling-headphones', 'Best Selling Headphones', 10, '2020-08-02 09:42:11', '2020-08-02 09:42:11'),
(22, 'post home', 'sdh', 'jh', 'http://localhost:8001/storage/assets/images/eKpweGvLmZW3F058lmXMA7ll2a6bPS3EUThNhhEd.jpeg', 'post-home', 'uo', 11, '2020-08-04 18:44:48', '2020-08-04 18:44:48'),
(23, 'Fashion Black African Dashiki Print Dress Bodycon', '2,099', 'Top tear african dresses', 'http://localhost:8001/storage/assets/images/wmfbbKC4JulP5ITYozIP1MpRwo2XPkOq004YgTiK.jpeg', 'fashion-black-african-dashiki-print-dress-bodycon', 'fashion', 12, '2020-08-20 22:18:16', '2020-08-20 22:18:16'),
(24, 'Ankara Bomber Jacket', 'From 2,500', 'Ankara, Lace & More', 'http://localhost:8001/storage/assets/images/8KmMXkTpt4PHayTuQagj0ODPTOlGbqMtAVsV8mVr.jpeg', 'ankara-bomber-jacket', 'fashion', 12, '2020-08-20 22:20:37', '2020-08-20 22:20:37'),
(25, 'New Afrikan Kitenge', '3,049', 'Fine piece Kitenge\'s', 'http://localhost:8001/storage/assets/images/nkEUao0dnulpv6ykqe1GKxM1U4WVKoP2ezVQtjGC.jpeg', 'new-afrikan-kitenge', 'fashion', 12, '2020-08-20 22:22:44', '2020-08-20 22:22:44'),
(26, 'Fashion RED DASHIKI UNISEX SHIRT', '50% Off', 'Kitenge, Dashiki', 'http://localhost:8001/storage/assets/images/9OPEiXpyGZkcRxFXdmFhUBcx7E6QMSb1m3sB0VWv.jpeg', 'fashion-red-dashiki-unisex-shirt', 'fashion', 12, '2020-08-20 22:24:57', '2020-08-20 22:24:57'),
(27, 'Fashion Africa Kitenge Fabric', 'Kshs 3,999', 'Kitenge & More', 'http://localhost:8001/storage/assets/images/PvVru32noSunIAaTOizenBESKkHxYi0wkLvobcj6.jpeg', 'fashion-africa-kitenge-fabric', 'fashion', 12, '2020-08-20 22:26:53', '2020-08-20 22:26:53'),
(28, 'Kings Collection the Best Maasai Shuka', 'Kshs 1,299', 'Shukas & More', 'http://localhost:8001/storage/assets/images/ShlbRUx1v6jkSwq3GohAGDoSyZBw9G0tjumTETzN.jpeg', 'kings-collection-the-best-maasai-shuka', 'fashion', 12, '2020-08-20 22:28:47', '2020-08-20 22:28:47'),
(29, 'Fashion New African KItenge', 'From 1,200', 'Vitenges & More', 'http://localhost:8001/storage/assets/images/cn8wLrFT6X1w6QPAmIzVBxnx2Aw4jtUP16hxgoUZ.jpeg', 'fashion-new-african-kitenge', 'fashion', 12, '2020-08-20 22:30:08', '2020-08-20 22:30:08'),
(30, 'African Print Kitenge', 'Ksh 2,000', 'African ,Print Kitenge', 'http://localhost:8001/storage/assets/images/zmBEN9rwdDTqqU7m5bgowAX24tnn91MxXr0FOOG8.jpeg', 'african-print-kitenge', 'fashion', 12, '2020-08-20 22:33:11', '2020-08-20 22:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `promo_product_items`
--

CREATE TABLE `promo_product_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promo_product_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_product_items`
--

INSERT INTO `promo_product_items` (`id`, `promo_product_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 11, NULL, NULL),
(2, 1, 10, NULL, NULL),
(3, 1, 9, NULL, NULL),
(4, 1, 8, NULL, NULL),
(5, 1, 7, NULL, NULL),
(6, 1, 6, NULL, NULL),
(7, 2, 2, NULL, NULL),
(8, 2, 1, NULL, NULL),
(9, 3, 6, NULL, NULL),
(10, 4, 4, NULL, NULL),
(11, 5, 6, NULL, NULL),
(12, 6, 9, NULL, NULL),
(13, 7, 6, NULL, NULL),
(14, 8, 5, NULL, NULL),
(15, 9, 4, NULL, NULL),
(16, 10, 7, NULL, NULL),
(17, 11, 5, NULL, NULL),
(18, 12, 6, NULL, NULL),
(19, 13, 8, NULL, NULL),
(20, 14, 4, NULL, NULL),
(21, 15, 6, NULL, NULL),
(22, 16, 10, NULL, NULL),
(23, 17, 4, NULL, NULL),
(24, 18, 1, NULL, NULL),
(25, 19, 1, NULL, NULL),
(26, 20, 15, NULL, NULL),
(27, 21, 13, NULL, NULL),
(28, 22, 5, NULL, NULL),
(29, 23, 1, NULL, NULL),
(30, 24, 3, NULL, NULL),
(31, 25, 2, NULL, NULL),
(32, 26, 3, NULL, NULL),
(33, 27, 1, NULL, NULL),
(34, 28, 3, NULL, NULL),
(35, 29, 2, NULL, NULL),
(36, 30, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 'super_admin', 1, NULL, NULL, NULL),
(2, 'Administrator', 'admin', 1, NULL, NULL, NULL),
(3, 'Manager', 'manager', 1, NULL, NULL, NULL),
(4, 'Customer', 'customer', 1, NULL, NULL, NULL),
(5, 'Subscriber', 'subscriber', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'siteUrl', 'https://www.priesthood-collections.com', NULL, '2020-05-31 11:18:16'),
(2, 'home', 'https://www.priesthood-collections.com/home', NULL, NULL),
(3, 'siteTitle', 'Priesthood Collections', NULL, '2020-08-31 18:33:29'),
(4, 'siteDescription', 'Center for all fashion trends', NULL, '2020-05-31 11:24:24'),
(5, 'adminEmail', '1kenpters1@gmail.com', NULL, '2020-05-31 23:29:28'),
(6, 'siteEmail', 'info@priesthood-collections.com', NULL, NULL),
(7, 'siteTelephone', '+254740271085', NULL, '2020-05-31 23:29:28'),
(8, 'siteLogoUrl', 'http://localhost:8001/storage/assets/logo/DOpcumXZjBmsTImx4nE5RI25nIkIHD56AAUB4EE6.svg', NULL, '2020-07-27 04:15:01'),
(9, 'miniLogoUrl', '', NULL, NULL),
(10, 'instagramUrl', 'https://www.instagram.com/priesthood-collections', NULL, '2020-05-31 23:29:28'),
(11, 'facebookUrl', 'https://www.facebook.com/priesthood-collections', NULL, '2020-05-31 23:29:28'),
(12, 'footerDescription', 'Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', NULL, '2020-05-31 23:29:28'),
(13, 'pinterestUrl', 'https://www.pinterest.com/priesthood-collections', NULL, '2020-05-31 11:15:54'),
(14, 'language', 'EN', NULL, NULL),
(15, 'currency', 'KES', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `delivery_address` text COLLATE utf8mb4_unicode_ci,
  `subtotal_amount` decimal(11,2) NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_amount` decimal(11,2) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `shipping_method`, `delivery_address`, `subtotal_amount`, `region`, `total_amount`, `city`, `shipping_amount`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'homeDelivery', 'Mombasa Road', '468.00', 'Changamwe', '468', 'Nairobi', '0.00', 1, '2020-09-05 05:51:49', '2020-09-05 11:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `state_regions`
--

CREATE TABLE `state_regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `state_regions`
--

INSERT INTO `state_regions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Changamwe', 'changamwe', NULL, NULL),
(2, 'Miritini', 'miritini', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` int(10) NOT NULL,
  `stock_quantity` bigint(20) NOT NULL,
  `initial_stock` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `sku`, `stock_status`, `stock_quantity`, `initial_stock`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'RNZB5WQ5J', 1, 20, 20, 2, '2020-08-27 07:20:48', '2020-08-27 07:20:48'),
(2, '1UDEESSO', 1, 11, 11, 7, '2020-08-27 07:34:17', '2020-08-27 07:34:17'),
(3, '1UDEESSO', 1, 11, 11, 8, '2020-08-27 07:34:31', '2020-08-27 07:34:31'),
(4, 'RNZB5WQ5J', 1, 10, 10, 1, '2020-08-27 13:01:52', '2020-08-27 13:01:52'),
(5, 'RNZB5WQ5J', 1, 10, 10, 1, '2020-08-27 13:02:04', '2020-08-27 13:02:04'),
(6, 'RNZB5WQ5J', 1, 10, 10, 1, '2020-08-27 13:09:11', '2020-08-27 13:09:11'),
(7, 'RNZB5WQ5J', 1, 10, 10, 1, '2020-08-27 13:09:24', '2020-08-27 13:09:24'),
(8, 'RNZB5WQ5J', 1, 10, 10, 1, '2020-08-27 13:09:30', '2020-08-27 13:09:30'),
(9, 'RNZB5WQ5J', 1, 10, 10, 1, '2020-08-27 13:10:11', '2020-08-27 13:10:11'),
(10, 'RNZB5WQ5J', 1, 10, 10, 1, '2020-08-27 13:10:38', '2020-08-27 13:10:38'),
(11, 'RNZB5WQ5J', 1, 10, 10, 1, '2020-08-27 13:16:37', '2020-08-27 13:16:37'),
(12, 'RNZB5WQ5J', 1, 10, 10, 1, '2020-08-27 13:17:31', '2020-08-27 13:17:31'),
(13, 'R0EJ0D0M', 1, 0, 0, 16, '2020-08-27 21:13:26', '2020-08-27 21:13:26'),
(14, 'R0EJ0D0M', 1, 10, 10, 17, '2020-08-27 21:14:08', '2020-08-27 21:14:08'),
(15, 'R0EJ0D0M', 1, 10, 10, 18, '2020-08-27 21:14:28', '2020-08-27 21:14:28'),
(16, 'R0EJ0D0M', 1, 10, 10, 19, '2020-08-27 21:16:03', '2020-08-27 21:16:03'),
(17, 'GCKAQP67Q', 1, 10, 10, 3, '2020-08-27 21:19:41', '2020-08-27 21:19:41'),
(18, 'GCKAQP67Q', 1, 10, 10, 3, '2020-08-27 21:19:43', '2020-08-27 21:19:43'),
(19, 'GCKAQP67Q', 1, 0, 0, 3, '2020-08-27 21:20:57', '2020-08-27 21:20:57'),
(20, 'GCKAQP67Q', 1, 0, 0, 3, '2020-08-27 21:21:19', '2020-08-27 21:21:19'),
(21, 'V56KF8CN', 1, 0, 0, 26, '2020-08-27 21:23:54', '2020-08-27 21:23:54'),
(22, 'V56KF8CN', 1, 0, 0, 27, '2020-08-27 21:23:55', '2020-08-27 21:23:55'),
(23, 'V56KF8CN', 1, 0, 0, 28, '2020-08-27 21:23:56', '2020-08-27 21:23:56'),
(24, 'V56KF8CN', 1, 0, 0, 29, '2020-08-27 21:23:57', '2020-08-27 21:23:57'),
(25, 'V56KF8CN', 1, 0, 0, 30, '2020-08-27 21:23:57', '2020-08-27 21:23:57'),
(26, 'V56KF8CN', 1, 0, 0, 31, '2020-08-27 21:24:06', '2020-08-27 21:24:06'),
(27, 'V56KF8CN', 1, 0, 0, 32, '2020-08-27 21:24:07', '2020-08-27 21:24:07'),
(28, 'XXTFSDUG2D', 1, 20, 20, 33, '2020-08-27 21:28:14', '2020-08-27 21:28:14'),
(29, 'XXTFSDUG2D', 1, 20, 20, 34, '2020-08-27 21:28:28', '2020-08-27 21:28:28'),
(30, 'PSUCCJ84W', 1, 16, 16, 36, '2020-08-27 22:11:45', '2020-08-27 22:11:45'),
(31, '5IWJE7VGU', 1, 30, 30, 37, '2020-08-27 22:13:16', '2020-08-27 22:13:16'),
(32, '8LMDCV8MS', 1, 60, 60, 38, '2020-08-27 22:14:27', '2020-08-27 22:14:27'),
(33, '6FWOVUCYJ', 1, 0, 0, 1, '2020-08-27 22:28:04', '2020-08-27 22:28:04'),
(34, 'VNNHD1JD', 1, 20, 20, 2, '2020-08-29 07:45:23', '2020-08-29 07:45:23'),
(35, 'DNZQ1WU27', 1, 30, 30, 3, '2020-08-29 07:54:56', '2020-08-29 07:54:56'),
(36, 'PJ2674L4L', 1, 40, 40, 1, '2020-08-29 08:03:33', '2020-08-29 08:03:33'),
(37, '50', 1, 30, 30, 2, '2020-08-29 08:35:16', '2020-08-29 08:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `access_portal` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `firstname`, `lastname`, `avatar`, `email`, `email_verified_at`, `access_portal`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ken', 'peters', NULL, 'peters@example.com', NULL, 0, '$2y$10$fKLXxiSZnmT1WfVfjnkjouUtA/BObNs2r37hEaF75.edet04sLGQW', NULL, NULL, '2020-09-06 14:03:28', '2020-09-06 14:03:28'),
(2, NULL, 'ken', 'peters', NULL, 'peters34@example.com', NULL, 0, '$2y$10$JgM2lZTCZZOr4QVNaEeUkeknTSpwWn1cNYauJ4KaYCPOFFMYDqIpa', NULL, NULL, '2020-09-06 14:05:14', '2020-09-06 14:05:14'),
(3, NULL, 'ksk', 'djd', NULL, 'osp@example.com', NULL, 0, '$2y$10$3mC4yXEaWweyXl7s6pM5e.5grhiRExP6v.h0hsx0Qb2MMEAdBWCaC', NULL, NULL, '2020-09-06 14:05:47', '2020-09-06 14:05:47'),
(4, NULL, 'slls', 'ddd', NULL, 'peters373@example.com', NULL, 0, '$2y$10$k9aj9Feb11ae1cy/sS98YOKHCC10keI2z.vQNeblJR/wiWMYJ/dLy', NULL, NULL, '2020-09-06 14:26:03', '2020-09-06 14:26:03'),
(5, NULL, 'lsos', 'password', NULL, 'paidrt@example.com', NULL, 0, '$2y$10$yvLAxOHRIo3DH.9HQ3OMk.u/egjenDlmJvF7/Ict2DcoACNWVs.AC', NULL, NULL, '2020-09-06 14:39:37', '2020-09-06 14:39:37'),
(6, NULL, 'osp', 'ops', NULL, 'ospeod@example.com', NULL, 0, '$2y$10$0RoOD4XNOM07VZ8Rlp1z0OnXpushCSZ84l2nVUx8fzVLF77NwabWi', NULL, NULL, '2020-09-06 14:55:04', '2020-09-06 14:55:04'),
(7, NULL, 'pioloa', 'peters', NULL, 'pioloa@example.com', NULL, 0, '$2y$10$UbjplZm6MIuc0NKT2cVeMeBK9aUGeza5ETjelBNffBfQEvyMzEfyW', NULL, NULL, '2020-09-06 15:00:51', '2020-09-07 05:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL),
(2, 2, 4, NULL, NULL),
(3, 3, 4, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 5, 4, NULL, NULL),
(6, 6, 4, NULL, NULL),
(7, 7, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `otp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `user_id`, `token`, `otp`, `created_at`, `updated_at`, `expires_at`) VALUES
(1, 1, 'e6da22ac-66ab-4c15-a511-b571b68a7c91', 861761, '2020-09-06 14:03:28', '2020-09-06 14:03:28', NULL),
(2, 2, '0f8a2b6d-7e1f-45ed-a740-36d503dd0f64', 157421, '2020-09-06 14:05:14', '2020-09-06 14:05:14', NULL),
(3, 3, '2a6f474d-08e6-4c8d-b858-09e19e5ec8b3', 702552, '2020-09-06 14:05:47', '2020-09-06 14:05:47', NULL),
(4, 4, 'c33d50e1-cb2c-491b-9a2f-11ed45952a62', 477540, '2020-09-06 14:26:04', '2020-09-06 14:26:04', NULL),
(5, 5, '15e9f34f-b7b9-44e2-aa0e-71718361f3ce', 710949, '2020-09-06 14:39:37', '2020-09-06 14:39:37', NULL),
(6, 6, 'a9caa545-6400-44ce-aa35-0a7a976be902', 981996, '2020-09-06 14:55:05', '2020-09-06 14:55:05', NULL),
(7, 7, '86f3af61-e3e6-4a65-9227-812976b05a40', 363266, '2020-09-06 15:00:51', '2020-09-06 19:13:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_lists`
--
ALTER TABLE `cart_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_transactions`
--
ALTER TABLE `mpesa_transactions`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oder_id` (`order_no`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);
ALTER TABLE `posts` ADD FULLTEXT KEY `slug_2` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_media`
--
ALTER TABLE `product_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_products`
--
ALTER TABLE `promo_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_product_items`
--
ALTER TABLE `promo_product_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_regions`
--
ALTER TABLE `state_regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cart_lists`
--
ALTER TABLE `cart_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `mpesa_transactions`
--
ALTER TABLE `mpesa_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_media`
--
ALTER TABLE `product_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `promo_products`
--
ALTER TABLE `promo_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `promo_product_items`
--
ALTER TABLE `promo_product_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `state_regions`
--
ALTER TABLE `state_regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
