SET SQL_MODE = '';

--
-- Структура таблицы `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(7, 'Banner 1', 1),
(8, 'Banner 2', 1),
(12, 'Banner 3', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=272 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `description`, `link`, `image`, `sort_order`) VALUES
(269, 8, 1, 'banner-2', '&lt;h5&gt;FREE SHIPPING &amp; REFUND&lt;/h5&gt;\r\n&lt;h4&gt;GUARANTEE!&lt;/h4&gt; \r\n					', 'index.php?route=product/product&amp;product_id=48', 'catalog/banner-2.jpg', 1),
(270, 8, 2, 'banner-2', '						&lt;h5&gt;FREE SHIPPING &amp; REFUND&lt;/h5&gt;\r\n&lt;h4&gt;GUARANTEE!&lt;/h4&gt; \r\n					', 'index.php?route=product/product&amp;product_id=48', 'catalog/banner-2.jpg', 1),
(271, 8, 3, 'banner-3', '						&lt;h5&gt;FREE SHIPPING &amp; REFUND&lt;/h5&gt;\r\n&lt;h4&gt;GUARANTEE!&lt;/h4&gt; \r\n					', 'index.php?route=product/product&amp;product_id=48', 'catalog/banner-2.jpg', 1),
(260, 7, 1, 'banner-1', '&lt;h6&gt;new&lt;/h6&gt;\r\n&lt;h5&gt;arrivals&lt;/h5&gt;\r\n&lt;a class=&quot;link&quot; href=&quot;index.php?route=product/product&amp;product_id=33&quot;&gt;Shop now!&lt;/a&gt;\r\n					 \r\n					', '', 'catalog/banner-1.jpg', 1),
(261, 7, 2, 'banner-1', '&lt;h6&gt;new&lt;/h6&gt;\r\n&lt;h5&gt;arrivals&lt;/h5&gt;\r\n&lt;a class=&quot;link&quot; href=&quot;index.php?route=product/product&amp;product_id=33&quot;&gt;Shop now!&lt;/a&gt;', '', 'catalog/banner-1.jpg', 1),
(262, 7, 3, 'banner-1', '&lt;h6&gt;new&lt;/h6&gt;\r\n&lt;h5&gt;arrivals&lt;/h5&gt;\r\n&lt;a class=&quot;link&quot; href=&quot;index.php?route=product/product&amp;product_id=33&quot;&gt;Shop now!&lt;/a&gt;', '', 'catalog/banner-1.jpg', 1),
(266, 12, 1, 'banner-3', '&lt;h3&gt;20% OFF&lt;/h3&gt;\r\n&lt;h4&gt;Smart &lt;/h4&gt;\r\n&lt;h4&gt;Watches&lt;/h4&gt;', 'index.php?route=product/product&amp;product_id=41', 'catalog/banner-3.jpg', 1),
(267, 12, 2, 'banner-3', '&lt;h3&gt;20% OFF&lt;/h3&gt;\r\n&lt;h4&gt;Smart &lt;/h4&gt;\r\n&lt;h4&gt;Watches&lt;/h4&gt;', 'index.php?route=product/product&amp;product_id=41', 'catalog/banner-3.jpg', 1),
(268, 12, 3, 'banner-3', '&lt;h3&gt;20% OFF&lt;/h3&gt;\r\n&lt;h4&gt;Smart &lt;/h4&gt;\r\n&lt;h4&gt;Watches&lt;/h4&gt;', 'index.php?route=product/product&amp;product_id=41', 'catalog/banner-3.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(45, 'module', 'jetimpex_megamenu'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(44, 'module', 'jetimpex_layout_builder'),
(43, 'module', 'featured'),
(42, 'theme', 'jetimpex796'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(46, 'module', 'jetimpex_google_map'),
(53, 'module', 'banner'),
(58, 'module', 'jetimpex_blog_articles'),
(61, 'module', 'jetimpex_footer_links'),
(63, 'module', 'jetimpex_slideshow'),
(64, 'module', 'html'),
(65, 'module', 'special'),
(66, 'module', 'bestseller'),
(67, 'module', 'latest');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE IF NOT EXISTS `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(79, 0, 'jetimpex_cart.ocmod.zip', '2017-09-05 18:46:33'),
(78, 0, 'jetimpex_cart.ocmod.zip', '2017-09-04 14:51:05'),
(77, 0, 'JETIMPEX Social Links.ocmod.zip', '2017-09-04 12:44:52'),
(76, 0, 'JETIMPEX Social Links.ocmod.zip', '2017-09-04 11:56:17'),
(75, 0, 'jetimpex_blog_catalog.ocmod.zip', '2017-09-01 14:25:37'),
(80, 0, 'JETIMPEX Slideshow (Swiper).ocmod.zip', '2017-11-22 14:22:59'),
(81, 0, 'jetimpex_live_search.ocmod.zip', '2017-11-23 14:53:24'),
(82, 0, 'jetimpex_product.ocmod.zip', '2017-11-27 09:43:22'),
(83, 0, 'jetimpex_positions.ocmod.zip', '2017-11-30 10:20:40'),
(84, 0, 'jetimpex_blog_catalog.ocmod.zip', '2017-12-06 10:54:30'),
(85, 0, 'jetimpex_blog_catalog.ocmod.zip', '2017-12-06 11:03:13'),
(86, 0, 'jetimpex_ajax_quickview.ocmod.zip', '2017-12-08 10:53:44'),
(87, 0, 'jetimpex_lazy_load.ocmod.zip', '2017-12-08 10:53:55'),
(88, 0, 'jetimpex_positions.ocmod.zip', '2017-12-08 10:54:01'),
(89, 0, 'jetimpex_theme.ocmod.zip', '2017-12-08 10:54:05'),
(90, 0, 'jetimpex_product_hover.ocmod.zip', '2017-12-08 10:54:09'),
(91, 0, 'jetimpex_cart.ocmod.zip', '2017-12-08 10:54:48'),
(92, 0, 'jetimpex_page_direction.ocmod.zip', '2017-12-08 10:55:34'),
(93, 0, 'jetimpex_live_search.ocmod.zip', '2017-12-08 10:55:39'),
(94, 0, 'jetimpex_ajax_add_to_cart.ocmod.zip', '2017-12-08 10:55:50'),
(95, 0, 'jetimpex_ajax_quickview.ocmod.zip', '2017-12-08 10:55:52'),
(96, 0, 'jetimpex_blog_catalog.ocmod.zip', '2017-12-08 10:55:55'),
(97, 0, 'jetimpex_cart.ocmod.zip', '2017-12-08 10:55:57'),
(98, 0, 'jetimpex_description_banner.ocmod.zip', '2017-12-08 10:55:59'),
(99, 0, 'jetimpex_footer.ocmod.zip', '2017-12-08 10:56:01'),
(100, 0, 'jetimpex_gtmetrix.ocmod.zip', '2017-12-08 10:56:03'),
(101, 0, 'jetimpex_header.ocmod.zip', '2017-12-08 10:56:06'),
(102, 0, 'jetimpex_installer.ocmod.zip', '2017-12-08 10:56:08'),
(103, 0, 'jetimpex_labels.ocmod.zip', '2017-12-08 10:56:20'),
(104, 0, 'jetimpex_lazy_load.ocmod.zip', '2017-12-08 10:56:23'),
(105, 0, 'jetimpex_live_search.ocmod.zip', '2017-12-08 10:56:25'),
(106, 0, 'jetimpex_newsletter.ocmod.zip', '2017-12-08 10:56:28'),
(107, 0, 'jetimpex_page_direction.ocmod.zip', '2017-12-08 10:56:31'),
(108, 0, 'jetimpex_pages.ocmod.zip', '2017-12-08 10:56:44'),
(109, 0, 'jetimpex_path_theme.ocmod.zip', '2017-12-08 10:56:48'),
(110, 0, 'jetimpex_positions.ocmod.zip', '2017-12-08 10:56:52'),
(111, 0, 'jetimpex_product.ocmod.zip', '2017-12-08 10:56:55'),
(112, 0, 'jetimpex_product_hover.ocmod.zip', '2017-12-08 10:57:09'),
(113, 0, 'jetimpex_product_zoom.ocmod.zip', '2017-12-08 10:57:13'),
(114, 0, 'jetimpex_responsive.ocmod.zip', '2017-12-08 10:57:15'),
(115, 0, 'jetimpex_theme.ocmod.zip', '2017-12-08 10:57:18'),
(116, 0, 'jetimpex_header.ocmod.zip', '2017-12-19 14:29:13'),
(117, 0, 'jetimpex_header.ocmod.zip', '2017-12-19 14:31:12');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE IF NOT EXISTS `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1813 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1636, 77, 'catalog/view/theme/jetimpex796/template/extension/module/jetimpex_social_list.twig', '2017-09-04 12:44:53'),
(1635, 77, 'catalog/view/theme/default/template/extension/module/jetimpex_social_list.twig', '2017-09-04 12:44:53'),
(1634, 77, 'catalog/language/ru-ru/extension/module/tm_social_list.php', '2017-09-04 12:44:53'),
(1633, 77, 'catalog/language/en-gb/extension/module/jetimpex_social_list.php', '2017-09-04 12:44:53'),
(1632, 77, 'catalog/language/de-DE/extension/module/tm_social_list.php', '2017-09-04 12:44:53'),
(1631, 77, 'admin/view/template/extension/module/jetimpex_social_list.twig', '2017-09-04 12:44:53'),
(1630, 77, 'admin/language/ru-ru/extension/module/jetimpex_social_list.php', '2017-09-04 12:44:53'),
(1629, 77, 'admin/language/en-gb/extension/module/jetimpex_social_list.php', '2017-09-04 12:44:53'),
(1628, 77, 'admin/language/de-DE/extension/module/jetimpex_social_list.php', '2017-09-04 12:44:53'),
(1627, 77, 'catalog/controller/extension/module/jetimpex_social_list.php', '2017-09-04 12:44:53'),
(1626, 77, 'admin/controller/extension/module/jetimpex_social_list.php', '2017-09-04 12:44:53'),
(1625, 76, 'catalog/view/theme/jetimpex796/template/extension/module/jetimpex_social_list.twig', '2017-09-04 11:56:17'),
(1624, 76, 'catalog/view/theme/default/template/extension/module/jetimpex_social_list.twig', '2017-09-04 11:56:17'),
(1623, 76, 'catalog/language/ru-ru/extension/module/tm_social_list.php', '2017-09-04 11:56:17'),
(1622, 76, 'catalog/language/en-gb/extension/module/jetimpex_social_list.php', '2017-09-04 11:56:17'),
(1621, 76, 'catalog/language/de-DE/extension/module/tm_social_list.php', '2017-09-04 11:56:17'),
(1620, 76, 'admin/view/template/extension/module/jetimpex_social_list.twig', '2017-09-04 11:56:17'),
(1619, 76, 'admin/language/ru-ru/extension/module/jetimpex_social_list.php', '2017-09-04 11:56:17'),
(1618, 76, 'admin/language/en-gb/extension/module/jetimpex_social_list.php', '2017-09-04 11:56:17'),
(1617, 76, 'admin/language/de-DE/extension/module/jetimpex_social_list.php', '2017-09-04 11:56:17'),
(1616, 76, 'catalog/controller/extension/module/jetimpex_social_list.php', '2017-09-04 11:56:17'),
(1615, 76, 'admin/controller/extension/module/jetimpex_social_list.php', '2017-09-04 11:56:17'),
(1614, 75, 'catalog/view/theme/jetimpex796/template/simple_blog/article_info.twig', '2017-09-01 14:25:38'),
(1613, 75, 'catalog/view/theme/jetimpex796/template/simple_blog/article_comment.twig', '2017-09-01 14:25:38'),
(1612, 75, 'catalog/view/theme/jetimpex796/template/simple_blog/article.twig', '2017-09-01 14:25:38'),
(1611, 75, 'catalog/view/theme/default/template/simple_blog/article_info.twig', '2017-09-01 14:25:38'),
(1610, 75, 'catalog/view/theme/default/template/simple_blog/article_comment.twig', '2017-09-01 14:25:38'),
(1609, 75, 'catalog/view/theme/default/template/simple_blog/article.twig', '2017-09-01 14:25:38'),
(1608, 75, 'catalog/language/en-gb/simple_blog/article.php', '2017-09-01 14:25:38'),
(1607, 75, 'admin/view/template/simple_blog/report.twig', '2017-09-01 14:25:38'),
(1606, 75, 'admin/view/template/simple_blog/notification.twig', '2017-09-01 14:25:38'),
(1605, 75, 'admin/view/template/simple_blog/comment_list.twig', '2017-09-01 14:25:38'),
(1604, 75, 'admin/view/template/simple_blog/comment_form.twig', '2017-09-01 14:25:38'),
(1603, 75, 'admin/view/template/simple_blog/category_list.twig', '2017-09-01 14:25:38'),
(1602, 75, 'admin/view/template/simple_blog/category_form.twig', '2017-09-01 14:25:38'),
(1601, 75, 'admin/view/template/simple_blog/author_list.twig', '2017-09-01 14:25:38'),
(1600, 75, 'admin/view/template/simple_blog/author_form.twig', '2017-09-01 14:25:38'),
(1599, 75, 'admin/view/template/simple_blog/article_list.twig', '2017-09-01 14:25:38'),
(1598, 75, 'admin/view/template/simple_blog/article_form.twig', '2017-09-01 14:25:38'),
(1597, 75, 'admin/language/en-gb/simple_blog/report.php', '2017-09-01 14:25:38'),
(1596, 75, 'admin/language/en-gb/simple_blog/install.php', '2017-09-01 14:25:38'),
(1595, 75, 'admin/language/en-gb/simple_blog/comment.php', '2017-09-01 14:25:38'),
(1594, 75, 'admin/language/en-gb/simple_blog/category.php', '2017-09-01 14:25:38'),
(1592, 75, 'admin/language/en-gb/simple_blog/article.php', '2017-09-01 14:25:38'),
(1593, 75, 'admin/language/en-gb/simple_blog/author.php', '2017-09-01 14:25:38'),
(1591, 75, 'catalog/model/simple_blog/article.php', '2017-09-01 14:25:38'),
(1590, 75, 'catalog/controller/simple_blog/search.php', '2017-09-01 14:25:38'),
(1589, 75, 'catalog/controller/simple_blog/category.php', '2017-09-01 14:25:38'),
(1588, 75, 'catalog/controller/simple_blog/author.php', '2017-09-01 14:25:38'),
(1587, 75, 'catalog/controller/simple_blog/article.php', '2017-09-01 14:25:38'),
(1586, 75, 'admin/model/simple_blog/report.php', '2017-09-01 14:25:38'),
(1584, 75, 'admin/model/simple_blog/comment.php', '2017-09-01 14:25:38'),
(1585, 75, 'admin/model/simple_blog/install.php', '2017-09-01 14:25:38'),
(1583, 75, 'admin/model/simple_blog/category.php', '2017-09-01 14:25:38'),
(1581, 75, 'admin/model/simple_blog/article.php', '2017-09-01 14:25:38'),
(1582, 75, 'admin/model/simple_blog/author.php', '2017-09-01 14:25:38'),
(1580, 75, 'admin/controller/simple_blog/report.php', '2017-09-01 14:25:38'),
(1578, 75, 'admin/controller/simple_blog/comment.php', '2017-09-01 14:25:38'),
(1579, 75, 'admin/controller/simple_blog/install.php', '2017-09-01 14:25:38'),
(1576, 75, 'admin/controller/simple_blog/author.php', '2017-09-01 14:25:38'),
(1577, 75, 'admin/controller/simple_blog/category.php', '2017-09-01 14:25:38'),
(1575, 75, 'admin/controller/simple_blog/article.php', '2017-09-01 14:25:38'),
(1637, 80, 'catalog/view/theme/jetimpex', '2017-11-22 14:23:00'),
(1638, 80, 'admin/controller/extension/module/jetimpex_slideshow.php', '2017-11-22 14:23:00'),
(1639, 80, 'catalog/controller/extension/module/jetimpex_slideshow.php', '2017-11-22 14:23:00'),
(1640, 80, 'catalog/view/theme/jetimpex/js', '2017-11-22 14:23:00'),
(1641, 80, 'catalog/view/theme/jetimpex/template', '2017-11-22 14:23:00'),
(1642, 80, 'admin/language/de-DE/extension/module/jetimpex_slideshow.php', '2017-11-22 14:23:00'),
(1643, 80, 'admin/language/en-gb/extension/module/jetimpex_slideshow.php', '2017-11-22 14:23:00'),
(1644, 80, 'admin/language/ru-ru/extension/module/jetimpex_slideshow.php', '2017-11-22 14:23:00'),
(1645, 80, 'admin/view/template/extension/module/jetimpex_slideshow.twig', '2017-11-22 14:23:00'),
(1646, 80, 'catalog/view/theme/jetimpex/js/swiper', '2017-11-22 14:23:00'),
(1647, 80, 'catalog/view/theme/jetimpex/template/extension', '2017-11-22 14:23:00'),
(1648, 80, 'catalog/view/theme/jetimpex/js/swiper/jquery.vide.min.js', '2017-11-22 14:23:00'),
(1649, 80, 'catalog/view/theme/jetimpex/js/swiper/swiper.min.js', '2017-11-22 14:23:00'),
(1650, 80, 'catalog/view/theme/jetimpex/template/extension/module', '2017-11-22 14:23:00'),
(1651, 80, 'catalog/view/theme/default/template/extension/module/jetimpex_slideshow.twig', '2017-11-22 14:23:00'),
(1652, 80, 'catalog/view/theme/jetimpex/template/extension/module/jetimpex_slideshow.twig', '2017-11-22 14:23:00'),
(1653, 83, 'catalog/controller/common/bottom.php', '2017-11-30 10:20:40'),
(1654, 83, 'catalog/controller/common/footer_1.php', '2017-11-30 10:20:40'),
(1655, 83, 'catalog/controller/common/footer_2.php', '2017-11-30 10:20:40'),
(1656, 83, 'catalog/controller/common/footer_3.php', '2017-11-30 10:20:40'),
(1657, 83, 'catalog/controller/common/footer_4.php', '2017-11-30 10:20:40'),
(1658, 83, 'catalog/controller/common/header_top.php', '2017-11-30 10:20:40'),
(1659, 83, 'catalog/controller/common/navigation.php', '2017-11-30 10:20:40'),
(1660, 83, 'catalog/controller/common/top.php', '2017-11-30 10:20:40'),
(1661, 83, 'catalog/view/theme/default/template/common/position.twig', '2017-11-30 10:20:40'),
(1662, 83, 'catalog/view/theme/jetimpex796/template/common/position.twig', '2017-11-30 10:20:40'),
(1663, 84, 'admin/controller/simple_blog/article.php', '2017-12-06 10:54:31'),
(1664, 84, 'admin/controller/simple_blog/author.php', '2017-12-06 10:54:31'),
(1665, 84, 'admin/controller/simple_blog/category.php', '2017-12-06 10:54:31'),
(1666, 84, 'admin/controller/simple_blog/comment.php', '2017-12-06 10:54:31'),
(1667, 84, 'admin/controller/simple_blog/install.php', '2017-12-06 10:54:31'),
(1668, 84, 'admin/controller/simple_blog/report.php', '2017-12-06 10:54:31'),
(1669, 84, 'admin/model/simple_blog/article.php', '2017-12-06 10:54:31'),
(1670, 84, 'admin/model/simple_blog/author.php', '2017-12-06 10:54:31'),
(1671, 84, 'admin/model/simple_blog/category.php', '2017-12-06 10:54:31'),
(1672, 84, 'admin/model/simple_blog/comment.php', '2017-12-06 10:54:31'),
(1673, 84, 'admin/model/simple_blog/install.php', '2017-12-06 10:54:31'),
(1674, 84, 'admin/model/simple_blog/report.php', '2017-12-06 10:54:31'),
(1675, 84, 'catalog/controller/simple_blog/article.php', '2017-12-06 10:54:31'),
(1676, 84, 'catalog/controller/simple_blog/author.php', '2017-12-06 10:54:31'),
(1677, 84, 'catalog/controller/simple_blog/category.php', '2017-12-06 10:54:31'),
(1678, 84, 'catalog/controller/simple_blog/search.php', '2017-12-06 10:54:31'),
(1679, 84, 'catalog/model/simple_blog/article.php', '2017-12-06 10:54:31'),
(1680, 84, 'admin/language/en-gb/simple_blog/article.php', '2017-12-06 10:54:31'),
(1681, 84, 'admin/language/en-gb/simple_blog/author.php', '2017-12-06 10:54:31'),
(1682, 84, 'admin/language/en-gb/simple_blog/category.php', '2017-12-06 10:54:31'),
(1683, 84, 'admin/language/en-gb/simple_blog/comment.php', '2017-12-06 10:54:31'),
(1684, 84, 'admin/language/en-gb/simple_blog/install.php', '2017-12-06 10:54:31'),
(1685, 84, 'admin/language/en-gb/simple_blog/report.php', '2017-12-06 10:54:31'),
(1686, 84, 'admin/view/template/simple_blog/article_form.twig', '2017-12-06 10:54:31'),
(1687, 84, 'admin/view/template/simple_blog/article_list.twig', '2017-12-06 10:54:31'),
(1688, 84, 'admin/view/template/simple_blog/author_form.twig', '2017-12-06 10:54:31'),
(1689, 84, 'admin/view/template/simple_blog/author_list.twig', '2017-12-06 10:54:31'),
(1690, 84, 'admin/view/template/simple_blog/category_form.twig', '2017-12-06 10:54:31'),
(1691, 84, 'admin/view/template/simple_blog/category_list.twig', '2017-12-06 10:54:31'),
(1692, 84, 'admin/view/template/simple_blog/comment_form.twig', '2017-12-06 10:54:31'),
(1693, 84, 'admin/view/template/simple_blog/comment_list.twig', '2017-12-06 10:54:31'),
(1694, 84, 'admin/view/template/simple_blog/notification.twig', '2017-12-06 10:54:31'),
(1695, 84, 'admin/view/template/simple_blog/report.twig', '2017-12-06 10:54:31'),
(1696, 84, 'catalog/language/en-gb/simple_blog/article.php', '2017-12-06 10:54:31'),
(1697, 84, 'catalog/view/theme/default/template/simple_blog/article.twig', '2017-12-06 10:54:31'),
(1698, 84, 'catalog/view/theme/default/template/simple_blog/article_comment.twig', '2017-12-06 10:54:31'),
(1699, 84, 'catalog/view/theme/default/template/simple_blog/article_info.twig', '2017-12-06 10:54:31'),
(1700, 84, 'catalog/view/theme/jetimpex796/template/simple_blog/article.twig', '2017-12-06 10:54:31'),
(1701, 84, 'catalog/view/theme/jetimpex796/template/simple_blog/article_comment.twig', '2017-12-06 10:54:31'),
(1702, 84, 'catalog/view/theme/jetimpex796/template/simple_blog/article_info.twig', '2017-12-06 10:54:31'),
(1703, 85, 'admin/controller/simple_blog/article.php', '2017-12-06 11:03:13'),
(1704, 85, 'admin/controller/simple_blog/author.php', '2017-12-06 11:03:13'),
(1705, 85, 'admin/controller/simple_blog/category.php', '2017-12-06 11:03:13'),
(1706, 85, 'admin/controller/simple_blog/comment.php', '2017-12-06 11:03:13'),
(1707, 85, 'admin/controller/simple_blog/install.php', '2017-12-06 11:03:13'),
(1708, 85, 'admin/controller/simple_blog/report.php', '2017-12-06 11:03:13'),
(1709, 85, 'admin/model/simple_blog/article.php', '2017-12-06 11:03:13'),
(1710, 85, 'admin/model/simple_blog/author.php', '2017-12-06 11:03:13'),
(1711, 85, 'admin/model/simple_blog/category.php', '2017-12-06 11:03:13'),
(1712, 85, 'admin/model/simple_blog/comment.php', '2017-12-06 11:03:13'),
(1713, 85, 'admin/model/simple_blog/install.php', '2017-12-06 11:03:13'),
(1714, 85, 'admin/model/simple_blog/report.php', '2017-12-06 11:03:13'),
(1715, 85, 'catalog/controller/simple_blog/article.php', '2017-12-06 11:03:13'),
(1716, 85, 'catalog/controller/simple_blog/author.php', '2017-12-06 11:03:13'),
(1717, 85, 'catalog/controller/simple_blog/category.php', '2017-12-06 11:03:13'),
(1718, 85, 'catalog/controller/simple_blog/search.php', '2017-12-06 11:03:13'),
(1719, 85, 'catalog/model/simple_blog/article.php', '2017-12-06 11:03:13'),
(1720, 85, 'admin/language/en-gb/simple_blog/article.php', '2017-12-06 11:03:13'),
(1721, 85, 'admin/language/en-gb/simple_blog/author.php', '2017-12-06 11:03:13'),
(1722, 85, 'admin/language/en-gb/simple_blog/category.php', '2017-12-06 11:03:13'),
(1723, 85, 'admin/language/en-gb/simple_blog/comment.php', '2017-12-06 11:03:13'),
(1724, 85, 'admin/language/en-gb/simple_blog/install.php', '2017-12-06 11:03:13'),
(1725, 85, 'admin/language/en-gb/simple_blog/report.php', '2017-12-06 11:03:13'),
(1726, 85, 'admin/view/template/simple_blog/article_form.twig', '2017-12-06 11:03:13'),
(1727, 85, 'admin/view/template/simple_blog/article_list.twig', '2017-12-06 11:03:13'),
(1728, 85, 'admin/view/template/simple_blog/author_form.twig', '2017-12-06 11:03:13'),
(1729, 85, 'admin/view/template/simple_blog/author_list.twig', '2017-12-06 11:03:13'),
(1730, 85, 'admin/view/template/simple_blog/category_form.twig', '2017-12-06 11:03:13'),
(1731, 85, 'admin/view/template/simple_blog/category_list.twig', '2017-12-06 11:03:13'),
(1732, 85, 'admin/view/template/simple_blog/comment_form.twig', '2017-12-06 11:03:13'),
(1733, 85, 'admin/view/template/simple_blog/comment_list.twig', '2017-12-06 11:03:13'),
(1734, 85, 'admin/view/template/simple_blog/notification.twig', '2017-12-06 11:03:13'),
(1735, 85, 'admin/view/template/simple_blog/report.twig', '2017-12-06 11:03:13'),
(1736, 85, 'catalog/language/en-gb/simple_blog/article.php', '2017-12-06 11:03:13'),
(1737, 85, 'catalog/view/theme/default/template/simple_blog/article.twig', '2017-12-06 11:03:13'),
(1738, 85, 'catalog/view/theme/default/template/simple_blog/article_comment.twig', '2017-12-06 11:03:13'),
(1739, 85, 'catalog/view/theme/default/template/simple_blog/article_info.twig', '2017-12-06 11:03:13'),
(1740, 85, 'catalog/view/theme/jetimpex796/template/simple_blog/article.twig', '2017-12-06 11:03:13'),
(1741, 85, 'catalog/view/theme/jetimpex796/template/simple_blog/article_comment.twig', '2017-12-06 11:03:13'),
(1742, 85, 'catalog/view/theme/jetimpex796/template/simple_blog/article_info.twig', '2017-12-06 11:03:13'),
(1743, 86, 'catalog/controller/extension/module/jetimpex_ajax_quick_view.php', '2017-12-08 10:53:45'),
(1744, 86, 'catalog/view/theme/jetimpex796/template/extension/module/jetimpex_ajax_quick_view_popup.twig', '2017-12-08 10:53:45'),
(1745, 88, 'catalog/controller/common/bottom.php', '2017-12-08 10:54:01'),
(1746, 88, 'catalog/controller/common/footer_1.php', '2017-12-08 10:54:01'),
(1747, 88, 'catalog/controller/common/footer_2.php', '2017-12-08 10:54:01'),
(1748, 88, 'catalog/controller/common/footer_3.php', '2017-12-08 10:54:01'),
(1749, 88, 'catalog/controller/common/footer_4.php', '2017-12-08 10:54:01'),
(1750, 88, 'catalog/controller/common/header_top.php', '2017-12-08 10:54:01'),
(1751, 88, 'catalog/controller/common/navigation.php', '2017-12-08 10:54:01'),
(1752, 88, 'catalog/controller/common/top.php', '2017-12-08 10:54:01'),
(1753, 88, 'catalog/view/theme/default/template/common/position.twig', '2017-12-08 10:54:01'),
(1754, 88, 'catalog/view/theme/jetimpex796/template/common/position.twig', '2017-12-08 10:54:01'),
(1755, 89, 'admin/controller/extension/theme/jetimpex796.php', '2017-12-08 10:54:06'),
(1756, 89, 'admin/language/en-gb/extension/theme/jetimpex796.php', '2017-12-08 10:54:06'),
(1757, 89, 'admin/view/template/extension/theme/jetimpex796.twig', '2017-12-08 10:54:06'),
(1758, 95, 'catalog/controller/extension/module/jetimpex_ajax_quick_view.php', '2017-12-08 10:55:53'),
(1759, 95, 'catalog/view/theme/jetimpex796/template/extension/module/jetimpex_ajax_quick_view_popup.twig', '2017-12-08 10:55:53'),
(1760, 96, 'admin/controller/simple_blog/article.php', '2017-12-08 10:55:55'),
(1761, 96, 'admin/controller/simple_blog/author.php', '2017-12-08 10:55:55'),
(1762, 96, 'admin/controller/simple_blog/category.php', '2017-12-08 10:55:55'),
(1763, 96, 'admin/controller/simple_blog/comment.php', '2017-12-08 10:55:55'),
(1764, 96, 'admin/controller/simple_blog/install.php', '2017-12-08 10:55:55'),
(1765, 96, 'admin/controller/simple_blog/report.php', '2017-12-08 10:55:55'),
(1766, 96, 'admin/model/simple_blog/article.php', '2017-12-08 10:55:55'),
(1767, 96, 'admin/model/simple_blog/author.php', '2017-12-08 10:55:55'),
(1768, 96, 'admin/model/simple_blog/category.php', '2017-12-08 10:55:55'),
(1769, 96, 'admin/model/simple_blog/comment.php', '2017-12-08 10:55:55'),
(1770, 96, 'admin/model/simple_blog/install.php', '2017-12-08 10:55:55'),
(1771, 96, 'admin/model/simple_blog/report.php', '2017-12-08 10:55:55'),
(1772, 96, 'catalog/controller/simple_blog/article.php', '2017-12-08 10:55:55'),
(1773, 96, 'catalog/controller/simple_blog/author.php', '2017-12-08 10:55:55'),
(1774, 96, 'catalog/controller/simple_blog/category.php', '2017-12-08 10:55:55'),
(1775, 96, 'catalog/controller/simple_blog/search.php', '2017-12-08 10:55:55'),
(1776, 96, 'catalog/model/simple_blog/article.php', '2017-12-08 10:55:55'),
(1777, 96, 'admin/language/en-gb/simple_blog/article.php', '2017-12-08 10:55:55'),
(1778, 96, 'admin/language/en-gb/simple_blog/author.php', '2017-12-08 10:55:55'),
(1779, 96, 'admin/language/en-gb/simple_blog/category.php', '2017-12-08 10:55:55'),
(1780, 96, 'admin/language/en-gb/simple_blog/comment.php', '2017-12-08 10:55:55'),
(1781, 96, 'admin/language/en-gb/simple_blog/install.php', '2017-12-08 10:55:55'),
(1782, 96, 'admin/language/en-gb/simple_blog/report.php', '2017-12-08 10:55:55'),
(1783, 96, 'admin/view/template/simple_blog/article_form.twig', '2017-12-08 10:55:55'),
(1784, 96, 'admin/view/template/simple_blog/article_list.twig', '2017-12-08 10:55:55'),
(1785, 96, 'admin/view/template/simple_blog/author_form.twig', '2017-12-08 10:55:55'),
(1786, 96, 'admin/view/template/simple_blog/author_list.twig', '2017-12-08 10:55:55'),
(1787, 96, 'admin/view/template/simple_blog/category_form.twig', '2017-12-08 10:55:55'),
(1788, 96, 'admin/view/template/simple_blog/category_list.twig', '2017-12-08 10:55:55'),
(1789, 96, 'admin/view/template/simple_blog/comment_form.twig', '2017-12-08 10:55:55'),
(1790, 96, 'admin/view/template/simple_blog/comment_list.twig', '2017-12-08 10:55:55'),
(1791, 96, 'admin/view/template/simple_blog/notification.twig', '2017-12-08 10:55:55'),
(1792, 96, 'admin/view/template/simple_blog/report.twig', '2017-12-08 10:55:55'),
(1793, 96, 'catalog/language/en-gb/simple_blog/article.php', '2017-12-08 10:55:55'),
(1794, 96, 'catalog/view/theme/default/template/simple_blog/article.twig', '2017-12-08 10:55:55'),
(1795, 96, 'catalog/view/theme/default/template/simple_blog/article_comment.twig', '2017-12-08 10:55:55'),
(1796, 96, 'catalog/view/theme/default/template/simple_blog/article_info.twig', '2017-12-08 10:55:55'),
(1797, 96, 'catalog/view/theme/jetimpex796/template/simple_blog/article.twig', '2017-12-08 10:55:55'),
(1798, 96, 'catalog/view/theme/jetimpex796/template/simple_blog/article_comment.twig', '2017-12-08 10:55:55'),
(1799, 96, 'catalog/view/theme/jetimpex796/template/simple_blog/article_info.twig', '2017-12-08 10:55:55'),
(1800, 110, 'catalog/controller/common/bottom.php', '2017-12-08 10:56:52'),
(1801, 110, 'catalog/controller/common/footer_1.php', '2017-12-08 10:56:52'),
(1802, 110, 'catalog/controller/common/footer_2.php', '2017-12-08 10:56:52'),
(1803, 110, 'catalog/controller/common/footer_3.php', '2017-12-08 10:56:52'),
(1804, 110, 'catalog/controller/common/footer_4.php', '2017-12-08 10:56:52'),
(1805, 110, 'catalog/controller/common/header_top.php', '2017-12-08 10:56:52'),
(1806, 110, 'catalog/controller/common/navigation.php', '2017-12-08 10:56:52'),
(1807, 110, 'catalog/controller/common/top.php', '2017-12-08 10:56:52'),
(1808, 110, 'catalog/view/theme/default/template/common/position.twig', '2017-12-08 10:56:52'),
(1809, 110, 'catalog/view/theme/jetimpex796/template/common/position.twig', '2017-12-08 10:56:52'),
(1810, 115, 'admin/controller/extension/theme/jetimpex796.php', '2017-12-08 10:57:19'),
(1811, 115, 'admin/language/en-gb/extension/theme/jetimpex796.php', '2017-12-08 10:57:19'),
(1812, 115, 'admin/view/template/extension/theme/jetimpex796.twig', '2017-12-08 10:57:19');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=343 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(329, 7, 'jetimpex_layout_builder.52', 'footer_1', 0),
(325, 3, 'jetimpex_layout_builder.52', 'footer_1', 0),
(342, 9, 'jetimpex_layout_builder.52', 'footer_1', 0),
(332, 8, 'jetimpex_megamenu.34', 'navigation', 1),
(277, 5, 'jetimpex_layout_builder.52', 'footer_1', 0),
(312, 6, 'jetimpex_layout_builder.52', 'footer_1', 0),
(308, 2, 'jetimpex_layout_builder.52', 'footer_1', 0),
(310, 6, 'html.58', 'navigation', 0),
(315, 10, 'jetimpex_megamenu.34', 'navigation', 1),
(324, 3, 'jetimpex_megamenu.34', 'navigation', 1),
(328, 7, 'jetimpex_megamenu.34', 'navigation', 1),
(292, 12, 'jetimpex_layout_builder.52', 'footer_1', 0),
(334, 8, 'jetimpex_layout_builder.52', 'footer_1', 0),
(276, 5, 'jetimpex_megamenu.34', 'navigation', 1),
(275, 5, 'html.58', 'navigation', 0),
(316, 10, 'jetimpex_layout_builder.52', 'footer_1', 0),
(286, 13, 'jetimpex_layout_builder.52', 'footer_1', 0),
(341, 9, 'jetimpex_megamenu.34', 'navigation', 1),
(165, 1, 'jetimpex_layout_builder.52', 'footer_1', 0),
(163, 1, 'jetimpex_layout_builder.33', 'content_top', 0),
(162, 1, 'jetimpex_layout_builder.57', 'column_left', 0),
(161, 1, 'html.58', 'navigation', 0),
(307, 2, 'jetimpex_megamenu.34', 'navigation', 1),
(306, 2, 'html.58', 'navigation', 0),
(323, 3, 'html.58', 'navigation', 0),
(295, 4, 'jetimpex_layout_builder.52', 'footer_1', 0),
(294, 4, 'html.58', 'navigation', 0),
(311, 6, 'jetimpex_megamenu.34', 'navigation', 1),
(314, 10, 'html.58', 'navigation', 0),
(327, 7, 'html.58', 'navigation', 0),
(291, 12, 'html.58', 'navigation', 0),
(333, 8, 'jetimpex_google_map.35', 'content_top', 0),
(331, 8, 'html.58', 'navigation', 0),
(337, 11, 'jetimpex_megamenu.34', 'navigation', 1),
(336, 11, 'html.58', 'navigation', 0),
(285, 13, 'jetimpex_megamenu.34', 'navigation', 1),
(284, 13, 'html.58', 'navigation', 0),
(340, 9, 'html.58', 'navigation', 0),
(338, 11, 'jetimpex_layout_builder.52', 'footer_1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(133, 6, 0, 'account/%'),
(134, 10, 0, 'affiliate/%'),
(136, 3, 0, 'product/category'),
(94, 1, 0, 'common/home'),
(132, 2, 0, 'product/product'),
(139, 11, 0, 'information/information'),
(137, 7, 0, 'checkout/%'),
(138, 8, 0, 'information/contact'),
(140, 9, 0, 'information/sitemap'),
(128, 4, 0, ''),
(123, 5, 0, 'product/manufacturer'),
(127, 12, 0, 'product/compare'),
(125, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(32, 'Featured', 'featured', '{\"name\":\"Featured\",\"product_name\":\"\",\"product\":[\"42\",\"30\",\"35\",\"34\",\"47\",\"46\"],\"limit\":\"6\",\"width\":\"215\",\"height\":\"215\",\"status\":\"1\"}'),
(33, 'Home Page', 'jetimpex_layout_builder', '{\"status\":\"1\",\"name\":\"Home Page\",\"class\":\"\",\"id\":\"\",\"layout\":\"[{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"fullwidth\\\":0,\\\"parallax\\\":0,\\\"sfxcls\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"cols\\\":[{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":12,\\\"mdcol\\\":12,\\\"smcol\\\":12,\\\"xscol\\\":12,\\\"widgets\\\":[{\\\"name\\\":\\\"JETIMPEX Slideshow > JETIMPEX Slideshow\\\",\\\"module\\\":\\\"jetimpex_slideshow.55\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]}]},{\\\"cls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"fullwidth\\\":\\\"0\\\",\\\"sfxcls\\\":null,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":null,\\\"iattachment\\\":null,\\\"cols\\\":[{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":4,\\\"mdcol\\\":4,\\\"smcol\\\":12,\\\"xscol\\\":12,\\\"widgets\\\":[{\\\"name\\\":\\\"Banner > Banner 1\\\",\\\"module\\\":\\\"banner.36\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]},{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":4,\\\"mdcol\\\":4,\\\"smcol\\\":12,\\\"xscol\\\":12,\\\"widgets\\\":[{\\\"name\\\":\\\"Banner > Banner 2\\\",\\\"module\\\":\\\"banner.37\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]},{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":4,\\\"mdcol\\\":4,\\\"smcol\\\":12,\\\"xscol\\\":12,\\\"widgets\\\":[{\\\"name\\\":\\\"Banner > Banner 3\\\",\\\"module\\\":\\\"banner.38\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]}]},{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"fullwidth\\\":0,\\\"parallax\\\":0,\\\"sfxcls\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"cols\\\":[{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":12,\\\"mdcol\\\":12,\\\"smcol\\\":12,\\\"xscol\\\":12,\\\"widgets\\\":[{\\\"name\\\":\\\"Latest > Latest\\\",\\\"module\\\":\\\"latest.61\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]}]}]\"}'),
(59, 'Specials', 'special', '{\"name\":\"Specials\",\"limit\":\"6\",\"width\":\"150\",\"height\":\"150\",\"status\":\"1\"}'),
(60, 'Bestsellers', 'bestseller', '{\"name\":\"Bestsellers\",\"limit\":\"4\",\"width\":\"150\",\"height\":\"150\",\"status\":\"1\"}'),
(61, 'Latest', 'latest', '{\"name\":\"Latest\",\"limit\":\"6\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(63, 'Footer Links 3', 'jetimpex_footer_links', '{\"name\":\"Footer Links 3\",\"type\":\"1\",\"status\":\"1\"}'),
(34, 'Megamenu', 'jetimpex_megamenu', '{\"name\":\"Megamenu\",\"status\":\"1\",\"menu_item\":[{\"type\":\"0\",\"1\":{\"title\":\"\"},\"2\":{\"title\":\"\"},\"3\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"1\",\"columns\":\"4\",\"columns-per-row\":\"4\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"column\":[{\"width\":\"25%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"36\",\"category_id\":\"30\",\"category_show\":\"0\"},{\"width\":\"25%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"10\",\"module_id\":\"36\",\"category_id\":\"30\",\"category_show\":\"0\"},{\"width\":\"25%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"10\",\"module_id\":\"36\",\"category_id\":\"30\",\"category_show\":\"0\"},{\"width\":\"25%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"36\",\"category_id\":\"30\",\"category_show\":\"0\"}]},{\"type\":\"0\",\"1\":{\"title\":\"\"},\"2\":{\"title\":\"\"},\"3\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"0\",\"columns\":\"0\",\"columns-per-row\":\"0\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\"},{\"type\":\"0\",\"1\":{\"title\":\"\"},\"2\":{\"title\":\"\"},\"3\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"0\",\"columns\":\"0\",\"columns-per-row\":\"0\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\"},{\"type\":\"0\",\"1\":{\"title\":\"\"},\"2\":{\"title\":\"\"},\"3\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"0\",\"columns\":\"0\",\"columns-per-row\":\"0\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\"},{\"type\":\"0\",\"1\":{\"title\":\"\"},\"2\":{\"title\":\"\"},\"3\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"0\",\"columns\":\"0\",\"columns-per-row\":\"0\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\"},{\"type\":\"0\",\"1\":{\"title\":\"\"},\"2\":{\"title\":\"\"},\"3\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"0\",\"columns\":\"4\",\"columns-per-row\":\"4\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"column\":[{\"width\":\"25%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"36\",\"category_id\":\"30\",\"category_show\":\"0\"},{\"width\":\"25%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"36\",\"category_id\":\"30\",\"category_show\":\"0\"},{\"width\":\"25%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"36\",\"category_id\":\"30\",\"category_show\":\"0\"},{\"width\":\"25%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"36\",\"category_id\":\"30\",\"category_show\":\"0\"}]}]}'),
(35, 'Google Map', 'jetimpex_google_map', '{\"name\":\"Google Map\",\"jetimpex_google_map_key\":\"AIzaSyCB0IvwQzMi2BX80ypRVzjl5CcnRJkSWD4\",\"status\":\"1\",\"jetimpex_google_map_zoom\":\"14\",\"jetimpex_google_map_type\":\"1\",\"jetimpex_google_map_sensor\":\"true\",\"jetimpex_google_map_width\":\"100%\",\"jetimpex_google_map_height\":\"350px\",\"jetimpex_google_map_styles\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t[\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;all&quot;,\\r\\n        &quot;elementType&quot;: &quot;geometry.fill&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;weight&quot;: &quot;2.00&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;all&quot;,\\r\\n        &quot;elementType&quot;: &quot;geometry.stroke&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;color&quot;: &quot;#9c9c9c&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;all&quot;,\\r\\n        &quot;elementType&quot;: &quot;labels.text&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;on&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;landscape&quot;,\\r\\n        &quot;elementType&quot;: &quot;all&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;color&quot;: &quot;#f2f2f2&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;landscape&quot;,\\r\\n        &quot;elementType&quot;: &quot;geometry.fill&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;color&quot;: &quot;#ffffff&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;landscape.man_made&quot;,\\r\\n        &quot;elementType&quot;: &quot;geometry.fill&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;color&quot;: &quot;#ffffff&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;poi&quot;,\\r\\n        &quot;elementType&quot;: &quot;all&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;off&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;road&quot;,\\r\\n        &quot;elementType&quot;: &quot;all&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;saturation&quot;: -100\\r\\n            },\\r\\n            {\\r\\n                &quot;lightness&quot;: 45\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;road&quot;,\\r\\n        &quot;elementType&quot;: &quot;geometry.fill&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;color&quot;: &quot;#eeeeee&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;road&quot;,\\r\\n        &quot;elementType&quot;: &quot;labels.text.fill&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;color&quot;: &quot;#7b7b7b&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;road&quot;,\\r\\n        &quot;elementType&quot;: &quot;labels.text.stroke&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;color&quot;: &quot;#ffffff&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;road.highway&quot;,\\r\\n        &quot;elementType&quot;: &quot;all&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;simplified&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;road.arterial&quot;,\\r\\n        &quot;elementType&quot;: &quot;labels.icon&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;off&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;transit&quot;,\\r\\n        &quot;elementType&quot;: &quot;all&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;off&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;water&quot;,\\r\\n        &quot;elementType&quot;: &quot;all&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;color&quot;: &quot;#46bcec&quot;\\r\\n            },\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;on&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;water&quot;,\\r\\n        &quot;elementType&quot;: &quot;geometry.fill&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;color&quot;: &quot;#c8d7d4&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;water&quot;,\\r\\n        &quot;elementType&quot;: &quot;labels.text.fill&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;color&quot;: &quot;#070707&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;water&quot;,\\r\\n        &quot;elementType&quot;: &quot;labels.text.stroke&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;color&quot;: &quot;#ffffff&quot;\\r\\n            }\\r\\n        ]\\r\\n    }\\r\\n]\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"jetimpex_google_map_disable_ui\":\"false\",\"jetimpex_google_map_scrollwheel\":\"false\",\"jetimpex_google_map_draggable\":\"false\",\"jetimpex_google_map_marker\":\"catalog\\/marker_map.png\",\"jetimpex_google_map_marker_active\":\"catalog\\/marker_map_active.png\",\"jetimpex_google_map_marker_width\":\"45\",\"jetimpex_google_map_marker_height\":\"55\"}'),
(36, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"7\",\"width\":\"570\",\"height\":\"350\",\"status\":\"1\"}'),
(37, 'Banner 2', 'banner', '{\"name\":\"Banner 2\",\"banner_id\":\"8\",\"width\":\"570\",\"height\":\"350\",\"status\":\"1\"}'),
(38, 'Banner 3', 'banner', '{\"name\":\"Banner 3\",\"banner_id\":\"12\",\"width\":\"570\",\"height\":\"350\",\"status\":\"1\"}'),
(49, 'Blog Articles', 'jetimpex_blog_articles', '{\"status\":\"1\",\"name\":\"Blog Articles\",\"article_limit\":\"2\",\"show_readmore\":\"0\",\"show_date\":\"1\",\"show_author\":\"0\",\"show_comments\":\"0\",\"show_image\":\"1\",\"image_width\":\"570\",\"image_height\":\"267\",\"show_description\":\"1\",\"description_limit\":\"270\",\"category_id\":\"all\"}'),
(51, 'Footer Links 1', 'jetimpex_footer_links', '{\"name\":\"Footer Links 1\",\"type\":\"0\",\"status\":\"1\"}'),
(52, 'Footer Layout', 'jetimpex_layout_builder', '{\"status\":\"1\",\"name\":\"Footer Layout\",\"class\":\"\",\"id\":\"\",\"layout\":\"[{\\\"cols\\\":[{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":3,\\\"mdcol\\\":3,\\\"smcol\\\":3,\\\"xscol\\\":4,\\\"widgets\\\":[{\\\"name\\\":\\\"Jetimpex Footer Links > Footer Links 1\\\",\\\"module\\\":\\\"jetimpex_footer_links.51\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]},{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":3,\\\"mdcol\\\":3,\\\"smcol\\\":2,\\\"xscol\\\":4,\\\"widgets\\\":[{\\\"name\\\":\\\"Jetimpex Footer Links > Footer Links 2\\\",\\\"module\\\":\\\"jetimpex_footer_links.53\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]},{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":3,\\\"mdcol\\\":2,\\\"smcol\\\":2,\\\"xscol\\\":4,\\\"widgets\\\":[{\\\"name\\\":\\\"Jetimpex Footer Links > Footer Links 3\\\",\\\"module\\\":\\\"jetimpex_footer_links.63\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]},{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":3,\\\"mdcol\\\":4,\\\"smcol\\\":5,\\\"xscol\\\":12,\\\"widgets\\\":[{\\\"name\\\":\\\"JETIMPEX Newsletter > Newsletter\\\",\\\"module\\\":\\\"jetimpex_newsletter.48\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]}]}]\"}'),
(53, 'Footer Links 2', 'jetimpex_footer_links', '{\"name\":\"Footer Links 2\",\"type\":\"3\",\"status\":\"1\"}'),
(55, 'JETIMPEX Slideshow', 'jetimpex_slideshow', '{\"name\":\"JETIMPEX Slideshow\",\"status\":\"1\",\"width\":\"870\",\"height\":\"345\",\"min_height\":\"345\",\"effect\":\"1\",\"speed\":\"800\",\"autoplay\":\"1\",\"keyboard_control\":\"0\",\"mousewheel_control\":\"0\",\"mousewheel_release_on_edges\":\"0\",\"next_button\":\"1\",\"prev_button\":\"1\",\"pagination\":\"0\",\"pagination_clickable\":\"1\",\"pagination_bullet_render\":\"0\",\"scrollbar\":\"0\",\"scrollbar_draggable\":\"0\",\"loop\":\"0\",\"slides\":[{\"slide_type\":\"0\",\"video_loop\":\"0\",\"video_autoplay\":\"0\",\"video_playback_rate\":\"\",\"video_muted\":\"1\",\"video_volume\":\"\",\"image\":\"catalog\\/slide-1.jpg\",\"title\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"},\"description\":{\"1\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;h3&gt;iPhone &lt;i&gt;X&lt;\\/i&gt;&lt;\\/h3&gt;\\r\\n&lt;p&gt;iOS 11 makes iPhone so smart, it learns from you.&lt;\\/p&gt;\\r\\n&lt;a class=&quot;btn&quot; href=&quot;index.php?route=product\\/product&amp;amp;path=57&amp;amp;product_id=49&quot;&gt;Shop now!&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"2\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;h3&gt;iPhone &lt;i&gt;X&lt;\\/i&gt;&lt;\\/h3&gt;\\r\\n&lt;p&gt;iOS 11 makes iPhone so smart, it learns from you.&lt;\\/p&gt;\\r\\n&lt;a class=&quot;btn&quot; href=&quot;index.php?route=product\\/product&amp;amp;path=57&amp;amp;product_id=49&quot;&gt;Shop now!&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"3\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;h3&gt;iPhone &lt;i&gt;X&lt;\\/i&gt;&lt;\\/h3&gt;\\r\\n&lt;p&gt;iOS 11 makes iPhone so smart, it learns from you.&lt;\\/p&gt;\\r\\n&lt;a class=&quot;btn&quot; href=&quot;index.php?route=product\\/product&amp;amp;path=57&amp;amp;product_id=49&quot;&gt;Shop now!&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"link\":\"\"},{\"slide_type\":\"0\",\"video_loop\":\"0\",\"video_autoplay\":\"0\",\"video_playback_rate\":\"\",\"video_muted\":\"1\",\"video_volume\":\"\",\"image\":\"catalog\\/slide-2.jpg\",\"title\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"},\"description\":{\"1\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;h3&gt;Smart &lt;i&gt;TV&lt;\\/i&gt;&lt;\\/h3&gt;\\r\\n&lt;p&gt;iOS 11 makes iPhone so smart, it learns from you.&lt;\\/p&gt;\\r\\n&lt;a class=&quot;btn&quot; href=&quot;index.php?route=product\\/product&amp;amp;path=57&amp;amp;product_id=50&quot;&gt;Shop now!&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"2\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;h3&gt;Smart &lt;i&gt;TV&lt;\\/i&gt;&lt;\\/h3&gt;\\r\\n&lt;p&gt;iOS 11 makes iPhone so smart, it learns from you.&lt;\\/p&gt;\\r\\n&lt;a class=&quot;btn&quot; href=&quot;index.php?route=product\\/product&amp;amp;path=57&amp;amp;product_id=50&quot;&gt;Shop now!&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"3\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;h3&gt;Smart &lt;i&gt;TV&lt;\\/i&gt;&lt;\\/h3&gt;\\r\\n&lt;p&gt;iOS 11 makes iPhone so smart, it learns from you.&lt;\\/p&gt;\\r\\n&lt;a class=&quot;btn&quot; href=&quot;index.php?route=product\\/product&amp;amp;path=57&amp;amp;product_id=50&quot;&gt;Shop now!&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"link\":\"\"},{\"slide_type\":\"0\",\"video_loop\":\"0\",\"video_autoplay\":\"0\",\"video_playback_rate\":\"\",\"video_muted\":\"1\",\"video_volume\":\"\",\"image\":\"catalog\\/slide-3.jpg\",\"title\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"},\"description\":{\"1\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;h3&gt;IPAD&lt;\\/h3&gt;\\r\\n&lt;p&gt;iOS 11 makes iPhone so smart, it learns from you.&lt;\\/p&gt;\\r\\n&lt;a class=&quot;btn&quot; href=&quot;index.php?route=product\\/product&amp;amp;path=57&amp;amp;product_id=33&quot;&gt;Shop now!&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"2\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;h3&gt;IPAD&lt;\\/h3&gt;\\r\\n&lt;p&gt;iOS 11 makes iPhone so smart, it learns from you.&lt;\\/p&gt;\\r\\n&lt;a class=&quot;btn&quot; href=&quot;index.php?route=product\\/product&amp;amp;path=57&amp;amp;product_id=33&quot;&gt;Shop now!&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"3\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;h3&gt;IPAD&lt;\\/h3&gt;\\r\\n&lt;p&gt;iOS 11 makes iPhone so smart, it learns from you.&lt;\\/p&gt;\\r\\n&lt;a class=&quot;btn&quot; href=&quot;index.php?route=product\\/product&amp;amp;path=57&amp;amp;product_id=33&quot;&gt;Shop now!&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"link\":\"\"}]}'),
(58, 'Html categories', 'html', '{\"name\":\"Html categories\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;span class=&quot;cat-title&quot; data-match-height=&quot;items-header&quot;&gt;Categories&lt;\\/span&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;span class=&quot;cat-title&quot; data-match-height=&quot;items-header&quot;&gt;Categories&lt;\\/span&gt;\"},\"3\":{\"title\":\"\",\"description\":\"&lt;span class=&quot;cat-title&quot; data-match-height=&quot;items-header&quot;&gt;Categories&lt;\\/span&gt;\"}},\"status\":\"1\"}'),
(57, 'Sidebar', 'jetimpex_layout_builder', '{\"status\":\"1\",\"name\":\"Sidebar\",\"class\":\"\",\"id\":\"\",\"layout\":\"[{\\\"cols\\\":[{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":12,\\\"mdcol\\\":12,\\\"smcol\\\":12,\\\"xscol\\\":12,\\\"widgets\\\":[{\\\"name\\\":\\\"JETIMPEX Megamenu > Megamenu\\\",\\\"module\\\":\\\"jetimpex_megamenu.34\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]}]}]\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2177 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1971, 0, 'config', 'config_error_display', '1', 0),
(1972, 0, 'config', 'config_error_log', '1', 0),
(1973, 0, 'config', 'config_error_filename', 'error.log', 0),
(1944, 0, 'config', 'config_affiliate_id', '4', 0),
(1945, 0, 'config', 'config_return_id', '0', 0),
(1946, 0, 'config', 'config_return_status_id', '2', 0),
(1947, 0, 'config', 'config_captcha', '', 0),
(1948, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1949, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(1950, 0, 'config', 'config_icon', 'catalog/favicon.png', 0),
(1951, 0, 'config', 'config_mail_engine', 'mail', 0),
(1952, 0, 'config', 'config_mail_parameter', '', 0),
(1953, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1954, 0, 'config', 'config_mail_smtp_username', '', 0),
(1955, 0, 'config', 'config_mail_smtp_password', '', 0),
(1956, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1957, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1958, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(1959, 0, 'config', 'config_mail_alert_email', '', 0),
(1960, 0, 'config', 'config_maintenance', '0', 0),
(1961, 0, 'config', 'config_seo_url', '0', 0),
(1962, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(1969, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1968, 0, 'config', 'config_file_max_size', '300000', 0),
(2175, 0, 'config', 'config_encryption', '2Gi98HyJqursL3S5bHboIsPuVIMWyIEi9Bj10cHYHYfReeaqgGf2pbFZ06XurnOrmUOicSQjTDi4nOJVRIl1lr6GMuCSjbC2wdQJDTu18BM3MB9t7oy237wRmrvb77MN4DMZl73hXjYIaNPSzwqwqSKOS7nF4hWq0i1X9rmbPKWbTrsZST6xE6HXBZmPiExofelP8MRrGHBlPkFIKWrGECl68l1iDBCrDC9I6P5QjVFtM9LVNi1MMAJZhJljC7JqJDdyUZMd0PytV85qqpQVmXJfTYzWdIDnLMNytMbubDtB5zfisVOuCPcjzKcs8eR15CKtiHB9CSLNrWR2hl4xE88wENp6jbOJHe0KJ2FUumvmZmt0cnSQdSAbwILjwVlWVGL6aR27p9KWykvlWhce7mjkWfJrTgHjxauAEi1Z07S5aAyjScz9Ar6CpVNOcjaOftCGGgcCzLtDNTWofU1WG8vw2bmim4QvoKLpMY27Jsx7lg6EDwV2LIIR7E4kshQz0RgcLzedLAK0YjSL8DP8iFYv3LXFiwIMeboLIas61aLdd3NYZbxRbybDH0OeFU2FKBXm3OSlc3XBRYWN7u8V8db45UY32pmZcGyg2OWX57wrebIY7yhfPVRnf3jvBteWisemLlimoHyhhzliuOsKILyLH44E9PynjuPxF6Wttero7fWpe6cA4eTzg8pcQ2zhsrgHupdbPWnj70gLfeAhMfNFIp1pnte9QHCohOtAxzCPz4g2hco6sjaFSmAwERfdnFnXFu5RUURsL56wNDIbfPwpUsY8rwxGSnkgQWaQLojNa6YwqDVsYkPs7nEab4D7hrYvcjjQBzWlxUqsqdpGgkkrljNt156SK7xzYLntILSv8xNqBxcy8Kkx6A2I13tozHsTY3KqwAZqLMl93cC8vQmN8EAPRDhIiRHPGQp7gkAwtbsY1sdNs3Sh0OwM03Uax2KQxjw4oknIBZtrUe5FSEY85WNgXQaJz5cfzc6sSNAP0XXm2YrhkxWqK2GV0kZ6', 0),
(1966, 0, 'config', 'config_shared', '0', 0),
(1965, 0, 'config', 'config_password', '1', 0),
(1964, 0, 'config', 'config_secure', '0', 0),
(1963, 0, 'config', 'config_compression', '0', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(2171, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_cart_height', '50', 0),
(2172, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_location_width', '209', 0),
(2173, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_location_height', '52', 0),
(2170, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_cart_width', '50', 0),
(2169, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_wishlist_height', '50', 0),
(2168, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_wishlist_width', '50', 0),
(2167, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_compare_height', '270', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(228, 0, 'developer', 'developer_theme', '0', 0),
(2165, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_related_height', '270', 0),
(2166, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_compare_width', '270', 0),
(229, 0, 'developer', 'developer_sass', '1', 0),
(2163, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_additional_height', '133', 0),
(2164, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_related_width', '270', 0),
(2162, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_additional_width', '133', 0),
(2161, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_product_height', '270', 0),
(2160, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_product_width', '270', 0),
(1943, 0, 'config', 'config_affiliate_commission', '5', 0),
(1942, 0, 'config', 'config_affiliate_auto', '0', 0),
(1941, 0, 'config', 'config_affiliate_approval', '0', 0),
(1940, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1939, 0, 'config', 'config_stock_checkout', '0', 0),
(1938, 0, 'config', 'config_stock_warning', '0', 0),
(2159, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_popup_height', '1000', 0),
(2155, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_category_height', '270', 0),
(2156, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_thumb_width', '637', 0),
(2157, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_thumb_height', '637', 0),
(2158, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_popup_width', '1000', 0),
(2154, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_category_width', '270', 0),
(2153, 0, 'theme_jetimpex796', 'theme_jetimpex796_simple_blog_share_social_site', '1', 0),
(2152, 0, 'theme_jetimpex796', 'theme_jetimpex796_simple_blog_related_articles', '1', 0),
(2176, 0, 'config', 'config_api_id', '6', 0),
(1937, 0, 'config', 'config_stock_display', '0', 0),
(1935, 0, 'config', 'config_fraud_status_id', '7', 0),
(1934, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(1933, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(1932, 0, 'config', 'config_order_status_id', '1', 0),
(1931, 0, 'config', 'config_checkout_id', '5', 0),
(1930, 0, 'config', 'config_checkout_guest', '1', 0),
(1929, 0, 'config', 'config_cart_weight', '1', 0),
(1928, 0, 'config', 'config_invoice_prefix', 'INV-2019-00', 0),
(1927, 0, 'config', 'config_account_id', '3', 0),
(1926, 0, 'config', 'config_login_attempts', '5', 0),
(1925, 0, 'config', 'config_customer_price', '0', 0),
(1924, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(1923, 0, 'config', 'config_customer_group_id', '1', 0),
(1922, 0, 'config', 'config_customer_search', '0', 0),
(1921, 0, 'config', 'config_customer_activity', '0', 0),
(2148, 0, 'theme_jetimpex796', 'theme_jetimpex796_simple_blog_limit', '3', 0),
(1919, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1920, 0, 'config', 'config_customer_online', '0', 0),
(1905, 0, 'config', 'config_language', 'en-gb', 0),
(1906, 0, 'config', 'config_admin_language', 'en-gb', 0),
(1907, 0, 'config', 'config_currency', 'USD', 0),
(1908, 0, 'config', 'config_currency_auto', '1', 0),
(1909, 0, 'config', 'config_length_class_id', '1', 0),
(1910, 0, 'config', 'config_weight_class_id', '1', 0),
(1911, 0, 'config', 'config_product_count', '1', 0),
(1912, 0, 'config', 'config_limit_admin', '20', 0),
(1913, 0, 'config', 'config_review_status', '1', 0),
(1914, 0, 'config', 'config_review_guest', '1', 0),
(1915, 0, 'config', 'config_voucher_min', '1', 0),
(1916, 0, 'config', 'config_voucher_max', '1000', 0),
(1917, 0, 'config', 'config_tax', '0', 0),
(1918, 0, 'config', 'config_tax_default', 'shipping', 0),
(1904, 0, 'config', 'config_zone_id', '3563', 0),
(1903, 0, 'config', 'config_country_id', '222', 0),
(2151, 0, 'theme_jetimpex796', 'theme_jetimpex796_simple_blog_author_information', '1', 0),
(2150, 0, 'theme_jetimpex796', 'theme_jetimpex796_simple_blog_comment_auto_approval', '0', 0),
(2149, 0, 'theme_jetimpex796', 'theme_jetimpex796_simple_blog_description_limit', '200', 0),
(2147, 0, 'theme_jetimpex796', 'theme_jetimpex796_simple_blog_status', '1', 0),
(2146, 0, 'theme_jetimpex796', 'theme_jetimpex796_product_description_length', '60', 0),
(2145, 0, 'theme_jetimpex796', 'theme_jetimpex796_product_limit', '8', 0),
(2144, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_quickview_height', '1108', 0),
(1970, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1900, 0, 'config', 'config_image', 'catalog/logo.png', 0),
(1901, 0, 'config', 'config_open', '7 Days a week from 9:00 am to 7:00 pm', 0),
(1902, 0, 'config', 'config_comment', 'We are glad to hear from you', 0),
(1890, 0, 'config', 'config_meta_keyword', '', 0),
(1891, 0, 'config', 'config_theme', 'jetimpex796', 0),
(1892, 0, 'config', 'config_layout_id', '4', 0),
(1893, 0, 'config', 'config_name', 'Electromo', 0),
(1894, 0, 'config', 'config_owner', 'Electromo', 0),
(1895, 0, 'config', 'config_address', 'My Company Glasgow D04 89GR', 0),
(1896, 0, 'config', 'config_geocode', '40.6700, -73.9400', 0),
(2174, 0, 'config', 'config_email', 'admin@admin.com', 0),
(1898, 0, 'config', 'config_telephone', '800-2345-6789', 0),
(1899, 0, 'config', 'config_fax', '800-2345-6790', 0),
(1889, 0, 'config', 'config_meta_description', 'Electromo', 0),
(1888, 0, 'config', 'config_meta_title', 'Electromo', 0),
(2143, 0, 'theme_jetimpex796', 'theme_jetimpex796_image_quickview_width', '868', 0),
(2142, 0, 'theme_jetimpex796', 'theme_jetimpex796_product_zoom_type', '0', 0),
(2141, 0, 'theme_jetimpex796', 'theme_jetimpex796_label_new_limit', '5', 0),
(2140, 0, 'theme_jetimpex796', 'theme_jetimpex796_label_new', '1', 0),
(2137, 0, 'theme_jetimpex796', 'theme_jetimpex796_page_direction', 'ltr', 0),
(2138, 0, 'theme_jetimpex796', 'theme_jetimpex796_label_sale', '1', 0),
(2139, 0, 'theme_jetimpex796', 'theme_jetimpex796_label_discount', '0', 0),
(2135, 0, 'theme_jetimpex796', 'theme_jetimpex796_status', '1', 0),
(2136, 0, 'theme_jetimpex796', 'theme_jetimpex796_responsive', '0', 0),
(2134, 0, 'theme_jetimpex796', 'theme_jetimpex796_directory', 'jetimpex796', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article`
--

