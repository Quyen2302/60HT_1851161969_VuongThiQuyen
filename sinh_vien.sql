-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 03, 2023 lúc 05:13 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sinh_vien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cong_viec`
--

CREATE TABLE `cong_viec` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sinh_vien_id` int(11) DEFAULT NULL,
  `nguoi_giao` int(11) DEFAULT NULL,
  `han_xu_ly` date DEFAULT NULL,
  `noi_dung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danh_gia_cb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xep_loai` tinyint(4) DEFAULT NULL COMMENT '1 hoàn thành tốt 2 hoàn thành 3 hoàn thành xuất sắc',
  `trang_thai` tinyint(4) DEFAULT NULL COMMENT '1 mới nhận 2 đang xử lý 3 hoàn thành ',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cong_viec`
--

INSERT INTO `cong_viec` (`id`, `sinh_vien_id`, `nguoi_giao`, `han_xu_ly`, `noi_dung`, `file`, `danh_gia_cb`, `xep_loai`, `trang_thai`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 80, 61, '2022-12-31', 'công việc lớn', NULL, 'Tốt', NULL, 4, NULL, '2022-12-29 08:18:15', '2022-12-29 13:46:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cong_viec_chi_tiet`
--

CREATE TABLE `cong_viec_chi_tiet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cong_viec_id` int(11) DEFAULT NULL,
  `noi_dung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `han_xu_ly` date DEFAULT NULL,
  `ket_qua` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thoi_gian_ht` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cong_viec_chi_tiet`
--

INSERT INTO `cong_viec_chi_tiet` (`id`, `cong_viec_id`, `noi_dung`, `han_xu_ly`, `ket_qua`, `file`, `deleted_at`, `created_at`, `updated_at`, `thoi_gian_ht`) VALUES
(6, 5, 'công việc nhỏ 01', '2022-12-31', 'hoàn thành', NULL, NULL, '2022-12-29 08:18:15', '2022-12-29 08:27:56', '2022-12-29'),
(7, 5, 'công việc nhỏ 02', '2022-12-30', 'hoàn thành', NULL, NULL, '2022-12-29 08:18:15', '2022-12-29 08:28:07', '2022-12-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky`
--

