/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmhfh24
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmhfh24` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmhfh24`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1616401967366 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (91,'2021-03-22 15:58:14',1,1,'提问1','回复1',1),(92,'2021-03-22 15:58:14',2,2,'提问2','回复2',2),(93,'2021-03-22 15:58:14',3,3,'提问3','回复3',3),(94,'2021-03-22 15:58:14',4,4,'提问4','回复4',4),(95,'2021-03-22 15:58:14',5,5,'提问5','回复5',5),(96,'2021-03-22 15:58:14',6,6,'提问6','回复6',6),(1616401408139,'2021-03-22 16:23:27',1616401271390,NULL,'DGFHFHF',NULL,0),(1616401582116,'2021-03-22 16:26:21',1616401271390,1,NULL,'DGGFHJHG',0),(1616401780711,'2021-03-22 16:29:40',1616401271390,NULL,'请问商品有哪些类别',NULL,0),(1616401967365,'2021-03-22 16:32:47',1616401271390,1,NULL,'详见商品分类列表',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmhfh24/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmhfh24/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmhfh24/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanpingjia` */

DROP TABLE IF EXISTS `dingdanpingjia`;

CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616401548685 DEFAULT CHARSET=utf8 COMMENT='订单评价';

/*Data for the table `dingdanpingjia` */

insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`maijiazhanghao`,`sfsh`,`shhf`,`userid`) values (71,'2021-03-22 15:58:14','订单编号1','商品名称1','商品分类1','1','http://localhost:8080/ssmhfh24/upload/dingdanpingjia_tianjiatupian1.jpg','评价内容1','2021-03-22','用户名1','联系电话1','卖家账号1','是','',1),(72,'2021-03-22 15:58:14','订单编号2','商品名称2','商品分类2','1','http://localhost:8080/ssmhfh24/upload/1616400766760.jpg','评价内容2','2021-03-22','用户名2','联系电话2','卖家账号2','是','',2),(73,'2021-03-22 15:58:14','订单编号3','商品名称3','商品分类3','1','http://localhost:8080/ssmhfh24/upload/1616400775479.jpg','评价内容3','2021-03-22','用户名3','联系电话3','卖家账号3','是','',3),(74,'2021-03-22 15:58:14','订单编号4','商品名称4','商品分类4','1','http://localhost:8080/ssmhfh24/upload/dingdanpingjia_tianjiatupian4.jpg','评价内容4','2021-03-22','用户名4','联系电话4','卖家账号4','是','',4),(75,'2021-03-22 15:58:14','订单编号5','商品名称5','商品分类5','1','http://localhost:8080/ssmhfh24/upload/dingdanpingjia_tianjiatupian5.jpg','评价内容5','2021-03-22','用户名5','联系电话5','卖家账号5','是','',5),(76,'2021-03-22 15:58:14','订单编号6','商品名称6','商品分类6','1','http://localhost:8080/ssmhfh24/upload/dingdanpingjia_tianjiatupian6.jpg','评价内容6','2021-03-22','用户名6','联系电话6','卖家账号6','是','',6),(1616401548684,'2021-03-22 16:25:47','1616401365208','娇韵诗双萃精华露30ml','化妆品','5','http://localhost:8080/ssmhfh24/upload/1616401535794.jpg','商品是全新的，使用感不错','2021-03-25','2','12312312369','1','是','感谢支持',1616401271390);

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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-03-22 15:58:14',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-22 15:58:14',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-22 15:58:14',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-22 15:58:14',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-22 15:58:14',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-22 15:58:14',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `maijia` */

DROP TABLE IF EXISTS `maijia`;

CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) NOT NULL COMMENT '卖家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) NOT NULL COMMENT '卖家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616401181487 DEFAULT CHARSET=utf8 COMMENT='卖家';

/*Data for the table `maijia` */

insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`xingbie`,`touxiang`,`shouji`) values (21,'2021-03-22 15:58:14','卖家1','123456','卖家姓名1','男','http://localhost:8080/ssmhfh24/upload/maijia_touxiang1.jpg','13823888881'),(22,'2021-03-22 15:58:14','卖家2','123456','卖家姓名2','男','http://localhost:8080/ssmhfh24/upload/maijia_touxiang2.jpg','13823888882'),(23,'2021-03-22 15:58:14','卖家3','123456','卖家姓名3','男','http://localhost:8080/ssmhfh24/upload/maijia_touxiang3.jpg','13823888883'),(24,'2021-03-22 15:58:14','卖家4','123456','卖家姓名4','男','http://localhost:8080/ssmhfh24/upload/maijia_touxiang4.jpg','13823888884'),(25,'2021-03-22 15:58:14','卖家5','123456','卖家姓名5','男','http://localhost:8080/ssmhfh24/upload/maijia_touxiang5.jpg','13823888885'),(26,'2021-03-22 15:58:14','卖家6','123456','卖家姓名6','男','http://localhost:8080/ssmhfh24/upload/maijia_touxiang6.jpg','13823888886'),(1616401181486,'2021-03-22 16:19:41','1','1','陈月','女','http://localhost:8080/ssmhfh24/upload/1616401198006.jpg','12312312312');

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
) ENGINE=InnoDB AUTO_INCREMENT=1616401938995 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-03-22 15:58:14','标题1','简介1','http://localhost:8080/ssmhfh24/upload/1616400857856.jpg','<p>内容1</p>'),(112,'2021-03-22 15:58:14','标题2','简介2','http://localhost:8080/ssmhfh24/upload/1616400866954.jpg','<p>内容2</p>'),(113,'2021-03-22 15:58:14','标题3','简介3','http://localhost:8080/ssmhfh24/upload/1616400885707.jpg','<p>内容3</p>'),(114,'2021-03-22 15:58:14','标题4','简介4','http://localhost:8080/ssmhfh24/upload/1616400896732.jpg','<p>内容4</p>'),(115,'2021-03-22 15:58:14','标题5','简介5','http://localhost:8080/ssmhfh24/upload/1616400913049.jpg','<p>内容5</p>'),(116,'2021-03-22 15:58:14','闲置商品交易','闲置商品交易','http://localhost:8080/ssmhfh24/upload/1616400922852.jpg','<p>闲置商品交易</p><p><img src=\"http://localhost:8080/ssmhfh24/upload/1616400942671.jpg\"></p>'),(1616401938994,'2021-03-22 16:32:18','商品交易须知','商品交易须知','http://localhost:8080/ssmhfh24/upload/1616401920938.jpg','<p>商品交易须知</p><p><img src=\"http://localhost:8080/ssmhfh24/upload/1616401937160.jpg\"></p>');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616401853921 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (31,'2021-03-22 15:58:14','电子产品'),(32,'2021-03-22 15:58:14','电器'),(33,'2021-03-22 15:58:14','服装'),(34,'2021-03-22 15:58:14','化妆品'),(1616401838046,'2021-03-22 16:30:37','宠物用品'),(1616401853920,'2021-03-22 16:30:53','婴儿用品');

/*Table structure for table `shangpingoumai` */

DROP TABLE IF EXISTS `shangpingoumai`;

CREATE TABLE `shangpingoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616401376049 DEFAULT CHARSET=utf8 COMMENT='商品购买';

/*Data for the table `shangpingoumai` */

insert  into `shangpingoumai`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`shuliang`,`guige`,`jiage`,`zongjine`,`shouhuodizhi`,`goumairiqi`,`maijiazhanghao`,`shouji`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`ispay`,`userid`) values (51,'2021-03-22 15:58:14','订单编号1','商品名称1','商品分类1','http://localhost:8080/ssmhfh24/upload/shangpingoumai_tupian1.jpg','品牌1',1,'规格1',1,'总金额1','收货地址1','2021-03-22','卖家账号1','手机1','用户名1','联系电话1','是','','未支付',1),(52,'2021-03-22 15:58:14','订单编号2','商品名称2','商品分类2','http://localhost:8080/ssmhfh24/upload/shangpingoumai_tupian2.jpg','品牌2',2,'规格2',2,'总金额2','收货地址2','2021-03-22','卖家账号2','手机2','用户名2','联系电话2','是','','未支付',2),(53,'2021-03-22 15:58:14','订单编号3','商品名称3','商品分类3','http://localhost:8080/ssmhfh24/upload/shangpingoumai_tupian3.jpg','品牌3',3,'规格3',3,'总金额3','收货地址3','2021-03-22','卖家账号3','手机3','用户名3','联系电话3','是','','未支付',3),(54,'2021-03-22 15:58:14','订单编号4','商品名称4','商品分类4','http://localhost:8080/ssmhfh24/upload/shangpingoumai_tupian4.jpg','品牌4',4,'规格4',4,'总金额4','收货地址4','2021-03-22','卖家账号4','手机4','用户名4','联系电话4','是','','未支付',4),(55,'2021-03-22 15:58:14','订单编号5','商品名称5','商品分类5','http://localhost:8080/ssmhfh24/upload/shangpingoumai_tupian5.jpg','品牌5',5,'规格5',5,'总金额5','收货地址5','2021-03-22','卖家账号5','手机5','用户名5','联系电话5','是','','未支付',5),(56,'2021-03-22 15:58:14','订单编号6','商品名称6','商品分类6','http://localhost:8080/ssmhfh24/upload/shangpingoumai_tupian6.jpg','品牌6',6,'规格6',6,'总金额6','收货地址6','2021-03-22','卖家账号6','手机6','用户名6','联系电话6','是','','未支付',6),(1616401376048,'2021-03-22 16:22:55','1616401365208','娇韵诗双萃精华露30ml','化妆品','http://localhost:8080/ssmhfh24/upload/1616401230434.jpg','娇韵诗',1,'30ml',500,'500','梅州市','2021-03-22','1','12312312312','2','12312312369','是','ok','已支付',1616401271390);

