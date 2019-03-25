-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2019 at 10:58 AM
-- Server version: 5.5.60-MariaDB
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hocmai-edu-vn`
--

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_homepage_events`
--

CREATE TABLE IF NOT EXISTS `hocmai_homepage_events` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hocmai_homepage_events`
--

INSERT INTO `hocmai_homepage_events` (`id`, `title`, `address`, `start_date`, `end_date`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Hiến máu nhân đạo', 'Tầng 4 25T2 Nguyễn Thị Thập', '2019-02-20 07:12:57', '2019-02-23 07:12:59', '', '2019-02-27 00:13:03', '2019-02-27 00:13:03'),
(2, 'Cùng HOCMAI đón sinh nhật 12 tuổi !!!', 'https://www.facebook.com/events/2394924447186439/', '2019-03-13 09:24:53', '2019-03-13 09:24:55', '', '2019-03-05 02:36:19', '2019-03-05 02:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_homepage_info`
--

CREATE TABLE IF NOT EXISTS `hocmai_homepage_info` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sub` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_khoi_xoay` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hocmai_homepage_info`
--

INSERT INTO `hocmai_homepage_info` (`id`, `title`, `content`, `image`, `status`, `created_at`, `updated_at`, `slug`, `title_sub`, `title_product`, `image1`, `image2`, `image3`, `image4`, `url1`, `url2`, `url3`, `url4`, `url_khoi_xoay`) VALUES
(13, '', 'HOCMAI liên kết với Hệ thống Trung tâm học tập chủ động Galileo và Trường phổ thông liên cấp H.A.S tạo nên hệ sinh thái giáo dục...', '/Home - cut/banner5.jpg', 1, '2019-03-05 01:21:13', '2019-03-06 01:09:27', '', 'ĐƠN VỊ LIÊN KẾT', '', '', '', '', '', '', '', '', '', 'don-vi-lien-ket'),
(14, '', 'HOCMAI gồm 03 thành viên: Công ty CP dịch vụ giáo dục Việt Nam, Công ty CP dịch vụ Endifit, Công ty CP Giáo dục Edmicro...', '/Home - Section 1/Home 5.png', 1, '2019-03-05 01:21:55', '2019-03-06 01:07:30', '', 'ĐƠN VỊ THÀNH VIÊN', '', '', '', '', '', '', '', '', '', 'don-vi-thanh-vien'),
(15, '', 'Đi qua chặng đường 12 năm, HOCMAI đã để lại nhiều dấu ấn trong sự nghiệp dạy và học, góp phần thay đổi nền giáo dục Việt Nam...', '/Home - cut/banner3.jpg', 1, '2019-03-05 01:22:31', '2019-03-06 01:07:15', '', 'HÀNH TRÌNH 12 NĂM', '', '', '', '', '', '', '', '', '', 'hanh-trinh-12-nam'),
(16, 'TẦM NHÌN - SỨ MỆNH', 'Với khát vọng cải tiến nền giáo dục, HOCMAI chủ động đi tiên phong về sáng tạo, đổi mới phương pháp, công nghệ dạy và học...', '/Home - Section 1/53850288_1070243473178421_5624027415165534208_n.png', 1, '2019-03-05 01:23:03', '2019-03-07 00:28:19', '', 'GIÁ TRỊ CỐT LÕI', '', '', '', '', '', '', '', '', '', 'tam-nhin-su-menh'),
(17, 'HỆ THỐNG GIÁO DỤC', 'Hơn 10 năm hoạt động, HOCMAI đã tạo dựng được vị thế hàng đầu tại Việt Nam về cung cấp các dịch vụ giáo dục trực tuyến...', '/Home - cut/banner1.jpg', 1, '2019-03-05 01:23:45', '2019-03-06 01:06:16', '', 'HOCMAI', '', '', '', '', '', '', '', '', '', 'cau-chuyen-thuong-hieu'),
(19, 'CÁC KHÓA HỌC BỔ TRỢ', 'Các khóa học bổ trợ trực tuyến được HOCMAI xây dựng nhằm hoàn thiện kiến thức và kỹ năng, phương pháp học tập cho học sinh phổ thông từ lớp 1 đến lớp 12. Các khóa học bổ trợ được phân thành 02 nhóm: khóa học bổ trợ kiến thức và khóa học bổ trợ kỹ năng, phương pháp học tập.', '/Home - cut/backgroundsection4.jpg', 2, '2019-03-05 01:41:26', '2019-03-05 20:10:09', '', '', 'Ưu điểm của các khóa học bổ trợ:', '/Home - cut/object41.jpg', '/Home - cut/object42.jpg', '/Home - cut/object43.jpg', '', '', '', '', '', ''),
(20, 'SPEAKUP.VN - HỌC TẬP CÁ NHÂN HÓA', 'Speakup.vn là mô hình học tiếng Anh giao tiếp 1 kèm 1 trực tuyến với 100% giáo viên bản ngữ. Khác với nhiều đơn vị cung cấp dịch vụ học tiếng Anh trực tuyến hiện nay trên thị trường, giáo trình tại Speakup.vn được cá nhân hóa theo trình độ và mục tiêu của học sinh.', '/backgroundsection3.jpg', 2, '2019-03-05 01:43:33', '2019-03-06 10:45:04', '', '', 'Các đặc điểm nổi trội:', '/Home - cut/object31.jpg', '/Home - cut/object32.jpg', '/Home - cut/object33.jpg', '', '', '', '', '', 'https://speakup.vn/'),
(21, 'HOCHAY.VN - HỌC TẬP THÍCH ỨNG VÀ PHÁT TRIỂN NĂNG LỰC', 'Hochay.vn là ứng dụng học Toán trực quan dành cho học sinh từ lớp mẫu giáo đến lớp 3 theo từng đơn vị kiến thức. Tại Hochay.vn, học sinh được tiếp cận với bộ môn Toán một cách mới mẻ và thú vị, đồng thời phụ huynh có thể dễ dàng đồng hành và giúp đỡ con trong học tập.', '/Home - cut/backgroundsection2.jpg', 2, '2019-03-05 01:44:38', '2019-03-06 01:13:39', '', '', 'Các đặc điểm nổi trội:', '/Home - cut/object22.png', '/Home - cut/object23.png', '/Home - cut/object24.png', '', '', '', '', '', 'http://hochay.vn/'),
(22, 'HOCMAI.VN - HỌC TRỰC TUYẾN THEO LỘ TRÌNH', 'Bước vào hoạt động từ năm 2007, Hocmai.vn là dịch vụ giáo dục trực tuyến đầu tiên dành riêng cho học sinh phổ thông từ lớp 1 đến lớp 12. Tới nay, Hocmai.vn đã vượt mốc 3.3 triệu thành viên, chính thức trở thành cộng đồng học tập trực tuyến số 1 tại Việt Nam.', '/Home - cut/backgroundsection.png', 2, '2019-03-05 01:46:04', '2019-03-05 20:28:50', '', '', 'Các sản phẩm nổi bật:', '/Home - cut/object1.png', '/Home - cut/object13.png', '/Home - cut/object12.png', '/Home - cut/object14.png', 'https://hocmai.vn/luyen-thi-quoc-gia/giai-phap-pen-2019/', '', '', '', 'http://hocmai.vn');

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_homepage_info_products`
--

