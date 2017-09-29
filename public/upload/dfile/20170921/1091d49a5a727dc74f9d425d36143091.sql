-- MySQL dump 10.13  Distrib 5.1.61, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: huahui
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
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `pcd` varchar(100) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL COMMENT '收货地址其它信息',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收货人地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'小米妹','15866324459',0,'北京市 北京市 朝阳区','北四环东路65号世纪宝鼎',1498639288,1498639288),(2,1,'张一个','18566326612',0,'河北省 邯郸市 邯郸县','是什电影仅仅',1498639359,1498639359),(3,5,'王东旭','13311278511',0,'北京市 北京市 昌平区','霍营龙锦苑东五区5号楼4单元502室\n',1498639411,1498639411);
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
  `pwd` varchar(32) NOT NULL DEFAULT 'admin888_huahui',
  `email` varchar(100) DEFAULT NULL,
  `login_ip` varchar(20) DEFAULT NULL,
  `login_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `true_name` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','709bc9dc1788afddf26cc68198656300',NULL,NULL,NULL,1,NULL,NULL,NULL),(2,'admin2','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,1,NULL,1495514005,NULL),(5,'admin4','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,1,NULL,NULL,NULL),(7,'admin55','af15d5fdacd5fdfea300e88a8e253e82',NULL,NULL,NULL,1,1495436174,1495437519,NULL),(8,'admin66','7fa8282ad93047a4d6fe6111c93b308a',NULL,NULL,NULL,1,1495436211,1495437447,NULL),(9,'admin123','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,1,1498619806,1498619806,NULL);
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
  `admin_id` int(11) NOT NULL COMMENT '添加评论用户',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0不显示1显示2删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='首页广告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adv`
--

