-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 04 月 20 日 14:16
-- 服务器版本: 5.0.83
-- PHP 版本: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `eva`
--

-- --------------------------------------------------------

--
-- 表的结构 `eva_commentmeta`
--

DROP TABLE IF EXISTS `eva_commentmeta`;
CREATE TABLE IF NOT EXISTS `eva_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `comment_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `eva_commentmeta`
--


-- --------------------------------------------------------

--
-- 表的结构 `eva_comments`
--

DROP TABLE IF EXISTS `eva_comments`;
CREATE TABLE IF NOT EXISTS `eva_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL auto_increment,
  `comment_post_ID` bigint(20) unsigned NOT NULL default '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL default '',
  `comment_author_url` varchar(200) NOT NULL default '',
  `comment_author_IP` varchar(100) NOT NULL default '',
  `comment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL default '0',
  `comment_approved` varchar(20) NOT NULL default '1',
  `comment_agent` varchar(255) NOT NULL default '',
  `comment_type` varchar(20) NOT NULL default '',
  `comment_parent` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_ID`),
  KEY `comment_approved` (`comment_approved`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `eva_comments`
--

INSERT INTO `eva_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress 先生', '', 'http://wordpress.org/', '', '2012-04-19 02:43:14', '2012-04-19 02:43:14', '您好，这是一条评论。<br />要删除评论，请先登录，然后再查看这篇文章的评论。在那里，您可以看到编辑或者删除评论的选项。', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eva_links`
--

DROP TABLE IF EXISTS `eva_links`;
CREATE TABLE IF NOT EXISTS `eva_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL default '',
  `link_name` varchar(255) NOT NULL default '',
  `link_image` varchar(255) NOT NULL default '',
  `link_target` varchar(25) NOT NULL default '',
  `link_description` varchar(255) NOT NULL default '',
  `link_visible` varchar(20) NOT NULL default 'Y',
  `link_owner` bigint(20) unsigned NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0',
  `link_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL default '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `eva_links`
--

INSERT INTO `eva_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org/', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://wordpress.org/news/', 'WordPress Blog', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wordpress.org/news/feed/'),
(3, 'http://wordpress.org/extend/ideas/', 'Suggest Ideas', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/support/', 'Support Forum', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, 'http://wordpress.org/extend/themes/', 'Themes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://planet.wordpress.org/', 'WordPress Planet', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `eva_options`
--

DROP TABLE IF EXISTS `eva_options`;
CREATE TABLE IF NOT EXISTS `eva_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `blog_id` int(11) NOT NULL default '0',
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=185 ;

--
-- 转存表中的数据 `eva_options`
--

