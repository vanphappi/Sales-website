-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 05, 2022 lúc 02:08 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerceweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_slug`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'Ss', '', 1, NULL, NULL),
(2, 'Biti\'s', 'bitis', '', 1, NULL, NULL),
(3, 'Litte Angel', 'litte-angel', '', 1, NULL, NULL),
(4, 'Fahasa', 'fahasa', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_category_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `slug_category_product`, `category_desc`, `category_status`, `created_at`, `updated_at`, `category_image`) VALUES
(1, 'Thiết bị điện tử', 'Dientu', '', 1, NULL, NULL, 'catalog_thietbidientu.jpg'),
(2, 'Thời trang', 'Thoitrang', '', 1, NULL, NULL, 'catalog_thoitrang.jpg'),
(3, 'Giày dép', 'Giaydep', '', 1, NULL, NULL, 'catalog_giaydep.jpeg'),
(4, 'Làm đẹp', 'Lamdep', '', 1, NULL, NULL, 'catalog_lamdep.jpg'),
(5, 'Phụ kiện & trang sức', 'Phukien', '', 1, NULL, NULL, 'catalog_phukien.jpg'),
(6, 'Mẹ & bé', 'treem', '', 1, NULL, NULL, 'catalog_treem.jpg'),
(7, 'Sức khoẻ', 'suckhoe', '', 1, NULL, NULL, 'catalog_suckhoe.jpg'),
(8, 'Sách', 'sach', '', 1, NULL, NULL, 'catalog_sach.jpg'),
(9, 'Voucher & nạp thẻ', 'voucher', '', 1, NULL, NULL, 'catalog_voucher.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'Linh beos', 'tuonglinh0218@gmail.com', '$2y$10$ZcRlacJB5XDM4arVW4oIz.E93KtqL.wCYhdjZ5AjygbT/u3D57s92', '0123456789', NULL, '2022-01-01 08:43:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
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
-- Đang đổ dữ liệu cho bảng `tbl_order`
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
(15, 4, 1, '1,459,000.00', '0', 'BT', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
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
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
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
(14, 15, 6, 'Váy Đầm bé gái caro trắng xanh tay dài', '315000', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_slug`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'Tay cầm chơi game PS4 màu trắng', 'tay-cam-choi-game-ps4-mau-trang', 1, 1, 'Tay cầm chơi game PS4 màu trắng', 'Tay cầm chơi game PS4 màu trắng', '500000', 'https://hanoicomputercdn.com/media/product/37582_gamepad_sony_ps4_dualshock4_wireless_controller_trang_chinhhang_0002_1.jpg', 6, '2021-12-25 14:23:01', '2021-12-25 14:30:36'),
(2, 'Máy PS4 màu đỏ', 'may-ps4-mau-do', 1, 1, 'Máy PS4 màu đỏ', 'Máy PS4 màu đỏ', '5000000', 'https://file.hstatic.net/1000231532/file/mua_ps4_pro_spiderman_grande.jpg', 7, '2021-12-25 14:25:06', '2021-12-25 14:28:47'),
(3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', 'giay-the-thao-cao-cap-nam-biti-s-hunter-x-army-green-dsmh05100reu', 3, 2, '', '', '900000', 'https://product.hstatic.net/1000230642/product/dsmh05100reu-1_8229e894517b4713a6e6a857fbc49b0e_1024x1024.jpg', 2, NULL, NULL),
(4, 'Giày Thể Thao Nữ Bitis Hunter Street DSWH04300\r\n', 'giay-the-thao-nu-biti-s-hunter-street-dswh04300', 3, 2, '', '', '695000', 'https://salt.tikicdn.com/cache/400x400/ts/product/27/b3/6b/d0de3aba23c71507a8dee265e970dd9e.JPG.webp', 2, NULL, NULL),
(5, 'Váy yếm bé gái cầu vồng VTD009', 'vay-yem-be-gai-cau-vong-vtd009', 6, 3, '', '', '130000', 'https://salt.tikicdn.com/cache/400x400/ts/product/f4/b7/5c/a2933b1782032ee9fc6ee97a139a8950.jpg.webp', 6, NULL, NULL),
(6, 'Váy Đầm bé gái caro trắng xanh tay dài', 'vay-dam-be-gai-caro-trang-xanh-tay-dai', 6, 3, '- Mã sản phẩm: K063, K132\r\n- Màu sắc: xanh, đỏ\r\n- Họa tiết: Caro xanh, Caro đỏ\r\n- Kích thước: Từ 11kg - 45kg\r\n- Chất liệu: 2 lớp Cotton tự nhiên\r\n- Xuất xứ: Việt Nam\r\n- Màu sắc trung tính nhẹ nhàng đáng yêu như hình ảnh\r\n- Sử dụng chất liệu cotton cao cấp, mềm mại, an toàn cho làn da trẻ em', 'HƯỚNG DẪN GIẶT VÀ BẢO QUẢN QUẦN ÁO TRẺ EM:\n- Giặt tay riêng sản phẩm trong lần giặt đầu tiên\n- Không giặt chung đồ khác màu hoặc đồ bị phai\n- Không nên ngâm sản phẩm quá lâu với xà phòng giặt\n- Không sử dụng chất tẩy mạnh cho sản phẩm\n- Tránh phơi sản phẩm trực tiếp dưới ánh nắng\n- Là chất liệu cotton sợi tự nhiên nên sản phẩm có thể sẽ bị nhăn sau khi giặt và vắt khô bằng máy giặt\n- Khi là/ủi nên là mặt trái của sản phẩm', '315000', 'https://salt.tikicdn.com/cache/w1200/ts/product/85/72/3b/cdb1678b81131cd34a168b02fb15e128.jpg', 6, NULL, NULL),
(7, 'Phía Sau Nghi Can X (Tái Bản 2019)', 'phia-sau-nghi-can-x-tai-ban-2019', 8, 4, 'Công ty phát hành: Nhã Nam\r\nNgày xuất bản: 2019-05-01 00:00:00\r\nKích thước: 14 x 20.5 cm\r\nLoại bìa: Bìa mềm\r\nSố trang: 396', '“Việc nghĩ ra một bài toán vô cùng khó và việc giải bài toán đó, việc nào khó hơn?”\r\nKhi nhấn chuông cửa nhà nghi can chính của một vụ án mới, điều tra viên Kusanagi không biết rằng anh sắp phải đương đầu với một thiên tài ẩn dật. Kusanagi càng không thể ngờ rằng, chỉ một câu nói vô thưởng vô phạt của anh đã kéo người bạn thân, Manabu Yukawa, một phó giáo sư vật lý tài năng, vào vụ án. Và điều làm sững sờ nhất, đó là vụ án kia chẳng qua cũng chỉ như một bài toán cấp ba đơn giản, tuy nhiên ấn số X khi được phơi bày ra lại không đem đến hạnh phúc cho bất cứ ai…\r\nVới một giọng văn tỉnh táo và dung dị, Higashino Keigo đã đem đến cho độc giả hơn cả một cuốn tiểu thuyết trinh thám. Mô tả tội ác không phải điều hấp dẫn nhất ở đây, mà còn là những giằng xé nội tâm thầm kín, những nhân vật bình dị, và sự quan tâm sâu sa tới con người. Tác phẩm đã đem lại cho Higashino Keigo Giải Naoki lần thứ 134, một giải thưởng văn học lâu đời sánh ngang giải Akutagawa tại Nhật.\r\n', '99500', 'https://salt.tikicdn.com/cache/w1200/ts/product/23/56/86/a538698ead7dc2f693d1e9778417317d.jpg', 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_voucher`
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
-- Đang đổ dữ liệu cho bảng `tbl_voucher`
--

INSERT INTO `tbl_voucher` (`voucher_id`, `voucher_code`, `voucher_name`, `voucher_quantity`, `voucher_date`, `voucher_sale`) VALUES
(1, '0', 'Giảm giá 0%', 0, '0000-00-00', 0),
(2, 'HBNY22', 'Giảm 20k mọi đơn hàng', 90, '2022-01-30', 0),
(3, 'GB2021', 'Giảm 10k đơn tối thiểu 0đ', 100, '2022-01-31', 0),
(4, 'HELLOX123', 'Giảm 10% đơn hàng, tối đa 20k', 45, '2022-02-28', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Linh', 'tuonglinh0218@gmail.com', NULL, '$2y$10$ZcRlacJB5XDM4arVW4oIz.E93KtqL.wCYhdjZ5AjygbT/u3D57s92', NULL, NULL, NULL, 'avatar_jinyang.jpg'),
(2, 'hehe', 'alibaba@gmail.com', NULL, '$2y$10$Tp89cyukCResjjhi9tEIbODF6EThfGrB/658kxLelDlPnyaml1eIm', NULL, NULL, NULL, NULL),
(3, 'hehe', 'haha123@gmail.com', NULL, '$2y$10$E0FjH7XU0D0EYzo5z4IDDOuG89f3RaEuy8JpbOsOVxufMkGqbCy82', NULL, NULL, NULL, 'avatar_default.png'),
(4, 'uituser', 'kakaka@gmail.com', NULL, '$2y$10$vSe.ein1xCwyCPbOKsU4.uUXy1yh0XhC270ithz5j2z5fRUnR57/G', NULL, NULL, NULL, 'avatar_default.png'),
(6, 'TNHH MTV UIT', '234@gmail.com', NULL, '$2y$10$V./KOXnjBb1SSjkGbXIlwOUdtSDM37HDwNypoUxaO50VnsyOiVl3i', NULL, NULL, NULL, 'avatar_default.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_order_voucher` (`voucher_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `FK_order_voucher` FOREIGN KEY (`voucher_id`) REFERENCES `tbl_voucher` (`voucher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
