-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 22, 2023 at 10:47 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cartoonify`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add my user', 6, 'add_myuser'),
(22, 'Can change my user', 6, 'change_myuser'),
(23, 'Can delete my user', 6, 'delete_myuser'),
(24, 'Can view my user', 6, 'view_myuser'),
(25, 'Can add image_c', 7, 'add_image_c'),
(26, 'Can change image_c', 7, 'change_image_c'),
(27, 'Can delete image_c', 7, 'delete_image_c'),
(28, 'Can view image_c', 7, 'view_image_c'),
(29, 'Can add video_c', 8, 'add_video_c'),
(30, 'Can change video_c', 8, 'change_video_c'),
(31, 'Can delete video_c', 8, 'delete_video_c'),
(32, 'Can view video_c', 8, 'view_video_c'),
(33, 'Can add profile', 9, 'add_profile'),
(34, 'Can change profile', 9, 'change_profile'),
(35, 'Can delete profile', 9, 'delete_profile'),
(36, 'Can view profile', 9, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'userapp', 'myuser'),
(7, 'userapp', 'image_c'),
(8, 'userapp', 'video_c'),
(9, 'userapp', 'profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'userapp', '0001_initial', '2023-02-20 12:36:33.530085'),
(2, 'contenttypes', '0001_initial', '2023-02-20 12:36:41.803888'),
(3, 'admin', '0001_initial', '2023-02-20 12:36:42.097031'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-20 12:36:42.104008'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-20 12:36:42.112979'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-20 12:36:42.228628'),
(7, 'auth', '0001_initial', '2023-02-20 12:36:42.756373'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-02-20 12:36:42.819441'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-02-20 12:36:42.825374'),
(10, 'auth', '0004_alter_user_username_opts', '2023-02-20 12:36:42.834000'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-02-20 12:36:42.841009'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-02-20 12:36:42.843075'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-02-20 12:36:42.850056'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-02-20 12:36:42.857031'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-02-20 12:36:42.861762'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-02-20 12:36:42.921773'),
(17, 'auth', '0011_update_proxy_permissions', '2023-02-20 12:36:42.928723'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-02-20 12:36:42.936697'),
(19, 'sessions', '0001_initial', '2023-02-20 12:36:43.025913');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5xzz6whe2hlvj4gkt8bybx9vfjgyahxv', '.eJxVjMEOwiAQBf-FsyFAKbAevfcbyAKLVA0kpT0Z_9026UGvb2bem3nc1uK3ToufE7syyS6_W8D4pHqA9MB6bzy2ui5z4IfCT9r51BK9bqf7d1Cwl702EBKgjSR0VhKUgsEgWEXJZu1GcEBKWhEipCxG7VQOMpiMJGiAPWGfL9hWN78:1pUQtR:INvMXAeEsy1YgBNrN0MDVSlZv1c8JFhVh_vNgRWOOXY', '2023-03-07 11:33:09.532174'),
('riww8xvlkzealyu0fs0acsee6pm3sjxw', '.eJxVjEEOwiAQRe_C2pDCAAWX7j0DYZhBqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xInEWSpx-N0z5wW0HdE_tNss8t3WZUO6KPGiX15n4eTncv4Oaev3WYIBcpoEhgMqhsGNLRAqs9amMdnQYBhqDcnrwWjMYD1gMZotQwKB4fwDd7zer:1pUhqn:NPjADPJ7Xwu2IDCqNV4axNB-U-GQzfJbv3hTySxZPNs', '2023-03-08 05:39:33.865115');

-- --------------------------------------------------------

--
-- Table structure for table `forget_password`
--

DROP TABLE IF EXISTS `forget_password`;
CREATE TABLE IF NOT EXISTS `forget_password` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `forget_token` varchar(1000) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forget_password`
--

INSERT INTO `forget_password` (`id`, `forget_token`, `user_id`) VALUES
(1, '4c11851b-8225-420a-befc-b54c86463ede', 1),
(2, 'b89f9d4e-52ad-4cc5-9d81-45f926b33025', 2);

-- --------------------------------------------------------

--
-- Table structure for table `image_convert`
--

DROP TABLE IF EXISTS `image_convert`;
CREATE TABLE IF NOT EXISTS `image_convert` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_convert`
--

INSERT INTO `image_convert` (`id`, `image`) VALUES
(1, 'image/test4_Dd8ejIu.jpg'),
(2, 'image/test4_3LOsmfq.jpg'),
(3, 'image/test4_GGkbqSC.jpg'),
(4, 'image/test4_GGkbqSC_oIBxs39.jpg'),
(5, 'image/test4_3LOsmfq_OvTHcLu.jpg'),
(6, 'image/ayo-ogunseinde-6W4F62sN_yI-unsplash.jpg'),
(7, 'image/ayo-ogunseinde-6W4F62sN_yI-unsplash_a845eFR.jpg'),
(8, 'image/ayo-ogunseinde-6W4F62sN_yI-unsplash_bmNsmxX.jpg'),
(9, 'image/ian-dooley-d1UPkiFd04A-unsplash.jpg'),
(10, 'image/alexandru-zdrobau-BGz8vO3pK8k-unsplash.jpg'),
(11, 'image/alexandru-zdrobau-BGz8vO3pK8k-unsplash_uQhaAxI.jpg'),
(12, 'image/daniel-monteiro-uGVqeh27EHE-unsplash.jpg'),
(13, 'image/test.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `Full Name` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Profile Picture` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `last_login`, `email`, `Full Name`, `Contact`, `City`, `Profile Picture`, `is_active`, `is_admin`) VALUES
(1, 'pbkdf2_sha256$260000$jn9RWHhzAdgWLregBv29wC$wLMnXXFLvVbVCAF78Y6ijb34q84M3zbfKsIA7lJAvZY=', '2023-02-22 05:39:33.864119', 'harshavardhan.hv12@gmail.com', 'harsha', '9618294480', 'hyderabad', 'images/test4_GGkbqSC_wX80Z7u.jpg', 1, 0),
(2, 'pbkdf2_sha256$260000$BBoBUlEzOuYyZrf5myQKVW$hGoLc2OcIHixY3SytDcwxKldX0eJGMvWr3OhTyNqPjE=', '2023-02-21 09:17:40.383861', 'vardhanharshahv3@gmail.com', 'vardhan', '9618294480', 'hyderabad', 'images/test4_GGkbqSC.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `video_convert`
--

DROP TABLE IF EXISTS `video_convert`;
CREATE TABLE IF NOT EXISTS `video_convert` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `video` varchar(100) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_convert`
--

INSERT INTO `video_convert` (`video_id`, `video`) VALUES
(1, 'Video/Camera_Recording_-_15_February_2023_TcG1AR6.mp4'),
(2, 'Video/test12.mp4'),
(3, 'Video/videoplayback.mp4'),
(4, 'Video/videoplayback_1.mp4');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
