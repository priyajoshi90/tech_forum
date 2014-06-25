-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: TechForum
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.04.1

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
-- Table structure for table `emp_logins`
--

DROP TABLE IF EXISTS `emp_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_emp_logins_on_email` (`email`),
  UNIQUE KEY `index_emp_logins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_logins`
--

LOCK TABLES `emp_logins` WRITE;
/*!40000 ALTER TABLE `emp_logins` DISABLE KEYS */;
INSERT INTO `emp_logins` VALUES (1,'admin@tcs.com','$2a$10$snXDGMJCzW46oDj3ublhseNKGtG7YkRKx5/nlORSDX/029oy8v.tC',NULL,NULL,NULL,7,'2014-06-24 09:07:23','2014-06-11 12:28:11','127.0.0.1','127.0.0.1','2014-05-29 06:44:17','2014-06-24 09:07:23'),(2,'user1@tcs.com','$2a$10$DXFqe0jjJoP1aAMo0.U.Veu5GQKWlYr2sWlWoP6WN8zM1Qz0.LrxG',NULL,NULL,NULL,2,'2014-06-03 12:36:48','2014-05-29 09:08:45','127.0.0.1','127.0.0.1','2014-05-29 06:46:22','2014-06-03 12:36:48'),(3,'priya.joshi@tcs.com','$2a$10$mu6t7Fnj2sq16bvR69XO.OMnZ.xa9wmhORS0bNb36bZ6OaVXYeA9.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 08:53:28','2014-06-03 08:53:28'),(4,'sdjkfhkjh@hjkh.f','$2a$10$7cyzWjYXaZcJxcvb.nUnO.khF8tTir0IZhd8RfetvXQe/FChFc3X.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 09:27:31','2014-06-03 09:27:31'),(5,'sdjkfhkjhdg@hjkh.f','$2a$10$cbgs15mNdgunN5s0ykgItOcpHBqBUMTAkZ4phr3haToxVXsEbo2rS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 09:36:51','2014-06-03 09:36:51'),(6,'perthl@jhjk.sdf','$2a$10$EBOmP8PpbpNCXjNbnAKx6OylJZcn.c13kGa0jYuoaVhew5e4m7Qse',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 10:45:45','2014-06-03 10:45:45'),(7,'jfgy@fg.hju','$2a$10$UrWg1qFncEB/ZjYDvYiDtO4x3BeqAcrJ08Io9nj8lFBos/w8HorW2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 11:00:55','2014-06-03 11:00:55'),(8,'rtdgt@gfhfg1.fghfg','$2a$10$9ocqyU114u1zQsz3zvKcju3bouviCq55B03JuTSm0ErBndfJCZwg.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 11:03:30','2014-06-03 11:03:30'),(9,'ghcfg@gfhf.gjug','$2a$10$7rnnGx8u9IlMVY5pU5uCNOmwCdZ1ruLgLwIivcIt9H0DJdittwFP2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 11:08:35','2014-06-03 11:08:35'),(10,'ghcfg@gfdhfr.gjug','$2a$10$BYxiLELkwly5t2sKj8.6/.qNwOkUlr4ZJXSni9GwzLFUHsHrhLqPG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:02:05','2014-06-03 12:02:05'),(11,'ghcfg@gfdehfr.gjug','$2a$10$4to0t4me51YF9EOqkzYtfO9LBRInWxdQYE7AdAmPVQLs4ooVML.Wm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:06:17','2014-06-03 12:06:17'),(12,'ghcfg@gfdeehfr.gjug','$2a$10$N6AOXug9a8Y7AuHV3gS4u.u2AIiIfY9s/pinlgK/XMc3xdtxF88Yy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:07:08','2014-06-03 12:07:08'),(13,'ghcfrg@gfdeehfr.gjug','$2a$10$ARQaXvpjBfoqFD60ro9TnO/Sul7ky43Qv1hCIAy85f6phesWW9Eru',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:10:30','2014-06-03 12:10:30'),(14,'dtgdr@thf.yhuty','$2a$10$sWSw0rVzH.yaVnsB.ioQAuMaSe4PqCZeWdeY92ZuEtPHxeouf58Wq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:12:44','2014-06-03 12:12:44'),(15,'dtgdr@thyf.yhuty','$2a$10$9WRDR5JmMj45nieBV/0pPeb0Mct0h4TeH9zICwTftjPx4E31ejcle',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:13:11','2014-06-03 12:13:11'),(16,'dtgedr@thyf.yhuty','$2a$10$X2T8cS50DKXqlOQn6ZY9TO3iKDOEuKc6T1EOCgTUPW0Ji.73Wj82y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:14:18','2014-06-03 12:14:18'),(17,'dtgerdr@thyf.yhuty','$2a$10$mrevQQKfYF2AfTRmIBPYS.6oB.wMKD23VpXK9LBUwE04yqWv2URvS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:15:32','2014-06-03 12:15:32'),(18,'dgtgerdr@thyf.yhuty','$2a$10$NgjspeliTe2LKBAz91KKCOo1jvpB8lpd8BoX7aILDlSRW09cEp4LS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:16:36','2014-06-03 12:16:36'),(19,'dgtgterdr@thyf.yhuty','$2a$10$SG2BNcpBlpNTo5JNKG1twOflzt7LZwMF6FGCqwtRpuIs2wGjpjH5G',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:17:07','2014-06-03 12:17:07'),(20,'dgtgterdr3@thyf.yhuty','$2a$10$63G7CD7HKM3lfe9kN7lv7eZBc4RyHDhso.d5nl3I786eKUY.eFoku',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:19:08','2014-06-03 12:19:08'),(21,'dgtgtetrdr3@thyf.yhuty','$2a$10$1xyqJfvKn9OYUWuOEwXHBeB403B4cKMYvbKmlmSZyyQfUiVJdTxiu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:19:36','2014-06-03 12:19:36'),(22,'dgtgt3etrdr3@thyf.yhuty','$2a$10$h.y5.v1eyuISp2kO..hvIuW6EXzeTDNAahzw4cQ067pG7aciOrCy.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:20:50','2014-06-03 12:20:50'),(23,'dgtgdt3etrdr3@thyf.yhuty','$2a$10$YtCyo3..gdnnX.xBIbYYQuuAfjRBrAYbzUezjaDJWu0ZuUKGIQ47y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:25:39','2014-06-03 12:25:39'),(24,'ddgtgdt3etrdr3@thyf.yhuty','$2a$10$FaEpqSppJJqbqYhmr/bsIOohpggp.YWLrV3PCjSYHK47V4A0kKWSG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:27:03','2014-06-03 12:27:03'),(25,'ddgtggdt3etrdr3@thyf.yhuty','$2a$10$Lb79w1Cc3Ezs/jFh9v1fq.d9c238XVhGmRhMXoP5A7ZpPfoAsTjjm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:28:15','2014-06-03 12:28:15'),(26,'tyhth@gfhfg.gjh','$2a$10$SDVsDPmvvh1/8adtQUAukebyE31NljCmyWe7tE485.AZvQ6s081le',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-03 12:32:03','2014-06-03 12:32:03'),(27,'yu@ghtgf.u','$2a$10$AFs1I2kUWJb2VHHAqzRklegvPZDB3uDA0eLbs/A5dEGC.rjacRrZ2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-05 09:21:38','2014-06-05 09:21:38'),(28,'teser@g.jjn','$2a$10$PsR8fHUK8lKPBWIt3uFeHezHZ8SPhlcmVXmVWq/zmlXrgkr8J.Q0y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-06 05:47:54','2014-06-06 05:47:54'),(29,'turtu@fgyjhfy.tfyt','$2a$10$kgoOPVtr2ISeN75kfKuP1eVFUu.SzJWePc28kiTgI.7WaX3gtkLBq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-11 06:13:24','2014-06-11 06:13:24'),(30,'sdfsd@fghf.hj','$2a$10$3fFbGKwD8wsJV50hhhlG6etD1kcyJAXEQR9fS2rKSMIlTGcTpPIjW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-11 08:25:36','2014-06-11 08:25:36'),(31,'a@b.com','$2a$10$Em06Txgipr1rNgYcC0F/8eLj/9M53w7HosG2p3.Pdd5NHgCcs4nK2',NULL,NULL,NULL,1,'2014-06-24 08:55:32','2014-06-24 08:55:32','127.0.0.1','127.0.0.1','2014-06-24 08:54:02','2014-06-24 08:55:32');
/*!40000 ALTER TABLE `emp_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_masters`
--

DROP TABLE IF EXISTS `emp_masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tcs_id` varchar(255) DEFAULT NULL,
  `fm_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `emp_login_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_emp_masters_on_emp_login_id` (`emp_login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_masters`
--

LOCK TABLES `emp_masters` WRITE;
/*!40000 ALTER TABLE `emp_masters` DISABLE KEYS */;
INSERT INTO `emp_masters` VALUES (1,'109876','109876','Admin1','abcd','9876567654','admin','2014-05-05',NULL,NULL,1,'2014-05-29 06:44:17','2014-05-29 06:44:17'),(2,'109786','187645','User1','abcd','9854654576','normal','2014-05-03',NULL,NULL,2,'2014-05-29 06:46:23','2014-05-29 06:46:23'),(3,'681212','109725','Priya','abcd','98767654','normal','2014-01-06',NULL,NULL,3,'2014-06-03 08:53:28','2014-06-03 08:53:28'),(4,'546456','','','','','normal',NULL,NULL,NULL,25,'2014-06-03 12:28:15','2014-06-03 12:28:15'),(5,'54456','4353','asgjdgj','gffgb','7687658876','normal',NULL,NULL,NULL,26,'2014-06-03 12:32:03','2014-06-03 12:32:03'),(6,'53646','564','dsfg','er','','normal',NULL,NULL,NULL,27,'2014-06-05 09:21:38','2014-06-05 09:21:38'),(7,'355','','retert','','','normal',NULL,NULL,NULL,28,'2014-06-06 05:47:56','2014-06-06 05:47:56'),(8,'56546','5647','ertsrt','gfh','65767','normal','2014-01-06',NULL,NULL,29,'2014-06-11 06:13:24','2014-06-11 06:13:24'),(9,'5746','','fghg','fgh','','normal',NULL,NULL,NULL,30,'2014-06-11 08:25:36','2014-06-11 08:25:36'),(10,'123456','11234','Kous','any','983216456','normal',NULL,NULL,NULL,31,'2014-06-24 08:54:02','2014-06-24 08:54:02');
/*!40000 ALTER TABLE `emp_masters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empteches`
--

DROP TABLE IF EXISTS `empteches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empteches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_master_id` int(11) DEFAULT NULL,
  `techmaster_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_empteches_on_emp_master_id` (`emp_master_id`),
  KEY `index_empteches_on_techmaster_id` (`techmaster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empteches`
--

LOCK TABLES `empteches` WRITE;
/*!40000 ALTER TABLE `empteches` DISABLE KEYS */;
INSERT INTO `empteches` VALUES (1,546456,1,'2014-06-03 12:28:15','2014-06-03 12:28:15'),(2,54456,2,'2014-06-03 12:32:03','2014-06-03 12:32:03'),(3,53646,2,'2014-06-05 09:21:38','2014-06-05 09:21:38'),(4,NULL,NULL,'2014-06-06 05:47:57','2014-06-06 05:47:57'),(5,NULL,NULL,'2014-06-11 06:13:24','2014-06-11 06:13:24'),(6,5746,1,'2014-06-11 08:25:36','2014-06-11 08:25:36'),(7,123456,1,'2014-06-24 08:54:02','2014-06-24 08:54:02');
/*!40000 ALTER TABLE `empteches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `forum_type` varchar(255) DEFAULT NULL,
  `emptech_id` int(11) DEFAULT NULL,
  `emp_login_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `no_of_replies` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_forums_on_emptech_id` (`emptech_id`),
  KEY `index_forums_on_emp_login_id` (`emp_login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums` DISABLE KEYS */;
