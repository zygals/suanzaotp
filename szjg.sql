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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-28 10:30:00
