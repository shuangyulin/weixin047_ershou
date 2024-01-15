/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmzh95w
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmzh95w` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmzh95w`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='客服中心';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (81,'2021-03-20 15:57:14',1,1,'提问1','回复1',1),(82,'2021-03-20 15:57:14',2,2,'提问2','回复2',2),(83,'2021-03-20 15:57:14',3,3,'提问3','回复3',3),(84,'2021-03-20 15:57:14',4,4,'提问4','回复4',4),(85,'2021-03-20 15:57:14',5,5,'提问5','回复5',5),(86,'2021-03-20 15:57:14',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmzh95w/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmzh95w/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmzh95w/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdantuikuan` */

DROP TABLE IF EXISTS `dingdantuikuan`;

CREATE TABLE `dingdantuikuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiahao` varchar(200) DEFAULT NULL COMMENT '卖家号',
  `maijiaming` varchar(200) DEFAULT NULL COMMENT '卖家名',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinjiage` varchar(200) DEFAULT NULL COMMENT '商品价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `tuikuanshijian` datetime DEFAULT NULL COMMENT '退款时间',
  `tuikuanyuanyin` varchar(200) DEFAULT NULL COMMENT '退款原因',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616229426707 DEFAULT CHARSET=utf8 COMMENT='订单退款';

/*Data for the table `dingdantuikuan` */

insert  into `dingdantuikuan`(`id`,`addtime`,`maijiahao`,`maijiaming`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpintupian`,`shangpinjiage`,`shuliang`,`zongjine`,`zhanghao`,`xingming`,`shouji`,`dizhi`,`tuikuanshijian`,`tuikuanyuanyin`,`sfsh`,`shhf`,`ispay`,`userid`) values (61,'2021-03-20 15:57:14','卖家号1','卖家名1','商品编号1','商品名称1','商品类型1','http://localhost:8080/ssmzh95w/upload/dingdantuikuan_shangpintupian1.jpg','商品价格1','数量1','总金额1','账号1','姓名1','手机1','地址1','2021-03-20 15:57:14','退款原因1','是','','未支付',1),(62,'2021-03-20 15:57:14','卖家号2','卖家名2','商品编号2','商品名称2','商品类型2','http://localhost:8080/ssmzh95w/upload/dingdantuikuan_shangpintupian2.jpg','商品价格2','数量2','总金额2','账号2','姓名2','手机2','地址2','2021-03-20 15:57:14','退款原因2','是','','未支付',2),(63,'2021-03-20 15:57:14','卖家号3','卖家名3','商品编号3','商品名称3','商品类型3','http://localhost:8080/ssmzh95w/upload/dingdantuikuan_shangpintupian3.jpg','商品价格3','数量3','总金额3','账号3','姓名3','手机3','地址3','2021-03-20 15:57:14','退款原因3','是','','未支付',3),(64,'2021-03-20 15:57:14','卖家号4','卖家名4','商品编号4','商品名称4','商品类型4','http://localhost:8080/ssmzh95w/upload/dingdantuikuan_shangpintupian4.jpg','商品价格4','数量4','总金额4','账号4','姓名4','手机4','地址4','2021-03-20 15:57:14','退款原因4','是','','未支付',4),(65,'2021-03-20 15:57:14','卖家号5','卖家名5','商品编号5','商品名称5','商品类型5','http://localhost:8080/ssmzh95w/upload/dingdantuikuan_shangpintupian5.jpg','商品价格5','数量5','总金额5','账号5','姓名5','手机5','地址5','2021-03-20 15:57:14','退款原因5','是','','未支付',5),(66,'2021-03-20 15:57:14','卖家号6','卖家名6','商品编号6','商品名称6','商品类型6','http://localhost:8080/ssmzh95w/upload/dingdantuikuan_shangpintupian6.jpg','商品价格6','数量6','总金额6','账号6','姓名6','手机6','地址6','2021-03-20 15:57:14','退款原因6','是','','未支付',6),(1616227275773,'2021-03-20 16:01:15','1','1','1616227176820','001','分类1','http://localhost:8080/ssmzh95w/upload/1616227181322.jpg','1299','2','2598','1','1','null','null','2021-03-20 16:00:10','0000','','','已支付',1616227198942),(1616227846382,'2021-03-20 16:10:45','12','12','1616227712862','001','分类1','http://localhost:8080/ssmzh95w/upload/1616227719979.jpg','1200','2','2400','12','12','12345678999','0000','2021-03-20 16:10:43','0000','','','',1616227785809),(1616229426706,'2021-03-20 16:37:06','1234','张三','1616229277021','001','分类1','http://localhost:8080/ssmzh95w/upload/1616229303294.jpg','1200','12','14400','1234','李四','12345678910','xxx','2021-03-20 16:37:04','111','','','',1616229368545);

/*Table structure for table `discussmaijia` */

DROP TABLE IF EXISTS `discussmaijia`;

CREATE TABLE `discussmaijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='卖家评论表';

/*Data for the table `discussmaijia` */

insert  into `discussmaijia`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-03-20 15:57:14',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-20 15:57:14',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-20 15:57:14',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-20 15:57:14',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-20 15:57:14',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-20 15:57:14',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-03-20 15:57:14',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-20 15:57:14',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-20 15:57:14',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-20 15:57:14',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-20 15:57:14',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-20 15:57:14',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='购物天地';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (91,'2021-03-20 15:57:14','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2021-03-20 15:57:14','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-03-20 15:57:14','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-03-20 15:57:14','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-03-20 15:57:14','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-03-20 15:57:14','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `maijia` */

DROP TABLE IF EXISTS `maijia`;

CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiahao` varchar(200) NOT NULL COMMENT '卖家号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaming` varchar(200) NOT NULL COMMENT '卖家名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `maijiashouji` varchar(200) NOT NULL COMMENT '卖家手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiahao` (`maijiahao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616229258904 DEFAULT CHARSET=utf8 COMMENT='卖家';

/*Data for the table `maijia` */

insert  into `maijia`(`id`,`addtime`,`maijiahao`,`mima`,`maijiaming`,`xingbie`,`nianling`,`maijiashouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (22,'2021-03-20 15:57:14','卖家2','123456','卖家名2','男','年龄2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmzh95w/upload/maijia_zhaopian2.jpg',2,2,'2021-03-20 15:57:14',2),(23,'2021-03-20 15:57:14','卖家3','123456','卖家名3','男','年龄3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmzh95w/upload/maijia_zhaopian3.jpg',3,3,'2021-03-20 15:57:14',3),(24,'2021-03-20 15:57:14','卖家4','123456','卖家名4','男','年龄4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmzh95w/upload/maijia_zhaopian4.jpg',4,4,'2021-03-20 15:57:14',4),(25,'2021-03-20 15:57:14','卖家5','123456','卖家名5','男','年龄5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmzh95w/upload/maijia_zhaopian5.jpg',5,5,'2021-03-20 16:44:06',6),(26,'2021-03-20 15:57:14','卖家6','123456','卖家名6','男','年龄6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmzh95w/upload/maijia_zhaopian6.jpg',6,6,'2021-03-20 15:57:14',6),(1616227161920,'2021-03-20 15:59:21','1','1','1','男','1','12345678900',NULL,'111222111122221122',NULL,0,0,NULL,0),(1616227693821,'2021-03-20 16:08:13','12','12','1234','男','11','12345678900','111@qq.com','111222111122221122',NULL,0,0,NULL,0),(1616229258903,'2021-03-20 16:34:18','1234','1234','张三','男','18','12345678999','123@qq.com','111222111122221122',NULL,0,0,NULL,0);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-03-20 15:57:14',1,'用户名1','留言内容1','回复内容1'),(122,'2021-03-20 15:57:14',2,'用户名2','留言内容2','回复内容2'),(123,'2021-03-20 15:57:14',3,'用户名3','留言内容3','回复内容3'),(124,'2021-03-20 15:57:14',4,'用户名4','留言内容4','回复内容4'),(125,'2021-03-20 15:57:14',5,'用户名5','留言内容5','回复内容5'),(126,'2021-03-20 15:57:14',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='购物资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-03-20 15:57:14','标题1','简介1','http://localhost:8080/ssmzh95w/upload/news_picture1.jpg','内容1'),(112,'2021-03-20 15:57:14','标题2','简介2','http://localhost:8080/ssmzh95w/upload/news_picture2.jpg','内容2'),(113,'2021-03-20 15:57:14','标题3','简介3','http://localhost:8080/ssmzh95w/upload/news_picture3.jpg','内容3'),(114,'2021-03-20 15:57:14','标题4','简介4','http://localhost:8080/ssmzh95w/upload/news_picture4.jpg','内容4'),(115,'2021-03-20 15:57:14','标题5','简介5','http://localhost:8080/ssmzh95w/upload/news_picture5.jpg','内容5'),(116,'2021-03-20 15:57:14','标题6','简介6','http://localhost:8080/ssmzh95w/upload/news_picture6.jpg','内容6');

/*Table structure for table `shangpindingdan` */

DROP TABLE IF EXISTS `shangpindingdan`;

CREATE TABLE `shangpindingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiahao` varchar(200) DEFAULT NULL COMMENT '卖家号',
  `maijiaming` varchar(200) DEFAULT NULL COMMENT '卖家名',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shangpinjiage` int(11) DEFAULT NULL COMMENT '商品价格',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616229401719 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpindingdan` */

insert  into `shangpindingdan`(`id`,`addtime`,`maijiahao`,`maijiaming`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpintupian`,`shuliang`,`shangpinjiage`,`zongjine`,`zhanghao`,`xingming`,`shouji`,`dizhi`,`goumaishijian`,`beizhu`,`sfsh`,`shhf`,`ispay`,`userid`) values (51,'2021-03-20 15:57:14','卖家号1','卖家名1','商品编号1','商品名称1','商品类型1','http://localhost:8080/ssmzh95w/upload/shangpindingdan_shangpintupian1.jpg',1,1,1,'账号1','姓名1','手机1','地址1','2021-03-20 15:57:14','备注1','是','','未支付',1),(52,'2021-03-20 15:57:14','卖家号2','卖家名2','商品编号2','商品名称2','商品类型2','http://localhost:8080/ssmzh95w/upload/shangpindingdan_shangpintupian2.jpg',2,2,2,'账号2','姓名2','手机2','地址2','2021-03-20 15:57:14','备注2','是','','未支付',2),(53,'2021-03-20 15:57:14','卖家号3','卖家名3','商品编号3','商品名称3','商品类型3','http://localhost:8080/ssmzh95w/upload/shangpindingdan_shangpintupian3.jpg',3,3,3,'账号3','姓名3','手机3','地址3','2021-03-20 15:57:14','备注3','是','','未支付',3),(54,'2021-03-20 15:57:14','卖家号4','卖家名4','商品编号4','商品名称4','商品类型4','http://localhost:8080/ssmzh95w/upload/shangpindingdan_shangpintupian4.jpg',4,4,4,'账号4','姓名4','手机4','地址4','2021-03-20 15:57:14','备注4','是','','未支付',4),(55,'2021-03-20 15:57:14','卖家号5','卖家名5','商品编号5','商品名称5','商品类型5','http://localhost:8080/ssmzh95w/upload/shangpindingdan_shangpintupian5.jpg',5,5,5,'账号5','姓名5','手机5','地址5','2021-03-20 15:57:14','备注5','是','','未支付',5),(56,'2021-03-20 15:57:14','卖家号6','卖家名6','商品编号6','商品名称6','商品类型6','http://localhost:8080/ssmzh95w/upload/shangpindingdan_shangpintupian6.jpg',6,6,6,'账号6','姓名6','手机6','地址6','2021-03-20 15:57:14','备注6','是','','未支付',6),(1616227246880,'2021-03-20 16:00:46','1','1','1616227176820','001','分类1','http://localhost:8080/ssmzh95w/upload/1616227181322.jpg',2,1299,2598,'1','1','null','null','2021-03-20 16:00:41','','','','已支付',1616227198942),(1616227813901,'2021-03-20 16:10:13','12','12','1616227712862','001','分类1','http://localhost:8080/ssmzh95w/upload/1616227719979.jpg',2,1200,2400,'12','12','12345678999','0000','2021-03-20 16:10:03','','','','已支付',1616227785809),(1616229401718,'2021-03-20 16:36:41','1234','张三','1616229277021','001','分类1','http://localhost:8080/ssmzh95w/upload/1616229303294.jpg',12,1200,14400,'1234','李四','12345678910','xxx','2021-03-20 16:36:35','','','','已支付',1616229368545);

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616229859095 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`fenlei`) values (31,'2021-03-20 15:57:14','分类1'),(32,'2021-03-20 15:57:14','分类2'),(33,'2021-03-20 15:57:14','分类3'),(34,'2021-03-20 15:57:14','分类4'),(35,'2021-03-20 15:57:14','分类5'),(36,'2021-03-20 15:57:14','分类6'),(1616229859094,'2021-03-20 16:44:18','asd');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiahao` varchar(200) DEFAULT NULL COMMENT '卖家号',
  `maijiaming` varchar(200) DEFAULT NULL COMMENT '卖家名',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `kucun` varchar(200) DEFAULT NULL COMMENT '库存',
  `shangpinjiage` int(11) DEFAULT NULL COMMENT '商品价格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616229313470 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`maijiahao`,`maijiaming`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpintupian`,`kucun`,`shangpinjiage`,`shangpinxiangqing`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`userid`) values (41,'2021-03-20 15:57:14','卖家号1','卖家名1','商品编号1','商品名称1','商品类型1','http://localhost:8080/ssmzh95w/upload/shangpinxinxi_shangpintupian1.jpg','库存1',1,'商品详情1','是','',1,1,'2021-03-20 16:37:40',3,1),(42,'2021-03-20 15:57:14','卖家号2','卖家名2','商品编号2','商品名称2','商品类型2','http://localhost:8080/ssmzh95w/upload/shangpinxinxi_shangpintupian2.jpg','库存2',2,'商品详情2','是','',2,2,'2021-03-20 15:57:14',2,2),(43,'2021-03-20 15:57:14','卖家号3','卖家名3','商品编号3','商品名称3','商品类型3','http://localhost:8080/ssmzh95w/upload/shangpinxinxi_shangpintupian3.jpg','库存3',3,'商品详情3','是','',3,3,'2021-03-20 15:57:14',3,3),(44,'2021-03-20 15:57:14','卖家号4','卖家名4','商品编号4','商品名称4','商品类型4','http://localhost:8080/ssmzh95w/upload/shangpinxinxi_shangpintupian4.jpg','库存4',4,'商品详情4','是','',4,4,'2021-03-20 15:57:14',4,4),(45,'2021-03-20 15:57:14','卖家号5','卖家名5','商品编号5','商品名称5','商品类型5','http://localhost:8080/ssmzh95w/upload/shangpinxinxi_shangpintupian5.jpg','库存5',5,'商品详情5','是','',5,5,'2021-03-20 15:57:14',5,5),(46,'2021-03-20 15:57:14','卖家号6','卖家名6','商品编号6','商品名称6','商品类型6','http://localhost:8080/ssmzh95w/upload/shangpinxinxi_shangpintupian6.jpg','库存6',6,'商品详情6','是','',6,6,'2021-03-20 15:57:14',6,6),(1616227189713,'2021-03-20 15:59:49','1','1','1616227176820','001','分类1','http://localhost:8080/ssmzh95w/upload/1616227181322.jpg','100',1299,'00','','',0,0,'2021-03-20 16:26:09',8,1616227161920),(1616227734140,'2021-03-20 16:08:54','12','12','1616227712862','001','分类1','http://localhost:8080/ssmzh95w/upload/1616227719979.jpg','1239',1200,'0000','','',0,0,'2021-03-20 16:26:02',4,1616227693821),(1616229313469,'2021-03-20 16:35:13','1234','张三','1616229277021','001','分类1','http://localhost:8080/ssmzh95w/upload/1616229303294.jpg','100',1200,'000','','',0,0,'2021-03-20 16:36:43',2,1616229258903);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616229453721 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1616227161920,'1','maijia','卖家','3lyuvucsu2n4yqk083l3zz0zf6u6kurt','2021-03-20 15:59:28','2021-03-20 17:01:27'),(2,1616227198942,'1','yonghu','用户','hbqtjac78jjnjqwpmoem4a5aw72yr9b8','2021-03-20 16:00:05','2021-03-20 17:24:56'),(3,1616227693821,'12','maijia','卖家','u89vsox5syaq99si51of6op7o2j4uz7d','2021-03-20 16:08:25','2021-03-20 17:08:25'),(4,1616227785809,'12','yonghu','用户','exvcphlknk0lmhmbocigdtsig40qe4gb','2021-03-20 16:09:52','2021-03-20 17:09:52'),(5,1,'abo','users','管理员','ccexy7yw7pofbf4trm6yswbt4j2n8c4u','2021-03-20 16:21:38','2021-03-20 17:43:45'),(6,1616229258903,'1234','maijia','卖家','t79lnt2acioll8o2mhjody56apim9lec','2021-03-20 16:34:28','2021-03-20 17:34:28'),(7,1616229368545,'1234','yonghu','用户','fpvrdpvufc3kb1hukr4j7aos4oe79szm','2021-03-20 16:36:19','2021-03-20 17:36:19');

