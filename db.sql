/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - liulangdongwubeihua
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`liulangdongwubeihua` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `liulangdongwubeihua`;

/*Table structure for table `chongwu` */

DROP TABLE IF EXISTS `chongwu`;

CREATE TABLE `chongwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongwu_name` varchar(200) DEFAULT NULL COMMENT '宠物名称  Search111 ',
  `chongwu_photo` varchar(200) DEFAULT NULL COMMENT '宠物照片',
  `chongwu_types` int(11) DEFAULT NULL COMMENT '宠物类型 Search111',
  `chongwu_content` text COMMENT '宠物介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='宠物信息';

/*Data for the table `chongwu` */

insert  into `chongwu`(`id`,`chongwu_name`,`chongwu_photo`,`chongwu_types`,`chongwu_content`,`create_time`) values (1,'宠物名称1','http://localhost:8080/liulangdongwubeihua/upload/chongwu1.jpg',2,'宠物介绍1','2022-04-04 17:33:52'),(2,'宠物名称2','http://localhost:8080/liulangdongwubeihua/upload/chongwu2.jpg',2,'宠物介绍2','2022-04-04 17:33:52'),(3,'宠物名称3','http://localhost:8080/liulangdongwubeihua/upload/chongwu3.jpg',3,'宠物介绍3','2022-04-04 17:33:52'),(4,'宠物名称4','http://localhost:8080/liulangdongwubeihua/upload/chongwu4.jpg',1,'宠物介绍4','2022-04-04 17:33:52'),(5,'宠物名称5','http://localhost:8080/liulangdongwubeihua/upload/chongwu5.jpg',1,'宠物介绍5','2022-04-04 17:33:52');

/*Table structure for table `chongwu_collection` */

DROP TABLE IF EXISTS `chongwu_collection`;

CREATE TABLE `chongwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='宠物收藏';

/*Data for the table `chongwu_collection` */

insert  into `chongwu_collection`(`id`,`chongwu_id`,`yonghu_id`,`chongwu_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2022-04-04 17:33:52','2022-04-04 17:33:52'),(2,2,2,1,'2022-04-04 17:33:52','2022-04-04 17:33:52'),(3,3,3,1,'2022-04-04 17:33:52','2022-04-04 17:33:52'),(5,5,1,1,'2022-04-04 17:33:52','2022-04-04 17:33:52');

/*Table structure for table `chongwu_liuyan` */

DROP TABLE IF EXISTS `chongwu_liuyan`;

CREATE TABLE `chongwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='宠物留言';

/*Data for the table `chongwu_liuyan` */

insert  into `chongwu_liuyan`(`id`,`chongwu_id`,`yonghu_id`,`chongwu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2022-04-04 17:33:52','回复信息1','2022-04-04 17:33:52','2022-04-04 17:33:52'),(2,2,2,'留言内容2','2022-04-04 17:33:52','回复信息2','2022-04-04 17:33:52','2022-04-04 17:33:52'),(3,3,2,'留言内容3','2022-04-04 17:33:52','回复信息3','2022-04-04 17:33:52','2022-04-04 17:33:52'),(4,4,2,'留言内容4','2022-04-04 17:33:52','回复信息4','2022-04-04 17:33:52','2022-04-04 17:33:52'),(5,5,1,'留言内容5','2022-04-04 17:33:52','回复信息5','2022-04-04 17:33:52','2022-04-04 17:33:52'),(7,1,1,'321','2022-04-04 17:49:00','回复123','2022-04-04 17:50:34','2022-04-04 17:49:00');

/*Table structure for table `chongwujiyang` */

DROP TABLE IF EXISTS `chongwujiyang`;