/*Table structure for table `shangpinpeisong` */

DROP TABLE IF EXISTS `shangpinpeisong`;

CREATE TABLE `shangpinpeisong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `peisongzhuangtai` varchar(200) DEFAULT NULL COMMENT '配送状态',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616401464105 DEFAULT CHARSET=utf8 COMMENT='商品配送';

/*Data for the table `shangpinpeisong` */

insert  into `shangpinpeisong`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`shuliang`,`zongjine`,`peisongzhuangtai`,`gengxinshijian`,`maijiazhanghao`,`shouji`,`yonghuming`,`lianxidianhua`,`userid`) values (61,'2021-03-22 15:58:14','订单编号1','商品名称1','商品分类1','http://localhost:8080/ssmhfh24/upload/shangpinpeisong_tupian1.jpg','数量1','总金额1','配送中','2021-03-22 15:58:14','卖家账号1','手机1','用户名1','联系电话1',1),(62,'2021-03-22 15:58:14','订单编号2','商品名称2','商品分类2','http://localhost:8080/ssmhfh24/upload/1616400745450.jpg','数量2','总金额2','配送中','2021-03-22 15:58:14','卖家账号2','手机2','用户名2','联系电话2',2),(63,'2021-03-22 15:58:14','订单编号3','商品名称3','商品分类3','http://localhost:8080/ssmhfh24/upload/shangpinpeisong_tupian3.jpg','数量3','总金额3','配送中','2021-03-22 15:58:14','卖家账号3','手机3','用户名3','联系电话3',3),(64,'2021-03-22 15:58:14','订单编号4','商品名称4','商品分类4','http://localhost:8080/ssmhfh24/upload/shangpinpeisong_tupian4.jpg','数量4','总金额4','配送中','2021-03-22 15:58:14','卖家账号4','手机4','用户名4','联系电话4',4),(65,'2021-03-22 15:58:14','订单编号5','商品名称5','商品分类5','http://localhost:8080/ssmhfh24/upload/shangpinpeisong_tupian5.jpg','数量5','总金额5','配送中','2021-03-22 15:58:14','卖家账号5','手机5','用户名5','联系电话5',5),(66,'2021-03-22 15:58:14','订单编号6','商品名称6','商品分类6','http://localhost:8080/ssmhfh24/upload/1616400753965.jpg','数量6','总金额6','配送中','2021-03-22 15:58:14','卖家账号6','手机6','用户名6','联系电话6',6),(1616401464104,'2021-03-22 16:24:23','1616401365208','娇韵诗双萃精华露30ml','化妆品','http://localhost:8080/ssmhfh24/upload/1616401230434.jpg','1','500','已完成','2021-03-24 16:24:31','1','12312312312','2','12312312369',1616401181486);

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616401248191 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`chengse`,`shuliang`,`jiage`,`shangpinxiangqing`,`maijiazhanghao`,`shouji`,`clicktime`,`clicknum`) values (41,'2021-03-22 15:58:14','商品名称1','化妆品','http://localhost:8080/ssmhfh24/upload/1616400652939.jpg','品牌1','规格1','全新',1,1,'<p>商品详情1</p>','卖家账号1','手机1','2021-03-22 16:10:38',2),(42,'2021-03-22 15:58:14','商品名称2','服装','http://localhost:8080/ssmhfh24/upload/1616400675012.jpg','品牌2','规格2','全新',2,2,'<p>商品详情2</p>','卖家账号2','手机2','2021-03-22 16:10:57',3),(43,'2021-03-22 15:58:14','商品名称3','服装','http://localhost:8080/ssmhfh24/upload/1616400687323.jpg','品牌3','规格3','全新',3,3,'<p>商品详情3</p>','卖家账号3','手机3','2021-03-22 16:21:44',11),(44,'2021-03-22 15:58:14','商品名称4','电器','http://localhost:8080/ssmhfh24/upload/1616400704015.jpg','品牌4','规格4','全新',4,4,'<p>商品详情4</p>','卖家账号4','手机4','2021-03-22 16:11:31',5),(45,'2021-03-22 15:58:14','商品名称5','电子产品','http://localhost:8080/ssmhfh24/upload/1616400719583.jpg','品牌5','规格5','全新',5,5,'<p>商品详情5</p>','卖家账号5','手机5','2021-03-22 16:11:49',6),(1616401248190,'2021-03-22 16:20:47','娇韵诗双萃精华露30ml','化妆品','http://localhost:8080/ssmhfh24/upload/1616401230434.jpg','娇韵诗','30ml','全新',1,500,'修复保湿','1','12312312312','2021-03-22 16:29:25',6);

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
) ENGINE=InnoDB AUTO_INCREMENT=1616401345294 DEFAULT CHARSET=utf8 COMMENT='收藏表';

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','qrw6cuopwnyp5hvar3iewhzepvqxlirn','2021-03-22 16:09:28','2021-03-22 17:17:00'),(2,1,'abo','users','管理员','qvymm64gtmh1f65ncfifi868m1jy649p','2021-03-22 16:09:59','2021-03-22 17:29:55'),(3,1616401181486,'1','maijia','卖家','tov6w51r3j2iqa19frpfr4lmxcxzc1ko','2021-03-22 16:19:47','2021-03-22 17:26:52'),(4,1616401271390,'2','yonghu','用户','69i5997p5dhs5qsqbkod51libgfrgnlf','2021-03-22 16:21:16','2021-03-22 17:27:16');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','aboo','管理员','2021-03-22 15:58:14');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616401271391 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (11,'2021-03-22 15:58:14','用户1','123456','姓名1','男','http://localhost:8080/ssmhfh24/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-03-22 15:58:14','用户2','123456','姓名2','男','http://localhost:8080/ssmhfh24/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-03-22 15:58:14','用户3','123456','姓名3','男','http://localhost:8080/ssmhfh24/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-03-22 15:58:14','用户4','123456','姓名4','男','http://localhost:8080/ssmhfh24/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-03-22 15:58:14','用户5','123456','姓名5','男','http://localhost:8080/ssmhfh24/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-03-22 15:58:14','用户6','123456','姓名6','男','http://localhost:8080/ssmhfh24/upload/yonghu_touxiang6.jpg','13823888886'),(1616401271390,'2021-03-22 16:21:11','2','2','陈一','女','http://localhost:8080/ssmhfh24/upload/1616401286129.jpg','12312312369');

/*Table structure for table `yonghuzixun` */

DROP TABLE IF EXISTS `yonghuzixun`;

CREATE TABLE `yonghuzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zixunneirong` varchar(200) DEFAULT NULL COMMENT '咨询内容',
  `zixunriqi` date DEFAULT NULL COMMENT '咨询日期',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616401361693 DEFAULT CHARSET=utf8 COMMENT='用户咨询';

/*Data for the table `yonghuzixun` */

insert  into `yonghuzixun`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`zixunneirong`,`zixunriqi`,`maijiazhanghao`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (81,'2021-03-22 15:58:14','商品名称1','商品分类1','http://localhost:8080/ssmhfh24/upload/1616400789004.jpg','咨询内容1','2021-03-22','卖家账号1','用户名1','联系电话1','是','',1),(82,'2021-03-22 15:58:14','商品名称2','商品分类2','http://localhost:8080/ssmhfh24/upload/1616400796474.jpg','咨询内容2','2021-03-22','卖家账号2','用户名2','联系电话2','是','',2),(83,'2021-03-22 15:58:14','商品名称3','商品分类3','http://localhost:8080/ssmhfh24/upload/1616400804297.jpg','咨询内容3','2021-03-22','卖家账号3','用户名3','联系电话3','是','',3),(84,'2021-03-22 15:58:14','商品名称4','商品分类4','http://localhost:8080/ssmhfh24/upload/1616400818727.jpg','咨询内容4','2021-03-22','卖家账号4','用户名4','联系电话4','是','',4),(85,'2021-03-22 15:58:14','商品名称5','商品分类5','http://localhost:8080/ssmhfh24/upload/1616400840363.jpg','咨询内容5','2021-03-22','卖家账号5','用户名5','联系电话5','是','',5),(86,'2021-03-22 15:58:14','商品名称6','商品分类6','http://localhost:8080/ssmhfh24/upload/yonghuzixun_tupian6.jpg','咨询内容6','2021-03-22','卖家账号6','用户名6','联系电话6','是','',6),(1616401361692,'2021-03-22 16:22:41','娇韵诗双萃精华露30ml','化妆品','http://localhost:8080/ssmhfh24/upload/1616401230434.jpg','生产日期是什么时候','2021-03-22','1','2','12312312369','是','20年8月',1616401271390);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
