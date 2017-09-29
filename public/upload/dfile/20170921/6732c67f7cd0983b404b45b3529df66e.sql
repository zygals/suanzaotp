-- MySQL dump 10.13  Distrib 5.1.61, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: orders
-- ------------------------------------------------------
-- Server version	5.1.61

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `true_name` varchar(50) DEFAULT NULL COMMENT '收货人姓名',
  `mobile` char(11) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为默认地址',
  `pcd` varchar(100) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL COMMENT '收货地址其它信息',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '地址名称',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='收货人地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1498539590,1498539590,NULL),(2,1,'小米妹','15866324459',0,'北京市 北京市 朝阳区','北四环东路65号世纪宝鼎',1498726477,1498726477,NULL),(3,1,'经济建设','18544455136',0,'贵州省 遵义市 遵义县','水管工很好的',1498726513,1498726513,NULL),(4,1,'小米妹','15866324459',0,'北京市 北京市 朝阳区','北四环东路65号世纪宝鼎',1498787696,1498787696,NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'admin',
  `pwd` varchar(32) NOT NULL DEFAULT '',
  `mobile` char(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `login_ip` varchar(20) DEFAULT NULL,
  `login_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `true_name` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','40dbec459e856875b2c453a6176ca35e',NULL,NULL,'221.223.111.174',1498616031,1,NULL,1498616031,NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adv`
--

DROP TABLE IF EXISTS `adv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `img_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '处理图片缩放',
  `url` varchar(255) NOT NULL DEFAULT '图片链接地址',
  `admin_id` int(11) NOT NULL COMMENT '后台用户',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0不显示1显示2删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='首页滚动图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adv`
--

LOCK TABLES `adv` WRITE;
/*!40000 ALTER TABLE `adv` DISABLE KEYS */;
/*!40000 ALTER TABLE `adv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '一个用户有一个购物车',
  `sum_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0表示没有商品，1表示有商品',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_good`
--

DROP TABLE IF EXISTS `cart_good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL DEFAULT '1',
  `num` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`,`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车中商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_good`
--

LOCK TABLES `cart_good` WRITE;
/*!40000 ALTER TABLE `cart_good` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cate_shop`
--

DROP TABLE IF EXISTS `cate_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cate_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常，0删除',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='店铺类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate_shop`
--

LOCK TABLES `cate_shop` WRITE;
/*!40000 ALTER TABLE `cate_shop` DISABLE KEYS */;
INSERT INTO `cate_shop` VALUES (1,'演示店铺1',2,1497330837,1497341529),(2,'工在3ss2',2,1497330876,1497334806),(3,'演示店铺分类1',1,1497334801,1498020881);
/*!40000 ALTER TABLE `cate_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cate_shop_good`
--

DROP TABLE IF EXISTS `cate_shop_good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cate_shop_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='店铺商品类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate_shop_good`
--

LOCK TABLES `cate_shop_good` WRITE;
/*!40000 ALTER TABLE `cate_shop_good` DISABLE KEYS */;
INSERT INTO `cate_shop_good` VALUES (1,'演示分类1',2,1,1497342938,1498031324),(2,'arrrr',3,2,1497342951,1497344156),(3,'ddddd',1,2,1497342988,1497344150),(4,'演示分类2',1,1,1497344183,1498031316),(5,'演示分类3',3,1,1497838078,1498031333);
/*!40000 ALTER TABLE `cate_shop_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good`
--

DROP TABLE IF EXISTS `good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '商品类别',
  `img` varchar(100) DEFAULT NULL COMMENT '原图',
  `img_thumb` varchar(100) DEFAULT NULL COMMENT '缩图',
  `name` varchar(50) NOT NULL,
  `price_now` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '现价',
  `price_original` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '原价',
  `score` tinyint(4) NOT NULL DEFAULT '0' COMMENT '送多少积分',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `shop_id` int(11) NOT NULL DEFAULT '1' COMMENT '所属店铺',
  `in_or_out` varchar(50) NOT NULL DEFAULT '1,2' COMMENT '1堂食／2外送',
  `plus_default_show` tinyint(4) DEFAULT '1' COMMENT 'åŠ å·;',
  `fee_canhe` decimal(5,2) DEFAULT '0.00' COMMENT 'å¤–éæ—¶é¤ç›’è´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='店铺商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good`
--

LOCK TABLES `good` WRITE;
/*!40000 ALTER TABLE `good` DISABLE KEYS */;
INSERT INTO `good` VALUES (1,1,'/uploads/20170614/b6a9e5098df1e14f81312badc2099dfc.png','/uploads/20170614/b6a9e5098df1e14f81312badc2099dfc_thumb.png','fdage444','23.00','21.00',0,1,1497349334,1498210008,1,'1,2',1,'0.00'),(2,4,'/uploads/20170620/38ef95bdfad1196e4df45b8ad01c861a.png','/uploads/20170620/38ef95bdfad1196e4df45b8ad01c861a_thumb.png','奶油1','12.21','21.00',0,1,1497930422,1498209289,1,'1',1,'0.00'),(3,4,'/uploads/20170620/afeb2f38a4dbb4a5fbcebbea31e3c44d.png','/uploads/20170620/afeb2f38a4dbb4a5fbcebbea31e3c44d_thumb.png','wqeqwe','34.00','23.00',0,1,1497933580,1498210008,1,'1,2',1,'0.00'),(4,4,'/uploads/20170622/562dd2614efb8188a062aa6b02e5b8c1.png','/uploads/20170622/562dd2614efb8188a062aa6b02e5b8c1_thumb.png','蛋糕1','6.00','23.00',0,1,1498101238,1498210008,1,'2',1,'0.00'),(5,4,'/uploads/20170626/96775fb0e6869a14d0a166c4996b2b99.png','/uploads/20170626/96775fb0e6869a14d0a166c4996b2b99_thumb.png','mianbao','1.00','22.00',0,1,1498443468,1498470297,1,'1,2',1,'0.00'),(6,4,'/uploads/20170626/3dabd875c09806561136b68ee1e32555.png','/uploads/20170626/3dabd875c09806561136b68ee1e32555_thumb.png','hanbao','34.00','33.00',0,1,1498443493,1498450050,1,'2',1,'0.00');
/*!40000 ALTER TABLE `good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_comment`
--

DROP TABLE IF EXISTS `log_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL COMMENT '心得id',
  `user_id` int(11) NOT NULL COMMENT '添加评论用户',
  `cont` text COMMENT '评论内容 ',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0不显示1显示2删除',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `log_id` (`log_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='心得评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_comment`
--

LOCK TABLES `log_comment` WRITE;
/*!40000 ALTER TABLE `log_comment` DISABLE KEYS */;
INSERT INTO `log_comment` VALUES (1,1,2,'我也想试试。。。',0,2,1496884624),(2,1,2,'你说的太好了',0,0,1496884386),(3,1,1,'hello q r ',0,1,1496884236);
/*!40000 ALTER TABLE `log_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_no` varchar(50) DEFAULT NULL COMMENT 'order bianhao',
  `user_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT '0',
  `sum_price` decimal(10,2) DEFAULT NULL COMMENT '商品总价',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '未支付-1，已支付1，已发货2，已收货3',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1tangshi2 waisong',
  `note` varchar(255) DEFAULT NULL COMMENT 'bei zhu',
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_no` (`trade_no`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,NULL,1,-1,'70.63',1498189866,1498189866,-1,1,NULL),(2,NULL,1,-1,'104.63',1498190014,1498190014,-1,1,NULL),(3,NULL,1,0,'83.00',1498204096,1498204096,-1,2,NULL),(4,NULL,1,0,'49.00',1498453749,1498453749,-1,2,NULL),(5,NULL,1,-1,'36.00',1498527603,1498527603,-1,1,NULL),(6,NULL,1,0,'41.63',1498528565,1498528565,-1,2,NULL),(7,NULL,1,4,'42.63',1498528724,1498787697,-1,2,'加多点辣吧'),(8,'063011123912_DNSK-E',1,4,'11.00',1498792359,1498792359,-1,2,NULL),(9,'070309594084_DNSK-E',1,-1,'35.00',1499047180,1499047180,-1,1,NULL),(10,'070310001037_DNSK-E',1,-1,'69.00',1499047210,1499047210,-1,1,NULL),(11,'070310002354_DNSK-E',1,-1,'1.00',1499047223,1499047223,-1,1,NULL),(12,'070310011179_DNSK-E',1,-1,'1.00',1499047271,1499047271,-1,1,NULL),(13,'070310012680_DNSK-E',1,-1,'6.00',1499047286,1499047286,-1,1,NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_good`
--

DROP TABLE IF EXISTS `order_good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '商品的数量',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`,`good_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='定单商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_good`
--

LOCK TABLES `order_good` WRITE;
/*!40000 ALTER TABLE `order_good` DISABLE KEYS */;
INSERT INTO `order_good` VALUES (1,1,3,0),(2,1,2,0),(3,2,3,2),(4,2,2,3),(5,3,3,2),(6,3,4,2),(7,4,3,1),(8,4,5,1),(9,5,5,2),(10,5,3,1),(11,6,5,2),(12,6,2,3),(13,7,5,3),(14,7,2,3),(15,8,4,1),(16,8,5,2),(17,9,6,1),(18,9,5,1),(19,10,6,2),(20,10,5,1),(21,11,5,1),(22,12,5,1),(23,13,4,1);
/*!40000 ALTER TABLE `order_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_shop_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '店铺类别',
  `img_thumb` varchar(100) DEFAULT NULL COMMENT '店铺缩图',
  `name` varchar(50) NOT NULL,
  `stars` tinyint(4) NOT NULL DEFAULT '5' COMMENT '星级',
  `functions` varchar(50) DEFAULT '1,2' COMMENT '功能：1 wifi,2 刷卡，3停车位，4包箱',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '默认营业中,0不营业',
  `fee_start_post` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '起送费',
  `fee_post` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '配送费',
  `avg_price` decimal(8,2) DEFAULT NULL COMMENT '人均价格',
  `addr_detail` varchar(100) DEFAULT '' COMMENT '地址详情',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL COMMENT '原图',
  `cate_name` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `info` text COMMENT '介绍',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `wx` varchar(50) DEFAULT NULL COMMENT 'wx',
  `qq` varchar(50) DEFAULT NULL COMMENT 'qq',
  `start_time` char(5) NOT NULL DEFAULT '00:00' COMMENT '开业时间',
  `end_time` char(5) NOT NULL DEFAULT '00:00' COMMENT '关业时间',
  `slogan` varchar(50) NOT NULL DEFAULT '好吃好吃在这里' COMMENT '标语',
  `in_or_out` varchar(50) NOT NULL DEFAULT '1,2' COMMENT '1堂食／2外送',
  `latitude` varchar(50) DEFAULT '0' COMMENT 'weidu',
  `longitude` varchar(50) DEFAULT '0' COMMENT 'jingdu',
  `addr_name` varchar(50) DEFAULT '' COMMENT '地址名称',
  `address_more` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='店铺';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,3,'/uploads/20170621/c8e150836e35eeb062cf278ec10ad420_thumb.jpg','糕点房1',5,'1,2',1,'8.00','3.00','12.00','北京市朝阳区育慧东路1号',1498021983,1498203156,'/uploads/20170621/c8e150836e35eeb062cf278ec10ad420.jpg',NULL,'          本店介绍本店介绍本店介绍本店介绍\r\n本店介绍本店介绍本店介绍\r\n本店介绍','     010-86426616','     ailishenma','27990922873','01:00','18:07','          没有最好，只有更好','1,2','39.99371','116.43718','中华女子学院','这个学校是做什么的呢？');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(255) NOT NULL DEFAULT 'asdf4657489234asdfasdg' COMMENT '微信用户的',
  `nickname` varchar(50) NOT NULL DEFAULT '微信昵称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `pwd` varchar(32) NOT NULL DEFAULT '' COMMENT 'md5加密保存',
  `mobile` char(11) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为男',
  `vistar` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `login_ip` varchar(20) DEFAULT NULL,
  `login_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `open_id` (`open_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'o8jjv0EjELzgPLxIavOKL7NAbdO4','微信昵称','DNSK-E','','',1,'',NULL,NULL,NULL,1,1498120112,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-04 12:18:25
