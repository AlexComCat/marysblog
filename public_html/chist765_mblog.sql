-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Авг 27 2018 г., 20:44
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chist765_mblog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--
-- Создание: Авг 17 2018 г., 18:38
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--
-- Создание: Авг 17 2018 г., 18:38
-- Последнее обновление: Авг 27 2018 г., 13:56
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 154, 'alex77237', 'oymvc28@gmail.com', '', '185.221.162.198', '2018-08-27 16:56:58', '2018-08-27 13:56:58', 'Здравствуйте, вы пишете статьи на сайты сами? Мы занимаемся восстановлением уникальных статьей, из удаленных из интернета сайтов. \r\nПредлагаем снабжать вас контентом. \r\nСтатьи раздаем бесплатно, переходите к нам - http://shoptxt.ru/content.php\r\nОтписаться от рассылки - http://shoptxt.ru/dell.php?dell=MARYSBLOG.RU', 0, '0', 'Opera/9.80 (Windows NT 5.1; U; ru) Presto/2.9.168 Version/11.51', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--
-- Создание: Авг 17 2018 г., 18:38
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--
-- Создание: Авг 17 2018 г., 18:38
-- Последнее обновление: Авг 27 2018 г., 17:23
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://marysblog.ru', 'yes'),
(2, 'home', 'http://marysblog.ru', 'yes'),
(3, 'blogname', 'Рифмы души', 'yes'),
(4, 'blogdescription', 'Авторский блог Марии Кондрашовой', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marysblog@yandex.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:83:\"E:\\WEB\\OpenServer\\domains\\marysblog/wp-content/themes/twentyseventeen/functions.php\";i:1;s:79:\"E:\\WEB\\OpenServer\\domains\\marysblog/wp-content/themes/twentyseventeen/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'marysblog', 'yes'),
(41, 'stylesheet', 'marysblog', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:9:{i:2;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:6;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:9;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'ru_RU', 'yes'),
(96, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:10:\"Поиск\";}i:4;a:1:{s:5:\"title\";s:10:\"Поиск\";}}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_key', ')_dD8ot/#J!>ealu7>u;]R$6.q&~xl%WtWtZDk0|#+8]JD)J^1`|a<=w$Axk,X!6', 'no'),
(109, 'nonce_salt', 'tpTEC^bVqeLws[im@tTLBTs$,M8$E@Bn?jR+jNyiV_>[Z+L~.!sY9MsQ|%ea,>2V', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'cron', 'a:5:{i:1535392736;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1535399936;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1535400248;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535452312;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533197674;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(127, 'auth_key', '.0*RZG0IXFsIriz6TxAl-Cm|2pFs/WNtgx3/dI)vjLWdE~TSaKtKan@yi>J.O6*2', 'no'),
(128, 'auth_salt', 'X(TM,6AJ4Q!H7`OSEbp?3]C.$-Z|X/3%B$>rE]yX0/aS@>VmxLbU{Y~9`:FF^?Fh', 'no'),
(129, 'logged_in_key', '_jg@EBQ}l*jgP^N2_T)!+nn-S-/Bd3I{[]C+iG8#g95H*--F6Qii_=]jE:IqO},W', 'no'),
(130, 'logged_in_salt', '}bL+wThi~v,jnO$m/$eD=4eZ]9e<77E!y#) bD>=idT<gW8G3^juM]OcXO>/uN_7', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(183, 'theme_mods_twentysixteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"social\";i:0;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527668585;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(185, 'current_theme', 'Marysblog', 'yes'),
(186, 'theme_switched', '', 'yes'),
(187, 'theme_switched_via_customizer', '', 'yes'),
(188, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(189, 'customize_stashed_theme_mods', 'a:1:{s:15:\"twentyseventeen\";a:6:{s:23:\"nav_menu_locations[top]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-1;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-05-29 16:36:36\";}s:26:\"nav_menu_locations[social]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-5;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-05-29 16:36:36\";}s:7:\"panel_1\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:30;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-05-29 16:36:36\";}s:7:\"panel_2\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:27;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-05-29 16:36:36\";}s:7:\"panel_3\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:29;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-05-29 16:36:36\";}s:7:\"panel_4\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:28;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-05-29 16:36:36\";}}}', 'no'),
(195, 'theme_mods_marysblog', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533195127;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(199, 'theme_mods_twentyfifteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(229, 'new_admin_email', 'marysblog@yandex.ru', 'yes'),
(264, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"marysblog@yandex.ru\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533394999;}', 'no'),
(267, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1535357534;s:7:\"checked\";a:1:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(297, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1535357534;s:7:\"checked\";a:1:{s:9:\"marysblog\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(299, 'theme_mods_marysblog/css', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534534915;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(390, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1535357532;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(440, 'category_children', 'a:0:{}', 'yes'),
(713, '_site_transient_timeout_theme_roots', '1535359334', 'no'),
(714, '_site_transient_theme_roots', 'a:1:{s:9:\"marysblog\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--
-- Создание: Авг 17 2018 г., 18:38
-- Последнее обновление: Авг 22 2018 г., 14:08
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(69, 26, '_customize_changeset_uuid', 'dd19d3d2-4596-4b0c-8dff-0dd742d2d39c'),
(83, 37, '_menu_item_type', 'custom'),
(84, 37, '_menu_item_menu_item_parent', '0'),
(85, 37, '_menu_item_object_id', '37'),
(86, 37, '_menu_item_object', 'custom'),
(87, 37, '_menu_item_target', ''),
(88, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 37, '_menu_item_xfn', ''),
(90, 37, '_menu_item_url', 'http://marysblog/'),
(115, 41, '_menu_item_type', 'custom'),
(116, 41, '_menu_item_menu_item_parent', '0'),
(117, 41, '_menu_item_object_id', '41'),
(118, 41, '_menu_item_object', 'custom'),
(119, 41, '_menu_item_target', ''),
(120, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 41, '_menu_item_xfn', ''),
(122, 41, '_menu_item_url', 'https://www.yelp.com'),
(123, 42, '_menu_item_type', 'custom'),
(124, 42, '_menu_item_menu_item_parent', '0'),
(125, 42, '_menu_item_object_id', '42'),
(126, 42, '_menu_item_object', 'custom'),
(127, 42, '_menu_item_target', ''),
(128, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 42, '_menu_item_xfn', ''),
(130, 42, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(131, 43, '_menu_item_type', 'custom'),
(132, 43, '_menu_item_menu_item_parent', '0'),
(133, 43, '_menu_item_object_id', '43'),
(134, 43, '_menu_item_object', 'custom'),
(135, 43, '_menu_item_target', ''),
(136, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 43, '_menu_item_xfn', ''),
(138, 43, '_menu_item_url', 'https://twitter.com/wordpress'),
(139, 44, '_menu_item_type', 'custom'),
(140, 44, '_menu_item_menu_item_parent', '0'),
(141, 44, '_menu_item_object_id', '44'),
(142, 44, '_menu_item_object', 'custom'),
(143, 44, '_menu_item_target', ''),
(144, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(145, 44, '_menu_item_xfn', ''),
(146, 44, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(147, 45, '_menu_item_type', 'custom'),
(148, 45, '_menu_item_menu_item_parent', '0'),
(149, 45, '_menu_item_object_id', '45'),
(150, 45, '_menu_item_object', 'custom'),
(151, 45, '_menu_item_target', ''),
(152, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(153, 45, '_menu_item_xfn', ''),
(154, 45, '_menu_item_url', 'mailto:wordpress@example.com'),
(170, 26, '_edit_lock', '1534332073:1'),
(182, 60, '_wp_attached_file', '2018/05/Dont_talk.jpg'),
(183, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:424;s:4:\"file\";s:21:\"2018/05/Dont_talk.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Dont_talk-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Dont_talk-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1514770239\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"42\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(184, 61, '_wp_attached_file', '2018/05/drink.jpg'),
(185, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:424;s:4:\"file\";s:17:\"2018/05/drink.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"drink-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"drink-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(186, 62, '_wp_attached_file', '2018/05/girl_2.jpg'),
(187, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:424;s:4:\"file\";s:18:\"2018/05/girl_2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"girl_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"girl_2-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5000\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"26\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 63, '_wp_attached_file', '2018/05/R.jpg'),
(189, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:13:\"2018/05/R.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"R-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"R-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 64, '_wp_attached_file', '2018/05/russia.jpg'),
(191, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:424;s:4:\"file\";s:18:\"2018/05/russia.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"russia-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"russia-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D7000\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"170\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:9:\"0.0015625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(192, 65, '_wp_attached_file', '2018/05/autor.png'),
(193, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:202;s:6:\"height\";i:202;s:4:\"file\";s:17:\"2018/05/autor.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"autor-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 66, '_wp_attached_file', '2018/05/birds.png'),
(195, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:62;s:4:\"file\";s:17:\"2018/05/birds.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 67, '_wp_attached_file', '2018/05/birdsFly.gif'),
(197, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:62;s:4:\"file\";s:20:\"2018/05/birdsFly.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 68, '_wp_attached_file', '2018/05/header_bg.jpg'),
(199, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:735;s:4:\"file\";s:21:\"2018/05/header_bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"header_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"header_bg-300x115.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"header_bg-768x294.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:294;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"header_bg-1024x392.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(200, 69, '_wp_attached_file', '2018/05/sun.png'),
(201, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:15:\"2018/05/sun.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 70, '_wp_attached_file', '2018/05/toTop.jpg'),
(203, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:70;s:6:\"height\";i:70;s:4:\"file\";s:17:\"2018/05/toTop.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 71, '_wp_attached_file', '2018/05/toTop.png'),
(205, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:164;s:6:\"height\";i:164;s:4:\"file\";s:17:\"2018/05/toTop.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"toTop-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 78, '_edit_last', '1'),
(223, 78, '_edit_lock', '1534354868:1'),
(225, 80, '_edit_last', '1'),
(226, 80, '_edit_lock', '1534941183:1'),
(228, 82, '_edit_last', '1'),
(229, 82, '_edit_lock', '1534941176:1'),
(231, 84, '_edit_last', '1'),
(232, 84, '_edit_lock', '1534940562:1'),
(234, 86, '_edit_last', '1'),
(235, 86, '_edit_lock', '1534941197:1'),
(241, 91, '_wp_trash_meta_status', 'publish'),
(242, 91, '_wp_trash_meta_time', '1532864840'),
(261, 26, '_edit_last', '1'),
(262, 98, '_wp_trash_meta_status', 'publish'),
(263, 98, '_wp_trash_meta_time', '1533195367'),
(280, 26, '_wp_page_template', 'page.php'),
(281, 108, '_edit_last', '1'),
(282, 108, '_edit_lock', '1534347604:1'),
(283, 110, '_edit_last', '1'),
(284, 110, '_edit_lock', '1534401584:1'),
(285, 112, '_edit_last', '1'),
(286, 112, '_edit_lock', '1534414399:1'),
(287, 114, '_edit_last', '1'),
(288, 114, '_edit_lock', '1534401608:1'),
(289, 116, '_edit_last', '1'),
(290, 116, '_edit_lock', '1534401619:1'),
(291, 120, '_edit_last', '1'),
(292, 120, '_edit_lock', '1534941204:1'),
(293, 121, '_wp_attached_file', '2018/08/quarrel.jpg'),
(294, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:19:\"2018/08/quarrel.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"quarrel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"quarrel-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon EOS 650D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(297, 124, '_edit_last', '1'),
(298, 124, '_edit_lock', '1534941211:1'),
(299, 125, '_wp_attached_file', '2018/08/alexa_exter.jpg'),
(300, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:359;s:4:\"file\";s:23:\"2018/08/alexa_exter.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"alexa_exter-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"alexa_exter-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(303, 78, '_wp_trash_meta_status', 'publish'),
(304, 78, '_wp_trash_meta_time', '1534355016'),
(305, 78, '_wp_desired_post_slug', '%d0%b2%d0%b0%d0%bc-%d0%b2-%d0%bc%d0%b0%d1%8f%d0%ba%d0%be%d0%b2%d1%81%d0%ba%d0%b8%d0%b9'),
(306, 128, '_edit_last', '1'),
(307, 128, '_edit_lock', '1534401469:1'),
(308, 136, '_edit_last', '1'),
(309, 136, '_edit_lock', '1534941218:1'),
(310, 137, '_wp_attached_file', '2018/08/p_romanova.jpg'),
(311, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:22:\"2018/08/p_romanova.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"p_romanova-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"p_romanova-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 139, '_edit_last', '1'),
(314, 139, '_edit_lock', '1534941223:1'),
(315, 140, '_wp_attached_file', '2018/08/he_love.jpg'),
(316, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:19:\"2018/08/he_love.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"he_love-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"he_love-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(318, 142, '_edit_last', '1'),
(319, 142, '_edit_lock', '1534946745:1'),
(320, 143, '_wp_attached_file', '2018/08/evtushenko.jpg'),
(321, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:22:\"2018/08/evtushenko.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"evtushenko-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"evtushenko-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 7D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(324, 145, '_edit_last', '1'),
(325, 145, '_edit_lock', '1534941230:1'),
(326, 146, '_wp_attached_file', '2018/08/quarrel_2.jpg'),
(327, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:465;s:4:\"file\";s:21:\"2018/08/quarrel_2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"quarrel_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"quarrel_2-300x218.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(328, 148, '_edit_last', '1'),
(329, 148, '_edit_lock', '1534497556:1'),
(330, 149, '_wp_attached_file', '2018/08/ways.jpg'),
(331, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:413;s:4:\"file\";s:16:\"2018/08/ways.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ways-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"ways-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5000\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"26\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(334, 151, '_edit_last', '1'),
(335, 151, '_edit_lock', '1534938999:1'),
(336, 152, '_wp_attached_file', '2018/08/vesnushki.jpg'),
(337, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:454;s:4:\"file\";s:21:\"2018/08/vesnushki.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vesnushki-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vesnushki-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(338, 154, '_edit_last', '1'),
(339, 154, '_edit_lock', '1534939069:1'),
(340, 155, '_wp_attached_file', '2018/08/man_woman.jpg'),
(341, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:330;s:4:\"file\";s:21:\"2018/08/man_woman.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"man_woman-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"man_woman-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 157, '_edit_last', '1'),
(345, 157, '_edit_lock', '1534941500:1'),
(346, 158, '_wp_attached_file', '2018/08/bar.jpg'),
(347, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:15:\"2018/08/bar.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bar-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bar-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 60D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 160, '_edit_last', '1'),
(350, 160, '_edit_lock', '1534938562:1'),
(351, 161, '_wp_attached_file', '2018/08/alcohol.jpg'),
(352, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:425;s:4:\"file\";s:19:\"2018/08/alcohol.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"alcohol-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"alcohol-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D700\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"55\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 163, '_edit_last', '1'),
(355, 163, '_edit_lock', '1534938089:1'),
(356, 164, '_wp_attached_file', '2018/08/love_read.jpg'),
(357, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:21:\"2018/08/love_read.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"love_read-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"love_read-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 7D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 166, '_edit_last', '1'),
(360, 166, '_edit_lock', '1534937879:1'),
(361, 167, '_wp_attached_file', '2018/08/monday.jpg'),
(362, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:18:\"2018/08/monday.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"monday-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"monday-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"100\";s:3:\"iso\";s:4:\"2500\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(364, 169, '_edit_last', '1'),
(365, 169, '_edit_lock', '1534937739:1'),
(366, 170, '_wp_attached_file', '2018/08/rich_boy.jpg'),
(367, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:425;s:4:\"file\";s:20:\"2018/08/rich_boy.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"rich_boy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"rich_boy-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"NIKON D4\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 172, '_edit_last', '1'),
(371, 172, '_edit_lock', '1534937731:1'),
(372, 173, '_wp_attached_file', '2018/08/marry.jpg'),
(373, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:17:\"2018/08/marry.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"marry-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"marry-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(377, 175, '_edit_last', '1'),
(378, 175, '_edit_lock', '1534940262:1'),
(379, 176, '_wp_attached_file', '2018/08/love.jpg'),
(380, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:16:\"2018/08/love.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"love-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"love-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"11\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D700\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(382, 178, '_edit_last', '1'),
(383, 178, '_edit_lock', '1534941464:1'),
(384, 179, '_wp_attached_file', '2018/08/svetlyacheck.jpg'),
(385, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:352;s:4:\"file\";s:24:\"2018/08/svetlyacheck.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"svetlyacheck-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"svetlyacheck-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(387, 182, '_edit_last', '1'),
(388, 182, '_edit_lock', '1534940314:1'),
(389, 183, '_wp_attached_file', '2018/08/boyfriend.jpg'),
(390, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:564;s:4:\"file\";s:21:\"2018/08/boyfriend.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"boyfriend-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"boyfriend-300x264.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon EOS 100D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(392, 185, '_wp_attached_file', '2018/08/stena.jpg'),
(393, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:17:\"2018/08/stena.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"stena-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"stena-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(395, 187, '_wp_attached_file', '2018/08/guy.jpg'),
(396, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:15:\"2018/08/guy.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"guy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"guy-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--
-- Создание: Авг 17 2018 г., 18:38
-- Последнее обновление: Авг 23 2018 г., 10:39
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(26, 1, '2018-05-29 19:37:31', '2018-05-29 16:37:31', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Home', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2018-08-15 13:58:31', '2018-08-15 10:58:31', '', 0, 'http://marysblog/?page_id=26', 0, 'page', '', 0),
(32, 1, '2018-05-29 19:37:31', '2018-05-29 16:37:31', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-05-29 19:37:31', '2018-05-29 16:37:31', '', 26, 'http://marysblog/2018/05/29/26-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-05-29 19:37:31', '2018-05-29 16:37:31', '', 'Главная страница', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2018-05-29 19:37:31', '2018-05-29 16:37:31', '', 0, 'http://marysblog/2018/05/29/%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0/', 0, 'nav_menu_item', '', 0),
(41, 1, '2018-05-29 19:37:31', '2018-05-29 16:37:31', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2018-05-29 19:37:31', '2018-05-29 16:37:31', '', 0, 'http://marysblog/2018/05/29/yelp/', 0, 'nav_menu_item', '', 0),
(42, 1, '2018-05-29 19:37:31', '2018-05-29 16:37:31', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-05-29 19:37:31', '2018-05-29 16:37:31', '', 0, 'http://marysblog/2018/05/29/facebook/', 1, 'nav_menu_item', '', 0),
(43, 1, '2018-05-29 19:37:31', '2018-05-29 16:37:31', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-05-29 19:37:31', '2018-05-29 16:37:31', '', 0, 'http://marysblog/2018/05/29/twitter/', 2, 'nav_menu_item', '', 0),
(44, 1, '2018-05-29 19:37:32', '2018-05-29 16:37:32', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-05-29 19:37:32', '2018-05-29 16:37:32', '', 0, 'http://marysblog/2018/05/29/instagram/', 3, 'nav_menu_item', '', 0),
(45, 1, '2018-05-29 19:37:32', '2018-05-29 16:37:32', '', 'E-mail', '', 'publish', 'closed', 'closed', '', 'e-mail', '', '', '2018-05-29 19:37:32', '2018-05-29 16:37:32', '', 0, 'http://marysblog/2018/05/29/e-mail/', 4, 'nav_menu_item', '', 0),
(60, 1, '2018-07-29 10:30:02', '2018-07-29 07:30:02', '', 'Dont_talk', '', 'inherit', 'open', 'closed', '', 'dont_talk', '', '', '2018-07-29 10:43:15', '2018-07-29 07:43:15', '', 86, 'http://marysblog/wp-content/uploads/2018/05/Dont_talk.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-07-29 10:30:29', '2018-07-29 07:30:29', '', 'drink', '', 'inherit', 'open', 'closed', '', 'drink', '', '', '2018-07-29 10:39:49', '2018-07-29 07:39:49', '', 78, 'http://marysblog/wp-content/uploads/2018/05/drink.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2018-07-29 10:30:29', '2018-07-29 07:30:29', '', 'girl_2', '', 'inherit', 'open', 'closed', '', 'girl_2', '', '', '2018-07-29 10:40:49', '2018-07-29 07:40:49', '', 80, 'http://marysblog/wp-content/uploads/2018/05/girl_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-07-29 10:30:29', '2018-07-29 07:30:29', '', 'R', '', 'inherit', 'open', 'closed', '', 'r', '', '', '2018-07-29 10:41:39', '2018-07-29 07:41:39', '', 82, 'http://marysblog/wp-content/uploads/2018/05/R.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-07-29 10:30:30', '2018-07-29 07:30:30', '', 'russia', '', 'inherit', 'open', 'closed', '', 'russia', '', '', '2018-07-29 10:42:21', '2018-07-29 07:42:21', '', 84, 'http://marysblog/wp-content/uploads/2018/05/russia.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-07-29 10:30:51', '2018-07-29 07:30:51', '', 'autor', '', 'inherit', 'open', 'closed', '', 'autor', '', '', '2018-07-29 10:30:51', '2018-07-29 07:30:51', '', 0, 'http://marysblog/wp-content/uploads/2018/05/autor.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2018-07-29 10:30:51', '2018-07-29 07:30:51', '', 'birds', '', 'inherit', 'open', 'closed', '', 'birds', '', '', '2018-07-29 10:30:51', '2018-07-29 07:30:51', '', 0, 'http://marysblog/wp-content/uploads/2018/05/birds.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2018-07-29 10:30:51', '2018-07-29 07:30:51', '', 'birdsFly', '', 'inherit', 'open', 'closed', '', 'birdsfly', '', '', '2018-07-29 10:30:51', '2018-07-29 07:30:51', '', 0, 'http://marysblog/wp-content/uploads/2018/05/birdsFly.gif', 0, 'attachment', 'image/gif', 0),
(68, 1, '2018-07-29 10:30:51', '2018-07-29 07:30:51', '', 'header_bg', '', 'inherit', 'open', 'closed', '', 'header_bg', '', '', '2018-07-29 10:30:51', '2018-07-29 07:30:51', '', 0, 'http://marysblog/wp-content/uploads/2018/05/header_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-07-29 10:30:52', '2018-07-29 07:30:52', '', 'sun', '', 'inherit', 'open', 'closed', '', 'sun', '', '', '2018-07-29 10:30:52', '2018-07-29 07:30:52', '', 0, 'http://marysblog/wp-content/uploads/2018/05/sun.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2018-07-29 10:30:52', '2018-07-29 07:30:52', '', 'toTop', '', 'inherit', 'open', 'closed', '', 'totop', '', '', '2018-07-29 10:30:52', '2018-07-29 07:30:52', '', 0, 'http://marysblog/wp-content/uploads/2018/05/toTop.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-07-29 10:30:52', '2018-07-29 07:30:52', '', 'toTop', '', 'inherit', 'open', 'closed', '', 'totop-2', '', '', '2018-07-29 10:30:52', '2018-07-29 07:30:52', '', 0, 'http://marysblog/wp-content/uploads/2018/05/toTop.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2018-07-29 10:39:51', '2018-07-29 07:39:51', '<div>\r\n<div>Вам, проживающим за оргией оргию,</div>\r\n<div>имеющим ванную и теплый клозет!</div>\r\n<div>Как вам не стыдно о представленных к Георгию</div>\r\n<div>вычитывать из столбцов газет?</div>\r\n<div></div>\r\n<div>Знаете ли вы, бездарные, многие,</div>\r\n<div>думающие нажраться лучше как,-</div>\r\n<div>может быть, сейчас бомбой ноги</div>\r\n<div>выдрало у Петрова поручика?..</div>\r\n<div></div>\r\n<div>Если он приведенный на убой,</div>\r\n<div>вдруг увидел, израненный,</div>\r\n<div>как вы измазанной в котлете губой</div>\r\n<div>похотливо напеваете Северянина!</div>\r\n<div></div>\r\n<div>Вам ли, любящим баб да блюда,</div>\r\n<div>жизнь отдавать в угоду?!</div>\r\n<div>Я лучше в баре ... буду</div>\r\n<div>подавать ананасную воду!</div>\r\n</div>\r\n<div></div>\r\n<div><img class=\"alignnone size-full wp-image-61\" src=\"http://marysblog/wp-content/uploads/2018/05/drink.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', 'Вам! (В. Маяковский)', '', 'trash', 'open', 'open', '', '%d0%b2%d0%b0%d0%bc-%d0%b2-%d0%bc%d0%b0%d1%8f%d0%ba%d0%be%d0%b2%d1%81%d0%ba%d0%b8%d0%b9__trashed', '', '', '2018-08-15 20:43:36', '2018-08-15 17:43:36', '', 0, 'http://marysblog/?p=78', 0, 'post', '', 0),
(79, 1, '2018-07-29 10:39:51', '2018-07-29 07:39:51', '<div>\r\n<div>Вам, проживающим за оргией оргию,</div>\r\n<div>имеющим ванную и теплый клозет!</div>\r\n<div>Как вам не стыдно о представленных к Георгию</div>\r\n<div>вычитывать из столбцов газет?</div>\r\n<div></div>\r\n<div>Знаете ли вы, бездарные, многие,</div>\r\n<div>думающие нажраться лучше как,-</div>\r\n<div>может быть, сейчас бомбой ноги</div>\r\n<div>выдрало у Петрова поручика?..</div>\r\n<div></div>\r\n<div>Если он приведенный на убой,</div>\r\n<div>вдруг увидел, израненный,</div>\r\n<div>как вы измазанной в котлете губой</div>\r\n<div>похотливо напеваете Северянина!</div>\r\n<div></div>\r\n<div>Вам ли, любящим баб да блюда,</div>\r\n<div>жизнь отдавать в угоду?!</div>\r\n<div>Я лучше в баре ... буду</div>\r\n<div>подавать ананасную воду!</div>\r\n</div>\r\n<div></div>\r\n<div><img class=\"alignnone size-full wp-image-61\" src=\"http://marysblog/wp-content/uploads/2018/05/drink.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', 'Вам! (В. Маяковский)', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-07-29 10:39:51', '2018-07-29 07:39:51', '', 78, 'http://marysblog/2018/07/29/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-07-29 10:40:52', '2018-07-29 07:40:52', 'Периодами откровения в душе\r\nМне хочется писать стихи,\r\nЧтоб как-нибудь выживать в тьме...\r\nИ в недоверии, и в лени признаваться\r\nСебе! Но это не совсем приятно...\r\nА может написать про бабочку, порхающую на цветке,\r\nРосой промокшей, ногами скользящей по траве.\r\nТой дочери моей,\r\nПытающейся поймать то улетающее чудо!\r\nИ пусть эта мечта осуществиться,\r\nПоявится девчонка – озорница,\r\nРадостью и смыслом для меня все озариться!\r\nИ буду я любить ее, как любит меня Бог.\r\n\r\n<img class=\"alignnone size-full wp-image-62\" src=\"http://marysblog/wp-content/uploads/2018/05/girl_2.jpg\" alt=\"\" width=\"640\" height=\"424\" />', '***', '', 'publish', 'open', 'open', '', '80', '', '', '2018-08-22 15:26:18', '2018-08-22 12:26:18', '', 0, 'http://marysblog/?p=80', 0, 'post', '', 0),
(81, 1, '2018-07-29 10:40:52', '2018-07-29 07:40:52', '<div>\r\n<div>Периодами откровения в душе</div>\r\n<div>Мне хочется писать стихи</div>\r\n<div>Чтоб как-нибудь выживать в тьме...</div>\r\n<div>И в недоверии, и в лени признаваться</div>\r\n<div>Себе! Но это не совсем приятно...</div>\r\n<div>А может написать про бабочку, порхающую на цветке,</div>\r\n<div>Росой промокшей, ногами скользящей по траве</div>\r\n<div>Той дочери моей,</div>\r\n<div>Пытающейся поймать то улетающее чудо!</div>\r\n<div>И пусть эта мечта осуществиться</div>\r\n<div>Появится девчонка - озорница</div>\r\n<div>Радостью и смыслом для меня все озариться!</div>\r\n<div>И буду я любить ее, как любит меня Бог.</div>\r\n</div>\r\n<div></div>\r\n<div><img class=\"alignnone size-full wp-image-62\" src=\"http://marysblog/wp-content/uploads/2018/05/girl_2.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', '***', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-07-29 10:40:52', '2018-07-29 07:40:52', '', 80, 'http://marysblog/2018/07/29/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-07-29 10:41:41', '2018-07-29 07:41:41', 'Я самой лучшей девушкой была\r\nТеперь Я - твой страх, твоя беда.\r\nКогда-то может обманула,\r\nЧто в сердце проникать не буду...\r\nИ месть была и лживые объятья,\r\nТогда не разбиралась в них, признаюсь.\r\nА вот сейчас перед тобой стою, тебе я каюсь!\r\nГодами осознать пыталась,\r\nЧто есть обида, а что боль...\r\nТебе стихи не посвящала,\r\nА вот сегодня прочитать изволь…\r\n\r\n<img class=\"alignnone size-full wp-image-63\" src=\"http://marysblog/wp-content/uploads/2018/05/R.jpg\" alt=\"\" width=\"640\" height=\"426\" />', 'Посвящается Р...', '', 'publish', 'open', 'open', '', '%d0%bf%d0%be%d1%81%d0%b2%d1%8f%d1%89%d0%b0%d0%b5%d1%82%d1%81%d1%8f-%d1%80', '', '', '2018-08-22 15:32:38', '2018-08-22 12:32:38', '', 0, 'http://marysblog/?p=82', 0, 'post', '', 0),
(83, 1, '2018-07-29 10:41:41', '2018-07-29 07:41:41', '<div>\r\n<div>Я самой лучшей девушкой была</div>\r\n<div>Теперь Я- твой страх, твоя беда</div>\r\n<div>Когда то может обманула</div>\r\n<div>Что в сердце проникать не буду...</div>\r\n<div>И месть была и лживые объятья</div>\r\n<div>Тогда не разбиралась в них, признаюсь</div>\r\n<div>А вот сейчас перед тобой стою, тебе я каюсь!!!</div>\r\n<div>Годами осознать пыталась</div>\r\n<div>Что есть обида а что боль...</div>\r\n<div>Тебе стихи не посвящала</div>\r\n<div>А, вот, сегодня, прочитать изволь</div>\r\n</div>\r\n<div></div>\r\n<div><img class=\"alignnone size-full wp-image-63\" src=\"http://marysblog/wp-content/uploads/2018/05/R.jpg\" alt=\"\" width=\"640\" height=\"426\" /></div>', 'Посвящается Р...', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-07-29 10:41:41', '2018-07-29 07:41:41', '', 82, 'http://marysblog/2018/07/29/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-07-29 10:42:23', '2018-07-29 07:42:23', 'Ты наша мать,\r\nПобитая монголом,\r\nВоспрянувшая при Петре…\r\nИмперией ты стала, подросла,\r\nНо вот тебе опять грозят расколом,\r\nФранцузы, турки, немцы…\r\nИ растерзать готовы на куски -\r\nЭти голодные страны-псы,\r\nНо ты опять затеплилась жизнью – рекой,\r\nВпереди был социалистический строй!\r\nИ говорят, что жили хорошо до 90-ых,\r\nИз танка бахнули, поголодали, разошлись…\r\nЗакон свой приняли…\r\nВыживали сыны твои как могли,\r\nИ рынки грабили, и земли покупали…\r\nТебя опять третировать пытается,\r\nАмериканский эшафот,\r\nНо ты опять воспрянешь, выживешь, восстанешь\r\nИ дашь достойнейший отпор!\r\n\r\n<div><img class=\"alignnone size-full wp-image-64\" src=\"http://chist765.beget.tech/wp-content/uploads/2018/05/russia.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', 'Россия', '', 'publish', 'open', 'open', '', '%d1%80%d0%be%d1%81%d1%81%d0%b8%d1%8f', '', '', '2018-08-22 15:22:41', '2018-08-22 12:22:41', '', 0, 'http://marysblog/?p=84', 0, 'post', '', 0),
(85, 1, '2018-07-29 10:42:23', '2018-07-29 07:42:23', '<div>\r\n<div>Ты наша мать,</div>\r\n<div>Побитая монголом,</div>\r\n<div>Воспрянувшая при Петре…</div>\r\n<div>Империей ты стала, подросла,</div>\r\n<div>Но вот тебе опять грозят расколом,</div>\r\n<div>Французы, турки, немцы…</div>\r\n<div>И растерзать готовы на куски -</div>\r\n<div>Эти голодные страны-псы,</div>\r\n<div>Но ты опять затеплилась жизнью – рекой,</div>\r\n<div>Впереди был социалистический строй!</div>\r\n<div>И говорят, что жили хорошо до 90-ых</div>\r\n<div>Из танка бахнули, поголодали, разошись…</div>\r\n<div>Закон свой приняли…</div>\r\n<div>Выживали сыны твои как могли,</div>\r\n<div>И рынки грабили, земли покупали…</div>\r\n<div>Тебя опять третировать пытается,</div>\r\n<div>Американский эшафот…</div>\r\n<div>Но ты опять воспрянешь, выживешь, восстанешь</div>\r\n<div>И дашь достойнейший отпор!</div>\r\n</div>\r\n<div></div>\r\n<div><img class=\"alignnone size-full wp-image-64\" src=\"http://marysblog/wp-content/uploads/2018/05/russia.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', 'Россия', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-07-29 10:42:23', '2018-07-29 07:42:23', '', 84, 'http://marysblog/2018/07/29/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-07-29 10:43:19', '2018-07-29 07:43:19', 'Мы о любви не говорим…\r\nИ за улыбкой боль скрываем,\r\nРешаем, думаем, гадаем,\r\nНо о любви не говорим…\r\nМы холод в разговоре пустим,\r\nИли кого-то оскорбим\r\nИ душу на замок закроем,\r\nНо о любви мы промолчим…\r\n\r\n<img class=\"alignnone size-full wp-image-60\" src=\"http://chist765.beget.tech/wp-content/uploads/2018/05/Dont_talk.jpg\" alt=\"\" width=\"640\" height=\"424\" />', 'Мы о любви не говорим', '', 'publish', 'open', 'open', '', '%d0%bc%d1%8b-%d0%be-%d0%bb%d1%8e%d0%b1%d0%b2%d0%b8-%d0%bd%d0%b5-%d0%b3%d0%be%d0%b2%d0%be%d1%80%d0%b8%d0%bc', '', '', '2018-08-22 15:16:16', '2018-08-22 12:16:16', '', 0, 'http://marysblog/?p=86', 0, 'post', '', 0),
(87, 1, '2018-07-29 10:43:19', '2018-07-29 07:43:19', '<div>\r\n<div>Мы о любви не говорим…</div>\r\n<div>И за улыбкой, боль скрываем</div>\r\n<div>Решаем, думаем, гадаем…</div>\r\n<div>Но о любви не говорим…</div>\r\n<div>Мы холод в разговоре пустим</div>\r\n<div>Или кого то оскорбим…</div>\r\n<div>И душу на замок закроем</div>\r\n<div>Но о любви мы промолчим…</div>\r\n</div>\r\n<div></div>\r\n<div><img class=\"alignnone size-full wp-image-60\" src=\"http://marysblog/wp-content/uploads/2018/05/Dont_talk.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', 'Мы о любви не говорим', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-07-29 10:43:19', '2018-07-29 07:43:19', '', 86, 'http://marysblog/2018/07/29/86-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-07-29 14:47:20', '2018-07-29 11:47:20', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"meta-2\",\n                \"search-2\",\n                \"text-2\",\n                \"text-3\",\n                \"text-4\",\n                \"text-5\",\n                \"categories-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-1\": [\n                \"text-6\",\n                \"search-3\",\n                \"text-7\"\n            ],\n            \"sidebar-2\": [\n                \"text-8\"\n            ],\n            \"sidebar-3\": [\n                \"text-9\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 11:47:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d15c622-b62a-4ef1-896c-a443d603c974', '', '', '2018-07-29 14:47:20', '2018-07-29 11:47:20', '', 0, 'http://marysblog/2018/07/29/8d15c622-b62a-4ef1-896c-a443d603c974/', 0, 'customize_changeset', '', 0),
(92, 1, '2018-07-29 17:39:06', '2018-07-29 14:39:06', '<div>\n<div>Мы о любви не говорим…</div>\n<div>И за улыбкой, боль скрываем</div>\n<div>Решаем, думаем, гадаем…</div>\n<div>Но о любви не говорим…</div>\n<div>Мы холод в разговоре пустим</div>\n<div>Или кого то оскорбим…</div>\n<div>И душу на замок закроем</div>\n<div>Но о любви мы промолчим…</div>\n</div>\n<div><img class=\"alignnone size-full wp-image-60\" src=\"http://marysblog/wp-content/uploads/2018/05/Dont_talk.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', 'Мы о любви не говорим', '', 'inherit', 'closed', 'closed', '', '86-autosave-v1', '', '', '2018-07-29 17:39:06', '2018-07-29 14:39:06', '', 86, 'http://marysblog/2018/07/29/86-autosave-v1/', 0, 'revision', '', 0),
(93, 1, '2018-07-29 17:39:15', '2018-07-29 14:39:15', '<div>\r\n<div>Мы о любви не говорим…</div>\r\n<div>И за улыбкой, боль скрываем</div>\r\n<div>Решаем, думаем, гадаем…</div>\r\n<div>Но о любви не говорим…</div>\r\n<div>Мы холод в разговоре пустим</div>\r\n<div>Или кого то оскорбим…</div>\r\n<div>И душу на замок закроем</div>\r\n<div>Но о любви мы промолчим…</div>\r\n</div>\r\n<div><img class=\"alignnone size-full wp-image-60\" src=\"http://marysblog/wp-content/uploads/2018/05/Dont_talk.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', 'Мы о любви не говорим', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-07-29 17:39:15', '2018-07-29 14:39:15', '', 86, 'http://marysblog/2018/07/29/86-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-07-30 19:14:15', '2018-07-30 16:14:15', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Home', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2018-07-30 19:14:15', '2018-07-30 16:14:15', '', 26, 'http://marysblog/2018/07/30/26-autosave-v1/', 0, 'revision', '', 0),
(97, 1, '2018-07-30 19:25:37', '2018-07-30 16:25:37', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Home', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-30 19:25:37', '2018-07-30 16:25:37', '', 26, 'http://marysblog/2018/07/30/26-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-08-02 10:36:07', '2018-08-02 07:36:07', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"meta-2\",\n                \"search-2\",\n                \"text-2\",\n                \"text-3\",\n                \"text-4\",\n                \"text-5\",\n                \"categories-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-1\": [\n                \"text-6\",\n                \"search-3\",\n                \"text-7\"\n            ],\n            \"sidebar-2\": [\n                \"text-8\"\n            ],\n            \"sidebar-3\": [\n                \"text-9\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-02 07:36:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cbd37b06-0d53-484c-a397-22faae2a15e8', '', '', '2018-08-02 10:36:07', '2018-08-02 07:36:07', '', 0, 'http://marysblog/2018/08/02/cbd37b06-0d53-484c-a397-22faae2a15e8/', 0, 'customize_changeset', '', 0),
(108, 1, '2018-08-15 14:24:23', '2018-08-15 11:24:23', '', 'О любви', '', 'publish', 'closed', 'closed', '', 'love', '', '', '2018-08-15 14:24:23', '2018-08-15 11:24:23', '', 0, 'http://marysblog/?page_id=108', 0, 'page', '', 0),
(109, 1, '2018-08-15 14:24:23', '2018-08-15 11:24:23', '', 'О любви', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-08-15 14:24:23', '2018-08-15 11:24:23', '', 108, 'http://marysblog/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-08-15 18:45:14', '2018-08-15 15:45:14', '', 'О Родине', '', 'publish', 'closed', 'closed', '', 'homeland', '', '', '2018-08-15 18:45:14', '2018-08-15 15:45:14', '', 0, 'http://marysblog/?page_id=110', 0, 'page', '', 0),
(111, 1, '2018-08-15 18:45:14', '2018-08-15 15:45:14', '', 'О Родине', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2018-08-15 18:45:14', '2018-08-15 15:45:14', '', 110, 'http://marysblog/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-08-15 18:46:04', '2018-08-15 15:46:04', '', 'Друзьям', '', 'publish', 'closed', 'closed', '', 'friends', '', '', '2018-08-15 18:46:04', '2018-08-15 15:46:04', '', 0, 'http://marysblog/?page_id=112', 0, 'page', '', 0),
(113, 1, '2018-08-15 18:46:04', '2018-08-15 15:46:04', '', 'Друзьям', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-08-15 18:46:04', '2018-08-15 15:46:04', '', 112, 'http://marysblog/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-08-15 18:47:35', '2018-08-15 15:47:35', '', 'Размышления', '', 'publish', 'closed', 'closed', '', 'reflections', '', '', '2018-08-15 18:47:48', '2018-08-15 15:47:48', '', 0, 'http://marysblog/?page_id=114', 0, 'page', '', 0),
(115, 1, '2018-08-15 18:47:35', '2018-08-15 15:47:35', '', 'Размышления', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2018-08-15 18:47:35', '2018-08-15 15:47:35', '', 114, 'http://marysblog/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-08-15 18:48:21', '2018-08-15 15:48:21', '', 'Стихи любимых поэтов', '', 'publish', 'closed', 'closed', '', 'favorite_poets', '', '', '2018-08-15 18:50:32', '2018-08-15 15:50:32', '', 0, 'http://marysblog/?page_id=116', 0, 'page', '', 0),
(117, 1, '2018-08-15 18:48:21', '2018-08-15 15:48:21', '', 'Стихи любимых поэтов', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-08-15 18:48:21', '2018-08-15 15:48:21', '', 116, 'http://marysblog/116-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-08-15 18:49:14', '2018-08-15 15:49:14', '', 'Favorite_poets', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-08-15 18:49:14', '2018-08-15 15:49:14', '', 116, 'http://marysblog/116-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-08-15 18:50:02', '2018-08-15 15:50:02', '', 'Стихи любимых поэтов', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-08-15 18:50:02', '2018-08-15 15:50:02', '', 116, 'http://marysblog/116-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-08-15 20:17:56', '2018-08-15 17:17:56', 'О да ты крут противоречием,\r\nСвоим бытовским красноречием.\r\nОбидеть и подставить - для тебя,\r\nНе против тех играешь,\r\nТы не поймешь тебе же все равно.\r\nКому ты врешь?\r\nТы в кучку наркоманов, алкашей\r\nВойдешь и будешь богом. Ахаха!\r\nБыть может также склеишь ласты,\r\nНе надо покоряться тем соблазнам\r\nИ считаться нормалью мира.\r\nБудь ты просто Человеком\r\nИ не делай из наркомана кумира.\r\n\r\n<img class=\"alignnone size-full wp-image-121\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/quarrel.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'publish', 'open', 'open', '', '120-2', '', '', '2018-08-22 15:14:02', '2018-08-22 12:14:02', '', 0, 'http://marysblog.loc/?p=120', 0, 'post', '', 0),
(121, 1, '2018-08-15 20:17:41', '2018-08-15 17:17:41', '', 'quarrel', '', 'inherit', 'open', 'closed', '', 'quarrel', '', '', '2018-08-15 20:17:41', '2018-08-15 17:17:41', '', 120, 'http://marysblog.loc/wp-content/uploads/2018/08/quarrel.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2018-08-15 20:17:56', '2018-08-15 17:17:56', 'О да ты крут противоречием\r\nСвоим бытовским красноречием\r\nОбидеть и подставить - для тебя\r\nНе против тех играешь\r\nТы не поймешь тебе же все равно\r\nКому то врешь!\r\nТы в кучку наркоманов, алкашей\r\nВойдешь и будешь богом аахха\r\nБыть может также склеишь ласты\r\nНе надо покоряться тем соблазнам\r\nИ считаться нормалью мира\r\nБудь ты просто Человеком\r\nИ не делай из наркомана кумира\r\n\r\n<img class=\"alignnone size-full wp-image-121\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/quarrel.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2018-08-15 20:17:56', '2018-08-15 17:17:56', '', 120, 'http://marysblog.loc/120-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-08-15 20:28:50', '2018-08-15 17:28:50', 'Девочка – неформал.\r\nВ будни мечтала о карьере врача,\r\nВ выходные пиво попивала,\r\nЧто есть любовь она не знала…\r\nИ словом метила с усмешкой палача,\r\nИ были отношения, природа…\r\nИграла в ней немецкая порода,\r\nПридуманная корона слетала не спеша…\r\nИ жизнь ее была трудна,\r\nЛюбовь она лелеяла, но высказаться не могла,\r\nПогладив голову своего любимого отца.\r\nДуша ее рыдала и кляла себя\r\nЗа непростительную грубость…\r\nИ я скучаю по ней ведь она\r\nМоя подруга, Александра моя.\r\n\r\n<img class=\"alignnone size-full wp-image-125\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/alexa_exter.jpg\" alt=\"\" width=\"640\" height=\"359\" />', 'Посвящается Александре Экстер', '', 'publish', 'open', 'open', '', '%d0%bf%d0%be%d1%81%d0%b2%d1%8f%d1%89%d0%b0%d0%b5%d1%82%d1%81%d1%8f-%d0%b0%d0%bb%d0%b5%d0%ba%d1%81%d0%b0%d0%bd%d0%b4%d1%80%d0%b5-%d1%8d%d0%ba%d1%81%d1%82%d0%b5%d1%80', '', '', '2018-08-22 15:10:11', '2018-08-22 12:10:11', '', 0, 'http://marysblog.loc/?p=124', 0, 'post', '', 0),
(125, 1, '2018-08-15 20:28:20', '2018-08-15 17:28:20', '', 'alexa_exter', '', 'inherit', 'open', 'closed', '', 'alexa_exter', '', '', '2018-08-15 20:28:20', '2018-08-15 17:28:20', '', 124, 'http://marysblog.loc/wp-content/uploads/2018/08/alexa_exter.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2018-08-15 20:28:50', '2018-08-15 17:28:50', 'Девочка - неформал\r\nВ будни мечтала о карьере врача\r\nВ выходные пиво попивала\r\nЧто есть любовь она не знала…\r\nИ словом метила с усмешкой палача\r\nИ были отношения, природа…\r\nИграла в ней немецкая порода,\r\nПридуманная корона слетала неспеша…\r\nИ жизнь ее была трудна\r\nЛюбовь она лелеяла, но высказаться не могла\r\nПогладив голову своего любимого отца\r\nДуша ее рыдала и кляла себя\r\nЗа непростительную грубость …\r\nИ я скучаю по ней ведь она\r\nМоя подруга, Александра моя\r\n\r\n<img class=\"alignnone size-full wp-image-125\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/alexa_exter.jpg\" alt=\"\" width=\"640\" height=\"359\" />', 'Посвящается Александре Экстер', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2018-08-15 20:28:50', '2018-08-15 17:28:50', '', 124, 'http://marysblog.loc/124-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-08-15 20:42:42', '2018-08-15 17:42:42', '<div>\n<div></div>\n</div>\n<div></div>\n<div><img class=\"alignnone size-full wp-image-61\" src=\"http://marysblog/wp-content/uploads/2018/05/drink.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', 'Вам! (В. Маяковский)', '', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2018-08-15 20:42:42', '2018-08-15 17:42:42', '', 78, 'http://marysblog.loc/78-autosave-v1/', 0, 'revision', '', 0),
(128, 1, '2018-08-15 20:46:31', '2018-08-15 17:46:31', 'Вам, проживающим за оргией оргию,\r\nимеющим ванную и теплый клозет!\r\nКак вам не стыдно о представленных к Георгию\r\nвычитывать из столбцов газет?\r\n\r\nЗнаете ли вы, бездарные, многие,\r\nдумающие нажраться лучше как,-\r\nможет быть, сейчас бомбой ноги\r\nвыдрало у Петрова поручика?..\r\n\r\nЕсли он приведенный на убой,\r\nвдруг увидел, израненный,\r\nкак вы измазанной в котлете губой\r\nпохотливо напеваете Северянина!\r\n\r\nВам ли, любящим баб да блюда,\r\nжизнь отдавать в угоду?!\r\nЯ лучше в баре ... буду\r\nподавать ананасную воду!\r\n\r\n<img class=\"alignnone size-full wp-image-61\" src=\"http://marysblog.loc/wp-content/uploads/2018/05/drink.jpg\" alt=\"\" width=\"640\" height=\"424\" />', 'Вам! (В. Маяковский)', '', 'publish', 'open', 'open', '', '128-2', '', '', '2018-08-15 21:03:28', '2018-08-15 18:03:28', '', 0, 'http://marysblog.loc/?p=128', 0, 'post', '', 0),
(129, 1, '2018-08-15 20:46:31', '2018-08-15 17:46:31', 'Вам, проживающим за оргией оргию,\r\nимеющим ванную и теплый клозет!\r\nКак вам не стыдно о представленных к Георгию\r\nвычитывать из столбцов газет?\r\n\r\nЗнаете ли вы, бездарные, многие,\r\nдумающие нажраться лучше как,-\r\nможет быть, сейчас бомбой ноги\r\nвыдрало у Петрова поручика?..\r\n\r\nЕсли он приведенный на убой,\r\nвдруг увидел, израненный,\r\nкак вы измазанной в котлете губой\r\nпохотливо напеваете Северянина!\r\n\r\nВам ли, любящим баб да блюда,\r\nжизнь отдавать в угоду?!\r\nЯ лучше в баре ... буду\r\nподавать ананасную воду!\r\n<img class=\"alignnone size-full wp-image-61\" src=\"http://marysblog.loc/wp-content/uploads/2018/05/drink.jpg\" alt=\"\" width=\"640\" height=\"424\" />', '', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-08-15 20:46:31', '2018-08-15 17:46:31', '', 128, 'http://marysblog.loc/128-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-08-15 20:47:42', '2018-08-15 17:47:42', 'Вам, проживающим за оргией оргию,\r\nимеющим ванную и теплый клозет!\r\nКак вам не стыдно о представленных к Георгию\r\nвычитывать из столбцов газет?\r\n\r\nЗнаете ли вы, бездарные, многие,\r\nдумающие нажраться лучше как,-\r\nможет быть, сейчас бомбой ноги\r\nвыдрало у Петрова поручика?..\r\n\r\nЕсли он приведенный на убой,\r\nвдруг увидел, израненный,\r\nкак вы измазанной в котлете губой\r\nпохотливо напеваете Северянина!\r\n\r\nВам ли, любящим баб да блюда,\r\nжизнь отдавать в угоду?!\r\nЯ лучше в баре ... буду\r\nподавать ананасную воду!\r\n<img class=\"alignnone size-full wp-image-61\" src=\"http://marysblog.loc/wp-content/uploads/2018/05/drink.jpg\" alt=\"\" width=\"640\" height=\"424\" />', 'Вам! (Владимир Маяковский)', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-08-15 20:47:42', '2018-08-15 17:47:42', '', 128, 'http://marysblog.loc/128-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-08-15 20:48:30', '2018-08-15 17:48:30', 'Вам, проживающим за оргией оргию,\r\nимеющим ванную и теплый клозет!\r\nКак вам не стыдно о представленных к Георгию\r\nвычитывать из столбцов газет?\r\n\r\nЗнаете ли вы, бездарные, многие,\r\nдумающие нажраться лучше как,-\r\nможет быть, сейчас бомбой ноги\r\nвыдрало у Петрова поручика?..\r\n\r\nЕсли он приведенный на убой,\r\nвдруг увидел, израненный,\r\nкак вы измазанной в котлете губой\r\nпохотливо напеваете Северянина!\r\n\r\nВам ли, любящим баб да блюда,\r\nжизнь отдавать в угоду?!\r\nЯ лучше в баре ... буду\r\nподавать ананасную воду!\r\n\r\n<img class=\"alignnone size-full wp-image-61\" src=\"http://marysblog.loc/wp-content/uploads/2018/05/drink.jpg\" alt=\"\" width=\"640\" height=\"424\" />', 'Вам! (В. Маяковский)', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-08-15 20:48:30', '2018-08-15 17:48:30', '', 128, 'http://marysblog.loc/128-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-08-15 20:49:39', '2018-08-15 17:49:39', '\r\nМы о любви не говорим…\r\nИ за улыбкой, боль скрываем\r\nРешаем, думаем, гадаем…\r\nНо о любви не говорим…\r\nМы холод в разговоре пустим\r\nИли кого то оскорбим…\r\nИ душу на замок закроем\r\nНо о любви мы промолчим…\r\n\r\n<img class=\"alignnone size-full wp-image-60\" src=\"http://marysblog/wp-content/uploads/2018/05/Dont_talk.jpg\" alt=\"\" width=\"640\" height=\"424\" />', 'Мы о любви не говорим', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-08-15 20:49:39', '2018-08-15 17:49:39', '', 86, 'http://marysblog.loc/86-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2018-08-15 20:51:35', '2018-08-15 17:51:35', 'Ты наша мать,\nПобитая монголом,\nВоспрянувшая при Петре…\nИмперией ты стала, подросла,\nНо вот тебе опять грозят расколом,\nФранцузы, турки, немцы…\nИ растерзать готовы на куски -\nЭти голодные страны-псы,\nНо ты опять затеплилась жизнью – рекой,\nВпереди был социалистический строй!\nИ говорят, что жили хорошо до 90-ых\nИз танка бахнули, поголодали, разошись…\nЗакон свой приняли…\nВыживали сыны твои как могли,\nИ рынки грабили, земли покупали…\nТебя опять третировать пытается,\nАмериканский эшафот…\nНо ты опять воспрянешь, выживешь, восстанешь\nИ дашь достойнейший отпор!\n\n<div><img class=\"alignnone size-full wp-image-64\" src=\"http://marysblog/wp-content/uploads/2018/05/russia.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', 'Россия', '', 'inherit', 'closed', 'closed', '', '84-autosave-v1', '', '', '2018-08-15 20:51:35', '2018-08-15 17:51:35', '', 84, 'http://marysblog.loc/84-autosave-v1/', 0, 'revision', '', 0),
(135, 1, '2018-08-15 20:52:01', '2018-08-15 17:52:01', 'Ты наша мать,\r\nПобитая монголом,\r\nВоспрянувшая при Петре…\r\nИмперией ты стала, подросла,\r\nНо вот тебе опять грозят расколом,\r\nФранцузы, турки, немцы…\r\nИ растерзать готовы на куски -\r\nЭти голодные страны-псы,\r\nНо ты опять затеплилась жизнью – рекой,\r\nВпереди был социалистический строй!\r\nИ говорят, что жили хорошо до 90-ых\r\nИз танка бахнули, поголодали, разошись…\r\nЗакон свой приняли…\r\nВыживали сыны твои как могли,\r\nИ рынки грабили, земли покупали…\r\nТебя опять третировать пытается,\r\nАмериканский эшафот…\r\nНо ты опять воспрянешь, выживешь, восстанешь\r\nИ дашь достойнейший отпор!\r\n\r\n<div><img class=\"alignnone size-full wp-image-64\" src=\"http://marysblog/wp-content/uploads/2018/05/russia.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', 'Россия', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-08-15 20:52:01', '2018-08-15 17:52:01', '', 84, 'http://marysblog.loc/84-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2018-08-16 19:18:23', '2018-08-16 16:18:23', 'Ты ни в чем ни виновата,\r\nТолько дай другим дышать,\r\nЗа тобой поля лопатой\r\nПустоты мне выгребать.\r\nЯ ревную его к тебе\r\nНо ничего по сути он не должен мне.\r\nНе играйся, оставь его, ведь он тебя предал.\r\nЯ не знаю, что будет дальше,\r\nНо он может любить еще,\r\nНе тебя, не меня, не Катю,\r\nМожет в будущем счастье его…\r\n\r\n<img class=\"alignnone size-full wp-image-137\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/p_romanova.jpg\" alt=\"\" width=\"640\" height=\"426\" />', 'Посвящается Пелагее Романовой', '', 'publish', 'open', 'open', '', '%d0%bf%d0%be%d1%81%d0%b2%d1%8f%d1%89%d0%b0%d0%b5%d1%82%d1%81%d1%8f-%d0%bf%d0%b5%d0%bb%d0%b0%d0%b3%d0%b5%d0%b5-%d1%80%d0%be%d0%bc%d0%b0%d0%bd%d0%be%d0%b2%d0%be%d0%b9', '', '', '2018-08-22 15:05:53', '2018-08-22 12:05:53', '', 0, 'http://marysblog.loc/?p=136', 0, 'post', '', 0),
(137, 1, '2018-08-16 19:18:10', '2018-08-16 16:18:10', '', 'p_romanova', '', 'inherit', 'open', 'closed', '', 'p_romanova', '', '', '2018-08-16 19:18:10', '2018-08-16 16:18:10', '', 136, 'http://marysblog.loc/wp-content/uploads/2018/08/p_romanova.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2018-08-16 19:18:23', '2018-08-16 16:18:23', 'Ты ни в чем ни виновата\r\nТолько дай другим дышать\r\nЗа тобой поля лопатой\r\nПустоты мне выгребать\r\nЯ ревную его к тебе\r\nНо ничего по сути не должен он мне\r\nНе играйся, оставь его ведь он тебя предал\r\nЯ не знаю что будет дальше но он может любить еще\r\nНе тебя, не меня, не Катю\r\nМожет в будущем счастье его\r\n\r\n<img class=\"alignnone size-full wp-image-137\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/p_romanova.jpg\" alt=\"\" width=\"640\" height=\"426\" />', 'Посвящается Пелагее Романовой', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2018-08-16 19:18:23', '2018-08-16 16:18:23', '', 136, 'http://marysblog.loc/136-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-08-16 19:24:06', '2018-08-16 16:24:06', 'Двадцать первое. Ночь. Понедельник.\r\nОчертания моего города.\r\nРабота, дом, интернет.\r\nЖдешь его ненаглядного онлайн\r\nИ постишь паблик о любви,\r\nЧтоб посмотрел и понял милый,\r\nКак я его по-современному люблю\r\nИ как он жил? И как он будет жить\r\nЗа тысячами километров в интернете?\r\nОн же заварит кофе и уедет в ночь,\r\nДвинет по газам и умчится прочь.\r\nА что могу я? Надо же подумать\r\nВ жизни что то решить\r\nБоится он …\r\nТрепещется сердечко как рыбка в тех силках,\r\nНо я найду местечко в твоих бездонных снах…\r\n\r\n<img class=\"alignnone size-full wp-image-185\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/stena.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'publish', 'open', 'open', '', '139-2', '', '', '2018-08-22 15:02:16', '2018-08-22 12:02:16', '', 0, 'http://marysblog.loc/?p=139', 0, 'post', '', 0),
(140, 1, '2018-08-16 19:24:01', '2018-08-16 16:24:01', '', 'he_love', '', 'inherit', 'open', 'closed', '', 'he_love', '', '', '2018-08-16 19:24:01', '2018-08-16 16:24:01', '', 139, 'http://marysblog.loc/wp-content/uploads/2018/08/he_love.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2018-08-16 19:24:06', '2018-08-16 16:24:06', 'Двадцать первое. Ночь. Понедельник\r\nОчертания моего города.\r\nРабота. Дом. Интернет.\r\nЖдешь его ненаглядного онлайн\r\nИ постишь паблик о любви\r\nЧтоб посмотрел и понял милый\r\nКак я его по - современному люблю\r\nИ как он жил? И как он будет жить?\r\nЗа тысячи километров интернет\r\nОн же заварит кофе и уедет в ночь\r\nДвинет по газам и умчится прочь\r\nА что я могу ? Надо же подумать\r\nВ жизни что то решить\r\nБоится он …\r\nТрепещетсЯ сердечко как рыбка в тех силках\r\nНо я найду местечко в твоих бездонных снах…\r\n\r\n<img class=\"alignnone size-full wp-image-140\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/he_love.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-08-16 19:24:06', '2018-08-16 16:24:06', '', 139, 'http://marysblog.loc/139-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-08-16 19:30:11', '2018-08-16 16:30:11', 'Всегда найдется женская рука,\r\nЧтобы она, прохладна и легка,\r\nЖалея и немножечко любя,\r\nКак брата, успокоила тебя.\r\nВсегда найдется женское плечо,\r\nЧтобы в него дышал ты горячо,\r\nПрипав к нему беспутной головой,\r\nЕму доверив сон мятежный свой.\r\nВсегда найдутся женские глаза,\r\nЧтобы они, всю боль твою глуша,\r\nА если и не всю, то часть ее,\r\nУвидели страдание твое.\r\nНо есть такая женская рука,\r\nКоторая особенно сладка,\r\nКогда она измученного лба\r\nКасается, как вечность и судьба.\r\nНо есть такое женское плечо,\r\nКоторое неведомо за что\r\nНе на ночь, а навек тебе дано,\r\nИ это понял ты давным-давно.\r\nНо есть такие женские глаза,\r\nКоторые глядят всегда грустя,\r\nИ это до последних твоих дней\r\nГлаза любви и совести твоей.\r\nА ты живешь себе же вопреки,\r\nИ мало тебе только той руки,\r\nТого плеча и тех печальных глаз...\r\nТы предавал их в жизни столько раз!\r\nИ вот оно - возмездье - настает.\r\n\"Предатель!\"- дождь тебя наотмашь бьет.\r\n\"Предатель!\"- ветки хлещут по лицу.\r\n\"Предатель!\"- эхо слышится в лесу.\r\nТы мечешься, ты мучишься, грустишь.\r\nТы сам себе все это не простишь.\r\nИ только та прозрачная рука\r\nпростит, хотя обида и тяжка.\r\nИ только то усталое плечо\r\nПростит сейчас, да и простит еще,\r\nИ только те печальные глаза\r\nПростят все то, чего прощать нельзя...\r\n\r\n<img class=\"alignnone size-full wp-image-143\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/evtushenko.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '*** (Е. Евтушенко)', '', 'publish', 'open', 'open', '', '%d0%b5-%d0%b5%d0%b2%d1%82%d1%83%d1%88%d0%b5%d0%bd%d0%ba%d0%be', '', '', '2018-08-22 15:40:14', '2018-08-22 12:40:14', '', 0, 'http://marysblog.loc/?p=142', 0, 'post', '', 0),
(143, 1, '2018-08-16 19:30:02', '2018-08-16 16:30:02', '', 'evtushenko', '', 'inherit', 'open', 'closed', '', 'evtushenko', '', '', '2018-08-16 19:30:02', '2018-08-16 16:30:02', '', 142, 'http://marysblog.loc/wp-content/uploads/2018/08/evtushenko.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2018-08-16 19:30:11', '2018-08-16 16:30:11', 'Всегда найдется женская рука,\r\nЧтобы она, прохладна и легка,\r\nЖалея и немножечко любя,\r\nКак брата, успокоила тебя.\r\nВсегда найдется женское плечо,\r\nЧтобы в него дышал ты горячо,\r\nПрипав к нему беспутной головой,\r\nЕму доверив сон мятежный свой.\r\nВсегда найдутся женские глаза,\r\nЧтобы они, всю боль твою глуша,\r\nА если и не всю, то часть ее,\r\nУвидели страдание твое.\r\nНо есть такая женская рука,\r\nКоторая особенно сладка,\r\nКогда она измученного лба\r\nКасается, как вечность и судьба.\r\nНо есть такое женское плечо,\r\nКоторое неведомо за что\r\nНе на ночь, а навек тебе дано,\r\nИ это понял ты давным-давно.\r\nНо есть такие женские глаза,\r\nКоторые глядят всегда грустя,\r\n\r\nИ это до последних твоих дней\r\nГлаза любви и совести твоей.\r\nА ты живешь себе же вопреки,\r\nИ мало тебе только той руки,\r\nТого плеча и тех печальных глаз...\r\nТы предавал их в жизни столько раз!\r\nИ вот оно - возмездье - настает.\r\n\"Предатель!\"- дождь тебя наотмашь бьет.\r\n\"Предатель!\"- ветки хлещут по лицу.\r\n\"Предатель!\"- эхо слышится в лесу.\r\nТы мечешься, ты мучишься, грустишь.\r\nТы сам себе все это не простишь.\r\nИ только та прозрачная рука\r\nпростит, хотя обида и тяжка.\r\nИ только то усталое плечо\r\nПростит сейчас, да и простит еще,\r\nИ только те печальные глаза\r\nПростят все то, чего прощать нельзя...\r\n\r\n<img class=\"alignnone size-full wp-image-143\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/evtushenko.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '*** (Е. Евтушенко)', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2018-08-16 19:30:11', '2018-08-16 16:30:11', '', 142, 'http://marysblog.loc/142-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-08-16 19:41:05', '2018-08-16 16:41:05', 'Своей ты дерзостью достал меня изрядно\r\nИ что с тобой мне делать непонятно,\r\nНо мы не видимся и это все меняет...\r\nПокой в моей душе переполняет.\r\n\r\n<img class=\"alignnone size-full wp-image-146\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/quarrel_2.jpg\" alt=\"\" width=\"640\" height=\"465\" />', '***', '', 'publish', 'open', 'open', '', '145-2', '', '', '2018-08-22 14:57:38', '2018-08-22 11:57:38', '', 0, 'http://marysblog.loc/?p=145', 0, 'post', '', 0),
(146, 1, '2018-08-16 19:40:45', '2018-08-16 16:40:45', '', 'quarrel_2', '', 'inherit', 'open', 'closed', '', 'quarrel_2', '', '', '2018-08-16 19:40:45', '2018-08-16 16:40:45', '', 145, 'http://marysblog.loc/wp-content/uploads/2018/08/quarrel_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2018-08-16 19:41:05', '2018-08-16 16:41:05', 'Своей ты дерзостью достал меня изрядно\r\nИ что с тобой мне делать непонятно\r\nНо мы не видимся и это все меняет....\r\nПокой в моей душе переполняет.\r\n\r\n<img class=\"alignnone size-full wp-image-146\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/quarrel_2.jpg\" alt=\"\" width=\"640\" height=\"465\" />', '***', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2018-08-16 19:41:05', '2018-08-16 16:41:05', '', 145, 'http://marysblog.loc/145-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-08-17 12:20:14', '2018-08-17 09:20:14', 'Я примирился с судьбой неизбежною,\r\nНет ни охоты, ни силы терпеть\r\nНевыносимую муку кромешную!\r\nЖадно желаю скорей умереть.\r\nВам же - не праздно, друзья благородные,\r\nЖить и в такую могилу сойти,\r\nЧтобы широкие лапти народные\r\nК ней проторили пути.\r\n\r\n<img class=\"alignnone size-full wp-image-149\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/ways.jpg\" alt=\"\" width=\"640\" height=\"413\" />', 'Николай Некрасов', '', 'publish', 'open', 'open', '', '%d0%bd%d0%b8%d0%ba%d0%be%d0%bb%d0%b0%d0%b9-%d0%bd%d0%b5%d0%ba%d1%80%d0%b0%d1%81%d0%be%d0%b2', '', '', '2018-08-17 12:20:24', '2018-08-17 09:20:24', '', 0, 'http://marysblog.loc/?p=148', 0, 'post', '', 0),
(149, 1, '2018-08-17 12:19:53', '2018-08-17 09:19:53', '', 'ways', '', 'inherit', 'open', 'closed', '', 'ways', '', '', '2018-08-17 12:19:53', '2018-08-17 09:19:53', '', 148, 'http://marysblog.loc/wp-content/uploads/2018/08/ways.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2018-08-17 12:20:14', '2018-08-17 09:20:14', 'Я примирился с судьбой неизбежною,\r\nНет ни охоты, ни силы терпеть\r\nНевыносимую муку кромешную!\r\nЖадно желаю скорей умереть.\r\nВам же - не праздно, друзья благородные,\r\nЖить и в такую могилу сойти,\r\nЧтобы широкие лапти народные\r\nК ней проторили пути.\r\n\r\n<img class=\"alignnone size-full wp-image-149\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/ways.jpg\" alt=\"\" width=\"640\" height=\"413\" />', 'Николай Некрасов', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2018-08-17 12:20:14', '2018-08-17 09:20:14', '', 148, 'http://marysblog.loc/148-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-08-17 12:24:07', '2018-08-17 09:24:07', 'Скатился ком с души,\r\nЯ буду другой…\r\nНе буду жить во лжи\r\nИ затеряться бы в спелой ржи.\r\nВеснушки солнцу показать,\r\nМечтать о вечной любви\r\nИ все с собой забрать…\r\n\r\n<img class=\"alignnone size-full wp-image-152\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/vesnushki.jpg\" alt=\"\" width=\"640\" height=\"454\" />', '***', '', 'publish', 'open', 'open', '', '151-2', '', '', '2018-08-22 14:56:37', '2018-08-22 11:56:37', '', 0, 'http://marysblog.loc/?p=151', 0, 'post', '', 0),
(152, 1, '2018-08-17 12:24:01', '2018-08-17 09:24:01', '', 'vesnushki', '', 'inherit', 'open', 'closed', '', 'vesnushki', '', '', '2018-08-17 12:24:01', '2018-08-17 09:24:01', '', 151, 'http://marysblog.loc/wp-content/uploads/2018/08/vesnushki.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2018-08-17 12:24:07', '2018-08-17 09:24:07', 'Скатился ком с души\r\nИ я буду другой …\r\nНе буду жить во лжи\r\nИ затеряться бы в спелой ржи\r\nВеснушки солнцу показать\r\nМечтать о вечной любви\r\nИ все с собой забрать…\r\n\r\n<img class=\"alignnone size-full wp-image-152\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/vesnushki.jpg\" alt=\"\" width=\"640\" height=\"454\" />', '***', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2018-08-17 12:24:07', '2018-08-17 09:24:07', '', 151, 'http://marysblog.loc/151-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2018-08-17 12:48:50', '2018-08-17 09:48:50', 'И вы, познав любовь, бежите\r\nИ вот другой ее руки целует,\r\nЕго другая увлекает взглядом.\r\nТак просто вы сдались, не храбро вы сражались,\r\nА помните, как на балконе жались,\r\nОна старалась, он боялся потерять свободу,\r\nХотя уж несвободен был от чувств.\r\nИ что ж ты прячешься теперь от всего,\r\nБезумцем прикрывая низость дум.\r\nДа не спала она с ним и не собиралась,\r\nОна забыла просто, что ты ей любим,\r\nОна подумала, что будет легче с этим\r\nВеселым балагуром дурачком…\r\nОн все ж добился ее расположения,\r\nНо он так прост, что глубины в нем с горстку,\r\nНе может он сражаться и любить ярчайше\r\nИ тем безумцем как ты он не станет…\r\n\r\n<img class=\"alignnone size-full wp-image-155\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/man_woman.jpg\" alt=\"\" width=\"640\" height=\"330\" />', 'Посвящается Т.С. и А.К.', '', 'publish', 'open', 'open', '', '%d0%bf%d0%be%d1%81%d0%b2%d1%8f%d1%89%d0%b0%d0%b5%d1%82%d1%81%d1%8f-%d1%82-%d1%81-%d0%b8-%d0%b0-%d0%ba', '', '', '2018-08-22 14:55:06', '2018-08-22 11:55:06', '', 0, 'http://marysblog.loc/?p=154', 0, 'post', '', 0),
(155, 1, '2018-08-17 12:48:45', '2018-08-17 09:48:45', '', 'man_woman', '', 'inherit', 'open', 'closed', '', 'man_woman', '', '', '2018-08-17 12:48:45', '2018-08-17 09:48:45', '', 154, 'http://marysblog.loc/wp-content/uploads/2018/08/man_woman.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2018-08-17 12:48:50', '2018-08-17 09:48:50', 'И вы, познав любовь, бежите\r\nИ вот ее другой руку целует\r\nЕго ,другая, увлекает взглядом\r\nТак просто вы сдались, не храбро вы сражались\r\nА помните, ведь как на балконе жались\r\nОна старалась, он боялся потерять свободу\r\nХотя уж несвободен был от чувств\r\nИ что ж ты прячешься теперь от всего\r\nБезумцем прикрывая низость дум\r\nДа не спала она с ним, не собиралась\r\nОна забыла, просто, что ты ей любим\r\nОна подумала,что будет легче с этим\r\nВеселым балагуром дурачком…\r\nОн все ж добился ее расположения,\r\nНо он так прост, что глубины в нем с горстку,\r\nНе может он сражаться и любить ярчайше\r\nИ тем безумцем как ты он не станет….\r\n\r\n<img class=\"alignnone size-full wp-image-155\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/man_woman.jpg\" alt=\"\" width=\"640\" height=\"330\" />', 'Посвящается Т.С. и А.К.', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2018-08-17 12:48:50', '2018-08-17 09:48:50', '', 154, 'http://marysblog.loc/154-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(157, 1, '2018-08-17 12:57:30', '2018-08-17 09:57:30', 'Через час отсюда в чистый переулок\r\nвытечет по человеку ваш обрюзгший жир,\r\nа я вам открыл столько стихов шкатулок,\r\nя - бесценных слов мот и транжир.\r\n\r\nВот вы, мужчина, у вас в усах капуста\r\nгде-то недокушанных, недоеденных щей;\r\nвот вы, женщина, на вас белила густо,\r\nвы смотрите устрицей из раковин вещей.\r\n\r\nВсе вы на бабочку поэтиного сердца\r\n10 взгромоздитесь, грязные, в калошах и без калош.\r\nТолпа озвереет, будет тереться,\r\nощетинит ножки стоглавая вошь.\r\n\r\nА если сегодня мне, грубому гунну,\r\nкривляться перед вами не захочется -и вот\r\nя захохочу и радостно плюну,\r\nплюну в лицо вам\r\nя - бесценных слов транжир и мот.\r\n\r\n<img class=\"alignnone size-full wp-image-158\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/bar.jpg\" alt=\"\" width=\"640\" height=\"426\" />', 'Нате! (В. Маяковский)', '', 'publish', 'open', 'open', '', '%d0%bd%d0%b0%d1%82%d0%b5-%d0%b2-%d0%bc%d0%b0%d1%8f%d0%ba%d0%be%d0%b2%d1%81%d0%ba%d0%b8%d0%b9', '', '', '2018-08-17 12:57:30', '2018-08-17 09:57:30', '', 0, 'http://marysblog.loc/?p=157', 0, 'post', '', 0),
(158, 1, '2018-08-17 12:57:21', '2018-08-17 09:57:21', '', 'bar', '', 'inherit', 'open', 'closed', '', 'bar', '', '', '2018-08-17 12:57:21', '2018-08-17 09:57:21', '', 157, 'http://marysblog.loc/wp-content/uploads/2018/08/bar.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2018-08-17 12:57:30', '2018-08-17 09:57:30', 'Через час отсюда в чистый переулок\r\nвытечет по человеку ваш обрюзгший жир,\r\nа я вам открыл столько стихов шкатулок,\r\nя - бесценных слов мот и транжир.\r\n\r\nВот вы, мужчина, у вас в усах капуста\r\nгде-то недокушанных, недоеденных щей;\r\nвот вы, женщина, на вас белила густо,\r\nвы смотрите устрицей из раковин вещей.\r\n\r\nВсе вы на бабочку поэтиного сердца\r\n10 взгромоздитесь, грязные, в калошах и без калош.\r\nТолпа озвереет, будет тереться,\r\nощетинит ножки стоглавая вошь.\r\n\r\nА если сегодня мне, грубому гунну,\r\nкривляться перед вами не захочется -и вот\r\nя захохочу и радостно плюну,\r\nплюну в лицо вам\r\nя - бесценных слов транжир и мот.\r\n\r\n<img class=\"alignnone size-full wp-image-158\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/bar.jpg\" alt=\"\" width=\"640\" height=\"426\" />', 'Нате! (В. Маяковский)', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2018-08-17 12:57:30', '2018-08-17 09:57:30', '', 157, 'http://marysblog.loc/157-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2018-08-17 13:00:18', '2018-08-17 10:00:18', 'Вот и сочельник наступил,\r\nСтакан воды отцу налит,\r\nИ тут он хлеба попросил…\r\nНо где же праздничное настроение\r\nИ алкогольное веселье?\r\n«Из мелкой мы не пьем посуды!»-\r\n«Шуткует» папа невпопад.\r\nИ дома мы сидим и чуда ждем,\r\nА чуда ждать, как в думе правды.\r\nСамим чудить? Да мы не рады,\r\nНам неохота, даже лень…\r\nИль вдруг постигнет сомнений тень?\r\nНа нашу чувственную личность.\r\nХм, не предаться ли усладе?\r\nДушевной, посмотреть рекламу,\r\nИли устроить в доме драму?\r\nПобить посуду, грязь пролить,\r\nНа всю обыденную сущность.\r\nВот так жила эта семья\r\nОтца любила втихаря\r\nИ мама все его жалела,\r\nА я терпела, как могла.\r\n\r\n<img class=\"alignnone size-full wp-image-161\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/alcohol.jpg\" alt=\"\" width=\"640\" height=\"425\" />', '***', '', 'publish', 'open', 'open', '', '160-2', '', '', '2018-08-22 14:49:21', '2018-08-22 11:49:21', '', 0, 'http://marysblog.loc/?p=160', 0, 'post', '', 0),
(161, 1, '2018-08-17 13:00:08', '2018-08-17 10:00:08', '', 'alcohol', '', 'inherit', 'open', 'closed', '', 'alcohol', '', '', '2018-08-17 13:00:08', '2018-08-17 10:00:08', '', 160, 'http://marysblog.loc/wp-content/uploads/2018/08/alcohol.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2018-08-17 13:00:18', '2018-08-17 10:00:18', 'Вот и сочельник наступил,\r\nСтакан воды отцу налит,\r\nИ тут же хлеба попросил…\r\nНо где праздничное настроение и алкогольное веселье?\r\n«Из мелкой мы не пьем посуды!»-\r\n«Шуткует» папа невпопад.\r\nИ дома мы сидим и чуда ждем\r\nА чуда ждать, как в думе правды\r\nСамим чудить? Да мы не рады\r\nНам неохота, даже лень…\r\nИль вдруг постигнет сомнений тень?\r\nНа нашу чувственную личность.\r\nХм, не предаться ли усладе?\r\nДушевной? Посмотреть рекламу?\r\nИли устроить в доме драму?\r\nПобить посуду, грязь пролить,\r\nНа всю обыденную сущность.\r\nВот так жила эта одна семья\r\nОтца любила, втихаря,\r\nА мама все его жалела,\r\nА я терпела, как могла.\r\n\r\n<img class=\"alignnone size-full wp-image-161\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/alcohol.jpg\" alt=\"\" width=\"640\" height=\"425\" />', '***', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2018-08-17 13:00:18', '2018-08-17 10:00:18', '', 160, 'http://marysblog.loc/160-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2018-08-17 13:04:03', '2018-08-17 10:04:03', 'Я просто рада, что ты пишешь\r\nИ что порой душою слышишь,\r\nХотя я может ошибаюсь,\r\nПорой за маскою скрываясь,\r\nНе замечаю правды от тебя,\r\nВедь я же не твоя...\r\nИ не стремишься завладеть мной.\r\nТак пусть же будем мы друзьями,\r\nИ опираться будем сами\r\nНа плечи тех порой любимых,\r\nТех с кем удобней и теплее.\r\nНо вот душа мне выдает,\r\nТак не бывает, не пойдет!\r\nНо двух любить я не должна,\r\nПогоду сделала сама...\r\nТы будешь сниться мне в виденьях,\r\nВитать в моих полуденных сомненьях.\r\nНо как же короли любили,\r\nЗа расстояния на кораблях ходили,\r\nЗа той принцессой – алой розой,\r\nЗа той прекрасною мимозой,\r\nЗа девушкой своей мечты...\r\n\r\n<img class=\"alignnone size-full wp-image-164\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/love_read.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'publish', 'open', 'open', '', '163-2', '', '', '2018-08-22 14:41:27', '2018-08-22 11:41:27', '', 0, 'http://marysblog.loc/?p=163', 0, 'post', '', 0),
(164, 1, '2018-08-17 13:03:51', '2018-08-17 10:03:51', '', 'love_read', '', 'inherit', 'open', 'closed', '', 'love_read', '', '', '2018-08-17 13:03:51', '2018-08-17 10:03:51', '', 163, 'http://marysblog.loc/wp-content/uploads/2018/08/love_read.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2018-08-17 13:04:03', '2018-08-17 10:04:03', 'Я просто рада, что ты пишешь\r\nИ что порой душою слышишь\r\nХотя я может ошибаюсь\r\nПорой за маскою скрываясь\r\nНе замечаю правды от тебя\r\nВедь я же не твоя...\r\nИ не стремишься завладеть мной\r\nТак пусть же будем мы друзьями,\r\nИ опираться будем сами\r\nНа плечи тех порой любимых,\r\nТех с кем удобней и теплее.\r\nНо вот ,Душа, мне выдает,\r\nТак не бывает, не пойдет!\r\nНо двух любить я не должна,\r\nПогоду сделала сама...\r\nТы будешь сниться в призрачных веденьях,\r\nВитать в моих полуденных сомненьях.\r\nНо как же короли любили,\r\nЗа расстояния на кораблях ходили,\r\nЗа той принцессой -\r\nАлой розой, за той прекрасною мимозой\r\nЗа девушкой своей мечты...\r\n\r\n<img class=\"alignnone size-full wp-image-164\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/love_read.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-08-17 13:04:03', '2018-08-17 10:04:03', '', 163, 'http://marysblog.loc/163-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2018-08-17 13:09:31', '2018-08-17 10:09:31', 'Понедельник – начало всех начал,\r\nВ этот день ты сбросишь алкогольное веселье выходных,\r\nНачнешь свою жизнь не праздно, а ярко,\r\nТолько постарайся!\r\nЛюди не умеют отдыхать и жить …\r\nИ жалуются, жалуются…\r\nХватит жаловаться корень проблем в вас,\r\nДерево уже выросло из корня\r\nВ запущенных просторах сознания,\r\nРубите стереотипы, детерминируйте сознание,\r\nНайди понимание в душе.\r\n\r\n<img class=\"alignnone size-full wp-image-167\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/monday.jpg\" alt=\"\" width=\"640\" height=\"426\" />', 'Гимн понедельку', '', 'publish', 'open', 'open', '', '%d0%b3%d0%b8%d0%bc%d0%bd-%d0%bf%d0%be%d0%bd%d0%b5%d0%b4%d0%b5%d0%bb%d1%8c%d0%ba%d1%83', '', '', '2018-08-22 14:37:57', '2018-08-22 11:37:57', '', 0, 'http://marysblog.loc/?p=166', 0, 'post', '', 0),
(167, 1, '2018-08-17 13:09:22', '2018-08-17 10:09:22', '', 'monday', '', 'inherit', 'open', 'closed', '', 'monday', '', '', '2018-08-17 13:09:22', '2018-08-17 10:09:22', '', 166, 'http://marysblog.loc/wp-content/uploads/2018/08/monday.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2018-08-17 13:09:31', '2018-08-17 10:09:31', 'Понедельник – начало всех начал\r\nВ этот день ты сбросишь алкогольное веселье выходных\r\nНачнешь свою жизнь не праздно, а ярко\r\nТолько постарайся!\r\nЛюди не умеют отдыхать и жить ….\r\nИ жалуются, жалуются…….\r\nХватит жаловаться корень проблем в вас\r\nДерево уже выросло из корня\r\nВ запущенных просторах сознания\r\nРубите стереотипы, детерминируйте сознание\r\nНайди понимание в душе.\r\n\r\n<img class=\"alignnone size-full wp-image-167\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/monday.jpg\" alt=\"\" width=\"640\" height=\"426\" />', 'Гимн понедельку', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2018-08-17 13:09:31', '2018-08-17 10:09:31', '', 166, 'http://marysblog.loc/166-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2018-08-17 13:16:17', '2018-08-17 10:16:17', 'Мне вниманием твоим бы напиться\r\nКак кувшином родниковой воды.\r\nЯ тобой могу лишь гордиться,\r\nЛюбоваться издали.\r\n\r\n<img class=\"alignnone size-full wp-image-170\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/rich_boy.jpg\" alt=\"\" width=\"640\" height=\"425\" />', '***', '', 'publish', 'open', 'open', '', '169-2', '', '', '2018-08-17 13:16:25', '2018-08-17 10:16:25', '', 0, 'http://marysblog.loc/?p=169', 0, 'post', '', 0),
(170, 1, '2018-08-17 13:15:34', '2018-08-17 10:15:34', '', 'rich_boy', '', 'inherit', 'open', 'closed', '', 'rich_boy', '', '', '2018-08-17 13:15:34', '2018-08-17 10:15:34', '', 169, 'http://marysblog.loc/wp-content/uploads/2018/08/rich_boy.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2018-08-17 13:16:17', '2018-08-17 10:16:17', 'Мне вниманием твоим бы напиться\r\nКак кувшином родниковой воды.\r\nЯ тобой могу лишь гордиться,\r\nЛюбоваться издали.\r\n\r\n<img class=\"alignnone size-full wp-image-170\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/rich_boy.jpg\" alt=\"\" width=\"640\" height=\"425\" />', '***', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2018-08-17 13:16:17', '2018-08-17 10:16:17', '', 169, 'http://marysblog.loc/169-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2018-08-17 13:20:59', '2018-08-17 10:20:59', 'Я проснулась на мягкой перине\r\nПлатье выбираю, ведь я, героиня дня!\r\nГраф молодой приедет свататься,\r\nИ везёт гостинцы для меня.\r\nВ землю матушке и батюшке поклонится\r\nС ними дружки его приедут\r\nВесёлый смех на все покои\r\nНо не оставил страх меня в покое\r\nВедь косу заплетают уже\r\nМои подружки и сестры\r\nСмущение девичье закрою под фатой,\r\nВедь он, выбран мне семьей.\r\nЯ покорюсь мужчине в этот день,\r\nИ косы расплетет мне он заботливо,\r\nОбнимет и скажет: «Ты моя голуба навсегда»\r\nКак плакала от счастья в этот день сестра\r\nЕе ведь сватать теперь пора.\r\nС детством и наивностью прощаемся мы в этот день,\r\nМужчине отдают нас в обличье жениха.\r\n\r\n<img class=\"alignnone size-full wp-image-173\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/marry.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '19 век', '', 'publish', 'open', 'open', '', '19-%d0%b2%d0%b5%d0%ba', '', '', '2018-08-22 14:35:29', '2018-08-22 11:35:29', '', 0, 'http://marysblog.loc/?p=172', 0, 'post', '', 0),
(173, 1, '2018-08-17 13:20:51', '2018-08-17 10:20:51', '', 'marry', '', 'inherit', 'open', 'closed', '', 'marry', '', '', '2018-08-17 13:20:51', '2018-08-17 10:20:51', '', 172, 'http://marysblog.loc/wp-content/uploads/2018/08/marry.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 1, '2018-08-17 13:20:59', '2018-08-17 10:20:59', 'Я проснулась на мягкой перине\r\nПлатье выбираю ,ведь я ,героиня дня!\r\nГраф молодой приедет свататься,\r\nИ везёт гостинцы для меня.\r\nВ землю матушке и батюшке поклонится\r\nС ними дружки его приедут\r\nВесёлый смех на все покои\r\nНо не оставил страх меня в покое\r\nВедь косу заплетают уже\r\nМои подружки и сестры\r\nСмущение девичье закрою под фатой,\r\nВедь, он ,выбран мне семьей.\r\nЯ покорюсь мужчине в этот день,\r\nИ ,косы расплетет ,мне, он,заботливо,\r\nОбнимет и скажет: «Ты моя голуба навсегда»\r\nКак плакала от счастья в этот день сестра\r\nЕе ,сватать ,теперь, пора.\r\nС детством и наивностью прощаемся мы в этот день,\r\nМужчине отдают нас в обличье жениха.\r\n\r\n<img class=\"alignnone size-full wp-image-173\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/marry.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '19 век', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2018-08-17 13:20:59', '2018-08-17 10:20:59', '', 172, 'http://marysblog.loc/172-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2018-08-17 13:27:26', '2018-08-17 10:27:26', 'Любимая прелесть, любимая зая\r\nДышу и живу так тебя называя\r\nБоготворю твой лик\r\nУсталости, не зная\r\nО чувствах я пою\r\nДавай со мной слова, не подбирая,\r\nРодная, ты, не будь жестокую и грубой\r\nО бедах позабудь,\r\nТебе плечом я буду.\r\nТебе буду крылом,\r\nЧто полетим по крышам,\r\nМы сочиним с тобой мелодию всей жизни.\r\n\r\n<img class=\"alignnone size-full wp-image-176\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/love.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'publish', 'open', 'open', '', '175-2', '', '', '2018-08-22 14:32:40', '2018-08-22 11:32:40', '', 0, 'http://marysblog.loc/?p=175', 0, 'post', '', 0),
(176, 1, '2018-08-17 13:27:16', '2018-08-17 10:27:16', '', 'love', '', 'inherit', 'open', 'closed', '', 'love-2', '', '', '2018-08-17 13:27:16', '2018-08-17 10:27:16', '', 175, 'http://marysblog.loc/wp-content/uploads/2018/08/love.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2018-08-17 13:27:26', '2018-08-17 10:27:26', 'Любимая прелесть, любимая зая\r\nДышу и живу так тебя называя\r\nБоготворю твой лик\r\nУсталости не зная\r\nО чувствах я пою\r\nДавай со мной слова не подбирая\r\nРодная, ты, не будь жестокую и грубой\r\nО бедах позабудь,\r\nТебе плечом я буду.\r\nТебе буду крылом\r\nЧто полетим по крышам\r\nМы сочиним с тобой мелодию всей жизни\r\n\r\n<img class=\"alignnone size-full wp-image-176\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/love.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2018-08-17 13:27:26', '2018-08-17 10:27:26', '', 175, 'http://marysblog.loc/175-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2018-08-17 13:38:39', '2018-08-17 10:38:39', 'Как много можно изменить...\r\nВы не представляли себя Богом?\r\nЯ представила,\r\nВот человеку плечо подставила\r\nИ он перестал грустить.\r\nВот девушке любимого вернула\r\nИ боль ушла, и улыбается она.\r\nМатери живого сына подарила с войны,\r\nКак благодарила она с молитвой\r\nТеперь не расставаясь с ним.\r\nЯ провела по голове и рак забрала\r\nУ того кудрявого малыша\r\nИ высохли слезы у страдающих,\r\nУлыбка озарила лица их.\r\nВсе будет хорошо ведь я для них живу\r\nИ с ними я как Бог во плоти…\r\n\r\n<img class=\"alignnone size-full wp-image-179\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/svetlyacheck.jpg\" alt=\"\" width=\"640\" height=\"352\" />', 'О серьёзном', '', 'publish', 'open', 'open', '', '178-2', '', '', '2018-08-22 15:37:43', '2018-08-22 12:37:43', '', 0, 'http://marysblog.loc/?p=178', 0, 'post', '', 0),
(179, 1, '2018-08-17 13:38:11', '2018-08-17 10:38:11', '', 'svetlyacheck', '', 'inherit', 'open', 'closed', '', 'svetlyacheck', '', '', '2018-08-17 13:38:11', '2018-08-17 10:38:11', '', 178, 'http://marysblog.loc/wp-content/uploads/2018/08/svetlyacheck.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2018-08-17 13:38:39', '2018-08-17 10:38:39', 'Как много можно изменить...\r\nВы не представляли себя Богом?\r\nЯ представила\r\nВот человеку плечо подставила\r\nИ он перестал грустить\r\nВот девушке любимого вернула\r\nИ боль ушла,и улыбается она\r\nМатери живого сына подарила с войны\r\nКак благодарила она с молитвой\r\nТеперь не расставаясь с ним\r\nЯ провела по голове и рак забрала\r\nУ того кудрявого малыша\r\nИ высохли слезы у страдающих\r\nУлыбка озарила лица их\r\nВсе будет хорошо ведь я для них живу\r\nИ с ними я как Бог во плоти\r\n\r\n<img class=\"alignnone size-full wp-image-179\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/svetlyacheck.jpg\" alt=\"\" width=\"640\" height=\"352\" />', '', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2018-08-17 13:38:39', '2018-08-17 10:38:39', '', 178, 'http://marysblog.loc/178-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2018-08-17 15:42:52', '2018-08-17 12:42:52', 'Как много можно изменить...\r\nВы не представляли себя Богом?\r\nЯ представила\r\nВот человеку плечо подставила\r\nИ он перестал грустить\r\nВот девушке любимого вернула\r\nИ боль ушла,и улыбается она\r\nМатери живого сына подарила с войны\r\nКак благодарила она с молитвой\r\nТеперь не расставаясь с ним\r\nЯ провела по голове и рак забрала\r\nУ того кудрявого малыша\r\nИ высохли слезы у страдающих\r\nУлыбка озарила лица их\r\nВсе будет хорошо ведь я для них живу\r\nИ с ними я как Бог во плоти\r\n\r\n<img class=\"alignnone size-full wp-image-179\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/svetlyacheck.jpg\" alt=\"\" width=\"640\" height=\"352\" />', 'О серьёзном', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2018-08-17 15:42:52', '2018-08-17 12:42:52', '', 178, 'http://marysblog.loc/178-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2018-08-17 15:46:52', '2018-08-17 12:46:52', 'Твой лик прекрасен,\r\nШирок твой кругозор\r\nКогда ты обратишь на меня свой взгляд\r\nРастает небо, солнце\r\nИ все воронкою сомкнётся.\r\nМне ничего не нужно,\r\nЯ уже безмерно рад.\r\n\r\n<img class=\"alignnone size-full wp-image-187\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/guy.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'publish', 'open', 'open', '', '182-2', '', '', '2018-08-22 15:18:27', '2018-08-22 12:18:27', '', 0, 'http://marysblog.loc/?p=182', 0, 'post', '', 0),
(183, 1, '2018-08-17 15:46:43', '2018-08-17 12:46:43', '', 'boyfriend', '', 'inherit', 'open', 'closed', '', 'boyfriend', '', '', '2018-08-17 15:46:43', '2018-08-17 12:46:43', '', 182, 'http://marysblog.loc/wp-content/uploads/2018/08/boyfriend.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2018-08-17 15:46:52', '2018-08-17 12:46:52', 'Твой лик прекрасен\r\nШирок твой кругозор\r\nКогда ты обратишь на меня свой взгляд\r\nРастает небо, солнце\r\nВсе Воронкою сомкнётся\r\nМне ничего не нужно\r\nЯ уже безмерно рад.\r\n\r\n<img class=\"alignnone size-full wp-image-183\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/boyfriend.jpg\" alt=\"\" width=\"640\" height=\"564\" />', '***', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2018-08-17 15:46:52', '2018-08-17 12:46:52', '', 182, 'http://marysblog.loc/182-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2018-08-17 15:52:52', '2018-08-17 12:52:52', '', 'stena', '', 'inherit', 'open', 'closed', '', 'stena', '', '', '2018-08-17 15:52:52', '2018-08-17 12:52:52', '', 139, 'http://marysblog.loc/wp-content/uploads/2018/08/stena.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2018-08-17 15:52:55', '2018-08-17 12:52:55', 'Двадцать первое. Ночь. Понедельник\r\nОчертания моего города.\r\nРабота. Дом. Интернет.\r\nЖдешь его ненаглядного онлайн\r\nИ постишь паблик о любви\r\nЧтоб посмотрел и понял милый\r\nКак я его по - современному люблю\r\nИ как он жил? И как он будет жить?\r\nЗа тысячи километров интернет\r\nОн же заварит кофе и уедет в ночь\r\nДвинет по газам и умчится прочь\r\nА что я могу ? Надо же подумать\r\nВ жизни что то решить\r\nБоится он …\r\nТрепещетсЯ сердечко как рыбка в тех силках\r\nНо я найду местечко в твоих бездонных снах…\r\n\r\n<img class=\"alignnone size-full wp-image-185\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/stena.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-08-17 15:52:55', '2018-08-17 12:52:55', '', 139, 'http://marysblog.loc/139-revision-v1/', 0, 'revision', '', 0),
(187, 1, '2018-08-17 15:59:14', '2018-08-17 12:59:14', '', 'guy', '', 'inherit', 'open', 'closed', '', 'guy', '', '', '2018-08-17 15:59:14', '2018-08-17 12:59:14', '', 182, 'http://marysblog.loc/wp-content/uploads/2018/08/guy.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2018-08-17 15:59:29', '2018-08-17 12:59:29', 'Твой лик прекрасен\nШирок твой кругозор\nКогда ты обратишь на меня свой взгляд\nРастает небо, солнце\nВсе Воронкою сомкнётся\nМне ничего не нужно\nЯ уже безмерно рад.\n\n<img class=\"alignnone size-full wp-image-187\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/guy.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '182-autosave-v1', '', '', '2018-08-17 15:59:29', '2018-08-17 12:59:29', '', 182, 'http://marysblog.loc/182-autosave-v1/', 0, 'revision', '', 0),
(189, 1, '2018-08-17 15:59:34', '2018-08-17 12:59:34', 'Твой лик прекрасен\r\nШирок твой кругозор\r\nКогда ты обратишь на меня свой взгляд\r\nРастает небо, солнце\r\nВсе Воронкою сомкнётся\r\nМне ничего не нужно\r\nЯ уже безмерно рад.\r\n\r\n<img class=\"alignnone size-full wp-image-187\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/guy.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2018-08-17 15:59:34', '2018-08-17 12:59:34', '', 182, 'http://marysblog.loc/182-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2018-08-22 14:17:15', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-22 14:17:15', '0000-00-00 00:00:00', '', 0, 'http://chist765.beget.tech/?p=190', 0, 'post', '', 0),
(191, 1, '2018-08-22 14:26:38', '2018-08-22 11:26:38', 'Твой лик прекрасен\r\nШирок твой кругозор\r\nКогда ты обратишь на меня свой взгляд\r\nРастает небо, солнце\r\nВсе воронкою сомкнётся\r\nМне ничего не нужно\r\nЯ уже безмерно рад.\r\n\r\n<img class=\"alignnone size-full wp-image-187\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/guy.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2018-08-22 14:26:38', '2018-08-22 11:26:38', '', 182, 'http://chist765.beget.tech/182-revision-v1/', 0, 'revision', '', 0),
(192, 1, '2018-08-22 14:30:00', '2018-08-22 11:30:00', 'Как много можно изменить...\r\nВы не представляли себя Богом?\r\nЯ представила\r\nВот человеку плечо подставила\r\nИ он перестал грустить\r\nВот девушке любимого вернула\r\nИ боль ушла, и улыбается она\r\nМатери живого сына подарила с войны\r\nКак благодарила она с молитвой\r\nТеперь не расставаясь с ним\r\nЯ провела по голове и рак забрала\r\nУ того кудрявого малыша\r\nИ высохли слезы у страдающих\r\nУлыбка озарила лица их\r\nВсе будет хорошо ведь я для них живу\r\nИ с ними я как Бог во плоти\r\n\r\n<img class=\"alignnone size-full wp-image-179\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/svetlyacheck.jpg\" alt=\"\" width=\"640\" height=\"352\" />', 'О серьёзном', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2018-08-22 14:30:00', '2018-08-22 11:30:00', '', 178, 'http://chist765.beget.tech/178-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2018-08-22 14:32:40', '2018-08-22 11:32:40', 'Любимая прелесть, любимая зая\r\nДышу и живу так тебя называя\r\nБоготворю твой лик\r\nУсталости, не зная\r\nО чувствах я пою\r\nДавай со мной слова, не подбирая,\r\nРодная, ты, не будь жестокую и грубой\r\nО бедах позабудь,\r\nТебе плечом я буду.\r\nТебе буду крылом,\r\nЧто полетим по крышам,\r\nМы сочиним с тобой мелодию всей жизни.\r\n\r\n<img class=\"alignnone size-full wp-image-176\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/love.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2018-08-22 14:32:40', '2018-08-22 11:32:40', '', 175, 'http://chist765.beget.tech/175-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2018-08-22 14:35:29', '2018-08-22 11:35:29', 'Я проснулась на мягкой перине\r\nПлатье выбираю, ведь я, героиня дня!\r\nГраф молодой приедет свататься,\r\nИ везёт гостинцы для меня.\r\nВ землю матушке и батюшке поклонится\r\nС ними дружки его приедут\r\nВесёлый смех на все покои\r\nНо не оставил страх меня в покое\r\nВедь косу заплетают уже\r\nМои подружки и сестры\r\nСмущение девичье закрою под фатой,\r\nВедь он, выбран мне семьей.\r\nЯ покорюсь мужчине в этот день,\r\nИ косы расплетет мне он заботливо,\r\nОбнимет и скажет: «Ты моя голуба навсегда»\r\nКак плакала от счастья в этот день сестра\r\nЕе ведь сватать теперь пора.\r\nС детством и наивностью прощаемся мы в этот день,\r\nМужчине отдают нас в обличье жениха.\r\n\r\n<img class=\"alignnone size-full wp-image-173\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/marry.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '19 век', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2018-08-22 14:35:29', '2018-08-22 11:35:29', '', 172, 'http://chist765.beget.tech/172-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2018-08-22 14:37:57', '2018-08-22 11:37:57', 'Понедельник – начало всех начал,\r\nВ этот день ты сбросишь алкогольное веселье выходных,\r\nНачнешь свою жизнь не праздно, а ярко,\r\nТолько постарайся!\r\nЛюди не умеют отдыхать и жить …\r\nИ жалуются, жалуются…\r\nХватит жаловаться корень проблем в вас,\r\nДерево уже выросло из корня\r\nВ запущенных просторах сознания,\r\nРубите стереотипы, детерминируйте сознание,\r\nНайди понимание в душе.\r\n\r\n<img class=\"alignnone size-full wp-image-167\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/monday.jpg\" alt=\"\" width=\"640\" height=\"426\" />', 'Гимн понедельку', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2018-08-22 14:37:57', '2018-08-22 11:37:57', '', 166, 'http://chist765.beget.tech/166-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2018-08-22 14:41:27', '2018-08-22 11:41:27', 'Я просто рада, что ты пишешь\r\nИ что порой душою слышишь,\r\nХотя я может ошибаюсь,\r\nПорой за маскою скрываясь,\r\nНе замечаю правды от тебя,\r\nВедь я же не твоя...\r\nИ не стремишься завладеть мной.\r\nТак пусть же будем мы друзьями,\r\nИ опираться будем сами\r\nНа плечи тех порой любимых,\r\nТех с кем удобней и теплее.\r\nНо вот душа мне выдает,\r\nТак не бывает, не пойдет!\r\nНо двух любить я не должна,\r\nПогоду сделала сама...\r\nТы будешь сниться мне в виденьях,\r\nВитать в моих полуденных сомненьях.\r\nНо как же короли любили,\r\nЗа расстояния на кораблях ходили,\r\nЗа той принцессой – алой розой,\r\nЗа той прекрасною мимозой,\r\nЗа девушкой своей мечты...\r\n\r\n<img class=\"alignnone size-full wp-image-164\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/love_read.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-08-22 14:41:27', '2018-08-22 11:41:27', '', 163, 'http://chist765.beget.tech/163-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2018-08-22 14:48:50', '2018-08-22 11:48:50', 'Вот и сочельник наступил,\nСтакан воды отцу налит,\nИ тут он хлеба попросил…\nНо где же праздничное настроение\n\nИ алкогольное веселье?\n«Из мелкой мы не пьем посуды!»-\n«Шуткует» папа невпопад.\nИ дома мы сидим и чуда ждем,\nА чуда ждать, как в думе правды.\nСамим чудить? Да мы не рады,\nНам неохота, даже лень…\nИль вдруг постигнет сомнений тень?\nНа нашу чувственную личность.\nХм, не предаться ли усладе?\nДушевной, посмотреть рекламу,\nИли устроить в доме драму?\nПобить посуду, грязь пролить,\nНа всю обыденную сущность.\nВот так жила эта семья\nОтца любила втихаря\nИ мама все его жалела,\nА я терпела, как могла.\n\n<img class=\"alignnone size-full wp-image-161\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/alcohol.jpg\" alt=\"\" width=\"640\" height=\"425\" />', '***', '', 'inherit', 'closed', 'closed', '', '160-autosave-v1', '', '', '2018-08-22 14:48:50', '2018-08-22 11:48:50', '', 160, 'http://chist765.beget.tech/160-autosave-v1/', 0, 'revision', '', 0),
(198, 1, '2018-08-22 14:49:21', '2018-08-22 11:49:21', 'Вот и сочельник наступил,\r\nСтакан воды отцу налит,\r\nИ тут он хлеба попросил…\r\nНо где же праздничное настроение\r\nИ алкогольное веселье?\r\n«Из мелкой мы не пьем посуды!»-\r\n«Шуткует» папа невпопад.\r\nИ дома мы сидим и чуда ждем,\r\nА чуда ждать, как в думе правды.\r\nСамим чудить? Да мы не рады,\r\nНам неохота, даже лень…\r\nИль вдруг постигнет сомнений тень?\r\nНа нашу чувственную личность.\r\nХм, не предаться ли усладе?\r\nДушевной, посмотреть рекламу,\r\nИли устроить в доме драму?\r\nПобить посуду, грязь пролить,\r\nНа всю обыденную сущность.\r\nВот так жила эта семья\r\nОтца любила втихаря\r\nИ мама все его жалела,\r\nА я терпела, как могла.\r\n\r\n<img class=\"alignnone size-full wp-image-161\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/alcohol.jpg\" alt=\"\" width=\"640\" height=\"425\" />', '***', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2018-08-22 14:49:21', '2018-08-22 11:49:21', '', 160, 'http://chist765.beget.tech/160-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2018-08-22 14:55:06', '2018-08-22 11:55:06', 'И вы, познав любовь, бежите\r\nИ вот другой ее руки целует,\r\nЕго другая увлекает взглядом.\r\nТак просто вы сдались, не храбро вы сражались,\r\nА помните, как на балконе жались,\r\nОна старалась, он боялся потерять свободу,\r\nХотя уж несвободен был от чувств.\r\nИ что ж ты прячешься теперь от всего,\r\nБезумцем прикрывая низость дум.\r\nДа не спала она с ним и не собиралась,\r\nОна забыла просто, что ты ей любим,\r\nОна подумала, что будет легче с этим\r\nВеселым балагуром дурачком…\r\nОн все ж добился ее расположения,\r\nНо он так прост, что глубины в нем с горстку,\r\nНе может он сражаться и любить ярчайше\r\nИ тем безумцем как ты он не станет…\r\n\r\n<img class=\"alignnone size-full wp-image-155\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/man_woman.jpg\" alt=\"\" width=\"640\" height=\"330\" />', 'Посвящается Т.С. и А.К.', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2018-08-22 14:55:06', '2018-08-22 11:55:06', '', 154, 'http://chist765.beget.tech/154-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2018-08-22 14:56:20', '2018-08-22 11:56:20', 'Скатился ком с души,\nЯ буду другой…\nНе буду жить во лжи\nИ затеряться бы в спелой ржи.\nВеснушки солнцу показать,\nМечтать о вечной любви\nИ все с собой забрать…\n\n<img class=\"alignnone size-full wp-image-152\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/vesnushki.jpg\" alt=\"\" width=\"640\" height=\"454\" />', '***', '', 'inherit', 'closed', 'closed', '', '151-autosave-v1', '', '', '2018-08-22 14:56:20', '2018-08-22 11:56:20', '', 151, 'http://chist765.beget.tech/151-autosave-v1/', 0, 'revision', '', 0),
(201, 1, '2018-08-22 14:56:37', '2018-08-22 11:56:37', 'Скатился ком с души,\r\nЯ буду другой…\r\nНе буду жить во лжи\r\nИ затеряться бы в спелой ржи.\r\nВеснушки солнцу показать,\r\nМечтать о вечной любви\r\nИ все с собой забрать…\r\n\r\n<img class=\"alignnone size-full wp-image-152\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/vesnushki.jpg\" alt=\"\" width=\"640\" height=\"454\" />', '***', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2018-08-22 14:56:37', '2018-08-22 11:56:37', '', 151, 'http://chist765.beget.tech/151-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2018-08-22 14:57:21', '2018-08-22 11:57:21', 'Своей ты дерзостью достал меня изрядно\nИ что с тобой мне делать непонятно,\nНо мы не видимся и это все меняет...\nПокой в моей душе переполняет.\n\n<img class=\"alignnone size-full wp-image-146\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/quarrel_2.jpg\" alt=\"\" width=\"640\" height=\"465\" />', '***', '', 'inherit', 'closed', 'closed', '', '145-autosave-v1', '', '', '2018-08-22 14:57:21', '2018-08-22 11:57:21', '', 145, 'http://chist765.beget.tech/145-autosave-v1/', 0, 'revision', '', 0),
(203, 1, '2018-08-22 14:57:38', '2018-08-22 11:57:38', 'Своей ты дерзостью достал меня изрядно\r\nИ что с тобой мне делать непонятно,\r\nНо мы не видимся и это все меняет...\r\nПокой в моей душе переполняет.\r\n\r\n<img class=\"alignnone size-full wp-image-146\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/quarrel_2.jpg\" alt=\"\" width=\"640\" height=\"465\" />', '***', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2018-08-22 14:57:38', '2018-08-22 11:57:38', '', 145, 'http://chist765.beget.tech/145-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2018-08-22 15:02:16', '2018-08-22 12:02:16', 'Двадцать первое. Ночь. Понедельник.\r\nОчертания моего города.\r\nРабота, дом, интернет.\r\nЖдешь его ненаглядного онлайн\r\nИ постишь паблик о любви,\r\nЧтоб посмотрел и понял милый,\r\nКак я его по-современному люблю\r\nИ как он жил? И как он будет жить\r\nЗа тысячами километров в интернете?\r\nОн же заварит кофе и уедет в ночь,\r\nДвинет по газам и умчится прочь.\r\nА что могу я? Надо же подумать\r\nВ жизни что то решить\r\nБоится он …\r\nТрепещется сердечко как рыбка в тех силках,\r\nНо я найду местечко в твоих бездонных снах…\r\n\r\n<img class=\"alignnone size-full wp-image-185\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/stena.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-08-22 15:02:16', '2018-08-22 12:02:16', '', 139, 'http://chist765.beget.tech/139-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2018-08-22 15:05:44', '2018-08-22 12:05:44', 'Ты ни в чем ни виновата,\r\nТолько дай другим дышать,\r\nЗа тобой поля лопатой\r\nПустоты мне выгребать.\r\nЯ ревную его к тебе\r\nНо ничего по сути он не должен мне.\r\nНе играйся, оставь его, ведь он тебя предал.\r\nЯ не знаю, что будет дальше,\r\n\r\nНо он может любить еще,\r\nНе тебя, не меня, не Катю,\r\nМожет в будущем счастье его…\r\n\r\n<img class=\"alignnone size-full wp-image-137\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/p_romanova.jpg\" alt=\"\" width=\"640\" height=\"426\" />', 'Посвящается Пелагее Романовой', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2018-08-22 15:05:44', '2018-08-22 12:05:44', '', 136, 'http://chist765.beget.tech/136-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2018-08-22 15:10:11', '2018-08-22 12:10:11', 'Девочка – неформал.\r\nВ будни мечтала о карьере врача,\r\nВ выходные пиво попивала,\r\nЧто есть любовь она не знала…\r\nИ словом метила с усмешкой палача,\r\nИ были отношения, природа…\r\nИграла в ней немецкая порода,\r\nПридуманная корона слетала не спеша…\r\nИ жизнь ее была трудна,\r\nЛюбовь она лелеяла, но высказаться не могла,\r\nПогладив голову своего любимого отца.\r\nДуша ее рыдала и кляла себя\r\nЗа непростительную грубость…\r\nИ я скучаю по ней ведь она\r\nМоя подруга, Александра моя.\r\n\r\n<img class=\"alignnone size-full wp-image-125\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/alexa_exter.jpg\" alt=\"\" width=\"640\" height=\"359\" />', 'Посвящается Александре Экстер', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2018-08-22 15:10:11', '2018-08-22 12:10:11', '', 124, 'http://chist765.beget.tech/124-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2018-08-22 15:14:02', '2018-08-22 12:14:02', 'О да ты крут противоречием,\r\nСвоим бытовским красноречием.\r\nОбидеть и подставить - для тебя,\r\nНе против тех играешь,\r\nТы не поймешь тебе же все равно.\r\nКому ты врешь?\r\nТы в кучку наркоманов, алкашей\r\nВойдешь и будешь богом. Ахаха!\r\nБыть может также склеишь ласты,\r\nНе надо покоряться тем соблазнам\r\nИ считаться нормалью мира.\r\nБудь ты просто Человеком\r\nИ не делай из наркомана кумира.\r\n\r\n<img class=\"alignnone size-full wp-image-121\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/quarrel.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2018-08-22 15:14:02', '2018-08-22 12:14:02', '', 120, 'http://chist765.beget.tech/120-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2018-08-22 15:16:16', '2018-08-22 12:16:16', 'Мы о любви не говорим…\r\nИ за улыбкой боль скрываем,\r\nРешаем, думаем, гадаем,\r\nНо о любви не говорим…\r\nМы холод в разговоре пустим,\r\nИли кого-то оскорбим\r\nИ душу на замок закроем,\r\nНо о любви мы промолчим…\r\n\r\n<img class=\"alignnone size-full wp-image-60\" src=\"http://chist765.beget.tech/wp-content/uploads/2018/05/Dont_talk.jpg\" alt=\"\" width=\"640\" height=\"424\" />', 'Мы о любви не говорим', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-08-22 15:16:16', '2018-08-22 12:16:16', '', 86, 'http://chist765.beget.tech/86-revision-v1/', 0, 'revision', '', 0),
(209, 1, '2018-08-22 15:18:27', '2018-08-22 12:18:27', 'Твой лик прекрасен,\r\nШирок твой кругозор\r\nКогда ты обратишь на меня свой взгляд\r\nРастает небо, солнце\r\nИ все воронкою сомкнётся.\r\nМне ничего не нужно,\r\nЯ уже безмерно рад.\r\n\r\n<img class=\"alignnone size-full wp-image-187\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/guy.jpg\" alt=\"\" width=\"640\" height=\"426\" />', '***', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2018-08-22 15:18:27', '2018-08-22 12:18:27', '', 182, 'http://chist765.beget.tech/182-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2018-08-22 15:21:47', '2018-08-22 12:21:47', 'Ты наша мать,\r\nПобитая монголом,\r\nВоспрянувшая при Петре…\r\nИмперией ты стала, подросла,\r\nНо вот тебе опять грозят расколом,\r\nФранцузы, турки, немцы…\r\nИ растерзать готовы на куски -\r\nЭти голодные страны-псы,\r\nНо ты опять затеплилась жизнью – рекой,\r\nВпереди был социалистический строй!\r\nИ говорят, что жили хорошо до 90-ых,\r\nИз танка бахнули, поголодали, разошлись…\r\nЗакон свой приняли…\r\nВыживали сыны твои как могли,\r\nИ рынки грабили, и земли покупали…\r\nТебя опять третировать пытается,\r\nАмериканский эшафот,\r\nНо ты опять воспрянешь, выживешь, восстанешь\r\nИ дашь достойнейший отпор!\r\n\r\n<div><img class=\"alignnone size-full wp-image-64\" src=\"http://chist765.beget.tech/wp-content/uploads/2018/05/russia.jpg\" alt=\"\" width=\"640\" height=\"424\" /></div>', 'Россия', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-08-22 15:21:47', '2018-08-22 12:21:47', '', 84, 'http://chist765.beget.tech/84-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2018-08-22 15:25:59', '2018-08-22 12:25:59', 'Периодами откровения в душе\nМне хочется писать стихи\nЧтоб как-нибудь выживать в тьме...\nИ в недоверии, и в лени признаваться\nСебе! Но это не совсем приятно...\nА может написать про бабочку, порхающую на цветке,\nРосой промокшей, ногами скользящей по траве\nТой дочери моей,\nПытающейся поймать то улетающее чудо!\nИ пусть эта мечта осуществиться\nПоявится девчонка - озорница\nРадостью и смыслом для меня все озариться!\nИ буду я любить ее, как любит меня Бог.\n\n<img class=\"alignnone size-full wp-image-62\" src=\"http://marysblog/wp-content/uploads/2018/05/girl_2.jpg\" alt=\"\" width=\"640\" height=\"424\" />', '***', '', 'inherit', 'closed', 'closed', '', '80-autosave-v1', '', '', '2018-08-22 15:25:59', '2018-08-22 12:25:59', '', 80, 'http://chist765.beget.tech/80-autosave-v1/', 0, 'revision', '', 0),
(212, 1, '2018-08-22 15:26:18', '2018-08-22 12:26:18', 'Периодами откровения в душе\r\nМне хочется писать стихи,\r\nЧтоб как-нибудь выживать в тьме...\r\nИ в недоверии, и в лени признаваться\r\nСебе! Но это не совсем приятно...\r\nА может написать про бабочку, порхающую на цветке,\r\nРосой промокшей, ногами скользящей по траве.\r\nТой дочери моей,\r\nПытающейся поймать то улетающее чудо!\r\nИ пусть эта мечта осуществиться,\r\nПоявится девчонка – озорница,\r\nРадостью и смыслом для меня все озариться!\r\nИ буду я любить ее, как любит меня Бог.\r\n\r\n<img class=\"alignnone size-full wp-image-62\" src=\"http://marysblog/wp-content/uploads/2018/05/girl_2.jpg\" alt=\"\" width=\"640\" height=\"424\" />', '***', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-08-22 15:26:18', '2018-08-22 12:26:18', '', 80, 'http://chist765.beget.tech/80-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2018-08-22 15:32:33', '2018-08-22 12:32:33', 'Я самой лучшей девушкой была\nТеперь Я- твой страх, твоя беда\nКогда то может обманула\nЧто в сердце проникать не буду...\nИ месть была и лживые объятья\nТогда не разбиралась в них, признаюсь\nА вот сейчас перед тобой стою, тебе я каюсь!!!\nГодами осознать пыталась\nЧто есть обида а что боль...\nТебе стихи не посвящала\nА, вот, сегодня, прочитать изволь\n\n<img class=\"alignnone size-full wp-image-63\" src=\"http://marysblog/wp-content/uploads/2018/05/R.jpg\" alt=\"\" width=\"640\" height=\"426\" />', 'Посвящается Р...', '', 'inherit', 'closed', 'closed', '', '82-autosave-v1', '', '', '2018-08-22 15:32:33', '2018-08-22 12:32:33', '', 82, 'http://chist765.beget.tech/82-autosave-v1/', 0, 'revision', '', 0),
(214, 1, '2018-08-22 15:32:38', '2018-08-22 12:32:38', 'Я самой лучшей девушкой была\r\nТеперь Я - твой страх, твоя беда.\r\nКогда-то может обманула,\r\nЧто в сердце проникать не буду...\r\nИ месть была и лживые объятья,\r\nТогда не разбиралась в них, признаюсь.\r\nА вот сейчас перед тобой стою, тебе я каюсь!\r\nГодами осознать пыталась,\r\nЧто есть обида, а что боль...\r\nТебе стихи не посвящала,\r\nА вот сегодня прочитать изволь…\r\n\r\n<img class=\"alignnone size-full wp-image-63\" src=\"http://marysblog/wp-content/uploads/2018/05/R.jpg\" alt=\"\" width=\"640\" height=\"426\" />', 'Посвящается Р...', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-08-22 15:32:38', '2018-08-22 12:32:38', '', 82, 'http://chist765.beget.tech/82-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2018-08-22 15:37:43', '2018-08-22 12:37:43', 'Как много можно изменить...\r\nВы не представляли себя Богом?\r\nЯ представила,\r\nВот человеку плечо подставила\r\nИ он перестал грустить.\r\nВот девушке любимого вернула\r\nИ боль ушла, и улыбается она.\r\nМатери живого сына подарила с войны,\r\nКак благодарила она с молитвой\r\nТеперь не расставаясь с ним.\r\nЯ провела по голове и рак забрала\r\nУ того кудрявого малыша\r\nИ высохли слезы у страдающих,\r\nУлыбка озарила лица их.\r\nВсе будет хорошо ведь я для них живу\r\nИ с ними я как Бог во плоти…\r\n\r\n<img class=\"alignnone size-full wp-image-179\" src=\"http://marysblog.loc/wp-content/uploads/2018/08/svetlyacheck.jpg\" alt=\"\" width=\"640\" height=\"352\" />', 'О серьёзном', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2018-08-22 15:37:43', '2018-08-22 12:37:43', '', 178, 'http://chist765.beget.tech/178-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--
-- Создание: Авг 17 2018 г., 18:38
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--
-- Создание: Авг 17 2018 г., 18:38
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(3, 'Меню социальных ссылок', '%d0%bc%d0%b5%d0%bd%d1%8e-%d1%81%d0%be%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d1%85-%d1%81%d1%81%d1%8b%d0%bb%d0%be%d0%ba', 0),
(6, 'Друзьям', 'friends', 0),
(7, 'Размышления', '%d1%80%d0%b0%d0%b7%d0%bc%d1%8b%d1%88%d0%bb%d0%b5%d0%bd%d0%b8%d1%8f', 0),
(8, 'Стихи любимых поэтов', '%d1%81%d1%82%d0%b8%d1%85%d0%b8-%d0%bb%d1%8e%d0%b1%d0%b8%d0%bc%d1%8b%d1%85-%d0%bf%d0%be%d1%8d%d1%82%d0%be%d0%b2', 0),
(9, 'О родине', '%d0%be-%d1%80%d0%be%d0%b4%d0%b8%d0%bd%d0%b5', 0),
(10, 'О любви', '%d0%be-%d0%bb%d1%8e%d0%b1%d0%b2%d0%b8', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--
-- Создание: Авг 17 2018 г., 18:38
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(37, 2, 0),
(41, 3, 0),
(42, 3, 0),
(43, 3, 0),
(44, 3, 0),
(45, 3, 0),
(78, 8, 0),
(80, 7, 0),
(82, 6, 0),
(84, 9, 0),
(86, 10, 0),
(120, 10, 0),
(124, 6, 0),
(128, 8, 0),
(136, 6, 0),
(139, 10, 0),
(142, 8, 0),
(145, 10, 0),
(148, 8, 0),
(151, 7, 0),
(154, 6, 0),
(157, 8, 0),
(160, 7, 0),
(163, 10, 0),
(166, 7, 0),
(169, 10, 0),
(172, 10, 0),
(175, 10, 0),
(178, 7, 0),
(182, 10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--
-- Создание: Авг 17 2018 г., 18:38
-- Последнее обновление: Авг 22 2018 г., 12:40
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 5),
(6, 6, 'category', '', 0, 4),
(7, 7, 'category', '', 0, 5),
(8, 8, 'category', '', 0, 4),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--
-- Создание: Авг 17 2018 г., 18:38
-- Последнее обновление: Авг 23 2018 г., 11:58
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'MaryKon'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '190'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"176.59.113.0\";}'),
(20, 1, 'session_tokens', 'a:2:{s:64:\"571de58d0c7b49141b74f3e69db7258086d0e35b3cd2a2860fa8f689b000e5a0\";a:4:{s:10:\"expiration\";i:1536146234;s:2:\"ip\";s:14:\"176.59.113.222\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1.2 Safari/605.1.15\";s:5:\"login\";i:1534936634;}s:64:\"f0a7e17314be966a70fc992eaca7678c7ec39288884e72b6f1fa5b035677bd2b\";a:4:{s:10:\"expiration\";i:1535198296;s:2:\"ip\";s:14:\"176.59.113.207\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1.2 Safari/605.1.15\";s:5:\"login\";i:1535025496;}}'),
(21, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&imgsize=full&hidetb=1'),
(22, 1, 'wp_user-settings-time', '1534941155'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--
-- Создание: Авг 17 2018 г., 18:38
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'MaryKon', '$P$BQOVD15toKJzfFYDEk86qlMIDoTjt9.', 'MaryKon', 'marysblog@yandex.ru', '', '2018-05-28 19:58:55', '', 0, 'MaryKon');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
