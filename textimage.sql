-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 03:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `textimage`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add image', 7, 'add_image'),
(26, 'Can change image', 7, 'change_image'),
(27, 'Can delete image', 7, 'delete_image'),
(28, 'Can view image', 7, 'view_image'),
(29, 'Can add img2txt', 7, 'add_img2txt'),
(30, 'Can change img2txt', 7, 'change_img2txt'),
(31, 'Can delete img2txt', 7, 'delete_img2txt'),
(32, 'Can view img2txt', 7, 'view_img2txt'),
(33, 'Can add trans img', 8, 'add_transimg'),
(34, 'Can change trans img', 8, 'change_transimg'),
(35, 'Can delete trans img', 8, 'delete_transimg'),
(36, 'Can view trans img', 8, 'view_transimg'),
(37, 'Can add translang', 9, 'add_translang'),
(38, 'Can change translang', 9, 'change_translang'),
(39, 'Can delete translang', 9, 'delete_translang'),
(40, 'Can view translang', 9, 'view_translang');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$jsz83PdmY7kLfNS6nIl6bg$Ea+H+9aAnI5JDh2UXenEstb2tqFtr7Ae+xIrbydjgqg=', '2023-03-30 11:39:03.563640', 1, 'waheed', '', '', 'abdulwaheedchaudhary78@gmail.com', 1, 1, '2022-12-08 05:06:02.885655');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-12-08 05:08:08.308307', '1', 'TransImg object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-12-08 05:13:15.320749', '1', 'TransImg object (1)', 2, '[]', 8, 1),
(3, '2022-12-08 05:23:01.118565', '2', 'india - in', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-12-08 05:23:33.515625', '1', 'English - en', 1, '[{\"added\": {}}]', 9, 1),
(5, '2022-12-08 05:23:52.124082', '1', 'English - en', 3, '', 9, 1),
(6, '2022-12-08 05:24:04.088949', '2', 'india - in', 3, '', 8, 1),
(7, '2022-12-08 05:24:04.168141', '1', 'English - en', 3, '', 8, 1),
(8, '2022-12-08 05:34:12.701042', '3', 'Abaza - abq', 1, '[{\"added\": {}}]', 8, 1),
(9, '2022-12-08 05:41:38.291502', '2', 'Abaza - abq', 1, '[{\"added\": {}}]', 9, 1),
(10, '2022-12-08 05:50:41.898820', '2', 'Abaza - abq', 3, '', 9, 1),
(11, '2022-12-08 05:51:04.403113', '3', 'Hindi - hi', 1, '[{\"added\": {}}]', 9, 1),
(12, '2022-12-17 05:27:12.298948', '4', 'Bengoli - bn', 1, '[{\"added\": {}}]', 9, 1),
(13, '2022-12-17 06:48:51.403664', '5', 'Africans - af', 1, '[{\"added\": {}}]', 9, 1),
(14, '2022-12-17 06:49:14.268289', '6', 'Irish - ga', 1, '[{\"added\": {}}]', 9, 1),
(15, '2022-12-17 06:49:27.899805', '7', 'Albanian - sq', 1, '[{\"added\": {}}]', 9, 1),
(16, '2022-12-17 06:49:40.983051', '8', 'Italian - it', 1, '[{\"added\": {}}]', 9, 1),
(17, '2022-12-17 06:49:53.316251', '9', 'Arabic - ar', 1, '[{\"added\": {}}]', 9, 1),
(18, '2022-12-17 06:50:05.389261', '10', 'Japanese - ja', 1, '[{\"added\": {}}]', 9, 1),
(19, '2022-12-17 06:50:21.331778', '11', 'Kannada - kn', 1, '[{\"added\": {}}]', 9, 1),
(20, '2022-12-18 14:26:22.228773', '4', 'Hindi - hi', 1, '[{\"added\": {}}]', 8, 1),
(21, '2022-12-18 14:26:42.415198', '5', 'Japanese - ja', 1, '[{\"added\": {}}]', 8, 1),
(22, '2022-12-18 14:27:05.108954', '6', 'Marathi - mr', 1, '[{\"added\": {}}]', 8, 1),
(23, '2022-12-18 14:27:19.017663', '7', 'Nepali - ne', 1, '[{\"added\": {}}]', 8, 1),
(24, '2022-12-18 14:27:43.498106', '8', 'Portuguese - pt', 1, '[{\"added\": {}}]', 8, 1),
(25, '2022-12-18 14:27:57.886559', '9', 'Russian - ru', 1, '[{\"added\": {}}]', 8, 1),
(26, '2022-12-18 14:28:15.830302', '10', 'Nagpuri - sck', 1, '[{\"added\": {}}]', 8, 1),
(27, '2022-12-18 14:28:27.265344', '11', 'Tamil - ta', 1, '[{\"added\": {}}]', 8, 1),
(28, '2022-12-18 14:28:39.669731', '12', 'Telgu - te', 1, '[{\"added\": {}}]', 8, 1),
(29, '2022-12-18 14:28:54.463419', '13', 'Turkish - tr', 1, '[{\"added\": {}}]', 8, 1),
(30, '2022-12-18 14:29:11.605412', '14', 'Urdu - ur', 1, '[{\"added\": {}}]', 8, 1),
(31, '2023-03-28 11:34:55.664768', '14', 'Urdu - ur', 3, '', 8, 1),
(32, '2023-03-28 11:34:55.724231', '13', 'Turkish - tr', 3, '', 8, 1),
(33, '2023-03-28 11:34:55.792655', '12', 'Telgu - te', 3, '', 8, 1),
(34, '2023-03-28 11:34:55.847422', '11', 'Tamil - ta', 3, '', 8, 1),
(35, '2023-03-28 11:34:55.903280', '10', 'Nagpuri - sck', 3, '', 8, 1),
(36, '2023-03-28 11:34:55.958856', '9', 'Russian - ru', 3, '', 8, 1),
(37, '2023-03-28 11:34:56.147312', '8', 'Portuguese - pt', 3, '', 8, 1),
(38, '2023-03-28 11:34:56.203370', '7', 'Nepali - ne', 3, '', 8, 1),
(39, '2023-03-28 11:34:56.314160', '6', 'Marathi - mr', 3, '', 8, 1),
(40, '2023-03-28 11:34:56.425841', '5', 'Japanese - ja', 3, '', 8, 1),
(41, '2023-03-28 11:34:56.479889', '4', 'Hindi - hi', 3, '', 8, 1),
(42, '2023-03-28 11:34:56.536210', '3', 'Abaza - abq', 3, '', 8, 1),
(43, '2023-03-28 11:35:17.035899', '11', 'Kannada - kn', 3, '', 9, 1),
(44, '2023-03-28 11:35:17.093640', '10', 'Japanese - ja', 3, '', 9, 1),
(45, '2023-03-28 11:35:17.159669', '9', 'Arabic - ar', 3, '', 9, 1),
(46, '2023-03-28 11:35:17.225813', '8', 'Italian - it', 3, '', 9, 1),
(47, '2023-03-28 11:35:17.280941', '7', 'Albanian - sq', 3, '', 9, 1),
(48, '2023-03-28 11:35:17.337289', '6', 'Irish - ga', 3, '', 9, 1),
(49, '2023-03-28 11:35:17.392811', '5', 'Africans - af', 3, '', 9, 1),
(50, '2023-03-28 11:35:17.449358', '4', 'Bengoli - bn', 3, '', 9, 1),
(51, '2023-03-28 11:35:17.504136', '3', 'Hindi - hi', 3, '', 9, 1),
(52, '2023-03-29 22:20:52.870868', '12', 'Hindi - hi', 1, '[{\"added\": {}}]', 9, 1),
(53, '2023-03-30 10:40:48.428154', '12', 'Hindi - hi', 3, '', 9, 1),
(54, '2023-03-30 10:41:08.255275', '13', 'Afrikaans - af', 1, '[{\"added\": {}}]', 9, 1),
(55, '2023-03-30 10:41:25.828322', '14', 'Albanian - sq', 1, '[{\"added\": {}}]', 9, 1),
(56, '2023-03-30 10:41:44.827743', '15', 'Amheric - ar', 1, '[{\"added\": {}}]', 9, 1),
(57, '2023-03-30 10:41:59.262577', '16', 'Arabic - ar', 1, '[{\"added\": {}}]', 9, 1),
(58, '2023-03-30 10:42:15.400802', '17', 'Armenian - hy', 1, '[{\"added\": {}}]', 9, 1),
(59, '2023-03-30 10:42:31.317172', '18', 'Assamese - as', 1, '[{\"added\": {}}]', 9, 1),
(60, '2023-03-30 10:42:44.782020', '19', 'Aymara - ay', 1, '[{\"added\": {}}]', 9, 1),
(61, '2023-03-30 10:43:06.049641', '20', 'Azerbaijani - az', 1, '[{\"added\": {}}]', 9, 1),
(62, '2023-03-30 10:43:23.425372', '21', 'Bambara - bm', 1, '[{\"added\": {}}]', 9, 1),
(63, '2023-03-30 10:43:35.763167', '22', 'Basque - eu', 1, '[{\"added\": {}}]', 9, 1),
(64, '2023-03-30 10:43:55.576479', '23', 'Belarusian - be', 1, '[{\"added\": {}}]', 9, 1),
(65, '2023-03-30 10:44:09.142060', '24', 'Bangali - bn', 1, '[{\"added\": {}}]', 9, 1),
(66, '2023-03-30 10:44:26.926950', '25', 'Bhajpuri - bho', 1, '[{\"added\": {}}]', 9, 1),
(67, '2023-03-30 10:44:43.371864', '26', 'Bosnian - bs', 1, '[{\"added\": {}}]', 9, 1),
(68, '2023-03-30 10:45:03.702012', '27', 'Bulgarian - bg', 1, '[{\"added\": {}}]', 9, 1),
(69, '2023-03-30 10:45:17.413813', '28', 'Catalan - ca', 1, '[{\"added\": {}}]', 9, 1),
(70, '2023-03-30 10:45:39.700560', '29', 'Cebuano - ceb', 1, '[{\"added\": {}}]', 9, 1),
(71, '2023-03-30 10:46:21.888608', '30', 'Chinese (Simplified) - zh-CN', 1, '[{\"added\": {}}]', 9, 1),
(72, '2023-03-30 10:46:46.926876', '31', 'Chinese (Traditional) - zh-TW', 1, '[{\"added\": {}}]', 9, 1),
(73, '2023-03-30 10:47:07.011185', '32', 'Corsican - co', 1, '[{\"added\": {}}]', 9, 1),
(74, '2023-03-30 10:47:22.758316', '33', 'Croatian - hr', 1, '[{\"added\": {}}]', 9, 1),
(75, '2023-03-30 10:47:55.229334', '34', 'Czech - cs', 1, '[{\"added\": {}}]', 9, 1),
(76, '2023-03-30 10:48:13.039069', '35', 'Danish - da', 1, '[{\"added\": {}}]', 9, 1),
(77, '2023-03-30 10:48:30.327476', '36', 'Dhivehi - dv', 1, '[{\"added\": {}}]', 9, 1),
(78, '2023-03-30 10:48:45.457542', '37', 'Dogri - doi', 1, '[{\"added\": {}}]', 9, 1),
(79, '2023-03-30 10:49:03.847738', '38', 'Dutch - nl', 1, '[{\"added\": {}}]', 9, 1),
(80, '2023-03-30 10:49:16.801684', '39', 'English - en', 1, '[{\"added\": {}}]', 9, 1),
(81, '2023-03-30 10:49:36.267929', '40', 'Esperanto - eo', 1, '[{\"added\": {}}]', 9, 1),
(82, '2023-03-30 10:49:54.381662', '41', 'Estonian - et', 1, '[{\"added\": {}}]', 9, 1),
(83, '2023-03-30 10:50:07.725275', '42', 'Ewe - ee', 1, '[{\"added\": {}}]', 9, 1),
(84, '2023-03-30 10:50:40.972816', '43', 'Filipino (Tagalog) - fil', 1, '[{\"added\": {}}]', 9, 1),
(85, '2023-03-30 10:51:28.361268', '44', 'Finnish - fi', 1, '[{\"added\": {}}]', 9, 1),
(86, '2023-03-30 10:53:57.609563', '45', 'French - fr', 1, '[{\"added\": {}}]', 9, 1),
(87, '2023-03-30 10:54:49.722597', '46', 'Frisian - fy', 1, '[{\"added\": {}}]', 9, 1),
(88, '2023-03-30 10:55:05.310554', '47', 'Galician - gl', 1, '[{\"added\": {}}]', 9, 1),
(89, '2023-03-30 10:55:18.882619', '48', 'Georgian - ka', 1, '[{\"added\": {}}]', 9, 1),
(90, '2023-03-30 10:55:29.040731', '49', 'German - de', 1, '[{\"added\": {}}]', 9, 1),
(91, '2023-03-30 10:55:39.718821', '50', 'Greek - el', 1, '[{\"added\": {}}]', 9, 1),
(92, '2023-03-30 10:55:50.705543', '51', 'Guarani - gn', 1, '[{\"added\": {}}]', 9, 1),
(93, '2023-03-30 10:56:07.913860', '52', 'Gujrati - gu', 1, '[{\"added\": {}}]', 9, 1),
(94, '2023-03-30 10:56:30.733417', '53', 'Haitian Creole - ht', 1, '[{\"added\": {}}]', 9, 1),
(95, '2023-03-30 10:56:43.668203', '54', 'Hausa - ha', 1, '[{\"added\": {}}]', 9, 1),
(96, '2023-03-30 10:57:00.203220', '55', 'Hawaiian - haw', 1, '[{\"added\": {}}]', 9, 1),
(97, '2023-03-30 10:57:38.289719', '56', 'Hebrew - he or iw', 1, '[{\"added\": {}}]', 9, 1),
(98, '2023-03-30 10:57:49.674541', '57', 'Hindi - hi', 1, '[{\"added\": {}}]', 9, 1),
(99, '2023-03-30 10:58:05.730192', '58', 'Hmong - hmn', 1, '[{\"added\": {}}]', 9, 1),
(100, '2023-03-30 10:58:16.228138', '59', 'Hungarian - hu', 1, '[{\"added\": {}}]', 9, 1),
(101, '2023-03-30 10:58:27.734427', '60', 'Icelandic - is', 1, '[{\"added\": {}}]', 9, 1),
(102, '2023-03-30 10:58:38.868567', '61', 'Igbo - ig', 1, '[{\"added\": {}}]', 9, 1),
(103, '2023-03-30 10:58:55.184855', '62', 'ilocano - ilo', 1, '[{\"added\": {}}]', 9, 1),
(104, '2023-03-30 10:59:17.237961', '63', 'Indenosian - id', 1, '[{\"added\": {}}]', 9, 1),
(105, '2023-03-30 10:59:28.621924', '64', 'Irish - ga', 1, '[{\"added\": {}}]', 9, 1),
(106, '2023-03-30 10:59:37.193074', '65', 'Italian - it', 1, '[{\"added\": {}}]', 9, 1),
(107, '2023-03-30 10:59:47.538901', '66', 'Japanese - ja', 1, '[{\"added\": {}}]', 9, 1),
(108, '2023-03-30 11:00:28.848548', '67', 'Javanese - jv or jw', 1, '[{\"added\": {}}]', 9, 1),
(109, '2023-03-30 11:00:40.680048', '68', 'Kannada - kn', 1, '[{\"added\": {}}]', 9, 1),
(110, '2023-03-30 11:00:54.310612', '69', 'Kazakh - kk', 1, '[{\"added\": {}}]', 9, 1),
(111, '2023-03-30 11:01:08.886237', '70', 'Khmer - km', 1, '[{\"added\": {}}]', 9, 1),
(112, '2023-03-30 11:01:26.565471', '71', 'Kinyarwanda - rw', 1, '[{\"added\": {}}]', 9, 1),
(113, '2023-03-30 11:01:45.560687', '72', 'Kokani - gom', 1, '[{\"added\": {}}]', 9, 1),
(114, '2023-03-30 11:01:56.687633', '73', 'Korean - ko', 1, '[{\"added\": {}}]', 9, 1),
(115, '2023-03-30 11:02:06.280676', '74', 'Krio - kri', 1, '[{\"added\": {}}]', 9, 1),
(116, '2023-03-30 11:02:44.684991', '75', 'Kurdish - ku', 1, '[{\"added\": {}}]', 9, 1),
(117, '2023-03-30 11:03:03.160513', '76', 'Kurdish(Sorani) - ckb', 1, '[{\"added\": {}}]', 9, 1),
(118, '2023-03-30 11:03:19.126451', '77', 'Kyrgyz - ky', 1, '[{\"added\": {}}]', 9, 1),
(119, '2023-03-30 11:03:29.059567', '78', 'Lao - lo', 1, '[{\"added\": {}}]', 9, 1),
(120, '2023-03-30 11:03:40.969130', '79', 'Latin - la', 1, '[{\"added\": {}}]', 9, 1),
(121, '2023-03-30 11:03:57.264194', '80', 'Latvian - lv', 1, '[{\"added\": {}}]', 9, 1),
(122, '2023-03-30 11:04:08.278945', '81', 'Lingala - ln', 1, '[{\"added\": {}}]', 9, 1),
(123, '2023-03-30 11:04:26.178564', '82', 'Lithuanian - lt', 1, '[{\"added\": {}}]', 9, 1),
(124, '2023-03-30 11:04:40.045477', '83', 'Luganda - lg', 1, '[{\"added\": {}}]', 9, 1),
(125, '2023-03-30 11:05:01.823115', '84', 'Luxambourgish - lb', 1, '[{\"added\": {}}]', 9, 1),
(126, '2023-03-30 11:05:14.082835', '85', 'Macedonian - mk', 1, '[{\"added\": {}}]', 9, 1),
(127, '2023-03-30 11:05:30.767733', '86', 'Maithili - mai', 1, '[{\"added\": {}}]', 9, 1),
(128, '2023-03-30 11:05:43.309445', '87', 'Malagasy - mg', 1, '[{\"added\": {}}]', 9, 1),
(129, '2023-03-30 11:05:53.137262', '88', 'Malay - ms', 1, '[{\"added\": {}}]', 9, 1),
(130, '2023-03-30 11:06:08.663891', '89', 'Malayalam - ml', 1, '[{\"added\": {}}]', 9, 1),
(131, '2023-03-30 11:06:20.756823', '90', 'Maltese - mt', 1, '[{\"added\": {}}]', 9, 1),
(132, '2023-03-30 11:06:31.359872', '91', 'Maori - mi', 1, '[{\"added\": {}}]', 9, 1),
(133, '2023-03-30 11:06:44.722408', '92', 'Marathi - mr', 1, '[{\"added\": {}}]', 9, 1),
(134, '2023-03-30 11:07:27.544677', '93', 'Meitelion(Manipuri) - mni-Mtei', 1, '[{\"added\": {}}]', 9, 1),
(135, '2023-03-30 11:07:44.580088', '94', 'Miza - lus', 1, '[{\"added\": {}}]', 9, 1),
(136, '2023-03-30 11:07:58.824976', '95', 'Mongolian - mn', 1, '[{\"added\": {}}]', 9, 1),
(137, '2023-03-30 11:08:21.039839', '96', 'Myanmar(Burmese) - my', 1, '[{\"added\": {}}]', 9, 1),
(138, '2023-03-30 11:08:30.837257', '97', 'Nepali - ne', 1, '[{\"added\": {}}]', 9, 1),
(139, '2023-03-30 11:08:47.900479', '98', 'Norwegian - no', 1, '[{\"added\": {}}]', 9, 1),
(140, '2023-03-30 11:09:10.733739', '99', 'Nyanja(Chichewa) - ny', 1, '[{\"added\": {}}]', 9, 1),
(141, '2023-03-30 11:09:35.581259', '100', 'Odia(Oriya) - or', 1, '[{\"added\": {}}]', 9, 1),
(142, '2023-03-30 11:09:46.959214', '101', 'Oromo - or', 1, '[{\"added\": {}}]', 9, 1),
(143, '2023-03-30 11:10:02.553555', '101', 'Oromo - or', 3, '', 9, 1),
(144, '2023-03-30 11:10:16.658830', '102', 'Oromo - om', 1, '[{\"added\": {}}]', 9, 1),
(145, '2023-03-30 11:10:29.959774', '103', 'Pashto - ps', 1, '[{\"added\": {}}]', 9, 1),
(146, '2023-03-30 11:10:40.504031', '104', 'Persian - fa', 1, '[{\"added\": {}}]', 9, 1),
(147, '2023-03-30 11:10:50.178057', '105', 'Polish - pl', 1, '[{\"added\": {}}]', 9, 1),
(148, '2023-03-30 11:11:24.067914', '106', 'Portuguese(Portugal,Braz) - pt', 1, '[{\"added\": {}}]', 9, 1),
(149, '2023-03-30 11:11:40.026526', '107', 'Punjab - pa', 1, '[{\"added\": {}}]', 9, 1),
(150, '2023-03-30 11:11:57.350640', '108', 'Quechua - qu', 1, '[{\"added\": {}}]', 9, 1),
(151, '2023-03-30 11:12:11.573625', '109', 'Romanian - ro', 1, '[{\"added\": {}}]', 9, 1),
(152, '2023-03-30 11:12:24.339973', '110', 'Russian - ru', 1, '[{\"added\": {}}]', 9, 1),
(153, '2023-03-30 11:12:49.206675', '111', 'Samoan - sm', 1, '[{\"added\": {}}]', 9, 1),
(154, '2023-03-30 11:13:02.739961', '112', 'Sanskrit - sa', 1, '[{\"added\": {}}]', 9, 1),
(155, '2023-03-30 11:13:21.319260', '113', 'Scots Gaelic - gd', 1, '[{\"added\": {}}]', 9, 1),
(156, '2023-03-30 11:14:19.477710', '114', 'Sepedi - nso', 1, '[{\"added\": {}}]', 9, 1),
(157, '2023-03-30 11:14:28.152243', '115', 'Serbian - sr', 1, '[{\"added\": {}}]', 9, 1),
(158, '2023-03-30 11:14:44.967579', '116', 'Sesotho - st', 1, '[{\"added\": {}}]', 9, 1),
(159, '2023-03-30 11:14:54.496438', '117', 'Shona - sn', 1, '[{\"added\": {}}]', 9, 1),
(160, '2023-03-30 11:15:03.726239', '118', 'Sindhi - sd', 1, '[{\"added\": {}}]', 9, 1),
(161, '2023-03-30 11:15:24.202938', '119', 'Sinhala(Sinhalese) - si', 1, '[{\"added\": {}}]', 9, 1),
(162, '2023-03-30 11:15:34.870023', '120', 'Slovak - sk', 1, '[{\"added\": {}}]', 9, 1),
(163, '2023-03-30 11:15:46.670862', '121', 'Slovenian - sl', 1, '[{\"added\": {}}]', 9, 1),
(164, '2023-03-30 11:15:56.879591', '122', 'Somali - so', 1, '[{\"added\": {}}]', 9, 1),
(165, '2023-03-30 11:16:07.368693', '123', 'Spanish - es', 1, '[{\"added\": {}}]', 9, 1),
(166, '2023-03-30 11:16:24.462705', '124', 'Sundanese - su', 1, '[{\"added\": {}}]', 9, 1),
(167, '2023-03-30 11:16:41.222609', '125', 'Swahili - sw', 1, '[{\"added\": {}}]', 9, 1),
(168, '2023-03-30 11:16:56.543488', '126', 'Swedish - sv', 1, '[{\"added\": {}}]', 9, 1),
(169, '2023-03-30 11:17:20.308422', '127', 'Tagalog(Filipino) - tl', 1, '[{\"added\": {}}]', 9, 1),
(170, '2023-03-30 11:17:34.015160', '128', 'Tajik - tg', 1, '[{\"added\": {}}]', 9, 1),
(171, '2023-03-30 11:17:46.761073', '129', 'Tamil - ta', 1, '[{\"added\": {}}]', 9, 1),
(172, '2023-03-30 11:17:56.115598', '130', 'Tatar - tt', 1, '[{\"added\": {}}]', 9, 1),
(173, '2023-03-30 11:18:05.424283', '131', 'Telugu - te', 1, '[{\"added\": {}}]', 9, 1),
(174, '2023-03-30 11:18:16.683947', '132', 'Thai - th', 1, '[{\"added\": {}}]', 9, 1),
(175, '2023-03-30 11:18:32.921958', '133', 'Tigrinya - ti', 1, '[{\"added\": {}}]', 9, 1),
(176, '2023-03-30 11:18:46.800584', '134', 'Tsonga - ts', 1, '[{\"added\": {}}]', 9, 1),
(177, '2023-03-30 11:18:56.605253', '135', 'Turkish - tr', 1, '[{\"added\": {}}]', 9, 1),
(178, '2023-03-30 11:19:07.000490', '136', 'Turkmen - tk', 1, '[{\"added\": {}}]', 9, 1),
(179, '2023-03-30 11:19:22.113166', '137', 'Twi(Akan) - ak', 1, '[{\"added\": {}}]', 9, 1),
(180, '2023-03-30 11:19:35.108659', '138', 'Ukranian - uk', 1, '[{\"added\": {}}]', 9, 1),
(181, '2023-03-30 11:19:46.604259', '139', 'Urdu - ur', 1, '[{\"added\": {}}]', 9, 1),
(182, '2023-03-30 11:20:03.378333', '140', 'Uyghur - ug', 1, '[{\"added\": {}}]', 9, 1),
(183, '2023-03-30 11:20:16.140564', '141', 'Uzbek - uz', 1, '[{\"added\": {}}]', 9, 1),
(184, '2023-03-30 11:20:33.545634', '142', 'Vietnamese - vi', 1, '[{\"added\": {}}]', 9, 1),
(185, '2023-03-30 11:20:42.975023', '143', 'Welsh - cy', 1, '[{\"added\": {}}]', 9, 1),
(186, '2023-03-30 11:20:53.189881', '144', 'Xhosa - xh', 1, '[{\"added\": {}}]', 9, 1),
(187, '2023-03-30 11:21:05.016098', '145', 'Yiddish - yi', 1, '[{\"added\": {}}]', 9, 1),
(188, '2023-03-30 11:21:16.847097', '146', 'Yoruba - yo', 1, '[{\"added\": {}}]', 9, 1),
(189, '2023-03-30 11:21:27.557677', '147', 'Zulu - zu', 1, '[{\"added\": {}}]', 9, 1),
(190, '2023-03-30 11:25:30.409179', '25', 'Bhojpuri - bho', 2, '[{\"changed\": {\"fields\": [\"Country\"]}}]', 9, 1),
(191, '2023-03-30 11:35:04.109832', '25', 'Bhojpuri - bho', 3, '', 9, 1),
(192, '2023-03-30 11:35:04.193480', '21', 'Bambara - bm', 3, '', 9, 1),
(193, '2023-03-30 11:41:37.720976', '15', 'Abaza - abq', 1, '[{\"added\": {}}]', 8, 1),
(194, '2023-03-30 11:41:49.908239', '16', 'Adyghe - ady', 1, '[{\"added\": {}}]', 8, 1),
(195, '2023-03-30 11:42:03.753608', '17', 'Afrikaans - af', 1, '[{\"added\": {}}]', 8, 1),
(196, '2023-03-30 11:42:13.885917', '18', 'Angika - ang', 1, '[{\"added\": {}}]', 8, 1),
(197, '2023-03-30 11:42:23.014772', '19', 'Arabic - ar', 1, '[{\"added\": {}}]', 8, 1),
(198, '2023-03-30 11:42:32.439532', '20', 'Assamese - as', 1, '[{\"added\": {}}]', 8, 1),
(199, '2023-03-30 11:42:47.120013', '21', 'Avar - ava', 1, '[{\"added\": {}}]', 8, 1),
(200, '2023-03-30 11:43:01.288973', '22', 'Azerbaijani - az', 1, '[{\"added\": {}}]', 8, 1),
(201, '2023-03-30 11:43:18.887742', '23', 'Belarusian - bg', 1, '[{\"added\": {}}]', 8, 1),
(202, '2023-03-30 11:43:31.708176', '24', 'Bihari - bh', 1, '[{\"added\": {}}]', 8, 1),
(203, '2023-03-30 11:43:45.776471', '25', 'Bhojpuri - bho', 1, '[{\"added\": {}}]', 8, 1),
(204, '2023-03-30 11:44:00.436234', '26', 'Bengali - bn', 1, '[{\"added\": {}}]', 8, 1),
(205, '2023-03-30 11:44:10.321314', '27', 'Bosnian - bs', 1, '[{\"added\": {}}]', 8, 1),
(206, '2023-03-30 11:44:27.659379', '28', 'Simplified Chinese - ch_sim', 1, '[{\"added\": {}}]', 8, 1),
(207, '2023-03-30 11:44:44.683841', '29', 'TRaditional Chinese - ch_tra', 1, '[{\"added\": {}}]', 8, 1),
(208, '2023-03-30 11:44:57.213049', '30', 'Chechen - che', 1, '[{\"added\": {}}]', 8, 1),
(209, '2023-03-30 11:45:08.486802', '31', 'Czech - cs', 1, '[{\"added\": {}}]', 8, 1),
(210, '2023-03-30 11:45:23.950868', '32', 'Welsh - cy', 1, '[{\"added\": {}}]', 8, 1),
(211, '2023-03-30 11:45:32.619471', '33', 'Danish - da', 1, '[{\"added\": {}}]', 8, 1),
(212, '2023-03-30 11:45:45.265635', '34', 'Dargwa - dar', 1, '[{\"added\": {}}]', 8, 1),
(213, '2023-03-30 11:45:56.860384', '35', 'German - de', 1, '[{\"added\": {}}]', 8, 1),
(214, '2023-03-30 11:46:06.762091', '36', 'English - en', 1, '[{\"added\": {}}]', 8, 1),
(215, '2023-03-30 11:46:17.997559', '37', 'Spanish - es', 1, '[{\"added\": {}}]', 8, 1),
(216, '2023-03-30 11:46:29.870318', '38', 'Estonian - et', 1, '[{\"added\": {}}]', 8, 1),
(217, '2023-03-30 11:46:49.417149', '39', 'Persian(Farsi) - fa', 1, '[{\"added\": {}}]', 8, 1),
(218, '2023-03-30 11:46:58.902482', '40', 'French - fr', 1, '[{\"added\": {}}]', 8, 1),
(219, '2023-03-30 11:47:06.800878', '41', 'Irish - ga', 1, '[{\"added\": {}}]', 8, 1),
(220, '2023-03-30 11:47:23.740386', '42', 'Gaon Kokani - gom', 1, '[{\"added\": {}}]', 8, 1),
(221, '2023-03-30 11:47:31.525123', '43', 'HIndi - hi', 1, '[{\"added\": {}}]', 8, 1),
(222, '2023-03-30 11:47:49.111185', '44', 'Croatian - hr', 1, '[{\"added\": {}}]', 8, 1),
(223, '2023-03-30 11:48:04.621018', '45', 'Hungarian - hu', 1, '[{\"added\": {}}]', 8, 1),
(224, '2023-03-30 11:48:24.181524', '46', 'Indonesian - id', 1, '[{\"added\": {}}]', 8, 1),
(225, '2023-03-30 11:48:37.461936', '47', 'Icelandic - is', 1, '[{\"added\": {}}]', 8, 1),
(226, '2023-03-30 11:48:46.443528', '48', 'Italian - it', 1, '[{\"added\": {}}]', 8, 1),
(227, '2023-03-30 11:48:58.816715', '49', 'Japanese - ja', 1, '[{\"added\": {}}]', 8, 1),
(228, '2023-03-30 11:49:10.864208', '50', 'Kabardian - kbd', 1, '[{\"added\": {}}]', 8, 1),
(229, '2023-03-30 11:49:26.902732', '51', 'Kannada - kn', 1, '[{\"added\": {}}]', 8, 1),
(230, '2023-03-30 11:49:34.670082', '52', 'Korean - ko', 1, '[{\"added\": {}}]', 8, 1),
(231, '2023-03-30 11:49:47.653184', '53', 'Kurdish - ku', 1, '[{\"added\": {}}]', 8, 1),
(232, '2023-03-30 11:49:59.227756', '54', 'Latin - la', 1, '[{\"added\": {}}]', 8, 1),
(233, '2023-03-30 11:50:21.560046', '55', 'Lak - lbe', 1, '[{\"added\": {}}]', 8, 1),
(234, '2023-03-30 11:52:17.354557', '56', 'Lezghian - lez', 1, '[{\"added\": {}}]', 8, 1),
(235, '2023-03-30 11:52:31.173796', '57', 'Lithanium - lt', 1, '[{\"added\": {}}]', 8, 1),
(236, '2023-03-30 11:52:42.659434', '58', 'Latvian - lv', 1, '[{\"added\": {}}]', 8, 1),
(237, '2023-03-30 11:52:54.287176', '59', 'Magahi - mah', 1, '[{\"added\": {}}]', 8, 1),
(238, '2023-03-30 11:53:04.799227', '60', 'Maithili - mai', 1, '[{\"added\": {}}]', 8, 1),
(239, '2023-03-30 11:53:15.379081', '61', 'Maori - mi', 1, '[{\"added\": {}}]', 8, 1),
(240, '2023-03-30 11:53:27.220582', '62', 'MOngolian - mn', 1, '[{\"added\": {}}]', 8, 1),
(241, '2023-03-30 11:53:39.309141', '63', 'Marathi - mr', 1, '[{\"added\": {}}]', 8, 1),
(242, '2023-03-30 11:53:49.190137', '64', 'Malay - ms', 1, '[{\"added\": {}}]', 8, 1),
(243, '2023-03-30 11:54:00.362293', '65', 'Maltese - mt', 1, '[{\"added\": {}}]', 8, 1),
(244, '2023-03-30 11:54:19.426606', '66', 'Nepali - ne', 1, '[{\"added\": {}}]', 8, 1),
(245, '2023-03-30 11:54:41.671470', '67', 'Newari - new', 1, '[{\"added\": {}}]', 8, 1),
(246, '2023-03-30 11:54:54.337957', '68', 'Dutch - nl', 1, '[{\"added\": {}}]', 8, 1),
(247, '2023-03-30 11:55:08.634849', '69', 'Norwegian - no', 1, '[{\"added\": {}}]', 8, 1),
(248, '2023-03-30 11:55:23.581018', '70', 'Occitan - oc', 1, '[{\"added\": {}}]', 8, 1),
(249, '2023-03-30 11:55:34.389695', '71', 'Pali - pi', 1, '[{\"added\": {}}]', 8, 1),
(250, '2023-03-30 11:55:45.403006', '72', 'Polish - pl', 1, '[{\"added\": {}}]', 8, 1),
(251, '2023-03-30 11:55:57.685072', '73', 'Portuguese(Portugal,Braz) - pt', 1, '[{\"added\": {}}]', 8, 1),
(252, '2023-03-30 11:56:08.048064', '74', 'Romanian - ro', 1, '[{\"added\": {}}]', 8, 1),
(253, '2023-03-30 11:56:17.212106', '75', 'Russian - ru', 1, '[{\"added\": {}}]', 8, 1),
(254, '2023-03-30 11:56:48.632825', '76', 'Serbian(Cryillic) - rs_cryillic', 1, '[{\"added\": {}}]', 8, 1),
(255, '2023-03-30 11:57:17.485899', '77', 'Serbian(Latin) - rs_latin', 1, '[{\"added\": {}}]', 8, 1),
(256, '2023-03-30 11:57:28.505798', '78', 'Nagpuri - sck', 1, '[{\"added\": {}}]', 8, 1),
(257, '2023-03-30 11:57:37.823342', '79', 'Slovak - sk', 1, '[{\"added\": {}}]', 8, 1),
(258, '2023-03-30 11:57:49.956392', '80', 'Slovenian - sl', 1, '[{\"added\": {}}]', 8, 1),
(259, '2023-03-30 11:58:04.780754', '81', 'Albanian - sq', 1, '[{\"added\": {}}]', 8, 1),
(260, '2023-03-30 11:58:15.521200', '82', 'Swedish - sv', 1, '[{\"added\": {}}]', 8, 1),
(261, '2023-03-30 11:58:26.728864', '83', 'Swahili - sw', 1, '[{\"added\": {}}]', 8, 1),
(262, '2023-03-30 11:58:40.671342', '84', 'Tamil - ta', 1, '[{\"added\": {}}]', 8, 1),
(263, '2023-03-30 11:58:55.632506', '85', 'Tabassaran - tab', 1, '[{\"added\": {}}]', 8, 1),
(264, '2023-03-30 11:59:08.120895', '86', 'Telugu - te', 1, '[{\"added\": {}}]', 8, 1),
(265, '2023-03-30 11:59:19.205064', '87', 'Thai - th', 1, '[{\"added\": {}}]', 8, 1),
(266, '2023-03-30 11:59:31.114602', '88', 'Tajik - tjk', 1, '[{\"added\": {}}]', 8, 1),
(267, '2023-03-30 11:59:46.952063', '89', 'Tagalog - tl', 1, '[{\"added\": {}}]', 8, 1),
(268, '2023-03-30 11:59:57.166484', '90', 'Turkish - tr', 1, '[{\"added\": {}}]', 8, 1),
(269, '2023-03-30 12:00:10.530784', '91', 'Uyghur - ug', 1, '[{\"added\": {}}]', 8, 1),
(270, '2023-03-30 12:00:19.122872', '92', 'Ukranian - uk', 1, '[{\"added\": {}}]', 8, 1),
(271, '2023-03-30 12:00:28.060857', '93', 'Urdu - ur', 1, '[{\"added\": {}}]', 8, 1),
(272, '2023-03-30 12:00:40.414253', '94', 'Uzbek - uz', 1, '[{\"added\": {}}]', 8, 1),
(273, '2023-03-30 12:00:48.822064', '95', 'Vietnamese - vi', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'Translator', 'img2txt'),
(8, 'Translator', 'transimg'),
(9, 'Translator', 'translang');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Translator', '0001_initial', '2022-10-08 05:35:08.555163'),
(2, 'contenttypes', '0001_initial', '2022-10-08 05:35:09.265387'),
(3, 'auth', '0001_initial', '2022-10-08 05:35:24.888331'),
(4, 'admin', '0001_initial', '2022-10-08 05:35:29.526667'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-10-08 05:35:29.595548'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-08 05:35:29.763952'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-10-08 05:35:30.912839'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-10-08 05:35:32.992580'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-10-08 05:35:33.334677'),
(10, 'auth', '0004_alter_user_username_opts', '2022-10-08 05:35:33.411459'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-10-08 05:35:34.758190'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-10-08 05:35:34.822499'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-10-08 05:35:34.890840'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-10-08 05:35:35.059962'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-10-08 05:35:35.217181'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-10-08 05:35:35.550634'),
(17, 'auth', '0011_update_proxy_permissions', '2022-10-08 05:35:35.725156'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-10-08 05:35:35.925512'),
(19, 'sessions', '0001_initial', '2022-10-08 05:35:36.700984'),
(20, 'Translator', '0002_alter_image_mean_text_alter_image_og_text', '2022-10-08 05:41:14.044379'),
(21, 'Translator', '0003_remove_image_mean_text_remove_image_og_text', '2022-10-08 05:48:30.932488'),
(22, 'Translator', '0004_rename_image_img2txt', '2022-10-16 06:52:04.353228'),
(23, 'Translator', '0005_transimg_translang_alter_img2txt_image', '2022-12-08 04:47:36.367358');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `translator_img2txt`
--

CREATE TABLE `translator_img2txt` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translator_img2txt`
--

INSERT INTO `translator_img2txt` (`id`, `image`, `date`) VALUES
(100, 'media/0Jl54.png', '2022-12-01 06:02:06.107949'),
(101, 'media/0Jl54.png', '2022-12-01 06:06:09.786980'),
(102, 'media/0Jl54.png', '2022-12-01 06:06:56.258469'),
(103, 'media/0Jl54_nvTaogb.png', '2022-12-01 06:09:02.197450'),
(104, 'media/0Jl54_nUjdoRW.png', '2022-12-08 05:30:30.744989'),
(105, 'media/0Jl54_mD1Dp2s.png', '2022-12-08 14:56:27.637949'),
(106, 'media/0Jl54_2MyG1Mg.png', '2022-12-08 14:59:25.760214'),
(107, 'media/0Jl54_agXGRp5.png', '2022-12-08 15:00:30.087129'),
(108, 'media/0Jl54_igiq275.png', '2022-12-08 15:01:39.715990'),
(109, 'media/0Jl54.png', '2022-12-08 15:09:46.169207'),
(110, 'media/0Jl54_J6Fs80K.png', '2022-12-08 15:11:03.184153'),
(111, 'media/0Jl54_4G6zZft.png', '2022-12-08 15:21:45.749411'),
(112, 'media/0Jl54_fN0oGgV.png', '2022-12-09 10:52:22.145423'),
(113, 'media/0Jl54_AG3g7bf.png', '2022-12-09 11:11:23.404749'),
(114, 'media/0Jl54_TT1xyRO.png', '2022-12-17 05:31:59.627611'),
(115, 'media/0Jl54_u67vzru.png', '2022-12-17 05:34:15.652957'),
(116, 'media/0Jl54_s0BDTZh.png', '2022-12-17 05:36:02.530495'),
(117, 'media/0Jl54_X8YHO9p.png', '2022-12-17 05:39:46.919504'),
(118, 'media/0Jl54_UvO71JV.png', '2022-12-17 05:43:39.810117'),
(119, 'media/0Jl54_KvxYuNE.png', '2022-12-17 05:59:52.461429'),
(120, 'media/0Jl54_7rSSums.png', '2022-12-17 06:01:35.490534'),
(121, 'media/0Jl54_pvFDhDw.png', '2022-12-17 06:05:30.912078'),
(122, 'media/0Jl54_7SjywXR.png', '2022-12-17 06:08:34.764820'),
(123, 'media/0Jl54_jz1F5lc.png', '2022-12-17 06:11:26.776369'),
(124, 'media/0Jl54_nppiYZe.png', '2022-12-17 06:16:51.179541'),
(125, 'media/0Jl54_Hg4KLQi.png', '2022-12-17 06:17:30.751601'),
(126, 'media/0Jl54_RwKXXxh.png', '2022-12-17 06:19:28.303885'),
(127, 'media/tesseract_nonenglish_german_block-659x1024.png', '2022-12-17 06:22:18.083339'),
(128, 'media/download.jfif', '2022-12-17 06:24:41.685097'),
(129, 'media/download_1.jfif', '2022-12-17 06:25:56.926983'),
(130, 'media/surah_falaq_English_translation.jpg', '2022-12-17 06:27:27.978108'),
(131, 'media/hindi-to-english-translation-services-500x500.webp', '2022-12-17 06:28:47.601213'),
(132, 'media/dad-daughter-english-love-Favim.com-3591972.jpg', '2022-12-17 06:31:09.468744'),
(133, 'media/surah_falaq_English_translation_hJl12kW.jpg', '2022-12-17 06:33:13.293446'),
(134, 'media/0Jl54_99zNRMF.png', '2022-12-17 06:39:27.907356'),
(135, 'media/0Jl54_LjTA68s.png', '2022-12-17 06:40:03.819480'),
(136, 'media/0Jl54_ruCH9sw.png', '2022-12-17 06:40:46.317700'),
(137, 'media/download_2.jfif', '2022-12-18 14:23:48.821592'),
(138, 'media/A3Sw4.png', '2022-12-18 14:29:58.876614'),
(139, 'media/A3Sw4_KBmdJji.png', '2022-12-18 14:31:32.774054'),
(140, 'media/0Jl54_3gk86ec.png', '2022-12-18 14:35:44.783818'),
(141, 'media/cute-funny-happy-coffee-mug-and-fried-egg-character-bonjour-french-quote-vector-ha_5i6Y8JP.jpg', '2022-12-18 14:37:56.494957'),
(142, 'media/0Jl54.png', '2022-12-18 14:48:11.126547'),
(143, 'media/chocolate-in-urdu-dripping-text-vector-illustration-eps-10-MH29JY.jpg', '2022-12-22 06:06:09.543848'),
(144, 'media/unnamed.png', '2022-12-22 06:07:25.404147'),
(145, 'media/unnamed_kn4k3fA.png', '2022-12-22 06:09:40.251574'),
(146, 'media/unnamed_1.png', '2022-12-22 06:10:54.638721'),
(147, 'media/unnamed_Q8t0g43.png', '2022-12-22 06:15:31.958380'),
(148, 'media/unnamed_RLWWz2L.png', '2022-12-22 06:16:26.931060'),
(149, 'media/unnamed_3N7Xebi.png', '2022-12-22 06:17:14.966355'),
(150, 'media/unnamed_1_Z6KHIUQ.png', '2022-12-22 06:23:00.873986'),
(151, 'media/0Jl54_K2SiMP7.png', '2022-12-22 15:18:14.516984'),
(152, 'media/0Jl54_6D2830C.png', '2023-01-22 12:10:23.012768'),
(153, 'media/A3Sw4.png', '2023-03-28 09:32:13.676968'),
(154, 'media/Friend-Good-Morning-Images-photo-download.gif', '2023-03-28 09:55:38.182765'),
(155, 'media/chocolate-in-urdu-dripping-text-vector-illustration-eps-10-MH29JY_UYYiTyh.jpg', '2023-03-28 09:56:35.136241'),
(156, 'media/images_4.jpg', '2023-03-28 09:57:32.279533'),
(157, 'media/fifa_part1.jpg', '2023-03-28 09:58:21.831450'),
(158, 'media/0Jl54_IXIQlQ7.png', '2023-03-28 11:02:10.597118'),
(159, 'media/0Jl54_1qILTG7.png', '2023-03-28 11:05:47.099578'),
(160, 'media/0Jl54_NEAJyTx.png', '2023-03-28 11:09:16.778481'),
(161, 'media/0Jl54_LX4NGOD.png', '2023-03-28 11:20:47.757153'),
(162, 'media/0Jl54_2AShvEv.png', '2023-03-28 11:21:46.068749'),
(163, 'media/0Jl54_1txxrP5.png', '2023-03-28 11:22:00.811412'),
(164, 'media/0Jl54_zsXpfiW.png', '2023-03-28 11:23:03.521627'),
(165, 'media/0Jl54_6lK8Ud3.png', '2023-03-28 11:38:22.569511'),
(166, 'media/a-Telugu-text-image.png', '2023-03-30 12:04:21.974330'),
(167, 'media/tamil.jpg', '2023-03-30 12:23:15.675153'),
(168, 'media/0Jl54_1ZBwu9H.png', '2023-03-30 12:24:54.194727'),
(169, 'media/0Jl54_YW7kO8b.png', '2023-03-30 12:40:53.198701');

-- --------------------------------------------------------

--
-- Table structure for table `translator_transimg`
--

CREATE TABLE `translator_transimg` (
  `id` bigint(20) NOT NULL,
  `country` varchar(25) NOT NULL,
  `c_code` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translator_transimg`
--

INSERT INTO `translator_transimg` (`id`, `country`, `c_code`) VALUES
(15, 'Abaza', 'abq'),
(16, 'Adyghe', 'ady'),
(17, 'Afrikaans', 'af'),
(18, 'Angika', 'ang'),
(19, 'Arabic', 'ar'),
(20, 'Assamese', 'as'),
(21, 'Avar', 'ava'),
(22, 'Azerbaijani', 'az'),
(23, 'Belarusian', 'bg'),
(24, 'Bihari', 'bh'),
(25, 'Bhojpuri', 'bho'),
(26, 'Bengali', 'bn'),
(27, 'Bosnian', 'bs'),
(28, 'Simplified Chinese', 'ch_sim'),
(29, 'TRaditional Chinese', 'ch_tra'),
(30, 'Chechen', 'che'),
(31, 'Czech', 'cs'),
(32, 'Welsh', 'cy'),
(33, 'Danish', 'da'),
(34, 'Dargwa', 'dar'),
(35, 'German', 'de'),
(36, 'English', 'en'),
(37, 'Spanish', 'es'),
(38, 'Estonian', 'et'),
(39, 'Persian(Farsi)', 'fa'),
(40, 'French', 'fr'),
(41, 'Irish', 'ga'),
(42, 'Gaon Kokani', 'gom'),
(43, 'HIndi', 'hi'),
(44, 'Croatian', 'hr'),
(45, 'Hungarian', 'hu'),
(46, 'Indonesian', 'id'),
(47, 'Icelandic', 'is'),
(48, 'Italian', 'it'),
(49, 'Japanese', 'ja'),
(50, 'Kabardian', 'kbd'),
(51, 'Kannada', 'kn'),
(52, 'Korean', 'ko'),
(53, 'Kurdish', 'ku'),
(54, 'Latin', 'la'),
(55, 'Lak', 'lbe'),
(56, 'Lezghian', 'lez'),
(57, 'Lithanium', 'lt'),
(58, 'Latvian', 'lv'),
(59, 'Magahi', 'mah'),
(60, 'Maithili', 'mai'),
(61, 'Maori', 'mi'),
(62, 'MOngolian', 'mn'),
(63, 'Marathi', 'mr'),
(64, 'Malay', 'ms'),
(65, 'Maltese', 'mt'),
(66, 'Nepali', 'ne'),
(67, 'Newari', 'new'),
(68, 'Dutch', 'nl'),
(69, 'Norwegian', 'no'),
(70, 'Occitan', 'oc'),
(71, 'Pali', 'pi'),
(72, 'Polish', 'pl'),
(73, 'Portuguese(Portugal,Braz)', 'pt'),
(74, 'Romanian', 'ro'),
(75, 'Russian', 'ru'),
(76, 'Serbian(Cryillic)', 'rs_cryillic'),
(77, 'Serbian(Latin)', 'rs_latin'),
(78, 'Nagpuri', 'sck'),
(79, 'Slovak', 'sk'),
(80, 'Slovenian', 'sl'),
(81, 'Albanian', 'sq'),
(82, 'Swedish', 'sv'),
(83, 'Swahili', 'sw'),
(84, 'Tamil', 'ta'),
(85, 'Tabassaran', 'tab'),
(86, 'Telugu', 'te'),
(87, 'Thai', 'th'),
(88, 'Tajik', 'tjk'),
(89, 'Tagalog', 'tl'),
(90, 'Turkish', 'tr'),
(91, 'Uyghur', 'ug'),
(92, 'Ukranian', 'uk'),
(93, 'Urdu', 'ur'),
(94, 'Uzbek', 'uz'),
(95, 'Vietnamese', 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `translator_translang`
--

CREATE TABLE `translator_translang` (
  `id` bigint(20) NOT NULL,
  `country` varchar(25) NOT NULL,
  `c_code` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translator_translang`
--

INSERT INTO `translator_translang` (`id`, `country`, `c_code`) VALUES
(13, 'Afrikaans', 'af'),
(14, 'Albanian', 'sq'),
(15, 'Amheric', 'ar'),
(16, 'Arabic', 'ar'),
(17, 'Armenian', 'hy'),
(18, 'Assamese', 'as'),
(19, 'Aymara', 'ay'),
(20, 'Azerbaijani', 'az'),
(22, 'Basque', 'eu'),
(23, 'Belarusian', 'be'),
(24, 'Bangali', 'bn'),
(26, 'Bosnian', 'bs'),
(27, 'Bulgarian', 'bg'),
(28, 'Catalan', 'ca'),
(29, 'Cebuano', 'ceb'),
(30, 'Chinese (Simplified)', 'zh-CN'),
(31, 'Chinese (Traditional)', 'zh-TW'),
(32, 'Corsican', 'co'),
(33, 'Croatian', 'hr'),
(34, 'Czech', 'cs'),
(35, 'Danish', 'da'),
(36, 'Dhivehi', 'dv'),
(37, 'Dogri', 'doi'),
(38, 'Dutch', 'nl'),
(39, 'English', 'en'),
(40, 'Esperanto', 'eo'),
(41, 'Estonian', 'et'),
(42, 'Ewe', 'ee'),
(43, 'Filipino (Tagalog)', 'fil'),
(44, 'Finnish', 'fi'),
(45, 'French', 'fr'),
(46, 'Frisian', 'fy'),
(47, 'Galician', 'gl'),
(48, 'Georgian', 'ka'),
(49, 'German', 'de'),
(50, 'Greek', 'el'),
(51, 'Guarani', 'gn'),
(52, 'Gujrati', 'gu'),
(53, 'Haitian Creole', 'ht'),
(54, 'Hausa', 'ha'),
(55, 'Hawaiian', 'haw'),
(56, 'Hebrew', 'he or iw'),
(57, 'Hindi', 'hi'),
(58, 'Hmong', 'hmn'),
(59, 'Hungarian', 'hu'),
(60, 'Icelandic', 'is'),
(61, 'Igbo', 'ig'),
(62, 'ilocano', 'ilo'),
(63, 'Indenosian', 'id'),
(64, 'Irish', 'ga'),
(65, 'Italian', 'it'),
(66, 'Japanese', 'ja'),
(67, 'Javanese', 'jv or jw'),
(68, 'Kannada', 'kn'),
(69, 'Kazakh', 'kk'),
(70, 'Khmer', 'km'),
(71, 'Kinyarwanda', 'rw'),
(72, 'Kokani', 'gom'),
(73, 'Korean', 'ko'),
(74, 'Krio', 'kri'),
(75, 'Kurdish', 'ku'),
(76, 'Kurdish(Sorani)', 'ckb'),
(77, 'Kyrgyz', 'ky'),
(78, 'Lao', 'lo'),
(79, 'Latin', 'la'),
(80, 'Latvian', 'lv'),
(81, 'Lingala', 'ln'),
(82, 'Lithuanian', 'lt'),
(83, 'Luganda', 'lg'),
(84, 'Luxambourgish', 'lb'),
(85, 'Macedonian', 'mk'),
(86, 'Maithili', 'mai'),
(87, 'Malagasy', 'mg'),
(88, 'Malay', 'ms'),
(89, 'Malayalam', 'ml'),
(90, 'Maltese', 'mt'),
(91, 'Maori', 'mi'),
(92, 'Marathi', 'mr'),
(93, 'Meitelion(Manipuri)', 'mni-Mtei'),
(94, 'Miza', 'lus'),
(95, 'Mongolian', 'mn'),
(96, 'Myanmar(Burmese)', 'my'),
(97, 'Nepali', 'ne'),
(98, 'Norwegian', 'no'),
(99, 'Nyanja(Chichewa)', 'ny'),
(100, 'Odia(Oriya)', 'or'),
(102, 'Oromo', 'om'),
(103, 'Pashto', 'ps'),
(104, 'Persian', 'fa'),
(105, 'Polish', 'pl'),
(106, 'Portuguese(Portugal,Braz)', 'pt'),
(107, 'Punjab', 'pa'),
(108, 'Quechua', 'qu'),
(109, 'Romanian', 'ro'),
(110, 'Russian', 'ru'),
(111, 'Samoan', 'sm'),
(112, 'Sanskrit', 'sa'),
(113, 'Scots Gaelic', 'gd'),
(114, 'Sepedi', 'nso'),
(115, 'Serbian', 'sr'),
(116, 'Sesotho', 'st'),
(117, 'Shona', 'sn'),
(118, 'Sindhi', 'sd'),
(119, 'Sinhala(Sinhalese)', 'si'),
(120, 'Slovak', 'sk'),
(121, 'Slovenian', 'sl'),
(122, 'Somali', 'so'),
(123, 'Spanish', 'es'),
(124, 'Sundanese', 'su'),
(125, 'Swahili', 'sw'),
(126, 'Swedish', 'sv'),
(127, 'Tagalog(Filipino)', 'tl'),
(128, 'Tajik', 'tg'),
(129, 'Tamil', 'ta'),
(130, 'Tatar', 'tt'),
(131, 'Telugu', 'te'),
(132, 'Thai', 'th'),
(133, 'Tigrinya', 'ti'),
(134, 'Tsonga', 'ts'),
(135, 'Turkish', 'tr'),
(136, 'Turkmen', 'tk'),
(137, 'Twi(Akan)', 'ak'),
(138, 'Ukranian', 'uk'),
(139, 'Urdu', 'ur'),
(140, 'Uyghur', 'ug'),
(141, 'Uzbek', 'uz'),
(142, 'Vietnamese', 'vi'),
(143, 'Welsh', 'cy'),
(144, 'Xhosa', 'xh'),
(145, 'Yiddish', 'yi'),
(146, 'Yoruba', 'yo'),
(147, 'Zulu', 'zu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `translator_img2txt`
--
ALTER TABLE `translator_img2txt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translator_transimg`
--
ALTER TABLE `translator_transimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translator_translang`
--
ALTER TABLE `translator_translang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `translator_img2txt`
--
ALTER TABLE `translator_img2txt`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `translator_transimg`
--
ALTER TABLE `translator_transimg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `translator_translang`
--
ALTER TABLE `translator_translang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