INSERT INTO `eva_options` (`option_id`, `blog_id`, `option_name`, `option_value`, `autoload`) VALUES
(154, 0, '_site_transient_timeout_theme_roots', '1334929235', 'yes'),
(155, 0, '_site_transient_theme_roots', 'a:2:{s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";}', 'yes'),
(3, 0, 'siteurl', 'http://localhost/eva', 'yes'),
(4, 0, 'blogname', 'EVA', 'yes'),
(5, 0, 'blogdescription', '又一个 WordPress 站点', 'yes'),
(6, 0, 'users_can_register', '0', 'yes'),
(7, 0, 'admin_email', 'liutan2008@gmail.com', 'yes'),
(8, 0, 'start_of_week', '1', 'yes'),
(9, 0, 'use_balanceTags', '0', 'yes'),
(10, 0, 'use_smilies', '1', 'yes'),
(11, 0, 'require_name_email', '1', 'yes'),
(12, 0, 'comments_notify', '1', 'yes'),
(13, 0, 'posts_per_rss', '10', 'yes'),
(14, 0, 'rss_use_excerpt', '0', 'yes'),
(15, 0, 'mailserver_url', 'mail.example.com', 'yes'),
(16, 0, 'mailserver_login', 'login@example.com', 'yes'),
(17, 0, 'mailserver_pass', 'password', 'yes'),
(18, 0, 'mailserver_port', '110', 'yes'),
(19, 0, 'default_category', '1', 'yes'),
(20, 0, 'default_comment_status', 'open', 'yes'),
(21, 0, 'default_ping_status', 'open', 'yes'),
(22, 0, 'default_pingback_flag', '1', 'yes'),
(23, 0, 'default_post_edit_rows', '20', 'yes'),
(24, 0, 'posts_per_page', '10', 'yes'),
(25, 0, 'date_format', 'Y 年 n 月 j 日', 'yes'),
(26, 0, 'time_format', 'a g:i', 'yes'),
(27, 0, 'links_updated_date_format', 'Y 年 n 月 j 日a g:i', 'yes'),
(28, 0, 'links_recently_updated_prepend', '<em>', 'yes'),
(29, 0, 'links_recently_updated_append', '</em>', 'yes'),
(30, 0, 'links_recently_updated_time', '120', 'yes'),
(31, 0, 'comment_moderation', '0', 'yes'),
(32, 0, 'moderation_notify', '1', 'yes'),
(33, 0, 'permalink_structure', '', 'yes'),
(34, 0, 'gzipcompression', '0', 'yes'),
(35, 0, 'hack_file', '0', 'yes'),
(36, 0, 'blog_charset', 'UTF-8', 'yes'),
(37, 0, 'moderation_keys', '', 'no'),
(38, 0, 'active_plugins', 'a:0:{}', 'yes'),
(39, 0, 'home', 'http://localhost/eva', 'yes'),
(40, 0, 'category_base', '', 'yes'),
(41, 0, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(42, 0, 'advanced_edit', '0', 'yes'),
(43, 0, 'comment_max_links', '2', 'yes'),
(44, 0, 'gmt_offset', '8', 'yes'),
(45, 0, 'default_email_category', '1', 'yes'),
(46, 0, 'recently_edited', '', 'no'),
(47, 0, 'template', 'twentyeleven', 'yes'),
(48, 0, 'stylesheet', 'twentyeleven', 'yes'),
(49, 0, 'comment_whitelist', '1', 'yes'),
(50, 0, 'blacklist_keys', '', 'no'),
(51, 0, 'comment_registration', '0', 'yes'),
(52, 0, 'rss_language', 'en', 'yes'),
(53, 0, 'html_type', 'text/html', 'yes'),
(54, 0, 'use_trackback', '0', 'yes'),
(55, 0, 'default_role', 'subscriber', 'yes'),
(56, 0, 'db_version', '19470', 'yes'),
(57, 0, 'uploads_use_yearmonth_folders', '1', 'yes'),
(58, 0, 'upload_path', '', 'yes'),
(59, 0, 'blog_public', '1', 'yes'),
(60, 0, 'default_link_category', '2', 'yes'),
(61, 0, 'show_on_front', 'posts', 'yes'),
(62, 0, 'tag_base', '', 'yes'),
(63, 0, 'show_avatars', '1', 'yes'),
(64, 0, 'avatar_rating', 'G', 'yes'),
(65, 0, 'upload_url_path', '', 'yes'),
(66, 0, 'thumbnail_size_w', '150', 'yes'),
(67, 0, 'thumbnail_size_h', '150', 'yes'),
(68, 0, 'thumbnail_crop', '1', 'yes'),
(69, 0, 'medium_size_w', '300', 'yes'),
(70, 0, 'medium_size_h', '300', 'yes'),
(71, 0, 'avatar_default', 'mystery', 'yes'),
(72, 0, 'enable_app', '0', 'yes'),
(73, 0, 'enable_xmlrpc', '0', 'yes'),
(74, 0, 'large_size_w', '1024', 'yes'),
(75, 0, 'large_size_h', '1024', 'yes'),
(76, 0, 'image_default_link_type', 'file', 'yes'),
(77, 0, 'image_default_size', '', 'yes'),
(78, 0, 'image_default_align', '', 'yes'),
(79, 0, 'close_comments_for_old_posts', '0', 'yes'),
(80, 0, 'close_comments_days_old', '14', 'yes'),
(81, 0, 'thread_comments', '1', 'yes'),
(82, 0, 'thread_comments_depth', '5', 'yes'),
(83, 0, 'page_comments', '0', 'yes'),
(84, 0, 'comments_per_page', '50', 'yes'),
(85, 0, 'default_comments_page', 'newest', 'yes'),
(86, 0, 'comment_order', 'asc', 'yes'),
(87, 0, 'sticky_posts', 'a:0:{}', 'yes'),
(88, 0, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(89, 0, 'widget_text', 'a:0:{}', 'yes'),
(90, 0, 'widget_rss', 'a:0:{}', 'yes'),
(91, 0, 'timezone_string', '', 'yes'),
(92, 0, 'embed_autourls', '1', 'yes'),
(93, 0, 'embed_size_w', '', 'yes'),
(94, 0, 'embed_size_h', '600', 'yes'),
(95, 0, 'page_for_posts', '0', 'yes'),
(96, 0, 'page_on_front', '0', 'yes'),
(97, 0, 'default_post_format', '0', 'yes'),
(98, 0, 'initial_db_version', '19470', 'yes'),
(99, 0, 'eva_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(100, 0, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 0, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 0, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 0, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 0, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 0, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(106, 0, 'zh_cn_l10n_preference_patches', 's:6:"a:0:{}";', 'yes'),
(107, 0, 'cron', 'a:3:{i:1334932999;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1334976210;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, 0, '_site_transient_timeout_browser_5655a3fe7bb1b162a5acb8cfd9c91937', '1335408209', 'yes'),
(109, 0, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:2:{i:0;O:8:"stdClass":9:{s:8:"response";s:6:"latest";s:8:"download";s:49:"http://cn.wordpress.org/wordpress-3.3.1-zh_CN.zip";s:6:"locale";s:5:"zh_CN";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:49:"http://cn.wordpress.org/wordpress-3.3.1-zh_CN.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;}s:7:"current";s:5:"3.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.2";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":9:{s:8:"response";s:6:"latest";s:8:"download";s:40:"http://wordpress.org/wordpress-3.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:40:"http://wordpress.org/wordpress-3.3.1.zip";s:10:"no_content";s:51:"http://wordpress.org/wordpress-3.3.1-no-content.zip";s:11:"new_bundled";s:52:"http://wordpress.org/wordpress-3.3.1-new-bundled.zip";s:7:"partial";b:0;}s:7:"current";s:5:"3.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.2";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1334922234;s:15:"version_checked";s:5:"3.3.1";}', 'yes'),
(171, 0, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1334922511;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"2.5.5";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:0:{}}', 'yes'),
(182, 0, '_transient_random_seed', '44ac72094071ada202f585d8fe41b754', 'yes'),
(183, 0, '_site_transient_timeout_wporg_theme_feature_list', '1334937346', 'yes'),
(111, 0, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1334922038;s:7:"checked";a:2:{s:12:"twentyeleven";s:3:"1.3";s:9:"twentyten";s:3:"1.3";}s:8:"response";a:0:{}}', 'yes'),
(113, 0, '_site_transient_browser_5655a3fe7bb1b162a5acb8cfd9c91937', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"18.0.1025.162";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(114, 0, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:20:"http://localhost/eva";s:4:"link";s:96:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/eva/";s:3:"url";s:129:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/eva/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:24:"http://cn.wordpress.org/";s:3:"url";s:29:"http://cn.wordpress.org/feed/";s:5:"title";s:22:"WordPress China 博客";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:23:"其它 WordPress 新闻";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(115, 0, 'current_theme', 'Twenty Eleven', 'yes'),
(118, 0, 'can_compress_scripts', '1', 'yes'),
(158, 0, '_transient_timeout_feed_f0d5c78caf5734852305eb221aebfb6e', '1334965433', 'no'),
(159, 0, '_transient_feed_f0d5c78caf5734852305eb221aebfb6e', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:4:"\n  \n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:83:"\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:4:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"link:http://localhost/eva/ - Google 網誌搜尋";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"http://www.google.com.hk/search?ie=utf-8&q=link:http://localhost/eva/&tbm=blg&tbs=sbd:1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"約有 1,270 項結果";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"Geek Dicas » Windows 8: Como criar um tile para desligar e <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"http://www.geekdicas.com/rodrigo-imitando-joao-carvalho-trote/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:493:"Segue o <em>link</em> de meu Blog eduardojonck.blogspot.com.br O mérito a implantação do Imspector no Endian Firewall vai para o Herivelton Luiz de Souza, membro do fórum, <em>http</em> ,pois ele conseguiu instalar os pacotes que faltavam para poder gerar <b>.....</b> e de “enter” 4ºClique em Get IP 5ºVeja o seu ip e colque no url do NAVEGADOR Fim – CASO QUEIRA MODIFICAR O MENU DO TRIBAL WARS VA EM <em>LOCALHOST</em>/ADMIN CASO DUVIDAS VA NO SITE dragongamesbr.forumeiros. com.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:10:"Geek Dicas";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Geek";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Sun, 15 Apr 2012 03:21:51 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"Beautylab.nl – Giveaway: Sam Edelman &#39;Lorissa&#39;";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"http://www.beautylab.nl/2012/04/giveaway-sam-edelman-lorissa/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:290:"<em>Eva</em> 12 april 2012 om 18:50 - Reageer. Volgensmij kan je wel alleen dit paar <b>.....</b> heb de post gelike&#39;d op bloglovin! En dit is de <em>link</em> naar de collage: <em>http</em>://www.polyvore.com/sam_edelman_give-away_beautylab.nl/set?id=47067146&amp;.locale=nl <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:12:"Beautylab.nl";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Serena";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Thu, 12 Apr 2012 15:50:20 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"&#39;Screamers&#39; and Genocide: A Talk With Serj Tankian From System of <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:113:"http://armsoad.am/news/screamers-and-genocide-a-talk-with-serj-tankian-from-system-of-a-down.html/comment-page-71";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:265:"I&#39;ve noticed something about people who say they don&#39;t like actors and musicians having political opinions, if you ask them who they think was the greatest President <em>eve</em>,r they always answer «Reagan.» And what was Reagan before he went <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:101:"Комментарии на: ''Screamers'' and Genocide: A Talk With Serj Tankian From System of a Down";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Joshua Schweinsberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Tue, 03 Apr 2012 16:31:41 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"Must Buy Books for AIEEE 2012! | AIEEE 2012";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://aieee2012.org/must-buy-books-for-aieee-2012/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:303:"If you might ever need any backlinks vist the following <em>link</em> ( <em>http</em>://marketingyourbusiness-mike1242.blogspot.com/ ) . self publish on March 15th, <b>......</b> Gale <em>Eva</em> on March 24th, 2012 at 9:49 pm <b>......</b> abrasive… in ur addressbar type “<em>localhost</em>”…";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:10:"AIEEE 2012";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"karan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Sun, 19 Feb 2012 08:00:00 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"SOUFERIOR speaks on his new track | Politico SL News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"http://politicosl.com/2012/02/entertainment-souferior-speaks-on-his-new-track-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:587:"Receive free Iphone 4s by this <em>link</em>! <em>http</em>://goo.gl/mbrr3 &middot; Reply &middot; horse wormers says: February 29, 2012 at 8:28 am. Hello there <b>.....</b> I developed a joomla site on my <em>localhost</em>. Now I want to upload it to GoDaddy. How do I do that? Reply <b>.....</b> Implausible article as at all times, I am critically considering one thing along the traces of an affiliate part on my own web site… so very timely post. <em>http</em>://www.mycampingspot.com/ &middot; Reply &middot; bad credit debt consolidation loans says: March 2, 2012 at <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:16:"Politico SL News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Umaru Fofana";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Wed, 08 Feb 2012 23:22:51 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"Pozytywny odzew | Referendum w sprawie odwołania Kobylińskiego";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://www.referendum.slupsk.pl/2012/01/pozytywny-odzew/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:272:"cqAUO4 , [url=<em>http</em>://njchbqojkgew.com/]njchbqojkgew[/url], [<em>link</em>=<em>http</em>://lkydgxtgdmqb.com/]lkydgxtgdmqb[/<em>link</em>], <em>http</em>://bbcrbdewubea.com/. Marzec 12 2012. ordeoindre. ovtZW3 pxwtegkfguvc. Marzec 12 2012. Broadjam scam. Good blog!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:46:"Referendum w sprawie odwołania Kobylińskiego";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Jarosław Madej";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Mon, 23 Jan 2012 12:37:47 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"Brit Awards Nomination « Lana Daily";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://lanadaily.com/2012/01/12/brit-awards-nomination/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:277:"always a large fan of linking to bloggers that I adore but don?t get a whole lot of <em>link</em> adore from[...] <em>http</em>://select-restaurant.net/ on March 1st, 2012 says: I will appropriate away grasp your rss as I can not in locating your e-mail subscription <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:10:"Lana Daily";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Admin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Thu, 12 Jan 2012 20:00:53 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"Anonymous Press - LegionNET® -: #archive_LegionNET_04";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"http://legionnet.inc.nl.eu.org/2012/01/archivelegionnet04.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:515:"<em>http</em>://client.matrixgroup.net 723 Hawkins Way, Alexandria, VA 22314. Username: jpineda jpineda@matrixgroup. <b>...</b> KEY <em>LINKS</em> Add New Project Enter a new project. Search Projects Search entire project database by date range, accounting code, etc. Search the Projects Update/Feedback Search project updates and/or feedback using keywords. Search Project Keywords Search project <b>......</b> 7 2006 1:25PM, NULL, <em>Eva</em> , NULL, NULL, NULL, NULL, NULL, Townsend, NULL, IACP was a <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:15:"Anonymous Press";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Anonymous";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Thu, 12 Jan 2012 12:38:00 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"Ambers Adventures Part I: Island Escape. The cute talking dog <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:96:"http://animaltalkingvideos.com/2011/12/21/ambers-adventures-part-island-escape-cute-talking-dog/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:557:"<b>...</b> you become the ally. By subtracting a personal curiosity about them and their circumstances, you create a solid <em>link</em> that, on many occasions, pays off if the owners opt with an agent they know in addition to trust – preferably you. <b>......</b> Iâ€™ve gone ahead and bookmarked <em>http</em>://animaltalkingvideos.com/2011/12/21/ambers-adventures-part-island-escape-cute-talking-dog at Digg.com so my friends can see it too. I simply used <b>......</b> I developed a joomla site on my <em>localhost</em>. Now I want to <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:21:"Animal Talking Videos";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"chris";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Wed, 21 Dec 2011 06:18:27 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"Curiosidades « Curso de blogs y wikis en el aprendizaje";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"http://practicas.ntae.es/79106888K/blog/?p=81";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:543:"I&#39;m looking for a free or cheap webhost to move my Joomla website to from my <em>localhost</em>. I want a webhost that doesn&#39;t use Fantastico as its only method of installation? Any suggestions <b>.....</b> Hey administrator, I just wanted to give you a brief heads up that your Website <em>link</em>: <em>http</em>://practicas.ntae.es/79106888K/blog/?p=81 is being flagged as a possibly malicious site in my web browser chrome. I would highly suggest having someone look into it. You could possibly lose a lot of guests due <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:40:"Curso de blogs y wikis en el aprendizaje";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"admin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Tue, 22 Nov 2011 18:37:43 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:36:"http://a9.com/-/spec/opensearch/1.1/";a:3:{s:12:"totalResults";a:1:{i:0;a:5:{s:4:"data";s:4:"1270";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:10:"startIndex";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:12:"itemsPerPage";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:12:"content-type";s:22:"text/xml; charset=Big5";s:4:"date";s:29:"Fri, 20 Apr 2012 11:43:46 GMT";s:7:"expires";s:2:"-1";s:13:"cache-control";s:18:"private, max-age=0";s:10:"set-cookie";a:2:{i:0;s:151:"PREF=ID=f87e249219152eff:FF=0:NW=1:TM=1334922226:LM=1334922226:S=A_P4Ow7iCeG25Fkw; expires=Sun, 20-Apr-2014 11:43:46 GMT; path=/; domain=.google.com.hk";i:1;s:215:"NID=59=UiML-PQ4jIOPl1_3O2V_nYGTJYTg3W-gCE2R67we_sbYfNGpTIdt1sOK0WSId08gJyT5Fs7lDbcntb4Iup5EGPOHYyPHexKDFbZld0VaKL76RNTAQEtRj_cMrXw8Ex4D; expires=Sat, 20-Oct-2012 11:43:46 GMT; path=/; domain=.google.com.hk; HttpOnly";}s:3:"p3p";s:122:"CP="This is not a P3P policy! See http://www.google.com/support/accounts/bin/answer.py?hl=en&answer=151657 for more info."";s:6:"server";s:3:"gws";s:16:"x-xss-protection";s:13:"1; mode=block";s:15:"x-frame-options";s:10:"SAMEORIGIN";}s:5:"build";s:14:"20090627192103";}', 'no'),
(160, 0, '_transient_timeout_feed_mod_f0d5c78caf5734852305eb221aebfb6e', '1334965433', 'no'),
(161, 0, '_transient_feed_mod_f0d5c78caf5734852305eb221aebfb6e', '1334922233', 'no'),
(162, 0, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1334965433', 'no'),
(163, 0, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<ul>\n	<li><strong>Geek</strong> 链接到这里，<a href="http://www.geekdicas.com/rodrigo-imitando-joao-carvalho-trote/">说</a>“Segue o link de meu Blog eduardojonck.blogspot.com ...”</li>\n	<li><strong>Serena</strong> 链接到这里，<a href="http://www.beautylab.nl/2012/04/giveaway-sam-edelman-lorissa/">说</a>“Eva 12 april 2012 om 18:50 - Reageer. Volgensmij k ...”</li>\n	<li><strong>Joshua Schweinsberg</strong> 链接到这里，<a href="http://armsoad.am/news/screamers-and-genocide-a-talk-with-serj-tankian-from-system-of-a-down.html/comment-page-71">说</a>“I&#39;ve noticed something about people who say th ...”</li>\n	<li><strong>karan</strong> 链接到这里，<a href="http://aieee2012.org/must-buy-books-for-aieee-2012/">说</a>“If you might ever need any backlinks vist the foll ...”</li>\n	<li><strong>Umaru Fofana</strong> 链接到这里，<a href="http://politicosl.com/2012/02/entertainment-souferior-speaks-on-his-new-track-2/">说</a>“Receive free Iphone 4s by this link! http://goo.gl ...”</li>\n	<li><strong>Jarosław Madej</strong> 链接到这里，<a href="http://www.referendum.slupsk.pl/2012/01/pozytywny-odzew/">说</a>“cqAUO4 , [url=http://njchbqojkgew.com/]njchbqojkge ...”</li>\n	<li><strong>Admin</strong> 链接到这里，<a href="http://lanadaily.com/2012/01/12/brit-awards-nomination/">说</a>“always a large fan of linking to bloggers that I a ...”</li>\n	<li><strong>Anonymous</strong> 链接到这里，<a href="http://legionnet.inc.nl.eu.org/2012/01/archivelegionnet04.html">说</a>“http://client.matrixgroup.net 723 Hawkins Way, Ale ...”</li>\n	<li><strong>chris</strong> 链接到这里，<a href="http://animaltalkingvideos.com/2011/12/21/ambers-adventures-part-island-escape-cute-talking-dog/">说</a>“... you become the ally. By subtracting a personal ...”</li>\n	<li><strong>admin</strong> 链接到这里，<a href="http://practicas.ntae.es/79106888K/blog/?p=81">说</a>“I&#39;m looking for a free or cheap webhost to mov ...”</li>\n</ul>\n', 'no'),
(164, 0, 'recently_activated', 'a:0:{}', 'yes'),
(167, 0, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1334965443', 'no'),
(168, 0, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS 错误</strong>：WP HTTP Error: Operation timed out after 10000 milliseconds with 36540 bytes received</p></div>', 'no'),
(169, 0, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1334965443', 'no'),
(170, 0, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(184, 0, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:18:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:20:"front-page-post-form";i:10;s:19:"full-width-template";i:11;s:12:"microformats";i:12;s:12:"post-formats";i:13;s:20:"rtl-language-support";i:14;s:11:"sticky-post";i:15;s:13:"theme-options";i:16;s:17:"threaded-comments";i:17;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(165, 0, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1334965443', 'no'),
(166, 0, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>RSS 错误</strong>：WP HTTP Error: Operation timed out after 10000 milliseconds with 74256 out of 88326 bytes received</p></div>', 'no'),
(149, 0, '_transient_timeout_plugin_slugs', '1335008912', 'no'),
(150, 0, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(156, 0, '_site_transient_timeout_browser_aaeefe712ea247bd9b08f16facb8100d', '1335527028', 'yes'),
(157, 0, '_site_transient_browser_aaeefe712ea247bd9b08f16facb8100d', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:11:"17.0.963.83";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes');

-- --------------------------------------------------------

--
-- 表的结构 `eva_postmeta`
--

DROP TABLE IF EXISTS `eva_postmeta`;
CREATE TABLE IF NOT EXISTS `eva_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `eva_postmeta`
--

INSERT INTO `eva_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- 表的结构 `eva_posts`
--

DROP TABLE IF EXISTS `eva_posts`;
CREATE TABLE IF NOT EXISTS `eva_posts` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned NOT NULL default '0',
  `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `ping_status` varchar(20) NOT NULL default 'open',
  `post_password` varchar(20) NOT NULL default '',
  `post_name` varchar(200) NOT NULL default '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content_filtered` text NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL default '0',
  `guid` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `eva_posts`
--

INSERT INTO `eva_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-04-19 02:43:14', '2012-04-19 02:43:14', '欢迎使用 WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！', '世界，你好！', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2012-04-19 02:43:14', '2012-04-19 02:43:14', '', 0, 'http://localhost/eva/?p=1', 0, 'post', '', 1),
(2, 1, '2012-04-19 02:43:14', '2012-04-19 02:43:14', '这是示范页面。页面和博客文章不同，它的位置是固定的，通常会在站点导航栏显示。很多用户都创建一个“关于”页面，向访客介绍自己。例如，个人博客通常有类似这样的介绍：\n\n<blockquote>欢迎！我白天是个邮递员，晚上就是个有抱负的演员。这是我的博客。我住在天朝的帝都，有条叫做 Jack 的狗。</blockquote>\n\n... 公司博客可以这样写：\n\n<blockquote>XYZ Doohickey 公司成立于 1971 年，自从建立以来，我们一直向社会贡献着优秀 doohicky。我们的公司总部位于天朝魔都，有着超过两千名员工，对魔都政府税收有着巨大贡献。</blockquote>\n\n您可以访问<a href="http://localhost/eva/wp-admin/">仪表盘</a>，删除本页面，然后添加您自己的内容。祝您使用愉快！', '示例页面', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2012-04-19 02:43:14', '2012-04-19 02:43:14', '', 0, 'http://localhost/eva/?page_id=2', 0, 'page', '', 0),
(3, 1, '2012-04-19 02:43:29', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-04-19 02:43:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/eva/?p=3', 0, 'post', '', 0),
(4, 1, '2012-04-20 11:50:56', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-04-20 11:50:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/eva/?p=4', 0, 'post', '', 0),
(5, 1, '2012-04-20 11:51:16', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-04-20 11:51:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/eva/?p=5', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `eva_terms`
--

DROP TABLE IF EXISTS `eva_terms`;
CREATE TABLE IF NOT EXISTS `eva_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `slug` varchar(200) NOT NULL default '',
  `term_group` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `eva_terms`
--

INSERT INTO `eva_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分类', 'uncategorized', 0),
(2, '链接表', '%e9%93%be%e6%8e%a5%e8%a1%a8', 0);

-- --------------------------------------------------------

--
-- 表的结构 `eva_term_relationships`
--

DROP TABLE IF EXISTS `eva_term_relationships`;
CREATE TABLE IF NOT EXISTS `eva_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `eva_term_relationships`
--

INSERT INTO `eva_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eva_term_taxonomy`
--

DROP TABLE IF EXISTS `eva_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `eva_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `eva_term_taxonomy`
--

INSERT INTO `eva_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'link_category', '', 0, 7);

-- --------------------------------------------------------

--
-- 表的结构 `eva_usermeta`
--

DROP TABLE IF EXISTS `eva_usermeta`;
CREATE TABLE IF NOT EXISTS `eva_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `eva_usermeta`
--

INSERT INTO `eva_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'eva_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'eva_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'eva_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'eva_user-settings', 'editor=tinymce'),
(16, 1, 'eva_user-settings-time', '1334922691');

-- --------------------------------------------------------

--
-- 表的结构 `eva_users`
--

DROP TABLE IF EXISTS `eva_users`;
CREATE TABLE IF NOT EXISTS `eva_users` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(64) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL default '',
  `user_status` int(11) NOT NULL default '0',
  `display_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `eva_users`
--

INSERT INTO `eva_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BZ49lAy7WsqHa8Noo3SqT1l/Ca5rXi.', 'admin', 'liutan2008@gmail.com', '', '2012-04-19 02:43:14', '', 0, 'admin');