LOCK TABLES `adv` WRITE;
/*!40000 ALTER TABLE `adv` DISABLE KEYS */;
INSERT INTO `adv` VALUES (1,'/uploads/20170628/5d66a92920288813f438dd5cc6ae80de.png','/uploads/20170628/5d66a92920288813f438dd5cc6ae80de_thumb.png','',9,1498627985,1498628187,2),(2,'/uploads/20170628/4d752b80239aac4cfce8a25d2c5c30d9.png','/uploads/20170628/4d752b80239aac4cfce8a25d2c5c30d9_thumb.png','',9,1498628131,1498640885,1),(3,'/uploads/20170628/8c65cdf990302969c60e042d8ae58449.png','/uploads/20170628/8c65cdf990302969c60e042d8ae58449_thumb.png','',9,1498628162,1498640897,1),(4,'/uploads/20170628/72a13d5cd8784a3d7c6093d22b230472.png','/uploads/20170628/72a13d5cd8784a3d7c6093d22b230472_thumb.png','',9,1498628172,1498640906,1);
/*!40000 ALTER TABLE `adv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='适用空间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` VALUES (1,'卧室',0,1498636870,1498636870,1);
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL DEFAULT '',
  `img_thumb` varchar(255) NOT NULL DEFAULT '',
  `cont` text NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT '1',
  `admin_id` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0表示不显示，1表示显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='专题管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,2,'夏天这种盆栽花卉容易被晒死','/uploads/20170628/f59acfc387505d02ec547464b5524dab.jpg','/uploads/20170628/f59acfc387505d02ec547464b5524dab_thumb.jpg','八仙花\r\n也就是绣球花，夏季一定要适当遮阴，特别盆栽养护的额，夏季要养在遮阴的地方，有一点散射光，最好是下午阴凉的地方，可以是树荫、西东面的阳台，每天有一点的散射光就行了。\r\n1、短日照养护\r\n绣球花其实是属于一种喜欢短日照的花卉，养护的时候每天见光的时间不宜过长，如果你的绣球花养得枝繁叶茂，而且养分充足的，但就是不开花，那么可以适当遮阴，每天放完全黑暗的地方12小时左右，很快就能孕育花蕾了。\r\n2、充分浇水\r\n养护绣球花需要保持盆土微润，土壤不能过于干燥，它是一种非常喜欢湿润的花卉，养护的过程中缺水容易萎蔫，夏季温度较高，通风较好的情况，可以每天进行浇水。\r\n3、土壤选择\r\n栽种绣球花的土壤一定要保持良好的排水性，在土壤里混入适当的河沙，避免土壤积水就行了。',1,1,1498620707,1498643593,1),(2,2,'好吧爬坡','/uploads/20170629/2b7f358e3c917c6ee164e7f83573bac0.png','/uploads/20170629/2b7f358e3c917c6ee164e7f83573bac0_thumb.png','\r\n	<image src=\"/huahui/public/editor/attached/image/20170629/20170629051224_54082.png\" alt=\"\" /> \r\n\r\n\r\n	adsfadsfadf\r\n',2,1,1498712315,1498713979,1),(3,1,'adfasdg','/uploads/20170629/eafc69ea18eda0dca5fc4f5caae52407.png','/uploads/20170629/eafc69ea18eda0dca5fc4f5caae52407_thumb.png','asgdagd23424',1,1,1498713959,1498713959,1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_class`
--

DROP TABLE IF EXISTS `article_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='心得类别表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_class`
--

LOCK TABLES `article_class` WRITE;
/*!40000 ALTER TABLE `article_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='品牌表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'多有米',0,1498621088,1498621088,1),(2,'白蝴蝶兰',0,1498636848,1498636848,1);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sum_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0表示取消，1表示正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,'0.00',1498638654,1498638654,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_flower`
--

DROP TABLE IF EXISTS `cart_flower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_flower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `flower_id` int(11) NOT NULL DEFAULT '1',
  `nums` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`,`flower_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_flower`
--

LOCK TABLES `cart_flower` WRITE;
/*!40000 ALTER TABLE `cart_flower` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_flower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `index_recomment` tinyint(4) DEFAULT NULL COMMENT '首页是否推荐0不推荐1推版块１2推荐版块２',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'49元区',1498634775,1498714335,0,1),(2,'限时优惠',1498634789,1498714335,0,0),(3,'推荐分类',1498700520,1498714335,1,0),(4,'分类1',1498700546,1498714335,0,0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `experience_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `cont` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `experience_id` (`experience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='心得评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flower`
--

DROP TABLE IF EXISTS `flower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL DEFAULT '1',
  `brand_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL DEFAULT '',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `apply_ids` varchar(50) NOT NULL DEFAULT '1,2' COMMENT '适用空间',
  `function_ids` varchar(100) NOT NULL DEFAULT '1,2' COMMENT '适用空间',
  `hard` tinyint(4) DEFAULT NULL COMMENT '0非常容易,1容易,2 难;\n\n;\n',
  `pot` tinyint(4) NOT NULL DEFAULT '1' COMMENT '１含花盆，0不含',
  `img` varchar(100) NOT NULL DEFAULT '',
  `img_thumb` varchar(100) NOT NULL DEFAULT '',
  `big_imgs` text,
  `sell_sum` int(11) NOT NULL DEFAULT '0',
  `sell_month` int(11) NOT NULL DEFAULT '0',
  `hot` tinyint(4) DEFAULT '0',
  `new` tinyint(4) DEFAULT '0',
  `recomment` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 推荐',
  `delivery` tinyint(4) NOT NULL DEFAULT '1' COMMENT '快递普通',
  `post` tinyint(4) DEFAULT '1' COMMENT '1包邮？0不包',
  `detail` text COMMENT '详情文字',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `deliver_fee` decimal(4,2) NOT NULL DEFAULT '0.00',
  `storage` int(11) NOT NULL DEFAULT '1',
  `fahuodi` varchar(50) NOT NULL DEFAULT 'hebei',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='花卉表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flower`
--

LOCK TABLES `flower` WRITE;
/*!40000 ALTER TABLE `flower` DISABLE KEYS */;
INSERT INTO `flower` VALUES (1,1,1,'四海波','0.10','1','1',1,1,'/uploads/20170628/9e7852f07649f4b5c160566b79e6c1b0.jpg','/uploads/20170628/9e7852f07649f4b5c160566b79e6c1b0_thumb.jpg','/uploads/20170628/c019a966f4bdd701c6a57d6a7ce4b2dd.jpg',120,12,1,1,1,1,1,'四海波为番杏科肉黄菊属多肉植物，丛生。无茎。叶肉质，绿色，长5cm，边缘具齿9～10个。\r\n四海波花黄色，雏菊状。直径5cm，秋季开放。株高10cm，冠径50cm，耐最低温度6℃。30多个品种，常见栽培的有10余种。\r\n四海波喜温暖而忌酷暑、严寒，夏季休眠，需要遮荫50%，勤喷水而控制浇水，淋雨或浇水多易腐。秋冬生长期需要充足的光照及适当的肥水。叶形叶色较美，有一定的观赏价值；盆栽可放置于电视、电脑旁，可吸收辐射，亦可栽植于室内以吸收甲醛等物质，净化空气。\r\n四海波植株密集丛生，非常肉质，叶十字交互对生，基部联合，先端三角形，叶缘和叶背龙骨突表皮硬膜化，大部分叶面有肉齿，叶缘有肉质粗纤毛，花大无柄，花色以黄色为多，夏季休眠。',0,1498627471,1498639355,1,'0.00',1,'hebei'),(2,1,2,'白蝶兰','49.00','1','1',1,1,'/uploads/20170628/96407a47abd8143d9e8c0708c57670d4.jpg','/uploads/20170628/96407a47abd8143d9e8c0708c57670d4_thumb.jpg','/uploads/20170628/c577d19434da7c15620968b9598685f9.png,/uploads/20170628/458405fb5b04ed6bbfdc083be9d52ffa.png',3,3,1,1,1,1,1,'白蝶兰是一种广泛分布于北澳大立亚的昆士兰州、印尼、巴布亚新几内亚，至菲律宾与苏门答腊 ，海拔高度五百公尺以上的大型着生兰花。白蝶兰的花朵纤弱儿美丽，花梗可达一公尺长，总状花序疏生多朵美丽的白花，或因花朵密集而似圆锥花序，花期春季至夏季。\r\n我国有白蝶兰和云南白蝶兰等2种。陆生兰，有块茎；叶数枚，从基部向上渐尖，并逐渐过渡为苞片；总状花序具数朵花；花常大而艳丽。',0,1498636955,1498639889,1,'0.00',5,'hebei'),(3,2,1,'美叶光萼荷','49.00','1','1',1,1,'/uploads/20170628/1a3ffc755dfd8e16ac2e184a12953505.jpg','/uploads/20170628/1a3ffc755dfd8e16ac2e184a12953505_thumb.jpg','/uploads/20170628/89437ea64d267e4d059d7454235b158f.png',1,1,1,1,1,1,1,'美叶光萼荷为凤梨科多年生附生常绿草本植物。莲座状叶丛相互套叠成筒状。叶长达60厘米，革质，被灰色鳞片，绿色，有虎纹状银白色横纹，边缘有黑色小刺。花莛直立，花序穗状，有分枝，花多数。苞片革质，淡红色或深红色。小花无柄，淡蓝色。冬季开花。 美叶光萼荷原产南美巴西东南部。喜阳光充足，亦耐阴的环境。常作盆栽或吊盆观赏，用它美化居室，布置厅堂。',0,1498641227,1498641227,1,'0.00',10,'hebei'),(4,3,2,'asas','1.00','1','1',1,1,'/uploads/20170629/52fa98d9c99eb492282d9f3085a0596b.png','/uploads/20170629/52fa98d9c99eb492282d9f3085a0596b_thumb.png','/uploads/20170629/be4e499e80a6b84b3ab9f8fe977ebca9.png',120,12,1,1,1,1,1,'saaa434',0,1498700761,1498700761,1,'0.00',1,'hebei');
/*!40000 ALTER TABLE `flower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `functions`
--

DROP TABLE IF EXISTS `functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `functions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='功能表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `functions`
--

LOCK TABLES `functions` WRITE;
/*!40000 ALTER TABLE `functions` DISABLE KEYS */;
INSERT INTO `functions` VALUES (1,'吸甲醛',0,1498636893,1498636893,1);
/*!40000 ALTER TABLE `functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `flower_id` int(11) NOT NULL COMMENT '花卉id',
  `class_id` tinyint(4) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) DEFAULT NULL,
  `cont` varchar(255) DEFAULT NULL COMMENT '内容文本',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='心得表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,5,1,0,0,204,'123',1498628264,1498643159,1),(2,1,1,0,0,168,'可以吸收笛的花',1498635599,1498714350,1),(3,1,1,0,0,162,'不可多得的一个花啊',1498635919,1498714350,1),(4,5,3,0,0,46,'好',1498642518,1498714350,1);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_class`
--

DROP TABLE IF EXISTS `log_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='心得类别表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_class`
--

LOCK TABLES `log_class` WRITE;
/*!40000 ALTER TABLE `log_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_class` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='心得评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_comment`
--

LOCK TABLES `log_comment` WRITE;
/*!40000 ALTER TABLE `log_comment` DISABLE KEYS */;
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
  `user_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT '0',
  `sum_price` decimal(10,2) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,2,'0.10',1498638691,1498642249,1),(2,5,3,'0.10',1498639381,1498642633,3);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_flower`
