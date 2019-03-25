-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 27, 2019 lúc 12:13 PM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wolf`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', '2019-02-15 03:44:36', '2019-02-15 03:44:36'),
(2, 1, '127.0.0.1', '2019-02-17 02:51:49', '2019-02-17 02:51:49'),
(3, 2, '127.0.0.1', '2019-02-18 22:18:55', '2019-02-18 22:18:55'),
(4, 2, '127.0.0.1', '2019-02-20 00:17:31', '2019-02-20 00:17:31'),
(5, 2, '127.0.0.1', '2019-02-22 00:33:21', '2019-02-22 00:33:21'),
(6, 2, '127.0.0.1', '2019-02-22 00:39:06', '2019-02-22 00:39:06'),
(7, 1, '127.0.0.1', '2019-02-22 00:47:31', '2019-02-22 00:47:31'),
(8, 2, '127.0.0.1', '2019-02-22 00:50:18', '2019-02-22 00:50:18'),
(9, 2, '127.0.0.1', '2019-02-22 02:41:45', '2019-02-22 02:41:45'),
(10, 1, '127.0.0.1', '2019-02-25 00:38:19', '2019-02-25 00:38:19'),
(11, 1, '127.0.0.1', '2019-02-25 00:40:10', '2019-02-25 00:40:10'),
(12, 1, '::1', '2019-02-25 03:59:02', '2019-02-25 03:59:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'Admin', 'Person', 'admin', 'admin@domain.tld', '$2y$10$jVAh2qB7O6g6I5gPMr5tPObzizC2PEWH1FdOvIGE611h.b/sGqezm', NULL, '$2y$10$uNH4vKvlBYyhrJgJGr0i5eI9WsoF9nrmgOwXX9/PtUX0WBZMzfWR2', NULL, '', 1, 2, NULL, '2019-02-25 03:59:01', '2019-02-15 03:39:57', '2019-02-25 03:59:01', NULL, 1),
(2, 'Manager', 'Page', 'manager', 'abc@abc.com', '$2y$10$Hkz0BeT85rdpGsz0kTCeAucmQY5N5w1cqqiCnKjuY88OR5PB1hXbK', NULL, '$2y$10$HmeR3Y846Z5930Ydxc.93.uzk.9XOegoen.HKO0.NG3NqL0AxkDFO', NULL, '', 0, 3, NULL, '2019-02-22 02:41:45', '2019-02-18 22:18:35', '2019-02-22 02:41:45', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2019-02-15 03:39:57', '2019-02-15 03:39:57', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":\"50\",\"configuration\":{\"title\":\"Welcome\",\"ocWidgetWidth\":6,\"ocWidgetNewRow\":null}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":\"60\",\"configuration\":{\"title\":\"System status\",\"ocWidgetWidth\":6,\"ocWidgetNewRow\":null}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":\"70\",\"configuration\":{\"title\":\"Website\",\"ocWidgetWidth\":4,\"ocWidgetNewRow\":null}}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2019-02-15 03:39:57', '2019-02-15 03:39:57'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2019-02-15 03:39:57', '2019-02-15 03:39:57'),
(3, 'Manager', '', 'Quản lý trang chủ đầy đủ quyền', '{\"indikator.news.posts\":\"1\",\"recruitment.full\":\"1\",\"media.manage_media\":\"1\",\"backend.manage_branding\":\"1\"}', 0, '2019-02-18 22:15:20', '2019-02-22 02:39:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL),
(2, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL),
(3, 2, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cms_theme_data`
--

