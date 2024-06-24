/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xianhuashangchengxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xianhuashangchengxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xianhuashangchengxitong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(2,2,'收货人2','17703786902','地址2',1,'2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(3,1,'收货人3','17703786903','地址3',1,'2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(4,3,'收货人4','17703786904','地址4',1,'2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(5,1,'收货人5','17703786905','地址5',1,'2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `xianhua_id` int(11) DEFAULT NULL COMMENT '鲜花',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xianhuashangchengxitong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xianhuashangchengxitong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xianhuashangchengxitong/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-24 10:34:48'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-24 10:34:48'),(3,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2022-03-24 10:34:48'),(4,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2022-03-24 10:34:48'),(5,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.95','2022-03-24 10:34:48'),(6,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-24 10:34:48'),(7,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-24 10:34:48'),(8,'xianhua_types','鲜花类型',1,'鲜花类型1',NULL,NULL,'2022-03-24 10:34:48'),(9,'xianhua_types','鲜花类型',2,'鲜花类型2',NULL,NULL,'2022-03-24 10:34:48'),(10,'xianhua_types','鲜花类型',3,'鲜花类型3',NULL,NULL,'2022-03-24 10:34:48'),(11,'xianhua_types','鲜花类型',4,'鲜花类型4',NULL,NULL,'2022-03-24 10:34:48'),(12,'xianhua_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-24 10:34:48'),(13,'xianhua_order_types','订单类型',1,'已评价',NULL,NULL,'2022-03-24 10:34:48'),(14,'xianhua_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-24 10:34:48'),(15,'xianhua_order_types','订单类型',3,'已支付',NULL,NULL,'2022-03-24 10:34:48'),(16,'xianhua_order_types','订单类型',4,'已发货',NULL,NULL,'2022-03-24 10:34:48'),(17,'xianhua_order_types','订单类型',5,'已收货',NULL,NULL,'2022-03-24 10:34:48'),(18,'xianhua_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-24 10:34:48'),(19,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-03-24 10:34:48'),(20,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-03-24 10:34:48'),(21,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2022-03-24 10:34:48'),(22,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2022-03-24 10:34:48'),(23,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2022-03-24 10:34:48'),(24,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-24 10:34:48'),(25,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-24 10:34:48'),(26,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-24 10:34:48'),(27,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-24 10:34:48');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`laoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,1,NULL,'发布内容1',NULL,2,1,'2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(2,'帖子标题2',3,2,NULL,'发布内容2',NULL,1,1,'2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(3,'帖子标题3',3,3,NULL,'发布内容3',NULL,2,1,'2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(4,'帖子标题4',3,4,NULL,'发布内容4',NULL,2,1,'2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(5,'帖子标题5',1,5,NULL,'发布内容5',NULL,2,1,'2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(6,NULL,2,NULL,NULL,'sadsa',5,NULL,2,'2022-03-24 11:18:23',NULL,'2022-03-24 11:18:23'),(7,NULL,NULL,NULL,6,'222',5,NULL,2,'2022-03-24 11:23:20',NULL,'2022-03-24 11:23:20'),(8,NULL,1,NULL,NULL,'撒打算',5,NULL,2,'2022-03-24 11:24:39',NULL,'2022-03-24 11:24:39');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/xianhuashangchengxitong/upload/gonggao1.jpg',2,'2022-03-24 10:35:55','公告详情1','2022-03-24 10:35:55'),(2,'公告名称2','http://localhost:8080/xianhuashangchengxitong/upload/gonggao2.jpg',1,'2022-03-24 10:35:55','公告详情2','2022-03-24 10:35:55'),(3,'公告名称3','http://localhost:8080/xianhuashangchengxitong/upload/gonggao3.jpg',1,'2022-03-24 10:35:55','公告详情3','2022-03-24 10:35:55'),(4,'公告名称4','http://localhost:8080/xianhuashangchengxitong/upload/gonggao4.jpg',2,'2022-03-24 10:35:55','公告详情4','2022-03-24 10:35:55'),(5,'公告名称5','http://localhost:8080/xianhuashangchengxitong/upload/gonggao5.jpg',2,'2022-03-24 10:35:55','公告详情5','2022-03-24 10:35:55');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','19gwlmbowix7mz92d3oztvqeacahg0tz','2022-03-24 10:38:56','2022-03-24 12:25:19'),(2,6,'admin','users','管理员','vwjab1vmiyonxo2csvf1gry6lvak7oy9','2022-03-24 10:40:18','2022-03-24 12:25:48'),(3,2,'a2','yonghu','用户','fkqsewyxz2scpleal22nlz6nv0osmiux','2022-03-24 11:18:07','2022-03-24 12:18:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `xianhua` */

DROP TABLE IF EXISTS `xianhua`;

CREATE TABLE `xianhua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xianhua_name` varchar(200) DEFAULT NULL COMMENT '鲜花名称  Search111 ',
  `xianhua_photo` varchar(200) DEFAULT NULL COMMENT '鲜花照片',
  `xianhua_types` int(11) DEFAULT NULL COMMENT '鲜花类型 Search111',
  `xianhua_kucun_number` int(11) DEFAULT NULL COMMENT '鲜花库存',
  `xianhua_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `xianhua_old_money` decimal(10,2) DEFAULT NULL COMMENT '鲜花原价 ',
  `xianhua_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `xianhua_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `xianhua_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `xianhua_content` text COMMENT '鲜花简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='鲜花';

/*Data for the table `xianhua` */

insert  into `xianhua`(`id`,`xianhua_name`,`xianhua_photo`,`xianhua_types`,`xianhua_kucun_number`,`xianhua_price`,`xianhua_old_money`,`xianhua_new_money`,`xianhua_clicknum`,`shangxia_types`,`xianhua_delete`,`xianhua_content`,`create_time`) values (1,'鲜花名称1','http://localhost:8080/xianhuashangchengxitong/upload/xianhua1.jpg',4,101,181,'838.45','96.91',489,1,1,'鲜花简介1','2022-03-24 10:35:55'),(2,'鲜花名称2','http://localhost:8080/xianhuashangchengxitong/upload/xianhua2.jpg',4,98,184,'672.50','341.50',246,1,1,'鲜花简介2','2022-03-24 10:35:55'),(3,'鲜花名称3','http://localhost:8080/xianhuashangchengxitong/upload/xianhua3.jpg',3,98,184,'806.49','248.95',73,1,1,'鲜花简介3','2022-03-24 10:35:55'),(4,'鲜花名称4','http://localhost:8080/xianhuashangchengxitong/upload/xianhua4.jpg',2,102,486,'667.56','96.63',424,1,1,'鲜花简介4','2022-03-24 10:35:55'),(5,'鲜花名称5','http://localhost:8080/xianhuashangchengxitong/upload/xianhua5.jpg',2,100,498,'949.96','247.88',330,1,1,'鲜花简介5','2022-03-24 10:35:55');

/*Table structure for table `xianhua_collection` */

DROP TABLE IF EXISTS `xianhua_collection`;

CREATE TABLE `xianhua_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xianhua_id` int(11) DEFAULT NULL COMMENT '鲜花',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xianhua_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='鲜花收藏';

/*Data for the table `xianhua_collection` */

insert  into `xianhua_collection`(`id`,`xianhua_id`,`yonghu_id`,`xianhua_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-03-24 10:35:55','2022-03-24 10:35:55'),(2,2,1,1,'2022-03-24 10:35:55','2022-03-24 10:35:55'),(3,3,2,1,'2022-03-24 10:35:55','2022-03-24 10:35:55'),(4,4,1,1,'2022-03-24 10:35:55','2022-03-24 10:35:55'),(5,5,1,1,'2022-03-24 10:35:55','2022-03-24 10:35:55');

/*Table structure for table `xianhua_commentback` */

DROP TABLE IF EXISTS `xianhua_commentback`;

CREATE TABLE `xianhua_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xianhua_id` int(11) DEFAULT NULL COMMENT '鲜花',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xianhua_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='鲜花评价';

/*Data for the table `xianhua_commentback` */

insert  into `xianhua_commentback`(`id`,`xianhua_id`,`yonghu_id`,`xianhua_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,1,'评价内容1','回复信息1','2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(2,2,2,'评价内容2','回复信息2','2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(3,3,3,'评价内容3','回复信息3','2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(4,4,2,'评价内容4','回复信息4','2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(5,5,1,'评价内容5','回复信息5','2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(6,4,1,'好的很','duoxie ','2022-03-24 11:25:06','2022-03-24 11:26:04','2022-03-24 11:25:06');

/*Table structure for table `xianhua_liuyan` */

DROP TABLE IF EXISTS `xianhua_liuyan`;

CREATE TABLE `xianhua_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xianhua_id` int(11) DEFAULT NULL COMMENT '鲜花',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xianhua_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='鲜花留言';

/*Data for the table `xianhua_liuyan` */

insert  into `xianhua_liuyan`(`id`,`xianhua_id`,`yonghu_id`,`xianhua_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,3,'留言内容1','回复信息1','2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(2,2,3,'留言内容2','回复信息2','2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(3,3,3,'留言内容3','回复信息3','2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(4,4,3,'留言内容4','回复信息4','2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55'),(5,5,3,'留言内容5','回复信息5','2022-03-24 10:35:55','2022-03-24 10:35:55','2022-03-24 10:35:55');

/*Table structure for table `xianhua_order` */

DROP TABLE IF EXISTS `xianhua_order`;

CREATE TABLE `xianhua_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xianhua_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收获地址 ',
  `xianhua_id` int(11) DEFAULT NULL COMMENT '鲜花',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `xianhua_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `xianhua_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `xianhua_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `xianhua_order_kuaididanhao` varchar(200) DEFAULT NULL COMMENT '快递单号 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='鲜花订单';

/*Data for the table `xianhua_order` */

insert  into `xianhua_order`(`id`,`xianhua_order_uuid_number`,`address_id`,`xianhua_id`,`yonghu_id`,`buy_number`,`xianhua_order_true_price`,`xianhua_order_types`,`xianhua_order_payment_types`,`xianhua_order_kuaididanhao`,`insert_time`,`create_time`) values (1,'1646188801913',5,2,1,2,'669.34',3,1,NULL,'2022-03-24 10:40:02','2022-03-24 10:40:02'),(2,'1646188810644',3,2,1,2,'669.34',4,1,'申通快递252','2022-03-24 10:40:11','2022-03-24 10:40:11'),(3,'1646188810644',3,3,1,4,'975.88',5,1,'申通快递995652','2022-03-24 10:40:11','2022-03-24 10:40:11'),(4,'1646188810644',3,4,1,2,'189.39',1,1,'圆通快递87825','2022-03-24 10:40:11','2022-03-24 10:40:11'),(5,'1646191129880',2,5,2,2,'485.84',3,1,NULL,'2022-03-24 11:18:50','2022-03-24 11:18:50'),(6,'1646191168029',1,5,2,3,'728.77',4,1,'单号21251','2022-03-24 11:19:28','2022-03-24 11:19:28'),(7,'1646191168029',1,3,2,1,'243.97',4,1,'申通快递26452','2022-03-24 11:19:28','2022-03-24 11:19:28'),(8,'1646191168029',1,4,2,2,'189.39',2,1,NULL,'2022-03-24 11:19:28','2022-03-24 11:19:28');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/xianhuashangchengxitong/upload/yonghu1.jpg',1,'1@qq.com','7610.41','3202.50','2560.29',1,'2022-03-24 10:35:55'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/xianhuashangchengxitong/upload/yonghu2.jpg',2,'2@qq.com','9173.18','3449.30','2993.11',1,'2022-03-24 10:35:55'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/xianhuashangchengxitong/upload/yonghu3.jpg',2,'3@qq.com','52.88','787.59','132.30',1,'2022-03-24 10:35:55');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
