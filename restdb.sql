-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2022 at 04:50 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-01-24 05:00:21', '2022-01-24 05:00:21', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/restapp', 'yes'),
(2, 'home', 'http://localhost/restapp', 'yes'),
(3, 'blogname', 'Rest App', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shirishkhadgi23@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/%category%/', 'yes'),
(29, 'rewrite_rules', 'a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\"[^/]+/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"[^/]+/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"[^/]+/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"[^/]+/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"[^/]+/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"[^/]+/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"([^/]+)/(.+?)/embed/?$\";s:63:\"index.php?name=$matches[1]&category_name=$matches[2]&embed=true\";s:26:\"([^/]+)/(.+?)/trackback/?$\";s:57:\"index.php?name=$matches[1]&category_name=$matches[2]&tb=1\";s:46:\"([^/]+)/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:41:\"([^/]+)/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:34:\"([^/]+)/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?name=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:41:\"([^/]+)/(.+?)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?name=$matches[1]&category_name=$matches[2]&cpage=$matches[3]\";s:30:\"([^/]+)/(.+?)(?:/([0-9]+))?/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&page=$matches[3]\";s:20:\"[^/]+/.+?/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"[^/]+/.+?/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"[^/]+/.+?/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"[^/]+/.+?/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"[^/]+/.+?/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"[^/]+/.+?/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:47:\"show-current-template/show-current-template.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:62:\"C:\\xampp\\htdocs\\restapp/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'restapp', 'yes'),
(41, 'stylesheet', 'restapp', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '5', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1658552420', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1643274022;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1643302822;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1643346021;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1643346028;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1643346031;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1643691622;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1643022977;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.9.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.9-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.9-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.9\";s:7:\"version\";s:3:\"5.9\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.9.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.9-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.9-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.9\";s:7:\"version\";s:3:\"5.9\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1643270557;s:15:\"version_checked\";s:5:\"5.8.3\";s:12:\"translations\";a:0:{}}', 'no'),
(128, '_site_transient_timeout_browser_cffbe18966f003701a20fcd9a6e0b17e', '1643605229', 'no'),
(129, '_site_transient_browser_cffbe18966f003701a20fcd9a6e0b17e', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"96.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_bbe0b0d516d9a70a0e1aa1834ea07179', '1643605230', 'no'),
(131, '_site_transient_php_check_bbe0b0d516d9a70a0e1aa1834ea07179', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(149, 'current_theme', 'RestApp Theme', 'yes'),
(150, 'theme_mods_twentytwenty', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1643005759;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(155, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'theme_mods_restapp', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1643005832;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(176, 'theme_mods_restapp_theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1643022970;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(180, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(198, 'recently_activated', 'a:0:{}', 'yes'),
(249, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'yes'),
(293, 'recovery_mode_email_last_sent', '1643169730', 'yes'),
(325, 'category_children', 'a:0:{}', 'yes'),
(362, '_site_transient_timeout_theme_roots', '1643272358', 'no'),
(363, '_site_transient_theme_roots', 'a:4:{s:7:\"restapp\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(364, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1643270560;s:7:\"checked\";a:4:{s:7:\"restapp\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.2.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(365, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1643270561;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:3:\"5.9\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.4.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.4.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.2.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.4.6\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1643161539:1'),
(4, 7, '_edit_lock', '1643172362:1'),
(9, 5, '_edit_last', '1'),
(10, 5, '_wp_page_template', ''),
(11, 11, '_wp_trash_meta_status', 'publish'),
(12, 11, '_wp_trash_meta_time', '1643014692'),
(21, 14, '_menu_item_type', 'custom'),
(22, 14, '_menu_item_menu_item_parent', '0'),
(23, 14, '_menu_item_object_id', '14'),
(24, 14, '_menu_item_object', 'custom'),
(25, 14, '_menu_item_target', ''),
(26, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 14, '_menu_item_xfn', ''),
(28, 14, '_menu_item_url', 'http://localhost/restapp'),
(29, 12, '_wp_trash_meta_status', 'publish'),
(30, 12, '_wp_trash_meta_time', '1643014749'),
(31, 2, '_edit_lock', '1643171776:1'),
(32, 17, '_edit_lock', '1643161594:1'),
(33, 17, '_wp_page_template', 'page-contents.php'),
(34, 19, '_menu_item_type', 'post_type'),
(35, 19, '_menu_item_menu_item_parent', '0'),
(36, 19, '_menu_item_object_id', '17'),
(37, 19, '_menu_item_object', 'page'),
(38, 19, '_menu_item_target', ''),
(39, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 19, '_menu_item_xfn', ''),
(41, 19, '_menu_item_url', ''),
(43, 14, '_wp_old_date', '2022-01-24'),
(44, 20, '_menu_item_type', 'post_type'),
(45, 20, '_menu_item_menu_item_parent', '0'),
(46, 20, '_menu_item_object_id', '5'),
(47, 20, '_menu_item_object', 'page'),
(48, 20, '_menu_item_target', ''),
(49, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 20, '_menu_item_xfn', ''),
(51, 20, '_menu_item_url', ''),
(57, 1, '_edit_lock', '1643173843:1'),
(71, 40, '_edit_lock', '1643099409:1'),
(73, 1, '_edit_last', '1'),
(77, 42, '_wp_attached_file', '2022/01/pexels-kindel-media-7688335.jpg'),
(78, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:39:\"2022/01/pexels-kindel-media-7688335.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 43, '_wp_attached_file', '2022/01/sunrise-forest-river-scenery-digital-art-uhdpaper.com-hd-118.jpg'),
(80, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:72:\"2022/01/sunrise-forest-river-scenery-digital-art-uhdpaper.com-hd-118.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 44, '_wp_attached_file', '2022/01/Rick-and-Morty.png'),
(82, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:26:\"2022/01/Rick-and-Morty.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 7, '_edit_last', '1'),
(84, 7, '_thumbnail_id', '44'),
(86, 1, '_thumbnail_id', '42'),
(88, 46, '_edit_last', '1'),
(89, 46, '_edit_lock', '1643172352:1'),
(91, 17, '_wp_trash_meta_status', 'publish'),
(92, 17, '_wp_trash_meta_time', '1643161739'),
(93, 17, '_wp_desired_post_slug', 'contents'),
(94, 2, '_edit_last', '1'),
(101, 52, '_wp_trash_meta_status', 'publish'),
(102, 52, '_wp_trash_meta_time', '1643175367'),
(103, 52, '_wp_desired_post_slug', 'sdasda'),
(105, 54, '_edit_lock', '1643178978:1'),
(114, 56, '_wp_trash_meta_status', 'publish'),
(115, 56, '_wp_trash_meta_time', '1643178003'),
(116, 56, '_wp_desired_post_slug', '56-2'),
(117, 60, '_wp_trash_meta_status', 'publish'),
(118, 60, '_wp_trash_meta_time', '1643178005'),
(119, 60, '_wp_desired_post_slug', '60-2'),
(120, 59, '_wp_trash_meta_status', 'publish'),
(121, 59, '_wp_trash_meta_time', '1643178007'),
(122, 59, '_wp_desired_post_slug', 'dsa'),
(123, 58, '_wp_trash_meta_status', 'publish'),
(124, 58, '_wp_trash_meta_time', '1643178008'),
(125, 58, '_wp_desired_post_slug', 'sda-2'),
(126, 57, '_wp_trash_meta_status', 'publish'),
(127, 57, '_wp_trash_meta_time', '1643178009'),
(128, 57, '_wp_desired_post_slug', '57-2'),
(129, 55, '_wp_trash_meta_status', 'publish'),
(130, 55, '_wp_trash_meta_time', '1643178010'),
(131, 55, '_wp_desired_post_slug', 'sda'),
(132, 61, '_wp_trash_meta_status', 'publish'),
(133, 61, '_wp_trash_meta_time', '1643178011'),
(134, 61, '_wp_desired_post_slug', 'ads'),
(135, 62, '_wp_trash_meta_status', 'publish'),
(136, 62, '_wp_trash_meta_time', '1643178012'),
(137, 62, '_wp_desired_post_slug', 's'),
(140, 71, '_wp_trash_meta_status', 'publish'),
(141, 71, '_wp_trash_meta_time', '1643178098'),
(142, 71, '_wp_desired_post_slug', '71-2'),
(143, 72, '_wp_trash_meta_status', 'publish'),
(144, 72, '_wp_trash_meta_time', '1643178100'),
(145, 72, '_wp_desired_post_slug', '72-2'),
(148, 54, '_edit_last', '1'),
(155, 82, '_wp_trash_meta_status', 'publish'),
(156, 82, '_wp_trash_meta_time', '1643180663'),
(157, 82, '_wp_desired_post_slug', 'as'),
(158, 80, '_wp_trash_meta_status', 'publish'),
(159, 80, '_wp_trash_meta_time', '1643180665'),
(160, 80, '_wp_desired_post_slug', 'asd-2'),
(161, 79, '_wp_trash_meta_status', 'publish'),
(162, 79, '_wp_trash_meta_time', '1643180667'),
(163, 79, '_wp_desired_post_slug', 'asd'),
(164, 78, '_wp_trash_meta_status', 'publish'),
(165, 78, '_wp_trash_meta_time', '1643180668'),
(166, 78, '_wp_desired_post_slug', 'red'),
(167, 76, '_wp_trash_meta_status', 'publish'),
(168, 76, '_wp_trash_meta_time', '1643180669'),
(169, 76, '_wp_desired_post_slug', 'sadsa'),
(170, 75, '_wp_trash_meta_status', 'publish'),
(171, 75, '_wp_trash_meta_time', '1643180670'),
(172, 75, '_wp_desired_post_slug', 're'),
(184, 99, '_wp_trash_meta_status', 'publish'),
(185, 99, '_wp_trash_meta_time', '1643191138'),
(186, 99, '_wp_desired_post_slug', 'rte'),
(187, 98, '_wp_trash_meta_status', 'publish'),
(188, 98, '_wp_trash_meta_time', '1643191140'),
(189, 98, '_wp_desired_post_slug', 'here-2'),
(190, 96, '_wp_trash_meta_status', 'publish'),
(191, 96, '_wp_trash_meta_time', '1643191141'),
(192, 96, '_wp_desired_post_slug', 're'),
(193, 97, '_wp_trash_meta_status', 'publish'),
(194, 97, '_wp_trash_meta_time', '1643191142'),
(195, 97, '_wp_desired_post_slug', 'here'),
(196, 94, '_wp_trash_meta_status', 'publish'),
(197, 94, '_wp_trash_meta_time', '1643191144'),
(198, 94, '_wp_desired_post_slug', 'image'),
(199, 95, '_wp_trash_meta_status', 'publish'),
(200, 95, '_wp_trash_meta_time', '1643191145'),
(201, 95, '_wp_desired_post_slug', 'unimage'),
(202, 93, '_wp_trash_meta_status', 'publish'),
(203, 93, '_wp_trash_meta_time', '1643191146'),
(204, 93, '_wp_desired_post_slug', 'test-2'),
(205, 91, '_wp_trash_meta_status', 'publish'),
(206, 91, '_wp_trash_meta_time', '1643191148'),
(207, 91, '_wp_desired_post_slug', 'removed-technology-section'),
(208, 92, '_wp_trash_meta_status', 'publish'),
(209, 92, '_wp_trash_meta_time', '1643191150'),
(210, 92, '_wp_desired_post_slug', 'test'),
(211, 90, '_wp_trash_meta_status', 'publish'),
(212, 90, '_wp_trash_meta_time', '1643191151'),
(213, 90, '_wp_desired_post_slug', 'rest'),
(214, 89, '_wp_trash_meta_status', 'publish'),
(215, 89, '_wp_trash_meta_time', '1643191154'),
(216, 89, '_wp_desired_post_slug', 'random'),
(218, 111, '_thumbnail_id', '44'),
(226, 114, '_thumbnail_id', '44');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-01-24 05:00:21', '2022-01-24 05:00:21', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-01-26 04:48:57', '2022-01-26 04:48:57', '', 0, 'http://localhost/restapp/?p=1', 0, 'post', '', 1),
(2, 1, '2022-01-24 05:00:21', '2022-01-24 05:00:21', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/restapp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-01-26 01:50:57', '2022-01-26 01:50:57', '', 0, 'http://localhost/restapp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-01-24 05:00:21', '2022-01-24 05:00:21', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/restapp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-01-24 05:00:21', '2022-01-24 05:00:21', '', 0, 'http://localhost/restapp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-01-24 05:00:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-01-24 05:00:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/restapp/?p=4', 0, 'post', '', 0),
(5, 1, '2022-01-24 05:27:29', '2022-01-24 05:27:29', '', 'Content', '', 'publish', 'closed', 'closed', '', 'content', '', '', '2022-01-25 03:34:27', '2022-01-25 03:34:27', '', 0, 'http://localhost/restapp/?page_id=5', 0, 'page', '', 0),
(6, 1, '2022-01-24 05:27:29', '2022-01-24 05:27:29', '', 'Posts', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-01-24 05:27:29', '2022-01-24 05:27:29', '', 5, 'http://localhost/restapp/?p=6', 0, 'revision', '', 0),
(7, 1, '2022-01-24 05:36:03', '2022-01-24 05:36:03', '<!-- wp:separator --><hr class=\"wp-block-separator\" /><!-- /wp:separator -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Demo post to test if this text is displaying as it should.</p>\r\n<!-- /wp:paragraph -->', 'This is a demo Post', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', 'publish', 'open', 'open', '', 'this-is-a-demo-post', '', '', '2022-01-26 04:48:23', '2022-01-26 04:48:23', '', 0, 'http://localhost/restapp/?p=7', 0, 'post', '', 0),
(9, 1, '2022-01-24 05:36:03', '2022-01-24 05:36:03', '<!-- wp:paragraph -->\n<p>Demo post to test if this text is displaying as it should.</p>\n<!-- /wp:paragraph -->', 'This is a demo Post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-24 05:36:03', '2022-01-24 05:36:03', '', 7, 'http://localhost/restapp/?p=9', 0, 'revision', '', 0),
(10, 1, '2022-01-24 05:52:32', '2022-01-24 05:52:32', '', 'Content', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-01-24 05:52:32', '2022-01-24 05:52:32', '', 5, 'http://localhost/restapp/?p=10', 0, 'revision', '', 0),
(11, 1, '2022-01-24 08:58:12', '2022-01-24 08:58:12', '{\n    \"restapp_theme::nav_menu_locations[primary]\": {\n        \"value\": -2029912061857690600,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-24 08:58:12\"\n    },\n    \"nav_menu[-2029912061857690600]\": {\n        \"value\": {\n            \"name\": \"Primary Menu Links\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-24 08:58:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '75d584fc-66b3-4666-81ef-cf583a26edcd', '', '', '2022-01-24 08:58:12', '2022-01-24 08:58:12', '', 0, 'http://localhost/restapp/75d584fc-66b3-4666-81ef-cf583a26edcd/', 0, 'customize_changeset', '', 0),
(12, 1, '2022-01-24 08:59:09', '2022-01-24 08:59:09', '{\n    \"nav_menu_item[-7224412154301838000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-24 08:59:09\"\n    },\n    \"nav_menu_item[-5952768784284198000]\": {\n        \"value\": {\n            \"object_id\": 5,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Content\",\n            \"url\": \"http://localhost/restapp/content/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Content\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Posts Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-24 08:59:09\"\n    },\n    \"nav_menu_item[-2295744060281946000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-24 08:59:09\"\n    },\n    \"nav_menu_item[-8676011141787179000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/restapp\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-24 08:59:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1f6634e3-4884-4ce1-a09f-10e87e8e86bd', '', '', '2022-01-24 08:59:09', '2022-01-24 08:59:09', '', 0, 'http://localhost/restapp/1f6634e3-4884-4ce1-a09f-10e87e8e86bd/', 0, 'customize_changeset', '', 0),
(14, 1, '2022-01-25 03:58:05', '2022-01-24 08:59:09', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-01-25 03:58:05', '2022-01-25 03:58:05', '', 0, 'http://localhost/restapp/home/', 1, 'nav_menu_item', '', 0),
(15, 1, '2022-01-24 10:49:39', '2022-01-24 10:49:39', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/restapp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-01-24 10:49:39', '2022-01-24 10:49:39', '', 2, 'http://localhost/restapp/?p=15', 0, 'revision', '', 0),
(16, 1, '2022-01-24 11:22:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-01-24 11:22:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/restapp/?p=16', 0, 'post', '', 0),
(17, 1, '2022-01-25 03:34:39', '2022-01-25 03:34:39', '', 'More Contents', '', 'trash', 'closed', 'closed', '', 'contents__trashed', '', '', '2022-01-26 01:48:59', '2022-01-26 01:48:59', '', 0, 'http://localhost/restapp/?page_id=17', 0, 'page', '', 0),
(18, 1, '2022-01-25 03:34:39', '2022-01-25 03:34:39', '', 'Contents', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-01-25 03:34:39', '2022-01-25 03:34:39', '', 17, 'http://localhost/restapp/?p=18', 0, 'revision', '', 0),
(19, 1, '2022-01-25 03:58:05', '2022-01-25 03:35:18', '', 'More Content', '', 'publish', 'closed', 'closed', '', '19', '', '', '2022-01-25 03:58:05', '2022-01-25 03:58:05', '', 0, 'http://localhost/restapp/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2022-01-25 03:58:05', '2022-01-25 03:58:05', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2022-01-25 03:58:05', '2022-01-25 03:58:05', '', 0, 'http://localhost/restapp/?p=20', 3, 'nav_menu_item', '', 0),
(21, 1, '2022-01-25 03:58:31', '2022-01-25 03:58:31', '', 'More Contents', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-01-25 03:58:31', '2022-01-25 03:58:31', '', 17, 'http://localhost/restapp/?p=21', 0, 'revision', '', 0),
(22, 1, '2022-01-25 03:58:55', '2022-01-25 03:58:55', '<!-- wp:post-content /-->', 'More Contents', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-01-25 03:58:55', '2022-01-25 03:58:55', '', 17, 'http://localhost/restapp/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-01-25 03:59:22', '2022-01-25 03:59:22', '<!-- wp:post-content /-->\n\n<!-- wp:post-title /-->', 'More Contents', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-01-25 03:59:22', '2022-01-25 03:59:22', '', 17, 'http://localhost/restapp/?p=23', 0, 'revision', '', 0),
(24, 1, '2022-01-25 03:59:55', '2022-01-25 03:59:55', '', 'More Contents', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-01-25 03:59:55', '2022-01-25 03:59:55', '', 17, 'http://localhost/restapp/?p=24', 0, 'revision', '', 0),
(25, 1, '2022-01-25 07:58:11', '2022-01-25 07:58:11', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Demo post to test if this text is displaying as it should.</p>\n<!-- /wp:paragraph -->', 'This is a demo Post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-25 07:58:11', '2022-01-25 07:58:11', '', 7, 'http://localhost/restapp/?p=25', 0, 'revision', '', 0),
(27, 1, '2022-01-25 07:59:11', '2022-01-25 07:59:11', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Demo post to test if this text is displaying as it should.</p>\n<!-- /wp:paragraph -->', 'This is a demo Post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-25 07:59:11', '2022-01-25 07:59:11', '', 7, 'http://localhost/restapp/?p=27', 0, 'revision', '', 0),
(28, 1, '2022-01-25 08:03:07', '2022-01-25 08:03:07', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Demo post to test if this text is displaying as it should.</p>\n<!-- /wp:paragraph -->', 'This is a demo Post', 'm is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-25 08:03:07', '2022-01-25 08:03:07', '', 7, 'http://localhost/restapp/?p=28', 0, 'revision', '', 0),
(29, 1, '2022-01-25 08:12:55', '2022-01-25 08:12:55', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Demo post to test if this text is displaying as it should.</p>\n<!-- /wp:paragraph -->', 'This is a demo Post', 'm is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-25 08:12:55', '2022-01-25 08:12:55', '', 7, 'http://localhost/restapp/?p=29', 0, 'revision', '', 0),
(30, 1, '2022-01-25 08:13:01', '2022-01-25 08:13:01', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). </p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-01-25 08:13:01', '2022-01-25 08:13:01', '', 1, 'http://localhost/restapp/?p=30', 0, 'revision', '', 0),
(31, 1, '2022-01-25 08:13:46', '2022-01-25 08:13:46', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Demo post to test if this text is displaying as it should.</p>\n<!-- /wp:paragraph -->', 'This is a demo Post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-25 08:13:46', '2022-01-25 08:13:46', '', 7, 'http://localhost/restapp/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-01-25 08:16:43', '2022-01-25 08:16:43', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Demo post to test if this text is displaying as it should.</p>\n<!-- /wp:paragraph -->', 'This is a demo Post', 'e', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2022-01-25 08:16:43', '2022-01-25 08:16:43', '', 7, 'http://localhost/restapp/?p=32', 0, 'revision', '', 0),
(33, 1, '2022-01-25 08:16:57', '2022-01-25 08:16:57', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Demo post to test if this text is displaying as it should.</p>\n<!-- /wp:paragraph -->', 'This is a demo Post', 'excerpt sadnbsalkjd asdlkhaslkd  jasdlk saj dslkjlmsdlk saljd aslkdlkas  lasdjlaskdlksa dlkas lksajdlaskdjslk salk lzxcnasdhals dlkasdlksa dlsa ld salkdsalhd ouasdouwq', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-25 08:16:57', '2022-01-25 08:16:57', '', 7, 'http://localhost/restapp/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-01-25 08:17:10', '2022-01-25 08:17:10', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Demo post to test if this text is displaying as it should.</p>\n<!-- /wp:paragraph -->', 'This is a demo Post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-25 08:17:10', '2022-01-25 08:17:10', '', 7, 'http://localhost/restapp/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-01-25 08:17:30', '2022-01-25 08:17:30', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Demo post to test if this text is displaying as it should.</p>\n<!-- /wp:paragraph -->', 'This is a demo Post', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-25 08:17:30', '2022-01-25 08:17:30', '', 7, 'http://localhost/restapp/?p=35', 0, 'revision', '', 0),
(40, 1, '2022-01-25 08:32:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-01-25 08:32:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/restapp/?p=40', 0, 'post', '', 0),
(41, 1, '2022-01-25 08:37:32', '2022-01-25 08:37:32', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-01-25 08:37:32', '2022-01-25 08:37:32', '', 1, 'http://localhost/restapp/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-01-25 09:11:11', '2022-01-25 09:11:11', '', 'pexels-kindel-media-7688335', '', 'inherit', 'open', 'closed', '', 'pexels-kindel-media-7688335', '', '', '2022-01-25 09:11:11', '2022-01-25 09:11:11', '', 0, 'http://localhost/restapp/wp-content/uploads/2022/01/pexels-kindel-media-7688335.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2022-01-25 09:11:15', '2022-01-25 09:11:15', '', 'sunrise-forest-river-scenery-digital-art-uhdpaper.com-hd-118', '', 'inherit', 'open', 'closed', '', 'sunrise-forest-river-scenery-digital-art-uhdpaper-com-hd-118', '', '', '2022-01-25 09:11:15', '2022-01-25 09:11:15', '', 0, 'http://localhost/restapp/wp-content/uploads/2022/01/sunrise-forest-river-scenery-digital-art-uhdpaper.com-hd-118.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2022-01-25 09:11:17', '2022-01-25 09:11:17', '', 'Rick and Morty', '', 'inherit', 'open', 'closed', '', 'rick-and-morty', '', '', '2022-01-25 09:11:17', '2022-01-25 09:11:17', '', 0, 'http://localhost/restapp/wp-content/uploads/2022/01/Rick-and-Morty.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2022-01-25 09:11:31', '2022-01-25 09:11:31', '<!-- wp:separator --><hr class=\"wp-block-separator\" /><!-- /wp:separator -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Demo post to test if this text is displaying as it should.</p>\r\n<!-- /wp:paragraph -->', 'This is a demo Post', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-25 09:11:31', '2022-01-25 09:11:31', '', 7, 'http://localhost/restapp/?p=45', 0, 'revision', '', 0),
(46, 1, '2022-01-25 09:27:07', '2022-01-25 09:27:07', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'This does not', '', 'publish', 'open', 'open', '', 'this-does-not', '', '', '2022-01-26 04:39:41', '2022-01-26 04:39:41', '', 0, 'http://localhost/restapp/?p=46', 0, 'post', '', 0),
(47, 1, '2022-01-25 09:27:07', '2022-01-25 09:27:07', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'This does not', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2022-01-25 09:27:07', '2022-01-25 09:27:07', '', 46, 'http://localhost/restapp/?p=47', 0, 'revision', '', 0),
(48, 1, '2022-01-26 01:40:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-01-26 01:40:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/restapp/?p=48', 0, 'post', '', 0),
(49, 1, '2022-01-26 01:40:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-01-26 01:40:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/restapp/?p=49', 0, 'post', '', 0),
(50, 1, '2022-01-26 01:41:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-01-26 01:41:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/restapp/?p=50', 0, 'post', '', 0),
(51, 1, '2022-01-26 01:50:57', '2022-01-26 01:50:57', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/restapp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-01-26 01:50:57', '2022-01-26 01:50:57', '', 2, 'http://localhost/restapp/?p=51', 0, 'revision', '', 0),
(52, 1, '2022-01-26 05:35:58', '2022-01-26 05:35:58', 'asdsad', 'sdasda', '', 'trash', 'open', 'open', '', 'sdasda__trashed', '', '', '2022-01-26 05:36:07', '2022-01-26 05:36:07', '', 0, 'http://localhost/restapp/sdasda/uncategorized/', 0, 'post', '', 0),
(53, 1, '2022-01-26 05:36:07', '2022-01-26 05:36:07', 'asdsad', 'sdasda', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2022-01-26 05:36:07', '2022-01-26 05:36:07', '', 52, 'http://localhost/restapp/?p=53', 0, 'revision', '', 0),
(54, 1, '2022-01-26 06:08:06', '2022-01-26 06:08:06', 'Dummy Text', 'This is created from the site', '', 'publish', 'open', 'open', '', 'this-is-created-from-the-site', '', '', '2022-01-26 06:29:04', '2022-01-26 06:29:04', '', 0, 'http://localhost/restapp/this-is-created-from-the-site/uncategorized/', 0, 'post', '', 0),
(55, 1, '2022-01-26 06:18:29', '2022-01-26 06:18:29', 'sad', 'sda', '', 'trash', 'open', 'open', '', 'sda__trashed', '', '', '2022-01-26 06:20:10', '2022-01-26 06:20:10', '', 0, 'http://localhost/restapp/sda/uncategorized/', 0, 'post', '', 0),
(56, 1, '2022-01-26 06:19:07', '2022-01-26 06:19:07', ' ', '', '', 'trash', 'open', 'open', '', '56-2__trashed', '', '', '2022-01-26 06:20:03', '2022-01-26 06:20:03', '', 0, 'http://localhost/restapp/56-2/uncategorized/', 0, 'post', '', 0),
(57, 1, '2022-01-26 06:19:11', '2022-01-26 06:19:11', ' ', '', '', 'trash', 'open', 'open', '', '57-2__trashed', '', '', '2022-01-26 06:20:09', '2022-01-26 06:20:09', '', 0, 'http://localhost/restapp/57-2/uncategorized/', 0, 'post', '', 0),
(58, 1, '2022-01-26 06:19:12', '2022-01-26 06:19:12', ' ', 'sda', '', 'trash', 'open', 'open', '', 'sda-2__trashed', '', '', '2022-01-26 06:20:08', '2022-01-26 06:20:08', '', 0, 'http://localhost/restapp/sda-2/uncategorized/', 0, 'post', '', 0),
(59, 1, '2022-01-26 06:19:23', '2022-01-26 06:19:23', ' ', 'dsa', '', 'trash', 'open', 'open', '', 'dsa__trashed', '', '', '2022-01-26 06:20:07', '2022-01-26 06:20:07', '', 0, 'http://localhost/restapp/dsa/uncategorized/', 0, 'post', '', 0),
(60, 1, '2022-01-26 06:19:24', '2022-01-26 06:19:24', ' ', '', '', 'trash', 'open', 'open', '', '60-2__trashed', '', '', '2022-01-26 06:20:05', '2022-01-26 06:20:05', '', 0, 'http://localhost/restapp/60-2/uncategorized/', 0, 'post', '', 0),
(61, 1, '2022-01-26 06:19:40', '2022-01-26 06:19:40', ' sad', 'ads', '', 'trash', 'open', 'open', '', 'ads__trashed', '', '', '2022-01-26 06:20:11', '2022-01-26 06:20:11', '', 0, 'http://localhost/restapp/ads/uncategorized/', 0, 'post', '', 0),
(62, 1, '2022-01-26 06:19:46', '2022-01-26 06:19:46', ' ', 's', '', 'trash', 'open', 'open', '', 's__trashed', '', '', '2022-01-26 06:20:12', '2022-01-26 06:20:12', '', 0, 'http://localhost/restapp/s/uncategorized/', 0, 'post', '', 0),
(63, 1, '2022-01-26 06:20:03', '2022-01-26 06:20:03', ' ', '', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-01-26 06:20:03', '2022-01-26 06:20:03', '', 56, 'http://localhost/restapp/?p=63', 0, 'revision', '', 0),
(64, 1, '2022-01-26 06:20:05', '2022-01-26 06:20:05', ' ', '', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2022-01-26 06:20:05', '2022-01-26 06:20:05', '', 60, 'http://localhost/restapp/?p=64', 0, 'revision', '', 0),
(65, 1, '2022-01-26 06:20:07', '2022-01-26 06:20:07', ' ', 'dsa', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2022-01-26 06:20:07', '2022-01-26 06:20:07', '', 59, 'http://localhost/restapp/?p=65', 0, 'revision', '', 0),
(66, 1, '2022-01-26 06:20:08', '2022-01-26 06:20:08', ' ', 'sda', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2022-01-26 06:20:08', '2022-01-26 06:20:08', '', 58, 'http://localhost/restapp/?p=66', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(67, 1, '2022-01-26 06:20:09', '2022-01-26 06:20:09', ' ', '', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2022-01-26 06:20:09', '2022-01-26 06:20:09', '', 57, 'http://localhost/restapp/?p=67', 0, 'revision', '', 0),
(68, 1, '2022-01-26 06:20:10', '2022-01-26 06:20:10', 'sad', 'sda', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2022-01-26 06:20:10', '2022-01-26 06:20:10', '', 55, 'http://localhost/restapp/?p=68', 0, 'revision', '', 0),
(69, 1, '2022-01-26 06:20:11', '2022-01-26 06:20:11', ' sad', 'ads', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2022-01-26 06:20:11', '2022-01-26 06:20:11', '', 61, 'http://localhost/restapp/?p=69', 0, 'revision', '', 0),
(70, 1, '2022-01-26 06:20:12', '2022-01-26 06:20:12', ' ', 's', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2022-01-26 06:20:12', '2022-01-26 06:20:12', '', 62, 'http://localhost/restapp/?p=70', 0, 'revision', '', 0),
(71, 1, '2022-01-26 06:20:43', '2022-01-26 06:20:43', ' ', '', '', 'trash', 'open', 'open', '', '71-2__trashed', '', '', '2022-01-26 06:21:38', '2022-01-26 06:21:38', '', 0, 'http://localhost/restapp/71-2/uncategorized/', 0, 'post', '', 0),
(72, 1, '2022-01-26 06:21:17', '2022-01-26 06:21:17', ' ', '', '', 'trash', 'open', 'open', '', '72-2__trashed', '', '', '2022-01-26 06:21:40', '2022-01-26 06:21:40', '', 0, 'http://localhost/restapp/72-2/uncategorized/', 0, 'post', '', 0),
(73, 1, '2022-01-26 06:21:38', '2022-01-26 06:21:38', ' ', '', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2022-01-26 06:21:38', '2022-01-26 06:21:38', '', 71, 'http://localhost/restapp/?p=73', 0, 'revision', '', 0),
(74, 1, '2022-01-26 06:21:40', '2022-01-26 06:21:40', ' ', '', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2022-01-26 06:21:40', '2022-01-26 06:21:40', '', 72, 'http://localhost/restapp/?p=74', 0, 'revision', '', 0),
(75, 1, '2022-01-26 06:26:51', '2022-01-26 06:26:51', 'rereer', 're', '', 'trash', 'open', 'open', '', 're__trashed', '', '', '2022-01-26 07:04:30', '2022-01-26 07:04:30', '', 0, 'http://localhost/restapp/re/uncategorized/', 0, 'post', '', 0),
(76, 1, '2022-01-26 06:27:56', '2022-01-26 06:27:56', 'asdsadsadsda', 'sadsa', '', 'trash', 'open', 'open', '', 'sadsa__trashed', '', '', '2022-01-26 07:04:29', '2022-01-26 07:04:29', '', 0, 'http://localhost/restapp/sadsa/uncategorized/', 0, 'post', '', 0),
(77, 1, '2022-01-26 06:29:04', '2022-01-26 06:29:04', 'Dummy Text', 'This is created from the site', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2022-01-26 06:29:04', '2022-01-26 06:29:04', '', 54, 'http://localhost/restapp/?p=77', 0, 'revision', '', 0),
(78, 1, '2022-01-26 06:39:47', '2022-01-26 06:39:47', 're', 'red', '', 'trash', 'open', 'open', '', 'red__trashed', '', '', '2022-01-26 07:04:28', '2022-01-26 07:04:28', '', 0, 'http://localhost/restapp/red/uncategorized/', 0, 'post', '', 0),
(79, 1, '2022-01-26 06:54:30', '2022-01-26 06:54:30', 'ad', 'asd', '', 'trash', 'open', 'open', '', 'asd__trashed', '', '', '2022-01-26 07:04:27', '2022-01-26 07:04:27', '', 0, 'http://localhost/restapp/asd/uncategorized/', 0, 'post', '', 0),
(80, 1, '2022-01-26 07:03:34', '2022-01-26 07:03:34', 'asdsadsdasda', 'asd', '', 'trash', 'open', 'open', '', 'asd-2__trashed', '', '', '2022-01-26 07:04:25', '2022-01-26 07:04:25', '', 0, 'http://localhost/restapp/asd-2/uncategorized/', 0, 'post', '', 0),
(81, 1, '2022-01-26 07:03:46', '2022-01-26 07:03:46', 'test', 'just a test', '', 'publish', 'open', 'open', '', 'just-a-test', '', '', '2022-01-26 07:03:46', '2022-01-26 07:03:46', '', 0, 'http://localhost/restapp/just-a-test/uncategorized/', 0, 'post', '', 0),
(82, 1, '2022-01-26 07:04:14', '2022-01-26 07:04:14', 'sasa', 'as', '', 'trash', 'open', 'open', '', 'as__trashed', '', '', '2022-01-26 07:04:23', '2022-01-26 07:04:23', '', 0, 'http://localhost/restapp/as/uncategorized/', 0, 'post', '', 0),
(83, 1, '2022-01-26 07:04:23', '2022-01-26 07:04:23', 'sasa', 'as', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2022-01-26 07:04:23', '2022-01-26 07:04:23', '', 82, 'http://localhost/restapp/?p=83', 0, 'revision', '', 0),
(84, 1, '2022-01-26 07:04:25', '2022-01-26 07:04:25', 'asdsadsdasda', 'asd', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2022-01-26 07:04:25', '2022-01-26 07:04:25', '', 80, 'http://localhost/restapp/?p=84', 0, 'revision', '', 0),
(85, 1, '2022-01-26 07:04:27', '2022-01-26 07:04:27', 'ad', 'asd', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2022-01-26 07:04:27', '2022-01-26 07:04:27', '', 79, 'http://localhost/restapp/?p=85', 0, 'revision', '', 0),
(86, 1, '2022-01-26 07:04:28', '2022-01-26 07:04:28', 're', 'red', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2022-01-26 07:04:28', '2022-01-26 07:04:28', '', 78, 'http://localhost/restapp/?p=86', 0, 'revision', '', 0),
(87, 1, '2022-01-26 07:04:29', '2022-01-26 07:04:29', 'asdsadsadsda', 'sadsa', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2022-01-26 07:04:29', '2022-01-26 07:04:29', '', 76, 'http://localhost/restapp/?p=87', 0, 'revision', '', 0),
(88, 1, '2022-01-26 07:04:30', '2022-01-26 07:04:30', 'rereer', 're', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2022-01-26 07:04:30', '2022-01-26 07:04:30', '', 75, 'http://localhost/restapp/?p=88', 0, 'revision', '', 0),
(89, 1, '2022-01-26 07:05:31', '2022-01-26 07:05:31', 'random', 'random', '', 'trash', 'open', 'open', '', 'random__trashed', '', '', '2022-01-26 09:59:14', '2022-01-26 09:59:14', '', 0, 'http://localhost/restapp/random/uncategorized/', 0, 'post', '', 0),
(90, 1, '2022-01-26 07:05:51', '2022-01-26 07:05:51', 'rest', 'rest', '', 'trash', 'open', 'open', '', 'rest__trashed', '', '', '2022-01-26 09:59:11', '2022-01-26 09:59:11', '', 0, 'http://localhost/restapp/rest/uncategorized/', 0, 'post', '', 0),
(91, 1, '2022-01-26 07:06:21', '2022-01-26 07:06:21', 're', 'removed technology section', '', 'trash', 'open', 'open', '', 'removed-technology-section__trashed', '', '', '2022-01-26 09:59:08', '2022-01-26 09:59:08', '', 0, 'http://localhost/restapp/removed-technology-section/uncategorized/', 0, 'post', '', 0),
(92, 1, '2022-01-26 07:06:51', '2022-01-26 07:06:51', 'test', 'test', '', 'trash', 'open', 'open', '', 'test__trashed', '', '', '2022-01-26 09:59:10', '2022-01-26 09:59:10', '', 0, 'http://localhost/restapp/test/uncategorized/', 0, 'post', '', 0),
(93, 1, '2022-01-26 07:13:56', '2022-01-26 07:13:56', 'testtttt', 'test', '', 'trash', 'open', 'open', '', 'test-2__trashed', '', '', '2022-01-26 09:59:06', '2022-01-26 09:59:06', '', 0, 'http://localhost/restapp/test-2/uncategorized/', 0, 'post', '', 0),
(94, 1, '2022-01-26 07:50:41', '2022-01-26 07:50:41', 'image', 'image', '', 'trash', 'open', 'open', '', 'image__trashed', '', '', '2022-01-26 09:59:04', '2022-01-26 09:59:04', '', 0, 'http://localhost/restapp/image/uncategorized/', 0, 'post', '', 0),
(95, 1, '2022-01-26 08:05:27', '2022-01-26 08:05:27', 'unimage', 'unimage', '', 'trash', 'open', 'open', '', 'unimage__trashed', '', '', '2022-01-26 09:59:05', '2022-01-26 09:59:05', '', 0, 'http://localhost/restapp/unimage/uncategorized/', 0, 'post', '', 0),
(96, 1, '2022-01-26 09:30:57', '2022-01-26 09:30:57', 're', 're', '', 'trash', 'open', 'open', '', 're__trashed-2', '', '', '2022-01-26 09:59:01', '2022-01-26 09:59:01', '', 0, 'http://localhost/restapp/re/uncategorized/', 0, 'post', '', 0),
(97, 1, '2022-01-26 09:43:03', '2022-01-26 09:43:03', 'rere', 'here', '', 'trash', 'open', 'open', '', 'here__trashed', '', '', '2022-01-26 09:59:02', '2022-01-26 09:59:02', '', 0, 'http://localhost/restapp/here/uncategorized/', 0, 'post', '', 0),
(98, 1, '2022-01-26 09:53:01', '2022-01-26 09:53:01', 'there', 'here', '', 'trash', 'open', 'open', '', 'here-2__trashed', '', '', '2022-01-26 09:59:00', '2022-01-26 09:59:00', '', 0, 'http://localhost/restapp/here-2/uncategorized/', 0, 'post', '', 0),
(99, 1, '2022-01-26 09:58:49', '2022-01-26 09:58:49', 'wer', 'rte', '', 'trash', 'open', 'open', '', 'rte__trashed', '', '', '2022-01-26 09:58:58', '2022-01-26 09:58:58', '', 0, 'http://localhost/restapp/rte/uncategorized/', 0, 'post', '', 0),
(100, 1, '2022-01-26 09:58:58', '2022-01-26 09:58:58', 'wer', 'rte', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2022-01-26 09:58:58', '2022-01-26 09:58:58', '', 99, 'http://localhost/restapp/?p=100', 0, 'revision', '', 0),
(101, 1, '2022-01-26 09:59:00', '2022-01-26 09:59:00', 'there', 'here', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2022-01-26 09:59:00', '2022-01-26 09:59:00', '', 98, 'http://localhost/restapp/?p=101', 0, 'revision', '', 0),
(102, 1, '2022-01-26 09:59:01', '2022-01-26 09:59:01', 're', 're', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2022-01-26 09:59:01', '2022-01-26 09:59:01', '', 96, 'http://localhost/restapp/?p=102', 0, 'revision', '', 0),
(103, 1, '2022-01-26 09:59:02', '2022-01-26 09:59:02', 'rere', 'here', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2022-01-26 09:59:02', '2022-01-26 09:59:02', '', 97, 'http://localhost/restapp/?p=103', 0, 'revision', '', 0),
(104, 1, '2022-01-26 09:59:04', '2022-01-26 09:59:04', 'image', 'image', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2022-01-26 09:59:04', '2022-01-26 09:59:04', '', 94, 'http://localhost/restapp/?p=104', 0, 'revision', '', 0),
(105, 1, '2022-01-26 09:59:05', '2022-01-26 09:59:05', 'unimage', 'unimage', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2022-01-26 09:59:05', '2022-01-26 09:59:05', '', 95, 'http://localhost/restapp/?p=105', 0, 'revision', '', 0),
(106, 1, '2022-01-26 09:59:06', '2022-01-26 09:59:06', 'testtttt', 'test', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2022-01-26 09:59:06', '2022-01-26 09:59:06', '', 93, 'http://localhost/restapp/?p=106', 0, 'revision', '', 0),
(107, 1, '2022-01-26 09:59:08', '2022-01-26 09:59:08', 're', 'removed technology section', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2022-01-26 09:59:08', '2022-01-26 09:59:08', '', 91, 'http://localhost/restapp/?p=107', 0, 'revision', '', 0),
(108, 1, '2022-01-26 09:59:10', '2022-01-26 09:59:10', 'test', 'test', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2022-01-26 09:59:10', '2022-01-26 09:59:10', '', 92, 'http://localhost/restapp/?p=108', 0, 'revision', '', 0),
(109, 1, '2022-01-26 09:59:11', '2022-01-26 09:59:11', 'rest', 'rest', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2022-01-26 09:59:11', '2022-01-26 09:59:11', '', 90, 'http://localhost/restapp/?p=109', 0, 'revision', '', 0),
(110, 1, '2022-01-26 09:59:14', '2022-01-26 09:59:14', 'random', 'random', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2022-01-26 09:59:14', '2022-01-26 09:59:14', '', 89, 'http://localhost/restapp/?p=110', 0, 'revision', '', 0),
(111, 1, '2022-01-26 10:08:42', '2022-01-26 10:08:42', 'reasd', 'some', '', 'publish', 'open', 'open', '', 'some', '', '', '2022-01-26 10:08:42', '2022-01-26 10:08:42', '', 0, 'http://localhost/restapp/some/uncategorized/', 0, 'post', '', 0),
(114, 1, '2022-01-27 08:45:15', '2022-01-27 08:45:15', 'reerer', 'reer', '', 'publish', 'open', 'open', '', 'reer', '', '', '2022-01-27 08:45:15', '2022-01-27 08:45:15', '', 0, 'http://localhost/restapp/reer/uncategorized/', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'test', 'test', 0),
(3, 'Primary Menu Links', 'primary-menu-links', 0),
(4, 'random', 'random', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 1, 0),
(14, 3, 0),
(19, 3, 0),
(20, 3, 0),
(46, 2, 0),
(52, 1, 0),
(54, 4, 0),
(55, 1, 0),
(56, 1, 0),
(57, 1, 0),
(58, 1, 0),
(59, 1, 0),
(60, 1, 0),
(61, 1, 0),
(62, 1, 0),
(71, 1, 0),
(72, 1, 0),
(75, 1, 0),
(76, 1, 0),
(78, 4, 0),
(79, 1, 0),
(80, 1, 0),
(81, 1, 0),
(82, 1, 0),
(89, 1, 0),
(90, 4, 0),
(91, 4, 0),
(92, 2, 0),
(93, 2, 0),
(94, 4, 0),
(95, 2, 0),
(96, 4, 0),
(97, 4, 0),
(98, 4, 0),
(99, 2, 0),
(111, 4, 0),
(114, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'shirish'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"68b6344d247c1c0e72952d87a61c86064a07e8b357840bcf73ccd0590c1be8c2\";a:4:{s:10:\"expiration\";i:1644210028;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0\";s:5:\"login\";i:1643000428;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1643002566'),
(23, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'shirish', '$P$Bp.UrdLFF0Atll0RnPL6Isi0s.IdKV.', 'shirish', 'shirishkhadgi23@gmail.com', 'http://localhost/restapp', '2022-01-24 05:00:21', '', 0, 'shirish');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
