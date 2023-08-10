-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 11:56 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super` int(11) NOT NULL DEFAULT 0,
  `birth` date NOT NULL DEFAULT '2021-01-22',
  `ngay_tao_tai_khoan` datetime NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `address` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '""',
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image.jpg',
  `is_lock` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `is_super`, `birth`, `ngay_tao_tai_khoan`, `phone`, `address`, `photo`, `is_lock`, `is_delete`) VALUES
(8, 'a', 'a@gmail.com', '123456', 0, '2011-01-02', '2021-02-27 19:04:36', '01234567894', '38 đường 101', '04ecb1fa28506ccb6f72b12c0245ddbc.jpg', 0, 0),
(9, 'Nhóm 1 DỰ án 1', 'admin@gmail.com', '$2y$10$cqQ62EO9nEqd7rNz0vJKl.hckDx/nAxQx7xp8Q5HH3wUEU/BGV4z.', 0, '2022-01-11', '2022-11-03 02:25:22', '123456789', '137 Nguyễn Thị Thập Đà Nẵng Dự Án 1', 'f4b9ec30ad9f68f89b29639786cb62ef.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `binhluanadmins`
--

CREATE TABLE `binhluanadmins` (
  `id` int(11) NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `san_pham_id` int(10) UNSIGNED NOT NULL,
  `noi_dung_binh_luan` text COLLATE utf8_unicode_ci NOT NULL,
  `thoi_gian_binh_luan` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `binhluans`
--

CREATE TABLE `binhluans` (
  `id` int(11) UNSIGNED NOT NULL,
  `noi_dung_binh_luan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `san_pham_id` int(10) UNSIGNED NOT NULL,
  `thoi_gian_binh_luan` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `binhluans`
--

