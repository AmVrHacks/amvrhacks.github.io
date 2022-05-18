
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `phone` longtext,
  `address` longtext,
  `email` longtext,
  `password` longtext,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 (-;-)

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'Mr. Master Admin', '01673582219', '122', 'admin@classified.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '1437476969'),
(2, 'Mr. Accountant', '017', 'dhk', 'accountant@activeclassified.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '4', '1430737266'),
(3, 'Mr manager', '021525566', 'Niketon Dhaka', 'manager@activeclassified.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '5', '1433682938'),
(5, 'Edan Meadows', '827-70-5132002', 'Qui ut a aute ut asperiores sit ab fugiat, asperiores quidem obcaecati ut ducimus, aliqua. Qui vel nostrum aliquam nesciunt.', 'ceo.activeitzone@gmail.com', '3ba053c2094c1666a5e47b5fcae6f09cb6748565', '1', '1466884932')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `page` longtext,
  `place` longtext,
  `num` longtext,
  `status` longtext,
  `link` longtext,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 (-;-)

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `page`, `place`, `num`, `status`, `link`) VALUES
(1, 'home', 'after_slider', '1', 'ok', ''),
(2, 'home', 'after_slider', '2', 'no', ''),
(3, 'home', 'after_slider', '3', 'no', ''),
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
(23, 'home', 'after_slider', '1', 'ok', '12')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `summery` varchar(1000) NOT NULL,
  `author` varchar(500) NOT NULL,
  `date` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `blog_category` varchar(25) NOT NULL,
  `number_of_view` int(11) DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 (-;-)

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(1, 'Quibusdam deleniti dicta molestiae quia mollitia ', 'Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas e', 'Consequatur', '2015-09-23', '<p [removed]=line-height: 17.1429px;"></p><p [removed]="line-height: 17.1429px;" 17.1429px;"="">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</p><div [removed]="line-height: 17.1429px;">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</div><div [removed]="line-height: 17.1429px;">  </div>', 'ok', '1', 0)(-;-)
INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(2, 'Pariatur At a ut ut cupidatat velit explicabo', 'Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas e\n', 'Cupiditate ', '2002-06-18', 'Ipsum et ad vel est, quas rem minima ex in cillum sit reprehenderit in odit eum rerum sit, illum, nobis saepe est voluptates quis placeat, repellendus. Autem ut est Nam iure quam fugiat, cumque incididunt magnam dolor quae architecto dolor facilis duis qui esse, laboriosam, nihil qui obcaecati voluptatibus duis eos omnis occaecat temporibus eu dolor voluptatem.<span [removed]="line-height: 17.1429px;"><p [removed]="line-height: 17.1429px;" 17.1429px;"="">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</p><div [removed]="line-height: 17.1429px;">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</div><div [removed]="line-height: 17.1429px;">  </div></span>', 'ok', '1', 0)(-;-)
INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(3, 'Ab quis quod voluptas proident amet aute odit consequatur voluptas at architecto fugiat', 'Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas e\n', 'Hic ', '1974-10-05', '<p [removed]=line-height: 17.1429px;"></p><p [removed]="line-height: 17.1429px;" 17.1429px;"="">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</p><div [removed]="line-height: 17.1429px;">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</div><div [removed]="line-height: 17.1429px;">  </div>', 'ok', '1', 0)(-;-)
INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(4, 'Ad aut tenetur aut enim quod doloribus quia ', 'Voluptatem id accusantium exercitation et cumque repellendus. Accusamus rerum aute nisi amet, duis aliquip in tempora sed qui expedita molestiae unde fugit, aut pariatur? Eiusmod.', 'Quia veniam', '1983-08-20', '<p>Accusamus sit, consectetur, impedit, quae distinctio. Vel voluptas amet, blanditiis ut consectetur, consequatur, nesciunt, sint aliquam odio occaecat non ex laudantium, et dolorem ex laborum architecto odit magni qui maiores architecto qui et et eu accusantium labore elit, corrupti, nobis amet, elit, qui sed exercitationem deserunt vel voluptatem, est fugiat, sed tempore, enim tempore, nihil ea eligendi eligendi qui culpa, repudiandae odio consectetur, voluptas consequuntur animi, non.', 'ok', '2', 1),
(5, 'Ea aut pariatur Non et qui quia at in soluta sit qui voluptas fuga', 'Obcaecati mollit non atque nisi esse', 'Repudiandae \n', '1996-05-22', 'Duis cillum aut sed aute', 'ok', '6', 382),
(6, 'Sed pariatur Assumenda dolor cum dolore est harum dignissimos rerum', 'Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas e\n', 'Voluptatem ', '1998-11-23', 'Et illum ea molestias omnis sunt mollit laborum aut ea', 'ok', '1', 844),
(7, 'Velit ', 'Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas e\r\n', 'Quibusdam ', '2015-11-11', 'Placeat eiusmod libero vero dolorem', 'ok', '1', NULL)(-;-)
INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(8, 'dummy text', '<p><span [removed]="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</span><br></p>', 'mmm', '1989-01-03', '<p><br></p><p> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p><p><span [removed]="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem Ipsum</span><span [removed]="" rgb(0,="" 0,="" 0);="" font-family:="" arial,="" helvetica,="" sans;="" font-size:="" 11px;="" line-height:="" 14px;="" text-align:="" justify;"=""> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'ok', '6', NULL)(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  PRIMARY KEY (`blog_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 (-;-)

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
(7, 'Science Fiction ')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `description` longtext,
  `category` varchar(10) DEFAULT NULL,
  `added_by` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 (-;-)

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE IF NOT EXISTS `business_settings` (
  `business_settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`business_settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 (-;-)

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(1, 'paypal_email', 'ok', ''),
(2, 'shipping_cost', 'ok', '0'),
(3, 'shipping_cost_type', '', 'product_wise'),
(4, 'currency', '', '$')(-;-)
INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(6, 'shipment_info', '', '')(-;-)
INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '1'),
(9, 'paypal_set', '', 'ok'),
(10, 'paypal_type', '', 'sandbox'),
(11, 'faqs', '', '[{"question":"sdf","answer":"sdf"}]'),
(12, 'cash_set', '', 'ok'),
(13, 'stripe_set', '', 'ok'),
(14, 'stripe_secret', '', ''),
(15, 'stripe_publishable', '', ''),
(16, 'currency_format', NULL, '1')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 (-;-)

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
(15, 'Travel ')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE IF NOT EXISTS `contact_message` (
  `contact_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` longtext,
  `timestamp` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `reply` longtext,
  `other` longtext,
  PRIMARY KEY (`contact_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 (-;-)

-- --------------------------------------------------------

--
-- Table structure for table `email_tracing`
--

CREATE TABLE IF NOT EXISTS `email_tracing` (
  `email_tracing_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `massage` longtext,
  `product` varchar(50) DEFAULT NULL,
  `sender_info` longtext,
  `product_owner` longtext,
  `date` longtext NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email_tracing_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 (-;-)

--
-- Dumping data for table `email_tracing`
--

INSERT INTO `email_tracing` (`email_tracing_id`, `email`, `massage`, `product`, `sender_info`, `product_owner`, `date`, `phone`) VALUES
(1, 'abc@abc.com', 'fygyyghghy', '38', '{"as":"AS23956 AmberIT Limited","city":"Dhaka","country":"Bangladesh","countryCode":"BD","isp":"dhakaCom Limited","lat":23.7231,"lon":90.4086,"org":"AmberIT Limited","query":"118.179.165.41","region":"C","regionName":"Dhaka Division","status":"success","timezone":"Asia/Dhaka","zip":"1000"}', '1', ' 06/04/2016  ', '2456678899')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE IF NOT EXISTS `general_settings` (
  `general_settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext,
  `value` longtext,
  PRIMARY KEY (`general_settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 (-;-)

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'Active Classifieds'),
(2, 'system_email', 'admin@shop.com'),
(3, 'system_title', ' Active Classifieds'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'english')(-;-)
INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(9, 'terms_conditions', '<span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span>')(-;-)
INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(10, 'fb_appid', ''),
(11, 'fb_secret', ''),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', ''),
(26, 'meta_author', 'ActiveItZone'),
(27, 'captcha_public', '6LdsXPQSAAAAALRQB-m8Irt6-2_s2t10QsVnndVN'),
(28, 'captcha_private', '6LdsXPQSAAAAAFEnxFqW9qkEU_vozvDvJFV67yho'),
(29, 'application_name', ''),
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
(46, 'admin_notification_volume', '10.00')(-;-)
INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(47, 'privacy_policy', '<p><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><span style="line-height: 17.1429px;">Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.</span><br></p>')(-;-)
INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(48, 'discus_id', 'activeittest'),
(49, 'home_notification_sound', 'no'),
(50, 'homepage_notification_volume', '10.00'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'no'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'disqus'),
(58, 'vendor_system', NULL),
(59, 'cache_time', '10'),
(60, 'file_folder', 'hjhjghhh'),
(62, 'slides', 'ok'),
(63, 'contact_lat_lang', '(40.7127837, -74.00594130000002)'),
(64, 'preloader', '21'),
(65, 'preloader_bg', 'rgba(51,55,61,1)'),
(66, 'map', 'no'),
(67, 'initial_upload', 'pending'),
(68, 'post_without_login', NULL),
(69, 'cron_time', '1468397139'),
(70, 'cron_gap', '600'),
(72, 'map_api', ''),
(71, 'preloader_obj', 'rgba(255,255,255,1)')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext,
  `Spanish` longtext,
  `Arabic` longtext,
  `French` longtext,
  `bangla` longtext
) ENGINE=InnoDB AUTO_INCREMENT=819 DEFAULT CHARSET=utf8(-;-)


--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Spanish`, `Arabic`, `French`, `bangla`) VALUES
(1, 'home', 'Home', 'Casa', 'الصفحة الرئيسية', 'Accueil', 'বাড়ি'),
(2, 'login', 'Login', 'Iniciar sesión', 'تسجيل الدخول', 'S''identifier', 'লগইন'),
(3, 'sign_up', 'Sign Up', 'Regístrate', 'سجل', 'S''inscrire', 'নিবন্ধন করুন'),
(4, 'compare', 'Compare', 'Comparar', 'قارن', 'Comparer', 'তুলনা করা'),
(5, 'condition', 'Condition', 'Condición', 'شرط', 'Condition', 'শর্ত'),
(6, 'used', 'Used', 'Usado', 'مستعمل', 'Utilisé', 'ব্যবহৃত'),
(7, 'new', 'New', 'Nuevo', 'جديد', 'Nouveau', 'নতুন'),
(8, 'featured_items', 'Featured Items', 'Elementos destacados', 'السلع المعروضة', 'Articles en vedette', 'বৈশিষ্ট্যযুক্ত আইটেম'),
(9, 'latest_item', 'Latest Item', 'El último artículo', 'أحدث البند', 'Dernier article', 'সর্বশেষ আইটেম'),
(10, 'all_blogs', 'All Blogs', 'Todos los blogs', 'كل المدونات', 'Tous les blogs', 'সকল ব্লগ'),
(11, 'contact', 'Contact', 'Contacto', 'اتصال', 'Contact', 'যোগাযোগ'),
(12, 'distance', 'Distance', 'Distancia', 'المسافات', 'Distance', 'দূরত্ব'),
(13, 'post_an_ad', 'Post An Ad', 'Publica un anuncio', 'آخر إعلانك', 'Poster une annonce', 'পোস্ট একটি বিজ্ঞাপন'),
(14, 'quick_view', 'Quick View', 'Vista rápida', 'نظرة سريعة', 'Aperçu rapide', 'তারাতারি দেখা'),
(15, 'favorite', 'Favorite', 'Favorito', 'المفضل', 'Préféré', 'প্রিয়'),
(16, 'see_more', 'See More', 'Ver más', 'شاهد المزيد', 'Voir plus', 'আরো দেখুন'),
(17, 'search_for_products', 'Search For Products', 'Buscar productos', 'بحث عن المنتجات', 'Rechercher des produits', 'পণ্যগুলি সন্ধান'),
(18, 'select_condition', 'Select Condition', 'Seleccionar condición', 'اختر الحالة', 'Sélectionnez Condition', 'শর্ত নির্বাচন'),
(19, 'area', 'Area', 'Zona', 'منطقة', 'Région', 'ফোন'),
(20, 'search_for_location', 'Search For Location', 'Buscar ubicación', 'البحث عن الموقع', 'Rechercher Lieu', 'অবস্থানের জন্য অনুসন্ধান করুন'),
(21, 'price', 'Price', 'Precio', 'السعر', 'Prix', 'মূল্য'),
(22, 'search', 'Search', 'Buscar', 'بحث', 'Chercher', 'অনুসন্ধান'),
(23, 'sort_by', 'Sort By', 'Ordenar por', 'ترتيب حسب', 'Trier par', 'ক্রমানুসার'),
(24, 'price_low_to_high', 'Price Low To High', 'Precios de barato a caro', 'السعر الأدنى إلى الأعلى', 'Prix ​​bas au plus élevé', 'দাম কম থেকে'),
(25, 'price_high_to_low', 'Price High To Low', 'Precio mayor a menor', 'السعر مرتفع إلى منخفض', 'Prix ​​élevé au plus bas', 'মূল্য থেকে কম'),
(26, 'oldest', 'Oldest', 'Más antiguo', 'أقدم', 'Le plus ancien', 'প্রবীণতম'),
(27, 'newest', 'Newest', 'El más nuevo', 'الأحدث', 'Date', 'নতুন'),
(28, 'most_viewed', 'Most Viewed', 'Mas visto', 'الأكثر مشاهدة', 'Le plus regardé', 'সর্বাধিক দেখা'),
(29, 'I want to find...', 'I Want To Find...', 'Yo quiero encontrar...', 'انا اريد ان اجد...', 'Je veux trouver...', 'আমি খুঁজতে চাই...'),
(30, 'successful_login', 'Successful Login', 'Acceso exitoso', 'ناجح الدخول', 'Connexion réussie', 'সফল অনুপ্রবেশ'),
(31, 'login_failed', 'Login Failed', 'Error de inicio de sesion', 'فشل تسجيل الدخول', 'Échec de la connexion', 'লগইন ব্যর্থ'),
(32, 'address  :  ', 'Address  :  ', 'dirección:  ', 'عنوان :  ', 'Adresse :  ', 'ঠিকানা:  '),
(33, 'phone  :  ', 'Phone  :  ', 'teléfono:  ', 'هاتف :  ', 'Téléphone :  ', 'ফোন:  '),
(34, 'email  :  ', 'Email  :  ', 'Email :  ', 'البريد الإلكتروني :  ', 'Email :  ', 'ই-মেইল:  '),
(35, 'ceo_@aiz_.com', 'Ceo @aiz .com', 'Ceo @aiz en línea', 'الرئيس التنفيذي لشركةaiz على الانترنت', 'Ceo @aiz en ligne', 'প্রধান নির্বাহী কর্মকর্তা অনলাইন @aiz'),
(36, 'website  :  ', 'Website  :  ', 'Página Web:  ', 'موقع الكتروني :  ', 'Site Internet :  ', 'ওয়েবসাইট:  '),
(37, 'activeitzone.com', 'Activeitzone.com', 'Activeitzone.com', 'Activeitzone.com', 'Activeitzone.com', 'Activeitzone.com'),
(38, 'follow_us', 'Follow Us', 'Síguenos', 'تابعنا', 'Suivez-nous', 'আমাদের অনুসরণ করো'),
(39, 'about_us', 'About Us', 'Sobre nosotros', 'معلومات عنا', 'À propos de nous', 'আমাদের সম্পর্কে'),
(40, 'product_added_to_cart', 'Product Added To Cart', 'Producto añadido a la cesta', 'واضاف المنتج للسلة', 'Produit ajouté au panier', 'পণ্য কার্ট যোগ'),
(41, 'added_to_cart', 'Added To Cart', 'Añadido al carro', 'تم إضافته للسلة', 'Ajouté au panier', 'কার্ট যোগ'),
(42, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', 'Producto Cantidad Exceed disponibles!', 'المنتج الكمية تتجاوز التوفر!', 'Produit Quantité Exceed Disponibilité!', 'পণ্যের পরিমাণ প্রাপ্তিস্থান অতিক্রম!'),
(43, 'product_already_added_to_cart!', 'Product Already Added To Cart!', 'Producto Ya se ha añadido a la cesta!', 'المنتج أضفت إلى السلة!', 'Produit Déjà ajouté au panier!', 'পণ্য ইতিমধ্যে কার্ট যোগ করা হয়েছে!'),
(44, 'product_added_to_wishlist', 'Product Added To Wishlist', 'Producto añadido a la lista de deseos', 'واضاف المنتج الى قائمه التمني', 'Produit ajouté à la liste', 'প্রোডাক্ট পছন্দে যোগ করা হয়েছে'),
(45, 'wished', 'Wished', 'deseado', 'تمنى', 'souhaité', 'কাম্য'),
(46, 'wishing..', 'Wishing..', 'Deseando..', 'متمنيا ..', 'Souhaitant ..', 'তবেই ..'),
(47, 'product_removed_from_wishlist', 'Product Removed From Wishlist', 'Producto removido de la Lista de Deseos', 'تمت إزالة المنتج من قائمة الامنيات', 'Produit retiré de la liste d''envies', 'পণ্যের তালিকা থেকে সরানো'),
(48, 'product_added_to_compared', 'Product Added To Compared', 'Producto añadido a la comparación', 'وأضاف المنتج لمقارنة', 'Produit ajouté à la comparaison', 'পণ্য তুলনা যোগ করা হয়েছে'),
(49, 'compared', 'Compared', 'Comparado', 'مقارنة', 'Par rapport', 'তুলনা'),
(50, 'working..', 'Working..', 'Trabajando..', 'العمل ..', 'Travailler..', 'ওয়ার্কিং ..'),
(51, 'product_removed_from_compare', 'Product Removed From Compare', 'Producto ha retirado de la comparación', 'إزالة المنتجات من قارن', 'Produit retiré Comparer', 'পণ্য তুলনা করুন থেকে সরানো'),
(52, 'compare_category_full', 'Compare Category Full', 'Comparar categoría completa', 'قارن الفئة كامل', 'Comparer Catégorie complète', 'ফুল শ্রেণী তুলনা'),
(53, 'product_already_added_to_compare', 'Product Already Added To Compare', 'Producto Ya se añadió a Comparativa', 'المنتج أضفت إلى قارن', 'Produit Déjà ajouté à comparer', 'পণ্য ইতিমধ্যে তুলনা যোগ করা'),
(54, 'product_rated_successfully', 'Product Rated Successfully', 'Producto puntuado', 'المنتج تقييمه بنجاح', 'Produit évalué avec succès', 'পণ্যটি সফলভাবে তিরস্কার করা'),
(55, 'product_rating_failed', 'Product Rating Failed', 'Calificación del producto Falló', 'فشل التصويت المنتج', 'Évaluation du produit a échoué', 'পণ্য রেটিং ব্যর্থ'),
(56, 'you_already_rated_this_product', 'You Already Rated This Product', 'Ya calificó este producto', 'كنت تقييمه إذا هذا المنتج', 'Vous avez déjà évalué ce produit', 'আপনি ইতিমধ্যে এই পণ্য রেট'),
(57, 'you_already_subscribed', 'You Already Subscribed', 'Usted ya suscritos', 'أنت مشترك بالفعل', 'Vous êtes déjà inscrit', 'আপনি ইতিমধ্যে সদস্যতা'),
(58, 'you_subscribed_successfully', 'You Subscribed Successfully', 'Usted suscrito correctamente', 'كنت المشترك بنجاح', 'Vous avez souscrit avec succès', 'আপনি সফলভাবে সাবস্ক্রাইব'),
(59, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', 'Usted ya suscritos Tres Veces De este navegador', 'أنت مشترك بالفعل ثلاث مرات من هذا المتصفح', 'Vous êtes déjà inscrit Thrice De ce navigateur', 'আপনি ইতিমধ্যে এই ব্রাউজার থেকে তিনবার সাবস্ক্রাইব'),
(60, 'logging_in..', 'Logging In..', 'Iniciar sesión..', 'تسجيل الدخول..', 'Se connecter..', 'লগ-ইন ..'),
(61, 'you_logged_in_successfully', 'You Logged In Successfully', 'Se ha conectado con éxito', 'لقد دخلت بنجاح', 'Vous connecté avec succès', 'আপনি সফলভাবে লগ ইন'),
(62, 'login_failed!_try_again!', 'Login Failed! Try Again!', '¡Error de inicio de sesion! </font><font>¡Inténtalo de nuevo!', 'فشل تسجيل الدخول! </font><font>حاول ثانية!', 'Échec de la connexion! </font><font>Réessayer!', 'লগইন ব্যর্থ! </font><font>আবার চেষ্টা কর!'),
(63, 'you_registered_successfully', 'You Registered Successfully', 'Usted registrado correctamente', 'كنت مسجل بنجاح', 'Vous enregistré avec succès', 'আপনি সাফল্যের সাথে নিবন্ধিত'),
(64, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', '¡Registro fallido! </font><font>¡Inténtalo de nuevo!', 'فشل في التسجيل! </font><font>حاول ثانية!', 'Échec de l''enregistrement! </font><font>Réessayer!', 'রেজিস্ট্রেশন ব্যর্থ হয়েছে! </font><font>আবার চেষ্টা কর!'),
(65, 'submitting..', 'Submitting..', 'Sumisión..', 'تقديم..', 'Soumission..', 'জমা দেওয়া হচ্ছে ..'),
(66, 'email_sent_successfully', 'Email Sent Successfully', 'Correo electrónico enviado con éxito', 'البريد الإلكتروني المرسلة بنجاح', 'E-mail envoyé avec succès', 'এটি ইমেল সফলভাবে পাঠানো'),
(67, 'email_does_not_exist!', 'Email Does Not Exist!', 'Correo electrónico no existe!', 'البريد الإلكتروني غير موجود!', 'Email n''existe pas!', 'ইমেল অস্তিত্ব নেই!'),
(68, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', 'Envío de correo electrónico Error! </font><font>Inténtalo de nuevo', 'إرسال البريد الإلكتروني فشل! </font><font>حاول ثانية', 'Email Sending Failed! </font><font>Réessayer', 'ইমেল পাঠাতে ব্যর্থ! </font><font>আবার চেষ্টা কর'),
(69, 'logging_in', 'Logging In', 'Iniciar sesión', 'تسجيل الدخول', 'Se connecter', 'লগ-ইন'),
(70, 'adding_to_cart..', 'Adding To Cart..', 'Añadiendo al carro ..', 'إضافة إلى السلة ..', 'Ajout au panier ..', 'কার্ট যোগ ..'),
(71, 'product_removed_from_cart', 'Product Removed From Cart', 'Producto Fuera de la cesta', 'تمت إزالة المنتج من العربة', 'Produit retiré du panier', 'প্রোডাক্ট কার্ট থেকে সরানো'),
(72, 'the_field_is_required', 'The Field Is Required', 'El campo es obligatorio', 'مطلوب الميدان', 'Le champ est obligatoire', 'তথ্যটি প্রয়োজনীয়'),
(73, 'must_be_a_number', 'Must Be A Number', 'Tiene que ser un número', 'يجب أن يكون رقما', 'Doit être un nombre', 'অবশ্যই একটি সংখ্যা হবে'),
(74, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', 'Debe ser una dirección de correo electrónico válida', 'يجب أن يكون عنوان بريد إلكتروني صالح', 'Must Be A Adresse électronique valide', 'একটি বৈধ ইমেইল ঠিকানা আবশ্যক'),
(75, 'category:', 'Category:', 'Categoría:', 'فئة:', 'Catégorie:', 'বিভাগ:'),
(76, 'sub Category:', 'Sub Category:', 'Sub Categoría:', 'التصنيف الفرعي:', 'Sous catégorie:', 'সাব ক্যাটাগরি:'),
(77, 'condition:', 'Condition:', 'Condición:', 'شرط:', 'Condition:', 'কন্ডিশন:'),
(78, 'date:', 'Date:', 'Fecha:', 'تاريخ:', 'Date:', 'তারিখ:'),
(79, 'contact_author', 'Contact Author', 'Contacto Autor', 'الاتصال الكاتب', 'contacter l''auteur', 'লেখকের সঙ্গে যোগাযোগ করুন'),
(80, 'category', 'Category', 'Categoría', 'فئة', 'Catégorie', 'বিভাগ'),
(81, 'All', 'All', 'Todas', 'جميع', 'Tout', 'সব'),
(82, 'sign_in_to_your_account', 'Sign In To Your Account', 'Iniciar sesión en su cuenta', 'تسجيل الدخول إلى حسابك', 'Connectez-vous à votre compte', 'আপনার অ্যাকাউন্টে সাইন ইন করুন'),
(83, 'email', 'Email', 'Email', 'البريد الإلكتروني', 'Email', 'ই-মেইল'),
(84, 'password', 'Password', 'Contraseña', 'كلمه السر', 'Mot de passe', 'পাসওয়ার্ড'),
(85, 'forget_password', 'Forget Password', 'Contraseña olvidada', 'نسيت كلمة المرور', 'Mot de passe oublié', 'পাসওয়ার্ড ভুলে গেছেন'),
(86, 'email_sent_with_new_password!', 'Email Sent With New Password!', 'El correo electrónico enviado con la nueva contraseña!', 'البريد الإلكتروني المرسلة مع كلمة السر الجديدة!', 'Email envoyé avec nouveau mot de passe!', 'ইমেল নতুন পাসওয়ার্ড দিয়ে পাঠানো হয়েছে!'),
(87, 'forgot_password', 'Forgot Password', 'Se te olvidó tu contraseña', 'هل نسيت كلمة المرور', 'Mot de passe oublié', 'পাসওয়ার্ড ভুলে গেছেন'),
(88, 'sign_in', 'Sign In', 'Registrarse', 'تسجيل الدخول', 'Se connecter', 'প্রবেশ কর'),
(89, 'cancelled', 'Cancelled', 'Cancelado', 'تم الالغاء', 'Annulé', 'বাতিল হয়েছে'),
(90, 'this_field_is_required', 'This Field Is Required', 'Este campo es requerido', 'هذه الخانة مطلوبه', 'Ce champ est requis', 'ঘরটি অবশ্যই পূরণ করতে হবে'),
(91, 'signing_in...', 'Signing In...', 'Iniciando sesión...', 'تسجيل الدخول...', 'Connectez-vous...', 'সাইন ইন...'),
(92, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', 'Nueva contraseña a su correo electrónico', 'كلمة السر الجديدة المرسلة إلى البريد الإلكتروني الخاص بك', 'Nouveau mot de passe envoyé à votre Email', 'নতুন পাসওয়ার্ড আপনার ইমেইল পাঠানো'),
(93, 'login_failed!', 'Login Failed!', '¡Error de inicio de sesion!', 'فشل تسجيل الدخول!', 'Échec de la connexion!', 'লগইন ব্যর্থ!'),
(94, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', 'Equivocado de dirección de correo electrónico! </font><font>Inténtalo de nuevo', 'الخطأ عنوان البريد الإلكتروني! </font><font>حاول ثانية', 'Mauvais Adresse E-mail! </font><font>Réessayer', 'ভুল ই-মেইল অ্যাড্রেস! </font><font>আবার চেষ্টা কর'),
(95, 'login_successful!', 'Login Successful!', '¡Inicio de sesión correcto!', 'تم الدخول بنجاح!', 'Connexion réussie!', 'সফল লগইন!'),
(96, 'SUCCESS!', 'SUCCESS!', '¡ÉXITO!', 'نجاح!', 'LE SUCCÈS!', 'সাফল্য!'),
(97, 'reset_password', 'Reset Password', 'Restablecer la contraseña', 'اعادة تعيين كلمة السر', 'réinitialiser le mot de passe', 'পাসওয়ার্ড রিসেট করুন'),
(98, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', 'Cuenta no han sido aprobados. </font><font>Esperar la aprobación.', 'الحساب غير المعتمدة. </font><font>الانتظار للحصول على الموافقة.', 'Compte non approuvé. </font><font>Attendre pour approbation.', 'অ্যাকাউন্ট অনুমোদিত নয়. </font><font>অনুমোদন লাগবে.'),
(99, 'visit_home_page', 'Visit Home Page', 'Visita Página Principal', 'زيارة الصفحة الرئيسية', 'Visitez la page d''accueil', 'যান পাতা'),
(100, 'profile', 'Profile', 'Perfil', 'الملف الشخصي', 'Profil', 'প্রোফাইলের'),
(101, 'logout', 'Logout', 'Cerrar sesión', 'خروج', 'Se déconnecter', 'প্রস্থান'),
(102, 'dashboard', 'Dashboard', 'Tablero', 'لوحة القيادة', 'Tableau de bord', 'ড্যাশবোর্ড'),
(103, 'pending_order_map', 'Pending Order Map', 'Orden Pendiente Mapa', 'في انتظار ترتيب خريطة', 'En attente Ordre Plan', 'মুলতুবি অর্ডার ম্যাপ'),
(104, 'present_customer_live_on_your_store', 'Present Customer Live On Your Store', 'Presente en vivo al cliente en su tienda', 'الحالي لايف العملاء في مخزن لديك', 'Présent en direct à la clientèle sur votre magasin', 'বর্তমান গ্রাহক লাইভ আপনার দোকান উপর'),
(105, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', 'Categoría Wise mensual de la', 'فئة الحكيم المالية الشهرية', 'Catégorie Wise mensuel Stock', 'বিষয়শ্রেণী প্রজ্ঞাময় মাসের স্টক'),
(106, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', 'Régimen Venta Wise mensual', 'فئة الحكيم شهري بيع', 'Catégorie Wise mensuel Vente', 'বিষয়শ্রেণী প্রজ্ঞাময় মাসিক বিক্রয়'),
(107, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', 'Destruye Categoría Wise mensual', 'تدمير فئة الحكيم شهري', 'Détruisez Catégorie Wise mensuel', 'বিষয়শ্রেণী প্রজ্ঞাময় মাসের ধ্বংস করো'),
(108, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', 'Categoría Wise Mensual Gran Beneficio', 'فئة الحكيم شهري الكبرى الربح', 'Catégorie Wise mensuel du Grand Profit', 'বিষয়শ্রেণী প্রজ্ঞাময় মাসের গ্র্যান্ড মুনাফা'),
(109, 'advertisement', 'Advertisement', 'Anuncio', 'الاعلان', 'Publicité', 'বিজ্ঞাপন'),
(110, 'advertise_category', 'Advertise Category', 'Publicidad Categoría', 'أعلن الفئة', 'Annoncez Catégorie', 'বিজ্ঞাপন বিভাগ'),
(111, 'advertise_sub-category', 'Advertise Sub-category', 'Publicidad Sub-categoría', 'أعلن الفئة الفرعية', 'Annoncez Sous-catégorie', 'বিজ্ঞাপন উপ-বিভাগ'),
(112, 'all_advertise', 'All Advertise', 'Todos Publicidad', 'كل إعلان', 'Tous Annoncez', 'সকল বিজ্ঞাপন'),
(113, 'blog', 'Blog', 'Blog', 'مدونة', 'Blog', 'ব্লগ'),
(114, 'all_blog_categories', 'All Blog Categories', 'Todas las Categorías del blog', 'جميع فئات المدونة', 'Toutes les catégories blog', 'সকল ব্লগ বিভাগ'),
(115, 'email_tracing', 'Email Tracing', 'Rastreo de correo electrónico', 'البريد الإلكتروني للبحث عن المفقودين', 'Email Tracing', 'ইমেল ট্রেসিং'),
(116, 'Ticket', 'Ticket', 'Boleto', 'تذكرة', 'Billet', 'টিকিট'),
(117, 'users', 'Users', 'usuarios', 'المستخدمين', 'Utilisateurs', 'ব্যবহারকারীরা'),
(118, 'reports', 'Reports', 'Informes', 'تقارير', 'Rapports', 'প্রতিবেদন'),
(119, 'category_wise_product', 'Category Wise Product', 'Categoría del producto Wise', 'فئة الحكيم المنتج', 'Catégorie Wise produit', 'বিষয়শ্রেণী প্রজ্ঞাময় পণ্য'),
(120, 'product_wishes', 'Product Wishes', 'Deseos de productos', 'التمنيات المنتج', 'Wishes du produit', 'প্রোডাক্ট শুভেচ্ছা'),
(121, 'most_viewed_products', 'Most Viewed Products', 'Productos más Vistos', 'المنتجات الأكثر مشاهدة', 'Produits les plus vues', 'সর্বাধিক দেখা পণ্য'),
(122, 'packages', 'Packages', 'paquetes', 'حزم', 'Paquets', 'প্যাকেজ'),
(123, 'product_package', 'Product Package', 'paquete de productos', 'حزمة المنتج', 'Package de produit', 'পণ্যের প্যাকেজ'),
(124, 'user_package', 'User Package', 'paquete de usuarios', 'المستخدم حزمة', 'Ensemble Utilisateur', 'ব্যবহারকারী প্যাকেজ'),
(125, 'pages_&_menu', 'Pages & Menu', 'Páginas y Menú', 'صفحات والقائمة', 'Pages &amp; Menu', 'পেজ &amp; মেনু'),
(126, 'page', 'Page', 'Página', 'صفحة', 'Page', 'পৃষ্ঠা'),
(127, 'menus', 'Menus', 'menús', 'القوائم', 'menus', 'মেনু'),
(128, 'widgets', 'Widgets', 'Reproductores', 'الحاجيات', 'Widgets', 'উইজেট'),
(129, 'slider_settings', 'Slider Settings', 'Configurar deslizador', 'إعدادات المنزلق', 'Paramètres Slider', 'স্লাইডার সেটিংস'),
(130, 'layer_slider', 'Layer Slider', 'Deslizador capa', 'المتزلج طبقة', 'Curseur Layer', 'লেয়ার স্লাইডার'),
(131, 'top_slides', 'Top Slides', 'Top Diapositivas', 'أعلى الشرائح', 'Top Diapositives', 'শীর্ষ স্লাইড'),
(132, 'front_settings', 'Front Settings', 'Ajustes delanteros', 'إعدادات الأمامية', 'Réglages avant', 'ফ্রন্ট সেটিংস'),
(133, 'banner_settings', 'Banner Settings', 'Ajustes Banner', 'إعدادات راية', 'Paramètres Bannière', 'ব্যানার সেটিংস'),
(134, 'site_settings', 'Site Settings', 'Configuración del sitio', 'إعدادات الموقع', 'Paramètres du site', 'সাইট সেটিং'),
(135, 'staffs', 'Staffs', 'Staffs', 'الموظفين', 'Staffs', 'কর্মীরা'),
(136, 'all_staffs', 'All Staffs', 'todos los Estados Mayores', 'كل الأركان', 'Tous les états-majors', 'সমস্ত লাঠি'),
(137, 'staff_permissions', 'Staff Permissions', 'Permisos de los funcionarios', 'ضوابط الموظفين', 'Autorisations du personnel', 'স্টাফ অনুমতিসমূহ'),
(138, 'messaging', 'Messaging', 'Mensajería', 'الرسائل', 'Messagerie', 'মেসেজিং'),
(139, 'newsletters/bulk_email', 'Newsletters/bulk Email', 'Boletines / correo electrónico a granel', 'النشرات الإخبارية / الجزء الأكبر البريد الإلكتروني', 'Newsletters / Bulk Email', 'নিউজ লেটার / বাল্ক ইমেইল'),
(140, 'contact_messages', 'Contact Messages', 'contacto Mensajes', 'رسائل الاتصال', 'Messages de contact', 'যোগাযোগ বার্তা'),
(141, 'language', 'Language', 'Idioma', 'لغة', 'La langue', 'ভাষা'),
(142, 'business_settings', 'Business Settings', 'Configuración de negocio', 'إعدادات الأعمال', 'Paramètres d''affaires', 'ব্যবসা সেটিং'),
(143, 'manage_admin_profile', 'Manage Admin Profile', 'Administrar perfil de administración', 'إدارة المشرف لتعريف', 'Gérer le profil Administrateur', 'এডমিন প্রোফাইল পরিচালনা'),
(144, 'SEO_proggres', 'SEO Proggres', 'SEO Proggres', 'SEO Proggres', 'SEO Proggres', 'এসইও Proggres'),
(145, 'online_tutorial', 'Online Tutorial', 'Tutorial en línea', 'دروس عبر الإنترنت', 'Tutoriel en ligne', 'অনলাইন টিউটোরিয়াল'),
(146, 'checkout', 'Checkout', 'Revisa', 'الدفع', 'Check-out', 'চেকআউট'),
(147, 'deleted_successfully', 'Deleted Successfully', 'Borrado exitosamente', 'حذف بنجاح', 'supprimé avec succès', 'সফলভাবে মোছা হয়েছে'),
(148, 'cancel', 'Cancel', 'Cancelar', 'إلغاء', 'Annuler', 'বাতিল'),
(149, 'required', 'Required', 'Necesario', 'مطلوب', 'Obligatoire', 'প্রয়োজনীয়'),
(150, 'save', 'Save', 'Salvar', 'حفظ', 'sauvegarder', 'সংরক্ষণ করুন'),
(151, 'product_published!', 'Product Published!', 'Publicado producto!', 'المنتج النشر!', 'Produit Publié!', 'প্রোডাক্ট প্রকাশিত!'),
(152, 'product_unpublished!', 'Product Unpublished!', 'Producto sin publicar!', 'المنتج غير منشورة!', 'Produit inédit!', 'প্রোডাক্ট অপ্রকাশিত!'),
(153, 'product_featured!', 'Product Featured!', 'Producto Especial!', 'المنتج مميزة!', 'Produit vedette!', 'প্রোডাক্ট আলোচিত!'),
(154, 'product_unfeatured!', 'Product Unfeatured!', 'Sin rasgos producto!', 'المنتج Unfeatured!', 'Unfeatured produit!', 'প্রোডাক্ট Unfeatured!'),
(155, 'product_in_todays_deal!', 'Product In Todays Deal!', 'Producto en el actual Acuerdo!', 'المنتج في هذه الأيام صفقة!', 'Produit Dans Todays Deal!', 'আজকের ডীল পণ্য!'),
(156, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', 'Producto de hoy ha retirado de la oferta!', 'المنتج إزالتها من هذه الأيام صفقة!', 'Produit Supprimé De Todays Deal!', 'পণ্য আজকের ডিল থেকে সরানো!'),
(157, 'slider_published!', 'Slider Published!', 'Publicado deslizador!', 'المتزلج نشر!', 'Curseur Publié!', 'স্লাইডার প্রকাশিত!'),
(158, 'slider_unpublished!', 'Slider Unpublished!', 'Deslizador inédito!', 'المنزلق غير منشورة!', 'Curseur inédit!', 'স্লাইডার অপ্রকাশিত!'),
(159, 'page_published!', 'Page Published!', 'Publicado página!', 'الصفحة نشر!', 'Publié page!', 'পাতা প্রকাশিত!'),
(160, 'page_unpublished!', 'Page Unpublished!', 'Página inédito!', 'الصفحة غير منشورة!', 'Page inédite!', 'পাতা অপ্রকাশিত!'),
(161, 'menu_published!', 'Menu Published!', 'Publicado menú!', 'القائمة نشر!', 'Menu Publié!', 'মেনু প্রকাশিত!'),
(162, 'menu_unpublished!', 'Menu Unpublished!', 'Menú inédito!', 'القائمة لم تنشر!', 'Menu inédit!', 'মেনু অপ্রকাশিত!'),
(163, 'notification_sound_enabled!', 'Notification Sound Enabled!', 'Notificación de sonido habilitado!', 'صوت الإعلام المتعددة!', 'Notification sonore activé!', 'নোটিফিকেশন সাউন্ড Enabled!'),
(164, 'notification_sound_disabled!', 'Notification Sound Disabled!', 'Notificación de sonido habilitado!', 'إخطار الصوت معطل!', 'Notification sonore désactivé!', 'নোটিফিকেশন সাউন্ড অক্ষম করা হয়েছে!'),
(165, 'google_login_enabled!', 'Google Login Enabled!', 'Google inicia sesión habilitado!', 'جوجل الدخول ممكن!', 'Google Connexion activé!', 'গুগল লগ-ইন সক্রিয়!'),
(166, 'google_login_disabled!', 'Google Login Disabled!', 'Google inicia sesión para discapacitados!', 'جوجل دخول المعاقين!', 'Google Login Disabled!', 'Google লগইন অক্ষম করা হয়েছে!'),
(167, 'facebook_login_enabled!', 'Facebook Login Enabled!', 'Facebook Login habilitado!', 'الفيسبوك الدخول ممكن!', 'Facebook Login Enabled!', 'ফেসবুকে লগ-ইন সক্রিয়!'),
(168, 'facebook_login_disabled!', 'Facebook Login Disabled!', 'Facebook Ayuda para discapacitados!', 'الفيسبوك دخول المعاقين!', 'Facebook Login Disabled!', 'ফেসবুকে লগইন করা অক্ষম!'),
(169, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', 'El pago Paypal habilitado!', 'باي بال الدفع معطل!', 'Paypal Paiement désactivé!', 'পেপ্যাল ​​পেমেন্ট অক্ষম!'),
(170, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', 'El pago Paypal habilitado!', 'باي بال الدفع المتعددة!', 'Paypal Paiement activé!', 'পেপ্যাল ​​পেমেন্ট Enabled!'),
(171, 'slider_enabled!', 'Slider Enabled!', 'Deslizador activado!', 'المتزلج ممكن!', 'Curseur activé!', 'স্লাইডার Enabled!'),
(172, 'slider_disabled!', 'Slider Disabled!', 'Deslizador para discapacitados!', 'المتزلج المعاقين!', 'Curseur handicapés!', 'স্লাইডার অক্ষম করা হয়েছে!'),
(173, 'cash_payment_enabled!', 'Cash Payment Enabled!', 'Pago en efectivo habilitado!', 'الدفع نقدا تمكين!', 'Paiement au comptant activé!', 'ক্যাশ পেমেন্ট Enabled!'),
(174, 'cash_payment_disabled!', 'Cash Payment Disabled!', 'Pago en efectivo habilitado!', 'الدفع نقدا معطل!', 'Paiement au comptant désactivé!', 'ক্যাশ পেমেন্ট অক্ষম!'),
(175, 'enabled!', 'Enabled!', 'Habilitado!', 'تمكين!', 'Activée!', 'সক্ষম করা আছে!'),
(176, 'disabled!', 'Disabled!', '¡Discapacitado!', 'معاق!', 'Désactivé!', 'অক্ষম করা হয়েছে!'),
(177, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', 'Notificación por correo electrónico enviar al proveedor!', 'إشعار البريد الإلكتروني المرسلة إلى البائع!', 'Courriel de notification envoyé au vendeur!', 'বিজ্ঞপ্তি ইমেল ভেন্ডরের কাছে পাঠানো!'),
(178, 'manage_site', 'Manage Site', 'administrar sitio', 'إدارة الموقع', 'Gérer le site', 'সাইট পরিচালনা'),
(179, 'general_settings', 'General Settings', 'Configuración general', 'الاعدادات العامة', 'réglages généraux', 'সাধারণ সেটিংস'),
(180, 'theme_color', 'Theme Color', 'tema de color', 'موضوع اللون', 'Thème Couleur', 'থিম রঙ'),
(181, 'fonts', 'Fonts', 'Fuentes', 'الخطوط', 'Polices', 'ফন্ট'),
(182, 'logo', 'Logo', 'Logo', 'شعار', 'Logo', 'লোগো'),
(183, 'preloader', 'Preloader', 'preloader', 'التحميل المسبق', 'Preloader', 'Preloader'),
(184, 'favicon', 'Favicon', 'favicon', 'فافيكون', 'Favicon', 'ফেভিকন'),
(185, 'social_media', 'Social Media', 'Medios de comunicación social', 'وسائل التواصل الاجتماعي', 'média sociaux', 'সামাজিক মাধ্যম'),
(186, 'social_login_configuaration', 'Social Login Configuaration', 'Entrar Social configuaration', 'الدخول الاجتماعي Configuaration', 'Social Connexion configuaration', 'সামাজিক লগইন Configuaration'),
(187, 'product_comment_settings', 'Product Comment Settings', 'Configuración del producto Comentario', 'إعدادات المنتج تعليق', 'Produit Commentaire Réglages', 'প্রোডাক্ট অমিমাংসীত সংস্করণ লগ'),
(188, 'captcha_settings', 'Captcha Settings', 'Ajustes Captcha', 'إعدادات كلمة التحقق', 'Paramètres Captcha', 'ক্যাপচা সেটিংস'),
(189, 'terms_&_condition', 'Terms & Condition', 'Términos y Condiciones', 'الشروط والأحكام', 'Termes et conditions', 'বিধি - নিষেধ এবং শর্তাবলী'),
(190, 'privacy_policy', 'Privacy Policy', 'Política de privacidad', 'سياسة الخصوصية', 'Politique de confidentialité', 'গোপনীয়তা নীতি'),
(191, 'home_page', 'Home Page', 'Página de inicio', 'الصفحة الرئيسية', 'page d''accueil', 'হোম পেজ'),
(192, 'contact_page', 'Contact Page', 'Pagina de contacto', 'الاتصال الصفحة', 'page de contact', 'পাতা যোগাযোগ'),
(193, 'footer', 'Footer', 'Pie de página', 'تذييل', 'Bas de page', 'পেয়াদা'),
(194, 'system_name', 'System Name', 'Nombre del sistema', 'اسم النظام', 'Name System', 'সিস্টেম নাম'),
(195, 'system_email', 'System Email', 'sistema de correo electrónico', 'نظام البريد الإلكتروني', 'système Email', 'সিস্টেম ইমেইল'),
(196, 'system_title', 'System Title', 'sistema de Título', 'عنوان النظام', 'système Titre', 'সিস্টেম শিরোনাম'),
(197, 'homepage_cache_time', 'Homepage Cache Time', 'Página de inicio Tiempo de caché', 'الصفحة الرئيسية مخبأ الوقت', 'Page d''accueil Cache Temps', 'হোম পেজ ক্যাশে সময়'),
(198, 'admin_notification_sound', 'Admin Notification Sound', 'Sonido de notificación de administración', 'صوت الإعلام مشرف', 'La notification d''administration du son', 'এডমিন নোটিফিকেশন সাউন্ড'),
(199, 'admin_notification_volume', 'Admin Notification Volume', 'Volumen de notificación de administración', 'حجم الاخطار مشرف', 'Administrateur Volume de notification', 'এডমিন বিজ্ঞপ্তির ভলিউম'),
(200, 'Volume_:_', 'Volume : ', 'volumen: ', 'الصوت : ', 'Le volume : ', 'ভলিউম: '),
(201, 'homepage_notification_sound', 'Homepage Notification Sound', 'Notificación de sonido Página de inicio', 'الصوت الإخطار الصفحة الرئيسية', 'Page d''accueil de notification sonore', 'হোমপেজ নোটিফিকেশন সাউন্ড'),
(202, 'homepage_notification_volume', 'Homepage Notification Volume', 'Volumen de notificación página de inicio', 'حجم الاخطار الصفحة الرئيسية', 'Page d''accueil Volume de notification', 'হোমপেজ বিজ্ঞপ্তির ভলিউম'),
(203, 'saving', 'Saving', 'Ahorro', 'إنقاذ', 'Économie', 'রক্ষা'),
(204, 'settings_updated!', 'Settings Updated!', '¡Ajustes actualizan!', 'إعدادات التحديث!', 'Paramètres mis à jour!', 'সেটিংস আপডেট!'),
(205, 'slider', 'Slider', 'deslizador', 'المتزلج', 'curseur', 'স্লাইডার'),
(206, 'home_map', 'Home Map', 'Inicio Mapa', 'الصفحة الرئيسية خريطة', 'Accueil Plan', 'হোম ম্যাপ'),
(207, 'upload_logo', 'Upload Logo', 'Subir Logo', 'تحميل الشعار', 'Télécharger Logo', 'লোগো আপলোড করুন'),
(208, 'drop_logos_to_upload', 'Drop Logos To Upload', 'Para soltar Logos Sube', 'إسقاط شعارات لتحميل', 'Déposez Logos Pour Upload', 'লোগো ড্রপ আপলোড করতে'),
(209, 'or_click_to_pick_manually', 'Or Click To Pick Manually', 'O Haga clic para seleccionar manualmente', 'أو انقر لاختيار يدويا', 'Ou Cliquez pour choisir manuellement', 'অথবা নিজে নিতে ক্লিক'),
(210, 'all_logos', 'All Logos', 'todos los logos', 'كل الشعارات', 'Tous les Logos', 'সমস্ত লোগো'),
(211, 'select_logo', 'Select Logo', 'Selección logo', 'حدد شعار', 'Sélectionnez Logo', 'লোগো নির্বাচন করুন'),
(212, 'place', 'Place', 'Lugar', 'مكان', 'Endroit', 'জায়গা'),
(213, 'options', 'Options', 'opciones', 'خيارات', 'options de', 'বিকল্প'),
(214, 'admin_logo', 'Admin Logo', 'Logotipo de administración', 'المشرف شعار', 'Administrateur Logo', 'অ্যাডমিন লোগো'),
(215, 'successfully_selected!', 'Successfully Selected!', 'Seleccionado con éxito!', 'المحددة بنجاح!', 'Sélectionné avec succès!', 'সফলভাবে নির্বাচন করা হয়েছে!'),
(216, 'change', 'Change', 'Cambio', 'تغيير', 'Changement', 'পরিবর্তন'),
(217, 'homepage_header_logo', 'Homepage Header Logo', 'Página de inicio Logo Cabecera', 'الصفحة الرئيسية رأس الشعار', 'Page d''accueil Logo Header', 'হোমপেজ শিরোলেখ লোগো'),
(218, 'homepage_footer_logo', 'Homepage Footer Logo', 'Página de inicio Logotipo de pie', 'الصفحة الرئيسية تذييل شعار', 'Page d''accueil Pied de page Logo', 'হোমপেজ পাদলেখ লোগো'),
(219, 'select_favicon', 'Select Favicon', 'Seleccione Favicon', 'حدد فافيكون', 'Sélectionnez Favicon', 'ফেভিকন নির্বাচন'),
(220, 'social_links', 'Social Links', 'vínculos sociales', 'روابط اجتماعية', 'Liens sociaux', 'সামাজিক লিংক'),
(221, 'type', 'Type', 'Tipo', 'اكتب', 'Type', 'আদর্শ'),
(222, 'none', 'None', 'Ninguna', 'لا شيء', 'Aucun', 'না'),
(223, 'facebook_comment', 'Facebook Comment', 'comentario Facebook', 'الفيسبوك تعليق', 'Facebook Commentaire', 'ফেসবুক মন্তব্য'),
(224, 'disqus_comment', 'Disqus Comment', 'Disqus comentario', 'هارد تعليق', 'Disqus Commentaire', 'নিচে মন্তব্য'),
(225, 'discus_ID', 'Discus ID', 'Discus ID', 'رمي القرص معرف', 'Discus ID', 'চাকতি আইডি'),
(226, 'fb_comment_id', 'Fb Comment Id', 'Fb Comentarios Id', 'أف ب تعليق رقم', 'Fb Commentaire Id', 'মন্তব্য fb আইডি'),
(227, 'facebook_login_settings', 'Facebook Login Settings', 'Facebook configuración de acceso al', 'الفيسبوك الدخول إعدادات', 'Facebook Paramètres de connexion', 'ফেসবুকে লগইন সেটিংস'),
(228, 'status', 'Status', 'Estado', 'الحالة', 'statut', 'অবস্থা'),
(229, 'google+_login_settings', 'Google+ Login Settings', 'La configuración de acceso Google+', 'إعدادات الدخول في + Google', 'Google+ Paramètres de connexion', 'Google+ এ লগইন সেটিংস'),
(230, 'public_key', 'Public Key', 'Llave pública', 'المفتاح العمومي', 'Clé publique', 'সর্বজনীন কী'),
(231, 'private_key', 'Private Key', 'Llave privada', 'المفتاح الخاص', 'clé privée', 'ব্যক্তিগত কী'),
(232, 'preloader_background', 'Preloader Background', 'Antecedentes precargador', 'التحميل المسبق الخلفية', 'Preloader Contexte', 'Preloader পটভূমি'),
(233, 'contact_address', 'Contact Address', 'dirección de contacto', 'عنوان الإتصال', 'Adresse de contact', 'যোগাযোগের ঠিকানা'),
(234, 'contact_phone', 'Contact Phone', 'teléfono de contacto', 'رقم الهاتف', 'Numéro du contact', 'ফোনে যোগাযোগ'),
(235, 'contact_email', 'Contact Email', 'Email de contacto', 'تواصل بالبريد الاكتروني', 'Email du contact', 'যোগাযোগের ই - মেইল'),
(236, 'contact_website', 'Contact Website', 'Contacto Sitio web', 'الاتصال الموقع الالكتروني', 'contact Site', 'যোগাযোগ ওয়েবসাইট'),
(237, 'contact_about', 'Contact About', 'Acerca de Póngase en contacto con', 'الاتصال عن', 'Contactez-propos', 'আমাদের সম্পর্কে যোগাযোগ'),
(238, 'footer_text', 'Footer Text', 'Texto de pie de página', 'نص تذييل', 'Texte de pied de page', 'পাদচরণ'),
(239, 'font', 'Font', 'Fuente', 'الخط', 'Police de caractère', 'ফন্ট'),
(240, 'choose_font', 'Choose Font', 'elegir fuente', 'اختر الخط', 'Choisissez la police', 'ফন্ট নির্বাচন করুন'),
(241, 'header_/_footer_scheme', 'Header / Footer Scheme', 'Encabezado / pie de página Esquema', 'مخطط رأس / تذييل الصفحة', 'En-tête / pied de page Schéma', 'হেডার / ফুটার স্কিম'),
(242, 'choode_your_scheme', 'Choode Your Scheme', 'Choode su esquema', 'Choode مخطط لديك', 'Choode Votre Scheme', 'আপনার স্কিম Choode'),
(243, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', 'Realmente desea eliminar este logotipo?', 'حقا تريد حذف هذا الشعار؟', 'Vraiment vouloir supprimer ce logo?', 'সত্যিই মুছে ফেলতে এই লোগো চান?'),
(244, 'all_categories', 'All Categories', 'todas las categorias', 'جميع الفئات', 'toutes catégories', 'সব ধরনের'),
(245, 'all_types', 'All Types', 'Todos los tipos', 'كل الانواع', 'Tous les types', 'সব ধরনের'),
(246, 'login_to_your_account', 'Login To Your Account', 'Ingrese a su cuenta', 'تسجيل الدخول إلى حسابك', 'Connectez-vous à votre compte', 'আপনার অ্যাকাউন্টে লগ ইন করুন'),
(247, 'not_registered_yet_!', 'Not Registered Yet !', 'Aún no está registrado!', 'غير مسجل!', 'Pas encore inscrit !', 'এখনো নিবন্ধন করেননি!'),
(248, 'click_here_to', 'Click Here To', 'Click aquí para', 'اضغط هنا من أجل', 'Cliquez ici pour', 'এখানে ক্লিক করুন'),
(249, 'register', 'Register', 'Registro', 'تسجيل', 'registre', 'নিবন্ধন'),
(250, 'signing_in', 'Signing In', 'Iniciando sesión', 'تسجيل الدخول', 'Connectez-vous', 'সাইন ইন'),
(251, 'lost_your_password?', 'Lost Your Password?', '¿Perdiste tu contraseña?', 'فقدت كلمة المرور الخاصة بك؟', 'Mot de passe perdu?', 'আপনার পাসওয়ার্ড হারিয়েছেন?'),
(252, 'click_here_to_recover', 'Click Here To Recover', 'Haga clic aquí para recuperar', 'اضغط هنا للاسترداد', 'Cliquez ici pour récupérer', 'এখানে ক্লিক করুন পুনরুদ্ধার করতে'),
(253, 'submit', 'Submit', 'Enviar', 'عرض', 'Soumettre', 'জমা দিন'),
(254, 'click_here_to_login', 'Click Here To Login', 'Haga clic aquí para ingresar', 'انقر هنا لتسجيل الدخول', 'Cliquez ici pour vous identifier', 'লগ - ইন করতে এখানে ক্লিক করুন'),
(255, 'uploaded_by', 'Uploaded By', 'Subido por', 'تم الرفع بواسطة', 'Telechargé par', 'আপলোড করেছে'),
(256, 'uploaded_in', 'Uploaded In', 'En subido', 'تم تحميلها في', 'Téléchargé Dans', 'আপলোড করা'),
(257, 'readers_comment', 'Readers Comment', 'Los lectores Comentarios', 'القراء التعليقات', 'Les lecteurs Commentaire', 'পাঠকের মন্তব্য'),
(258, 'message_sent!', 'Message Sent!', '¡Mensaje enviado!', 'تم الارسال!', 'Message envoyé!', 'বার্তা পাঠানো!'),
(259, 'product_details', 'Product Details', 'detalles del producto', 'تفاصيل المنتج', 'détails du produit', 'পণ্যের বিবরণ'),
(260, 'your_email', 'Your Email', 'Tu correo electrónico', 'بريدك الالكتروني', 'Votre Email', 'তোমার ইমেইল'),
(261, 'enter_your_valid_email', 'Enter Your Valid Email', 'Ingrese su correo electrónico válida', 'أدخل البريد الإلكتروني ساري المفعول', 'Entrez votre e-mail valide', 'আপনার বৈধ ইমেইল লিখুন'),
(262, 'your_phone', 'Your Phone', 'Su teléfono', 'هاتفك', 'Ton téléphone', 'তোমার ফোন'),
(263, 'enter_your_phone', 'Enter Your Phone', 'Introduce tu móvil', 'أدخل الهاتف', 'Entrez votre téléphone', 'তোমার ফোন লিখুন'),
(264, 'your_message', 'Your Message', 'Tu mensaje', 'رسالتك', 'Votre message', 'তোমার বার্তা'),
(265, 'i_accept_the', 'I Accept The', 'Acepto el', 'أقبل', 'J''accepte le', 'আমি স্বীকার'),
(266, 'terms_and_conditions', 'Terms And Conditions', 'Términos y Condiciones', 'الأحكام والشروط', 'Termes et conditions', 'শর্তাবলী এবং শর্ত'),
(267, 'of_this_website', 'Of This Website', 'De este sitio web', 'من هذا الموقع', 'De ce site', 'এই ওয়েবসাইটির'),
(268, 'contact_message_sent_to_owner!', 'Contact Message Sent To Owner!', 'Contacto mensaje enviado al propietario!', 'الاتصال الرسائل المرسلة لصاحب!', 'Contact Message envoyé au propriétaire!', 'যোগাযোগ মেসেজ মালিকের কাছে পাঠানো!'),
(269, 'message_sending_unsuccessful!', 'Message Sending Unsuccessful!', 'Enviando mensaje sin éxito!', 'إرسال رسائل غير ناجحة!', 'Message Envoi Unsuccessful!', 'বার্তা অসফল পাঠানো হচ্ছে!'),
(270, 'send_message', 'Send Message', 'Enviar mensaje', 'إرسال رسالة', 'Envoyer le message', 'বার্তা পাঠান'),
(271, 'e-mail', 'E-mail', 'E-mail', 'البريد الالكتروني', 'E-mail', 'ই-মেইল'),
(272, 'phone_number', 'Phone Number', 'Número de teléfono', 'رقم الهاتف', 'Numéro de téléphone', 'ফোন নম্বর'),
(273, 'message', 'Message', 'Mensaje', 'الرسالة', 'Message', 'বার্তা'),
(274, 'terms', 'Terms', 'Condiciones', 'شروط', 'termes', 'শর্তাবলী'),
(275, 'you_must_accept_terms_and_conditions', 'You Must Accept Terms And Conditions', 'Debe aceptar los términos y condiciones', 'يجب عليك قبول الشروط والأحكام', 'Vous devez accepter les conditions générales', 'আপনি এবং শর্তাবলী গ্রহণ করতে হবে'),
(276, 'user_account', 'User Account', 'Cuenta de usuario', 'حساب المستخدم', 'Compte d''utilisateur', 'ব্যবহারকারীর অ্যাকাউন্ট'),
(277, 'your_info', 'Your Info', 'su Información', 'معلومات الخاصة بك', 'Vos informations', 'আপনার তথ্য'),
(278, 'edit_your_personal_info', 'Edit Your Personal Info', 'Editar su Información Personal', 'عدل معلومات شخصية', 'Modifier vos informations personnelles', 'আপনার ব্যক্তিগত তথ্য সম্পাদনা'),
(279, 'favourites', 'Favourites', 'favoritos', 'مفضلة', 'Favoris', 'পছন্দসই'),
(280, 'support_tickets', 'Support Tickets', 'Tickets de Soporte', 'تذاكر الدعم الفني', 'Billets de soutien', 'সাপোর্ট টিকেট'),
(281, 'change_package', 'Change Package', 'paquete de Cambios', 'تغيير حزمة', 'Change package', 'প্যাকেজ পরিবর্তন'),
(282, 'date', 'Date', 'Fecha', 'تاريخ', 'date', 'তারিখ'),
(283, 'product_title', 'Product Title', 'Titulo del producto', 'عنوان المنتج', 'Titre du produit', 'প্রোডাক্ট শিরোনাম'),
(284, 'phone_no', 'Phone No', 'Telefono no', 'رقم الهاتف', 'Pas de téléphone', 'ফোন নম্বর'),
(285, 'view_message', 'View Message', 'Ver mensaje', 'إرسال رسالة خاصة إلى', 'Voir le message', 'দেখুন বার্তা'),
(286, 'ticket_subject', 'Ticket Subject', 'Asunto del Ticket', 'تذكرة موضوع', 'Objet du ticket', 'টিকেট সাপেক্ষে'),
(287, 'ticket_status', 'Ticket Status', 'Estado del Ticket', 'الحالة تذكرة', 'ticket Status', 'টিকেট স্ট্যাটাস'),
(288, 'current_state', 'Current State', 'Estado actual', 'الوضع الحالي', 'État actuel', 'বর্তমান অবস্থা'),
(289, 'featured_till', 'Featured Till', 'Hasta destacados', 'ظهرت حتى', 'En vedette Till', 'পর্যন্ত আলোচিত'),
(290, 'not_featured', 'Not Featured', 'no destacados', 'لا مميزة', 'Non vedette', 'আলোচিত না'),
(291, 'shown_till', 'Shown Till', 'Hasta que se muestra', 'أظهرت حتى', 'Montré Till', 'পর্যন্ত দেখানো'),
(292, 'current_package', 'Current Package', 'El paquete actual', 'الرزمة الحالية', 'package actuel', 'বর্তমান প্যাকেজ'),
(293, 'featured_for', 'Featured For', 'Por destacados', 'مميزة لل', 'En vedette Pour', 'জন্য বৈশিষ্ট্যযুক্ত'),
(294, 'shown_for', 'Shown For', 'Para mostrado', 'تظهر ل', 'Montré Pour', 'দেখানো'),
(295, 'your_card_details_verified!', 'Your Card Details Verified!', 'Detalles de su Tarjeta verificado!', 'بطاقتك تفاصيل التحقق!', 'Votre carte Détails Verified!', 'আপনার কার্ডের বিবরণ যাচাইকৃত!'),
(296, 'pay_with_stripe', 'Pay With Stripe', 'Pagar con la raya', 'دفع مع الشريط', 'Payer Avec Stripe', 'ডোরা সঙ্গে পে'),
(297, 'message_from', 'Message From', 'Mensaje de', 'رسالة من', 'Message de', 'থেকে বার্তা'),
(298, 'subject', 'Subject', 'Tema', 'موضوع', 'Assujettir', 'বিষয়'),
(299, 'date_&_time', 'Date & Time', 'Fecha y hora', 'التاريخ والوقت', 'Date et heure', 'তারিখ সময়'),
(300, 'admin', 'Admin', 'Administración', 'مشرف', 'Administrateur', 'অ্যাডমিন'),
(301, 'reply_message', 'Reply Message', 'Mensaje de respuesta', 'الرد رسالة', 'Message de réponse', 'বার্তা উত্তর'),
(302, 'reply', 'Reply', 'Respuesta', 'الرد', 'Répondre', 'উত্তর'),
(303, 'from_the_time_of_payment', 'From The Time Of Payment', 'Desde el momento del pago', 'من وقت الدفع', 'De la date du paiement', 'পেমেন্ট সময় থেকে'),
(304, 'from_the_time_of_upload', 'From The Time Of Upload', 'Desde el tiempo de Subir', 'من وقت التحميل', 'From The Time Of Télécharger', 'আপলোড সময় থেকে'),
(305, 'favoured', 'Favoured', 'Favorecido', 'مفضل', 'Favorisé', 'রূপে'),
(306, 'not_published', 'Not Published', 'No publicado', 'غير منشور', 'Non publié', 'প্রকাশ করা'),
(307, 'valid_for', 'Valid For', 'Valido para', 'صالحة ل', 'Valable', 'জন্য বৈধ'),
(308, 'unit_left', 'Unit Left', 'unidad de izquierda', 'وحدة اليسار', 'Unité gauche', 'ইউনিট বাম'),
(309, 'expires_on', 'Expires On', 'Expira el', 'تنتهي صلاحيته في', 'Expire le', 'মেয়াদ শেষ'),
(310, 'unit_left_of_product_packages', 'Unit Left Of Product Packages', 'Unidad izquierda de Paquetes de Productos', 'وحدة يسار حزم المنتج', 'Unité gauche de Paquets de produits', 'ইউনিট পণ্যের প্যাকেজ বাম'),
(311, 'back_to_home', 'Back To Home', 'De vuelta a casa', 'العودة إلى المنزل', 'De retour à la maison', 'বাড়িতে ফিরে যাও'),
(312, 'reset_compare_list', 'Reset Compare List', 'Restablecer la lista de comparación', 'إعادة تعيين قائمة قارن', 'Réinitialiser la liste de comparaison', 'রিসেট তালিকা তুলনা'),
(313, 'name', 'Name', 'Nombre', 'اسم', 'prénom', 'নাম'),
(314, 'choose_a_product', 'Choose A Product', 'Elige un producto', 'اختر المنتج', 'Choisissez un produit', 'একটি পণ্য চয়ন'),
(315, 'image', 'Image', 'Imagen', 'صورة', 'image', 'ভাবমূর্তি'),
(316, 'brand', 'Brand', 'Marca', 'علامة تجارية', 'Marque', 'তরবার'),
(317, 'sub_category', 'Sub Category', 'Sub Categoría', 'التصنيف الفرعي', 'Sous catégorie', 'সাব ক্যাটাগরি'),
(318, 'description', 'Description', 'Descripción', 'وصف', 'La description', 'বিবরণ'),
(319, 'address', 'Address', 'Dirección', 'عنوان', 'Adresse', 'ঠিকানা'),
(320, 'map', 'Map', 'Mapa', 'رسم خريطة', 'Carte', 'মানচিত্র'),
(321, 'all_rights_reserved', 'All Rights Reserved', 'Todos los derechos reservados', 'كل الحقوق محفوظة', 'Tous les droits sont réservés', 'সর্বস্বত্ব সংরক্ষিত'),
(322, 'terms_conditions', 'Terms Conditions', 'Términos y condiciones', 'البنود و الظروف', 'Termes et conditions', 'শর্তাবলী'),
(323, 'manage_banner', 'Manage Banner', 'administrar Banner', 'إدارة راية', 'Gérer Bannière', 'ব্যানার পরিচালনা'),
(324, 'homepage', 'Homepage', 'Página principal', 'الصفحة الرئيسية', 'Page d''accueil', 'হোম পেজ'),
(325, 'category_page', 'Category Page', 'Categoría Página', 'الفئة الصفحة', 'Catégorie page', 'বিষয়শ্রেণী পাতা'),
(326, 'featured_page', 'Featured Page', 'Página destacado', 'صفحة مميزة', 'En vedette page', 'বৈশিষ্ট্যযুক্ত পাতা'),
(327, 'vendor_homepage', 'Vendor Homepage', 'Página de inicio del proveedor', 'بائع الصفحة الرئيسية', 'Page d''accueil du vendeur', 'বিক্রেতার হোমপেজ'),
(328, 'after_slider', 'After Slider', 'después deslizante', 'بعد المتزلج', 'Après curseur', 'স্লাইডার পর'),
(329, 'select_banner_image', 'Select Banner Image', 'Seleccionar Imagen del Anuncio', 'اختر راية صورة', 'Sélectionnez Banner Image', 'ব্যানার চিত্র নির্বাচন করুন'),
(330, 'link', 'Link', 'Enlazar', 'صلة', 'Lien', 'লিংক'),
(331, 'updating..', 'Updating..', 'Actualizando ..', 'تحديث ..', 'Mise à jour ..', 'আপডেট করা হচ্ছে ..'),
(332, 'update', 'Update', 'Actualizar', 'تحديث', 'Mettre à jour', 'হালনাগাদ'),
(333, 'after_featured', 'After Featured', 'después destacados', 'بعد مميزة', 'Après vedette', 'পরে আলোচিত'),
(334, 'after_search', 'After Search', 'después de Búsqueda', 'بعد البحث', 'Après la recherche', 'অনুসন্ধান পর'),
(335, 'after_category', 'After Category', 'después Categoría', 'بعد الفئة', 'Après Catégorie', 'বিষয়শ্রেণী পর'),
(336, 'after_latest', 'After Latest', 'después de más reciente', 'بعد آخر', 'Après Dernières', 'সর্বশেষ পর'),
(337, 'after_popular', 'After Popular', 'después populares', 'بعد الشعبية', 'Après populaire', 'জনপ্রিয় পর'),
(338, 'after_most_viewed', 'After Most Viewed', 'Después Más vistos', 'بعد الأكثر مشاهدة', 'Après Visite', 'সর্বাধিক দেখা করার পর'),
(339, 'after_filter', 'After Filter', 'después de filtro', 'بعد تصفية', 'Après filtre', 'ফিল্টার পর'),
(340, 'after_filters', 'After Filters', 'después de Filtros', 'بعد الفلاتر', 'Après Filtres', 'ফিল্টার পর'),
(341, 'after_most_sold', 'After Most Sold', 'Después de más vendidos', 'بعد الأكثر مبيعا', 'Après les plus vendus', 'পরে সবথেকে বেশি বিক্রিত'),
(342, 'banner_published!', 'Banner Published!', 'Publicado Banner!', 'راية نشر!', 'Bannière Publié!', 'ব্যানার প্রকাশিত!'),
(343, 'banner_unpublished!', 'Banner Unpublished!', 'Banner sin publicar!', 'راية غير منشورة!', 'Bannière inédite!', 'ব্যানার অপ্রকাশিত!'),
(344, 'manage_widgets', 'Manage Widgets', 'Gestionar widgets', 'إدارة الحاجيات', 'Gérer les widgets', 'উইজেট পরিচালনা'),
(345, 'add_widget', 'Add Widget', 'Añadir Widget', 'إضافة القطعة', 'Ajouter Widget', 'উইজেট যোগ করুন'),
(346, 'successfully_added!', 'Successfully Added!', '¡Agregado exitosamente!', 'وأضاف بنجاح!', 'Ajouté avec succès!', 'সফলভাবে যোগ করা হয়েছে!'),
(347, 'create_widget', 'Create Widget', 'crear widget', 'إنشاء القطعة', 'Créer un widget', 'উইজেট তৈরি করুন'),
(348, 'widget_serial', 'Widget Serial', 'Serial Widget', 'المسلسل القطعة', 'Serial Widget', 'উইজেট সিরিয়াল'),
(349, 'successfully_serialized!', 'Successfully Serialized!', 'Serialized éxito!', 'تسلسل بنجاح!', 'Réussir sérialisé!', 'সফলভাবে ধারাবাহিকভাবে!'),
(350, 'page_widget_serial', 'Page Widget Serial', 'Serial página Widget', 'الصفحة القطعة المسلسل', 'Page Widget série', 'পাতা উইজেট সিরিয়াল'),
(351, 'no', 'No', 'No', 'لا', 'Non', 'না'),
(352, 'title', 'Title', 'Título', 'عنوان', 'Titre', 'খেতাব'),
(353, 'advanced_search', 'Advanced Search', 'Búsqueda Avanzada', 'البحث المتقدم', 'Recherche Avancée', 'উন্নত অনুসন্ধান'),
(354, 'recently_viewed', 'Recently Viewed', 'visto recientemente', 'شوهدت مؤخرا', 'vu récemment', 'সম্প্রতি দেখা'),
(355, 'most_popular', 'Most Popular', 'Más popular', 'الاكثر شهره', 'Le plus populaire', 'সবচেয়ে জনপ্রিয়'),
(356, 'edit_widget', 'Edit Widget', 'Editar Widget', 'تحرير القطعة', 'Modifier Widget', 'উইজেট সম্পাদনা'),
(357, 'successfully_edited!', 'Successfully Edited!', 'Editado con éxito!', 'قام بنجاح!', 'Avec succès Édité!', 'সফলভাবে সম্পাদিত!'),
(358, 'edit', 'Edit', 'Editar', 'تحرير', 'modifier', 'সম্পাদন করা'),
(359, 'really_want_to_delete_this?', 'Really Want To Delete This?', 'Realmente desea eliminar este?', 'حقا تريد حذف هذا؟', 'Vraiment vouloir supprimer ce?', 'সত্যিই এই মুছে ফেলতে চান?'),
(360, 'delete', 'Delete', 'Borrar', 'حذف', 'Effacer', 'মুছে ফেলা'),
(361, 'widget', 'Widget', 'Widget', 'القطعة', 'Widget', 'উইজেট'),
(362, 'widget_name', 'Widget Name', 'Nombre Widget', 'اسم القطعة', 'Nom Widget', 'উইজেট নাম'),
(363, 'code', 'Code', 'Código', 'رمز', 'Code', 'কোড'),
(364, 'enter_code_here.....', 'Enter Code Here.....', 'Ingresa el código aquí.....', 'أدخل رمز هنا.....', 'Entrez le code ici.....', 'কোড লিখুন এখানে .....'),
(365, 'categories', 'Categories', 'Categorías', 'الفئات', 'Catégories', 'বিভাগ'),
(366, 'featured', 'Featured', 'Representado', 'متميز', 'En vedette', 'Featured'),
(367, 'latest', 'Latest', 'Último', 'آخر', 'Dernier', 'সাম্প্রতিক'),
(368, 'product_view', 'Product View', 'Ver producto', 'المنتج عرض', 'Voir le produit', 'প্রোডাক্ট দেখুন'),
(369, 'page_serial', 'Page Serial', 'página de serie', 'صفحة المسلسل', 'page Serial', 'পাতা সিরিয়াল'),
(370, 'reset', 'Reset', 'Reiniciar', 'إعادة تعيين', 'Réinitialiser', 'রিসেট'),
(371, 'page_widget_serial_saved!', 'Page Widget Serial Saved!', 'Página Widget guardadas en serie!', 'الصفحة القطعة المسلسل المحفوظ!', 'Page Widget Saved série!', 'পাতা উইজেট সিরিয়াল সংরক্ষিত!'),
(372, 'Google AD', 'Google AD', 'google dC', 'جوجل م', 'Google AD', 'গুগল খ্রিস্টাব্দ'),
(373, 'manage_email_tracing', 'Manage Email Tracing', 'De Correo Electrónico de Rastreo', 'إدارة البريد الإلكتروني للبحث عن المفقودين', 'Gérer Email Tracing', 'ইমেল ট্রেসিং পরিচালনা'),
(374, 'view_email_tracing', 'View Email Tracing', 'Ver Correo de Búsquedas', 'عرض للبحث عن المفقودين البريد الإلكتروني', 'Visualiser Courriel Tracing', 'দেখুন ইমেইল ট্রেসিং'),
(375, 'successfully_viewed!', 'Successfully Viewed!', 'Visto éxito!', 'شوهد بنجاح!', 'Vu avec succès!', 'সফলভাবে দেখা!'),
(376, 'phone', 'Phone', 'Teléfono', 'هاتف', 'Téléphone', 'ফোন'),
(377, 'massage', 'Massage', 'Masaje', 'تدليك', 'Massage', 'ম্যাসেজ'),
(378, 'product', 'Product', 'Producto', 'المنتج', 'Produit', 'পণ্য'),
(379, 'product_owner', 'Product Owner', 'Dueño del producto', 'مالك المنتج', 'Propriétaire du produit', 'পণ্য মালিক'),
(380, 'sender_info', 'Sender Info', 'Información del remitente', 'معلومات المرسل', 'Sender Infos', 'প্রেরকের তথ্য'),
(381, 'select_from_user_package', 'Select From User Package', 'Seleccionar de paquete de usuarios', 'حدد من حزمة العضو', 'Sélectionnez De Package d''utilisateur', 'ব্যবহারকারী প্যাকেজ থেকে নির্বাচন করুন'),
(382, 'pay_separately', 'Pay Separately', 'pagar por separado', 'تدفع بشكل منفصل', 'payer séparément', 'পে আলাদাভাবে'),
(383, 'left_units', 'Left Units', 'Unidades de izquierda', 'وحدات اليسرى', 'Unités gauche', 'বাম ইউনিট'),
(384, 'choose', 'Choose', 'Escoger', 'اختار', 'Choisir', 'বেছে নিন'),
(385, 'signing_up', 'Signing Up', 'La inscripción en', 'توقيع', 'S''enregistrer', 'নিবন্ধন করা'),
(386, 'sign_up_successful!', 'Sign Up Successful!', '¡Registro exitoso!', 'اشترك ناجحة!', 'Inscription réussie!', 'সফল সাইন আপ করুন!'),
(387, 'sign_up_failed!', 'Sign Up Failed!', '¡Registro fallido!', 'فشل انشاء الحساب!', 'Inscription Échec!', 'সাইন আপ ব্যর্থ হয়েছে!'),
(388, 'try_again!', 'Try Again!', '¡Inténtalo de nuevo!', 'حاول ثانية!', 'Réessayer!', 'আবার চেষ্টা কর!'),
(389, 'already_have_an_account_?', 'Already Have An Account ?', 'Ya tienes una cuenta ?', 'بالفعل لديك حساب؟', 'Vous avez déjà un compte ?', 'ইতিমধ্যে একটি সদস্যপদ আছে ?'),
(390, 'your_address', 'Your Address', 'Su dirección', 'عنوانك', 'Votre adresse', 'আপনার ঠিকানা'),
(391, 'choose_one', 'Choose One', 'Elige uno', 'اختيار واحد', 'Choisissez-en un', 'একটা পছন্দ কর'),
(392, 'add_more_specification', 'Add More Specification', 'Añadir más Especificación', 'إضافة المزيد من المواصفات', 'Ajouter Plus Spécification', 'আরো স্পেসিফিকেশন যোগ'),
(393, 'uploading..', 'Uploading..', 'Carga ..', 'تحميل ..', 'Uploading ..', 'আপলোড ..'),
(394, 'post_added_successfully', 'Post Added Successfully', 'Publicar añadido correctamente', 'آخر واضاف بنجاح', 'Message Posté le succès', 'পোস্ট যোগ করা হয়েছে সফলভাবে'),
(395, 'post_adding_unsuccessful', 'Post Adding Unsuccessful', 'La adición posterior sin éxito', 'آخر إضافة غير ناجحة', 'Poster Ajout Unsuccessful', 'পোস্ট অসফল যোগ করার পদ্ধতি'),
(396, 'upload', 'Upload', 'Subir', 'تحميل', 'Télécharger', 'আপলোড'),
(397, 'product_model', 'Product Model', 'Modelo del Producto', 'نموذج المنتج', 'modèle du produit', 'পণ্যের ধরণ'),
(398, 'product_description', 'Product Description', 'Descripción del producto', 'وصف المنتج', 'Description du produit', 'পণ্যের বর্ণনা'),
(399, 'tag', 'Tag', 'Etiqueta', 'بطاقة', 'Étiquette', 'ট্যাগ'),
(400, 'location', 'Location', 'Ubicación', 'موقع', 'Emplacement', 'অবস্থান'),
(401, 'product_images', 'Product Images', 'Imágenes de producto', 'صور المنتج', 'Images du produit', 'পণ্য চিত্র'),
(402, 'edit_personal_info', 'Edit Personal Info', 'Editar Información Personal', 'تحرير معلومات شخصية', 'Modifier les infos personnelles', 'সম্পাদনা ব্যক্তিগত তথ্য'),
(403, 'support_ticket', 'Support Ticket', 'Boleto de apoyo', 'بطاقة الدعم', 'support technique', 'সাপোর্ট টিকেট'),
(404, 'select', 'Select', 'Seleccionar', 'اختار', 'Sélectionner', 'নির্বাচন করা')(-;-)
INSERT INTO `language` (`word_id`, `word`, `english`, `Spanish`, `Arabic`, `French`, `bangla`) VALUES
(405, 'contacts_form', 'Contacts Form', 'contactos Formulario', 'نموذج اتصالات', 'Contacts Formulaire', 'পরিচিতি ফর্ম'),
(406, 'your_name', 'Your Name', 'Tu nombre', 'اسمك', 'votre nom', 'তোমার নাম'),
(407, 'email_address', 'Email Address', 'Dirección de correo electrónico', 'عنوان البريد الإلكتروني', 'Adresse e-mail', 'ই-মেইল ঠিকানা'),
(408, 'write_your_message_here', 'Write Your Message Here', 'Escriba su mensaje aquí', 'اكتب رسالتك هنا', 'Ecrivez votre message ici', 'আপনার বার্তা লিখুন এখানে'),
(409, 'business_info', 'Business Info', 'Información de negocio', 'معلومات الأعمال', 'Infos entreprise', 'ব্যবসা তথ্য'),
(410, 'stay_connected', 'Stay Connected', 'Mantente conectado', 'ابق على اتصال', 'Rester connecté', 'যোগাযোগ রেখো'),
(411, 'incorrect_captcha!', 'Incorrect Captcha!', '¡CAPTCHA incorrecto!', 'كلمة التحقق غير صحيح!', 'Captcha incorrecte!', 'ভুল ক্যাপচা!'),
(412, 'blog_list', 'Blog List', 'Lista Blog', 'قائمة بلوق', 'Blog Liste', 'ব্লগ তালিকা'),
(413, 'blog_categories', 'Blog Categories', 'Categorías del blog', 'بلوق التصنيفات', 'blog Catégories', 'ব্লগ বিভাগ'),
(414, 'views', 'Views', 'Puntos de vista', 'المشاهدات', 'Vues', 'মতামত'),
(415, 'latest_post', 'Latest Post', 'Última publicación', 'آخر مشاركة', 'Dernier message', 'সর্বশেষ পোস্ট'),
(416, 'comments', 'Comments', 'comentarios', 'تعليقات', 'commentaires', 'মন্তব্য'),
(417, 'read_more', 'Read More', 'Lee mas', 'اقرأ أكثر', 'Lire la suite', 'আরো পড়ুন'),
(418, 'blog_view', 'Blog View', 'Ver el blog', 'بلوق مشاهدة', 'Blog', 'ব্লগ দেখুন'),
(419, 'written_by', 'Written By', 'Escrito por', 'كتب بواسطة', 'Écrit par', 'লিখেছেন'),
(420, 'posted_in', 'Posted In', 'Publicado en', 'نشر في', 'Publié dans', 'পোস্ট'),
(421, 'parallax_title', 'Parallax Title', 'Título de paralaje', 'المنظر عنوان', 'Parallax Titre', 'লম্বন শিরোনাম'),
(422, 'parallax_image', 'Parallax Image', 'imagen de paralaje', 'صورة المنظر', 'image Parallax', 'লম্বন চিত্র'),
(423, 'select_image', 'Select Image', 'Seleccionar imagen', 'اختر صورة', 'Sélectionner l''image', 'ছবি নির্বাচন করুন'),
(424, 'blog_counting', 'Blog Counting', 'Blog de conteo', 'بلوق العد', 'Blog Comptage', 'ব্লগ কাউন্টিং'),
(425, 'manage_product', 'Manage Product', 'Manejo de Producto', 'إدارة المنتج', 'Gérer le produit', 'প্রোডাক্ট পরিচালনা'),
(426, 'back_to_product_list', 'Back To Product List', 'Volver al listado de productos', 'الرجوع إلى قائمة المنتجات', 'Retour à la liste des produits', 'পিছনে প্রোডাক্ট লিস্টে'),
(427, 'publish', 'Publish', 'Publicar', 'نشر', 'Publier', 'প্রকাশ করা'),
(428, 'view_product', 'View Product', 'Ver el producto', 'عرض المنتج', 'Voir le produit', 'দেখুন প্রোডাক্ট'),
(429, 'view', 'View', 'Ver', 'رأي', 'Vue', 'দৃশ্য'),
(430, 'details_of', 'Details Of', 'Detalles de', 'تفاصيل', 'Les détails de', 'বিস্তারিত'),
(431, 'sub-category', 'Sub-category', 'Subcategoría', 'الفئة الفرعية', 'Sous-catégorie', 'উপ-বিভাগ'),
(432, 'unit', 'Unit', 'Unidad', 'وحدة', 'Unité', 'একক'),
(433, 'sale_price', 'Sale Price', 'Precio de venta', 'سعر البيع', 'Prix ​​de vente', 'বিক্রয় মূল্য'),
(434, 'purchase_price', 'Purchase Price', 'Precio de compra', 'سعر الشراء', 'Prix ​​d''achat', 'ক্রয় মূল্য'),
(435, 'Welcome To Active Classified', 'Welcome To Active Classified', 'Bienvenido al Anuncio Activo', 'أهلا وسهلا بك إلى نشطة مصنفة', 'Bienvenue à Active Classé', 'সক্রিয় শ্রেণীবদ্ধ করতে স্বাগতম'),
(436, 'manage_business_settings', 'Manage Business Settings', 'Gestión de la configuración del negocio', 'إدارة إعدادات الأعمال', 'Gérer les paramètres d''affaires', 'ব্যবসা সেটিংস পরিচালনা করুন'),
(437, 'cash_payment', 'Cash Payment', 'Pago en efectivo', 'دفع نقدا', 'Paiement en espèces', 'নগদে টাকা প্রদান'),
(438, 'paypal_payment', 'Paypal Payment', 'Pago PayPal', 'باي بال الدفع', 'Paiement PayPal', 'পেপ্যাল'),
(439, 'paypal_email', 'Paypal Email', 'paypal Email', 'باي بال البريد الإلكتروني', 'Paypal Email', 'পেপ্যাল ​​ইমেইল'),
(440, 'paypal_account_type', 'Paypal Account Type', 'Tipo de cuenta paypal', 'باي بال نوع الحساب', 'Paypal Type de compte', 'পেপাল অ্যাকাউন্ট ধরন'),
(441, 'stripe_payment', 'Stripe Payment', 'El pago de la raya', 'شريط الدفع', 'Stripe Paiement', 'ডোরা পেমেন্ট'),
(442, 'stripe_secret_key', 'Stripe Secret Key', 'Raya clave secreta', 'شريط سر مفتاح', 'Stripe Secret Key', 'ডোরা সিক্রেট কী'),
(443, 'stripe_publishable_key', 'Stripe Publishable Key', 'Raya publicable clave', 'شريط للنشر مفتاح', 'Stripe Publiable Key', 'ডোরা প্রকাশযোগ্য মূল'),
(444, 'post_without_login', 'Post Without Login', 'Publicar Sin inicio de sesión', 'آخر بدون الدخول', 'Poster Sans Connexion', 'পোস্ট লগইন ছাড়া'),
(445, 'admin_approval_for_post_publish', 'Admin Approval For Post Publish', 'Aprobación de administrador Para el poste Publica', 'المشرف الموافقة على نشر المشاركة', 'Administrateur Approbation Pour Poster Publier', 'অ্যাডমিন অনুমোদন পোস্ট প্রকাশ'),
(446, 'not_required', 'Not Required', 'No requerido', 'غير مطلوب', 'Non requis', 'আবশ্যক না'),
(447, 'currency_name', 'Currency Name', 'Nombre moneda', 'اسم العملة', 'Nom de la devise', 'মুদ্রার নাম'),
(448, 'currency_symbol', 'Currency Symbol', 'Símbolo de moneda', 'رمز العملة', 'Symbole de la monnaie', 'মুদ্রা প্রতীক'),
(449, 'currency_format', 'Currency Format', 'Formato de moneda', 'تنسيق العملة', 'devise Format', 'মুদ্রা বিন্যাস'),
(450, 'FAQs', 'FAQs', 'Preguntas frecuentes', 'الأسئلة الأكثر شيوعا', 'FAQ', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী'),
(451, 'question', 'Question', 'Pregunta', 'سؤال', 'Question', 'প্রশ্ন'),
(452, 'answer', 'Answer', 'Responder', 'إجابة', 'Répondre', 'উত্তর'),
(453, 'add_more_FAQs', 'Add More FAQs', 'Añadir Más preguntas frecuentes', 'إضافة المزيد من الأسئلة الشائعة', 'Ajouter Plus de FAQs', 'আরো প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী যোগ'),
(454, 'manage_page', 'Manage Page', 'Gestionar la página', 'إدارة الصفحة', 'Gérer la page', 'পৃষ্ঠা পরিচালনা'),
(455, 'add_page', 'Add Page', 'Añadir página', 'أضف الصفحة', 'Ajouter une page', 'পাতা যোগ কর'),
(456, 'create_page', 'Create Page', 'Crear página', 'إنشاء صفحة', 'Créer une page', 'পাতা তৈরি করুন'),
(457, 'back_to_page_list', 'Back To Page List', 'De nuevo a la página de lista', 'الرجوع إلى قائمة الصفحة', 'Retour à la liste de la page', 'প্রথম পাতা লিস্টে'),
(458, 'page_name', 'Page Name', 'Nombre de la página', 'اسم الصفحة', 'Nom de la page', 'পৃষ্ঠার নাম'),
(459, 'preview', 'Preview', 'Avance', 'معاينة', 'Aperçu', 'প্রি'),
(460, ' page_widget_serial', ' Page Widget Serial', ' Serial página Widget', ' الصفحة القطعة المسلسل', ' Page Widget série', ' পাতা উইজেট সিরিয়াল'),
(461, 'more', 'More', 'Más', 'أكثر', 'Plus', 'অধিক'),
(462, 'edit_page', 'Edit Page', 'Editar página', 'تعديل الصفحة', 'Modifier la page', 'সম্পাদনা পাতা'),
(463, 'asd', 'Asd', 'asd', 'ASD', 'Asd', 'ASD'),
(464, 'ashik', 'Ashik', 'Ashik', 'Ashik', 'Ashik', 'আশিক'),
(465, 'quantity', 'Quantity', 'Cantidad', 'كمية', 'Quantité', 'পরিমাণ'),
(466, 'creation_date', 'Creation Date', 'Fecha de creación', 'تاريخ الإنشاء', 'Date de création', 'তৈরির তারিখ'),
(467, 'manage_users', 'Manage Users', 'administrar usuarios', 'ادارة المستخدمين', 'gérer les utilisateurs', 'পরিচালনা ব্যবহারকারীরা'),
(468, 'view_profile', 'View Profile', 'Ver perfil', 'عرض الصفحة الشخصية', 'Voir le profil', 'প্রোফাইল দেখুন'),
(469, 'uploaded_products', 'Uploaded Products', 'Productos cargados', 'حملت المنتجات', 'Uploaded Produits', 'আপলোড করা পণ্য'),
(470, 'edit_user', 'Edit User', 'editar usuario', 'تحرير العضو', 'Modifier l''utilisateur', 'ব্যবহারকারী সম্পাদনা'),
(471, 'post_your_add', 'Post Your Add', 'Publique su complemento', 'أضف اضافة', 'Déposez votre Ajouter', 'পোস্ট আপনার অ্যাড'),
(472, 'enter_your_phone_no', 'Enter Your Phone No', 'Sin entrar en el teléfono', 'أدخل رقم الهاتف', 'Entrez votre téléphone Non', 'আপনার ফোন নম্বর লিখুন'),
(473, 'please_fill_your_product_information', 'Please Fill Your Product Information', 'Por favor, llene la información del producto', 'يرجى ملء معلومات منتجك', 'S''il vous plaît remplir vos informations de produit', 'আপনার প্রোডাক্ট তথ্য পূরণ করুন'),
(474, 'enter_your_product_title', 'Enter Your Product Title', 'Ingrese su Titulo del producto', 'أدخل عنوان المنتج', 'Entrez votre Titre du produit', 'আপনার ব্যবহার করা উত্পাদনটি শিরোনাম লিখুন'),
(475, 'enter_your_product_model', 'Enter Your Product Model', 'Introduzca su Modelo Producto', 'أدخل طراز المنتج الخاص بك', 'Entrez votre modèle de produit', 'আপনার পণ্যের মডেল লিখুন'),
(476, 'enter_your_product_description', 'Enter Your Product Description', 'Introduzca su descripción del producto', 'أدخل وصف المنتج', 'Entrez votre Description du produit', 'লিখুন আপনার পণ্য বিবরণ'),
(477, 'tags', 'Tags', 'Etiquetas', 'الكلمات', 'Mots clés', 'ট্যাগ'),
(478, 'comma_seperated_tags', 'Comma Seperated Tags', 'Comas separan Etiquetas', 'مفصولة بفواصل الكلمات', 'Comma Seperated Balises', 'কমা দিয়ে পৃথক ট্যাগ্স'),
(479, 'product_condition', 'Product Condition', 'Condición del producto', 'حالة المنتج', 'Condition du produit', 'প্রোডাক্ট কন্ডিশন'),
(480, 'product_price', 'Product Price', 'Precio del producto', 'سعر المنتج', 'Prix ​​du produit', 'পণ্যের দাম'),
(481, 'add_images', 'Add Images', 'Añadir imágenes', 'إضافة صور', 'Ajouter des images', 'চিত্রগুলি যুক্ত করুন'),
(482, 'start', 'Start', 'comienzo', 'بداية', 'Démarrer', 'শুরু'),
(483, 'error', 'Error', 'Error', 'خطأ', 'Erreur', 'ভুল'),
(484, 'specification_title', 'Specification Title', 'especificación Título', 'مواصفات عنوان', 'Spécification Titre', 'নির্দিষ্টকরণ শিরোনাম'),
(485, 'specification_details', 'Specification Details', 'Especificación detalles', 'مواصفات تفاصيل', 'spécifications Détails', 'নির্দিষ্টকরণ বিস্তারিত'),
(486, 'remove', 'Remove', 'retirar', 'إزالة', 'Retirer', 'অপসারণ'),
(487, 'processing.....', 'Processing.....', 'Tratamiento.....', 'معالجة.....', 'En traitement.....', 'প্রসেসিং .....'),
(488, 'right', 'Right', 'Derecha', 'حق', 'Droite', 'অধিকার'),
(489, 'left', 'Left', 'Izquierda', 'اليسار', 'À gauche', 'বাম'),
(490, 'post_add', 'Post Add', 'Publicaciones Anadir', 'آخر اضافة', 'Poster Ajouter', 'পোস্ট যোগ'),
(491, 'sidebar_position', 'Sidebar Position', 'Posición de la barra lateral', 'الوظيفة الشريط الجانبي', 'Position Sidebar', 'সাইডবার অবস্থান'),
(492, 'product_counting', 'Product Counting', 'Contar producto', 'العد المنتج', 'Comptage de produit', 'প্রোডাক্ট কাউন্টিং'),
(493, 'homepage_featured_product_number', 'Homepage Featured Product Number', 'Página de inicio Número de producto destacado', 'الصفحة الرئيسية المميز رقم المنتج', 'Page d''accueil en vedette Numéro de produit', 'হোম পেজ বৈশিষ্ট্যযুক্ত পণ্য সংখ্যা'),
(494, 'number_of_search_product_result', 'Number Of Search Product Result', 'Número de búsqueda Producto Resultado', 'عدد من البحث النتيجة المنتج', 'Nombre de Recherche Résultat de produit', 'অনুসন্ধান প্রোডাক্ট ফল নম্বর'),
(495, 'advertisement_shown', 'Advertisement Shown', 'Se muestra publicidad', 'الإعلان يظهر', 'Publicité Montré', 'বিজ্ঞাপন দেখানো হচ্ছে'),
(496, 'advertisement_hidden', 'Advertisement Hidden', 'publicidad Ocultos', 'الإعلان المخفية', 'Publicité cachée', 'বিজ্ঞাপন লুকানো'),
(497, 'do_you_rellay_want_to_delete_this_image?', 'Do You Rellay Want To Delete This Image?', '¿Es usted Rellay desea eliminar esta imagen?', 'هل Rellay تريد حذف هذه الصورة؟', 'Êtes-vous Rellay de vouloir supprimer cette image?', 'আপনি মুছে ফেলতে এই ছবিটি চান Rellay না?'),
(498, 'edit_successful!', 'Edit Successful!', 'El éxito de editar!', 'تعديل ناجحة!', 'Modifier réussie!', 'সম্পাদনা সফল!'),
(499, 'edit_failed!', 'Edit Failed!', 'Editar Error!', 'تحرير فشل!', 'Modifier Échec!', 'ব্যর্থ সম্পাদনা করুন!'),
(500, 'password_changed!', 'Password Changed!', '¡Contraseña cambiada!', 'تم تغيير كلمة السر!', 'Mot de passe changé!', 'পাসওয়ার্ড পরিবর্তন!'),
(501, 'failed!', 'Failed!', '¡Ha fallado!', 'فشل!', 'Échoué!', 'অনুত্তীর্ণ!'),
(502, 'Welcome ', 'Welcome ', 'Bienvenido ', 'أهلا بك ', 'Bienvenue ', 'স্বাগত '),
(503, 'google_comment', 'Google Comment', 'google comentario', 'جوجل تعليق', 'Google Commentaire', 'গুগল মন্তব্য'),
(504, 'number_of_blogs', 'Number Of Blogs', 'Número de blogs', 'عدد المدونات', 'Nombre de blogs', 'ব্লগের সংখ্যা'),
(505, 'user', 'User', 'Usuario', 'مستخدم', 'Utilisateur', 'ব্যবহারকারী'),
(506, 'Introduce your cyber business with Activeclassified CMS', 'Introduce Your Cyber Business With Activeclassified CMS', 'Introducir su Cyber ​​negocios Con Activeclassified CMS', 'إدخال سايبر عملك مع Activeclassified CMS', 'Présentez votre entreprise avec Cyber ​​Activeclassified CMS', 'Activeclassified সিএমএস সাথে তোমার সাইবার ব্যবসার পরিচয়'),
(507, 'manage_menu', 'Manage Menu', 'administrar menú', 'إدارة القائمة', 'Gérer Menu', 'মেনু পরিচালনা'),
(508, 'add_menu', 'Add Menu', 'Añadir menú', 'إضافة القائمة', 'Ajouter Menu', 'মেনু যোগ করুন'),
(509, 'create_menu', 'Create Menu', 'crear menú', 'إنشاء القائمة', 'Créer un menu', 'মেনু তৈরি করুন'),
(510, 'menu_serial', 'Menu Serial', 'menú serie', 'المسلسل القائمة', 'Menu de série', 'মেনু সিরিয়াল'),
(511, 'edit_menu', 'Edit Menu', 'Menú Edición', 'تحرير القائمة', 'Menu Edition', 'মেনু সম্পাদনা করুন'),
(512, 'Test', 'Test', 'Prueba', 'اختبار', 'Tester', 'পরীক্ষা'),
(513, 'Test2', 'Test2', 'test2', 'TEST2', 'Test2', 'test2'),
(514, 'Test3', 'Test3', 'test3', 'Test3', 'test3', 'test3'),
(515, 'Iphone', 'Iphone', 'iphone', 'ايفون', 'Iphone', 'আইফোন'),
(516, 'New Page', 'New Page', 'Nueva pagina', 'صفحة جديدة', 'Nouvelle page', 'নতুন পাতা'),
(517, 'menu', 'Menu', 'Menú', 'قائمة طعام', 'le menu', 'মেনু'),
(518, 'menu_serial_saved!', 'Menu Serial Saved!', 'Menú Serie salvado!', 'المسلسل القائمة المحفوظة!', 'Menu Serial Saved!', 'মেনু সিরিয়াল সংরক্ষিত!'),
(519, 'user_packages', 'User Packages', 'Paquetes de usuarios', 'الحزم المستخدم', 'Forfaits de l''utilisateur', 'ব্যবহারকারী প্যাকেজ'),
(520, 'product_packages', 'Product Packages', 'Paquetes de productos', 'حزم المنتج', 'Paquets de produits', 'পণ্যের প্যাকেজ'),
(521, 'left_unit_for_current_user_package', 'Left Unit For Current User Package', 'Para la izquierda Unidad actual paquete de usuarios', 'غادر وحدة للتيار حزمة العضو', 'Gauche Unité Pour Ensemble Utilisateur actuel', 'বর্তমান ব্যবহারকারী প্যাকেজ বাম ইউনিট'),
(522, 'package_for :', 'Package For :', 'Por Paquete:', 'حزمة ل:', 'Forfait pour:', 'প্যাকেজের জন্য:'),
(523, 'manage_user_type', 'Manage User Type', 'Manejo Tipo de usuario', 'إدارة نوع المستخدم', 'Gérer Type d''utilisateur', 'পরিচালনা ব্যবহারকারী প্রকার'),
(524, 'add_user_type', 'Add User Type', 'Añadir Tipo de usuario', 'إضافة نوع المستخدم', 'Ajouter un type d''utilisateur', 'নিচে টাইপ যোগ করো'),
(525, 'create_user_type', 'Create User Type', 'Crear tipo de usuario', 'خلق نوع المستخدم', 'Créer un type d''utilisateur', 'ব্যবহারকারী প্রকার তৈরি করুন'),
(526, 'product_type', 'Product Type', 'tipo de producto', 'نوع المنتج', 'type de produit', 'পণ্যের ধরন'),
(527, 'duration', 'Duration', 'Duración', 'مدة', 'Durée', 'স্থিতিকাল'),
(528, 'pieces', 'Pieces', 'Piezas', 'قطع', 'Pièces', 'টুকরা'),
(529, 'unlimited', 'Unlimited', 'Ilimitado', 'غير محدود', 'Illimité', 'সীমাহীন'),
(530, 'user_package_published', 'User Package Published', 'Publicado usuario Paquete', 'حزمة المستخدم نشر', 'Ensemble Utilisateur Publié', 'ব্যবহারকারী প্যাকেজ প্রকাশিত'),
(531, 'user_package_unpublished', 'User Package Unpublished', 'Paquete de usuarios sin publicar', 'حزمة العضو غير منشورة', 'Ensemble Utilisateur non publié', 'ব্যবহারকারী প্যাকেজ অপ্রকাশিত'),
(532, 'edit_user_type', 'Edit User Type', 'Editar tipo de usuario', 'تحرير نوع المستخدم', 'Modifier le type d''utilisateur', 'সম্পাদনা ব্যবহারকারী প্রকার'),
(533, 'user_type', 'User Type', 'Tipo de usuario', 'نوع المستخدم', 'Type d''utilisateur', 'ব্যবহারকারীর ধরন'),
(534, 'user_type_name', 'User Type Name', 'Tipo Nombre de usuario', 'نوع المستخدم اسم', 'Type de Nom d''utilisateur', 'নিচে প্রকার নাম'),
(535, 'details', 'Details', 'detalles', 'تفاصيل', 'Détails', 'বিস্তারিত'),
(536, 'day', 'Day', 'Día', 'يوم', 'journée', 'দিন'),
(537, 'month', 'Month', 'Mes', 'شهر', 'Mois', 'মাস'),
(538, 'year', 'Year', 'Año', 'عام', 'An', 'বছর'),
(539, 'limited', 'Limited', 'Limitado', 'محدود', 'Limité', 'সীমিত'),
(540, 'package_logo', 'Package Logo', 'Logo paquete', 'حزمة شعار', 'paquet Logo', 'প্যাকেজ লোগো'),
(541, 'choose_file', 'Choose File', 'Elija el archivo', 'اختر ملف', 'Choisissez fichier', 'ফাইল পছন্দ কর'),
(542, 'piece', 'Piece', 'Pieza', 'قطعة', 'Pièce', 'টুকরা'),
(543, 'activate', 'Activate', 'Activar', 'تفعيل', 'Activer', 'সক্রিয় করা'),
(544, 'page_title', 'Page Title', 'Título de la página', 'عنوان الصفحة', 'Titre de la page', 'আমার স্নাতকের'),
(545, 'parmalink', 'Parmalink', 'Permalink', 'الرابط الثابت', 'Permalink', 'মাহবুব'),
(546, 'number_of_page_parts', 'Number Of Page Parts', 'Número de las partes Page', 'عدد من أجزاء الصفحة', 'Nombre de pages Pièces', 'পাতা যন্ত্রাংশ সংখ্যা'),
(547, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', 'Vamos a empezar a crear su página', 'يتيح البدء في إنشاء صفحتك', 'Permet de commencer à créer votre page', 'আপনার পৃষ্ঠা তৈরি করতে শুরু করি'),
(548, 'parts', 'Parts', 'Partes', 'أجزاء', 'les pièces', 'যন্ত্রাংশ'),
(549, 'select_size', 'Select Size', 'Selecciona el tamaño', 'أختر الحجم', 'Sélectionnez la taille', 'নির্বাচন আকার'),
(550, 'one-fourth', 'One-fourth', 'Un cuarto', 'ربع', 'Un quart', 'এক চতুর্থাংশ'),
(551, 'one-third', 'One-third', 'Un tercio', 'الثلث', 'Un tiers', 'এক-তৃতীয়াংশ'),
(552, 'half', 'Half', 'Mitad', 'نصف', 'Moitié', 'অর্ধেক'),
(553, 'two-third', 'Two-third', 'Dos tercios', 'ثلثي', 'Deux tiers', 'দুই-তৃতীয়াংশ'),
(554, 'three-fourth', 'Three-fourth', 'Tres cuartos', 'ثلاثة ارباع', 'Trois quart', 'তিন-চতুর্থাংশ'),
(555, 'full', 'Full', 'Completo', 'كامل', 'Plein', 'সম্পূর্ণ'),
(556, 'select_type', 'Select Type', 'Seleccione tipo', 'اختر صنف', 'Sélectionner le genre', 'নির্বাচন প্রকার'),
(557, 'content', 'Content', 'Contenido', 'محتوى', 'Contenu', 'সন্তুষ্ট'),
(558, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', 'No más de 4 columnas!', 'لا أكثر من 4 أعمدة!', 'Pas plus de 4 colonnes!', 'অনধিক 4 কলাম!'),
(559, 'choose_theme', 'Choose Theme', 'Escoge un tema', 'اختيار موضوع', 'Choisir un thème', 'থিম নির্বাচন করুন'),
(560, 'for', 'For', 'por', 'إلى', 'Pour', 'জন্য'),
(561, 'units', 'Units', 'Unidades', 'وحدات', 'Unités', 'ইউনিট'),
(562, 'time_limit', 'Time Limit', 'Límite de tiempo', 'المهلة', 'Limite de temps', 'সময় সীমা'),
(563, 'get_it', 'Get It', 'Consíguelo', 'احصل عليه', 'Trouver', 'এটা নাও'),
(564, 'advertisements', 'Advertisements', 'anuncios', 'الإعلانات', 'Publicités', 'বিজ্ঞাপন'),
(565, 'advertisements_left', 'Advertisements Left', 'izquierda anuncios', 'إعلانات اليسار', 'Publicités gauche', 'বিজ্ঞাপন বাম'),
(566, 'ads', 'Ads', 'anuncios', 'إعلانات', 'Les publicités', 'বিজ্ঞপ্তি'),
(567, 'manage_product_type', 'Manage Product Type', 'Manejo Tipo de Producto', 'إدارة نوع المنتج', 'Gérer Type de produit', 'পরিচালনা প্রোডাক্ট টাইপ'),
(568, 'add_product_type', 'Add Product Type', 'Añadir Tipo de Producto', 'إضافة نوع المنتج', 'Ajouter un type de produit', 'যোগ প্রোডাক্ট টাইপ'),
(569, 'create_product_type', 'Create Product Type', 'Crear Tipo de Producto', 'خلق نوع المنتج', 'Créer un type de produit', 'তৈরি প্রোডাক্ট টাইপ'),
(570, 'product_package_published', 'Product Package Published', 'El paquete de condiciones publicado', 'حزمة المنتج نشر', 'Package produit Publié', 'পণ্যের প্যাকেজ প্রকাশিত'),
(571, 'product_package_unpublished', 'Product Package Unpublished', 'El paquete del producto inédito', 'حزمة المنتج غير منشورة', 'Package de produit Unpublished', 'পণ্যের প্যাকেজ অপ্রকাশিত'),
(572, 'edit_product_type', 'Edit Product Type', 'Editar Tipo de Producto', 'تحرير نوع المنتج', 'Modifier le type de produit', 'সম্পাদনা প্রোডাক্ট টাইপ'),
(573, 'numeber', 'Numeber', 'Numeber', 'Numeber', 'Numeber', 'Numeber'),
(574, 'Select One', 'Select One', 'Seleccione uno', 'اختر واحدا', 'Sélectionnez Un', 'একটি নির্বাচন করুন'),
(575, 'validation_of_package', 'Validation Of Package', 'La validación de paquete', 'التحقق من حزمة', 'Validation du paquet', 'প্যাকেজের ভ্যালিডেশন'),
(576, 'number', 'Number', 'Número', 'عدد', 'Nombre', 'সংখ্যা'),
(577, 'Monthly Special', 'Monthly Special', 'especiales mensuales', 'خاص الشهري', 'Special mensuel', 'মাসের বিশেষ'),
(578, 'Default', 'Default', 'Defecto', 'افتراضي', 'Défaut', 'ডিফল্ট'),
(579, 'activated', 'Activated', 'Activado', 'مفعل', 'Activé', 'সক্রিয়'),
(580, 'Manage_roles', 'Manage Roles', 'administrar funciones', 'إدارة الأدوار', 'Gérer les rôles', 'ভূমিকাগুলি পরিচালনা'),
(581, 'add_role', 'Add Role', 'Agregar rol', 'إضافة دور', 'Ajouter un rôle', 'ভূমিকা যুক্ত করুন'),
(582, 'create_role', 'Create Role', 'crear Rol', 'إنشاء دور', 'Créer un rôle', 'ভূমিকা তৈরি করুন'),
(583, 'back_to_role_list', 'Back To Role List', 'De nuevo a la lista de funciones', 'الرجوع إلى قائمة دور', 'Retour à la liste de rôles', 'পিছনে ভূমিকা লিস্টে'),
(584, 'edit_role', 'Edit Role', 'Modificar rol', 'تحرير دور', 'Modifier Rôle', 'ভূমিকা সম্পাদনা'),
(585, 'ads_left_of_product_packages', 'Ads Left Of Product Packages', 'Anuncios izquierda de Paquetes de Productos', 'إعلانات يسار حزم المنتج', 'Annonces gauche de Paquets de produits', 'পণ্যের প্যাকেজ বাম বিজ্ঞপ্তি'),
(586, 'your_user_package', 'Your User Package', 'Su paquete de usuarios', 'المستخدم الخاص بك حزمة', 'Votre paquet d''utilisateur', 'আপনার ব্যবহারকারী প্যাকেজ'),
(587, 'choose_your_package', 'Choose Your Package', 'Elija su paquete', 'اختر مجموعتك', 'Choisissez votre forfait', 'আপনার প্যাকেজ নির্বাচন করুন'),
(588, 'choose_your_package_plan', 'Choose Your Package Plan', 'Elija su plan Paquete', 'اختيار خطة مجموعتك', 'Choisissez votre plan de l''emballage', 'আপনার প্যাকেজ প্ল্যান বেছে নিন'),
(589, 'back_to_profile_page', 'Back To Profile Page', 'De nuevo a la página de perfil', 'الرجوع إلى صفحة الملف الشخصي', 'Retour au profil', 'প্রোফাইলের পৃষ্ঠায় ফিরুন'),
(590, 'get_package', 'Get Package', 'Obtener paquete', 'الحصول على حزمة', 'Obtenez package', 'প্যাকেজ পান'),
(591, 'products_uploded_by_user', 'Products Uploded By User', 'Productos subidas por usuario', 'منتجات Uploded بواسطة العضو', 'Produits uploded par l''utilisateur', 'পণ্য ব্যাবহারকারীর Uploded'),
(592, 'manage_categories', 'Manage Categories', 'Administrar categorías', 'إدارة الفئات', 'Gérer les catégories', 'বিভাগ পরিচালনা'),
(593, 'add_category', 'Add Category', 'Añadir categoría', 'إضافة فئة', 'ajouter une catégorie', 'বিষয়শ্রেণী যোগ'),
(594, 'create_category', 'Create Category', 'crear categoría', 'إنشاء الفئة', 'Créer une catégorie', 'শ্রেণী তৈরি করুন'),
(595, 'edit_category', 'Edit Category', 'Editar categoría', 'تحرير الفئة', 'Modifier la catégorie', 'শ্রেণী সম্পাদনা'),
(596, 'manage_sub_categories', 'Manage Sub Categories', 'Administrar Sub Categorías', 'إدارة الفئات الفرعية', 'Gérer Sous-catégories', 'পরিচালনা সাব বিভাগ'),
(597, 'add_sub-category', 'Add Sub-category', 'Sumar Sub-categoría', 'إضافة فئة الفرعية', 'Ajouter Sous-catégorie', 'উপ-বিভাগ যোগ'),
(598, 'create_sub_category', 'Create Sub Category', 'Crear categoría Sub', 'إنشاء التصنيف الفرعي', 'Créer Sous catégorie', 'তৈরি করুন সাব ক্যাটাগরি'),
(599, 'edit_sub-category', 'Edit Sub-category', 'Editar Sub-categoría', 'تحرير الفرعية فئة', 'Modifier la sous-catégorie', 'সম্পাদনা উপ-বিভাগ'),
(600, 'category_name', 'Category Name', 'nombre de la categoría', 'اسم التصنيف', 'Nom de catégorie', 'বিভাগ নাম'),
(601, 'sub-category_name', 'Sub-category Name', 'Nombre de la subcategoría', 'الفئة الفرعية اسم', 'Sous-catégorie Nom', 'উপ-বিভাগ নাম'),
(602, 'profile_picture_saved_successfully!', 'Profile Picture Saved Successfully!', 'Perfil imagen guardada con éxito!', 'صورة الملف تم الحفظ بنجاح!', 'Profil Photo enregistré avec succès!', 'প্রোফাইল চিত্র সফলভাবে সংরক্ষিত!'),
(603, 'save_changes', 'Save Changes', 'Guardar cambios', 'حفظ التغييرات', 'Sauvegarder les modifications', 'পরিবর্তনগুলোর সংরক্ষন'),
(604, 'sub Category', 'Sub Category', 'Sub Categoría', 'التصنيف الفرعي', 'Sous catégorie', 'সাব ক্যাটাগরি'),
(605, 'product_uploaded_successfully!', 'Product Uploaded Successfully!', 'Producto cargado correctamente!', 'المنتج تم تحميلها بنجاح!', 'Produit Téléchargé avec succès!', 'প্রোডাক্ট সফলভাবে আপলোড!'),
(606, 'view_messages', 'View Messages', 'Ver Mensajes', 'عرض الرسائل', 'Voir les messages', 'বার্তা দেখুন'),
(607, 'ticket_message', 'Ticket Message', 'Mensaje de entradas', 'رسالة تذكرة', 'ticket message', 'টিকেট পাঠান'),
(608, 'back_to_ticket_list', 'Back To Ticket List', 'Volver a la lista de entradas', 'الرجوع إلى قائمة التذاكر', 'Retour à la liste des billets', 'পিছনে টিকেট লিস্টে'),
(609, 'from', 'From', 'De', 'من عند', 'De', 'থেকে'),
(610, 'view_contact_ticket', 'View Contact Ticket', 'Ver contacto de entradas', 'عرض الاتصال تذكرة', 'Voir le contact Ticket', 'দেখুন যোগাযোগ টিকেট'),
(611, 'view_ticket', 'View Ticket', 'Ver entradas', 'عرض تذكرة', 'Voir le billet', 'দেখুন টিকেট'),
(612, 'ticket_from', 'Ticket From', 'A partir de entradas', 'تذكرة من', 'ticket De', 'থেকে টিকেট'),
(613, 'view_original_message', 'View Original Message', 'Ver mensaje original', 'عرض الرسالة الأصلية', 'Voir le message original', 'মূল বার্তা দেখুন'),
(614, 'successfully_replied!', 'Successfully Replied!', 'Respondió con éxito!', 'أجاب بنجاح!', 'Répondit avec succès!', 'সফলভাবে জবাব দিয়েছেন!'),
(615, 'most_wished_product_report', 'Most Wished Product Report', 'Más deseadas del producto Informe', 'الأكثر تمنى تقرير المنتج', 'La plupart Souhaité Rapport produit', 'সর্বাধিক জানিয়েছে প্রোডাক্ট প্রতিবেদন'),
(616, 'choose_from_current_user_package', 'Choose From Current User Package', 'De elegir actual paquete de usuarios', 'اختيار من الحالية حزمة العضو', 'Choisissez De Package Utilisateur actuel', 'থেকে বর্তমান ব্যবহারকারী প্যাকেজ নির্বাচন'),
(617, 'select_from_current_package', 'Select From Current Package', 'Seleccionar de paquete actual', 'اختر من المجموعة الحالية', 'Sélectionnez De courant Package', 'বর্তমান প্যাকেজ থেকে নির্বাচন করুন'),
(618, 'select_from_current_user_package', 'Select From Current User Package', 'Seleccione de la actual paquete de usuarios', 'حدد من الحالية حزمة العضو', 'Sélectionnez De Package Utilisateur actuel', 'থেকে বর্তমান ব্যবহারকারী প্যাকেজ নির্বাচন'),
(619, 'package_for', 'Package For', 'Por paquete', 'حزمة ل', 'package Pour', 'প্যাকেজ'),
(620, 'preloader_color', 'Preloader Color', 'preloader color', 'التحميل المسبق اللون', 'Preloader Couleur', 'Preloader রঙ'),
(621, 'Search for products', 'Search For Products', 'Buscar productos', 'بحث عن المنتجات', 'Rechercher des produits', 'পণ্যগুলি সন্ধান'),
(622, 'samsung_galaxy_s4', 'Samsung Galaxy S4', 'Samsung Galaxy S4', 'سامسونج غالاكسي S4', 'Samsung Galaxy S4', 'স্যামসাং গ্যালাক্সি এস 4'),
(623, 'mailing_list', 'Mailing List', 'Lista de correo', 'القائمة البريدية', 'Liste de diffusion', 'মেইলিং লিস্ট'),
(624, 'sign_up_if_you_would_like_to_receive_occasional_treats_from_us. ', 'Sign Up If You Would Like To Receive Occasional Treats From Us. ', 'REGÍSTRATE si le gustaría recibir ocasiones especiales a nosotros. ', 'اشترك إذا كنت ترغب في الحصول على المتع العرضية من بنا. ', 'Inscription Si vous souhaitez recevoir des gâteries occasionnelles De nous. ', 'সাইন আপ করুন আপনি আমাদের কাছ থেকে মাঝে একইরূপে পেতে চাই তাহলে. '),
(625, 'your_email_address...', 'Your Email Address...', 'Tu correo electrónico...', 'عنوان بريدك  الإلكتروني...', 'Votre adresse email...', 'আপনার ইমেইল ঠিকানা...'),
(626, 'go!', 'Go!', '¡Ir!', 'اذهب!', 'Aller!', 'যান!'),
(627, 'go', 'Go', 'Ir', 'اذهب', 'Aller', 'যাওয়া'),
(628, 'price : ', 'Price : ', 'Precio: ', 'السعر : ', 'Prix ​​: ', 'দাম: '),
(629, 'facebook', 'Facebook', 'Facebook', 'فيس بوك', 'Facebook', 'ফেসবুক'),
(630, 'google+', 'Google+', 'Google+', 'في + Google', 'Google+', 'Google+ এ'),
(631, 'manage_blog', 'Manage Blog', 'administrar Blog', 'إدارة مدونة', 'Gérer Blog', 'ব্লগ পরিচালনা'),
(632, 'add_blog', 'Add Blog', 'Añadir Blog', 'إضافة مدونة', 'Ajouter Blog', 'ব্লগ যোগ'),
(633, 'create_blog', 'Create Blog', 'crear Blog', 'إنشاء مدونة', 'Créer un blog', 'ব্লগ তৈরি করুন'),
(634, 'back_to_blog_list', 'Back To Blog List', 'De nuevo a la lista de blogs', 'العودة إلى قائمة المدونة', 'Retour à la liste Blog', 'পিছনে ব্লগ তালিকাতে'),
(635, 'blog_published', 'Blog Published', 'Publicado Blog', 'بلوق نشر', 'Blog Publié', 'ব্লগ প্রকাশিত'),
(636, 'blog_unpublished', 'Blog Unpublished', 'Blog sin publicar', 'بلوق غير منشورة', 'Blog Unpublished', 'ব্লগ অপ্রকাশিত'),
(637, 'edit_blog', 'Edit Blog', 'Editar Blog', 'تحرير مدونة', 'Modifier Blog', 'ব্লগ সম্পাদনা'),
(638, 'manage_profile', 'Manage Profile', 'administrar perfil', 'إدارة الملف الشخصي', 'Gérer le profil', 'অমিমাংসীত সংস্করণ লগ'),
(639, 'manage_details', 'Manage Details', 'Manejo de Datos', 'إدارة تفاصيل', 'Gérer Détails', 'বিস্তারিত পরিচালনা'),
(640, 'profile_updated!', 'Profile Updated!', '¡Perfil actualizado!', 'تحديث الملف الشخصي!', 'Profil mis à jour!', 'প্রোফাইল আপডেট!'),
(641, 'update_profile', 'Update Profile', 'Actualización del perfil', 'تحديث الملف', 'Mettre à jour le profil', 'প্রফাইল হালনাগাদ'),
(642, 'change_password', 'Change Password', 'Cambia la contraseña', 'تغيير كلمة السر', 'Changer le mot de passe', 'পাসওয়ার্ড পরিবর্তন করুন'),
(643, 'current_password', 'Current Password', 'contraseña actual', 'كلمة السر الحالية', 'Mot de passe actuel', 'বর্তমান পাসওয়ার্ড'),
(644, 'new_password*', 'New Password*', 'Nueva contraseña*', 'كلمة السر الجديدة*', 'Nouveau mot de passe*', 'নতুন পাসওয়ার্ড *'),
(645, 'confirm_password', 'Confirm Password', 'Confirmar contraseña', 'تأكيد كلمة المرور', 'Confirmez le mot de passe', 'পাসওয়ার্ড নিশ্চিত করুন'),
(646, 'password_updated!', 'Password Updated!', '¡Contraseña actualiza!', 'تم تحديث كلمة السر!', 'Mot de passe mis à jour!', 'পাসওয়ার্ড আপডেট করা হয়েছে!'),
(647, 'update_password', 'Update Password', 'Actualiza contraseña', 'تحديث كلمة المرور', 'Mise à jour Mot de passe', 'আপডেট পাসওয়ার্ড'),
(648, 'password_mismatched', 'Password Mismatched', 'contraseña no coinciden', 'كلمة المرور غير متطابقة', 'Mot de passe Mismatched', 'পাসওয়ার্ড মিলছে না'),
(649, 'incorrect_password!', 'Incorrect Password!', '¡Contraseña incorrecta!', 'كلمة المرور غير صحيحة!', 'Mot de passe incorrect!', 'ভুল পাসওয়ার্ড৤!'),
(650, 'blog_title', 'Blog Title', 'Titulo de Blog', 'عنوان المدونة', 'Titre du Blog', 'ব্লগ শিরোনাম'),
(651, 'images', 'Images', 'imágenes', 'صور', 'Images', 'চিত্র'),
(652, 'summery', 'Summery', 'Veraniego', 'صيفي', 'd''été', 'গ্রীষ্মের বৈশিষ্ট্যপূর্ণ'),
(653, 'author', 'Author', 'Autor', 'مؤلف', 'Auteur', 'লেখক'),
(654, 'field_name', 'Field Name', 'Nombre del campo', 'اسم الحقل', 'Nom de domaine', 'ক্ষেত্র নাম'),
(655, 'customer_input_title', 'Customer Input Title', 'Cliente de asignación de títulos', 'العملاء إدخال عنوان', 'Entrée client Titre', 'গ্রাহক ইনপুট শিরোনাম'),
(656, 'add_options_for_choice', 'Add Options For Choice', 'Agregar opciones para la opción', 'إضافة خيارات للاختيار', 'Ajouter des options pour le choix', 'পছন্দ জন্য বিকল্প যোগ করুন'),
(657, 'option_name', 'Option Name', 'Nombre de la opción', 'الخيار اسم', 'Nom de l''option', 'বিকল্প নাম'),
(658, 'manage_blog_categories', 'Manage Blog Categories', 'Administrar Categorías del blog', 'إدارة المدونة الأقسام', 'Gérer blog Catégories', 'পরিচালনা ব্লগ বিভাগ'),
(659, 'add_blog_category', 'Add Blog Category', 'Añadir Blog de Categoría', 'إضافة مقالات الفئة', 'Ajouter Blog Catégorie', 'যোগ ব্লগ বিভাগ'),
(660, 'create_blog_category', 'Create Blog Category', 'Crear Blog Categoría', 'إنشاء مدونة الفئة', 'Créer un blog Catégorie', 'তৈরি করুন ব্লগ বিভাগ'),
(661, 'edit_blog_category', 'Edit Blog Category', 'Editar Blog Categoría', 'تحرير مقالات الفئة', 'Modifier Blog Catégorie', 'সম্পাদনা ব্লগ বিভাগ'),
(662, 'blog_category', 'Blog Category', 'Blog de Categoría', 'بلوق الفئة', 'Blog Catégorie', 'ব্লগ বিভাগ'),
(663, 'blog_category_name', 'Blog Category Name', 'Blog Nombre de categoría', 'بلوق اسم التصنيف', 'Blog Nom de la catégorie', 'ব্লগ বিভাগ নাম'),
(664, 'i_want_to_find...', 'I Want To Find...', 'Yo quiero encontrar...', 'انا اريد ان اجد...', 'Je veux trouver...', 'আমি খুঁজতে চাই...'),
(665, 'change_profile_picture', 'Change Profile Picture', 'Cambiar foto de perfil', 'تغيير الصورة الشخصية', 'Modifier la photo de profil', 'প্রোফাইল ছবি পরিবর্তন'),
(666, 'product_log', 'Product Log', 'Acceder producto', 'دخول المنتج', 'Connexion de produit', 'প্রোডাক্ট লগ'),
(667, 'advertisement_title', 'Advertisement Title', 'Título publicidad', 'عنوان الإعلان', 'Publicité Titre', 'বিজ্ঞাপন শিরোনাম'),
(668, 'show', 'Show', 'Espectáculo', 'تبين', 'Montrer', 'প্রদর্শনী'),
(669, 'option', 'Option', 'Opción', 'خيار', 'Option', 'পছন্দ'),
(670, 'your_username', 'Your Username', 'Su nombre de usuario', 'إسم المستخدم الخاص بك', 'Ton nom d''utilisateur', 'আপনার ব্যবহারকৃত নাম'),
(671, 'your_surname', 'Your Surname', 'Tu apellido', 'اللقب الخاص بك', 'Votre Nom', 'তোমার ডাকনাম'),
(672, 'old_password', 'Old Password', 'Contraseña anterior', 'كلمة المرور القديمة', 'ancien mot de passe', 'পুরনো পাসওয়ার্ড'),
(673, 'new_password', 'New Password', 'nueva contraseña', 'كلمة السر الجديدة', 'nouveau mot de passe', 'নতুন পাসওয়ার্ড'),
(674, 're-enter_password', 'Re-enter Password', 'Escriba la contraseña otra vez', 'إعادة إدخال كلمة المرور', 'Retaper le mot de passe', 'পাসওয়ার্ড পুনরায় প্রবেশ'),
(675, 'post_your_advertise', 'Post Your Advertise', 'Publique Publicidad', 'أضف لديك إعلان', 'Diffusez votre Annoncez', 'পোস্টটি আপনার বিজ্ঞাপন'),
(676, 'needed_to_verify', 'Needed To Verify', 'Necesarios para el control', 'اللازمة للتحقق', 'Nécessaires pour vérifier', 'যাচাই করা প্রয়োজন'),
(677, 'your_account', 'Your Account', 'Su cuenta', 'حسابك', 'Votre compte', 'আপনার অ্যাকাউন্ট'),
(678, 'needed_to_contact_with_you', 'Needed To Contact With You', 'Necesaria para contactar con usted', 'هناك حاجة للاتصال معكم', 'Nécessaires pour communiquer avec vous', 'আপনার সাথে যোগাযোগ প্রয়োজন'),
(679, 'comma_separated_tags', 'Comma Separated Tags', 'Etiquetas separados por comas', 'الكلمات المفصولة بفواصل', 'Mots-clefs Comma Separated', 'কমা দ্বারা পৃথকীকৃত ট্যাগ্স'),
(680, 'add_new_specification', 'Add New Specification', 'Añadir nueva especificación', 'إضافة مواصفة جديد', 'Ajouter une nouvelle spécification', 'নতুন স্পেসিফিকেশন যোগ'),
(681, 'processing...', 'Processing...', 'Tratamiento...', 'معالجة...', 'En traitement...', 'প্রসেসিং ...'),
(682, 'cancle', 'Cancle', 'cancle', 'CANCLE', 'cancle', 'Cancle'),
(683, 'model', 'Model', 'Modelo', 'نموذج', 'Modèle', 'মডেল'),
(684, 'address_line1', 'Address Line1', 'Dirección Línea 1', 'العنوان الأول', 'Adresse 1', 'ঠিকানার Line1'),
(685, 'address_line2', 'Address Line2', 'Dirección Línea 2', 'سطر العنوان 2', 'Adresse Ligne 2', 'ঠিকানা লাইন ২'),
(686, 'ticket_messages', 'Ticket Messages', 'Mensajes de entradas', 'رسائل تذكرة', 'Messages de billets', 'টিকেট বার্তা'),
(687, 'manage_languages', 'Manage Languages', 'Manejo de Idiomas', 'إدارة اللغات', 'Gérer les langues', 'পরিচালনা ভাষাসমূহ'),
(688, 'add_language', 'Add Language', 'Agregar idioma', 'إضافة اللغة', 'Ajouter une langue', 'ভাষা যোগ'),
(689, 'add_new_word', 'Add New Word', 'Añadir palabra nueva', 'إضافة كلمة جديدة', 'Ajouter un nouveau mot', 'নতুন শব্দ যোগ'),
(690, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', 'Realmente desea eliminar este idioma?', 'حقا تريد حذف هذه اللغة؟', 'Vraiment vouloir supprimer cette langue?', 'সত্যিই মুছে ফেলতে এই ভাষা চান?'),
(691, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', '¿Realmente desea eliminar este idioma?', 'هل حقا تريد حذف هذه اللغة؟', 'Êtes-vous vraiment supprimer cette langue?', 'আপনি কি সত্যিই মুছে ফেলতে এই ভাষা চাও?'),
(692, 'saving..', 'Saving..', 'Ahorro..', 'إنقاذ..', 'Économie..', 'সংরক্ষণ ..'),
(693, 'select_language', 'Select Language', 'Seleccione el idioma', 'اختر اللغة', 'Choisir la langue', 'ভাষা নির্বাচন কর'),
(694, 'delete_language', 'Delete Language', 'eliminar idioma', 'حذف اللغة', 'Supprimer Langue', 'ভাষা মুছুন'),
(695, 'word', 'Word', 'Palabra', 'كلمة', 'Mot', 'শব্দ'),
(696, 'translation', 'Translation', 'Traducción', 'ترجمة', 'Traduction', 'অনুবাদ'),
(697, 'updated!', 'Updated!', '¡Actualizado!', 'تحديث!', 'Actualisé!', 'আপডেট করা হয়েছে!'),
(698, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', 'Realmente desea eliminar esta Palabra?', 'حقا تريد حذف هذه الكلمة؟', 'Vraiment vouloir supprimer ce mot?', 'সত্যিই মুছে ফেলতে এই শব্দ করতে চান?'),
(699, 'translate', 'Translate', 'Traducir', 'ترجم', 'Traduire', 'অনুবাদ'),
(700, 'save_all', 'Save All', 'Salvar a todos', 'احفظ الكل', 'Sauver tous', 'সব সংরক্ষণ করুন'),
(701, 'manage_slider', 'Manage Slider', 'administrar deslizante', 'إدارة المتزلج', 'Gérer curseur', 'স্লাইডার পরিচালনা'),
(702, 'create_slider', 'Create Slider', 'crear deslizante', 'إنشاء المتزلج', 'Créer curseur', 'স্লাইডার তৈরি করুন'),
(703, 'slider_list', 'Slider List', 'Lista deslizador', 'قائمة المنزلق', 'Liste curseur', 'স্লাইডার তালিকা'),
(704, 'slider_serial', 'Slider Serial', 'deslizador de serie', 'المتزلج المسلسل', 'curseur série', 'স্লাইডার সিরিয়াল'),
(705, 'ID', 'ID', 'CARNÉ DE IDENTIDAD', 'هوية شخصية', 'ID', 'আইডি'),
(706, 'enter_your_ticket_subject_to_admin', 'Enter Your Ticket Subject To Admin', 'Introduzca su boleto Sujeto a admin', 'أدخل تذكرة الموضوع إلى admin', 'Entrez votre ticket Sujet à l''administrateur', 'এডমিন আপনার টিকেট বিষয় লিখুন'),
(707, 'creating', 'Creating', 'Creación', 'إنشاء', 'Création', 'তৈরি'),
(708, 'create', 'Create', 'Crear', 'خلق', 'Créer', 'সৃষ্টি'),
(709, 'create_successful!', 'Create Successful!', 'Crear con éxito!', 'إنشاء ناجحة!', 'Créer réussie!', 'সফল তৈরি করুন!'),
(710, 'create_failed!', 'Create Failed!', 'No se ha podido crear!', 'إنشاء فشل!', 'Créer Échec!', 'তৈরি করুন ব্যর্থ!'),
(711, 'successfully_created', 'Successfully Created', 'Creado con éxito', 'مكون بنجاح', 'créé avec succès', 'সফলভাবে তৈরি'),
(712, 'not_created', 'Not Created', 'No creado', 'لا مكون', 'Non Créé', 'তৈরি করা'),
(713, 'created!', 'Created!', '¡Creado!', 'مكون!', 'Créé!', 'তৈরী করা হয়েছে!'),
(714, 'replying', 'Replying', 'respondiendo', 'الرد', 'répondant', 'জবাবে'),
(715, 'sucessfully_replied!', 'Sucessfully Replied!', 'Respondió con éxito!', 'أجاب بنجاح!', 'Sucessfully Répondit!', 'সফলভাবে জবাব দিয়েছেন!'),
(716, 'send_newsletter', 'Send Newsletter', 'Enviar Newsletter', 'إرسال النشرة الإخبارية', 'Envoyer lettre', 'নিউজ লেটার পাঠান'),
(717, 'e-mails_(users)', 'E-mails (users)', 'E-mails (usuarios)', 'رسائل البريد الإلكتروني (المستخدمين)', 'E-mails (utilisateurs)', 'ই-মেইল (ব্যবহারকারী)'),
(718, 'e-mails_(subscribers)', 'E-mails (subscribers)', 'E-mails (suscriptores)', 'رسائل البريد الإلكتروني (مشترك)', 'E-mails (abonnés)', 'ই-মেইল (সদস্য)'),
(719, 'from_:_email_address', 'From : Email Address', 'De la dirección de correo electrónico', 'من: عنوان البريد الإلكتروني', 'De: Adresse e-mail', 'থেকে: এটি ইমেল ঠিকানা'),
(720, 'newsletter_subject', 'Newsletter Subject', 'Asunto boletín', 'النشرة الموضوع', 'Bulletin Sujet', 'নিউজলেটারের সদস্য সাপেক্ষে'),
(721, 'newsletter_content', 'Newsletter Content', 'contenido del boletín', 'النشرة المحتوى', 'newsletter Content', 'নিউজলেটার বিষয়বস্তু'),
(722, 'sending', 'Sending', 'Enviando', 'إرسال', 'Envoi', 'পাঠানো হচ্ছে'),
(723, 'sent!', 'Sent!', '¡Expedido!', 'أرسلت!', 'Envoyé!', 'পাঠানো হয়েছে!'),
(724, 'send', 'Send', 'Enviar', 'إرسال', 'Envoyer', 'পাঠান'),
(725, 'Product_name :', 'Product Name :', 'Nombre del producto :', 'اسم المنتج :', 'Nom du produit:', 'পণ্যের নাম :'),
(726, 'all_messages', 'All Messages', 'Todos los mensajes', 'جميع الرسائل', 'Tous les messages', 'সকল বার্তা'),
(727, 'create_ticket', 'Create Ticket', 'crear entradas', 'إنشاء تذكرة', 'Créer un ticket', 'টিকিট তৈরি করুন'),
(728, 'enter_your_messgae', 'Enter Your Messgae', 'Ingrese su messgae', 'أدخل messgae الخاص بك في', 'Entrez votre messgae', 'তোমার Messgae লিখুন'),
(729, 'new_message', 'New Message', 'Nuevo mensaje', 'رسالة جديدة', 'Nouveau message', 'নতুন বার্তা'),
(730, 'user_name', 'User Name', 'Nombre de usuario', 'اسم المستخدم', 'Nom d''utilisateur', 'ব্যবহারকারীর নাম'),
(731, 'sur_name', 'Sur Name', 'en Nombre', 'على اسم', 'Sur Name', 'নাম তে'),
(732, 'country', 'Country', 'País', 'بلد', 'Pays', 'দেশ'),
(733, 'city', 'City', 'Ciudad', 'مدينة', 'Ville', 'শহর'),
(734, 'zip', 'Zip', 'Cremallera', 'الرمز البريدي', 'Zip *: français', 'ফ্যাস্ শব্দ'),
(735, 'fb_id', 'Fb Id', 'Id fb', 'أف ب إيد', 'Fb Id', 'fb আইডি'),
(736, 'g_id', 'G Id', 'G Id', 'G رقم', 'G Id', 'জি আইডি'),
(737, 'google_plus', 'Google Plus', 'google Plus', 'جوجل بلس', 'Google Plus', 'গুগল প্লাস'),
(738, 'skype', 'Skype', 'Skype', 'سكايب', 'Skype', 'স্কাইপ'),
(739, 'Photo', 'Photo', 'Foto', 'صورة فوتوغرافية', 'photo', 'ছবি'),
(740, 'Choose your photo', 'Choose Your Photo', 'Elija su foto', 'اختيار صورتك', 'Choisissez votre photo', 'আপনার ছবি নির্বাচন করুন'),
(741, 'slider_serial_saved!', 'Slider Serial Saved!', 'Slider guardadas en serie!', 'المنزلق المسلسل المحفوظ!', 'Curseur série Saved!', 'সিরিয়াল সংরক্ষিত স্লাইডার!'),
(742, 'choose_your_slider_style', 'Choose Your Slider Style', 'Elija su estilo deslizante', 'اختر المتزلج ستايل', 'Choisissez votre style Slider', 'আপনার স্লাইডার স্টাইল নির্বাচন'),
(743, 'play', 'Play', 'Jugar', 'لعب', 'Jouer', 'খেলা'),
(744, 'enter_preview', 'Enter Preview', 'Introduzca Vista previa', 'أدخل معاينة', 'Entrez Aperçu', 'প্রি লিখুন'),
(745, 'creating_slider..', 'Creating Slider..', 'Creación deslizante ..', 'خلق المتزلج ..', 'Création Curseur ..', 'স্লাইডার তৈরি ..'),
(746, 'slider_added!', 'Slider Added!', 'Deslizador Añadido!', 'المنزلق واضاف!', 'Curseur Ajouté!', 'স্লাইডার যোগ করা হয়েছে!'),
(747, 'select_background_image', 'Select Background Image', 'Seleccione la imagen de fondo', 'اختر صورة الخلفية', 'Sélectionnez l''image de fond', 'পটভূমির চিত্র নতুন নির্বাচন'),
(748, 'clean', 'Clean', 'Limpiar', 'نظيف', 'Nettoyer', 'পরিষ্কার'),
(749, 'font-color', 'Font-color', 'Color de fuente', 'لون الخط', 'Couleur de la police', 'ফন্টের রং'),
(750, 'background_color', 'Background Color', 'Color de fondo', 'لون الخلفية', 'Couleur de fond', 'পেছনের রং'),
(751, 'view_contact_message', 'View Contact Message', 'Ver contacto Mensaje', 'عرض طرق الاتصال رسالة', 'Voir Contact Message', 'দেখুন যোগাযোগ পাঠান'),
(752, 'date_time', 'Date Time', 'Fecha y hora', 'التاريخ الوقت', 'Date Heure', 'তারিখ সময়'),
(753, 'reply_contact_message', 'Reply Contact Message', 'Responder mensaje Contacto', 'رد الاتصال رسالة', 'Répondre Contact Message', 'উত্তর যোগাযোগ পাঠান'),
(754, 'manage_staffs', 'Manage Staffs', 'Manejo de Estados Mayores', 'إدارة الأركان', 'Gérer Staffs', 'কর্মচারীদের পরিচালনা'),
(755, 'add_staff', 'Add Staff', 'Añadir personal', 'إضافة للموظفين', 'Ajouter personnel', 'স্টাফ যোগ'),
(756, 'create_admin', 'Create Admin', 'crear administración', 'إنشاء الادارية', 'Créer Administrateur', 'এডমিন তৈরি করুন'),
(757, 'role', 'Role', 'Papel', 'دور', 'Rôle', 'ভূমিকা'),
(758, 'edit_admin', 'Edit Admin', 'Editar administración', 'تحرير الادارية', 'Modifier Administrateur', 'এডমিন সম্পাদনা'),
(759, 'sddress', 'Sddress', 'Sddress', 'Sddress', 'Sddress', 'Sddress'),
(760, 'permissions', 'Permissions', 'permisos', 'أذونات', 'Autorisations', 'অনুমতিসমূহ'),
(762, 'settings', 'Settings', 'ajustes', 'إعدادات', 'Paramètres', 'সেটিংস'),
(763, 'social_network_reach', 'Social Network Reach', 'De cobertura de red social', 'الشبكة الاجتماعية ريتش', 'Réseau Social Portée', 'সামাজিক নেটওয়ার্কের নাগাল'),
(764, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', 'Las métricas de tráfico de Alexa', 'اليكسا القياسات المرور', 'Alexa Traffic Metrics', 'আলেক্সা ট্রাফিক মেট্রিক্স'),
(765, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', 'Los gráficos de tráfico de Alexa', 'اليكسا المرور الرسوم البيانية', 'Alexa Traffic Graphiques', 'আলেক্সা ট্রাফিক গ্রাফ'),
(766, 'search_index', 'Search Index', 'Índice de búsqueda', 'مؤشر البحث', 'Recherche Index', 'অনুসন্ধান ইনডেক্স'),
(767, 'alexa_traffic_rank', 'Alexa Traffic Rank', 'Alexa Traffic Rank', 'ترتيب اليكسا Alexa', 'Alexa Traffic Rank', 'আলেক্সা ট্রাফিক মান'),
(768, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', 'Manejo de la optimización del Search Engine', 'إدارة محرك البحث الأمثل', 'Gérer Search Engine Optimization', 'পরিচালনা সার্চ ইঞ্জিন অপ্টিমাইজেশান'),
(769, 'keywords', 'Keywords', 'Palabras clave', 'الكلمات المفتاحية', 'Mots clés', 'মূলশব্দ'),
(770, 'revisit_after', 'Revisit After', 'Después de revisar', 'إعادة النظر بعد', 'Revisitez Après', 'পরবর্তীতে পরিদর্শন'),
(771, 'days', 'Days', 'Días', 'أيام', 'Journées', 'দিন'),
(772, 'sitemap_link', 'Sitemap Link', 'Mapa del sitio Enlace', 'خريطة الموقع وصلة', 'Plan du site Lien', 'সাইট ম্যাপ লিংক'),
(773, 'ahmed', 'Ahmed', 'Ahmed', 'أحمد', 'Ahmed', 'আহমেদ'),
(774, 'copy', 'Copy', 'Dupdo', 'نسخ', 'Copie', 'কপি'),
(775, 'Premium', 'Premium', 'Prima', 'الممتازة', 'Prime', 'প্রিমিয়াম'),
(776, 'language_name', 'Language Name', 'Nombre del lenguaje', 'اسم اللغة', 'Nom de la langue', 'ভাষার নাম'),
(777, 'new_language', 'New Language', 'Nuevo idioma', 'لغة جديدة', 'Nouveau langage', 'নতুন ভাষা'),
(778, 'manage_top_slides', 'Manage Top Slides', 'Gestionar los mejores diapositivas', 'إدارة أعلى الشرائح', 'Gérer Top Diapositives', 'শীর্ষ স্লাইড পরিচালনা'),
(779, 'add_slides', 'Add Slides', 'Agregar diapositivas', 'إضافة الشرائح', 'Ajouter Diapositives', 'স্লাইড যোগ'),
(780, 'create_slides', 'Create Slides', 'crear diapositivas', 'إنشاء الشرائح', 'Création de diapositives', 'স্লাইড তৈরি করুন'),
(781, 'slider_on_/_off', 'Slider On / Off', 'Control deslizante de encendido / apagado', 'المتزلج تشغيل / إيقاف', 'Curseur On / Off', 'স্লাইডার চালু / বন্ধ'),
(782, 'slides', 'Slides', 'diapositivas', 'الشرائح', 'Diapositives', 'স্লাইডগুলি'),
(783, 'Overall ', 'Overall ', 'En general ', 'شامل ', 'Global ', 'সার্বিক '),
(784, 'my_purchase_log', 'My Purchase Log', 'Mi Compra Acceder', 'بلدي شراء دخول', 'Mon achat Connexion', 'আমার ক্রয় লগ'),
(785, 'please_enable_javaScript_to_view_the', 'Please Enable JavaScript To View The', 'Por favor, active JavaScript para ver el', 'الرجاء تمكين جافا سكريبت لعرض', 'S''il vous plaît activer JavaScript pour visualiser la', 'দয়া করে জাভাস্ক্রিপ্ট সচল দেখতে চাইলেঃ'),
(786, 'comments_powered_by_disqus', 'Comments Powered By Disqus', 'En Disqus', 'تعليقات مدعوم من عراقنا الإخبارية', 'Commentaires Powered By Disqus', 'মন্তব্য Disqus চালিত'),
(787, 'Super', 'Super', 'súper', 'فائق', 'super', 'সুপার'),
(788, 'example', 'Example', 'Ejemplo', 'مثال', 'Exemple', 'উদাহরণ'),
(789, 'do_you_rellay_want_to_delete_this_product?', 'Do You Rellay Want To Delete This Product?', '¿Es usted Rellay desea eliminar este producto?', 'هل Rellay تريد حذف هذا المنتج؟', 'Êtes-vous Rellay de vouloir supprimer ce produit?', 'আপনি মুছে ফেলতে এই পণ্যের চান Rellay না?'),
(790, 'related_products', 'Related Products', 'Productos relacionados', 'منتجات ذات صله', 'Produits connexes', 'সংশ্লিষ্ট পণ্য'),
(791, 'Facebook Like Box', 'Facebook Like Box', 'Facebook Like Box', 'الفيسبوك مثل صندوق', 'Facebook Like Box', 'ফেসবুক লাইক বক্স'),
(792, 'your_email_address', 'Your Email Address', 'Tu correo electrónico', 'عنوان بريدك  الإلكتروني', 'Votre adresse email', 'আপনার ইমেইল ঠিকানা'),
(793, 'i_want_to_find ...', 'I Want To Find ...', NULL, 'انا اريد ان اجد ...', 'Je veux trouver ...', 'আমি খুঁজতে চাই ...'),
(794, 'Advanced Search', 'Advanced Search', 'Búsqueda Avanzada', 'البحث المتقدم', 'Recherche Avancée', 'উন্নত অনুসন্ধান'),
(795, 'working...', 'Working...', 'Trabajando...', 'العمل ...', 'Travailler...', 'ওয়ার্কিং ...'),
(796, 'favored', 'Favored', 'Favorecido', 'مفضل', 'Favorisé', 'বিশেষ সুবিধাপ্রাপ্ত'),
(797, 'contact_us', 'Contact Us', 'Contáctenos', 'اتصل بنا', 'Contactez nous', 'আমাদের সাথে যোগাযোগ করুন'),
(798, 'total_ads', 'Total Ads', 'Anuncios totales', 'مجموع الإعلانات', 'total des annonces', 'মোট বিজ্ঞপ্তি'),
(799, 'published_ads', 'Published Ads', 'Anuncios publicados', 'الإعلانات المنشورة', 'annonces publiées', 'প্রকাশিত বিজ্ঞপ্তি'),
(800, 'unpublished_ads', 'Unpublished Ads', 'Anuncios publicados', 'الإعلانات غير منشورة', 'Unpublished annonces', 'অপ্রকাশিত বিজ্ঞপ্তি'),
(801, 'category_wise_ads', 'Category Wise Ads', 'Categoría Wise Anuncios', 'فئة الحكيم الإعلانات', 'Catégorie Wise annonces', 'বিষয়শ্রেণী প্রজ্ঞাময় বিজ্ঞপ্তি'),
(802, 'wished_ads', 'Wished Ads', 'Anuncios deseados', 'إعلانات تمنى', 'annonces sOUHAITAIT', 'আকাঙ্ক্ষিত বিজ্ঞপ্তি'),
(803, 'most_viewed_ads', 'Most Viewed Ads', 'Anuncios mas visitados', 'الإعلانات الأكثر مشاهدة', 'Annonces les plus consultées', 'সর্বাধিক দেখা বিজ্ঞপ্তি'),
(804, 'widget_enabled!', 'Widget Enabled!', 'Widget activado!', 'القطعة ممكن!', 'Widget Enabled!', 'উইজেট Enabled!'),
(805, 'widget_disabled!', 'Widget Disabled!', 'Widget para discapacitados!', 'القطعة المعاقين!', 'Widget Disabled!', 'উইজেট অক্ষম করা হয়েছে!'),
(806, 'google_map_API', 'Google Map API', 'Google Map API', 'خريطة جوجل API', 'Google Map API', 'গুগল ম্যাপ এপিআই'),
(807, 'manage_advertisement', 'Manage Advertisement', 'Manejo de Publicidad', 'إدارة إعلانات', 'Gérer Publicité', 'বিজ্ঞাপন পরিচালনা'),
(808, 'Most Popular', 'Most Popular', 'Más popular', 'الاكثر شهره', 'Le plus populaire', 'সবচেয়ে জনপ্রিয়'),
(809, 'email_us', 'Email Us', 'Envíanos un correo electrónico', 'راسلنا عبر الايميل', 'Envoyez-nous un email', 'আমাদেরকে ইমেইল করুন'),
(810, 'view_details', 'View Details', 'Ver detalles', 'عرض التفاصيل', 'Voir les détails', 'বিস্তারিত দেখুন'),
(811, 'manage_user_package', 'Manage User Package', 'Manejo de paquete de usuarios', 'إدارة المستخدم حزمة', 'Gérer le paquet d''utilisateur', 'পরিচালনা ব্যবহারকারী প্যাকেজ'),
(812, 'add_user_package', 'Add User Package', 'Añadir paquete de usuarios', 'إضافة مستخدم حزمة', 'Ajouter un package d''utilisateur', 'যোগ ইউজার প্যাকেজ'),
(813, 'create_user_package', 'Create User Package', 'Crear paquete de usuarios', 'إنشاء مستخدم حزمة', 'Créer un package d''utilisateur', 'ব্যবহারকারী প্যাকেজ তৈরি করুন'),
(814, 'edit_user_package', 'Edit User Package', 'Editar paquete de usuarios', 'تحرير حزمة العضو', 'Modifier Ensemble Utilisateur', 'ব্যবহারকারী প্যাকেজ সম্পাদনা'),
(815, 'manage_product_package', 'Manage Product Package', 'Manejo del paquete del producto', 'إدارة حزمة المنتج', 'Gérer Package produit', 'পরিচালনা পণ্যের প্যাকেজ'),
(816, 'add_product_package', 'Add Product Package', 'Agregar paquete del producto', 'إضافة حزمة المنتج', 'Ajouter un package produit', 'যোগ পণ্যের প্যাকেজ'),
(817, 'create_product_package', 'Create Product Package', 'Crear paquete del producto', 'إنشاء حزمة المنتج', 'Créer un package de produit', 'পণ্যের প্যাকেজ তৈরি করুন'),
(818, 'edit_product_package', 'Edit Product Package', 'Editar paquete del producto', 'تحرير حزمة المنتج', 'Modifier Package produit', 'পণ্যের প্যাকেজ সম্পাদনা'),
(819, 'add_user', 'Add User', NULL, NULL, NULL, NULL),
(820, 'create_user', 'Create User', NULL, NULL, NULL, NULL)(-;-)
INSERT INTO `language` (`word_id`, `word`, `english`, `Spanish`, `Arabic`, `French`, `bangla`) VALUES
(821, 'back_to_user_list', 'Back To User List', NULL, NULL, NULL, NULL),
(822, 'most_wished_ads_report', 'Most Wished Ads Report', NULL, NULL, NULL, NULL),
(823, 'most_favoured_ads_report', 'Most Favoured Ads Report', NULL, NULL, NULL, NULL),
(824, 'favoured_ads', 'Favoured Ads', NULL, NULL, NULL, NULL),
(825, 'uploaded_ads', 'Uploaded Ads', NULL, NULL, NULL, NULL),
(826, 'reviews', 'Reviews', NULL, NULL, NULL, NULL),
(827, 'Recently Viewed', 'Recently Viewed', NULL, NULL, NULL, NULL),
(828, 'fixed_page', 'Fixed Page', NULL, NULL, NULL, NULL),
(829, 'ActiveITZone', 'ActiveITZone', NULL, NULL, NULL, NULL)(-;-)

--
-- Indexes for dumped tables
--

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`word_id`)(-;-)

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=830(-;-)


-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE IF NOT EXISTS `logo` (
  `logo_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  PRIMARY KEY (`logo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 (-;-)

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
(26, '')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `membership_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `timespan` varchar(50) DEFAULT NULL,
  `pay_interval` varchar(50) DEFAULT NULL,
  `product_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`membership_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 (-;-)

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `title`, `price`, `timespan`, `pay_interval`, `product_limit`) VALUES
(1, 'Gold', '300', '30', '', 10),
(2, 'Platinum', '3500', '30', '', 50)(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `membership_payment`
--

CREATE TABLE IF NOT EXISTS `membership_payment` (
  `membership_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `details` longtext,
  `membership` int(11) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`membership_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 (-;-)

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8(-;-)

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
(7, 'ActiveITZone', '', 'ok', 'https://codecanyon.net/user/activeitzone', NULL, NULL)(-;-)

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`)(-;-)

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8(-;-)

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8(-;-)

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(1, 'ok', 'Home', NULL, NULL, '[{"id":3,"status":null},{"id":1,"status":null},{"id":2,"status":"ok"},{"id":5,"status":"ok"},{"id":4,"status":"ok"}]', NULL, 'ok'),
(2, 'ok', 'Categories', NULL, NULL, '[{"id":4,"status":"ok"},{"id":3,"status":"ok"},{"id":9,"status":null},{"id":10,"status":null},{"id":11,"status":null}]', NULL, 'ok'),
(3, 'ok', 'featured', NULL, NULL, '[{"id":4,"status":"ok"},{"id":3,"status":"ok"},{"id":2,"status":"ok"},{"id":1,"status":"ok"},{"id":9,"status":null},{"id":10,"status":null},{"id":11,"status":null}]', NULL, 'ok'),
(4, 'ok', 'latest', NULL, NULL, '[{"id":11,"status":null},{"id":4,"status":"ok"},{"id":3,"status":"ok"},{"id":2,"status":"ok"},{"id":1,"status":"ok"},{"id":9,"status":null},{"id":10,"status":null},{"id":12,"status":null}]', NULL, 'ok'),
(5, 'ok', 'Contact', NULL, NULL, '[{"id":4,"status":"ok"},{"id":3,"status":"ok"},{"id":2,"status":"ok"},{"id":1,"status":"ok"},{"id":9,"status":null},{"id":10,"status":null},{"id":11,"status":null}]', NULL, 'ok'),
(12, 'ok', 'product_view', '', NULL, '[{"id":4,"status":null},{"id":3,"status":null},{"id":2,"status":null},{"id":1,"status":null},{"id":5,"status":null}]', NULL, 'ok')(-;-)

--
-- Indexes for dumped tables
--

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`)(-;-)

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13(-;-)

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `payments_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `package` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `method` varchar(200) DEFAULT NULL,
  `cause` varchar(200) DEFAULT NULL,
  `timestamp` varchar(200) DEFAULT NULL,
  `details` varchar(5000) DEFAULT NULL,
  `info` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`payments_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 (-;-)

--
-- Dumping data for table `payments`
--

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 (-;-)

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
(70, 'slides', 'slides', 'parent', NULL),
(71, 'Payments', 'payments', 'parent', NULL),
(72, 'Email Tracing', 'email_tracing', 'parent', NULL),
(73, 'Blog Category', 'blog_category', 'parent', NULL),
(74, 'User Package', 'user_type', 'parent', NULL),
(75, 'Product Package', 'product_type', 'parent', NULL),
(76, 'Widget', 'widget', 'parent', NULL),
(77, 'Menu', 'menu', 'parent', NULL),
(78, 'Ticket', 'ticket', 'parent', NULL)(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `description` longtext,
  `tag` longtext,
  `address` longtext,
  `brand` varchar(30) DEFAULT NULL,
  `model` longtext,
  `additional` longtext,
  `images` varchar(6000) DEFAULT '[]',
  `email` longtext,
  `phone` longtext,
  `condition` longtext,
  `category_id` varchar(100) DEFAULT NULL,
  `sub_category_id` varchar(100) DEFAULT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  `product_trace_key` varchar(200) DEFAULT NULL,
  `price` int(200) DEFAULT NULL,
  `langlat` varchar(200) NOT NULL DEFAULT '(0,0)',
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  `ad_type` varchar(50) DEFAULT NULL,
  `premium_type` varchar(50) DEFAULT NULL,
  `last_viewed` int(25) DEFAULT NULL,
  `date` longtext,
  `featured` longtext,
  `admin_featured` varchar(10) DEFAULT NULL,
  `f_till` varchar(200) DEFAULT NULL,
  `status` longtext,
  `s_till` varchar(200) DEFAULT NULL,
  `product_package_detail` varchar(5000) NOT NULL DEFAULT '[]',
  `shown` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 (-;-)

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(1, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', '401 W 14th St, New York, NY 10014, United States', NULL, 'SE', '[{"title":"Power and Battery","details":"Built-in rechargeable lithium\\u2011ion battery"},{"title":"Headphones","details":"Apple EarPods with Remote and Mic"},{"title":"Sensors","details":"Three-axis gyro"}]', '["Untitled-2-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'b1d5124d88feedaa6e91b7f7216fca', 400, '(40.7413536, -74.00553560000003)', 31, 'free', '', 1468340428, '1459159816', 'ok', NULL, '1531930056', 'approved', '1531930056', '{"package":"2","activated":1466621814}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(4, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', '  Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[{"title":"Power and Battery","details":"Built-in rechargeable lithium\\u2011ion battery"},{"title":"Headphones","details":"Apple EarPods with Remote and Mic"},{"title":"Sensors","details":"Three-axis gyro"}]', '["Untitled-1-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'b6dfad7d9b0ce84f9f1ce832efaab4', 400, '(0,0)', 2, 'free', '', 1459549047, '1459159897', 'ok', NULL, '1531930056', 'approved', '1531930056', '{"package":"3","activated":1466622314}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(7, 'Rolls Royce', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'rolls royece,car', ' 5300 Lemmon Ave, Dallas, TX 75209, United States', NULL, 'Rolls Royce', '[]', '["Untitled-13.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '2', '6', '1', 'b1d5124d88feedaa6e91b7f7216fca', 2000, '(32.8264219, -96.82174880000002)', 15, 'free', '', 1468340969, '1459159816', 'ok', 'ok', '1531930056', 'approved', '1531930056', '{"package":"3","activated":1466622435}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(10, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', '  Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[{"title":"Power and Battery","details":"Built-in rechargeable lithium\\u2011ion battery"},{"title":"Headphones","details":"Apple EarPods with Remote and Mic"},{"title":"Sensors","details":"Three-axis gyro"}]', '["Untitled-1-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'b1d5124d88feedaa6e91b7f7216fca', 400, '(0,0)', 0, 'free', '', NULL, '1459159816', 'no', NULL, '1531930056', 'pending', '1531930056', '{"package":null,"activated":1459159816}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(11, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', '  Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[{"title":"Power and Battery","details":"Built-in rechargeable lithium\\u2011ion battery"},{"title":"Headphones","details":"Apple EarPods with Remote and Mic"},{"title":"Sensors","details":"Three-axis gyro"}]', '["Untitled-2-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'b1d5124d88feedaa6e91b7f7216fca', 400, '(0,0)', 0, 'free', '', NULL, '1459159816', 'no', NULL, '1531930056', 'pending', '1531930056', '{"package":null,"activated":1459159816}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(13, 'HMV - Hummer', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', 'Cerritos HUMMER, 10901 183rd St. Cerritos, CA 90703 , (562) 865-3880', NULL, 'H-360', '[]', '["Untitled-12.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '2', '6', '1', 'b1d5124d88feedaa6e91b7f7216fca', 1500, '(33.8583483, -118.06478709999999)', 7, 'free', '', 1465329634, '1459159816', 'ok', 'ok', '1531930056', 'pending', '1531930056', '{"package":null,"activated":1459159816}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(14, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone Apple', '   Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[{"title":"Power and Battery","details":"Built-in rechargeable lithium\\u2011ion battery"},{"title":"Headphones","details":"Apple EarPods with Remote and Mic"},{"title":"Sensors","details":"Three-axis gyro"}]', '["Untitled-2-1.jpg","Untitled-1-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'b1d5124d88feedaa6e91b7f7216fca', 400, '(0,0)', 1, 'free', '', 1459163311, '1459159816', 'no', NULL, '1531930056', 'pending', '1531930056', '{"package":null,"activated":1459159816}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(15, 'HMV - Hummer', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'auto,four wheels, hummer', '8707 Schumacher Ln, Houston, TX 77063, United States', NULL, 'H-360', '[]', '["Untitled-11.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '2', '6', '1', 'b1d5124d88feedaa6e91b7f7216fca', 2000, '(29.7278101, -95.51720769999997)', 0, 'free', '', NULL, '1459159816', '0', '0', '1531930056', 'pending', '1531930056', '{"package":null,"activated":1459159816}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(16, 'Kawasaki Ninja', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'two wheels,ninja,kawasaki,', ' 101 Thermos Rd, Toronoto,, ON M1L 4W8, Canada', NULL, 'Ninja-1000', '[]', '["Untitled-10.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '2', '5', '1', 'b1d5124d88feedaa6e91b7f7216fca', 1400, '(43.73148219999999, -79.2821439)', 7, 'free', '', 1463357875, '1459159816', 'ok', 'ok', '1531930056', 'pending', '1531930056', '{"package":null,"activated":1459159816}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(21, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone,iPhone SE,apple', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[]', '["Untitled-1-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', '826f17204eaf79f7cc4183985969e6', 350, '(0,0)', 1, 'free', '', 1459255966, '1459255068', 'no', NULL, '1531930056', 'pending', '1531930056', '{"package":"1","activated":1459255068}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(22, 'iPhone ', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone,apple', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'apple', '[]', '["Untitled-4.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'aa91783e62db5e71285e2243edac33', 400, '(0,0)', 1, 'free', '', 1459255950, '1459255339', 'ok', 'ok', '1531930056', 'pending', '1531930056', '{"package":"1","activated":1459255339}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(25, 'iPhone', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone,iPhone7,apple', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, '7', '[]', '["Untitled-6.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', '19096a280cf6e2d7c9a6392e08b81a', 400, '(0,0)', 1, 'free', '', 1459257190, '1459256657', '0', '0', '1531930056', 'pending', '1531930056', '{"package":"1","activated":1459256657}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(26, 'iPhone SE', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;', 'iPhone,iPhoneSE,apple', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'SE', '[]', '["Untitled-7.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', 'e093e92efd72f1d0cb97d44484370b', 400, '(0,0)', 5, 'free', '', 1463147496, '1459257115', 'ok', 'ok', '1531930056', 'pending', '1531930056', '{"package":"1","activated":1459257115}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(27, 'Rolls Royce', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'rolls royece,car', '  Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'Rolls Royce', '[]', '["Untitled-14.jpg"]', 'user@classified.com', '342-69-6025734', 'used', '2', '6', '1', 'a1cd6f05b37e9ffa1235e4654a81bb', 2200, '(0,0)', 11, 'free', '', 1465328502, '1459335471', 'ok', 'ok', '1531930056', 'pending', '1531930056', '{"package":"1","activated":1459335471}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(28, 'Gown', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'gown,ladies wear', 'Uttara, Dhaka', NULL, 'Sleeveless ', '[]', '["Untitled-15.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '13', '12', '1', 'c905b58887ae8a276e1acfe0d350d5', 80, '(23.8758547, 90.37954379999996)', 0, 'free', '', NULL, '1459336295', 'no', NULL, '1531930056', 'pending', '1531930056', '{"package":"1","activated":1459336295}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(29, 'Gown', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'gown,ladies wear', 'Uttara, Dhaka', NULL, 'Sleeveless ', '[]', '["Untitled-16.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '13', '12', '1', '690748895f14f87f3f03c7e4979d6b', 95, '(23.8758547, 90.37954379999996)', 0, 'free', '', NULL, '1459336967', 'no', NULL, '1531930056', 'pending', '1531930056', '{"package":"1","activated":1459336967}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(30, 'Party Dress', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'party wear,ladies wear', ' Uttara, Dhaka', NULL, 'Red', '[]', '["Untitled-17.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '13', '12', '1', 'bf3bef01b4c4f08d5a60d1de6d9599', 100, '(23.8758547, 90.37954379999996)', 0, 'free', '', NULL, '1459337681', 'no', NULL, '1531930056', 'pending', '1531930056', '{"package":"1","activated":1459337681}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(31, 'Laptop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'laptop,apple', '  Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'Apple', '[]', '["Untitled-18.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '2', '1', 'a8ea158e9d71a970ef8c10ad6df223', 250, '(0,0)', 0, 'free', '', NULL, '1459338761', '0', '0', '1531930056', 'pending', '1531930056', '{"package":"1","activated":1459338761}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(32, 'Laptop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'laptop,hp', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'HP', '[]', '["Untitled-19.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '2', '1', '065e3f097fd5206b72a04059fde533', 250, '(0,0)', 0, 'free', '', NULL, '1459338904', 'ok', 'ok', '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459338904}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(33, 'Laptop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'laptop.dell', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'DELL', '[]', '["Untitled-20.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '2', '1', 'e32f41e7c13b018758e62222133d96', 250, '(0,0)', 0, 'free', '', NULL, '1459339100', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459339100}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(34, 'Desktop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'desktop,dell', 'Baridhara', NULL, 'DELL', '[]', '["Dell-Optiplex-3020-Desktop-PC-SDL246928932-1-df782.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '3', '1', 'a4bf73f5595a600583afa2c22098cd', 300, '(23.7998984, 90.42076599999996)', 1, 'free', '', 1459453033, '1459339535', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459339535}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(35, 'Desktop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'desktop,hp', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'HP', '[]', '["hp_desktop_pc_bundle.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '3', '1', '69adccc8bcfde8aff1816a0d6863cf', 300, '(0,0)', 1, 'free', '', 1459453029, '1459339602', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459339602}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(36, 'Hummer', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'auto,car,hummer', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'Hummer', '[]', '["Untitled-23.jpg"]', 'user@classified.com', '342-69-6025734', 'used', '2', '6', '1', '724195b691d3377fa225726000a758', 1800, '(0,0)', 7, 'free', '', 1465328140, '1459340379', 'ok', 'ok', '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459340379}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(37, 'HTC', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'phone,android,htc', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'HTC', '[]', '["Untitled-24.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', '7b3635478d458cbf841e5f092bef5e', 200, '(0,0)', 0, 'free', '', NULL, '1459341142', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459341142}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(38, 'Huawei', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'android,huawei,huawei mate', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'Mate 8', '[]', '["Untitled-25.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '1', '1', '6c74cae90f8d53b66e50bbe7282c29', 350, '(0,0)', 3, 'free', '', 1463147438, '1459341803', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459341803}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(39, 'Laptop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'laptop,acer', ' Possimus aliquip ducimus recusandae Odit est aliquamIn excepturi et nulla dolore libero fuga Sed', NULL, 'Acer', '[]', '["Untitled-26.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '2', '1', '7aeabd1ffff51f4662c50f925a8c84', 650, '(0,0)', 0, 'free', '', NULL, '1459418375', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459418375}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(40, 'Laptop', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'laptop,acer', 'Dhanmondi 27, Dhaka', NULL, 'Acer', '[]', '["Untitled-27.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '2', '1', '8cf3058b85c1a8b31db1a955787a0e', 500, '(23.753864, 90.37127090000001)', 0, 'free', '', NULL, '1459418533', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459418533}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(41, 'Leather Jacket ', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'leather jacket,jacket,black jacket', ' Mirpur 10, Dhaka', NULL, 'Black', '[]', '["Untitled-30.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '10', '1', '3a2db312576af9d384ee87d91598b7', 180, '(23.83747, 90.37528980000002)', 0, 'free', '', NULL, '1459603063', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459603063}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(42, 'Leather Jacket', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'leather jacket,ladies jacket', '  Mirpur 1, Dhaka', NULL, 'Black', '[]', '["Untitled-31.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '13', '12', '1', 'eb8c2180a8cb04f7591fcb3160c78f', 180, '(23.7956037, 90.35365479999996)', 0, 'free', '', NULL, '1459603334', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459603334}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(44, 'Glamor Shoes', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'shoes,blue shoes', ' Dhanmondi 8, Dhaka', NULL, 'Blue', '[]', '["Untitled-32.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '11', '1', '8ecb1ebf22bf7b0baf5a29cce7a4ca', 150, '(23.747445692530107, 90.37346126977536)', 0, 'free', '', NULL, '1459603602', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459603602}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(45, 'Shoes', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'shoes,leather shoes', ' Dhanmondi 27, Dhaka', NULL, 'Leather', '[]', '["Untitled-33.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '11', '1', '86a88198efe22ddecebc1b05671d99', 200, '(23.753864, 90.37127090000001)', 0, 'free', '', NULL, '1459603758', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459603758}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(46, 'Watch', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'watch,male watch', ' Mirpur 10, Dhaka', NULL, 'Flux', '[]', '["Untitled-34.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '4', '1', 'e70d4195ac52b0dbfe167e0442fbb7', 250, '(23.83747, 90.37528980000002)', 3, 'free', '', 1465328535, '1459603942', 'ok', 'ok', '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459603942}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(47, 'Printed Sun glass ', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'sunglass,printed sunglass', ' Uttara, Dhaka', NULL, 'Pink', '[]', '["Untitled-35.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '13', '15', '1', 'a0455a8b97d027f8eb84745609e005', 120, '(23.8758547, 90.37954379999996)', 11, 'free', '', 1462891837, '1459604220', 'ok', 'ok', '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459604220}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(48, 'T-shirt', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 't-shirt,polo shirt', ' Baridhara, Dhaka', NULL, 'Polo', '[]', '["Untitled-36.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '10', '1', 'c6e036b060c484de360cabdf500652', 120, '(23.7998984, 90.42076599999996)', 0, 'free', '', NULL, '1459604376', 'ok', 'ok', '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459604376}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(49, 'Watch', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'watch,kids watch', 'Mirpur 12, Dhaka', NULL, 'Flux', '[]', '["Untitled-37.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '4', '1', 'd0b5af78d733e7fb0c80d737787bc6', 180, '(23.837801706634917, 90.36300479042961)', 0, 'free', '', NULL, '1459604620', 'ok', 'ok', '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459604620}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(50, 'Watch', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'watch,kids watch', 'Mirpur 12, Dhaka', NULL, 'Flux', '[]', '["Untitled-318-1.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '1', '4', '1', '311c8925fda53b83947b506ee15039', 180, '(23.837723197861997, 90.36240397561028)', 0, 'free', '', NULL, '1459605173', 'ok', 'ok', '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459605173}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(51, 'Sports Wear', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'sports jacket', 'Dhanmondi 8, Dhaka', NULL, 'White', '[]', '["Untitled-28.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '10', '1', '0067fb3b236d53e3693c2bef6222fe', 180, '(23.74815276080945, 90.37397625390622)', 8, 'free', '', 1466580210, '1459768676', 'no', NULL, '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459768676}', 'ok')(-;-)
INSERT INTO `product` (`product_id`, `title`, `description`, `tag`, `address`, `brand`, `model`, `additional`, `images`, `email`, `phone`, `condition`, `category_id`, `sub_category_id`, `user_id`, `product_trace_key`, `price`, `langlat`, `number_of_view`, `ad_type`, `premium_type`, `last_viewed`, `date`, `featured`, `admin_featured`, `f_till`, `status`, `s_till`, `product_package_detail`, `shown`) VALUES
(52, 'Sports Shoe', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'sports shoe,asics shoe', ' Dhanmondi 27, Dhaka', NULL, 'Asics', '[]', '["Untitled-29.jpg"]', 'user@classified.com', '342-69-6025734', 'new', '12', '11', '1', '811c249fb1e2653c3d57a41229466b', 190, '(23.753864, 90.37127090000001)', 0, 'free', '', NULL, '1459769725', 'ok', 'ok', '1531930056', 'approved', '1531930056', '{"package":"1","activated":1459769725}', 'ok')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE IF NOT EXISTS `product_type` (
  `product_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `price` longtext,
  `status` longtext,
  `details` longtext,
  `defaults` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`product_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 (-;-)

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`product_type_id`, `name`, `price`, `status`, `details`, `defaults`) VALUES
(1, 'Default', '0', 'ok', '{"s_for":"7-day","f_for":"0-day"}', 'ok'),
(2, 'Premium', '10', 'ok', '{"s_for":"100-day","f_for":"10-day"}', NULL),
(3, 'Super', '200', 'ok', '{"s_for":"1-year","f_for":"100-day"}', NULL),
(4, 'example', '250', 'ok', '{"s_for":"7-day","f_for":"5-day"}', NULL)(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 (-;-)

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'master', '', 'Master Admin. Adds Admin. Provides account roles.'),
(5, 'Product Manager', '["13","17","21","37","41","45","49"]', 'Manages Products'),
(4, 'Accountant', '["9","13","17","21"]', 'Accountancy and Support'),
(6, 'Manager', '["5","9","13","29","33","37","41","57","63"]', 'Manager of Active Super shop')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 (-;-)

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
(14, 'contact_email', 'info@marchclassified.com')(-;-)
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(15, 'terms', '')(-;-)
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(17, 'footer', '2014 © Active Classified CMS. All rights reserved.'),
(18, 'header', 'Welcome to Active Classified CMS'),
(19, 'google_ad_client_id', 'pub-9772389634309522'),
(20, 'google_box_ad_slot', '6424510008'),
(21, 'google_wide_ad_slot', '2971516007'),
(22, 'meta_tags', 'classified,activeit')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `elements` longtext,
  `status` longtext,
  `title` longtext,
  `style` varchar(20) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 (-;-)

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `elements`, `status`, `title`, `style`, `serial`) VALUES
(2, '{"images":[],"texts":[{"name":"text_1","text":"WELCOME","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"},{"name":"text_2","text":"YOUR SHOP NAME","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"},{"name":"text_3","text":"SHOP TITLE","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"}]}', 'ok', 'Welcome slider', '1', 0)(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `slider_style`
--

CREATE TABLE IF NOT EXISTS `slider_style` (
  `slider_style_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`slider_style_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 (-;-)

--
-- Dumping data for table `slider_style`
--

INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(1, 'WELCOME TYPE 1', '{\n   "full_slide_style":"data-ls=\\"slidedelay:6500;transition2d:all;transition3d:15;\\"",\n   "background":"bg",\n   "images":[\n\n   ],\n   "texts":[\n      {\n         "element":"h1",\n         "show_name":"WELCOME",\n         "name":"text_1",\n         "style":"top:30%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:50px;",\n         "data_ls":"offsetxin:0; durationin:2500; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      },\n      {\n         "element":"h1",\n         "show_name":"YOUR SHOP NAME",\n         "name":"text_2",\n         "style":"top:50%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:100px;  white-space: nowrap;",\n         "data_ls":"offsetxin:0; durationin:2500; delayin:500; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      },\n      {\n         "element":"h1",\n         "show_name":"SHOP TITLE",\n         "name":"text_3",\n         "style":"top:70%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:40px; white-space: nowrap;",\n         "data_ls":"offsetxin:0; durationin:2500; delayin:1200; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      }\n   ]\n}')(-;-)
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(2, 'WELCOME TYPE 2', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:4500;transition2d:24,25,27,28,34,35,37,38,110,113;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"ase",\r\n         "style":"top:20px; left:50%;width:220px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:4600; easingin:easeOutQuad; fadein:false; rotatein:-10; offsetxout:0; durationout:1500;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"WELCOME TO",\r\n         "name":"text_1",\r\n         "style":"top:260px; left:50%; text-align: center;  font-weight: 300; width:300px; height:60px; font-size:30px; line-height:60px; border-radius:5px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:top; durationout:750; durationin:1000; fadeout:false;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"YOUR SHOP NAME",\r\n         "name":"text_2",\r\n         "style":"top:340px; left:50%; text-align: center; font-weight: 300; width:500px; height:100px; font-size:40px; line-height:100px; border-radius:5px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:bottom; durationin:1000; durationout:750; fadeout:false;",\r\n         "color":"#ffffff",\r\n         "background":"#8D00B0"\r\n      }\r\n   ]\r\n}')(-;-)
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(3, 'SLIDER TYPE 1', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7000;transition2d:76,77,78,79;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Product Image 1",\r\n         "name":"circle_1",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:1500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; "\r\n      },\r\n      {\r\n         "show_name":"Product Image 2",\r\n         "name":"circle_2",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:3000; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; "\r\n      },\r\n      {\r\n         "show_name":"Product Image 3",\r\n         "name":"circle_3",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:4500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; easingout:easeInQuart; fadeout:false; "\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:105px; left:30px; text-align: center; font-weight: 300; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:155px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:205px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:1000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:left; delayin:1000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:255px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX;  border-radius:100px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:1500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:1500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:305px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:2000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:2000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 1",\r\n         "name":"product_title_1",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:1750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 2",\r\n         "name":"product_title_2",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:3250; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 3",\r\n         "name":"product_title_3",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:4750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}')(-;-)
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(4, 'SLIDER TYPE 2', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:4500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:80px; white-space:nowrap; width:220px;",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:180px; white-space:nowrap;width:220px; ",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:100px;left:280px; white-space:nowrap; width:220px;",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_3",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:700px; font-weight:300; font-size:40px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURe 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:107px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:157px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:207px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:257px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:307px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_6",\r\n         "style":"top:357px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      }\r\n   ]\r\n}')(-;-)
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(5, 'SLIDER TYPE 3', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:580px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:680px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:100px;left:780px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_3",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:80px; font-weight:300; font-size:40px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:107px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:157px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:207px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:257px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:307px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:116px; font-weight:300; font-size:30px; white-space:nowrap;",\r\n         "data_ls":"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_6",\r\n         "style":"top:357px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}')(-;-)
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(6, 'SLIDER TYPE 4', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "name":"long_1",\r\n         "style":"top:60px;left:578px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "name":"semi_long_1",\r\n         "style":"top:170px;left:800px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "name":"square_1",\r\n         "style":"top:265px;left:1020px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:50px; font-size:50px; font-weight:300; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:500; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotatexout:90; transformoriginout:50; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:1000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:1500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:2000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:2500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:3000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 7",\r\n         "name":"product_feature_7",\r\n         "style":"top:400px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:3500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}')(-;-)
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(7, 'SLIDER TYPE 5', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "name":"long_1",\r\n         "style":"top:50%; left:50%;width:200px; white-space:nowrap;",\r\n         "data_ls" : "",\r\n         "show_name":"IMAGE"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h6",\r\n         "show_name":"PRICE",\r\n         "name":"price",\r\n         "style":"top:55%; left:39%; durationin:500; delayin:600; fadein:false; rotatein:30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1; scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#B816B2; border-radius:5px; white-space:nowrap;",\r\n         "data_ls" : "",\r\n         "color":"#ffffff",\r\n         "background":"#b816b2"\r\n      },\r\n      {\r\n         "element":"h6",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:45%; left:36%; durationin:500; delayin:500; fadein:false; rotatein:-30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1;scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#760093;border-radius:5px; white-space:nowrap;",\r\n         "data_ls" : "",\r\n         "color":"#ffffff",\r\n         "background":"#760093"\r\n      }\r\n   ]\r\n}')(-;-)
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(8, 'SLIDER TYPE 6', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:100px; width:250px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:1500; rotateyin:90; transformoriginin:left; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:left; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:400px; width:250px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:1500; rotateyin:-90; transformoriginin:right; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:right; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"font-family:Roboto;top:25px; left:192px; font-weight:100; text-align:center; width:340px; font-size:40px; border-radius:5px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:2000; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotateout:-90; transformoriginout:left; ",\r\n         "color":"#34009d",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":" DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:50px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:2300; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:90px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:2700; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:150px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:3000; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:190px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:3400; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:250px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:3700; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:290px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:4100; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 7",\r\n         "name":"dummy_text_7",\r\n         "style":"top:360px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:4400; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 8",\r\n         "name":"dummy_text_8",\r\n         "style":"top:400px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:4800; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}')(-;-)
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(9, 'SLIDER TYPE 7', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:50px; left:50%;width:278px; white-space:nowrap;",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"IMAGE"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; ",\r\n         "color":"#fff",\r\n         "background":"#11008b"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; ",\r\n         "color":"#d9482b",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}')(-;-)
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(10, 'SLIDER TYPE 8', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7000;transition2d:76,77,78,79;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:120px; left:42%;width:180px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:120px; left:58%;width:180px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:50px; left:50%;width:200px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"long_1",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; ",\r\n         "color":"#fff",\r\n         "background":"#11008b"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 7",\r\n         "name":"dummy_text_7",\r\n         "style":"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}')(-;-)
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(11, 'WELCOME TYPE 3', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:8000;transition2d:4;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"ase",\r\n         "style":"top:45%; left:45%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:right 50% 0; offsetxout:0; durationout:1500; showuntil:1000; rotateyout:-90; transformoriginout:right 50% 0;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"Introducing",\r\n         "name":"text_1",\r\n         "style":"top:40%; left:50%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:50; durationin:750; easingin:easeOutBack; skewxin:-50; offsetxout:-50; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;",\r\n         "color":"#C505BD",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"Your Shop Name",\r\n         "name":"text_2",\r\n         "style":"top:50%; left:50%; font-weight: 300; font-size:50px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:-100; durationin:750; delayin:250; easingin:easeOutBack; skewxin:-50; offsetxout:100; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;",\r\n         "color":"#8D00AF",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"your Shop Slogan",\r\n         "name":"text_3",\r\n         "style":"top:47%; left:690px; font-weight: 300; font-size:35px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:left 50% 0; offsetxout:0; durationout:1500; showuntil:1500; rotateyout:-90; transformoriginout:left 50% 0;",\r\n         "color":"#8D00AF",\r\n         "background":"rgba(1,1,1,0)"\r\n      }\r\n   ]\r\n}')(-;-)
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(12, 'SLIDER TYPE 9', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:9500;transition2d:5;timeshift:-3000;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"semi_long_1",\r\n         "style":"top:120px; left:300px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:1000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      },\r\n      {\r\n         "show_name":"Image 2",\r\n         "name":"semi_long_2",\r\n         "style":"top:120px; left:200px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:2000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      },\r\n      {\r\n         "show_name":"Image 3",\r\n         "name":"semi_long_3",\r\n         "style":"top:120px; left:100px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:3000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"text_1",\r\n         "style":"top:60px; left:800px; font-weight: 300; font-size:50px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:50; durationin:3000; rotateyin:60; transformoriginin:right 50% 0; offsetxout:-50; durationout:3000; rotateyout:-60; transformoriginout:left 50% 0;",\r\n         "color":"#730091",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"h2",\r\n         "show_name":"BIG SALE",\r\n         "name":"text_2",\r\n         "style":"top:120px; left:801px; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:-50; durationin:3000; delayin:500; rotateyin:-60; transformoriginin:left 50% 0; offsetxout:50; durationout:3000; rotateyout:60; transformoriginout:right 50% 0;",\r\n         "color":"#FA6BF3",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"h3",\r\n         "show_name":"$99",\r\n         "name":"text_3",\r\n         "style":"top:200px; left:850px; font-weight: 300; font-size:120px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:4000; delayin:2000; rotateyin:450; transformoriginin:left 50% 0; offsetxout:0; durationout:500; easingout:easeInBack; rotateyout:90; transformoriginout:left 50% 0;",\r\n         "color":"#730091",\r\n         "background":"rgba(1,1,1,0)"\r\n      }\r\n   ]\r\n}')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `slides_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE IF NOT EXISTS `social_links` (
  `social_links_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext,
  `value` longtext,
  PRIMARY KEY (`social_links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 (-;-)

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`) VALUES
(1, 'facebook', 'https://www.facebook.com/'),
(2, 'google-plus', 'http://google.com/'),
(3, 'twitter', 'http://twitter.com/'),
(4, 'skype', 'active-classified'),
(5, 'pinterest', 'http://pinterest.com/'),
(6, 'youtube', 'http://youtube.com/')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`subscribe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 (-;-)

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE IF NOT EXISTS `sub_category` (
  `sub_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `parent_category_id` longtext NOT NULL,
  PRIMARY KEY (`sub_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 (-;-)

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
(18, 'Accessories ', '14')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 (-;-)

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `time`, `from_where`, `to_where`, `subject`, `view_status`) VALUES
(1, '1459936402', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 'ghhgyu', 'ok'),
(2, '1466625523', '{"type":"user","id":"1"}', '{"type":"admin","id":""}', 'message subject', 'ok')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `ticket_message`
--

CREATE TABLE IF NOT EXISTS `ticket_message` (
  `ticket_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `ticket_id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(100) DEFAULT NULL,
  `message` longtext,
  PRIMARY KEY (`ticket_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 (-;-)

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
(7, '1467020556', '{"type":"admin","id":""}', '{"type":"user","id":"1"}', 2, 'message subject', '{"user_show":"no","admin_show":"ok"}', 'The Form Validation Library has a prep_for_form() method, which is/can also be used as a rule in set_rules() to automatically perform HTML encoding on input data.\r\n\r\nAutomatically encoding input (instead of output) data is a bad practice in the first place, and CodeIgniter and PHP itself offer other alternatives to this method anyway. For example, Form Helper functions will automatically perform HTML escaping when necessary.\r\n\r\nTherefore, the prep_for_form method/rule is pretty much useless and is now deprecated and scheduled for removal in 3.1+.')(-;-)

-- --------------------------------------------------------
--
-- Table structure for table `ui_settings`
--

CREATE TABLE IF NOT EXISTS `ui_settings` (
  `ui_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8(-;-)

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
(9, 'home_bottom_logo', '17'),
(10, 'home_category', 'null'),
(11, 'fav_ext', 'png'),
(12, 'side_bar_pos_category', 'right'),
(13, 'home_brand', 'null'),
(14, 'footer_color', 'blue'),
(15, 'header_color', 'blue'),
(16, 'menu_serial', '[{"id":1},{"id":2},{"id":3},{"id":4},{"id":6},{"id":5},{"id":7}]'),
(17, 'page_serial', '[]'),
(18, 'font', 'Roboto'),
(19, 'parallax_title', 'Introduce your cyber business with Activeclassified CMS'),
(20, 'blog_count', '4'),
(22, 'home_featured_count', '20'),
(23, 'list_product_count', '12')(-;-)

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ui_settings`
--
ALTER TABLE `ui_settings`
  ADD PRIMARY KEY (`ui_settings_id`)(-;-)

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ui_settings`
--
ALTER TABLE `ui_settings`
  MODIFY `ui_settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24(-;-)


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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8(-;-)

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `user_type`, `user_type_till`, `left_product_type`) VALUES
(1, 'lemasixex', 'gjnfg xfdgdz', 'user@classified.com', '342-69-6025734', 'Possimus aliquip ducimus recusandae Odit est aliquam', 'In excepturi et nulla dolore libero fuga Sed', NULL, NULL, '(0,0)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1459159547', NULL, NULL, NULL, '["36","32","40","27","47"]', '1466613026', '2', '1483904928', '[{"type":"1","number":100},{"type":"2","number":10},{"type":"3","number":100},{"type":"4","number":50}]'),
(2, 'demo', 'user', 'user2@classified.com', '234 556 578', 'qw2w2ww', 'ererrrtty', 'new york', 'root', '(0,0)', 'vertrigo', NULL, NULL, NULL, '1459934951', '', '', '', '[]', NULL, 'default', NULL, '[]')(-;-)

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`)(-;-)

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5(-;-)


-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `details` longtext,
  `price` longtext,
  `status` longtext,
  `logo` longtext,
  `product_type` longtext,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 (-;-)

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `name`, `details`, `price`, `status`, `logo`, `product_type`) VALUES
(1, 'Free user', '"100-year"', '0', 'ok', NULL, '[{"product_type":"1","piece":"100"},{"product_type":"2","piece":"20"},{"product_type":"3","piece":"10"}]'),
(2, 'Premium user', '"200-day"', '100', 'ok', NULL, '[{"product_type":"1","piece":"100"},{"product_type":"2","piece":"10"},{"product_type":"3","piece":"100"},{"product_type":"4","piece":"50"}]')(-;-)

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` longtext,
  `position` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `fixed` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`widget_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 (-;-)

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`widget_id`, `code`, `position`, `type`, `status`, `title`, `fixed`) VALUES
(1, NULL, NULL, NULL, 'ok', 'Category', 'ok'),
(2, NULL, NULL, NULL, 'ok', 'Advanced Search', 'ok'),
(3, NULL, NULL, NULL, 'ok', 'Recently Viewed', 'ok'),
(4, NULL, NULL, NULL, 'ok', 'Most Popular', 'ok'),
(5, '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7&appId=774023232668941";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, ''script'', ''facebook-jssdk''));</script>\r\n\r\n<div class="fb-page" data-href="https://www.facebook.com/activeclassified" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/activeclassified" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/activeclassified">Active Classified Management System</a></blockquote></div>', NULL, NULL, 'ok', 'Facebook Like Box', NULL)

