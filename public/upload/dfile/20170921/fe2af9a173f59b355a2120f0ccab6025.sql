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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台管理员';
LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'suanzao888','5b94734d0c266fafab796bcdcb20d8a8',1,0,0);

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
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='后台管理员登录日志';

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
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='广告';

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
  PRIMARY KEY (`id`),
  KEY `cate` (`cate_id`),
  foreign key(cate_id) references cate(id) on delete restrict 
) ENGINE=innodb AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='资讯表';

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
  PRIMARY KEY (`id`)
) ENGINE=innodb AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='分类';

DROP TABLE IF EXISTS `dfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL COMMENT '名称',
  `path` varchar(99) DEFAULT '' COMMENT '文件上传路径',
`size` int default 0 comment '文件大小,单位M',
`ext` varchar(50) comment '后缀类型:.apk,...',
  `st` tinyint(4) DEFAULT '1' COMMENT '0删除状态,1正常,2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='可下载的文件';




insert into cate (id,name) value (null,'fenlei1');

insert into 


