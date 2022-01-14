-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 08, 2022 lúc 05:21 PM
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

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(2, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Văn Pháp', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
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
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'SamSung', 1, NULL, NULL),
(2, 'Biti\'s', '', 1, NULL, NULL),
(3, 'Litte Angel', '', 1, NULL, NULL),
(4, 'Fahasa', '', 1, NULL, NULL),
(8, 'Unilever', 'a', 1, NULL, NULL),
(9, 'CobeClothing', 'ban cua toi =))', 1, NULL, NULL);

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
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
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
(37, 7, 1, '900,000.00', '0', 'BT', NULL, NULL),
(38, 1, 1, '260,000.00', '0', 'BT', NULL, NULL),
(39, 1, 1, '0.00', '0', 'BT', NULL, NULL),
(40, 1, 1, '315,000.00', '0', 'BT', NULL, NULL);

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
(14, 15, 6, 'Váy Đầm bé gái caro trắng xanh tay dài', '315000', 4, NULL, NULL),
(15, 16, 7, 'Phía Sau Nghi Can X (Tái Bản 2019)', '99500', 1, NULL, NULL),
(16, 17, 7, 'Phía Sau Nghi Can X (Tái Bản 2019)', '99500', 4, NULL, NULL),
(17, 18, 7, 'Phía Sau Nghi Can X (Tái Bản 2019)', '99500', 1, NULL, NULL),
(18, 19, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 1, NULL, NULL),
(19, 23, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 1, NULL, NULL),
(20, 33, 2, 'Máy PS4 màu đỏ', '5000000', 1, NULL, NULL),
(21, 35, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 1, NULL, NULL),
(22, 36, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 2, NULL, NULL),
(23, 37, 3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', '900000', 1, NULL, NULL),
(24, 38, 10, 'Bắt trẻ đồng xanh (TB 2020)', '60000', 1, NULL, NULL),
(25, 38, 15, 'Áo Nữ Tay Lỡ Dáng Croptop Cổ Ve Kiểu Dáng Trẻ Trung Thời Trang  TOP NU SG 010', '200000', 1, NULL, NULL),
(26, 40, 6, 'Váy Đầm bé gái caro trắng xanh tay dài', '315000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
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
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_quantily`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'Tay cầm chơi game PS4 màu trắng', 1, 1, 'Tay cầm chơi game PS4 màu trắng', 'Tay cầm chơi game PS4 màu trắng', '500000', 'mayps4mautrang.jpg', 0, 6, '2021-12-25 14:23:01', '2021-12-25 14:30:36'),
(2, 'Máy PS4 màu đỏ', 1, 1, 'Máy PS4 màu đỏ', 'Máy PS4 màu đỏ', '5000000', 'mayps4maudo.jpg', 0, 6, '2021-12-25 14:25:06', '2021-12-25 14:28:47'),
(3, 'Giày Thể Thao Cao Cấp Nam Bitis Hunter X Army Green DSMH05100REU (Rêu)', 3, 2, '', '', '900000', 'giaythethaobittnam.jpg', 0, -4, NULL, NULL),
(4, 'Giày Thể Thao Nữ Bitis Hunter Street DSWH04300\r\n', 3, 2, '', '', '695000', 'giaythethaobittnu.jpg', 0, 2, NULL, NULL),
(5, 'Váy yếm bé gái cầu vồng VTD009', 6, 3, '', '', '130000', 'vayyembegai.jpg', 0, 6, NULL, NULL),
(6, 'Váy Đầm bé gái caro trắng xanh tay dài', 6, 3, '- Mã sản phẩm: K063, K132\r\n- Màu sắc: xanh, đỏ\r\n- Họa tiết: Caro xanh, Caro đỏ\r\n- Kích thước: Từ 11kg - 45kg\r\n- Chất liệu: 2 lớp Cotton tự nhiên\r\n- Xuất xứ: Việt Nam\r\n- Màu sắc trung tính nhẹ nhàng đáng yêu như hình ảnh\r\n- Sử dụng chất liệu cotton cao cấp, mềm mại, an toàn cho làn da trẻ em', 'HƯỚNG DẪN GIẶT VÀ BẢO QUẢN QUẦN ÁO TRẺ EM:\n- Giặt tay riêng sản phẩm trong lần giặt đầu tiên\n- Không giặt chung đồ khác màu hoặc đồ bị phai\n- Không nên ngâm sản phẩm quá lâu với xà phòng giặt\n- Không sử dụng chất tẩy mạnh cho sản phẩm\n- Tránh phơi sản phẩm trực tiếp dưới ánh nắng\n- Là chất liệu cotton sợi tự nhiên nên sản phẩm có thể sẽ bị nhăn sau khi giặt và vắt khô bằng máy giặt\n- Khi là/ủi nên là mặt trái của sản phẩm', '315000', 'vaydambegai.jpg', 0, 5, NULL, NULL),
(7, 'Phía Sau Nghi Can X (Tái Bản 2019)', 8, 8, 'Công ty phát hành: Nhã Nam\r\nNgày xuất bản: 2019-05-01 00:00:00\r\nKích thước: 14 x 20.5 cm\r\nLoại bìa: Bìa mềm\r\nSố trang: 396', '“Việc nghĩ ra một bài toán vô cùng khó và việc giải bài toán đó, việc nào khó hơn?”\r\nKhi nhấn chuông cửa nhà nghi can chính của một vụ án mới, điều tra viên Kusanagi không biết rằng anh sắp phải đương đầu với một thiên tài ẩn dật. Kusanagi càng không thể ngờ rằng, chỉ một câu nói vô thưởng vô phạt của anh đã kéo người bạn thân, Manabu Yukawa, một phó giáo sư vật lý tài năng, vào vụ án. Và điều làm sững sờ nhất, đó là vụ án kia chẳng qua cũng chỉ như một bài toán cấp ba đơn giản, tuy nhiên ấn số X khi được phơi bày ra lại không đem đến hạnh phúc cho bất cứ ai…\r\nVới một giọng văn tỉnh táo và dung dị, Higashino Keigo đã đem đến cho độc giả hơn cả một cuốn tiểu thuyết trinh thám. Mô tả tội ác không phải điều hấp dẫn nhất ở đây, mà còn là những giằng xé nội tâm thầm kín, những nhân vật bình dị, và sự quan tâm sâu sa tới con người. Tác phẩm đã đem lại cho Higashino Keigo Giải Naoki lần thứ 134, một giải thưởng văn học lâu đời sánh ngang giải Akutagawa tại Nhật.', '99500', 'bookphiasaunghiacanx21.jpg', 0, 0, NULL, NULL),
(10, 'Bắt trẻ đồng xanh (TB 2020)', 8, 4, 'Tác giả: Jerome David Salinger\r\nDịch giả: Phùng Khánh\r\nNhà xuất bản: Hội nhà văn\r\nSố trang: 328\r\nKích thước: 13 x 20,5 cm\r\nNgày phát hành: 10-2020', 'Holden Caulfield, 17 tuổi, đã từng bị đuổi học khỏi ba trường, và trường dự bị đại học Pencey Prep là ngôi trường thứ tư. Và rôi cậu lại trượt 4 trên 5 môn học và nhận được thông báo đuổi học.\r\nCâu chuyện kể về chuỗi ngày tiếp theo sau đó của Holden, với ánh nhìn cay độc, giễu cợt vào một cuộc đời tẻ nhạt, xấu xa, trụy lạc và vô phương hướng của một thanh niên trẻ.Bắt trẻ đồng xanh đã từng trở thành chủ đề tranh luận hết sức sâu rộng tại Mỹ. Sau rất nhiều thị phi, tác phẩm đã được đưa vào giảng dạy tại chương trình trung học Mỹ.\r\nVà hơn thế, tạp chí Time đã xếp Bắt trẻ đồng xanh vào một trong 100 tác phẩm viết bằng tiếng Anh hay nhất từ năm 1923 đến nay.', '60000', 'bắt-trẻ-đồng-xanh81.jpg', 30, -1, NULL, NULL),
(11, 'Cây Cam Ngọt Của Tôi', 8, 4, 'Tác giả: José Mauro de Vasconcelos\r\nDịch giả: Nguyễn Bích Lan , Tô Yến Ly\r\nNhà xuất bản: Hội nhà văn\r\nSố trang: 244\r\nKích thước: 14 x 20.5 cm\r\nNgày phát hành: 12-2020', '“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.”\r\n- Booklist\r\n\r\n“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.”\r\n- The National\r\n\r\nHãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.\r\n\r\nCó hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.\r\nMở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.', '73500', 'Caycamngotcuatoi86.jpg', 15, 0, NULL, NULL),
(12, 'Dầu gội xả bưởi Thorakao 400ml, giảm rụng tóc hiệu quả', 7, 8, 'Dầu gội hoa bưởi 400ml Thorakao được đặc chế riêng biệt, giúp đáp ứng nhu cầu chăm sóc mái tóc hiệu quả từ tinh dầu vỏ bưởi tươi:\r\nLàm sạch tóc và da đầu\r\nNgăn ngừa rụng tóc hiệu quả\r\nĐem lại cho bạn mái tóc dày và óng mượt\r\nĐộ PH cân bằng, thích hợp cho mọi loại tóc.\r\nNgăn ngừa gàu hữu hiệu, do đó bạn sẽ không cảm thấy khó chịu ngứa vì gàu.\r\nTích hợp chung dầu xả trong công thức, tiện lợi hơn khi sử dụng', 'Thành Phần:\r\nDầu gội bưởi Thorakao là một trong những dòng dầu gội thorakao được chiết xuất từ Tinh dầu vỏ bưởi tươi là nguyên liệu thiên nhiên, giúp ngừa rụng tóc, kết hợp với các dưỡng chất đem lại cho bạn mái tóc dày và óng mượt., là nguyên liệu thiên nhiên rất tốt để làm sạch da đầu, ngăn ngừa rụng tóc hiệu quả kết hợp với các dưỡng chất dem lại cho bạn mái tóc dày và óng mượt Độ PH cân bằng, thích hợp cho mọi loại tóc. Ngăn ngừa gàu hữu hiệu bạn sẽ không cảm thấy khó chịu ngứa vì gàu.', '59000', 'daugoibuoi55.jpg', 45, 0, NULL, NULL),
(13, 'Kem Đánh Răng Dược Liệu Ngọc Châu Trắng Sáng 170g', 7, 8, 'Giúp răng trắng sáng an toàn, tự nhiên (không bào mòn men răng)\r\nLàm sạch, giảm mảng bám, cao răng, loại bỏ vết ố trên bề mặt răng, góp phần ngừa sâu răng.\r\nGiúp thanh nhiệt, làm dịu, giảm sưng tấy, góp phần bảo vệ lợi, chắc chân răng, góp phần ngăn ngừa nhiệt miệng, viêm lợi, tụt lợi, viêm loét miệng lưỡi, chảy máu chân răng, răng ê buốt.\r\nKhử mùi hôi miệng, mùi thức ăn (hành tỏi, hải sản, thuốc lá,…) giữ hơi thở thơm mát, giúp thoải mái tự tin khi giao tiếp.', 'Kem đánh răng dược liệu Ngọc Châu Trắng Sáng tăng cường bột xơ từ vỏ quả cau, giúp răng trắng sáng an toàn, chắc khoẻ tự nhiên. Đồng thời vẫn giữ được các tác dụng ưu việt của Kem đánh răng dược liệu Ngọc Châu nói chung như góp phần cải thiện tuần hoàn mao mạch, bảo vệ lợi, chắc chân răng, góp phần ngăn ngừa nhiệt miệng, viêm lợi, chảy máu chân răng.\r\n\r\nSản phẩm được nghiên cứu và xây dựng dựa trên nền tảng phát huy thế mạnh của nền y học cổ truyền, kết hợp công nghệ bào chế tiên tiến, cùng sự tham vấn của bác sĩ Nha khoa, các Dược sĩ, lương y, chuyên gia bào chế.', '56000', 'kemdanhrangngocchau32.jpg', 98, 0, NULL, NULL),
(14, 'Áo giữ nhiệt nữ lót nỉ thời trang, tiện dụng', 2, 9, 'Thương hiệu No Brand\r\nTay Áo Tay dài Kiểu Cổ Áo High-Neck\r\nChất Liệu Cotton Dịp Thường ngày \r\nKiểu Hoa Văn Trơn', 'Chất liệu: mềm hơn, mịn hơn, thoáng mát hơn Kiểu dáng: trẻ trung, năng động \r\nMàu sắc: đa dạng để bạn lựa chọn \r\nChất liệu vải: không xù lông, giặt không phai màu \r\nSản xuất: Việt Nam \r\nNguồn gốc xuất xứ: rõ ràng, đã được kiểm định chất lượng về độ an toàn của chất liệu với người tiêu dùng.', '125000', 'a9d9e5132b9181cc4be93458c898b1fb62.jpg', 45, 0, NULL, NULL),
(15, 'Áo Nữ Tay Lỡ Dáng Croptop Cổ Ve Kiểu Dáng Trẻ Trung Thời Trang  TOP NU SG 010', 2, 9, 'THÔNG TIN SẢN PHẨM:\r\nÁo Nữ Tay Lỡ Dáng Croptop Cổ Ve Kiểu Dáng Trẻ Trung Thời Trang JayStore TOP NU SG 010\r\nChất liệu thun mềm mại, thoáng mát, tạo cảm giác thoải mái khi mặc\r\nKiểu dáng trẻ trung, gọn nhẹ, năng động\r\nPhù hợp nhiều hoàn cảnh: mặc nhà, đi học, đi chơi, du lịch...\r\nXuất xứ: Việt Nam\r\nKích cỡ:\r\nSize S: cho bạn có cân nặng từ 40-45kg tùy chiều cao\r\nSize M: cho bạn có cân nặng từ 46-50kg tùy chiều cao\r\nSize L: cho bạn có cân nặng dưới 55kg tùy chiều cao\r\nLưu ý: Nên giặt bằng tay, nếu giặt bằng máy bạn nên giặt với nhiệt độ nước không quá 40 độ C để đảm bảo sản phẩm giữ được màu sắc ban đầu', 'Áo Nữ Tay Lỡ Dáng Croptop Cổ Ve Kiểu Dáng Trẻ Trung Thời Trang JayStore TOP NU SG 010', '200000', '24096c5381c273033afa27a56d9d8c3272.jpg', 34, -1, NULL, NULL),
(16, 'Set 5 Kẹp Tóc Hoạt Hình Dễ Thương Phong Cách Hàn Quốc Cho Bé và Mẹ', 6, 3, 'Ngoài một bộ váy xinh diện cùng đôi giày mềm mại êm chân thì các mẹ sắm thêm cả phụ kiện dây buộc tóc cho bé nữa nhé.\r\n🥕 Hè đến rồi sẽ rất cần đến những chiếc dây buộc giúp bé cột tóc gọn gàng xinh xắn thoải mái chạy nhảy ko lo mồ hôi ướt tóc luôn.\r\n🥕 Set 5 kẹp tóc Chi Tiết Hoạt Hình Dễ Thương sẽ là một món qùa nhỏ xinh đặc biệt mà bố mẹ có thể dành cho bé yêu\r\n🥕 Làm bằng chất liệu nhựa cao cấp, an toàn giúp mẹ yên tâm lựa chọn cho bé\r\n🥕 Mỗi chiếc kẹp lại mộ họa tiết khác nhau vô cùng dễ thương, như hình ảnh bạn thỏ 2 tai dài hay là bông hoa trứng....', 'Xinh lắm ó mua đi nha', '34000', '5f6fa15cc7400c59627ddd9067c2cfb718.jpg', 87, 0, NULL, NULL),
(17, 'Bông Tai Bạc Ý B2363 Khuyên Tròn Đính Ngôi Sao May Mắn', 5, 9, 'Mã sản phẩm: Bông Tai Bạc Nữ B2363\r\nChất liệu: Bạc S925 ITALY tinh khiết\r\nMàu sắc: Trắng\r\nBH 1 năm sản phẩm bị xỉn màu\r\nChất lượng tốt – Độ bền cao\r\nHàng thật giống hình 100%.\r\nThiết kế: Thời trang - Trẻ trung - Thời thượng.\r\nCông nghệ chế tác từ Châu Âu cho chất lượng tinh xảo', 'Mã sản phẩm: Bông Tai Bạc Nữ B2363\r\nCam kết 1 đền 10 nếu phát hiện bạc giả\r\nChất lượng tốt – Độ bền cao\r\nCam kết hàng thật giống hình 100%.\r\nCông nghệ chế tác từ Châu Âu cho chất lượng tinh xảo', '184000', 'fd8e321e47a5f3fa9ce1360303801a7138.jpg', 15, 0, NULL, NULL);

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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `sodienthoai`, `diachi`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`, `ngaysinh`) VALUES
(1, 'Linh', '0985564991', 'Bình Thuận', 'tuonglinh0218@gmail.com', NULL, '$2y$10$ZcRlacJB5XDM4arVW4oIz.E93KtqL.wCYhdjZ5AjygbT/u3D57s92', NULL, NULL, NULL, 'logo10.png', '2001-07-18'),
(2, 'hehe', '', '', 'alibaba@gmail.com', NULL, '$2y$10$Tp89cyukCResjjhi9tEIbODF6EThfGrB/658kxLelDlPnyaml1eIm', NULL, NULL, NULL, NULL, NULL),
(3, 'hehe', '', '', 'haha123@gmail.com', NULL, '$2y$10$E0FjH7XU0D0EYzo5z4IDDOuG89f3RaEuy8JpbOsOVxufMkGqbCy82', NULL, NULL, NULL, 'avatar_default.png', NULL),
(4, 'uituser', '', '', 'kakaka@gmail.com', NULL, '$2y$10$vSe.ein1xCwyCPbOKsU4.uUXy1yh0XhC270ithz5j2z5fRUnR57/G', NULL, NULL, NULL, 'avatar_default.png', NULL),
(6, 'TNHH MTV UIT', '', '', '234@gmail.com', NULL, '$2y$10$V./KOXnjBb1SSjkGbXIlwOUdtSDM37HDwNypoUxaO50VnsyOiVl3i', NULL, NULL, NULL, 'avatar_default.png', NULL),
(7, 'Server testds', '03423523', '36 ngã tư ch', 'admin@gmail.com', NULL, '$2y$10$zZMBJPfZ8k/Rt5PPCTile.PGNWxFbTv79FVWjSx8A0wTdt8OTj3gu', NULL, NULL, NULL, 'avatar_default.png', '2024-06-18'),
(8, 'wegeg weg', '', '', 'admin1@gmail.com', NULL, '$2y$10$bqMPAsDbYjhDXklb40U62eQKS/TCZAcgWm/XwGa2G0A0WmWX1.Ofm', NULL, NULL, NULL, 'avatar_default.png', NULL);

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
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
