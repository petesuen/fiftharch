CREATE DATABASE  IF NOT EXISTS `petesuen` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `petesuen`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: petesuen
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'play');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`),
  CONSTRAINT `user_id_refs_id_650f49a6` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add migration history',9,'add_migrationhistory'),(26,'Can change migration history',9,'change_migrationhistory'),(27,'Can delete migration history',9,'delete_migrationhistory'),(28,'Can add entry',10,'add_entry'),(29,'Can change entry',10,'change_entry'),(30,'Can delete entry',10,'delete_entry'),(31,'Can add Tag',11,'add_tag'),(32,'Can change Tag',11,'change_tag'),(33,'Can delete Tag',11,'delete_tag'),(34,'Can add Tagged Item',12,'add_taggeditem'),(35,'Can change Tagged Item',12,'change_taggeditem'),(36,'Can delete Tagged Item',12,'delete_taggeditem'),(37,'Can add comment',13,'add_comment'),(38,'Can change comment',13,'change_comment'),(39,'Can delete comment',13,'delete_comment'),(40,'Can moderate comments',13,'can_moderate'),(41,'Can add comment flag',14,'add_commentflag'),(42,'Can change comment flag',14,'change_commentflag'),(43,'Can delete comment flag',14,'delete_commentflag'),(44,'Can add question',15,'add_question'),(45,'Can change question',15,'change_question'),(46,'Can delete question',15,'delete_question'),(47,'Can add answer choice',16,'add_answerchoice'),(48,'Can change answer choice',16,'change_answerchoice'),(49,'Can delete answer choice',16,'delete_answerchoice'),(50,'Can add question',17,'add_question'),(51,'Can change question',17,'change_question'),(52,'Can delete question',17,'delete_question'),(53,'Can add answer choice',18,'add_answerchoice'),(54,'Can change answer choice',18,'change_answerchoice'),(55,'Can delete answer choice',18,'delete_answerchoice'),(56,'Can add answer',19,'add_answer'),(57,'Can change answer',19,'change_answer'),(58,'Can delete answer',19,'delete_answer'),(59,'Can add play member profile',20,'add_playmemberprofile'),(60,'Can change play member profile',20,'change_playmemberprofile'),(61,'Can delete play member profile',20,'delete_playmemberprofile'),(62,'Can add img',21,'add_img'),(63,'Can change img',21,'change_img'),(64,'Can delete img',21,'delete_img'),(65,'Can add survey instance',22,'add_surveyinstance'),(66,'Can change survey instance',22,'change_surveyinstance'),(67,'Can delete survey instance',22,'delete_surveyinstance'),(68,'Can add rubric',23,'add_rubric'),(69,'Can change rubric',23,'change_rubric'),(70,'Can delete rubric',23,'delete_rubric');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'petesuen','Peter','Suen','peter@petesuen.com','sha1$5d2d4$fb7e23cafea3c0579f95a93d6f6b20801fe60d63',1,1,1,'2013-09-09 00:40:25','2011-08-12 15:57:12'),(2,'aorozco','Albert','Orozco','','sha1$c2595$f6b022a76260dff4bf88165e668bed96e7c30b5d',0,1,0,'2012-03-28 18:08:30','2012-03-28 18:08:30'),(3,'calev','Caitlin','Alev','','sha1$8a1f8$20689ced68ec481c630623845f04f05078688316',0,1,0,'2012-03-28 18:09:41','2012-03-28 18:09:41'),(4,'crhee','Chaewoo','Rhee','','sha1$0b4a3$311a82161c4edcacfd702af41645af052ccabeca',0,1,0,'2012-03-28 18:09:58','2012-03-28 18:09:58'),(5,'ekwok','Emily','Kwok','','sha1$78a1a$37af1956263f2a4d471476adc99a221a6202f531',0,1,0,'2012-03-28 18:10:05','2012-03-28 18:10:05'),(6,'gmunoz','Gennifer','Muñoz','','sha1$a0e62$83cf2b26f7b8a8ddb03bcc7abfad0ed3df416a6a',0,1,0,'2012-03-28 18:10:15','2012-03-28 18:10:15'),(7,'hbittner','Hana','Bittner','','sha1$53836$7cdd9bb1d3db0a6f43bab1d8e502fd6c6ba5b074',0,1,0,'2012-03-28 18:10:27','2012-03-28 18:10:27'),(8,'hvuong','Hien','Vuong','','sha1$4e33b$629c91deb88d90744589b5aab8818e90514293d9',0,1,0,'2012-03-28 18:11:04','2012-03-28 18:11:04'),(9,'jcampbell','Jason','Campbell','','sha1$6a9ef$978a47b47ad9e0423af1510bfa59aaa1f93ab638',0,1,0,'2012-03-28 18:11:18','2012-03-28 18:11:18'),(10,'jflaherty','John','Flaherty','','sha1$18c3a$8b137a2a1c0c0ac6d606f998aca090295bd8f135',0,1,0,'2012-03-28 18:11:28','2012-03-28 18:11:28'),(11,'jlee','Jongsun','Lee','','sha1$57a79$9487b5560d5b7fbe0b4cd9c0d332c06654b40421',0,1,0,'2012-03-28 18:11:39','2012-03-28 18:11:39'),(12,'kgates','Karen','Gates','','sha1$d4f93$b5400d577360d4de09f6c4c26da5a4e3cb07714e',0,1,0,'2012-03-28 18:11:46','2012-03-28 18:11:46'),(13,'ekostyukova','Ekaterina','Kostyukova','','sha1$068e6$b9e9288221e98cb65826b311f79388e1304607c7',0,1,0,'2012-03-28 18:12:13','2012-03-28 18:12:13'),(14,'khenderson','Kristen','Henderson','','sha1$89e0e$82af0a479b095700443ead4bd773025444056cda',0,1,0,'2012-03-28 18:12:29','2012-03-28 18:12:29'),(15,'eradtke','Elizabeth','Radtke','','sha1$177db$76abffa8b5df6a23e2f7b067da5c33114e245bc6',0,1,0,'2012-03-28 18:13:28','2012-03-28 18:13:28'),(16,'lrios','Lizette','Rios','','sha1$e5096$6bc77cd0e82141801c524c9e3cb0974ba8e24bc2',0,1,0,'2012-03-28 18:13:39','2012-03-28 18:13:39'),(17,'oiscimenler','Omer','Iscimenler','','sha1$1e6ee$f33523f90a9ea8f3f3a69fb068ebd6e7032bec5e',0,1,0,'2012-03-28 18:13:53','2012-03-28 18:13:53'),(18,'odiaz','Oscar','Diaz','','sha1$f1a67$02f8074fd12114e5a4c69728040ef05f663080ad',0,1,0,'2012-03-28 18:14:07','2012-03-28 18:14:07'),(19,'rguntert','Ross','Guntert','','sha1$63989$d9bde0a295193d461d509c44a0cd36976a0db675',0,1,0,'2012-03-28 18:14:17','2012-03-28 18:14:17'),(20,'sshi','Sophi','Shi','','sha1$7d513$86f5403590524df6aebcdcf6657afb57fe35f775',0,1,0,'2012-03-28 18:14:26','2012-03-28 18:14:26'),(21,'sgerostathopoulos','Stathos','Gerostathopoulos','','sha1$01e1c$ecdc5b4ccab3eff76dcbaba33138b0300b26a511',0,1,0,'2012-03-28 18:14:45','2012-03-28 18:14:45'),(22,'tmeeks','Tyler','Meeks','','sha1$33ff1$cdaf21582af24338d5ec83e9d38fe866ecf31e8e',0,1,0,'2012-03-28 18:15:14','2012-03-28 18:15:14'),(23,'alevine','Aaron','Levine','','sha1$4bbf5$096127b5000a86a880b4912997a0a887b554a0ad',0,1,0,'2012-03-28 18:23:11','2012-03-28 18:23:11');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,21,1),(22,22,1),(23,23,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_answer`
--

