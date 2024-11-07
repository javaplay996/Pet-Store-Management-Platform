/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm4w662
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm4w662` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm4w662`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618908031859 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-20 16:25:55',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-20 16:25:55',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-20 16:25:55',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-20 16:25:55',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-20 16:25:55',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-20 16:25:55',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1618908031858,'2021-04-20 16:40:31',1618907922915,'广东省梅州市梅江区三角镇约亭路','11','12345678912','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'chongwu' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

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
) ENGINE=InnoDB AUTO_INCREMENT=1618908233979 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (41,'2021-04-20 16:25:55',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (42,'2021-04-20 16:25:55',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (43,'2021-04-20 16:25:55',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (44,'2021-04-20 16:25:55',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (45,'2021-04-20 16:25:55',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (46,'2021-04-20 16:25:55',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1618908152689,'2021-04-20 16:42:31',1618907922915,NULL,'dv',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1618908233978,'2021-04-20 16:43:53',1618907922915,1,NULL,'dd',NULL);

/*Table structure for table `chongwu` */

DROP TABLE IF EXISTS `chongwu`;

CREATE TABLE `chongwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwumingzi` varchar(200) DEFAULT NULL COMMENT '宠物名字',
  `chongwufenlei` varchar(200) DEFAULT NULL COMMENT '宠物分类',
  `chongwunianling` int(11) DEFAULT NULL COMMENT '宠物年龄',
  `chongwuyanse` varchar(200) DEFAULT NULL COMMENT '宠物眼色',
  `chongwutixing` varchar(200) DEFAULT NULL COMMENT '宠物体型',
  `chongwumaozhang` varchar(200) DEFAULT NULL COMMENT '宠物毛长',
  `chongwushipin` varchar(200) DEFAULT NULL COMMENT '宠物视频',
  `chongwutupian` varchar(200) DEFAULT NULL COMMENT '宠物图片',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618907854411 DEFAULT CHARSET=utf8 COMMENT='宠物';

/*Data for the table `chongwu` */

insert  into `chongwu`(`id`,`addtime`,`chongwumingzi`,`chongwufenlei`,`chongwunianling`,`chongwuyanse`,`chongwutixing`,`chongwumaozhang`,`chongwushipin`,`chongwutupian`,`price`) values (21,'2021-04-20 16:25:55','宠物名字1','宠物分类1',1,'宠物眼色1','宠物体型1','宠物毛长1','','http://localhost:8080/ssm4w662/upload/chongwu_chongwutupian1.jpg',99.9);
insert  into `chongwu`(`id`,`addtime`,`chongwumingzi`,`chongwufenlei`,`chongwunianling`,`chongwuyanse`,`chongwutixing`,`chongwumaozhang`,`chongwushipin`,`chongwutupian`,`price`) values (22,'2021-04-20 16:25:55','宠物名字2','宠物分类2',2,'宠物眼色2','宠物体型2','宠物毛长2','','http://localhost:8080/ssm4w662/upload/chongwu_chongwutupian2.jpg',99.9);
insert  into `chongwu`(`id`,`addtime`,`chongwumingzi`,`chongwufenlei`,`chongwunianling`,`chongwuyanse`,`chongwutixing`,`chongwumaozhang`,`chongwushipin`,`chongwutupian`,`price`) values (23,'2021-04-20 16:25:55','宠物名字3','宠物分类3',3,'宠物眼色3','宠物体型3','宠物毛长3','','http://localhost:8080/ssm4w662/upload/chongwu_chongwutupian3.jpg',99.9);
insert  into `chongwu`(`id`,`addtime`,`chongwumingzi`,`chongwufenlei`,`chongwunianling`,`chongwuyanse`,`chongwutixing`,`chongwumaozhang`,`chongwushipin`,`chongwutupian`,`price`) values (24,'2021-04-20 16:25:55','宠物名字4','宠物分类4',4,'宠物眼色4','宠物体型4','宠物毛长4','','http://localhost:8080/ssm4w662/upload/chongwu_chongwutupian4.jpg',99.9);
insert  into `chongwu`(`id`,`addtime`,`chongwumingzi`,`chongwufenlei`,`chongwunianling`,`chongwuyanse`,`chongwutixing`,`chongwumaozhang`,`chongwushipin`,`chongwutupian`,`price`) values (25,'2021-04-20 16:25:55','宠物名字5','宠物分类5',5,'宠物眼色5','宠物体型5','宠物毛长5','','http://localhost:8080/ssm4w662/upload/chongwu_chongwutupian5.jpg',99.9);
insert  into `chongwu`(`id`,`addtime`,`chongwumingzi`,`chongwufenlei`,`chongwunianling`,`chongwuyanse`,`chongwutixing`,`chongwumaozhang`,`chongwushipin`,`chongwutupian`,`price`) values (26,'2021-04-20 16:25:55','宠物名字6','宠物分类6',6,'宠物眼色6','宠物体型6','宠物毛长6','','http://localhost:8080/ssm4w662/upload/chongwu_chongwutupian6.jpg',99.9);
insert  into `chongwu`(`id`,`addtime`,`chongwumingzi`,`chongwufenlei`,`chongwunianling`,`chongwuyanse`,`chongwutixing`,`chongwumaozhang`,`chongwushipin`,`chongwutupian`,`price`) values (1618907854410,'2021-04-20 16:37:34','测试','测试',36,'测试','测试','测速','http://localhost:8080/ssm4w662/upload/1618907840405.mp4','http://localhost:8080/ssm4w662/upload/1618907850403.jpg',100);

/*Table structure for table `chongwufenlei` */

DROP TABLE IF EXISTS `chongwufenlei`;

CREATE TABLE `chongwufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwufenlei` varchar(200) DEFAULT NULL COMMENT '宠物分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618907863840 DEFAULT CHARSET=utf8 COMMENT='宠物分类';

/*Data for the table `chongwufenlei` */

insert  into `chongwufenlei`(`id`,`addtime`,`chongwufenlei`) values (31,'2021-04-20 16:25:55','宠物分类1');
insert  into `chongwufenlei`(`id`,`addtime`,`chongwufenlei`) values (32,'2021-04-20 16:25:55','宠物分类2');
insert  into `chongwufenlei`(`id`,`addtime`,`chongwufenlei`) values (33,'2021-04-20 16:25:55','宠物分类3');
insert  into `chongwufenlei`(`id`,`addtime`,`chongwufenlei`) values (34,'2021-04-20 16:25:55','宠物分类4');
insert  into `chongwufenlei`(`id`,`addtime`,`chongwufenlei`) values (35,'2021-04-20 16:25:55','宠物分类5');
insert  into `chongwufenlei`(`id`,`addtime`,`chongwufenlei`) values (36,'2021-04-20 16:25:55','宠物分类6');
insert  into `chongwufenlei`(`id`,`addtime`,`chongwufenlei`) values (1618907863839,'2021-04-20 16:37:43','测试');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm4w662/upload/1618907887808.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm4w662/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm4w662/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=1618907910459 DEFAULT CHARSET=utf8 COMMENT='宠物资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-04-20 16:25:55','标题1','简介1','http://localhost:8080/ssm4w662/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (82,'2021-04-20 16:25:55','标题2','简介2','http://localhost:8080/ssm4w662/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (83,'2021-04-20 16:25:55','标题3','简介3','http://localhost:8080/ssm4w662/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (84,'2021-04-20 16:25:55','标题4','简介4','http://localhost:8080/ssm4w662/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (85,'2021-04-20 16:25:55','标题5','简介5','http://localhost:8080/ssm4w662/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (86,'2021-04-20 16:25:55','标题6','简介6','http://localhost:8080/ssm4w662/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1618907910458,'2021-04-20 16:38:30','测试','测试','http://localhost:8080/ssm4w662/upload/1618907902914.jpg','<p>测试</p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'chongwu' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618908051068 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1618908051067,'2021-04-20 16:40:51','2021420164050100083','chongwu',1618907922915,1618907854410,'测试','http://localhost:8080/ssm4w662/upload/1618907850403.jpg',1,100,100,100,100,1,'已完成','广东省梅州市梅江区三角镇约亭路','12345678912','11');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','00qt22ate5ngn7z47fuwmk44y4xmafta','2021-04-20 16:36:43','2021-04-20 17:42:50');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1618907922915,'11','yonghu','用户','qgl6q62zwd8mdh357809nwl6b7zkucgz','2021-04-20 16:38:49','2021-04-20 17:44:07');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-20 16:25:55');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618907922916 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`,`money`) values (11,'2021-04-20 16:25:55','用户1','123456','姓名1','男','773890001@qq.com','13823888881','http://localhost:8080/ssm4w662/upload/yonghu_zhaopian1.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`,`money`) values (12,'2021-04-20 16:25:55','用户2','123456','姓名2','男','773890002@qq.com','13823888882','http://localhost:8080/ssm4w662/upload/yonghu_zhaopian2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`,`money`) values (13,'2021-04-20 16:25:55','用户3','123456','姓名3','男','773890003@qq.com','13823888883','http://localhost:8080/ssm4w662/upload/yonghu_zhaopian3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`,`money`) values (14,'2021-04-20 16:25:55','用户4','123456','姓名4','男','773890004@qq.com','13823888884','http://localhost:8080/ssm4w662/upload/yonghu_zhaopian4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`,`money`) values (15,'2021-04-20 16:25:55','用户5','123456','姓名5','男','773890005@qq.com','13823888885','http://localhost:8080/ssm4w662/upload/yonghu_zhaopian5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`,`money`) values (16,'2021-04-20 16:25:55','用户6','123456','姓名6','男','773890006@qq.com','13823888886','http://localhost:8080/ssm4w662/upload/yonghu_zhaopian6.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`,`money`) values (1618907922915,'2021-04-20 16:38:42','11','11','11','男','163@163.com','12345678912','http://localhost:8080/ssm4w662/upload/1618907982506.jpg',99900);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