--

DROP TABLE IF EXISTS `order_flower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_flower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `flower_id` int(11) NOT NULL,
  `nums` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定单商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_flower`
--

LOCK TABLES `order_flower` WRITE;
/*!40000 ALTER TABLE `order_flower` DISABLE KEYS */;
INSERT INTO `order_flower` VALUES (1,1,1,2),(2,2,1,1);
/*!40000 ALTER TABLE `order_flower` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'o8jjv0EjELzgPLxIavOKL7NAbdO4','zyg～php','qRioFe','','',1,'https://wx.qlogo.cn/mmopen/vi_32/fbWPBkibNZDHQenKcfGNxEGKEicQIRSWjcn1micWKY2ruia9ww2JGCTIWZq1MC2RiaGeG5bHLveSrznXsibRhjoV2ASQ/0',NULL,NULL,NULL,1,1498613978,NULL),(5,'o8jjv0DNyqGLW3tvsKMYVQEJHIvE','王东旭','cDoWWb','','',1,'http://wx.qlogo.cn/mmopen/vi_32/oKVOIPZrMLfGiaribgDZ1icj5Z1icpEcHzd0JynRibTbzkwd40qQed10x1m8mCcpoBgRyDJKl37T8bFFrvbu57YKmng/0',NULL,NULL,NULL,1,1498620723,NULL);
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

-- Dump completed on 2017-07-04 12:19:03
