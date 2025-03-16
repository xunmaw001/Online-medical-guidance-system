-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm5wauf
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='病情咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-02-26 09:53:23',1,1,'提问1','回复1',1),(62,'2021-02-26 09:53:23',2,2,'提问2','回复2',2),(63,'2021-02-26 09:53:23',3,3,'提问3','回复3',3),(64,'2021-02-26 09:53:23',4,4,'提问4','回复4',4),(65,'2021-02-26 09:53:23',5,5,'提问5','回复5',5),(66,'2021-02-26 09:53:23',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm5wauf/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm5wauf/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm5wauf/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keshiliebiao`
--

DROP TABLE IF EXISTS `keshiliebiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keshiliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='科室列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keshiliebiao`
--

LOCK TABLES `keshiliebiao` WRITE;
/*!40000 ALTER TABLE `keshiliebiao` DISABLE KEYS */;
INSERT INTO `keshiliebiao` VALUES (31,'2021-02-26 09:53:23','科室1'),(32,'2021-02-26 09:53:23','科室2'),(33,'2021-02-26 09:53:23','科室3'),(34,'2021-02-26 09:53:23','科室4'),(35,'2021-02-26 09:53:23','科室5'),(36,'2021-02-26 09:53:23','科室6');
/*!40000 ALTER TABLE `keshiliebiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='医院资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-02-26 09:53:23','标题1','简介1','http://localhost:8080/ssm5wauf/upload/news_picture1.jpg','内容1'),(82,'2021-02-26 09:53:24','标题2','简介2','http://localhost:8080/ssm5wauf/upload/news_picture2.jpg','内容2'),(83,'2021-02-26 09:53:24','标题3','简介3','http://localhost:8080/ssm5wauf/upload/news_picture3.jpg','内容3'),(84,'2021-02-26 09:53:24','标题4','简介4','http://localhost:8080/ssm5wauf/upload/news_picture4.jpg','内容4'),(85,'2021-02-26 09:53:24','标题5','简介5','http://localhost:8080/ssm5wauf/upload/news_picture5.jpg','内容5'),(86,'2021-02-26 09:53:24','标题6','简介6','http://localhost:8080/ssm5wauf/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-26 09:53:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `suoshuyiyuan` varchar(200) DEFAULT NULL COMMENT '所属医院',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yiling` int(11) DEFAULT NULL COMMENT '医龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `jianjie` longtext COMMENT '简介',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2021-02-26 09:53:23','医生1','医生姓名1','123456','所属医院1','科室1','职称1','男',1,'13823888881','http://localhost:8080/ssm5wauf/upload/yisheng_touxiang1.jpg','简介1','是','','2021-02-26 17:53:23'),(22,'2021-02-26 09:53:23','医生2','医生姓名2','123456','所属医院2','科室2','职称2','男',2,'13823888882','http://localhost:8080/ssm5wauf/upload/yisheng_touxiang2.jpg','简介2','是','','2021-02-26 17:53:23'),(23,'2021-02-26 09:53:23','医生3','医生姓名3','123456','所属医院3','科室3','职称3','男',3,'13823888883','http://localhost:8080/ssm5wauf/upload/yisheng_touxiang3.jpg','简介3','是','','2021-02-26 17:53:23'),(24,'2021-02-26 09:53:23','医生4','医生姓名4','123456','所属医院4','科室4','职称4','男',4,'13823888884','http://localhost:8080/ssm5wauf/upload/yisheng_touxiang4.jpg','简介4','是','','2021-02-26 17:53:23'),(25,'2021-02-26 09:53:23','医生5','医生姓名5','123456','所属医院5','科室5','职称5','男',5,'13823888885','http://localhost:8080/ssm5wauf/upload/yisheng_touxiang5.jpg','简介5','是','','2021-02-26 17:53:23'),(26,'2021-02-26 09:53:23','医生6','医生姓名6','123456','所属医院6','科室6','职称6','男',6,'13823888886','http://localhost:8080/ssm5wauf/upload/yisheng_touxiang6.jpg','简介6','是','','2021-02-26 17:53:23');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiyuanxinxi`
--

DROP TABLE IF EXISTS `yiyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `yiyuandizhi` varchar(200) DEFAULT NULL COMMENT '医院地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yiyuantupian` varchar(200) DEFAULT NULL COMMENT '医院图片',
  `yiyuanjianjie` longtext COMMENT '医院简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='医院信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiyuanxinxi`
--

LOCK TABLES `yiyuanxinxi` WRITE;
/*!40000 ALTER TABLE `yiyuanxinxi` DISABLE KEYS */;
INSERT INTO `yiyuanxinxi` VALUES (51,'2021-02-26 09:53:23','医院名称1','医院地址1','13823888881','http://localhost:8080/ssm5wauf/upload/yiyuanxinxi_yiyuantupian1.jpg','医院简介1'),(52,'2021-02-26 09:53:23','医院名称2','医院地址2','13823888882','http://localhost:8080/ssm5wauf/upload/yiyuanxinxi_yiyuantupian2.jpg','医院简介2'),(53,'2021-02-26 09:53:23','医院名称3','医院地址3','13823888883','http://localhost:8080/ssm5wauf/upload/yiyuanxinxi_yiyuantupian3.jpg','医院简介3'),(54,'2021-02-26 09:53:23','医院名称4','医院地址4','13823888884','http://localhost:8080/ssm5wauf/upload/yiyuanxinxi_yiyuantupian4.jpg','医院简介4'),(55,'2021-02-26 09:53:23','医院名称5','医院地址5','13823888885','http://localhost:8080/ssm5wauf/upload/yiyuanxinxi_yiyuantupian5.jpg','医院简介5'),(56,'2021-02-26 09:53:23','医院名称6','医院地址6','13823888886','http://localhost:8080/ssm5wauf/upload/yiyuanxinxi_yiyuantupian6.jpg','医院简介6');
/*!40000 ALTER TABLE `yiyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-26 09:53:23','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm5wauf/upload/yonghu_gerenzhaopian1.jpg'),(12,'2021-02-26 09:53:23','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm5wauf/upload/yonghu_gerenzhaopian2.jpg'),(13,'2021-02-26 09:53:23','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm5wauf/upload/yonghu_gerenzhaopian3.jpg'),(14,'2021-02-26 09:53:23','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm5wauf/upload/yonghu_gerenzhaopian4.jpg'),(15,'2021-02-26 09:53:23','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm5wauf/upload/yonghu_gerenzhaopian5.jpg'),(16,'2021-02-26 09:53:23','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm5wauf/upload/yonghu_gerenzhaopian6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhichengliebiao`
--

DROP TABLE IF EXISTS `zhichengliebiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhichengliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='职称列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhichengliebiao`
--

LOCK TABLES `zhichengliebiao` WRITE;
/*!40000 ALTER TABLE `zhichengliebiao` DISABLE KEYS */;
INSERT INTO `zhichengliebiao` VALUES (41,'2021-02-26 09:53:23','职称1'),(42,'2021-02-26 09:53:23','职称2'),(43,'2021-02-26 09:53:23','职称3'),(44,'2021-02-26 09:53:23','职称4'),(45,'2021-02-26 09:53:23','职称5'),(46,'2021-02-26 09:53:23','职称6');
/*!40000 ALTER TABLE `zhichengliebiao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-27  9:36:16
