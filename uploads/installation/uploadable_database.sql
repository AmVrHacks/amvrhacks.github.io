-- phpMyAdmin SQL Dump
-- version 4.4.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 17, 2016 at 11:53 AM
-- Server version: 5.6.25
-- PHP Version: 5.4.43

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classified_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext,
  `phone` longtext,
  `address` longtext,
  `email` longtext,
  `password` longtext,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'Mr. Master Admin', '01673582219', '122', 'admin@classified.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '1437476969'),
(2, 'Mr. Accountant', '017', 'dhk', 'accountant@activeclassified.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '4', '1430737266'),
(3, 'Mr manager', '021525566', 'Niketon Dhaka', 'manager@activeclassified.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '5', '1433682938');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int(11) NOT NULL,
  `page` longtext,
  `place` longtext,
  `num` longtext,
  `status` longtext,
  `link` longtext
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `page`, `place`, `num`, `status`, `link`) VALUES
(1, 'home', 'after_slider', '1', 'ok', ''),
(2, 'home', 'after_slider', '2', 'ok', ''),
(3, 'home', 'after_slider', '3', 'ok', ''),
(4, 'home', 'after_slider', '4', '0', ''),
(5, 'home', 'after_featured', '1', '0', ''),
(6, 'home', 'after_featured', '2', '0', ''),
(7, 'home', 'after_featured', '3', '0', ''),
(8, 'home', 'after_featured', '4', '0', ''),
(9, 'home', 'after_search', '1', '0', ''),
(10, 'home', 'after_search', '2', '0', ''),
(11, 'home', 'after_search', '3', '0', ''),
(12, 'home', 'after_search', '4', '0', ''),
(13, 'home', 'after_category', '1', '0', ''),
(14, 'home', 'after_category', '2', '0', ''),
(15, 'home', 'after_category', '3', '0', ''),
(16, 'home', 'after_category', '4', '0', ''),
(17, 'home', 'after_latest', '1', '0', ''),
(18, 'home', 'after_popular', '1', '0', ''),
(19, 'home', 'after_most_viewed', '1', '0', ''),
(20, 'category', 'after_filters', '1', 'ok', ''),
(21, 'featured', 'after_most_sold', '1', 'ok', ''),
(22, 'featured', 'after_most_viewed', '1', 'ok', ''),
(23, 'home', 'after_slider', '1', 'ok', '12');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `summery` varchar(1000) NOT NULL,
  `author` varchar(500) NOT NULL,
  `date` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `blog_category` varchar(25) NOT NULL,
  `number_of_view` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(1, 'Quibusdam deleniti dicta molestiae quia mollitia ', 'Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas e', 'Consequatur', '2015-09-23', '<p [removed]=line-height: 17.1429px;"></p><p [removed]="line-height: 17.1429px;" 17.1429px;"="">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</p><div [removed]="line-height: 17.1429px;">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</div><div [removed]="line-height: 17.1429px;">  </div>', 'ok', '1', 0),
(2, 'Pariatur At a ut ut cupidatat velit explicabo', 'Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas e\n', 'Cupiditate ', '2002-06-18', 'Ipsum et ad vel est, quas rem minima ex in cillum sit reprehenderit in odit eum rerum sit, illum, nobis saepe est voluptates quis placeat, repellendus. Autem ut est Nam iure quam fugiat, cumque incididunt magnam dolor quae architecto dolor facilis duis qui esse, laboriosam, nihil qui obcaecati voluptatibus duis eos omnis occaecat temporibus eu dolor voluptatem.<span [removed]="line-height: 17.1429px;"><p [removed]="line-height: 17.1429px;" 17.1429px;"="">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</p><div [removed]="line-height: 17.1429px;">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</div><div [removed]="line-height: 17.1429px;">  </div></span>', 'ok', '1', 0),
(3, 'Ab quis quod voluptas proident amet aute odit consequatur voluptas at architecto fugiat', 'Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas e\n', 'Hic ', '1974-10-05', '<p [removed]=line-height: 17.1429px;"></p><p [removed]="line-height: 17.1429px;" 17.1429px;"="">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</p><div [removed]="line-height: 17.1429px;">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</div><div [removed]="line-height: 17.1429px;">  </div>', 'ok', '1', 0),
(4, 'Ad aut tenetur aut enim quod doloribus quia ', 'Voluptatem id accusantium exercitation et cumque repellendus. Accusamus rerum aute nisi amet, duis aliquip in tempora sed qui expedita molestiae unde fugit, aut pariatur? Eiusmod.', 'Quia veniam', '1983-08-20', '<p>Accusamus sit, consectetur, impedit, quae distinctio. Vel voluptas amet, blanditiis ut consectetur, consequatur, nesciunt, sint aliquam odio occaecat non ex laudantium, et dolorem ex laborum architecto odit magni qui maiores architecto qui et et eu accusantium labore elit, corrupti, nobis amet, elit, qui sed exercitationem deserunt vel voluptatem, est fugiat, sed tempore, enim tempore, nihil ea eligendi eligendi qui culpa, repudiandae odio consectetur, voluptas consequuntur animi, non.', 'ok', '2', 1),
(5, 'Ea aut pariatur Non et qui quia at in soluta sit qui voluptas fuga', 'Obcaecati mollit non atque nisi esse', 'Repudiandae \n', '1996-05-22', 'Duis cillum aut sed aute', 'ok', '6', 382),
(6, 'Sed pariatur Assumenda dolor cum dolore est harum dignissimos rerum', 'Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas e\n', 'Voluptatem ', '1998-11-23', 'Et illum ea molestias omnis sunt mollit laborum aut ea', 'ok', '1', 844),
(7, 'Velit ', 'Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas e\r\n', 'Quibusdam ', '2015-11-11', 'Placeat eiusmod libero vero dolorem', 'ok', '1', NULL),
(8, 'dummy text', '<p><span [removed]="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</span><br></p>', 'mmm', '1989-01-03', '<p><br></p><p> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p><p><span [removed]="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem Ipsum</span><span [removed]="" rgb(0,="" 0,="" 0);="" font-family:="" arial,="" helvetica,="" sans;="" font-size:="" 11px;="" line-height:="" 14px;="" text-align:="" justify;"=""> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'ok', '6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_category_id`, `name`) VALUES
(1, 'Delevary'),
(2, 'Product Quality'),
(3, 'Vendorship'),
(4, 'Problem Related'),
(5, 'others'),
(6, 'Science & Technology'),
(7, 'Science Fiction ');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `brand_id` int(11) NOT NULL,
  `name` longtext,
  `description` longtext,
  `category` varchar(10) DEFAULT NULL,
  `added_by` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE IF NOT EXISTS `business_settings` (
  `business_settings_id` int(11) NOT NULL,
  `type` longtext,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(1, 'paypal_email', 'ok', 'kadir_bm@yahoo.com'),
(2, 'shipping_cost', 'ok', '0'),
(3, 'shipping_cost_type', '', 'product_wise'),
(4, 'currency', '', '$'),
(6, 'shipment_info', '', '<p></p><p></p><div class="col-md-6" style="text-align: center; color: red; font-size: 20px;"><i style="background-color: rgb(239, 239, 239);">This is a very good situation that is making it more and more complex everyday</i></div><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><p></p><p><span style="line-height: 17.142858505249px;"><br></span></p><div class="col-md-6" style="color:red;font-size:20px;"><i>Snippet Set</i></div><span style="line-height: 17.142858505249px;"><br></span><br><p></p><p></p>'),
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '1'),
(9, 'paypal_set', '', 'ok'),
(10, 'paypal_type', '', 'sandbox'),
(11, 'faqs', '', '[{"question":"sdf","answer":"sdf"}]'),
(12, 'cash_set', '', 'ok'),
(13, 'stripe_set', '', 'ok'),
(14, 'stripe_secret', '', 'sk_test_NYIpPjs6gbmuogdwUuJ8She4'),
(15, 'stripe_publishable', '', 'pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx'),
(16, 'currency_format', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(1, 'Electronics'),
(2, 'Automobile'),
(3, 'Property'),
(4, 'Software'),
(5, 'Household'),
(6, 'Sports & Outdoors'),
(7, 'Books'),
(8, 'Leisure '),
(9, 'Jewellery  & Beauty'),
(10, 'Others'),
(12, 'Men'),
(13, 'Women'),
(14, 'Kids'),
(15, 'Travel ');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('222596fb3267ba92da4868d709df2796ec5716a5', '192.168.1.111', 1468748252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383734343033353b6c6173745f61637469766974797c693a313436383734383235313b7375726665725f696e666f7c733a3238393a227b226173223a224153323339353620416d6265724954204c696d69746564222c2263697479223a224468616b61222c22636f756e747279223a2242616e676c6164657368222c22636f756e747279436f6465223a224244222c22697370223a22416d6265724954204c696d69746564222c226c6174223a32332e373931362c226c6f6e223a39302e343135322c226f7267223a22416d6265724954204c696d69746564222c227175657279223a223131382e3137392e3136352e3431222c22726567696f6e223a2243222c22726567696f6e4e616d65223a224468616b61204469766973696f6e222c22737461747573223a2273756363657373222c2274696d657a6f6e65223a22417369612f4468616b61222c227a6970223a2231323132227d223b),
('257e723e9ed7c6670305f80558057ed94dc0a5ec', '192.168.1.107', 1468744850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383733373431363b6c6173745f61637469766974797c693a313436383734333030373b7375726665725f696e666f7c733a3238393a227b226173223a224153323339353620416d6265724954204c696d69746564222c2263697479223a224468616b61222c22636f756e747279223a2242616e676c6164657368222c22636f756e747279436f6465223a224244222c22697370223a22416d6265724954204c696d69746564222c226c6174223a32332e373931362c226c6f6e223a39302e343135322c226f7267223a22416d6265724954204c696d69746564222c227175657279223a223131382e3137392e3136352e3431222c22726567696f6e223a2243222c22726567696f6e4e616d65223a224468616b61204469766973696f6e222c22737461747573223a2273756363657373222c2274696d657a6f6e65223a22417369612f4468616b61222c227a6970223a2231323132227d223b66625f5f73746174657c733a33323a226433623635366337653532373266343238386530336537323863343866636161223b757365725f6c6f67696e7c733a333a22796573223b757365725f69647c733a313a2231223b757365725f6e616d657c733a393a226c656d617369786578223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a31363a224d722e204d61737465722041646d696e223b7469746c657c733a353a2261646d696e223b),
('47d25cb3ac6a9f5d9e10b47daca80c2651e6eae6', '::1', 1468756356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383734393836343b6c6173745f61637469766974797c693a313436383735363335363b7375726665725f696e666f7c733a3238393a227b226173223a224153323339353620416d6265724954204c696d69746564222c2263697479223a224468616b61222c22636f756e747279223a2242616e676c6164657368222c22636f756e747279436f6465223a224244222c22697370223a22416d6265724954204c696d69746564222c226c6174223a32332e373931362c226c6f6e223a39302e343135322c226f7267223a22416d6265724954204c696d69746564222c227175657279223a223131382e3137392e3136352e3431222c22726567696f6e223a2243222c22726567696f6e4e616d65223a224468616b61204469766973696f6e222c22737461747573223a2273756363657373222c2274696d657a6f6e65223a22417369612f4468616b61222c227a6970223a2231323132227d223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a31363a224d722e204d61737465722041646d696e223b7469746c657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE IF NOT EXISTS `contact_message` (
  `contact_message_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` longtext,
  `timestamp` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `reply` longtext,
  `other` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_tracing`
--

CREATE TABLE IF NOT EXISTS `email_tracing` (
  `email_tracing_id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `massage` longtext,
  `product` varchar(50) DEFAULT NULL,
  `sender_info` longtext,
  `product_owner` longtext,
  `date` longtext NOT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_tracing`
--

INSERT INTO `email_tracing` (`email_tracing_id`, `email`, `massage`, `product`, `sender_info`, `product_owner`, `date`, `phone`) VALUES
(1, 'abc@abc.com', 'fygyyghghy', '38', '{"as":"AS23956 AmberIT Limited","city":"Dhaka","country":"Bangladesh","countryCode":"BD","isp":"dhakaCom Limited","lat":23.7231,"lon":90.4086,"org":"AmberIT Limited","query":"118.179.165.41","region":"C","regionName":"Dhaka Division","status":"success","timezone":"Asia/Dhaka","zip":"1000"}', '1', ' 06/04/2016  ', '2456678899'),
(2, 'amuhiminulhasan@gmail.com', 'dsrfwsf', '1', '{"as":"AS23956 AmberIT Limited","city":"Dhaka","country":"Bangladesh","countryCode":"BD","isp":"dhakaCom Limited","lat":23.7916,"lon":90.4152,"org":"AmberIT Limited","query":"118.179.165.41","region":"C","regionName":"Dhaka Division","status":"success","timezone":"Asia/Dhaka","zip":"1212"}', '1', ' 23/06/2016  ', '+349-59-8401996'),
(3, 'amuhiminulhasan@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '4', '{"as":"AS23956 AmberIT Limited","city":"Dhaka","country":"Bangladesh","countryCode":"BD","isp":"dhakaCom Limited","lat":23.7916,"lon":90.4152,"org":"AmberIT Limited","query":"118.179.165.41","region":"C","regionName":"Dhaka Division","status":"success","timezone":"Asia/Dhaka","zip":"1212"}', '1', ' 23/06/2016  ', '+349-59-8401996');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE IF NOT EXISTS `general_settings` (
  `general_settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'Active Classifieds cms'),
(2, 'system_email', 'admin@shop.com'),
(3, 'system_title', ' Active Classifieds cms'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'english'),
(9, 'terms_conditions', '<span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span>'),
(10, 'fb_appid', ''),
(11, 'fb_secret', ''),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', ''),
(26, 'meta_author', 'ActiveItZone'),
(27, 'captcha_public', '6LdsXPQSAAAAALRQB-m8Irt6-2_s2t10QsVnndVN'),
(28, 'captcha_private', '6LdsXPQSAAAAAFEnxFqW9qkEU_vozvDvJFV67yho'),
(29, 'application_name', 'Super Shop'),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', ''),
(44, 'contact_about', '<p><span [removed]="" justify;"="">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also tgfrrfrhe leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>'),
(39, 'contact_phone', '012345'),
(40, 'contact_email', 'contact@classified.com'),
(41, 'contact_website', 'activeitzone.com'),
(42, 'footer_text', '<p><span [removed]="margin: 10px; width: 559px;"></span></p><p><span [removed] justify;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span><br></p>'),
(38, 'contact_address', 'Newyork,USA'),
(45, 'admin_notification_sound', 'no'),
(46, 'admin_notification_volume', '10.00'),
(47, 'privacy_policy', '<p><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><br></p>'),
(48, 'discus_id', 'activeittest'),
(49, 'home_notification_sound', 'no'),
(50, 'homepage_notification_volume', '10.00'),
(51, 'fb_login_set', 'ok'),
(52, 'g_login_set', 'ok'),
(53, 'slider', 'ok'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'disqus'),
(58, 'vendor_system', NULL),
(59, 'cache_time', '10'),
(60, 'file_folder', 'hjhjghhh'),
(62, 'slides', 'ok'),
(63, 'contact_lat_lang', '(40.7127837, -74.00594130000002)'),
(64, 'preloader', '3'),
(65, 'preloader_bg', 'rgba(51,55,61,1)'),
(66, 'map', 'ok'),
(67, 'initial_upload', 'pending'),
(68, 'post_without_login', NULL),
(69, 'cron_time', '1468487744'),
(70, 'cron_gap', '600'),
(71, 'preloader_obj', 'rgba(255,255,255,1)');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `Spanish` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Arabic` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `French` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `bangla` longtext
) ENGINE=InnoDB AUTO_INCREMENT=817 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Spanish`, `Arabic`, `French`, `bangla`) VALUES
(1, 'home', 'Home', NULL, NULL, NULL, NULL),
(2, 'login', 'Login', NULL, NULL, NULL, NULL),
(3, 'sign_up', 'Sign Up', NULL, NULL, NULL, NULL),
(4, 'compare', 'Compare', NULL, NULL, NULL, NULL),
(5, 'condition', 'Condition', NULL, NULL, NULL, NULL),
(6, 'used', 'Used', NULL, NULL, NULL, NULL),
(7, 'new', 'New', NULL, NULL, NULL, NULL),
(8, 'featured_items', 'Featured Items', NULL, NULL, NULL, NULL),
(9, 'latest_item', 'Latest Item', NULL, NULL, NULL, NULL),
(10, 'all_blogs', 'All Blogs', NULL, NULL, NULL, NULL),
(11, 'contact', 'Contact', NULL, NULL, NULL, NULL),
(12, 'distance', 'Distance', NULL, NULL, NULL, NULL),
(13, 'post_an_ad', 'Post An Ad', NULL, NULL, NULL, NULL),
(14, 'quick_view', 'Quick View', NULL, NULL, NULL, NULL),
(15, 'favorite', 'Favorite', NULL, NULL, NULL, NULL),
(16, 'see_more', 'See More', NULL, NULL, NULL, NULL),
(17, 'search_for_products', 'Search For Products', NULL, NULL, NULL, NULL),
(18, 'select_condition', 'Select Condition', NULL, NULL, NULL, NULL),
(19, 'area', 'Area', NULL, NULL, NULL, NULL),
(20, 'search_for_location', 'Search For Location', NULL, NULL, NULL, NULL),
(21, 'price', 'Price', NULL, NULL, NULL, NULL),
(22, 'search', 'Search', NULL, NULL, NULL, NULL),
(23, 'sort_by', 'Sort By', NULL, NULL, NULL, NULL),
(24, 'price_low_to_high', 'Price Low To High', NULL, NULL, NULL, NULL),
(25, 'price_high_to_low', 'Price High To Low', NULL, NULL, NULL, NULL),
(26, 'oldest', 'Oldest', NULL, NULL, NULL, NULL),
(27, 'newest', 'Newest', NULL, NULL, NULL, NULL),
(28, 'most_viewed', 'Most Viewed', NULL, NULL, NULL, NULL),
(29, 'I want to find...', 'I Want To Find...', NULL, NULL, NULL, NULL),
(30, 'successful_login', 'Successful Login', NULL, NULL, NULL, NULL),
(31, 'login_failed', 'Login Failed', NULL, NULL, NULL, NULL),
(32, 'address  :  ', 'Address  :  ', NULL, NULL, NULL, NULL),
(33, 'phone  :  ', 'Phone  :  ', NULL, NULL, NULL, NULL),
(34, 'email  :  ', 'Email  :  ', NULL, NULL, NULL, NULL),
(35, 'ceo_@aiz_.com', 'Ceo @aiz .com', NULL, NULL, NULL, NULL),
(36, 'website  :  ', 'Website  :  ', NULL, NULL, NULL, NULL),
(37, 'activeitzone.com', 'Activeitzone.com', NULL, NULL, NULL, NULL),
(38, 'follow_us', 'Follow Us', NULL, NULL, NULL, NULL),
(39, 'about_us', 'About Us', NULL, NULL, NULL, NULL),
(40, 'product_added_to_cart', 'Product Added To Cart', NULL, NULL, NULL, NULL),
(41, 'added_to_cart', 'Added To Cart', NULL, NULL, NULL, NULL),
(42, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', NULL, NULL, NULL, NULL),
(43, 'product_already_added_to_cart!', 'Product Already Added To Cart!', NULL, NULL, NULL, NULL),
(44, 'product_added_to_wishlist', 'Product Added To Wishlist', NULL, NULL, NULL, NULL),
(45, 'wished', 'Wished', NULL, NULL, NULL, NULL),
(46, 'wishing..', 'Wishing..', NULL, NULL, NULL, NULL),
(47, 'product_removed_from_wishlist', 'Product Removed From Wishlist', NULL, NULL, NULL, NULL),
(48, 'product_added_to_compared', 'Product Added To Compared', NULL, NULL, NULL, NULL),
(49, 'compared', 'Compared', NULL, NULL, NULL, NULL),
(50, 'working..', 'Working..', NULL, NULL, NULL, NULL),
(51, 'product_removed_from_compare', 'Product Removed From Compare', NULL, NULL, NULL, NULL),
(52, 'compare_category_full', 'Compare Category Full', NULL, NULL, NULL, NULL),
(53, 'product_already_added_to_compare', 'Product Already Added To Compare', NULL, NULL, NULL, NULL),
(54, 'product_rated_successfully', 'Product Rated Successfully', NULL, NULL, NULL, NULL),
(55, 'product_rating_failed', 'Product Rating Failed', NULL, NULL, NULL, NULL),
(56, 'you_already_rated_this_product', 'You Already Rated This Product', NULL, NULL, NULL, NULL),
(57, 'you_already_subscribed', 'You Already Subscribed', NULL, NULL, NULL, NULL),
(58, 'you_subscribed_successfully', 'You Subscribed Successfully', NULL, NULL, NULL, NULL),
(59, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', NULL, NULL, NULL, NULL),
(60, 'logging_in..', 'Logging In..', NULL, NULL, NULL, NULL),
(61, 'you_logged_in_successfully', 'You Logged In Successfully', NULL, NULL, NULL, NULL),
(62, 'login_failed!_try_again!', 'Login Failed! Try Again!', NULL, NULL, NULL, NULL),
(63, 'you_registered_successfully', 'You Registered Successfully', NULL, NULL, NULL, NULL),
(64, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', NULL, NULL, NULL, NULL),
(65, 'submitting..', 'Submitting..', NULL, NULL, NULL, NULL),
(66, 'email_sent_successfully', 'Email Sent Successfully', NULL, NULL, NULL, NULL),
(67, 'email_does_not_exist!', 'Email Does Not Exist!', NULL, NULL, NULL, NULL),
(68, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', NULL, NULL, NULL, NULL),
(69, 'logging_in', 'Logging In', NULL, NULL, NULL, NULL),
(70, 'adding_to_cart..', 'Adding To Cart..', NULL, NULL, NULL, NULL),
(71, 'product_removed_from_cart', 'Product Removed From Cart', NULL, NULL, NULL, NULL),
(72, 'the_field_is_required', 'The Field Is Required', NULL, NULL, NULL, NULL),
(73, 'must_be_a_number', 'Must Be A Number', NULL, NULL, NULL, NULL),
(74, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', NULL, NULL, NULL, NULL),
(75, 'category:', 'Category:', NULL, NULL, NULL, NULL),
(76, 'sub Category:', 'Sub Category:', NULL, NULL, NULL, NULL),
(77, 'condition:', 'Condition:', NULL, NULL, NULL, NULL),
(78, 'date:', 'Date:', NULL, NULL, NULL, NULL),
(79, 'contact_author', 'Contact Author', NULL, NULL, NULL, NULL),
(80, 'category', 'Category', NULL, NULL, NULL, NULL),
(81, 'All', 'All', NULL, NULL, NULL, NULL),
(82, 'sign_in_to_your_account', 'Sign In To Your Account', NULL, NULL, NULL, NULL),
(83, 'email', 'Email', NULL, NULL, NULL, NULL),
(84, 'password', 'Password', NULL, NULL, NULL, NULL),
(85, 'forget_password', 'Forget Password', NULL, NULL, NULL, NULL),
(86, 'email_sent_with_new_password!', 'Email Sent With New Password!', NULL, NULL, NULL, NULL),
(87, 'forgot_password', 'Forgot Password', NULL, NULL, NULL, NULL),
(88, 'sign_in', 'Sign In', NULL, NULL, NULL, NULL),
(89, 'cancelled', 'Cancelled', NULL, NULL, NULL, NULL),
(90, 'this_field_is_required', 'This Field Is Required', NULL, NULL, NULL, NULL),
(91, 'signing_in...', 'Signing In...', NULL, NULL, NULL, NULL),
(92, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', NULL, NULL, NULL, NULL),
(93, 'login_failed!', 'Login Failed!', NULL, NULL, NULL, NULL),
(94, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', NULL, NULL, NULL, NULL),
(95, 'login_successful!', 'Login Successful!', NULL, NULL, NULL, NULL),
(96, 'SUCCESS!', 'SUCCESS!', NULL, NULL, NULL, NULL),
(97, 'reset_password', 'Reset Password', NULL, NULL, NULL, NULL),
(98, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', NULL, NULL, NULL, NULL),
(99, 'visit_home_page', 'Visit Home Page', NULL, NULL, NULL, NULL),
(100, 'profile', 'Profile', NULL, NULL, NULL, NULL),
(101, 'logout', 'Logout', NULL, NULL, NULL, NULL),
(102, 'dashboard', 'Dashboard', NULL, NULL, NULL, NULL),
(103, 'pending_order_map', 'Pending Order Map', NULL, NULL, NULL, NULL),
(104, 'present_customer_live_on_your_store', 'Present Customer Live On Your Store', NULL, NULL, NULL, NULL),
(105, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', NULL, NULL, NULL, NULL),
(106, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', NULL, NULL, NULL, NULL),
(107, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', NULL, NULL, NULL, NULL),
(108, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', NULL, NULL, NULL, NULL),
(109, 'advertisement', 'Advertisement', NULL, NULL, NULL, NULL),
(110, 'advertise_category', 'Advertise Category', NULL, NULL, NULL, NULL),
(111, 'advertise_sub-category', 'Advertise Sub-category', NULL, NULL, NULL, NULL),
(112, 'all_advertise', 'All Advertise', NULL, NULL, NULL, NULL),
(113, 'blog', 'Blog', NULL, NULL, NULL, NULL),
(114, 'all_blog_categories', 'All Blog Categories', NULL, NULL, NULL, NULL),
(115, 'email_tracing', 'Email Tracing', NULL, NULL, NULL, NULL),
(116, 'Ticket', 'Ticket', NULL, NULL, NULL, NULL),
(117, 'users', 'Users', NULL, NULL, NULL, NULL),
(118, 'reports', 'Reports', NULL, NULL, NULL, NULL),
(119, 'category_wise_product', 'Category Wise Product', NULL, NULL, NULL, NULL),
(120, 'product_wishes', 'Product Wishes', NULL, NULL, NULL, NULL),
(121, 'most_viewed_products', 'Most Viewed Products', NULL, NULL, NULL, NULL),
(122, 'packages', 'Packages', NULL, NULL, NULL, NULL),
(123, 'product_package', 'Product Package', NULL, NULL, NULL, NULL),
(124, 'user_package', 'User Package', NULL, NULL, NULL, NULL),
(125, 'pages_&_menu', 'Pages & Menu', NULL, NULL, NULL, NULL),
(126, 'page', 'Page', NULL, NULL, NULL, NULL),
(127, 'menus', 'Menus', NULL, NULL, NULL, NULL),
(128, 'widgets', 'Widgets', NULL, NULL, NULL, NULL),
(129, 'slider_settings', 'Slider Settings', NULL, NULL, NULL, NULL),
(130, 'layer_slider', 'Layer Slider', NULL, NULL, NULL, NULL),
(131, 'top_slides', 'Top Slides', NULL, NULL, NULL, NULL),
(132, 'front_settings', 'Front Settings', NULL, NULL, NULL, NULL),
(133, 'banner_settings', 'Banner Settings', NULL, NULL, NULL, NULL),
(134, 'site_settings', 'Site Settings', NULL, NULL, NULL, NULL),
(135, 'staffs', 'Staffs', NULL, NULL, NULL, NULL),
(136, 'all_staffs', 'All Staffs', NULL, NULL, NULL, NULL),
(137, 'staff_permissions', 'Staff Permissions', NULL, NULL, NULL, NULL),
(138, 'messaging', 'Messaging', NULL, NULL, NULL, NULL),
(139, 'newsletters/bulk_email', 'Newsletters/bulk Email', NULL, NULL, NULL, NULL),
(140, 'contact_messages', 'Contact Messages', NULL, NULL, NULL, NULL),
(141, 'language', 'Language', NULL, NULL, NULL, NULL),
(142, 'business_settings', 'Business Settings', NULL, NULL, NULL, NULL),
(143, 'manage_admin_profile', 'Manage Admin Profile', NULL, NULL, NULL, NULL),
(144, 'SEO_proggres', 'SEO Proggres', NULL, NULL, NULL, NULL),
(145, 'online_tutorial', 'Online Tutorial', NULL, NULL, NULL, NULL),
(146, 'checkout', 'Checkout', NULL, NULL, NULL, NULL),
(147, 'deleted_successfully', 'Deleted Successfully', NULL, NULL, NULL, NULL),
(148, 'cancel', 'Cancel', NULL, NULL, NULL, NULL),
(149, 'required', 'Required', NULL, NULL, NULL, NULL),
(150, 'save', 'Save', NULL, NULL, NULL, NULL),
(151, 'product_published!', 'Product Published!', NULL, NULL, NULL, NULL),
(152, 'product_unpublished!', 'Product Unpublished!', NULL, NULL, NULL, NULL),
(153, 'product_featured!', 'Product Featured!', NULL, NULL, NULL, NULL),
(154, 'product_unfeatured!', 'Product Unfeatured!', NULL, NULL, NULL, NULL),
(155, 'product_in_todays_deal!', 'Product In Todays Deal!', NULL, NULL, NULL, NULL),
(156, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', NULL, NULL, NULL, NULL),
(157, 'slider_published!', 'Slider Published!', NULL, NULL, NULL, NULL),
(158, 'slider_unpublished!', 'Slider Unpublished!', NULL, NULL, NULL, NULL),
(159, 'page_published!', 'Page Published!', NULL, NULL, NULL, NULL),
(160, 'page_unpublished!', 'Page Unpublished!', NULL, NULL, NULL, NULL),
(161, 'menu_published!', 'Menu Published!', NULL, NULL, NULL, NULL),
(162, 'menu_unpublished!', 'Menu Unpublished!', NULL, NULL, NULL, NULL),
(163, 'notification_sound_enabled!', 'Notification Sound Enabled!', NULL, NULL, NULL, NULL),
(164, 'notification_sound_disabled!', 'Notification Sound Disabled!', NULL, NULL, NULL, NULL),
(165, 'google_login_enabled!', 'Google Login Enabled!', NULL, NULL, NULL, NULL),
(166, 'google_login_disabled!', 'Google Login Disabled!', NULL, NULL, NULL, NULL),
(167, 'facebook_login_enabled!', 'Facebook Login Enabled!', NULL, NULL, NULL, NULL),
(168, 'facebook_login_disabled!', 'Facebook Login Disabled!', NULL, NULL, NULL, NULL),
(169, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', NULL, NULL, NULL, NULL),
(170, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', NULL, NULL, NULL, NULL),
(171, 'slider_enabled!', 'Slider Enabled!', NULL, NULL, NULL, NULL),
(172, 'slider_disabled!', 'Slider Disabled!', NULL, NULL, NULL, NULL),
(173, 'cash_payment_enabled!', 'Cash Payment Enabled!', NULL, NULL, NULL, NULL),
(174, 'cash_payment_disabled!', 'Cash Payment Disabled!', NULL, NULL, NULL, NULL),
(175, 'enabled!', 'Enabled!', NULL, NULL, NULL, NULL),
(176, 'disabled!', 'Disabled!', NULL, NULL, NULL, NULL),
(177, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', NULL, NULL, NULL, NULL),
(178, 'manage_site', 'Manage Site', NULL, NULL, NULL, NULL),
(179, 'general_settings', 'General Settings', NULL, NULL, NULL, NULL),
(180, 'theme_color', 'Theme Color', NULL, NULL, NULL, NULL),
(181, 'fonts', 'Fonts', NULL, NULL, NULL, NULL),
(182, 'logo', 'Logo', NULL, NULL, NULL, NULL),
(183, 'preloader', 'Preloader', NULL, NULL, NULL, NULL),
(184, 'favicon', 'Favicon', NULL, NULL, NULL, NULL),
(185, 'social_media', 'Social Media', NULL, NULL, NULL, NULL),
(186, 'social_login_configuaration', 'Social Login Configuaration', NULL, NULL, NULL, NULL),
(187, 'product_comment_settings', 'Product Comment Settings', NULL, NULL, NULL, NULL),
(188, 'captcha_settings', 'Captcha Settings', NULL, NULL, NULL, NULL),
(189, 'terms_&_condition', 'Terms & Condition', NULL, NULL, NULL, NULL),
(190, 'privacy_policy', 'Privacy Policy', NULL, NULL, NULL, NULL),
(191, 'home_page', 'Home Page', NULL, NULL, NULL, NULL),
(192, 'contact_page', 'Contact Page', NULL, NULL, NULL, NULL),
(193, 'footer', 'Footer', NULL, NULL, NULL, NULL),
(194, 'system_name', 'System Name', NULL, NULL, NULL, NULL),
(195, 'system_email', 'System Email', NULL, NULL, NULL, NULL),
(196, 'system_title', 'System Title', NULL, NULL, NULL, NULL),
(197, 'homepage_cache_time', 'Homepage Cache Time', NULL, NULL, NULL, NULL),
(198, 'admin_notification_sound', 'Admin Notification Sound', NULL, NULL, NULL, NULL),
(199, 'admin_notification_volume', 'Admin Notification Volume', NULL, NULL, NULL, NULL),
(200, 'Volume_:_', 'Volume : ', NULL, NULL, NULL, NULL),
(201, 'homepage_notification_sound', 'Homepage Notification Sound', NULL, NULL, NULL, NULL),
(202, 'homepage_notification_volume', 'Homepage Notification Volume', NULL, NULL, NULL, NULL),
(203, 'saving', 'Saving', NULL, NULL, NULL, NULL),
(204, 'settings_updated!', 'Settings Updated!', NULL, NULL, NULL, NULL),
(205, 'slider', 'Slider', NULL, NULL, NULL, NULL),
(206, 'home_map', 'Home Map', NULL, NULL, NULL, NULL),
(207, 'upload_logo', 'Upload Logo', NULL, NULL, NULL, NULL),
(208, 'drop_logos_to_upload', 'Drop Logos To Upload', NULL, NULL, NULL, NULL),
(209, 'or_click_to_pick_manually', 'Or Click To Pick Manually', NULL, NULL, NULL, NULL),
(210, 'all_logos', 'All Logos', NULL, NULL, NULL, NULL),
(211, 'select_logo', 'Select Logo', NULL, NULL, NULL, NULL),
(212, 'place', 'Place', NULL, NULL, NULL, NULL),
(213, 'options', 'Options', NULL, NULL, NULL, NULL),
(214, 'admin_logo', 'Admin Logo', NULL, NULL, NULL, NULL),
(215, 'successfully_selected!', 'Successfully Selected!', NULL, NULL, NULL, NULL),
(216, 'change', 'Change', NULL, NULL, NULL, NULL),
(217, 'homepage_header_logo', 'Homepage Header Logo', NULL, NULL, NULL, NULL),
(218, 'homepage_footer_logo', 'Homepage Footer Logo', NULL, NULL, NULL, NULL),
(219, 'select_favicon', 'Select Favicon', NULL, NULL, NULL, NULL),
(220, 'social_links', 'Social Links', NULL, NULL, NULL, NULL),
(221, 'type', 'Type', NULL, NULL, NULL, NULL),
(222, 'none', 'None', NULL, NULL, NULL, NULL),
(223, 'facebook_comment', 'Facebook Comment', NULL, NULL, NULL, NULL),
(224, 'disqus_comment', 'Disqus Comment', NULL, NULL, NULL, NULL),
(225, 'discus_ID', 'Discus ID', NULL, NULL, NULL, NULL),
(226, 'fb_comment_id', 'Fb Comment Id', NULL, NULL, NULL, NULL),
(227, 'facebook_login_settings', 'Facebook Login Settings', NULL, NULL, NULL, NULL),
(228, 'status', 'Status', NULL, NULL, NULL, NULL),
(229, 'google+_login_settings', 'Google+ Login Settings', NULL, NULL, NULL, NULL),
(230, 'public_key', 'Public Key', NULL, NULL, NULL, NULL),
(231, 'private_key', 'Private Key', NULL, NULL, NULL, NULL),
(232, 'preloader_background', 'Preloader Background', NULL, NULL, NULL, NULL),
(233, 'contact_address', 'Contact Address', NULL, NULL, NULL, NULL),
(234, 'contact_phone', 'Contact Phone', NULL, NULL, NULL, NULL),
(235, 'contact_email', 'Contact Email', NULL, NULL, NULL, NULL),
(236, 'contact_website', 'Contact Website', NULL, NULL, NULL, NULL),
(237, 'contact_about', 'Contact About', NULL, NULL, NULL, NULL),
(238, 'footer_text', 'Footer Text', NULL, NULL, NULL, NULL),
(239, 'font', 'Font', NULL, NULL, NULL, NULL),
(240, 'choose_font', 'Choose Font', NULL, NULL, NULL, NULL),
(241, 'header_/_footer_scheme', 'Header / Footer Scheme', NULL, NULL, NULL, NULL),
(242, 'choode_your_scheme', 'Choode Your Scheme', NULL, NULL, NULL, NULL),
(243, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', NULL, NULL, NULL, NULL),
(244, 'all_categories', 'All Categories', NULL, NULL, NULL, NULL),
(245, 'all_types', 'All Types', NULL, NULL, NULL, NULL),
(246, 'login_to_your_account', 'Login To Your Account', NULL, NULL, NULL, NULL),
(247, 'not_registered_yet_!', 'Not Registered Yet !', NULL, NULL, NULL, NULL),
(248, 'click_here_to', 'Click Here To', NULL, NULL, NULL, NULL),
(249, 'register', 'Register', NULL, NULL, NULL, NULL),
(250, 'signing_in', 'Signing In', NULL, NULL, NULL, NULL),
(251, 'lost_your_password?', 'Lost Your Password?', NULL, NULL, NULL, NULL),
(252, 'click_here_to_recover', 'Click Here To Recover', NULL, NULL, NULL, NULL),
(253, 'submit', 'Submit', NULL, NULL, NULL, NULL),
(254, 'click_here_to_login', 'Click Here To Login', NULL, NULL, NULL, NULL),
(255, 'uploaded_by', 'Uploaded By', NULL, NULL, NULL, NULL),
(256, 'uploaded_in', 'Uploaded In', NULL, NULL, NULL, NULL),
(257, 'readers_comment', 'Readers Comment', NULL, NULL, NULL, NULL),
(258, 'message_sent!', 'Message Sent!', NULL, NULL, NULL, NULL),
(259, 'product_details', 'Product Details', NULL, NULL, NULL, NULL),
(260, 'your_email', 'Your Email', NULL, NULL, NULL, NULL),
(261, 'enter_your_valid_email', 'Enter Your Valid Email', NULL, NULL, NULL, NULL),
(262, 'your_phone', 'Your Phone', NULL, NULL, NULL, NULL),
(263, 'enter_your_phone', 'Enter Your Phone', NULL, NULL, NULL, NULL),
(264, 'your_message', 'Your Message', NULL, NULL, NULL, NULL),
(265, 'i_accept_the', 'I Accept The', NULL, NULL, NULL, NULL),
(266, 'terms_and_conditions', 'Terms And Conditions', NULL, NULL, NULL, NULL),
(267, 'of_this_website', 'Of This Website', NULL, NULL, NULL, NULL),
(268, 'contact_message_sent_to_owner!', 'Contact Message Sent To Owner!', NULL, NULL, NULL, NULL),
(269, 'message_sending_unsuccessful!', 'Message Sending Unsuccessful!', NULL, NULL, NULL, NULL),
(270, 'send_message', 'Send Message', NULL, NULL, NULL, NULL),
(271, 'e-mail', 'E-mail', NULL, NULL, NULL, NULL),
(272, 'phone_number', 'Phone Number', NULL, NULL, NULL, NULL),
(273, 'message', 'Message', NULL, NULL, NULL, NULL),
(274, 'terms', 'Terms', NULL, NULL, NULL, NULL),
(275, 'you_must_accept_terms_and_conditions', 'You Must Accept Terms And Conditions', NULL, NULL, NULL, NULL),
(276, 'user_account', 'User Account', NULL, NULL, NULL, NULL),
(277, 'your_info', 'Your Info', NULL, NULL, NULL, NULL),
(278, 'edit_your_personal_info', 'Edit Your Personal Info', NULL, NULL, NULL, NULL),
(279, 'favourites', 'Favourites', NULL, NULL, NULL, NULL),
(280, 'support_tickets', 'Support Tickets', NULL, NULL, NULL, NULL),
(281, 'change_package', 'Change Package', NULL, NULL, NULL, NULL),
(282, 'date', 'Date', NULL, NULL, NULL, NULL),
(283, 'product_title', 'Product Title', NULL, NULL, NULL, NULL),
(284, 'phone_no', 'Phone No', NULL, NULL, NULL, NULL),
(285, 'view_message', 'View Message', NULL, NULL, NULL, NULL),
(286, 'ticket_subject', 'Ticket Subject', NULL, NULL, NULL, NULL),
(287, 'ticket_status', 'Ticket Status', NULL, NULL, NULL, NULL),
(288, 'current_state', 'Current State', NULL, NULL, NULL, NULL),
(289, 'featured_till', 'Featured Till', NULL, NULL, NULL, NULL),
(290, 'not_featured', 'Not Featured', NULL, NULL, NULL, NULL),
(291, 'shown_till', 'Shown Till', NULL, NULL, NULL, NULL),
(292, 'current_package', 'Current Package', NULL, NULL, NULL, NULL),
(293, 'featured_for', 'Featured For', NULL, NULL, NULL, NULL),
(294, 'shown_for', 'Shown For', NULL, NULL, NULL, NULL),
(295, 'your_card_details_verified!', 'Your Card Details Verified!', NULL, NULL, NULL, NULL),
(296, 'pay_with_stripe', 'Pay With Stripe', NULL, NULL, NULL, NULL),
(297, 'message_from', 'Message From', NULL, NULL, NULL, NULL),
(298, 'subject', 'Subject', NULL, NULL, NULL, NULL),
(299, 'date_&_time', 'Date & Time', NULL, NULL, NULL, NULL),
(300, 'admin', 'Admin', NULL, NULL, NULL, NULL),
(301, 'reply_message', 'Reply Message', NULL, NULL, NULL, NULL),
(302, 'reply', 'Reply', NULL, NULL, NULL, NULL),
(303, 'from_the_time_of_payment', 'From The Time Of Payment', NULL, NULL, NULL, NULL),
(304, 'from_the_time_of_upload', 'From The Time Of Upload', NULL, NULL, NULL, NULL),
(305, 'favoured', 'Favoured', NULL, NULL, NULL, NULL),
(306, 'not_published', 'Not Published', NULL, NULL, NULL, NULL),
(307, 'valid_for', 'Valid For', NULL, NULL, NULL, NULL),
(308, 'unit_left', 'Unit Left', NULL, NULL, NULL, NULL),
(309, 'expires_on', 'Expires On', NULL, NULL, NULL, NULL),
(310, 'unit_left_of_product_packages', 'Unit Left Of Product Packages', NULL, NULL, NULL, NULL),
(311, 'back_to_home', 'Back To Home', NULL, NULL, NULL, NULL),
(312, 'reset_compare_list', 'Reset Compare List', NULL, NULL, NULL, NULL),
(313, 'name', 'Name', NULL, NULL, NULL, NULL),
(314, 'choose_a_product', 'Choose A Product', NULL, NULL, NULL, NULL),
(315, 'image', 'Image', NULL, NULL, NULL, NULL),
(316, 'brand', 'Brand', NULL, NULL, NULL, NULL),
(317, 'sub_category', 'Sub Category', NULL, NULL, NULL, NULL),
(318, 'description', 'Description', NULL, NULL, NULL, NULL),
(319, 'address', 'Address', NULL, NULL, NULL, NULL),
(320, 'map', 'Map', NULL, NULL, NULL, NULL),
(321, 'all_rights_reserved', 'All Rights Reserved', NULL, NULL, NULL, NULL),
(322, 'terms_conditions', 'Terms Conditions', NULL, NULL, NULL, NULL),
(323, 'manage_banner', 'Manage Banner', NULL, NULL, NULL, NULL),
(324, 'homepage', 'Homepage', NULL, NULL, NULL, NULL),
(325, 'category_page', 'Category Page', NULL, NULL, NULL, NULL),
(326, 'featured_page', 'Featured Page', NULL, NULL, NULL, NULL),
(327, 'vendor_homepage', 'Vendor Homepage', NULL, NULL, NULL, NULL),
(328, 'after_slider', 'After Slider', NULL, NULL, NULL, NULL),
(329, 'select_banner_image', 'Select Banner Image', NULL, NULL, NULL, NULL),
(330, 'link', 'Link', NULL, NULL, NULL, NULL),
(331, 'updating..', 'Updating..', NULL, NULL, NULL, NULL),
(332, 'update', 'Update', NULL, NULL, NULL, NULL),
(333, 'after_featured', 'After Featured', NULL, NULL, NULL, NULL),
(334, 'after_search', 'After Search', NULL, NULL, NULL, NULL),
(335, 'after_category', 'After Category', NULL, NULL, NULL, NULL),
(336, 'after_latest', 'After Latest', NULL, NULL, NULL, NULL),
(337, 'after_popular', 'After Popular', NULL, NULL, NULL, NULL),
(338, 'after_most_viewed', 'After Most Viewed', NULL, NULL, NULL, NULL),
(339, 'after_filter', 'After Filter', NULL, NULL, NULL, NULL),
(340, 'after_filters', 'After Filters', NULL, NULL, NULL, NULL),
(341, 'after_most_sold', 'After Most Sold', NULL, NULL, NULL, NULL),
(342, 'banner_published!', 'Banner Published!', NULL, NULL, NULL, NULL),
(343, 'banner_unpublished!', 'Banner Unpublished!', NULL, NULL, NULL, NULL),
(344, 'manage_widgets', 'Manage Widgets', NULL, NULL, NULL, NULL),
(345, 'add_widget', 'Add Widget', NULL, NULL, NULL, NULL),
(346, 'successfully_added!', 'Successfully Added!', NULL, NULL, NULL, NULL),
(347, 'create_widget', 'Create Widget', NULL, NULL, NULL, NULL),
(348, 'widget_serial', 'Widget Serial', NULL, NULL, NULL, NULL),
(349, 'successfully_serialized!', 'Successfully Serialized!', NULL, NULL, NULL, NULL),
(350, 'page_widget_serial', 'Page Widget Serial', NULL, NULL, NULL, NULL),
(351, 'no', 'No', NULL, NULL, NULL, NULL),
(352, 'title', 'Title', NULL, NULL, NULL, NULL),
(353, 'advanced_search', 'Advanced Search', NULL, NULL, NULL, NULL),
(354, 'recently_viewed', 'Recently Viewed', NULL, NULL, NULL, NULL),
(355, 'most_popular', 'Most Popular', NULL, NULL, NULL, NULL),
(356, 'edit_widget', 'Edit Widget', NULL, NULL, NULL, NULL),
(357, 'successfully_edited!', 'Successfully Edited!', NULL, NULL, NULL, NULL),
(358, 'edit', 'Edit', NULL, NULL, NULL, NULL),
(359, 'really_want_to_delete_this?', 'Really Want To Delete This?', NULL, NULL, NULL, NULL),
(360, 'delete', 'Delete', NULL, NULL, NULL, NULL),
(361, 'widget', 'Widget', NULL, NULL, NULL, NULL),
(362, 'widget_name', 'Widget Name', NULL, NULL, NULL, NULL),
(363, 'code', 'Code', NULL, NULL, NULL, NULL),
(364, 'enter_code_here.....', 'Enter Code Here.....', NULL, NULL, NULL, NULL),
(365, 'categories', 'Categories', NULL, NULL, NULL, NULL),
(366, 'featured', 'Featured', NULL, NULL, NULL, NULL),
(367, 'latest', 'Latest', NULL, NULL, NULL, NULL),
(368, 'product_view', 'Product View', NULL, NULL, NULL, NULL),
(369, 'page_serial', 'Page Serial', NULL, NULL, NULL, NULL),
(370, 'reset', 'Reset', NULL, NULL, NULL, NULL),
(371, 'page_widget_serial_saved!', 'Page Widget Serial Saved!', NULL, NULL, NULL, NULL),
(372, 'Google AD', 'Google AD', NULL, NULL, NULL, NULL),
(373, 'manage_email_tracing', 'Manage Email Tracing', NULL, NULL, NULL, NULL),
(374, 'view_email_tracing', 'View Email Tracing', NULL, NULL, NULL, NULL),
(375, 'successfully_viewed!', 'Successfully Viewed!', NULL, NULL, NULL, NULL),
(376, 'phone', 'Phone', NULL, NULL, NULL, NULL),
(377, 'massage', 'Massage', NULL, NULL, NULL, NULL),
(378, 'product', 'Product', NULL, NULL, NULL, NULL),
(379, 'product_owner', 'Product Owner', NULL, NULL, NULL, NULL),
(380, 'sender_info', 'Sender Info', NULL, NULL, NULL, NULL),
(381, 'select_from_user_package', 'Select From User Package', NULL, NULL, NULL, NULL),
(382, 'pay_separately', 'Pay Separately', NULL, NULL, NULL, NULL),
(383, 'left_units', 'Left Units', NULL, NULL, NULL, NULL),
(384, 'choose', 'Choose', NULL, NULL, NULL, NULL),
(385, 'signing_up', 'Signing Up', NULL, NULL, NULL, NULL),
(386, 'sign_up_successful!', 'Sign Up Successful!', NULL, NULL, NULL, NULL),
(387, 'sign_up_failed!', 'Sign Up Failed!', NULL, NULL, NULL, NULL),
(388, 'try_again!', 'Try Again!', NULL, NULL, NULL, NULL),
(389, 'already_have_an_account_?', 'Already Have An Account ?', NULL, NULL, NULL, NULL),
(390, 'your_address', 'Your Address', NULL, NULL, NULL, NULL),
(391, 'choose_one', 'Choose One', NULL, NULL, NULL, NULL),
(392, 'add_more_specification', 'Add More Specification', NULL, NULL, NULL, NULL),
(393, 'uploading..', 'Uploading..', NULL, NULL, NULL, NULL),
(394, 'post_added_successfully', 'Post Added Successfully', NULL, NULL, NULL, NULL),
(395, 'post_adding_unsuccessful', 'Post Adding Unsuccessful', NULL, NULL, NULL, NULL),
(396, 'upload', 'Upload', NULL, NULL, NULL, NULL),
(397, 'product_model', 'Product Model', NULL, NULL, NULL, NULL),
(398, 'product_description', 'Product Description', NULL, NULL, NULL, NULL),
(399, 'tag', 'Tag', NULL, NULL, NULL, NULL),
(400, 'location', 'Location', NULL, NULL, NULL, NULL),
(401, 'product_images', 'Product Images', NULL, NULL, NULL, NULL),
(402, 'edit_personal_info', 'Edit Personal Info', NULL, NULL, NULL, NULL),
(403, 'support_ticket', 'Support Ticket', NULL, NULL, NULL, NULL),
(404, 'select', 'Select', NULL, NULL, NULL, NULL),
(405, 'contacts_form', 'Contacts Form', NULL, NULL, NULL, NULL),
(406, 'your_name', 'Your Name', NULL, NULL, NULL, NULL),
(407, 'email_address', 'Email Address', NULL, NULL, NULL, NULL),
(408, 'write_your_message_here', 'Write Your Message Here', NULL, NULL, NULL, NULL),
(409, 'business_info', 'Business Info', NULL, NULL, NULL, NULL),
(410, 'stay_connected', 'Stay Connected', NULL, NULL, NULL, NULL),
(411, 'incorrect_captcha!', 'Incorrect Captcha!', NULL, NULL, NULL, NULL),
(412, 'blog_list', 'Blog List', NULL, NULL, NULL, NULL),
(413, 'blog_categories', 'Blog Categories', NULL, NULL, NULL, NULL),
(414, 'views', 'Views', NULL, NULL, NULL, NULL),
(415, 'latest_post', 'Latest Post', NULL, NULL, NULL, NULL),
(416, 'comments', 'Comments', NULL, NULL, NULL, NULL),
(417, 'read_more', 'Read More', NULL, NULL, NULL, NULL),
(418, 'blog_view', 'Blog View', NULL, NULL, NULL, NULL),
(419, 'written_by', 'Written By', NULL, NULL, NULL, NULL),
(420, 'posted_in', 'Posted In', NULL, NULL, NULL, NULL),
(421, 'parallax_title', 'Parallax Title', NULL, NULL, NULL, NULL),
(422, 'parallax_image', 'Parallax Image', NULL, NULL, NULL, NULL),
(423, 'select_image', 'Select Image', NULL, NULL, NULL, NULL),
(424, 'blog_counting', 'Blog Counting', NULL, NULL, NULL, NULL),
(425, 'manage_product', 'Manage Product', NULL, NULL, NULL, NULL),
(426, 'back_to_product_list', 'Back To Product List', NULL, NULL, NULL, NULL),
(427, 'publish', 'Publish', NULL, NULL, NULL, NULL),
(428, 'view_product', 'View Product', NULL, NULL, NULL, NULL),
(429, 'view', 'View', NULL, NULL, NULL, NULL),
(430, 'details_of', 'Details Of', NULL, NULL, NULL, NULL),
(431, 'sub-category', 'Sub-category', NULL, NULL, NULL, NULL),
(432, 'unit', 'Unit', NULL, NULL, NULL, NULL),
(433, 'sale_price', 'Sale Price', NULL, NULL, NULL, NULL),
(434, 'purchase_price', 'Purchase Price', NULL, NULL, NULL, NULL),
(435, 'Welcome To Active Classified', 'Welcome To Active Classified', NULL, NULL, NULL, NULL),
(436, 'manage_business_settings', 'Manage Business Settings', NULL, NULL, NULL, NULL),
(437, 'cash_payment', 'Cash Payment', NULL, NULL, NULL, NULL),
(438, 'paypal_payment', 'Paypal Payment', NULL, NULL, NULL, NULL),
(439, 'paypal_email', 'Paypal Email', NULL, NULL, NULL, NULL),
(440, 'paypal_account_type', 'Paypal Account Type', NULL, NULL, NULL, NULL),
(441, 'stripe_payment', 'Stripe Payment', NULL, NULL, NULL, NULL),
(442, 'stripe_secret_key', 'Stripe Secret Key', NULL, NULL, NULL, NULL),
(443, 'stripe_publishable_key', 'Stripe Publishable Key', NULL, NULL, NULL, NULL),
(444, 'post_without_login', 'Post Without Login', NULL, NULL, NULL, NULL),
(445, 'admin_approval_for_post_publish', 'Admin Approval For Post Publish', NULL, NULL, NULL, NULL),
(446, 'not_required', 'Not Required', NULL, NULL, NULL, NULL),
(447, 'currency_name', 'Currency Name', NULL, NULL, NULL, NULL),
(448, 'currency_symbol', 'Currency Symbol', NULL, NULL, NULL, NULL),
(449, 'currency_format', 'Currency Format', NULL, NULL, NULL, NULL),
(450, 'FAQs', 'FAQs', NULL, NULL, NULL, NULL),
(451, 'question', 'Question', NULL, NULL, NULL, NULL),
(452, 'answer', 'Answer', NULL, NULL, NULL, NULL),
(453, 'add_more_FAQs', 'Add More FAQs', NULL, NULL, NULL, NULL),
(454, 'manage_page', 'Manage Page', NULL, NULL, NULL, NULL),
(455, 'add_page', 'Add Page', NULL, NULL, NULL, NULL),
(456, 'create_page', 'Create Page', NULL, NULL, NULL, NULL),
(457, 'back_to_page_list', 'Back To Page List', NULL, NULL, NULL, NULL),
(458, 'page_name', 'Page Name', NULL, NULL, NULL, NULL),
(459, 'preview', 'Preview', NULL, NULL, NULL, NULL),
(460, ' page_widget_serial', ' Page Widget Serial', NULL, NULL, NULL, NULL),
(461, 'more', 'More', NULL, NULL, NULL, NULL),
(462, 'edit_page', 'Edit Page', NULL, NULL, NULL, NULL),
(463, 'asd', 'Asd', NULL, NULL, NULL, NULL),
(464, 'ashik', 'Ashik', NULL, NULL, NULL, NULL),
(465, 'quantity', 'Quantity', NULL, NULL, NULL, NULL),
(466, 'creation_date', 'Creation Date', NULL, NULL, NULL, NULL),
(467, 'manage_users', 'Manage Users', NULL, NULL, NULL, NULL),
(468, 'view_profile', 'View Profile', NULL, NULL, NULL, NULL),
(469, 'uploaded_products', 'Uploaded Products', NULL, NULL, NULL, NULL),
(470, 'edit_user', 'Edit User', NULL, NULL, NULL, NULL),
(471, 'post_your_add', 'Post Your Add', NULL, NULL, NULL, NULL),
(472, 'enter_your_phone_no', 'Enter Your Phone No', NULL, NULL, NULL, NULL),
(473, 'please_fill_your_product_information', 'Please Fill Your Product Information', NULL, NULL, NULL, NULL),
(474, 'enter_your_product_title', 'Enter Your Product Title', NULL, NULL, NULL, NULL),
(475, 'enter_your_product_model', 'Enter Your Product Model', NULL, NULL, NULL, NULL),
(476, 'enter_your_product_description', 'Enter Your Product Description', NULL, NULL, NULL, NULL),
(477, 'tags', 'Tags', NULL, NULL, NULL, NULL),
(478, 'comma_seperated_tags', 'Comma Seperated Tags', NULL, NULL, NULL, NULL),
(479, 'product_condition', 'Product Condition', NULL, NULL, NULL, NULL),
(480, 'product_price', 'Product Price', NULL, NULL, NULL, NULL),
(481, 'add_images', 'Add Images', NULL, NULL, NULL, NULL),
(482, 'start', 'Start', NULL, NULL, NULL, NULL),
(483, 'error', 'Error', NULL, NULL, NULL, NULL),
(484, 'specification_title', 'Specification Title', NULL, NULL, NULL, NULL),
(485, 'specification_details', 'Specification Details', NULL, NULL, NULL, NULL),
(486, 'remove', 'Remove', NULL, NULL, NULL, NULL),
(487, 'processing.....', 'Processing.....', NULL, NULL, NULL, NULL),
(488, 'right', 'Right', NULL, NULL, NULL, NULL),
(489, 'left', 'Left', NULL, NULL, NULL, NULL),
(490, 'post_add', 'Post Add', NULL, NULL, NULL, NULL),
(491, 'sidebar_position', 'Sidebar Position', NULL, NULL, NULL, NULL),
(492, 'product_counting', 'Product Counting', NULL, NULL, NULL, NULL),
(493, 'homepage_featured_product_number', 'Homepage Featured Product Number', NULL, NULL, NULL, NULL),
(494, 'number_of_search_product_result', 'Number Of Search Product Result', NULL, NULL, NULL, NULL),
(495, 'advertisement_shown', 'Advertisement Shown', NULL, NULL, NULL, NULL),
(496, 'advertisement_hidden', 'Advertisement Hidden', NULL, NULL, NULL, NULL),
(497, 'do_you_rellay_want_to_delete_this_image?', 'Do You Rellay Want To Delete This Image?', NULL, NULL, NULL, NULL),
(498, 'edit_successful!', 'Edit Successful!', NULL, NULL, NULL, NULL),
(499, 'edit_failed!', 'Edit Failed!', NULL, NULL, NULL, NULL),
(500, 'password_changed!', 'Password Changed!', NULL, NULL, NULL, NULL),
(501, 'failed!', 'Failed!', NULL, NULL, NULL, NULL),
(502, 'Welcome ', 'Welcome ', NULL, NULL, NULL, NULL),
(503, 'google_comment', 'Google Comment', NULL, NULL, NULL, NULL),
(504, 'number_of_blogs', 'Number Of Blogs', NULL, NULL, NULL, NULL),
(505, 'user', 'User', NULL, NULL, NULL, NULL),
(506, 'Introduce your cyber business with Activeclassified CMS', 'Introduce Your Cyber Business With Activeclassified CMS', NULL, NULL, NULL, NULL),
(507, 'manage_menu', 'Manage Menu', NULL, NULL, NULL, NULL),
(508, 'add_menu', 'Add Menu', NULL, NULL, NULL, NULL),
(509, 'create_menu', 'Create Menu', NULL, NULL, NULL, NULL),
(510, 'menu_serial', 'Menu Serial', NULL, NULL, NULL, NULL),
(511, 'edit_menu', 'Edit Menu', NULL, NULL, NULL, NULL),
(512, 'Test', 'Test', NULL, NULL, NULL, NULL),
(513, 'Test2', 'Test2', NULL, NULL, NULL, NULL),
(514, 'Test3', 'Test3', NULL, NULL, NULL, NULL),
(515, 'Iphone', 'Iphone', NULL, NULL, NULL, NULL),
(516, 'New Page', 'New Page', NULL, NULL, NULL, NULL),
(517, 'menu', 'Menu', NULL, NULL, NULL, NULL),
(518, 'menu_serial_saved!', 'Menu Serial Saved!', NULL, NULL, NULL, NULL),
(519, 'user_packages', 'User Packages', NULL, NULL, NULL, NULL),
(520, 'product_packages', 'Product Packages', NULL, NULL, NULL, NULL),
(521, 'left_unit_for_current_user_package', 'Left Unit For Current User Package', NULL, NULL, NULL, NULL),
(522, 'package_for :', 'Package For :', NULL, NULL, NULL, NULL),
(523, 'manage_user_type', 'Manage User Type', NULL, NULL, NULL, NULL),
(524, 'add_user_type', 'Add User Type', NULL, NULL, NULL, NULL),
(525, 'create_user_type', 'Create User Type', NULL, NULL, NULL, NULL),
(526, 'product_type', 'Product Type', NULL, NULL, NULL, NULL),
(527, 'duration', 'Duration', NULL, NULL, NULL, NULL),
(528, 'pieces', 'Pieces', NULL, NULL, NULL, NULL),
(529, 'unlimited', 'Unlimited', NULL, NULL, NULL, NULL),
(530, 'user_package_published', 'User Package Published', NULL, NULL, NULL, NULL),
(531, 'user_package_unpublished', 'User Package Unpublished', NULL, NULL, NULL, NULL),
(532, 'edit_user_type', 'Edit User Type', NULL, NULL, NULL, NULL),
(533, 'user_type', 'User Type', NULL, NULL, NULL, NULL),
(534, 'user_type_name', 'User Type Name', NULL, NULL, NULL, NULL),
(535, 'details', 'Details', NULL, NULL, NULL, NULL),
(536, 'day', 'Day', NULL, NULL, NULL, NULL),
(537, 'month', 'Month', NULL, NULL, NULL, NULL),
(538, 'year', 'Year', NULL, NULL, NULL, NULL),
(539, 'limited', 'Limited', NULL, NULL, NULL, NULL),
(540, 'package_logo', 'Package Logo', NULL, NULL, NULL, NULL),
(541, 'choose_file', 'Choose File', NULL, NULL, NULL, NULL),
(542, 'piece', 'Piece', NULL, NULL, NULL, NULL),
(543, 'activate', 'Activate', NULL, NULL, NULL, NULL),
(544, 'page_title', 'Page Title', NULL, NULL, NULL, NULL),
(545, 'parmalink', 'Parmalink', NULL, NULL, NULL, NULL),
(546, 'number_of_page_parts', 'Number Of Page Parts', NULL, NULL, NULL, NULL),
(547, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', NULL, NULL, NULL, NULL),
(548, 'parts', 'Parts', NULL, NULL, NULL, NULL),
(549, 'select_size', 'Select Size', NULL, NULL, NULL, NULL),
(550, 'one-fourth', 'One-fourth', NULL, NULL, NULL, NULL),
(551, 'one-third', 'One-third', NULL, NULL, NULL, NULL),
(552, 'half', 'Half', NULL, NULL, NULL, NULL),
(553, 'two-third', 'Two-third', NULL, NULL, NULL, NULL),
(554, 'three-fourth', 'Three-fourth', NULL, NULL, NULL, NULL),
(555, 'full', 'Full', NULL, NULL, NULL, NULL),
(556, 'select_type', 'Select Type', NULL, NULL, NULL, NULL),
(557, 'content', 'Content', NULL, NULL, NULL, NULL),
(558, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', NULL, NULL, NULL, NULL),
(559, 'choose_theme', 'Choose Theme', NULL, NULL, NULL, NULL),
(560, 'for', 'For', NULL, NULL, NULL, NULL),
(561, 'units', 'Units', NULL, NULL, NULL, NULL),
(562, 'time_limit', 'Time Limit', NULL, NULL, NULL, NULL),
(563, 'get_it', 'Get It', NULL, NULL, NULL, NULL),
(564, 'advertisements', 'Advertisements', NULL, NULL, NULL, NULL),
(565, 'advertisements_left', 'Advertisements Left', NULL, NULL, NULL, NULL),
(566, 'ads', 'Ads', NULL, NULL, NULL, NULL),
(567, 'manage_product_type', 'Manage Product Type', NULL, NULL, NULL, NULL),
(568, 'add_product_type', 'Add Product Type', NULL, NULL, NULL, NULL),
(569, 'create_product_type', 'Create Product Type', NULL, NULL, NULL, NULL),
(570, 'product_package_published', 'Product Package Published', NULL, NULL, NULL, NULL),
(571, 'product_package_unpublished', 'Product Package Unpublished', NULL, NULL, NULL, NULL),
(572, 'edit_product_type', 'Edit Product Type', NULL, NULL, NULL, NULL),
(573, 'numeber', 'Numeber', NULL, NULL, NULL, NULL),
(574, 'Select One', 'Select One', NULL, NULL, NULL, NULL),
(575, 'validation_of_package', 'Validation Of Package', NULL, NULL, NULL, NULL),
(576, 'number', 'Number', NULL, NULL, NULL, NULL),
(577, 'Monthly Special', 'Monthly Special', NULL, NULL, NULL, NULL),
(578, 'Default', 'Default', NULL, NULL, NULL, NULL),
(579, 'activated', 'Activated', NULL, NULL, NULL, NULL),
(580, 'Manage_roles', 'Manage Roles', NULL, NULL, NULL, NULL),
(581, 'add_role', 'Add Role', NULL, NULL, NULL, NULL),
(582, 'create_role', 'Create Role', NULL, NULL, NULL, NULL),
(583, 'back_to_role_list', 'Back To Role List', NULL, NULL, NULL, NULL),
(584, 'edit_role', 'Edit Role', NULL, NULL, NULL, NULL),
(585, 'ads_left_of_product_packages', 'Ads Left Of Product Packages', NULL, NULL, NULL, NULL),
(586, 'your_user_package', 'Your User Package', NULL, NULL, NULL, NULL),
(587, 'choose_your_package', 'Choose Your Package', NULL, NULL, NULL, NULL),
(588, 'choose_your_package_plan', 'Choose Your Package Plan', NULL, NULL, NULL, NULL),
(589, 'back_to_profile_page', 'Back To Profile Page', NULL, NULL, NULL, NULL),
(590, 'get_package', 'Get Package', NULL, NULL, NULL, NULL),
(591, 'products_uploded_by_user', 'Products Uploded By User', NULL, NULL, NULL, NULL),
(592, 'manage_categories', 'Manage Categories', NULL, NULL, NULL, NULL),
(593, 'add_category', 'Add Category', NULL, NULL, NULL, NULL),
(594, 'create_category', 'Create Category', NULL, NULL, NULL, NULL),
(595, 'edit_category', 'Edit Category', NULL, NULL, NULL, NULL),
(596, 'manage_sub_categories', 'Manage Sub Categories', NULL, NULL, NULL, NULL),
(597, 'add_sub-category', 'Add Sub-category', NULL, NULL, NULL, NULL),
(598, 'create_sub_category', 'Create Sub Category', NULL, NULL, NULL, NULL),
(599, 'edit_sub-category', 'Edit Sub-category', NULL, NULL, NULL, NULL),
(600, 'category_name', 'Category Name', NULL, NULL, NULL, NULL),
(601, 'sub-category_name', 'Sub-category Name', NULL, NULL, NULL, NULL),
(602, 'profile_picture_saved_successfully!', 'Profile Picture Saved Successfully!', NULL, NULL, NULL, NULL),
(603, 'save_changes', 'Save Changes', NULL, NULL, NULL, NULL),
(604, 'sub Category', 'Sub Category', NULL, NULL, NULL, NULL),
(605, 'product_uploaded_successfully!', 'Product Uploaded Successfully!', NULL, NULL, NULL, NULL),
(606, 'view_messages', 'View Messages', NULL, NULL, NULL, NULL),
(607, 'ticket_message', 'Ticket Message', NULL, NULL, NULL, NULL),
(608, 'back_to_ticket_list', 'Back To Ticket List', NULL, NULL, NULL, NULL),
(609, 'from', 'From', NULL, NULL, NULL, NULL),
(610, 'view_contact_ticket', 'View Contact Ticket', NULL, NULL, NULL, NULL),
(611, 'view_ticket', 'View Ticket', NULL, NULL, NULL, NULL),
(612, 'ticket_from', 'Ticket From', NULL, NULL, NULL, NULL),
(613, 'view_original_message', 'View Original Message', NULL, NULL, NULL, NULL),
(614, 'successfully_replied!', 'Successfully Replied!', NULL, NULL, NULL, NULL),
(615, 'most_wished_product_report', 'Most Wished Product Report', NULL, NULL, NULL, NULL),
(616, 'choose_from_current_user_package', 'Choose From Current User Package', NULL, NULL, NULL, NULL),
(617, 'select_from_current_package', 'Select From Current Package', NULL, NULL, NULL, NULL),
(618, 'select_from_current_user_package', 'Select From Current User Package', NULL, NULL, NULL, NULL),
(619, 'package_for', 'Package For', NULL, NULL, NULL, NULL),
(620, 'preloader_color', 'Preloader Color', NULL, NULL, NULL, NULL),
(621, 'Search for products', 'Search For Products', NULL, NULL, NULL, NULL),
(622, 'samsung_galaxy_s4', 'Samsung Galaxy S4', NULL, NULL, NULL, NULL),
(623, 'mailing_list', 'Mailing List', NULL, NULL, NULL, NULL),
(624, 'sign_up_if_you_would_like_to_receive_occasional_treats_from_us. ', 'Sign Up If You Would Like To Receive Occasional Treats From Us. ', NULL, NULL, NULL, NULL),
(625, 'your_email_address...', 'Your Email Address...', NULL, NULL, NULL, NULL),
(626, 'go!', 'Go!', NULL, NULL, NULL, NULL),
(627, 'go', 'Go', NULL, NULL, NULL, NULL),
(628, 'price : ', 'Price : ', NULL, NULL, NULL, NULL),
(629, 'facebook', 'Facebook', NULL, NULL, NULL, NULL),
(630, 'google+', 'Google+', NULL, NULL, NULL, NULL),
(631, 'manage_blog', 'Manage Blog', NULL, NULL, NULL, NULL),
(632, 'add_blog', 'Add Blog', NULL, NULL, NULL, NULL),
(633, 'create_blog', 'Create Blog', NULL, NULL, NULL, NULL),
(634, 'back_to_blog_list', 'Back To Blog List', NULL, NULL, NULL, NULL),
(635, 'blog_published', 'Blog Published', NULL, NULL, NULL, NULL),
(636, 'blog_unpublished', 'Blog Unpublished', NULL, NULL, NULL, NULL),
(637, 'edit_blog', 'Edit Blog', NULL, NULL, NULL, NULL),
(638, 'manage_profile', 'Manage Profile', NULL, NULL, NULL, NULL),
(639, 'manage_details', 'Manage Details', NULL, NULL, NULL, NULL),
(640, 'profile_updated!', 'Profile Updated!', NULL, NULL, NULL, NULL),
(641, 'update_profile', 'Update Profile', NULL, NULL, NULL, NULL),
(642, 'change_password', 'Change Password', NULL, NULL, NULL, NULL),
(643, 'current_password', 'Current Password', NULL, NULL, NULL, NULL),
(644, 'new_password*', 'New Password*', NULL, NULL, NULL, NULL),
(645, 'confirm_password', 'Confirm Password', NULL, NULL, NULL, NULL),
(646, 'password_updated!', 'Password Updated!', NULL, NULL, NULL, NULL),
(647, 'update_password', 'Update Password', NULL, NULL, NULL, NULL),
(648, 'password_mismatched', 'Password Mismatched', NULL, NULL, NULL, NULL),
(649, 'incorrect_password!', 'Incorrect Password!', NULL, NULL, NULL, NULL),
(650, 'blog_title', 'Blog Title', NULL, NULL, NULL, NULL),
(651, 'images', 'Images', NULL, NULL, NULL, NULL),
(652, 'summery', 'Summery', NULL, NULL, NULL, NULL),
(653, 'author', 'Author', NULL, NULL, NULL, NULL),
(654, 'field_name', 'Field Name', NULL, NULL, NULL, NULL),
(655, 'customer_input_title', 'Customer Input Title', NULL, NULL, NULL, NULL),
(656, 'add_options_for_choice', 'Add Options For Choice', NULL, NULL, NULL, NULL),
(657, 'option_name', 'Option Name', NULL, NULL, NULL, NULL),
(658, 'manage_blog_categories', 'Manage Blog Categories', NULL, NULL, NULL, NULL),
(659, 'add_blog_category', 'Add Blog Category', NULL, NULL, NULL, NULL),
(660, 'create_blog_category', 'Create Blog Category', NULL, NULL, NULL, NULL),
(661, 'edit_blog_category', 'Edit Blog Category', NULL, NULL, NULL, NULL),
(662, 'blog_category', 'Blog Category', NULL, NULL, NULL, NULL),
(663, 'blog_category_name', 'Blog Category Name', NULL, NULL, NULL, NULL),
(664, 'i_want_to_find...', 'I Want To Find...', NULL, NULL, NULL, NULL),
(665, 'change_profile_picture', 'Change Profile Picture', NULL, NULL, NULL, NULL),
(666, 'product_log', 'Product Log', NULL, NULL, NULL, NULL),
(667, 'advertisement_title', 'Advertisement Title', NULL, NULL, NULL, NULL),
(668, 'show', 'Show', NULL, NULL, NULL, NULL),
(669, 'option', 'Option', NULL, NULL, NULL, NULL),
(670, 'your_username', 'Your Username', NULL, NULL, NULL, NULL),
(671, 'your_surname', 'Your Surname', NULL, NULL, NULL, NULL),
(672, 'old_password', 'Old Password', NULL, NULL, NULL, NULL),
(673, 'new_password', 'New Password', NULL, NULL, NULL, NULL),
(674, 're-enter_password', 'Re-enter Password', NULL, NULL, NULL, NULL),
(675, 'post_your_advertise', 'Post Your Advertise', NULL, NULL, NULL, NULL),
(676, 'needed_to_verify', 'Needed To Verify', NULL, NULL, NULL, NULL),
(677, 'your_account', 'Your Account', NULL, NULL, NULL, NULL),
(678, 'needed_to_contact_with_you', 'Needed To Contact With You', NULL, NULL, NULL, NULL),
(679, 'comma_separated_tags', 'Comma Separated Tags', NULL, NULL, NULL, NULL),
(680, 'add_new_specification', 'Add New Specification', NULL, NULL, NULL, NULL),
(681, 'processing...', 'Processing...', NULL, NULL, NULL, NULL),
(682, 'cancle', 'Cancle', NULL, NULL, NULL, NULL),
(683, 'model', 'Model', NULL, NULL, NULL, NULL),
(684, 'address_line1', 'Address Line1', NULL, NULL, NULL, NULL),
(685, 'address_line2', 'Address Line2', NULL, NULL, NULL, NULL),
(686, 'ticket_messages', 'Ticket Messages', NULL, NULL, NULL, NULL),
(687, 'manage_languages', 'Manage Languages', NULL, NULL, NULL, NULL),
(688, 'add_language', 'Add Language', NULL, NULL, NULL, NULL),
(689, 'add_new_word', 'Add New Word', NULL, NULL, NULL, NULL),
(690, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', NULL, NULL, NULL, NULL),
(691, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', NULL, NULL, NULL, NULL),
(692, 'saving..', 'Saving..', NULL, NULL, NULL, NULL),
(693, 'select_language', 'Select Language', NULL, NULL, NULL, NULL),
(694, 'delete_language', 'Delete Language', NULL, NULL, NULL, NULL),
(695, 'word', 'Word', NULL, NULL, NULL, NULL),
(696, 'translation', 'Translation', NULL, NULL, NULL, NULL),
(697, 'updated!', 'Updated!', NULL, NULL, NULL, NULL),
(698, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', NULL, NULL, NULL, NULL),
(699, 'translate', 'Translate', NULL, NULL, NULL, NULL),
(700, 'save_all', 'Save All', NULL, NULL, NULL, NULL),
(701, 'manage_slider', 'Manage Slider', NULL, NULL, NULL, NULL),
(702, 'create_slider', 'Create Slider', NULL, NULL, NULL, NULL),
(703, 'slider_list', 'Slider List', NULL, NULL, NULL, NULL),
(704, 'slider_serial', 'Slider Serial', NULL, NULL, NULL, NULL),
(705, 'ID', 'ID', NULL, NULL, NULL, NULL),
(706, 'enter_your_ticket_subject_to_admin', 'Enter Your Ticket Subject To Admin', NULL, NULL, NULL, NULL),
(707, 'creating', 'Creating', NULL, NULL, NULL, NULL),
(708, 'create', 'Create', NULL, NULL, NULL, NULL),
(709, 'create_successful!', 'Create Successful!', NULL, NULL, NULL, NULL),
(710, 'create_failed!', 'Create Failed!', NULL, NULL, NULL, NULL),
(711, 'successfully_created', 'Successfully Created', NULL, NULL, NULL, NULL),
(712, 'not_created', 'Not Created', NULL, NULL, NULL, NULL),
(713, 'created!', 'Created!', NULL, NULL, NULL, NULL),
(714, 'replying', 'Replying', NULL, NULL, NULL, NULL),
(715, 'sucessfully_replied!', 'Sucessfully Replied!', NULL, NULL, NULL, NULL),
(716, 'send_newsletter', 'Send Newsletter', NULL, NULL, NULL, NULL),
(717, 'e-mails_(users)', 'E-mails (users)', NULL, NULL, NULL, NULL),
(718, 'e-mails_(subscribers)', 'E-mails (subscribers)', NULL, NULL, NULL, NULL),
(719, 'from_:_email_address', 'From : Email Address', NULL, NULL, NULL, NULL),
(720, 'newsletter_subject', 'Newsletter Subject', NULL, NULL, NULL, NULL),
(721, 'newsletter_content', 'Newsletter Content', NULL, NULL, NULL, NULL),
(722, 'sending', 'Sending', NULL, NULL, NULL, NULL),
(723, 'sent!', 'Sent!', NULL, NULL, NULL, NULL),
(724, 'send', 'Send', NULL, NULL, NULL, NULL),
(725, 'Product_name :', 'Product Name :', NULL, NULL, NULL, NULL),
(726, 'all_messages', 'All Messages', NULL, NULL, NULL, NULL),
(727, 'create_ticket', 'Create Ticket', NULL, NULL, NULL, NULL),
(728, 'enter_your_messgae', 'Enter Your Messgae', NULL, NULL, NULL, NULL),
(729, 'new_message', 'New Message', NULL, NULL, NULL, NULL),
(730, 'user_name', 'User Name', NULL, NULL, NULL, NULL),
(731, 'sur_name', 'Sur Name', NULL, NULL, NULL, NULL),
(732, 'country', 'Country', NULL, NULL, NULL, NULL),
(733, 'city', 'City', NULL, NULL, NULL, NULL),
(734, 'zip', 'Zip', NULL, NULL, NULL, NULL),
(735, 'fb_id', 'Fb Id', NULL, NULL, NULL, NULL),
(736, 'g_id', 'G Id', NULL, NULL, NULL, NULL),
(737, 'google_plus', 'Google Plus', NULL, NULL, NULL, NULL),
(738, 'skype', 'Skype', NULL, NULL, NULL, NULL),
(739, 'Photo', 'Photo', NULL, NULL, NULL, NULL),
(740, 'Choose your photo', 'Choose Your Photo', NULL, NULL, NULL, NULL),
(741, 'slider_serial_saved!', 'Slider Serial Saved!', NULL, NULL, NULL, NULL),
(742, 'choose_your_slider_style', 'Choose Your Slider Style', NULL, NULL, NULL, NULL),
(743, 'play', 'Play', NULL, NULL, NULL, NULL),
(744, 'enter_preview', 'Enter Preview', NULL, NULL, NULL, NULL),
(745, 'creating_slider..', 'Creating Slider..', NULL, NULL, NULL, NULL),
(746, 'slider_added!', 'Slider Added!', NULL, NULL, NULL, NULL),
(747, 'select_background_image', 'Select Background Image', NULL, NULL, NULL, NULL),
(748, 'clean', 'Clean', NULL, NULL, NULL, NULL),
(749, 'font-color', 'Font-color', NULL, NULL, NULL, NULL),
(750, 'background_color', 'Background Color', NULL, NULL, NULL, NULL),
(751, 'view_contact_message', 'View Contact Message', NULL, NULL, NULL, NULL),
(752, 'date_time', 'Date Time', NULL, NULL, NULL, NULL),
(753, 'reply_contact_message', 'Reply Contact Message', NULL, NULL, NULL, NULL),
(754, 'manage_staffs', 'Manage Staffs', NULL, NULL, NULL, NULL),
(755, 'add_staff', 'Add Staff', NULL, NULL, NULL, NULL),
(756, 'create_admin', 'Create Admin', NULL, NULL, NULL, NULL),
(757, 'role', 'Role', NULL, NULL, NULL, NULL),
(758, 'edit_admin', 'Edit Admin', NULL, NULL, NULL, NULL),
(759, 'sddress', 'Sddress', NULL, NULL, NULL, NULL),
(760, 'permissions', 'Permissions', NULL, NULL, NULL, NULL),
(762, 'settings', 'Settings', NULL, NULL, NULL, NULL),
(763, 'social_network_reach', 'Social Network Reach', NULL, NULL, NULL, NULL),
(764, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', NULL, NULL, NULL, NULL),
(765, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', NULL, NULL, NULL, NULL);
INSERT INTO `language` (`word_id`, `word`, `english`, `Spanish`, `Arabic`, `French`, `bangla`) VALUES
(766, 'search_index', 'Search Index', NULL, NULL, NULL, NULL),
(767, 'alexa_traffic_rank', 'Alexa Traffic Rank', NULL, NULL, NULL, NULL),
(768, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', NULL, NULL, NULL, 'Manage Search Engine Optimization'),
(769, 'keywords', 'Keywords', NULL, NULL, NULL, 'Keywords'),
(770, 'revisit_after', 'Revisit After', NULL, NULL, NULL, 'Revisit After'),
(771, 'days', 'Days', NULL, NULL, NULL, 'Days'),
(772, 'sitemap_link', 'Sitemap Link', NULL, NULL, NULL, 'Sitemap Link'),
(773, 'ahmed', 'Ahmed', NULL, NULL, NULL, 'Ahmed'),
(774, 'copy', 'Copy', NULL, NULL, NULL, 'Copy'),
(775, 'Premium', 'Premium', NULL, NULL, NULL, 'Premium'),
(776, 'language_name', 'Language Name', NULL, NULL, NULL, 'Language Name'),
(777, 'new_language', 'New Language', NULL, NULL, NULL, 'New Language'),
(778, 'manage_top_slides', 'Manage Top Slides', NULL, NULL, NULL, NULL),
(779, 'add_slides', 'Add Slides', NULL, NULL, NULL, NULL),
(780, 'create_slides', 'Create Slides', NULL, NULL, NULL, NULL),
(781, 'slider_on_/_off', 'Slider On / Off', NULL, NULL, NULL, NULL),
(782, 'slides', 'Slides', NULL, NULL, NULL, NULL),
(783, 'Overall ', 'Overall ', NULL, NULL, NULL, NULL),
(784, 'my_purchase_log', 'My Purchase Log', NULL, NULL, NULL, NULL),
(785, 'please_enable_javaScript_to_view_the', 'Please Enable JavaScript To View The', NULL, NULL, NULL, NULL),
(786, 'comments_powered_by_disqus', 'Comments Powered By Disqus', NULL, NULL, NULL, NULL),
(787, 'Super', 'Super', NULL, NULL, NULL, NULL),
(788, 'example', 'Example', NULL, NULL, NULL, NULL),
(789, 'do_you_rellay_want_to_delete_this_product?', 'Do You Rellay Want To Delete This Product?', NULL, NULL, NULL, NULL),
(790, 'related_products', 'Related Products', NULL, NULL, NULL, NULL),
(791, 'Facebook Like Box', 'Facebook Like Box', NULL, NULL, NULL, NULL),
(792, 'contact_on', 'Contact On', NULL, NULL, NULL, NULL),
(793, 'manage_advertisement', 'Manage Advertisement', NULL, NULL, NULL, NULL),
(794, 'ads_wishes', 'Ads Wishes', NULL, NULL, NULL, NULL),
(795, 'most_viewed_ads', 'Most Viewed Ads', NULL, NULL, NULL, NULL),
(796, 'category_wise_ads', 'Category Wise Ads', NULL, NULL, NULL, NULL),
(797, 'wished_ads', 'Wished Ads', NULL, NULL, NULL, NULL),
(798, 'total_ads', 'Total Ads', NULL, NULL, NULL, NULL),
(799, 'published_ads', 'Published Ads', NULL, NULL, NULL, NULL),
(800, 'unpublished_ads', 'Unpublished Ads', NULL, NULL, NULL, NULL),
(801, 'category_wise_products', 'Category Wise Products', NULL, NULL, NULL, NULL),
(802, 'cash_payment_activation', 'Cash Payment Activation', NULL, NULL, NULL, NULL),
(803, 'currency_settings_&_cash_payment_activation', 'Currency Settings & Cash Payment Activation', NULL, NULL, NULL, NULL),
(804, 'stripe_ activation_&_settings', 'Stripe  Activation & Settings', NULL, NULL, NULL, NULL),
(805, 'genral_settings', 'Genral Settings', NULL, NULL, NULL, NULL),
(806, 'genral_business_settings', 'Genral Business Settings', NULL, NULL, NULL, NULL),
(807, 'FAQ_settings', 'FAQ Settings', NULL, NULL, NULL, NULL),
(808, 'F.A.Q_settings', 'F.A.Q Settings', NULL, NULL, NULL, NULL),
(809, 'most_wished_ads_report', 'Most Wished Ads Report', NULL, NULL, NULL, NULL),
(810, 'demo page', 'Demo Page', NULL, NULL, NULL, NULL),
(811, 'fixed_page', 'Fixed Page', NULL, NULL, NULL, NULL),
(812, 'demo', 'Demo', NULL, NULL, NULL, NULL),
(813, 'page_code', 'Page Code', NULL, NULL, NULL, NULL),
(814, 'page_tags', 'Page Tags', NULL, NULL, NULL, NULL),
(815, 'column', 'Column', NULL, NULL, NULL, NULL),
(816, 'your_email_address', 'Your Email Address', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE IF NOT EXISTS `logo` (
  `logo_id` int(11) NOT NULL,
  `name` longtext
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `name`) VALUES
(10, ''),
(11, ''),
(12, ''),
(13, ''),
(14, ''),
(15, ''),
(16, ''),
(17, ''),
(18, ''),
(19, ''),
(20, ''),
(21, ''),
(22, ''),
(23, ''),
(24, ''),
(25, ''),
(26, '');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `membership_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `timespan` varchar(50) DEFAULT NULL,
  `pay_interval` varchar(50) DEFAULT NULL,
  `product_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `title`, `price`, `timespan`, `pay_interval`, `product_limit`) VALUES
(1, 'Gold', '300', '30', '', 10),
(2, 'Platinum', '3500', '30', '', 50);

-- --------------------------------------------------------

--
-- Table structure for table `membership_payment`
--

CREATE TABLE IF NOT EXISTS `membership_payment` (
  `membership_payment_id` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `details` longtext,
  `membership` int(11) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `parent_position` varchar(100) DEFAULT NULL,
  `fixed` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `title`, `page_name`, `status`, `link`, `parent_position`, `fixed`) VALUES
(1, 'Home', NULL, 'ok', NULL, NULL, 'ok'),
(2, 'Categories', NULL, 'ok', NULL, NULL, 'ok'),
(3, 'Featured items', NULL, 'ok', NULL, NULL, 'ok'),
(4, 'Latest item', NULL, 'ok', NULL, NULL, 'ok'),
(5, 'Contact', NULL, 'ok', NULL, NULL, 'ok'),
(6, 'Blog', NULL, 'ok', NULL, NULL, 'ok'),
(7, 'Demo', '13', 'ok', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `page_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `parmalink` varchar(100) DEFAULT NULL,
  `content` longtext,
  `parts` longtext,
  `tag` longtext,
  `fixed` varchar(10) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(1, 'ok', 'Home', NULL, NULL, '[{"id":3,"status":null},{"id":4,"status":"ok"},{"id":1,"status":null},{"id":2,"status":"ok"},{"id":5,"status":"ok"}]', NULL, 'ok'),
(2, 'ok', 'Categories', NULL, NULL, '[{"id":4,"status":"ok"},{"id":3,"status":"ok"},{"id":9,"status":null},{"id":10,"status":null},{"id":11,"status":null}]', NULL, 'ok'),
(3, 'ok', 'featured', NULL, NULL, '[{"id":4,"status":"ok"},{"id":3,"status":"ok"},{"id":2,"status":"ok"},{"id":1,"status":"ok"},{"id":9,"status":null},{"id":10,"status":null},{"id":11,"status":null}]', NULL, 'ok'),
(4, 'ok', 'latest', NULL, NULL, '[{"id":11,"status":null},{"id":4,"status":"ok"},{"id":3,"status":"ok"},{"id":2,"status":"ok"},{"id":1,"status":"ok"},{"id":9,"status":null},{"id":10,"status":null},{"id":12,"status":null}]', NULL, 'ok'),
(5, 'ok', 'Contact', NULL, NULL, '[{"id":4,"status":"ok"},{"id":3,"status":"ok"},{"id":2,"status":"ok"},{"id":1,"status":"ok"},{"id":9,"status":null},{"id":10,"status":null},{"id":11,"status":null}]', NULL, 'ok'),
(12, 'ok', 'product_view', '', NULL, '[{"id":4,"status":null},{"id":3,"status":null},{"id":2,"status":null},{"id":1,"status":null},{"id":5,"status":null}]', NULL, 'ok'),
(13, 'ok', 'demo page', 'demo_page', NULL, '[{"size":"3","type":"widget","content":"<p><br><\\/p>","widget":"1,2"},{"size":"6","type":"content","content":"<p><strong style=\\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \\" open=\\"\\" sans\\",=\\"\\" arial,=\\"\\" sans-serif;=\\"\\" font-size:=\\"\\" 14px;=\\"\\" text-align:=\\"\\" justify;\\"=\\"\\"><br><\\/strong><\\/p><img src=\\"data:image\\/jpeg;base64,\\/9j\\/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP\\/sABFEdWNreQABAAQAAAA0AAD\\/4QMqaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI\\/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjUtYzAxNCA3OS4xNTE0ODEsIDIwMTMvMDMvMTMtMTI6MDk6MTUgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RDU5NTEyMkM3MTE3MTFFNThERDc4Q0VGODlFNTdFQjgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RDU5NTEyMkQ3MTE3MTFFNThERDc4Q0VGODlFNTdFQjgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpENTk1MTIyQTcxMTcxMUU1OERENzhDRUY4OUU1N0VCOCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpENTk1MTIyQjcxMTcxMUU1OERENzhDRUY4OUU1N0VCOCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI\\/Pv\\/uAA5BZG9iZQBkwAAAAAH\\/2wCEAAgFBQUGBQgGBggLBwYHCw0KCAgKDQ8MDA0MDA8RDA0MDA0MEQ4REhMSEQ4XFxkZFxchICAgISUlJSUlJSUlJSUBCAkJDw4PHRMTHSAaFRogJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJf\\/AABEIAIwBXgMBEQACEQEDEQH\\/xACOAAABBQEBAQAAAAAAAAAAAAADAAIEBQYHAQgBAQEBAQAAAAAAAAAAAAAAAAABAgMQAAIBAwMCBAQCBwYEAgsAAAECAwARBCESBTEGQVEiE2FxMgeBFJGhwUJSIxWxYnIzFhfh8YJD8KLRksJjgyQ0RCYnCBEBAQEAAgMAAAAAAAAAAAAAAAERMUEhAhL\\/2gAMAwEAAhEDEQA\\/APn+gVAqBUCoFQKgVAqBwFA4CgeFoHgUDghoPdlzQOEHQ0DvbAF\\/1UHoQreg9KkWvQOVAdaA6qT1oGMvmKBojF7kUDhF4jQeNA5UHh4UDxHfwoHex+qoPGiF7WoJEGOLg0VZwYZlh3gadBUVGzSuFC0sg+Cr43qDOOjy7pn8Tr8\\/IVplFcAE2qgdAqD21A9PbFrh\\/wDpoHPDKqhzFIi9N7Xsf1CgFrQeWoHISDcaEdDQT45BJGD+94\\/OsrDwtzaivWj9S\\/P9hoKqtMlQKgVAqBUCoFQeigcBQEUUDxQEUUDgAfnQEVNelAVIyetA4xqBp1oG7GJ060BUhubGgIMYeAsaB6Yx6sNKB3sjb6ep60DDjML20vQL2CNKDxYtemtAZYrG51+FAVIAdbVA9sTdqo\\/GipmLhMVB26D9N6gu8SCKKMFvq6gD+yorNd3uqpHECQ0jlwvhtX4\\/OrErMncTbw8hWkMeEnXW9TQB1ZTY9Ko83eVxQIFgfSaCTAma7KIwQb6MND871FXkXCSZESiVZDLYlpHcyN8dosFX+2pq4gcpwGRhsdCQACT86amK2II7COTQk2DdNT51UNkilhlaKRSsiEhlOhuKokYpuSq6gjUHrpUVIj6\\/tqKITqvz\\/YaCnrTJUCoFQKgVAqBUDgKB6igKoFAQKKB1jQEjTxoDLHfpQFjjNrUBREQBeg9ENx50BEiYkXFrUBxFr6hYUDjHY3AvQP8AbvY0HhjY6EfjQeezYGgaYDpfSgLHjjr5+NBJiw9xt4edQWeLx6hfUL+VFWeLxJlW6i23ppUVMg7fl\\/NRuV3XPpQ+NQc+78lD9z5UKjauHtx9o6bkF3t\\/1NWolVmLhBk3t1OtvhUtDpMMm48BTRHmwWvZlPyoGpw0jv6VuKaYm4\\/BhWuVuDpehidiYarIABYjTTW\\/4VFX+DiSJJuTy9VwSoI8SPhRVrncNFPjyRSgSOEYll0AYfhr8P1URyznuMk4\\/PeJtQfUrdLg\\/OtRHpjbM485LnfPj2RnLDdtAJUMOp9INj8LeVECwRtyL3XUdT0swsaKkqLN8KinEag\\/H9hoqnrTBUCoFQO2gC56Gg8vroPlQIE3FzQehbMfED9dARIybDxP0jzoHhbfCgegoCqtA8AfOgKiC9qA6IfAUEiJdRcUBSgP4UDljJAt0oJEcNwdLDzoCrjnp1oPfaIPS9qBqxi92FqB6oSaAnsLbpagG0Jv\\/ZQGhg8x86CZjQHd8BUFxj4pNjfSitHw+OALH561FaOPFxogs8g9MKtIQOpCjcQPnapR825U82fnT5Ti82XM8rD4yMWt+F60yuUgCIqgaoAPDwqNYa0A3H06HoRrUU5MMvu11PTwA8hQS4ePl3IjEgNoSNSflQSW4mXc4W+1SBe+hv4a6XoCYfHRRzRmSVIi\\/pUbhoT4+JoNPxnE4av7yze4vsmQIFKg7b9Da\\/ncUFo\\/GySxxx7VJkAMSE+pSR1X59NelBhfuR2tkN7WRFGyiNSoHUBRrtpEsYWDFlSJnAs8d1mFuqNoNPga0iKsTJMpUEbW0XxBB6UROYsHIk0f94dLGo0RPqHlf9lBT1pkqBUCoHIkkjbUUsbXsBc2HWgfHBLI22NS7+FvLpf5UB4VWPJCD+ZtIDOPAjqynwtQPHG5Up0DM7Fi1x\\/CNxY+PjQOTHMgSOFt9ui2sQx9TDxFgB1oDycTkQ4Uea+20zuixXG\\/+XYuxW97DcKASkICjKsii9vgSPqDL5UCVfxoDIgNBIijWgkKlumtAVVt0oHL8taAqjppcnrQSIyAug18QaBCUr8BQP8AcvoKD1F3adB11oCKh86BwYXt1tQIgGwGlASP0nSoJ+JofnQW+ISbCgvOOZlS9uh6VGl3AuVlL7KXX3AU3eIDem\\/6DUVwTB44xcvlY8gP\\/wAnJLGQTrdHK6n8KtrMWD21AHjqfP5DwqKEqhnGh1OhIuSPwoLLDWIq9iLjQKbD1efqoLTBxJSiTxkm58\\/Ta2vX9VBKbDX\\/ADHkDLcANJ13W12+GgorzDGC2eqRyCRx6toX09fl+NBuOOizMmJmZdkKAhTtuQP3lA0udNbUElcV5XREiOQ9wAVsSCCBvFuhb4GoJmRwGHIW992lLKfSTvXb9O0+Wt6DkvenauPhZGR+TT2W2q8Qv6ZFJ9axtbqtriqjAexGsyrLddzXl8W8VYW8G0q6h2SJJsmSV2DszasBtv4X2+FRXhiFwvj\\/AMDQUdbZe7Tbd4eJoPKCRhqGlAI3W127gpJ6DYf4qCbNxewo2NMrsLtMRuV4WHVJoyLrtOm5brQKHEyHJaKMvoBLEt0CmQ+lPir0FjxHF4uXnIlxjJPDMWdgSA8ILGJVFvU22y3PWiVf4D5W45EEv5cY6GKKT0o6mdvUWZ7kgL8aIWR26MnjY8n3VHtrHFhwEbXaKMn3fZZAEbQa6liTYUNV+ZjZgWNuTjDDAEkYxwQCnun3BHOyj+VHqQBu9y\\/lRVRLBixwpKkiGQhS8BJNrn6UPVhpr5DxN6KCLM5a20EkhR0AP7ov4CgkIBYWH\\/H40BkUA\\/CgMo\\/5UBVX46+AoCovyB8aAoQAXvagKpG3ppQPCqR0BNA0gAWtagQe2lxQP3rp50Dd12v4eNqB6ML6+FBJjCm2nXpQTcXQgGoLjEsLE0Vo+KQMA36qg03HtFjsk5IUrrcmwFvGorhkkOCO5ubjw8hcrFOVI8GQh3B0lJe401sxIq1DJYn3WJAAFyNKjSPFE5YGOxQ\\/gQDQWUERWZnkUrsS1yLr\\/ioJ+J+XXjPzhJtHIIitzt9Z27\\/DxoFnSxwrFGt5WN7r5A+bUE7tzisoyKZAuKuQ5tIxJYbdb+GgHWg2WLj4k87Y2O8k24KoYEqCQbOwjHgetBecTixYk8etjGQpjLHYGY39N9TpQaWLFx9kThQkrEXsLEG5YXv42orE\\/dricb\\/SM2UgcOrH23AA9seBtobeNEfO825JUcrvmVmL77bWtYa38wdKqHxYeZk4s+bDGZYMf1zuvVFvbeV\\/hv41BHJJYN5H9lBRVtk5SPxoHxIN4aRGKdTt0NvMG1BNx8YCGVQgeaNllSQXO6IAh9pOhtcGgn8O3GSTRNmyiAgvGMgqXUAL\\/wB5ddw8\\/wBtEaPjO2H7o5nGw8GFfWSEw8RiYp40H804c8xsumrJI3pF9vQCg18PYfbfGjN47C7j4OTk5p1kHGZGWNkYSMqYHyApLvckE+nUAnyomVnu64JON7vl\\/wBRYcfDSmKBWhY7kyoQCkuUDHvUiTZt9OmngaqZkavt7jsPLwXWHHny5mZmTAdwESJwpjIMfqicj1q3mPOqxqsf7fRxu2Thd19v4LToHUZWa8MgDHdHK8Lqrb1sfruL30rLqpe\\/Oy8zh+Hw+Sx7cjxzhhmc\\/j5UeZBLkyFQIVEKj2Ix0W\\/XpcHSisSt6DXcB2AOZ4uLk17j4Pj0lZozj8hkvjTJImrRsrx2JsQfSSLGgtsb7SZGTPHjYvdXbORkzMEhhi5AvI7sbBUVUuxPgKDIqhWR0I9UTvG3+KNijfrFBIxcXIysmLFxYnyMvIcRwwRKWkkc9FRRQayb7cS8fsi5\\/uLheBzn\\/wDscrJ3zrfUe4I9F\\/XQQO4OzuZ4CKLLymx8zi8pvbxuTwplnxpG67brZlPlcfjQVMPt+4kbyiGNmCtM6syxgn62CAttXqbCg1kf23MrhU7p7bkd\\/pRc+7E9dFCXoPP9ucl4Znw+4uB5B4YZJ\\/y+Lm+9M6QoZH9tETWyrQY6KRZYUlS+2RQ6300IvrQX\\/A9tpzWLLkf1riuKbGdY5Y+SnbHPr+hlYoyMHsba9RQWX+3ObMwh4zn+3+VzZDaLCxeRUzSHyjDKAT+NBmJ4MrEypsTLifGysZzHPjyja6ONdrD8bjwI1FBJgbTUG3jbX9VBrsPtDFMcUx7m4CJZo1ljSbMMMmx\\/pYxyIrC9qgnv2\\/j42Fl5sPN8RyK4GO+VPBhZQnmEMQu7hFXoKKkcZkhApv6W1A+dRVxG6ZULwzDdA6tHIvS6uNptb4VFcan4tuF7sz+Lc\\/8A06vtb+KIWeNvxU1WUWTk\\/cnNlvE1gR4k\\/Coo2LmQSAHaY2ViCfC3TXW9DWk4\\/GjmjEkcgcsQSt7HQfT+iim8ljyxcLM6x7YhlRe6BYekuBqv40ExOLWWUB02qgCANdWCj13IbqaCxOZJiSIsKpvg\\/wA1GsdgtcPfoN\\/gOtBJXm+YyZdkOZjo0tryxsikSDpuNgSbGx8DQ1a9uT9y+7+Zk2TSGyvHMd6PEDpJGlrqf13oOiSuBGjhbvKFYre43AfvUVjvudxvLcp24YcJ7CNjvib0h7j6b69BqKI5XP8AafkBBLyvLT\\/kuBwoBk5M7qXdQRYIkK\\/UztYKKC1weaPbfdXH9p8Kir27lYbT8nHOiPPlDIxXlY5MjD0LGBoiWA+N6Dkp0wlXzT8fpqoqK0yVA9ZJBorkabdD4eXyoJWHnzRyqwZg0e5oWFro58fVfQ+IoLLi8g4+PmSiGCSOdVjR8gbhHKf+7BH0LgXAZtFv50Rqez+Qze3JEaOLIxcfm4vyvKTyN7TNgzyBXlw3cjbIy\\/Q+utDV7yn2qw+QwcjE7I5DDy2lmAgw80\\/k+QSJgzHGtMoWRt9vULXAqpHOu717qHPTR91pNFzEMcULxTLtKxRoI4lQL6dm1RYroetRp0TtHuTm+E7bwuXEftLlRri5GSuOZXeCCX+Q7KvgOga3q86rnZ5aXu\\/s2TvBO15sNHyYv6dO35vIgcySFp09qKZwDtI3E2J0F7UXciu5rgYftn29yKZM4zk71R8QcLMphEKCPc2c5QN64XNgFQX3DW9RqOX5\\/EZPHrBFkALOYUkdAyv9RNm3JddVANr3HjRW17V4jB537Ycjw0vI8Zxma3NxZWMeVnXHQpHjxrL7TMGJNjY2HTrQR2+1E8WNk5eJzfb+dJgQS5jw4Ob7uR7eOpld41RL3AXrQZqBkaIOtyH9dybk7vVc38Teg2nZeVNw\\/a\\/O81xCe\\/3bOY+N4iKNfdngilAfKzEhW72VWtvtYECgyMOJGhaQj3ZZSWlmc73kZjdnd2uSSTQIYeKjh0iVH81Fv1CgKsbEknpQW\\/ZGJAO+OAYRIGHJYp3bRf8AzRregZ3HjY0PefcAx40xzByuYkJhURlF3kWQpbboSNKCAEjRBGo2qosAOgA6UGp7L4zI5HtfvfBxMZs7Km4yD2MdE9xmkEkhj2JY3YHUePlQQ+G+1XcvJ8hHj5vGz8FgqGlyeWyYRCmLHGpczBnKeoEaWPx0tQRe6O5D3Tzg5dYQiJjR4RydxLZpxmdVznUquwyIR6dbedAHH6ddfKg22TwvG81wHahPK8LgZHHYM8eZByORHDkETSK0FlZWYoNrWvprp41ADO7X4\\/j+ObPGdxXIYqyxYsp42cTOj5JKRq\\/tqLB7eJ1oqZjIigAj6RbaPKoq\\/wCHXchI8RpeoMt9x+2QvK4vc6jassZwMyM9NxQ+zKPnYqaDmGasUBKiNpHJI2f8qqILu7KsiPHCLHpcHcLehr3PSqJXGd1cnxk6yRbZNp1U39QGnj5iphrc9lZUfLYWdh5L3xeSAkUG11YPe6jW5U1F1v8Auj+ndpdnjuPkYf6jyTquNjQSErG8zKV3yEahVUE6fKg4hnd1853VyUWHmchFxWJKSyqo9iBTbR5Nnq16C5qojcTlcliZ0YwObTDmisZpJpJCgYAmQbdsgkVbWG296Ds\\/Yn3R5mNcROb4p4os2BpU5CWEQuWRtm+O3pkj+PpYePhUV0nHymlgR5PbcyKHeQfvbtBqehFRT8lElT8pKLxO6qfPUi5u36KK4T97O8O4sTv8cWMgrwkMMRw8KG6RMkq6tML\\/AM1tyka6DwqsoXf7Y2FynN8lHeLKIxOBx16H3Fxkk5GQDwAWyD\\/FQc9aUe6vlfp+BqimrTJ0cckkixxqXkchVRQSSToAAPGgvoewu7W45+Sl4nLiwE09+VPZS\\/nebZp8aBi9tZMMTZMqfmYIb\\/mRiH3jCV\\/dmdP5aHXqTaiLbg+U4iBkyWwPdQBYpBGZFkh1D+\\/E3qu8Q9Q3EKSOlEsdc7i38lj8a7yywQ5AZuS5bKKTTxQhFc5hxrBYbSOCBc6dBWmIHH2pk5PD8lHzHLcZyPHchNG68t+chXEiisrPOkRsyTC3UG9\\/Gpq\\/N1kO883t3uR8J5svJ5Di+CWXBwOQO05+fDGyl5MmZtihY2J9v03I1bU1Gtrb9m9v9vz8JFlzTNLiY8JDe22zJx8Yje0o2+l0udRtJOpArTn2s+QhGNyHDYEHPZWBh8lx0ribEy2XEUQMAksCD99hICwJt49ajfEYXmMPj4cTHbO5zKzufycpzyGdlXmMeKsTCFTDLH6N4kuibrnVhpaouswTgcjjyJJKTHgKiYnvKqyFiCvtJ7RWNIfHXX4kmir3ge3W5f7Z8hwbz8fi8qeZgzMaPPyI4AYRAivJCXubN9Nx8RRUPD+0fcD5MaYebwRypDsiEHJx+4xcbdie2m47gbW8aDMmEwyvAbB4JHhZR0DRMY2A+F1oL3svuaTtfufC5yKL3\\/y26PIhH1SY8o2yqt7eroy38RQXsn2\\/g5CaTK7O5Xj8\\/g5naWKPIyhjZOKrncYMmKUX9BNgfLwoKnuPhe3+Hhx48PuLD5nmQ5TkMLE3Okd\\/obHmC7HC9H3G\\/l5UFUo0160Fz2YCvefBOxAUcji3J0AHurQA7p3f617lt0\\/q+Zr\\/APEoK4eo2FBpO2YyvbPeGTHNNi52Bx0OXhzY0zwTK8Uj3IaJlLJqA4OnyoFwHI4fIM3B95ZmXncDydk\\/M5OVM7YOTYiLJUs9vbubOrXXoT0NBU8hxOXw\\/ITcTnqBlYhC74\\/8qaNheLIhPjHKvqH4jqKB0MY8Bag2eZ29Bzfb\\/ackOTxSTYOFkw5q5uTFDP65FaFbOCxC2bQ9L\\/GoBnspoMbIyop+LliwYWy8pMTMSR\\/ax\\/5hkaOMeoJ1F+hoqRx8iyAMDdWAIPmDrUVoOOyIoQFuLjw+HnUUPvUPldoZmwBmh2TRtfxjcN0+V6DmMiw7S4QWIPqsL6\\/CiKHJwYg7uIxe5Iaghtx8jMJHG\\/5a1UavtQfl8PEVXMeQTJICouQpc9fn4VFdY+4nC5vKdi8YmObTQbZyri+4gAMLNpqL2orguZwWXg8m8cie05ksxZSL7vM0R0b7ZcfwsXKwnM4yDIZSoDzPuWNjqGK2N\\/lag6ly\\/ORSPsx9geFTHGUjBAS9rLfp+iiicdjynEWWUE+yAFRiAy28\\/A\\/jQFyx+YlhLkqDIpFtANnrLH+6KK4d3zg81k9\\/873N3JgseO7YWJOLxLfyshPeEeADIPqjdn9x9bnUfKss19xpMmLk8Th8hvczeOhM3JyaerkeQb85k9P4A6J+FqDKMp3r8\\/2Ggq60yt+3eXzeLkyMjDm\\/KTiF1jyUjVpEZxs9MhsY\\/Sx9S6jqNaCR3jnZmV3LyWRlzzZl5ikcuTKZnaEH+US7EkgoosaCv47MEc0kUkssGFlKUyUgYrvQesIRezDco6\\/20HQVzsHiMLHHcG2XuDIWOXi+LxQC\\/GREK0PvWUKJJl22iO4+Mmp20ZovJd9T4mbPBl4UUmTO\\/wBZkdVgVk2PGUQn+bexZz6gR0ANqup8q3KxJGzduXDj50GyMRypGjMzP0ePaBfebC\\/jUAZuIx8dsm8i+3CrXiClHEm9Vki2jdsK3Op+odKK0PC8uMSHJwosiSCHIRooIitmEoFlge342bx+dVLFvwSplcU8Wufx2JGI+ShmYJmRZUrqrw4zBl2RSNtOg2sfSbNRGW7kxMjh+XOJjzSvx+XHFJiO8v8AIMTE7YZ7BArRyBtCoKG3TxjcVfM8Hl8WymZjEJ442aF\\/RL\\/NHue26XO7aupY6fjQR8bNmhj9tliyYLMBBkxJOg3dSocXU6dVIoq8t9v5eFiyTxGXxnOLM6QzcfkLJH6Aki5DDJUMG3naFVvSNb0RSrGxLM5Lu5LO5JJLMdzMSepJ1ooiemgI2Fi5B3zRRyMBoWUE2+ZFAWLHSMBUQRqOiqAB+AFARFsTfrQG2oybTqraEGg9aMkvIWaSSVi8sjku7serMx1J+JoGiIA3tqKB5IIKAsu9WjcISNyP9aNbqreIoE5XbYjS1jfUEUDIgFCKGYpEpSJCSVjQndsjB+lb62GlBJicWB8KgJ+S42V\\/cyMeKZz1d0VifxIoqwxMDi1uYseOBmVkLwqI22sNrIWWx2sNCOhoNDxiqqBVFgoAW3kKipqRze+hsbE2uPGorRTcFLy3bmfx0JCT5GO8cDE2G+25dx+YtQcRkkzMSSTDzY2gy8dzHNHINrI4+pWFBHlVmAYX11t5CgGGVB6h+nQURb8St8qLd6EUXv8Awg9CKK+jeBzYsvFixiPdtEsUmoeMMq62+QoMT9xOJwptmBJEEyo1vj2A3srX3bX6jUaUHPuHw8uHIIiZ5I4DbdfaQCfGg6X2zxE0sMeRJIhDEEIbNtv16\\/DzoNdBAvsqNGjFxGCBr1sG+HlrQVfd2UvAdvZnNk7zjqiwj90+46oQfP6r0Gc53u3t9+25+W5iUDgZ5I2TFlP87JfEk92CPDitu\\/mMAGPQAXqQfPPJZ2TyeflcnmG+ZnzSZE5\\/vysXI\\/C9hWkQyBcfP9lBT1plIwhI8wgV1RJT6t7BV9OoJY9KB0\\/sDHYKd7+5tR7HRFHTcbeflQaPsfiuLGPyXOco3uYfG4jELGA7pkZG7HxrqxX1CSzC1xbU+VEofZ\\/NcdHyuNDyqzT4658Ge2XGf58fsXef21\\/eaRQOreAoAcnl4SZ+cuNFtEkjGCZ5TKUV236MRdi6W1OtzRVnws2\\/Aw1WY5KQZAj\\/AKfG0i5QEgMjtAf8u21Gt5H50QZJIl5RZI3RVk92NXdtFgW6AOb+DMG3H9lBGw8rKsQksW2IySSyyOLSAAbirfUd1x8CaAsvcOacwZuJImNMsPsAImkuPJrJjzhrq4Xrdhc6eQoovIZXv9v8fFPN72Y2RktISblYwsSD3GPqYu2t21NBNyeZl5PtuDiOTeGSfi4hLxWa5tMkSkq+EWF2lEt9wDf5ZF720oKdlgEa+2WaRtXUgbR5WN9T56UFlkY4\\/pmMY9IsaSSIBvqcyn3WkI8LWC0AMbGnyZ48XHiefJmbZDDEhkkdvJUUEmgLJx2XBmNgzQSx5yOI3xWjYTiQ6hPatuufDSgnxdv882fJxsfG5bclCoeTDWCQzKh6O0dt20+fSgkt2x3Qkiwvw+ck8l\\/bjbGlDNtF22jbc2HWgWR2z3Hh40mXm8Tm4uLCN0s82PIkSj+J3ZQAKCvBNtD+FA9UPUdaB3t6a0AmjYHTQUDFuL3oHpt0vQHUrpY0BoySbfqqKscOEkqR+g0Gm42Ahb3sAPCorT8NixMQZNXNrGoNXBDFjRGwFiNBoD86iuF\\/eHGGN33LkAhkz8aCcHxLoDE\\/XqbqKozUMgew6\\/8AGiI+diy5Egjg1UWZgPCx8fxoLfh0dJAXQl2O1beOm0\\/O96DtnZeNmScHM+Exjz1gPtHaFQNrtUDzJGp+NFZT7lwcxBFwfJ5ryJkShoZoSTuLIQVe46aOQaIsO3OBxORxzkRWZ4xci4BsTZfp8eutFazicVMeNYVQNIwuQo9N2N77T0tY9agnwzkySJsYmMj6CCCVH07mA1v0FqDHferM2\\/bPKjLlWyJokXcCCSJQ5C31stqo+cM0vI6tNI0siiys7FyB5Dd0\\/CqjxFGzzNQBI9Y+f7Kopa0ydG7RyK6\\/UpBH4UEx038Q0x2qRkABLtc70JJUfSLbRfx6UEviuZy8TtrmuMiyEig5P8qciAoGeYY8pkTY\\/wC5sY7j50ELi55VzYdnUMbfulrqRtLfHpQTOdTCj5ES4DJ7GVDDkBI1KJHJKgaWFAxLbY33KCetqCX2xj8fJyEUuXysfEnHdHWWRJXJXUsUMQNitvp8fChT+Pnhm5z34oR+VDmX2v3UhiJcE36Ktgxv8jQIyWfI\\/NbmzN++Q6AOzn+ZbbYD+IafDpQeRQTyRsyIzrHqxUFtoP7zW6D4mgss7HixosWMK4yJ4FlyhKu0ozOxjEJ\\/haOxJ8aCUxlXgEKIRizSrEzEKB78d5f5Z+r6CL+HnREFL+Q+XQUVcco+RDx+Dg+4ZcIRGfEZrfRI5JeJdWRXfdoetBoO3BPxn285DkuJUv3V3NyCdu8S66SQo6q0zRkaqWBb1Dp6T4UGs7ln4\\/tr+sclxKnI7i4Di+M7V4uRRvY52QrH3EJuWlWKRdTroR50ELmuD5ybmOD+3fDZzY2TjcNCe6OUQgyRRJL76q+R9a2dnYKGG7cL+mgiZX3PwsfkoxwMkk\\/B8JC+HxqSDJbJyyP82b80rIFE7hPWzGyKbLdrUGRzuR7g5h5Juc5PLznnIaSAzy\\/lhY3VFg3bNqnpcUAwrD8PCgcD4dBQIk7SRf5igH169f1UAplP\\/KgbYqo118qB8ZJqCwxl9QvRVxjOigC1ifE0GhwJEEOhu\\/wqKvuLy1SWIWtf462qK0wzTLEQSNBp5+VQcp+9GJNPDxvKkXXGZ8SWw1CyHfGSfmpFUc6gmNyPh8+nn86IZPlyo5kViJCtj8B4C1Bedn81xhykXkZUxvbO8CXeVbb1sYwf\\/VPWg7R2v3129PxmVjdrO2TLixqZM6aN1xy5BAEYbazKpFvD51dGR5vvbkOR5OTH5xEmCwtj+xAp9lRdS0sZO5mdrdL+FQXPaeU\\/DSw4i5Bl4fOlWOLKK2KiT\\/syEfvWGlFbw4i4sytGoIcMxVT6lGmoJ02nx+FBFyJjvCxhoyx9IIsy6XX2\\/wB6+7zoMF9\\/cor2bi45LMXzoVZtpAJ2tJa3gfT40HBcndf5+dECR2FwKoeYztDePW9QUNbZKgnYmNNk8bmFCNmJsncG17Fva6383HhQQgaAmM\\/tzxyeCOpPyBoJU8TqfW2qkpHGb7hGCSrdLbfKgUW5SGU7WGoPlQWuA+QmJmT48arHIoiyQBcCKysR8Fkk23+OlAMzNLK8jIiNIblY1CKP8CjRR8qCdxmPm5WQuJgwtkZc24JCjFDJcWCH1KLA+qgmcou7lJYlyo+Q9vZCmUCfab20CWQtb0qQVB6HqNDQeTH+Y0MbAxJZB0tZetjra7eXWgYouwW+25Av5X0vQSMj23yCsN\\/aiCxR7tCVQbdxv\\/F1tQWXD9x9y8NG8XD5v5NZHMt2iim9uVkMLTwe8re1IYzsLL4UHnDcxzfBtLJxmWVycmQZE82THHlF8hSWGURkB\\/5wLtZxrrQeY\\/Nc\\/i4\\/JwwchMr8\\/ccvksEknyVIZSrSuCyizkem1AGFkRQgFlHQAAADyAGgFAdWFtP00DXcai\\/SgZ7hOnjQO1I8dKBAf+BQNYWtegTRk9RagdHHqOoFBMjjYWPQ1FT8ZWNvC1BcYszxpddb26+FRV5xc0sliSOoItUVdYmczFmc7iBoD4f+BQVfdcGNy\\/EZGBISkWQthbqsgN45APgwoOKPBkcfyEmHmp7WRjttmT4jUEHyPUGqh748WUwRJk9619pYAnW+t6BY\\/GZGPDNO8ZsgtdRc+o2NqI6l9jcXKnwMzZCzOjMI94AhHoKMX87qbC9Rpc4v23x8KPJ5PnciDCg3O0ayzKI1APpuxOjBaCdw0PbnI9szYuNmRchCu38s8UgCq4vtdAvQg6i4vQa2LL9zi8RcpryyRKGbVRvFtXsNKCn5nmMbiYmfKdFiZykGKHtJkO5AHUXXaup+FBD7q7Um7g+23OccimTPscjEe93bIxwJ49p8GYjZ+NX1Svl6PPXMiBYj8wotIPP+8KVIGjkNb40VKJOg8L\\/sqDP1tkqByOVv1swIIvagbQEQX0oJTSvNIZJDudrXPnYBf7BQEQXoLSFieHeIFmklyVUIDoY40aTVPg7XB86AEYBt5edBddt8lFxOZNyBBbKixZkwFAOmTMvspKW\\/d9tXZr+elBDjXaioOg0oDKn4UBorLdhuEgtsYaAfxX\\/CgOItotbaRpQEVbLp1oHDpQIhmA11oEkVjobUBVR+nhQe+yQ2nXzoHiIfu9aAgiYDpQeWVbedAOQFiLCg9W40I0oHlraioCxTtYki48qCZi5RRhpe\\/h8KKtsWVX9I8et+lqitBxkqIoCnbp0qKk74ZGLIWBQ2A6X\\/AAFALLkjkX25L7hqpXrag5\\/3lJxnO8lx\\/F8NGcvuRnMKmK2149pb2ZG6M423W1WJWTkx4Xi2Mtr+pWIsd3iLeB8KGLDhO3u6pC0nDPIUJClVZSjX6ArJp10oY12D2Z9yudmTjOQ5uPjsaNQGxRkRwpGo6XgxiHa\\/66g2\\/af287R7UDZN\\/wCuc5J6Tm5a3ihv1ESylgp\\/vdTRUxezMY8gOR4+OJPdd4pyBsTf1uVBG4\\/C1vGg0E\\/McdxWG0uTJ7YgujqjXeScjd7US2G9m\\/Rag5vzvJT8nyMmRluzuF2RxKD7UYuGWCEHW7sRcnUn8KI7N2\\/gzYPD4uPkHdkrGDOf\\/eNq36DpWolfFffGAnFd7c3gwemPE5DKjitpZFmYKP0VUQcfLRyBJZX8\\/A1mxYmmQ6aj5\\/hRdUlaZKgVB6OtAVBQGTrr0oDIKCWtzjIBb0uxNuuth1\\/CgepsaCRG2nzoDx7r3GtAcIx+VAeNWAsKAyqSfIedAdIha460HjxnqKBKu0ajWgeFBHl50BUB6dfKgfGLnb1+JoCCNVNB6wXW16AXt7jfpb8KBjIyjT9NA0hha56+VAWGPcf7tQHihUaWsKAgQr8hRUrGJ2byCHv6Re1RU+TkYcYK+RkCCw\\/eNj8gKgr5vuDFjs\\/5XHOVIT6ZGPtxi3j4sauGs1zPdXP8mSs+R7UBv\\/Ig9C2PgSPU34mriaP9sFC\\/cnt3SwGYBb5xvVRq\\/vH9u5uD5puawEvwvLSNI4UaY+U3qeP\\/AAyG7L8bjyrDTnvty7tpdgDpe5X9NBaduY0Y5BJCWspJ0YhjfwuNRQdk7X7b5JB\\/Ucx3lw0PuxIzF3aN\\/SLs2l\\/DaRe1FX55DA4vCy5eQZTi4Squxdw1c7oY083vr06UHPOW7sXPy5eUzXXHxo4\\/Sh9SY0OlxGxH1HxNtx6CoNX9s+zM3Mmj7m56A48SNv4fj5F2uoP05mSnhIR9CH6BqfV03IzrptVHwz3tm\\/nu8ubzL3GTyGXID8Gmcj9VBTUDvcfbs3HafDwoG0CoFQOWgMgoCoDQGQa0EqN2Tay2+I6gi97MP2UBi3uPv2qhP7qDav4DwoCot6CRGQNKA8bHx6UB0\\/VQHjRjqBpQHAIFxoRQItbxJNA0Ek+fnQPBHXpQGiKAXtr0NAVTHf5+VA5rW060DbmxPQUAy6ggeNA0y2P\\/AKaBpkHgQTQewysG66UEoTggEkCx8dKivJszGRfQxdj1A6fpoiHPyuYRsRhEp8V1P6aYK3IMjMXcl2PVibn9NUBZjbTrQBc0F\\/8Aa1N33J4An93K3H8I3qUj6j5HjcHlMCbBzoUycPIXZLFINysOuo\\/XWWnCe+uzOH7P5JZcpsjF4zMusObKvv4+7oIXkiHuRsOt2XUaA6UEbt\\/kvt7j5yBeRScCwYrFLtOgswug1XXcaK3fJ\\/d3tfj8Ux4sOVyKhSEIUY6OwA2lnk9XyKjSia5R3X9zuQ5J0nz5PeyBdUii9EaIT\\/lon7TqaGujfar7U8hkDF7i7yj2CIibi+EcaRt9S5OYp+qX+FD9Hj6tBqRNdiqohc5yKcXwufyT6Jg402Q1\\/KJGk\\/8AZoPg93eR2kc7nclmJ8SdSaBtAqBUCoFQPWgKtAVDQFU0B0PTX5UEmM0B1vQSI1vpQFVdvxoDRgEi3yoJsNgKAoa4sdDQeCO2vWgTKRrbSgVgelA+K9rAXsaAoIHTp4mgeZBpbX40AZGLGwNqARO3x9VA1mD9NDQMvYHTXxoPPeIt8OlB40u8erW1ANpiunj0FANpNLH9FAJibdfwoAljc0A3GulBpPtYP\\/2FxTHojyN\\/5CP21Lws5fVC\\/QvxFZXtG5LjeN5XBm43ksdMrCykKTQSLdGB\\/bSFfOn3J+yfN9oSyct2\\/wC7yXbwu7qPXk4o6n3FUXeNR++NR+951plgVzOb5bIx+OxEfKyshhFi40I3O7HwUD+3wpg7\\/wDaf7FYXbhi53uUJn9xaPDD9cGGeo2eDyjxfoD9PmaOr0CoMT97+RXj\\/tZz0pbaZoBjL8TkSLCR+hzQfG1AqBUCoFQIUDxQFSgKt6AqUBkoJCbtKCRF+NBKjvbSgkJ0+FAZfjb\\/AIUB47W06UBRfTrQejdcW\\/C\\/Wg8bffX8KBwvfWgKu2xvQeGg8N\\/woHi9jfr4XoI81tpv0oBi\\/h0oGPfwvagYf73TwoHDZb1X+FA1vG9r\\/qtQBP169fCgXo+G7xoASW\\/G9AFvqPn4UGn+1Vv9ecff6rPa\\/wAqntwsfUCe77a3\\/wCnztWW1R3X\\/q\\/+kt\\/pX8n\\/AFXXb+f9z2\\/+j29N3+LSkSvnjvn\\/AHv96T\\/VH9V9m5v+V3fkv+n8l6LW\\/irbCo+3\\/wDuD\\/XW\\/wBDX\\/q\\/t\\/zLfl7e1uH1\\/mdNt7XtQfTXYv8AuF\\/Tv\\/zX8h+bt\\/L\\/ACO\\/f1\\/71\\/5d\\/wDBpQaSgVByz\\/8Apv8AMf7ZN7X+X+ex\\/f8A8Hrt\\/wCfbQfKdAqBUH\\/\\/2Q==\\" data-filename=\\"banner_1.jpg\\" style=\\"margin: 10px; width: 100%; float: right;\\"><p><strong style=\\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \\" open=\\"\\" sans\\",=\\"\\" arial,=\\"\\" sans-serif;=\\"\\" font-size:=\\"\\" 14px;=\\"\\" text-align:=\\"\\" justify;\\"=\\"\\"><br><\\/strong><\\/p><p><strong style=\\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \\" open=\\"\\" sans\\",=\\"\\" arial,=\\"\\" sans-serif;=\\"\\" font-size:=\\"\\" 14px;=\\"\\" text-align:=\\"\\" justify;\\"=\\"\\">Lorem Ipsum<\\/strong><span style=\\"color: rgb(0, 0, 0); font-family: \\" open=\\"\\" sans\\",=\\"\\" arial,=\\"\\" sans-serif;=\\"\\" font-size:=\\"\\" 14px;=\\"\\" text-align:=\\"\\" justify;\\"=\\"\\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/span><span style=\\"color: rgb(0, 0, 0); font-family: \\" open=\\"\\" sans\\",=\\"\\" arial,=\\"\\" sans-serif;=\\"\\" font-size:=\\"\\" 14px;=\\"\\" text-align:=\\"\\" justify;\\"=\\"\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\"de Finibus Bonorum et Malorum\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\"Lorem ipsum dolor sit amet..\\", comes from a line in section 1.10.32.<\\/span><\\/p><p><span style=\\"color: rgb(0, 0, 0); font-family: \\" open=\\"\\" sans\\",=\\"\\" arial,=\\"\\" sans-serif;=\\"\\" font-size:=\\"\\" 14px;=\\"\\" text-align:=\\"\\" justify;\\"=\\"\\"><br><\\/span><\\/p>&nbsp;<br><iframe src=\\"\\/\\/www.youtube.com\\/embed\\/qE3DfF66DNA\\" width=\\"100%\\" height=\\"360\\" frameborder=\\"0\\"><\\/iframe>","widget":""},{"size":"3","type":"widget","content":"<p><br><\\/p>","widget":"3,4,5"}]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `payments_id` int(11) NOT NULL,
  `user` varchar(200) DEFAULT NULL,
  `package` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `method` varchar(200) DEFAULT NULL,
  `cause` varchar(200) DEFAULT NULL,
  `timestamp` varchar(200) DEFAULT NULL,
  `details` varchar(5000) DEFAULT NULL,
  `info` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payments_id`, `user`, `package`, `amount`, `status`, `method`, `cause`, `timestamp`, `details`, `info`) VALUES
(2, '1', '7', '100', 'due', 'paypal', 'product_package', '1450747390', NULL, '11'),
(3, '1', '7', '100', 'due', 'paypal', 'product_package', '1450747432', NULL, '11'),
(4, '1', '7', '100', 'due', 'paypal', 'product_package', '1450747577', NULL, '11'),
(5, '1', '7', '100', 'due', 'paypal', 'product_package', '1450747673', NULL, '11'),
(6, '1', '', NULL, 'due', 'paypal', 'product_package', '1450785612', NULL, '11'),
(7, '1', '7', '100', 'due', 'paypal', 'product_package', '1450786352', NULL, '11'),
(8, '19', '7', '100', 'due', 'paypal', 'product_package', '1452083106', NULL, '28'),
(9, '19', '7', '100', 'due', 'paypal', 'product_package', '1452083374', NULL, '28'),
(10, '19', '7', '100', 'due', 'paypal', 'product_package', '1452083452', NULL, '28'),
(11, '19', '7', '100', 'due', 'paypal', 'product_package', '1452083520', NULL, '28'),
(12, '19', '7', '100', 'due', 'paypal', 'product_package', '1452083563', NULL, '28'),
(13, '19', '7', '100', 'due', 'paypal', 'product_package', '1452083758', NULL, '28'),
(14, NULL, '2', '10', 'due', 'paypal', 'product_package', '1466509720', NULL, '53'),
(15, NULL, '2', '10', 'due', 'paypal', 'product_package', '1466509748', NULL, '53'),
(16, '1', '2', '100', 'due', 'paypal', 'user_package', '1466510398', NULL, NULL),
(17, '1', '2', '100', 'due', 'paypal', 'user_package', '1466514438', NULL, NULL),
(18, '1', '2', '100', 'due', 'paypal', 'user_package', '1466514667', NULL, NULL),
(19, '1', '2', '100', 'due', 'paypal', 'user_package', '1466517302', NULL, NULL),
(20, '1', '2', '100', 'paid', 'paypal', 'user_package', '1466613297', '{"mc_gross":"100.00","protection_eligibility":"Ineligible","address_status":"confirmed","payer_id":"QXCY8C6X8J4VG","tax":"0.00","address_street":"1 Main St","payment_date":"09:39:27 Jun 22, 2016 PDT","payment_status":"Pending","charset":"windows-1252","address_zip":"95131","first_name":"Active","address_country_code":"US","address_name":"Active IT","notify_version":"3.8","custom":"20","payer_status":"verified","business":"kadir_bm@yahoo.com","address_country":"United States","address_city":"San Jose","quantity":"1","verify_sign":"Ai38-2NWNzEDBvUaYo2H33DKMOSlAfEaKkrv9ZxjqakqWVuumWuXJJCS","payer_email":"system@supershop.com","txn_id":"2LN21159HN999870B","payment_type":"instant","last_name":"IT","address_state":"CA","receiver_email":"kadir_bm@yahoo.com","pending_reason":"unilateral","txn_type":"web_accept","item_name":"","mc_currency":"USD","item_number":"","residence_country":"US","test_ipn":"1","handling_amount":"0.00","transaction_subject":"","payment_gross":"100.00","shipping":"0.00","ipn_track_id":"ee1b62de5a775"}', NULL),
(21, '1', '2', '10', 'paid', 'paypal', 'product_package', '1466621611', '{"mc_gross":"10.00","protection_eligibility":"Ineligible","address_status":"confirmed","payer_id":"QXCY8C6X8J4VG","tax":"0.00","address_street":"1 Main St","payment_date":"12:00:45 Jun 22, 2016 PDT","payment_status":"Pending","charset":"windows-1252","address_zip":"95131","first_name":"Active","address_country_code":"US","address_name":"Active IT","notify_version":"3.8","custom":"21","payer_status":"verified","business":"kadir_bm@yahoo.com","address_country":"United States","address_city":"San Jose","quantity":"1","verify_sign":"AGVEEc4wpa8s8HMmbqwXtzwy-R0pAa8R9E7oz7YX1KlcB1jVeL.uOMUL","payer_email":"system@supershop.com","txn_id":"47M92053DD099745S","payment_type":"instant","last_name":"IT","address_state":"CA","receiver_email":"kadir_bm@yahoo.com","pending_reason":"unilateral","txn_type":"web_accept","item_name":"","mc_currency":"USD","item_number":"","residence_country":"US","test_ipn":"1","handling_amount":"0.00","transaction_subject":"","payment_gross":"10.00","shipping":"0.00","ipn_track_id":"301f3c0fdb526"}', '1'),
(22, '1', '3', NULL, 'paid', 'stripe', 'product_package', '1466622314', '{"ch_type":"product","product_type":"3","payment_type":"stripe","stripeToken":"tok_18PGigKmGdRDZlHSU4w3mqvW"}', '4'),
(23, '1', '3', '200', 'paid', 'stripe', 'product_package', '1466622435', '{"ch_type":"product","product_type":"3","payment_type":"stripe","stripeToken":"tok_18PGkcKmGdRDZlHSPFbXy2oY"}', '7'),
(24, '1', '2', '100', 'paid', 'stripe', 'product_package', '1466624928', '{"user_type":"2","payment_type":"stripe","stripeToken":"tok_18PHOqKmGdRDZlHSnl3LkQGH"}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES
(1, 'staff', 'admin', 'parent', ''),
(2, 'edit', 'admin_edit', '1', ''),
(3, 'view', 'admin_view', '1', ''),
(4, 'delete', 'admin_delete', '1', ''),
(5, 'banner', 'banner', 'parent', ''),
(6, 'edit', 'banner_edit', '5', ''),
(7, 'view', 'banner_view', '5', ''),
(8, 'delete', 'banner_delete', '5', ''),
(9, 'brand', 'brand', 'parent', ''),
(10, 'edit', 'brand_edit', '9', ''),
(11, 'view', 'brand_view', '9', ''),
(12, 'delete', 'brand_delete', '9', ''),
(13, 'business settings', 'business_settings', 'parent', ''),
(14, 'edit', 'business_settings_edit', '13', ''),
(15, 'view', 'business_settings_view', '13', ''),
(16, 'delete', 'business_settings_delete', '13', ''),
(17, 'category', 'category', 'parent', ''),
(18, 'edit', 'category_edit', '17', ''),
(19, 'view', 'category_view', '17', ''),
(20, 'delete', 'category_delete', '17', ''),
(21, 'contact message', 'contact_message', 'parent', ''),
(22, 'edit', 'contact_message_edit', '21', ''),
(23, 'view', 'contact_message_view', '21', ''),
(24, 'delete', 'contact_message_delete', '21', ''),
(25, 'site settings', 'site_settings', 'parent', ''),
(26, 'edit', 'site_settings_edit', '25', ''),
(27, 'view', 'site_settings_view', '25', ''),
(28, 'delete', 'site_settings_delete', '25', ''),
(29, 'product', 'product', 'parent', ''),
(30, 'edit', 'product_edit', '29', ''),
(31, 'view', 'product_view', '29', ''),
(32, 'delete', 'product_delete', '29', ''),
(33, 'report', 'report', 'parent', ''),
(34, 'edit', 'report_edit', '33', ''),
(35, 'view', 'report_view', '33', ''),
(36, 'delete', 'report_delete', '33', ''),
(37, 'role', 'role', 'parent', ''),
(38, 'edit', 'role_edit', '37', ''),
(39, 'view', 'role_view', '37', ''),
(40, 'delete', 'role_delete', '37', ''),
(41, 'sale', 'sale', 'parent', ''),
(42, 'edit', 'sale_edit', '41', ''),
(43, 'view', 'sale_view', '41', ''),
(44, 'delete', 'sale_delete', '41', ''),
(45, 'slider', 'slider', 'parent', ''),
(46, 'edit', 'slider_edit', '45', ''),
(47, 'view', 'slider_view', '45', ''),
(48, 'delete', 'slider_delete', '45', ''),
(49, 'stock', 'stock', 'parent', ''),
(50, 'edit', 'stock_edit', '49', ''),
(51, 'view', 'stock_view', '49', ''),
(52, 'delete', 'stock_delete', '49', ''),
(53, 'sub category', 'sub_category', 'parent', ''),
(54, 'edit', 'sub_category_edit', '53', ''),
(55, 'view', 'sub_category_view', '53', ''),
(56, 'delete', 'sub_category_delete', '53', ''),
(57, 'user', 'user', 'parent', ''),
(58, 'edit', 'user_edit', '57', ''),
(59, 'view', 'user_view', '57', ''),
(60, 'delete', 'user_delete', '57', ''),
(61, 'newsletter', 'newsletter', 'parent', ''),
(62, 'language', 'language', 'parent', ''),
(63, 'page', 'page', 'parent', ''),
(64, 'Discount Coupon', 'coupon', 'parent', ''),
(65, 'vendor', 'vendor', 'parent', ''),
(66, 'membership', 'membership', 'parent', ''),
(67, 'SEO', 'seo', 'parent', ''),
(68, 'Membership Payments', 'membership_payment', 'parent', ''),
(69, 'blog', 'blog', 'parent', NULL),
(70, 'slides', 'slides', 'parent', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `tag` longtext COLLATE utf8_unicode_ci,
  `address` longtext COLLATE utf8_unicode_ci,
  `brand` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` longtext COLLATE utf8_unicode_ci,
  `additional` longtext COLLATE utf8_unicode_ci,
  `images` varchar(6000) COLLATE utf8_unicode_ci DEFAULT '[]',
  `email` longtext COLLATE utf8_unicode_ci,
  `phone` longtext COLLATE utf8_unicode_ci,
  `condition` longtext COLLATE utf8_unicode_ci,
  `category_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_trace_key` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(200) DEFAULT NULL,
  `langlat` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '(0,0)',
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  `ad_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `premium_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_viewed` int(25) DEFAULT NULL,
  `date` longtext COLLATE utf8_unicode_ci,
  `featured` longtext COLLATE utf8_unicode_ci,
  `admin_featured` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_till` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8_unicode_ci,
  `s_till` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_package_detail` varchar(5000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `shown` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(1, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', '401 W 14th St, New York, NY 10014, United States', NULL, 'SE', '[{"title":"Power and Battery","details":"Built-in rechargeable lithium\\u2011ion battery"},{"title":"Headphones","details":"Apple EarPods with Remote and Mic"},{"title":"Sensors","details":"Three-axis gyro"}]', '["Untitled-2-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'b1d5124d88feedaa6e91b7f7216fca', 400, '(40.7413536, -74.00553560000003)', 28, 'free', '', 1468445816, '1459159816', 'ok', NULL, '1467485814', 'approved', '1475261814', '{"package":"2","activated":1466621814}', 'ok'),
(4, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', '  Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[{"title":"Power and Battery","details":"Built-in rechargeable lithium\\u2011ion battery"},{"title":"Headphones","details":"Apple EarPods with Remote and Mic"},{"title":"Sensors","details":"Three-axis gyro"}]', '["Untitled-1-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'b6dfad7d9b0ce84f9f1ce832efaab4', 400, '(0,0)', 5, 'free', '', 1468445804, '1459159897', 'ok', NULL, '1475262314', 'approved', '1497726314', '{"package":"3","activated":1466622314}', 'ok'),
(7, 'Rolls Royce', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'rolls royece,car', ' 5300 Lemmon Ave, Dallas, TX 75209, United States', NULL, 'Rolls Royce', '[]', '["Untitled-13.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '2', '6', '1', 'b1d5124d88feedaa6e91b7f7216fca', 2000, '(32.8264219, -96.82174880000002)', 16, 'free', '', 1468445487, '1459159816', 'ok', 'ok', '1475262435', 'approved', '1497726435', '{"package":"3","activated":1466622435}', 'ok'),
(10, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', '  Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[{"title":"Power and Battery","details":"Built-in rechargeable lithium\\u2011ion battery"},{"title":"Headphones","details":"Apple EarPods with Remote and Mic"},{"title":"Sensors","details":"Three-axis gyro"}]', '["Untitled-1-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'b1d5124d88feedaa6e91b7f7216fca', 400, '(0,0)', 0, 'free', '', NULL, '1459159816', 'no', NULL, '1459159816', 'approved', '1459159816', '{"package":null,"activated":1459159816}', 'ok'),
(11, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', '  Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[{"title":"Power and Battery","details":"Built-in rechargeable lithium\\u2011ion battery"},{"title":"Headphones","details":"Apple EarPods with Remote and Mic"},{"title":"Sensors","details":"Three-axis gyro"}]', '["Untitled-2-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'b1d5124d88feedaa6e91b7f7216fca', 400, '(0,0)', 0, 'free', '', NULL, '1459159816', 'no', NULL, '1459159816', 'approved', '1459159816', '{"package":null,"activated":1459159816}', 'ok'),
(13, 'HMV - Hummer', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', 'Cerritos HUMMER, 10901 183rd St. Cerritos, CA 90703 , (562) 865-3880', NULL, 'H-360', '[]', '["Untitled-12.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '2', '6', '1', 'b1d5124d88feedaa6e91b7f7216fca', 1500, '(33.8583483, -118.06478709999999)', 7, 'free', '', 1465329634, '1459159816', 'ok', 'ok', '1459159816', 'approved', '1459159816', '{"package":null,"activated":1459159816}', 'ok'),
(14, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', '   Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[{"title":"Power and Battery","details":"Built-in rechargeable lithium\\u2011ion battery"},{"title":"Headphones","details":"Apple EarPods with Remote and Mic"},{"title":"Sensors","details":"Three-axis gyro"}]', '["Untitled-2-1.jpg","Untitled-1-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'b1d5124d88feedaa6e91b7f7216fca', 400, '(0,0)', 1, 'free', '', 1459163311, '1459159816', 'no', NULL, '1459159816', 'approved', '1459159816', '{"package":null,"activated":1459159816}', 'ok'),
(15, 'HMV - Hummer', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'auto,four wheels, hummer', '8707 Schumacher Ln, Houston, TX 77063, United States', NULL, 'H-360', '[]', '["Untitled-11.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '2', '6', '1', 'b1d5124d88feedaa6e91b7f7216fca', 2000, '(29.7278101, -95.51720769999997)', 0, 'free', '', NULL, '1459159816', '0', '0', '1459159816', 'approved', '1459159816', '{"package":null,"activated":1459159816}', 'ok'),
(16, 'Kawasaki Ninja', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'two wheels,ninja,kawasaki,', ' 101 Thermos Rd, Toronoto,, ON M1L 4W8, Canada', NULL, 'Ninja-1000', '[]', '["Untitled-10.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '2', '5', '1', 'b1d5124d88feedaa6e91b7f7216fca', 1400, '(43.73148219999999, -79.2821439)', 7, 'free', '', 1463357875, '1459159816', 'ok', 'ok', '1459159816', 'approved', '1459159816', '{"package":null,"activated":1459159816}', 'ok'),
(21, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone,iPhone SE,apple', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[]', '["Untitled-1-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', '826f17204eaf79f7cc4183985969e6', 350, '(0,0)', 1, 'free', '', 1459255966, '1459255068', 'no', NULL, '1459255068', 'approved', '1459859868', '{"package":"1","activated":1459255068}', 'ok'),
(22, 'iPhone ', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone,apple', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'apple', '[]', '["Untitled-4.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'aa91783e62db5e71285e2243edac33', 400, '(0,0)', 1, 'free', '', 1459255950, '1459255339', 'ok', 'ok', '1459255339', 'approved', '1459860139', '{"package":"1","activated":1459255339}', 'ok'),
(25, 'iPhone', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone,iPhone7,apple', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, '7', '[]', '["Untitled-6.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', '19096a280cf6e2d7c9a6392e08b81a', 400, '(0,0)', 1, 'free', '', 1459257190, '1459256657', '0', '0', '1459256657', 'approved', '1459861457', '{"package":"1","activated":1459256657}', 'ok'),
(26, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone,iPhoneSE,apple', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[]', '["Untitled-7.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'e093e92efd72f1d0cb97d44484370b', 400, '(0,0)', 5, 'free', '', 1463147496, '1459257115', 'ok', 'ok', '1459257115', 'approved', '1459861915', '{"package":"1","activated":1459257115}', 'ok'),
(27, 'Rolls Royce', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'rolls royece,car', '  Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'Rolls Royce', '[]', '["Untitled-14.jpg"]', 'user@classified.com', '342-69-6025734', 'used', '2', '6', '1', 'a1cd6f05b37e9ffa1235e4654a81bb', 2200, '(0,0)', 11, 'free', '', 1465328502, '1459335471', 'ok', 'ok', '1459335471', 'approved', '1459940271', '{"package":"1","activated":1459335471}', 'ok'),
(28, 'Gown', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'gown,ladies wear', 'Uttara, Dhaka', NULL, 'Sleeveless ', '[]', '["Untitled-15.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '13', '12', '1', 'c905b58887ae8a276e1acfe0d350d5', 80, '(23.8758547, 90.37954379999996)', 0, 'free', '', NULL, '1459336295', 'no', NULL, '1459336295', 'approved', '1459941095', '{"package":"1","activated":1459336295}', 'ok'),
(29, 'Gown', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'gown,ladies wear', 'Uttara, Dhaka', NULL, 'Sleeveless ', '[]', '["Untitled-16.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '13', '12', '1', '690748895f14f87f3f03c7e4979d6b', 95, '(23.8758547, 90.37954379999996)', 0, 'free', '', NULL, '1459336967', 'no', NULL, '1459336967', 'approved', '1459941767', '{"package":"1","activated":1459336967}', 'ok'),
(30, 'Party Dress', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'party wear,ladies wear', ' Uttara, Dhaka', NULL, 'Red', '[]', '["Untitled-17.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '13', '12', '1', 'bf3bef01b4c4f08d5a60d1de6d9599', 100, '(23.8758547, 90.37954379999996)', 0, 'free', '', NULL, '1459337681', 'no', NULL, '1459337681', 'approved', '1459942481', '{"package":"1","activated":1459337681}', 'ok'),
(31, 'Laptop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'laptop,apple', '  Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'Apple', '[]', '["Untitled-18.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '2', '1', 'a8ea158e9d71a970ef8c10ad6df223', 250, '(0,0)', 0, 'free', '', NULL, '1459338761', 'ok', 'ok', '1459338761', 'approved', '1459943561', '{"package":"1","activated":1459338761}', 'ok'),
(32, 'Laptop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'laptop,hp', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'HP', '[]', '["Untitled-19.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '2', '1', '065e3f097fd5206b72a04059fde533', 250, '(0,0)', 0, 'free', '', NULL, '1459338904', 'ok', 'ok', '1459338904', 'approved', '1459943704', '{"package":"1","activated":1459338904}', 'ok'),
(33, 'Laptop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'laptop.dell', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'DELL', '[]', '["Untitled-20.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '2', '1', 'e32f41e7c13b018758e62222133d96', 250, '(0,0)', 0, 'free', '', NULL, '1459339100', 'no', NULL, '1459339100', 'approved', '1459943900', '{"package":"1","activated":1459339100}', 'ok'),
(34, 'Desktop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'desktop,dell', 'Baridhara', NULL, 'DELL', '[]', '["Dell-Optiplex-3020-Desktop-PC-SDL246928932-1-df782.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '3', '1', 'a4bf73f5595a600583afa2c22098cd', 300, '(23.7998984, 90.42076599999996)', 2, 'free', '', 1468622366, '1459339535', 'no', NULL, '1459339535', 'approved', '1459944335', '{"package":"1","activated":1459339535}', 'ok'),
(35, 'Desktop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'desktop,hp', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'HP', '[]', '["hp_desktop_pc_bundle.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '3', '1', '69adccc8bcfde8aff1816a0d6863cf', 300, '(0,0)', 1, 'free', '', 1459453029, '1459339602', 'no', NULL, '1459339602', 'approved', '1459944402', '{"package":"1","activated":1459339602}', 'ok'),
(36, 'Hummer', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'auto,car,hummer', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'Hummer', '[]', '["Untitled-23.jpg"]', 'user@classified.com', '342-69-6025734', 'used', '2', '6', '1', '724195b691d3377fa225726000a758', 1800, '(0,0)', 7, 'free', '', 1465328140, '1459340379', 'ok', 'ok', '1459340379', 'approved', '1459945179', '{"package":"1","activated":1459340379}', 'ok'),
(37, 'HTC', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'phone,android,htc', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'HTC', '[]', '["Untitled-24.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', '7b3635478d458cbf841e5f092bef5e', 200, '(0,0)', 0, 'free', '', NULL, '1459341142', 'no', NULL, '1459341142', 'approved', '1459945942', '{"package":"1","activated":1459341142}', 'ok'),
(38, 'Huawei', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'android,huawei,huawei mate', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'Mate 8', '[]', '["Untitled-25.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', '6c74cae90f8d53b66e50bbe7282c29', 350, '(0,0)', 5, 'free', '', 1468739084, '1459341803', 'no', NULL, '1459341803', 'approved', '1459946603', '{"package":"1","activated":1459341803}', 'ok'),
(39, 'Laptop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'laptop,acer', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'Acer', '[]', '["Untitled-26.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '2', '1', '7aeabd1ffff51f4662c50f925a8c84', 650, '(0,0)', 0, 'free', '', NULL, '1459418375', 'no', NULL, '1459418375', 'approved', '1460023175', '{"package":"1","activated":1459418375}', 'ok'),
(40, 'Laptop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'laptop,acer', 'Dhanmondi 27, Dhaka', NULL, 'Acer', '[]', '["Untitled-27.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '2', '1', '8cf3058b85c1a8b31db1a955787a0e', 500, '(23.753864, 90.37127090000001)', 0, 'free', '', NULL, '1459418533', 'no', NULL, '1459418533', 'approved', '1460023333', '{"package":"1","activated":1459418533}', 'ok'),
(41, 'Leather Jacket ', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'leather jacket,jacket,black jacket', ' Mirpur 10, Dhaka', NULL, 'Black', '[]', '["Untitled-30.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '10', '1', '3a2db312576af9d384ee87d91598b7', 180, '(23.83747, 90.37528980000002)', 0, 'free', '', NULL, '1459603063', 'no', NULL, '1459603063', 'approved', '1460207863', '{"package":"1","activated":1459603063}', 'ok'),
(42, 'Leather Jacket', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'leather jacket,ladies jacket', '  Mirpur 1, Dhaka', NULL, 'Black', '[]', '["Untitled-31.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '13', '12', '1', 'eb8c2180a8cb04f7591fcb3160c78f', 180, '(23.7956037, 90.35365479999996)', 0, 'free', '', NULL, '1459603334', 'no', NULL, '1459603334', 'approved', '1460208134', '{"package":"1","activated":1459603334}', 'ok'),
(44, 'Glamor Shoes', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'shoes,blue shoes', ' Dhanmondi 8, Dhaka', NULL, 'Blue', '[]', '["Untitled-32.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '11', '1', '8ecb1ebf22bf7b0baf5a29cce7a4ca', 150, '(23.747445692530107, 90.37346126977536)', 0, 'free', '', NULL, '1459603602', 'no', NULL, '1459603602', 'approved', '1460208402', '{"package":"1","activated":1459603602}', 'ok'),
(45, 'Shoes', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'shoes,leather shoes', ' Dhanmondi 27, Dhaka', NULL, 'Leather', '[]', '["Untitled-33.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '11', '1', '86a88198efe22ddecebc1b05671d99', 200, '(23.753864, 90.37127090000001)', 0, 'free', '', NULL, '1459603758', 'no', NULL, '1459603758', 'approved', '1460208558', '{"package":"1","activated":1459603758}', 'ok'),
(46, 'Watch', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'watch,male watch', ' Mirpur 10, Dhaka', NULL, 'Flux', '[]', '["Untitled-34.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '4', '1', 'e70d4195ac52b0dbfe167e0442fbb7', 250, '(23.83747, 90.37528980000002)', 4, 'free', '', 1468551163, '1459603942', 'ok', 'ok', '1459603942', 'approved', '1460208742', '{"package":"1","activated":1459603942}', 'ok'),
(47, 'Printed Sun glass ', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'sunglass,printed sunglass', ' Uttara, Dhaka', NULL, 'Pink', '[]', '["Untitled-35.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '13', '15', '1', 'a0455a8b97d027f8eb84745609e005', 120, '(23.8758547, 90.37954379999996)', 11, 'free', '', 1462891837, '1459604220', 'no', NULL, '1459604220', 'approved', '1460209020', '{"package":"1","activated":1459604220}', 'ok'),
(48, 'T-shirt', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 't-shirt,polo shirt', ' Baridhara, Dhaka', NULL, 'Polo', '[]', '["Untitled-36.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '10', '1', 'c6e036b060c484de360cabdf500652', 120, '(23.7998984, 90.42076599999996)', 0, 'free', '', NULL, '1459604376', 'no', NULL, '1459604376', 'pending', '1460209176', '{"package":"1","activated":1459604376}', 'ok'),
(49, 'Watch', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'watch,kids watch', 'Mirpur 12, Dhaka', NULL, 'Flux', '[]', '["Untitled-37.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '4', '1', 'd0b5af78d733e7fb0c80d737787bc6', 180, '(23.837801706634917, 90.36300479042961)', 3, 'free', '', 1468552049, '1459604620', 'ok', 'ok', '1459604620', 'approved', '1460209420', '{"package":"1","activated":1459604620}', 'ok'),
(50, 'Watch', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'watch,kids watch', 'Mirpur 12, Dhaka', NULL, 'Flux', '[]', '["Untitled-318-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '4', '1', '311c8925fda53b83947b506ee15039', 180, '(23.837723197861997, 90.36240397561028)', 0, 'free', '', NULL, '1459605173', 'ok', 'ok', '1459605173', 'approved', '1460209973', '{"package":"1","activated":1459605173}', 'ok'),
(51, 'Sports Wear', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'sports jacket', 'Dhanmondi 8, Dhaka', NULL, 'White', '[]', '["Untitled-28.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '10', '1', '0067fb3b236d53e3693c2bef6222fe', 180, '(23.74815276080945, 90.37397625390622)', 8, 'free', '', 1466580210, '1459768676', 'ok', 'ok', '1459768676', 'approved', '1460373476', '{"package":"1","activated":1459768676}', 'ok'),
(52, 'Sports Shoe', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'sports shoe,asics shoe', ' Dhanmondi 27, Dhaka', NULL, 'Asics', '[]', '["Untitled-29.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '11', '1', '811c249fb1e2653c3d57a41229466b', 190, '(23.753864, 90.37127090000001)', 0, 'free', '', NULL, '1459769725', '0', '0', '1459769725', 'pending', '1460374525', '{"package":"1","activated":1459769725}', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE IF NOT EXISTS `product_type` (
  `product_type_id` int(11) NOT NULL,
  `name` longtext,
  `price` longtext,
  `status` longtext,
  `details` longtext,
  `defaults` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`product_type_id`, `name`, `price`, `status`, `details`, `defaults`) VALUES
(1, 'Default', '0', 'ok', '{"s_for":"7-day","f_for":"0-day"}', 'ok'),
(2, 'Premium', '10', 'ok', '{"s_for":"100-day","f_for":"10-day"}', NULL),
(3, 'Super', '200', 'ok', '{"s_for":"1-year","f_for":"100-day"}', NULL),
(4, 'example', '250', 'ok', '{"s_for":"7-day","f_for":"5-day"}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'master', '', 'Master Admin. Adds Admin. Provides account roles.'),
(5, 'Product Manager', '["13","17","21","37","41","45","49"]', 'Manages Products'),
(4, 'Accountant', '["9","13","17","21"]', 'Accountancy and Support'),
(6, 'Manager', '["5","9","13","29","33","37","41","57","63"]', 'Manager of Active Super shop');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'Active Classified Management System'),
(2, 'system_email', 'info@classified.com'),
(3, 'system_title', 'Active Classified Management System'),
(4, 'address', 'niketon, dhaka, bangladesh'),
(5, 'phone', '+8012654159'),
(7, 'currency', '$'),
(8, 'buyer', ''),
(9, 'purchase_code', ''),
(10, 'language', 'english'),
(11, 'text_align', 'left-to-right'),
(12, 'color', '3'),
(14, 'contact_email', 'info@marchclassified.com');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(15, 'terms', '<h2>PLEASE CAREFULLY READ THESE TERMS OF USE. BY USING THIS WEBSITE YOU INDICATE YOUR UNDERSTANDING AND ACCEPTANCE OF THESE TERMS. IF YOU DO NOT AGREE TO THESE TERMS YOU MAY NOT USE THIS WEBSITE.</h2><h2>ACCEPTANCE</h2><h2>Activeclassified, Inc. and its affiliates (Activeclassified) provide a collection of online resources which include classified advertisements, forums, and certain e-mail services (collectively, the "Service") on the website <a target="_blank" rel="nofollow" href="http://www.Activeclassified.com.bd">www.Activeclassified.com.bd</a> and its affiliated sites (including without limitation <a target="_blank" rel="nofollow" href="http://www.mundoanuncio.com">www.mundoanuncio.com</a> and <a target="_blank" rel="nofollow" href="http://www.edeng.cn">www.edeng.cn</a>) (collectively, the "Website") subject to these Terms of Use (these "Terms"). By using the Service, you agree to comply with these Terms. Additionally, when using a portion of the Service, you agree to conform to any applicable posted guidelines for such Service, which may change from time to time. You understand and agree that you are solely responsible for reviewing these Terms from time to time. Should you object to any term or condition of these Terms, any guideline, or any subsequent changes thereto or become unhappy with Activeclassified in any way, your only choice is to immediately discontinue use of Activeclassified. These Terms may be updated by Activeclassified at any time at its sole discretion. Activeclassified may send you notices of changes to the Website or the Terms pursuant to Section 21(I) herein. Activeclassified may provide a translation of the English version of the Terms into other languages. You understand and agree that any translation of the Terms into other languages is for your convenience only and that the English version governs the terms of your relationship with Activeclassified. Furthermore, if there are any inconsistencies between the English version of the Terms and any translation, the English version of the Terms shall govern. You understand and agree that to the extent you are located in the United States, you will utilize the Service in compliance with any laws, regulations, and guidelines that may be under the jurisdiction of the Office of Foreign Asset Control, U.S. Department of Treasury.</h2><h2>DESCRIPTION OF SERVICE AND CONTENT POLICY</h2><h2>A. Activeclassified is the next generation of free online classifieds. We act as a venue to allow our users who comply with these Terms to offer, sell, and buy products and services listed on the Website. Although you may be able to conduct payment and other transactions through the Website, using third-party vendors such as PayPal, Activeclassified is not in any way in involved in such transactions. As a result, and as discussed in more detail in these Terms, you hereby acknowledge and agree that Activeclassified is not a party to such transactions, has no control over any element of such transactions, and shall have no liability to any party in connection with such transactions. You use the Service and the Website at your own risk.B. You understand that Activeclassified does not control, and is not responsible for ads, directory information, business listings/information, messages between users, including without limitation e-mails outside Activeclassified’s e-mail system or other means of electronic communication, whether through the Website or another Third Party Website (defined below) or offerings, comments, user postings, files, images, photos, video, sounds, business listings/information and directory information or any other material made available through the Website and the Service ("Content"), and that by using the Website and the Service, you may be exposed to Content that is offensive, indecent, inaccurate, misleading, or otherwise objectionable. You acknowledge and agree that you are responsible for and must evaluate, and bear all risks associated with, the use of any Content, that you may not rely on said Content, and that under no circumstances will Activeclassified be liable in any way for the Content or for any loss or damage of any kind incurred as a result of the use of any Content listed, e-mailed or otherwise made available via the Service. You acknowledge and agree that Activeclassified does not pre-screen or approve any Content, but that Activeclassified has the right, in its sole and absolute discretion, to refuse, delete or move any Content that is or may be available through the Service, for violating these Terms or for any other reason or no reason at all. Furthermore, the Website and Content available through the Website may contain links to other third party websites (“Third Party Websites”), which are completely unrelated to Activeclassified. If you link to Third Party Websites, you may be subject to those Third Party Websites’ terms and conditions and other policies. Activeclassified makes no representation or guarantee as to the accuracy or authenticity of the information contained in any such Third Party Website, and your linking to any other websites is completely at your own risk and Activeclassified disclaims all liability thereto.C. You acknowledge and agree that you are solely responsible for your own Content posted on, transmitted through, or linked from the Service and the consequences of posting, transmitting, linking or publishing it. More specifically, you are solely responsible for all Content that you upload, email or otherwise make available via the Service. In connection with such Content posted on, transmitted through, or linked from the Service by you, you affirm, acknowledge, represent, and warrant that: (i) you own or have the necessary licenses, rights, consents, and permissions to use such Content on the Service and Website (including without limitation all patent, trademark, trade secret, copyright or other proprietary rights in and to any and all such Content) and authorize Activeclassified to use such Content to enable inclusion and use of the Content in the manner contemplated by the Service, the Website and these Terms; and (ii) you have the written consent, release, and/or permission of each and every identifiable individual person or business in the Content to use the name or likeness of each and every such identifiable individual person or business to enable inclusion and use of the Content in the manner contemplated by the Service, the Website and these Terms. For clarity, you retain all of your ownership rights in your Content; however, by submitting the Content to Activeclassified, you hereby grant to Activeclassified an irrevocable, non-cancellable, perpetual, worldwide, non-exclusive, royalty-free, sub-licenseable, transferable license to use, reproduce, distribute, prepare derivative works of, display, and perform the Content in connection with the Website and Activeclassified''s (and its successors'') business, including without limitation for the purpose of promoting and redistributing part or all of the Website and Content therein (and derivative works thereof) in any media formats and through any media channels now or hereafter known. These rights are required by Activeclassified in order to host and display your Content. Furthermore, by you posting Content to any public area of the Service, you agree to and do hereby grant to Activeclassified all rights necessary to prohibit or allow any subsequent aggregation, display, copying, duplication, reproduction, or exploitation of the Content on the Service or Website by any party for any purpose. You also hereby grant each user of the Website a non-exclusive license to access your Content through the Website. The foregoing license to each user granted by you terminates once you remove or delete such Content from the Website.D. Activeclassified does not endorse any Content or any opinion, statement, recommendation, or advice expressed therein, and Activeclassified expressly disclaims any and all liability in connection with user Content. Activeclassified does not permit copyright infringing activities and infringement of intellectual property rights on the Website, and Activeclassified may, at its sole discretion, remove any infringing Content if properly notified that such Content infringes on another''s intellectual property rights. Activeclassified reserves the right to remove any Content without prior notice. Activeclassified may also terminate a user''s access to the Website, if they are determined to be a repeat infringer. A repeat infringer is a user who has been notified of infringing activity more than twice and/or has had a user submission removed from the Website more than twice. Further, at its sole discretion, Activeclassified reserves the right to decide whether any Content is appropriate and complies with these Terms for violations other than copyright infringement and violations of intellectual property law, such as, but not limited to, pornography, obscene, libelous, or defamatory material, or excessive length. Activeclassified may remove such Content and/or terminate a user''s access for uploading such material in violation of these Terms at any time, without prior notice and at its sole discretion.E. Activeclassified may provide a video service to you if you upload photographs for your ad. By uploading your photographs, you irrevocably consent to the use of your photographs for this service and represent and warrant that you have all right, title and interest necessary to upload and use the photographs on this service. Under this service, using a third party application or service, Activeclassified may, at its discretion, create a video of your photographs, upload the video via<a target="_blank" rel="nofollow" href="http://www.youtube.com">www.youtube.com</a> or another third party service provider, as determined by Activeclassified at its discretion, and embed the video into your ad on Activeclassified.</h2><h2>FEATURED ADS</h2><h2>Activeclassified offers a service known as "Featured Ads" where users may pay a non-refundable fee to have their ads posted in selected locations on the Website, thus potentially increasing an ads'' visibility. In order to purchase a Featured Ad, you may be required to transmit certain information through a third party service provider, Click &amp; Buy, a Third Party Website, which may be governed by its own terms of use and other policies. Activeclassified makes no representation or guarantee as to the safety or security of the information transmitted to any Third Party Website, and your linking to any Third Party Website is completely at your own risk, and Activeclassified disclaims all liability related thereto.Featured Ads are subject to the Terms listed herein, as well as additional terms of service, which can be viewedhere</h2><h2><br></h2><h2>CONDUCT</h2><h2>You agree not to post, email, or otherwise make available Content:that violates any law;</h2><h2>that is copyrighted or patented, protected by trade secret or trademark, or otherwise subject to third party proprietary rights, including privacy and publicity rights, unless you are the owner of such rights or have permission or a license from their rightful owner to post the material and to grant Activeclassified all of the license rights granted herein;</h2><h2><br></h2><h2>that infringes any of the foregoing intellectual property rights of any party, or is Content that you do not have a right to make available under any law or under contractual or fiduciary relationships;</h2><h2><br></h2><h2>that violates the Fair Housing Act, as amended, including its implementing regulations and any Presidential Executive Order related thereto, by stating, in any notice or advertisements for the sale or rental of any dwelling not excluded by such Act, a discriminatory preference based sex, familial status or handicap, race, color, national origin, religion, (or violates any applicable state or local law prohibiting discrimination on the basis of aforementioned characteristics or any other characteristics);</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that is harmful, abusive, unlawful, threatening, harassing, defamatory, pornographic, libelous, invasive of another''s privacy or other rights, or harms or could harm minors in any way;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that harasses, degrades, intimidates or is hateful toward an individual or group of individuals on the basis of religion, gender, sexual orientation, race, ethnicity, age, or disability;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that violates any federal, state, or local equal employment laws, including but not limited to those prohibiting the stating, in any advertisement for employment, a preference or requirement based on race, color, religion, sex, national origin, age, or disability of the applicant.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that includes personal or identifying information about another person without that person''s explicit consent;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that impersonates any person or entity, including, but not limited to, an Activeclassified employee, or falsely states or otherwise misrepresents an affiliation with a person or entity;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>with respect to employers that employ four or more employees, that violates any applicable provision of the Immigration and Nationality Act, including without limitation requiring U.S. citizenship or lawful permanent residency (green card status) as a condition for employment, unless otherwise required in order to comply with law, regulation, executive order, or federal, state, or local government contract.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that is false, deceptive, misleading, deceitful, misinformative, or constitutes "bait and switch" offer;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that constitutes or contains "pyramid schemes," "affiliate marketing," "link referral code," "junk mail," "spam," "chain letters," or unsolicited advertisements of a commercial nature;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that constitutes or contains any form of advertising or solicitation if (1) posted in areas or categories of the Website which are not designated for such purposes; or (2) e-mailed to Activeclassified users who have requested not to be contacted about other services, products or commercial interests;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that includes links to commercial services or Third Party Websites, except as specifically allowed by Activeclassified;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that advertises any illegal services or the sale of any items the sale of which is prohibited or restricted by applicable law, including without limitation items the sale of which is prohibited or regulated by New York law;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that contains software viruses or any other computer code, files or programs designed to interrupt, destroy or limit the functionality of any computer software or hardware or telecommunications equipment;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that disrupts the normal flow of dialogue with an excessive number of messages (flooding attack) to the Service, or that otherwise negatively affects other users'' ability to use the Service; or</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>that employs misleading email addresses, or forged headers or otherwise manipulated identifiers in order to disguise the origin of Content transmitted through the Service.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>Additionally, you agree not to:</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>contact anyone who has asked not to be contacted, or make unsolicited contact with anyone for any commercial purpose; or to "stalk" or otherwise harass anyone;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>make any libelous or defamatory comments or postings to or against anyone;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>collect personal data about other users or entities for commercial or unlawful purposes;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>use automated means, including spiders, robots, crawlers, data mining tools, or the like to download or scrape data from the Service, except for internet search engines (e.g,. Google) and non-commercial public archives (e.g. archive.org) that comply with our robots.txt file;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>post Content that is outside the local area or not relevant to the local area, repeatedly post the same or similar Content, or otherwise impose unreasonable or disproportionately large loads on our servers and other infrastructure;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>post the same item or service in multiple classified categories or forums, or in multiple metropolitan areas;</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>attempt to gain unauthorized access to computer systems owned or controlled by Activeclassified or engage in any activity that disrupts, diminishes the quality of, interferes with the performance of, or impairs the functionality of, the Service or the Website.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>use any form of automated device or computer program (sometimes referred to as "flagging tools") that enables the use of Activeclassified''s "flagging system" or other community control systems without each flag being manually entered by a human that initiates the flag (an "automated flagging device"), or use any such flagging tool to remove posts of competitors, other third parties or to remove posts without a reasonable good faith belief that the post being flagged violates these Terms or any applicable law or regulation.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>use any automated device or software that enables the submission of automatic postings on Activeclassified without human intervention or authorship (an "automated posting device"), including without limitation, the use of any such automated posting device in connection with bulk postings, or for automatic submission of postings at certain times or intervals; or</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>PAID POSTINGS</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>Activeclassified may charge a fee to post Content in some areas of the Service. The fee permits certain Content to be posted in a designated area of the Website. Each party posting Content to the Service is responsible for said Content and compliance with the Terms. Any such fees paid hereunder are non-refundable in the event any Content is removed from the Service for violating these Terms</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>POSTING AGENTS</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>As used herein, the term "Posting Agent" refers to a third-party agent, service, or intermediary that offers to post Content to the Service on behalf of others. Activeclassified prohibits the use of Posting Agents, directly or indirectly, without the express written permission of Activeclassified In addition, Posting Agents are not permitted to post Content on behalf of others, directly or indirectly, or otherwise access the Service to in order to post Content on behalf of others, except with express written permission or license from Activeclassified.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>ACCESS TO THE SERVICE</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>Activeclassified grants you a limited, revocable, non-exclusive license to access and use the Service for personal use. This license granted herein does not include any of the following: (a) access to or use of the Service by Posting Agents; or (b) any collection, aggregation, copying, duplication, display or derivative use of the Service nor any use of data mining, robots, spiders, or similar data gathering and extraction tools for any purpose unless expressly permitted by Activeclassified or as otherwise set forth in these Terms. Notwithstanding the foregoing, general purpose internet search engines and non-commercial public archives that gather information for the sole purpose of displaying hyperlinks to the Service, provided they each do so from a stable IP address or range of IP addresses using an easily identifiable agent and comply with our robots.txt file, may engage in the activities set forth in (b). For purposes of this exception, a "general purpose internet search engine" does not include a website or search engine or other service that specializes in classified listings including any subset of classifieds listings such as housing, for sale, jobs, services, or personals, or which otherwise provides classified ad listing services. The license set forth in this Section permits you to display on your website, or create a hyperlink thereto, individual postings on the Service so long as such use is for noncommercial and/or news reporting purposes only (e.g., for use in personal blogs or other personal online media). If the total number of such postings displayed on or linked to your website exceeds ninety nine (99) postings, your use will be considered to be in violation of these Terms, unless Activeclassified expressly grants you permission otherwise. You are also permitted to create a hyperlink to the home page of the Website so long as the link does not portray Activeclassified, its employees, affiliates or agents in a false, confusing, misleading, derogatory, or otherwise offensive matter. Activeclassified may offer parts of the Service in RSS format for the purpose of embedding individual RSS feeds into a personal website or blog, or view postings through third party software news aggregators. Activeclassified permits you to display, excerpt from, and link to any such RSS feeds on your personal website or personal blow, provided that (a) your use of the RSS feed is for personal, non-commercial purposes only, (b) each title within an RSS feed is correctly linked back to the original post on the Service and redirects the user to the post when the user clicks on it, (c) you provide, in a conspicuous manner, proper attribution to ''Activeclassified'' as the source of the RSS feed, (d) your use or display of the RSS feed does not suggest that Activeclassified promotes or endorses any third party causes, opinions, ideas, web sites, products or services, (e) you do not redistribute the RSS feed, and (f) your use does not overburden or otherwise slow the performance of Activeclassified''s systems. Activeclassified reserves all rights in and to the content of any RSS feeds provided through the Service and may terminate any RSS feed at any time without notice. Use of the Service beyond the scope of authorized access as set forth in these Terms immediately terminates any permission or license granted herein. In order to collect, aggregate, copy, duplicate, display or make derivative use of the Service or any Content made available via the Service for other purposes (including commercial purposes) not stated herein, you must first obtain a license from Activeclassified.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>NOTIFICATION OF CLAIMS OF INFRINGEMENTS</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>If you are a copyright owner or an agent thereof and believe that any user Content or other content infringes upon your copyrights, you may submit a notification pursuant to the Digital Millennium Copyright Act ("DMCA") by providing our Copyright Agent with the following information in writing (see 17 U.S.C 512(c)(3) for further detail):1.A physical or electronic signature of a person authorized to act on behalf of the owner of an exclusive right that is allegedly infringed;2.Identification of the copyrighted work claimed to have been infringed, or, if multiple copyrighted works at a single online site are covered by a single notification, a representative list of such works at that site;3.Identification of the material that is claimed to be infringing or to be the subject of infringing activity and that is to be removed or access to which is to be disabled and information reasonably sufficient to permit Activeclassified to locate the material;4.Information reasonably sufficient to permit Activeclassified to contact you, such as an address, telephone number, and, if available, an electronic mail address;5.A statement that you have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law; and6.A statement that the information in the notification is accurate, and under penalty of perjury, that you are authorized to act on behalf of the owner of an exclusive right that is allegedly infringed.Activeclassified''s designated Copyright Agent to receive notifications of claimed infringement is: via the Legal Issues report form or Activeclassified, S.A., Uriarte 2489 - 3rd Floor, Buenos Aires, Argentina, Attention: DMCA Complaint . For clarity, only DMCA notices should go to the Copyright Agent; any other feedback, comments, requests for technical support, and other communications should be directed to Activeclassified''s customer service by clicking on the Contact Us link on the Activeclassified website. You acknowledge that if you fail to comply with all of the requirements of this Section 8, your DMCA notice may not be valid.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>INTELLECTUAL PROPERTY RIGHTS</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>You acknowledge and agree that the materials on the Website, other than the user Content that you licensed under Section 2(C) of the Terms, including without limitation, the text, software, scripts, graphics, photos, sounds, music, videos, interactive features and the like ("Materials") and the trademarks, service marks and logos contained therein ("Marks"), are owned by or licensed to Activeclassified, and are subject to copyright and other intellectual property rights under United States and foreign laws and international conventions. Materials on the Website are provided to you AS IS for your information and personal use only and may not be used, copied, reproduced, distributed, transmitted, broadcast, displayed, sold, licensed, or otherwise exploited for any other purposes whatsoever without the prior written consent of the respective owners. Activeclassified reserves all rights not expressly granted herein to the Website and the Materials. You agree to not engage in the use, copying, or distribution of any of the Materials other than as expressly permitted herein, including any use, copying, or distribution of Materials of third parties obtained through the Website for any commercial purposes. If you download or print a copy of the Materials for personal use, you must retain all copyright and other proprietary notices contained therein. You agree not to circumvent, disable or otherwise interfere with security related features of the Website or features that prevent or restrict use or copying of any Materials or enforce limitations on use of the Website or the Materials therein. The Service is protected to the maximum extent permitted by copyright laws, other laws, and international treaties. Content displayed on or through the Service is protected by copyright as a collective work and/or compilation, pursuant to copyrights laws, other laws, and international conventions. Any reproduction, modification, creation of derivative works from or redistribution of the Website, the Materials, or the collective work or compilation is expressly prohibited. Copying or reproducing the Website, the Materials, or any portion thereof to any other server or location for further reproduction or redistribution is expressly prohibited. You further agree not to reproduce, duplicate or copy Content or Materials from the Service, and agree to abide by any and all copyright notices and other notices displayed on the Service. You may not decompile or disassemble, reverse engineer or otherwise attempt to discover any source code contained in the Service. Without limiting the foregoing, you agree not to reproduce, duplicate, copy, sell, resell or exploit for any commercial purposes, any aspect of the Service. Activeclassified is a service mark registered with the U.S. Patent and Trademark Office and in various other jurisdictions.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>USER SUBMISSIONS</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>You understand that when using the Website, you will be exposed to Content from a variety of sources, and that Activeclassified is not responsible for the accuracy, usefulness, safety, or intellectual property rights of or relating to such Content, and you agree and assume all liability for your use. You further understand and acknowledge that you may be exposed to Content that is inaccurate, offensive, indecent, or objectionable, defamatory or libelous and you agree to waive, and hereby do waive, any legal or equitable rights or remedies you have or may have against Activeclassified with respect thereto.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>INDEMNITY</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>You agree to defend, indemnify and hold harmless Activeclassified, its officers, subsidiaries, affiliates, successors, assigns, directors, officers, agents, service providers, suppliers and employees, from and against any and all claims, damages, obligations, losses, liabilities, costs or debt, and expenses (including but not limited to attorneys'' fees) arising from: (i) your use of and access to the Website and/or the Service; (ii) your violation of any term of these Terms; (iii) your violation of any third party right, including without limitation any copyright, trademark, trade secret or other property, or privacy right; or (iv) any claim that your Content caused damage to a third party. This defense and indemnification obligation will survive termination, modification or expiration of these Terms and your use of the Service and the Website.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>NO SPAM POLICY</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>You understand and agree that sending unsolicited email advertisements or other unsolicited communications to Activeclassified email addresses or through Activeclassified computer systems are expressly prohibited by these Terms. You acknowledge and agree that from time to time Activeclassified may monitor email usage using human monitors or automated software to flag certain words associated with spam or scams in emails that are sent between one user to another in the Activeclassified e mail system. Any communication between yourself and any other user utilizing the communication features available on the Service and the Website may be used only in accordance with the Terms. Any unauthorized use of Activeclassified computer systems is a violation of these Terms and certain federal and state laws. Such violations may subject the sender and his or her agents to civil and criminal penalties.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>DEALINGS WITH ORGANIZATIONS AND INDIVIDUALS</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>You acknowledge and agree that Activeclassified shall not be liable for your interactions with any organizations and/or individuals on the Website or through the Service. This includes, but is not limited to, payment and delivery of goods and services, and any other terms, conditions, warranties or representations associated with any interaction you may have with other organizations and/or individuals. These dealings are solely between you and such organizations and/or individuals. You agree and acknowledge that Activeclassified shall not be responsible or liable for any loss or damage of any sort incurred as the result of any such dealings or interactions. If there is a dispute between participants on the Website, or between users and any third party, you understand and agree that Activeclassified is under no obligation to become involved in such dispute. In the event that you have a dispute with one or more other users, you hereby release Activeclassified, its officers, employees, agents and successors from any and all claims, demands and damages (actual and consequential) of every kind or nature, known or unknown, suspected and unsuspected, disclosed and undisclosed, arising out of or in any way related to such disputes and/or our Service.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>LIMITATION AND TERMINATION OF SERVICE</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>You acknowledge and agree that Activeclassified may establish limits from time to time concerning use of the Service, including among others, the maximum number of days that Content will be maintained or retained by the Service, the maximum number and size of postings, e-mail messages, or other Content that may be transmitted or stored by the Service, and the frequency with which you may access the Service or the Website. You acknowledge and agree that Activeclassified has no responsibility or liability for the deletion or failure to store any Content maintained or transmitted by the Website or the Service. You acknowledge and agree that Activeclassified reserves the right at any time to modify or discontinue the Service (or any part thereof) with or without notice, and that Activeclassified shall not be liable to you or to any third party for any such modification, suspension or discontinuance of the Service. You acknowledge and agree that Activeclassified, in its sole and absolute discretion, has the right (but not the obligation) to delete or deactivate your account, block your e-mail or IP address, or otherwise terminate your access to or use of the Service (or any part thereof), immediately and without notice, and remove and discard any Content within the Service, for any reason or no reason at all, including, without limitation, if Activeclassified believes that you have violated these Terms. Further, you agree that Activeclassified shall not be liable to you or any third-party for any termination of your access to the Website or the Service. Further, you agree not to attempt to use the Service after any such termination.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>DISCLAIMER OF WARRANTIES</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>YOU EXPRESSLY ACKNOWLEDGE AND AGREE THAT USE OF THE WEBSITE AND THE SERVICE IS ENTIRELY AT YOUR OWN RISK AND THAT THE WEBSITE AND THE SERVICE ARE PROVIDED ON AN "AS IS" OR "AS AVAILABLE" BASIS, WITHOUT ANY WARRANTIES OF ANY KIND. ALL EXPRESS AND IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT OF PROPRIETARY RIGHTS ARE EXPRESSLY DISCLAIMED TO THE FULLEST EXTENT PERMITTED BY LAW. TO THE FULLEST EXTENT PERMITTED BY LAW Activeclassified, ITS OFFICERS, DIRECTORS, EMPLOYEES, AND AGENTS DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, IN CONNECTION WITH THE WEBSITE AND YOUR USE THEREOF. Activeclassified MAKES NO WARRANTIES OR REPRESENTATIONS ABOUT THE ACCURACY OR COMPLETENESS OF THE WEBSITE''S CONTENT OR THE CONTENT OF ANY THIRD PARTY WEBSITES LINKED TO THE WEBSITE AND ASSUMES NO LIABILITY OR RESPONSIBILITY FOR ANY (I) ERRORS, MISTAKES, OR INACCURACIES OF CONTENT, (II) PERSONAL INJURY OR PROPERTY DAMAGE, OF ANY NATURE WHATSOEVER, RESULTING FROM YOUR ACCESS TO AND USE OF THE WEBSITE AND SERVICE, (III) ANY UNAUTHORIZED ACCESS TO OR USE OF OUR SERVERS AND/OR ANY AND ALL PERSONAL INFORMATION AND/OR FINANCIAL INFORMATION STORED THEREIN, (IV) ANY INTERRUPTION OR CESSATION OF TRANSMISSION TO OR FROM THE WEBSITE, (IV) ANY BUGS, VIRUSES, TROJAN HORSES, OR THE LIKE WHICH MAY BE TRANSMITTED TO OR THROUGH THE WEBSITE BY ANY THIRD PARTY, AND/OR (V) ANY ERRORS OR OMISSIONS IN ANY CONTENT OR FOR ANY LOSS OR DAMAGE OF ANY KIND INCURRED AS A RESULT OF THE USE OF ANY CONTENT POSTED, EMAILED, COMMUNICATED, TRANSMITTED, OR OTHERWISE MADE AVAILABLE VIA THE WEBSITE OR THE SERVICE. Activeclassified DOES NOT WARRANT, ENDORSE, GUARANTEE, OR ASSUME RESPONSIBILITY FOR ANY PRODUCT OR SERVICE ADVERTISED OR OFFERED BY A THIRD PARTY THROUGH THE WEBSITE OR ANY HYPERLINKED WEBSITE OR FEATURED IN ANY BANNER OR OTHER ADVERTISING, AND Activeclassified WILL NOT BE A PARTY TO OR IN ANY WAY BE RESPONSIBLE FOR MONITORING ANY TRANSACTION BETWEEN YOU AND/OR OTHER USERS AND/OR THIRD-PARTY PROVIDERS OF PRODUCTS OR SERVICES. AS WITH THE PURCHASE OF A PRODUCT OR SERVICE THROUGH ANY MEDIUM OR IN ANY ENVIRONMENT, YOU SHOULD USE YOUR BEST JUDGMENT AND EXERCISE CAUTION WHERE APPROPRIATE.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>LIMITATIONS OF LIABILITY</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>IN NO EVENT SHALL Activeclassified, ITS OFFICERS, DIRECTORS, EMPLOYEES, OR AGENTS, BE LIABLE FOR DIRECT, INDIRECT, INCIDENTAL, SPECIAL, CONSEQUENTIAL OR EXEMPLARY DAMAGES (EVEN IF Activeclassified HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES), RESULTING FROM ANY ASPECT OF YOUR USE OF THE WEBSITE OR THE SERVICE, INCLUDING WITHOUT LIMITATION WHETHER THE DAMAGES ARISE FROM USE OR MISUSE OF THE WEBSITE OR THE SERVICE, FROM INABILITY TO USE THE WEBSITE OR THE SERVICE, OR THE INTERRUPTION, SUSPENSION, MODIFICATION, ALTERATION, OR TERMINATION OF THE WEBSITE OR THE SERVICE. SUCH LIMITATION OF LIABILITY SHALL ALSO APPLY WITH RESPECT TO DAMAGES INCURRED BY REASON OF OTHER SERVICES OR PRODUCTS RECEIVED THROUGH OR ADVERTISED IN CONNECTION WITH THE WEBSITE OR THE SERVICE OR ANY LINKS ON THE WEBSITE, AS WELL AS BY REASON OF ANY INFORMATION, OPINIONS OR ADVICE RECEIVED THROUGH OR ADVERTISED IN CONNECTION WITH THE WEBSITE OR THE SERVICE OR ANY LINKS ON THE Activeclassified SITE. THESE LIMITATIONS SHALL APPLY TO THE FULLEST EXTENT PERMITTED BY LAW. YOU SPECIFICALLY ACKNOWLEDGE AND AGREE THAT Activeclassified SHALL NOT BE LIABLE FOR USER SUBMISSIONS OR THE DEFAMATORY, OFFENSIVE, OR ILLEGAL CONDUCT OF ANY USER OR THIRD PARTY AND THAT THE RISK OF HARM OR DAMAGE FROM THE FOREGOING RESTS ENTIRELY WITH YOU. The Website is controlled and offered by Activeclassified from its facilities in the United States of America. Activeclassified makes no representations or warranties that the Website is appropriate for use in other locations. Those who access or use the Website from other jurisdictions do so at their own volition and risk and are responsible for compliance with local law.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>ASSIGNMENT</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>These Terms, and any rights and licenses granted hereunder, may not be transferred or assigned by you, but may be assigned by Activeclassified without restriction. Any assignment or transfer by you shall be null and void.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>ABILITY TO ACCEPT TERMS OF SERVICE</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>This Website is intended only for adults. You affirm that you are either more than 18 years of age, or an emancipated minor, or possess legal parental or guardian consent, and are fully able and competent to enter into the terms, conditions, obligations, affirmations, representations, and warranties set forth in these Terms, and to abide by and comply with these Terms. In any case, you affirm that you are over the age of 13, as the Website is not intended for children under 13.NOTICE TO CHILDREN UNDER THE AGE OF 13 AND THEIR PARENTS OR GUARDIANSIf you are under the age of 13, YOU MUST NOT USE THIS WEBSITE. Please do not send us your personal information, including your email addresses, name, and/or contact information. If you want to contact us, you may only do so through your parent or legal guardian.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>GENERAL INFORMATION</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>These Terms and the other policies posted on the Website constitute the complete and exclusive understanding and agreement between you and Activeclassified and govern your use of the Service and the Website superseding all prior understandings, proposals, agreements, negotiations, and discussions between the parties, whether written or oral. The Terms and the relationship between you and Activeclassified shall be governed by the laws of the State of New York without regard to its conflict of law principles. You and Activeclassified agree to submit to the personal and exclusive jurisdiction of the courts located within the State of New York. The failure of Activeclassified to exercise or enforce any right or provision of the Terms shall not constitute a waiver of such right or provision. If any provision of the Terms is found by a court of competent jurisdiction to be invalid (including, without limitation, because such provision is inconsistent with the laws of another jurisdiction) or inapplicable, the parties nevertheless agree that the court should endeavor to give effect to the parties'' intentions as reflected in the provision. If any provision or provisions of these Terms is held to be invalid, illegal or unenforceable, the validity, legality and enforceability of the remaining provisions of the Terms shall not in any way be affected or be impaired. YOU AGREE THAT ANY CAUSE OF ACTION BROUGHT BY YOU AND ARISING OUT OF OR RELATED TO YOUR USE OF THE SERVICE AND/OR THE WEBSITE MUST COMMENCE WITHIN ONE (1) YEAR AFTER THE CAUSE OF ACTION ACCRUES, EXCEPT THAT Activeclassified MAY COMMENCE ANY SUCH CAUSE OF ACTION IN ACCORDANCE WITH THE APPLICABLE STATUTE OF LIMITATIONS UNDER NEW YORK LAW. OTHERWISE, SUCH CAUSE OF ACTION IS PERMANENTLY BARRED. These Terms shall inure to the benefit of and be binding upon each party''s successors and assigns.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>VIOLATION OF TERMS AND LIQUIDATED DAMAGES</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>Please report any violations of the Terms that you become aware of by contacting us using the link at the bottom of the Activeclassified homepage at <a target="_blank" rel="nofollow" href="http://www.Activeclassified.com.bd">www.Activeclassified.com.bd</a>. Any failure to act by Activeclassified with respect to a breach by you or others does not waive our right to act with respect to subsequent or similar breaches by you or others. You understand and agree that, because damages are often difficult or impossible to quantify, if actual damages cannot be reasonably calculated then you will be liable to pay Activeclassified the following as liquidated damages (and not a penalty):a. If Activeclassified establishes any limits on the frequency with which you may access the Service, or terminates your access to or use of the Service, you agree to pay Activeclassified ninety nine dollars ($99) for (i) each message posted in excess of such limits or (ii) for each day on which you access Activeclassified in excess of such limits, whichever is higher.b. If you post a message that (1) impersonates any person or entity; (2) falsely states or otherwise misrepresents your affiliation with a person or entity; or (3) that includes personal or identifying information about another person without that person''s explicit consent, you agree that Activeclassified in its sole discretion may disclose identifying information about you to the victim, and that should Activeclassified bring a claim against you in court, that you will pay Activeclassified one thousand one hundred dollars ($1,100) for each such message.c. If you are a Posting Agent that uses the Service in violation of these Terms, in addition to any liquidated damages under Section 20(e) below you agree to pay Activeclassified ninety nine dollars ($99) for each and every item you post in violation of these Terms. A Posting Agent will also be deemed an agent of the party engaging the Posting Agent to access the Service, and such party (by engaging the Posting Agent in violation of these Terms) agrees to pay Activeclassified an additional ninety nine dollars ($99) for each item posted by the Posting Agent on behalf of such party in violation of these Terms.d. If you use Activeclassified e-mail addresses or computer systems to send unsolicited e-mail advertisements to Activeclassified e-mail addresses or any other party, you agree to pay Activeclassified thirty dollars ($30) for each such e-mail.e. If you post messages in violation of these Terms, other than as described above, you agree to pay Activeclassified ninety nine dollars ($99) for each such message. Notwithstanding the foregoing, Activeclassified may, in its sole and absolute discretion, issue a warning before assessing damages pursuant to this Section 20(e).f. If you aggregate, copy, display, mirror, reproduce, or otherwise exploit for any purpose any Content (except for your own Content) in violation of these Terms without Activeclassified''s express written permission, you agree to pay Activeclassified ten thousand dollars ($10,000) for each day on which you engage in such conduct.If none of the foregoing clauses (a) – (f) are applicable, you agree to pay Activeclassified’s actual damages, to the extent such actual damages can be reasonably calculated. Notwithstanding any other provision of these Terms, Activeclassified retains the right to seek equitable remedies, including without limitation, specific performance of any term contained in these Terms, or a preliminary or permanent injunction against the breach or threatened breach of any such term or in aid of the exercise of any power granted in these Terms, or any combination thereof, without the necessity of posting a bond.</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>PRIVACY POLICY</h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2><br></h2><h2>A. Safe Harbor CertificationActiveclassified complies with the U.S.-EU Safe Harbor Framework and the U.S.-Swiss Safe Harbor Framework as set forth by the U.S. Department of Commerce regarding the collection, use, and retention of personal information from European Union member countries and Switzerland. Activeclassified has certified that it adheres to the Safe Harbor Privacy Principles of notice, choice, onward transfer, security, data integrity, access, and enforcement. To learn more about the Safe Harbor program, and to view Activeclassified’s certification, please visit <a target="_blank" rel="nofollow" href="http://www.export.gov/safeharbor/B">http://www.export.gov/safeharbor/B</a>. Type of Information Collected:When you visit the Website, we may collect certain non-personal information such as your Internet Protocol (“IP”) address, operating system, browser type, and Internet service provider. This type of information does not identify you personally. When you register with the Website, we may also collect personal information that you provide such as your name, mailing address, email address, home country, and zip code (“Registration Information”). You have the option of also providing to us your phone and fax numbers, gender, age, and/or company name if you choose to register with Activeclassified. If you provide your phone number, it will be displayed in your posting. We may also collect additional information that our users provide, such as new or deleted postings, new or deleted comments, keyword searches, scam reports and new contact sellers. We use a third-party credit card processing company for purchases, and other third party companies to monitor site traffic, which may, in some instances, store your information (see Section 21(D) below). When you visit the Website and/or use the Activeclassified mobile application, Activeclassified may use GPS technology (or other similar technology) to determine your current location in order to determine the city you are located within and display a location map with relevant advertisements. Activeclassified will not share your current location with other Activeclassified users or partners. If you do not want Activeclassified to use your location for the purposes set forth above, you should turn off the location services for the Activeclassified application located in your Activeclassified account settings or in your mobile phone settings. By using this Website or the Service, you consent to collection, storage, and use of the personal information you provide for any of the Services that we offer, and you consent to our collection of any changes or updates that you may provide to any information you provide that is collected by Activeclassified.C. CookiesWe may use cookies to manage our users’ sessions and to store preferences, tracking information, and language selection. Cookies may be used whether you register with us or not. “Cookies” are small text files transferred by a web server to your hard drive and thereafter stored on your computer. The types of information a cookie collects include the date and time you visited, your browsing history, your preferences, and your username. In some instances, our third-party service providers may use cookies on the Website. We cannot control or access cookies used by third- party service providers. This Privacy Policy covers only Cookies used by us, and not any cookies used by third parties. You have the ability to either accept or decline the use of cookies on your computer, whether you are registered with us or not. Typically, you can configure your browser to not accept cookies. However, declining the use of cookies may limit your access to certain features of the Website. For example, you may have difficulty logging in or using certain interactive features of the Website, such as the Activeclassified Forum or Comments feature.D. Third PartiesWe use third-party service providers to process purchases you make and to monitor our users’ interests. In addition, the Website may occasionally contain links to Third-Party Sites. If you click on the links to Third-Party Websites, you leave the Website. We are not responsible for the content of these Third-Party Websites or for the security of your personal information when you use the Third Party Websites. These third-party service providers and Third-Party Sites may have their own privacy policies governing the storage and retention of your personal information that you may be subject to. They may collect information such as your IP address, browser specification, or operating system. This Privacy Policy does not govern personal information provided to, stored on, or used by these third-party providers and Third-Party Sites. We recommend that when you enter a Third-Party Site, you review the Third Party Site’s privacy policy as it relates to safeguarding your personal information. We use third-party advertising companies to serve ads when you visit the Website. These companies may use information (not including your name, address, email address, or telephone number) about your visits to the Website and Third-Party Websites in order to provide advertisements about goods and services of interest to you. On the Website, Google, as a third-party vendor, uses Cookies to serve ads. Google’s use of the DoubleClick DART Cookie enables it to serve ads to the Website’s users based on their visit to the Websites and Third-Party Websites. For more information on the DART Cookie see:<a target="_blank" rel="nofollow" href="http://www.doubleclick.com/privacy/faq.aspx">http://www.doubleclick.com/privacy/faq.aspx</a>. You may opt out of the use of the DART Cookie by Google by visiting the Google Ad and Content Network Privacy Policy at: <a target="_blank" rel="nofollow" href="http://www.google.com/privacy_ads.html">http://www.google.com/privacy_ads.html</a>. You may opt out of targeting advertising for all NAI member ad networks by visiting: <a target="_blank" rel="nofollow" href="http://www.networkadvertising.org/">http://www.networkadvertising.org/</a>. By publishing an ad on the Website, you acknowledge and agree that the Content is public and accessible by any third party and that they may appear in search engine results (such as Yahoo!, MSN, Google, Altavista, and other search engines) and in the cache of those search engines, in feeds and Third-Party Websites pursuant to cobranding agreements, and that it is the sole responsibility of each of those search engines, Third-Party Websites or RSS web feed resources to update and/or to remove Content from their indexes and their cache. You agree and acknowledge that Activeclassified is not be liable for the information published in search results or by any Third-Party Website that carries Activeclassified postings.E. How Your Information is UsedWe may use information provided by you to: (i) enforce our Terms of Use, monitor user activity, such as keyword searches or new postings, and more effectively manage traffic on the Website; (ii) provide customer services, create and manage user accounts; and (iii) assist you with technical difficulties. Also, we may share with third-party service providers certain information, such as your browser capabilities or operating system, that we have collected in order to better understand which advertisements and services may interest you. We may block users located in certain countries from using the Website. We may retain such information for as long as is required to fulfill our business objective, even after your account is terminated.F. Protecting Your Personal InformationYou are a valued customer, and we recognize that protecting your privacy is important to you. For this reason, we are committed to protecting the personal information you provide in a variety of ways. We do not directly process any payments and do not store your credit card information. Secured socket layer (“SSL”) technology is used for processing payment transactions with third- party service provider partners, such as Click &amp; Buy, PayPal, and DineroMail. Your Registration Information may be protected by a unique customer password and user ID. You should not disclose your password information to anyone and you should always remember to log off if using a shared computer. Lastly, you may utilize the Website as an anonymous user by not registering. We have taken certain security protections in safeguarding your personal information. However, as with most electronic transactions, no method is 100% safe. While we strive to use a commercially acceptable means to protect the personal information you provide, we cannot guarantee its security. Therefore, you acknowledge and agree that we assume no liability regarding the theft, loss, alteration or misuse of personal or other information or Content, including, without limitation, such information that has been provided to third parties or other users, or with regards to the failure of a third party to abide by the agreement between us and such third party. You may participate in our Forum or utilize our Comments feature. For postings to the Forum, your username will be posted. For postings using the Comments feature, your name and email will only be posted if you provide it in the comment. We strongly discourage posting any information on these features or in any Content posted by you that you do not want others to see. You agree that you are responsible for maintaining the confidentiality of your username and password, and all uses of your account, whether or not you have authorized such use.G. Accessing and Modifying Personal Information and Communication PreferencesYou may access, remove, review, and/or make changes to personal information that you have provided to us via the Contact Support form. You need not register in order to post or respond to advertisements on the Website. If you register, we may send you certain notifications, advertisements, promotions, and specials. We may also send you any legally required notifications and certain notifications, including but not limited to, service related notices or notices regarding a change to any of our policies. For example, we may send you a notice regarding server problems or scheduled maintenance to the Website. In order to opt-out of receiving these notices, you may need to deactivate your account. You can opt out of certain e-mail communications from us, including our newsletters, advice on buying and selling on the Website, notifications that a user has commented on your posting, and notifications that you can refresh your posting. We will not change your preferences without your consent. You cannot opt out of receiving transactional communications from Activeclassified related to your account.H. DisclosuresOn rare occasions, we may be required to disclose your personal information due to legal or regulatory requirements. In such instances, we reserve the right to disclose your personal information as required in order to comply with our legal obligations, including but not limited to complying with court orders, warrants, subpoenas, service of process requirements, or discovery requests. We may also disclose information about our users to law enforcement officers or others, in the good faith belief that such disclosure is reasonably necessary to enforce these Terms and/or Privacy Policy; respond to claims that any Content violates the rights of third-parties; or protect the rights, property, or personal safety of Activeclassified, our users or the general public. If substantially all of our assets are sold or merged into another company, we will notify you of the transaction. The acquiring company shall be given access to your personal information without your consent. If we sell only a part of our business, the acquiring entity shall have access to your personal information without your consent and we may send you a notice regarding this sale.I. Notification of ChangesWe reserve the right to change these Terms from time to time, and at our sole discretion. We may send you a notice regarding material changes to these Terms, including the Privacy Policy or the Website. You should make note of the “last updated date” at the beginning of the Terms. With this information, you should be able to identify if the Terms have been updated recently.J. DisputesAny disputes regarding your privacy are subject to the Terms, including but not limited to any provisions related to indemnification, limitations on damages, and choice of law.K. Important Notices to Non-U.S. ResidentsActiveclassified abides by the Safe Harbor principles set forth by the U.S. Department of Commerce regarding the collection, use, and retention of applicable data from the European Union. However, it is important to note that the Website and its servers are operated in the United States. If you are located outside of the United States, please be aware that any personal information you provide to us will be transferred to the United States. By using the Website and by providing us personal information when using our services, you consent to this transfer and our use of the information and data provided by you in accordance with this Privacy Policy.In order to comply with the Safe Harbor framework, Activeclassified commits to the resolution of complaints about your privacy and our collection or use of your personal information. We have also committed to resolve any complaints by European Union citizens relating to this Privacy Policy, which cannot be resolved directly with our company, through the Council of Better Business Bureaus, Inc.’s Safe Harbor Privacy Dispute Resolution Procedures.If you have any questions regarding this Privacy Policy, please contact us as described in the “How to Contact Us” section. We will investigate your question, respond to your inquiry, and attempt to resolve any concerns regarding your privacy question. If you do not receive acknowledgement of your complaint or if your complaint is not satisfactorily addressed by Activeclassified, you should then contact the Council of Better Business Bureaus, Inc. as set forth below.In compliance with the US-EU Safe Harbor Principles, Activeclassified commits to resolve complaints about your privacy and our collection or use of your personal information. European Union citizens with inquiries or complaints regarding this privacy policy should first contact Activeclassified as described in the “How to Contact Us” section.Activeclassified has further committed to refer unresolved privacy complaints under the US-EU Safe Harbor Principles to an independent dispute resolution mechanism, the BBB EU SAFE HARBOR, operated by the Council of Better Business Bureaus. If you do not receive timely acknowledgment of your complaint, or if your complaint is not satisfactorily addressed by Activeclassified, please visit the BBB EU SAFE HARBOR web site at <a target="_blank" rel="nofollow" href="http://www.bbb.org/us/safe-harbor-complaints">www.bbb.org/us/safe-harbor-complaints</a> for more information and to file a complaint.L.How to Contact UsIf you have questions about this Privacy Policy, please contact Activeclassified via the Legal Issues report form with “Privacy Policy” in the subject line.</h2>');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(17, 'footer', '2014 © Active Classified CMS. All rights reserved.'),
(18, 'header', 'Welcome to Active Classified CMS'),
(19, 'google_ad_client_id', 'pub-9772389634309522'),
(20, 'google_box_ad_slot', '6424510008'),
(21, 'google_wide_ad_slot', '2971516007'),
(22, 'meta_tags', 'classified,activeit');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL,
  `elements` longtext,
  `status` longtext,
  `title` longtext,
  `style` varchar(20) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `elements`, `status`, `title`, `style`, `serial`) VALUES
(2, '{"images":[],"texts":[{"name":"text_1","text":"WELCOME","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"},{"name":"text_2","text":"YOUR SHOP NAME","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"},{"name":"text_3","text":"SHOP TITLE","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"}]}', 'ok', 'Welcome slider', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_style`
--

CREATE TABLE IF NOT EXISTS `slider_style` (
  `slider_style_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_style`
--

INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(1, 'WELCOME TYPE 1', '{\n   "full_slide_style":"data-ls=\\"slidedelay:6500;transition2d:all;transition3d:15;\\"",\n   "background":"bg",\n   "images":[\n\n   ],\n   "texts":[\n      {\n         "element":"h1",\n         "show_name":"WELCOME",\n         "name":"text_1",\n         "style":"top:30%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:50px;",\n         "data_ls":"offsetxin:0; durationin:2500; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      },\n      {\n         "element":"h1",\n         "show_name":"YOUR SHOP NAME",\n         "name":"text_2",\n         "style":"top:50%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:100px;  white-space: nowrap;",\n         "data_ls":"offsetxin:0; durationin:2500; delayin:500; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      },\n      {\n         "element":"h1",\n         "show_name":"SHOP TITLE",\n         "name":"text_3",\n         "style":"top:70%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:40px; white-space: nowrap;",\n         "data_ls":"offsetxin:0; durationin:2500; delayin:1200; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      }\n   ]\n}'),
(2, 'WELCOME TYPE 2', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:4500;transition2d:24,25,27,28,34,35,37,38,110,113;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"ase",\r\n         "style":"top:20px; left:50%;width:220px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:4600; easingin:easeOutQuad; fadein:false; rotatein:-10; offsetxout:0; durationout:1500;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"WELCOME TO",\r\n         "name":"text_1",\r\n         "style":"top:260px; left:50%; text-align: center;  font-weight: 300; width:300px; height:60px; font-size:30px; line-height:60px; border-radius:5px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:top; durationout:750; durationin:1000; fadeout:false;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"YOUR SHOP NAME",\r\n         "name":"text_2",\r\n         "style":"top:340px; left:50%; text-align: center; font-weight: 300; width:500px; height:100px; font-size:40px; line-height:100px; border-radius:5px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:bottom; durationin:1000; durationout:750; fadeout:false;",\r\n         "color":"#ffffff",\r\n         "background":"#8D00B0"\r\n      }\r\n   ]\r\n}'),
(3, 'SLIDER TYPE 1', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7000;transition2d:76,77,78,79;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Product Image 1",\r\n         "name":"circle_1",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:1500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; "\r\n      },\r\n      {\r\n         "show_name":"Product Image 2",\r\n         "name":"circle_2",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:3000; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; "\r\n      },\r\n      {\r\n         "show_name":"Product Image 3",\r\n         "name":"circle_3",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:4500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; easingout:easeInQuart; fadeout:false; "\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:105px; left:30px; text-align: center; font-weight: 300; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:155px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:205px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:1000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:left; delayin:1000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:255px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX;  border-radius:100px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:1500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:1500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:305px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:2000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:2000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 1",\r\n         "name":"product_title_1",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:1750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 2",\r\n         "name":"product_title_2",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:3250; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 3",\r\n         "name":"product_title_3",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:4750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(4, 'SLIDER TYPE 2', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:4500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:80px; white-space:nowrap; width:220px;",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:180px; white-space:nowrap;width:220px; ",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:100px;left:280px; white-space:nowrap; width:220px;",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_3",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:700px; font-weight:300; font-size:40px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURe 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:107px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:157px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:207px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:257px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:307px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_6",\r\n         "style":"top:357px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      }\r\n   ]\r\n}'),
(5, 'SLIDER TYPE 3', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:580px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:680px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:100px;left:780px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_3",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:80px; font-weight:300; font-size:40px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:107px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:157px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:207px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:257px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:307px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:116px; font-weight:300; font-size:30px; white-space:nowrap;",\r\n         "data_ls":"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_6",\r\n         "style":"top:357px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(6, 'SLIDER TYPE 4', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "name":"long_1",\r\n         "style":"top:60px;left:578px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "name":"semi_long_1",\r\n         "style":"top:170px;left:800px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "name":"square_1",\r\n         "style":"top:265px;left:1020px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:50px; font-size:50px; font-weight:300; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:500; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotatexout:90; transformoriginout:50; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:1000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:1500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:2000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:2500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:3000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 7",\r\n         "name":"product_feature_7",\r\n         "style":"top:400px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:3500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(7, 'SLIDER TYPE 5', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "name":"long_1",\r\n         "style":"top:50%; left:50%;width:200px; white-space:nowrap;",\r\n         "data_ls" : "",\r\n         "show_name":"IMAGE"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h6",\r\n         "show_name":"PRICE",\r\n         "name":"price",\r\n         "style":"top:55%; left:39%; durationin:500; delayin:600; fadein:false; rotatein:30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1; scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#B816B2; border-radius:5px; white-space:nowrap;",\r\n         "data_ls" : "",\r\n         "color":"#ffffff",\r\n         "background":"#b816b2"\r\n      },\r\n      {\r\n         "element":"h6",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:45%; left:36%; durationin:500; delayin:500; fadein:false; rotatein:-30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1;scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#760093;border-radius:5px; white-space:nowrap;",\r\n         "data_ls" : "",\r\n         "color":"#ffffff",\r\n         "background":"#760093"\r\n      }\r\n   ]\r\n}'),
(8, 'SLIDER TYPE 6', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:100px; width:250px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:1500; rotateyin:90; transformoriginin:left; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:left; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:400px; width:250px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:1500; rotateyin:-90; transformoriginin:right; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:right; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"font-family:Roboto;top:25px; left:192px; font-weight:100; text-align:center; width:340px; font-size:40px; border-radius:5px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:2000; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotateout:-90; transformoriginout:left; ",\r\n         "color":"#34009d",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":" DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:50px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:2300; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:90px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:2700; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:150px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:3000; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:190px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:3400; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:250px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:3700; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:290px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:4100; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 7",\r\n         "name":"dummy_text_7",\r\n         "style":"top:360px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:4400; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 8",\r\n         "name":"dummy_text_8",\r\n         "style":"top:400px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:4800; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(9, 'SLIDER TYPE 7', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:50px; left:50%;width:278px; white-space:nowrap;",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"IMAGE"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; ",\r\n         "color":"#fff",\r\n         "background":"#11008b"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; ",\r\n         "color":"#d9482b",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(10, 'SLIDER TYPE 8', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7000;transition2d:76,77,78,79;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:120px; left:42%;width:180px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:120px; left:58%;width:180px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:50px; left:50%;width:200px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"long_1",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; ",\r\n         "color":"#fff",\r\n         "background":"#11008b"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 7",\r\n         "name":"dummy_text_7",\r\n         "style":"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}');
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(11, 'WELCOME TYPE 3', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:8000;transition2d:4;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"ase",\r\n         "style":"top:45%; left:45%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:right 50% 0; offsetxout:0; durationout:1500; showuntil:1000; rotateyout:-90; transformoriginout:right 50% 0;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"Introducing",\r\n         "name":"text_1",\r\n         "style":"top:40%; left:50%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:50; durationin:750; easingin:easeOutBack; skewxin:-50; offsetxout:-50; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;",\r\n         "color":"#C505BD",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"Your Shop Name",\r\n         "name":"text_2",\r\n         "style":"top:50%; left:50%; font-weight: 300; font-size:50px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:-100; durationin:750; delayin:250; easingin:easeOutBack; skewxin:-50; offsetxout:100; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;",\r\n         "color":"#8D00AF",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"your Shop Slogan",\r\n         "name":"text_3",\r\n         "style":"top:47%; left:690px; font-weight: 300; font-size:35px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:left 50% 0; offsetxout:0; durationout:1500; showuntil:1500; rotateyout:-90; transformoriginout:left 50% 0;",\r\n         "color":"#8D00AF",\r\n         "background":"rgba(1,1,1,0)"\r\n      }\r\n   ]\r\n}'),
(12, 'SLIDER TYPE 9', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:9500;transition2d:5;timeshift:-3000;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"semi_long_1",\r\n         "style":"top:120px; left:300px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:1000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      },\r\n      {\r\n         "show_name":"Image 2",\r\n         "name":"semi_long_2",\r\n         "style":"top:120px; left:200px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:2000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      },\r\n      {\r\n         "show_name":"Image 3",\r\n         "name":"semi_long_3",\r\n         "style":"top:120px; left:100px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:3000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"text_1",\r\n         "style":"top:60px; left:800px; font-weight: 300; font-size:50px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:50; durationin:3000; rotateyin:60; transformoriginin:right 50% 0; offsetxout:-50; durationout:3000; rotateyout:-60; transformoriginout:left 50% 0;",\r\n         "color":"#730091",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"h2",\r\n         "show_name":"BIG SALE",\r\n         "name":"text_2",\r\n         "style":"top:120px; left:801px; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:-50; durationin:3000; delayin:500; rotateyin:-60; transformoriginin:left 50% 0; offsetxout:50; durationout:3000; rotateyout:60; transformoriginout:right 50% 0;",\r\n         "color":"#FA6BF3",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"h3",\r\n         "show_name":"$99",\r\n         "name":"text_3",\r\n         "style":"top:200px; left:850px; font-weight: 300; font-size:120px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:4000; delayin:2000; rotateyin:450; transformoriginin:left 50% 0; offsetxout:0; durationout:500; easingout:easeInBack; rotateyout:90; transformoriginout:left 50% 0;",\r\n         "color":"#730091",\r\n         "background":"rgba(1,1,1,0)"\r\n      }\r\n   ]\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `slides_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE IF NOT EXISTS `social_links` (
  `social_links_id` int(11) NOT NULL,
  `type` longtext COLLATE utf8_unicode_ci,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`) VALUES
(1, 'facebook', 'https://www.facebook.com/'),
(2, 'google-plus', 'http://google.com/'),
(3, 'twitter', 'http://twitter.com/'),
(4, 'skype', 'active-classified'),
(5, 'pinterest', 'http://pinterest.com/'),
(6, 'youtube', 'http://youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `email` varchar(600) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`subscribe_id`, `email`) VALUES
(1, 'customer@classified.com');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE IF NOT EXISTS `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_category_id` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `name`, `parent_category_id`) VALUES
(1, 'Mobile Phone', '1'),
(2, 'Laptop', '1'),
(3, 'Desktop', '1'),
(4, 'Others', '1'),
(5, 'Two wheels', '2'),
(6, 'Four wheels', '2'),
(10, 'Dress', '12'),
(11, 'Shoes', '12'),
(12, 'Dress', '13'),
(13, 'Shoes', '13'),
(14, 'Accessories ', '12'),
(15, 'Accessories ', '13'),
(16, 'Dress', '14'),
(17, 'Shoes', '14'),
(18, 'Accessories ', '14');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `ticket_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `time`, `from_where`, `to_where`, `subject`, `view_status`) VALUES
(1, '1459936402', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 'ghhgyu', 'ok'),
(2, '1466625523', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 'message subject', 'ok'),
(3, '1466889286', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 'Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_message`
--

CREATE TABLE IF NOT EXISTS `ticket_message` (
  `ticket_message_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `ticket_id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(100) DEFAULT NULL,
  `message` longtext
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_message`
--

INSERT INTO `ticket_message` (`ticket_message_id`, `time`, `from_where`, `to_where`, `ticket_id`, `subject`, `view_status`, `message`) VALUES
(1, '1459936402', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 1, 'ghhgyu', '{"user_show":"ok","admin_show":"ok"}', 'gyutdtfuhulihfcggggg'),
(2, '1459936445', '{"type":"admin","id":""}', '{"type":"user","id":"1"}', 1, 'ghhgyu', '{"user_show":"ok","admin_show":"ok"}', 'ghghjhuujkhgf'),
(3, '1459936562', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 1, 'ghhgyu', '{"user_show":"ok","admin_show":"ok"}', 'dffjiowjeiowadjksdjfsd'),
(4, '1466625523', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 2, 'message subject', '{"user_show":"ok","admin_show":"ok"}', 'this is a test message'),
(5, '1466625615', '{"type":"admin","id":""}', '{"type":"user","id":"1"}', 2, 'message subject', '{"user_show":"ok","admin_show":"ok"}', 'Hello, How can we help?'),
(6, '1466625641', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 2, 'message subject', '{"user_show":"ok","admin_show":"ok"}', 'oaky?'),
(7, '1466889286', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 3, 'Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima', '{"user_show":"ok","admin_show":"ok"}', 'Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur MinimaNon sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur MinimaNon sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur MinimaNon sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur MinimaNon sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur MinimaNon sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur MinimaNon sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur MinimaNon sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur MinimaNon sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur MinimaNon sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur MinimaNon sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima&nbsp;'),
(8, '1466889503', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 3, 'Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima', '{"user_show":"ok","admin_show":"ok"}', '<h3><span class="wysiwyg-color-maroon">cgyjhc <span class="wysiwyg-color-red">fgdf</span></span></h3>'),
(9, '1466889697', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 3, 'Non sit Nam placeat sit qui aspernatur esse aut nulla pariatur Minima', '{"user_show":"ok","admin_show":"ok"}', 'dfxgdrgh');

-- --------------------------------------------------------

--
-- Table structure for table `ui_settings`
--

CREATE TABLE IF NOT EXISTS `ui_settings` (
  `ui_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ui_settings`
--

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES
(1, 'side_bar_pos', 'right'),
(2, 'latest_item_div', NULL),
(3, 'most_popular_div', NULL),
(4, 'most_view_div', NULL),
(5, 'filter_div', 'on'),
(6, 'admin_login_logo', '17'),
(7, 'admin_nav_logo', '18'),
(8, 'home_top_logo', '10'),
(9, 'home_bottom_logo', '10'),
(10, 'home_category', 'null'),
(11, 'fav_ext', 'png'),
(12, 'side_bar_pos_category', 'right'),
(13, 'home_brand', 'null'),
(14, 'footer_color', 'blue'),
(15, 'header_color', 'blue'),
(16, 'menu_serial', '[{"id":1},{"id":2},{"id":3},{"id":4},{"id":6},{"id":7},{"id":5}]'),
(17, 'page_serial', '[]'),
(18, 'font', 'Roboto'),
(19, 'parallax_title', 'Introduce your cyber business with Activeclassified CMS'),
(20, 'blog_count', '4'),
(22, 'home_featured_count', '20'),
(23, 'list_product_count', '18');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `username` longtext,
  `surname` varchar(100) DEFAULT NULL,
  `email` longtext,
  `phone` longtext,
  `address1` longtext,
  `address2` longtext,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `langlat` varchar(100) DEFAULT NULL,
  `password` longtext,
  `fb_id` longtext,
  `g_id` varchar(50) DEFAULT NULL,
  `g_photo` longtext,
  `creation_date` longtext,
  `google_plus` longtext,
  `skype` longtext,
  `facebook` longtext,
  `wishlist` longtext,
  `last_login` varchar(50) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'default',
  `user_type_till` varchar(200) DEFAULT NULL,
  `left_product_type` varchar(5000) NOT NULL DEFAULT '[]'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `user_type`, `user_type_till`, `left_product_type`) VALUES
(1, 'lemasixex', 'gjnfg xfdgdz', 'user@classified.com', '342-69-6025734', 'Possimus aliquip ducimus recusandae Odit est aliquam', 'In excepturi et nulla dolore libero fuga Sed', NULL, NULL, '(0,0)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1459159547', NULL, NULL, NULL, '["36","32","40","27","47"]', '1468737446', '2', '1483904928', '[{"type":"1","number":100},{"type":"2","number":10},{"type":"3","number":100},{"type":"4","number":50}]'),
(2, 'rejik', NULL, 'user2@classified.com', '234 556 578', 'qw2w2ww', 'ererrrtty', NULL, NULL, '(0,0)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1459934951', NULL, NULL, NULL, '[]', NULL, '1', NULL, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `user_type_id` int(11) NOT NULL,
  `name` longtext,
  `details` longtext,
  `price` longtext,
  `status` longtext,
  `logo` longtext,
  `product_type` longtext
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `name`, `details`, `price`, `status`, `logo`, `product_type`) VALUES
(1, 'Free user', '"100-year"', '0', 'ok', NULL, '[{"product_type":"1","piece":"100"},{"product_type":"2","piece":"20"},{"product_type":"3","piece":"10"}]'),
(2, 'Premium user', '"200-day"', '100', 'ok', NULL, '[{"product_type":"1","piece":"100"},{"product_type":"2","piece":"10"},{"product_type":"3","piece":"100"},{"product_type":"4","piece":"50"}]');

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(11) NOT NULL,
  `code` longtext,
  `position` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `fixed` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`widget_id`, `code`, `position`, `type`, `status`, `title`, `fixed`) VALUES
(1, NULL, NULL, NULL, 'ok', 'Category', 'ok'),
(2, NULL, NULL, NULL, 'ok', 'Advanced Search', 'ok'),
(3, NULL, NULL, NULL, 'ok', 'Recently Viewed', 'ok'),
(4, NULL, NULL, NULL, 'ok', 'Most Popular', 'ok'),
(5, '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6&appId=851454511577915";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, ''script'', ''facebook-jssdk''));</script>\r\n\r\n<div class="fb-page" height="300px"  data-href="https://www.facebook.com/iycbangladesh/" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/iycbangladesh/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/iycbangladesh/">International Youth Council Bangladesh (IYCB)</a></blockquote></div>', NULL, NULL, 'ok', 'Facebook Like Box', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`business_settings_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`contact_message_id`);

--
-- Indexes for table `email_tracing`
--
ALTER TABLE `email_tracing`
  ADD PRIMARY KEY (`email_tracing_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membership_id`);

--
-- Indexes for table `membership_payment`
--
ALTER TABLE `membership_payment`
  ADD PRIMARY KEY (`membership_payment_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `slider_style`
--
ALTER TABLE `slider_style`
  ADD PRIMARY KEY (`slider_style_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`social_links_id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD PRIMARY KEY (`ticket_message_id`);

--
-- Indexes for table `ui_settings`
--
ALTER TABLE `ui_settings`
  ADD PRIMARY KEY (`ui_settings_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`widget_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `business_settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
  MODIFY `contact_message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_tracing`
--
ALTER TABLE `email_tracing`
  MODIFY `email_tracing_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `general_settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=817;
--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `membership_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `membership_payment`
--
ALTER TABLE `membership_payment`
  MODIFY `membership_payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payments_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `slider_style`
--
ALTER TABLE `slider_style`
  MODIFY `slider_style_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `social_links_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ticket_message`
--
ALTER TABLE `ticket_message`
  MODIFY `ticket_message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ui_settings`
--
ALTER TABLE `ui_settings`
  MODIFY `ui_settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `widget_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
