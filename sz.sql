-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: suanzao
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(99) NOT NULL,
  `url` varchar(255) DEFAULT '',
  `new_window` tinyint(4) DEFAULT '0' COMMENT '链接是否在新窗口打开？',
  `word` text,
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT 'banner图',
  `position` tinyint(4) NOT NULL DEFAULT '1' COMMENT '所处位置：1首页',
  `st` tinyint(4) DEFAULT '1',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='广告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` VALUES (62,'jjaf','',0,NULL,'/upload/ad/20170922/9e307b932b5b0bbd292838ac8209feb8.jpg',1,2,1506069045,1506069457),(63,'utdm','',0,NULL,'/upload/ad/20170922/a77e29fa2e6c7a4d95ea035942941e37.png',1,1,1506069197,1506069450),(64,'asdg','',0,NULL,'/upload/ad/20170925/a16bdfa272b9fc530c6e7fb07518907f.png',1,1,1506069248,1506302766),(65,'asdgg','',0,NULL,'/upload/ad/20170922/b68af83328d3834f6568d338c498bf89.png',1,1,1506069257,1506069257),(66,'观察家','',0,NULL,'/upload/ad/20170927/f170d4000778ca22da2dd94f7d121d9e.png',2,1,1506495747,1506495747),(67,'cpty2','https://sina.com',1,NULL,'/upload/ad/20170927/aa292cb57d66ac61727c2e7b2ea6a3a6.png',2,1,1506499244,1506499244),(68,'nedt','',0,NULL,'/upload/ad/20170927/6fc34ed335dad2b778f6c6aca88d89bd.png',4,1,1506499378,1506499378),(69,'nw2','http://www.sina.com',1,NULL,'/upload/ad/20170927/3a6632be741e0e0df86d03dbae13983d.png',4,1,1506499399,1506499588),(70,'bout1','',0,NULL,'/upload/ad/20170927/79c73eab12f692bd995b39b1823127d5.png',5,1,1506500695,1506500695),(71,'guanyu2','http://www.baidu.com',0,NULL,'/upload/ad/20170927/c0f83a2dfd04dc8eb20fc9813cd3e4d1.png',5,1,1506500717,1506500717);
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '账号',
  `pwd` char(32) DEFAULT NULL COMMENT '密码',
  `times` int(11) DEFAULT '0' COMMENT '登录次数',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'suanzao888','5b94734d0c266fafab796bcdcb20d8a8',15,0,0);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '1' COMMENT 'admin_id',
  `ip` varchar(50) DEFAULT '' COMMENT '登录ip',
  `create_time` int(11) DEFAULT '0' COMMENT '登录时间',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='后台管理员登录日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_log`
--