DROP TABLE IF EXISTS `oc_simple_blog_article`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article` (
  `simple_blog_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `allow_comment` tinyint(1) NOT NULL,
  `image` mediumtext NOT NULL,
  `featured_image` mediumtext NOT NULL,
  `article_related_method` varchar(64) NOT NULL,
  `article_related_option` mediumtext NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_article`
--

INSERT INTO `oc_simple_blog_article` (`simple_blog_article_id`, `simple_blog_author_id`, `allow_comment`, `image`, `featured_image`, `article_related_method`, `article_related_option`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 1, '', 'catalog/blog/post-1.jpg', 'product_wise', '', 0, 1, '2015-09-16 17:26:55', '2016-04-15 15:52:32'),
(2, 1, 1, '', 'catalog/blog/post-2.jpg', 'product_wise', '', 1, 1, '2015-09-17 10:25:42', '2016-04-15 15:52:44'),
(3, 2, 1, '', 'catalog/blog/post-3.jpg', 'category_wise', '', 2, 1, '2015-09-17 10:28:08', '2016-04-15 15:53:23'),
(4, 3, 1, '', 'catalog/blog/post-4.jpg', 'manufacturer_wise', '', 3, 1, '2015-09-21 16:51:28', '2016-04-15 15:53:37'),
(5, 3, 1, '', 'catalog/blog/post-5.jpg', 'category_wise', '', 4, 1, '2015-09-21 16:53:36', '2016-04-15 15:53:47'),
(6, 4, 1, '', 'catalog/blog/post-6.jpg', 'product_wise', '', 5, 1, '2015-09-21 16:55:11', '2016-04-15 15:54:03'),
(7, 4, 1, '', 'catalog/blog/post-7.jpg', 'product_wise', '', 6, 1, '2015-09-21 16:57:06', '2016-04-15 15:54:11'),
(8, 2, 1, '', 'catalog/blog/post-8.jpg', 'product_wise', '', 7, 1, '2015-09-21 16:59:22', '2016-04-15 15:54:20'),
(9, 1, 1, '', 'catalog/blog/post-9.jpg', 'product_wise', '', 8, 1, '2015-09-21 17:01:01', '2017-11-23 11:42:56'),
(10, 1, 1, '', 'catalog/blog/post-10.jpg', 'product_wise', '', 9, 1, '2015-10-13 15:07:26', '2017-11-23 11:41:46');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_description` (
  `simple_blog_article_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `article_title` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_article_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_article_description`
--

INSERT INTO `oc_simple_blog_article_description` (`simple_blog_article_description_id`, `simple_blog_article_id`, `language_id`, `article_title`, `description`, `meta_description`, `meta_keyword`) VALUES
(215, 2, 2, 'Believe in the Business of Your Dreams', '&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;', '', ''),
(227, 4, 2, 'Beautiful Rumi Quotes that are Worth Reading', '&lt;p&gt;Rumi, is the most popular Sufi poet in the world. His work is not only deep and intense, but also very ethereal. His poetry often stirs an emotion never touched and shows a facet never seen. This Buzzle article has a collection of some beautiful Rumi quotes that are worth reading, without which, life would literally feel quite disregarded.&lt;/p&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;As you start to walk on the way, the way appears.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Let yourself be silently drawn by the strange pull of what you really love. It will not lead you astray.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Two there are who are never satisfied -- the lover of the world and the lover of knowledge.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;What you seek is seeking you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t be satisfied with stories, how things have gone with others. Unfold your own myth.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Raise your words, not voice. It is rain that grows flowers, not thunder.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;You are not a drop in the ocean. You are the entire ocean in a drop.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Do you know what you are? You are a manuscript oƒ a divine letter. You are a mirror reflecting a noble face. This universe is not outside of you. Look inside yourself; everything that you want, you are already that.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t grieve. Anything you lose comes round in another form.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.&quot;\r\n&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Stop acting so small. You are the universe in ecstatic motion.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Start a huge, foolish project, like Noah...it makes absolutely no difference what people think of you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;When you go through a hard period, when everything seems to oppose you, ... When you feel you cannot even bear one more minute, NEVER GIVE UP! Because it is the time and place that the course will divert!&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n\r\n', '', ''),
(233, 6, 2, 'Looking into the future', '&lt;p&gt;Verbal communication include sounds, words, language, and speech. Speaking is an effective way of communicating\r\n       and helps in expressing our emotions in words. This form of communication is further classified into four types,\r\n       which are:\r\n    &lt;/p&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Intrapersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication is extremely private and restricted to ourselves. It includes the silent\r\n               conversations we have with ourselves, wherein we juggle roles between the sender and receiver who are\r\n               processing our thoughts and actions. This process of communication when analyzed can either be conveyed\r\n               verbally to someone or stay confined as thoughts.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Interpersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication takes place between two individuals and is thus a one-on-one conversation.\r\n               Here, the two individuals involved will swap their roles of sender and receiver in order to communicate\r\n               in a clearer manner.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Small Group Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication can take place only when there are more than two people involved. Here the\r\n               number of people will be small enough to allow each participant to interact and converse with the rest.\r\n               Press conferences, board meetings, and team meetings are examples of group communication. Unless a\r\n               specific issue is being discussed, small group discussions can become chaotic and difficult to interpret\r\n               by everybody. This lag in understanding information completely can result in miscommunication.\r\n            &lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Public Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication takes place when one individual addresses a large gathering of people.\r\n               Election campaigns and public speeches are example of this type of communication. In such cases, there is\r\n               usually a single sender of information and several receivers who are being addressed.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ol&gt;', '', ''),
(232, 6, 1, 'Four Types of Verbal Communication', '&lt;p&gt;Verbal communication include sounds, words, language, and speech. Speaking is an effective way of communicating\r\n       and helps in expressing our emotions in words. This form of communication is further classified into four types,\r\n       which are:\r\n    &lt;/p&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Intrapersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication is extremely private and restricted to ourselves. It includes the silent\r\n               conversations we have with ourselves, wherein we juggle roles between the sender and receiver who are\r\n               processing our thoughts and actions. This process of communication when analyzed can either be conveyed\r\n               verbally to someone or stay confined as thoughts.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Interpersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication takes place between two individuals and is thus a one-on-one conversation.\r\n               Here, the two individuals involved will swap their roles of sender and receiver in order to communicate\r\n               in a clearer manner.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Small Group Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication can take place only when there are more than two people involved. Here the\r\n               number of people will be small enough to allow each participant to interact and converse with the rest.\r\n               Press conferences, board meetings, and team meetings are examples of group communication. Unless a\r\n               specific issue is being discussed, small group discussions can become chaotic and difficult to interpret\r\n               by everybody. This lag in understanding information completely can result in miscommunication.\r\n            &lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Public Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication takes place when one individual addresses a large gathering of people.\r\n               Election campaigns and public speeches are example of this type of communication. In such cases, there is\r\n               usually a single sender of information and several receivers who are being addressed.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ol&gt;', '', ''),
(224, 3, 2, 'Impact - The Heart of Business', '&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;', '', ''),
(223, 3, 1, 'Impact - The Heart of Business', '&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;', '', ''),
(236, 7, 2, 'Proper color solutions for the office', '&lt;p&gt;When it comes to remodeling an office, one of the most important aspects is painting. Any shade of paint can\r\n       change the complete look of a room as a color has an ability to change a drab and boring room into a stunning\r\n       one. Many people prefer to paint their homes in serene colors as it relaxes the mind. There are many hues of\r\n       colors to choose from that match the atmosphere of a room.&lt;/p&gt;\r\n\r\n    &lt;p&gt;An office is a place where many people come and go. Choose some paint colors that will stimulate the employees,\r\n       relax the customers and make them feel welcome. Here are some ideas for interior paint colors and combinations to\r\n       remodel your office and make it look more appealing to the vision.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Avoid using white, as this color gives a very sterile look to the walls. Remember a shade of color can make a\r\n       room look large or small. So, it is better to avoid black or dark colors that will give off a repulsive look to\r\n       your office.&lt;/p&gt;\r\n\r\n    &lt;p&gt;The popular choice of paint colors that will give a soothing and inviting look to your office are beige, tan,\r\n       light yellow and some shades of blue.&lt;/p&gt;\r\n\r\n    &lt;p&gt;When you choose paint colors for your office make sure that these colors have a resemblance to the flooring and\r\n       office furniture.&lt;/p&gt;\r\n\r\n    &lt;p&gt;These were some tips for choosing paint colors. Before you paint the walls of the room, always paint a small\r\n       portion of the wall to check how it looks. If you are satisfied with the result, you can go ahead with the task,\r\n       or else you can always try other combinations. Whatever color you choose, make sure that it serves its purpose\r\n       and brightens up the atmosphere of the room. Happy painting!&lt;/p&gt;', '', ''),
(235, 7, 1, 'Proper color solutions for the office', '&lt;p&gt;When it comes to remodeling an office, one of the most important aspects is painting. Any shade of paint can\r\n       change the complete look of a room as a color has an ability to change a drab and boring room into a stunning\r\n       one. Many people prefer to paint their homes in serene colors as it relaxes the mind. There are many hues of\r\n       colors to choose from that match the atmosphere of a room.&lt;/p&gt;\r\n\r\n    &lt;p&gt;An office is a place where many people come and go. Choose some paint colors that will stimulate the employees,\r\n       relax the customers and make them feel welcome. Here are some ideas for interior paint colors and combinations to\r\n       remodel your office and make it look more appealing to the vision.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Avoid using white, as this color gives a very sterile look to the walls. Remember a shade of color can make a\r\n       room look large or small. So, it is better to avoid black or dark colors that will give off a repulsive look to\r\n       your office.&lt;/p&gt;\r\n\r\n    &lt;p&gt;The popular choice of paint colors that will give a soothing and inviting look to your office are beige, tan,\r\n       light yellow and some shades of blue.&lt;/p&gt;\r\n\r\n    &lt;p&gt;When you choose paint colors for your office make sure that these colors have a resemblance to the flooring and\r\n       office furniture.&lt;/p&gt;\r\n\r\n    &lt;p&gt;These were some tips for choosing paint colors. Before you paint the walls of the room, always paint a small\r\n       portion of the wall to check how it looks. If you are satisfied with the result, you can go ahead with the task,\r\n       or else you can always try other combinations. Whatever color you choose, make sure that it serves its purpose\r\n       and brightens up the atmosphere of the room. Happy painting!&lt;/p&gt;', '', ''),
(239, 8, 2, '5 Most Common Mistakes New Managers Make', '&lt;p&gt;Learn which five most common mistakes a new manager is likely to make, and how to avoid them.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No.1 - Who\'s the Boss?&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;Some of your subordinates will be young and new, eager to follow you. But, the experienced ones might be more\r\n       resistant to your directives. especially if it comes across as an order, disregarding their experience or\r\n       suggestions. Though, being the one with the responsibility, you also need to assert your authority, and make sure\r\n       your employees respect you and follow you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Your subordinates have a working style of their own, and it will not work well to dictate your ways on them. Stay\r\n       cool as long as they are committed to the work, compliance is another matter. Set targets and deadlines, but do\r\n       not interfere in their work, especially if they are long-standing employees in the company, even though you are\r\n       the one in the upper position.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 2 - I Want to Be the Cool Guy&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;While understanding your subordinates\' viewpoint and respecting their opinions is important, it is another thing\r\n       if you are letting them run the show or take it easy. It is you, after all, who will have to explain things when\r\n       the performance falls.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Everyone hates to be the bad guy, that too, when you are new. But you have to find a balance between\r\n       micromanaging and giving no direction at all. Keep your mind open for suggestions, listen to everyone, but\r\n       ultimately you have to decide on the final direction your team/company takes. Also, do not excuse any slack\r\n       behavior. Tardiness or frequent leaves should not be taken lightly.&lt;/p&gt;\r\n\r\n\r\n    &lt;h5&gt;Mistake No. 3 - Setting Uniform, Inflexible Rules&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;If an employee is frequently late or absent, take him/her to task, but first, do understand the reasons behind\r\n       this issue. Some of them might be suffering from a health condition, or they might have a sick relative at home.\r\n       Same goes for other aspects of the job too.\r\n       While focusing on performance and target, it is easy to forget that you are dealing with people - not processes\r\n       or software which are programmed to run in a certain way. &lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Understand that every employee is different, and will respond differently to authority or pressure. Rather than\r\n       take offense, it is best to find a way around.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 4 - Not Being Clear With Instructions&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;A few months? What exactly do you mean by few - is it two or six? As the planner, you might have a clear, precise\r\n       idea of what you want. But you also need to convey that to your subordinates. Being too vague can leave them\r\n       confused and lose trust in you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Make a clear, concise, and precise guideline. Give the employees fixed goals and targets. Numbers, not\r\n       approximates. They need to have a proper idea of how their performance will be measured, to stay motivated and\r\n       work efficiently and smartly.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 5 - Overestimating Yourself and Your Team&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;New managers are often eager and overenthusiastic. Free from the crutches of their B-school or the restrictions\r\n       of their previous job, they want to prove a lot. Brimming with new ideas, they just can\'t wait to implement them\r\n       and the processes that they learned. They want to bring about a positive change, and fast.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;This enthusiasm is very infectious, affecting the entire team, resulting in a boost in productivity and morale.\r\n       But, unfortunately, it also means that the goals they set are also unrealistically high. Other employees may take\r\n       time adjusting to the sudden changes a new manager and his new processes demand. Add to that, they both will need\r\n       to be perfected and tweaked till you get the expected results. So, set realistic goals, and accept that the new\r\n       processes might also result in losses.&lt;/p&gt;', '', ''),
(255, 9, 3, 'BEST WINE IN INDIANA ', '&lt;p&gt;Did you know that the state of Indiana is actually in the top-10 of the US wine-producing states? \r\nMaybe you’re interested to know what specific variety of win are they most famous for? \r\nTraminette is related to Gewürztraminer and produces white wines with jasmine.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;  ', '  ', ''),
(253, 9, 1, 'BEST WINE IN INDIANA ', '&lt;p&gt;Did you know that the state of Indiana is actually in the top-10 of the US wine-producing states? \r\nMaybe you’re interested to know what specific variety of win are they most famous for? \r\nTraminette is related to Gewürztraminer and produces white wines with jasmine.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;  ', '  ', ''),
(254, 9, 2, 'BEST WINE IN INDIANA ', '&lt;p&gt;Did you know that the state of Indiana is actually in the top-10 of the US wine-producing states? \r\nMaybe you’re interested to know what specific variety of win are they most famous for? \r\nTraminette is related to Gewürztraminer and produces white wines with jasmine.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;  ', '  ', ''),
(230, 5, 2, 'How to Keep Your Heart Healthy', '&lt;p&gt;So how to keep your heart healthy? With so many heart diseases on the rise, most health-conscious people strive\r\n       to\r\n       seek the answer to this question. This article attempts to help you find the answer.&lt;/p&gt;\r\n    &lt;h5&gt;Go Green&lt;/h5&gt;\r\n\r\n    &lt;p&gt;When we speak of heart, we cannot miss out on the importance and benefits of plant foods. Vegetables are an\r\n       excellent source of glutamic acid. It is a class of amino acid which helps keeping blood pressure at lower\r\n       levels; safe levels, so to say. What\'s more? Veggies lack cholesterol, fat and even calories, which otherwise\r\n       tend to be the common culprits for causing heart diseases. Not to mention, the amount of vitamins and minerals\r\n       that vegetables provide to the body do the most for health.\r\n\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Be Active&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Without the aid of daily exercise, maintaining a good overall health is just more than a daunting task. Exercises\r\n       not\r\n       only improve heart function, but also help in bringing down blood pressure, and cholesterol levels in the body. A\r\n       mere 30 minutes stroll daily does good for the heart, if not much. It is recommended that sprinting is more\r\n       beneficial for the heart, than jogging.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Reduce Oil&lt;/h5&gt;\r\n\r\n    &lt;p&gt;The next tip is about keeping oil from your diet. Although, you cannot avoid oil completely,\r\n       you can keep its consumption to a small amount. Oils are a storehouse of calories and contain\r\n       little nutrition. As they mostly comprise fat, they have all chances to lead to the\r\n       development of plaque in the arteries thus, giving rise to some nasty heart problems. However,\r\n       not all types of oil are unhealthy. Fish oil contains omega-3 fatty acids, which not only help\r\n       in preventing cardiovascular diseases, but also reduce instances of heart attack. According to\r\n       a study published in the Journal of the American College of Cardiology, a group of patients\r\n       with cardiovascular disease had 30% less likelihood of heart attack because of omega-3 fatty\r\n       acids. Best sources include salmon, mackerel and herring. Flaxseed, walnuts, and soybeans are\r\n       also good sources.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Cut the Smoke&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If you think you cannot shun the habit of smoking, then you might as well know that you\r\n       cannot do anything good for your heart. One of the most severe risks of smoking relates to\r\n       heart diseases in almost every smoker. Quit smoking, and you have done half the job in\r\n       keeping your heart healthy!&lt;/p&gt;\r\n    &lt;h5&gt;Lose Weight&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If your figure is slim, and belly\r\n       flat, then you may have less things\r\n       to worry about heart diseases. I am\r\n       talking about weight loss. Being\r\n       overweight puts extra load on the\r\n       heart thus, increases the risk of\r\n       heart conditions. So, consume less\r\n       sugary foods and more of fiber and\r\n       complex carbohydrates, and fruits and\r\n       vegetables. Maintaining a healthy\r\n       weight is one of the basic\r\n       necessities for a healthy heart\r\n       today.&lt;/p&gt;\r\n    &lt;h5&gt;Add More Fiber&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        Fiber exists in two major groups; soluble (dissolves in water) and insoluble (does not dissolve in water).\r\n        Although\r\n        both the types are beneficial to health, it is the former type that does way better to reduce cholesterol levels\r\n        in\r\n        the body. Due to its soluble nature, it binds with the cholesterol in the intestines thus, keep it from being\r\n        absorbed. This keeps the level of LDL and total cholesterol down, while not affecting the HDL cholesterol level\r\n        in\r\n        any way. All a healthy person requires is a serving of 5 to 10 grams or more of soluble fiber in a day to avail\r\n        this\r\n        benefit of low cholesterol. Foods rich in this fiber include apples, peas, kidney beans, prunes, etc.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Beware of Saturated Fats&lt;/h5&gt;\r\n\r\n    &lt;p&gt;It is important that you limit the amount of saturated and trans fats you consume\r\n       from your food. These spike cholesterol levels in the body thus, increasing the risk\r\n       of coronary artery disease. So avoid or limit consumption of food such as red meat,\r\n       dairy products, coconut oil, palm oil. These are rich in saturated fatty acids. To\r\n       avoid trans fats, eat less of fast foods, bakery products, snacks, crackers, and\r\n       margarines. Go for foods rich in healthy fats such as polyunsaturated and\r\n       monounsaturated fats.&lt;/p&gt;\r\n    &lt;h5&gt;Eat Less Salt&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Sodium is good for the body, but\r\n       in petty amounts. High salt intake\r\n       means high blood pressure, which\r\n       eventually points out to heart\r\n       conditions. When sodium starts\r\n       accumulating in the blood, it\r\n       attracts water which in turn,\r\n       increases the blood volume. Now to\r\n       keep this blood circulating\r\n       through the blood vessels, the\r\n       heart has to work harder thus,\r\n       causing high blood pressure. The\r\n       recommended amount of sodium in\r\n       the food per day must be less than\r\n       2300 milligrams.&lt;/p&gt;\r\n    &lt;h5&gt;Take the\r\n        Right\r\n        Medication&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        In most cases, heart diseases are also related to the use of drugs. So, it is important that you take medicines\r\n        as\r\n        prescribed by the doctors, or get them altered if necessary.&lt;/p&gt;&lt;h5&gt;Moderate Alcohol&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Drinking alcohol in moderate amounts does not harm the body. In fact, some studies show that moderate consumption\r\n       provides some benefits for the heart. However, the habit of drinking is analogous to walking on thin ice. It is\r\n       not\r\n       difficult for any one to step out of his limit, and become a heavy drinker. So, ensure that either you stick to\r\n       moderate drinking or you don\'t drink at all.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Manage Stress&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Stress has also been known to be one of the common culprits of heart problems. Any stressful\r\n       situation elevates blood pressure and this response takes its toll on the heart. So, keep\r\n       yourself relaxed by practicing meditation, yoga, and other relaxation techniques.&lt;/p&gt;\r\n\r\n    &lt;p&gt;\r\n        To conclude, make a note of the above methods, and keep them handy in case you find it difficult to recall them.\r\n        And\r\n        now I would like to take your leave, as I have some sprinting to do! Take care!&lt;/p&gt;', '', ''),
(212, 1, 2, 'Establishing Your Brand on College Campuses', '&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;', '', ''),
(211, 1, 1, 'Establishing Your Brand on College Campuses', '&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;', '', ''),
(214, 2, 1, 'Believe in the Business of Your Dreams', '&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;', '', ''),
(226, 4, 1, 'Beautiful Rumi Quotes that are Worth Reading', '&lt;p&gt;Rumi, is the most popular Sufi poet in the world. His work is not only deep and intense, but also very ethereal. His poetry often stirs an emotion never touched and shows a facet never seen. This Buzzle article has a collection of some beautiful Rumi quotes that are worth reading, without which, life would literally feel quite disregarded.&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;&lt;p&gt;&quot;As you start to walk on the way, the way appears.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Let yourself be silently drawn by the strange pull of what you really love. It will not lead you astray.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Two there are who are never satisfied -- the lover of the world and the lover of knowledge.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;What you seek is seeking you.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t be satisfied with stories, how things have gone with others. Unfold your own myth.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Raise your words, not voice. It is rain that grows flowers, not thunder.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;You are not a drop in the ocean. You are the entire ocean in a drop.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Do you know what you are? You are a manuscript oƒ a divine letter. You are a mirror reflecting a noble face. This universe is not outside of you. Look inside yourself; everything that you want, you are already that.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t grieve. Anything you lose comes round in another form.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.&quot;\r\n&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Stop acting so small. You are the universe in ecstatic motion.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Start a huge, foolish project, like Noah...it makes absolutely no difference what people think of you.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;When you go through a hard period, when everything seems to oppose you, ... When you feel you cannot even bear one more minute, NEVER GIVE UP! Because it is the time and place that the course will divert!&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;', '', '');
INSERT INTO `oc_simple_blog_article_description` (`simple_blog_article_description_id`, `simple_blog_article_id`, `language_id`, `article_title`, `description`, `meta_description`, `meta_keyword`) VALUES
(229, 5, 1, 'How to Keep Your Heart Healthy', '&lt;p&gt;So how to keep your heart healthy? With so many heart diseases on the rise, most health-conscious people strive\r\n       to\r\n       seek the answer to this question. This article attempts to help you find the answer.&lt;/p&gt;\r\n    &lt;h5&gt;Go Green&lt;/h5&gt;\r\n\r\n    &lt;p&gt;When we speak of heart, we cannot miss out on the importance and benefits of plant foods. Vegetables are an\r\n       excellent source of glutamic acid. It is a class of amino acid which helps keeping blood pressure at lower\r\n       levels; safe levels, so to say. What\'s more? Veggies lack cholesterol, fat and even calories, which otherwise\r\n       tend to be the common culprits for causing heart diseases. Not to mention, the amount of vitamins and minerals\r\n       that vegetables provide to the body do the most for health.\r\n\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Be Active&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Without the aid of daily exercise, maintaining a good overall health is just more than a daunting task. Exercises\r\n       not\r\n       only improve heart function, but also help in bringing down blood pressure, and cholesterol levels in the body. A\r\n       mere 30 minutes stroll daily does good for the heart, if not much. It is recommended that sprinting is more\r\n       beneficial for the heart, than jogging.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Reduce Oil&lt;/h5&gt;\r\n\r\n    &lt;p&gt;The next tip is about keeping oil from your diet. Although, you cannot avoid oil completely,\r\n       you can keep its consumption to a small amount. Oils are a storehouse of calories and contain\r\n       little nutrition. As they mostly comprise fat, they have all chances to lead to the\r\n       development of plaque in the arteries thus, giving rise to some nasty heart problems. However,\r\n       not all types of oil are unhealthy. Fish oil contains omega-3 fatty acids, which not only help\r\n       in preventing cardiovascular diseases, but also reduce instances of heart attack. According to\r\n       a study published in the Journal of the American College of Cardiology, a group of patients\r\n       with cardiovascular disease had 30% less likelihood of heart attack because of omega-3 fatty\r\n       acids. Best sources include salmon, mackerel and herring. Flaxseed, walnuts, and soybeans are\r\n       also good sources.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Cut the Smoke&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If you think you cannot shun the habit of smoking, then you might as well know that you\r\n       cannot do anything good for your heart. One of the most severe risks of smoking relates to\r\n       heart diseases in almost every smoker. Quit smoking, and you have done half the job in\r\n       keeping your heart healthy!&lt;/p&gt;\r\n    &lt;h5&gt;Lose Weight&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If your figure is slim, and belly\r\n       flat, then you may have less things\r\n       to worry about heart diseases. I am\r\n       talking about weight loss. Being\r\n       overweight puts extra load on the\r\n       heart thus, increases the risk of\r\n       heart conditions. So, consume less\r\n       sugary foods and more of fiber and\r\n       complex carbohydrates, and fruits and\r\n       vegetables. Maintaining a healthy\r\n       weight is one of the basic\r\n       necessities for a healthy heart\r\n       today.&lt;/p&gt;\r\n    &lt;h5&gt;Add More Fiber&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        Fiber exists in two major groups; soluble (dissolves in water) and insoluble (does not dissolve in water).\r\n        Although\r\n        both the types are beneficial to health, it is the former type that does way better to reduce cholesterol levels\r\n        in\r\n        the body. Due to its soluble nature, it binds with the cholesterol in the intestines thus, keep it from being\r\n        absorbed. This keeps the level of LDL and total cholesterol down, while not affecting the HDL cholesterol level\r\n        in\r\n        any way. All a healthy person requires is a serving of 5 to 10 grams or more of soluble fiber in a day to avail\r\n        this\r\n        benefit of low cholesterol. Foods rich in this fiber include apples, peas, kidney beans, prunes, etc.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Beware of Saturated Fats&lt;/h5&gt;\r\n\r\n    &lt;p&gt;It is important that you limit the amount of saturated and trans fats you consume\r\n       from your food. These spike cholesterol levels in the body thus, increasing the risk\r\n       of coronary artery disease. So avoid or limit consumption of food such as red meat,\r\n       dairy products, coconut oil, palm oil. These are rich in saturated fatty acids. To\r\n       avoid trans fats, eat less of fast foods, bakery products, snacks, crackers, and\r\n       margarines. Go for foods rich in healthy fats such as polyunsaturated and\r\n       monounsaturated fats.&lt;/p&gt;\r\n    &lt;h5&gt;Eat Less Salt&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Sodium is good for the body, but\r\n       in petty amounts. High salt intake\r\n       means high blood pressure, which\r\n       eventually points out to heart\r\n       conditions. When sodium starts\r\n       accumulating in the blood, it\r\n       attracts water which in turn,\r\n       increases the blood volume. Now to\r\n       keep this blood circulating\r\n       through the blood vessels, the\r\n       heart has to work harder thus,\r\n       causing high blood pressure. The\r\n       recommended amount of sodium in\r\n       the food per day must be less than\r\n       2300 milligrams.&lt;/p&gt;\r\n    &lt;h5&gt;Take the\r\n        Right\r\n        Medication&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        In most cases, heart diseases are also related to the use of drugs. So, it is important that you take medicines\r\n        as\r\n        prescribed by the doctors, or get them altered if necessary.&lt;/p&gt;&lt;h5&gt;Moderate Alcohol&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Drinking alcohol in moderate amounts does not harm the body. In fact, some studies show that moderate consumption\r\n       provides some benefits for the heart. However, the habit of drinking is analogous to walking on thin ice. It is\r\n       not\r\n       difficult for any one to step out of his limit, and become a heavy drinker. So, ensure that either you stick to\r\n       moderate drinking or you don\'t drink at all.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Manage Stress&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Stress has also been known to be one of the common culprits of heart problems. Any stressful\r\n       situation elevates blood pressure and this response takes its toll on the heart. So, keep\r\n       yourself relaxed by practicing meditation, yoga, and other relaxation techniques.&lt;/p&gt;\r\n\r\n    &lt;p&gt;\r\n        To conclude, make a note of the above methods, and keep them handy in case you find it difficult to recall them.\r\n        And\r\n        now I would like to take your leave, as I have some sprinting to do! Take care!&lt;/p&gt;', '', ''),
(238, 8, 1, '5 Most Common Mistakes New Managers Make', '&lt;p&gt;Learn which five most common mistakes a new manager is likely to make, and how to avoid them.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No.1 - Who\'s the Boss?&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;Some of your subordinates will be young and new, eager to follow you. But, the experienced ones might be more\r\n       resistant to your directives. especially if it comes across as an order, disregarding their experience or\r\n       suggestions. Though, being the one with the responsibility, you also need to assert your authority, and make sure\r\n       your employees respect you and follow you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Your subordinates have a working style of their own, and it will not work well to dictate your ways on them. Stay\r\n       cool as long as they are committed to the work, compliance is another matter. Set targets and deadlines, but do\r\n       not interfere in their work, especially if they are long-standing employees in the company, even though you are\r\n       the one in the upper position.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 2 - I Want to Be the Cool Guy&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;While understanding your subordinates\' viewpoint and respecting their opinions is important, it is another thing\r\n       if you are letting them run the show or take it easy. It is you, after all, who will have to explain things when\r\n       the performance falls.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Everyone hates to be the bad guy, that too, when you are new. But you have to find a balance between\r\n       micromanaging and giving no direction at all. Keep your mind open for suggestions, listen to everyone, but\r\n       ultimately you have to decide on the final direction your team/company takes. Also, do not excuse any slack\r\n       behavior. Tardiness or frequent leaves should not be taken lightly.&lt;/p&gt;\r\n\r\n\r\n    &lt;h5&gt;Mistake No. 3 - Setting Uniform, Inflexible Rules&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;If an employee is frequently late or absent, take him/her to task, but first, do understand the reasons behind\r\n       this issue. Some of them might be suffering from a health condition, or they might have a sick relative at home.\r\n       Same goes for other aspects of the job too.\r\n       While focusing on performance and target, it is easy to forget that you are dealing with people - not processes\r\n       or software which are programmed to run in a certain way. &lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Understand that every employee is different, and will respond differently to authority or pressure. Rather than\r\n       take offense, it is best to find a way around.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 4 - Not Being Clear With Instructions&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;A few months? What exactly do you mean by few - is it two or six? As the planner, you might have a clear, precise\r\n       idea of what you want. But you also need to convey that to your subordinates. Being too vague can leave them\r\n       confused and lose trust in you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Make a clear, concise, and precise guideline. Give the employees fixed goals and targets. Numbers, not\r\n       approximates. They need to have a proper idea of how their performance will be measured, to stay motivated and\r\n       work efficiently and smartly.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 5 - Overestimating Yourself and Your Team&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;New managers are often eager and overenthusiastic. Free from the crutches of their B-school or the restrictions\r\n       of their previous job, they want to prove a lot. Brimming with new ideas, they just can\'t wait to implement them\r\n       and the processes that they learned. They want to bring about a positive change, and fast.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;This enthusiasm is very infectious, affecting the entire team, resulting in a boost in productivity and morale.\r\n       But, unfortunately, it also means that the goals they set are also unrealistically high. Other employees may take\r\n       time adjusting to the sudden changes a new manager and his new processes demand. Add to that, they both will need\r\n       to be perfected and tweaked till you get the expected results. So, set realistic goals, and accept that the new\r\n       processes might also result in losses.&lt;/p&gt;', '', ''),
(252, 10, 3, 'GUIDE TO MUSCADINE WINE', '&lt;p&gt;Muscadine wines are not your typical popular wine for a dinner. But why? As we delved into \r\nunderstanding one of America’s true native wine grapes, we realized that \r\nMuscadine grapes (including Scuppernongs) are uniquely amazing, \r\ndesired for their incredible super.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;   ', '   ', ''),
(250, 10, 1, 'GUIDE TO MUSCADINE WINE', '&lt;p&gt;Muscadine wines are not your typical popular wine for a dinner. But why? As we delved into \r\nunderstanding one of America’s true native wine grapes, we realized that \r\nMuscadine grapes (including Scuppernongs) are uniquely amazing, \r\ndesired for their incredible super.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;   ', '   ', ''),
(251, 10, 2, 'GUIDE TO MUSCADINE WINE', '&lt;p&gt;Muscadine wines are not your typical popular wine for a dinner. But why? As we delved into \r\nunderstanding one of America’s true native wine grapes, we realized that \r\nMuscadine grapes (including Scuppernongs) are uniquely amazing, \r\ndesired for their incredible super.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;   ', '   ', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_description_additional`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_description_additional`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_description_additional` (
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `additional_description` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_article_description_additional`
--

INSERT INTO `oc_simple_blog_article_description_additional` (`simple_blog_article_id`, `language_id`, `additional_description`) VALUES
(3, 2, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto beatae consectetur ducimus esse necessitatibus quisquam rerum velit voluptas voluptates!&lt;/p&gt;'),
(3, 1, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto beatae consectetur ducimus esse necessitatibus quisquam rerum velit voluptas voluptates!&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_product_related`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_product_related`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_product_related` (
  `simple_blog_article_id` int(16) NOT NULL,
  `product_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_to_category`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_category`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_category` (
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_category_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_article_to_category`
--

INSERT INTO `oc_simple_blog_article_to_category` (`simple_blog_article_id`, `simple_blog_category_id`) VALUES
(2, 2),
(4, 4),
(4, 2),
(6, 2),
(6, 1),
(3, 2),
(7, 4),
(7, 3),
(8, 4),
(8, 1),
(9, 4),
(9, 2),
(9, 1),
(5, 2),
(5, 3),
(1, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_to_layout`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_layout` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_to_store`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_store`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_store` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_article_to_store`
--

INSERT INTO `oc_simple_blog_article_to_store` (`simple_blog_article_id`, `store_id`) VALUES
(2, 0),
(4, 0),
(6, 0),
(3, 0),
(7, 0),
(8, 0),
(9, 0),
(5, 0),
(1, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_author`
--

DROP TABLE IF EXISTS `oc_simple_blog_author`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_author` (
  `simple_blog_author_id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `image` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_author`
--

INSERT INTO `oc_simple_blog_author` (`simple_blog_author_id`, `name`, `image`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Jessica Prinston', 'catalog/avatar.jpg', 1, '2015-09-16 17:26:04', '2015-09-29 17:51:00'),
(2, 'Sam Kromstain', 'catalog/avatar.jpg', 1, '2015-09-17 10:26:40', '2015-09-29 17:52:05'),
(3, 'Robert Johnson', 'catalog/avatar.jpg', 1, '2015-09-21 16:32:38', '2015-09-29 17:51:32'),
(4, 'Edna Barton', 'catalog/avatar.jpg', 1, '2015-09-21 16:34:45', '2015-09-29 17:52:34');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_author_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_author_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_author_description` (
  `simple_blog_author_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_author_description`
--

INSERT INTO `oc_simple_blog_author_description` (`simple_blog_author_description_id`, `simple_blog_author_id`, `language_id`, `description`, `meta_description`, `meta_keyword`, `date_added`) VALUES
(34, 1, 1, '&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(35, 1, 2, '&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(40, 2, 1, '&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(41, 2, 2, '&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(37, 3, 1, '&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(38, 3, 2, '&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(43, 4, 1, '&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(44, 4, 2, '&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_category`
--

DROP TABLE IF EXISTS `oc_simple_blog_category`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category` (
  `simple_blog_category_id` int(16) NOT NULL AUTO_INCREMENT,
  `image` mediumtext NOT NULL,
  `parent_id` int(16) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `blog_category_column` int(16) NOT NULL,
  `column` int(8) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_category`
--

INSERT INTO `oc_simple_blog_category` (`simple_blog_category_id`, `image`, `parent_id`, `top`, `blog_category_column`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, '', 0, 1, 0, 3, 0, 1, '2015-09-16 17:23:22', '2016-04-15 15:55:44'),
(2, 'catalog/product-1.png', 0, 1, 0, 5, 2, 1, '2015-09-17 10:24:12', '2016-04-15 15:56:04'),
(3, '', 0, 1, 0, 5, 1, 1, '2015-09-21 16:44:25', '2016-04-15 15:55:52'),
(4, '', 0, 1, 0, 5, 3, 1, '2015-09-28 17:06:19', '2016-04-15 15:56:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_category_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_description` (
  `simple_blog_category_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_category_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_category_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_category_description`
--

INSERT INTO `oc_simple_blog_category_description` (`simple_blog_category_description_id`, `simple_blog_category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(68, 2, 2, 'Customer Service', '', '', ''),
(67, 2, 1, 'Customer Service', '', '', ''),
(71, 4, 2, 'Management', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(70, 4, 1, 'Management', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(65, 3, 2, 'Consulting', '', '', ''),
(64, 3, 1, 'Consulting', '&lt;br&gt;', '', ''),
(62, 1, 2, 'Branding', '', '', ''),
(61, 1, 1, 'Branding', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_category_to_layout`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_to_layout` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_category_to_store`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_to_store`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_to_store` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_category_to_store`
--

INSERT INTO `oc_simple_blog_category_to_store` (`simple_blog_category_id`, `store_id`) VALUES
(2, 0),
(3, 0),
(1, 0),
(4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_comment`
--

DROP TABLE IF EXISTS `oc_simple_blog_comment`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_comment` (
  `simple_blog_comment_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_reply_id` int(16) NOT NULL,
  `author` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_comment`
--

INSERT INTO `oc_simple_blog_comment` (`simple_blog_comment_id`, `simple_blog_article_id`, `simple_blog_article_reply_id`, `author`, `comment`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 0, 'Bernard Show', 'That’s awesome! Future belongs to youngsters, so businessmen can’t ignore their needs in any case.', 1, '2015-09-17 10:05:35', '2015-09-28 17:18:32'),
(16, 2, 0, 'Max Harris', 'Will try to repeat your mantras every day. Hopefully they will help in my current project.', 1, '2015-09-28 17:20:59', '2015-09-28 17:20:59'),
(2, 3, 0, 'Zack Hernandez', 'The success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot; – very true to life statement', 1, '2015-09-18 11:39:25', '2015-09-28 17:19:38'),
(3, 3, 0, 'James Anderson', ' I am thinking of starting my own business and will ponder on the author’s notes. Concise and understandable, good job.', 1, '2015-09-18 11:48:36', '2015-09-28 17:20:05'),
(15, 2, 0, 'Taylor Miller', 'Follow your dream and it will turn to reality. A very inspiring article. Thanks for sharing!', 1, '2015-09-28 17:20:34', '2015-09-28 17:20:34'),
(4, 3, 0, 'Greg Wilson', 'Unbelievable… Three simple guidelines to follow that can change your life. Worth trying out, sure they will work as everything genius is simple.', 1, '2015-09-18 12:08:42', '2015-09-28 17:19:53'),
(6, 1, 0, 'Michael Ventura', 'Completely agree with the author. Modern businessmen should involve young people, introduce brands to them, socialize… Looks like a fresh product market!', 1, '2015-09-21 18:18:56', '2015-09-28 17:18:47'),
(14, 1, 1, 'Sarah Cole', 'The author did a great job with all these research work. Really valuable information, thank you!', 1, '2015-09-28 17:18:32', '2015-09-28 17:18:32'),
(17, 2, 0, 'Sidney Garcia', 'I thought I am just a dreamer, but now I know how to become a doer. That’s cool, appreciate it!', 1, '2015-09-28 17:21:18', '2015-09-28 17:21:18'),
(18, 4, 0, 'Joe Lee', 'Very inspiring! So much wisdom in simple words…', 1, '2015-10-13 12:37:35', '2015-10-13 14:27:08'),
(19, 4, 0, 'Kate Taylor', 'Love this poet! Absolutely brilliant quotes!', 1, '2015-10-13 12:37:45', '2015-10-13 14:27:02'),
(20, 4, 0, 'Kim Martin', 'He is phenomenal! Rumi is considered to be the most popular poet in America.', 1, '2015-10-13 12:37:54', '2015-10-13 14:26:57'),
(21, 5, 0, 'Rob Gonzalez', 'Thanks for your pieces of advice. Will try to stick to them.', 1, '2015-10-13 12:56:02', '2015-10-13 14:26:52'),
(22, 5, 0, 'Paul Young', 'Gosh! I have been slowly damaging my heart all these years! It’s time to stop ruining myself.', 1, '2015-10-13 12:56:12', '2015-10-13 14:26:47'),
(23, 5, 0, 'Sandy Hill', 'Human life is the most precious thing in this world. It’s really time to stop committing lazy suicides.', 1, '2015-10-13 12:56:22', '2015-10-13 14:26:41'),
(24, 6, 0, 'Libi Ramirez', 'Communication is the process of exchanging information in the form of messages, symbols, thoughts, signs, and opinions. It’s utterly important for such social beings like people', 1, '2015-10-13 13:01:26', '2015-10-13 14:26:35'),
(25, 6, 0, 'Kirsten Evans', 'Indeed, it would be extremely hard to imagine a world without some form of interpersonal interaction.', 1, '2015-10-13 13:01:32', '2015-10-13 14:26:30'),
(26, 6, 0, 'Brook Murphy', 'Some of the basic ways by which we communicate with one another is through speech, sign language, body language, touch, and eye contact. So, waiting for the sequel of your post.\r\n', 1, '2015-10-13 13:01:40', '2015-10-13 14:26:25'),
(27, 7, 0, 'Ashley Cooper', 'Now I know what colors to choose for me office, thank you!', 1, '2015-10-13 13:05:32', '2015-10-13 14:26:21'),
(28, 7, 0, 'Gomez Bell', 'The repairing does not seem that challenging any more. Great tips!', 1, '2015-10-13 13:05:39', '2015-10-13 14:26:16'),
(29, 7, 0, 'Morgan Cook', 'Colors that stimulate the employees, relax the customers and make them feel welcome… Cool! That’s a dream!', 1, '2015-10-13 13:05:45', '2015-10-13 14:26:10'),
(30, 8, 0, 'Nancy Long', 'Thanks for sharing! Will try to avoid the listed mistakes.', 1, '2015-10-13 14:16:59', '2015-10-13 14:26:06'),
(31, 8, 0, 'Eva Reed', 'I wish I’ve read this article earlier… Useful tips for all young managers.', 1, '2015-10-13 14:17:05', '2015-10-13 14:23:53'),
(32, 8, 0, 'Betty Butler', 'Just got my new position. The discussed matter is really urgent for me.', 1, '2015-10-13 14:17:14', '2015-10-13 14:23:48'),
(33, 9, 0, 'Melany Wood', 'Smile, the depression will think you are an idiot and go away', 1, '2015-10-13 14:22:47', '2015-10-13 14:23:26'),
(34, 9, 0, 'York Cruz', 'BTW, your smiling face looks much more appealing and beautiful too.', 1, '2015-10-13 14:22:56', '2015-10-13 14:23:20'),
(35, 9, 0, 'Vivien Foster', 'I like to spread my laughter around as it\'s contagious', 1, '2015-10-13 14:23:05', '2015-10-13 14:23:16'),
(36, 10, 0, 'Mark Jenkins', 'You’ve raised an important topic. Hopefully many people will at least consider shifting to green life.', 1, '2015-10-13 15:31:41', '2016-08-11 18:43:36'),
(37, 10, 0, 'Dudley Diaz', 'Going green turned out to be really simple. Let’s go green, guys!', 1, '2015-10-13 15:31:51', '2015-10-13 15:32:13'),
(38, 10, 0, 'Meril Ward', 'Preserving our planet for future generation is a necessity. So, go green now while it’s not too late.\r\n', 1, '2015-10-13 15:31:58', '2015-10-13 15:32:08');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_related_article`
--

DROP TABLE IF EXISTS `oc_simple_blog_related_article`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_related_article` (
  `simple_blog_related_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_related_id` int(16) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_related_article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_related_article`
--

INSERT INTO `oc_simple_blog_related_article` (`simple_blog_related_article_id`, `simple_blog_article_id`, `simple_blog_article_related_id`, `sort_order`, `status`, `date_added`) VALUES
(39, 2, 1, 0, 1, '2016-04-15 15:52:44'),
(46, 4, 1, 0, 1, '2016-04-15 15:53:37'),
(45, 3, 2, 1, 1, '2016-04-15 15:53:23'),
(44, 3, 1, 2, 1, '2016-04-15 15:53:23'),
(38, 1, 7, 0, 1, '2016-04-15 15:52:32');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_view`
--

DROP TABLE IF EXISTS `oc_simple_blog_view`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_view` (
  `simple_blog_view_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `view` int(16) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_view_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_view`
--

INSERT INTO `oc_simple_blog_view` (`simple_blog_view_id`, `simple_blog_article_id`, `view`, `date_added`, `date_modified`) VALUES
(1, 1, 82, '2015-09-16 18:15:21', '2017-12-19 17:53:13'),
(2, 3, 189, '2015-09-17 10:28:27', '2016-04-15 15:57:10'),
(3, 2, 7, '2015-09-21 16:08:28', '2016-03-16 16:47:17'),
(10, 6, 11, '2015-09-29 10:44:23', '2017-08-21 17:24:42'),
(5, 7, 12, '2015-09-21 17:30:47', '2016-03-16 16:28:17'),
(6, 5, 25, '2015-09-21 17:53:05', '2017-08-23 17:21:55'),
(7, 8, 29, '2015-09-22 12:42:49', '2016-08-12 19:49:19'),
(8, 4, 12, '2015-09-23 17:59:14', '2016-03-16 16:42:28'),
(9, 9, 19, '2015-09-25 17:55:16', '2017-12-19 17:52:21'),
(11, 10, 30, '2015-10-13 15:31:30', '2017-09-18 15:57:07');
COMMIT;