CREATE TABLE `dang_ky` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_sinh_vien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_sinh_vien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `lop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khoa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_dien_thoai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `y_kien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trang_thai` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 vừa đăng ký 2 đã được cán bộ nhà trường duyệt 3 doanh nghiệp đã duyệt 0 đã hủy',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doanh_nghiep` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giang_vien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dang_ky`
--

INSERT INTO `dang_ky` (`id`, `ten_sinh_vien`, `ma_sinh_vien`, `ngay_sinh`, `lop`, `khoa`, `dia_chi`, `so_dien_thoai`, `y_kien`, `trang_thai`, `deleted_at`, `created_at`, `updated_at`, `doanh_nghiep`, `email`, `giang_vien`) VALUES
(1, 'Nguyễn Văn Ba', '16A11', '2022-10-20', '16A1', 'CNTT', 'Hà Nội', '19008198', 'không', 3, NULL, '2022-10-05 09:22:53', '2022-10-18 09:29:42', 1, NULL, NULL),
(2, 'vuong thi quyen', '1851161969', '2022-02-23', '60HT', 'CNTT', 'Hà Nội', '0326249922', 'không', 3, NULL, '2022-10-05 09:34:42', '2022-10-18 09:29:42', 1, NULL, NULL),
(3, 'Vũ Hải Thanh', '16a10010072', '2022-10-13', '16a2', 'CNTT', 'HN', '0324568541', 'k', 3, NULL, '2022-10-18 09:33:43', '2022-10-18 09:34:39', 1, NULL, NULL),
(4, 'Đỗ Thị Thảo', '185116123', '2022-10-13', '60HT', 'CNTT', 'HN', '0312456789', 'không', 0, NULL, '2022-10-18 09:38:30', '2022-12-01 14:18:30', NULL, NULL, NULL),
(5, 'Lương Hồng Thắm', '123456789', '2022-08-01', '60HT', 'CNTT', 'HN', '1234', NULL, 3, NULL, '2022-10-18 09:45:32', '2022-10-18 09:46:21', 1, NULL, NULL),
(6, 'Nguyễn Văn Hai', '16A10010071', '2022-10-11', '16A1', 'CNTT', 'Hà Nội', '19008198', 'không', 3, NULL, '2022-10-31 03:57:53', '2022-10-31 03:58:37', 1, 'vuongquyen230268@gmail.com', NULL),
(7, 'Đỗ Thị Hà', '185116123456', '2022-06-05', '63TH2', 'CNTT', 'Hà Nội', '0367678888', 'không', 3, NULL, '2022-11-06 08:41:43', '2022-11-07 15:15:34', 1, 'vuongquyen2302@gmail.com', NULL),
(8, 'Đào Thị Hồng', '18511619999', '2022-10-02', '60HT', 'CNTT', 'Hà Nội', '0352575270', 'không', 2, NULL, '2022-11-06 08:53:01', '2022-11-06 08:53:32', 2, 'vuonghuonggiang1905@gmail.com', NULL),
(9, 'Hà Thu Thủy', '18345678', '2022-10-10', '60HT', 'CNTT', 'Hà Nội', '0367265412', 'không', 3, NULL, '2022-11-06 08:58:35', '2022-11-06 08:59:47', 1, 'vuonghuonggiang1905@gmail.com', NULL),
(10, 'Nguyễn Văn Tư', '18511654679', '2022-11-06', '60HT', 'CNTT', 'Hà Nội', '03423772309', 'không', 3, NULL, '2022-11-06 12:34:58', '2022-11-06 12:35:56', 1, 'meoconchiptft@gmail.com', NULL),
(11, 'Đỗ Mỹ Linh', '1851161888', '2022-02-23', '60HT', 'CNTT', 'Hà Nội', '0322556688', 'không', 3, NULL, '2022-12-01 14:37:34', '2022-12-10 06:12:06', 1, 'domylinh123@gmail.com', NULL),
(12, 'Nguyễn Văn Ba Anh', '1851161427', '2000-03-01', '60HT', 'CNTT', 'Hà Nội', '0352575270', NULL, 0, NULL, '2022-12-09 06:02:41', '2022-12-29 05:34:15', NULL, 'QuyenVT2@fsoft.com.vn', NULL),
(13, 'Nguyễn Ngọc Ánh', '123456688', '2000-03-01', '60HT', '1', 'Hà Nội', '0312345688', 'không', 2, NULL, '2022-12-29 01:55:31', '2022-12-29 02:09:44', 1, 'Anh@gmail.com', NULL),
(14, 'Nguyễn Hồng Vân', '1851161898', '2000-09-15', '60TH', '1', 'Hà Nội', '0356890072', 'không', 2, NULL, '2022-12-29 07:53:11', '2022-12-29 07:54:48', 1, 'Van@gmail.com', NULL),
(15, 'Bạc Thị Lan Anh', '1851161988', '2000-05-19', '60HT', '1', 'Hà Nội', '0369653009', 'không', 2, NULL, '2022-12-29 08:01:41', '2022-12-29 08:03:09', 1, 'LanAnh@gmail.com', NULL),
(16, 'Vương Ánh Quyên', '185116222333', '2000-03-03', '60HT', '1', 'Hà Nội', '0366890068', 'không', 2, NULL, '2022-12-29 09:05:21', '2022-12-29 09:06:23', 1, 'Quyen@gmail.com', NULL),
(17, 'Vương Hương Giang', '1851161203', '2000-06-19', '60HT', '1', 'Hà Nội', '0352575270', 'không', 2, NULL, '2022-12-29 09:52:12', '2022-12-29 09:53:25', 1, 'Giang@gmail.com', NULL),
(18, 'Vương Thị Kim Ngân', '1851168888', '2000-10-03', '60HT', '2', 'Hà Nội', '0367799655', 'không', 2, NULL, '2022-12-29 09:55:54', '2022-12-29 10:25:03', 2, 'Ngan@gmail.com', NULL),
(19, 'Nguyễn Thị Kiều', '1852223333', '2000-03-01', '60KT1', '2', 'Hà Nội', '0223339867', 'không', 2, NULL, '2022-12-29 11:34:35', '2022-12-29 11:35:15', 2, 'Kieu@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doanh_nghiep`
--