LOCK TABLES `admin_log` WRITE;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
INSERT INTO `admin_log` VALUES (1,1,'::1',1505970401,1505970401),(2,1,'::1',1505971556,1505971556),(3,1,'::1',1506069026,1506069026),(4,1,'::1',1506302274,1506302274),(5,1,'::1',1506316006,1506316006),(6,1,'::1',1506331832,1506331832),(7,1,'::1',1506388368,1506388368),(8,1,'::1',1506397854,1506397854),(9,1,'::1',1506404235,1506404235),(10,1,'::1',1506416646,1506416646),(11,1,'::1',1506489447,1506489447),(12,1,'::1',1506497961,1506497961),(13,1,'::1',1506505495,1506505495),(14,1,'::1',1506562913,1506562913);
/*!40000 ALTER TABLE `admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL DEFAULT '1' COMMENT '分类id',
  `name` varchar(100) NOT NULL,
  `click` int(11) DEFAULT '0' COMMENT '点击量',
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '列表图',
  `cont` text,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '1000' COMMENT '排序',
  `st` tinyint(4) DEFAULT '1',
  `index_show` tinyint(4) DEFAULT '0' COMMENT '是否显示在轮番图',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `charm` varchar(255) NOT NULL COMMENT '摘要',
  `tp` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型 1资讯 2案例',
  PRIMARY KEY (`id`),
  KEY `cate` (`cate_id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`cate_id`) REFERENCES `cate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='资讯表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,'zhidingzhege1',0,'/upload/article/20170926/b141b2887fc69647de8ab972ab543f78.png','<p>\r\n	前置操作方法中，return \'some string\';   是不会输出内容到页面的，我还以为无效，纠结了好久\r\n</p>\r\n<p>\r\n	前置操作方法中，return \'some string\';   是不会输出内容到页面的，我还以为无效，纠结了好久\r\n</p>','','',1000,1,0,1506071200,1506400780,'为其准备的礼物后,成龙现场拥吻影迷,',1),(2,2,'asdgg',0,'/upload/article/20170926/698f63aef544fc536427d3cbe8420597.png','在当前方法中能否获取前置操作的返回值在当前方法中能否获取前置操作的返回值在当前方法中能否获取前置操作的返回值在当前方法中能否获取前置操作的返回值在当前方法中能否获取前置操作的返回值','','',1000,1,0,1506071557,1506390957,'',1),(3,3,'hangyedongtai',0,'/upload/article/20170926/94713407838a2ce0dc8136c365c2c9ca.png','<p>\r\n	控制器类可以无需继承任何类，命名空间默认以app为根命名空间。\r\n</p>\r\n<p>\r\n	控制器的根命名空间可以设置，例如我们在应用配置文件中修改：\r\n</p>','','',2,1,1,1506071586,1506390041,'',1),(4,3,'suanzaonew',0,'/upload/article/20170926/9c89cacb633d4802e88841f446c19c64.png','<p style=\"text-indent:2em;\">\r\n	近日,<strong class=\"kw\"><a href=\"http://news.china.com/baike_5oiQ6b6Z5r-A5Yqo5oul5ZC75b2x6L-3.html\" target=\"_blank\">成龙激动拥吻影迷</a></strong>,为影片宣传造势。活动上,成龙获影迷到场支持,在收到影迷特意为其准备的礼物后,成龙现场拥吻影迷,激动之情溢于言表。但是网友们对于成龙亲吻粉丝提出了异议，有部分网友表示“贴面亲吻只是表达他内心的喜悦和感激，是对对方的一种尊重，希望大家可以理解”，“无论怎样，他依然是华人的骄傲，依然票房200亿。\r\n</p>','','',1000,1,0,1506319750,1506391030,'',1),(5,2,'成龙在现场相当热情，还表示自己非常开现场相当热情，还表示自己非常',0,'/upload/article/20170926/f0b28dfe84b2b51a1732cf682a3efd8e.png','和影迷合影也是十分亲密！所以这不禁让人想起来以往很多次对于女星的咸猪手事件。也是成龙一直被大家吐槽的点。但是大家可以仔细看这些图片，尤其是图片中在我们看来“遭遇成龙咸猪手”的女性，她们的脸上根本没有丝毫的不满或者不快。','ehcliogn','尴尬不是我的茯吧一器田',12,1,0,1506319887,1506504169,'其准备的礼物后,成龙现场拥吻影迷,激动之情溢于言表。但是网友们对于成龙亲吻粉丝提出了异议，有部分网友表示“贴面亲吻只是表达他内心的喜悦和感激，是对对方的一种尊重，希望大家可以理解”，“无论怎样，他依然是华人的骄傲，依然票房200亿。',1),(6,3,'成龙激动拥吻影迷 牵手刘涛牵手刘涛成龙激动拥吻牵手刘涛成龙激动拥吻',0,'/upload/article/20170926/07ab4c4c8fbeb540febaa3368b1c1eda.png','<p style=\"text-indent:2em;\">\r\n	和影迷合影也是十分亲密！所以这不禁让人想起来以往很多次对于女星的咸猪手事件。也是成龙一直被大家吐槽的点。但是大家可以仔细看这些图片，尤其是图片中在我们看来“遭遇成龙咸猪手”的女性，她们的脸上根本没有丝毫的不满或者不快。\r\n</p>','','',1000,1,1,1506397916,1506400732,'9月24日，电影《英伦对决》在北京举行首映活动，成龙、刘涛等主创亮相，为影片宣传造势。活动上，成龙获影迷到场支持.9月24日，电影《英伦对决》在北京举行首映活动，成龙、刘涛等主创亮相，为影片宣传造势。活动上，成龙获影迷到场支持.',1),(7,2,'zixunsuanao111',0,'/upload/article/20170927/7e56b219d109769831f1231c842bd00b.png','adsfadsga','','',1000,1,0,1506492228,1506492228,'aagads',1),(8,1,'你们在哪啊',0,'/upload/article/20170927/98c49116a8ed5a7dd47bb3f96919c703.png','枯七','','',1000,1,0,1506493982,1506493982,'工在在要要工有有',1),(9,5,'英文探亲访友来这吧',0,'/upload/article/20170927/f89d4e27f2e81ae24ab3db00675d1f80.png','在要械圧33 ','大有有44','在在大',1000,1,0,1506494027,1506498399,'',2),(10,6,'案例金融1',0,'/upload/article/20170927/4be1436efe83875e72128d1ba05f4f78.png','基 在要444在五工','adgag,d57sfg，，，，','adgsdfa,,..',1,1,1,1506494085,1506505248,'',2);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cate`
--

DROP TABLE IF EXISTS `cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL COMMENT '名称',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `st` tinyint(4) DEFAULT '1' COMMENT '0删除状态,1正常',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `tp` tinyint(4) NOT NULL DEFAULT '1' COMMENT '分类类型 1资讯 2案例',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate`
--

LOCK TABLES `cate` WRITE;
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` VALUES (1,'品牌热点',0,1,1506069857,1506069857,1),(2,'酸枣动态',1,1,1506069866,1506069866,1),(3,'行业动态',2,1,1506069875,1506069875,1),(4,'常见问答',3,0,1506069883,1506072990,1),(5,'经典案例',3,1,1506304315,1506490635,2),(6,'金融',0,1,1506489869,1506489869,2),(7,'教育培训',2,1,1506490414,1506490414,2),(8,'医疗',4,1,1506490440,1506490440,2);
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dfile`
--

DROP TABLE IF EXISTS `dfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL COMMENT '名称',
  `path` varchar(99) DEFAULT '' COMMENT '文件上传路径',
  `size` float DEFAULT NULL,
  `ext` varchar(50) DEFAULT NULL COMMENT '后缀类型:.apk,...',
  `st` tinyint(4) DEFAULT '1' COMMENT '0删除状态,1正常,2不显示',
  `tp` tinyint(4) NOT NULL DEFAULT '1' COMMENT '文件类型1案桌 2苹果',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `pc_ftp` enum('ftp','pc') NOT NULL COMMENT '通过ftp上传或是本地文件',
  `fname` varchar(100) DEFAULT NULL COMMENT 'ftp文件名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='可下载的文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dfile`
--

LOCK TABLES `dfile` WRITE;
/*!40000 ALTER TABLE `dfile` DISABLE KEYS */;
INSERT INTO `dfile` VALUES (5,'anzhuo1','kongchao.jpg',0,NULL,1,1,1505972075,1505972075,'ftp',NULL),(6,'andou12','',9840,NULL,1,1,1505972728,1505972728,'ftp',NULL),(7,'anzuo3','/upload/dfile/20170921/fcaca5ba7e65b866ef07d22f97605d34.jpg',11283,NULL,1,1,1505972816,1505972816,'ftp',NULL),(8,'.apk11','/upload/dfile/20170921/fc077f1492737e28c3fa8d9eca5d6729.sql',7042,NULL,1,1,1505972906,1505972906,'ftp',NULL),(9,'12we','/upload/dfile/20170921/fe2af9a173f59b355a2120f0ccab6025.sql',0,NULL,1,1,1505973139,1505973139,'ftp',NULL),(10,'sss','/upload/dfile/20170921/fc9271abb688866d7daf914dd34a4e7a.png',0,NULL,1,1,1505973243,1505973243,'ftp',NULL),(11,'adfag','/upload/dfile/20170921/f5e17429747b3246c8881236f10d4517.png',0.205353,NULL,1,1,1505973363,1505973363,'ftp',NULL),(12,'sdg','/upload/dfile/20170921/2e089150b737faaea68dde7b529ee81c.gz',32.16,'',1,1,1505973592,1505975889,'ftp',NULL),(13,'asdfg','/upload/dfile/20170921/a39cd6eb0801822db7c192c72ca6686e.png',0.05,NULL,0,1,1505973895,1505976097,'ftp',NULL),(14,'adsg','/upload/dfile/20170921/212529f54179a4bab52352ac02f274ff.sql',1.19,NULL,1,1,1505974526,1505974526,'ftp',NULL),(15,'32m','/upload/dfile/20170921/a64bc0756a74f68ba68e8a69c9d102c7.sql',1.22,NULL,1,1,1505975217,1505975852,'ftp',NULL),(16,'adsg','/upload/dfile/20170922/ecb212152beae45cfec089c2a5f219af.gif',0.38,NULL,1,2,1506073934,1506074449,'ftp',NULL),(17,'ceshienum','/puda/dfer/2343fd/233df.apk',NULL,NULL,1,1,0,0,'pc',NULL),(18,'ceshienum','/puda/dfer/2343fd/233df.apk',NULL,NULL,1,1,0,0,'ftp',NULL),(19,'ccc','/upload/dfile/20170925/c13435898b85e19c5fc5cea4678e508a.jpg',0.01,NULL,1,1,1506306984,1506306984,'pc',''),(20,'ddd','',NULL,NULL,1,2,1506307150,1506307150,'ftp','pingguov-2.ios'),(21,'eee','/suanzao/public//upload/dfile/androd33.apk',NULL,NULL,1,1,1506307420,1506307420,'ftp','androd33.apk'),(22,'rrr','/upload/dfile/pingsuo.sql',NULL,NULL,1,2,1506307744,1506311713,'ftp','pingsuo.sql'),(23,'pcf1','/upload/dfile/20170925/99c674689923ba599f38a01709a32b7f.sql',0,NULL,0,1,1506311477,1506311845,'pc','');
/*!40000 ALTER TABLE `dfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `name` varchar(99) NOT NULL,
  `url` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `st` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='合作(包括友情链接和战略合作)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_admin`
--

DROP TABLE IF EXISTS `menu_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '导航名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '导航上级id，总分两级,0表示一级',
  `controller` varchar(100) DEFAULT '' COMMENT '控制器,为一级时为""',
  `action` varchar(100) DEFAULT '' COMMENT '控制器中方法,为一级时为""',
  `param` varchar(100) DEFAULT '' COMMENT '参数',
  `sort` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='后台左侧导航';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_admin`
--

LOCK TABLES `menu_admin` WRITE;
/*!40000 ALTER TABLE `menu_admin` DISABLE KEYS */;
INSERT INTO `menu_admin` VALUES (19,'主要管理',0,'','','',0,1505358580,1505358580),(20,'资讯/案例',19,'Article','index','',0,1505358628,1506490666),(22,'广告图',19,'Ad','index','',1,1505358704,1505970654),(23,'其它管理',0,'','','',1,1505358751,1505358751),(30,'文件下载',19,'Dfile','index','',2,1505970647,1505970647),(25,'改后台密码',23,'Admin','edit','',5,1505358851,1505699431),(26,'类别',23,'Cate','index','',0,1505369468,1505970973),(29,'SEO设置',23,'SeoSet','index','',4,1505699413,1505699516);
/*!40000 ALTER TABLE `menu_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_set`
--

DROP TABLE IF EXISTS `seo_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1首页 2产品体验 3直播案例 4直播间后台 5购买服务 6最新动态 7关于我们',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo描述',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_set`
--

LOCK TABLES `seo_set` WRITE;
/*!40000 ALTER TABLE `seo_set` DISABLE KEYS */;
INSERT INTO `seo_set` VALUES (1,1,'酸枣-专注于微信公众号直播|内容付费与社群变现的微课堂工具','suanzaoindexkey,key2','suanzaoindexdecp',1506404478,1506503269),(2,2,'pintiyan','cpty,cpty2','cpty,cpty2cpty,cpty2',1506503450,1506503450),(3,5,'dddddd','dddd','dddddddddddddddddd',1506503678,1506503678),(4,6,'nnnn','nnnnn,nnnnn2','nnnnnnnnnnmmmmmmmmmm',1506503787,1506503787),(5,7,'gyuwmen','key1,k2y3,kh4y5,','key1,k2y3,kh4y5,key1,k2y3,kh4y5',1506503878,1506503878);
/*!40000 ALTER TABLE `seo_set` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-28 10:18:17