CREATE TABLE `chongwujiyang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_name` varchar(200) DEFAULT NULL COMMENT '宠物名称  Search111 ',
  `chongwu_photo` varchar(200) DEFAULT NULL COMMENT '宠物照片',
  `chongwu_types` int(11) DEFAULT NULL COMMENT '宠物类型 Search111',
  `jiyang_riqi_time` date DEFAULT NULL COMMENT '寄养日期',
  `jiyang_tianshu` int(11) DEFAULT NULL COMMENT '寄养天数',
  `jiyangdizhi` varchar(200) DEFAULT NULL COMMENT '寄养地址',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人姓名',
  `lianxiren_phone` varchar(200) DEFAULT NULL COMMENT '联系人手机号',
  `chongwujiyang_content` text COMMENT '寄养详情',
  `chongwujiyang_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `chongwujiyang_yesno_text` text COMMENT '审核意见',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='宠物寄养';

/*Data for the table `chongwujiyang` */

insert  into `chongwujiyang`(`id`,`yonghu_id`,`chongwu_name`,`chongwu_photo`,`chongwu_types`,`jiyang_riqi_time`,`jiyang_tianshu`,`jiyangdizhi`,`lianxiren_name`,`lianxiren_phone`,`chongwujiyang_content`,`chongwujiyang_yesno_types`,`chongwujiyang_yesno_text`,`insert_time`,`create_time`) values (1,3,'宠物名称1','http://localhost:8080/liulangdongwubeihua/upload/chongwu1.jpg',3,'2022-04-04',353,'寄养地址1','联系人姓名1','17703786901','寄养详情1',1,NULL,'2022-04-04 17:33:52','2022-04-04 17:33:52'),(2,1,'宠物名称2','http://localhost:8080/liulangdongwubeihua/upload/chongwu2.jpg',1,'2022-04-04',338,'寄养地址2','联系人姓名2','17703786902','寄养详情2',1,NULL,'2022-04-04 17:33:52','2022-04-04 17:33:52'),(3,1,'宠物名称3','http://localhost:8080/liulangdongwubeihua/upload/chongwu3.jpg',3,'2022-04-04',245,'寄养地址3','联系人姓名3','17703786903','寄养详情3',1,NULL,'2022-04-04 17:33:52','2022-04-04 17:33:52'),(4,2,'宠物名称4','http://localhost:8080/liulangdongwubeihua/upload/chongwu4.jpg',2,'2022-04-04',119,'寄养地址4','联系人姓名4','17703786904','寄养详情4',1,NULL,'2022-04-04 17:33:52','2022-04-04 17:33:52'),(5,1,'宠物名称5','http://localhost:8080/liulangdongwubeihua/upload/chongwu5.jpg',2,'2022-04-04',387,'寄养地址5','联系人姓名5','17703786905','寄养详情5',2,'同意123','2022-04-04 17:33:52','2022-04-04 17:33:52');

/*Table structure for table `chongwulingyang` */

DROP TABLE IF EXISTS `chongwulingyang`;

CREATE TABLE `chongwulingyang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwulingyang_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111',
  `chongwu_types` int(11) DEFAULT NULL COMMENT '宠物类型 Search111',
  `chongwulingyang_photo` varchar(200) DEFAULT NULL COMMENT '宠物图片',
  `jieshu_types` int(11) DEFAULT NULL COMMENT '是否被认领',
  `chongwulingyang_content` text COMMENT '宠物详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='宠物领养';

/*Data for the table `chongwulingyang` */

insert  into `chongwulingyang`(`id`,`chongwulingyang_name`,`chongwu_types`,`chongwulingyang_photo`,`jieshu_types`,`chongwulingyang_content`,`create_time`) values (1,'标题1',2,'http://localhost:8080/liulangdongwubeihua/upload/chongwulingyang1.jpg',1,'宠物详情1','2022-04-04 17:33:52'),(2,'标题2',3,'http://localhost:8080/liulangdongwubeihua/upload/chongwulingyang2.jpg',1,'宠物详情2','2022-04-04 17:33:52'),(3,'标题3',1,'http://localhost:8080/liulangdongwubeihua/upload/chongwulingyang3.jpg',2,'宠物详情3','2022-04-04 17:33:52'),(4,'标题4',1,'http://localhost:8080/liulangdongwubeihua/upload/chongwulingyang4.jpg',2,'宠物详情4','2022-04-04 17:33:52'),(5,'标题5',3,'http://localhost:8080/liulangdongwubeihua/upload/chongwulingyang5.jpg',1,'宠物详情5','2022-04-04 17:33:52');

