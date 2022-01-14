-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 02:55 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceweb`
--

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
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_06_11_145812_create_tbl_admin_table', 1),
(22, '2019_06_17_161852_create_tbl_category_product', 1),
(23, '2019_06_19_152045_create_tbl_brand_product', 1),
(24, '2019_06_19_155204_create_tbl_product', 1),
(25, '2019_08_17_030852_tbl_customer', 1),
(26, '2019_08_17_044054_tbl_shipping', 2),
(30, '2019_08_28_142718_tbl_payment', 3),
(31, '2019_08_28_142750_tbl_order', 3),
(32, '2019_08_28_142810_tbl_order_details', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(2, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Văn Pháp', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'SamSung', 1, NULL, NULL),
(2, 'Biti\'s', '', 1, NULL, NULL),
(3, 'Litte Angel', '', 1, NULL, NULL),
(4, 'Fahasa', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_category_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `slug_category_product`, `category_desc`, `category_status`, `category_image`) VALUES
(1, 'Thiết bị điện tử', 'Dientu', '', 1, 'catalog_thietbidientu.jpg'),
(2, 'Thời trang', 'Thoitrang', '', 1, 'catalog_thoitrang.jpg'),
(3, 'Giày dép', 'Giaydep', '', 1, 'catalog_giaydep.jpeg'),
(4, 'Làm đẹp', 'Lamdep', '', 1, 'catalog_lamdep.jpg'),
(5, 'Phụ kiện & trang sức', 'Phukien', '', 1, 'catalog_phukien.jpg'),
(6, 'Mẹ & bé', 'treem', '', 1, 'catalog_treem.jpg'),
(7, 'Sức khoẻ', 'suckhoe', '', 1, 'catalog_suckhoe.jpg'),
(8, 'Sách', 'sach', '', 1, 'catalog_sach.jpg'),
(9, 'Voucher & nạp thẻ', 'voucher', '', 1, 'catalog_voucher.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `voucher_id`, `order_total`, `order_status`, `order_address`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '695,000.00', '0', 'BT', NULL, NULL),
(2, 1, 1, '5,900,000.00', '0', 'BT', NULL, NULL),
(3, 1, 1, '315,000.00', '0', 'BT', NULL, NULL),
(4, 1, 1, '900,000.00', '0', 'BT', NULL, NULL),
(5, 1, 1, '500,000.00', '0', 'BT', NULL, NULL),
(6, 1, 1, '0.00', '0', 'BT', NULL, NULL),
(7, 1, 1, '500,000.00', '0', 'BT', NULL, NULL),
(8, 1, 1, '0.00', '0', 'BT', NULL, NULL),
(9, 1, 1, '1,489,500.00', '0', 'BT', NULL, NULL),
(10, 1, 1, '900,000.00', '0', 'BT', NULL, NULL),
(11, 1, 1, '6,300,000.00', '0', 'BT', NULL, NULL),
(12, 1, 1, '0.00', '0', 'BT', NULL, NULL),
(13, 1, 1, '500,000.00', '0', 'BT', NULL, NULL),
(14, 1, 1, '0.00', '0', 'BT', NULL, NULL),
(15, 4, 1, '1,459,000.00', '0', 'BT', NULL, NULL),
(16, 7, 1, '99,500.00', '0', 'BT', NULL, NULL),
(17, 7, 1, '398,000.00', '0', 'BT', NULL, NULL),
(18, 7, 1, '99,500.00', '0', 'BT', NULL, NULL),
(19, 7, 1, '900,000.00', '0', 'BT', NULL, NULL),
(20, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(21, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(22, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(23, 7, 1, '900,000.00', 'Đang giao', 'BT', NULL, NULL),
(24, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(25, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(26, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(27, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(28, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(29, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(30, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(31, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(32, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(33, 7, 1, '5,000,000.00', '0', 'BT', NULL, NULL),
(34, 7, 1, '0.00', '0', 'BT', NULL, NULL),
(35, 7, 1, '900,000.00', '0', 'BT', NULL, NULL),
(36, 7, 1, '1,800,000.00', '0', 'BT', NULL, NULL),
(37, 7, 1, '900,000.00', '0', 'BT', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Giày Thể Thao Nữ Bitis Hunter Street DSWH04300\r\n', '695000', 1, NULL, NULL),
(2, 2, 2, 'Máy PS4 màu đỏ', '5000000', 1, NULL, NULL),
(3, 2, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 1, NULL, NULL),
(4, 3, 6, 'Váy Đầm bé gái caro trắng xanh tay dài', '315000', 1, NULL, NULL),
(5, 4, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 1, NULL, NULL),
(6, 5, 1, 'Tay cầm chơi game PS4 màu trắng', '500000', 1, NULL, NULL),
(7, 7, 1, 'Tay cầm chơi game PS4 màu trắng', '500000', 1, NULL, NULL),
(8, 9, 7, 'Phía Sau Nghi Can X (Tái Bản 2019)', '99500', 1, NULL, NULL),
(9, 9, 4, 'Giày Thể Thao Nữ Bitis Hunter Street DSWH04300\r\n', '695000', 2, NULL, NULL),
(10, 10, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 1, NULL, NULL),
(11, 11, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 7, NULL, NULL),
(12, 13, 1, 'Tay cầm chơi game PS4 màu trắng', '500000', 1, NULL, NULL),
(13, 15, 7, 'Phía Sau Nghi Can X (Tái Bản 2019)', '99500', 2, NULL, NULL),
(14, 15, 6, 'Váy Đầm bé gái caro trắng xanh tay dài', '315000', 4, NULL, NULL),
(15, 16, 7, 'Phía Sau Nghi Can X (Tái Bản 2019)', '99500', 1, NULL, NULL),
(16, 17, 7, 'Phía Sau Nghi Can X (Tái Bản 2019)', '99500', 4, NULL, NULL),
(17, 18, 7, 'Phía Sau Nghi Can X (Tái Bản 2019)', '99500', 1, NULL, NULL),
(18, 19, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 1, NULL, NULL),
(19, 23, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 1, NULL, NULL),
(20, 33, 2, 'Máy PS4 màu đỏ', '5000000', 1, NULL, NULL),
(21, 35, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 1, NULL, NULL),
(22, 36, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 2, NULL, NULL),
(23, 37, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantily` int(11) NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_quantily`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'Tay cầm chơi game PS4 màu trắng', 1, 1, 'Tay cầm chơi game PS4 màu trắng', 'Tay cầm chơi game PS4 màu trắng', '500000', 'mayps4mautrang.jpg', 0, 6, '2021-12-25 14:23:01', '2021-12-25 14:30:36'),
(2, 'Máy PS4 màu đỏ', 1, 1, 'Máy PS4 màu đỏ', 'Máy PS4 màu đỏ', '5000000', 'mayps4maudo.jpg', 0, 6, '2021-12-25 14:25:06', '2021-12-25 14:28:47'),
(3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', 3, 2, '', '', '900000', 'giaythethaobittnam.jpg', 0, -4, NULL, NULL),
(4, 'Giày Thể Thao Nữ Bitis Hunter Street DSWH04300\r\n', 3, 2, '', '', '695000', 'giaythethaobittnu.jpg', 0, 2, NULL, NULL),
(5, 'Váy yếm bé gái cầu vồng VTD009', 6, 3, '', '', '130000', 'vayyembegai.jpg', 0, 6, NULL, NULL),
(6, 'Váy Đầm bé gái caro trắng xanh tay dài', 6, 3, '- Mã sản phẩm: K063, K132\r\n- Màu sắc: xanh, đỏ\r\n- Họa tiết: Caro xanh, Caro đỏ\r\n- Kích thước: Từ 11kg - 45kg\r\n- Chất liệu: 2 lớp Cotton tự nhiên\r\n- Xuất xứ: Việt Nam\r\n- Màu sắc trung tính nhẹ nhàng đáng yêu như hình ảnh\r\n- Sử dụng chất liệu cotton cao cấp, mềm mại, an toàn cho làn da trẻ em', 'HƯỚNG DẪN GIẶT VÀ BẢO QUẢN QUẦN ÁO TRẺ EM:\n- Giặt tay riêng sản phẩm trong lần giặt đầu tiên\n- Không giặt chung đồ khác màu hoặc đồ bị phai\n- Không nên ngâm sản phẩm quá lâu với xà phòng giặt\n- Không sử dụng chất tẩy mạnh cho sản phẩm\n- Tránh phơi sản phẩm trực tiếp dưới ánh nắng\n- Là chất liệu cotton sợi tự nhiên nên sản phẩm có thể sẽ bị nhăn sau khi giặt và vắt khô bằng máy giặt\n- Khi là/ủi nên là mặt trái của sản phẩm', '315000', 'vaydambegai.jpg', 0, 6, NULL, NULL),
(7, 'Phía Sau Nghi Can X (Tái Bản 2019)', 8, 4, 'Công ty phát hành: Nhã Nam\r\nNgày xuất bản: 2019-05-01 00:00:00\r\nKích thước: 14 x 20.5 cm\r\nLoại bìa: Bìa mềm\r\nSố trang: 396', '“Việc nghĩ ra một bài toán vô cùng khó và việc giải bài toán đó, việc nào khó hơn?”\r\nKhi nhấn chuông cửa nhà nghi can chính của một vụ án mới, điều tra viên Kusanagi không biết rằng anh sắp phải đương đầu với một thiên tài ẩn dật. Kusanagi càng không thể ngờ rằng, chỉ một câu nói vô thưởng vô phạt của anh đã kéo người bạn thân, Manabu Yukawa, một phó giáo sư vật lý tài năng, vào vụ án. Và điều làm sững sờ nhất, đó là vụ án kia chẳng qua cũng chỉ như một bài toán cấp ba đơn giản, tuy nhiên ấn số X khi được phơi bày ra lại không đem đến hạnh phúc cho bất cứ ai…\r\nVới một giọng văn tỉnh táo và dung dị, Higashino Keigo đã đem đến cho độc giả hơn cả một cuốn tiểu thuyết trinh thám. Mô tả tội ác không phải điều hấp dẫn nhất ở đây, mà còn là những giằng xé nội tâm thầm kín, những nhân vật bình dị, và sự quan tâm sâu sa tới con người. Tác phẩm đã đem lại cho Higashino Keigo Giải Naoki lần thứ 134, một giải thưởng văn học lâu đời sánh ngang giải Akutagawa tại Nhật.', '99500', 'TKB96.PNG', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voucher`
--

