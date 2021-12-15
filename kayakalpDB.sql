-- MySQL dump 10.13  Distrib 5.7.14, for Linux (x86_64)
--
-- Host: localhost    Database: kayakalp
-- ------------------------------------------------------
-- Server version	5.7.14-1+deb.sury.org~trusty+0

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
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date_in` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 => Present, 2 => Absent, 3 => On Leave',
  `created_by` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` VALUES (1,1,'2016-12-30','10:07:04',1,1,NULL,'hjk','2016-12-30 04:37:47','2016-12-30 04:37:47',NULL),(8,1,'2017-01-04','13:05:31',1,1,NULL,'','2017-01-04 07:35:31','2017-01-04 07:35:31',NULL),(9,1,'2017-01-05','09:37:09',1,12,NULL,'','2017-01-05 00:40:28','2017-01-05 04:07:09',NULL),(10,3,'2017-01-05','07:03:22',1,12,NULL,'','2017-01-05 01:33:22','2017-01-05 01:33:22',NULL),(11,4,'2017-01-05','07:03:22',1,12,NULL,'','2017-01-05 01:33:22','2017-01-05 01:33:22',NULL),(12,5,'2017-01-05','07:03:23',1,12,NULL,'','2017-01-05 01:33:23','2017-01-05 01:33:23',NULL),(13,12,'2017-01-05','09:30:48',3,12,NULL,'','2017-01-05 03:40:25','2017-01-05 04:00:48',NULL),(14,2,'2017-01-05','09:14:01',1,12,NULL,'','2017-01-05 03:44:01','2017-01-05 03:44:01',NULL),(15,7,'2017-01-05','09:14:51',1,12,NULL,'Onleave','2017-01-05 03:44:51','2017-01-05 03:44:51',NULL),(16,6,'2017-01-05','09:15:26',1,12,NULL,'','2017-01-05 03:45:26','2017-01-05 03:45:26',NULL),(17,8,'2017-01-05','09:41:43',2,12,NULL,'','2017-01-05 03:48:47','2017-01-05 04:11:43',NULL),(18,9,'2017-01-05','09:39:16',3,12,NULL,'','2017-01-05 04:09:16','2017-01-05 04:09:16',NULL),(19,10,'2017-01-05','09:40:39',1,12,NULL,'','2017-01-05 04:10:28','2017-01-05 04:10:39',NULL),(20,1,'2017-01-14','00:00:00',3,0,NULL,NULL,'2017-01-14 07:28:48','2017-01-14 07:28:48',NULL),(21,1,'2017-01-17','00:00:00',3,0,NULL,NULL,'2017-01-15 23:35:12','2017-01-15 23:35:12',NULL),(22,2,'2017-01-16','00:00:00',3,1,NULL,'hello1','2017-01-15 23:38:28','2017-01-16 00:26:58',NULL),(23,3,'2017-01-17','00:00:00',3,0,NULL,NULL,'2017-01-15 23:50:22','2017-01-15 23:50:22',NULL),(24,8,'2017-01-16','00:00:00',1,1,NULL,NULL,'2017-01-15 23:57:24','2017-01-16 00:04:12',NULL),(25,1,'2017-01-16','09:55:00',1,1,NULL,'undefined','2017-01-16 00:42:04','2017-01-16 04:43:21','00:50:00'),(26,3,'2017-01-16','08:52:22',2,1,NULL,'','2017-01-16 03:22:22','2017-01-16 03:22:22','00:00:00'),(27,1,'2017-01-01','09:18:10',1,1,NULL,'','2017-01-16 03:48:10','2017-01-16 04:01:43','02:20:00'),(28,1,'2015-07-15','09:33:43',3,1,NULL,'','2017-01-16 04:03:43','2017-01-16 04:03:43','00:00:00'),(29,1,'2015-07-15','09:33:43',3,1,NULL,'','2017-01-16 04:03:43','2017-01-16 04:03:43','00:00:00');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beds`
--

DROP TABLE IF EXISTS `beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `room_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 => Normal, 2 => Extra',
  `occupancy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