/*Table structure for table `chongwulingyangshenhe` */

DROP TABLE IF EXISTS `chongwulingyangshenhe`;

CREATE TABLE `chongwulingyangshenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwulingyang_id` int(11) DEFAULT NULL COMMENT '宠物领养',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '领养用户',
  `chongwurenlingshenhe_text` text COMMENT '认领凭据',
  `chongwulingyangshenhe_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态',
  `chongwulingyangshenhe_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='宠物领养审核';

/*Data for the table `chongwulingyangshenhe` */

insert  into `chongwulingyangshenhe`(`id`,`chongwulingyang_id`,`yonghu_id`,`chongwurenlingshenhe_text`,`chongwulingyangshenhe_yesno_types`,`chongwulingyangshenhe_yesno_text`,`create_time`) values (1,1,2,'认领凭据1',1,NULL,'2022-04-04 17:33:52'),(2,2,1,'认领凭据2',1,NULL,'2022-04-04 17:33:52'),(3,3,3,'认领凭据3',1,NULL,'2022-04-04 17:33:52'),(4,4,2,'认领凭据4',2,'1112233','2022-04-04 17:33:52');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/liulangdongwubeihua/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/liulangdongwubeihua/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/liulangdongwubeihua/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'chongwu_types','宠物类型',1,'宠物类型1',NULL,NULL,'2022-04-04 17:33:41'),(2,'chongwu_types','宠物类型',2,'宠物类型2',NULL,NULL,'2022-04-04 17:33:41'),(3,'chongwu_types','宠物类型',3,'宠物类型3',NULL,NULL,'2022-04-04 17:33:41'),(4,'chongwujiyang_yesno_types','审核状态',1,'审核中',NULL,NULL,'2022-04-04 17:33:41'),(5,'chongwujiyang_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-04-04 17:33:41'),(6,'chongwujiyang_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-04-04 17:33:41'),(7,'jieshu_types','是否被认领',1,'可认领',NULL,NULL,'2022-04-04 17:33:41'),(8,'jieshu_types','是否被认领',2,'已认领',NULL,NULL,'2022-04-04 17:33:41'),(9,'chongwulingyangshenhe_yesno_types','审核状态',1,'审核中',NULL,NULL,'2022-04-04 17:33:41'),(10,'chongwulingyangshenhe_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-04-04 17:33:41'),(11,'chongwulingyangshenhe_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-04-04 17:33:41'),(12,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-04 17:33:41'),(13,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-04 17:33:41'),(14,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-04 17:33:41'),(15,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-04 17:33:41'),(16,'chongwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-04 17:33:41'),(17,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-04 17:33:42'),(18,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-04 17:33:42'),(19,'news_types','公告类型',3,'宠物知识科普',NULL,NULL,'2022-04-04 17:33:42');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ziyuanzhe_id` int(11) DEFAULT NULL COMMENT '自愿者',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`ziyuanzhe_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,NULL,'发布内容1',NULL,1,'2022-04-04 17:33:52','2022-04-04 17:33:52','2022-04-04 17:33:52'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',NULL,1,'2022-04-04 17:33:52','2022-04-04 17:33:52','2022-04-04 17:33:52'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',NULL,1,'2022-04-04 17:33:52','2022-04-04 17:33:52','2022-04-04 17:33:52'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',NULL,1,'2022-04-04 17:33:52','2022-04-04 17:33:52','2022-04-04 17:33:52'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',NULL,1,'2022-04-04 17:33:52','2022-04-04 17:33:52','2022-04-04 17:33:52'),(6,NULL,1,NULL,NULL,'用户评论123',5,2,'2022-04-04 17:49:31',NULL,'2022-04-04 17:49:31'),(7,NULL,NULL,NULL,1,'管理回复123',5,2,'2022-04-04 17:53:12',NULL,'2022-04-04 17:53:12'),(8,NULL,NULL,1,NULL,'自愿者评论1111',5,2,'2022-04-04 17:53:50',NULL,'2022-04-04 17:53:50');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/liulangdongwubeihua/upload/news1.jpg','2022-04-04 17:33:52','公告详情1','2022-04-04 17:33:52'),(2,'公告标题2',3,'http://localhost:8080/liulangdongwubeihua/upload/news2.jpg','2022-04-04 17:33:52','公告详情2','2022-04-04 17:33:52'),(3,'公告标题3',3,'http://localhost:8080/liulangdongwubeihua/upload/news3.jpg','2022-04-04 17:33:52','公告详情3','2022-04-04 17:33:52'),(4,'公告标题4',2,'http://localhost:8080/liulangdongwubeihua/upload/news4.jpg','2022-04-04 17:33:52','公告详情4','2022-04-04 17:33:52'),(5,'公告标题5',3,'http://localhost:8080/liulangdongwubeihua/upload/news5.jpg','2022-04-04 17:33:52','公告详情5','2022-04-04 17:33:52');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','d2pw7wfn5plvvlleonra9fi91dwwf868','2022-04-04 17:12:14','2022-04-04 18:55:41'),(2,1,'a1','yonghu','用户','6531ii3uhi9tso3u9uwizf69ti1wv78m','2022-04-04 17:17:37','2022-04-04 18:53:58'),(3,1,'a1','ziyuanzhe','自愿者','0l134fvx2h2723a31s81w138jxqe5sxs','2022-04-04 17:53:27','2022-04-04 18:53:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/liulangdongwubeihua/upload/yonghu1.jpg','17703786901','1@qq.com',1,1,'2022-04-04 17:33:52'),(2,'a2','123456','用户姓名2','http://localhost:8080/liulangdongwubeihua/upload/yonghu2.jpg','17703786902','2@qq.com',2,1,'2022-04-04 17:33:52'),(3,'a3','123456','用户姓名3','http://localhost:8080/liulangdongwubeihua/upload/yonghu3.jpg','17703786903','3@qq.com',1,1,'2022-04-04 17:33:52');