CREATE TABLE `tbl_voucher` (
  `voucher_id` int(11) NOT NULL,
  `voucher_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `voucher_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher_quantity` int(11) NOT NULL,
  `voucher_date` date NOT NULL,
  `voucher_sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_voucher`
--

INSERT INTO `tbl_voucher` (`voucher_id`, `voucher_code`, `voucher_name`, `voucher_quantity`, `voucher_date`, `voucher_sale`) VALUES
(1, '0', 'Giảm giá 0%', 0, '0000-00-00', 0),
(2, 'HBNY22', 'Giảm 20k mọi đơn hàng', 90, '2022-01-30', 0),
(3, 'GB2021', 'Giảm 10k đơn tối thiểu 0đ', 100, '2022-01-31', 0),
(4, 'HELLOX123', 'Giảm 10% đơn hàng, tối đa 20k', 45, '2022-02-28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `sodienthoai`, `diachi`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`, `ngaysinh`) VALUES
(1, 'Linh', '', '', 'tuonglinh0218@gmail.com', NULL, '$2y$10$ZcRlacJB5XDM4arVW4oIz.E93KtqL.wCYhdjZ5AjygbT/u3D57s92', NULL, NULL, NULL, 'avatar_jinyang.jpg', NULL),
(2, 'hehe', '', '', 'alibaba@gmail.com', NULL, '$2y$10$Tp89cyukCResjjhi9tEIbODF6EThfGrB/658kxLelDlPnyaml1eIm', NULL, NULL, NULL, NULL, NULL),
(3, 'hehe', '', '', 'haha123@gmail.com', NULL, '$2y$10$E0FjH7XU0D0EYzo5z4IDDOuG89f3RaEuy8JpbOsOVxufMkGqbCy82', NULL, NULL, NULL, 'avatar_default.png', NULL),
(4, 'uituser', '', '', 'kakaka@gmail.com', NULL, '$2y$10$vSe.ein1xCwyCPbOKsU4.uUXy1yh0XhC270ithz5j2z5fRUnR57/G', NULL, NULL, NULL, 'avatar_default.png', NULL),
(6, 'TNHH MTV UIT', '', '', '234@gmail.com', NULL, '$2y$10$V./KOXnjBb1SSjkGbXIlwOUdtSDM37HDwNypoUxaO50VnsyOiVl3i', NULL, NULL, NULL, 'avatar_default.png', NULL),
(7, 'Server testds', '03423523', '36 ngã tư ch', 'admin@gmail.com', NULL, '$2y$10$zZMBJPfZ8k/Rt5PPCTile.PGNWxFbTv79FVWjSx8A0wTdt8OTj3gu', NULL, NULL, NULL, 'avatar_default.png', '2024-06-18'),
(8, 'wegeg weg', '', '', 'admin1@gmail.com', NULL, '$2y$10$bqMPAsDbYjhDXklb40U62eQKS/TCZAcgWm/XwGa2G0A0WmWX1.Ofm', NULL, NULL, NULL, 'avatar_default.png', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_order_voucher` (`voucher_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `FK_order_voucher` FOREIGN KEY (`voucher_id`) REFERENCES `tbl_voucher` (`voucher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
