-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2024 at 06:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oneforall`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add catagory', 7, 'add_catagory'),
(26, 'Can change catagory', 7, 'change_catagory'),
(27, 'Can delete catagory', 7, 'delete_catagory'),
(28, 'Can view catagory', 7, 'view_catagory'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add contact', 9, 'add_contact'),
(34, 'Can change contact', 9, 'change_contact'),
(35, 'Can delete contact', 9, 'delete_contact'),
(36, 'Can view contact', 9, 'view_contact'),
(37, 'Can add ucontact', 10, 'add_ucontact'),
(38, 'Can change ucontact', 10, 'change_ucontact'),
(39, 'Can delete ucontact', 10, 'delete_ucontact'),
(40, 'Can view ucontact', 10, 'view_ucontact'),
(41, 'Can add cart', 11, 'add_cart'),
(42, 'Can change cart', 11, 'change_cart'),
(43, 'Can delete cart', 11, 'delete_cart'),
(44, 'Can view cart', 11, 'view_cart'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add o_item', 13, 'add_o_item'),
(50, 'Can change o_item', 13, 'change_o_item'),
(51, 'Can delete o_item', 13, 'delete_o_item'),
(52, 'Can view o_item', 13, 'view_o_item'),
(53, 'Can add wish', 14, 'add_wish'),
(54, 'Can change wish', 14, 'change_wish'),
(55, 'Can delete wish', 14, 'delete_wish'),
(56, 'Can view wish', 14, 'view_wish'),
(57, 'Can add payment', 15, 'add_payment'),
(58, 'Can change payment', 15, 'change_payment'),
(59, 'Can delete payment', 15, 'delete_payment'),
(60, 'Can view payment', 15, 'view_payment');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$BPVccY60lQTjJoQQ8wR0mU$PCIzgkDyywl7R7ojPOBg0oTXmEhVNTmcze0Qjl6JCVM=', '2024-09-19 04:44:41.124543', 0, 'raj', 'raj', 'RADADIYA', 'rajesh91@gmail.com', 0, 1, '2024-03-01 07:48:03.000000'),
(2, 'pbkdf2_sha256$720000$1XZ0oOvE2vjqkyU5OPJWMu$j4Wo3Q95hXLBsEn1VczqLsCNsFTvk7RzvVpquZVeiYQ=', '2024-09-19 04:45:12.762215', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-03-01 07:59:18.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-03-01 08:02:06.334138', '1', 'Dresses', 1, '[{\"added\": {}}]', 7, 2),
(2, '2024-03-01 08:02:24.396388', '2', 'Shirts', 1, '[{\"added\": {}}]', 7, 2),
(3, '2024-03-01 08:02:28.204120', '3', 'Jeans', 1, '[{\"added\": {}}]', 7, 2),
(4, '2024-03-01 08:02:43.421416', '4', 'Jackets', 1, '[{\"added\": {}}]', 7, 2),
(5, '2024-03-01 08:04:07.418491', '1', 'dress-1', 1, '[{\"added\": {}}]', 8, 2),
(6, '2024-03-01 08:04:59.638782', '2', 'Shirts-1', 1, '[{\"added\": {}}]', 8, 2),
(7, '2024-03-01 08:05:46.433631', '3', 'jeans-1', 1, '[{\"added\": {}}]', 8, 2),
(8, '2024-03-01 08:06:17.257369', '4', 'jacket-1', 1, '[{\"added\": {}}]', 8, 2),
(9, '2024-03-01 08:09:56.386578', '4', 'jacket-1', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(10, '2024-03-01 08:10:36.562319', '3', 'jeans-1', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(11, '2024-03-01 08:10:52.736544', '2', 'Shirts-1', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(12, '2024-03-01 08:12:36.097517', '5', 'jacket-2', 1, '[{\"added\": {}}]', 8, 2),
(13, '2024-03-01 08:15:46.748706', '5', 'jacket-2', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(14, '2024-03-01 08:16:25.922089', '6', 'jeans-2', 1, '[{\"added\": {}}]', 8, 2),
(15, '2024-03-01 08:16:47.765144', '7', 'dress-2', 1, '[{\"added\": {}}]', 8, 2),
(16, '2024-03-01 08:17:21.919774', '8', 'shirts-2', 1, '[{\"added\": {}}]', 8, 2),
(17, '2024-03-01 08:18:10.975789', '9', 'dress-3', 1, '[{\"added\": {}}]', 8, 2),
(18, '2024-03-01 08:31:09.014260', '5', 'jacket-2', 2, '[{\"changed\": {\"fields\": [\"C id\"]}}]', 8, 2),
(19, '2024-03-01 13:25:59.693224', '1', 'dress-1', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(20, '2024-03-01 13:26:10.696615', '2', 'Shirts-1', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(21, '2024-03-01 13:26:20.328610', '3', 'jeans-1', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(22, '2024-03-01 13:26:34.268760', '4', 'jacket-1', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(23, '2024-03-01 13:26:46.571939', '5', 'jacket-2', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(24, '2024-03-01 13:26:58.652686', '6', 'jeans-2', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(25, '2024-03-01 13:27:13.131447', '7', 'dress-2', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(26, '2024-03-01 13:27:24.357235', '8', 'shirts-2', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(27, '2024-03-01 13:27:38.560404', '9', 'dress-3', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 2),
(28, '2024-03-01 13:28:04.313520', '10', 'jacket-3', 1, '[{\"added\": {}}]', 8, 2),
(29, '2024-03-01 13:28:27.343039', '10', 'jacket-3', 3, '', 8, 2),
(30, '2024-03-12 04:39:26.954384', '1', 'Order object (1)', 3, '', 12, 2),
(31, '2024-03-12 04:39:36.280115', '4', 'Order object (4)', 3, '', 12, 2),
(32, '2024-03-12 04:39:43.797075', '3', 'Order object (3)', 3, '', 12, 2),
(33, '2024-03-12 04:39:50.505844', '2', 'Order object (2)', 3, '', 12, 2),
(34, '2024-03-15 04:35:54.952814', '11', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(35, '2024-03-15 04:35:54.956546', '10', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(36, '2024-03-15 04:35:54.958850', '9', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(37, '2024-03-15 04:35:54.959926', '8', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(38, '2024-03-15 04:35:54.965065', '7', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(39, '2024-03-15 04:35:54.968625', '6', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(40, '2024-03-15 04:35:54.974061', '5', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(41, '2024-03-15 04:35:54.977285', '4', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(42, '2024-03-15 04:35:54.983989', '3', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(43, '2024-03-15 04:35:54.989449', '2', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(44, '2024-03-15 04:36:35.743707', '12', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(45, '2024-03-15 04:36:59.540636', '1', 'RAJESHBHAI J RADADIYA', 3, '', 12, 2),
(46, '2024-03-15 05:08:14.141370', '13', 'RAJESHBHAI J RADADIYA', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 12, 2),
(47, '2024-03-15 05:09:13.327676', '13', 'RAJESHBHAI J RADADIYA', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 12, 2),
(53, '2024-09-19 04:45:25.533250', '4', 'jay', 3, '', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(11, 'shop', 'cart'),
(7, 'shop', 'catagory'),
(9, 'shop', 'contact'),
(12, 'shop', 'order'),
(13, 'shop', 'o_item'),
(15, 'shop', 'payment'),
(8, 'shop', 'product'),
(10, 'shop', 'ucontact'),
(14, 'shop', 'wish');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-01 07:42:18.110323'),
(2, 'auth', '0001_initial', '2024-03-01 07:42:18.887827'),
(3, 'admin', '0001_initial', '2024-03-01 07:42:19.037781'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-01 07:42:19.048039'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-01 07:42:19.064093'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-03-01 07:42:19.183915'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-03-01 07:42:19.257185'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-03-01 07:42:19.277235'),
(9, 'auth', '0004_alter_user_username_opts', '2024-03-01 07:42:19.287274'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-03-01 07:42:19.373400'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-03-01 07:42:19.377500'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-03-01 07:42:19.387153'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-03-01 07:42:19.406601'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-03-01 07:42:19.426445'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-03-01 07:42:19.450020'),
(16, 'auth', '0011_update_proxy_permissions', '2024-03-01 07:42:19.462178'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-03-01 07:42:19.479442'),
(18, 'sessions', '0001_initial', '2024-03-01 07:42:19.526445'),
(19, 'shop', '0001_initial', '2024-03-01 07:42:19.651733'),
(20, 'shop', '0002_contact', '2024-03-08 04:23:59.931174'),
(21, 'shop', '0003_rename_name_contact_name', '2024-03-08 04:27:34.083938'),
(22, 'shop', '0004_rename_email_contact_u_email_and_more', '2024-03-08 04:34:34.937030'),
(23, 'shop', '0002_ucontact', '2024-03-08 04:55:38.029968'),
(24, 'shop', '0003_cart', '2024-03-08 06:31:53.948060'),
(25, 'shop', '0004_order_o_item', '2024-03-11 16:02:52.893897'),
(26, 'shop', '0005_rename_sub_total_o_item_total_remove_order_p_type_and_more', '2024-03-12 03:38:29.707908'),
(27, 'shop', '0006_alter_order_amount', '2024-03-12 04:47:25.106098'),
(28, 'shop', '0007_wish', '2024-03-12 05:03:41.750800'),
(29, 'shop', '0004_order_o_item_wish', '2024-03-13 04:17:11.683543'),
(30, 'shop', '0005_payment', '2024-04-01 03:32:57.760566');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ytolp95u1ojw015vjetxwa5szpso8jf', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rr9Vz:evJi31c1gxPqyG5X7BqenBEwffXLfMobt6K7C4RZSmU', '2024-04-15 04:43:23.705975'),
('105b9x6wbev4wa2daf9h84wsgu047tm5', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rlQbv:3Mksx9PobbvcaSruJR2VKNwrjdnbhWopk550R0FZDks', '2024-03-30 09:45:51.832324'),
('3bz31tvadm19swpu6w3wrb9hazcyyxr5', '.eJxVjDsOwjAQRO_iGln-JTaU9JzB2vWucQDZUpxUiLuTSCmgGmnem3mLCOtS4tp5jhOJizDi9NshpCfXHdAD6r3J1OoyTyh3RR60y1sjfl0P9--gQC_bWqPVChhIDQasYdIOUsbggyVlDSA5j8qoMWuAcQvKwF67zEHROQ3i8wX2yTiV:1riSJQ:xAQVrUgpZ2nxgBfU8JzBvUMOp5gHNyWfHJmAdAoG3cU', '2024-03-22 04:58:28.314189'),
('7of7ufvewowihianf4kk9slvs4sc7p1s', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rl5hD:GcSsakyCs2wD8OLHOtoyx4fBHzkRkxE88eGC3bF3ERo', '2024-03-29 11:25:55.937000'),
('at39mxj0ilz1147awb0ax0i5ewlwi46d', '.eJxVjDsOwjAQRO_iGln-JTaU9JzB2vWucQDZUpxUiLuTSCmgGmnem3mLCOtS4tp5jhOJizDi9NshpCfXHdAD6r3J1OoyTyh3RR60y1sjfl0P9--gQC_bWqPVChhIDQasYdIOUsbggyVlDSA5j8qoMWuAcQvKwF67zEHROQ3i8wX2yTiV:1rrHWH:O27r6Vnik4BE3vh3a6W_LWYwkDc0VaqQh0_CzLg9SaE', '2024-04-15 13:16:13.510765'),
('baaxz98t8exa2mevr7lft6pzpwuofj9a', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rr8Hv:oc5l7fQR1YXHywBlGppCLCebDiU1AldB8uFMoKf-YEg', '2024-04-15 03:24:47.147934'),
('c4odxnttiezyvc25oeyx2fal7rpvug83', '.eJxVjDsOwjAQRO_iGln-JTaU9JzB2vWucQDZUpxUiLuTSCmgGmnem3mLCOtS4tp5jhOJizDi9NshpCfXHdAD6r3J1OoyTyh3RR60y1sjfl0P9--gQC_bWqPVChhIDQasYdIOUsbggyVlDSA5j8qoMWuAcQvKwF67zEHROQ3i8wX2yTiV:1rkzG2:lKptNMI5uYhhFL1Bjy2rdLKwnHRN5-fJ1BofYsq2quA', '2024-03-29 04:33:26.372222'),
('ci7amsxa75ikfm8bgdpxhk9wfu83lmu6', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rrHWZ:Zixbg2LZebiVruPi10gHJLpi5_470ZXzbHSvPn994Uk', '2024-04-15 13:16:31.256533'),
('cmt0y2osz2iwor14h4prn5zxu96w932p', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rkkk9:73Pj-_DWtT_EHYI59rfAzIZDvOGkx-5PN-w7ecYxJlQ', '2024-03-28 13:03:33.959246'),
('eawqbl5c2dxu2ho9351zwtil5lo3d970', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rmvxN:MFrHVSKtscpDAokmeLE_MwAOQMCUS64DyxzjNMeseIY', '2024-04-03 13:26:13.492653'),
('iihxosnfjs87g71yreiuukf6p94k2m76', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rln8I:-jCQ1tODjFb_Jki5PNGAfQ84f9UD2v1GX0jWRK3Ruv8', '2024-03-31 09:48:46.451824'),
('j28jpn7tvtzsvgyrfq019ysf4nv77kop', '.eJxVjMEOwiAQRP-FsyGAi4BH7_0GsgusVA1NSnsy_rtt0oPeJvPezFtEXJca117mOGZxFUacfjvC9CxtB_mB7T7JNLVlHknuijxol8OUy-t2uH8HFXvd1u7sGS_GegRSDpNVQMFQYNKEVlsLGgGZC5ctsfKQgYMLuhC4lJz4fAHp5Thh:1sr92W:VRSyztY3vkB3Qkz0guchOUHyS5XFhnONWouB9PI06h4', '2024-10-03 04:45:12.765473'),
('kktqmf6a8dhhcgv6lnqdtp16idawe7af', '.eJxVjDsOwjAQRO_iGln-JTaU9JzB2vWucQDZUpxUiLuTSCmgGmnem3mLCOtS4tp5jhOJizDi9NshpCfXHdAD6r3J1OoyTyh3RR60y1sjfl0P9--gQC_bWqPVChhIDQasYdIOUsbggyVlDSA5j8qoMWuAcQvKwF67zEHROQ3i8wX2yTiV:1ro17i:Xwbi504AUlRCbZh-IbPNU3G17rm_Q4fpSFMCrR0uT-k', '2024-04-06 13:09:22.635905'),
('ltis737lgqc799ilf4jkewy0syb48orn', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rrAmj:2z81D7H4at74lh4sG1rwjKLo0jN58kj6bVQGxDT0BHY', '2024-04-15 06:04:45.942437'),
('luftdgkqxqe5e080dvvvlpyj4txnzt28', '.eJxVjDsOwjAQRO_iGln-JTaU9JzB2vWucQDZUpxUiLuTSCmgGmnem3mLCOtS4tp5jhOJizDi9NshpCfXHdAD6r3J1OoyTyh3RR60y1sjfl0P9--gQC_bWqPVChhIDQasYdIOUsbggyVlDSA5j8qoMWuAcQvKwF67zEHROQ3i8wX2yTiV:1rlTtR:QxOboT5q8IwHaSBHuQdp8Taj_giilNDHigWFtm42kD4', '2024-03-30 13:16:09.638633'),
('oyhr1p1huftrj0to0ih2c1g77mabkeqh', '.eJxVjDsOwjAQRO_iGln-JTaU9JzB2vWucQDZUpxUiLuTSCmgGmnem3mLCOtS4tp5jhOJizDi9NshpCfXHdAD6r3J1OoyTyh3RR60y1sjfl0P9--gQC_bWqPVChhIDQasYdIOUsbggyVlDSA5j8qoMWuAcQvKwF67zEHROQ3i8wX2yTiV:1rr8IP:tYjk-I7q1JUNQuVLbu_Jv7oSMfNklwXmUJHcTB_tRUk', '2024-04-15 03:25:17.461680'),
('p8awse5x0h5eldvw1x7cpxrqttriaagk', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rlPm8:ovJ4Ob5MJNJ6zR3zD0xzHyyEnguooFEq-ujXxL5Y4wU', '2024-03-30 08:52:20.427313'),
('pqazhgr0we8zo2v4h02dya38hmnfyq7o', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rlPN9:_DuU2HNkV6SA69sNAR9Yy6UjQIWmJNUWiN0nzdEPuqI', '2024-03-30 08:26:31.613482'),
('r3y29pap07origjyedr7xq6b54vo9jy0', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rlU4h:Da6tBho6otTLAYPzdzrqsgsHTe9oDdmfu1ECealg4yQ', '2024-03-30 13:27:47.731986'),
('s8xf3w49nurctstz79mijsn3awtyxhbt', '.eJxVjMsOwiAQAP-FsyGlPLZ49N5vILuwSNVA0sfJ-O-GpAe9zkzmLQIeewnHxmtYkrgKLS6_jDA-uXaRHljvTcZW93Uh2RN52k3OLfHrdrZ_g4Jb6VtllTUIMBJ7MMBAbPLANGiVB0feR4iTS-jYaMjJa5tNGtkiq0gTic8X2LU4QQ:1rnec2:hDzfEGQEAF4vGaeDyTG9kKgdaOKivPU94ZUvg0xCSAw', '2024-04-05 13:07:10.351482'),
('tfkw25jxye2h3bcwyjrl3ondwhja0iga', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rllhZ:tVP940f15PPqIlC4JYzZ0Rj_Zm5V3PkChBHo6xqS1N8', '2024-03-31 08:17:05.167238'),
('ufpr3ztxwssk0hlz6u33zs5h137djrb5', '.eJxVjMsOwiAQRf-FtSFAebp07zcQZmCkaiAp7cr479qkC93ec859sZi2tcZtlCXOmZ2ZZKffDRI-SttBvqd26xx7W5cZ-K7wgw5-7bk8L4f7d1DTqN9aACkQxuaJpCMlrPbB41QcJAoay-SNdRC0Q2WUAfTBSRMSCmklkUX2_gDXizeF:1rlSpT:byIIv4-MHt3GDG25spE8jPeIl5dsqjDWCoX4rfrWe6Q', '2024-03-30 12:07:59.562298'),
('vfe6fnu405k9o3g0a537olh1i3c78he3', '.eJxVjDsOwjAQRO_iGln-JTaU9JzB2vWucQDZUpxUiLuTSCmgGmnem3mLCOtS4tp5jhOJizDi9NshpCfXHdAD6r3J1OoyTyh3RR60y1sjfl0P9--gQC_bWqPVChhIDQasYdIOUsbggyVlDSA5j8qoMWuAcQvKwF67zEHROQ3i8wX2yTiV:1rfyI3:U97xvhGpJ7KQBwaS4VZKUnNu9peQckpRRR3db_Q2UWA', '2024-03-15 08:30:47.970390');

-- --------------------------------------------------------

--
-- Table structure for table `shop_cart`
--

CREATE TABLE `shop_cart` (
  `cid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `p_id_id` int(11) NOT NULL,
  `u_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_catagory`