INSERT INTO `forums` VALUES (1,'default','Issue',1,1,'2014-06-24 09:26:45','2014-06-24 09:26:45',0),(2,'default','Issue',1,1,'2014-06-24 09:27:00','2014-06-24 09:27:00',0),(3,'default','Challenge',1,1,'2014-06-24 09:27:16','2014-06-24 09:27:16',0),(4,'q1','Issue',NULL,NULL,'2014-06-24 09:35:06','2014-06-24 09:35:06',NULL),(5,'q2','Issue',NULL,NULL,'2014-06-24 09:35:33','2014-06-24 09:35:33',NULL),(6,'q3','Issue',NULL,NULL,'2014-06-24 09:35:40','2014-06-24 09:35:40',NULL);
/*!40000 ALTER TABLE `forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fdate` date DEFAULT NULL,
  `tdate` date DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `emp_login_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_leaves_on_emp_login_id` (`emp_login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves`
--

LOCK TABLES `leaves` WRITE;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nestreply_id` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `emp_login_id` int(11) DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_replies_on_emp_login_id` (`emp_login_id`),
  KEY `index_replies_on_forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140430063143'),('20140430063905'),('20140502105425'),('20140502105548'),('20140506041249'),('20140506042226'),('20140506042759'),('20140506111256'),('20140506115400'),('20140506124445'),('20140522061337'),('20140603120007'),('20140611065125');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techmasters`
--

DROP TABLE IF EXISTS `techmasters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `techmasters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tech` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techmasters`
--

LOCK TABLES `techmasters` WRITE;
/*!40000 ALTER TABLE `techmasters` DISABLE KEYS */;
INSERT INTO `techmasters` VALUES (1,'Rails','2014-06-11 08:24:36','2014-06-11 08:24:36'),(2,'Dot Net','2014-06-11 08:24:47','2014-06-11 08:24:47');
/*!40000 ALTER TABLE `techmasters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wfhs`
--

DROP TABLE IF EXISTS `wfhs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wfhs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fdate` date DEFAULT NULL,
  `tdate` date DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `emp_login_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_wfhs_on_emp_login_id` (`emp_login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wfhs`
--

LOCK TABLES `wfhs` WRITE;
/*!40000 ALTER TABLE `wfhs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wfhs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-25 11:05:28