/*!40000 ALTER TABLE `beds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_role`
--

DROP TABLE IF EXISTS `blog_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_role`
--

LOCK TABLES `blog_role` WRITE;
/*!40000 ALTER TABLE `blog_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `views_location` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building_floors`
--

DROP TABLE IF EXISTS `building_floors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building_floors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `building_id` int(11) NOT NULL,
  `floor_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_floors`
--

LOCK TABLES `building_floors` WRITE;
/*!40000 ALTER TABLE `building_floors` DISABLE KEYS */;
/*!40000 ALTER TABLE `building_floors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buildings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_of_floors` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 => Disable, 1 => Enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES (1,'B3',3,1,NULL,'2017-01-22 23:00:34'),(2,'B1',1,1,NULL,NULL),(4,'B1',1,1,NULL,NULL),(5,'B1',1,1,NULL,NULL),(6,'B1',1,1,NULL,NULL),(7,'B1',1,1,NULL,NULL),(8,'B1',1,1,NULL,NULL),(9,'B1',1,1,NULL,NULL),(10,'B1',1,1,NULL,NULL),(11,'B1',1,1,NULL,NULL),(12,'B1',1,1,NULL,NULL),(13,'B1',1,1,NULL,NULL),(14,'B1',1,1,NULL,NULL),(15,'B1',1,1,NULL,NULL),(16,'B1',1,1,NULL,NULL),(18,'B1',1,1,NULL,NULL),(22,'test',4,1,NULL,NULL),(23,'B4',5,1,NULL,'2017-01-20 08:05:11'),(24,'b4',5,1,NULL,NULL);
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direct_download` tinyint(1) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `authorization_required` tinyint(1) NOT NULL,
  `download_timer` int(11) NOT NULL,
  `downloads` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documents_name_unique` (`name`),
  UNIQUE KEY `documents_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floors`
--

DROP TABLE IF EXISTS `floors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floors`
--

LOCK TABLES `floors` WRITE;
/*!40000 ALTER TABLE `floors` DISABLE KEYS */;
/*!40000 ALTER TABLE `floors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_replies`
--

DROP TABLE IF EXISTS `issue_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `issue_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_replies`
--

LOCK TABLES `issue_replies` WRITE;
/*!40000 ALTER TABLE `issue_replies` DISABLE KEYS */;
INSERT INTO `issue_replies` VALUES (1,2,'hello','',1,'2017-01-10 05:59:48','2017-01-10 05:59:48'),(2,2,'nice','',1,'2017-01-10 05:59:59','2017-01-10 05:59:59'),(3,3,'nice','',12,'2017-01-10 06:04:57','2017-01-10 06:04:57'),(4,3,'ok','',1,'2017-01-10 06:06:03','2017-01-10 06:06:03'),(5,3,'hello','',1,'2017-01-10 06:45:16','2017-01-10 06:45:16');
/*!40000 ALTER TABLE `issue_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (2,'fgh','fhg',0,0,0,NULL,NULL,NULL),(3,'Report','Issue 1',0,0,12,'2017-01-05 01:28:44','2017-01-10 06:14:29',NULL),(4,'test','test desc',0,0,1,'2017-01-22 23:18:27','2017-01-22 23:18:27',NULL);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_02_10_150019_Create_Roles_Table',1),('2016_02_10_150205_Create_Role_User',1),('2016_02_10_150405_Create_Users_Settings',1),('2016_02_10_152932_Create_Permissions',1),('2016_02_10_153414_Create_Permission_Role',1),('2016_05_15_115823_Create_Blogs',1),('2016_05_15_115828_Create_Posts',1),('2016_05_15_122433_Create_Views',1),('2016_06_11_160205_create_settings',1),('2016_06_20_201138_create_blog_role',1),('2016_06_24_162123_create_post_comments',1),('2016_07_05_175919_create_documents',1),('2016_09_12_161028_create_social_table',1),('2016_12_21_051006_create_user_profiles_table',2),('2016_12_23_062942_add_columns_to_user_profile_table',3),('2016_12_23_065850_create_user_addresses_table',3),('2016_12_23_090133_create_user_health_issues_table',3),('2016_12_23_110722_create_buildings_table',3),('2016_12_23_110732_create_floors_table',3),('2016_12_23_110737_create_rooms_table',3),('2016_12_23_111331_create_beds_table',3),('2016_12_23_112308_create_building_floors_table',3),('2016_12_26_120544_create_Issues_table',3),('2016_12_27_040732_create_tokens_table',4),('2016_12_27_094715_changing_type_column_comments_on_buildings_table',5),('2016_12_28_063621_changing_column_comments_user_profile_table',5),('2016_12_28_120215_create_professions_table',5),('2016_12_29_064506_create_attendances_table',5),('2017_01_02_110211_add_health_issues_to_user_profiles_table',6),('2017_01_06_122119_add_comment_to_the_gender_in_user_profile_table',7),('2017_01_10_105843_create_issue_replies_table',7),('2017_01_12_100447_add_time_out_to_attendances_table',8),('2017_01_12_124447_add_state_to_user_addresses_table',8),('2017_01_23_064616_create_room_types_table',9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1,1,NULL,NULL),(2,2,1,NULL,NULL),(3,3,1,NULL,NULL),(4,4,1,NULL,NULL),(5,5,1,NULL,NULL),(6,6,1,NULL,NULL),(7,7,1,NULL,NULL),(8,8,1,NULL,NULL),(9,9,1,NULL,NULL),(10,10,1,NULL,NULL),(11,11,1,NULL,NULL),(12,12,1,NULL,NULL),(13,13,1,NULL,NULL),(14,14,1,NULL,NULL),(15,15,1,NULL,NULL),(16,16,1,NULL,NULL),(17,17,1,NULL,NULL),(18,18,1,NULL,NULL),(19,19,1,NULL,NULL),(20,20,1,NULL,NULL),(21,21,1,NULL,NULL),(22,22,1,NULL,NULL),(23,23,1,NULL,NULL),(24,24,1,NULL,NULL),(25,25,1,NULL,NULL),(26,26,1,NULL,NULL),(27,27,1,NULL,NULL),(28,28,1,NULL,NULL),(29,29,1,NULL,NULL),(30,30,1,NULL,NULL),(31,31,1,NULL,NULL),(32,32,1,NULL,NULL),(33,33,1,NULL,NULL),(34,34,1,NULL,NULL),(35,35,1,NULL,NULL),(36,36,1,NULL,NULL),(37,37,1,NULL,NULL),(38,38,1,NULL,NULL),(39,40,4,NULL,NULL),(40,41,4,NULL,NULL),(41,42,4,NULL,NULL),(42,43,4,NULL,NULL),(44,49,4,NULL,NULL),(45,44,4,NULL,NULL),(46,45,4,NULL,NULL),(47,48,4,NULL,NULL),(48,50,4,NULL,NULL),(49,51,4,NULL,NULL),(50,52,4,NULL,NULL),(51,46,4,NULL,NULL),(52,40,1,NULL,NULL),(53,41,1,NULL,NULL),(54,42,1,NULL,NULL),(55,43,1,NULL,NULL),(56,44,1,NULL,NULL),(57,45,1,NULL,NULL),(58,46,1,NULL,NULL),(59,47,1,NULL,NULL),(60,48,1,NULL,NULL),(61,49,1,NULL,NULL),(62,50,1,NULL,NULL),(63,52,1,NULL,NULL),(64,39,1,NULL,NULL),(65,51,1,NULL,NULL),(66,53,1,NULL,NULL),(82,54,1,NULL,NULL),(83,55,1,NULL,NULL),(84,56,1,NULL,NULL),(85,54,4,NULL,NULL),(86,55,4,NULL,NULL),(87,56,4,NULL,NULL),(88,57,1,NULL,NULL),(91,60,1,NULL,NULL),(92,61,1,NULL,NULL);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assignable` tinyint(1) NOT NULL,
  `su` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'laralum.access',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(2,'laralum.users.access',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(3,'laralum.users.create',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(4,'laralum.users.edit',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(5,'laralum.users.roles',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(6,'laralum.users.delete',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(7,'laralum.users.settings',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(8,'laralum.roles.access',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(9,'laralum.roles.create',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(10,'laralum.roles.edit',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(11,'laralum.roles.permissions',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(12,'laralum.roles.delete',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(13,'laralum.permissions.access',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(14,'laralum.permissions.create',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(15,'laralum.permissions.edit',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(16,'laralum.permissions.delete',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(17,'laralum.blogs.access',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(18,'laralum.blogs.create',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(19,'laralum.blogs.edit',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(20,'laralum.blogs.posts',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(21,'laralum.blogs.delete',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(22,'laralum.posts.access',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(23,'laralum.posts.create',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(24,'laralum.posts.edit',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(25,'laralum.posts.view',1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(26,'laralum.posts.comments',1,1,'2016-12-20 23:08:38','2016-12-20 23:08:38'),(27,'laralum.posts.graphics',1,1,'2016-12-20 23:08:38','2016-12-20 23:08:38'),(28,'laralum.posts.delete',1,1,'2016-12-20 23:08:38','2016-12-20 23:08:38'),(31,'laralum.files.download',1,1,'2016-12-20 23:08:38','2016-12-20 23:08:38'),(32,'laralum.files.delete',1,1,'2016-12-20 23:08:38','2016-12-20 23:08:38'),(33,'laralum.documents.create',1,1,'2016-12-20 23:08:38','2016-12-20 23:08:38'),(34,'laralum.documents.edit',1,1,'2016-12-20 23:08:38','2016-12-20 23:08:38'),(35,'laralum.documents.delete',1,1,'2016-12-20 23:08:38','2016-12-20 23:08:38'),(36,'laralum.settings.access',1,1,'2016-12-20 23:08:38','2016-12-20 23:08:38'),(37,'laralum.settings.edit',1,1,'2016-12-20 23:08:38','2016-12-20 23:08:38'),(38,'laralum.CRUD.access',1,1,'2016-12-20 23:08:38','2016-12-20 23:08:38'),(39,'issues.list',0,0,'2017-01-05 00:00:26','2017-01-05 00:00:26'),(40,'issues.create',1,0,'2017-01-05 00:01:01','2017-01-05 00:01:01'),(41,'issues.edit',1,0,'2017-01-05 00:01:16','2017-01-05 00:01:16'),(42,'issues.delete',1,0,'2017-01-05 00:01:40','2017-01-05 00:01:40'),(43,'issues.view',1,0,'2017-01-05 00:02:07','2017-01-05 00:02:07'),(44,'attendances',1,0,'2017-01-05 00:04:32','2017-01-05 00:16:21'),(45,'attendance.create',1,0,'2017-01-05 00:04:47','2017-01-05 00:04:47'),(46,'attendance.edit',1,0,'2017-01-05 00:05:03','2017-01-05 03:53:05'),(47,'attendance.delete',0,0,'2017-01-05 00:05:18','2017-01-05 00:05:18'),(48,'attendance.view',1,0,'2017-01-05 00:05:41','2017-01-05 00:05:41'),(49,'dashboard',1,0,'2017-01-05 00:21:22','2017-01-05 00:21:22'),(50,'attendance.list',1,0,'2017-01-05 00:37:16','2017-01-05 00:37:16'),(51,'issue.list',1,0,'2017-01-05 00:42:56','2017-01-05 00:42:56'),(52,'issues',1,0,'2017-01-05 00:43:40','2017-01-05 00:43:40'),(53,'issue.change_status',1,0,'2017-01-05 04:30:27','2017-01-05 04:30:27'),(54,'bookings',1,0,'2017-01-08 19:42:20','2017-01-08 19:42:20'),(55,'bookings.show',1,0,'2017-01-08 19:42:43','2017-01-08 19:42:43'),(56,'bookings.delete',1,0,'2017-01-08 19:42:57','2017-01-08 19:45:38'),(57,'buildings',1,0,'2017-01-22 23:54:08','2017-01-22 23:54:08'),(60,'room_types',1,0,'2017-01-23 00:43:39','2017-01-23 00:43:39'),(61,'rooms',1,0,'2017-01-23 04:33:01','2017-01-23 04:33:01');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_comments`
--

DROP TABLE IF EXISTS `post_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_comments`
--

LOCK TABLES `post_comments` WRITE;
/*!40000 ALTER TABLE `post_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_views`
--

DROP TABLE IF EXISTS `post_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_views`
--

LOCK TABLES `post_views` WRITE;
/*!40000 ALTER TABLE `post_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `logged_in_comments` tinyint(1) NOT NULL,
  `anonymous_comments` tinyint(1) NOT NULL,
  `limit_views_per_ip` tinyint(1) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `edited_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professions`
--

DROP TABLE IF EXISTS `professions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `professions_name_unique` (`name`),
  UNIQUE KEY `professions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professions`
--

LOCK TABLES `professions` WRITE;
/*!40000 ALTER TABLE `professions` DISABLE KEYS */;
INSERT INTO `professions` VALUES (1,'Developer','developer',NULL,NULL),(2,'SEO','seo',NULL,NULL);
/*!40000 ALTER TABLE `professions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(2,2,2,'2016-12-30 05:18:11','2016-12-30 05:18:11'),(3,2,3,'2016-12-30 05:19:46','2016-12-30 05:19:46'),(4,4,12,'2017-01-05 00:09:27','2017-01-05 00:09:27');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assignable` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `su` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','#DB2828',0,0,1,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(2,'User','#000000',1,1,0,'2016-12-20 23:08:37','2016-12-20 23:08:37'),(4,'Reception','yellow',1,1,0,'2017-01-05 00:08:09','2017-01-05 00:08:09');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 => Disable, 1 => Enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types`
--

LOCK TABLES `room_types` WRITE;
/*!40000 ALTER TABLE `room_types` DISABLE KEYS */;
INSERT INTO `room_types` VALUES (1,'rt_1',10.00,1,'2017-01-24 05:41:22','2017-01-24 05:41:22'),(2,'rt_2',20.00,1,'2017-01-24 05:41:35','2017-01-24 05:41:35');
/*!40000 ALTER TABLE `room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `room_type_id` int(10) unsigned NOT NULL,
  `gender` int(10) unsigned NOT NULL,
  `building_id` int(10) unsigned NOT NULL,
  `floor_id` int(10) unsigned NOT NULL,
  `bed_type` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `bed_count` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testtt_building_id_room_number_unique` (`building_id`,`room_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `laralum_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `header_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pie_chart_source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bar_chart_source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line_chart_source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `geo_chart_source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'2.1.3','Kayakalp','','blue','#1678c2','highcharts','highcharts','highcharts','highcharts','2016-12-20 23:08:39','2016-12-20 23:08:39');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socials`
--

DROP TABLE IF EXISTS `socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `social_id` int(11) NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `scan_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `referral_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_addresses`
--

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;
INSERT INTO `user_addresses` VALUES (1,5,'12','2121','121','121','BH','12211','2017-01-02 05:19:21','2017-01-02 05:19:21',NULL),(2,6,'213','123','123','213','BT','123213','2017-01-02 06:00:47','2017-01-02 06:00:47',NULL),(3,7,'456456','456','465','65','BN','4234','2017-01-02 06:05:19','2017-01-02 06:05:19',NULL),(4,8,'12312','231','123','123','BL','123','2017-01-02 06:18:26','2017-01-02 06:18:26',NULL),(5,9,'234','234','234','234','BI','234','2017-01-03 05:04:48','2017-01-03 05:04:48',NULL),(6,10,'324324','2342','324234','234234','AT','23424','2017-01-03 05:14:57','2017-01-03 05:14:57',NULL),(7,11,'123213','1231','123213','123123','BJ','123213','2017-01-03 05:20:14','2017-01-03 05:20:14',NULL);
/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_health_issues`
--

DROP TABLE IF EXISTS `user_health_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_health_issues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `issues` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_health_issues`
--

LOCK TABLES `user_health_issues` WRITE;
/*!40000 ALTER TABLE `user_health_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_health_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL COMMENT '1 => Female, 2 => Male',
  `dob` date DEFAULT NULL,
  `about` text COLLATE utf8_unicode_ci,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pinterest_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `patient_type` int(11) NOT NULL COMMENT '1 => IPD, 2 => OPD',
  `age` int(11) NOT NULL,
  `relative_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'S/o, D/o, W/o',
  `profession_id` int(11) NOT NULL,
  `marital_status` int(11) DEFAULT NULL COMMENT '1 => Unmarried, 2 => Married',
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `landline_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `whatsapp_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `health_issues` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,'Admin','Hello','1','uploads/a4cffed96dbefac7031796d3c281c907.jpeg','','','',1,'0000-00-00','',NULL,'','','','',NULL,NULL,NULL,'2016-12-21 00:22:59','2017-01-02 00:24:49',NULL,0,0,NULL,0,NULL,'',NULL,NULL,NULL),(2,'2121','212','5',NULL,NULL,'12',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-02 05:19:21','2017-01-02 05:19:21',NULL,2,1212,'1212',2,2,'12','12','12',NULL),(3,'Swati','Bhatnagar','6','uploads/e0ed7fda3213d16bdf8b82362d944242.jpeg',NULL,'123',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-02 06:00:47','2017-01-02 06:00:47',NULL,1,100,'121',1,1,'13','12','123',NULL),(4,'Kllo','kkk','7','uploads/62a94ae6c0608a1b4aa474f5dfc6d1a3.jpeg',NULL,'45646',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-02 06:05:19','2017-01-02 06:05:19',NULL,1,12,'5345',2,1,'645','4564','546456','213213'),(5,'Hema','Malini','8','uploads/f49e59a724454014a8e647ca16507062.jpeg',NULL,'123123',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-02 06:18:26','2017-01-02 06:18:26',NULL,1,100,'213',1,1,'BL','123213','12312','12313'),(6,'dfhg','fgh','9','uploads/fda07742b4ff3f973ec9a2dbb3329afb.jpeg',NULL,'234',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-03 05:04:48','2017-01-03 05:04:48',NULL,2,2,'dfgf',1,1,'BI','12232','234','234324'),(7,'Hema','Malini','10','uploads/f49e59a724454014a8e647ca16507062.jpeg',NULL,'123123',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-03 05:14:57','2017-01-03 05:14:57',NULL,2,12,'Dharmender',1,1,'AT','12232','24234324','ewrwrwr'),(8,'Mark','Patting','11','uploads/2dbfce2f101b178feff4f66290a63086.jpeg',' ','123',NULL,1,NULL,'','','','','','',NULL,NULL,NULL,'2017-01-03 05:20:14','2017-01-03 05:35:18',NULL,0,0,NULL,0,NULL,'','11111','4323',NULL);
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `banned` tinyint(1) NOT NULL,
  `register_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `su` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@kayakalp.com','$2y$10$a1ULdZhQfbZePTSDWIpMA.SdcOhPXT7sYf5qiZMNUcbR0idUc/ADS',1,0,'','IN','en','O49pTz5YiwrAwAsoTCs3g84vP',0,'0jMWelTEiIeCDyMB3Qg1VGFYdxk0n2lEwyU5k0RWkBCyEzyo7u2w78bHrIvm','2016-12-20 23:08:36','2017-01-10 07:32:31'),(2,'Test1','test1@yopmail.com','$2y$10$lOnJKNEHQjIcUKLan2Io4.aVeUW9z/VpCip2BRtvOV46kxP0xhEva',0,0,'127.0.0.1','IN','','7b3LM3akMlNF5scI26JGZTmbb',0,NULL,'2016-12-30 05:18:11','2016-12-30 05:18:11'),(3,'Test2','test2@yopmail.com','$2y$10$Z9HTns9cvAzlEORiS4Ue0enKrg3wwG6vKr8e87.Hd8ONUzR5QkX12',0,0,'127.0.0.1','IN','','uttTCCjm2tNGTa4BTIJpvEvVA',0,NULL,'2016-12-30 05:19:46','2016-12-30 05:19:46'),(4,'','sdfsdf@sfdg.com','$2y$10$rkLVGqvj/X3CpX1q0qvbX.Ys3rXAi9OJ7tVLLXlz4xxkkImUPVX0m',0,0,'','IN','','',0,NULL,'2017-01-02 05:17:49','2017-01-02 05:17:49'),(5,'','sdfs34df@sfdg.com','$2y$10$bTjDePDVrx631cDV9ARJ0ub3W5ziqy1UEQ..IDWn/DZXJkaEOMZCW',0,0,'','IN','','',0,NULL,'2017-01-02 05:19:21','2017-01-02 05:19:21'),(6,'','swati@hmm.com','$2y$10$RvI7bhzooPDEGldMnamLQuBcnMEptULxqVqpQdpXZ.CvX4ozNciWm',0,0,'','IN','','',0,NULL,'2017-01-02 06:00:47','2017-01-02 06:00:47'),(7,'','klooo@klli.com','$2y$10$9FDWYUYsoqBUhexQay43NeJfsXTRChzeziElbFJ4sPDBZPpjCI8y.',0,0,'','IN','','',0,NULL,'2017-01-02 06:05:19','2017-01-02 06:05:19'),(8,'Hema Malini','hema@gmail.com','$2y$10$WTMpoodV0SPxLwq2ibc2x.0kJbYOWKeyoR4EWirwchEODDjF0WB4O',0,0,'','IN','','',0,NULL,'2017-01-02 06:18:26','2017-01-02 06:18:26'),(9,'Dfhg Fgh','fh@sfdd.com','$2y$10$diRgN5C6tWYvOG6lXlixmeyTB13v8JgS5rIOfjYhFkgly2BKGrca2',0,0,'','BI','','',0,NULL,'2017-01-03 05:04:48','2017-01-03 05:04:48'),(10,'Hema Malini','malini@gmail.com','$2y$10$d08uGDW3RIeRHi7iHlb4CeCVb8y1H0LAs9qvGqAUwQi5Sr0CtxjAG',0,0,'','AT','','',0,NULL,'2017-01-03 05:14:57','2017-01-03 05:14:57'),(11,'Mark Patting','markpatting@yopmail.com','$2y$10$fFPKn.nA2mihjPA/6RGgOOkZ8m5phU75K8jwla7T6SL1qNHcf6gMC',1,0,'','IN','','123456',0,NULL,'2017-01-03 05:20:14','2017-01-03 05:34:49'),(12,'Test','reception@gmail.com','$2y$10$B15jVHazMEg9TjMSbOw7Xu.NtBR73ENnV6doSL7IDgXcZTX1yda0W',1,0,'127.0.0.1','IN','','ACxJXpfiwQLUnxfhr3UKPi2IL',0,'wwfoe3ufoka7UUtoOWd8C1kGeWcFuyPwLAdsYkDQAnGMNAzwQs4VuSvh7Upd','2017-01-05 00:09:27','2017-01-10 06:05:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_settings`
--

DROP TABLE IF EXISTS `users_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `default_role` int(11) NOT NULL,
  `location` tinyint(1) NOT NULL COMMENT '0: off, 1: on',
  `register_enabled` tinyint(1) NOT NULL COMMENT '0: off, 1: on',
  `default_active` int(11) NOT NULL COMMENT '0: off, 1: email, 2: on',
  `welcome_email` tinyint(1) NOT NULL COMMENT '0: off, 1: on',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_settings`
--

LOCK TABLES `users_settings` WRITE;
/*!40000 ALTER TABLE `users_settings` DISABLE KEYS */;
INSERT INTO `users_settings` VALUES (1,2,0,1,2,0);
/*!40000 ALTER TABLE `users_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-24 18:24:37