--

CREATE TABLE `shop_catagory` (
  `cid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_catagory`
--

INSERT INTO `shop_catagory` (`cid`, `cname`) VALUES
(1, 'Dresses'),
(2, 'Shirts'),
(3, 'Jeans'),
(4, 'Jackets');

-- --------------------------------------------------------

--
-- Table structure for table `shop_contact`
--

CREATE TABLE `shop_contact` (
  `u_index` int(11) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_subject` varchar(50) NOT NULL,
  `u_message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE `shop_order` (
  `oid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `p_type` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `odate` datetime(6) NOT NULL,
  `u_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_order`
--

INSERT INTO `shop_order` (`oid`, `name`, `email`, `phone`, `address`, `city`, `state`, `zip`, `amount`, `p_type`, `status`, `odate`, `u_id_id`) VALUES
(13, 'RAJESHBHAI J RADADIYA', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 309, 'Cash On Delivery', 'CANCEL', '2024-03-15 04:43:00.163525', 1),
(14, 'RAJESHBHAI J RADADIYA', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 309, 'Cash On Delivery', 'CANCEL', '2024-03-16 12:08:26.911618', 1),
(15, 'RAJESH', 'rajesh1@gmail.com', 87326847, 'Kolda', 'Kolda', 'Gujarat', 365455, 1206, 'Cash On Delivery', 'PENDING', '2024-03-16 13:28:17.275271', 1),
(16, 'RAJESHBHAI J RADADIYA', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 808, 'Cash On Delivery', 'PENDING', '2024-04-01 04:00:19.440714', 1),
(17, 'RAJESHBHAI J RADADIYA', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 509, 'Cash On Delivery', 'PENDING', '2024-04-01 04:13:07.052186', 1),
(18, 'RAJESHBHAI J RADADIYA', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 509, 'Cash On Delivery', 'PENDING', '2024-04-01 04:44:01.892372', 1),
(19, 'RAJESHBHAI J RADADIYA', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 309, 'Cash On Delivery', 'PENDING', '2024-04-01 04:44:28.215554', 1),
(20, 'RAJESHBHAI J RADADIYA', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 309, 'Cash On Delivery', 'PENDING', '2024-04-01 06:04:57.349188', 1),
(21, 'Jayraj', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 409, 'Cash On Delivery', 'PENDING', '2024-04-01 07:13:46.253725', 1),
(22, 'raj', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 409, 'Stripe', 'PENDING', '2024-04-01 07:39:23.634788', 1),
(23, 'jay', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 608, 'Stripe', 'PENDING', '2024-04-01 13:16:50.524819', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_o_item`
--

CREATE TABLE `shop_o_item` (
  `otid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `p_id_id` int(11) NOT NULL,
  `o_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_o_item`
--

INSERT INTO `shop_o_item` (`otid`, `quantity`, `sub_total`, `p_id_id`, `o_id_id`) VALUES
(12, 1, 299, 1, 13),
(13, 1, 299, 1, 14),
(14, 4, 1196, 1, 15),
(15, 2, 798, 2, 16),
(16, 1, 499, 3, 17),
(17, 1, 499, 3, 18),
(18, 1, 299, 1, 19),
(19, 1, 299, 1, 20),
(20, 1, 399, 2, 21),
(21, 1, 399, 2, 22),
(22, 2, 598, 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `shop_payment`
--

CREATE TABLE `shop_payment` (
  `id` bigint(20) NOT NULL,
  `stripe_charge_id` varchar(50) NOT NULL,
  `amount` double NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_payment`
--

INSERT INTO `shop_payment` (`id`, `stripe_charge_id`, `amount`, `timestamp`, `user_id`) VALUES
(1, 'ch_3P0ez0ILg4W4SdGF1XSGARJo', 309, '2024-04-01 07:08:49.813621', 1),
(2, 'ch_3P0f23ILg4W4SdGF0BnkkuzA', 309, '2024-04-01 07:11:58.660604', 1),
(3, 'ch_3P0fAGILg4W4SdGF0hUEqto5', 409, '2024-04-01 07:20:27.898333', 1),
(4, 'ch_3P0fSoILg4W4SdGF0NNl6eYb', 409, '2024-04-01 07:39:38.099841', 1),
(5, 'ch_3P0kjOILg4W4SdGF069F34X7', 608, '2024-04-01 13:17:06.087267', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE `shop_product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pprice` int(11) NOT NULL,
  `pdesc` longtext NOT NULL,
  `pimg` varchar(100) NOT NULL,
  `c_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`pid`, `pname`, `pprice`, `pdesc`, `pimg`, `c_id_id`) VALUES
(1, 'dress-1', 299, 'special addition', 'pro_images/dress-1.jpeg', 1),
(2, 'Shirts-1', 399, 'limited addition', 'pro_images/shirt-1.jpeg', 2),
(3, 'jeans-1', 499, 'normal jeans', 'pro_images/jeans-1.jpeg', 3),
(4, 'jacket-1', 500, 'leather jackets', 'pro_images/jacket-1.jpeg', 4),
(5, 'jacket-2', 199, 'jeans', 'pro_images/jacket-2.jpeg', 4),
(6, 'jeans-2', 199, 'jeans', 'pro_images/jeans-2.jpeg', 3),
(7, 'dress-2', 899, 'dress', 'pro_images/dress-2.jpeg', 1),
(8, 'shirts-2', 199, 'shirts', 'pro_images/shirt-2.jpeg', 2),
(9, 'dress-3', 999, 'dress', 'pro_images/dress-3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_ucontact`
--

CREATE TABLE `shop_ucontact` (
  `uindex` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `usubject` varchar(50) NOT NULL,
  `umessage` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_ucontact`
--

INSERT INTO `shop_ucontact` (`uindex`, `uname`, `uemail`, `usubject`, `umessage`) VALUES
(1, 'RAJESHBHAI J RADADIYA', 'rajesh91@gmail.com', 'check', 'hi'),
(2, 'Raju', 'rajesh91@gmail.com', 'checking', 'hello'),
(3, 'raju', 'rajesh91@gmail.com', 'checking', 'hi'),
(4, 'raju', 'tsajdgj@gmail.com', 'checking', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `shop_wish`
--

CREATE TABLE `shop_wish` (
  `cid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `p_id_id` int(11) NOT NULL,
  `u_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `shop_cart`
--
ALTER TABLE `shop_cart`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `shop_cart_p_id_id_446b22d9_fk_shop_product_pid` (`p_id_id`),
  ADD KEY `shop_cart_u_id_id_62665062_fk_auth_user_id` (`u_id_id`);

--
-- Indexes for table `shop_catagory`
--
ALTER TABLE `shop_catagory`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `shop_contact`
--
ALTER TABLE `shop_contact`
  ADD PRIMARY KEY (`u_index`);

--
-- Indexes for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `shop_order_u_id_id_2095f4a5_fk_auth_user_id` (`u_id_id`);

--
-- Indexes for table `shop_o_item`
--
ALTER TABLE `shop_o_item`
  ADD PRIMARY KEY (`otid`),
  ADD KEY `shop_o_item_p_id_id_4d8a0e3f_fk_shop_product_pid` (`p_id_id`),
  ADD KEY `shop_o_item_o_id_id_1cf29ae7_fk_shop_order_oid` (`o_id_id`);

--
-- Indexes for table `shop_payment`
--
ALTER TABLE `shop_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_payment_user_id_c27b5f91_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `shop_product_c_id_id_4f40b343_fk_shop_catagory_cid` (`c_id_id`);

--
-- Indexes for table `shop_ucontact`
--
ALTER TABLE `shop_ucontact`
  ADD PRIMARY KEY (`uindex`);

--
-- Indexes for table `shop_wish`
--
ALTER TABLE `shop_wish`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `shop_wish_p_id_id_a0edf26d_fk_shop_product_pid` (`p_id_id`),
  ADD KEY `shop_wish_u_id_id_c86a2073_fk_auth_user_id` (`u_id_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `shop_cart`
--
ALTER TABLE `shop_cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `shop_catagory`
--
ALTER TABLE `shop_catagory`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shop_contact`
--
ALTER TABLE `shop_contact`
  MODIFY `u_index` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `shop_o_item`
--
ALTER TABLE `shop_o_item`
  MODIFY `otid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `shop_payment`
--
ALTER TABLE `shop_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shop_ucontact`
--
ALTER TABLE `shop_ucontact`
  MODIFY `uindex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shop_wish`
--
ALTER TABLE `shop_wish`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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

--
-- Constraints for table `shop_cart`
--
ALTER TABLE `shop_cart`
  ADD CONSTRAINT `shop_cart_p_id_id_446b22d9_fk_shop_product_pid` FOREIGN KEY (`p_id_id`) REFERENCES `shop_product` (`pid`),
  ADD CONSTRAINT `shop_cart_u_id_id_62665062_fk_auth_user_id` FOREIGN KEY (`u_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD CONSTRAINT `shop_order_u_id_id_2095f4a5_fk_auth_user_id` FOREIGN KEY (`u_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_o_item`
--
ALTER TABLE `shop_o_item`
  ADD CONSTRAINT `shop_o_item_o_id_id_1cf29ae7_fk_shop_order_oid` FOREIGN KEY (`o_id_id`) REFERENCES `shop_order` (`oid`),
  ADD CONSTRAINT `shop_o_item_p_id_id_4d8a0e3f_fk_shop_product_pid` FOREIGN KEY (`p_id_id`) REFERENCES `shop_product` (`pid`);

--
-- Constraints for table `shop_payment`
--
ALTER TABLE `shop_payment`
  ADD CONSTRAINT `shop_payment_user_id_c27b5f91_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD CONSTRAINT `shop_product_c_id_id_4f40b343_fk_shop_catagory_cid` FOREIGN KEY (`c_id_id`) REFERENCES `shop_catagory` (`cid`);

--
-- Constraints for table `shop_wish`
--
ALTER TABLE `shop_wish`
  ADD CONSTRAINT `shop_wish_p_id_id_a0edf26d_fk_shop_product_pid` FOREIGN KEY (`p_id_id`) REFERENCES `shop_product` (`pid`),
  ADD CONSTRAINT `shop_wish_u_id_id_c86a2073_fk_auth_user_id` FOREIGN KEY (`u_id_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