/*Table structure for table `ziyuanzhe` */

DROP TABLE IF EXISTS `ziyuanzhe`;

CREATE TABLE `ziyuanzhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `ziyuanzhe_name` varchar(200) DEFAULT NULL COMMENT '自愿者姓名 Search111 ',
  `ziyuanzhe_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `ziyuanzhe_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `ziyuanzhe_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `ziyuanzhe_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='自愿者';

/*Data for the table `ziyuanzhe` */

insert  into `ziyuanzhe`(`id`,`username`,`password`,`ziyuanzhe_name`,`ziyuanzhe_photo`,`ziyuanzhe_phone`,`ziyuanzhe_email`,`sex_types`,`ziyuanzhe_delete`,`create_time`) values (1,'a1','123456','自愿者姓名1','http://localhost:8080/liulangdongwubeihua/upload/ziyuanzhe1.jpg','17703786901','1@qq.com',2,1,'2022-04-04 17:33:52'),(2,'a2','123456','自愿者姓名2','http://localhost:8080/liulangdongwubeihua/upload/ziyuanzhe2.jpg','17703786902','2@qq.com',2,1,'2022-04-04 17:33:52'),(3,'a3','123456','自愿者姓名3','http://localhost:8080/liulangdongwubeihua/upload/ziyuanzhe3.jpg','17703786903','3@qq.com',1,1,'2022-04-04 17:33:52');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
