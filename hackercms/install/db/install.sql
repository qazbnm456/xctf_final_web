#
# TABLE STRUCTURE FOR: hack_article
#

DROP TABLE IF EXISTS hack_article;

CREATE TABLE `hack_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `copyfrom` varchar(100) NOT NULL,
  `fromlink` varchar(200) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `isbold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `realhits` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `puttime` int(10) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(20) NOT NULL,
  `listorder` int(10) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`),
  KEY `recommend` (`recommends`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;


#
# TABLE STRUCTURE FOR: hack_ask
#

DROP TABLE IF EXISTS hack_ask;

CREATE TABLE `hack_ask` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `isbold` tinyint(1) NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `realhits` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `puttime` int(10) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(20) NOT NULL,
  `listorder` int(10) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`),
  KEY `recommend` (`recommends`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


#
# TABLE STRUCTURE FOR: hack_category
#

DROP TABLE IF EXISTS hack_category;

CREATE TABLE `hack_category` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lft` mediumint(9) unsigned NOT NULL,
  `rht` mediumint(9) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `isexternal` tinyint(1) NOT NULL DEFAULT '0',
  `externalurl` varchar(255) NOT NULL,
  `target` varchar(10) NOT NULL DEFAULT '_self',
  `dir` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model` varchar(20) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `color` char(7) NOT NULL,
  `tpllist` varchar(20) NOT NULL,
  `tpldetail` varchar(20) NOT NULL,
  `pagesize` tinyint(4) unsigned NOT NULL,
  `isnavigation` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isdisabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(4) unsigned NOT NULL DEFAULT '99',
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  KEY `lang` (`lang`),
  KEY `dir` (`dir`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;


INSERT INTO hack_category (`id`, `parent`, `lft`, `rht`, `name`, `isexternal`, `externalurl`, `target`, `dir`, `title`, `keywords`, `description`, `model`, `thumb`, `content`, `color`, `tpllist`, `tpldetail`, `pagesize`, `isnavigation`, `isdisabled`, `listorder`, `lang`) VALUES (15, 0, 1, 6, 'Product', 0, '', '_self', 'product', '', '', '', 'product', '', '', '', '', '', 0, 1, 0, 99, 'en');
INSERT INTO hack_category (`id`, `parent`, `lft`, `rht`, `name`, `isexternal`, `externalurl`, `target`, `dir`, `title`, `keywords`, `description`, `model`, `thumb`, `content`, `color`, `tpllist`, `tpldetail`, `pagesize`, `isnavigation`, `isdisabled`, `listorder`, `lang`) VALUES (16, 15, 2, 3, 'Special Package', 0, '', '_self', 'youhui', '', '', '', 'product', '', '', '', '', '', 0, 1, 0, 99, 'en');
INSERT INTO hack_category (`id`, `parent`, `lft`, `rht`, `name`, `isexternal`, `externalurl`, `target`, `dir`, `title`, `keywords`, `description`, `model`, `thumb`, `content`, `color`, `tpllist`, `tpldetail`, `pagesize`, `isnavigation`, `isdisabled`, `listorder`, `lang`) VALUES (17, 15, 4, 5, 'Products and service', 0, '', '_self', 'fuwu', '', '', '', 'product', '', '', '', '', '', 0, 1, 0, 99, 'en');
INSERT INTO hack_category (`id`, `parent`, `lft`, `rht`, `name`, `isexternal`, `externalurl`, `target`, `dir`, `title`, `keywords`, `description`, `model`, `thumb`, `content`, `color`, `tpllist`, `tpldetail`, `pagesize`, `isnavigation`, `isdisabled`, `listorder`, `lang`) VALUES (18, 0, 7, 8, 'News', 0, '', '_self', 'news', '', '', '', 'article', '', '', '', '', '', 0, 1, 0, 99, 'en');
INSERT INTO hack_category (`id`, `parent`, `lft`, `rht`, `name`, `isexternal`, `externalurl`, `target`, `dir`, `title`, `keywords`, `description`, `model`, `thumb`, `content`, `color`, `tpllist`, `tpldetail`, `pagesize`, `isnavigation`, `isdisabled`, `listorder`, `lang`) VALUES (19, 0, 9, 10, 'Down', 0, '', '_self', 'down', '', '', '', 'down', '', '', '', '', '', 0, 1, 0, 99, 'en');
INSERT INTO hack_category (`id`, `parent`, `lft`, `rht`, `name`, `isexternal`, `externalurl`, `target`, `dir`, `title`, `keywords`, `description`, `model`, `thumb`, `content`, `color`, `tpllist`, `tpldetail`, `pagesize`, `isnavigation`, `isdisabled`, `listorder`, `lang`) VALUES (20, 0, 11, 12, 'Recruitment', 0, '', '_self', 'hr', '', '', '', 'hr', '', '', '', '', '', 0, 1, 0, 99, 'en');
INSERT INTO hack_category (`id`, `parent`, `lft`, `rht`, `name`, `isexternal`, `externalurl`, `target`, `dir`, `title`, `keywords`, `description`, `model`, `thumb`, `content`, `color`, `tpllist`, `tpldetail`, `pagesize`, `isnavigation`, `isdisabled`, `listorder`, `lang`) VALUES (21, 0, 13, 14, 'Ask', 0, '', '_self', 'ask', '', '', '', 'ask', '', '', '', '', '', 0, 1, 0, 99, 'en');
INSERT INTO hack_category (`id`, `parent`, `lft`, `rht`, `name`, `isexternal`, `externalurl`, `target`, `dir`, `title`, `keywords`, `description`, `model`, `thumb`, `content`, `color`, `tpllist`, `tpldetail`, `pagesize`, `isnavigation`, `isdisabled`, `listorder`, `lang`) VALUES (22, 0, 15, 16, 'Guestbook', 0, '', '_self', 'guestbook', '', '', '', 'guestbook', '', '', '', '', '', 0, 1, 0, 99, 'en');
INSERT INTO hack_category (`id`, `parent`, `lft`, `rht`, `name`, `isexternal`, `externalurl`, `target`, `dir`, `title`, `keywords`, `description`, `model`, `thumb`, `content`, `color`, `tpllist`, `tpldetail`, `pagesize`, `isnavigation`, `isdisabled`, `listorder`, `lang`) VALUES (23, 0, 17, 18, 'About us', 0, '', '_self', 'aboutus', '', '', '', 'page', '', 'aboutus', '', '', '', 0, 1, 0, 99, 'en');


#
# TABLE STRUCTURE FOR: hack_config
#

DROP TABLE IF EXISTS hack_config;

CREATE TABLE `hack_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `category` char(10) NOT NULL,
  `value` text NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `varname` (`varname`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;


INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (9, 'site_name', '', 'base', 'Hacker technology', 1, 'en');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (10, 'site_title', '', 'base', 'HACKERCMS is a platform', 1, 'en');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (11, 'site_keywords', '', 'base', 'HACKERCMS, website management system', 1, 'en');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (12, 'site_description', '', 'base', '', 1, 'en');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (13, 'site_code', '', 'base', '', 1, 'en');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (14, 'site_logo', '', 'base', 'images/logo.png', 1, 'en');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (15, 'site_template', '', 'base', 'default', 1, 'en');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (34, 'water_type', '', 'attr', '2', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (33, 'attr_allowtype', '', 'attr', '', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (32, 'attr_maxsize', '', 'attr', '200', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (23, 'site_home', '', 'base', '', 1, 'en');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (26, 'smtp_host', '', 'mail', '', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (27, 'smtp_user', '', 'mail', '', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (28, 'smtp_pass', '', 'mail', '', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (29, 'smtp_port', '', 'mail', '', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (30, 'smtp_sendmail', '', 'mail', '', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (31, 'mail_type', '', 'mail', 'sendmail', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (35, 'water_text_value', '', 'attr', 'Powered by HACKERCMS', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (36, 'water_text_size', '', 'attr', '24', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (37, 'water_text_color', '', 'attr', '#990000', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (38, 'water_text_font', '', 'attr', '', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (39, 'water_minwidth', '', 'attr', '200', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (40, 'water_minheight', '', 'attr', '100', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (41, 'water_padding', '', 'attr', '-20', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (42, 'water_opacity', '', 'attr', '10', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (43, 'water_quality', '', 'attr', '100', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (44, 'water_position', '', 'attr', 'bottomright', 1, '0');
INSERT INTO hack_config (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES (45, 'water_image_path', '', 'attr', 'data/attachment/image/water.png', 1, '0');


#
# TABLE STRUCTURE FOR: hack_down
#

DROP TABLE IF EXISTS hack_down;

CREATE TABLE `hack_down` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `attrurl` varchar(100) NOT NULL,
  `attrname` varchar(100) NOT NULL,
  `isbold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `realhits` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `puttime` int(10) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(20) NOT NULL,
  `listorder` int(10) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`),
  KEY `recommend` (`recommends`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



#
# TABLE STRUCTURE FOR: hack_fragment
#

DROP TABLE IF EXISTS hack_fragment;

CREATE TABLE `hack_fragment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `varname` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `remark` mediumtext NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


#
# TABLE STRUCTURE FOR: hack_guestbook
#

DROP TABLE IF EXISTS hack_guestbook;

CREATE TABLE `hack_guestbook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `replyuid` int(10) unsigned NOT NULL DEFAULT '0',
  `author` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` mediumint(9) NOT NULL DEFAULT '999',
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

INSERT INTO hack_guestbook (`id`, `category`, `title`, `uid`, `replyuid`, `author`, `email`, `phone`, `description`, `content`, `createtime`, `replytime`, `status`, `listorder`, `lang`) VALUES (41, 22, '33', 1, 1, '333', '33@qq.com', '', '', '12341234', 1361264204, 1361264212, 0, 999, 'en');


#
# TABLE STRUCTURE FOR: hack_hr
#

DROP TABLE IF EXISTS hack_hr;

CREATE TABLE `hack_hr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `num` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `isbold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `realhits` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `puttime` int(10) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(20) NOT NULL,
  `listorder` int(10) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`),
  KEY `recommend` (`recommends`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# TABLE STRUCTURE FOR: hack_keywords
#

DROP TABLE IF EXISTS hack_keywords;

CREATE TABLE `hack_keywords` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `listorder` int(3) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



#
# TABLE STRUCTURE FOR: hack_lang
#

DROP TABLE IF EXISTS hack_lang;

CREATE TABLE `hack_lang` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `varname` varchar(20) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `listorder` tinyint(4) unsigned NOT NULL DEFAULT '99',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO hack_lang (`id`, `title`, `varname`, `icon`, `listorder`, `status`) VALUES (2, 'English', 'en', 'data/language/en/en.gif', 2, 1);


#
# TABLE STRUCTURE FOR: hack_link
#

DROP TABLE IF EXISTS hack_link;

CREATE TABLE `hack_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` mediumint(8) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `remark` mediumtext NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(3) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `category` (`type`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# TABLE STRUCTURE FOR: hack_model
#

DROP TABLE IF EXISTS hack_model;

CREATE TABLE `hack_model` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL,
  `listorder` tinyint(4) unsigned NOT NULL DEFAULT '99',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isrecommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO hack_model (`id`, `varname`, `listorder`, `issearch`, `isrecommend`, `status`) VALUES (1, 'article', 99, 1, 1, 1);
INSERT INTO hack_model (`id`, `varname`, `listorder`, `issearch`, `isrecommend`, `status`) VALUES (2, 'product', 99, 1, 1, 1);
INSERT INTO hack_model (`id`, `varname`, `listorder`, `issearch`, `isrecommend`, `status`) VALUES (3, 'down', 99, 1, 1, 1);
INSERT INTO hack_model (`id`, `varname`, `listorder`, `issearch`, `isrecommend`, `status`) VALUES (4, 'page', 99, 0, 0, 1);
INSERT INTO hack_model (`id`, `varname`, `listorder`, `issearch`, `isrecommend`, `status`) VALUES (5, 'hr', 99, 1, 1, 1);
INSERT INTO hack_model (`id`, `varname`, `listorder`, `issearch`, `isrecommend`, `status`) VALUES (6, 'ask', 99, 1, 1, 1);
INSERT INTO hack_model (`id`, `varname`, `listorder`, `issearch`, `isrecommend`, `status`) VALUES (7, 'guestbook', 99, 0, 0, 1);


#
# TABLE STRUCTURE FOR: hack_navigation
#

DROP TABLE IF EXISTS hack_navigation;

CREATE TABLE `hack_navigation` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` mediumint(8) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `color` char(7) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `rel` varchar(20) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `listorder` tinyint(4) unsigned NOT NULL DEFAULT '99',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;


#
# TABLE STRUCTURE FOR: hack_online
#

DROP TABLE IF EXISTS hack_online;

CREATE TABLE `hack_online` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `remark` mediumtext NOT NULL,
  `listorder` int(3) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `category` (`type`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;



#
# TABLE STRUCTURE FOR: hack_product
#

DROP TABLE IF EXISTS hack_product;

CREATE TABLE `hack_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `price` float(10,2) unsigned NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `isbold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `realhits` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `puttime` int(10) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(20) NOT NULL,
  `listorder` int(10) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`),
  KEY `recommend` (`recommends`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;



#
# TABLE STRUCTURE FOR: hack_purview
#

DROP TABLE IF EXISTS hack_purview;

CREATE TABLE `hack_purview` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `class` varchar(20) NOT NULL,
  `method` varchar(255) NOT NULL,
  `listorder` tinyint(4) unsigned NOT NULL DEFAULT '99',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (1, 0, 'system', '', 5, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (2, 1, 'purview', 'add,edit,del,order', 1, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (3, 1, 'usergroup', 'add,edit,del,order,grant', 2, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (4, 1, 'user', 'add,edit,del', 3, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (5, 0, 'content', '', 2, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (6, 0, 'module', '', 4, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (7, 0, 'seo', '', 3, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (20, 6, 'type', 'add,edit,del,order', 6, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (9, 6, 'link', 'add,edit,del,order', 2, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (19, 1, 'config', 'add,base,lang,mail,attr,del', 6, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (11, 5, 'article', 'add,edit,del,order', 2, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (14, 5, 'ask', 'add,edit,del,order', 4, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (15, 6, 'slide', 'add,edit,del,order', 1, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (21, 5, 'category', 'add,edit,del,order', 1, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (22, 6, 'navigation', 'add,edit,del,order', 3, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (23, 7, 'tags', 'add,edit,del,order', 1, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (24, 5, 'hr', 'add,edit,del,order', 6, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (25, 5, 'product', 'add,edit,del,order', 3, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (32, 0, 'personal', '', 1, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (28, 7, 'keywords', 'add,edit,del', 2, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (29, 7, 'robots', 'save,restore', 4, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (30, 7, 'htaccess', 'save,restore', 3, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (33, 32, 'adminindex', '', 1, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (34, 32, 'profile', 'save', 3, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (35, 32, 'propass', 'save', 2, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (36, 6, 'fragment', 'add,edit,del', 5, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (37, 1, 'clearcache', '', 12, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (38, 6, 'online', 'add,edit,del,order', 4, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (39, 5, 'down', 'add,edit,del,order', 5, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (40, 1, 'database', 'backup,download,upgrade,optimize,del', 10, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (41, 5, 'guestbook', 'add,edit,del,order', 7, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (42, 1, 'template', 'edit', 11, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (43, 7, 'sitemap', 'generate,download,del', 5, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (51, 1, 'lang', 'add,edit,del,order', 9, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (52, 5, 'model', 'add,edit,del,order', 9, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (53, 5, 'recommend', 'add,edit,del', 8, 1);
INSERT INTO hack_purview (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES (54, 1, 'tpltags', '', 7, 1);


#
# TABLE STRUCTURE FOR: hack_recommend
#

DROP TABLE IF EXISTS hack_recommend;

CREATE TABLE `hack_recommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `model` varchar(20) NOT NULL,
  `remark` mediumtext NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(4) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# TABLE STRUCTURE FOR: hack_sessions
#

DROP TABLE IF EXISTS hack_sessions;

CREATE TABLE `hack_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# TABLE STRUCTURE FOR: hack_slide
#

DROP TABLE IF EXISTS hack_slide;

CREATE TABLE `hack_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` mediumint(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `remark` mediumtext NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(3) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `category` (`type`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



#
# TABLE STRUCTURE FOR: hack_tags
#

DROP TABLE IF EXISTS hack_tags;

CREATE TABLE `hack_tags` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `listorder` mediumint(9) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;


INSERT INTO hack_tags (`id`, `title`, `url`, `listorder`, `status`, `lang`) VALUES (17, 'HACKERCMS', 'HACKERCMS', 99, 1, 'en');


#
# TABLE STRUCTURE FOR: hack_tpltags
#

DROP TABLE IF EXISTS hack_tpltags;

CREATE TABLE `hack_tpltags` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `value` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `listorder` mediumint(9) unsigned NOT NULL DEFAULT '99',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (1, '基本配置标签', 'system', '<?=$config[\'site_name\'];?>', '站点名称。其中site_name为参数，默认参数有：site_name（站点名称）、site_title（站点标题）、site_keywords（站点关键词）、site_description（站点描述）、seo_title（当前页SEO标题）、seo_keywords（当前页SEO关键词）、seo_description（当前页SEO描述）、site_logo（站点logo）、site_template（站点模板文件夹）、site_templateurl（站点模板文件夹路径），这里的参数还包括您自定义的配置，在后台->系统管理->站点设置中查看', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (2, '搜索标签', 'system', '<?=hackercms_search(\'article\',true);?>', '其中有两个参数：参数1：article(默认搜索模型)\r\n参数2:true或者false（是否有下拉选择模型搜索）\r\n其中参数1的模型，后台->系统管理->模型管理中的模型表名，注意，只能填写允许搜索的模型', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (3, '文件路径标签', 'system', '<?=hackercms_path(\'logo.png\');?>', '得到文件的完整路径。其中 logo.png即为参数，相对于系统根目录。', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (4, '网址URL标签', 'system', '<?=hackercms_url(\'news\');?>', '得到页面的完整路径，其中 news 为参数，会生成 http://www.anli.com/demo/index.php?/news', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (5, '语言标签', 'system', '<?php $tmpData = hackercms_lang();?>\r\n<?php foreach($tmpData as $item):?>\r\n<li>\r\n <a href=\"<?=$item[\'url\']?>\">\r\n  <img src=\"<?=$item[\'thumb\']?>\" alt=\"<?=$item[\'title\']?>\"/>\r\n </a>\r\n</li>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = hackercms_lang();?>得到语言数组\r\n<?php foreach($tmpData as $item):?>\r\n循环数据：\r\n<?=$item[\'title\'];?>语言名称\r\n<?=$item[\'thumb\'];?>语言图标\r\n<?=$item[\'url\'];?>该语言首页地址\r\n<?php endforeach;?>', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (6, '网站栏目', 'system', '<?=hackercms_category(0);?>', '其中0为参数，控制栏目显示多少级（0或不填即为显示所有栏目，1只显示顶级栏目2显示两级，以此类推）', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (7, '加载模板', 'system', '<?php $this->load->view($config[\'site_template\'].\'/head\');?>', 'head 为参数，意思是加载head.php（头部）文件，如果为foot即，加载foot.php（底部）文件', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (8, '幻灯标签', 'model', '<?php $tmpData = hackercms_slide(2);?>\r\n<?php foreach($tmpData as $item):?>\r\n<a href=\"<?=$item[\'url\']?>\" target=\"_blank\">\r\n<img src=\"<?=$item[\'thumb\']?>\" alt=\"<?=$item[\'title\']?>\" width=\"640\" height=\"250\" />\r\n</a>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = hackercms_slide(2);?>\r\n取得后台系统管理->类别管理中幻灯分类id为2的所有幻灯数据\r\n<?=$item[\'url\']?> 链接\r\n<?=$item[\'thumb\']?> 图片\r\n<?=$item[\'title\']?> 标题\r\n<?=$item[\'description\']?> 描述', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (9, '面包屑导航', 'seo', '<?=hackercms_location($category,\' > \');?>', '返回当前页面路径，用于除首页、RSS聚合、分类聚合、网站地图之外的其他页面。\r\n两个参数：$category，默认，一般不需要修改； \' > \'两个链接直接的连接符号。\r\n例：文章列表页会生成：首页 > 新闻中心 > 黑客动态\r\n', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (10, '导航标签', 'model', '<?php $tmpData = hackercms_navigation(4);?>\r\n<?php foreach($tmpData as $item):?>\r\n<li><a href=\"<?=$item[\'url\']?>\" <?=$item[\'color\']?>><?=$item[\'title\']?></a></li>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = hackercms_navigation(4);?>\r\n取回导航分类ID为4的所有链接导航\r\n<?=$item[\'url\']?>导航链接\r\n<?=$item[\'color\']?>导航颜色\r\n<?=$item[\'title\']?>导航文字\r\n<?=$item[\'thumb\']?>导航图片', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (11, '内容数据标签', 'content', '<?php $tmpData = hackercms_modellist(\'article\',0,\'default\',7,0);?>\r\n<?php foreach($tmpData as $item):?>\r\n<li>\r\n[<a href=\"<?=$item[\'categoryurl\']?>\"><?=$item[\'categoryname\']?></a>]\r\n<a href=\"<?=$item[\'url\']?>\" style=\"<?=$item[\'color\']?><?=$item[\'isbold\']?>\"><?=$item[\'title\']?></a>\r\n</li>\r\n<?php endforeach;?>\r\n<?php unset($tempData,$item);?>', '<?php $tmpData = hackercms_modellist(\'article\',0,\'default\',7,0);?>\r\n三个参数：1、article(模型，还包括product、ask、hr、down)。2、0（分类栏目ID），如果为0即该模型下所有栏目。3：default（默认排序），puttime(发布时间)、hits(点击量)、id。4：7（显示条数）5：0（包括所有推荐位的数据）或者1（不包含所有推荐位的数据）\r\n<?=$item[\'categoryurl\']?>该条数据的栏目链接\r\n<?=$item[\'categoryname\']?>该条数据的栏目名称\r\n<?=$item[\'url\']?>该条数据的链接\r\n<?=$item[\'title\']?>该条数据的标题\r\n<?=$item[\'color\']?>该条数据的显示颜色\r\n<?=$item[\'isbold\']?>加粗\r\n<?=$item[\'thumb\']?>缩略图\r\n<?=$item[\'puttime\']?>发布时间\r\n<?=$item[\'tagsstr\']?>标签\r\n<?=$item[\'tagsstr\']?>标签\r\n<?=$item[\'oldur\']?>下载链接（只有下载模块，oldurl，直接显示链接）\r\n<?=$item[\'downurl\']?>下载链接（只有下载模块，downurl，经过转义的链接）\r\n<?=$item[\'categorymodel\']?>该条数据所属模型\r\n<?=$item[\'categoryid\']?>该条数据栏目的id', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (12, '推荐位标签', 'content', '<?php $tmpData = hackercms_recommend(1,\'default\',7);?>\r\n<?php foreach($tmpData as $item):?>\r\n<li>\r\n[<a href=\"<?=$item[\'categoryurl\']?>\"><?=$item[\'categoryname\']?></a>]\r\n<a href=\"<?=$item[\'url\']?>\" style=\"<?=$item[\'color\']?><?=$item[\'isbold\']?>\"><?=$item[\'title\']?></a>\r\n</li>\r\n<?php endforeach;?>\r\n<?php unset($tempData,$item);?>', '<?php $tmpData = hackercms_recommend(1,\'default\',7);?>\r\n三个参数：1、1（推荐位ID）。2、default（默认排序），puttime(发布时间)、hits(点击量)、id。3：7（显示条数）\r\n<?=$item[\'categoryurl\']?>该条数据的栏目链接\r\n<?=$item[\'categoryname\']?>该条数据的栏目名称\r\n<?=$item[\'url\']?>该条数据的链接\r\n<?=$item[\'title\']?>该条数据的标题\r\n<?=$item[\'color\']?>该条数据的显示颜色\r\n<?=$item[\'isbold\']?>加粗\r\n<?=$item[\'thumb\']?>缩略图\r\n<?=$item[\'puttime\']?>发布时间\r\n<?=$item[\'tagsstr\']?>标签\r\n<?=$item[\'tagsstr\']?>标签\r\n<?=$item[\'oldur\']?>下载链接（只有下载模块，oldurl，直接显示链接）\r\n<?=$item[\'downurl\']?>下载链接（只有下载模块，downurl，经过转义的链接）\r\n<?=$item[\'categorymodel\']?>该条数据所属模型\r\n<?=$item[\'categoryid\']?>该条数据栏目的id', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (13, '碎片标签', 'model', '<?=hackercms_fragment(\'index_cpjs\')?>', '参数：index_cpjs（碎片变量名称）\r\n显示：该变量名称的值', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (14, '聚合标签', 'seo', '<?php $tmpData = hackercms_tags(5);?>\r\n<?php foreach($tmpData as $item):?>\r\n<a href=\"<?=$item[\'url\']?>\" class=\"font<?=rand(1,10)?>\"><?=$item[\'title\']?></a>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = hackercms_tags(5);?>\r\n取得聚合标签的数据\r\n<?=$item[\'url\']?>标签链接\r\n<?=$item[\'title\']?>标签文字', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (15, '聚合标签数据', 'seo', '<?php $tmpData = hackercms_tagsData(\'article\',$tags,5);?>\r\n<?php foreach($tmpData as $item):?>\r\n<li>[<a href=\"<?=$item[\'categoryurl\']?>\"><?=$item[\'categoryname\']?></a>] \r\n<a href=\"<?=$item[\'url\']?>\" target=\"_blank\"><?=$item[\'title\']?></a>\r\n<span><?=$item[\'puttime\']?></span></li>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = hackercms_tagsData(\'article\',$tags,5);?>\r\n三个参数：1、article（文章模型数据）2、$tags(标签文字，在标签页面，直接使用$tags,如果在其他页面使用，直接输入标签文字)。3、5（显示数据条数）\r\n数据显示，与hackercms_modellist的一样', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (16, '友情链接', 'model', '<?php $tmpData = hackercms_link();?>\r\n<?php foreach($tmpData as $item):?>\r\n<a href=\"<?=$item[\'url\']?>\" target=\"_blank\" title=\"<?=$item[\'description\']?>\"><?=$item[\'title\']?></a>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = hackercms_link(0);?>\r\n取得友情链接数据，参数：0（友情链接分类ID，如果为0或空即显示所有链接）\r\n<?=$item[\'url\']?>链接\r\n<?=$item[\'description\']?>链接描述\r\n<?=$item[\'title\']?>链接文字', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (17, '客服标签', 'model', '<?php $tmpData = hackercms_online();?>\r\n<?php foreach($tmpData as $item):?>\r\n<?=$item[\'type\']?>\r\n<?=$item[\'title\']?>\r\n<?=$item[\'description\']?>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', 'type:客服类型（qq：qq客服、wangwang：旺旺客服、email：邮箱客服、code：纯代码）\r\ntitle：客服文字\r\ndescription：客服号码或者代码', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (18, '栏目左侧分类', 'content', '<?php $tmpData = hackercms_thiscategory($category);?>\r\n<?php foreach ($tmpData as $item): ?>\r\n<li class=\"level<?=$item[\'level\']?><?php if($item[\'id\']==$category[\'id\']):?> active<?php endif;?>\">\r\n<a href=\"<?=$item[\'url\']?>\"><?=$item[\'name\']?></a>\r\n</li>\r\n<?php endforeach; ?>', '只应用于栏目列表页和详情页', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (19, '栏目标签', 'seo', '<?php $tmpData = hackercms_allcategory();?>\r\n<?php foreach ($tmpData as $item): ?>\r\n<li class=\"level<?=$item[\'level\']?>\">\r\n<a href=\"<?=$item[\'url\']?>\"><?=$item[\'name\']?></a>\r\n</li>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '用于站点地图和rss，展示网站所有栏目的链接', 99);
INSERT INTO hack_tpltags (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES (20, '内容相关标签', 'content', '<?php $tmpData = hackercms_related($detail);?>\r\n<?php foreach ($tmpData as $item): ?>\r\n<li><a href=\"<?=$item[\'url\']?>\"><?=$item[\'title\']?></a></li>\r\n<?php endforeach; ?>\r\n<?php unset($tmpData,$item);?>', '用于各栏目详情页，展示当前文章（产品等）相关的信息', 99);


#
# TABLE STRUCTURE FOR: hack_type
#

DROP TABLE IF EXISTS hack_type;

CREATE TABLE `hack_type` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `class` varchar(20) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `listorder` tinyint(4) unsigned NOT NULL DEFAULT '99',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO hack_type (`id`, `title`, `class`, `remark`, `thumb`, `listorder`, `status`, `lang`) VALUES (3, 'Home', 'slide', '', '', 99, 1, 'en');


#
# TABLE STRUCTURE FOR: hack_user
#

DROP TABLE IF EXISTS hack_user;

CREATE TABLE `hack_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `usergroup` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `salt` char(6) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL,
  `realname` varchar(50) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `regip` char(15) NOT NULL,
  `lastip` char(15) NOT NULL,
  `logincount` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `usergroup` (`usergroup`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO hack_user (`id`, `usergroup`, `username`, `password`, `salt`, `email`, `realname`, `sex`, `tel`, `mobile`, `fax`, `address`, `createtime`, `updatetime`, `lasttime`, `regip`, `lastip`, `logincount`, `status`) VALUES (1, 1, 'admin', '5c930a5fd33d879390f56be3c8d9bbc1', 'Z3Orya', 'admin@hackercms.com', '黑客', 1, '', '', '', '', 1335922827, 1357439344, 1362328223, '127.0.0.1', '127.0.0.1', 300, 1);
INSERT INTO hack_user (`id`, `usergroup`, `username`, `password`, `salt`, `email`, `realname`, `sex`, `tel`, `mobile`, `fax`, `address`, `createtime`, `updatetime`, `lasttime`, `regip`, `lastip`, `logincount`, `status`) VALUES (5, 6, 'hackercms', '96405e7edd050381c205182f8efa4db4', 'KPrXla', 'admin@hackercms.com', '黑客', 0, '', '', '', '', 1361287120, 1361287120, 1361326962, '127.0.0.1', '127.0.0.1', 3, 1);


#
# TABLE STRUCTURE FOR: hack_usergroup
#

DROP TABLE IF EXISTS hack_usergroup;

CREATE TABLE `hack_usergroup` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL,
  `listorder` tinyint(4) unsigned NOT NULL DEFAULT '99',
  `purview` text NOT NULL,
  `isupdate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO hack_usergroup (`id`, `varname`, `listorder`, `purview`, `isupdate`, `status`) VALUES (1, 'superadmin', 1, 'a:4:{i:0;a:37:{i:0;s:2:\"32\";i:1;s:2:\"33\";i:2;s:2:\"23\";i:3;s:2:\"21\";i:4;s:2:\"15\";i:5;s:1:\"2\";i:6;s:2:\"35\";i:7;s:2:\"28\";i:8;s:1:\"3\";i:9;s:1:\"5\";i:10;s:2:\"11\";i:11;s:1:\"9\";i:12;s:2:\"34\";i:13;s:1:\"4\";i:14;s:2:\"22\";i:15;s:1:\"7\";i:16;s:2:\"25\";i:17;s:2:\"30\";i:18;s:2:\"14\";i:19;s:2:\"29\";i:20;s:1:\"6\";i:21;s:2:\"38\";i:22;s:2:\"43\";i:23;s:2:\"39\";i:24;s:2:\"36\";i:25;s:1:\"1\";i:26;s:2:\"20\";i:27;s:2:\"24\";i:28;s:2:\"19\";i:29;s:2:\"54\";i:30;s:2:\"41\";i:31;s:2:\"53\";i:32;s:2:\"51\";i:33;s:2:\"52\";i:34;s:2:\"40\";i:35;s:2:\"42\";i:36;s:2:\"37\";}i:1;a:37:{s:8:\"personal\";a:3:{s:2:\"id\";s:2:\"32\";s:5:\"class\";s:8:\"personal\";s:6:\"method\";b:0;}s:10:\"adminindex\";a:3:{s:2:\"id\";s:2:\"33\";s:5:\"class\";s:10:\"adminindex\";s:6:\"method\";b:0;}s:4:\"tags\";a:3:{s:2:\"id\";s:2:\"23\";s:5:\"class\";s:4:\"tags\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:8:\"category\";a:3:{s:2:\"id\";s:2:\"21\";s:5:\"class\";s:8:\"category\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:5:\"slide\";a:3:{s:2:\"id\";s:2:\"15\";s:5:\"class\";s:5:\"slide\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:7:\"purview\";a:3:{s:2:\"id\";s:1:\"2\";s:5:\"class\";s:7:\"purview\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:7:\"propass\";a:3:{s:2:\"id\";s:2:\"35\";s:5:\"class\";s:7:\"propass\";s:6:\"method\";a:2:{i:0;s:2:\"on\";i:1;s:4:\"save\";}}s:8:\"keywords\";a:3:{s:2:\"id\";s:2:\"28\";s:5:\"class\";s:8:\"keywords\";s:6:\"method\";a:4:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";}}s:9:\"usergroup\";a:3:{s:2:\"id\";s:1:\"3\";s:5:\"class\";s:9:\"usergroup\";s:6:\"method\";a:6:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";i:5;s:5:\"grant\";}}s:7:\"content\";a:3:{s:2:\"id\";s:1:\"5\";s:5:\"class\";s:7:\"content\";s:6:\"method\";b:0;}s:7:\"article\";a:3:{s:2:\"id\";s:2:\"11\";s:5:\"class\";s:7:\"article\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:4:\"link\";a:3:{s:2:\"id\";s:1:\"9\";s:5:\"class\";s:4:\"link\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:7:\"profile\";a:3:{s:2:\"id\";s:2:\"34\";s:5:\"class\";s:7:\"profile\";s:6:\"method\";a:2:{i:0;s:2:\"on\";i:1;s:4:\"save\";}}s:4:\"user\";a:3:{s:2:\"id\";s:1:\"4\";s:5:\"class\";s:4:\"user\";s:6:\"method\";a:4:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";}}s:10:\"navigation\";a:3:{s:2:\"id\";s:2:\"22\";s:5:\"class\";s:10:\"navigation\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:3:\"seo\";a:3:{s:2:\"id\";s:1:\"7\";s:5:\"class\";s:3:\"seo\";s:6:\"method\";b:0;}s:7:\"product\";a:3:{s:2:\"id\";s:2:\"25\";s:5:\"class\";s:7:\"product\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:8:\"htaccess\";a:3:{s:2:\"id\";s:2:\"30\";s:5:\"class\";s:8:\"htaccess\";s:6:\"method\";a:3:{i:0;s:2:\"on\";i:1;s:4:\"save\";i:2;s:7:\"restore\";}}s:3:\"ask\";a:3:{s:2:\"id\";s:2:\"14\";s:5:\"class\";s:3:\"ask\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:6:\"robots\";a:3:{s:2:\"id\";s:2:\"29\";s:5:\"class\";s:6:\"robots\";s:6:\"method\";a:3:{i:0;s:2:\"on\";i:1;s:4:\"save\";i:2;s:7:\"restore\";}}s:6:\"module\";a:3:{s:2:\"id\";s:1:\"6\";s:5:\"class\";s:6:\"module\";s:6:\"method\";b:0;}s:6:\"online\";a:3:{s:2:\"id\";s:2:\"38\";s:5:\"class\";s:6:\"online\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:7:\"sitemap\";a:3:{s:2:\"id\";s:2:\"43\";s:5:\"class\";s:7:\"sitemap\";s:6:\"method\";a:4:{i:0;s:2:\"on\";i:1;s:8:\"generate\";i:2;s:8:\"download\";i:3;s:3:\"del\";}}s:4:\"down\";a:3:{s:2:\"id\";s:2:\"39\";s:5:\"class\";s:4:\"down\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:8:\"fragment\";a:3:{s:2:\"id\";s:2:\"36\";s:5:\"class\";s:8:\"fragment\";s:6:\"method\";a:4:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";}}s:6:\"system\";a:3:{s:2:\"id\";s:1:\"1\";s:5:\"class\";s:6:\"system\";s:6:\"method\";b:0;}s:4:\"type\";a:3:{s:2:\"id\";s:2:\"20\";s:5:\"class\";s:4:\"type\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:2:\"hr\";a:3:{s:2:\"id\";s:2:\"24\";s:5:\"class\";s:2:\"hr\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:6:\"config\";a:3:{s:2:\"id\";s:2:\"19\";s:5:\"class\";s:6:\"config\";s:6:\"method\";a:7:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"base\";i:3;s:4:\"lang\";i:4;s:4:\"mail\";i:5;s:4:\"attr\";i:6;s:3:\"del\";}}s:7:\"tpltags\";a:3:{s:2:\"id\";s:2:\"54\";s:5:\"class\";s:7:\"tpltags\";s:6:\"method\";b:0;}s:9:\"guestbook\";a:3:{s:2:\"id\";s:2:\"41\";s:5:\"class\";s:9:\"guestbook\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:9:\"recommend\";a:3:{s:2:\"id\";s:2:\"53\";s:5:\"class\";s:9:\"recommend\";s:6:\"method\";a:4:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";}}s:4:\"lang\";a:3:{s:2:\"id\";s:2:\"51\";s:5:\"class\";s:4:\"lang\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:5:\"model\";a:3:{s:2:\"id\";s:2:\"52\";s:5:\"class\";s:5:\"model\";s:6:\"method\";a:5:{i:0;s:2:\"on\";i:1;s:3:\"add\";i:2;s:4:\"edit\";i:3;s:3:\"del\";i:4;s:5:\"order\";}}s:8:\"database\";a:3:{s:2:\"id\";s:2:\"40\";s:5:\"class\";s:8:\"database\";s:6:\"method\";a:6:{i:0;s:2:\"on\";i:1;s:6:\"backup\";i:2;s:8:\"download\";i:3;s:7:\"upgrade\";i:4;s:8:\"optimize\";i:5;s:3:\"del\";}}s:8:\"template\";a:3:{s:2:\"id\";s:2:\"42\";s:5:\"class\";s:8:\"template\";s:6:\"method\";a:2:{i:0;s:2:\"on\";i:1;s:4:\"edit\";}}s:10:\"clearcache\";a:3:{s:2:\"id\";s:2:\"37\";s:5:\"class\";s:10:\"clearcache\";s:6:\"method\";b:0;}}i:2;a:6:{i:0;a:5:{i:0;a:6:{s:2:\"id\";s:2:\"32\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:8:\"personal\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:7:\"content\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:1:\"7\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:3:\"seo\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:3;a:6:{s:2:\"id\";s:1:\"6\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:6:\"module\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"4\";s:6:\"status\";s:1:\"1\";}i:4;a:6:{s:2:\"id\";s:1:\"1\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:6:\"system\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"5\";s:6:\"status\";s:1:\"1\";}}i:32;a:3:{i:0;a:6:{s:2:\"id\";s:2:\"33\";s:6:\"parent\";s:2:\"32\";s:5:\"class\";s:10:\"adminindex\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:2:\"35\";s:6:\"parent\";s:2:\"32\";s:5:\"class\";s:7:\"propass\";s:6:\"method\";s:4:\"save\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:2:\"34\";s:6:\"parent\";s:2:\"32\";s:5:\"class\";s:7:\"profile\";s:6:\"method\";s:4:\"save\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}}i:7;a:5:{i:0;a:6:{s:2:\"id\";s:2:\"23\";s:6:\"parent\";s:1:\"7\";s:5:\"class\";s:4:\"tags\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:2:\"28\";s:6:\"parent\";s:1:\"7\";s:5:\"class\";s:8:\"keywords\";s:6:\"method\";s:12:\"add,edit,del\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:2:\"30\";s:6:\"parent\";s:1:\"7\";s:5:\"class\";s:8:\"htaccess\";s:6:\"method\";s:12:\"save,restore\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:3;a:6:{s:2:\"id\";s:2:\"29\";s:6:\"parent\";s:1:\"7\";s:5:\"class\";s:6:\"robots\";s:6:\"method\";s:12:\"save,restore\";s:9:\"listorder\";s:1:\"4\";s:6:\"status\";s:1:\"1\";}i:4;a:6:{s:2:\"id\";s:2:\"43\";s:6:\"parent\";s:1:\"7\";s:5:\"class\";s:7:\"sitemap\";s:6:\"method\";s:21:\"generate,download,del\";s:9:\"listorder\";s:1:\"5\";s:6:\"status\";s:1:\"1\";}}i:5;a:9:{i:0;a:6:{s:2:\"id\";s:2:\"21\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:8:\"category\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:2:\"11\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:7:\"article\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:2:\"25\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:7:\"product\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:3;a:6:{s:2:\"id\";s:2:\"14\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:3:\"ask\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"4\";s:6:\"status\";s:1:\"1\";}i:4;a:6:{s:2:\"id\";s:2:\"39\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:4:\"down\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"5\";s:6:\"status\";s:1:\"1\";}i:5;a:6:{s:2:\"id\";s:2:\"24\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:2:\"hr\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"6\";s:6:\"status\";s:1:\"1\";}i:6;a:6:{s:2:\"id\";s:2:\"41\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:9:\"guestbook\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"7\";s:6:\"status\";s:1:\"1\";}i:7;a:6:{s:2:\"id\";s:2:\"53\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:9:\"recommend\";s:6:\"method\";s:12:\"add,edit,del\";s:9:\"listorder\";s:1:\"8\";s:6:\"status\";s:1:\"1\";}i:8;a:6:{s:2:\"id\";s:2:\"52\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:5:\"model\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"9\";s:6:\"status\";s:1:\"1\";}}i:6;a:6:{i:0;a:6:{s:2:\"id\";s:2:\"15\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:5:\"slide\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:1:\"9\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:4:\"link\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:2:\"22\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:10:\"navigation\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:3;a:6:{s:2:\"id\";s:2:\"38\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:6:\"online\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"4\";s:6:\"status\";s:1:\"1\";}i:4;a:6:{s:2:\"id\";s:2:\"36\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:8:\"fragment\";s:6:\"method\";s:12:\"add,edit,del\";s:9:\"listorder\";s:1:\"5\";s:6:\"status\";s:1:\"1\";}i:5;a:6:{s:2:\"id\";s:2:\"20\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:4:\"type\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"6\";s:6:\"status\";s:1:\"1\";}}i:1;a:9:{i:0;a:6:{s:2:\"id\";s:1:\"2\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:7:\"purview\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:1:\"3\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:9:\"usergroup\";s:6:\"method\";s:24:\"add,edit,del,order,grant\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:1:\"4\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:4:\"user\";s:6:\"method\";s:12:\"add,edit,del\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:3;a:6:{s:2:\"id\";s:2:\"19\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:6:\"config\";s:6:\"method\";s:27:\"add,base,lang,mail,attr,del\";s:9:\"listorder\";s:1:\"6\";s:6:\"status\";s:1:\"1\";}i:4;a:6:{s:2:\"id\";s:2:\"54\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:7:\"tpltags\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"7\";s:6:\"status\";s:1:\"1\";}i:5;a:6:{s:2:\"id\";s:2:\"51\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:4:\"lang\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"9\";s:6:\"status\";s:1:\"1\";}i:6;a:6:{s:2:\"id\";s:2:\"40\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:8:\"database\";s:6:\"method\";s:36:\"backup,download,upgrade,optimize,del\";s:9:\"listorder\";s:2:\"10\";s:6:\"status\";s:1:\"1\";}i:7;a:6:{s:2:\"id\";s:2:\"42\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:8:\"template\";s:6:\"method\";s:4:\"edit\";s:9:\"listorder\";s:2:\"11\";s:6:\"status\";s:1:\"1\";}i:8;a:6:{s:2:\"id\";s:2:\"37\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:10:\"clearcache\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:2:\"12\";s:6:\"status\";s:1:\"1\";}}}i:3;a:5:{i:32;a:6:{s:2:\"id\";s:2:\"32\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:8:\"personal\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:5;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:7:\"content\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:7;a:6:{s:2:\"id\";s:1:\"7\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:3:\"seo\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:6;a:6:{s:2:\"id\";s:1:\"6\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:6:\"module\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"4\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:1:\"1\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:6:\"system\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"5\";s:6:\"status\";s:1:\"1\";}}}', 0, 1);
INSERT INTO hack_usergroup (`id`, `varname`, `listorder`, `purview`, `isupdate`, `status`) VALUES (6, 'generaladmin', 2, 'a:4:{i:0;a:37:{i:0;s:2:\"32\";i:1;s:2:\"33\";i:2;s:2:\"23\";i:3;s:2:\"21\";i:4;s:2:\"15\";i:5;s:1:\"2\";i:6;s:2:\"35\";i:7;s:2:\"28\";i:8;s:1:\"3\";i:9;s:1:\"5\";i:10;s:2:\"11\";i:11;s:1:\"9\";i:12;s:2:\"34\";i:13;s:1:\"4\";i:14;s:2:\"22\";i:15;s:1:\"7\";i:16;s:2:\"25\";i:17;s:2:\"30\";i:18;s:2:\"14\";i:19;s:2:\"29\";i:20;s:1:\"6\";i:21;s:2:\"38\";i:22;s:2:\"43\";i:23;s:2:\"39\";i:24;s:2:\"36\";i:25;s:1:\"1\";i:26;s:2:\"20\";i:27;s:2:\"24\";i:28;s:2:\"19\";i:29;s:2:\"54\";i:30;s:2:\"41\";i:31;s:2:\"53\";i:32;s:2:\"51\";i:33;s:2:\"52\";i:34;s:2:\"40\";i:35;s:2:\"42\";i:36;s:2:\"37\";}i:1;a:37:{s:8:\"personal\";a:3:{s:2:\"id\";s:2:\"32\";s:5:\"class\";s:8:\"personal\";s:6:\"method\";b:0;}s:10:\"adminindex\";a:3:{s:2:\"id\";s:2:\"33\";s:5:\"class\";s:10:\"adminindex\";s:6:\"method\";b:0;}s:4:\"tags\";a:3:{s:2:\"id\";s:2:\"23\";s:5:\"class\";s:4:\"tags\";s:6:\"method\";b:0;}s:8:\"category\";a:3:{s:2:\"id\";s:2:\"21\";s:5:\"class\";s:8:\"category\";s:6:\"method\";b:0;}s:5:\"slide\";a:3:{s:2:\"id\";s:2:\"15\";s:5:\"class\";s:5:\"slide\";s:6:\"method\";b:0;}s:7:\"purview\";a:3:{s:2:\"id\";s:1:\"2\";s:5:\"class\";s:7:\"purview\";s:6:\"method\";b:0;}s:7:\"propass\";a:3:{s:2:\"id\";s:2:\"35\";s:5:\"class\";s:7:\"propass\";s:6:\"method\";b:0;}s:8:\"keywords\";a:3:{s:2:\"id\";s:2:\"28\";s:5:\"class\";s:8:\"keywords\";s:6:\"method\";b:0;}s:9:\"usergroup\";a:3:{s:2:\"id\";s:1:\"3\";s:5:\"class\";s:9:\"usergroup\";s:6:\"method\";b:0;}s:7:\"content\";a:3:{s:2:\"id\";s:1:\"5\";s:5:\"class\";s:7:\"content\";s:6:\"method\";b:0;}s:7:\"article\";a:3:{s:2:\"id\";s:2:\"11\";s:5:\"class\";s:7:\"article\";s:6:\"method\";b:0;}s:4:\"link\";a:3:{s:2:\"id\";s:1:\"9\";s:5:\"class\";s:4:\"link\";s:6:\"method\";b:0;}s:7:\"profile\";a:3:{s:2:\"id\";s:2:\"34\";s:5:\"class\";s:7:\"profile\";s:6:\"method\";b:0;}s:4:\"user\";a:3:{s:2:\"id\";s:1:\"4\";s:5:\"class\";s:4:\"user\";s:6:\"method\";b:0;}s:10:\"navigation\";a:3:{s:2:\"id\";s:2:\"22\";s:5:\"class\";s:10:\"navigation\";s:6:\"method\";b:0;}s:3:\"seo\";a:3:{s:2:\"id\";s:1:\"7\";s:5:\"class\";s:3:\"seo\";s:6:\"method\";b:0;}s:7:\"product\";a:3:{s:2:\"id\";s:2:\"25\";s:5:\"class\";s:7:\"product\";s:6:\"method\";b:0;}s:8:\"htaccess\";a:3:{s:2:\"id\";s:2:\"30\";s:5:\"class\";s:8:\"htaccess\";s:6:\"method\";b:0;}s:3:\"ask\";a:3:{s:2:\"id\";s:2:\"14\";s:5:\"class\";s:3:\"ask\";s:6:\"method\";b:0;}s:6:\"robots\";a:3:{s:2:\"id\";s:2:\"29\";s:5:\"class\";s:6:\"robots\";s:6:\"method\";b:0;}s:6:\"module\";a:3:{s:2:\"id\";s:1:\"6\";s:5:\"class\";s:6:\"module\";s:6:\"method\";b:0;}s:6:\"online\";a:3:{s:2:\"id\";s:2:\"38\";s:5:\"class\";s:6:\"online\";s:6:\"method\";b:0;}s:7:\"sitemap\";a:3:{s:2:\"id\";s:2:\"43\";s:5:\"class\";s:7:\"sitemap\";s:6:\"method\";b:0;}s:4:\"down\";a:3:{s:2:\"id\";s:2:\"39\";s:5:\"class\";s:4:\"down\";s:6:\"method\";b:0;}s:8:\"fragment\";a:3:{s:2:\"id\";s:2:\"36\";s:5:\"class\";s:8:\"fragment\";s:6:\"method\";b:0;}s:6:\"system\";a:3:{s:2:\"id\";s:1:\"1\";s:5:\"class\";s:6:\"system\";s:6:\"method\";b:0;}s:4:\"type\";a:3:{s:2:\"id\";s:2:\"20\";s:5:\"class\";s:4:\"type\";s:6:\"method\";b:0;}s:2:\"hr\";a:3:{s:2:\"id\";s:2:\"24\";s:5:\"class\";s:2:\"hr\";s:6:\"method\";b:0;}s:6:\"config\";a:3:{s:2:\"id\";s:2:\"19\";s:5:\"class\";s:6:\"config\";s:6:\"method\";b:0;}s:7:\"tpltags\";a:3:{s:2:\"id\";s:2:\"54\";s:5:\"class\";s:7:\"tpltags\";s:6:\"method\";b:0;}s:9:\"guestbook\";a:3:{s:2:\"id\";s:2:\"41\";s:5:\"class\";s:9:\"guestbook\";s:6:\"method\";b:0;}s:9:\"recommend\";a:3:{s:2:\"id\";s:2:\"53\";s:5:\"class\";s:9:\"recommend\";s:6:\"method\";b:0;}s:4:\"lang\";a:3:{s:2:\"id\";s:2:\"51\";s:5:\"class\";s:4:\"lang\";s:6:\"method\";b:0;}s:5:\"model\";a:3:{s:2:\"id\";s:2:\"52\";s:5:\"class\";s:5:\"model\";s:6:\"method\";b:0;}s:8:\"database\";a:3:{s:2:\"id\";s:2:\"40\";s:5:\"class\";s:8:\"database\";s:6:\"method\";b:0;}s:8:\"template\";a:3:{s:2:\"id\";s:2:\"42\";s:5:\"class\";s:8:\"template\";s:6:\"method\";b:0;}s:10:\"clearcache\";a:3:{s:2:\"id\";s:2:\"37\";s:5:\"class\";s:10:\"clearcache\";s:6:\"method\";b:0;}}i:2;a:6:{i:0;a:5:{i:0;a:6:{s:2:\"id\";s:2:\"32\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:8:\"personal\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:7:\"content\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:1:\"7\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:3:\"seo\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:3;a:6:{s:2:\"id\";s:1:\"6\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:6:\"module\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"4\";s:6:\"status\";s:1:\"1\";}i:4;a:6:{s:2:\"id\";s:1:\"1\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:6:\"system\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"5\";s:6:\"status\";s:1:\"1\";}}i:32;a:3:{i:0;a:6:{s:2:\"id\";s:2:\"33\";s:6:\"parent\";s:2:\"32\";s:5:\"class\";s:10:\"adminindex\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:2:\"35\";s:6:\"parent\";s:2:\"32\";s:5:\"class\";s:7:\"propass\";s:6:\"method\";s:4:\"save\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:2:\"34\";s:6:\"parent\";s:2:\"32\";s:5:\"class\";s:7:\"profile\";s:6:\"method\";s:4:\"save\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}}i:7;a:5:{i:0;a:6:{s:2:\"id\";s:2:\"23\";s:6:\"parent\";s:1:\"7\";s:5:\"class\";s:4:\"tags\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:2:\"28\";s:6:\"parent\";s:1:\"7\";s:5:\"class\";s:8:\"keywords\";s:6:\"method\";s:12:\"add,edit,del\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:2:\"30\";s:6:\"parent\";s:1:\"7\";s:5:\"class\";s:8:\"htaccess\";s:6:\"method\";s:12:\"save,restore\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:3;a:6:{s:2:\"id\";s:2:\"29\";s:6:\"parent\";s:1:\"7\";s:5:\"class\";s:6:\"robots\";s:6:\"method\";s:12:\"save,restore\";s:9:\"listorder\";s:1:\"4\";s:6:\"status\";s:1:\"1\";}i:4;a:6:{s:2:\"id\";s:2:\"43\";s:6:\"parent\";s:1:\"7\";s:5:\"class\";s:7:\"sitemap\";s:6:\"method\";s:21:\"generate,download,del\";s:9:\"listorder\";s:1:\"5\";s:6:\"status\";s:1:\"1\";}}i:5;a:9:{i:0;a:6:{s:2:\"id\";s:2:\"21\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:8:\"category\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:2:\"11\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:7:\"article\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:2:\"25\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:7:\"product\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:3;a:6:{s:2:\"id\";s:2:\"14\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:3:\"ask\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"4\";s:6:\"status\";s:1:\"1\";}i:4;a:6:{s:2:\"id\";s:2:\"39\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:4:\"down\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"5\";s:6:\"status\";s:1:\"1\";}i:5;a:6:{s:2:\"id\";s:2:\"24\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:2:\"hr\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"6\";s:6:\"status\";s:1:\"1\";}i:6;a:6:{s:2:\"id\";s:2:\"41\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:9:\"guestbook\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"7\";s:6:\"status\";s:1:\"1\";}i:7;a:6:{s:2:\"id\";s:2:\"53\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:9:\"recommend\";s:6:\"method\";s:12:\"add,edit,del\";s:9:\"listorder\";s:1:\"8\";s:6:\"status\";s:1:\"1\";}i:8;a:6:{s:2:\"id\";s:2:\"52\";s:6:\"parent\";s:1:\"5\";s:5:\"class\";s:5:\"model\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"9\";s:6:\"status\";s:1:\"1\";}}i:6;a:6:{i:0;a:6:{s:2:\"id\";s:2:\"15\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:5:\"slide\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:1:\"9\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:4:\"link\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:2:\"22\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:10:\"navigation\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:3;a:6:{s:2:\"id\";s:2:\"38\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:6:\"online\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"4\";s:6:\"status\";s:1:\"1\";}i:4;a:6:{s:2:\"id\";s:2:\"36\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:8:\"fragment\";s:6:\"method\";s:12:\"add,edit,del\";s:9:\"listorder\";s:1:\"5\";s:6:\"status\";s:1:\"1\";}i:5;a:6:{s:2:\"id\";s:2:\"20\";s:6:\"parent\";s:1:\"6\";s:5:\"class\";s:4:\"type\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"6\";s:6:\"status\";s:1:\"1\";}}i:1;a:9:{i:0;a:6:{s:2:\"id\";s:1:\"2\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:7:\"purview\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:1:\"3\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:9:\"usergroup\";s:6:\"method\";s:24:\"add,edit,del,order,grant\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:2;a:6:{s:2:\"id\";s:1:\"4\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:4:\"user\";s:6:\"method\";s:12:\"add,edit,del\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:3;a:6:{s:2:\"id\";s:2:\"19\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:6:\"config\";s:6:\"method\";s:27:\"add,base,lang,mail,attr,del\";s:9:\"listorder\";s:1:\"6\";s:6:\"status\";s:1:\"1\";}i:4;a:6:{s:2:\"id\";s:2:\"54\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:7:\"tpltags\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"7\";s:6:\"status\";s:1:\"1\";}i:5;a:6:{s:2:\"id\";s:2:\"51\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:4:\"lang\";s:6:\"method\";s:18:\"add,edit,del,order\";s:9:\"listorder\";s:1:\"9\";s:6:\"status\";s:1:\"1\";}i:6;a:6:{s:2:\"id\";s:2:\"40\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:8:\"database\";s:6:\"method\";s:36:\"backup,download,upgrade,optimize,del\";s:9:\"listorder\";s:2:\"10\";s:6:\"status\";s:1:\"1\";}i:7;a:6:{s:2:\"id\";s:2:\"42\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:8:\"template\";s:6:\"method\";s:4:\"edit\";s:9:\"listorder\";s:2:\"11\";s:6:\"status\";s:1:\"1\";}i:8;a:6:{s:2:\"id\";s:2:\"37\";s:6:\"parent\";s:1:\"1\";s:5:\"class\";s:10:\"clearcache\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:2:\"12\";s:6:\"status\";s:1:\"1\";}}}i:3;a:5:{i:32;a:6:{s:2:\"id\";s:2:\"32\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:8:\"personal\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}i:5;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:7:\"content\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"2\";s:6:\"status\";s:1:\"1\";}i:7;a:6:{s:2:\"id\";s:1:\"7\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:3:\"seo\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"3\";s:6:\"status\";s:1:\"1\";}i:6;a:6:{s:2:\"id\";s:1:\"6\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:6:\"module\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"4\";s:6:\"status\";s:1:\"1\";}i:1;a:6:{s:2:\"id\";s:1:\"1\";s:6:\"parent\";s:1:\"0\";s:5:\"class\";s:6:\"system\";s:6:\"method\";s:0:\"\";s:9:\"listorder\";s:1:\"5\";s:6:\"status\";s:1:\"1\";}}}', 0, 1);
INSERT INTO hack_usergroup (`id`, `varname`, `listorder`, `purview`, `isupdate`, `status`) VALUES (7, 'generaluser', 3, 'a:0:{}', 1, 1);