CREATE TABLE IF NOT EXISTS `hocmai_homepage_info_products` (
  `info_id` int(10) unsigned NOT NULL,
  `products_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_homepage_partner`
--

CREATE TABLE IF NOT EXISTS `hocmai_homepage_partner` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hocmai_homepage_partner`
--

INSERT INTO `hocmai_homepage_partner` (`id`, `name`, `url`, `image`) VALUES
(41, 'GGE', '', '/Home - cut/logo1.jpg'),
(42, 'EF', '', '/Home - cut/logo2.jpg'),
(43, 'Lotte', '', '/Home - cut/logo3.jpg'),
(44, 'Viettel Study', '', '/Home - cut/logo4.jpg'),
(45, 'just Kids', '', '/Home - cut/logo5.jpg'),
(46, 'megastudy', '', '/Home - cut/logo6.jpg'),
(47, 'SACE', '', '/Home - cut/logo7.jpg'),
(48, 'Hội khuyến học', '', '/Home - cut/logo8.jpg'),
(49, 'ACE', '', '/Home - cut/logo9.jpg'),
(50, 'Tủ sách Lam Sơn', '', '/Home - cut/logo10.jpg'),
(51, 'NR', '', '/Home - cut/logo11.jpg'),
(52, 'ACSL', '', '/Home - cut/logo12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_homepage_products`
--

CREATE TABLE IF NOT EXISTS `hocmai_homepage_products` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hocmai_homepage_products`
--

INSERT INTO `hocmai_homepage_products` (`id`, `name`, `image`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm 1', '/is.jpg', 'https://vnexpress.net', '2019-02-25 20:39:06', '2019-02-25 20:39:06'),
(2, 'sản phẩm mới', '/qqqq.jpg', 'https://soundcloud.com', '2019-02-25 21:05:40', '2019-02-25 21:05:40'),
(3, 'Giải pháp PEN', '/2019-03-02_17-03-35.png', 'https://hocmai.vn/luyen-thi-quoc-gia/giai-phap-pen-2019/', '2019-03-02 03:16:13', '2019-03-02 03:16:13'),
(4, 'HM10', '/HM10.png', 'https://hocmai.vn/th-thcs/giai-phap-hm10/', '2019-03-02 03:22:18', '2019-03-02 03:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_homepage_settings`
--

CREATE TABLE IF NOT EXISTS `hocmai_homepage_settings` (
  `id` int(10) unsigned NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zalo_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `header_banner_news` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hocmai_homepage_settings`
--

INSERT INTO `hocmai_homepage_settings` (`id`, `logo`, `address`, `home_phone`, `mobile_phone`, `mail`, `fb_link`, `zalo_link`, `youtube_link`, `created_at`, `updated_at`, `header_banner_news`) VALUES
(1, '/cropped-images', 'Tầng 4, Tòa nhà 25T2, Đường Nguyễn Thị Thập, Phường Trung Hoà, Quận Cầu Giấy, Hà Nội.', '(024) 3519-0591', '+84 (24) 3519-0587', 'info@HOCMAI.edu.vn', 'https://www.facebook.com/hethonggiaoduchocmai/', '', '', '2019-02-26 19:06:59', '2019-03-05 01:28:09', '/background-menu-child.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_news_categories`
--

CREATE TABLE IF NOT EXISTS `hocmai_news_categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hocmai_news_categories`
--

INSERT INTO `hocmai_news_categories` (`id`, `name`, `slug`) VALUES
(1, '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_news_news`
--

CREATE TABLE IF NOT EXISTS `hocmai_news_news` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_upcoming` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `view` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_news_posts`
--

CREATE TABLE IF NOT EXISTS `hocmai_news_posts` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hocmai_news_posts`
--

INSERT INTO `hocmai_news_posts` (`id`, `title`, `category_id`, `created_at`, `updated_at`) VALUES
(1, '12312312313', 1, '2019-02-19 09:47:34', '2019-02-19 09:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_recruitment_details`
--

CREATE TABLE IF NOT EXISTS `hocmai_recruitment_details` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_desc` mediumtext COLLATE utf8mb4_unicode_ci,
  `job_requirements` mediumtext COLLATE utf8mb4_unicode_ci,
  `job_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entitlements` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slots` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_experience` mediumtext COLLATE utf8mb4_unicode_ci,
  `work_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `room_id` int(11) DEFAULT NULL,
  `ranks_id` int(11) DEFAULT NULL,
  `jobs_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hocmai_recruitment_details`
--

INSERT INTO `hocmai_recruitment_details` (`id`, `name`, `slug`, `job_desc`, `job_requirements`, `job_position`, `entitlements`, `working_time`, `slots`, `work_experience`, `work_address`, `wage`, `deadline_type`, `contact`, `email`, `phone`, `created_at`, `updated_at`, `deadline`, `status`, `room_id`, `ranks_id`, `jobs_id`) VALUES
(8, NULL, NULL, '<p>- Xây dựng khung chương trình cho từng khối, lớp.</p>\r\n\r\n<p>- Xây dựng hệ thống bài kiểm tra đánh giá năng lực đầu vào và đánh giá trong quá trình học tập.</p>\r\n\r\n<p>- Xây dựng kế hoạch học tập, phương pháp học tập phù hợp với từng đối tượng học sinh.</p>\r\n\r\n<p>- Biên soạn/biên tập tài liệu môn Tiếng Anh theo từng khối lớp, từng đối tượng học sinh.</p>\r\n\r\n<p>- Kiểm soát, đảm bảo nội dung chuyên môn, tính sư phạm của tất cả các tài liệu đã biên soạn/biên tập.</p>', '<p>- Tốt nghiệp Đại học chuyên ngành Tiếng Anh bằng khá – giỏi tại các trường ĐH Sư phạm, ĐH Ngoại ngữ, ĐH Giáo dục...</p>\r\n\r\n<p>- Có điểm thi Đại học môn Tiếng Anh đạt 8 điểm trở lên.</p>\r\n\r\n<p>- Có kinh nghiệm biên soạn tài liệu hoặc giảng dạy/gia sư môn Tiếng Anh.</p>\r\n\r\n<p>- Thành thạo tin học văn phòng.</p>\r\n\r\n<p>- Chủ động trong công việc, có tinh thần trách nhiệm cao</p>', 'Hà Nội', '<p>-&nbsp;Môi trường làm việc thân thiện, hiện đại, trẻ trung, khuyến khích sáng tạo, đánh giá cao nỗ lực của từng cá nhân và tinh thần teamwork.</p>\r\n\r\n<p>- Đóng BHXH, BHYT theo bộ luật lao<', NULL, '01', '01 năm trở lên', 'Tầng 4, tòa nhà 25T2 Nguyễn Thị Thập, Trung Hòa, Cầu Giấy, Hà Nội', '6,400,000 VNĐ - 8,500,000 VNĐ', 'Cách 1: Gửi hồ sơ về hòm thư hr@hocmai.vn  => Tiêu đề hồ sơ ghi rõ Vị trí ứng tuyển_Họ tên ứng viên   Cách 2: Nộp hồ sơ trực tiếp tại phòng HCNS - Tầng 4, tòa nhà 25T2 Nguyễn Thị Thập, Trung', 'Ms Dung - Phòng Hành chính Nhân sự', 'hr@hocmai.vn', 981028, '2019-03-05 03:49:35', '2019-03-05 23:25:27', '2019-03-31 00:00:00', 1, 11, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_recruitment_jobs`
--

CREATE TABLE IF NOT EXISTS `hocmai_recruitment_jobs` (
  `id` int(10) unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank_job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hocmai_recruitment_jobs`
--

INSERT INTO `hocmai_recruitment_jobs` (`id`, `name`, `images`, `rank_job`) VALUES
(6, 'Biên tập viên', '/image001.jpg', 'Nhân viên'),
(7, 'Kế toán tổng hợp', '/cv-xin-viec-ke-toan-1.jpg', 'Nhân viên'),
(8, 'Kế toán', '/dich-vu-ke-toan-thue.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_recruitment_ranks`
--

CREATE TABLE IF NOT EXISTS `hocmai_recruitment_ranks` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hocmai_recruitment_ranks`
--

INSERT INTO `hocmai_recruitment_ranks` (`id`, `name`, `slug`) VALUES
(4, 'Cộng tác viên', 'cong-tac-vien'),
(5, 'Nhân viên', 'nhan-vien'),
(6, 'Trưởng phòng', 'trong-phong'),
(7, 'Trưởng nhóm', 'trong-nhom'),
(8, 'Quản lý', 'quan-ly'),
(9, 'Thực tập sinh', 'thuc-tap-sinh'),
(10, 'Giám đốc', 'giam-doc');

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_recruitment_rooms`
--

CREATE TABLE IF NOT EXISTS `hocmai_recruitment_rooms` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hocmai_recruitment_rooms`
--

INSERT INTO `hocmai_recruitment_rooms` (`id`, `name`, `slug`) VALUES
(11, 'Phát triển nội dung', 'phat-trien-noi-dung'),
(12, 'Thương hiệu', 'thuong-hieu'),
(13, 'Sản xuất bài giảng', 'san-xuat-bai-giang'),
(14, 'Hành chính - Nhân sự', 'hanh-chinh-nhan-su');

-- --------------------------------------------------------

--
-- Table structure for table `hocmai_recruitment_room_detail`
--

CREATE TABLE IF NOT EXISTS `hocmai_recruitment_room_detail` (
  `room_id` int(11) NOT NULL,
  `detail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hocmai_homepage_events`
--
ALTER TABLE `hocmai_homepage_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_homepage_info`
--
ALTER TABLE `hocmai_homepage_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_homepage_info_products`
--
ALTER TABLE `hocmai_homepage_info_products`
  ADD PRIMARY KEY (`info_id`,`products_id`);

--
-- Indexes for table `hocmai_homepage_partner`
--
ALTER TABLE `hocmai_homepage_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_homepage_products`
--
ALTER TABLE `hocmai_homepage_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_homepage_settings`
--
ALTER TABLE `hocmai_homepage_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_news_categories`
--
ALTER TABLE `hocmai_news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_news_news`
--
ALTER TABLE `hocmai_news_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_news_posts`
--
ALTER TABLE `hocmai_news_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_recruitment_details`
--
ALTER TABLE `hocmai_recruitment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_recruitment_jobs`
--
ALTER TABLE `hocmai_recruitment_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_recruitment_ranks`
--
ALTER TABLE `hocmai_recruitment_ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_recruitment_rooms`
--
ALTER TABLE `hocmai_recruitment_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocmai_recruitment_room_detail`
--
ALTER TABLE `hocmai_recruitment_room_detail`
  ADD PRIMARY KEY (`room_id`,`detail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hocmai_homepage_events`
--
ALTER TABLE `hocmai_homepage_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hocmai_homepage_info`
--
ALTER TABLE `hocmai_homepage_info`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `hocmai_homepage_partner`
--
ALTER TABLE `hocmai_homepage_partner`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `hocmai_homepage_products`
--
ALTER TABLE `hocmai_homepage_products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hocmai_homepage_settings`
--
ALTER TABLE `hocmai_homepage_settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hocmai_news_categories`
--
ALTER TABLE `hocmai_news_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hocmai_news_news`
--
ALTER TABLE `hocmai_news_news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hocmai_news_posts`
--
ALTER TABLE `hocmai_news_posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hocmai_recruitment_details`
--
ALTER TABLE `hocmai_recruitment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hocmai_recruitment_jobs`
--
ALTER TABLE `hocmai_recruitment_jobs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hocmai_recruitment_ranks`
--
ALTER TABLE `hocmai_recruitment_ranks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hocmai_recruitment_rooms`
--
ALTER TABLE `hocmai_recruitment_rooms`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
