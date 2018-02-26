-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2018 at 03:49 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_username` varchar(32) NOT NULL,
  `account_shop_name` varchar(255) NOT NULL,
  `account_email` varchar(50) NOT NULL,
  `account_phone` varchar(11) NOT NULL,
  `account_location` text,
  `account_img` text NOT NULL,
  `account_brith_date` date NOT NULL,
  `account_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `account_username`, `account_shop_name`, `account_email`, `account_phone`, `account_location`, `account_img`, `account_brith_date`, `account_password`) VALUES
(1, 'admin0', '', 'admin@admin.com', '0845551483', 'xxx xxx xxx xxx xxx', 'assets/images/test-img1.jpg', '0000-00-00', 'admin0admin0'),
(2, 'admin1', '', 'admin1@admin1.admin1', '0849821144', 'admin1admin1admin1', 'assets/images/test-img2.jpg', '0000-00-00', 'admin1admin1'),
(13, 'admin2', '', 'admin2@admin2.admin2', '0873209425', 'admin2admin2admin2', '', '0000-00-00', 'admin2admin2'),
(14, 'adminkew', '', 'adminkew@adminkew', '045634534', 'adminkew', 'assets/images/test-img1.jpg', '0000-00-00', '4bb8be64e57981166490935e37ca518c'),
(15, 'admin00', 'ass', 'admin00@admin00', '0885145658', 'admin00', 'assets/images/1517323568.jpg', '2018-01-24', 'e1f3fe7883ab53bdd05936a582f4ba60');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_name_en` varchar(50) NOT NULL,
  `category_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_name_en`, `category_img`) VALUES
(1, 'เครื่องแต่งกาย', 'outfit', 'assets/images/outfit.PNG'),
(2, 'เครื่องประดับ', 'accessories', 'assets/images/accessories.PNG'),
(3, 'กล้อง', 'camera', 'assets/images/camera.PNG'),
(4, 'เหรียญและธนบัตร', 'coins', 'assets/images/Coins.PNG'),
(5, 'เฟอนิเจอร์', 'furniture', 'assets/images/furniture.PNG'),
(6, 'ยานพาหนะ', 'vehicle', 'assets/images/vehicle.PNG'),
(7, 'พระเครื่อง', 'amulets', 'assets/images/amulets.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `location_detail`
--

CREATE TABLE `location_detail` (
  `location_detail_id` int(11) NOT NULL,
  `location_detail_name` varchar(25) NOT NULL,
  `location_detail_surname` varchar(25) NOT NULL,
  `location_detail_email` varchar(50) NOT NULL,
  `location_detail_company` varchar(50) NOT NULL,
  `location_detail_street_address` text NOT NULL,
  `location_detail_city` varchar(25) NOT NULL,
  `location_detail_province` varchar(25) NOT NULL,
  `location_detail_postal Code` varchar(10) NOT NULL,
  `location_detail_country` varchar(25) NOT NULL,
  `location_detail_phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location_detail`
--

INSERT INTO `location_detail` (`location_detail_id`, `location_detail_name`, `location_detail_surname`, `location_detail_email`, `location_detail_company`, `location_detail_street_address`, `location_detail_city`, `location_detail_province`, `location_detail_postal Code`, `location_detail_country`, `location_detail_phone`) VALUES
(1, '0', '0', '', '0', '0', '0', '0', '0', '0', '0'),
(2, 'alsdk', 'okasd', 'asdad', 'koasd', 'koasd', 'kodsa', 'doakd', 'asodk', 'dasdk', 'das'),
(3, 'asdasd', 'asdasd', 'adafad', 'asdasd', 'asdas', 'asdasd', 'asdasd', 'asda', 'asdasd', 'asdasd'),
(4, 'asdasd', 'asdasd', 'adafad', 'asdasd', 'asdas', 'asdasd', 'asdasd', 'asda', 'asdasd', 'asdasd'),
(5, 'asdasd', 'asdasd', 'adafad', 'asdasd', 'asdas', 'asdasd', 'asdasd', 'asda', 'asdasd', 'asdasd'),
(6, 'asdas', 'asd', 'asd@da.s', 'asd', 'asd', 'asd', 'asd', '263', 'asad', '12405432'),
(7, 'asd', 'Memory', 'asd@aasd.a', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(8, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(9, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(10, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(11, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(12, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(13, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(14, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(15, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(16, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(17, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(18, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(19, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(20, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(21, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(22, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(23, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(24, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(25, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(26, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(27, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(28, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(29, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(30, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(31, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(32, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(33, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(34, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(35, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(36, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(37, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(38, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(39, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(40, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(41, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(42, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(43, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(44, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(45, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(46, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(47, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(48, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(49, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(50, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(51, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(52, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(53, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(54, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(55, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(56, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(57, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(58, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(59, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(60, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(61, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(62, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(63, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(64, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(65, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(66, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(67, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(68, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(69, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(70, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(71, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(72, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(73, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(74, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(75, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(76, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(77, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(78, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(79, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(80, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(81, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(82, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(83, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(84, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(85, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(86, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(87, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(88, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(89, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(90, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(91, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(92, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(93, 'Zeta Memory', 'Memory', 'newtype2536@gmail.com', 'http://www.cabincrewoutlet.com', '11/1 หมู่ 1', 'สายไหม', 'Bangkok', '10220', 'Bangkok', '873209425'),
(94, 'asdasd', 'adasdasas', 'pomnoob_@hotmail.com', 'asdas', 'dadasd', 'asdas', 'asdas', 'asdas', 'asdas', 'asdasd'),
(95, 'asdasd', 'asdasd', 'pomnoob_@hotmail.com', 'das', 'dasd', 'asdasd', 'asdasd', 'asasdasdas', 'asdas', 'asdas');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` varchar(50) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_pic` varchar(50) NOT NULL,
  `news_detail` varchar(1000) NOT NULL,
  `news_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_title`, `news_pic`, `news_detail`, `news_time`, `account_id`) VALUES
(1, 'ตลาดของเก่า USA ?', 'แฟ้บบาร์บี้คอนเทนเนอร์สตาร์ สติกเกอร์เปปเปอร์มินต์ไอซียู', '', 'แฟ้บบาร์บี้คอนเทนเนอร์สตาร์ สติกเกอร์เปปเปอร์มินต์ไอซียู คอมเพล็กซ์หลวงพี่ พุทธศตวรรษแรงใจคอร์สเก๊ะแอพพริคอท ออทิสติกคีตกวีรองรับถ่ายทำ วอเตอร์มั้ย บึมสัมนา เห็นด้วยลีเมอร์อมาตยาธิปไตยสปอตอุรังคธาตุ เวิร์กช็อปราชบัณฑิตยสถาน แรงผลักเนิร์สเซอรี่เสกสรรค์ เพรียวบางบูติกชาร์ปแคทวอล์ค รากหญ้าแคทวอล์คอพาร์ทเมนต์ลีเมอร์ คอลเล็กชั่นบลอนด์ภารตะ วัคค์ ป๊อก ตุ๊กตุ๊กว่ะ', '2018-01-11 12:01:08', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `news_detail`
-- (See below for the actual view)
--
CREATE TABLE `news_detail` (
`news_id` int(11)
,`news_name` varchar(50)
,`news_title` varchar(255)
,`news_pic` varchar(50)
,`news_detail` varchar(1000)
,`news_time` timestamp
,`account_id` int(11)
,`account_username` varchar(32)
,`account_img` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_data`
-- (See below for the actual view)
--
CREATE TABLE `order_data` (
`order_detail_id` varchar(15)
,`product_id` int(11)
,`account_id` int(11)
,`order_detail_amount` int(11)
,`order_detail_status` int(11)
,`location_detail_id` int(11)
,`time` timestamp
,`product_name` varchar(50)
,`product_pic` varchar(50)
,`product_price` int(11)
,`product_price_mod` int(11)
,`product_acount_id` int(11)
,`type_drive_name` varchar(50)
,`account_username` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` varchar(15) NOT NULL,
  `product_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `order_detail_amount` int(11) NOT NULL,
  `order_detail_status` int(11) NOT NULL DEFAULT '2' COMMENT '0 = cancel, 1 = success, 2 = padding, 3 = transport ,4 = transport ok,8 = error with user, 9 = error',
  `order_detail_tacking` varchar(50) NOT NULL,
  `location_detail_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `product_id`, `account_id`, `order_detail_amount`, `order_detail_status`, `order_detail_tacking`, `location_detail_id`, `time`) VALUES
('20180120O001', 4, 14, 20, 1, '', 60, '2018-01-19 23:29:25'),
('20180120O002', 4, 14, 21, 4, 'xxxx', 61, '2018-01-19 21:05:03'),
('20180120O003', 117, 15, 3, 2, '', 62, '2018-01-20 00:12:22'),
('20180120O004', 117, 15, 3, 2, '', 63, '2018-01-20 00:12:23'),
('20180120O005', 117, 15, 3, 2, '', 64, '2018-01-20 00:12:23'),
('20180120O006', 117, 15, 3, 2, '', 65, '2018-01-20 00:12:23'),
('20180120O007', 117, 15, 3, 2, '', 66, '2018-01-20 00:13:30'),
('20180120O008', 117, 15, 3, 2, '', 67, '2018-01-20 00:13:39'),
('20180120O009', 117, 15, 3, 2, '', 68, '2018-01-20 00:13:48'),
('20180120O010', 117, 15, 3, 2, '', 81, '2018-01-20 00:16:33'),
('20180120O011', 117, 15, 4, 2, '', 82, '2018-01-20 00:33:15'),
('20180120O012', 117, 15, 5, 2, '', 83, '2018-01-20 00:34:09'),
('20180120O013', 117, 15, 5, 2, '', 84, '2018-01-20 00:37:03'),
('20180120O014', 117, 15, 5, 2, '', 85, '2018-01-20 00:37:28'),
('20180120O015', 117, 15, 5, 2, '', 86, '2018-01-20 00:37:28'),
('20180120O016', 117, 15, 5, 2, '', 87, '2018-01-20 00:37:29'),
('20180120O017', 117, 15, 5, 2, '', 88, '2018-01-20 00:37:29'),
('20180120O018', 117, 15, 5, 2, '', 89, '2018-01-20 00:37:29'),
('20180120O019', 117, 15, 5, 2, '', 90, '2018-01-20 00:37:30'),
('20180120O020', 117, 15, 5, 2, '', 91, '2018-01-20 00:38:00'),
('20180120O021', 117, 15, 5, 2, '', 93, '2018-01-20 00:40:00'),
('20180120O022', 4, 15, 1, 2, '', 93, '2018-01-20 00:40:00'),
('20180130O001', 4, 15, 2, 2, '', 94, '2018-01-29 18:28:47'),
('20180130O002', 4, 15, 2, 2, '', 95, '2018-01-29 18:38:19');

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_detail_data`
-- (See below for the actual view)
--
CREATE TABLE `order_detail_data` (
`order_detail_id` varchar(15)
,`product_id` int(11)
,`account_id` int(11)
,`order_detail_amount` int(11)
,`order_detail_status` int(11)
,`location_detail_id` int(11)
,`time` timestamp
,`product_name` varchar(50)
,`product_pic` varchar(50)
,`product_price` int(11)
,`product_price_mod` int(11)
,`product_acount_id` int(11)
,`type_drive_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_detail` varchar(255) NOT NULL,
  `product_amount` int(11) NOT NULL DEFAULT '1',
  `product_price` int(11) NOT NULL,
  `product_weight` float NOT NULL DEFAULT '0',
  `type_drive_id` int(11) NOT NULL DEFAULT '1',
  `product_price_mod` int(11) NOT NULL,
  `product_delay` tinyint(1) NOT NULL,
  `product_status` varchar(25) NOT NULL,
  `product_reference` int(11) NOT NULL,
  `product_rating` int(11) NOT NULL,
  `product_pic` varchar(50) NOT NULL,
  `catagory_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_detail`, `product_amount`, `product_price`, `product_weight`, `type_drive_id`, `product_price_mod`, `product_delay`, `product_status`, `product_reference`, `product_rating`, `product_pic`, `catagory_id`, `account_id`) VALUES
(4, 'asd', 'asdas', 0, 100, 0, 2, 0, 0, 'ของใหม่', 0, 1, 'assets/images/1510945139.png', 1, 14),
(114, 'ad', 'asd', 3, 100, 0, 1, 0, 0, 'ของใหม่', 0, 0, 'assets/images/1513275782.jpg', 1, 15),
(115, 'asd', 'asd', 32, 100, 0, 1, 0, 0, 'ของใหม่', 0, 0, 'assets/images/1513275949.jpg', 1, 15),
(116, 'ad', 'asd', 23, 100, 0, 1, 0, 0, 'ของใหม่', 0, 0, 'assets/images/1513277358.jpg', 1, 15),
(117, 'adadfafa', 'asfaf', 1, 100, 0, 1, 0, 0, 'ของใหม่', 0, 0, 'assets/images/1516407083.png', 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `slip`
--

CREATE TABLE `slip` (
  `slip_id` int(11) NOT NULL,
  `slip_accounting_name` varchar(50) NOT NULL,
  `slip_accounting_number` varchar(50) NOT NULL,
  `slip_pic` varchar(100) NOT NULL,
  `account_id` int(11) NOT NULL,
  `order_detail_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slip`
--

INSERT INTO `slip` (`slip_id`, `slip_accounting_name`, `slip_accounting_number`, `slip_pic`, `account_id`, `order_detail_id`) VALUES
(1, 'asdas', 'adad', 'assets/images/1516394485.png', 14, '20180120O001');

-- --------------------------------------------------------

--
-- Table structure for table `type_drive`
--

CREATE TABLE `type_drive` (
  `type_drive_id` int(11) NOT NULL,
  `type_drive_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_drive`
--

INSERT INTO `type_drive` (`type_drive_id`, `type_drive_name`) VALUES
(1, 'Kerry express'),
(2, 'ไปรษณีย์');

-- --------------------------------------------------------

--
-- Structure for view `news_detail`
--
DROP TABLE IF EXISTS `news_detail`;

CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `news_detail`  AS  select `news`.`news_id` AS `news_id`,`news`.`news_name` AS `news_name`,`news`.`news_title` AS `news_title`,`news`.`news_pic` AS `news_pic`,`news`.`news_detail` AS `news_detail`,`news`.`news_time` AS `news_time`,`news`.`account_id` AS `account_id`,`account`.`account_username` AS `account_username`,`account`.`account_img` AS `account_img` from (`news` left join `account` on((`news`.`account_id` = `account`.`account_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `order_data`
--
DROP TABLE IF EXISTS `order_data`;

CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `order_data`  AS  select `order_detail_data`.`order_detail_id` AS `order_detail_id`,`order_detail_data`.`product_id` AS `product_id`,`order_detail_data`.`account_id` AS `account_id`,`order_detail_data`.`order_detail_amount` AS `order_detail_amount`,`order_detail_data`.`order_detail_status` AS `order_detail_status`,`order_detail_data`.`location_detail_id` AS `location_detail_id`,`order_detail_data`.`time` AS `time`,`order_detail_data`.`product_name` AS `product_name`,`order_detail_data`.`product_pic` AS `product_pic`,`order_detail_data`.`product_price` AS `product_price`,`order_detail_data`.`product_price_mod` AS `product_price_mod`,`order_detail_data`.`product_acount_id` AS `product_acount_id`,`order_detail_data`.`type_drive_name` AS `type_drive_name`,`account`.`account_username` AS `account_username` from (`order_detail_data` left join `account` on((`order_detail_data`.`account_id` = `account`.`account_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `order_detail_data`
--
DROP TABLE IF EXISTS `order_detail_data`;

CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `order_detail_data`  AS  select `order_detail`.`order_detail_id` AS `order_detail_id`,`order_detail`.`product_id` AS `product_id`,`order_detail`.`account_id` AS `account_id`,`order_detail`.`order_detail_amount` AS `order_detail_amount`,`order_detail`.`order_detail_status` AS `order_detail_status`,`order_detail`.`location_detail_id` AS `location_detail_id`,`order_detail`.`time` AS `time`,`product`.`product_name` AS `product_name`,`product`.`product_pic` AS `product_pic`,`product`.`product_price` AS `product_price`,`product`.`product_price_mod` AS `product_price_mod`,`product`.`account_id` AS `product_acount_id`,`type_drive`.`type_drive_name` AS `type_drive_name` from (`order_detail` left join (`product` left join `type_drive` on((`product`.`type_drive_id` = `type_drive`.`type_drive_id`))) on((`order_detail`.`product_id` = `product`.`product_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `username` (`account_username`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `location_detail`
--
ALTER TABLE `location_detail`
  ADD PRIMARY KEY (`location_detail_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `FK_order_account` (`account_id`),
  ADD KEY `FK_order_product` (`product_id`),
  ADD KEY `FK_order_location` (`location_detail_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `catagory_id` (`catagory_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `FK_product_type` (`type_drive_id`);

--
-- Indexes for table `slip`
--
ALTER TABLE `slip`
  ADD PRIMARY KEY (`slip_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `order_detail` (`order_detail_id`);

--
-- Indexes for table `type_drive`
--
ALTER TABLE `type_drive`
  ADD PRIMARY KEY (`type_drive_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location_detail`
--
ALTER TABLE `location_detail`
  MODIFY `location_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `slip`
--
ALTER TABLE `slip`
  MODIFY `slip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type_drive`
--
ALTER TABLE `type_drive`
  MODIFY `type_drive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `FK_NEWS_ACCOUNT` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FK_order_account` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `FK_order_location` FOREIGN KEY (`location_detail_id`) REFERENCES `location_detail` (`location_detail_id`),
  ADD CONSTRAINT `FK_order_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_product_account` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `FK_product_catagory` FOREIGN KEY (`catagory_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `FK_product_type` FOREIGN KEY (`type_drive_id`) REFERENCES `type_drive` (`type_drive_id`);

--
-- Constraints for table `slip`
--
ALTER TABLE `slip`
  ADD CONSTRAINT `FK_S_A` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `FK_S_RD` FOREIGN KEY (`order_detail_id`) REFERENCES `order_detail` (`order_detail_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
