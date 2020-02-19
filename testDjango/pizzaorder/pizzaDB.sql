-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2020 at 03:42 PM
-- Server version: 10.1.43-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzaDB`
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
  `id` int(11) NOT NULL,
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
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add productsize', 8, 'add_productsize'),
(30, 'Can change productsize', 8, 'change_productsize'),
(31, 'Can delete productsize', 8, 'delete_productsize'),
(32, 'Can view productsize', 8, 'view_productsize'),
(33, 'Can add order', 9, 'add_order'),
(34, 'Can change order', 9, 'change_order'),
(35, 'Can delete order', 9, 'delete_order'),
(36, 'Can view order', 9, 'view_order');

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
  `first_name` varchar(30) NOT NULL,
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
(1, 'pbkdf2_sha256$180000$RqZnJos0LRKr$5FNuZyI3dLRMMXrA3UFtXdtfeKgAU5zF96uVuOJzObM=', '2020-01-11 10:10:35.179724', 1, 'admin', '', '', 'anandhuvijayan400@gmail.com', 1, 1, '2020-01-10 04:21:03.781728');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-01-10 05:24:36.103755', '1', 'Small', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-01-10 05:25:11.190383', '2', 'Medium', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-01-10 05:25:23.714366', '3', 'Large', 1, '[{\"added\": {}}]', 8, 1),
(4, '2020-01-10 05:30:00.772224', '1', 'Salami', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-01-10 05:30:09.287198', '1', 'Salami', 2, '[]', 7, 1),
(6, '2020-01-10 05:30:56.382569', '2', 'Diavolo', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-01-10 05:31:45.130817', '3', 'Margherita', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-01-10 05:35:46.596920', '4', 'Salami', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-01-10 05:36:27.853298', '5', 'Salami', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-01-10 05:37:16.746912', '6', 'Diavolo', 1, '[{\"added\": {}}]', 7, 1),
(11, '2020-01-10 05:37:52.402623', '7', 'Diavolo', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-01-10 05:39:15.685439', '8', 'Margherita', 1, '[{\"added\": {}}]', 7, 1),
(13, '2020-01-10 10:39:57.699008', '8', 'Margherita', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 7, 1),
(14, '2020-01-10 10:40:59.686929', '7', 'Diavolo', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 7, 1),
(15, '2020-01-10 10:41:16.161526', '6', 'Diavolo', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 7, 1),
(16, '2020-01-10 10:41:26.078746', '5', 'Salami', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 7, 1),
(17, '2020-01-10 10:41:35.476392', '4', 'Salami', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 7, 1),
(18, '2020-01-10 10:41:46.004138', '3', 'Margherita', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 7, 1),
(19, '2020-01-10 10:41:56.830280', '2', 'Diavolo', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 7, 1),
(20, '2020-01-10 10:42:22.615908', '1', 'Salami', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 7, 1),
(21, '2020-01-10 10:49:35.638056', '8', 'Margherita', 2, '[{\"changed\": {\"fields\": [\"Product qty\"]}}]', 7, 1),
(22, '2020-01-11 07:04:04.027374', '7', 'Diavolo', 3, '', 7, 1),
(23, '2020-01-11 07:04:10.284329', '4', 'Salami', 3, '', 7, 1),
(24, '2020-01-11 07:04:16.212259', '3', 'Margherita', 3, '', 7, 1),
(25, '2020-01-11 07:04:21.435710', '2', 'Diavolo', 3, '', 7, 1),
(26, '2020-01-11 07:04:26.274833', '1', 'Salami', 3, '', 7, 1),
(27, '2020-01-11 07:52:21.786477', '9', 'Margherita', 1, '[{\"added\": {}}]', 7, 1),
(28, '2020-01-11 07:53:02.432658', '10', 'Diavolo', 1, '[{\"added\": {}}]', 7, 1),
(29, '2020-01-11 07:53:32.237843', '11', 'Diavolo', 1, '[{\"added\": {}}]', 7, 1),
(30, '2020-01-11 07:54:05.358707', '12', 'Salami', 1, '[{\"added\": {}}]', 7, 1),
(31, '2020-01-11 07:54:39.932333', '13', 'Salami', 1, '[{\"added\": {}}]', 7, 1);

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
(9, 'pizzapp', 'order'),
(7, 'pizzapp', 'product'),
(8, 'pizzapp', 'productsize'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-10 04:17:34.636999'),
(2, 'auth', '0001_initial', '2020-01-10 04:17:37.522887'),
(3, 'admin', '0001_initial', '2020-01-10 04:17:46.251014'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-10 04:17:48.255084'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-10 04:17:48.332084'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-10 04:17:49.718579'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-10 04:17:50.829794'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-10 04:17:51.849660'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-10 04:17:51.921678'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-10 04:17:52.602525'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-10 04:17:52.662839'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-10 04:17:52.748000'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-10 04:17:53.846806'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-10 04:17:54.881253'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-10 04:17:55.951570'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-10 04:17:56.092845'),
(17, 'sessions', '0001_initial', '2020-01-10 04:17:56.520751'),
(18, 'pizzapp', '0001_initial', '2020-01-10 05:13:00.722960'),
(19, 'pizzapp', '0002_delete_product', '2020-01-10 05:18:48.373728'),
(20, 'pizzapp', '0003_auto_20200110_0521', '2020-01-10 05:21:56.134336'),
(21, 'pizzapp', '0004_product', '2020-01-10 05:26:47.063865'),
(22, 'pizzapp', '0005_order', '2020-01-10 10:00:45.296019'),
(23, 'pizzapp', '0006_auto_20200110_1038', '2020-01-10 10:38:58.546764'),
(24, 'pizzapp', '0007_auto_20200110_1222', '2020-01-10 12:22:17.170087'),
(25, 'pizzapp', '0008_auto_20200111_0617', '2020-01-11 06:18:05.158726'),
(26, 'pizzapp', '0009_auto_20200111_0718', '2020-01-11 07:18:20.556712'),
(27, 'pizzapp', '0010_auto_20200111_0724', '2020-01-11 07:24:30.201105'),
(28, 'pizzapp', '0011_auto_20200111_0749', '2020-01-11 07:49:08.013264');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1j7dksfag6f1migxb38iqty1gnu56gpp', 'Y2E1ZWE4YzM5NTU1MWVmZTk2MThiNmQ1Zjc2YTU1MzkyMmM2NDAwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YmI1MDZkNjc3MzBhNmYxYzk4NTc2YmI2MzRjNTY0MjljMTBkNzMxIn0=', '2020-01-24 04:22:42.511848'),
('imfwzftt6tsu6rr71fd7l3j33rby2jmc', 'Y2E1ZWE4YzM5NTU1MWVmZTk2MThiNmQ1Zjc2YTU1MzkyMmM2NDAwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YmI1MDZkNjc3MzBhNmYxYzk4NTc2YmI2MzRjNTY0MjljMTBkNzMxIn0=', '2020-01-25 10:10:35.263555');

-- --------------------------------------------------------

--
-- Table structure for table `pizzapp_order`
--

CREATE TABLE `pizzapp_order` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` bigint(20) NOT NULL,
  `product_size` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizzapp_order`
--

INSERT INTO `pizzapp_order` (`id`, `customer_name`, `customer_email`, `customer_phone`, `product_size`, `product_name`) VALUES
(1, 'fece', 'ecre@gmail.com', 1234567890, 'Medium', 'Diavolo'),
(2, 'qwerfgfds', 'scfyucdxj@gmail.com', 9605998234, 'Large', 'Salami'),
(3, 'adckahsb', 'qhhbdqkj@gmail.com', 8765432188, 'Small', 'Diavolo'),
(4, 'arathii', 'anaan@gmail.com', 9988776655, 'Small', 'Diavolo'),
(5, 'arathii', 'anaan@gmail.com', 9988776655, 'Small', 'Diavolo'),
(6, 'wefwfs', 'gafae@gmail.com', 1122334455, 'Large', 'Margherita'),
(7, 'wefwfs', 'gafae@gmail.com', 1122334455, 'Large', 'Margherita');

-- --------------------------------------------------------

--
-- Table structure for table `pizzapp_product`
--

CREATE TABLE `pizzapp_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_desc` longtext NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_date` datetime(6) NOT NULL,
  `product_status` int(11) NOT NULL,
  `product_sizeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizzapp_product`