INSERT INTO `cms_theme_data` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(1, 'responsiv-clean', '{\"site_name\":\"October CMS\",\"site_motto\":\"Get back to basics\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/\",\"twitter_url\":\"https:\\/\\/www.twitter.com\\/\"}', '2019-02-15 03:52:42', '2019-02-15 03:52:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `deferred_bindings`
--

INSERT INTO `deferred_bindings` (`id`, `master_type`, `master_field`, `slave_type`, `slave_id`, `session_key`, `is_bind`, `created_at`, `updated_at`) VALUES
(1, 'RainLab\\Blog\\Models\\Post', 'featured_images', 'System\\Models\\File', '1', 'AfavnPDJOL1smuaFF0S2Is9wFprvJ9jbvMO8mRVP', 1, '2019-02-16 08:18:53', '2019-02-16 08:18:53'),
(2, 'RainLab\\Blog\\Models\\Post', 'content_images', 'System\\Models\\File', '2', 'AfavnPDJOL1smuaFF0S2Is9wFprvJ9jbvMO8mRVP', 1, '2019-02-16 08:20:03', '2019-02-16 08:20:03'),
(3, 'RainLab\\Blog\\Models\\Post', 'content_images', 'System\\Models\\File', '3', 'LMyFbhGNa9m01NBr3BQ2qBlM06ZmJZvoaDSgodOy', 1, '2019-02-16 19:24:39', '2019-02-16 19:24:39'),
(4, 'RainLab\\Blog\\Models\\Post', 'content_images', 'System\\Models\\File', '4', 'LMyFbhGNa9m01NBr3BQ2qBlM06ZmJZvoaDSgodOy', 1, '2019-02-16 19:24:50', '2019-02-16 19:24:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `indikator_news_categories`
--

CREATE TABLE `indikator_news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hidden` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `indikator_news_categories`
--

INSERT INTO `indikator_news_categories` (`id`, `name`, `slug`, `content`, `image`, `hidden`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Tin HOCMAI', 'tin-hocmai', '', '', '2', '1', 1, '2019-02-17 03:01:11', '2019-02-17 03:01:11'),
(2, 'Tin báo chí', 'tin-bao-chi', '', '', '2', '1', 2, '2019-02-17 03:01:21', '2019-02-17 03:01:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `indikator_news_newsletter_logs`
--

CREATE TABLE `indikator_news_newsletter_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED DEFAULT NULL,
  `subscriber_id` int(10) UNSIGNED DEFAULT NULL,
  `queued_at` datetime NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `viewed_at` datetime DEFAULT NULL,
  `clicked_at` datetime DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `indikator_news_posts`
--

CREATE TABLE `indikator_news_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introductory` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `statistics` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` smallint(6) NOT NULL DEFAULT '2',
  `last_send_at` datetime DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `enable_newsletter_content` tinyint(1) NOT NULL DEFAULT '0',
  `newsletter_content` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `read_most` int(11) NOT NULL DEFAULT '0',
  `hot_news` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `indikator_news_posts`
--

INSERT INTO `indikator_news_posts` (`id`, `title`, `slug`, `introductory`, `content`, `published_at`, `status`, `statistics`, `created_at`, `updated_at`, `image`, `featured`, `last_send_at`, `category_id`, `enable_newsletter_content`, `newsletter_content`, `user_id`, `tags`, `read_most`, `hot_news`) VALUES
(1, 'Ba nam sinh Mỹ mua hoa tặng nữ sinh toàn trường ngày Valentine', 'bai-test-noi-dung', '<p>Khoảng 270 nữ sinh và 70 nhân viên nữ của trường đã nhận được món quà đáng yêu trong ngày đặc biệt.&nbsp;</p>', '<p>Cử chỉ ngọt ngào của ba nam sinh ở trường trung học cơ sở Summit Trail, Olathe (Kansas, Mỹ) trong ngày Valentine đã chạm đến trái tim của nhiều người trên khắp cả nước. Các em đã tặng hoa cho mọi nữ sinh ở trường với mong muốn giúp các bạn trải qua một ngày lễ đáng nhớ, theo <em>KCTV News</em><span>&nbsp;ngày 15/2.&nbsp;</span></p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/valentine-1-2455-1550284263.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p>Một bức ảnh được đăng lên Facebook của nhà trường cho thấy ba nam sinh cười rạng rỡ trước những giỏ hoa cẩm chướng màu hồng tươi. Tổng cộng, khoảng 270 nữ sinh và 70 nhân viên nữ đã nhận được hoa.&nbsp;</p>\r\n\r\n<p>Hiệu trưởng trường Summit Trail, Sarah Guerrero, trả lời <em>USA Today</em><span>&nbsp;</span>rằng một trong ba cậu bé đã gặp cô và đề xuất ý tưởng từ vài tuần trước. Tristan Valentine, nam sinh lớp 8, cho biết em muốn \"mọi cô gái đều cảm thấy đặc biệt vào ngày hôm đó\".&nbsp;</p>\r\n\r\n<p>Do đó, Tristan đã cùng Kyan Rice (lớp 7) và Lincoln Holmes (lớp 6) biến ý tưởng thành hiện thực. Các em kêu gọi tài trợ và bỏ thêm tiền túi để mua hoa.&nbsp;</p>', '2019-02-12 16:00:00', '1', 0, '2019-02-17 03:02:06', '2019-02-25 19:49:40', '/uploaded-files/valentine-1-2455-1550284263.jpg', 2, NULL, 1, 0, '', 1, 'valentine', 13, 0),
(2, 'Học sinh Sài Gòn đề xuất bỏ xếp hạng trong lớp', 'bai-test-thu-2', '<p>Áp lực thành tích học tập, thi cử, các vấn đề về môi trường, nhà vệ sinh trường học được thiếu nhi bày tỏ với lãnh đạo thành phố.</p>', '<p>Sáng 16/2, tại chương trình lãnh đạo TP HCM gặp gỡ thiếu nhi xuân Kỷ Hợi 2019, em Ngô Triệu Vy (lớp 8, THCS Linh Trung, quận Thủ Đức) nói cần bỏ xếp hạng học sinh trong lớp học. Bởi theo nữ sinh, việc làm này khiến phụ huynh so bì thành tích con của mình với người khác, gia tặng việc chạy đua thành tích khiến áp lực của học sinh rất lớn.</p>\r\n\r\n<p>Việc xếp hạng trong lớp học đôi khi còn gây \"tác dụng ngược\" khi nhiều học sinh chán nản, không muốn học tập nữa. Vy cũng nêu thực tế nhiều bạn cùng trang lứa không được học hai buổi mỗi ngày, chất lượng học tập vì vậy mà giảm sút. Nhiều trường không gian rất chật hẹp, không có nơi chơi thể thao, phải chen chúc trong giờ ra chơi.</p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/ngo-trieu-vy-9474-1550300993.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>Trong khi đó, Võ Ngọc Thủy Tiên (học sinh THCS Nguyễn Văn Luông, quận 6) mong ngành giáo dục giảm tải áp lực cho chính các thầy cô. Tiên nêu thực tế, giáo viên đang bị áp lực thi đua, thành tích của họ phụ thuộc vào học lực của học sinh, lớp học nhiều hay ít học sinh giỏi.&nbsp;</p>\r\n\r\n<p>\"Khi lên lớp thầy cô bị áp lực chạy đua sẽ dồn nén kiến thức, rất khó để học sinh tiếp thu, cả thầy và trò đều mệt mỏi căng thẳng\", nữ sinh nói.</p>\r\n\r\n<p>Cùng chủ đề này, Huỳnh Thị Thùy Dương (học sinh trường THCS Tân Tạo, quận Bình Tân) cho biết bài tập các môn học hiện rất nhiều, các em phải học từ sáng đến chiều ở trường, tối về làm bài đến 22-23h mới được nghỉ ngơi.&nbsp;</p>\r\n\r\n<p>Dương còn phản ánh thực tế thiếu phòng thí nghiệm, thực hành ở trường. Việc đi thực tế ở các môn học còn hạn chế, chủ yếu chỉ học lý thuyết trên lớp.</p>\r\n\r\n<p>Nối tiếp ý kiến của Dương, Nguyễn Đạt Mẫn (học sinh THCS Lê Quý Đôn, quận Thủ Đức) cho biết học đến khuya nhưng buổi sáng các em phải học từ sớm (6h45). Do đó, Mẫn mong muốn được giãn thời gian học, buổi sáng học muộn hơn một chút để học sinh đỡ mệt mỏi.</p>\r\n\r\n<p>\"Cần cải thiện môi trường học tập, giảm số học sinh trong lớp. Hiện lớp học chúng em 50 học sinh là quá lớn, giáo viên không đủ thời gian quan tâm tới học sinh khi mỗi tiết chỉ là 45 phút\", Mẫn bày tỏ.</p>\r\n\r\n<p>Với chủ đề chính của buổi gặp gỡ \"Học sinh thành phố chung tay bảo vệ môi trường\", nhiều học sinh đã chia sẻ những câu chuyện chưa tốt trong việc bảo vệ môi trường, phân loại rác thải ở địa phương, chất lượng <a href=\"https://vnexpress.net/giao-duc/hoc-sinh-am-anh-boi-nha-ve-sinh-truong-hoc-3814836.html\">nhà vệ sinh<span>&nbsp;</span></a>trường học.</p>\r\n\r\n<p>Đồng Vân Anh (học sinh THCS Trung Lập, huyện Củ Chi) cho biết rác thải được đốt ngay trong trường, xe thu gom rác thải hoạt động ngay trong giờ học. Học sinh do đó phải hít thở khói, mùi hôi bốc ra, ảnh hưởng đến sức khỏe.</p>\r\n\r\n<p>Vũ Đình Thi (THCS Cần Thạnh, huyện Cần Giờ) lại bức xúc khi bãi biển nơi nam sinh ở có màu nước đen, bốc mùi do người dân, du khách vứt rác, bao nylon bữa bãi. Học sinh này còn phản ánh tình trạng lấn biển gây mất cảnh quan thiên nhiên.</p>\r\n\r\n<p>Nhiều học sinh ở các huyện ngoại thành cho biết, sở dĩ rác thải bừa bãi là do mật độ thùng rác thưa thớt, người dân muốn vứt rác đúng chỗ cũng khó. Ngoài ra, nhà vệ sinh trường học ở các địa phương này đã xuống cấp, rất hôi, ảnh hưởng khá lớn đến việc sinh hoạt ở trường.</p>', '2019-02-11 01:46:00', '1', 0, '2019-02-17 06:35:06', '2019-02-26 21:05:11', '/uploaded-files/ngo-trieu-vy-9474-1550300993.jpg', 1, NULL, 1, 0, '', 1, 'Ý kiến học sinh', 5, 1),
(3, 'Điều chỉnh tỷ lệ điểm thi và học bạ, học sinh đỗ tốt nghiệp có giảm?', 'djieu-chinh-ty-le-djiem-thi-va-hoc-ba-hoc-sinh-djo-tot-nghiep-co-giam', '<p>Một điều chỉnh quan trọng trong kỳ thi THPT quốc gia 2019 là tỷ lệ điểm thi trong xét tốt nghiệp lên tới 70%, kết quả trung bình các môn học lớp 12 chỉ chiếm 30%</p>', '<p>Thầy Trần Thanh Sơn, giáo viên dạy Toán một trường THPT ở Hà Nội, cho rằng việc điều chỉnh tỷ lệ điểm thi lên 70% là phù hợp. Bởi có như vậy, học sinh mới có kế hoạch học tập nghiêm túc ở tất cả môn thi, đồng thời việc này sẽ có tác động một phần đến điều chỉnh điểm học bạ của học sinh.<span>&nbsp;</span></p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p>Ông Đào Tuấn Đạt, Hiệu trưởng trường THPT Anhxtanh (Hà Nội), cho biết sau khi có điều chỉnh của Bộ GD&amp;ĐT, trường vừa có kế hoạch tăng thời lượng ôn tập các môn học cho học sinh lên gấp đôi đồng thời có bảng tính toán để học sinh tự biết và nỗ lực.<span>&nbsp;</span></p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p>Ông Đạt ví dụ với cách tính như năm nay, một học sinh có điểm tổng kết trung bình là 7,5 thì điểm thi THPT quốc gia trung bình các môn phải đạt 3,93 điểm mới đỗ.<span>&nbsp;</span></p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p>Tương tự, học sinh có điểm tổng kết trung bình môn học là 7,6, điểm thi THPT quốc gia trung bình các môn phải đạt 3,89. Những em có điểm tổng kết 9,9 hoặc 10, điểm thi trung bình các môn cũng phải đạt 2,9 đến 3 điểm.</p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/img-detail.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>\r\n	<br>Tuy nhiên, ông Dong cũng cho rằng chỉ nên lấy điểm học bạ để xem học sinh học khá, tốt môn nào để hướng nghiệp, phân luồng đi học nghề, học ĐH sẽ phù hợp hơn xét tốt nghiệp. Bởi sau 12 năm học, không nhất thiết phải có hình thức nào đó để siết việc cấp bằng tốt nghiệp cho học sinh vì bằng tốt nghiệp không có ý nghĩa trong định hướng nghề nghiệp. Sau đó, học sinh vẫn phải đi học ngành, nghề nào đó mới có thể đi làm việc.</p>', '2019-02-06 02:45:00', '1', 0, '2019-02-17 07:39:33', '2019-02-18 09:36:32', '/uploaded-files/img-detail.jpg', 1, NULL, 1, 0, '', 1, 'Bí quyết học tập', 1, 0),
(4, 'Câu quan trọng phụ huynh nên hỏi trẻ sau khi đi học về', 'cau-quan-trong-phu-huynh-nen-hoi-tre-sau-khi-dji-hoc-ve', '<p>Khi hỏi \"Hôm nay con đã đối xử tốt với ai?\", bạn đang nuôi dưỡng sự tử tế bên trong mỗi đứa trẻ.</p>', '<p><em>Tác giả Christine Organ chia sẻ trên Scary Mommy bí quyết dạy con đơn giản mà hữu hiệu.</em></p>\r\n\r\n<p>Mỗi buổi chiều, khi lũ trẻ nhà tôi đi học về, tôi đều hỏi chúng một câu giống nhau: \"Hôm nay con đã đối xử tốt với ai nào?\".</p>\r\n\r\n<p>Đôi khi, các con sẽ suy nghĩ rất lâu và cẩn thận, cuối cùng trả lời rằng chúng đối xử tốt với cô giáo, bởi không ai bị nhắc nhở vì tội nói chuyện riêng trong giờ học. Những lần khác, chúng thi nhau kể về hành động tử tế đã làm trong ngày:</p>\r\n\r\n<p>\"Con đã làm Joey cười ạ\".</p>\r\n\r\n<p>\"Ben trông có vẻ buồn vào giờ ăn trưa nên con đã ngồi cạnh bạn ấy\".</p>\r\n\r\n<p>\"Con giúp Josie nhặt đồ khi bạn ấy làm rơi\".</p>\r\n\r\n<p>Hoặc cũng có thể là sự tử tế người khác dành cho mình:</p>\r\n\r\n<p>\"Ryan đưa con đến phòng y tế vì con bị bóng đập vào mặt trong lúc chơi\".</p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/cau-hoi-danh-cho-tre-4398-1550370091.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>Thi thoảng, tôi hỏi một số câu khác để hiểu rõ hơn về một ngày học tập của con ở trường: \"Con ngồi ăn trưa với ai?\", \"Con có bài tập về nhà không?\", \"Bài kiểm tra toán sao rồi con?\".</p>\r\n\r\n<p>Tuy nhiên, những câu hỏi này không quan trọng lắm, ít nhất là so với câu hỏi \"Con đã đối xử tốt với ai?\". Bởi vì đối với tôi, sự tử tế có ý nghĩa nhiều hơn bài tập về nhà hay bài kiểm tra toán.&nbsp;</p>\r\n\r\n<p>Bạn thử nghĩ xem, quá trình trưởng thành thật khó khăn. Làm cha mẹ thật khó khăn. Cuộc sống này vốn không hề dễ dàng. Ít nhất điều chúng ta có thể làm là sống tử tế với nhau. Mỗi khi nhìn thấy con đối xử tốt với người khác, hoặc chứng kiến chúng được người khác đối xử tốt, lòng tôi tràn ngập niềm vui sướng.&nbsp;</p>\r\n\r\n<p>Các con tôi không phải học sinh xuất sắc, tôi cũng không chắc liệu chúng có đủ điều kiện tham dự lớp \"nâng cao\" nào trong tương lai. Nhưng bạn biết sao không? Tôi thực sự không quan tâm đến điều đó.&nbsp;</p>\r\n\r\n<p>Năm ngoái, một phụ huynh từng kể với tôi về lần con trai tôi giúp đỡ con cô ấy, trái tim tôi bỗng dâng lên niềm tự hào khó tả, theo cách mà không điểm số học tập hay thành tích thể thao nào có thể mang lại.</p>\r\n\r\n<p>Tối hôm đó, khi tôi khen con là một người bạn tốt, ánh mắt nó cho tôi biết nó cũng cảm nhận được điều tương tự.&nbsp;</p>', '2019-02-11 03:50:00', '1', 2, '2019-02-17 07:42:00', '2019-02-25 19:49:51', '/uploaded-files/cau-hoi-danh-cho-tre-4398-1550370091.png', 1, NULL, 1, 0, '', 1, 'Giáo dục', 8, 0),
(5, 'Cuộc chiến biên giới phía Bắc sẽ có vị trí xứng đáng trong sách giáo khoa', 'cuoc-chien-bien-gioi-phia-bac-se-co-vi-tri-xung-djang-trong-sach-giao-khoa', '<h2>Cuộc chiến bảo vệ biên giới Tây Nam, phía Bắc, chủ quyền biển Đông được tóm lược ở sách sử lớp 9 và chi tiết trong sách sử lớp 12.</h2>', '<p>Sáng 15/2, tại hội thảo quốc gia kỷ niệm 40 năm cuộc chiến bảo vệ biên giới phía Bắc, GS Phạm Hồng Tung, Đại học Quốc gia Hà Nội khẳng định, chương trình giáo dục phổ thông mới sẽ viết chi tiết về cuộc chiến tranh bảo vệ biên giới Tây Nam và phía Bắc. Các cuộc chiến có ý nghĩa rất quan trọng trong lịch sử Việt Nam hiện đại.</p>\r\n\r\n<p>\"Tuy nhiên, cũng giống như cuộc chiến tranh bảo vệ biên giới Tây Nam, cuộc chiến tranh biên giới phía Bắc đến nay chưa được nghiên cứu và trình bày đầy đủ trên các diễn đàn công khai ở Việt Nam, đặc biệt là trong chương trình giáo dục phổ thông các cấp\", ông nói.&nbsp;</p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/ong-Tung-9501-1550205915.jpg\" style=\"width: 638px; height: 435.103px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>Trong khi giới trẻ Việt Nam ít được giáo dục một cách khoa học về cuộc chiến bảo vệ biên giới phía Bắc thì học sinh, thanh niên Trung Quốc từ lâu được tuyên truyền sai trái rằng đây là \"cuộc chiến tranh phản kích chống Việt Nam để tự vệ\" nhằm trừng phạt \"tiểu bá Việt Nam vong ân bội nghĩa, tay sai của Liên Xô\"...</p>\r\n\r\n<p>Dung lượng viết về hai cuộc chiến vệ quốc này giảm dần qua các lần tái bản sách giáo khoa. Ông Tung dẫn chứng, bản in cách đây 20 năm, chiến tranh biên giới Tây Nam được viết trong Lịch sử lớp 12 với 2 trang, 7 đoạn, 35 dòng. Vậy mà đến bản in năm 2018, giảm một nửa xuống còn 3 đoạn, 6 câu, 13 dòng.</p>\r\n\r\n<p>Tương tự, bản in Lịch sử lớp 12 năm 2001 có 3 đoạn, 24 dòng viết về chiến tranh biên giới phía Bắc. Nhưng đến bản in năm 2018 chỉ còn 2 đoạn, 4 câu, 11 dòng.</p>\r\n\r\n<p>Minh họa về sự sơ sài này, ông Tung trích dẫn nguyên văn nội dung: \"Hành động thù địch chống Việt Nam của tập đoàn Pol Pot được một số nhà lãnh đạo Trung Quốc lúc đó đồng tình ủng hộ. Họ còn có những hành động làm tổn hại đến tình hữu nghị của nhân dân hai nước như: cho quân khiêu khích dọc biên giới, dựng nên sự kiện nạn kiều, cắt viện trợ, rút chuyên gia. Nghiêm trọng hơn, sáng 17/2/1979, quân đội Trung Quốc huy động 32 sư đoàn, mở cuộc tấn công dọc biên giới nước ta từ Móng Cái (Quảng Ninh) đến Phong Thổ (Lai Châu).</p>\r\n\r\n<p>Để bảo vệ lãnh thổ Tổ quốc, quân dân ta, trực tiếp là quân dân sáu tỉnh biên giới phía Bắc, đã đứng lên chiến đấu. Đến ngày 18/3/1979, quân Trung Quốc rút khỏi nước ta\".</p>\r\n\r\n<p>Các cuộc đấu tranh bảo vệ chủ quyền, toàn vẹn lãnh thổ ở Biển Đông hầu như không được đề cập đến. \"Việc trình bày như vậy là quá sơ lược, không xứng với vị trí địa lý, ý nghĩa của giai đoạn lịch sử đó, không đáp ứng được nhu cầu nhận thức và phát triển năng lực của học sinh. Hơn nữa, trong những đoạn văn ngắn đó còn sai sót cả về nội dung lịch sử, hình thức trình bày\", ông Tung nói.</p>', '2019-02-12 07:10:00', '1', 0, '2019-02-17 09:36:29', '2019-02-25 19:49:56', '/uploaded-files/ong-Tung-9501-1550205915.jpg', 1, NULL, 1, 0, '', 1, 'Lich su', 2, 1),
(6, 'Tuyển sinh lớp 6 năm học 2018-2019 tại Hà Nội có gì mới?', 'tuyen-sinh-lop-6-nam-hoc-2018-2019-tai-ha-noi-co-gi-moi', '<p>VOV.VN - Thay vì chỉ xét hồ sơ như những năm trước, năm nay, quy định tuyển sinh lớp 6 của các trường chất lượng cao sẽ là thi tuyển kết hợp xét tuyển.</p>', '<p>Theo Sở GD-ĐT Hà Nội, năm học 2019-2020, các trường đầu cấp (mầm non, tiểu học, THCS) ở Hà Nội tiếp tục xét tuyển theo tuyến do UBND quận, huyện, thị xã quy định.</p>\r\n\r\n<p>Riêng đối với các trường THCS được UBND TP Hà Nội công nhận trường chất lượng cao, tuyển sinh vào lớp 6 không theo tuyến và số học sinh đăng ký vượt quá chỉ tiêu sẽ được thực hiện theo phương thức xét tuyển hoặc xét tuyển kết hợp với kiểm tra, đánh giá năng lực.</p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/hs_gwaa.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p>Điểm trúng tuyển được tính bằng điểm xét tuyển cộng với điểm kiểm tra đánh giá năng lực (tính hệ số 2).</p>\r\n\r\n<p>Riêng kiểm tra, đánh giá năng lực, TP Hà Nội yêu cầu các quận, huyện, thị xã quy định bài kiểm tra, đánh giá năng lực. Điểm kiểm tra là tổng điểm các bài kiểm tra, đánh giá năng lực được tính theo thang điểm 10.</p>\r\n\r\n<p>Trong đó nội dung kiểm tra thuộc chương trình giáo dục tiểu học, chủ yếu nằm trong chương trình lớp 5 hiện hành. Hình thức kiểm tra là các trường cho học sinh làm bài trắc nghiệm khách quan hoặc trắc nghiệm khách quan kết hợp tự luận, trong đó đảm bảo yêu cầu bốn cấp độ nhận thức bao gồm: nhận biết, thông hiểu, vận dụng cấp độ thấp và vận dụng cấp độ cao. Thời gian làm bài tối đa 60 phút/ bài. Các trường lựa chọn thời gian kiểm tra, dánh giá năng lực hợp lý, sau đó báo cáo phòng GD-ĐT trình UBND quận, huyện, thị xã phê duyệt.</p>\r\n\r\n<p>Như vậy, sau nhiều năm tuyển sinh bằng phương thức xét tuyển hồ sơ, năm học 2019-2020 Trường THPT Chuyên Hà Nội -Amsterdam cũng như một số trường chất lượng cao, có số lượng học sinh đăng ký đầu vào cao hơn chỉ tiêu sẽ kết hợp xét tuyển và thi tuyển.</p>\r\n\r\n<p>Những năm học trước, do bị cấm tuyển sinh bằng thi tuyển, do đó các trường nói trên gặp nhiều khó khăn trong tuyển sinh, buộc phải xét tuyển dựa trên các tiêu chí đánh giá dựa vào hồ sơ, học bạ, thậm chí dùng đến tiêu chí phụ là các giải phưởng. Tuy nhiên, thực hiện tuyển sinh theo phương thức này không được phụ huynh và chuyên gia ủng hộ, bởi từ đó có thể nảy sinh tiêu cực trong việc “mua giải”...</p>', '2019-02-17 19:04:17', '1', 0, '2019-02-17 19:04:17', '2019-02-24 19:20:18', '/hs_gwaa.jpg', 1, NULL, 1, 0, '', 1, 'Tuyển sinh', 2, 1),
(7, 'Bộ GD&ĐT hướng dẫn thực hiện chương trình chuyên sâu các môn chuyên cấp THPT', 'bo-gddjt-hong-dan-thuc-hien-chng-trinh-chuyen-sau-cac-mon-chuyen-cap-thpt', '<p>GD&amp;TĐ - Bộ GD&amp;ĐT vừa có văn bản hướng dẫn các sở GD&amp;ĐT, các cơ sở giáo dục đại học có trường, khối THPT chuyên thực hiện chương trình chuyên sâu các môn chuyên cấp THPT.</p>', '<p>Theo đó, về mục tiêu: Chương trình chuyên sâu gồm các nội dung kiến thức, kỹ năng nhằm phát triển năng khiếu của học sinh đối với từng môn chuyên.</p>\r\n\r\n<p>Về chương trình, thời lượng giảng dạy: Đối với các môn chuyên Toán, Vật lí, Hóa học, Sinh học, Ngữ văn, Lịch sử, Địa lí, Tiếng Anh, Tiếng Nga, Tiếng Pháp, Tiếng Trung Quốc thực hiện theo chương trình nâng cao với thời lượng tăng thêm 50% số tiết theo quy định để thực hiện chương trình chuyên sâu. Đối với môn chuyên Tin học thực hiện theo chương trình chuẩn với thời lượng tăng thêm 50% số tiết theo quy định để thực hiện chương trình chuyên sâu.</p>\r\n\r\n<p>Về tài liệu dạy học: Đối với mỗi môn chuyên sử dụng sách giáo khoa theo chương trình quy định và tài liệu tham khảo được hướng dẫn cụ thể trong chương trình chuyên sâu.</p>\r\n\r\n<p>Về kế hoạch dạy học: Việc thực hiện chương trình chuyên sâu phải đảm bảo không làm ảnh hưởng đến kế hoạch giáo dục được quy định tại Chương trình giáo dục phổ thông.</p>\r\n\r\n<p>Việc đánh giá kết quả học tập của học sinh chuyên thực hiện theo Quy chế đánh giá, xếp loại học sinh THCS và THPT ban hành theo Quyết định số 40/2006/QĐ-BGD&amp;ĐT ngày 5/10/2006 của Bộ trưởng Bộ GD&amp;ĐT.</p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/hs_gwaa.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p>Theo đó, về mục tiêu: Chương trình chuyên sâu gồm các nội dung kiến thức, kỹ năng nhằm phát triển năng khiếu của học sinh đối với từng môn chuyên.</p>\r\n\r\n<p>Về chương trình, thời lượng giảng dạy: Đối với các môn chuyên Toán, Vật lí, Hóa học, Sinh học, Ngữ văn, Lịch sử, Địa lí, Tiếng Anh, Tiếng Nga, Tiếng Pháp, Tiếng Trung Quốc thực hiện theo chương trình nâng cao với thời lượng tăng thêm 50% số tiết theo quy định để thực hiện chương trình chuyên sâu. Đối với môn chuyên Tin học thực hiện theo chương trình chuẩn với thời lượng tăng thêm 50% số tiết theo quy định để thực hiện chương trình chuyên sâu.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>', '2019-02-17 19:07:29', '1', 1, '2019-02-17 19:07:29', '2019-02-22 00:04:08', '/hoc-sinh-chuyen-RRUX.jpg', 1, NULL, 1, 0, '', 1, 'Tuyển sinh', 1, 0),
(8, 'Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, i', 'form-builder-top-performing-plugin-october-cms-marketplace-added-august-2015-it-quickly-became-popul', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/qqqq.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>\r\n	<br>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '2019-02-12 06:55:00', '1', 1, '2019-02-17 23:43:10', '2019-02-22 00:08:43', '/qqqq.jpg', 1, NULL, 2, 0, NULL, 1, NULL, 5, 0),
(9, 'Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, i', 'form-builder-top-performing-plugin-october-cms-marketplace-added-august-2015-it-quickly-became-popul', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/qqqq.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '2019-02-17 03:50:00', '1', 1, '2019-02-17 23:44:25', '2019-02-22 00:08:43', '/qqqq.jpg', 1, NULL, 2, 0, NULL, 1, 'bao chi', 0, 0),
(10, 'Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, i', 'form-builder-top-performing-plugin-october-cms-marketplace-added-august-2015-it-quickly-became-popul', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/qqqq.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '2019-02-12 02:45:00', '1', 1, '2019-02-17 23:45:08', '2019-02-22 00:08:43', '/qqqq.jpg', 1, NULL, 2, 0, NULL, 1, 'phap luat', 0, 0),
(11, 'Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, i', 'form-builder-top-performing-plugin-october-cms-marketplace-added-august-2015-it-quickly-became-popul', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/qqqq.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '2019-02-09 02:40:00', '1', 1, '2019-02-17 23:46:06', '2019-02-22 00:08:43', '/qqqq.jpg', 1, NULL, 2, 0, NULL, 1, 'van hoa', 0, 0),
(12, 'adsdasdasdasdasddasd', 'form-builder-top-performing-plugin-october-cms-marketplace-added-august-2015-it-quickly-became-popul', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/qqqq.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '2019-02-16 01:45:00', '1', 1, '2019-02-17 23:47:04', '2019-02-22 00:08:43', '/qqqq.jpg', 1, NULL, 2, 0, NULL, 1, 'Nghe thuat', 0, 1),
(13, 'qqqqqqqqqqq015, iqqq', 'form-builder-top-performing-plugin-october-cms-marketplace-added-august-2015-it-quickly-became-popul', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/qqqq.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span>Form Builder is the top performing plugin on the October CMS marketplace. Added in August of 2015, it quickly became popular<span>&nbsp;</span></p>', '2019-02-04 00:40:00', '1', 1, '2019-02-17 23:47:53', '2019-02-22 00:08:43', '/qqqq.jpg', 2, NULL, 2, 0, NULL, 1, 'van hoc', 0, 1),
(14, 'IS chỉ còn kiểm soát 700 mét vuông đất tại Syria', 'chi-con-kiem-soat-700-met-vuong-djat-tai-syria', '<p>Tàn quân IS bị bao vây trong ngôi làng gần biên giới Syria - Iraq và đang tìm cách kháng cự đợt tấn công của dân quân người Kurd.</p>', '<p>\"Lãnh thổ do phiến quân Nhà nước Hồi giáo (IS) kiểm soát đã bị siết chặt, chúng đang co cụm trong khu vực có diện tích 700 mét vuông tại làng Baghouz gần biên giới Syria - Iraq. Phần lớn bộ đàm của IS cũng không còn hoạt động, các tay súng hiếm khi liên lạc được với nhau\", <em>AFP<span>&nbsp;</span></em>dẫn lời Mustefa Bali, phát ngôn viên Lực lượng Dân chủ Syria (SDF) được Mỹ hậu thuẫn, hôm nay cho biết.</p>\r\n\r\n<p>Phiến quân IS kháng cự bằng cách chặn các tuyến đường ra vào làng Baghouz, khiến hơn 2.000 dân thường không thể rời khỏi vòng nguy hiểm.</p>\r\n\r\n<p>\"Chúng đã bịt kín mọi lối đi. Phụ nữ và trẻ em đang trở thành lá chắn sống của IS. Đã hai ngày trôi qua mà không có ai xuất hiện tại điểm tập kết cho người dân sơ tán khỏi Baghouz\", Sean Ryan, phát ngôn viên liên quân chống IS dẫn đầu, cho biết.</p>\r\n\r\n<p>IS từng kiểm soát nhiều khu vực rộng lớn ở Syria và Iraq với khoảng 10 triệu dân. Tuy nhiên, nhóm khủng bố này đã hứng chịu nhiều thất bại liên tiếp trước các chiến dịch riêng rẽ của liên quân do Mỹ dẫn đầu và quân đội Syria được Nga hậu thuẫn, đánh mất các thành trì quan trọng tại Iraq và phải co cụm tại khu vực nhỏ ở đông Syria.</p>\r\n\r\n<p>Liên quân do Mỹ dẫn đầu đang nỗ lực yểm trợ SDF, với nòng cốt là dân quân người Kurd, truy quét tàn quân IS nhằm mục tiêu xóa bỏ hoàn toàn nhóm phiến quân trước khi lính Mỹ rút hết khỏi Syria theo lệnh Tổng thống Donald Trump.</p>\r\n\r\n<p><img src=\"http://khang.trangchu/storage/app/media/uploaded-files/is.jpg\" style=\"width: 893px; height: 300px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>\r\n\r\n<p>\"Lãnh thổ do phiến quân Nhà nước Hồi giáo (IS) kiểm soát đã bị siết chặt, chúng đang co cụm trong khu vực có diện tích 700 mét vuông tại làng Baghouz gần biên giới Syria - Iraq. Phần lớn bộ đàm của IS cũng không còn hoạt động, các tay súng hiếm khi liên lạc được với nhau\", <em>AFP<span>&nbsp;</span></em>dẫn lời Mustefa Bali, phát ngôn viên Lực lượng Dân chủ Syria (SDF) được Mỹ hậu thuẫn, hôm nay cho biết.</p>\r\n\r\n<p>Phiến quân IS kháng cự bằng cách chặn các tuyến đường ra vào làng Baghouz, khiến hơn 2.000 dân thường không thể rời khỏi vòng nguy hiểm.</p>\r\n\r\n<p>\"Chúng đã bịt kín mọi lối đi. Phụ nữ và trẻ em đang trở thành lá chắn sống của IS. Đã hai ngày trôi qua mà không có ai xuất hiện tại điểm tập kết cho người dân sơ tán khỏi Baghouz\", Sean Ryan, phát ngôn viên liên quân chống IS dẫn đầu, cho biết.</p>\r\n\r\n<p>IS từng kiểm soát nhiều khu vực rộng lớn ở Syria và Iraq với khoảng 10 triệu dân. Tuy nhiên, nhóm khủng bố này đã hứng chịu nhiều thất bại liên tiếp trước các chiến dịch riêng rẽ của liên quân do Mỹ dẫn đầu và quân đội Syria được Nga hậu thuẫn, đánh mất các thành trì quan trọng tại Iraq và phải co cụm tại khu vực nhỏ ở đông Syria.</p>\r\n\r\n<p>Liên quân do Mỹ dẫn đầu đang nỗ lực yểm trợ SDF, với nòng cốt là dân quân người Kurd, truy quét tàn quân IS nhằm mục tiêu xóa bỏ hoàn toàn nhóm phiến quân trước khi lính Mỹ rút hết khỏi Syria theo lệnh Tổng thống Donald Trump.</p>', '2019-02-06 04:56:00', '1', 0, '2019-02-18 08:22:58', '2019-02-18 23:50:35', '/is.jpg', 1, NULL, 2, 0, '', 1, 'IS', 11, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `indikator_news_relations`
--

CREATE TABLE `indikator_news_relations` (
  `subscriber_id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `indikator_news_subscribers`
--

CREATE TABLE `indikator_news_subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
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
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `hocmai_homepage_events`
--

CREATE TABLE `hocmai_homepage_events` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_homepage_events`
--

INSERT INTO `hocmai_homepage_events` (`id`, `title`, `address`, `start_date`, `end_date`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Hiến máu nhân đạo', 'Tầng 4 25T2 Nguyễn Thị Thập', '2019-02-20 07:12:57', '2019-02-23 07:12:59', '', '2019-02-27 00:13:03', '2019-02-27 00:13:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_homepage_info`
--

CREATE TABLE `hocmai_homepage_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sub` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_homepage_info`
--

INSERT INTO `hocmai_homepage_info` (`id`, `title`, `content`, `image`, `status`, `created_at`, `updated_at`, `slug`, `title_sub`) VALUES
(1, 'HỆ THỐNG GIÁO DỤC 123', 'Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm Hơn 10 năm', '/uploaded-files/an.jpeg', 1, '2019-02-21 18:44:23', '2019-02-21 21:36:42', '', 'HOCMAI'),
(2, 'TẦM NHÌN - SỨ MỆNH  GIÁ TRỊ CỐT LÕI', 'ẦM NHÌN - SỨ MỆNH  GIÁ TRỊ CỐT LÕITẦM NHÌNẦM NHÌN - SỨ MỆNH  GIÁ TRỊ CỐT LÕITẦM NHÌNẦM NHÌN - SỨ MỆNH  GIÁ TRỊ CỐT LÕITẦM NHÌNẦM NHÌN - SỨ MỆNH  GIÁ TRỊ CỐT LÕITẦM NHÌNẦM NHÌN - SỨ MỆNH  GIÁ ', '/uploaded-files/banner2.jpg', 1, '2019-02-21 18:49:12', '2019-02-21 21:19:22', '', ''),
(3, 'HOCMAI.VN - HỌC TRỰC TUYẾN THEO LỘ TRÌNH', 'HOCMAI.VN - HỌC TRỰC TUYẾN THEO LỘ TRÌNHHOCMAI.VNHOCMAI.VN - HỌC TRỰC TUYẾN THEO LỘ TRÌNHHOCMAI.VNHOCMAI.VN - HỌC TRỰC TUYẾN THEO LỘ TRÌNHHOCMAI.VNHOCMAI.VN - HỌC TRỰC TUYẾN THEO LỘ TRÌNHHOCM', '/uploaded-files/backgroundsection2.jpg', 2, '2019-02-21 18:50:33', '2019-02-21 21:19:36', '', ''),
(4, 'HỌC TẬP THÍCH ỨNG VÀ PHÁT TRIỂN NĂNG LỰC', 'HỌC TẬP THÍCH ỨNG VÀ PHÁT TRIỂN NĂNG LỰCHỌC TẬP THÍCH ỨNG VÀ PHÁT TRIỂN NĂNG LỰCHỌC TẬP THÍCH ỨNG VÀ PHÁT TRIỂN NĂNG LỰCHỌC TẬP THÍCH ỨNG VÀ PHÁT TRIỂN NĂNG LỰCHỌC TẬP THÍCH ỨNG VÀ PHÁT TR', '/uploaded-files/backgroundsection.png', 2, '2019-02-21 18:51:26', '2019-02-21 21:19:45', '', ''),
(5, 'Chương trình giáo dục 2', 'Chương trình giáo dục 2 Chương trình giáo dục 2 Chương trình giáo dục 2 Chương trình giáo dục 2 Chương trình giáo dục 2 Chương trình giáo dục 2', '/uploaded-files/banner2.jpg', 1, '2019-02-21 20:21:12', '2019-02-21 21:34:52', '', ''),
(6, 'Chương trình giáo dục học mãi', 'Chương trình giáo dục học mãiChương trình giáo dục học mãiChương trình giáo dục học mãiChương trình giáo dục học mãiChương trình giáo dục học mãiChương trình giáo dục học mãiChương trình giáo', '/uploaded-files/backgroundsection.png', 2, '2019-02-21 20:28:16', '2019-02-21 21:34:23', '', 'HOCMAI');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_homepage_info_products`
--

CREATE TABLE `hocmai_homepage_info_products` (
  `info_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_homepage_info_products`
--

INSERT INTO `hocmai_homepage_info_products` (`info_id`, `products_id`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_homepage_partner`
--

CREATE TABLE `hocmai_homepage_partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_homepage_partner`
--

INSERT INTO `hocmai_homepage_partner` (`id`, `name`, `url`, `image`) VALUES
(1, 'ĐỐi 1', 'https://vnexpress.net/', '/logo1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_homepage_products`
--

CREATE TABLE `hocmai_homepage_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_homepage_products`
--

INSERT INTO `hocmai_homepage_products` (`id`, `name`, `image`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm 1', '/is.jpg', 'https://vnexpress.net', '2019-02-25 20:39:06', '2019-02-25 20:39:06'),
(2, 'sản phẩm mới', '/qqqq.jpg', 'https://soundcloud.com', '2019-02-25 21:05:40', '2019-02-25 21:05:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_homepage_settings`
--

CREATE TABLE `hocmai_homepage_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zalo_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_homepage_settings`
--

INSERT INTO `hocmai_homepage_settings` (`id`, `logo`, `address`, `home_phone`, `mobile_phone`, `mail`, `fb_link`, `zalo_link`, `youtube_link`, `created_at`, `updated_at`) VALUES
(1, '/logo.png', 'Tầng 4, Tòa nhà 25T2, Đường Nguyễn Thị Thập, Phường Trung Hoà, Quận Cầu Giấy, Hà Nội.', '(024) 3519-0591', '+84 (24) 3519-0587', 'info@HOCMAI.edu.vn', '', '', '', '2019-02-26 19:06:59', '2019-02-26 19:06:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_news_categories`
--

CREATE TABLE `hocmai_news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_news_categories`
--

INSERT INTO `hocmai_news_categories` (`id`, `name`, `slug`) VALUES
(1, '123', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_news_news`
--

CREATE TABLE `hocmai_news_news` (
  `id` int(10) UNSIGNED NOT NULL,
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
-- Cấu trúc bảng cho bảng `hocmai_news_posts`
--

CREATE TABLE `hocmai_news_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_news_posts`
--

INSERT INTO `hocmai_news_posts` (`id`, `title`, `category_id`, `created_at`, `updated_at`) VALUES
(1, '12312312313', 1, '2019-02-19 09:47:34', '2019-02-19 09:47:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_recruitment_details`
--

CREATE TABLE `hocmai_recruitment_details` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_requirements` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entitlements` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slots` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deadline` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `room_id` int(11) DEFAULT NULL,
  `ranks_id` int(11) DEFAULT NULL,
  `jobs_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_recruitment_details`
--

INSERT INTO `hocmai_recruitment_details` (`id`, `name`, `slug`, `job_desc`, `job_requirements`, `job_position`, `entitlements`, `working_time`, `slots`, `work_experience`, `work_address`, `wage`, `deadline_type`, `contact`, `email`, `phone`, `created_at`, `updated_at`, `deadline`, `status`, `room_id`, `ranks_id`, `jobs_id`) VALUES
(7, NULL, NULL, '<p>12321</p>', '<p>321312</p>', 'hoc mai', '<p>12323</p>', '', '2', '1 năm', 'Nguyễn thị thập', '12321312', '', 'eqwe', 'qưeqe', 123123213, '2019-02-26 03:45:54', '2019-02-26 03:45:54', '2019-02-26 10:45:31', 1, 4, 5, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_recruitment_jobs`
--

CREATE TABLE `hocmai_recruitment_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_recruitment_jobs`
--

INSERT INTO `hocmai_recruitment_jobs` (`id`, `name`, `images`) VALUES
(1, 'Thiết kế', ''),
(2, 'Kế toán', ''),
(3, 'Ghi hinh', ''),
(4, 'TVTS', ''),
(5, 'lao Cong', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_recruitment_ranks`
--

CREATE TABLE `hocmai_recruitment_ranks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_recruitment_ranks`
--

INSERT INTO `hocmai_recruitment_ranks` (`id`, `name`, `slug`) VALUES
(4, 'Cộng tác viên', 'cong-tac-vien'),
(5, 'Nhân viên', 'nhan-vien'),
(6, 'Trưởng phòng', 'trong-phong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_recruitment_rooms`
--

CREATE TABLE `hocmai_recruitment_rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocmai_recruitment_rooms`
--

INSERT INTO `hocmai_recruitment_rooms` (`id`, `name`, `slug`) VALUES
(4, 'Phòng phần mềm', 'phong-phan-mem'),
(5, 'Phòng quảng cáo', 'phong-quang-cao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocmai_recruitment_room_detail`
--

CREATE TABLE `hocmai_recruitment_room_detail` (
  `room_id` int(11) NOT NULL,
  `detail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pkleindienst_blogseries_series`
--

CREATE TABLE `pkleindienst_blogseries_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`) VALUES
(1, NULL, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2019-02-19 09:52:01', 1, '2019-02-19 09:52:01', '2019-02-19 09:52:01', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_event_logs`
--



-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_files`
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
-- Cấu trúc bảng cho bảng `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-02-15 03:39:56', '2019-02-15 03:39:56'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-02-15 03:39:56', '2019-02-15 03:39:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
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
-- Cấu trúc bảng cho bảng `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
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
-- Cấu trúc bảng cho bảng `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '\"b4b79ec07b137e6c84605ac76f616781\"'),
(3, 'system', 'core', 'build', '\"446\"'),
(4, 'system', 'update', 'retry', '1551329038'),
(5, 'system', 'theme', 'history', '{\"Responsiv.Clean\":\"responsiv-clean\",\"Zwiebl.zwiebl_stellar\":\"zwiebl-zwiebl_stellar\"}'),
(6, 'cms', 'theme', 'active', '\"hoc-mai-frontend\"');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_plugin_history`
--



-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2019-02-15 03:39:56', 0, 0),
(3, 'RainLab.Builder', '1.0.23', '2019-02-15 03:46:51', 0, 0),
(4, 'AnandPatel.SeoExtension', '1.0.6', '2019-02-15 03:48:44', 0, 0),
(15, 'Indikator.News', '1.10.11', '2019-02-18 23:49:14', 0, 0),
(18, 'hocmai.News', '1.0.6', '2019-02-19 09:46:39', 0, 0),
(19, 'RainLab.Blog', '1.3.1', '2019-02-19 09:52:02', 0, 0),
(21, 'hocmai.Recruitment', '1.0.14', '2019-02-27 04:05:17', 0, 0),
(22, 'hocmai.Homepage', '1.0.16', '2019-02-27 00:06:29', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
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
-- Cấu trúc bảng cho bảng `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'rainlab_builder_settings', '{\"author_name\":\"Pham Khang\",\"author_namespace\":\"hocmai\"}'),
(2, 'backend_brand_settings', '{\"app_name\":\"HOCMAI ADMIN\",\"app_tagline\":\"Login\",\"primary_color\":\"#2980b9\",\"secondary_color\":\"#34495e\",\"accent_color\":\"#34495e\",\"menu_mode\":\"inline\",\"custom_css\":\"\"}');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Chỉ mục cho bảng `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Chỉ mục cho bảng `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Chỉ mục cho bảng `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Chỉ mục cho bảng `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Chỉ mục cho bảng `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Chỉ mục cho bảng `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Chỉ mục cho bảng `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `indikator_news_categories`
--
ALTER TABLE `indikator_news_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indikator_news_categories_sort_order_index` (`sort_order`),
  ADD KEY `indikator_news_categories_slug_index` (`slug`);

--
-- Chỉ mục cho bảng `indikator_news_newsletter_logs`
--
ALTER TABLE `indikator_news_newsletter_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `indikator_news_posts`
--
ALTER TABLE `indikator_news_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indikator_news_posts_category_id_index` (`category_id`),
  ADD KEY `indikator_news_posts_featured_index` (`featured`),
  ADD KEY `indikator_news_posts_published_at_index` (`published_at`),
  ADD KEY `indikator_news_posts_slug_index` (`slug`),
  ADD KEY `indikator_news_posts_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `indikator_news_relations`
--
ALTER TABLE `indikator_news_relations`
  ADD PRIMARY KEY (`subscriber_id`,`categories_id`);

--
-- Chỉ mục cho bảng `indikator_news_subscribers`
--
ALTER TABLE `indikator_news_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_homepage_events`
--
ALTER TABLE `hocmai_homepage_events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_homepage_info`
--
ALTER TABLE `hocmai_homepage_info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_homepage_info_products`
--
ALTER TABLE `hocmai_homepage_info_products`
  ADD PRIMARY KEY (`info_id`,`products_id`);

--
-- Chỉ mục cho bảng `hocmai_homepage_partner`
--
ALTER TABLE `hocmai_homepage_partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_homepage_products`
--
ALTER TABLE `hocmai_homepage_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_homepage_settings`
--
ALTER TABLE `hocmai_homepage_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_news_categories`
--
ALTER TABLE `hocmai_news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_news_news`
--
ALTER TABLE `hocmai_news_news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_news_posts`
--
ALTER TABLE `hocmai_news_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_recruitment_details`
--
ALTER TABLE `hocmai_recruitment_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_recruitment_jobs`
--
ALTER TABLE `hocmai_recruitment_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_recruitment_ranks`
--
ALTER TABLE `hocmai_recruitment_ranks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_recruitment_rooms`
--
ALTER TABLE `hocmai_recruitment_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocmai_recruitment_room_detail`
--
ALTER TABLE `hocmai_recruitment_room_detail`
  ADD PRIMARY KEY (`room_id`,`detail_id`);

--
-- Chỉ mục cho bảng `pkleindienst_blogseries_series`
--
ALTER TABLE `pkleindienst_blogseries_series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pkleindienst_blogseries_series_title_unique` (`title`),
  ADD UNIQUE KEY `pkleindienst_blogseries_series_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Chỉ mục cho bảng `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Chỉ mục cho bảng `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Chỉ mục cho bảng `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Chỉ mục cho bảng `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Chỉ mục cho bảng `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Chỉ mục cho bảng `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Chỉ mục cho bảng `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Chỉ mục cho bảng `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Chỉ mục cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `indikator_news_categories`
--
ALTER TABLE `indikator_news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `indikator_news_newsletter_logs`
--
ALTER TABLE `indikator_news_newsletter_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `indikator_news_posts`
--
ALTER TABLE `indikator_news_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `indikator_news_subscribers`
--
ALTER TABLE `indikator_news_subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `hocmai_homepage_events`
--
ALTER TABLE `hocmai_homepage_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hocmai_homepage_info`
--
ALTER TABLE `hocmai_homepage_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hocmai_homepage_partner`
--
ALTER TABLE `hocmai_homepage_partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hocmai_homepage_products`
--
ALTER TABLE `hocmai_homepage_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hocmai_homepage_settings`
--
ALTER TABLE `hocmai_homepage_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hocmai_news_categories`
--
ALTER TABLE `hocmai_news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hocmai_news_news`
--
ALTER TABLE `hocmai_news_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hocmai_news_posts`
--
ALTER TABLE `hocmai_news_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hocmai_recruitment_details`
--
ALTER TABLE `hocmai_recruitment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `hocmai_recruitment_jobs`
--
ALTER TABLE `hocmai_recruitment_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hocmai_recruitment_ranks`
--
ALTER TABLE `hocmai_recruitment_ranks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hocmai_recruitment_rooms`
--
ALTER TABLE `hocmai_recruitment_rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `pkleindienst_blogseries_series`
--
ALTER TABLE `pkleindienst_blogseries_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT cho bảng `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT cho bảng `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