CREATE TABLE `doanh_nghiep` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_doanh_nghiep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_dien_thoai` int(11) DEFAULT NULL,
  `trang_thai` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `khoa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doanh_nghiep`
--

INSERT INTO `doanh_nghiep` (`id`, `ten_doanh_nghiep`, `dia_chi`, `so_dien_thoai`, `trang_thai`, `deleted_at`, `created_at`, `updated_at`, `khoa`) VALUES
(1, 'Công ty Fpt', 'HN', 345678899, 1, NULL, '2022-10-18 09:27:56', '2022-12-29 08:34:59', '1'),
(2, 'Công ty VNPT', 'Hà Nội', 19008198, 1, NULL, '2022-10-31 04:00:45', '2022-12-29 13:41:58', '2'),
(3, 'Công ty Sun', 'Hà Nội', NULL, 1, '2022-11-06 12:38:23', '2022-11-06 12:37:44', '2022-11-06 12:38:23', NULL),
(4, 'Công ty Alinco', 'Hà Nội', 366886688, 1, NULL, '2022-12-29 13:36:26', '2022-12-29 13:36:26', '4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_khoa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `giang_vien_hd` int(11) DEFAULT NULL,
  `giao_vu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`id`, `ten_khoa`, `created_at`, `updated_at`, `giang_vien_hd`, `giao_vu`) VALUES
