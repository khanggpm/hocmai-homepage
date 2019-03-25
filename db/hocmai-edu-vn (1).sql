-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2019 at 02:52 PM
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
-- Table structure for table `backend_users`
--

CREATE TABLE IF NOT EXISTS `backend_users` (
  `id` int(10) unsigned NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) unsigned DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'Admin', 'Person', 'admin', 'admin@domain.tld', '$2y$10$jVAh2qB7O6g6I5gPMr5tPObzizC2PEWH1FdOvIGE611h.b/sGqezm', NULL, '$2y$10$uNH4vKvlBYyhrJgJGr0i5eI9WsoF9nrmgOwXX9/PtUX0WBZMzfWR2', NULL, '', 1, 2, NULL, '2019-03-05 04:30:11', '2019-02-15 03:39:57', '2019-03-05 04:30:11', NULL, 1),
(2, 'Manager', 'Page', 'manager', 'abc@abc.com', '$2y$10$Hkz0BeT85rdpGsz0kTCeAucmQY5N5w1cqqiCnKjuY88OR5PB1hXbK', NULL, '$2y$10$HmeR3Y846Z5930Ydxc.93.uzk.9XOegoen.HKO0.NG3NqL0AxkDFO', NULL, '', 0, 3, NULL, '2019-03-01 01:26:00', '2019-02-18 22:18:35', '2019-03-01 01:26:00', NULL, 0),
(3, 'Tra', 'Nguyen Thi', 'trant', 'trant@hocmai.vn', '$2y$10$MWqrgcVNUml2LTo.1as5sO8g0CsA5DrDBjaxS3VDya7xo/4atM95e', NULL, '$2y$10$Ozgcob7Q7svTL6.nmb/pM.Aq7kjOMcdLP6JY7dJXI186pWSOFcsse', NULL, '', 0, 3, NULL, '2019-03-05 22:48:42', '2019-03-01 01:16:05', '2019-03-05 22:48:42', NULL, 0),
(4, 'Linh', 'Do Dieu', 'linhdd', 'linhdd@hocmai.vn', '$2y$10$ja/U8NtUZuWWmjUctElVVuZlcqdmCdm9oXOFqzNU6HqwNidC1ZuL.', NULL, '$2y$10$yYc15ERIfd0NFTdcLC5hOOlj9RjoGwTwO3OkeMeyeIAL2ZSg6ez66', NULL, '', 0, 3, NULL, '2019-03-06 19:06:01', '2019-03-01 01:20:33', '2019-03-06 19:06:01', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE IF NOT EXISTS `backend_users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `user_group_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE IF NOT EXISTS `backend_user_groups` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2019-02-15 03:39:57', '2019-02-15 03:39:57', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE IF NOT EXISTS `backend_user_preferences` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'reportwidgets', 'dashboard', '{"welcome":{"class":"Backend\\\\ReportWidgets\\\\Welcome","sortOrder":"50","configuration":{"title":"Welcome","ocWidgetWidth":6,"ocWidgetNewRow":null}},"systemStatus":{"class":"System\\\\ReportWidgets\\\\Status","sortOrder":"60","configuration":{"title":"System status","ocWidgetWidth":6,"ocWidgetNewRow":null}},"activeTheme":{"class":"Cms\\\\ReportWidgets\\\\ActiveTheme","sortOrder":"70","configuration":{"title":"Website","ocWidgetWidth":4,"ocWidgetNewRow":null}}}');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_roles`
--

CREATE TABLE IF NOT EXISTS `backend_user_roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2019-02-15 03:39:57', '2019-02-15 03:39:57'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2019-02-15 03:39:57', '2019-02-15 03:39:57'),
(3, 'Manager', '', 'Quản lý trang chủ đầy đủ quyền', '{"indikator.news.posts":"1","indikator.news.categories":"1","recruitment.full":"1","homepage.full":"1","media.manage_media":"1","backend.manage_branding":"1"}', 0, '2019-02-18 22:15:20', '2019-03-01 01:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE IF NOT EXISTS `backend_user_throttle` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL),
(2, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL),
(3, 2, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL),
(4, 1, '192.168.191.1', 0, NULL, 0, NULL, 0, NULL),
(5, 1, '27.72.58.250', 0, NULL, 0, NULL, 0, NULL),
(6, 1, '222.252.29.25', 0, NULL, 0, NULL, 0, NULL),
(7, 1, '222.252.16.188', 0, NULL, 0, NULL, 0, NULL),
(8, 4, '27.72.58.250', 0, NULL, 0, NULL, 0, NULL),
(9, 4, '222.252.29.25', 0, NULL, 0, NULL, 0, NULL),
(10, 4, '222.252.16.188', 0, NULL, 0, NULL, 0, NULL),
(11, 3, '222.252.29.25', 0, NULL, 0, NULL, 0, NULL),
(12, 2, '222.252.16.188', 0, NULL, 0, NULL, 0, NULL),
(13, 2, '27.72.58.250', 0, NULL, 0, NULL, 0, NULL),
(14, 2, '222.252.29.25', 0, NULL, 0, NULL, 0, NULL),
(15, 3, '27.72.58.250', 0, NULL, 0, NULL, 0, NULL),
(16, 3, '222.252.16.188', 0, NULL, 0, NULL, 0, NULL),
(17, 1, '171.229.248.226', 0, NULL, 0, NULL, 0, NULL),
(18, 3, '42.113.173.75', 0, NULL, 0, NULL, 0, NULL),
(19, 1, '222.254.16.57', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE IF NOT EXISTS `cms_theme_data` (
  `id` int(10) unsigned NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_theme_data`
--

INSERT INTO `cms_theme_data` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(1, 'responsiv-clean', '{"site_name":"October CMS","site_motto":"Get back to basics","facebook_url":"https:\\/\\/www.facebook.com\\/","twitter_url":"https:\\/\\/www.twitter.com\\/"}', '2019-02-15 03:52:42', '2019-02-15 03:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE IF NOT EXISTS `deferred_bindings` (
  `id` int(10) unsigned NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deferred_bindings`
--

INSERT INTO `deferred_bindings` (`id`, `master_type`, `master_field`, `slave_type`, `slave_id`, `session_key`, `is_bind`, `created_at`, `updated_at`) VALUES
(1, 'RainLab\\Blog\\Models\\Post', 'featured_images', 'System\\Models\\File', '1', 'AfavnPDJOL1smuaFF0S2Is9wFprvJ9jbvMO8mRVP', 1, '2019-02-16 08:18:53', '2019-02-16 08:18:53'),
(2, 'RainLab\\Blog\\Models\\Post', 'content_images', 'System\\Models\\File', '2', 'AfavnPDJOL1smuaFF0S2Is9wFprvJ9jbvMO8mRVP', 1, '2019-02-16 08:20:03', '2019-02-16 08:20:03'),
(3, 'RainLab\\Blog\\Models\\Post', 'content_images', 'System\\Models\\File', '3', 'LMyFbhGNa9m01NBr3BQ2qBlM06ZmJZvoaDSgodOy', 1, '2019-02-16 19:24:39', '2019-02-16 19:24:39'),
(4, 'RainLab\\Blog\\Models\\Post', 'content_images', 'System\\Models\\File', '4', 'LMyFbhGNa9m01NBr3BQ2qBlM06ZmJZvoaDSgodOy', 1, '2019-02-16 19:24:50', '2019-02-16 19:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` int(10) unsigned NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indikator_news_categories`
--

CREATE TABLE IF NOT EXISTS `indikator_news_categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hidden` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indikator_news_categories`
--

INSERT INTO `indikator_news_categories` (`id`, `name`, `slug`, `content`, `image`, `hidden`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Tin HOCMAI', 'tin-hocmai', '', '', '2', '1', 1, '2019-02-17 03:01:11', '2019-02-17 03:01:11'),
(2, 'Tin báo chí', 'tin-bao-chi', '', '', '2', '1', 2, '2019-02-17 03:01:21', '2019-02-17 03:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `indikator_news_posts`
--

CREATE TABLE IF NOT EXISTS `indikator_news_posts` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introductory` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `statistics` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` smallint(6) NOT NULL DEFAULT '2',
  `last_send_at` datetime DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `enable_newsletter_content` tinyint(1) NOT NULL DEFAULT '0',
  `newsletter_content` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) unsigned DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `read_most` int(11) NOT NULL DEFAULT '0',
  `hot_news` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indikator_news_posts`
--

INSERT INTO `indikator_news_posts` (`id`, `title`, `slug`, `introductory`, `content`, `published_at`, `status`, `statistics`, `created_at`, `updated_at`, `image`, `featured`, `last_send_at`, `category_id`, `enable_newsletter_content`, `newsletter_content`, `user_id`, `tags`, `read_most`, `hot_news`) VALUES
(23, 'Tư vấn cách dạy, học thông minh cho trường phổ thông cả nước', 'tu-van-cach-day-hoc-thong-minh-cho-truong-pho-thong', '<p><strong>Thầy cô, học sinh được chia sẻ kỹ năng ghi chép, phương pháp tự học qua Internet… để tích lũy kiến thức cần thiết mà không mất nhiều thời gian.</strong></p>', '<p>"Học thông minh" là chương trình do Tiến sĩ Nguyễn Thành Nam, giảng viên Học viện Kỹ thuật Quân sự sáng lập và làm diễn giả chính. Đây là chuỗi chương trình phi lợi nhuận vì cộng đồng triển khai từ tháng 12 tại nhiều điểm trường ở các tỉnh, thành phố trên cả nước và nhận được sự quan tâm, đón nhận của hàng nghìn học sinh, giáo viên.</p>\r\n\r\n<h2><strong>Hiện thực hóa phương pháp học tập tiên tiến</strong></h2>\r\n\r\n<p>Bằng cách tổ chức thử nghiệm tại các điểm trường: Phổ thông liên cấp Thực Nghiệm tại Hà Nội (16/9/2018), Trường PTCS Chuyên Nguyễn Du (12/10/2018) và Trường THPT Chuyên Lam Sơn (27/10/2018), chương trình hội thảo "Học thông minh" đã mang đến cho học sinh cũng như giáo viên các phương pháp học tập mới, tác dụng thiết thực tới quá trình dạy và học. Ngay trong quá trình thử nghiệm, hội thảo đã thu hút sự tham gia của hơn một nghìn học sinh và giáo viên, đồng thời, nhận được sự ủng hộ lớn từ nhà trường.</p>\r\n\r\n<p><img src="/hocmai-edu-vn/storage/app/media/uploaded-files/1834948354-w500-7478-1545963751.png" style="width: 448px; height: 336px;" class="fr-fic fr-dib" data-result="success" alt=" Hội thảo Học thông minh thu hút nhiều trường phổ thông cả nước Diễn giả Nguyễn Thành Nam chia sẻ với học sinh tại hội thảo."></p>\r\n\r\n<p style="text-align: center;">Diễn giả Nguyễn Thành Nam trình bày tại hội thảo.</p>\r\n\r\n<p>Sau giai đoạn thử nghiệm và hoàn thiện nội dung của hội thảo, kể từ tháng 12, Tiến sĩ Nguyễn Thành Nam đã hợp tác với Hệ thống Giáo dục Hocmai.vn - một trong những đơn vị hoạt động trong lĩnh vực giáo dục trực tuyến tại Việt Nam để đồng hành tổ chức chương trình này.</p>\r\n\r\n<p>Tại các hội thảo, một loạt phương pháp như: kỹ năng ghi chép thông minh, ghi chép nâng cao bằng công cụ tư duy, kỹ thuật ghi nhớ và vận dụng kỹ thuật ghi nhớ vào môn học cụ thể, kỹ năng đọc sách hay tiếp thu thông tin qua sách báo, phương pháp tự học qua Internet... đã được chuyển tải và mở ra góc nhìn mới cho giáo viên, học sinh.</p>\r\n\r\n<p>Hội thảo được nhiều trường phổ thông cả nước chủ động mời về tổ chức. Hiện có thêm 3 hội thảo được tổ chức miễn phí tại các điểm trường, thu hút sự quan tâm và tham dự của hơn hai nghìn học sinh và giáo viên, gồm: THPT Yên Bình (Định Hóa, Thái Nguyên), THPT Quảng Xương 1 và Quảng Xương 4 (Thanh Hóa).&nbsp;</p>\r\n\r\n<p>Kể về hành trình tìm ra ý tưởng xây dựng chương trình hội thảo, Tiến sĩ Nguyễn Thành Nam cho biết, từ lâu, ông đã theo đuổi nghiên cứu và ấp ủ ý định mang phương pháp học tập tiên tiến trên thế giới đến gần với học sinh Việt Nam. Tuy nhiên, ý tưởng về xây dựng chương trình hội thảo Học thông minh thực sự nảy mầm từ thời điểm ông được mời làm cố vấn về phương pháp học tập cho chương trình truyền hình thực tế "Học sao cho tốt?" phát sóng hàng tuần trên kênh Truyền hình Giáo dục Quốc Gia VTV7, Đài Truyền hình Việt Nam.</p>\r\n\r\n<p>Trong thời gian này, ông có cơ hội làm việc với các chuyên gia giáo dục đến từ Nhật Bản, đặc biệt là Giáo sư Haruo Kurokami, một chuyên gia đầu ngành của về các phương pháp học tập của Trường Đại học Kansai. Nhận thấy một số phương pháp và kỹ thuật học tập khoa học được áp dụng rộng rãi và hiệu quả tại các trường phổ thông của Nhật Bản rất phù hợp với học sinh Việt Nam, Tiến sĩ Nguyễn Thành Nam tiếp tục tìm hiểu và nghiên cứu thêm các phương pháp học tập của nhiều nền giáo dục tiên tiến trên thế giới.</p>\r\n\r\n<table align="center" border="0" cellpadding="2" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Hội thảo Học thông minh thu hút nhiều trường phổ thông cả nước - 2" data-natural-h="375" data-natural-width="500" src="https://i-vnexpress.vnecdn.net/2018/12/28/1766996095-w500-5158-1545963753.png" data-width="500" data-pwidth="500" class="fr-fic fr-dii">\r\n				<br>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Giao lưu và giải đáp trực tiếp tại hội thảo khiến học sinh rất hứng thú.\r\n				<br>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Trên cơ sở học hỏi, tham khảo và điều chỉnh cho phù hợp với nền tảng của học sinh Việt Nam, Tiến sĩ Nguyễn Thành Nam quyết định triển khai chương trình hội thảo "Học thông minh" với mong muốn phổ biến rộng rãi và mang các phương pháp học tập khoa học tới gần hơn với học sinh, giáo viên các cấp học; từ đó, góp phần nâng cao chất lượng dạy và học tại Việt Nam.</p>\r\n\r\n<p>"Mỗi hội thảo đi qua, chúng tôi mong mọi người sẽ biết đến các phương pháp này, 10% có thể áp dụng ngày và một số ít trong số 10% có thể trở thành hạt nhân trong việc áp dụng nhuẫn nhuyễn để tạo ra sức lan tỏa với xung quanh. Mưa dầm thấm lâu, đến một thời điểm nhất định, chúng tôi tin sẽ góp phần thay đổi tư duy và cách áp dụng phương pháp học của các em", Tiến sĩ Nguyễn Thành Nam chia sẻ thêm.</p>\r\n\r\n<p><strong>Tiếp tục mở rộng nội dung và phương thức truyền đạt</strong></p>\r\n\r\n<p>"Trên cơ sở học hỏi, tham chiếu nhiều phương pháp học tập từ nền giáo dục của các nước phát triển, chúng tôi sẽ tiếp tục xây dựng, điều chỉnh và hoàn thiện chương trình sao cho phù hợp hơn với điều kiện giáo dục Việt Nam trong thời gian tới. Đồng thời, tiếp tục hành trình mở rộng nội dung và phương thức truyền đạt nhằm mang lại lợi ích cho học sinh cũng như các thầy, cô giáo", tiến sĩ Nguyễn Thành Nam cho biết.</p>\r\n\r\n<table align="center" border="0" cellpadding="2" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Hội thảo Học thông minh thu hút nhiều trường phổ thông cả nước - 3" data-natural-h="375" data-natural-width="500" src="https://i-vnexpress.vnecdn.net/2018/12/28/2080846390-w500-4243-1545963754.png" data-width="500" data-pwidth="500" class="fr-fic fr-dii">\r\n				<br>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hàng nghìn học sinh và giáo viên tại các điểm trường quan tâm, tham dự chuỗi hội thảo.\r\n				<br>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Cũng theo Tiến sĩ Nguyễn Thành Nam, trong năm 2019, từ cơ sở những nhóm kỹ năng lớn đã triển khai, hội thảo tiếp tục mở rộng nội dung theo hướng đào sâu nhiều nội dung nhỏ. Ông Nam ví dụ cụ thể, từ nhóm phương pháp "kỹ năng ghi chép" đã triển khai năm 2018, thời gian tới sẽ mở rộng sang các nhóm kỹ năng nhỏ như: kỹ năng ghi chép trong thảo luận, kỹ năng ghi chép những thông tin có giá trị vô tình gặp được, kỹ năng ghi chép trong sách, truyện hay kỹ năng ghi chép, thu thập thông tin từ internet...</p>\r\n\r\n<p>Ngoài ra, hội thảo còn hướng tới giáo viên. Theo đó, nội dung dành cho giáo viên đòi hỏi thiết kế, xây dựng khung nội dung sâu hơn, mở rộng hơn và hướng dẫn các thầy, cô giáo cả cách áp dụng những phương pháp với học sinh như thế nào.</p>\r\n\r\n<p>"Hiểu rõ được công cụ này, các thầy, cô sẽ hiểu và áp dụng vào môn học của mình đang giảng dạy; từ đó, có thể tạo ra nhiều học liệu, hướng dẫn học sinh chi tiết hơn", ông Nguyễn Thành Nam cho biết.</p>\r\n\r\n<p>Nói về định hướng triển khai chuỗi hội thảo trong năm 2019, ông Phạm Giang Linh, Tổng Giám đốc Hệ thống Giáo dục Hocmai.vn - đơn vị chủ trì triển khai hội thảo cho biết sẽ cùng với Tiến sĩ Nguyễn Thành Nam triển khai tại các điểm trường trên cả nước. Ông cho biết, việc có được tính chủ động tác động rất lớn tới hiệu quả học tập của học sinh. Trong khi, trên thực tế, hầu hết học sinh ít được trang bị những phương pháp học tập bài bản và những công cụ để hỗ trợ cho quá trình học tập. Việc nắm vững các phương pháp này giúp các em chủ động hơn trong việc tiếp cận kiến thức, lựa chọn nguồn thông tin, hỗ trợ tốt cho việc học.</p>\r\n\r\n<p>"Với mong muốn hỗ trợ học sinh cũng như giáo viên tiếp cận gần hơn các phương pháp học tập, chúng tôi sẽ đổi mới và làm phong phú hơn về nội dung cũng như cách thức truyền tải thông tin trong các hội thảo. Trong năm tới, chúng tôi sẽ thí điểm thêm các cách thức truyền tải khác như: truyền tới học sinh thông qua một số học sinh có khả năng nắm bắt tốt, truyền đạt tới giáo viên thông qua một số giáo viên trẻ hay truyền đạt tới học sinh thông qua giáo viên", ông Phạm Giang Linh chia sẻ thêm.</p>\r\n\r\n<table align="center" border="0" cellpadding="2" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Hội thảo Học thông minh thu hút nhiều trường phổ thông cả nước - 4" data-natural-h="375" data-natural-width="500" src="https://i-vnexpress.vnecdn.net/2018/12/28/1624168757-w500-3229-1545963755.png" data-width="500" data-pwidth="500" class="fr-fic fr-dii">\r\n				<br>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đại diện đơn vị tổ chức - Tiến sĩ Nguyễn Thành Nam trao quà cho các học sinh tham dự.\r\n				<br>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Người đại diện của đơn vị này cũng cho biết, trong năm 2019, bên cạnh các nội dung chính như khung chương trình đã xây dựng ban đầu, hội thảo sẽ chia sẻ thêm tới các thầy, cô giáo những nội dung như: kỹ thuật trình bày bài giảng điện tử hay những lý thuyết tâm lý học hiện đại cơ bản đang được sử dụng ở nhiều nền giáo dục phát triển (lý thuyết cơ cấu trí khôn, các thang cấp độ tư duy, các khu vực như nhận thức, cảm xúc, hoạt động...) một cách cụ thể và thường thức nhất.</p>\r\n\r\n<p style="text-align: right;">Nguồn: VnExpress.net</p>', '2018-12-29 02:30:00', '1', 24, '2019-03-06 02:49:57', '2019-03-07 00:38:34', '/uploaded-files/1834948354-w500-7478-1545963751.png', 2, NULL, 2, 0, NULL, 4, 'hocmai.vn,Học Thông Minh', 52, 0),
(24, 'Hành trình học thông minh tại Thanh Hoá, Nghệ An', 'hanh-trinh-hoc-thong-minh-tai-thanh-hoa-nghe', '<p>Hơn 700 học sinh tại các điểm trường đã cùng diễn giả, Tiến sĩ Nguyễn Thành Nam thảo luận vấn đề ghi chép và nhớ kiến thức trong học tập.</p>', '', '2019-03-06 03:08:37', '1', 2, '2019-03-06 03:08:37', '2019-03-06 19:53:23', '/uploaded-files/545255653-w500-7863-1547637584.png', 2, NULL, 2, 0, NULL, 4, NULL, 4, 0),
(25, 'Giáo viên bày 3 mẹo nhanh nhớ từ vựng tiếng Anh ôn thi lớp 10', 'giao-vien-bay-3-meo-nhanh-nho-tu-vung-tieng-anh-thi-lop-10', '<h2>Theo thầy Nguyễn Trung Nguyên, phân loại nhóm từ vựng, học thông qua kỹ năng dịch văn bản... giúp học tốt chuyên đề từ vựng.</h2>', '', '2019-03-06 03:10:11', '1', 3, '2019-03-06 03:10:11', '2019-03-06 20:10:15', '/uploaded-files/thay-a-5091-1548064321.jpg', 2, NULL, 2, 0, NULL, 4, NULL, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `indikator_news_relations`
--

CREATE TABLE IF NOT EXISTS `indikator_news_relations` (
  `subscriber_id` int(10) unsigned NOT NULL,
  `categories_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indikator_news_subscribers`
--

CREATE TABLE IF NOT EXISTS `indikator_news_subscribers` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `common` text COLLATE utf8mb4_unicode_ci,
  `created` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `statistics` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_at` datetime DEFAULT NULL,
  `registered_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmed_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmation_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubscribed_at` datetime DEFAULT NULL,
  `unsubscribed_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3);

-- --------------------------------------------------------

--
-- Table structure for table `phamkhang_homepage_events`
--

CREATE TABLE IF NOT EXISTS `phamkhang_homepage_events` (
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
-- Dumping data for table `phamkhang_homepage_events`
--

INSERT INTO `phamkhang_homepage_events` (`id`, `title`, `address`, `start_date`, `end_date`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Hiến máu nhân đạo', 'Tầng 4 25T2 Nguyễn Thị Thập', '2019-02-20 07:12:57', '2019-02-23 07:12:59', '', '2019-02-27 00:13:03', '2019-02-27 00:13:03'),
(2, 'Cùng HOCMAI đón sinh nhật 12 tuổi !!!', 'https://www.facebook.com/events/2394924447186439/', '2019-03-13 09:24:53', '2019-03-13 09:24:55', '', '2019-03-05 02:36:19', '2019-03-05 02:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `phamkhang_homepage_info`
--

CREATE TABLE IF NOT EXISTS `phamkhang_homepage_info` (
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
-- Dumping data for table `phamkhang_homepage_info`
--

INSERT INTO `phamkhang_homepage_info` (`id`, `title`, `content`, `image`, `status`, `created_at`, `updated_at`, `slug`, `title_sub`, `title_product`, `image1`, `image2`, `image3`, `image4`, `url1`, `url2`, `url3`, `url4`, `url_khoi_xoay`) VALUES
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
-- Table structure for table `phamkhang_homepage_info_products`
--

CREATE TABLE IF NOT EXISTS `phamkhang_homepage_info_products` (
  `info_id` int(10) unsigned NOT NULL,
  `products_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phamkhang_homepage_partner`
--

CREATE TABLE IF NOT EXISTS `phamkhang_homepage_partner` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phamkhang_homepage_partner`
--

INSERT INTO `phamkhang_homepage_partner` (`id`, `name`, `url`, `image`) VALUES
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
-- Table structure for table `phamkhang_homepage_products`
--

CREATE TABLE IF NOT EXISTS `phamkhang_homepage_products` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phamkhang_homepage_products`
--

INSERT INTO `phamkhang_homepage_products` (`id`, `name`, `image`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm 1', '/is.jpg', 'https://vnexpress.net', '2019-02-25 20:39:06', '2019-02-25 20:39:06'),
(2, 'sản phẩm mới', '/qqqq.jpg', 'https://soundcloud.com', '2019-02-25 21:05:40', '2019-02-25 21:05:40'),
(3, 'Giải pháp PEN', '/2019-03-02_17-03-35.png', 'https://hocmai.vn/luyen-thi-quoc-gia/giai-phap-pen-2019/', '2019-03-02 03:16:13', '2019-03-02 03:16:13'),
(4, 'HM10', '/HM10.png', 'https://hocmai.vn/th-thcs/giai-phap-hm10/', '2019-03-02 03:22:18', '2019-03-02 03:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `phamkhang_homepage_settings`
--

CREATE TABLE IF NOT EXISTS `phamkhang_homepage_settings` (
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
-- Dumping data for table `phamkhang_homepage_settings`
--

INSERT INTO `phamkhang_homepage_settings` (`id`, `logo`, `address`, `home_phone`, `mobile_phone`, `mail`, `fb_link`, `zalo_link`, `youtube_link`, `created_at`, `updated_at`, `header_banner_news`) VALUES
(1, '/cropped-images', 'Tầng 4, Tòa nhà 25T2, Đường Nguyễn Thị Thập, Phường Trung Hoà, Quận Cầu Giấy, Hà Nội.', '(024) 3519-0591', '+84 (24) 3519-0587', 'info@HOCMAI.edu.vn', 'https://www.facebook.com/hethonggiaoduchocmai/', '', '', '2019-02-26 19:06:59', '2019-03-05 01:28:09', '/background-menu-child.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `phamkhang_news_categories`
--

CREATE TABLE IF NOT EXISTS `phamkhang_news_categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phamkhang_news_categories`
--

INSERT INTO `phamkhang_news_categories` (`id`, `name`, `slug`) VALUES
(1, '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `phamkhang_news_news`
--

CREATE TABLE IF NOT EXISTS `phamkhang_news_news` (
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
-- Table structure for table `phamkhang_news_posts`
--

CREATE TABLE IF NOT EXISTS `phamkhang_news_posts` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phamkhang_news_posts`
--

INSERT INTO `phamkhang_news_posts` (`id`, `title`, `category_id`, `created_at`, `updated_at`) VALUES
(1, '12312312313', 1, '2019-02-19 09:47:34', '2019-02-19 09:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `phamkhang_recruitment_details`
--

CREATE TABLE IF NOT EXISTS `phamkhang_recruitment_details` (
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
-- Dumping data for table `phamkhang_recruitment_details`
--

INSERT INTO `phamkhang_recruitment_details` (`id`, `name`, `slug`, `job_desc`, `job_requirements`, `job_position`, `entitlements`, `working_time`, `slots`, `work_experience`, `work_address`, `wage`, `deadline_type`, `contact`, `email`, `phone`, `created_at`, `updated_at`, `deadline`, `status`, `room_id`, `ranks_id`, `jobs_id`) VALUES
(8, NULL, NULL, '<p>- Xây dựng khung chương trình cho từng khối, lớp.</p>\r\n\r\n<p>- Xây dựng hệ thống bài kiểm tra đánh giá năng lực đầu vào và đánh giá trong quá trình học tập.</p>\r\n\r\n<p>- Xây dựng kế hoạch học tập, phương pháp học tập phù hợp với từng đối tượng học sinh.</p>\r\n\r\n<p>- Biên soạn/biên tập tài liệu môn Tiếng Anh theo từng khối lớp, từng đối tượng học sinh.</p>\r\n\r\n<p>- Kiểm soát, đảm bảo nội dung chuyên môn, tính sư phạm của tất cả các tài liệu đã biên soạn/biên tập.</p>', '<p>- Tốt nghiệp Đại học chuyên ngành Tiếng Anh bằng khá – giỏi tại các trường ĐH Sư phạm, ĐH Ngoại ngữ, ĐH Giáo dục...</p>\r\n\r\n<p>- Có điểm thi Đại học môn Tiếng Anh đạt 8 điểm trở lên.</p>\r\n\r\n<p>- Có kinh nghiệm biên soạn tài liệu hoặc giảng dạy/gia sư môn Tiếng Anh.</p>\r\n\r\n<p>- Thành thạo tin học văn phòng.</p>\r\n\r\n<p>- Chủ động trong công việc, có tinh thần trách nhiệm cao</p>', 'Hà Nội', '<p>-&nbsp;Môi trường làm việc thân thiện, hiện đại, trẻ trung, khuyến khích sáng tạo, đánh giá cao nỗ lực của từng cá nhân và tinh thần teamwork.</p>\r\n\r\n<p>- Đóng BHXH, BHYT theo bộ luật lao<', NULL, '01', '01 năm trở lên', 'Tầng 4, tòa nhà 25T2 Nguyễn Thị Thập, Trung Hòa, Cầu Giấy, Hà Nội', '6,400,000 VNĐ - 8,500,000 VNĐ', 'Cách 1: Gửi hồ sơ về hòm thư hr@hocmai.vn  => Tiêu đề hồ sơ ghi rõ Vị trí ứng tuyển_Họ tên ứng viên   Cách 2: Nộp hồ sơ trực tiếp tại phòng HCNS - Tầng 4, tòa nhà 25T2 Nguyễn Thị Thập, Trung', 'Ms Dung - Phòng Hành chính Nhân sự', 'hr@hocmai.vn', 981028, '2019-03-05 03:49:35', '2019-03-05 23:25:27', '2019-03-31 00:00:00', 1, 11, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `phamkhang_recruitment_jobs`
--

CREATE TABLE IF NOT EXISTS `phamkhang_recruitment_jobs` (
  `id` int(10) unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank_job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phamkhang_recruitment_jobs`
--

INSERT INTO `phamkhang_recruitment_jobs` (`id`, `name`, `images`, `rank_job`) VALUES
(6, 'Biên tập viên', '/image001.jpg', 'Nhân viên'),
(7, 'Kế toán tổng hợp', '/cv-xin-viec-ke-toan-1.jpg', 'Nhân viên'),
(8, 'Kế toán', '/dich-vu-ke-toan-thue.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `phamkhang_recruitment_ranks`
--

CREATE TABLE IF NOT EXISTS `phamkhang_recruitment_ranks` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phamkhang_recruitment_ranks`
--

INSERT INTO `phamkhang_recruitment_ranks` (`id`, `name`, `slug`) VALUES
(4, 'Cộng tác viên', 'cong-tac-vien'),
(5, 'Nhân viên', 'nhan-vien'),
(6, 'Trưởng phòng', 'trong-phong'),
(7, 'Trưởng nhóm', 'trong-nhom'),
(8, 'Quản lý', 'quan-ly'),
(9, 'Thực tập sinh', 'thuc-tap-sinh'),
(10, 'Giám đốc', 'giam-doc');

-- --------------------------------------------------------

--
-- Table structure for table `phamkhang_recruitment_rooms`
--

CREATE TABLE IF NOT EXISTS `phamkhang_recruitment_rooms` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phamkhang_recruitment_rooms`
--

INSERT INTO `phamkhang_recruitment_rooms` (`id`, `name`, `slug`) VALUES
(11, 'Phát triển nội dung', 'phat-trien-noi-dung'),
(12, 'Thương hiệu', 'thuong-hieu'),
(13, 'Sản xuất bài giảng', 'san-xuat-bai-giang'),
(14, 'Hành chính - Nhân sự', 'hanh-chinh-nhan-su');

-- --------------------------------------------------------

--
-- Table structure for table `phamkhang_recruitment_room_detail`
--

CREATE TABLE IF NOT EXISTS `phamkhang_recruitment_room_detail` (
  `room_id` int(11) NOT NULL,
  `detail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pkleindienst_blogseries_series`
--

CREATE TABLE IF NOT EXISTS `pkleindienst_blogseries_series` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_categories`
--

CREATE TABLE IF NOT EXISTS `rainlab_blog_categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts`
--

CREATE TABLE IF NOT EXISTS `rainlab_blog_posts` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `content_html` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`) VALUES
(1, NULL, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2019-02-19 09:52:01', 1, '2019-02-19 09:52:01', '2019-02-19 09:52:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts_categories`
--

CREATE TABLE IF NOT EXISTS `rainlab_blog_posts_categories` (
  `post_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE IF NOT EXISTS `system_files` (
  `id` int(10) unsigned NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '5c6829dd3bae2905559360.jpeg', 'an.jpeg', 11897, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-02-16 08:18:53', '2019-02-16 08:18:53'),
(2, '5c682a23aa9df929507933.jpeg', 'an.jpeg', 11897, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 2, '2019-02-16 08:20:03', '2019-02-16 08:20:03'),
(3, '5c68c5e79d957075109372.jpeg', 'an.jpeg', 11897, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 3, '2019-02-16 19:24:39', '2019-02-16 19:24:39'),
(4, '5c68c5f267d6c126139404.jpeg', 'an.jpeg', 11897, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 4, '2019-02-16 19:24:50', '2019-02-16 19:24:50'),
(5, '55428b6d4425d031778535.jpg', 'invoice.jpg', 47454, 'image/jpeg', NULL, NULL, 'background_img', '1', 'Renatio\\DynamicPDF\\Models\\Layout', 1, 5, '2019-02-16 21:03:36', '2019-02-16 21:03:36'),
(8, '5c6fa9497a4eb551533863.png', 'logo.png', 5114, 'image/png', NULL, NULL, 'logo', '2', 'Backend\\Models\\BrandSetting', 1, 8, '2019-02-22 00:48:25', '2019-02-22 00:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE IF NOT EXISTS `system_mail_layouts` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n    <meta name="viewport" content="width=device-width, initial-scale=1.0" />\n    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\n</head>\n<body>\n    <style type="text/css" media="screen">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class="wrapper layout-default" width="100%" cellpadding="0" cellspacing="0">\n\n        <!-- Header -->\n        {% partial ''header'' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align="center">\n                <table class="content" width="100%" cellpadding="0" cellspacing="0">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class="body" width="100%" cellpadding="0" cellspacing="0">\n                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class="content-cell">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial ''footer'' body %}\n            &copy; {{ "now"|date("Y") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-02-15 03:39:56', '2019-02-15 03:39:56'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n    <meta name="viewport" content="width=device-width, initial-scale=1.0" />\n    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\n</head>\n<body>\n    <style type="text/css" media="screen">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class="wrapper layout-system" width="100%" cellpadding="0" cellspacing="0">\n        <tr>\n            <td align="center">\n                <table class="content" width="100%" cellpadding="0" cellspacing="0">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class="body" width="100%" cellpadding="0" cellspacing="0">\n                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class="content-cell">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial ''subcopy'' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-02-15 03:39:56', '2019-02-15 03:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_partials`
--

CREATE TABLE IF NOT EXISTS `system_mail_partials` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE IF NOT EXISTS `system_mail_templates` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE IF NOT EXISTS `system_parameters` (
  `id` int(10) unsigned NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '1'),
(2, 'system', 'core', 'hash', '"b4b79ec07b137e6c84605ac76f616781"'),
(3, 'system', 'core', 'build', '"446"'),
(4, 'system', 'update', 'retry', '1551755036'),
(5, 'system', 'theme', 'history', '{"Responsiv.Clean":"responsiv-clean","Zwiebl.zwiebl_stellar":"zwiebl-zwiebl_stellar"}'),
(6, 'cms', 'theme', 'active', '"hocmai"');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE IF NOT EXISTS `system_plugin_versions` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2019-02-15 03:39:56', 0, 0),
(3, 'RainLab.Builder', '1.0.23', '2019-02-15 03:46:51', 0, 0),
(4, 'AnandPatel.SeoExtension', '1.0.6', '2019-02-15 03:48:44', 0, 0),
(15, 'Indikator.News', '1.10.13', '2019-03-06 19:06:01', 0, 0),
(18, 'PhamKhang.News', '1.0.6', '2019-02-19 09:46:39', 0, 0),
(19, 'RainLab.Blog', '1.3.1', '2019-02-19 09:52:02', 0, 0),
(21, 'PhamKhang.Recruitment', '1.0.14', '2019-02-27 04:05:17', 0, 0),
(22, 'PhamKhang.Homepage', '1.0.17', '2019-03-01 12:26:48', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

CREATE TABLE IF NOT EXISTS `system_revisions` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int(10) unsigned NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'rainlab_builder_settings', '{"author_name":"Pham Khang","author_namespace":"PhamKhang"}'),
(2, 'backend_brand_settings', '{"app_name":"HOCMAI ADMIN","app_tagline":"Login","primary_color":"#2980b9","secondary_color":"#34495e","accent_color":"#34495e","menu_mode":"inline","custom_css":""}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indikator_news_categories`
--
ALTER TABLE `indikator_news_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indikator_news_categories_sort_order_index` (`sort_order`),
  ADD KEY `indikator_news_categories_slug_index` (`slug`);

--
-- Indexes for table `indikator_news_posts`
--
ALTER TABLE `indikator_news_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indikator_news_posts_category_id_index` (`category_id`),
  ADD KEY `indikator_news_posts_featured_index` (`featured`),
  ADD KEY `indikator_news_posts_published_at_index` (`published_at`),
  ADD KEY `indikator_news_posts_slug_index` (`slug`),
  ADD KEY `indikator_news_posts_user_id_index` (`user_id`);

--
-- Indexes for table `indikator_news_relations`
--
ALTER TABLE `indikator_news_relations`
  ADD PRIMARY KEY (`subscriber_id`,`categories_id`);

--
-- Indexes for table `indikator_news_subscribers`
--
ALTER TABLE `indikator_news_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_homepage_events`
--
ALTER TABLE `phamkhang_homepage_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_homepage_info`
--
ALTER TABLE `phamkhang_homepage_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_homepage_info_products`
--
ALTER TABLE `phamkhang_homepage_info_products`
  ADD PRIMARY KEY (`info_id`,`products_id`);

--
-- Indexes for table `phamkhang_homepage_partner`
--
ALTER TABLE `phamkhang_homepage_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_homepage_products`
--
ALTER TABLE `phamkhang_homepage_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_homepage_settings`
--
ALTER TABLE `phamkhang_homepage_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_news_categories`
--
ALTER TABLE `phamkhang_news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_news_news`
--
ALTER TABLE `phamkhang_news_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_news_posts`
--
ALTER TABLE `phamkhang_news_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_recruitment_details`
--
ALTER TABLE `phamkhang_recruitment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_recruitment_jobs`
--
ALTER TABLE `phamkhang_recruitment_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_recruitment_ranks`
--
ALTER TABLE `phamkhang_recruitment_ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_recruitment_rooms`
--
ALTER TABLE `phamkhang_recruitment_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phamkhang_recruitment_room_detail`
--
ALTER TABLE `phamkhang_recruitment_room_detail`
  ADD PRIMARY KEY (`room_id`,`detail_id`);

--
-- Indexes for table `pkleindienst_blogseries_series`
--
ALTER TABLE `pkleindienst_blogseries_series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pkleindienst_blogseries_series_title_unique` (`title`),
  ADD UNIQUE KEY `pkleindienst_blogseries_series_slug_unique` (`slug`);

--
-- Indexes for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Indexes for table `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `indikator_news_categories`
--
ALTER TABLE `indikator_news_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `indikator_news_posts`
--
ALTER TABLE `indikator_news_posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `indikator_news_subscribers`
--
ALTER TABLE `indikator_news_subscribers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `phamkhang_homepage_events`
--
ALTER TABLE `phamkhang_homepage_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `phamkhang_homepage_info`
--
ALTER TABLE `phamkhang_homepage_info`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `phamkhang_homepage_partner`
--
ALTER TABLE `phamkhang_homepage_partner`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `phamkhang_homepage_products`
--
ALTER TABLE `phamkhang_homepage_products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `phamkhang_homepage_settings`
--
ALTER TABLE `phamkhang_homepage_settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phamkhang_news_categories`
--
ALTER TABLE `phamkhang_news_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phamkhang_news_news`
--
ALTER TABLE `phamkhang_news_news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phamkhang_news_posts`
--
ALTER TABLE `phamkhang_news_posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phamkhang_recruitment_details`
--
ALTER TABLE `phamkhang_recruitment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `phamkhang_recruitment_jobs`
--
ALTER TABLE `phamkhang_recruitment_jobs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `phamkhang_recruitment_ranks`
--
ALTER TABLE `phamkhang_recruitment_ranks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `phamkhang_recruitment_rooms`
--
ALTER TABLE `phamkhang_recruitment_rooms`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `pkleindienst_blogseries_series`
--
ALTER TABLE `pkleindienst_blogseries_series`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
