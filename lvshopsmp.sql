-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2018 at 08:37 AM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lvshopsmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_desc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Apple', 'Apple Description', NULL, NULL, NULL),
(2, 'Samsung', 'Samsung Description', NULL, NULL, NULL),
(3, 'LG', 'LG Description', NULL, NULL, NULL),
(4, 'Nokia', 'Nokia Description', NULL, NULL, NULL),
(5, 'Asus', 'Asus Description', NULL, NULL, NULL),
(6, 'Xiaomi', 'Xiaomi Description', NULL, NULL, NULL),
(7, 'Others', 'Others Description', NULL, NULL, NULL),
(9, 'Nokia', 'Nokia Description', NULL, NULL, '2017-07-14 05:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `cat_desc`, `created_at`, `updated_at`) VALUES
(2, 'Tablet', 'Tablet Description', NULL, NULL),
(3, 'Smart Watch', 'Smart Watch Description', NULL, NULL),
(4, 'Other Smart Devices', 'Other Smart Devices Description', NULL, NULL),
(5, 'Accesories', 'Accesories Description', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contact_name`, `contact_email`, `contact_phone`, `contact_title`, `contact_detail`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Doe John', 'levienthuong@gmail.com', '123123', 'Invite To The party', 'Something Here', 0, NULL, NULL),
(2, 'Linh Le', 'aeqweqwe@gmail.com', '123123', 'May I Ask you Something?', 'Others......', 1, NULL, NULL),
(3, 'Van Nguyen', '123123@gmail.com', '123123', 'Just a little question', 'Well.....', 0, NULL, NULL),
(4, 'Luong Tran', 'tranluong@gmail.com', '123123', 'Dear Sir, Can you do me a favour', 'Just make it easier', 1, NULL, NULL),
(5, 'Võ văn Mải', 'vovanmai.dt3@gmail.com', '0986308460', 'How much is the lowest phone price', 'How much is the lowest phone price How much is the lowest phone price How much is the lowest phone price How much is the lowest phone price How much is the lowest phone price', 0, '2017-07-16 17:00:00', NULL),
(8, 'dsfadfsafdfsd', 'sdafs@gmail.com', '5616556', 'fdsfsafsdfafsf', 'Chúng tôi loiwsn eel ở thành phố này Chúng tôi loiwsn eel ở thành phố nàyChúng tôi loiwsn eel ở thành phố nàyChúng tôi loiwsn eel ở thành phố nàyChúng tôi loiwsn eel ở thành phố nàyChúng tôi loiwsn eel ở thành phố nàyChúng tôi loiwsn eel ở thành phố nàyChúng tôi loiwsn eel ở thành phố nàyChúng tôi loiwsn eel ở thành phố nàyChúng tôi loiwsn eel ở thành phố nàyChúng tôi loiwsn eel ở thành phố này', 1, '2017-07-27 08:57:54', NULL),
(9, 'Võ Văn Mải', 'vovanmai.dt3@gmail.com1', '0986308460', 'dhfsdjsdfa', 'dhfsdjsdfadhfsdjsdfadhfsdjsdfadhfsdjsdfadhfsdjsdfadhfsdjsdfa', 0, '2017-07-29 02:03:39', NULL),
(10, 'Lương Kỳ Cán', 'can@gmail.com', '05415652566', 'tôi là cán', 'toi rất yeu trang wen này', 0, '2017-07-29 02:09:06', NULL),
(11, 'Võ Văn Mải', 'vovanmai.dt3@gmail.com', '0986308460', 'điện thoại rất đẹp và rẻ', 'điện thoại rất đẹp và rẻđiện thoại rất đẹp và rẻđiện thoại rất đẹp và rẻđiện thoại rất đẹp và rẻđiện thoại rất đẹp và rẻđiện thoại rất đẹp và rẻ', 0, '2017-08-03 11:26:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `featured_sliders`
--

CREATE TABLE `featured_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buttontext` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'More',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_sliders`
--

INSERT INTO `featured_sliders` (`id`, `image_path`, `title`, `desc`, `link`, `buttontext`, `created_at`, `updated_at`) VALUES
(1, 'slide/slide1.jpg', 'Xiaomi Lastest Smartphone Model', 'Finally Released! Check it out now!', 'http://link1', 'More', NULL, NULL),
(2, 'slide/slide2.jpg', 'Iphone 7 Best Price', 'Only available in SMP Shop, shocking price', 'http://link2', 'More', NULL, NULL),
(3, 'slide/slide3.jpg', 'Ipad 3 - Grab One for you now', 'Brandnew, the must have devices for any family', 'http://link3', 'More', NULL, NULL),
(4, 'slide/slide4.jpg', 'Motorola 360', 'A beautiful smartwatch, modern but still classic', 'http://link4', 'More', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_lists`
--

CREATE TABLE `image_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2017_03_21_120227_create_categories_table', 1),
(4, '2017_03_21_121651_create_brands_table', 1),
(5, '2017_03_21_124019_create_products_table', 1),
(6, '2017_03_21_202741_create_payments_table', 1),
(7, '2017_03_21_212004_create_orders_table', 1),
(8, '2017_03_21_215506_create_order_details_table', 1),
(9, '2017_03_21_221435_create_contacts_table', 1),
(10, '2017_03_21_221448_create_advertisements_table', 1),
(11, '2017_03_25_154110_create_theme_options_table', 1),
(12, '2017_03_25_205004_create_image_lists_table', 1),
(13, '2017_03_27_145938_create_featured_sliders_table', 1),
(14, '2017_03_30_101117_create_social_users_table', 1),
(15, '2017_04_03_183512_create_shoppingcart_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useraddress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userphone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useremail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'anything@gmail.com',
  `moreinfo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `price_total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `useraddress`, `userphone`, `fullname`, `useremail`, `moreinfo`, `payment_id`, `status`, `price_total`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Thôn Sơn Viên, Duy Nghĩa, Duy Xuyên,Quảng Nam', '0986308460', 'Võ Văn Mải', 'vovanmai.dt3@gmail.com', NULL, 1, 0, 7194000, '2017-09-05 13:34:05', NULL),
(2, 'phongluu', 'nha tro 11213123', '0983030495', 'phong', 'mrphong678@gmail.com', 'giao hàng nhanh', 1, 0, 5593000, '2017-09-07 08:31:40', NULL),
(3, 'phongluu', 'gioa hàng nhanh nhé 111111', '0983030495', 'phong', 'mrphong678@gmail.com', 'gioa hàng nhanh nhé 111111', 1, 0, 14385000, '2017-10-16 05:41:36', NULL),
(4, 'phongluu', 'nhasssssssssss', '0983030495', 'phong', 'mrphong678@gmail.com', 'sssssssssssss', 1, 0, 4194000, '2017-10-26 01:32:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 17, 1, 1, NULL, NULL),
(2, 26, 2, 1, NULL, NULL),
(3, 18, 3, 1, NULL, NULL),
(4, 17, 3, 1, NULL, NULL),
(5, 19, 4, 1, NULL, NULL);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_name`, `payment_info`, `created_at`, `updated_at`) VALUES
(1, 'Bảo Kim', '', NULL, NULL),
(2, 'COD', '', NULL, NULL),
(3, 'ATM', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `preview`, `detail`, `picture`, `view_count`, `price`, `cat_id`, `brand_id`, `discount`, `created_at`, `updated_at`) VALUES
(12, 'iPad Pro 12.9', 'Ipad Pro Preview', '<p>Ipad pro Detail</p>', 'fmWUe1l9ysEjZcPwqcC7kwihn81YBZtPLjOAzueb.jpeg', 165, 18000000, 2, 3, 0, NULL, NULL),
(13, 'Lenovo Tab 3', 'Lenovo Tab 3 Preview', '<p>Lenovo Tab 3 Detail</p>', '5IAVrIyacDc1MP67s5viaAFCNDYoo2xKvzmz1wbM.png', 515, 2700000, 2, 7, 20, NULL, NULL),
(14, 'Samsung Tab A', 'Samsung Tab A Preview', '<p>Samsung Tab A Detail</p>', 'cEbcUSht6Ci7ENzJlM8Ybxz5SgME1Z9vdiYo59Hu.jpeg', 312, 7490000, 2, 2, 30, NULL, NULL),
(15, 'Mi Pad 2', 'Mi Pad 2 Preview', '<p>Mi Pad 2 Detail</p>', '3ULwLNbLnUTGNVVcFKO0G5CGWJPk2rXTTY1U75HP.png', 22, 5500000, 2, 6, 40, NULL, '2017-07-10 17:13:23'),
(16, 'Google Nexus 10', 'Google Nexus 10 Preview', '<p>Google Nexus 10 Detail</p>', '1i4tMJWCczSWIMMy9NpEgPfcmmnAgvtuSg1kYJEJ.png', 76, 9500000, 2, 7, 0, NULL, NULL),
(17, 'Apple Watch Series 2', 'Apple Watch Series 2 Preview', '<p>Apple Watch Series 2 Detail</p>', 'BT06MJEd5rVncdZaTvGKAMNEEwgkkbZ8PiLVH9uE.png', 960, 11990000, 3, 1, 40, NULL, '2017-07-10 17:05:55'),
(18, 'Apple Watch Series 1', 'Apple Watch Series 1 Preview', '<p>Apple Watch Series 1 Detail</p>', 'HRQWcLcx49TzUkugaDtRhI3qvMffHv5b4eAyZcK7.jpeg', 172, 7990000, 3, 1, 10, NULL, NULL),
(19, 'Motorola Moto 360', 'Moto 360 Preview', '<p>Moto 360 Detail</p>', 'mVkMxmIZnQsytI7Pr5LSyjrx2Qi1TAiyBcGMPMHl.png', 263, 6990000, 3, 7, 40, NULL, '2017-07-10 17:08:37'),
(21, 'Samsung Gear S3', 'Samsung Gear S3 Preview', '<p>Samsung Gear S3 Detail</p>', 'uCa9t2XClLY4wC4zYq9i8NcFpjSPaz6OTGt5b6Vm.jpeg', 889, 1290000, 3, 2, 40, NULL, NULL),
(22, 'Samsung Gear S2', 'Samsung Gear S2 Preview', '<p>Samsung Gear S2 Detail</p>', 'eVh5WVF0y8ZhM9TBAhcamd14V4GAdRTHEeUGywxB.jpeg', 13, 890000, 3, 2, 30, NULL, NULL),
(23, 'Xiaomi Pistons', 'Xiaomi Pistons Preview', '<p>Xiaomi Pistons Detail</p>', 'hsN90d4ZvbZihwMBiDVOZd3jbnY2IEYKXGys3j19.jpeg', 69, 80000, 5, 6, 0, NULL, NULL),
(24, 'Sennheiser HD 4.30i', 'Sennheiser HD 4.30i Preview', '<p>Sennheiser HD 4.30i Detail</p>', 'ALgMgwhJ9poyMKBQ5hAN1ouyhQ8qexjn7OKENtCQ.jpeg', 459, 2790000, 5, 7, 0, NULL, NULL),
(25, 'Sony Bluetooth MDR-1RBTMK2', 'Sony Bluetooth MDR-1RBTMK2 Preview', '<p>Sony Bluetooth MDR-1RBTMK2 Detail</p>', 'NSspIfO5sePdKb8mVC7f9c8Gz4YY6C4vhkYm8Ih7.jpeg', 982, 7990000, 5, 7, 20, NULL, NULL),
(26, 'Bluetooth Plantronics Marque 2 M165', 'Bluetooth Plantronics Marque 2 M165 Preview', '<p>Bluetooth Plantronics Marque 2 M165 Detail</p>', 'QvcGzIyKwnMfPjT0qFld8mmwLlAyOh172cDyyr9j.jpeg', 411, 7990000, 5, 7, 30, NULL, '2017-07-10 15:33:16'),
(27, 'Romoss SENSE 6 20.000 mAh', 'Romoss SENSE 6 Preview', '<p>Romoss SENSE 6 Detail</p>', 'YwSEioFXAfuE1RD2pDZrdwZyFjo14dVLcCNA7FNe.jpeg', 694, 289000, 5, 7, 0, NULL, '2017-07-09 02:24:52'),
(28, 'Xiaomi QC 3.0 20.000mAh', 'Xiaomi QC 3.0 Preview', '<p>Xiaomi QC 3.0 Detail</p>', 'GELtUj206wB6dyFDTjPD4sX4byAbO6FPhe1eJmbe.jpeg', 231, 929000, 5, 6, 30, NULL, NULL),
(29, 'Xiaomi NDY-02-AN 10.000mAh', 'Xiaomi NDY-02-AN Preview', '<p>Xiaomi NDY-02-AN Detail</p>', 'H6nLcyFrKoi2dNKzYOZ05jjpnwX8fxnuWMhcQHKV.jpeg', 246, 399000, 5, 6, 20, NULL, NULL),
(30, 'Galaxy S6 Edge Plus Spigen Phone Case', 'Galaxy S6 Edge Plus Spigen Preview', '<p>Galaxy S6 Edge Plus Spigen Detail</p>', 'wabmJwwOkDaXOgE4d79hGLWiDA7kJBMRBqBAIEEB.jpeg', 385, 229000, 5, 7, 0, NULL, NULL),
(32, 'Xiaomi Redmi Note 3 Phone Case', 'Xiaomi Redmi Note 3 Phone Case Preview', '<p>Xiaomi Redmi Note 3 Phone Case Detail</p>', '1FXUMKjHuukescHCtVGTGzRWGGbmZWoctrHXNcF6.jpeg', 636, 129000, 5, 7, 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_users`
--

CREATE TABLE `social_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themeoption`
--

CREATE TABLE `themeoption` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `themeoption`
--

INSERT INTO `themeoption` (`id`, `title`, `desc`, `picture`, `link`) VALUES
(7, 'Motorola 360', 'Motorola 360', 'motorola-360_1501302713.jpg', 'http://shopsmp.000webhostapp.com/smart-watch/apple-watch-series-2-17.html'),
(8, 'Ipad 3 - Grab One for you now1', 'Ipad 3 - Grab One for you now1', 'ipad-3-grab-one-for-you-now1_1501302731.jpg', 'http://shopsmp.000webhostapp.com/tablet/lenovo-tab-3-13.html'),
(9, 'Iphone 7 Best Price', 'Iphone 7 Best Price', 'iphone-7-best-price_1501302774.jpg', 'http://shopsmp.000webhostapp.com/tablet/samsung-tab-a-14.html'),
(10, 'Xiaomi Lastest Smartphone Model', 'Xiaomi Lastest Smartphone Model', 'xiaomi-lastest-smartphone-model_1501302791.jpg', 'http://shopsmp.000webhostapp.com/accesories/galaxy-s6-edge-plus-spigen-phone-case-30.html');

-- --------------------------------------------------------

--
-- Table structure for table `theme_options`
--

CREATE TABLE `theme_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `pagename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_options`
--

INSERT INTO `theme_options` (`id`, `pagename`, `address`, `phoneNumber`, `pageTitle`, `email`, `faq`, `created_at`, `updated_at`) VALUES
(1, 'SMPShop', '54 Ninh Ton - TP Da Nang, Viet Nam', '0935579194', 'SMP Shop - Buying Online was never so easy', 'levienthuong@gmail.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `level` tinyint(4) NOT NULL DEFAULT '3',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `address`, `phone`, `avatar`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(14, 'Võ Văn Mải', 'admin', 'vovanmai.dt3@gmail.com', '$2y$10$E.Bh82c9teVrUUUIzfkI4OFeA89fF5h3vr/z8Qzqyk9fMK4iTRHKW', 'Thôn Sơn Viên, Duy Nghĩa, Duy Xuyên,Quảng Nam', '0986308460', 'vo-van-mai_1501736970.jpg', 1, 'kIizjqyygqQtfMQ9UO1OkON5pxMICfdC5ZMM1Knq8wECzW1UvN0h9LPA1ZRn', NULL, '2017-08-02 22:09:31'),
(15, 'Trần Trung Hiếu', 'trunghieu', 'trantrunghieu@gmail.com', '$2y$10$G6omCadp5vWJdsGV41dRfu/zfnTNNi0HoUofSxglbQpjW62.HPiM6', 'Quế Sơn', '123456789', 'tran-trung-hieu_1501259029.jpg', 3, 'gRrcjUPReEk8VEIEm3yGiaDkc24uuHqCUDAaKhOCpbWsxphLWMCYp7QEiTZS', NULL, '2017-07-28 09:53:13'),
(16, 'Nguyễn Nhật Khoa', 'nguyennhatkhoa', 'nguyennhatkhoa@gmail.com', '$2y$10$oGQE9FuhQBO9roFZj/gSB.ys20f5JJqM87Qv8olyPj0aLbcASb4Qq', 'Thăng Bình', '0986308460', '', 3, '5FEoc2olefSFPoeC1iGbOJbgbJJiqaeAdbsxIGg6VLBVduLv18yz7vi1d48K', NULL, '2017-07-28 09:29:32'),
(17, 'Lương Khải Hoàn', 'luongkhaihoan', 'scodeweb2016@gmail.com', '$2y$10$FNHVlG.CfGhQ.J6xP0.G.upwM2OPnSjfKIE8By4CvHHxHoZ2BURs.', 'sdfadfsafdffd', '6545151', 'luong-khai-hoan_1501258459.jpg', 2, 'Etgo8qnivEAvjt8LkcTqxszHpsEhuKY5goKZGQWE2cRleP3VaBhczxQP8iGL', NULL, '2017-07-28 09:33:43'),
(18, 'Nguyễn Nhật Khoa', 'nguyennhatkhoa', 'nhatkhoa@gmail.com', '$2y$10$KgSCytzuNg75HDSdtn4OB.WMxzJBNHZWEuDFPmRFYavm0wsWUADcS', 'Hòa Khánh', '0986308460', 'nguyen-nhat-khoa_1501258670.jpg', 1, NULL, NULL, '2017-07-28 09:17:50'),
(20, 'Lương Kỳ Cán', 'luongkycan', 'luongkycandtvt@gmail.com', '$2y$10$kbzTw/MC6zzXX62u/woLeuhTzxS5RuMxV11OvHfJ7lq0zanI3jeoi', 'Tam kỳ', '0986308460', 'default.jpg', 2, NULL, NULL, NULL),
(21, 'Vũ Lộc', 'vuloc', 'vuloc@gmail.com', '$2y$10$R6ZUTyJR0CL47u3vArL.AeA5aA0s2RjiVWfMJNA7/Az0AYPI13zbq', 'Quế Sơn', '0986308460', 'default.jpg', 3, NULL, NULL, NULL),
(22, 'Vũ Lộc', 'vuloc', 'vulooc@gmail.com', '$2y$10$/lul.ajl5Y.CTQ1I6DU6YOcFt8QnW3Wu55UWNYsDFEB0/HOLcBoIm', 'Quế Sơn', '0986308460', 'default.jpg', 3, NULL, NULL, NULL),
(23, 'Vũ Lộc', 'vuloc', 'vuloocc@gmail.com', '$2y$10$llGFODDdv/ACwquUs6dJZOXrUclFTf.X23md7m1cPgRTt8q6lZdte', 'Quế Sơn', '0986308460', 'default.jpg', 3, NULL, NULL, NULL),
(24, 'Vũ Lộc', 'vuloc', 'vuloocvc@gmail.com', '$2y$10$g/YKcFBEgteLFM4ZLqSoPOMEl1G6/LLwz5QfTauqeDaSnMDtOeZO.', 'Quế Sơn', '0986308460', 'default.jpg', 3, NULL, NULL, NULL),
(25, 'Vũ Lộc', 'vuloc', 'vuloocvqc@gmail.com', '$2y$10$i8ax/YLhf/7NFS5j.XAS9OBboTaomKctzXaqmQgf8Oisg51S1sB9S', 'Quế Sơn', '0986308460', 'default.jpg', 3, NULL, NULL, NULL),
(26, 'Vũ Lộc', 'vuloc', 'vuloocvqrc@gmail.com', '$2y$10$Jug/JFCcNyOcpOrRDZoUxO/.HTcPPfOrblSKCRRmZU9q/SGZ5uD/u', 'Quế Sơn', '0986308460', 'default.jpg', 3, NULL, NULL, NULL),
(27, 'Vũ Lộc', 'vuloc', 'vuloocvqdrc@gmail.com', '$2y$10$60sRw1QIic8o2QQt/OOOhe2OzyaPiWClqJX7P6zRszYZw7yisaLHm', 'Quế Sơn', '0986308460', 'default.jpg', 3, NULL, NULL, NULL),
(28, 'Võ Thị Hồng Nhớ', 'hongnho', 'vohongnho@gmail.com', '$2y$10$/iOYJc8C7XRB6p5GVqVAse5.RS6uWArqqoxuVqwI3./z3PHQ79fFC', 'Duy nghĩa,Duy Xuyên', '016951568', 'vo-thi-hong-nho_1501646963.jpg', 3, NULL, NULL, NULL),
(29, 'Hồng Vâng', 'hongphuong', 'hongvan@gmail.com', '$2y$10$vQ.6d87OwcOspEmQgVycLOWr3ChizcBLJIuCThIJBxvvfdJvebaxK', 'Duy nghĩa,Duy Xuyên', '215156165165', 'hong-vang_1501648353.jpg', 3, NULL, NULL, NULL),
(30, 'hoàng kim quyết', 'quyethkpd01470', 'linhntstyle@gmail.com', '$2y$10$aCIW0n8YbplD7yAnWkgCd.VqKGfUOdnluSkgcmeVReAcxgqbwF1JO', '142/35 Âu Cơ - TP Đà Nẵng', '0123456789', 'hoang-kim-quyet_1503459751.jpg', 3, 'CRethUs8W247nmNrirwXr51RR3Nlyr32kfWfu03ZnHWohf2pI76W58Aq44CG', NULL, NULL),
(31, 'phong', 'phongluu', 'mrphong678@gmail.com', '$2y$10$Z3mqy0JNzF.NN4EO1dOfv...4.XPxLvvC2qM6K5bj9keGCF9ICF.q', 'nha', '0983030495', 'phong_1504772788.jpg', 3, 'L0E65Vw8ajKTRtbMJmd3nHCRygIhFcAemBuhUR6qOblfgoqJybm8n9dDLtGW', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_sliders`
--
ALTER TABLE `featured_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_lists`
--
ALTER TABLE `image_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_lists_product_id_index` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_payment_id_index` (`payment_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_product_id_index` (`product_id`),
  ADD KEY `order_details_order_id_index` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cat_id_index` (`cat_id`),
  ADD KEY `products_brand_id_index` (`brand_id`);

--
-- Indexes for table `social_users`
--
ALTER TABLE `social_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_users_user_id_index` (`user_id`);

--
-- Indexes for table `themeoption`
--
ALTER TABLE `themeoption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_options`
--
ALTER TABLE `theme_options`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `featured_sliders`
--
ALTER TABLE `featured_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `image_lists`
--
ALTER TABLE `image_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `social_users`
--
ALTER TABLE `social_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `themeoption`
--
ALTER TABLE `themeoption`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `theme_options`
--
ALTER TABLE `theme_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `image_lists`
--
ALTER TABLE `image_lists`
  ADD CONSTRAINT `image_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_users`
--
ALTER TABLE `social_users`
  ADD CONSTRAINT `social_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