INSERT INTO `binhluans` (`id`, `noi_dung_binh_luan`, `user_id`, `san_pham_id`, `thoi_gian_binh_luan`, `created_at`, `updated_at`) VALUES
(5, 'oke', 2, 23, '2021-03-03 11:10:04', NULL, NULL),
(7, 'cai nay tot qua', 2, 23, '2021-03-03 15:27:17', NULL, NULL),
(8, 'cai nay hay qua', 2, 23, '2021-03-03 15:27:40', NULL, NULL),
(9, 'good job man ?', 2, 26, '2021-03-03 15:41:17', NULL, NULL),
(15, 'Ok chất lượng tốt quá', 5, 22, '2021-03-04 17:23:53', NULL, NULL),
(23, 'hahahah', 6, 23, '2021-03-04 17:49:33', NULL, NULL),
(27, '	đẹp quá', 12, 26, '2021-03-07 10:52:25', NULL, NULL),
(28, 'hay quá', 14, 25, '2022-12-10 16:43:27', NULL, NULL),
(29, 'haha', 14, 22, '2022-12-10 17:03:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadons`
--

CREATE TABLE `chitiethoadons` (
  `hoa_don_id` int(10) UNSIGNED NOT NULL,
  `san_pham_id` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiethoadons`
--

INSERT INTO `chitiethoadons` (`hoa_don_id`, `san_pham_id`, `so_luong`, `don_gia`, `created_at`, `updated_at`) VALUES
(7, 23, 1, 9000000, NULL, NULL),
(7, 38, 1, 15000000, NULL, NULL),
(7, 42, 1, 120000, NULL, NULL),
(8, 22, 4, 8000000, NULL, NULL),
(8, 23, 4, 9000000, NULL, NULL),
(9, 42, 1, 120000, NULL, NULL),
(9, 43, 1, 150000, NULL, NULL),
(9, 44, 1, 200000, NULL, NULL),
(10, 28, 1, 12500000, NULL, NULL),
(10, 29, 1, 10500000, NULL, NULL),
(11, 25, 1, 11000000, NULL, NULL),
(11, 26, 1, 12000000, NULL, NULL),
(11, 47, 1, 499998, NULL, NULL),
(12, 45, 1, 180000, NULL, NULL),
(12, 46, 1, 300000, NULL, NULL),
(13, 35, 1, 12000000, NULL, NULL),
(14, 43, 3, 150000, NULL, NULL),
(15, 34, 1, 800000, NULL, NULL),
(16, 27, 1, 14500000, NULL, NULL),
(17, 43, 1, 150000, NULL, NULL),
(17, 44, 2, 200000, NULL, NULL),
(18, 24, 1, 10000000, NULL, NULL),
(19, 25, 1, 11000000, NULL, NULL),
(19, 26, 1, 12000000, NULL, NULL),
(20, 25, 1, 11000000, NULL, NULL),
(21, 38, 1, 15000000, NULL, NULL),
(21, 39, 1, 11000000, NULL, NULL),
(22, 28, 2, 12500000, NULL, NULL),
(23, 31, 1, 5500000, NULL, NULL),
(24, 46, 1, 300000, NULL, NULL),
(25, 38, 1, 15000000, NULL, NULL),
(26, 44, 1, 200000, NULL, NULL),
(27, 32, 1, 1500000, NULL, NULL),
(28, 41, 1, 19000000, NULL, NULL),
(34, 28, 1, 12500000, NULL, NULL),
(34, 29, 3, 10500000, NULL, NULL),
(35, 23, 1, 9000000, NULL, NULL),
(37, 23, 1, 9000000, NULL, NULL),
(38, 28, 1, 12500000, NULL, NULL),
(38, 30, 1, 8500000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danhgias`
--

CREATE TABLE `danhgias` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `san_pham_id` int(10) UNSIGNED NOT NULL,
  `muc_do_danh_gia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadons`
--

CREATE TABLE `hoadons` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `dia_chi_nhan_hang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_trang_thanh_toan` tinyint(4) NOT NULL DEFAULT 0,
  `ngay_tao` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadons`
--

INSERT INTO `hoadons` (`id`, `user_id`, `dia_chi_nhan_hang`, `tinh_trang_thanh_toan`, `ngay_tao`, `created_at`, `updated_at`) VALUES
(7, 2, '1 nguyễn thị thành phố đà nẵng', 1, '2022-03-11 02:13:04', NULL, NULL),
(8, 2, '2 nguyễn thị thập thành phố đà nẵng', 0, '2022-04-11 11:00:00', NULL, NULL),
(9, 3, '4 nguyễn thị thập đà nẵng', 1, '2021-03-04 16:22:17', NULL, NULL),
(10, 9, '5 nguyễn thị thập đà nẵng', 0, '2022-03-11 17:02:56', NULL, NULL),
(11, 10, '6 nguyễn thị thập đà nẵng', 1, '2022-11-03 17:03:28', NULL, NULL),
(12, 5, '9 nguyễn thị thập đà nẵng', 1, '2022-03-15 17:04:22', NULL, NULL),
(13, 3, '10 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:04:53', NULL, NULL),
(14, 13, '10 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:05:41', NULL, NULL),
(15, 1, '12 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:05:59', NULL, NULL),
(16, 2, '12 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:12:29', NULL, NULL),
(17, 4, '13 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:12:54', NULL, NULL),
(18, 4, '14 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:13:44', NULL, NULL),
(19, 4, '15 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:14:05', NULL, NULL),
(20, 5, '16 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:15:28', NULL, NULL),
(21, 4, '17 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:16:21', NULL, NULL),
(22, 5, '18 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:22:18', NULL, NULL),
(23, 5, '4 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:22:33', NULL, NULL),
(24, 5, '19 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:22:50', NULL, NULL),
(25, 5, '21 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:23:06', NULL, NULL),
(26, 5, '20 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:23:34', NULL, NULL),
(27, 5, '21 nguyễn thị thập đà nẵng', 0, '2022-03-04 17:24:39', NULL, NULL),
(28, 5, '137nguyễn thị thập đà nẵng', 0, '2022-03-04 17:28:55', NULL, NULL),
(34, 11, '8 nguyễn thị thập đà nẵng', 0, '2021-03-07 09:29:49', NULL, NULL),
(35, 11, 'Đà Nẵng', 0, '2022-03-25 09:30:24', NULL, NULL),
(37, 12, '7 nguyễn thị thập đà nẵng', 1, '2022-03-15 10:51:08', NULL, NULL),
(38, 12, 'Quận Nam Từ Liêm Hà Nội', 0, '2021-03-07 10:51:24', NULL, NULL),
(39, 11, '8 nguyễn thị thập đà nẵng', 0, '2022-03-11 09:29:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanphams`
--

CREATE TABLE `loaisanphams` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_loai_san_pham` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `da_xoa` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanphams`
--

INSERT INTO `loaisanphams` (`id`, `ten_loai_san_pham`, `da_xoa`, `created_at`, `updated_at`) VALUES
(16, 'phone', 0, '2022-02-28 10:57:24', NULL),
(17, 'laptop', 0, '2022-02-28 10:57:37', NULL),
(18, 'mouse', 0, '2022-02-28 10:57:55', NULL),
(19, 'desktop', 0, '2022-02-28 10:58:06', NULL),
(20, 'watch', 0, '2022-02-28 10:59:01', NULL),
(24, 'game', 1, '2022-03-07 02:53:08', NULL),
(25, 'gaming', 1, '2022-03-07 02:53:19', NULL),
(26, 'game 234', 1, '2022-03-07 03:04:33', NULL),
(27, 'fwa', 1, '2022-03-07 03:15:10', NULL),
(28, 'Phụ kiện khác 123', 1, '2022-03-07 03:53:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanphams`
--

CREATE TABLE `sanphams` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_san_pham` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `loai_san_pham_id` int(10) UNSIGNED NOT NULL,
  `mo_ta_san_pham` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `hinh_anh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `ngay_dang` datetime NOT NULL DEFAULT current_timestamp(),
  `da_xoa` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanphams`
--

INSERT INTO `sanphams` (`id`, `ten_san_pham`, `admin_id`, `loai_san_pham_id`, `mo_ta_san_pham`, `so_luong`, `don_gia`, `hinh_anh`, `ngay_dang`, `da_xoa`, `created_at`, `updated_at`) VALUES
(22, 'phone 1', 9, 16, 'phone 1 phone 1 phone 1 phone 1 phone 1 phone 1 phone 1', 22, 8000000, '443cb001c138b2561a0d90720d6ce111.jpg', '2022-02-28 18:15:34', 1, NULL, NULL),
(23, 'phone 2', 9, 16, 'phone 2 phone 2 phone 2 phone 2 phone 2 phone 2 phone 2', 13, 9000000, '51d92be1c60d1db1d2e5e7a07da55b26.jpg', '2022-02-28 18:16:13', 1, NULL, NULL),
(24, 'phone 3', 8, 16, 'phone 3 phone 3 phone 3 phone 3 phone 3 phone 3 phone 3', 5, 10000000, '950a4152c2b4aa3ad78bdd6b366cc179.jpg', '2022-02-28 18:17:06', 0, NULL, NULL),
(25, 'phone 4', 8, 16, 'phone 4 phone 4 phone 4 phone 4 phone 4 phone 4 phone 4', 5, 11000000, '3ad7c2ebb96fcba7cda0cf54a2e802f5.png', '2022-02-28 18:17:51', 0, NULL, NULL),
(26, 'phone 5', 8, 16, 'phone 5 phone 5 phone 5 phone 5 phone 5 phone 5 phone 5', 4, 12000000, '2b24d495052a8ce66358eb576b8912c8.jpg', '2022-02-28 18:18:40', 0, NULL, NULL),
(27, 'laptop 1', 8, 17, 'laptop 1 laptop 1 laptop 1 laptop 1 laptop 1 laptop 1 laptop 1', 5, 14500000, '1ecfb463472ec9115b10c292ef8bc986.jpg', '2022-02-28 18:24:16', 1, NULL, NULL),
(28, 'laptop 2', 8, 17, 'laptop 2 laptop 2 laptop 2 laptop 2 laptop 2 laptop 2 laptop 2', 6, 12500000, 'e1e32e235eee1f970470a3a6658dfdd5.jpg', '2022-02-28 18:25:07', 0, NULL, NULL),
(29, 'laptop 3', 8, 17, 'laptop 3 laptop 3 laptop 3 laptop 3 laptop 3 laptop 3 laptop 3', 4, 10500000, 'a516a87cfcaef229b342c437fe2b95f7.jpg', '2022-02-28 18:26:16', 0, NULL, NULL),
(30, 'laptop 4', 8, 17, 'laptop 4 laptop 4 laptop 4 laptop 4 laptop 4 laptop 4 laptop 4', 5, 8500000, '788d986905533aba051261497ecffcbb.jpg', '2021-02-28 18:27:01', 0, NULL, NULL),
(31, 'laptop 5', 8, 17, 'laptop 5 laptop 5 laptop 5 laptop 5 laptop 5 laptop 5 laptop 5', 3, 5500000, '16a5cdae362b8d27a1d8f8c7b78b4330.jpg', '2021-02-28 18:27:52', 0, NULL, NULL),
(32, 'watch 1', 8, 20, 'watch 1 watch 1 watch 1 watch 1 watch 1 watch 1 watch 1', 4, 1500000, '13fe9d84310e77f13a6d184dbf1232f3.jpg', '2022-02-28 18:29:18', 0, NULL, NULL),
(33, 'watch 2', 8, 20, 'watch 2 watch 2 watch 2 watch 2 watch 2 watch 2 watch 2', 5, 2300000, '3b5dca501ee1e6d8cd7b905f4e1bf723.jpg', '2022-02-28 18:30:07', 0, NULL, NULL),
(34, 'watch 3', 8, 20, 'watch 3 watch 3 watch 3 watch 3 watch 3 watch 3 watch 3', 12, 800000, '698d51a19d8a121ce581499d7b701668.jpg', '2021-02-28 18:30:52', 0, NULL, NULL),
(35, 'watch 4', 8, 20, 'watch 4 watch 4 watch 4 watch 4 watch 4 watch 4 watch 4', 3, 12000000, '996a7fa078cc36c46d02f9af3bef918b.jpg', '2021-02-28 18:32:34', 0, NULL, NULL),
(36, 'watch 5', 8, 20, 'watch 4 watch 4 watch 4 watch 4 watch 4 watch 4 watch 4', 1, 12000000, 'b6edc1cd1f36e45daf6d7824d7bb2283.jpg', '2021-02-28 18:33:15', 0, NULL, NULL),
(37, 'desktop 1', 8, 19, 'desktop 1 desktop 1 desktop 1 desktop 1 desktop 1 desktop 1 desktop 1', 3, 9500000, '1f4477bad7af3616c1f933a02bfabe4e.jpg', '2021-02-28 18:35:35', 0, NULL, NULL),
(38, 'desktop 2', 8, 19, 'desktop 2 desktop 2 desktop 2 desktop 2 desktop 2 desktop 2 desktop 2', 7, 15000000, '109a0ca3bc27f3e96597370d5c8cf03d.jpg', '2021-02-28 18:36:21', 0, NULL, NULL),
(39, 'desktop 3', 8, 19, 'desktop 3 desktop 3 desktop 3 desktop 3 desktop 3 desktop 3 desktop 3', 3, 11000000, '812b4ba287f5ee0bc9d43bbf5bbe87fb.jpg', '2021-02-28 18:36:59', 0, NULL, NULL),
(40, 'desktop 4', 8, 19, 'desktop 4 desktop 4 desktop 4 desktop 4 desktop 4 desktop 4 desktop 4', 9, 18000000, '35cf8659cfcb13224cbd47863a34fc58.png', '2021-02-28 18:37:42', 0, NULL, NULL),
(41, 'desktop 5', 8, 19, 'desktop 5 desktop 5 desktop 5 desktop 5 desktop 5 desktop 5 desktop 5', 11, 19000000, 'f61d6947467ccd3aa5af24db320235dd.jpg', '2021-02-28 18:39:46', 0, NULL, NULL),
(42, 'mouse 1', 8, 18, 'mouse 1 mouse 1 mouse 1 mouse 1 mouse 1 mouse 1 mouse 1', 22, 120000, '3e89ebdb49f712c7d90d1b39e348bbbf.jpg', '2022-02-28 18:40:37', 0, NULL, NULL),
(43, 'mouse 2', 8, 18, 'mouse 2 mouse 2 mouse 2 mouse 2 mouse 2 mouse 2 mouse 2', 1, 150000, '82aa4b0af34c2313a562076992e50aa3.jpg', '2021-02-28 18:41:10', 0, NULL, NULL),
(44, 'mouse 3', 8, 18, 'mouse 3 mouse 3 mouse 3 mouse 3 mouse 3 mouse 3 mouse 3', 5, 200000, 'bac9162b47c56fc8a4d2a519803d51b3.jpg', '2022-02-28 18:41:44', 0, NULL, NULL),
(45, 'mouse 4', 8, 18, 'mouse 4 mouse 4 mouse 4 mouse 4 mouse 4 mouse 4 mouse 4', 8, 180000, 'd34ab169b70c9dcd35e62896010cd9ff.jpg', '2022-02-28 18:42:21', 0, NULL, NULL),
(46, 'mouse 5', 8, 18, 'mouse 5 mouse 5 mouse 5 mouse 5 mouse 5 mouse 5 mouse 5', 22, 300000, 'd1c38a09acc34845c6be3a127a5aacaf.jpg', '2022-02-28 18:43:05', 0, NULL, NULL),
(50, 'samsum4', 9, 17, 'dbdfgdfgdg', 4, 4, 'c06d06da9666a219db15cf575aff2824.jpg', '2021-03-07 10:34:11', 1, NULL, NULL),
(51, 'samsum galaxy note 12i', 9, 16, 'galaxy galaxy', 7, 20, '82f2b308c3b01637c607ce05f52a2fed.jpg', '2021-03-07 10:54:48', 1, NULL, NULL),
(52, 'demo', 9, 16, 'ugjyggjgh', 1, 10000000, '202cb962ac59075b964b07152d234b70.png', '2022-12-10 17:20:52', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL DEFAULT '2021-01-22',
  `ngay_tao_tai_khoan` datetime NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `address` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image.jpg',
  `is_lock` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `birth`, `ngay_tao_tai_khoan`, `phone`, `address`, `photo`, `is_lock`, `is_delete`) VALUES
(1, 'ab', 'ab@gmail.com', '$2y$10$ftLIvhds3ZeXxkw0zEVDp.5q3EKmwzvHTU.jJfR3jAuRcvq/R8cXm', '2021-01-22', '2021-02-24 14:24:56', '0909374062', '', '', 0, 0),
(2, 'abc', 'abc@gmail.com', '$2y$10$HdrTO4qiPCd2GRfqXhtFyezHGhnNoFBeGpIhXxO6tMGdyySuSMcGC', '2000-04-17', '0202-02-11 11:00:00', '0123456789', '1 nguyễn thị thập thành phố đà nẵng', '', 0, 0),
(3, 'abcd', 'abcd@gmail.com', '$2y$10$9Xbb0dH26P6.QySwplP1ZOi85JVev6ydRt43j7mv5ImTOX1OsHm7a', '2021-01-22', '2021-03-04 16:06:28', '0905124728', 'Nguyễn Thị Thâp Thành Phố Đà Nẵng', '', 0, 0),
(4, 'pro', 'pro@yahoo.com', '$2y$10$brt.L2DjP2OLJUgnqfN/0u9uVilITWZBlCWGHQGsg5nUieAiLDakK', '2021-01-22', '2021-03-04 17:10:59', '0909123321', 'Nguyễn Thị Thâp Thành Phố Đà Nẵng', '', 0, 0),
(5, 'haha', 'haha@gmail.com', '$2y$10$i7uaMzy0UzZPl2fLG9.xhO/XRjF5cLNcDUt1a2LIlnP81tqzoqhaW', '2021-01-22', '2021-03-04 17:18:14', '0905432123', 'Nguyễn Thị Thâp Thành Phố Đà Nẵng', '', 0, 0),
(6, 'poly', 'poly@edu.vn', '$2y$10$0pjGDyUzvOA/YqFE9EJH5eT15pmDaZ3L9yIrPww123amx.zmaeuPe', '2011-01-04', '2021-03-04 17:32:41', '0909129921', 'Nguyễn Thị Thâp Thành Phố Đà Nẵng', '', 0, 0),
(8, 'cao dang fpt', 'caodangfpt@edu.vn', '$2y$10$Wzqj1Qnyno56ghTw5rIpu.MP3uXgoRXHhR/NVQF.J1M7bmgsrcdPC', '2021-01-22', '2021-03-05 21:17:57', '0909217862', 'Nguyễn Thị Thâp Thành Phố Đà Nẵng', '', 0, 0),
(9, 'fpt1', 'fpt1@fpt.edu.vn', '$2y$10$8/W1iN3mVo8bBuTrXwux4.fAZ0h85EjdfJjEbsUpvuF.H8kRtZr6O', '2021-01-22', '2021-03-05 21:18:26', '0909217526', 'Nguyễn Thị Thâp Thành Phố Đà Nẵng', '', 0, 0),
(10, 'thu tu', 'thutu@gmail.com', '$2y$10$M5vHb44oUTfJI0JnrMt7ae.c16TF9ttE.dTHi1mxswvFqusSqoEBa', '2021-01-22', '2021-03-05 21:27:37', '0907124572', 'Nguyễn Thị Thâp Thành Phố Đà Nẵng', '', 0, 0),
(11, 'Nguyễn minh phương', 'nguyenminhphuong@gmail.com', '$2y$10$/7AA3fgG/bp5oFTEtuBqDukr4KJSgO8eB0FNQr.z1wQ/ZpBUEf5gS', '2001-01-02', '2021-03-07 09:25:38', '0912567712', 'Nguyễn Thị Thâp Thành Phố Đà Nẵng', '', 0, 0),
(12, 'Nguyễn văn hiếu', 'nguyenvanhieu@gmail.com', '$2y$10$Wus23MoxhEDldgghAOlQjeGTOCoDqmdCohGFoegE/lcv9E3DiWyhq', '2021-01-22', '2021-03-07 10:47:44', '0908123321', 'Nguyễn Thị Thâp Thành Phố Đà Nẵng', '', 0, 0),
(13, '12', '12@gmail.com', '$2y$10$i7uaMzy0UzZPl2fLG9.xhO/XRjF5cLNcDUt1a2LIlnP81tqzoqhaW', '2021-01-22', '2021-03-04 17:18:14', '0905432123', 'Nguyễn Thị Thâp Thành Phố Đà Nẵng', '', 0, 0),
(14, 'hai', 'hai@gmail.com', '$2y$10$kysnSV9GXoUb3Gm8PCtLI.8bf3cwPfQnN2qdfhoRP4U3YKNEnhpPa', '2021-01-22', '2022-12-10 16:42:49', '123456789', '', 'image.jpg', 0, 0);

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
-- Indexes for table `binhluanadmins`
--
ALTER TABLE `binhluanadmins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `san_pham_id` (`san_pham_id`) USING BTREE;

--
-- Indexes for table `binhluans`
--
ALTER TABLE `binhluans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluans_user_id_foreign` (`user_id`),
  ADD KEY `san_pham_id` (`san_pham_id`);

--
-- Indexes for table `chitiethoadons`
--
ALTER TABLE `chitiethoadons`
  ADD PRIMARY KEY (`hoa_don_id`,`san_pham_id`),
  ADD KEY `chitiethoadons_san_pham_id_foreign` (`san_pham_id`),
  ADD KEY `chitiethoadons_hoa_don_id_foreign` (`hoa_don_id`);

--
-- Indexes for table `danhgias`
--
ALTER TABLE `danhgias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `san_pham_id` (`san_pham_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hoadons`
--
ALTER TABLE `hoadons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `loaisanphams`
--
ALTER TABLE `loaisanphams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanphams`
--
ALTER TABLE `sanphams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanphams_admin_id_foreign` (`admin_id`),
  ADD KEY `loai_san_pham_id` (`loai_san_pham_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `binhluanadmins`
--
ALTER TABLE `binhluanadmins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `binhluans`
--
ALTER TABLE `binhluans`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `danhgias`
--
ALTER TABLE `danhgias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoadons`
--
ALTER TABLE `hoadons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `loaisanphams`
--
ALTER TABLE `loaisanphams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sanphams`
--
ALTER TABLE `sanphams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluanadmins`
--
ALTER TABLE `binhluanadmins`
  ADD CONSTRAINT `binhluanadmins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binhluanadmins_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binhluanadmins_ibfk_3` FOREIGN KEY (`san_pham_id`) REFERENCES `sanphams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `binhluans`
--
ALTER TABLE `binhluans`
  ADD CONSTRAINT `binhluans_ibfk_1` FOREIGN KEY (`san_pham_id`) REFERENCES `sanphams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitiethoadons`
--
ALTER TABLE `chitiethoadons`
  ADD CONSTRAINT `chitiethoadons_ibfk_1` FOREIGN KEY (`hoa_don_id`) REFERENCES `hoadons` (`id`);

--
-- Constraints for table `danhgias`
--
ALTER TABLE `danhgias`
  ADD CONSTRAINT `danhgias_ibfk_1` FOREIGN KEY (`san_pham_id`) REFERENCES `sanphams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `danhgias_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `hoadons`
--
ALTER TABLE `hoadons`
  ADD CONSTRAINT `hoadons_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sanphams`
--
ALTER TABLE `sanphams`
  ADD CONSTRAINT `sanphams_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sanphams_ibfk_2` FOREIGN KEY (`loai_san_pham_id`) REFERENCES `loaisanphams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