DROP TABLE IF EXISTS `blog_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_choice_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT '2011-12-16 14:35:27',
  `question_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `note` varchar(200) NOT NULL,
  `survey_instance_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_answer_6e14ae5f` (`answer_choice_id`),
  KEY `blog_answer_1f92e550` (`question_id`),
  KEY `blog_answer_71a45437` (`survey_instance_id`),
  CONSTRAINT `answer_choice_id_refs_id_410f0cb6` FOREIGN KEY (`answer_choice_id`) REFERENCES `blog_answerchoice` (`id`),
  CONSTRAINT `question_id_refs_id_453f0c2d` FOREIGN KEY (`question_id`) REFERENCES `blog_question` (`id`),
  CONSTRAINT `survey_instance_id_refs_id_17dd09c` FOREIGN KEY (`survey_instance_id`) REFERENCES `blog_surveyinstance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_answer`
--

LOCK TABLES `blog_answer` WRITE;
/*!40000 ALTER TABLE `blog_answer` DISABLE KEYS */;
INSERT INTO `blog_answer` VALUES (1,2,'2011-12-16 15:15:22',1,0,'',1),(2,1,'2011-12-16 15:19:40',1,0,'',1),(3,1,'2011-12-16 15:20:12',1,0,'',1),(4,2,'2011-12-16 15:20:29',1,0,'',1),(5,2,'2011-12-16 15:21:12',1,0,'',1),(6,2,'2011-12-16 15:21:16',1,0,'',1),(7,2,'2011-12-16 15:21:39',1,0,'',1),(8,2,'2011-12-16 15:23:38',1,0,'',1),(9,1,'2011-12-16 15:33:52',1,0,'',1),(10,1,'2011-12-16 15:35:33',1,0,'',1),(11,1,'2011-12-16 15:36:12',1,0,'',1),(12,1,'2011-12-16 15:39:16',1,0,'',1),(13,4,'2011-12-16 15:39:19',2,0,'',1);
/*!40000 ALTER TABLE `blog_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_answerchoice`
--

DROP TABLE IF EXISTS `blog_answerchoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_answerchoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `text` varchar(200) NOT NULL DEFAULT '',
  `has_img` tinyint(1) NOT NULL,
  `spanish` varchar(200) NOT NULL,
  `score` int(11) NOT NULL,
  `allow_note` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_answerchoice_1f92e550` (`question_id`),
  CONSTRAINT `question_id_refs_id_5b4b20fc` FOREIGN KEY (`question_id`) REFERENCES `blog_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_answerchoice`
--

LOCK TABLES `blog_answerchoice` WRITE;
/*!40000 ALTER TABLE `blog_answerchoice` DISABLE KEYS */;
INSERT INTO `blog_answerchoice` VALUES (1,1,'Yes',0,'',0,0),(2,1,'No',0,'',0,0),(3,2,'Male',0,'',0,0),(4,2,'Female',0,'',0,0);
/*!40000 ALTER TABLE `blog_answerchoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_entry`
--

DROP TABLE IF EXISTS `blog_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `text` longtext NOT NULL,
  `blurb` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_entry`
--

LOCK TABLES `blog_entry` WRITE;
/*!40000 ALTER TABLE `blog_entry` DISABLE KEYS */;
INSERT INTO `blog_entry` VALUES (1,'2011-08-12 16:44:02','Project: Weaving Spaces','<img src=\"/media/entry_1/rendering1_small.jpg\" />\r\n<p>\r\nThis was my final project for 200B studio, an urban housing project at 1 Franklin Street, San Francisco. I called my design <b>Weaving Spaces</b>, <i>integration in the urban context</i>. The main idea is that cities often create urban barriers that fence, confine, and limit the freedom to associate and integrate. For example, many cities (like Boston, Seattle, etc.) are divided along the east-west axis, producing a rich north and a poor south. There is little interaction across these fences. \r\n</p>\r\n<img src=\"/media/entry_1/rendering2_small.jpg\" />\r\n<p>\r\nThis project attempts to break down these barriers in the urban housing context by spatially weaving different combinations of spaces. The goal is to achieve better integration for the inhabitants. The current site is located near the borders of various divisions in San Francisco. First, Market Street separates San Francisco into north and south areas; the former includes Pacific Heights, which is predominately rich, and the latter includes SOMA, which was industrial and poor. The south side also includes the Mission neighborhood, which has, to this day, gangs and violence.\r\n</p>\r\n<p>\r\nThis separation is also exemplified by Franklin Street, which is a fast-moving one-way street that takes the wealthy up the hill to their expensive homes. This traffic essentially forms a wall along the right-side of the site, preventing it from connecting with neighbors. Gentrification is also encroaching upon from the west, pushing our site into the last corner of unrenovated, undeveloped space.\r\n</p>\r\n<img src=\"/media/entry_1/section_perspective_small.jpg\" />\r\n<p>\r\nAs an alternative to these barriers, the current project attempts to weave spaces together for better integration. Spaces are organized into public and private, and three combinations of weaving are attempted: public + public, public + private, and private + private. For instance, the ground level includes space for food trucks, which is woven with the public foot traffic. Building circulation, another form of public space, is also integrated within the private apartment units. Lastly, a private inner courtyard space is overlapped with the private units. \r\n</p>\r\n<p>\r\nThese woven spaces offer different opportunities for people to interact, which hopefully will help breakdown existing barriers.\r\n</p>','<img src=\"/media/entry_1/rendering1_small.jpg\"/>\r\n<p>\r\nThis was my final project for 200B studio, an urban housing project situated at 1 Franklin Street, San Francisco. I called my design <b>Weaving Spaces</b>, <i>integration in the urban context</i>. The main idea is that cities often create urban barriers that fence, confine, and limit the freedom to associate and integrate. For example, many cities (like Boston, Seattle, etc.) are divided along the east-west axis, producing a rich north and a poor south. There is little interaction across these fences...\r\n</p>'),(2,'2011-08-18 12:04:55','Smoked Brisket','<img src=\"/media/entry_2/brisket_2.jpg\"/>\r\n<p>\r\nI finally decided to smoke a brisket again on my Weber Bullet smoker. The first time I tried it was a total failure - the overnight cooking at super low temperatures was just too difficult to manage and, frankly, a pain. I followed a new recipe this time from the <a href=\"http://www.virtualweberbullet.com/brisket4.html\" target=\"_blank\">Virtual Weber Bullet</a>, which called for high heat and total smoking time of around 5-6 hours. I know brisket enthusiasts would frown upon the high heat, but for home cooking this is totally better, because now I can pretty much smoke up a brisket anytime I feel like it.\r\n</p>\r\n<img src=\"/media/entry_2/brisket_1.jpg\"/>\r\n<p>\r\nI also added a poblano pepper on the brisket during smoking, which gives a chipotle flavor. I think that enhanced the beef and came out real well. The cut of brisket I used was also pretty fatty, and I didn\'t trim off much of the fat when the smoking was done. I think it gives it a richer flavor but my heart is probably not happy. Less fat maybe next time.\r\n</p>','<img src=\"/media/entry_2/brisket_2.jpg\"/>\r\n<p>\r\nI finally decided to smoke a brisket again on my Weber Bullet smoker. The first time I tried it was a total failure - the overnight cooking at super low temperatures was just too difficult to manage and, frankly, a pain. I followed a new recipe this time from the <a href=\"http://www.virtualweberbullet.com/brisket4.html\" target=\"_blank\">Virtual Weber Bullet</a>, which called for high heat and total smoking time of around 5-6 hours. I know brisket enthusiasts would frown upon the high heat, but for home cooking this is totally better, because now I can pretty much smoke up a brisket anytime I feel like it.\r\n</p>'),(3,'2012-05-30 10:07:45','Digital Portfolio','I finally updated my digital portfolio this spring. All my work from the first half of my Berkeley M.Arch. Option 3 program has been included.\r\n<br/>\r\n<div><object style=\"width:550px;height:183px\" ><param name=\"movie\" value=\"http://static.issuu.com/webembed/viewers/style1/v2/IssuuReader.swf?mode=mini&amp;printButtonEnabled=false&amp;backgroundColor=%23222222&amp;documentId=120120155643-b6ac29e7cb314532ab2418fb5b9bdbde\" /><param name=\"allowfullscreen\" value=\"true\"/><param name=\"menu\" value=\"false\"/><param name=\"wmode\" value=\"transparent\"/><embed src=\"http://static.issuu.com/webembed/viewers/style1/v2/IssuuReader.swf\" type=\"application/x-shockwave-flash\" allowfullscreen=\"true\" menu=\"false\" wmode=\"transparent\" style=\"width:550px;height:183px\" flashvars=\"mode=mini&amp;printButtonEnabled=false&amp;backgroundColor=%23222222&amp;documentId=120120155643-b6ac29e7cb314532ab2418fb5b9bdbde\" /></object><div style=\"width:550px;text-align:left;\"><a href=\"http://issuu.com/petersuen/docs/portfolio?mode=window&amp;printButtonEnabled=false&amp;backgroundColor=%23222222\" target=\"_blank\">Open publication</a> - Free <a href=\"http://issuu.com\" target=\"_blank\">publishing</a> - <a href=\"http://issuu.com/search?q=architure\" target=\"_blank\">More architure</a></div></div><br/>','<div><object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" style=\"width:550px;height:183px\" id=\"75a63c4b-76f0-1d45-1fae-3db14e19568e\" ><param name=\"movie\" value=\"http://static.issuu.com/webembed/viewers/style1/v2/IssuuReader.swf?mode=mini&amp;printButtonEnabled=false&amp;backgroundColor=%23222222&amp;documentId=120120155643-b6ac29e7cb314532ab2418fb5b9bdbde\" /><param name=\"allowfullscreen\" value=\"true\"/><param name=\"menu\" value=\"false\"/><param name=\"wmode\" value=\"transparent\"/><embed src=\"http://static.issuu.com/webembed/viewers/style1/v2/IssuuReader.swf\" type=\"application/x-shockwave-flash\" allowfullscreen=\"true\" menu=\"false\" wmode=\"transparent\" style=\"width:550px;height:183px\" flashvars=\"mode=mini&amp;printButtonEnabled=false&amp;backgroundColor=%23222222&amp;documentId=120120155643-b6ac29e7cb314532ab2418fb5b9bdbde\" /></object><div style=\"width:550px;text-align:left;\"><a href=\"http://issuu.com/petersuen/docs/portfolio?mode=window&amp;printButtonEnabled=false&amp;backgroundColor=%23222222\" target=\"_blank\">Open publication</a> - Free <a href=\"http://issuu.com\" target=\"_blank\">publishing</a> - <a href=\"http://issuu.com/search?q=architure\" target=\"_blank\">More architure</a></div></div>\r\n<br/>');
/*!40000 ALTER TABLE `blog_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_img`
--

DROP TABLE IF EXISTS `blog_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `entry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_img_38a62041` (`entry_id`),
  CONSTRAINT `entry_id_refs_id_2f24ae66` FOREIGN KEY (`entry_id`) REFERENCES `blog_entry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_img`
--

LOCK TABLES `blog_img` WRITE;
/*!40000 ALTER TABLE `blog_img` DISABLE KEYS */;
INSERT INTO `blog_img` VALUES (5,'entry_1/rendering1_small.jpg',1),(6,'entry_1/rendering2_small.jpg',1),(7,'entry_1/section_perspective_small.jpg',1),(8,'entry_2/brisket_1.jpg',2),(9,'entry_2/brisket_2.jpg',2);
/*!40000 ALTER TABLE `blog_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_question`
--

DROP TABLE IF EXISTS `blog_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `label` longtext NOT NULL,
  `spanish` longtext NOT NULL,
  `type` int(11) NOT NULL,
  `has_img` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_question`
--

LOCK TABLES `blog_question` WRITE;
/*!40000 ALTER TABLE `blog_question` DISABLE KEYS */;
INSERT INTO `blog_question` VALUES (1,'Have you experienced an earthquake or flood?','','',0,0),(2,'What is your gender?','','',0,0);
/*!40000 ALTER TABLE `blog_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_rubric`
--

DROP TABLE IF EXISTS `blog_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_rubric` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime NOT NULL DEFAULT '2013-09-09 00:30:20',
  `submitterId` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `stylePts` int(11) NOT NULL,
  `contextPts` int(11) NOT NULL,
  `detailsPts` int(11) NOT NULL,
  `importPts` int(11) NOT NULL,
  `reductionPts` int(11) NOT NULL,
  `isPlagiarism` tinyint(1) NOT NULL DEFAULT '0',
  `whyPlagiarism` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_rubric`
--

LOCK TABLES `blog_rubric` WRITE;
/*!40000 ALTER TABLE `blog_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_surveyinstance`
--

DROP TABLE IF EXISTS `blog_surveyinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_surveyinstance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime NOT NULL DEFAULT '2012-05-29 13:20:25',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_surveyinstance`
--

LOCK TABLES `blog_surveyinstance` WRITE;
/*!40000 ALTER TABLE `blog_surveyinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_surveyinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2011-08-12 16:44:02',1,10,'1','Entry object',1,''),(2,'2011-08-12 17:12:28',1,10,'2','Entry object',1,''),(3,'2011-08-12 17:12:40',1,10,'2','Entry object',3,''),(4,'2011-08-14 12:38:06',1,10,'1','Project: Weaving Spaces',2,'Changed text.'),(5,'2011-08-14 12:41:41',1,10,'1','Project: Weaving Spaces',2,'Changed text.'),(6,'2011-08-14 12:42:09',1,10,'1','Project: Weaving Spaces',2,'Changed text.'),(7,'2011-08-14 12:42:34',1,10,'1','Project: Weaving Spaces',2,'Changed text.'),(8,'2011-08-14 12:42:48',1,10,'1','Project: Weaving Spaces',2,'Changed text.'),(9,'2011-08-14 12:43:38',1,10,'1','Project: Weaving Spaces',2,'Changed text.'),(10,'2011-08-14 12:46:41',1,10,'1','Project: Weaving Spaces',2,'Changed text.'),(11,'2011-08-14 12:46:57',1,10,'1','Project: Weaving Spaces',2,'Changed text.'),(12,'2011-08-14 12:47:42',1,10,'1','Project: Weaving Spaces',2,'Changed text.'),(13,'2011-08-14 12:47:55',1,10,'1','Project: Weaving Spaces',2,'Changed text.'),(14,'2011-08-15 13:38:14',1,11,'1','architecture',1,''),(15,'2011-08-15 13:58:17',1,10,'1','Project: Weaving Spaces',2,'Changed blurb.'),(16,'2011-08-15 14:04:26',1,10,'1','Project: Weaving Spaces',2,'Changed blurb.'),(17,'2011-08-15 14:04:31',1,10,'1','Project: Weaving Spaces',2,'Changed blurb.'),(18,'2012-03-28 12:04:17',1,10,'1','Project: Weaving Spaces',2,'Changed blurb and text.'),(19,'2012-03-28 12:05:45',1,10,'2','Smoked Brisket',1,''),(20,'2012-03-28 18:08:30',1,3,'2','aorozco',1,''),(21,'2012-03-28 18:09:41',1,3,'3','calev',1,''),(22,'2012-03-28 18:09:58',1,3,'4','crhee',1,''),(23,'2012-03-28 18:10:05',1,3,'5','ekwok',1,''),(24,'2012-03-28 18:10:15',1,3,'6','gmunoz',1,''),(25,'2012-03-28 18:10:27',1,3,'7','hbittner',1,''),(26,'2012-03-28 18:11:04',1,3,'8','hvuong',1,''),(27,'2012-03-28 18:11:18',1,3,'9','jcampbell',1,''),(28,'2012-03-28 18:11:29',1,3,'10','jflaherty',1,''),(29,'2012-03-28 18:11:39',1,3,'11','jlee',1,''),(30,'2012-03-28 18:11:46',1,3,'12','kgates',1,''),(31,'2012-03-28 18:12:13',1,3,'13','ekostyukova',1,''),(32,'2012-03-28 18:12:29',1,3,'14','khenderson',1,''),(33,'2012-03-28 18:13:28',1,3,'15','eradtke',1,''),(34,'2012-03-28 18:13:39',1,3,'16','lrios',1,''),(35,'2012-03-28 18:13:53',1,3,'17','oiscimenler',1,''),(36,'2012-03-28 18:14:07',1,3,'18','odiaz',1,''),(37,'2012-03-28 18:14:17',1,3,'19','rguntert',1,''),(38,'2012-03-28 18:14:26',1,3,'20','sshi',1,''),(39,'2012-03-28 18:14:45',1,3,'21','sgerostahthopoulos',1,''),(40,'2012-03-28 18:15:14',1,3,'22','tmeeks',1,''),(41,'2012-03-28 18:23:11',1,3,'23','alevine',1,''),(42,'2012-05-30 09:01:42',1,21,'1','Img object',3,''),(43,'2012-05-30 09:01:51',1,21,'3','Img object',3,''),(44,'2012-05-30 09:02:51',1,21,'2','Img object',3,''),(45,'2012-05-30 09:03:13',1,21,'4','Img object',1,''),(48,'2012-05-30 09:31:10',1,21,'4','Img object',3,''),(49,'2012-05-30 09:36:14',1,21,'5','Img object',1,''),(50,'2012-05-30 09:36:24',1,21,'6','Img object',1,''),(51,'2012-05-30 09:36:34',1,21,'7','Img object',1,''),(52,'2012-05-30 09:40:31',1,10,'1','Project: Weaving Spaces',2,'Changed text.'),(53,'2012-05-30 09:40:50',1,10,'1','Project: Weaving Spaces',2,'Changed blurb.'),(54,'2012-05-30 09:42:03',1,21,'8','Img object',1,''),(55,'2012-05-30 09:42:14',1,21,'9','Img object',1,''),(56,'2012-05-30 09:43:33',1,10,'2','Smoked Brisket',2,'Changed blurb and text.'),(57,'2012-05-30 10:08:06',1,10,'4','Digital Portfolio',1,''),(58,'2012-05-30 10:11:37',1,10,'3','Digital Portfolio',2,'Changed text and tags.'),(59,'2012-05-30 10:18:14',1,10,'2','Smoked Brisket',2,'Changed tags.'),(60,'2012-05-30 10:18:43',1,10,'3','Digital Portfolio',2,'Changed tags.'),(61,'2013-09-09 00:45:51',1,23,'15','Rubric object',3,''),(62,'2013-09-09 00:45:51',1,23,'14','Rubric object',3,''),(63,'2013-09-09 00:45:51',1,23,'13','Rubric object',3,''),(64,'2013-09-09 00:45:51',1,23,'12','Rubric object',3,''),(65,'2013-09-09 00:45:51',1,23,'11','Rubric object',3,''),(66,'2013-09-09 00:45:51',1,23,'10','Rubric object',3,''),(67,'2013-09-09 00:45:51',1,23,'9','Rubric object',3,''),(68,'2013-09-09 00:45:51',1,23,'8','Rubric object',3,''),(69,'2013-09-09 00:45:51',1,23,'7','Rubric object',3,''),(70,'2013-09-09 00:45:51',1,23,'6','Rubric object',3,''),(71,'2013-09-09 00:45:51',1,23,'5','Rubric object',3,''),(72,'2013-09-09 00:45:51',1,23,'4','Rubric object',3,''),(73,'2013-09-09 00:45:51',1,23,'3','Rubric object',3,''),(74,'2013-09-09 00:45:51',1,23,'2','Rubric object',3,''),(75,'2013-09-09 00:45:51',1,23,'1','Rubric object',3,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comment_flags`
--

DROP TABLE IF EXISTS `django_comment_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comment_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_403f60f` (`user_id`),
  KEY `django_comment_flags_64c238ac` (`comment_id`),
  KEY `django_comment_flags_111c90f9` (`flag`),
  CONSTRAINT `comment_id_refs_id_373a05f7` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
  CONSTRAINT `user_id_refs_id_603c4dcb` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comment_flags`
--

LOCK TABLES `django_comment_flags` WRITE;
/*!40000 ALTER TABLE `django_comment_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_comment_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comments`
--

DROP TABLE IF EXISTS `django_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_pk` longtext NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(75) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime NOT NULL,
  `ip_address` char(15) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_comments_1bb8f392` (`content_type_id`),
  KEY `django_comments_6223029` (`site_id`),
  KEY `django_comments_403f60f` (`user_id`),
  CONSTRAINT `content_type_id_refs_id_d5868a5` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `site_id_refs_id_7248df08` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `user_id_refs_id_7e9ddfef` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comments`
--

LOCK TABLES `django_comments` WRITE;
/*!40000 ALTER TABLE `django_comments` DISABLE KEYS */;
INSERT INTO `django_comments` VALUES (1,10,'1',1,1,'Roger','roger@gmail.com','http://www.bushman.com/','this is a test comment.','2011-08-15 14:06:03','127.0.0.1',1,0),(2,10,'1',1,1,'Peter','peter@petesuen.com','','I did this.','2011-08-16 14:51:53','127.0.0.1',1,0);
/*!40000 ALTER TABLE `django_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'migration history','south','migrationhistory'),(10,'entry','blog','entry'),(11,'Tag','taggit','tag'),(12,'Tagged Item','taggit','taggeditem'),(13,'comment','comments','comment'),(14,'comment flag','comments','commentflag'),(15,'question','blog','question'),(16,'answer choice','blog','answerchoice'),(17,'question','mysurvey','question'),(18,'answer choice','mysurvey','answerchoice'),(19,'answer','blog','answer'),(20,'play member profile','play','playmemberprofile'),(21,'img','blog','img'),(22,'survey instance','blog','surveyinstance'),(23,'rubric','blog','rubric');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0d28d8cfa2dd38ef3ef6202eec7d722f','MmIxNGMwZmUxN2Q0YjdhN2FjOTA3YThmZjlkNTE5ZmVhNjc5NWRhNDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-08-28 12:40:56'),('2a092ec14ae281388983e4501dd9479b','MmIxNGMwZmUxN2Q0YjdhN2FjOTA3YThmZjlkNTE5ZmVhNjc5NWRhNDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-06-12 12:29:32'),('45fa69d130417784953c30d2cf6d1d64','MmIxNGMwZmUxN2Q0YjdhN2FjOTA3YThmZjlkNTE5ZmVhNjc5NWRhNDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-08-26 16:31:25'),('8c0a0195d98f0364635f4a81ada46e88','MmIxNGMwZmUxN2Q0YjdhN2FjOTA3YThmZjlkNTE5ZmVhNjc5NWRhNDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-04-11 12:03:27'),('9921c47cce38689d6daefc0d21db6c9b','MmIxNGMwZmUxN2Q0YjdhN2FjOTA3YThmZjlkNTE5ZmVhNjc5NWRhNDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-09-23 00:40:25'),('d830518cce2d690fea57000c1314a6b0','MmIxNGMwZmUxN2Q0YjdhN2FjOTA3YThmZjlkNTE5ZmVhNjc5NWRhNDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-04-11 18:07:24');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_playmemberprofile`
--

DROP TABLE IF EXISTS `play_playmemberprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_playmemberprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_where` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_4539f72a` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_playmemberprofile`
--

LOCK TABLES `play_playmemberprofile` WRITE;
/*!40000 ALTER TABLE `play_playmemberprofile` DISABLE KEYS */;
INSERT INTO `play_playmemberprofile` VALUES (1,1,'San Francisco','Social'),(2,2,'Los Angeles','Body'),(3,3,'Sacremento','Sponsors'),(4,4,'Seoul, Korea','Social'),(5,5,'San Francisco','Body'),(6,6,'Berkeley','Build'),(7,7,'Berkeley','Build'),(8,8,'Vietnam','Build'),(9,9,'New York','Body'),(10,10,'Pacifica, CA','Archive'),(11,11,'Seoul, Korea','Archive'),(12,12,'Vermont','Sponsors'),(13,13,'Berkeley','Body'),(14,14,'Berkeley','Body'),(15,15,'Berkeley','Body'),(16,16,'Berkeley','Social'),(17,17,'Turkey','Build'),(18,18,'Panama','Body'),(19,19,'Stockton, CA','All'),(20,20,'China','Archive'),(21,21,'Athens, Greece','Archive'),(22,22,'Indiana','Inspiration'),(23,23,'Los Angeles','Build');
/*!40000 ALTER TABLE `play_playmemberprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'blog','0001_initial','2011-08-12 23:28:48'),(2,'blog','0002_auto__chg_field_entry_create_date','2011-08-12 23:36:51'),(3,'blog','0003_auto__add_field_entry_blurb__chg_field_entry_create_date','2011-08-15 20:56:57'),(4,'blog','0004_auto__add_answerchoice__add_question','2011-12-16 20:37:33'),(5,'blog','0005_auto__add_field_answerchoice_blurb','2011-12-16 20:38:20'),(6,'blog','0006_auto__del_answerchoice__del_question','2011-12-16 20:54:33'),(7,'mysurvey','0001_initial','2011-12-16 20:55:34'),(8,'blog','0007_auto__add_answerchoice__add_question','2011-12-16 22:20:24'),(9,'blog','0008_auto__add_answer','2011-12-16 22:35:28'),(10,'blog','0009_auto__del_field_answer_question','2011-12-16 23:11:05'),(11,'blog','0010_auto__add_field_answer_question','2011-12-16 23:17:55'),(12,'blog','0011_auto__add_field_question_label','2012-05-29 20:20:17'),(13,'blog','0012_auto__add_field_answerchoice_has_img','2012-05-29 20:20:18'),(14,'blog','0013_auto__add_field_answerchoice_spanish__add_field_question_spansih','2012-05-29 20:20:19'),(15,'blog','0014_auto__add_field_answer_score__add_field_question_is_rating','2012-05-29 20:20:20'),(16,'blog','0015_auto__del_field_answer_score__add_field_answer_rank__del_field_questio','2012-05-29 20:20:23'),(17,'blog','0016_auto__add_field_answerchoice_score','2012-05-29 20:20:24'),(18,'blog','0017_auto__add_field_answerchoice_allow_note__add_field_answer_note','2012-05-29 20:20:25'),(19,'blog','0018_auto__add_field_question_has_img','2012-05-29 20:20:25'),(20,'blog','0019_auto__add_surveyinstance__add_field_answer_survey_instance','2012-05-29 20:20:26'),(21,'blog','0020_auto__add_img','2012-05-29 20:20:28'),(22,'blog','0021_auto__add_rubric','2013-09-09 07:30:20');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
INSERT INTO `taggit_tag` VALUES (1,'architecture','architecture'),(2,'food','food');
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taggit_taggeditem_3747b463` (`tag_id`),
  KEY `taggit_taggeditem_7d61c803` (`object_id`),
  KEY `taggit_taggeditem_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_5a2b7711` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `tag_id_refs_id_3781c07b` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
INSERT INTO `taggit_taggeditem` VALUES (1,1,1,10),(2,1,4,10),(3,2,2,10),(4,1,3,10);
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'petesuen'
--

--
-- Dumping routines for database 'petesuen'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-24 10:47:15
CREATE DATABASE  IF NOT EXISTS `fiftharch` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `fiftharch`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: fiftharch
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add project',7,'add_project'),(20,'Can change project',7,'change_project'),(21,'Can delete project',7,'delete_project'),(22,'Can add class',8,'add_class'),(23,'Can change class',8,'change_class'),(24,'Can delete class',8,'delete_class'),(25,'Can add image',9,'add_image'),(26,'Can change image',9,'change_image'),(27,'Can delete image',9,'delete_image');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$8p7JikoWePrC$Z1IXPHd8AoN3S/tbuubVqPpURTptHkqyjoWOA/hVewQ=','2016-03-19 21:57:38.021000',1,'admin','','','admin@fiftharch.com',1,1,'2016-01-28 05:46:08.267000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_class`
--

DROP TABLE IF EXISTS `blog_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `desc` longtext NOT NULL,
  `blurb` varchar(200) NOT NULL,
  `school` varchar(200) NOT NULL,
  `semester` varchar(200) NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_class`
--

LOCK TABLES `blog_class` WRITE;
/*!40000 ALTER TABLE `blog_class` DISABLE KEYS */;
INSERT INTO `blog_class` VALUES (1,'Generated Morphology: Circulation','In this seminar, students studied how simulation could be used to drive morphology. Starting with a general circulation rule, a digital simulation was created to explore unexpected patterns. The simulation data was then brought into a parametric design environment and used to modulate prescribed shell surfaces. The digital designs were then explored in analog through physical fabrication exercises.','Digital Simulation / Analog Artifacts','AAU','Fall 2015','2016-01-30 02:05:28.000000');
/*!40000 ALTER TABLE `blog_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_image`
--

DROP TABLE IF EXISTS `blog_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) NOT NULL,
  `caption` longtext NOT NULL,
  `my_class_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `is_index_img` tinyint(1) NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_image_project_id_34e79071_fk_blog_project_id` (`project_id`),
  KEY `blog_image_my_class_id_3d8334a7_fk_blog_class_id` (`my_class_id`),
  CONSTRAINT `blog_image_my_class_id_3d8334a7_fk_blog_class_id` FOREIGN KEY (`my_class_id`) REFERENCES `blog_class` (`id`),
  CONSTRAINT `blog_image_project_id_34e79071_fk_blog_project_id` FOREIGN KEY (`project_id`) REFERENCES `blog_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_image`
--

LOCK TABLES `blog_image` WRITE;
/*!40000 ALTER TABLE `blog_image` DISABLE KEYS */;
INSERT INTO `blog_image` VALUES (1,'blog/assets/projects/1/p1_1.jpg','\"Work\" configuration',NULL,1,0,'2016-01-30 05:57:09.653000'),(2,'blog/assets/projects/1/p1_2.jpg','\"Sleep\" configuration',NULL,1,0,'2016-01-30 05:57:09.653000'),(3,'blog/assets/projects/1/p1_3.jpg','\"Storage\" configuration',NULL,1,0,'2016-01-30 05:57:09.653000'),(4,'blog/assets/projects/4/p4_2.jpg','Identifying patterns in urban bicycling patterns',NULL,4,0,'2016-01-30 05:57:09.653000'),(5,'blog/assets/projects/4/p4_3.jpg','Network a series of sensors to dynamically adjust bike lanes',NULL,4,0,'2016-01-30 05:57:09.000000'),(6,'blog/assets/projects/4/p4_1.jpg','Bicycling Urban Plan',NULL,4,1,'2012-05-02 05:03:35.000000'),(7,'blog/assets/projects/1/p1_4.jpg','New Montgomery',NULL,1,1,'2015-10-24 05:36:30.000000'),(8,'blog/assets/projects/2/p2_1.jpg','Water Clusters',NULL,2,1,'2013-05-01 06:07:22.000000'),(9,'blog/assets/projects/2/p2_2.jpg','Silicone unit cast with embedded water',NULL,2,0,'2013-05-01 06:20:29.000000'),(10,'blog/assets/projects/3/p3_1.jpg','Bio-Computation',NULL,3,1,'2013-05-31 06:38:21.000000'),(11,'blog/assets/projects/3/p3_2.jpg','Cast agar into physical topography with subsequent mold growth',NULL,3,0,'2013-05-31 06:47:26.000000'),(12,'blog/assets/classes/1/c1_1.jpg','Generated Morphology: Circulation',1,NULL,1,'2015-09-02 06:59:24.000000'),(13,'blog/assets/classes/1/c1_2.jpg','Casting minimal surfaces (student work)',1,NULL,0,'2015-09-01 07:02:38.000000'),(14,'blog/assets/classes/1/c1_3.jpg','Reverse vacuum-forming minimal surfaces (student work)',1,NULL,0,'2015-09-01 07:03:17.000000'),(15,'blog/assets/projects/5/p5_1.jpg','Cloudsource Tower',NULL,5,1,'2014-09-02 04:05:28.000000'),(16,'blog/assets/projects/5/p5_2.jpg','eVolo 2014 Competition Panel 1/2',NULL,5,0,'2014-09-02 04:09:14.000000'),(17,'blog/assets/projects/5/p5_3.jpg','eVolo 2014 Competition Panel 2/2',NULL,5,0,'2014-09-02 04:10:41.000000'),(18,'blog/assets/projects/1/p1_5.jpg','Unfolded elevation study',NULL,1,0,'2015-10-22 23:23:20.000000'),(19,'blog/assets/projects/3/p3_3.jpg','Calibration of mold growth via matrix of resource gradient',NULL,3,0,'2016-02-06 01:28:06.000000'),(20,'blog/assets/projects/2/p2_3.jpg','Testing of pneumatic motion of individual units',NULL,2,0,'2016-02-06 03:57:26.000000'),(21,'blog/assets/projects/2/p2_4.jpg','Unit plans and elevations',NULL,2,0,'2016-02-06 04:00:30.000000'),(22,'blog/assets/projects/2/p2_5.jpg','Cluster aggregation rendering',NULL,2,0,'2016-02-06 04:02:37.000000'),(23,'blog/assets/classes/1/c1_4.jpg','Student simulations and generated shell morphology',1,NULL,0,'2016-02-06 04:14:21.000000'),(24,'blog/assets/projects/1/p1_6.jpg','\"Eating\" configuration',NULL,1,0,'2016-02-06 04:28:01.000000'),(25,'blog/assets/projects/1/p1_7.jpg','Pre-fabrication',NULL,1,0,'2016-02-06 04:30:47.000000'),(26,'blog/assets/projects/1/p1_8.jpg','Custom steel fabrication',NULL,1,0,'2016-02-06 04:30:56.000000'),(27,'blog/assets/projects/6/p6_1.jpg','Alabama St. Renovation',NULL,6,1,'2016-03-19 22:24:49.000000'),(28,'blog/assets/projects/6/p6_2.jpg','Section perspective of renovation connection',NULL,6,0,'2016-03-19 22:33:21.000000'),(29,'blog/assets/projects/6/p6_3.jpg','Open studio space',NULL,6,0,'2016-03-19 22:38:40.000000'),(30,'blog/assets/projects/6/p6_4.jpg','Wood wrapped sleeping area',NULL,6,0,'2016-03-24 19:44:30.000000'),(31,'blog/assets/projects/6/p6_5.jpg','Bathroom',NULL,6,0,'2016-03-24 20:35:09.000000'),(32,'blog/assets/projects/6/p6_6.jpg','Vestige of prior construction reincorporated',NULL,6,0,'2016-03-24 20:35:24.000000');
/*!40000 ALTER TABLE `blog_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_project`
--

DROP TABLE IF EXISTS `blog_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `desc` longtext NOT NULL,
  `blurb` varchar(200) NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_project`
--

LOCK TABLES `blog_project` WRITE;
/*!40000 ALTER TABLE `blog_project` DISABLE KEYS */;
INSERT INTO `blog_project` VALUES (1,'New Montgomery','<div>\r\nIn the heart of urban San Francisco, a multi-functional loft transforms a small condo into a dynamic space. Custom designed and pre-fabricated, this project combines a guest bed, dinning room, full-size closet, spacious bedroom and dynamic work area into one compact loft. All of the pre-cast concrete panels, wood slats, metal work and custom cabinetry were pre-fabricated in Oakland, CA and re-assembled on-site in San Francisco.\r\n</div>\r\n<br/>\r\n\r\n<div>\r\n<b>Project Credits</b><br/>\r\nDesign: Peter Suen & <a href=\"http://www.icosadesign.com\" class=\"link\" target=\"_blank\">Icosa Designs</a><br/>\r\nFabrication: DEKA Fabrication<br/>\r\nCustom Steel Fabrication: <a href=\"http://www.bcdesignco.net/\" class=\"link\" target=\"_blank\">BC Design Co</a><br/>\r\n</div><br/>','Small Living / Big Spaces','2015-10-24 01:05:29.000000'),(2,'Water Clusters','Casting is a fundamental fabrication technique with a broad spectrum of use. One negative aspect, however, is material waste from the required formwork. What if a water could be used as the formwork in a continuous, recycled manner? \"Water Clusters\" explores this material concept using ice as an infill in a casting process. Specifically, a block of ice is cast within a silicone mold. The ice melts as the silicone cures, and when the process is complete, the water is seamlessly embedded within a silicone membrane.','Elastomeric Casting with Ice Molds','2013-05-01 01:05:29.000000'),(3,'Bio-Computation','<div>\r\nThere are many natural systems that exhibit computational capacity. One of these systems is slime mold, which has evolved to become highly adaptable to changing environmental conditions. To control this living computer, instructions are coded into food gradients. Using this translation,  mold can be used as an analog computer to design in an adaptable and scalable manner.\r\n</div>\r\n<br/>','Harnessing the Power of Analog Computation','2013-05-31 01:05:29.000000'),(4,'Bicycling Urban Plan','<div>\r\nAs populations increase, cities will need to embrace new public and private forms of transportation. Currently, bicycle culture is becoming ubiquitous in many cities throughout the world. Copenhagen, Amsterdam, Portland and San Francisco are few of them. However, the general marginalization of the bicycle to the automobile has not allowed it to become a more essential form of transportation in urban areas. Embracing bicycle transportation as a safe and carbon-neutral option, we propose the implementation of dynamic bike lanes, which pop-up according to GPS tracking of bicycle users through a mobile \"Cycle Tracks\" app.\r\n</div>\r\n<br/>\r\n<div>\r\nA deep understanding of existing bike patterns is required to develop this dynamic bicycling system. To this end, bicycling data was captured via a mobile app and then visualized to identify urban patterns.\r\n<br/><br/>\r\n<iframe src=\"http://player.vimeo.com/video/66487969?byline=0&amp;portrait=0&amp;color=ff9933\" width=\"700\" height=\"406\" frameborder=\"0\" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></div>\r\n<br/>\r\n\r\n<div>\r\n<b>Project Credits</b><br/>\r\nPeter Suen<br/>\r\nAaron Levine<br/>\r\n</div><br/>','Visualizing Urban Biking Patterns','2012-05-02 01:05:29.000000'),(5,'Cloudsource Tower','<div>\r\nOur society thirsts for data, energy and space. These three driving forces are currently organized in a horizontal and centralized manner. Our buildings are connected over vast networks to power plants. Our digital devices are connected to vast server farms. We invert this existing condition to vertically integrate data and energy with building structure. In this scheme, servers fly above using kites which efficiently harvest renewable energy in high altitude. Tethered by fiber, these strands weave together below to create a flexible structural envelope. This literal cloud of data and power creates an efficient and resilient new cloud-based building typology.\r\n</div>\r\n<br/>\r\n\r\n<div>\r\n<b>Project Credits</b><br/>\r\nMisun Lee<br/>\r\nJongsun Lee<br/>\r\nPeter Suen<br/>\r\n</div><br/>\r\n\r\n<div>\r\n<b>Honors</b><br/>\r\nSelected for publication in \"eVolo Skyscrapers 3: 150 New Projects Redefine Building High\"</br>\r\n</div>','Meeting Data, Energy & Spatial Needs Through the Cloud','2014-09-02 04:05:03.000000'),(6,'Alabama St. Renovation','Set within a dense, urban neighborhood, this project views the renovation as a bridge that serves to better connect the traditional front of the home with the rear yard.\r\n<br/><br/>\r\nPROJECT UNDER CONSTRUCTION','Alabama St. Renovation','2016-03-19 21:57:42.000000');
/*!40000 ALTER TABLE `blog_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-01-28 06:16:20.632000','1','Project object',1,'Added.',7,1),(2,'2016-01-28 06:18:09.170000','1','Project object',2,'Changed blurb.',7,1),(3,'2016-01-28 07:08:42.278000','1','Class object',1,'Added.',8,1),(4,'2016-01-28 07:12:18.759000','1','Project object',2,'Changed desc.',7,1),(5,'2016-01-28 07:14:41.899000','2','Project object',1,'Added.',7,1),(6,'2016-01-28 07:16:06.846000','3','Project object',1,'Added.',7,1),(7,'2016-01-28 07:16:46.834000','4','Project object',1,'Added.',7,1),(8,'2016-01-28 07:26:34.641000','2','Project object',2,'Changed name and blurb.',7,1),(9,'2016-01-28 07:26:45.631000','4','Project object',2,'Changed blurb.',7,1),(10,'2016-01-28 07:26:51.522000','2','Project object',2,'No fields changed.',7,1),(11,'2016-01-28 07:27:20.972000','3','Project object',2,'Changed blurb.',7,1),(12,'2016-01-28 07:27:30.768000','1','Project object',2,'No fields changed.',7,1),(13,'2016-01-28 08:52:00.514000','1','Project object',2,'Changed desc.',7,1),(14,'2016-01-28 08:53:42.496000','1','Project object',2,'Changed desc.',7,1),(15,'2016-01-28 08:55:41.625000','1','Project object',2,'Changed desc.',7,1),(16,'2016-01-28 08:57:34.613000','1','Project object',2,'Changed desc.',7,1),(17,'2016-01-29 01:11:05.431000','1','projects/1/p1_1.jpg',1,'Added.',9,1),(18,'2016-01-29 01:12:45.381000','1','projects/1/p1_1.jpg',2,'Changed caption.',9,1),(19,'2016-01-29 01:13:07.830000','1','projects/1/p1_1.jpg',2,'Changed caption.',9,1),(20,'2016-01-29 01:44:59.684000','1','blog/assets/projects/1/p1_1.jpg',2,'Changed filename.',9,1),(21,'2016-01-29 06:48:45.067000','1','blog/assets/projects/1/p1_1.jpg',2,'Changed caption.',9,1),(22,'2016-01-29 06:51:07.561000','2','blog/assets/projects/1/p1_2.jpg',1,'Added.',9,1),(23,'2016-01-29 07:25:07.188000','3','blog/assets/projects/1/p1_3.jpg',1,'Added.',9,1),(24,'2016-01-29 07:26:31.415000','1','blog/assets/projects/1/p1_2.jpg',2,'Changed filename.',9,1),(25,'2016-01-29 07:26:52.108000','1','blog/assets/projects/1/p1_1.jpg',2,'Changed filename.',9,1),(26,'2016-01-29 07:28:12.250000','1','blog/assets/projects/1/p1_2.jpg',2,'Changed filename.',9,1),(27,'2016-01-29 07:53:02.013000','1','blog/assets/projects/1/p1_1.jpg',2,'Changed filename.',9,1),(28,'2016-01-30 02:14:04.962000','4','Bicycling Urban Plan',2,'Changed desc and date.',7,1),(29,'2016-01-30 02:14:25.415000','4','Bicycling Urban Plan',2,'Changed desc.',7,1),(30,'2016-01-30 02:14:41.915000','4','Bicycling Urban Plan',2,'Changed desc.',7,1),(31,'2016-01-30 02:26:29.065000','4','blog/assets/projects/4/p4_2.jpg',1,'Added.',9,1),(32,'2016-01-30 02:27:09.583000','4','blog/assets/projects/4/p4_2.jpg',2,'No fields changed.',9,1),(33,'2016-01-30 02:34:57.549000','5','blog/assets/projects/4/p4_3.jpg',1,'Added.',9,1),(34,'2016-01-30 02:42:59.261000','4','Bicycling Urban Plan',2,'Changed desc.',7,1),(35,'2016-01-30 02:43:54.907000','4','Bicycling Urban Plan',2,'Changed desc.',7,1),(36,'2016-01-30 02:44:17.036000','4','Bicycling Urban Plan',2,'Changed desc.',7,1),(37,'2016-01-30 06:03:30.324000','5','blog/assets/projects/4/p4_3.jpg',2,'No fields changed.',9,1),(38,'2016-01-30 06:03:35.467000','5','blog/assets/projects/4/p4_3.jpg',2,'No fields changed.',9,1),(39,'2016-01-30 06:04:20.378000','6','blog/assets/projects/4/p4_1.jpg',1,'Added.',9,1),(40,'2016-01-30 06:37:59.872000','7','/blog/assets/projects/1/p1_4.jpg',1,'Added.',9,1),(41,'2016-01-30 06:38:40.027000','7','blog/assets/projects/1/p1_4.jpg',2,'Changed filename.',9,1),(42,'2016-01-30 06:40:08.158000','1','New Montgomery',2,'Changed date.',7,1),(43,'2016-01-30 07:01:22.659000','6','blog/assets/projects/4/p4_1.jpg',2,'Changed caption.',9,1),(44,'2016-01-30 07:08:18.502000','8','blog/assets/projects/2/p2_1.jpg',1,'Added.',9,1),(45,'2016-01-30 07:08:30.367000','2','Water Clusters',2,'Changed date.',7,1),(46,'2016-01-30 07:09:00.548000','8','blog/assets/projects/2/p2_1.jpg',2,'Changed is_index_img.',9,1),(47,'2016-01-30 07:21:43.892000','9','blog/assets/projects/1/p2_2.jpg',1,'Added.',9,1),(48,'2016-01-30 07:22:00.964000','9','blog/assets/projects/2/p2_2.jpg',2,'Changed filename.',9,1),(49,'2016-01-30 07:23:49.469000','9','blog/assets/projects/2/p2_2.jpg',2,'Changed caption.',9,1),(50,'2016-01-30 07:32:11.219000','2','Water Clusters',2,'Changed desc.',7,1),(51,'2016-01-30 07:33:33.794000','9','blog/assets/projects/2/p2_2.jpg',2,'Changed caption.',9,1),(52,'2016-01-30 07:38:53.779000','10','blog/assets/projects/3/p3_1.jpg',1,'Added.',9,1),(53,'2016-01-30 07:39:13.419000','3','Bio-Computation',2,'Changed date.',7,1),(54,'2016-01-30 07:48:37.777000','11','projects/3/p3_2.jpg',1,'Added.',9,1),(55,'2016-01-30 07:48:57.855000','11','blog/assets/projects/3/p3_2.jpg',2,'Changed filename.',9,1),(56,'2016-01-30 07:54:59.602000','3','Bio-Computation',2,'Changed desc.',7,1),(57,'2016-01-30 07:55:18.867000','3','Bio-Computation',2,'Changed desc.',7,1),(58,'2016-01-30 08:00:01.828000','12','blog/assets/classes/1/c1_1.jpg',1,'Added.',9,1),(59,'2016-01-30 08:03:16.993000','13','blog/assets/classes/1/c1_2.jpg',1,'Added.',9,1),(60,'2016-01-30 08:04:01.823000','14','blog/assets/classes/1/c1_3.jpg',1,'Added.',9,1),(61,'2016-01-30 08:04:43.375000','14','blog/assets/classes/1/c1_3.jpg',2,'Changed caption.',9,1),(62,'2016-01-30 08:04:50.676000','13','blog/assets/classes/1/c1_2.jpg',2,'Changed caption.',9,1),(63,'2016-01-30 08:08:54.392000','1','Generated Morphology: Circulation',2,'Changed desc.',8,1),(64,'2016-02-05 05:05:21.992000','5','Cloudsource Tower',1,'Added.',7,1),(65,'2016-02-05 05:05:54.421000','15','blog/assets/projects/5/p1_1.jpg',1,'Added.',9,1),(66,'2016-02-05 05:06:58.246000','15','blog/assets/projects/5/p5_1.jpg',2,'Changed filename.',9,1),(67,'2016-02-05 05:10:39.722000','16','blog/assets/projects/5/p5_2.jpg',1,'Added.',9,1),(68,'2016-02-05 05:11:02.403000','17','blog/assets/projects/5/p5_3.jpg',1,'Added.',9,1),(69,'2016-02-05 05:28:05.726000','5','Cloudsource Tower',2,'Changed desc.',7,1),(70,'2016-02-05 06:01:12.793000','5','Cloudsource Tower',2,'Changed blurb.',7,1),(71,'2016-02-06 00:23:44.675000','18','blog/assets/projects/1/p1_5.jpg',1,'Added.',9,1),(72,'2016-02-06 00:27:21.319000','18','blog/assets/projects/1/p1_5.jpg',2,'No fields changed.',9,1),(73,'2016-02-06 00:27:43.825000','18','blog/assets/projects/1/p1_5.jpg',2,'Changed date.',9,1),(74,'2016-02-06 00:41:04.978000','1','New Montgomery',2,'Changed desc.',7,1),(75,'2016-02-06 01:28:57.555000','19','blog/assets/projects/3/p3_3.jpg',1,'Added.',9,1),(76,'2016-02-06 01:29:37.504000','3','Bio-Computation',2,'Changed desc.',7,1),(77,'2016-02-06 03:59:03.264000','20','blog/assets/projects/3/p3_4.jpg',1,'Added.',9,1),(78,'2016-02-06 04:01:05.743000','21','blog/assets/projects/3/p3_5.jpg',1,'Added.',9,1),(79,'2016-02-06 04:01:41.267000','21','blog/assets/projects/3/p3_5.jpg',2,'Changed caption.',9,1),(80,'2016-02-06 04:02:55.412000','22','blog/assets/projects/3/p3_6.jpg',1,'Added.',9,1),(81,'2016-02-06 04:04:58.951000','20','blog/assets/projects/2/p2_3.jpg',2,'Changed filename.',9,1),(82,'2016-02-06 04:05:05.966000','21','blog/assets/projects/2/p2_4.jpg',2,'Changed filename.',9,1),(83,'2016-02-06 04:05:14.320000','22','blog/assets/projects/2/p2_5.jpg',2,'Changed filename.',9,1),(84,'2016-02-06 04:10:37.850000','4','Bicycling Urban Plan',2,'Changed desc.',7,1),(85,'2016-02-06 04:15:00.926000','23','blog/assets/classes/1/c1_4.jpg',1,'Added.',9,1),(86,'2016-02-06 04:28:01.521000','23','blog/assets/classes/1/c1_4.jpg',2,'No fields changed.',9,1),(87,'2016-02-06 04:28:21.775000','24','blog/assets/projects/1/p1_6.jpg',1,'Added.',9,1),(88,'2016-02-06 04:30:56.370000','25','blog/assets/projects/1/p1_7.jpg',1,'Added.',9,1),(89,'2016-02-06 04:31:19.027000','26','blog/assets/projects/1/p1_8.jpg',1,'Added.',9,1),(90,'2016-03-19 21:57:52.609000','6','Alabama St. Renovation',1,'Added.',7,1),(91,'2016-03-19 22:25:14.047000','27','blog/assets/projects/6/p6_1.jpg',1,'Added.',9,1),(92,'2016-03-19 22:27:29.198000','6','Alabama St. Renovation',2,'Changed blurb.',7,1),(93,'2016-03-19 22:28:25.536000','6','Alabama St. Renovation',2,'Changed blurb.',7,1),(94,'2016-03-19 22:28:40.751000','27','blog/assets/projects/6/p6_1.jpg',2,'Changed caption.',9,1),(95,'2016-03-19 22:33:50.057000','28','blog/assets/projects/6/p6_2.jpg',1,'Added.',9,1),(96,'2016-03-19 22:36:06.888000','6','Alabama St. Renovation',2,'Changed desc.',7,1),(97,'2016-03-19 22:37:54.218000','6','Alabama St. Renovation',2,'Changed desc.',7,1),(98,'2016-03-19 22:40:07.227000','29','blog/assets/projects/6/p6_3.jpg',1,'Added.',9,1),(99,'2016-03-19 22:41:41.911000','29','blog/assets/projects/6/p6_3.jpg',2,'Changed caption.',9,1),(100,'2016-03-20 03:12:14.245000','1','New Montgomery',2,'Changed desc.',7,1),(101,'2016-03-24 19:44:30.770000','29','blog/assets/projects/6/p6_3.jpg',2,'Changed caption.',9,1),(102,'2016-03-24 19:44:48.452000','30','blog/assets/projects/6/p6_4.jpg',1,'Added.',9,1),(103,'2016-03-24 20:05:06.007000','30','blog/assets/projects/6/p6_4.jpg',2,'Changed caption.',9,1),(104,'2016-03-24 20:35:24.508000','31','blog/assets/projects/6/p6_5.jpg',1,'Added.',9,1),(105,'2016-03-24 20:35:41.187000','32','blog/assets/projects/6/p6_6.jpg',1,'Added.',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'blog','class'),(9,'blog','image'),(7,'blog','project'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-01-28 05:32:29.947000'),(2,'auth','0001_initial','2016-01-28 05:32:32.902000'),(3,'admin','0001_initial','2016-01-28 05:32:33.579000'),(4,'admin','0002_logentry_remove_auto_add','2016-01-28 05:32:33.662000'),(5,'contenttypes','0002_remove_content_type_name','2016-01-28 05:32:34.488000'),(6,'auth','0002_alter_permission_name_max_length','2016-01-28 05:32:34.625000'),(7,'auth','0003_alter_user_email_max_length','2016-01-28 05:32:34.835000'),(8,'auth','0004_alter_user_username_opts','2016-01-28 05:32:34.854000'),(9,'auth','0005_alter_user_last_login_null','2016-01-28 05:32:35.092000'),(10,'auth','0006_require_contenttypes_0002','2016-01-28 05:32:35.097000'),(11,'auth','0007_alter_validators_add_error_messages','2016-01-28 05:32:35.115000'),(12,'sessions','0001_initial','2016-01-28 05:32:35.296000'),(13,'blog','0001_initial','2016-01-28 05:42:37.481000'),(14,'blog','0002_project_blurb','2016-01-28 06:17:47.651000'),(15,'blog','0003_class','2016-01-28 07:06:09.552000'),(16,'blog','0004_image','2016-01-29 01:05:41.305000'),(17,'blog','0005_auto_20160128_1710','2016-01-29 01:11:02.960000'),(18,'blog','0006_auto_20160128_1712','2016-01-29 01:12:38.916000'),(19,'blog','0007_auto_20160129_1805','2016-01-30 02:05:29.362000'),(20,'blog','0008_image_is_index_img','2016-01-30 05:54:35.927000'),(21,'blog','0009_image_date','2016-01-30 05:57:09.855000'),(22,'blog','0010_auto_20160129_2230','2016-01-30 06:30:37.887000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('21cig13xipyvzjgsomr2y8t0yxcc0muc','MjlkOTE0Nzg3YmJmNGFjM2UzNmRiODQ0OTNjYzI0NGNjZGMzOGYxYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0Njk4NjMyNmFmNDhlMGJlYTJlMWQ5ZDZjYzljNzg4ZTUwZTgyYmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-04-02 21:57:38.044000'),('2o2sivpo2djx054zcb6g38wp6dlscnlr','MjlkOTE0Nzg3YmJmNGFjM2UzNmRiODQ0OTNjYzI0NGNjZGMzOGYxYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0Njk4NjMyNmFmNDhlMGJlYTJlMWQ5ZDZjYzljNzg4ZTUwZTgyYmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-02-11 06:11:40.726000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fiftharch'
--

--
-- Dumping routines for database 'fiftharch'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-24 10:47:16
