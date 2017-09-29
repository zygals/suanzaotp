drop table if exists article;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate` int(11) NOT NULL DEFAULT '1' COMMENT '分类id 1媒体报道 2行业资讯 3企业动态',
  `name` varchar(100) NOT NULL,
   click int default 0 comment '点击量',
   
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '列表图',
  `desc` text COMMENT '描述',
  `sort` int(11) DEFAULT '1000' COMMENT '排序',
  `st` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常，2不显示',
  `index_show` tinyint(4) DEFAULT '0' COMMENT '是否显示在轮番图',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cate` (`cate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资讯表';

drop table if exists cate_anli;
CREATE TABLE `cate_anli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL COMMENT '名称',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `st` tinyint(4) DEFAULT '1' COMMENT '0删除状态,1正常',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='anli分类'   


drop table if exists func;
CREATE TABLE `func` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL COMMENT '名称',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `st` tinyint(4) DEFAULT '1' COMMENT '0删除状态,1正常',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='anli功能'   ;


drop table if exists anli;
CREATE TABLE `anli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_anli_id` int(11) NOT NULL DEFAULT '1' COMMENT '分类id',
  `name` varchar(100) NOT null,
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '列表图',
func varchar(100) default '' comment '功能ids,eg.1,2,5',
  `desc` text COMMENT '描述',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `st` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常，2不显示',
  `index_show` tinyint(4) DEFAULT '0' COMMENT '是否显示在轮番图',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_anli_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='anli';


drop table if exists ad;
CREATE TABLE `ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(99) NOT NULL,
  `url` varchar(255) DEFAULT '',
  `new_window` tinyint(4) DEFAULT '0' COMMENT '链接是否在新窗口打开？',
  `word` text,
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT 'banner图',
  `position` tinyint(4) NOT NULL DEFAULT '1' COMMENT '所处位置：1首页 2业务体系 3金牌托管 4品牌案例 5关于我们',
   `st` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常，2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='广告' ;


drop table if exists recruit;
 CREATE TABLE `recruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '职位名称',
  `department` varchar(50) NOT NULL COMMENT '部门',
  `num` int NOT NULL COMMENT '招人数',
`addr` varchar(50) NOT NULL COMMENT '工作地',
  `duty` text COMMENT '岗位职责及优势',
   `st` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常，2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='招贤纳士'  ;


drop table if exists admin;
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


drop table if exists admin_log;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '1' COMMENT 'admin_id',
  `ip` varchar(50) DEFAULT '' COMMENT '上次登录ip',
  `create_time` int(11) DEFAULT '0' comment '登录时间',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='后台管理员登录日志'   ;

drop table if exists menu_admin;
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='后台左侧导航'     

drop table if exists friend;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL,
  `url` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `st` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='合作客户'     

drop table if exists seo_set;
CREATE TABLE `seo_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1首页 2业务体系 3品牌案例 4资讯中心 5关于我们 6渠道与招商',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo描述',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='seo set';   


drop table if exists shipin;
CREATE TABLE `shipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` varchar(100) NOT NULL  COMMENT '腾讯视频的vid',
  `name` varchar(100) NOT NULL DEFAULT '无视频名称' COMMENT '视频名称',
`click` int default 0 comment '浏览量',
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '视频缩图',
  `img_index` varchar(255) NOT NULL DEFAULT '' COMMENT '视频首页的效果图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo描述',
  'index_show' tinyint default 0 comment '是否显示在效果图位置', 
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='seo set';  

