--

INSERT INTO `pizzapp_product` (`id`, `product_name`, `product_desc`, `product_image`, `product_qty`, `product_price`, `product_date`, `product_status`, `product_sizeid_id`) VALUES
(5, 'Salami', 'sad saca', 'productimages/Salami.jpeg', 10, 25, '2020-01-10 05:36:24.000000', 1, 3),
(6, 'Diavolo', 'wefe erw', 'productimages/diavolo_uiXyw6s.jpg', 10, 23, '2020-01-10 05:37:11.000000', 1, 2),
(8, 'Margherita', 'wevf g3 rfe3w', 'productimages/5Pizza.jpg', 8, 18, '2020-01-10 05:39:10.000000', 1, 3),
(9, 'Margherita', 'fwafwhweh', 'productimages/5Pizza_1gmwl5a.jpg', 6, 16, '2020-01-11 07:52:16.000000', 1, 2),
(10, 'Diavolo', 'wegehtrwe', 'productimages/diavolo_hyMTaco.jpg', 8, 10, '2020-01-11 07:53:00.000000', 1, 1),
(11, 'Diavolo', 'afwahgreh', 'productimages/diavolo_LZsWboR.jpg', 9, 20, '2020-01-11 07:53:29.000000', 1, 3),
(12, 'Salami', 'efwehgehj4r', 'productimages/Salami_F17Y80I.jpeg', 12, 10, '2020-01-11 07:54:03.000000', 1, 1),
(13, 'Salami', 'sAFEQFDW', 'productimages/Salami_8DNM58W.jpeg', 5, 14, '2020-01-11 07:54:37.000000', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pizzapp_productsize`
--

CREATE TABLE `pizzapp_productsize` (
  `id` int(11) NOT NULL,
  `psize_size` varchar(100) NOT NULL,
  `psize_date` datetime(6) NOT NULL,
  `psize_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizzapp_productsize`
--

INSERT INTO `pizzapp_productsize` (`id`, `psize_size`, `psize_date`, `psize_status`) VALUES
(1, 'Small', '2020-01-10 05:24:09.000000', 1),
(2, 'Medium', '2020-01-10 05:25:00.000000', 1),
(3, 'Large', '2020-01-10 05:25:19.000000', 1);

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
-- Indexes for table `pizzapp_order`
--
ALTER TABLE `pizzapp_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pizzapp_product`
--
ALTER TABLE `pizzapp_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pizzapp_product_product_sizeid_id_a923d4d4_fk_pizzapp_p` (`product_sizeid_id`);

--
-- Indexes for table `pizzapp_productsize`
--
ALTER TABLE `pizzapp_productsize`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `pizzapp_order`
--
ALTER TABLE `pizzapp_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pizzapp_product`
--
ALTER TABLE `pizzapp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pizzapp_productsize`
--
ALTER TABLE `pizzapp_productsize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
-- Constraints for table `pizzapp_product`
--
ALTER TABLE `pizzapp_product`
  ADD CONSTRAINT `pizzapp_product_product_sizeid_id_a923d4d4_fk_pizzapp_p` FOREIGN KEY (`product_sizeid_id`) REFERENCES `pizzapp_productsize` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