/*Table structure for table `tousuchuli` */

DROP TABLE IF EXISTS `tousuchuli`;

CREATE TABLE `tousuchuli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tousubianhao` varchar(200) DEFAULT NULL COMMENT '投诉编号',
  `tousubiaoti` varchar(200) DEFAULT NULL COMMENT '投诉标题',
  `tousuneirong` longtext COMMENT '投诉内容',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tousushijian` datetime DEFAULT NULL COMMENT '投诉时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tousubianhao` (`tousubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616229444799 DEFAULT CHARSET=utf8 COMMENT='投诉处理';

/*Data for the table `tousuchuli` */

insert  into `tousuchuli`(`id`,`addtime`,`tousubianhao`,`tousubiaoti`,`tousuneirong`,`fengmiantupian`,`zhanghao`,`xingming`,`shouji`,`youxiang`,`tousushijian`,`sfsh`,`shhf`,`userid`) values (71,'2021-03-20 15:57:14','投诉编号1','投诉标题1','投诉内容1','http://localhost:8080/ssmzh95w/upload/tousuchuli_fengmiantupian1.jpg','账号1','姓名1','手机1','邮箱1','2021-03-20 15:57:14','否','aaa',1),(72,'2021-03-20 15:57:14','投诉编号2','投诉标题2','投诉内容2','http://localhost:8080/ssmzh95w/upload/tousuchuli_fengmiantupian2.jpg','账号2','姓名2','手机2','邮箱2','2021-03-20 15:57:14','是','',2),(73,'2021-03-20 15:57:14','投诉编号3','投诉标题3','投诉内容3','http://localhost:8080/ssmzh95w/upload/tousuchuli_fengmiantupian3.jpg','账号3','姓名3','手机3','邮箱3','2021-03-20 15:57:14','是','',3),(74,'2021-03-20 15:57:14','投诉编号4','投诉标题4','投诉内容4','http://localhost:8080/ssmzh95w/upload/tousuchuli_fengmiantupian4.jpg','账号4','姓名4','手机4','邮箱4','2021-03-20 15:57:14','是','',4),(75,'2021-03-20 15:57:14','投诉编号5','投诉标题5','投诉内容5','http://localhost:8080/ssmzh95w/upload/tousuchuli_fengmiantupian5.jpg','账号5','姓名5','手机5','邮箱5','2021-03-20 15:57:14','是','',5),(76,'2021-03-20 15:57:14','投诉编号6','投诉标题6','投诉内容6','http://localhost:8080/ssmzh95w/upload/tousuchuli_fengmiantupian6.jpg','账号6','姓名6','手机6','邮箱6','2021-03-20 15:57:14','是','',6),(1616227876232,'2021-03-20 16:11:16','1616227862412','123','sasda','http://localhost:8080/ssmzh95w/upload/1616227865168.jpg','12','12','12345678999','122@qq.com','2021-03-20 16:11:02','','',1616227785809),(1616229444798,'2021-03-20 16:37:23','1616229437642','12','1111','http://localhost:8080/ssmzh95w/upload/1616229438301.jpg','1234','李四','12345678910','1212@qq.com','2021-03-20 16:37:17','','',1616229368545);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-20 15:57:14');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616229368546 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`dizhi`,`zhaopian`) values (11,'2021-03-20 15:57:14','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','地址1','http://localhost:8080/ssmzh95w/upload/yonghu_zhaopian1.jpg'),(12,'2021-03-20 15:57:14','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','地址2','http://localhost:8080/ssmzh95w/upload/yonghu_zhaopian2.jpg'),(14,'2021-03-20 15:57:14','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','地址4','http://localhost:8080/ssmzh95w/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-20 15:57:14','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','地址5','http://localhost:8080/ssmzh95w/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-20 15:57:14','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','地址6','http://localhost:8080/ssmzh95w/upload/yonghu_zhaopian6.jpg'),(1616227785809,'2021-03-20 16:09:45','12','12','12','男',12,'12345678999','122@qq.com','0000',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