(1, 'Khoa CNTT 1', '2022-11-23 14:23:26', '2022-12-29 07:56:21', 76, 71),
(2, 'Khoa kinh tế', '2022-11-23 14:23:41', '2022-12-29 14:21:07', 84, 91),
(4, 'Khoa Công Trình', '2022-12-23 13:19:47', '2022-12-31 12:51:45', 89, 93),
(5, 'Khoa Kỹ thuật tài nguyên nước', '2022-12-23 13:22:19', '2022-12-23 13:22:19', NULL, 71);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2020_10_21_084534_create_permission_tables', 1),
(47, '2021_07_22_160207_create_nguon_tin_table', 2),
(48, '2021_07_22_160516_create_chuyen_muc_tin_table', 2),
(57, '2021_07_22_160617_create_the_loai_table', 3),
(65, '2021_07_24_130053_create_bai_viet_chi_tiet', 4),
(72, '2021_07_24_152120_create_bai_viet', 5),
(73, '2021_08_05_231302_create_table_ky_xuat_ban', 5),
(74, '2021_08_05_231556_create_table_ky_xuat_ban_chi_tiet', 5),
(75, '2021_08_09_145321_add_colom_da_thiet_ke_table_bai_viet', 5),
(76, '2021_08_09_170135_add_colum_xuong_in_chi_tiet', 5),
(77, '2021_08_09_221606_add_colum_xuong_in_tl', 5),
(78, '2021_10_08_162012_add_colum_bien_tap_id', 6),
(79, '2021_10_13_111500_add_colume_bt_chuyen', 7),
(80, '2021_11_24_195025_create_tuy_chon', 8),
(81, '2021_11_24_195120_create_gia_tien_bv', 8),
(82, '2021_11_24_195441_create_don_gia', 8),
(83, '2021_11_24_195951_add_colume_he_so_to_the_loai_tin', 8),
(84, '2021_11_30_134434_create_y_kien_xuat_ban', 8),
(85, '2021_11_30_140832_add_colume_parent_id', 8),
(86, '2021_12_01_202850_add_colume_lan_y_kien', 8),
(87, '2021_12_02_224719_add_colume_parenid_phien_ban', 9),
(88, '2021_12_21_171528_add_colume_the_loai_bao', 10),
(89, '2021_12_21_171613_create_the_loai_bao', 10),
(90, '2022_02_16_161226_create_to_chuc', 11),
(92, '2022_02_16_163753_add_colume_don_vi_id', 12),
(94, '2022_03_10_142610_create_the_loai_nhuan_but', 13),
(95, '2022_03_10_155204_add_colum_the_loai_nhuan_but', 14),
(97, '2022_03_21_143833_add_colume_mac_dinh', 15),
(98, '2022_04_07_154702_create_thong_ke_nhuan_but', 16),
(100, '2022_04_21_112411_add_colume_ke_toan', 17),
(107, '2022_04_21_160441_create_don_vi_quang_cao', 18),
(108, '2022_04_21_160629_create_goi_quang_cao', 18),
(110, '2022_04_21_160940_create_file_anh_quang_cao', 19),
(111, '2022_04_22_101843_create_anh_quang_cao_trong_ky', 20),
(112, '2022_10_05_085511_created_doanh_nghie', 21),
(113, '2022_10_05_085904_add_colume_trang_thai_sv', 21),
(114, '2022_10_05_090603_created_dang_ky', 21),
(115, '2022_10_07_150402_add_colume_doanh_nghiep', 22),
(116, '2022_10_07_151203_add_colume_dn', 22),
(117, '2022_10_18_110219_create_cong_viec', 22),
(118, '2022_10_18_110843_create_cong_viec_chi_tiet', 22),
(119, '2022_10_31_090453_add_colume_email', 23),
(120, '2022_11_23_154458_create_them_khoa', 24),
(121, '2022_11_23_154833_create_them_khoa_giangvien', 24),
(122, '2022_12_09_163841_add_colume_thoi_gian', 25),
(123, '2022_12_01_220501_add_colume_giang_vien_to_dang_ky', 26),
(124, '2022_12_16_151945_add_colume_giao_vienhd', 26),
(125, '2022_12_16_165431_add_colume_guser_masv', 26),
(126, '2022_12_16_171618_add_colume_khoa', 26),
(127, '2022_12_21_111935_add_colume_danh__g_i_a', 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 57),
(1, 'App\\User', 58),
(1, 'App\\User', 59),
(1, 'App\\User', 60),
(1, 'App\\User', 71),
(1, 'App\\User', 77),
(1, 'App\\User', 78),
(1, 'App\\User', 79),
(1, 'App\\User', 88),
(1, 'App\\User', 90),
(1, 'App\\User', 91),
(1, 'App\\User', 93),
(2, 'App\\User', 1),
(2, 'App\\User', 57),
(2, 'App\\User', 58),
(2, 'App\\User', 59),
(2, 'App\\User', 60),
(2, 'App\\User', 71),
(2, 'App\\User', 77),
(2, 'App\\User', 78),
(2, 'App\\User', 79),
(2, 'App\\User', 88),
(2, 'App\\User', 90),
(2, 'App\\User', 91),
(2, 'App\\User', 93),
(3, 'App\\User', 1),
(3, 'App\\User', 57),
(3, 'App\\User', 58),
(3, 'App\\User', 59),
(3, 'App\\User', 60),
(3, 'App\\User', 71),
(3, 'App\\User', 77),
(3, 'App\\User', 78),
(3, 'App\\User', 79),
(3, 'App\\User', 88),
(3, 'App\\User', 90),
(3, 'App\\User', 91),
(3, 'App\\User', 93),
(4, 'App\\User', 1),
(4, 'App\\User', 57),
(4, 'App\\User', 58),
(4, 'App\\User', 59),
(5, 'App\\User', 1),
(5, 'App\\User', 57),
(5, 'App\\User', 58),
(5, 'App\\User', 59),
(6, 'App\\User', 1),
(6, 'App\\User', 25),
(6, 'App\\User', 28),
(6, 'App\\User', 30),
(6, 'App\\User', 31),
(6, 'App\\User', 57),
(6, 'App\\User', 58),
(6, 'App\\User', 59);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 57),
(1, 'App\\User', 58),
(1, 'App\\User', 59),
(2, 'App\\User', 3),
(2, 'App\\User', 4),
(2, 'App\\User', 23),
(2, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 42),
(2, 'App\\User', 43),
(2, 'App\\User', 44),
(2, 'App\\User', 45),
(2, 'App\\User', 47),
(2, 'App\\User', 49),
(2, 'App\\User', 50),
(2, 'App\\User', 51),
(2, 'App\\User', 52),
(2, 'App\\User', 53),
(2, 'App\\User', 54),
(2, 'App\\User', 55),
(3, 'App\\user', 5),
(3, 'App\\User', 6),
(3, 'App\\User', 33),
(3, 'App\\User', 34),
(3, 'App\\User', 35),
(3, 'App\\User', 48),
(4, 'App\\User', 7),
(4, 'App\\User', 8),
(4, 'App\\User', 13),
(4, 'App\\User', 19),
(4, 'App\\User', 25),
(4, 'App\\User', 28),
(4, 'App\\User', 30),
(4, 'App\\User', 31),
(5, 'App\\User', 9),
(5, 'App\\User', 11),
(5, 'App\\User', 20),
(5, 'App\\User', 21),
(5, 'App\\User', 22),
(6, 'App\\User', 12),
(6, 'App\\User', 46),
(7, 'App\\User', 14),
(7, 'App\\User', 18),
(8, 'App\\User', 17),
(9, 'App\\User', 15),
(9, 'App\\User', 26),
(9, 'App\\User', 27),
(9, 'App\\User', 29),
(10, 'App\\User', 10),
(10, 'App\\User', 16),
(10, 'App\\User', 24),
(10, 'App\\User', 32),
(11, 'App\\User', 56),
(12, 'App\\User', 61),
(13, 'App\\User', 62),
(13, 'App\\User', 63),
(13, 'App\\User', 64),
(13, 'App\\User', 65),
(13, 'App\\User', 66),
(13, 'App\\User', 67),
(13, 'App\\User', 68),
(13, 'App\\User', 69),
(13, 'App\\User', 72),
(13, 'App\\User', 74),
(13, 'App\\User', 75),
(13, 'App\\User', 80),
(13, 'App\\User', 81),
(13, 'App\\User', 82),
(13, 'App\\User', 86),
(13, 'App\\User', 87),
(14, 'App\\User', 60),
(15, 'App\\User', 70),
(15, 'App\\User', 76),
(15, 'App\\User', 83),
(15, 'App\\User', 84),
(15, 'App\\User', 89),
(16, 'App\\User', 71),
(16, 'App\\User', 77),
(16, 'App\\User', 78),
(16, 'App\\User', 79),
(16, 'App\\User', 88),
(16, 'App\\User', 90),
(16, 'App\\User', 91),
(16, 'App\\User', 93),
(17, 'App\\User', 73),
(17, 'App\\User', 85),
(17, 'App\\User', 92);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguon_tin`
--

CREATE TABLE `nguon_tin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_nguon_tin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_nguon_tin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mo_ta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguon_tin`
--

INSERT INTO `nguon_tin` (`id`, `ten_nguon_tin`, `ma_nguon_tin`, `mo_ta`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tin sở hữu', '00', 'a', '1', 1, '2021-09-13 21:16:39', '2022-04-12 05:11:34'),
(2, 'Báo Đảng', '01', 'a', 'a', 1, '2021-12-03 19:04:30', '2021-12-03 19:04:30'),
(3, 'Tạp chí kiểm tra', '02', 'a', 'a', 1, '2021-12-03 19:04:51', '2021-12-03 19:04:51'),
(4, 'Tạp chí đối ngoại', '03', 'a', 'a', 1, '2021-12-03 19:05:06', '2021-12-03 19:05:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `parent_id`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'thêm người dùng', 4, 'web', '2021-07-21 23:42:49', '2022-11-23 14:18:35'),
(2, 'sửa người dùng', 4, 'web', '2021-07-21 23:42:49', '2022-11-23 14:18:35'),
(3, 'xoá người dùng', 4, 'web', '2021-07-21 23:42:49', '2022-11-23 14:18:35'),
(4, 'Người dùng', NULL, 'web', '2021-07-21 23:43:13', '2021-07-21 23:43:13'),
(5, 'Nhuận bút', NULL, 'web', '2022-04-07 23:43:05', '2022-04-07 23:43:05'),
(6, 'Chấm nhuận bút', 5, 'web', '2022-04-07 23:43:05', '2022-04-07 23:43:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'quản trị hệ thống', 'web', '2021-07-21 23:42:49', '2021-07-21 23:42:49'),
(12, 'Doanh nghiệp', 'web', '2022-09-23 09:12:52', '2022-09-23 09:12:52'),
(13, 'Sinh viên', 'web', '2022-09-23 09:13:11', '2022-09-23 09:13:11'),
(14, 'Nhà trường', 'web', '2022-09-23 09:13:38', '2022-09-23 09:13:38'),
(15, 'Giảng viên hướng dẫn', 'web', '2021-07-21 23:42:49', '2021-07-21 23:42:49'),
(16, 'Giáo vụ khoa', 'web', '2022-12-10 02:31:06', '2022-12-10 02:31:06'),
(17, 'Trưởng khoa', 'web', '2022-09-23 09:13:11', '2022-09-23 09:13:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 14),
(1, 16),
(2, 1),
(2, 14),
(2, 16),
(3, 1),
(3, 14),
(3, 16),
(4, 1),
(5, 1),
(6, 1),
(6, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=> hoat dong',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `don_vi_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cap_xa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xep_loai` tinyint(4) DEFAULT NULL,
  `doanh_nghiep` int(11) DEFAULT NULL,
  `dang_ky` int(11) DEFAULT NULL,
  `khoa_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giang_vien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_sv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `y_kien_doanh_nghiep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danh_gia_doanh_nghiep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diem_doanh_nghiep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `y_kien_giang_vien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danh_gia_giang_vien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diem_giang_vien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `fullname`, `birthday`, `role_id`, `avatar`, `status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `don_vi_id`, `cap_xa`, `xep_loai`, `doanh_nghiep`, `dang_ky`, `khoa_id`, `giang_vien`, `ma_sv`, `y_kien_doanh_nghiep`, `danh_gia_doanh_nghiep`, `diem_doanh_nghiep`, `y_kien_giang_vien`, `danh_gia_giang_vien`, `diem_giang_vien`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$Bv7gFZG0bwrwOP9InULICOZMZ7rtZy5L/UdSX/U5Kl3ZILJZs9wzi', 'Admin', '2021-07-20', '1', 'uploads/nguoi-dung/2021_07_21_1626878410_370_fw__SN-TC_005.jpg', 1, NULL, 'RCRRGsLwE6UUOTvFKDwewaYVGgQxtmKydSZYwYJjytq90DJLyqCTLdKDv4fV', NULL, '2022-10-05 09:23:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'nha_truong', 'nhatruong@gmail.com', '$2y$10$PTB1mdRlurg5wORjcYO8Oee3mGA7DYcyWGjVMY1FFEUJgWuQ0voRq', 'Nhà trường', '2022-10-26', '14', NULL, 1, NULL, '5YLESnuXTulSo1Iwr7Jfn0V71TOgfPmaO8moiXveG77Ec2bVV3HpvlDUbEPM', '2022-10-05 09:23:57', '2022-10-05 09:23:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'doanh_nghiep', 'doanhnghiep@gmail.com', '$2y$10$RlDskqZBZCzdB1NDpnt.UuNQ/tLypmBZ/w7ic7tnb/ofCQjRhh4TO', 'Doanh nghiệp', '2022-10-25', '12', NULL, 1, NULL, NULL, '2022-10-05 09:24:37', '2022-10-31 04:02:36', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '1851161988', 'LanAnh@gmail.com', '$2y$10$Nm5QPs72VXjvy4u/KnREXeVVuQOTPpcNDCtk8IkC3lyVi6sK7jiHO', 'Bạc Thị Lan Anh', '2000-05-19', '13', NULL, 1, NULL, NULL, '2022-12-29 08:03:09', '2022-12-29 08:03:09', NULL, NULL, NULL, 1, 15, '1', '76', '1851161988', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'GiaovukhoaCT', 'CT@gmail.com', '$2y$10$MBH5D/StqHVHpSxEp7lqmeJstab9gLHCsiw5paYX9ZTTM6Rk8MuhK', 'Giáo vụ khoa CT', '1988-02-02', '16', NULL, 1, '2022-12-31 12:35:11', NULL, '2022-12-29 05:31:41', '2022-12-31 12:35:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GiaovukhoaCT', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'GiaovukhoaCNTT', 'CNTT@gmail.com', '$2y$10$VBkOpXgG48cCEWeXVTSuteC/VNiQW5gn/irOnQCylle9y0BeHGvo.', 'Giáo vụ khoa CNTT', '1988-01-01', '16', NULL, 1, '2022-12-29 09:54:31', NULL, '2022-12-29 05:30:22', '2022-12-29 09:54:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GiaovukhoaCNTT', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'GiaovukhoaKT', 'KT@gmail.com', '$2y$10$5SHAsKeWP11GkBdLTyNxPu7tHSmWK4NenTNAGFEMOUzGfN4AuZsEC', 'Giáo vụ khoa KT', '1989-02-23', '16', NULL, 1, '2022-12-31 12:35:01', NULL, '2022-12-29 02:43:46', '2022-12-31 12:35:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GiaovukhoaKT', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'KieuTuanDung', 'Dung@gmail.com', '$2y$10$7Ei.zXpP3xWeRBtJHdihWuEypPsO5T4ooAHZkO4pTiWBCiYTNbdgG', 'Kiều Tuấn Dũng', '1988-10-03', '15', NULL, 1, NULL, NULL, '2022-12-29 02:28:09', '2022-12-29 02:28:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KieuTuanDung', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'NguyenThiA', 'A@gmail.com', '$2y$10$OQAvO18eUDDY/8FUe8evPOD8bTH2b/nSdW770x.bLK4yT1wE0mYV2', 'Nguyễn Thị A', '1992-10-03', '13', NULL, 1, '2022-12-29 02:44:25', NULL, '2022-12-29 02:18:18', '2022-12-29 02:44:25', NULL, NULL, NULL, 1, NULL, '1', '76', 'NguyenThiA', NULL, NULL, NULL, NULL, NULL, NULL),
(74, '123456688', 'Anh@gmail.com', '$2y$10$N0N7X6mnig32ZSR.VQGhku25vofYHeE0qKvkTS1WJHGwKho4XOy0.', 'Nguyễn Ngọc Ánh', '2000-03-01', '13', NULL, 1, NULL, NULL, '2022-12-29 02:09:44', '2022-12-29 02:28:33', NULL, NULL, NULL, 1, 13, '1', '76', '123456688', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'giang_vien', 'HT@gmail.com', '$2y$10$tSgflhdCCtVVl/tjT6mmAe9Wb7Gh6zRr3pPzyr5uxg8jY6f8AuT/u', 'Giảng viên CNTT', '2022-11-24', '15', NULL, 1, NULL, NULL, '2022-11-23 14:28:54', '2022-12-29 02:28:33', NULL, NULL, NULL, NULL, NULL, '1', '76', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'GVKCNTT01', 'CNTT01@gmail.com', '$2y$10$aBJuBCtw44HgyDp1ND2Gz.YwLp6k.w2ZRK7Y957iE7GVwb.eicso2', 'Giáo vụ khoa CNTT01', '2022-12-21', '16', NULL, 1, NULL, NULL, '2022-12-10 02:36:15', '2022-12-31 12:38:48', NULL, NULL, NULL, NULL, NULL, '1', '76', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'TKCNTT', 'QuyenVT2@fsoft.com.vn', '$2y$10$iYiPDMcvjVU/W0AqzKw4yetDJp/harEJarM9Q5MNTFFZVqLPZ6TX6', 'Trần Mạnh Tuấn', '1980-10-06', '17', NULL, 1, NULL, NULL, '2022-12-25 12:31:09', '2022-12-29 02:28:33', NULL, NULL, NULL, NULL, NULL, '1', '76', 'TKCNTT', NULL, NULL, NULL, NULL, NULL, NULL),
(81, '185116222333', 'Quyen@gmail.com', '$2y$10$KuiTNTuqTRKW6IyWzD8NReQnR2Te21lh8md53.X91PdRNmq8lQY8K', 'Vương Ánh Quyên', '2000-03-03', '13', NULL, 1, NULL, NULL, '2022-12-29 09:06:23', '2022-12-29 09:06:23', NULL, NULL, NULL, 1, 16, '1', '76', '185116222333', NULL, NULL, NULL, NULL, NULL, NULL),
(82, '1851161203', 'Giang@gmail.com', '$2y$10$igQnRussAIiUh4SCyk4uLeu71Mumz0X6jqvSceobiy01JMcDmmtta', 'Vương Hương Giang', '2000-06-19', '13', NULL, 1, NULL, NULL, '2022-12-29 09:53:25', '2022-12-29 09:53:25', NULL, NULL, NULL, 1, 17, '1', '76', '1851161203', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'GiangvienKT', 'KT1@gmail.com', '$2y$10$ZOUAG8liQSCPk2EIcN3bduq8o8iR1tS4zLCtM9Qiovm8DoVLOkkDi', 'Giảng viên KT', '1988-06-06', '15', NULL, 1, '2022-12-29 10:14:28', NULL, '2022-12-29 10:11:32', '2022-12-29 10:14:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GiangvienKT', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'GiangvienKT01', 'KT01@gmail.com', '$2y$10$lE/FzeLn49qklh6k3pFWhO1e1qxSa7Mp8oKgzpogKoOq2XD8GD766', 'Giảng viên KT', '2022-12-21', '15', NULL, 1, NULL, NULL, '2022-12-29 10:22:35', '2022-12-29 10:22:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GiangvienKT01', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'TKKT', 'TKKT@gmail.com', '$2y$10$MhRUz20rImdiz1AAzAylB.Fg8TklohOrtNukE9MaSmqvCCDd5GvCm', 'Trưởng Khoa KT', '1988-07-07', '17', NULL, 1, NULL, NULL, '2022-12-29 10:24:18', '2022-12-29 10:24:18', NULL, NULL, NULL, 2, NULL, '2', '84', 'TKKT', NULL, NULL, NULL, NULL, NULL, NULL),
(86, '1851168888', 'Ngan@gmail.com', '$2y$10$uU8.bUoi2FG6Za408PIrz.4SRACnrNlpS1RCp./iSFC0H5mT5.FyC', 'Vương Thị Kim Ngân', '2000-10-03', '13', NULL, 1, NULL, NULL, '2022-12-29 10:25:03', '2022-12-29 10:25:58', NULL, NULL, NULL, 2, 18, '2', '84', '1851168888', NULL, NULL, NULL, NULL, NULL, NULL),
(87, '1852223333', 'Kieu@gmail.com', '$2y$10$KorMugohyGcJo2lTqYMXL.Ox.BCTwGIsJtxuzcvKLv0ql55txm3by', 'Nguyễn Thị Kiều', '2000-03-01', '13', NULL, 1, NULL, NULL, '2022-12-29 11:35:15', '2022-12-29 11:35:15', NULL, NULL, NULL, 2, 19, '2', '84', '1852223333', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'GVKKT', 'KT0023@gmail.com', '$2y$10$0kQtxBHjSWFS.iwCtZvd2uLi8MNP9akv.2sknF01BK/8I2VPREhPu', 'Giáo vụ khoa KT', '2022-12-29', '16', NULL, 1, '2022-12-31 12:35:16', NULL, '2022-12-29 12:06:10', '2022-12-31 12:35:16', NULL, NULL, NULL, 2, NULL, '2', '84', 'GVKKT', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'GiangvienCT', 'CT01@gmail.com', '$2y$10$2RSjCjvHLy582hXpXpkgB.xQKQdchwYvun264CT6SDC9PFClMCltq', 'Giảng viên CT', '1988-08-08', '15', NULL, 1, NULL, NULL, '2022-12-29 13:31:05', '2022-12-29 13:31:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GiangvienCT', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'GVKCT', 'CT001@gmail.com', '$2y$10$niYwZguS7SaIfA0K9obQjOUBwdGHTq3.8uX.n8LTWqWvVbRlZTUwO', 'Giáo vụ khoa CT', '2022-12-29', '16', NULL, 1, '2022-12-31 12:23:51', NULL, '2022-12-29 13:38:58', '2022-12-31 12:23:51', NULL, NULL, NULL, 4, NULL, '4', '89', 'GVKCT', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'GVKKT034', 'KT0034@gmail.com', '$2y$10$BjtZMeYJIE7xu9G4QEhSneR96QOHeaTnjZ/tg4yU7h735TXPKrZhW', 'Giáo vụ khoa KT034', '2022-12-29', '16', NULL, 1, NULL, NULL, '2022-12-29 14:20:30', '2022-12-31 12:27:39', NULL, NULL, NULL, NULL, NULL, '2', NULL, 'GVKKT034', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'TKCT', 'CT0012@gmail.com', '$2y$10$/MwfgNyr0Ja3mtbh9rJBtevYLfTczJ/TUJFlrfCor/o92ClGVAU1.', 'Trưởng Khoa CT', '1988-08-08', '17', NULL, 1, NULL, NULL, '2022-12-31 12:32:45', '2022-12-31 12:32:45', NULL, NULL, NULL, 4, NULL, '4', '89', 'TKCT', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'GVKCT00123', 'CT00123@gmail.com', '$2y$10$zNhTqZCbvxRfYhTVOmNte.JaUafVdYwSfG2mnIimgoiBdaukGYkxK', 'Giáo vụ khoa CT', '1988-08-08', '16', NULL, 1, NULL, NULL, '2022-12-31 12:50:34', '2022-12-31 12:50:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GVKCT00123', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cong_viec`
--
ALTER TABLE `cong_viec`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cong_viec_chi_tiet`
--
ALTER TABLE `cong_viec_chi_tiet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dang_ky`
--
ALTER TABLE `dang_ky`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `doanh_nghiep`
--
ALTER TABLE `doanh_nghiep`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `nguon_tin`
--
ALTER TABLE `nguon_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cong_viec`
--
ALTER TABLE `cong_viec`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cong_viec_chi_tiet`
--
ALTER TABLE `cong_viec_chi_tiet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dang_ky`
--
ALTER TABLE `dang_ky`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `doanh_nghiep`
--
ALTER TABLE `doanh_nghiep`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `nguon_tin`
--
ALTER TABLE `nguon_tin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
