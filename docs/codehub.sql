-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: codehub_dev
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionAssignments`
--

LOCK TABLES `AreaPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `AreaPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessList`
--

LOCK TABLES `AreaPermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessListCustom`
--

LOCK TABLES `AreaPermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,105,'Header',0,0,0),(2,105,'Column 1',0,0,0),(3,105,'Column 2',0,0,0),(4,105,'Column 3',0,0,0),(5,105,'Column 4',0,0,0),(6,106,'Primary',0,0,0),(7,106,'Secondary 1',0,0,0),(8,106,'Secondary 2',0,0,0),(9,106,'Secondary 3',0,0,0),(10,106,'Secondary 4',0,0,0),(11,106,'Secondary 5',0,0,0),(12,1,'Header Nav',0,0,1),(13,1,'Header',0,0,0),(14,1,'Sidebar',0,0,0),(15,1,'Main',0,0,0),(16,1,'Site Logo',0,0,1),(17,123,'Main',0,0,0),(18,124,'Main',0,0,0),(19,121,'Site Logo',0,0,1),(20,121,'Header nav',0,0,1),(21,121,'Main',0,0,0),(22,125,'Site Logo',0,0,1),(23,125,'Header nav',0,0,1),(24,125,'Main',0,0,0),(25,117,'Main',0,0,0),(26,125,'Profile nav',0,0,0),(27,126,'Site Logo',0,0,1),(28,126,'Header nav',0,0,1),(29,1,'Profile nav',0,0,0),(30,126,'Profile nav',0,0,0),(31,121,'Profile nav',0,0,0),(32,1,'Intro',0,0,0),(33,1,'Heading For-you',0,0,0),(34,1,'For-you',0,0,0),(35,1,'Heading Learnings',0,0,0),(36,1,'Learnings',0,0,0),(37,1,'Heading Meeting',0,0,0),(38,1,'Meeting',0,0,0),(39,1,'Heading Organisers',0,0,0),(40,1,'Gicela',0,0,0),(41,1,'Katja',0,0,0),(42,1,'Heading This-site',0,0,0),(43,1,'This-site',0,0,0),(44,1,'Contact',0,0,0),(45,125,'Secondary Content',0,0,0),(46,128,'Site Logo',0,0,1),(47,128,'Header nav',0,0,1),(48,128,'Profile nav',0,0,0),(49,128,'Main',0,0,0),(50,128,'Secondary Content',0,0,0),(51,131,'Site Logo',0,0,1),(52,131,'Header nav',0,0,1),(53,131,'Profile nav',0,0,0),(54,132,'Site Logo',0,0,1),(55,132,'Header nav',0,0,1),(56,132,'Profile nav',0,0,0),(57,132,'Secondary Content',0,0,0),(58,120,'Site Logo',0,0,1),(59,120,'Header nav',0,0,1),(60,120,'Profile nav',0,0,0),(61,120,'Secondary Content',0,0,0),(62,133,'Site Logo',0,0,1),(63,133,'Header nav',0,0,1),(64,133,'Profile nav',0,0,0),(65,133,'Main',0,0,0),(66,133,'Secondary Content',0,0,0),(67,134,'Site Logo',0,0,1),(68,134,'Header nav',0,0,1),(69,134,'Profile nav',0,0,0),(70,134,'Main',0,0,0),(71,134,'Secondary Content',0,0,0),(72,112,'Site Logo',0,0,1),(73,112,'Header nav',0,0,1),(74,112,'Profile nav',0,0,0),(75,112,'Main',0,0,0),(76,112,'Secondary Content',0,0,0),(77,113,'Site Logo',0,0,1),(78,113,'Header nav',0,0,1),(79,135,'Site Logo',0,0,1),(80,135,'Header nav',0,0,1),(81,135,'Main',0,0,0),(82,135,'Secondary Content',0,0,0),(83,112,'experience',0,0,0),(84,112,'learning',0,0,0),(85,112,'experience-gicela',0,0,0),(86,112,'experience-admin',0,0,0),(87,112,'learning-admin',0,0,0),(88,112,'learning-gicela',0,0,0),(89,114,'Site Logo',0,0,1),(90,114,'Header nav',0,0,1),(91,112,'Main-gicela',0,0,0),(92,112,'Main-admin',0,0,0),(93,127,'Site Logo',0,0,1),(94,127,'Header nav',0,0,1),(95,127,'Intro',0,0,0),(96,127,'Heading For-you',0,0,0),(97,127,'For-you',0,0,0),(98,127,'Heading Learnings',0,0,0),(99,127,'Learnings',0,0,0),(100,127,'Heading Meeting',0,0,0),(101,127,'Meeting',0,0,0),(102,127,'Heading Organisers',0,0,0),(103,127,'Gicela',0,0,0),(104,127,'Katja',0,0,0),(105,127,'Heading This-site',0,0,0),(106,127,'This-site',0,0,0),(107,127,'Contact',0,0,0),(108,112,'experience-gabriel',0,0,0),(109,112,'learning-gabriel',0,0,0),(110,112,'Main-gabriel',0,0,0),(111,112,'experience-sam',0,0,0),(112,112,'learning-sam',0,0,0),(113,112,'Main-sam',0,0,0),(114,120,'Header Nav',0,0,1),(115,120,'Header',0,0,0),(116,120,'Sidebar',0,0,0),(117,120,'Main',0,0,0),(118,120,'Site Logo',0,0,1),(119,120,'Profile nav',0,0,0),(120,120,'Intro',0,0,0),(121,120,'Heading For-you',0,0,0),(122,120,'For-you',0,0,0),(123,120,'Heading Learnings',0,0,0),(124,120,'Learnings',0,0,0),(125,120,'Heading Meeting',0,0,0),(126,120,'Meeting',0,0,0),(127,120,'Heading Organisers',0,0,0),(128,120,'Gicela',0,0,0),(129,120,'Katja',0,0,0),(130,120,'Heading This-site',0,0,0),(131,120,'This-site',0,0,0),(132,120,'Contact',0,0,0),(133,112,'Header Nav',0,0,1),(134,112,'Header',0,0,0),(135,112,'Sidebar',0,0,0),(136,112,'Main',0,0,0),(137,112,'Site Logo',0,0,1),(138,112,'Profile nav',0,0,0),(139,112,'Intro',0,0,0),(140,112,'Heading For-you',0,0,0),(141,112,'For-you',0,0,0),(142,112,'Heading Learnings',0,0,0),(143,112,'Learnings',0,0,0),(144,112,'Heading Meeting',0,0,0),(145,112,'Meeting',0,0,0),(146,112,'Heading Organisers',0,0,0),(147,112,'Gicela',0,0,0),(148,112,'Katja',0,0,0),(149,112,'Heading This-site',0,0,0),(150,112,'This-site',0,0,0),(151,112,'Contact',0,0,0),(152,112,'experience-rob',0,0,0),(153,112,'learning-rob',0,0,0),(154,112,'Main-rob',0,0,0),(155,112,'experience-katja',0,0,0),(156,112,'learning-katja',0,0,0),(157,112,'Main-katja',0,0,0),(158,120,'Profiles intro',0,0,0),(159,120,'Profile heading',0,0,0),(160,112,'experience-Carl',0,0,0),(161,112,'learning-Carl',0,0,0),(162,112,'Main-Carl',0,0,0);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,1,0,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,0,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,0,0,0,1,2,1,0),(4,'icon_dashboard','Dashboard Icon',1,1,0,1,0,1,2,1,0),(5,'exclude_nav','Exclude From Nav',1,1,0,0,0,1,3,1,0),(6,'exclude_page_list','Exclude From Page List',1,1,0,0,0,1,3,1,0),(7,'header_extra_content','Header Extra Content',1,1,0,0,0,1,2,1,0),(8,'exclude_search_index','Exclude From Search Index',1,1,0,0,0,1,3,1,0),(9,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,0,0,0,1,3,1,0),(10,'profile_private_messages_enabled','I would like to receive private messages.',1,1,0,0,0,1,3,2,0),(11,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,1,0,0,0,1,3,2,0),(12,'width','Width',1,1,0,0,0,1,6,3,0),(13,'height','Height',1,1,0,0,0,1,6,3,0),(14,'duration','Duration',1,1,0,0,0,1,6,3,0),(15,'faq_section','FAQ Section',1,0,0,0,0,1,3,1,0),(16,'faq_tags','FAQ Tags',1,0,0,0,0,1,8,1,0),(17,'full_name','Full Name',1,1,0,0,0,1,1,2,0),(18,'website','Website (without http://)',1,0,0,0,0,1,1,2,0),(19,'twitter','Twitter',1,1,0,0,0,1,1,2,0),(20,'linkedin','LinkedIn',1,1,0,0,0,1,1,2,0),(21,'googleplus','Google+',1,1,0,0,0,1,1,2,0),(22,'github','Github',1,1,0,0,0,1,1,2,0),(23,'notlisted','Not listed as Member',1,0,0,0,0,1,3,2,0);
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (1,1,1),(2,1,2),(3,1,3),(7,1,4),(5,2,1),(6,2,2),(8,2,3),(9,2,4);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'Page Header','page_header',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(6,1),(6,2),(6,3),(7,1),(7,3),(8,1),(8,2),(8,3),(9,2);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',0),(2,'textarea','Text Area',0),(3,'boolean','Checkbox',0),(4,'date_time','Date/Time',0),(5,'image_file','Image/File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (1,3,'2013-10-19 17:17:24',1,2),(2,4,'2013-10-19 17:17:24',1,2),(3,3,'2013-10-19 17:17:24',1,2),(4,4,'2013-10-19 17:17:24',1,2),(5,3,'2013-10-19 17:17:24',1,2),(6,4,'2013-10-19 17:17:24',1,2),(7,3,'2013-10-19 17:17:24',1,2),(8,3,'2013-10-19 17:17:24',1,2),(9,4,'2013-10-19 17:17:24',1,2),(10,3,'2013-10-19 17:17:24',1,2),(11,4,'2013-10-19 17:17:24',1,2),(12,3,'2013-10-19 17:17:24',1,2),(13,4,'2013-10-19 17:17:24',1,2),(14,3,'2013-10-19 17:17:24',1,2),(15,4,'2013-10-19 17:17:24',1,2),(16,3,'2013-10-19 17:17:24',1,2),(17,4,'2013-10-19 17:17:24',1,2),(18,3,'2013-10-19 17:17:24',1,2),(19,4,'2013-10-19 17:17:24',1,2),(20,5,'2013-10-19 17:17:24',1,3),(21,3,'2013-10-19 17:17:24',1,2),(22,4,'2013-10-19 17:17:24',1,2),(23,3,'2013-10-19 17:17:24',1,2),(24,3,'2013-10-19 17:17:24',1,2),(25,4,'2013-10-19 17:17:24',1,2),(26,3,'2013-10-19 17:17:24',1,2),(27,4,'2013-10-19 17:17:24',1,2),(28,3,'2013-10-19 17:17:24',1,2),(29,4,'2013-10-19 17:17:24',1,2),(30,3,'2013-10-19 17:17:24',1,2),(31,5,'2013-10-19 17:17:24',1,3),(32,4,'2013-10-19 17:17:24',1,2),(33,3,'2013-10-19 17:17:24',1,2),(34,5,'2013-10-19 17:17:24',1,3),(35,4,'2013-10-19 17:17:24',1,2),(36,3,'2013-10-19 17:17:24',1,2),(37,4,'2013-10-19 17:17:24',1,2),(38,3,'2013-10-19 17:17:24',1,2),(39,3,'2013-10-19 17:17:24',1,2),(40,4,'2013-10-19 17:17:24',1,2),(41,3,'2013-10-19 17:17:24',1,2),(42,4,'2013-10-19 17:17:24',1,2),(43,3,'2013-10-19 17:17:24',1,2),(44,4,'2013-10-19 17:17:24',1,2),(45,3,'2013-10-19 17:17:24',1,2),(46,4,'2013-10-19 17:17:24',1,2),(47,3,'2013-10-19 17:17:24',1,2),(48,4,'2013-10-19 17:17:24',1,2),(49,3,'2013-10-19 17:17:24',1,2),(50,3,'2013-10-19 17:17:24',1,2),(51,3,'2013-10-19 17:17:24',1,2),(52,3,'2013-10-19 17:17:24',1,2),(53,4,'2013-10-19 17:17:24',1,2),(54,3,'2013-10-19 17:17:24',1,2),(55,4,'2013-10-19 17:17:24',1,2),(56,3,'2013-10-19 17:17:25',1,2),(57,4,'2013-10-19 17:17:25',1,2),(58,3,'2013-10-19 17:17:25',1,2),(59,4,'2013-10-19 17:17:25',1,2),(60,4,'2013-10-19 17:17:25',1,2),(61,3,'2013-10-19 17:17:25',1,2),(62,4,'2013-10-19 17:17:25',1,2),(63,4,'2013-10-19 17:17:25',1,2),(64,5,'2013-10-19 17:17:25',1,3),(65,8,'2013-10-19 17:17:25',1,3),(66,3,'2013-10-19 17:17:25',1,2),(67,4,'2013-10-19 17:17:25',1,2),(68,5,'2013-10-19 17:17:25',1,3),(69,5,'2013-10-19 17:17:25',1,3),(70,3,'2013-10-19 17:17:25',1,2),(71,3,'2013-10-19 17:17:25',1,2),(72,3,'2013-10-19 17:17:25',1,2),(73,3,'2013-10-19 17:17:25',1,2),(74,3,'2013-10-19 17:17:25',1,2),(75,5,'2013-10-19 17:17:25',1,3),(76,3,'2013-10-19 17:17:25',1,2),(77,3,'2013-10-19 17:17:25',1,2),(78,3,'2013-10-19 17:17:25',1,2),(79,3,'2013-10-19 17:17:25',1,2),(80,3,'2013-10-19 17:17:25',1,2),(81,3,'2013-10-19 17:17:25',1,2),(82,3,'2013-10-19 17:17:25',1,2),(83,3,'2013-10-19 17:17:25',1,2),(84,3,'2013-10-19 17:17:25',1,2),(85,3,'2013-10-19 17:17:25',1,2),(86,3,'2013-10-19 17:17:25',1,2),(87,3,'2013-10-19 17:17:25',1,2),(88,3,'2013-10-19 17:17:25',1,2),(89,3,'2013-10-19 17:17:25',1,2),(90,3,'2013-10-19 17:17:25',1,2),(91,3,'2013-10-19 17:17:25',1,2),(92,3,'2013-10-19 17:17:25',1,2),(93,3,'2013-10-19 17:17:25',1,2),(94,3,'2013-10-19 17:17:25',1,2),(95,3,'2013-10-19 17:17:25',1,2),(96,3,'2013-10-19 17:17:25',1,2),(97,3,'2013-10-19 17:17:25',1,2),(98,3,'2013-10-19 17:17:25',1,2),(99,3,'2013-10-19 17:17:25',1,2),(100,3,'2013-10-19 17:17:25',1,2),(101,3,'2013-10-19 17:17:25',1,2),(102,3,'2013-10-19 17:17:25',1,2),(103,3,'2013-10-19 17:17:25',1,2),(104,3,'2013-10-19 17:17:25',1,2),(105,3,'2013-10-19 17:17:25',1,2),(106,3,'2013-10-19 17:17:25',1,2),(107,3,'2013-10-19 17:17:25',1,2),(108,8,'2013-10-19 17:17:25',1,3),(109,3,'2013-10-19 17:17:25',1,2),(110,3,'2013-10-19 17:17:25',1,2),(111,3,'2013-10-19 17:17:25',1,2),(112,3,'2013-10-19 17:17:25',1,2),(113,3,'2013-10-19 17:17:25',1,2),(114,3,'2013-10-19 17:17:25',1,2),(115,3,'2013-10-19 17:17:25',1,2),(116,3,'2013-10-19 17:17:25',1,2),(117,5,'2013-10-19 17:17:26',1,3),(118,5,'2013-10-19 17:17:26',1,3),(119,8,'2013-10-19 17:17:26',1,3),(120,5,'2013-12-05 03:51:40',1,3),(121,5,'2013-12-05 03:51:53',1,3),(122,5,'2013-12-05 04:11:19',1,3),(123,10,'2014-01-09 23:55:20',1,3),(124,11,'2014-01-09 23:55:20',1,3),(125,12,'2014-01-11 02:04:46',1,6),(126,13,'2014-01-11 02:04:46',1,6),(127,17,'2014-01-11 17:10:04',2,1),(128,5,'2014-01-11 17:49:31',2,3),(129,5,'2014-01-11 17:49:43',2,3),(130,18,'2014-01-11 18:54:00',2,1),(131,17,'2014-01-14 00:56:14',1,1),(132,18,'2014-01-14 00:56:14',1,1),(133,19,'2014-01-14 01:05:23',1,1),(134,20,'2014-01-14 01:05:23',1,1),(135,21,'2014-01-14 01:05:23',1,1),(136,22,'2014-01-14 01:05:23',1,1),(137,19,'2014-01-14 02:06:29',2,1),(138,20,'2014-01-14 02:06:29',2,1),(139,21,'2014-01-14 02:06:29',2,1),(140,22,'2014-01-14 02:06:29',2,1),(141,17,'2014-01-15 20:41:17',3,1),(142,18,'2014-01-15 20:41:17',3,1),(143,19,'2014-01-15 20:41:17',3,1),(144,20,'2014-01-15 20:41:17',3,1),(145,21,'2014-01-15 20:41:17',3,1),(146,22,'2014-01-15 20:41:17',3,1),(147,17,'2014-01-15 21:07:38',4,1),(148,18,'2014-01-15 21:07:38',4,1),(149,19,'2014-01-15 21:07:38',4,1),(150,20,'2014-01-15 21:07:38',4,1),(151,21,'2014-01-15 21:07:38',4,1),(152,22,'2014-01-15 21:07:38',4,1),(153,17,'2014-01-15 21:12:27',5,1),(154,18,'2014-01-15 21:12:27',5,1),(155,19,'2014-01-15 21:12:27',5,1),(156,20,'2014-01-15 21:12:27',5,1),(157,21,'2014-01-15 21:12:27',5,1),(158,22,'2014-01-15 21:12:27',5,1),(159,23,'2014-01-26 20:16:49',1,3),(160,23,'2014-01-26 20:17:28',1,3),(161,5,'2014-01-27 00:59:11',1,3),(162,5,'2014-01-27 00:59:39',1,3),(163,5,'2014-01-29 16:59:01',1,3),(164,5,'2014-01-29 17:00:34',1,3),(165,5,'2014-03-04 23:14:51',1,3);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowPermissionAssignments`
--

LOCK TABLES `BasicWorkflowPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowProgressData`
--

DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowProgressData`
--

LOCK TABLES `BasicWorkflowProgressData` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockPermissionAssignments`
--

LOCK TABLES `BlockPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BlockPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockRelations`
--

DROP TABLE IF EXISTS `BlockRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockRelations`
--

LOCK TABLES `BlockRelations` WRITE;
/*!40000 ALTER TABLE `BlockRelations` DISABLE KEYS */;
INSERT INTO `BlockRelations` VALUES (1,29,28,'DUPLICATE'),(2,31,30,'DUPLICATE'),(3,50,45,'DUPLICATE'),(4,53,50,'DUPLICATE'),(5,67,34,'DUPLICATE'),(6,68,47,'DUPLICATE'),(7,69,68,'DUPLICATE'),(8,70,69,'DUPLICATE'),(9,71,70,'DUPLICATE'),(10,73,71,'DUPLICATE'),(11,74,72,'DUPLICATE'),(12,75,74,'DUPLICATE'),(13,76,75,'DUPLICATE'),(14,77,73,'DUPLICATE'),(15,78,76,'DUPLICATE'),(16,79,57,'DUPLICATE'),(17,80,33,'DUPLICATE'),(18,81,67,'DUPLICATE'),(19,82,40,'DUPLICATE'),(20,83,38,'DUPLICATE'),(21,85,77,'DUPLICATE'),(22,86,81,'DUPLICATE'),(23,87,20,'DUPLICATE'),(24,88,86,'DUPLICATE'),(25,89,80,'DUPLICATE'),(26,90,84,'DUPLICATE'),(27,91,89,'DUPLICATE'),(28,92,91,'DUPLICATE'),(29,93,90,'DUPLICATE'),(30,94,85,'DUPLICATE'),(31,95,92,'DUPLICATE'),(32,96,88,'DUPLICATE'),(33,97,94,'DUPLICATE'),(34,99,98,'DUPLICATE'),(35,104,99,'DUPLICATE'),(36,105,104,'DUPLICATE'),(37,106,100,'DUPLICATE'),(38,107,79,'DUPLICATE'),(39,108,93,'DUPLICATE'),(41,111,96,'DUPLICATE'),(42,112,107,'DUPLICATE'),(43,113,111,'DUPLICATE'),(44,114,106,'DUPLICATE'),(45,115,113,'DUPLICATE'),(46,116,115,'DUPLICATE'),(47,117,116,'DUPLICATE'),(48,118,117,'DUPLICATE'),(49,119,118,'DUPLICATE'),(50,120,119,'DUPLICATE'),(51,121,87,'DUPLICATE'),(52,122,121,'DUPLICATE'),(53,123,120,'DUPLICATE'),(54,124,123,'DUPLICATE'),(55,125,124,'DUPLICATE'),(56,126,125,'DUPLICATE'),(57,127,126,'DUPLICATE'),(58,128,95,'DUPLICATE'),(59,129,108,'DUPLICATE'),(60,130,114,'DUPLICATE'),(61,131,112,'DUPLICATE');
/*!40000 ALTER TABLE `BlockRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessList`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessListCustom`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for blocks pasted through the scrapbook.',1,0,0,1,0,400,400,0),(2,'core_stack_display','Stack Display (Core)','Proxy block for stacks added through the UI.',1,0,0,1,0,400,400,0),(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,0,300,100,0),(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,0,300,100,0),(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,0,400,400,0),(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,0,400,400,0),(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,0,400,400,0),(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,1,500,350,0),(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,3,600,465,0),(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,4,500,350,0),(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,5,370,100,0),(12,'file','File','Link to files stored in the asset library.',1,0,0,0,6,300,250,0),(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,7,380,200,0),(14,'form','Form','Build simple forms and surveys.',1,0,0,0,8,420,430,0),(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,9,400,200,0),(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,10,370,480,0),(17,'html','HTML','For adding HTML by hand.',1,0,0,0,11,600,465,0),(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,12,400,550,0),(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,13,430,400,0),(20,'page_list','Page List','List pages based on type, area.',1,0,0,0,14,500,350,0),(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,15,400,330,0),(22,'search','Search','Add a search box to your site.',1,0,0,0,16,400,240,0),(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,17,550,400,0),(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,0,0,18,420,300,0),(25,'tags','Tags','List pages based on type, area.',1,0,0,0,19,450,260,0),(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,20,320,220,0),(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,21,400,210,0),(28,'plain_text','Plain Text','For adding plain text.',1,0,0,0,2,600,465,0),(29,'jereme_tweetcrete','Tweetcrete','Add a Twitter feed to any page',1,0,0,0,22,400,420,1);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2013-10-19 17:17:25','2013-10-19 17:17:25',NULL,'1',9,1,NULL),(2,'','2013-10-19 17:17:25','2013-10-19 17:17:25',NULL,'1',9,1,NULL),(3,'','2013-10-19 17:17:25','2013-10-19 17:17:26',NULL,'1',9,1,NULL),(4,'','2013-10-19 17:17:26','2013-10-19 17:17:26',NULL,'1',9,1,NULL),(5,'','2013-10-19 17:17:26','2013-10-19 17:17:26',NULL,'1',9,1,NULL),(6,'','2013-10-19 17:17:26','2013-10-19 17:17:26',NULL,'1',6,1,NULL),(7,'','2013-10-19 17:17:26','2013-10-19 17:17:26',NULL,'1',7,1,NULL),(8,'','2013-10-19 17:17:26','2013-10-19 17:17:26',NULL,'1',5,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:25:\"btDashboardNewsflowLatest\";s:8:\"_tableat\";s:25:\"btDashboardNewsflowLatest\";s:6:\"_where\";s:5:\"bID=8\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:1:\"8\";i:1;s:1:\"A\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:1:\"8\";s:4:\"slot\";s:1:\"A\";}'),(15,NULL,'2013-10-19 17:56:46','2013-10-19 17:56:46',NULL,'1',8,1,'O:11:\"BlockRecord\":18:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:12:\"btNavigation\";s:8:\"_tableat\";s:12:\"btNavigation\";s:6:\"_where\";s:6:\"bID=15\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:9:{i:0;s:2:\"15\";i:1;s:11:\"display_asc\";i:2;s:3:\"top\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:4:\"none\";i:6;s:6:\"enough\";i:7;s:1:\"0\";i:8;s:1:\"0\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"15\";s:7:\"orderBy\";s:11:\"display_asc\";s:12:\"displayPages\";s:3:\"top\";s:15:\"displayPagesCID\";s:1:\"0\";s:23:\"displayPagesIncludeSelf\";s:1:\"0\";s:15:\"displaySubPages\";s:4:\"none\";s:20:\"displaySubPageLevels\";s:6:\"enough\";s:23:\"displaySubPageLevelsNum\";s:1:\"0\";s:23:\"displayUnavailablePages\";s:1:\"0\";}'),(9,'','2013-10-19 17:17:26','2013-10-19 17:17:26',NULL,'1',5,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:25:\"btDashboardNewsflowLatest\";s:8:\"_tableat\";s:25:\"btDashboardNewsflowLatest\";s:6:\"_where\";s:5:\"bID=9\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:1:\"9\";i:1;s:1:\"B\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:1:\"9\";s:4:\"slot\";s:1:\"B\";}'),(14,NULL,'2013-10-19 17:52:12','2013-10-19 17:52:12',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=14\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"14\";i:1;s:16:\"<h1>CodeHub</h1>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"14\";s:7:\"content\";s:16:\"<h1>CodeHub</h1>\";}'),(10,'','2013-10-19 17:17:26','2013-10-19 17:17:26',NULL,'1',4,1,NULL),(11,'','2013-10-19 17:17:26','2013-10-19 17:17:26',NULL,'1',3,1,NULL),(12,'','2013-10-19 17:17:26','2013-10-19 17:17:26',NULL,'1',5,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:25:\"btDashboardNewsflowLatest\";s:8:\"_tableat\";s:25:\"btDashboardNewsflowLatest\";s:6:\"_where\";s:6:\"bID=12\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"12\";i:1;s:1:\"C\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"12\";s:4:\"slot\";s:1:\"C\";}'),(13,NULL,'2013-10-19 17:46:54','2013-10-19 17:46:54',NULL,'1',17,1,NULL),(16,NULL,'2013-10-20 01:02:39','2013-10-20 01:02:39',NULL,'1',17,1,NULL),(54,NULL,'2014-01-14 02:02:58','2014-01-14 02:02:58',NULL,'1',17,2,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=54\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"54\";i:1;s:109:\"<li>HTML,</li><li>CSS,</li><li>Javascript,</li><li> PHP,</li><li> Wordpress,</li><li> Mobile Development</li>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"54\";s:7:\"content\";s:109:\"<li>HTML,</li><li>CSS,</li><li>Javascript,</li><li> PHP,</li><li> Wordpress,</li><li> Mobile Development</li>\";}'),(55,NULL,'2014-01-14 02:04:44','2014-01-14 02:04:44',NULL,'1',9,2,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=55\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"55\";i:1;s:268:\"<p>I\'ve been developing web sites since the mid 1990\'s and have never stopped learning. Pretty much everything I know I have learnt it from other people. I feel we need to create a hub of learners where we can meet, share knowledge and collaborate with each other.</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"55\";s:7:\"content\";s:268:\"<p>I\'ve been developing web sites since the mid 1990\'s and have never stopped learning. Pretty much everything I know I have learnt it from other people. I feel we need to create a hub of learners where we can meet, share knowledge and collaborate with each other.</p>\";}'),(56,NULL,'2014-01-14 02:05:13','2014-01-14 02:05:13',NULL,'1',17,2,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=56\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"56\";i:1;s:49:\"<li>Javscript,</li><li>Python,</li><li>Java </li>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"56\";s:7:\"content\";s:49:\"<li>Javscript,</li><li>Python,</li><li>Java </li>\";}'),(17,NULL,'2013-10-20 01:03:08','2013-10-20 01:03:08',NULL,'1',8,1,NULL),(42,NULL,'2013-10-20 19:01:21','2013-10-20 19:01:21',NULL,'1',17,1,NULL),(43,'','2013-11-04 13:16:30','2013-11-04 14:07:24','special.php','1',29,1,NULL),(44,NULL,'2013-12-04 17:30:44','2013-12-04 17:30:44',NULL,'1',20,1,NULL),(45,NULL,'2014-01-11 16:47:07','2014-01-11 16:47:07',NULL,'1',9,2,NULL),(46,NULL,'2014-01-11 17:27:27','2014-01-11 17:27:27',NULL,'1',20,2,NULL),(47,NULL,'2014-01-11 18:15:45','2014-01-11 18:15:45',NULL,'1',9,2,NULL),(48,NULL,'2014-01-14 00:35:14','2014-01-14 00:35:14',NULL,'1',17,2,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=48\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"48\";i:1;s:110:\" <li>HTML,</li><li>CSS,</li><li>Javascript,</li><li> PHP,</li><li> Wordpress,</li><li> Mobile Development</li>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"48\";s:7:\"content\";s:110:\" <li>HTML,</li><li>CSS,</li><li>Javascript,</li><li> PHP,</li><li> Wordpress,</li><li> Mobile Development</li>\";}'),(49,NULL,'2014-01-14 00:38:13','2014-01-14 00:44:38',NULL,'1',17,2,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=49\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"49\";i:1;s:61:\"<li>Javscript,</li><li>Python,</li><li>Java,</li><li>Git</li>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"49\";s:7:\"content\";s:61:\"<li>Javscript,</li><li>Python,</li><li>Java,</li><li>Git</li>\";}'),(50,NULL,'2014-01-14 00:40:14','2014-01-14 00:40:14',NULL,'1',9,2,NULL),(51,NULL,'2014-01-14 00:47:23','2014-01-14 00:47:23',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=51\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"51\";i:1;s:85:\"<li>HTML,</li><li>CSS,</li><li>PHP,</li><li>Javascript,</li><li>SilverStripe</li>\r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"51\";s:7:\"content\";s:85:\"<li>HTML,</li><li>CSS,</li><li>PHP,</li><li>Javascript,</li><li>SilverStripe</li>\r\n\r\n\";}'),(52,NULL,'2014-01-14 00:49:34','2014-01-14 00:49:51',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=52\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"52\";i:1;s:48:\"<li>Javascript,</li><li>Python,</li><li>Git</li>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"52\";s:7:\"content\";s:48:\"<li>Javascript,</li><li>Python,</li><li>Git</li>\";}'),(53,NULL,'2014-01-14 00:50:13','2014-01-14 00:50:13',NULL,'1',9,2,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=53\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"53\";i:1;s:445:\"<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I too keep learning new things all the time and I\'m loving it. The only thing is that working and learning from home can become a bit solitary, and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"53\";s:7:\"content\";s:445:\"<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I too keep learning new things all the time and I\'m loving it. The only thing is that working and learning from home can become a bit solitary, and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>\";}'),(18,NULL,'2013-10-20 01:18:59','2013-10-20 01:18:59',NULL,'1',17,1,NULL),(35,NULL,'2013-10-20 18:20:29','2013-10-20 18:20:29',NULL,'1',17,1,NULL),(36,NULL,'2013-10-20 18:21:10','2013-10-20 18:21:10',NULL,'1',28,1,NULL),(37,NULL,'2013-10-20 18:21:35','2013-10-20 18:21:35',NULL,'1',17,1,NULL),(38,NULL,'2013-10-20 18:24:41','2013-10-20 18:24:41',NULL,'1',17,1,NULL),(39,NULL,'2013-10-20 18:25:06','2013-10-20 18:25:06',NULL,'1',17,1,NULL),(40,NULL,'2013-10-20 18:25:18','2013-10-20 18:25:18',NULL,'1',28,1,NULL),(41,NULL,'2013-10-20 19:01:01','2013-10-20 19:01:01',NULL,'1',17,1,NULL),(19,NULL,'2013-10-20 01:19:12','2013-10-20 01:19:12',NULL,'1',8,1,NULL),(20,NULL,'2013-10-20 16:40:00','2013-10-20 16:40:00',NULL,'1',9,1,NULL),(21,NULL,'2013-10-20 16:49:09','2013-10-20 16:49:09',NULL,'1',9,1,NULL),(22,NULL,'2013-10-20 16:49:45','2013-10-20 16:49:45',NULL,'1',9,1,NULL),(23,NULL,'2013-10-20 16:52:37','2013-10-20 16:53:38',NULL,'1',17,1,NULL),(24,NULL,'2013-10-20 16:53:13','2013-10-20 16:53:30',NULL,'1',9,1,NULL),(27,NULL,'2013-10-20 17:32:43','2013-10-20 17:32:43',NULL,'1',28,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:11:\"btPlainText\";s:8:\"_tableat\";s:11:\"btPlainText\";s:6:\"_where\";s:6:\"bID=27\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"27\";i:1;s:20:\"Is CodeHub for you? \";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"27\";s:7:\"content\";s:20:\"Is CodeHub for you? \";}'),(28,NULL,'2013-10-20 17:34:40','2013-10-20 17:34:40',NULL,'1',9,1,NULL),(29,NULL,'2013-10-20 17:35:54','2013-10-20 17:35:54',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=29\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"29\";i:1;s:101:\"<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"29\";s:7:\"content\";s:101:\"<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>\";}'),(30,NULL,'2013-10-20 17:44:12','2013-10-20 17:44:12',NULL,'1',28,1,NULL),(31,NULL,'2013-10-20 17:50:03','2013-10-20 17:50:03',NULL,'1',28,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:11:\"btPlainText\";s:8:\"_tableat\";s:11:\"btPlainText\";s:6:\"_where\";s:6:\"bID=31\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"31\";i:1;s:32:\"What are we learning at CodeHub?\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"31\";s:7:\"content\";s:32:\"What are we learning at CodeHub?\";}'),(32,NULL,'2013-10-20 18:12:40','2013-10-20 18:12:40',NULL,'1',28,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:11:\"btPlainText\";s:8:\"_tableat\";s:11:\"btPlainText\";s:6:\"_where\";s:6:\"bID=32\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"32\";i:1;s:26:\"Where and when do we meet?\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"32\";s:7:\"content\";s:26:\"Where and when do we meet?\";}'),(33,NULL,'2013-10-20 18:13:29','2013-10-20 18:13:29',NULL,'1',17,1,NULL),(34,NULL,'2013-10-20 18:14:00','2013-10-20 18:14:00',NULL,'1',17,1,NULL),(57,NULL,'2014-01-15 19:57:01','2014-01-15 19:57:01',NULL,'1',9,1,NULL),(58,NULL,'2014-01-15 20:50:51','2014-01-15 20:53:11',NULL,'1',9,3,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=58\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"58\";i:1;s:403:\"<p>After a Fine Art degree, I started a business with a partner in \'96 writing front-end code for the emerging web industry in London. I\'ve learned (and continue to learn) everything on the job from practical examples, or from simply having to get from A to B. Working from home now in Gloucestershire is great but I miss learning from the people around me, so am excited to be involved with CodeHub</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"58\";s:7:\"content\";s:403:\"<p>After a Fine Art degree, I started a business with a partner in \'96 writing front-end code for the emerging web industry in London. I\'ve learned (and continue to learn) everything on the job from practical examples, or from simply having to get from A to B. Working from home now in Gloucestershire is great but I miss learning from the people around me, so am excited to be involved with CodeHub</p>\";}'),(59,NULL,'2014-01-15 20:52:25','2014-01-15 20:52:25',NULL,'1',17,3,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=59\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"59\";i:1;s:162:\"<li>html,</li>\r\n<li>css,</li>\r\n<li> basic php,</li>\r\n<li>basic javascript,</li>\r\n<li> Wordpress,</li>\r\n<li>graphic design,</li>\r\n<li>information architecture</li>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"59\";s:7:\"content\";s:162:\"<li>html,</li>\r\n<li>css,</li>\r\n<li> basic php,</li>\r\n<li>basic javascript,</li>\r\n<li> Wordpress,</li>\r\n<li>graphic design,</li>\r\n<li>information architecture</li>\";}'),(60,NULL,'2014-01-15 20:54:27','2014-01-15 20:54:27',NULL,'1',17,3,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=60\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"60\";i:1;s:83:\"<li>php,</li>\r\n<li>javascript,</li>\r\n<li>jQuery,</li>\r\n<li>Git,</li>\r\n<li>grep</li>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"60\";s:7:\"content\";s:83:\"<li>php,</li>\r\n<li>javascript,</li>\r\n<li>jQuery,</li>\r\n<li>Git,</li>\r\n<li>grep</li>\";}'),(61,NULL,'2014-01-15 21:05:19','2014-01-15 21:05:19',NULL,'1',9,4,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=61\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"61\";i:1;s:22:\"<p>text - about me</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"61\";s:7:\"content\";s:22:\"<p>text - about me</p>\";}'),(62,NULL,'2014-01-15 21:06:06','2014-01-15 21:06:18',NULL,'1',17,4,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=62\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"62\";i:1;s:33:\"<li>Skill 1,</li><li>Skill 2</li>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"62\";s:7:\"content\";s:33:\"<li>Skill 1,</li><li>Skill 2</li>\";}'),(63,NULL,'2014-01-15 21:06:39','2014-01-15 21:06:39',NULL,'1',17,4,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=63\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"63\";i:1;s:33:\"<li>Skill 1,</li><li>Skill 2</li>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"63\";s:7:\"content\";s:33:\"<li>Skill 1,</li><li>Skill 2</li>\";}'),(64,NULL,'2014-01-15 21:10:23','2014-01-15 21:10:23',NULL,'1',9,5,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=64\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"64\";i:1;s:22:\"<p>text - about me</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"64\";s:7:\"content\";s:22:\"<p>text - about me</p>\";}'),(65,NULL,'2014-01-15 21:10:59','2014-01-15 21:10:59',NULL,'1',17,5,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=65\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"65\";i:1;s:33:\"<li>Skill 1,</li><li>Skill 2</li>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"65\";s:7:\"content\";s:33:\"<li>Skill 1,</li><li>Skill 2</li>\";}'),(66,NULL,'2014-01-15 21:11:29','2014-01-15 21:11:29',NULL,'1',17,5,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=66\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"66\";i:1;s:33:\"<li>Skill 1,</li><li>Skill 2</li>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"66\";s:7:\"content\";s:33:\"<li>Skill 1,</li><li>Skill 2</li>\";}'),(67,NULL,'2014-01-15 21:16:16','2014-01-15 21:16:16',NULL,'1',17,1,NULL),(68,NULL,'2014-01-15 21:26:20','2014-01-15 21:36:50',NULL,'1',9,2,NULL),(69,NULL,'2014-01-15 21:42:15','2014-01-15 21:42:15',NULL,'1',9,2,NULL),(70,NULL,'2014-01-15 21:43:35','2014-01-15 23:42:19',NULL,'1',9,2,NULL),(71,NULL,'2014-01-15 23:47:35','2014-01-15 23:47:35',NULL,'1',9,2,NULL),(72,NULL,'2014-01-15 23:47:53','2014-01-15 23:47:53',NULL,'1',9,1,NULL),(73,NULL,'2014-01-15 23:52:33','2014-01-15 23:53:15',NULL,'1',9,2,NULL),(74,NULL,'2014-01-15 23:53:35','2014-01-15 23:53:35',NULL,'1',9,1,NULL),(75,NULL,'2014-01-15 23:55:49','2014-01-15 23:55:49',NULL,'1',9,1,NULL),(76,NULL,'2014-01-15 23:56:11','2014-01-15 23:56:11',NULL,'1',9,1,NULL),(77,NULL,'2014-01-19 17:43:33','2014-01-19 17:43:33',NULL,'1',9,2,NULL),(78,NULL,'2014-01-19 17:43:52','2014-01-19 17:43:52',NULL,'1',9,1,NULL),(79,NULL,'2014-01-26 20:22:23','2014-01-26 20:22:23',NULL,'1',9,1,NULL),(80,NULL,'2014-01-26 20:50:04','2014-01-26 20:50:04',NULL,'1',17,1,NULL),(81,NULL,'2014-01-26 20:58:00','2014-01-26 20:58:14',NULL,'1',17,1,NULL),(82,NULL,'2014-01-26 20:59:50','2014-01-26 21:01:12',NULL,'1',28,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:11:\"btPlainText\";s:8:\"_tableat\";s:11:\"btPlainText\";s:6:\"_where\";s:6:\"bID=82\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"82\";i:1;s:16:\"Getting in touch\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"82\";s:7:\"content\";s:16:\"Getting in touch\";}'),(83,NULL,'2014-01-26 21:00:35','2014-01-26 21:00:42',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=83\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"83\";i:1;s:0:\"\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"83\";s:7:\"content\";s:0:\"\";}'),(84,NULL,'2014-01-26 21:07:38','2014-01-26 21:08:11',NULL,'1',9,1,NULL),(85,NULL,'2014-01-26 21:23:14','2014-01-26 21:23:14',NULL,'1',9,2,NULL),(86,NULL,'2014-01-26 21:28:21','2014-01-26 21:28:21',NULL,'1',17,1,NULL),(87,NULL,'2014-01-26 21:29:46','2014-01-26 21:30:41',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=87\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"87\";i:1;s:246:\"<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"87\";s:7:\"content\";s:246:\"<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>\";}'),(88,NULL,'2014-01-26 22:21:19','2014-01-26 22:21:19',NULL,'1',17,1,NULL),(89,NULL,'2014-01-26 22:21:36','2014-01-26 22:21:36',NULL,'1',17,1,NULL),(90,NULL,'2014-01-26 22:39:46','2014-01-26 22:39:59',NULL,'1',9,1,NULL),(91,NULL,'2014-01-26 22:53:50','2014-01-26 22:53:50',NULL,'1',17,1,NULL),(92,NULL,'2014-01-27 01:02:09','2014-01-27 01:02:09',NULL,'1',17,1,NULL),(98,NULL,'2014-01-29 16:51:18','2014-01-29 16:52:42',NULL,'1',9,1,NULL),(119,NULL,'2014-06-15 16:15:50','2014-06-15 16:15:50',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"119\";i:1;s:230:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of July 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"119\";s:7:\"content\";s:230:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of July 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}'),(99,NULL,'2014-01-29 16:58:31','2014-01-29 16:58:31',NULL,'1',9,1,NULL),(120,NULL,'2014-07-10 01:01:51','2014-07-10 01:04:01',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"120\";i:1;s:574:\"<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 14th of October 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We have however an evening workshop on Testing taking place on Tuesday, 15th July (see the <a href=\"http://www.meetup.com/CodeHub-Bristol/events/182735742/\">Meetup page</a>), and there will be a one-day JavaScript workshop on Saturday, the 13th September 2014 - signup to be added to Meetup.com soon. </p>\r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"120\";s:7:\"content\";s:574:\"<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 14th of October 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We have however an evening workshop on Testing taking place on Tuesday, 15th July (see the <a href=\"http://www.meetup.com/CodeHub-Bristol/events/182735742/\">Meetup page</a>), and there will be a one-day JavaScript workshop on Saturday, the 13th September 2014 - signup to be added to Meetup.com soon. </p>\r\n\r\n\";}'),(114,NULL,'2014-03-20 19:14:02','2014-03-20 19:14:02',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"114\";i:1;s:689:\"<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. \r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n\r\n<div class=\"learnings\">\r\n  <h2>Data Visualisation</h2>\r\n  <div class=\"inner margins-vert\">\r\nWe have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".\r\n  </div>\r\n</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"114\";s:7:\"content\";s:689:\"<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. \r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n\r\n<div class=\"learnings\">\r\n  <h2>Data Visualisation</h2>\r\n  <div class=\"inner margins-vert\">\r\nWe have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".\r\n  </div>\r\n</div>\";}'),(113,NULL,'2014-03-12 01:37:54','2014-03-12 01:37:54',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"113\";i:1;s:231:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of April 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"113\";s:7:\"content\";s:231:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of April 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}'),(110,NULL,'2014-01-31 18:45:23','2014-01-31 18:45:23',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:7:\"bID=110\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"110\";i:1;s:186:\"<p>This page shows just some of our members but we plan to include profiles of all those who take part on a regular basis. We will also at some point add filtering for topics/skills.</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"110\";s:7:\"content\";s:186:\"<p>This page shows just some of our members but we plan to include profiles of all those who take part on a regular basis. We will also at some point add filtering for topics/skills.</p>\";}'),(111,NULL,'2014-02-11 23:08:02','2014-02-11 23:08:02',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:7:\"bID=111\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"111\";i:1;s:232:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 11th of March 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"111\";s:7:\"content\";s:232:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 11th of March 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}'),(112,NULL,'2014-03-04 23:11:58','2014-03-04 23:12:38',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:7:\"bID=112\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"112\";i:1;s:409:\"<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I have mostly been working from home (although that has changed recently!), which can become a bit solitary and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"112\";s:7:\"content\";s:409:\"<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I have mostly been working from home (although that has changed recently!), which can become a bit solitary and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>\";}'),(100,NULL,'2014-01-29 23:34:14','2014-01-29 23:34:14',NULL,'1',17,1,NULL),(116,NULL,'2014-04-24 00:11:05','2014-04-24 00:11:25',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"116\";i:1;s:356:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 13th of May 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We will also have some evening sessions in the future, and will start with a social meetup on the 29th of April at 7pm.</p>\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"116\";s:7:\"content\";s:356:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 13th of May 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We will also have some evening sessions in the future, and will start with a social meetup on the 29th of April at 7pm.</p>\r\n\";}'),(117,NULL,'2014-05-07 00:10:50','2014-05-14 22:54:33',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"117\";i:1;s:231:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 10th of June 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"117\";s:7:\"content\";s:231:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 10th of June 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}'),(118,NULL,'2014-06-15 15:52:20','2014-06-15 15:52:20',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"118\";i:1;s:230:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of July 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"118\";s:7:\"content\";s:230:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of July 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}'),(115,NULL,'2014-04-12 03:07:15','2014-04-12 03:07:15',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"115\";i:1;s:230:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 13th of May 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"115\";s:7:\"content\";s:230:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 13th of May 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n\";}'),(93,NULL,'2014-01-27 03:58:33','2014-01-27 03:58:33',NULL,'1',9,1,NULL),(94,NULL,'2014-01-27 20:04:44','2014-01-27 20:05:14',NULL,'1',9,2,NULL),(95,NULL,'2014-01-27 20:06:50','2014-01-27 20:06:50',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=95\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"95\";i:1;s:445:\"<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"95\";s:7:\"content\";s:445:\"<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>\";}'),(96,NULL,'2014-01-27 21:13:57','2014-01-27 21:13:57',NULL,'1',17,1,NULL),(97,NULL,'2014-01-27 21:19:57','2014-01-27 21:19:57',NULL,'1',9,2,NULL),(101,NULL,'2014-01-29 23:34:49','2014-01-29 23:34:49',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:7:\"bID=101\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"101\";i:1;s:17:\"<h2>Projects</h2>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"101\";s:7:\"content\";s:17:\"<h2>Projects</h2>\";}'),(102,NULL,'2014-01-29 23:35:24','2014-01-29 23:35:24',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:7:\"bID=102\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"102\";i:1;s:750:\"<h2>Following a JavaScript Roadmap</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nWe started studying Javascript according to this post. http://javascriptissexy.com/how-to-learn-javascript-properly/\r\nCommitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.\r\n  Some text\r\n  </div>\r\n</div>\r\n\r\n<h2>Getting set up with Git and GitHub</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nRob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.\r\n  </div>\r\n</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"102\";s:7:\"content\";s:750:\"<h2>Following a JavaScript Roadmap</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nWe started studying Javascript according to this post. http://javascriptissexy.com/how-to-learn-javascript-properly/\r\nCommitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.\r\n  Some text\r\n  </div>\r\n</div>\r\n\r\n<h2>Getting set up with Git and GitHub</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nRob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.\r\n  </div>\r\n</div>\";}'),(103,NULL,'2014-01-29 23:36:24','2014-01-29 23:36:24',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:7:\"bID=103\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"103\";i:1;s:16:\"<h2>Members</h2>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"103\";s:7:\"content\";s:16:\"<h2>Members</h2>\";}'),(104,NULL,'2014-01-29 23:49:12','2014-01-29 23:49:12',NULL,'1',9,1,NULL),(105,NULL,'2014-01-29 23:49:41','2014-01-29 23:49:41',NULL,'1',9,1,NULL),(106,NULL,'2014-01-30 00:10:39','2014-01-30 00:10:51',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:7:\"bID=106\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"106\";i:1;s:786:\"<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. For the upcoming one it will be Unix File Permissions and Ownership, as well as Chrome Dev Tools.\r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n\r\n<div class=\"learnings\">\r\n  <h2>Data Visualisation</h2>\r\n  <div class=\"inner margins-vert\">\r\nWe have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".\r\n  </div>\r\n</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"106\";s:7:\"content\";s:786:\"<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. For the upcoming one it will be Unix File Permissions and Ownership, as well as Chrome Dev Tools.\r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n\r\n<div class=\"learnings\">\r\n  <h2>Data Visualisation</h2>\r\n  <div class=\"inner margins-vert\">\r\nWe have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".\r\n  </div>\r\n</div>\";}'),(107,NULL,'2014-01-31 13:40:18','2014-01-31 13:41:02',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:7:\"bID=107\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"107\";i:1;s:409:\"<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I have mostly been working from home (although that has changed recently!), which can become a bit solitary and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"107\";s:7:\"content\";s:409:\"<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I have mostly been working from home (although that has changed recently!), which can become a bit solitary and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>\";}'),(108,NULL,'2014-01-31 13:48:44','2014-01-31 13:48:44',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:7:\"bID=108\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"108\";i:1;s:432:\"<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"108\";s:7:\"content\";s:432:\"<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>\";}'),(121,NULL,'2014-07-14 02:06:52','2014-07-14 02:06:52',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"121\";i:1;s:352:\"<p>CodeHub (OpenTechSchool Bristol) is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is part of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"121\";s:7:\"content\";s:352:\"<p>CodeHub (OpenTechSchool Bristol) is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is part of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>\";}'),(122,NULL,'2014-07-24 01:12:41','2014-07-24 01:12:41',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"122\";i:1;s:337:\"<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is also a chapter of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"122\";s:7:\"content\";s:337:\"<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is also a chapter of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>\";}'),(123,NULL,'2014-07-24 01:15:17','2014-07-24 01:15:17',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"123\";i:1;s:433:\"<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 14th of October 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We will also be running a <a href=\"http://www.meetup.com/CodeHub-Bristol/events/196402012/\">one-day JavaScript workshop</a> on Saturday, the 13th September 2014</p>\r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"123\";s:7:\"content\";s:433:\"<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 14th of October 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We will also be running a <a href=\"http://www.meetup.com/CodeHub-Bristol/events/196402012/\">one-day JavaScript workshop</a> on Saturday, the 13th September 2014</p>\r\n\r\n\";}'),(124,NULL,'2014-10-17 00:27:05','2014-10-17 00:27:05',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"124\";i:1;s:372:\"<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 11th of November 2014, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"124\";s:7:\"content\";s:372:\"<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 11th of November 2014, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n\";}'),(125,NULL,'2014-10-17 01:33:04','2014-10-17 01:33:18',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"125\";i:1;s:417:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 11th of November 2014, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street. Unlike previous sessions, this will most likely take place in the evening.</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"125\";s:7:\"content\";s:417:\"<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 11th of November 2014, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street. Unlike previous sessions, this will most likely take place in the evening.</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n\";}'),(126,NULL,'2014-11-22 00:28:19','2014-11-22 00:28:19',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"126\";i:1;s:425:\"<p>We are normally meeting on the second Tuesday of every month. Our next session however will be on Thursday, the 4th of December 2014, at <a href=\"http://www.yha.org.uk/hostel/bristol\">YHA Bristol</a> at Narrow Quay. Unlike previous sessions, this will take place in the evening  (at 7pm).</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"126\";s:7:\"content\";s:425:\"<p>We are normally meeting on the second Tuesday of every month. Our next session however will be on Thursday, the 4th of December 2014, at <a href=\"http://www.yha.org.uk/hostel/bristol\">YHA Bristol</a> at Narrow Quay. Unlike previous sessions, this will take place in the evening  (at 7pm).</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n\";}'),(127,NULL,'2014-12-16 11:59:41','2014-12-16 11:59:41',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"127\";i:1;s:244:\"<p>We are normally meeting once a month, and also run hack nights on Tuesday evenings roughly every two weeks.</p><p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a></p>\r\n\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"127\";s:7:\"content\";s:244:\"<p>We are normally meeting once a month, and also run hack nights on Tuesday evenings roughly every two weeks.</p><p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a></p>\r\n\r\n\";}'),(128,NULL,'2015-01-16 17:29:05','2015-01-16 17:33:55',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"128\";i:1;s:941:\"<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>\r\n<p>There are a few more places where you can find us on the web:</p>\r\n<ul>\r\n<li>\r\nOur <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.\r\n</li>\r\n  <li>\r\n    The <a href=\"http://discourse.codehub.org.uk\">CodeHub Discourse</a> for suggestions for talks and topics, posting resources etc </li>\r\n   <li>\r\nand our <a href=\"http://github.com/CodeHubOrg\">GitHub Account</a> with repos of our sites and workshops\r\n   </li>\r\n\r\n</ul>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"128\";s:7:\"content\";s:941:\"<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>\r\n<p>There are a few more places where you can find us on the web:</p>\r\n<ul>\r\n<li>\r\nOur <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.\r\n</li>\r\n  <li>\r\n    The <a href=\"http://discourse.codehub.org.uk\">CodeHub Discourse</a> for suggestions for talks and topics, posting resources etc </li>\r\n   <li>\r\nand our <a href=\"http://github.com/CodeHubOrg\">GitHub Account</a> with repos of our sites and workshops\r\n   </li>\r\n\r\n</ul>\";}'),(129,NULL,'2015-01-16 17:30:43','2015-01-16 17:30:43',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"129\";i:1;s:333:\"<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>, or contact us through the Meetup group. </p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"129\";s:7:\"content\";s:333:\"<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>, or contact us through the Meetup group. </p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>\";}'),(130,NULL,'2015-01-16 19:36:20','2015-01-16 19:36:20',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"130\";i:1;s:436:\"<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. \r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"130\";s:7:\"content\";s:436:\"<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. \r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n\";}'),(131,NULL,'2015-02-28 11:19:23','2015-02-28 11:19:23',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:3:\"131\";i:1;s:63:\"<p>Welcome, thanks for contributing to the codehub website.</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:3:\"131\";s:7:\"content\";s:63:\"<p>Welcome, thanks for contributing to the codehub website.</p>\";}');
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BoilerplateCrudCategories`
--

DROP TABLE IF EXISTS `BoilerplateCrudCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BoilerplateCrudCategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BoilerplateCrudCategories`
--

LOCK TABLES `BoilerplateCrudCategories` WRITE;
/*!40000 ALTER TABLE `BoilerplateCrudCategories` DISABLE KEYS */;
INSERT INTO `BoilerplateCrudCategories` VALUES (1,'Bedminster','Things you find in Bedminster'),(2,'Redland','What you find in Redland');
/*!40000 ALTER TABLE `BoilerplateCrudCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BoilerplateCrudWidgets`
--

DROP TABLE IF EXISTS `BoilerplateCrudWidgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BoilerplateCrudWidgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryId` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `isSomething` tinyint(4) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BoilerplateCrudWidgets`
--

LOCK TABLES `BoilerplateCrudWidgets` WRITE;
/*!40000 ALTER TABLE `BoilerplateCrudWidgets` DISABLE KEYS */;
INSERT INTO `BoilerplateCrudWidgets` VALUES (1,1,'Tobacco Factory',1,5.5),(5,1,'Rick Hurst',1,10),(3,2,'32 Roslyn Road',1,10);
/*!40000 ALTER TABLE `BoilerplateCrudWidgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (3,1,3,1),(3,1,4,2),(4,1,3,3),(4,1,4,4),(5,1,3,5),(5,1,4,6),(6,1,3,7),(7,1,3,8),(7,1,4,9),(8,1,3,10),(8,1,4,11),(9,1,3,12),(9,1,4,13),(11,1,3,14),(11,1,4,15),(12,1,3,16),(12,1,4,17),(13,1,3,18),(13,1,4,19),(14,1,3,21),(14,1,4,22),(14,1,5,20),(15,1,3,23),(16,1,3,24),(16,1,4,25),(17,1,3,26),(17,1,4,27),(18,1,3,28),(18,1,4,29),(19,1,3,30),(19,1,4,32),(19,1,5,31),(20,1,3,33),(20,1,4,35),(20,1,5,34),(21,1,3,36),(21,1,4,37),(22,1,3,38),(23,1,3,39),(23,1,4,40),(24,1,3,41),(24,1,4,42),(25,1,3,43),(25,1,4,44),(26,1,3,45),(26,1,4,46),(28,1,3,47),(28,1,4,48),(29,1,3,49),(30,1,3,50),(31,1,3,51),(32,1,3,52),(32,1,4,53),(34,1,3,54),(34,1,4,55),(35,1,3,56),(35,1,4,57),(36,1,3,58),(37,1,4,59),(38,1,4,60),(40,1,3,61),(40,1,4,62),(41,1,4,63),(42,1,5,64),(42,1,8,65),(43,1,3,66),(43,1,4,67),(44,1,5,68),(45,1,5,69),(46,1,3,70),(47,1,3,71),(48,1,3,72),(49,1,3,73),(50,1,3,74),(51,1,5,75),(53,1,3,76),(54,1,3,77),(55,1,3,78),(56,1,3,79),(57,1,3,80),(58,1,3,81),(60,1,3,82),(61,1,3,83),(62,1,3,84),(63,1,3,85),(64,1,3,86),(65,1,3,87),(67,1,3,88),(68,1,3,89),(69,1,3,90),(71,1,3,91),(72,1,3,92),(73,1,3,93),(74,1,3,94),(77,1,3,95),(78,1,3,96),(79,1,3,97),(80,1,3,98),(82,1,3,99),(83,1,3,100),(84,1,3,101),(85,1,3,102),(86,1,3,103),(87,1,3,104),(88,1,3,105),(89,1,3,106),(90,1,3,107),(91,1,8,108),(92,1,3,109),(93,1,3,110),(94,1,3,111),(95,1,3,112),(96,1,3,113),(97,1,3,114),(99,1,3,115),(100,1,3,116),(105,1,5,117),(106,1,5,118),(106,1,8,119),(115,2,5,161),(116,2,5,162),(120,2,5,122),(120,3,5,128),(120,4,5,129),(120,5,5,129),(120,6,5,129),(120,7,5,163),(120,8,5,164),(120,9,5,164),(120,10,5,164),(120,11,5,164),(120,12,5,164),(120,13,5,165),(132,2,5,120),(132,3,5,121);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  `ak_faq_section` tinyint(4) DEFAULT '0',
  `ak_faq_tags` text,
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (3,NULL,NULL,'blog, blogging','icon-book',0,0,NULL,0,0,0,NULL),(4,NULL,NULL,'new blog, write blog, blogging','icon-pencil',0,0,NULL,0,0,0,NULL),(5,NULL,NULL,'blog drafts, composer','icon-book',0,0,NULL,0,0,0,NULL),(6,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,0,0,0,NULL),(7,NULL,NULL,'pages, add page, delete page, copy, move, alias','icon-home',0,0,NULL,0,0,0,NULL),(8,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk','icon-road',0,0,NULL,0,0,0,NULL),(9,NULL,NULL,'find page, search page, search, find, pages, sitemap','icon-search',0,0,NULL,0,0,0,NULL),(11,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute','icon-picture',0,0,NULL,0,0,0,NULL),(12,NULL,NULL,'file, file attributes, title, attribute, description, rename','icon-cog',0,0,NULL,0,0,0,NULL),(13,NULL,NULL,'files, category, categories','icon-list-alt',0,0,NULL,0,0,0,NULL),(14,NULL,NULL,'new file set','icon-plus-sign',1,0,NULL,0,0,0,NULL),(15,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,0,0,0,NULL),(16,NULL,NULL,'find, search, people, delete user, remove user, change password, password','icon-user',0,0,NULL,0,0,0,NULL),(17,NULL,NULL,'user, group, people, permissions, access, expire','icon-globe',0,0,NULL,0,0,0,NULL),(18,NULL,NULL,'user attributes, user data, gather data, registration data','icon-cog',0,0,NULL,0,0,0,NULL),(19,NULL,NULL,'new user, create','icon-plus-sign',1,0,NULL,0,0,0,NULL),(20,NULL,NULL,'new user group, new group, group, create','icon-plus',1,0,NULL,0,0,0,NULL),(21,NULL,NULL,'group set','icon-list',0,0,NULL,0,0,0,NULL),(22,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,0,0,0,NULL),(23,NULL,NULL,'hits, pageviews, visitors, activity','icon-signal',0,0,NULL,0,0,0,NULL),(24,NULL,NULL,'forms, questions, response, data','icon-briefcase',0,0,NULL,0,0,0,NULL),(25,NULL,NULL,'questions, quiz, response','icon-tasks',0,0,NULL,0,0,0,NULL),(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history','icon-time',0,0,NULL,0,0,0,NULL),(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css','icon-font',0,0,NULL,0,0,0,NULL),(29,NULL,NULL,'theme',NULL,0,0,NULL,0,0,0,NULL),(30,NULL,NULL,'page types',NULL,0,0,NULL,0,0,0,NULL),(31,NULL,NULL,'custom theme, change theme, custom css, css',NULL,0,0,NULL,0,0,0,NULL),(32,NULL,NULL,'page type defaults, global block, global area, starter, template','icon-file',0,0,NULL,0,0,0,NULL),(34,NULL,NULL,'page attributes, custom','icon-cog',0,0,NULL,0,0,0,NULL),(35,NULL,NULL,'single, page, custom, application','icon-wrench',0,0,NULL,0,0,0,NULL),(36,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,0,0,0,NULL),(37,NULL,NULL,NULL,'icon-list',0,0,NULL,0,0,0,NULL),(38,NULL,NULL,NULL,'icon-user',0,0,NULL,0,0,0,NULL),(40,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo','icon-th',0,0,NULL,0,0,0,NULL),(41,NULL,NULL,NULL,'icon-lock',0,0,NULL,0,0,0,NULL),(42,NULL,NULL,NULL,NULL,1,0,NULL,1,0,0,NULL),(43,NULL,NULL,'block, refresh, custom','icon-wrench',0,0,NULL,0,0,0,NULL),(44,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0,NULL),(45,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0,NULL),(46,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,0,0,0,NULL),(47,NULL,NULL,'update, upgrade',NULL,0,0,NULL,0,0,0,NULL),(48,NULL,NULL,'concrete5.org, my account, marketplace',NULL,0,0,NULL,0,0,0,NULL),(49,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,0,0,0,NULL),(50,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,0,0,0,NULL),(51,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0,NULL),(53,NULL,NULL,'website name, title',NULL,0,0,NULL,0,0,0,NULL),(54,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,0,0,0,NULL),(55,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',NULL,0,0,NULL,0,0,0,NULL),(56,NULL,NULL,'translate, translation, internationalization, multilingual',NULL,0,0,NULL,0,0,0,NULL),(57,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,0,0,0,NULL),(58,NULL,NULL,'interface, quick nav, dashboard background, background image',NULL,0,0,NULL,0,0,0,NULL),(60,NULL,NULL,'vanity, pretty url, seo, pageview, view',NULL,0,0,NULL,0,0,0,NULL),(61,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,0,0,0,NULL),(62,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,0,0,0,NULL),(63,NULL,NULL,'pretty, slug',NULL,0,0,NULL,0,0,0,NULL),(64,NULL,NULL,'turn off statistics, tracking, statistics, pageviews, hits',NULL,0,0,NULL,0,0,0,NULL),(65,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,0,0,0,NULL),(67,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,0,NULL),(68,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,0,NULL),(69,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,0,0,0,NULL),(71,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,0,0,0,NULL),(72,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,0,0,0,NULL),(73,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,0,0,0,NULL),(74,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,0,0,0,NULL),(77,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,0,0,0,NULL),(78,NULL,NULL,'security, registration',NULL,0,0,NULL,0,0,0,NULL),(79,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,0,0,0,NULL),(80,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,0,0,0,NULL),(82,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,0,0,0,NULL),(83,NULL,NULL,'member profile, member page, community, forums, social, avatar',NULL,0,0,NULL,0,0,0,NULL),(84,NULL,NULL,'signup, new user, community',NULL,0,0,NULL,0,0,0,NULL),(85,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,0,0,0,NULL),(86,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,0,0,0,NULL),(87,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,0,0,0,NULL),(88,NULL,NULL,'attribute configuration',NULL,0,0,NULL,0,0,0,NULL),(89,NULL,NULL,'attributes, sets',NULL,0,0,NULL,0,0,0,NULL),(90,NULL,NULL,'attributes, types',NULL,0,0,NULL,0,0,0,NULL),(91,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0,NULL),(92,NULL,NULL,'overrides, system info, debug, support, help',NULL,0,0,NULL,0,0,0,NULL),(93,NULL,NULL,'errors, exceptions, develop, support, help',NULL,0,0,NULL,0,0,0,NULL),(94,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',NULL,0,0,NULL,0,0,0,NULL),(95,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,0,0,0,NULL),(96,NULL,NULL,'network, proxy server',NULL,0,0,NULL,0,0,0,NULL),(97,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,0,0,0,NULL),(99,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,0,0,0,NULL),(100,NULL,NULL,'export, database, xml, starting, points, schema, refresh, custom, tables',NULL,0,0,NULL,0,0,0,NULL),(105,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0,NULL),(106,NULL,NULL,NULL,NULL,1,0,NULL,1,0,0,NULL),(1,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,NULL),(125,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,NULL),(126,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,NULL),(123,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,NULL),(124,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,NULL),(128,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,NULL),(131,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,NULL),(132,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0,NULL),(120,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0,NULL),(133,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,NULL),(134,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,NULL),(112,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,NULL),(135,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,NULL),(115,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0,NULL),(116,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0,NULL);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaLayouts`
--

DROP TABLE IF EXISTS `CollectionVersionAreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaLayouts`
--

LOCK TABLES `CollectionVersionAreaLayouts` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (105,1,1,'Header',0,1,0,0),(105,1,2,'Column 1',0,1,0,0),(105,1,3,'Column 2',0,1,0,0),(105,1,4,'Column 3',0,1,0,0),(105,1,5,'Column 4',0,1,0,0),(106,1,6,'Primary',0,1,0,0),(106,1,7,'Primary',1,1,0,0),(106,1,8,'Secondary 1',0,1,0,0),(106,1,9,'Secondary 2',0,1,0,0),(106,1,10,'Secondary 3',0,1,0,0),(106,1,11,'Secondary 4',0,1,0,0),(106,1,12,'Secondary 5',0,1,0,0),(123,2,13,'Main',0,1,0,0),(123,4,14,'Main',0,1,0,0),(124,2,15,'Main',0,1,0,0),(125,2,16,'Profile nav',0,1,0,0),(125,2,17,'Profile nav',1,1,0,0),(126,2,18,'Profile nav',0,1,0,0),(126,2,19,'Profile nav',1,1,0,0),(1,5,20,'Intro',0,1,0,0),(1,5,21,'Heading For-you',0,1,0,0),(1,5,22,'Heading For-you',1,1,0,0),(1,6,20,'Intro',0,0,0,0),(1,6,24,'Heading For-you',1,1,0,0),(1,6,23,'Heading For-you',0,1,0,0),(1,7,20,'Intro',0,0,0,0),(1,8,27,'Heading For-you',0,1,0,0),(1,8,20,'Intro',0,0,0,0),(1,8,28,'For-you',0,1,0,0),(1,9,20,'Intro',0,0,0,0),(1,9,27,'Heading For-you',0,0,0,0),(1,9,30,'Heading Learnings',0,1,0,0),(1,9,29,'For-you',0,1,0,0),(1,10,20,'Intro',0,0,0,0),(1,10,27,'Heading For-you',0,0,0,0),(1,10,29,'For-you',0,0,0,0),(1,10,32,'Heading Meeting',0,1,0,0),(1,10,31,'Heading Learnings',0,1,0,0),(1,11,20,'Intro',0,0,0,0),(1,11,27,'Heading For-you',0,0,0,0),(1,11,29,'For-you',0,0,0,0),(1,11,31,'Heading Learnings',0,0,0,0),(1,11,32,'Heading Meeting',0,0,0,0),(1,11,33,'Learnings',0,1,0,0),(1,11,34,'Meeting',0,1,0,0),(1,11,35,'Contact',0,1,0,0),(1,11,36,'Heading This-site',0,1,0,0),(1,11,37,'This-site',0,1,0,0),(1,11,38,'Katja',0,1,0,0),(1,11,39,'Gicela',0,1,0,0),(1,11,40,'Heading Organisers',0,1,0,0),(125,3,16,'Profile nav',0,0,0,0),(125,3,17,'Profile nav',1,0,0,0),(125,3,41,'Main',0,1,0,0),(125,3,42,'Secondary Content',0,1,0,0),(128,2,43,'Main',0,1,0,0),(125,4,16,'Profile nav',0,0,0,0),(125,4,41,'Main',0,0,0,0),(125,4,42,'Secondary Content',0,0,0,0),(125,4,44,'Profile nav',1,1,0,0),(126,3,18,'Profile nav',0,0,0,0),(112,2,45,'Main',0,1,0,0),(135,2,46,'Main',0,1,0,0),(133,2,47,'Main',0,1,0,0),(112,4,48,'experience',0,0,0,0),(112,3,48,'experience',0,1,0,0),(112,3,49,'learning',0,1,0,0),(112,3,50,'Main',0,1,0,0),(112,4,49,'learning',0,0,0,0),(112,4,50,'Main',0,0,0,0),(112,4,51,'experience-admin',0,1,0,0),(112,5,48,'experience',0,0,0,0),(112,5,49,'learning',0,0,0,0),(112,6,48,'experience',0,0,0,0),(112,5,51,'experience-admin',0,0,0,0),(112,5,52,'learning-admin',0,1,0,0),(112,5,53,'Main',0,1,0,0),(112,6,49,'learning',0,0,0,0),(112,6,51,'experience-admin',0,0,0,0),(112,6,52,'learning-admin',0,0,0,0),(112,6,53,'Main',0,0,0,0),(112,6,54,'experience-gicela',0,1,0,0),(112,6,55,'Main-gicela',0,1,0,0),(112,6,56,'learning-gicela',0,1,0,0),(112,7,48,'experience',0,0,0,0),(112,7,49,'learning',0,0,0,0),(112,7,51,'experience-admin',0,0,0,0),(112,7,52,'learning-admin',0,0,0,0),(112,7,53,'Main',0,0,0,0),(112,7,54,'experience-gicela',0,0,0,0),(112,7,55,'Main-gicela',0,0,0,0),(112,7,56,'learning-gicela',0,0,0,0),(112,7,57,'Main-admin',0,1,0,0),(112,8,48,'experience',0,0,0,0),(112,8,49,'learning',0,0,0,0),(112,8,51,'experience-admin',0,0,0,0),(112,8,52,'learning-admin',0,0,0,0),(112,8,53,'Main',0,0,0,0),(112,8,54,'experience-gicela',0,0,0,0),(112,8,55,'Main-gicela',0,0,0,0),(112,8,56,'learning-gicela',0,0,0,0),(112,8,57,'Main-admin',0,0,0,0),(112,8,58,'Main-sam',0,1,0,0),(112,8,59,'experience-sam',0,1,0,0),(112,8,60,'learning-sam',0,1,0,0),(112,9,48,'experience',0,0,0,0),(112,9,59,'experience-sam',0,0,0,0),(112,9,58,'Main-sam',0,0,0,0),(112,9,57,'Main-admin',0,0,0,0),(112,9,56,'learning-gicela',0,0,0,0),(112,9,55,'Main-gicela',0,0,0,0),(112,9,54,'experience-gicela',0,0,0,0),(112,9,53,'Main',0,0,0,0),(112,9,52,'learning-admin',0,0,0,0),(112,9,51,'experience-admin',0,0,0,0),(112,9,49,'learning',0,0,0,0),(112,9,60,'learning-sam',0,0,0,0),(112,9,61,'Main-rob',0,1,0,0),(112,9,62,'experience-rob',0,1,0,0),(112,9,63,'learning-rob',0,1,0,0),(112,10,48,'experience',0,0,0,0),(112,10,62,'experience-rob',0,0,0,0),(112,10,61,'Main-rob',0,0,0,0),(112,10,60,'learning-sam',0,0,0,0),(112,10,59,'experience-sam',0,0,0,0),(112,10,58,'Main-sam',0,0,0,0),(112,10,57,'Main-admin',0,0,0,0),(112,10,56,'learning-gicela',0,0,0,0),(112,10,55,'Main-gicela',0,0,0,0),(112,10,54,'experience-gicela',0,0,0,0),(112,10,53,'Main',0,0,0,0),(112,10,52,'learning-admin',0,0,0,0),(112,10,51,'experience-admin',0,0,0,0),(112,10,49,'learning',0,0,0,0),(112,10,63,'learning-rob',0,0,0,0),(112,10,64,'Main-gabriel',0,1,0,0),(112,10,65,'experience-gabriel',0,1,0,0),(112,10,66,'learning-gabriel',0,1,0,0),(1,12,20,'Intro',0,0,0,0),(1,12,39,'Gicela',0,0,0,0),(1,12,38,'Katja',0,0,0,0),(133,6,70,'Main',0,0,0,0),(1,12,35,'Contact',0,0,0,0),(133,3,68,'Main',0,1,0,0),(1,12,33,'Learnings',0,0,0,0),(1,12,32,'Heading Meeting',0,0,0,0),(1,12,31,'Heading Learnings',0,0,0,0),(1,12,29,'For-you',0,0,0,0),(1,12,27,'Heading For-you',0,0,0,0),(1,12,40,'Heading Organisers',0,0,0,0),(1,12,67,'Meeting',0,1,0,0),(133,4,69,'Main',0,1,0,0),(133,5,70,'Main',0,1,0,0),(133,7,72,'Secondary Content',0,1,0,0),(133,7,71,'Main',0,1,0,0),(133,8,74,'Secondary Content',0,1,0,0),(133,9,73,'Main',0,0,0,0),(133,8,73,'Main',0,1,0,0),(133,10,73,'Main',0,0,0,0),(133,9,75,'Secondary Content',0,1,0,0),(133,11,78,'Secondary Content',0,1,0,0),(133,10,76,'Secondary Content',0,1,0,0),(112,11,48,'experience',0,0,0,0),(133,11,77,'Main',0,1,0,0),(112,11,65,'experience-gabriel',0,0,0,0),(112,11,64,'Main-gabriel',0,0,0,0),(112,11,63,'learning-rob',0,0,0,0),(112,11,49,'learning',0,0,0,0),(112,11,51,'experience-admin',0,0,0,0),(112,11,52,'learning-admin',0,0,0,0),(112,11,53,'Main',0,0,0,0),(112,11,54,'experience-gicela',0,0,0,0),(112,11,55,'Main-gicela',0,0,0,0),(112,11,56,'learning-gicela',0,0,0,0),(1,13,20,'Intro',0,0,0,0),(112,11,58,'Main-sam',0,0,0,0),(112,11,59,'experience-sam',0,0,0,0),(112,11,60,'learning-sam',0,0,0,0),(112,11,61,'Main-rob',0,0,0,0),(112,11,62,'experience-rob',0,0,0,0),(112,11,66,'learning-gabriel',0,0,0,0),(112,11,79,'Main-admin',0,1,0,0),(133,12,78,'Secondary Content',0,0,0,0),(1,13,83,'Katja',0,1,0,0),(1,13,84,'Gicela',0,1,0,0),(1,14,20,'Intro',0,0,0,0),(1,13,81,'Meeting',0,1,0,0),(1,13,32,'Heading Meeting',0,0,0,0),(1,13,31,'Heading Learnings',0,0,0,0),(1,13,29,'For-you',0,0,0,0),(1,13,27,'Heading For-you',0,0,0,0),(1,13,82,'Heading Organisers',0,1,0,0),(1,13,80,'Learnings',0,1,0,0),(133,12,85,'Main',0,1,0,0),(1,14,83,'Katja',0,0,0,0),(1,14,82,'Heading Organisers',0,0,0,0),(1,16,27,'Heading For-you',0,0,0,0),(1,14,80,'Learnings',0,0,0,0),(1,14,32,'Heading Meeting',0,0,0,0),(1,14,31,'Heading Learnings',0,0,0,0),(1,14,29,'For-you',0,0,0,0),(1,14,27,'Heading For-you',0,0,0,0),(1,14,84,'Gicela',0,0,0,0),(1,14,86,'Meeting',0,1,0,0),(1,15,84,'Gicela',0,0,0,0),(1,15,83,'Katja',0,0,0,0),(1,15,82,'Heading Organisers',0,0,0,0),(1,15,80,'Learnings',0,0,0,0),(1,15,32,'Heading Meeting',0,0,0,0),(1,15,31,'Heading Learnings',0,0,0,0),(1,15,29,'For-you',0,0,0,0),(1,15,27,'Heading For-you',0,0,0,0),(1,15,86,'Meeting',0,0,0,0),(1,15,87,'Intro',0,1,0,0),(1,16,89,'Learnings',0,1,0,0),(1,16,84,'Gicela',0,0,0,0),(1,16,83,'Katja',0,0,0,0),(1,16,82,'Heading Organisers',0,0,0,0),(1,17,27,'Heading For-you',0,0,0,0),(1,16,32,'Heading Meeting',0,0,0,0),(1,16,31,'Heading Learnings',0,0,0,0),(1,16,29,'For-you',0,0,0,0),(1,16,87,'Intro',0,0,0,0),(1,16,88,'Meeting',0,1,0,0),(1,17,88,'Meeting',0,0,0,0),(1,17,87,'Intro',0,0,0,0),(1,18,27,'Heading For-you',0,0,0,0),(1,17,83,'Katja',0,0,0,0),(1,17,82,'Heading Organisers',0,0,0,0),(1,17,32,'Heading Meeting',0,0,0,0),(1,17,31,'Heading Learnings',0,0,0,0),(1,17,29,'For-you',0,0,0,0),(1,17,89,'Learnings',0,0,0,0),(1,17,90,'Gicela',0,1,0,0),(1,19,27,'Heading For-you',0,0,0,0),(1,18,88,'Meeting',0,0,0,0),(1,18,87,'Intro',0,0,0,0),(1,18,83,'Katja',0,0,0,0),(1,18,82,'Heading Organisers',0,0,0,0),(1,18,32,'Heading Meeting',0,0,0,0),(1,18,31,'Heading Learnings',0,0,0,0),(1,18,29,'For-you',0,0,0,0),(1,18,90,'Gicela',0,0,0,0),(1,18,91,'Learnings',0,1,0,0),(1,19,90,'Gicela',0,0,0,0),(1,19,29,'For-you',0,0,0,0),(1,19,31,'Heading Learnings',0,0,0,0),(1,19,32,'Heading Meeting',0,0,0,0),(1,19,82,'Heading Organisers',0,0,0,0),(1,19,83,'Katja',0,0,0,0),(1,19,87,'Intro',0,0,0,0),(1,19,88,'Meeting',0,0,0,0),(1,20,27,'Heading For-you',0,0,0,0),(1,19,92,'Learnings',0,1,0,0),(133,13,78,'Secondary Content',0,0,0,0),(1,20,88,'Meeting',0,0,0,0),(1,20,87,'Intro',0,0,0,0),(1,20,83,'Katja',0,0,0,0),(1,20,82,'Heading Organisers',0,0,0,0),(1,20,32,'Heading Meeting',0,0,0,0),(1,20,31,'Heading Learnings',0,0,0,0),(1,20,29,'For-you',0,0,0,0),(1,20,92,'Learnings',0,0,0,0),(1,20,93,'Gicela',0,1,0,0),(1,21,27,'Heading For-you',0,0,0,0),(133,13,94,'Main',0,1,0,0),(1,22,27,'Heading For-you',0,0,0,0),(1,21,88,'Meeting',0,0,0,0),(1,21,87,'Intro',0,0,0,0),(1,21,83,'Katja',0,0,0,0),(1,21,82,'Heading Organisers',0,0,0,0),(1,21,32,'Heading Meeting',0,0,0,0),(1,21,31,'Heading Learnings',0,0,0,0),(1,21,29,'For-you',0,0,0,0),(1,21,93,'Gicela',0,0,0,0),(1,21,95,'Learnings',0,1,0,0),(1,22,93,'Gicela',0,0,0,0),(133,14,78,'Secondary Content',0,0,0,0),(1,22,87,'Intro',0,0,0,0),(1,22,83,'Katja',0,0,0,0),(1,22,82,'Heading Organisers',0,0,0,0),(1,22,32,'Heading Meeting',0,0,0,0),(1,22,31,'Heading Learnings',0,0,0,0),(1,22,29,'For-you',0,0,0,0),(1,22,95,'Learnings',0,0,0,0),(1,22,96,'Meeting',0,1,0,0),(120,5,98,'Profiles intro',0,1,0,0),(133,14,97,'Main',0,1,0,0),(120,7,99,'Profiles intro',0,0,0,0),(120,6,99,'Profiles intro',0,1,0,0),(120,8,99,'Profiles intro',0,0,0,0),(120,9,99,'Profiles intro',0,0,0,0),(133,15,101,'Profile nav',0,1,0,0),(133,15,100,'Main',1,1,0,0),(133,15,102,'Secondary Content',1,1,0,0),(120,9,103,'Profile heading',0,1,0,0),(120,11,103,'Profile heading',0,0,0,0),(120,10,103,'Profile heading',0,0,0,0),(120,10,104,'Profiles intro',0,1,0,0),(133,16,101,'Profile nav',0,0,0,0),(120,11,105,'Profiles intro',0,1,0,0),(112,12,48,'experience',0,0,0,0),(133,16,102,'Secondary Content',0,0,0,0),(133,16,106,'Main',1,1,0,0),(112,12,66,'learning-gabriel',0,0,0,0),(112,12,62,'experience-rob',0,0,0,0),(112,12,61,'Main-rob',0,0,0,0),(112,12,60,'learning-sam',0,0,0,0),(112,12,59,'experience-sam',0,0,0,0),(112,12,58,'Main-sam',0,0,0,0),(112,12,56,'learning-gicela',0,0,0,0),(112,12,55,'Main-gicela',0,0,0,0),(112,12,54,'experience-gicela',0,0,0,0),(112,12,53,'Main',0,0,0,0),(112,12,52,'learning-admin',0,0,0,0),(112,12,51,'experience-admin',0,0,0,0),(112,12,49,'learning',0,0,0,0),(112,12,63,'learning-rob',0,0,0,0),(112,12,64,'Main-gabriel',0,0,0,0),(112,12,65,'experience-gabriel',0,0,0,0),(1,23,27,'Heading For-you',0,0,0,0),(112,12,107,'Main-admin',0,1,0,0),(1,23,95,'Learnings',0,0,0,0),(120,12,103,'Profile heading',0,0,0,0),(1,23,87,'Intro',0,0,0,0),(1,23,83,'Katja',0,0,0,0),(1,23,82,'Heading Organisers',0,0,0,0),(1,23,32,'Heading Meeting',0,0,0,0),(1,23,31,'Heading Learnings',0,0,0,0),(1,23,29,'For-you',0,0,0,0),(1,23,96,'Meeting',0,0,0,0),(1,23,108,'Gicela',0,1,0,0),(120,12,110,'Profiles intro',1,1,0,0),(1,24,27,'Heading For-you',0,0,0,0),(112,13,48,'experience',0,0,0,0),(1,24,95,'Learnings',0,0,0,0),(1,24,87,'Intro',0,0,0,0),(1,24,83,'Katja',0,0,0,0),(1,24,82,'Heading Organisers',0,0,0,0),(1,24,32,'Heading Meeting',0,0,0,0),(1,24,31,'Heading Learnings',0,0,0,0),(1,24,29,'For-you',0,0,0,0),(1,24,108,'Gicela',0,0,0,0),(1,24,111,'Meeting',0,1,0,0),(112,13,66,'learning-gabriel',0,0,0,0),(112,13,65,'experience-gabriel',0,0,0,0),(112,13,64,'Main-gabriel',0,0,0,0),(112,13,63,'learning-rob',0,0,0,0),(112,13,62,'experience-rob',0,0,0,0),(112,13,61,'Main-rob',0,0,0,0),(112,13,60,'learning-sam',0,0,0,0),(112,13,59,'experience-sam',0,0,0,0),(112,13,58,'Main-sam',0,0,0,0),(112,13,56,'learning-gicela',0,0,0,0),(112,13,55,'Main-gicela',0,0,0,0),(112,13,54,'experience-gicela',0,0,0,0),(112,13,53,'Main',0,0,0,0),(112,13,52,'learning-admin',0,0,0,0),(112,13,51,'experience-admin',0,0,0,0),(112,13,49,'learning',0,0,0,0),(120,13,103,'Profile heading',0,0,0,0),(112,13,112,'Main-admin',0,1,0,0),(120,13,110,'Profiles intro',0,0,0,0),(1,25,27,'Heading For-you',0,0,0,0),(1,25,108,'Gicela',0,0,0,0),(1,25,95,'Learnings',0,0,0,0),(1,25,87,'Intro',0,0,0,0),(1,25,83,'Katja',0,0,0,0),(1,25,82,'Heading Organisers',0,0,0,0),(1,25,32,'Heading Meeting',0,0,0,0),(1,25,31,'Heading Learnings',0,0,0,0),(1,25,29,'For-you',0,0,0,0),(133,17,101,'Profile nav',0,0,0,0),(1,25,113,'Meeting',0,1,0,0),(133,17,102,'Secondary Content',0,0,0,0),(1,26,27,'Heading For-you',0,0,0,0),(133,17,114,'Main',1,1,0,0),(1,26,29,'For-you',0,0,0,0),(1,26,31,'Heading Learnings',0,0,0,0),(1,26,32,'Heading Meeting',0,0,0,0),(1,26,82,'Heading Organisers',0,0,0,0),(1,26,83,'Katja',0,0,0,0),(1,26,87,'Intro',0,0,0,0),(1,26,95,'Learnings',0,0,0,0),(1,26,108,'Gicela',0,0,0,0),(1,27,27,'Heading For-you',0,0,0,0),(1,26,115,'Meeting',0,1,0,0),(1,27,108,'Gicela',0,0,0,0),(1,27,95,'Learnings',0,0,0,0),(1,27,87,'Intro',0,0,0,0),(1,27,83,'Katja',0,0,0,0),(1,27,82,'Heading Organisers',0,0,0,0),(1,27,32,'Heading Meeting',0,0,0,0),(1,27,31,'Heading Learnings',0,0,0,0),(1,27,29,'For-you',0,0,0,0),(1,28,27,'Heading For-you',0,0,0,0),(1,27,116,'Meeting',0,1,0,0),(1,28,29,'For-you',0,0,0,0),(1,28,31,'Heading Learnings',0,0,0,0),(1,28,32,'Heading Meeting',0,0,0,0),(1,28,82,'Heading Organisers',0,0,0,0),(1,28,83,'Katja',0,0,0,0),(1,28,87,'Intro',0,0,0,0),(1,28,95,'Learnings',0,0,0,0),(1,28,108,'Gicela',0,0,0,0),(1,29,27,'Heading For-you',0,0,0,0),(1,28,117,'Meeting',0,1,0,0),(1,29,108,'Gicela',0,0,0,0),(1,29,95,'Learnings',0,0,0,0),(1,29,87,'Intro',0,0,0,0),(1,29,83,'Katja',0,0,0,0),(1,29,82,'Heading Organisers',0,0,0,0),(1,29,32,'Heading Meeting',0,0,0,0),(1,29,31,'Heading Learnings',0,0,0,0),(1,29,29,'For-you',0,0,0,0),(1,30,27,'Heading For-you',0,0,0,0),(1,29,118,'Meeting',0,1,0,0),(1,30,108,'Gicela',0,0,0,0),(1,30,95,'Learnings',0,0,0,0),(1,30,87,'Intro',0,0,0,0),(1,30,83,'Katja',0,0,0,0),(1,30,82,'Heading Organisers',0,0,0,0),(1,30,32,'Heading Meeting',0,0,0,0),(1,30,31,'Heading Learnings',0,0,0,0),(1,30,29,'For-you',0,0,0,0),(1,31,27,'Heading For-you',0,0,0,0),(1,30,119,'Meeting',0,1,0,0),(1,31,29,'For-you',0,0,0,0),(1,31,31,'Heading Learnings',0,0,0,0),(1,31,32,'Heading Meeting',0,0,0,0),(1,31,82,'Heading Organisers',0,0,0,0),(1,31,83,'Katja',0,0,0,0),(1,31,87,'Intro',0,0,0,0),(1,31,95,'Learnings',0,0,0,0),(1,31,108,'Gicela',0,0,0,0),(1,32,27,'Heading For-you',0,0,0,0),(1,31,120,'Meeting',0,1,0,0),(1,32,108,'Gicela',0,0,0,0),(1,32,95,'Learnings',0,0,0,0),(1,33,27,'Heading For-you',0,0,0,0),(1,32,83,'Katja',0,0,0,0),(1,32,82,'Heading Organisers',0,0,0,0),(1,32,32,'Heading Meeting',0,0,0,0),(1,32,31,'Heading Learnings',0,0,0,0),(1,32,29,'For-you',0,0,0,0),(1,32,120,'Meeting',0,0,0,0),(1,32,121,'Intro',0,1,0,0),(1,33,120,'Meeting',0,0,0,0),(1,33,108,'Gicela',0,0,0,0),(1,33,95,'Learnings',0,0,0,0),(1,33,83,'Katja',0,0,0,0),(1,33,82,'Heading Organisers',0,0,0,0),(1,33,32,'Heading Meeting',0,0,0,0),(1,33,31,'Heading Learnings',0,0,0,0),(1,33,29,'For-you',0,0,0,0),(1,34,27,'Heading For-you',0,0,0,0),(1,33,122,'Intro',0,1,0,0),(1,35,27,'Heading For-you',0,0,0,0),(1,34,108,'Gicela',0,0,0,0),(1,34,95,'Learnings',0,0,0,0),(1,34,83,'Katja',0,0,0,0),(1,34,82,'Heading Organisers',0,0,0,0),(1,34,32,'Heading Meeting',0,0,0,0),(1,34,31,'Heading Learnings',0,0,0,0),(1,34,29,'For-you',0,0,0,0),(1,34,122,'Intro',0,0,0,0),(1,34,123,'Meeting',0,1,0,0),(1,35,122,'Intro',0,0,0,0),(1,35,108,'Gicela',0,0,0,0),(1,35,95,'Learnings',0,0,0,0),(1,35,83,'Katja',0,0,0,0),(1,35,82,'Heading Organisers',0,0,0,0),(1,35,32,'Heading Meeting',0,0,0,0),(1,35,31,'Heading Learnings',0,0,0,0),(1,35,29,'For-you',0,0,0,0),(1,36,27,'Heading For-you',0,0,0,0),(1,35,124,'Meeting',0,1,0,0),(1,36,29,'For-you',0,0,0,0),(1,36,31,'Heading Learnings',0,0,0,0),(1,36,32,'Heading Meeting',0,0,0,0),(1,36,82,'Heading Organisers',0,0,0,0),(1,36,83,'Katja',0,0,0,0),(1,36,95,'Learnings',0,0,0,0),(1,36,108,'Gicela',0,0,0,0),(1,36,122,'Intro',0,0,0,0),(1,37,27,'Heading For-you',0,0,0,0),(1,36,125,'Meeting',0,1,0,0),(1,37,122,'Intro',0,0,0,0),(1,37,108,'Gicela',0,0,0,0),(1,37,95,'Learnings',0,0,0,0),(1,37,83,'Katja',0,0,0,0),(1,37,82,'Heading Organisers',0,0,0,0),(1,37,32,'Heading Meeting',0,0,0,0),(1,37,31,'Heading Learnings',0,0,0,0),(1,37,29,'For-you',0,0,0,0),(1,38,27,'Heading For-you',0,0,0,0),(1,37,126,'Meeting',0,1,0,0),(1,38,29,'For-you',0,0,0,0),(1,38,31,'Heading Learnings',0,0,0,0),(1,38,32,'Heading Meeting',0,0,0,0),(1,38,82,'Heading Organisers',0,0,0,0),(1,38,83,'Katja',0,0,0,0),(1,38,95,'Learnings',0,0,0,0),(1,38,108,'Gicela',0,0,0,0),(1,38,122,'Intro',0,0,0,0),(1,39,27,'Heading For-you',0,0,0,0),(1,38,127,'Meeting',0,1,0,0),(1,39,122,'Intro',0,0,0,0),(133,18,101,'Profile nav',0,0,0,0),(1,39,129,'Gicela',0,1,0,0),(1,39,83,'Katja',0,0,0,0),(1,39,82,'Heading Organisers',0,0,0,0),(1,39,32,'Heading Meeting',0,0,0,0),(1,39,31,'Heading Learnings',0,0,0,0),(1,39,29,'For-you',0,0,0,0),(1,39,127,'Meeting',0,0,0,0),(1,39,128,'Learnings',0,1,0,0),(133,18,102,'Secondary Content',0,0,0,0),(133,18,130,'Main',1,1,0,0),(112,14,48,'experience',0,0,0,0),(112,14,66,'learning-gabriel',0,0,0,0),(112,14,65,'experience-gabriel',0,0,0,0),(112,14,64,'Main-gabriel',0,0,0,0),(112,14,63,'learning-rob',0,0,0,0),(112,14,62,'experience-rob',0,0,0,0),(112,14,61,'Main-rob',0,0,0,0),(112,14,60,'learning-sam',0,0,0,0),(112,14,59,'experience-sam',0,0,0,0),(112,14,58,'Main-sam',0,0,0,0),(112,14,56,'learning-gicela',0,0,0,0),(112,14,55,'Main-gicela',0,0,0,0),(112,14,54,'experience-gicela',0,0,0,0),(112,14,53,'Main',0,0,0,0),(112,14,52,'learning-admin',0,0,0,0),(112,14,51,'experience-admin',0,0,0,0),(112,14,49,'learning',0,0,0,0),(112,14,131,'Main-admin',0,1,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

LOCK TABLES `CollectionVersionBlocksOutputCache` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocksOutputCache` VALUES (1,24,14,'Site Logo','\n<h1>CodeHub</h1>',1551742503),(1,24,87,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>',1551742503),(1,24,27,'Heading For-you','Is CodeHub for you? ',1551742503),(1,24,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1551742503),(1,24,31,'Heading Learnings','What are we learning at CodeHub?',1551742503),(1,24,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1551742503),(1,24,32,'Heading Meeting','Where and when do we meet?',1551742503),(1,24,111,'Meeting','\n<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 11th of March 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n',1551742503),(1,24,82,'Heading Organisers','Getting in touch',1551742503),(1,24,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1551742503),(1,24,83,'Katja','\n',1551742503),(1,24,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1394579706),(112,12,14,'Site Logo','\n<h1>CodeHub</h1>',1551788535),(112,12,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"\"><a href=\"/\" target=\"_self\" class=\"\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1425069707),(112,12,51,'experience-admin','\n<li>HTML,</li><li>CSS,</li><li>PHP,</li><li>Javascript,</li><li>SilverStripe</li>\r\n\r\n',1551788535),(112,12,52,'learning-admin','\n<li>Javascript,</li><li>Python,</li><li>Git</li>',1551788535),(112,12,107,'Main-admin','<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I have mostly been working from home (although that has changed recently!), which can become a bit solitary and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>',1551788535),(120,13,14,'Site Logo','\n<h1>CodeHub</h1>',1551829881),(120,13,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"\"><a href=\"/\" target=\"_self\" class=\"\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1425070770),(120,13,103,'Profile heading','\n<h2>Members</h2>',1551829881),(120,13,110,'Profiles intro','\n<p>This page shows just some of our members but we plan to include profiles of all those who take part on a regular basis. We will also at some point add filtering for topics/skills.</p>',1551829881),(112,12,54,'experience-gicela','\n<li>HTML,</li><li>CSS,</li><li>Javascript,</li><li> PHP,</li><li> Wordpress,</li><li> Mobile Development</li>',1551866868),(112,12,56,'learning-gicela','\n<li>Javscript,</li><li>Python,</li><li>Java </li>',1551866868),(112,12,55,'Main-gicela','<p>I\'ve been developing web sites since the mid 1990\'s and have never stopped learning. Pretty much everything I know I have learnt it from other people. I feel we need to create a hub of learners where we can meet, share knowledge and collaborate with each other.</p>',1551866868),(133,16,14,'Site Logo','\n<h1>CodeHub</h1>',1551896305),(133,16,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"\"><a href=\"/\" target=\"_self\" class=\"\">Home</a></li><li class=\"current section-active\"><a href=\"/current-projects/\" target=\"_self\" class=\"current section-active\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1395341768),(133,16,101,'Profile nav','\n<h2>Projects</h2>',1551896305),(133,16,106,'Main','\n<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. For the upcoming one it will be Unix File Permissions and Ownership, as well as Chrome Dev Tools.\r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n\r\n<div class=\"learnings\">\r\n  <h2>Data Visualisation</h2>\r\n  <div class=\"inner margins-vert\">\r\nWe have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".\r\n  </div>\r\n</div>',1551896305),(133,16,102,'Secondary Content','\n<h2>Following a JavaScript Roadmap</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nWe started studying Javascript according to this post. http://javascriptissexy.com/how-to-learn-javascript-properly/\r\nCommitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.\r\n  Some text\r\n  </div>\r\n</div>\r\n\r\n<h2>Getting set up with Git and GitHub</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nRob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.\r\n  </div>\r\n</div>',1551896305),(112,12,59,'experience-sam','\n<li>html,</li>\r\n<li>css,</li>\r\n<li> basic php,</li>\r\n<li>basic javascript,</li>\r\n<li> Wordpress,</li>\r\n<li>graphic design,</li>\r\n<li>information architecture</li>',1551896806),(112,12,60,'learning-sam','\n<li>php,</li>\r\n<li>javascript,</li>\r\n<li>jQuery,</li>\r\n<li>Git,</li>\r\n<li>grep</li>',1551896806),(112,12,58,'Main-sam','<p>After a Fine Art degree, I started a business with a partner in \'96 writing front-end code for the emerging web industry in London. I\'ve learned (and continue to learn) everything on the job from practical examples, or from simply having to get from A to B. Working from home now in Gloucestershire is great but I miss learning from the people around me, so am excited to be involved with CodeHub</p>',1551896806),(112,13,14,'Site Logo','\n<h1>CodeHub</h1>',1552354613),(112,13,51,'experience-admin','\n<li>HTML,</li><li>CSS,</li><li>PHP,</li><li>Javascript,</li><li>SilverStripe</li>\r\n\r\n',1552354613),(112,13,52,'learning-admin','\n<li>Javascript,</li><li>Python,</li><li>Git</li>',1552354613),(112,13,112,'Main-admin','<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I have mostly been working from home (although that has changed recently!), which can become a bit solitary and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>',1552354613),(106,1,6,'Primary','\n<h1>Welcome Back</h1>\n<br/>\n\n<p><span class=\"label notice\">concrete5 Update</span> The latest version of concrete5 is <strong>5.6.3.3</strong>. You are currently running concrete5 version <strong>5.6.2.1</strong>. <a class=\"\" href=\"/index.php/dashboard/system/backup_restore/update/\">Learn more and update.</a></p>\n\n\n\n',1425206527),(106,1,8,'Secondary 1','<div>\n<h2>Get Involved</h2>\r\n<p><a href=\"http://www.concrete5.org/developers/submitting-code/marketplace-submission-rules/prb-team/\">Join the Peer Review Board</a> and be part of the team that vets add-ons and themes for our marketplace. </p></div>\n\n',1425141911),(1,37,126,'Meeting','\n<p>We are normally meeting on the second Tuesday of every month. Our next session however will be on Thursday, the 4th of December 2014, at <a href=\"http://www.yha.org.uk/hostel/bristol\">YHA Bristol</a> at Narrow Quay. Unlike previous sessions, this will take place in the evening  (at 7pm).</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n',1574382499),(1,26,14,'Site Logo','\n<h1>CodeHub</h1>',1556060981),(106,1,9,'Secondary 2','<div>\n<p class=\"p1\" style=\"padding-left: 30px;\"><br /><br /><a href=\"http://www.concrete5.org/about/blog/concrete5-sightings/concrete5-7-editor-s-guide-released/\" target=\"_blank\"><img src=\"http://newsflow.concrete5.org/files/3314/1382/7213/5.7_EditorsGuide_1.png\" alt=\"5.7_EditorsGuide_1.png\" width=\"200\" height=\"81\" /></a></p></div>\n\n',1425141911),(106,1,10,'Secondary 3','<h6>Featured Theme</h6>\n	<div class=\"clearfix\">\n	<img src=\"http://www.concrete5.org/files/7512/3967/5248/marketplace_thumb.png\" width=\"97\" height=\"97\" style=\"float: left; margin-right: 10px; margin-bottom: 10px\" />\n	<h3>LoadFooV2</h3>\n	<p>A clean design, in black, lime, and white</p>\n	</div>\n	\n	<a href=\"javascript:void(0)\" onclick=\"ccm_getMarketplaceItemDetails(7)\" href=\"http://www.concrete5.org/marketplace/themes/loadfoov2\" class=\"btn\">Learn More</a>\n',1425141913),(106,1,11,'Secondary 4','<h6>Featured Add-On</h6>\n	<div class=\"clearfix\">\n	<img src=\"http://www.concrete5.org/files/3714/0354/6881/core_commerce_icon.png\" width=\"97\" height=\"97\" style=\"float: left; margin-right: 10px; margin-bottom: 10px\" />\n	<h3>eCommerce</h3>\n	<p>eCommerce for your concrete5 site. The official eCommerce add-on makes it easy to add and update products.</p>\n	</div>\n	\n	<a href=\"javascript:void(0)\" onclick=\"ccm_getMarketplaceItemDetails(53)\" class=\"btn\">Learn More</a>\n',1425141914),(106,1,12,'Secondary 5','<div>\n<style type=\"text/css\">\n\ndiv.deal-of-day { padding-left: 30px; }\ndiv.deal-of-day p { margin-bottom: 10px;}\ndiv.deal-of-day h4 { margin-bottom: 8px;}\n\n.deal-of-day span.deal-of-day-offer-marketplace-icon { \n	display: block;\n	float: left;\n	width: 40px;\n}\n\n.deal-of-day .deal-of-day-offer-description {\n	\n}\n\n.deal-of-day .deal-of-day-offer-deal-description {\n	display: block;\n	float: right;\n	width: 80%;\n}\n.deal-of-day br { clear: both; }\n\n.deal-of-day .deal-of-day-offer-marketplace-title { display: none;}\n.deal-of-day .deal-of-day-offer-marketplace-description { display: none;}\n\n.deal-of-day .deal-of-day-offer-deal-description span { clear:both; }\n\n.deal-of-day .deal-of-day-offer-addons { \n	font-size: 10px; \n	text-transform: uppercase;\n	color: #999;\n}\n</style>\n\n<div id=\"deal-of-day-0\" class=\"deal-of-day\">\n	<h6>Marketplace Deal of the Day</h6>\n		<div class=\"deal\">\n			<a href=\"http://www.concrete5.org/marketplace/deal/\" target=\"_blank\"><h4>Triple Pack Deal 1</h4></a>\n			<div class=\"deal-summary\">\n				\n						\n						<p class=\"deal-of-day-offer-description\">\n							Save $20 on three of our premium addons!						</p>\n						<p class=\"deal-of-day-offer-addons\">\n												Addons:\n						\n						<span>Social Feed,</span> <span>SEO Analyzer PRO,</span> <span>Wall Gallery Suite</span>						</p>\n						\n										<div class=\"deal-link\">\n					<a class=\"btn\" href=\"http://www.concrete5.org/marketplace/deal/\" target=\"_blank\">\n						$70.00 - Get the Deal \n					</a>\n				</div>\n			</div>\n		</div>\n		</div></div>\n\n	<div class=\"newsflow-paging-next\"><a href=\"javascript:void(0)\" onclick=\"ccm_showNewsflowOffsite(341)\"><span></span></a></div>\n\n	<script type=\"text/javascript\">\n	$(function() {\n		ccm_setNewsflowPagingArrowHeight();\n	});\n	</script>\n	\n',1425141915),(1,25,113,'Meeting','\n<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of April 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n',1552354674),(1,25,14,'Site Logo','\n<h1>CodeHub</h1>',1552354682),(1,25,87,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>',1552354682),(1,25,27,'Heading For-you','Is CodeHub for you? ',1552354682),(1,25,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1552354682),(1,25,31,'Heading Learnings','What are we learning at CodeHub?',1552354682),(1,25,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1552354682),(1,25,32,'Heading Meeting','Where and when do we meet?',1552354682),(1,25,82,'Heading Organisers','Getting in touch',1552354682),(1,25,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1552354682),(1,25,83,'Katja','\n',1552354682),(1,25,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1398280764),(1,26,115,'Meeting','\n<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 13th of May 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n',1555034838),(133,17,114,'Main','\n<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. \r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n\r\n<div class=\"learnings\">\r\n  <h2>Data Visualisation</h2>\r\n  <div class=\"inner margins-vert\">\r\nWe have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".\r\n  </div>\r\n</div>',1553109242),(133,17,14,'Site Logo','\n<h1>CodeHub</h1>',1553109296),(133,17,101,'Profile nav','\n<h2>Projects</h2>',1553109296),(133,17,102,'Secondary Content','\n<h2>Following a JavaScript Roadmap</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nWe started studying Javascript according to this post. http://javascriptissexy.com/how-to-learn-javascript-properly/\r\nCommitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.\r\n  Some text\r\n  </div>\r\n</div>\r\n\r\n<h2>Getting set up with Git and GitHub</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nRob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.\r\n  </div>\r\n</div>',1553109296),(133,17,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"\"><a href=\"/\" target=\"_self\" class=\"\">Home</a></li><li class=\"current section-active\"><a href=\"/current-projects/\" target=\"_self\" class=\"current section-active\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1421420408),(1,28,117,'Meeting','\n<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 10th of June 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n',1557870873),(1,26,87,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>',1556060981),(1,26,27,'Heading For-you','Is CodeHub for you? ',1556060981),(1,26,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1556060981),(1,26,31,'Heading Learnings','What are we learning at CodeHub?',1556060981),(1,26,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1556060981),(1,26,32,'Heading Meeting','Where and when do we meet?',1556060981),(1,26,82,'Heading Organisers','Getting in touch',1556060981),(1,26,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1556060981),(1,26,83,'Katja','\n',1556060981),(1,27,116,'Meeting','\n<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 13th of May 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We will also have some evening sessions in the future, and will start with a social meetup on the 29th of April at 7pm.</p>\r\n',1556061085),(1,27,14,'Site Logo','\n<h1>CodeHub</h1>',1556061096),(1,27,87,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>',1556061096),(1,27,27,'Heading For-you','Is CodeHub for you? ',1556061096),(1,27,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1556061096),(1,27,31,'Heading Learnings','What are we learning at CodeHub?',1556061096),(1,27,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1556061096),(1,27,32,'Heading Meeting','Where and when do we meet?',1556061096),(1,27,82,'Heading Organisers','Getting in touch',1556061096),(1,27,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1556061096),(1,27,83,'Katja','\n',1556061096),(1,27,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1400104674),(1,37,14,'Site Logo','\n<h1>CodeHub</h1>',1574382503),(1,37,122,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is also a chapter of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>',1574382504),(1,28,14,'Site Logo','\n<h1>CodeHub</h1>',1557870833),(1,28,87,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>',1557870833),(1,28,27,'Heading For-you','Is CodeHub for you? ',1557870833),(1,28,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1557870833),(1,28,31,'Heading Learnings','What are we learning at CodeHub?',1557870833),(1,28,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1557870833),(1,28,32,'Heading Meeting','Where and when do we meet?',1557870833),(1,28,82,'Heading Organisers','Getting in touch',1557870833),(1,28,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1557870833),(1,28,83,'Katja','\n',1557870833),(1,28,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1402832839),(1,33,31,'Heading Learnings','What are we learning at CodeHub?',1563927166),(1,29,118,'Meeting','\n<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of July 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n',1560610340),(1,29,14,'Site Logo','\n<h1>CodeHub</h1>',1560610361),(1,29,87,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>',1560610361),(1,29,27,'Heading For-you','Is CodeHub for you? ',1560610361),(1,29,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1560610361),(1,29,31,'Heading Learnings','What are we learning at CodeHub?',1560610361),(1,29,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1560610361),(1,29,32,'Heading Meeting','Where and when do we meet?',1560610361),(1,29,82,'Heading Organisers','Getting in touch',1560610361),(1,29,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1560610361),(1,29,83,'Katja','\n',1560610361),(1,30,119,'Meeting','\n<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of July 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n',1560611751),(1,30,14,'Site Logo','\n<h1>CodeHub</h1>',1560611756),(1,30,87,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>',1560611756),(1,30,27,'Heading For-you','Is CodeHub for you? ',1560611756),(1,30,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1560611756),(1,30,31,'Heading Learnings','What are we learning at CodeHub?',1560611756),(1,30,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1560611756),(1,30,32,'Heading Meeting','Where and when do we meet?',1560611756),(1,30,82,'Heading Organisers','Getting in touch',1560611756),(1,30,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1560611756),(1,30,83,'Katja','\n',1560611756),(1,30,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1404944334),(1,33,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1563927166),(1,33,122,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is also a chapter of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>',1563927161),(1,33,14,'Site Logo','\n<h1>CodeHub</h1>',1563927166),(1,33,27,'Heading For-you','Is CodeHub for you? ',1563927166),(1,33,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1563927166),(1,32,121,'Intro','<p>CodeHub (OpenTechSchool Bristol) is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is part of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>',1563066412),(1,31,120,'Meeting','\n<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 14th of October 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We have however an evening workshop on Testing taking place on Tuesday, 15th July (see the <a href=\"http://www.meetup.com/CodeHub-Bristol/events/182735742/\">Meetup page</a>), and there will be a one-day JavaScript workshop on Saturday, the 13th September 2014 - signup to be added to Meetup.com soon. </p>\r\n\r\n',1562717041),(1,31,14,'Site Logo','\n<h1>CodeHub</h1>',1562717045),(1,31,87,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>',1562717045),(1,31,27,'Heading For-you','Is CodeHub for you? ',1562717045),(1,31,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1562717045),(1,31,31,'Heading Learnings','What are we learning at CodeHub?',1562717045),(1,31,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1562717045),(1,31,32,'Heading Meeting','Where and when do we meet?',1562717045),(1,31,82,'Heading Organisers','Getting in touch',1562717045),(1,31,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1562717045),(1,31,83,'Katja','\n',1562717045),(1,31,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1405291993),(1,32,14,'Site Logo','\n<h1>CodeHub</h1>',1563066446),(1,32,27,'Heading For-you','Is CodeHub for you? ',1563066446),(1,32,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1563066446),(1,32,31,'Heading Learnings','What are we learning at CodeHub?',1563066446),(1,32,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1563066446),(1,32,32,'Heading Meeting','Where and when do we meet?',1563066446),(1,32,120,'Meeting','\n<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 14th of October 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We have however an evening workshop on Testing taking place on Tuesday, 15th July (see the <a href=\"http://www.meetup.com/CodeHub-Bristol/events/182735742/\">Meetup page</a>), and there will be a one-day JavaScript workshop on Saturday, the 13th September 2014 - signup to be added to Meetup.com soon. </p>\r\n\r\n',1563066446),(1,32,82,'Heading Organisers','Getting in touch',1563066446),(1,32,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1563066446),(1,32,83,'Katja','\n',1563066446),(1,32,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1406153353),(1,33,32,'Heading Meeting','Where and when do we meet?',1563927166),(1,33,120,'Meeting','\n<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 14th of October 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We have however an evening workshop on Testing taking place on Tuesday, 15th July (see the <a href=\"http://www.meetup.com/CodeHub-Bristol/events/182735742/\">Meetup page</a>), and there will be a one-day JavaScript workshop on Saturday, the 13th September 2014 - signup to be added to Meetup.com soon. </p>\r\n\r\n',1563927166),(1,33,82,'Heading Organisers','Getting in touch',1563927166),(1,33,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1563927166),(1,33,83,'Katja','\n',1563927166),(1,34,123,'Meeting','\n<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 14th of October 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We will also be running a <a href=\"http://www.meetup.com/CodeHub-Bristol/events/196402012/\">one-day JavaScript workshop</a> on Saturday, the 13th September 2014</p>\r\n\r\n',1563927317),(1,34,14,'Site Logo','\n<h1>CodeHub</h1>',1563927327),(1,34,122,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is also a chapter of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>',1563927327),(1,34,27,'Heading For-you','Is CodeHub for you? ',1563927327),(1,34,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1563927327),(1,34,31,'Heading Learnings','What are we learning at CodeHub?',1563927327),(1,34,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1563927327),(1,34,32,'Heading Meeting','Where and when do we meet?',1563927327),(1,34,82,'Heading Organisers','Getting in touch',1563927327),(1,34,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1563927327),(1,34,83,'Katja','\n',1563927327),(1,34,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1413484136),(1,35,124,'Meeting','\n<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 11th of November 2014, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n',1571268426),(1,35,14,'Site Logo','\n<h1>CodeHub</h1>',1571268443),(1,35,122,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is also a chapter of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>',1571268443),(1,35,27,'Heading For-you','Is CodeHub for you? ',1571268443),(1,35,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1571268443),(1,35,31,'Heading Learnings','What are we learning at CodeHub?',1571268443),(1,35,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1571268443),(1,35,32,'Heading Meeting','Where and when do we meet?',1571268443),(1,35,82,'Heading Organisers','Getting in touch',1571268443),(1,35,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1571268443),(1,35,83,'Katja','\n',1571268443),(1,35,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1413503674),(1,36,125,'Meeting','\n<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 11th of November 2014, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street. Unlike previous sessions, this will most likely take place in the evening.</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n',1571272398),(1,36,14,'Site Logo','\n<h1>CodeHub</h1>',1571272401),(1,36,122,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is also a chapter of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>',1571272401),(1,36,27,'Heading For-you','Is CodeHub for you? ',1571272401),(1,36,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1571272401),(1,36,31,'Heading Learnings','What are we learning at CodeHub?',1571272401),(1,36,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1571272401),(1,36,32,'Heading Meeting','Where and when do we meet?',1571272401),(1,36,82,'Heading Organisers','Getting in touch',1571272401),(1,36,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1571272401),(1,36,83,'Katja','\n',1571272401),(1,36,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1416603044),(1,37,27,'Heading For-you','Is CodeHub for you? ',1574382504),(1,37,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1574382504),(1,37,31,'Heading Learnings','What are we learning at CodeHub?',1574382504),(1,37,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1574382504),(1,37,32,'Heading Meeting','Where and when do we meet?',1574382504),(1,37,82,'Heading Organisers','Getting in touch',1574382504),(1,37,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1574382504),(1,37,83,'Katja','\n',1574382504),(1,37,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1418714377),(112,12,62,'experience-rob','\n<li>Skill 1,</li><li>Skill 2</li>',1575147709),(112,12,63,'learning-rob','\n<li>Skill 1,</li><li>Skill 2</li>',1575147709),(112,12,61,'Main-rob','<p>text - about me</p>',1575147709),(112,12,65,'experience-gabriel','\n<li>Skill 1,</li><li>Skill 2</li>',1575147716),(112,12,66,'learning-gabriel','\n<li>Skill 1,</li><li>Skill 2</li>',1575147716),(112,12,64,'Main-gabriel','<p>text - about me</p>',1575147716),(1,39,128,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>\r\n<p>There are a few more places where you can find us on the web:</p>\r\n<ul>\r\n<li>\r\nOur <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.\r\n</li>\r\n  <li>\r\n    The <a href=\"http://discourse.codehub.org.uk\">CodeHub Discourse</a> for suggestions for talks and topics, posting resources etc </li>\r\n   <li>\r\nand our <a href=\"http://github.com/CodeHubOrg\">GitHub Account</a> with repos of our sites and workshops\r\n   </li>\r\n\r\n</ul>',1579196035),(1,38,127,'Meeting','\n<p>We are normally meeting once a month, and also run hack nights on Tuesday evenings roughly every two weeks.</p><p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a></p>\r\n\r\n',1576497581),(1,38,14,'Site Logo','\n<h1>CodeHub</h1>',1576497587),(1,38,122,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is also a chapter of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>',1576497587),(1,38,27,'Heading For-you','Is CodeHub for you? ',1576497587),(1,38,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1576497587),(1,38,31,'Heading Learnings','What are we learning at CodeHub?',1576497587),(1,38,95,'Learnings','\n<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>',1576497587),(1,38,32,'Heading Meeting','Where and when do we meet?',1576497587),(1,38,82,'Heading Organisers','Getting in touch',1576497587),(1,38,108,'Gicela','<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1576497587),(1,38,83,'Katja','\n',1576497587),(1,38,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1421436159),(1,39,129,'Gicela','<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>, or contact us through the Meetup group. </p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>',1579195843),(1,39,14,'Site Logo','\n<h1>CodeHub</h1>',1579203323),(1,39,122,'Intro','<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is also a chapter of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>',1579203323),(1,39,27,'Heading For-you','Is CodeHub for you? ',1579203323),(1,39,29,'For-you','<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>',1579203323),(1,39,31,'Heading Learnings','What are we learning at CodeHub?',1579203323),(1,39,32,'Heading Meeting','Where and when do we meet?',1579203323),(1,39,127,'Meeting','\n<p>We are normally meeting once a month, and also run hack nights on Tuesday evenings roughly every two weeks.</p><p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a></p>\r\n\r\n',1579203323),(1,39,82,'Heading Organisers','Getting in touch',1579203323),(1,39,83,'Katja','\n',1579203323),(133,18,130,'Main','\n<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. \r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n',1579203380),(133,18,14,'Site Logo','\n<h1>CodeHub</h1>',1579203385),(133,18,101,'Profile nav','\n<h2>Projects</h2>',1579203385),(133,18,102,'Secondary Content','\n<h2>Following a JavaScript Roadmap</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nWe started studying Javascript according to this post. http://javascriptissexy.com/how-to-learn-javascript-properly/\r\nCommitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.\r\n  Some text\r\n  </div>\r\n</div>\r\n\r\n<h2>Getting set up with Git and GitHub</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nRob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.\r\n  </div>\r\n</div>',1579203385),(1,39,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"current section-active\"><a href=\"/\" target=\"_self\" class=\"current section-active\">Home</a></li><li class=\"\"><a href=\"/current-projects/\" target=\"_self\" class=\"\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1425134984),(133,18,15,'Header nav','<div class=\"nav-wrapper\">\n  <nav class=\"nav-main\" role=\"navigation\">\n    <ul class=\"nav inline-list\">\n<li class=\"\"><a href=\"/\" target=\"_self\" class=\"\">Home</a></li><li class=\"current section-active\"><a href=\"/current-projects/\" target=\"_self\" class=\"current section-active\">Projects</a></li><li class=\"gitlink\"><a href=\"http://codehuborg.github.io\" target=\"_self\" class=\"gitlink\">Github Pages</a></li>\n    </ul>\n  </nav>\n</div>\n',1425119348),(113,1,14,'Site Logo','\n<h1>CodeHub</h1>',1582906658),(112,14,131,'Main-admin','<p>Welcome, thanks for contributing to the codehub website.</p>',1582906763),(112,14,14,'Site Logo','\n<h1>CodeHub</h1>',1582906781),(112,14,51,'experience-admin','\n<li>HTML,</li><li>CSS,</li><li>PHP,</li><li>Javascript,</li><li>SilverStripe</li>\r\n\r\n',1582906781),(112,14,52,'learning-admin','\n<li>Javascript,</li><li>Python,</li><li>Git</li>',1582906781);
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','home','','2013-10-19 17:17:17','2013-10-19 17:17:17','Initial Version',0,0,1,NULL,5,4,NULL),(2,1,'Dashboard','dashboard','','2013-10-19 17:17:21','2013-10-19 17:17:21','Initial Version',1,0,1,NULL,5,0,NULL),(3,1,'Composer','composer','Write for your site.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(4,1,'Write','write','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(5,1,'Drafts','drafts','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(6,1,'Sitemap','sitemap','Whole world at a glance.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(7,1,'Full Sitemap','full','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(8,1,'Flat View','explore','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(9,1,'Page Search','search','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(10,1,'Files','files','All documents and images.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(11,1,'File Manager','search','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(12,1,'Attributes','attributes','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(13,1,'File Sets','sets','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(14,1,'Add File Set','add_set','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(15,1,'Members','users','Add and manage the user accounts and groups on your website.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(16,1,'Search Users','search','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(17,1,'User Groups','groups','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(18,1,'Attributes','attributes','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(19,1,'Add User','add','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(20,1,'Add Group','add_group','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(21,1,'Group Sets','group_sets','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(22,1,'Reports','reports','Get data from forms and logs.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(23,1,'Statistics','statistics','View your site activity.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(24,1,'Form Results','forms','Get submission data.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(25,1,'Surveys','surveys','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(26,1,'Logs','logs','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(27,1,'Pages & Themes','pages','Reskin your site.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(28,1,'Themes','themes','Reskin your site.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(29,1,'Add','add','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(30,1,'Inspect','inspect','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(31,1,'Customize','customize','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(32,1,'Page Types','types','What goes in your site.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(33,1,'Add Page Type','add','Add page types to your site.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(34,1,'Attributes','attributes','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(35,1,'Single Pages','single','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(36,1,'Workflow','workflow','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(37,1,'Workflow List','list','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(38,1,'Waiting for Me','me','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(39,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(40,1,'Stacks','stacks','Share content across your site.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(41,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(42,1,'Stack List','list','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(43,1,'Block Types','types','Manage the installed block types in your site.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(44,1,'Extend concrete5','extend','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(45,1,'Dashboard','news','','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(46,1,'Add Functionality','install','Install add-ons & themes.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(47,1,'Update Add-Ons','update','Update your installed packages.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(48,1,'Connect to the Community','connect','Connect to the concrete5 community.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(49,1,'Get More Themes','themes','Download themes from concrete5.org.','2013-10-19 17:17:22','2013-10-19 17:17:22','Initial Version',1,0,1,NULL,5,0,NULL),(50,1,'Get More Add-Ons','add-ons','Download add-ons from concrete5.org.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(51,1,'System & Settings','system','Secure and setup your site.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(52,1,'Basics','basics','Basic information about your website.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(53,1,'Site Name','site_name','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(54,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(55,1,'Rich Text Editor','editor','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(56,1,'Languages','multilingual','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(57,1,'Time Zone','timezone','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(58,1,'Interface Preferences','interface','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(59,1,'SEO & Statistics','seo','Enable pretty URLs, statistics and tracking codes.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(60,1,'Pretty URLs','urls','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(61,1,'Bulk SEO Updater','bulk_seo_tool','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(62,1,'Tracking Codes','tracking_codes','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(63,1,'Excluded URL Word List','excluded','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(64,1,'Statistics','statistics','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(65,1,'Search Index','search_index','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(66,1,'Optimization','optimization','Keep your site running well.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(67,1,'Cache & Speed Settings','cache','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(68,1,'Clear Cache','clear_cache','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(69,1,'Automated Jobs','jobs','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(70,1,'Permissions & Access','permissions','Control who sees and edits your site.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(71,1,'Site Access','site','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(72,1,'File Manager Permissions','files','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(73,1,'Allowed File Types','file_types','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(74,1,'Task Permissions','tasks','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(75,1,'User Permissions','users','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(76,1,'Advanced Permissions','advanced','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(77,1,'IP Blacklist','ip_blacklist','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(78,1,'Captcha Setup','captcha','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(79,1,'Spam Control','antispam','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(80,1,'Maintenance Mode','maintenance_mode','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(81,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(82,1,'Login Destination','postlogin','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(83,1,'Public Profiles','profiles','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(84,1,'Public Registration','public_registration','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(85,1,'Email','mail','Control how your site send and processes mail.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(86,1,'SMTP Method','method','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(87,1,'Email Importers','importers','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(88,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(89,1,'Sets','sets','Group attributes into sets for easier organization','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(90,1,'Types','types','Choose which attribute types are available for different items.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(91,1,'Environment','environment','Advanced settings for web developers.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(92,1,'Environment Information','info','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(93,1,'Debug Settings','debug','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(94,1,'Logging Settings','logging','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(95,1,'File Storage Locations','file_storage_locations','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(96,1,'Proxy Server','proxy','','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(97,1,'Backup & Restore','backup_restore','Backup or restore your website.','2013-10-19 17:17:23','2013-10-19 17:17:23','Initial Version',1,0,1,NULL,5,0,NULL),(98,1,'Backup Database','backup','','2013-10-19 17:17:24','2013-10-19 17:17:24','Initial Version',1,0,1,NULL,5,0,NULL),(99,1,'Update concrete5','update','','2013-10-19 17:17:24','2013-10-19 17:17:24','Initial Version',1,0,1,NULL,5,0,NULL),(100,1,'Database XML','database','','2013-10-19 17:17:24','2013-10-19 17:17:24','Initial Version',1,0,1,NULL,5,0,NULL),(101,1,'Composer','composer','','2013-10-19 17:17:24','2013-10-19 17:17:24','Initial Version',1,0,1,NULL,5,0,NULL),(102,1,'',NULL,NULL,'2013-10-19 17:17:24','2013-10-19 17:17:24','Initial Version',1,0,NULL,NULL,0,1,NULL),(103,1,'',NULL,NULL,'2013-10-19 17:17:24','2013-10-19 17:17:24','Initial Version',1,0,NULL,NULL,0,2,NULL),(104,1,'',NULL,NULL,'2013-10-19 17:17:24','2013-10-19 17:17:24','Initial Version',1,0,NULL,NULL,0,3,NULL),(105,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2013-10-19 17:17:24','2013-10-19 17:17:24','Initial Version',1,0,1,NULL,5,3,NULL),(106,1,'Customize Dashboard Home','home','','2013-10-19 17:17:24','2013-10-19 17:17:24','Initial Version',1,0,1,NULL,5,2,NULL),(107,1,'Drafts','!drafts','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',1,0,1,NULL,5,0,NULL),(108,1,'Trash','!trash','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',1,0,1,NULL,5,0,NULL),(109,1,'Stacks','!stacks','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',1,0,1,NULL,5,0,NULL),(110,1,'Login','login','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',1,0,1,NULL,5,0,NULL),(111,1,'Register','register','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',1,0,1,NULL,5,0,NULL),(112,1,'Profile','profile','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',0,0,1,NULL,5,0,NULL),(113,1,'Edit','edit','','2013-10-19 17:17:26','2013-10-19 17:17:26','Version 1',1,0,1,NULL,5,0,NULL),(114,1,'Avatar','avatar','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',1,0,1,NULL,5,0,NULL),(115,1,'Messages','messages','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',0,0,1,NULL,5,0,NULL),(116,1,'Friends','friends','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',0,0,1,NULL,5,0,NULL),(117,1,'Page Not Found','page_not_found','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',1,0,1,NULL,5,0,NULL),(118,1,'Page Forbidden','page_forbidden','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',1,0,1,NULL,5,0,NULL),(119,1,'Download File','download_file','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',1,0,1,NULL,5,0,NULL),(120,1,'Members','members','','2013-10-19 17:17:26','2013-10-19 17:17:26','Initial Version',0,0,1,NULL,5,0,NULL),(121,1,'',NULL,NULL,'2013-10-19 17:17:27','2013-10-19 17:17:27','Initial Version',1,0,NULL,NULL,0,4,NULL),(122,1,'',NULL,NULL,'2013-10-19 17:18:36','2013-10-19 17:18:36','Initial Version',1,0,NULL,NULL,0,5,NULL),(123,1,'Site Logo','site-logo',NULL,'2013-10-19 17:19:45','2013-10-19 17:19:45','Initial Version',0,0,1,NULL,5,1,NULL),(124,1,'Header nav','header-nav',NULL,'2013-10-19 17:19:45','2013-10-19 17:19:45','Initial Version',0,0,1,NULL,5,1,NULL),(123,2,'Site Logo','site-logo',NULL,'2013-10-19 17:19:45','2013-10-19 17:46:54','New Version 2',0,0,1,1,5,1,NULL),(1,2,'Home','home','','2013-10-19 17:17:17','2013-10-19 17:46:54','New Version 2',0,0,1,1,5,4,NULL),(123,3,'Site Logo','site-logo',NULL,'2013-10-19 17:19:45','2013-10-19 17:51:01','New Version 3',0,0,1,1,5,1,NULL),(123,4,'Site Logo','site-logo',NULL,'2013-10-19 17:19:45','2013-10-19 17:52:12','New Version 4',1,0,1,1,5,1,NULL),(124,2,'Header nav','header-nav',NULL,'2013-10-19 17:19:45','2013-10-19 17:56:46','New Version 2',1,0,1,1,5,1,NULL),(125,1,'Profiles','profiles','List of member profiles','2013-10-20 00:50:00','2013-10-20 00:50:29','Initial Version',0,0,1,1,5,4,NULL),(126,1,'Gicela','profile-gicela','Profile of Gicela Morales','2013-10-20 00:50:00','2013-10-20 00:51:05','Initial Version',0,0,1,1,5,5,NULL),(127,1,'',NULL,NULL,'2013-10-20 16:30:30','2013-10-20 16:30:30','Initial Version',1,0,NULL,NULL,0,6,NULL),(125,2,'Profiles','profiles','List of member profiles','2013-10-20 00:50:00','2013-10-20 01:02:39','Version 2',0,0,1,1,5,4,NULL),(126,2,'Gicela','profile-gicela','Profile of Gicela Morales','2013-10-20 00:50:00','2013-10-20 01:18:59','Version 2',0,0,1,1,5,5,NULL),(1,3,'Home','home','','2013-10-19 17:17:17','2013-10-20 16:31:13','New Version 3',0,0,1,1,5,6,NULL),(1,4,'Home','home','','2013-10-19 17:17:17','2013-10-20 16:36:36','New Version 4',0,0,1,1,5,6,NULL),(1,5,'Home','home','','2013-10-19 17:17:17','2013-10-20 16:40:00','Version 5',0,0,1,1,5,6,NULL),(1,6,'Home','home','','2013-10-19 17:17:17','2013-10-20 16:51:51','Version 6',0,0,1,1,5,6,NULL),(1,7,'Home','home','','2013-10-19 17:17:17','2013-10-20 17:12:30','New Version 7',0,0,1,1,5,6,NULL),(1,8,'Home','home','','2013-10-19 17:17:17','2013-10-20 17:32:43','Version 8',0,0,1,1,5,6,NULL),(1,9,'Home','home','','2013-10-19 17:17:17','2013-10-20 17:35:54','New Version 9',0,0,1,1,5,6,NULL),(1,10,'Home','home','','2013-10-19 17:17:17','2013-10-20 17:50:03','Version 10',0,0,1,1,5,6,NULL),(1,11,'Home','home','','2013-10-19 17:17:17','2013-10-20 18:13:29','Version 11',0,0,1,1,5,6,NULL),(125,3,'Profiles','profiles','List of member profiles','2013-10-20 00:50:00','2013-10-20 19:01:01','Version 3',0,0,1,1,5,4,NULL),(128,1,'FAQs','faqs','','2013-10-20 22:38:00','2013-10-20 22:38:25','Initial Version',0,0,1,1,5,4,NULL),(129,1,'Example Faq','example_faq',NULL,'2013-10-20 22:49:27','2013-10-20 22:49:27','Initial Version',1,0,1,NULL,5,0,NULL),(128,2,'FAQs','faqs','','2013-10-20 22:38:00','2013-11-04 13:16:30','Version 2',1,0,1,1,5,4,NULL),(130,1,'Boilerplate CRUD','boilerplate_crud','Manage Sample Data for Boilerplate CRUD','2013-11-20 23:22:45','2013-11-20 23:22:45','Initial Version',1,0,1,NULL,5,0,NULL),(125,4,'Profiles','profiles','List of member profiles','2013-10-20 00:50:00','2013-12-04 17:29:23','New Version 4',1,0,1,1,5,4,NULL),(131,1,'Katja','katja','Katja\'s Profile','2013-12-04 17:37:00','2013-12-04 17:37:31','Version 1',1,0,1,1,5,5,NULL),(132,1,'Memberform','memberform',NULL,'2013-12-05 03:50:45','2013-12-05 03:50:45','Initial Version',0,0,1,NULL,5,0,NULL),(132,2,'Memberform','memberform','','2013-12-05 03:50:00','2013-12-05 03:51:40','New Version 2',0,0,1,1,5,0,NULL),(132,3,'Memberform','memberform','','2013-12-05 03:50:00','2013-12-05 03:51:53','New Version 3',1,0,1,1,5,0,NULL),(120,2,'Members','members','','2013-10-19 17:17:00','2013-12-05 04:11:19','New Version 2',0,0,1,1,5,0,NULL),(133,1,'Current projects','current-projects','','2013-12-05 04:15:00','2013-12-05 04:15:31','Version 1',0,0,1,1,5,4,NULL),(134,1,'Wiki','wiki','','2013-12-05 04:15:00','2013-12-05 04:15:47','Initial Version',0,0,1,1,5,4,NULL),(126,3,'Gicela','profile-gicela','Profile of Gicela Morales','2013-10-20 00:50:00','2014-01-09 23:47:11','New Version 3',1,0,1,2,5,5,NULL),(112,2,'Profile','profile','','2013-10-19 17:17:26','2014-01-11 16:47:07','Version 2',0,0,2,2,5,0,NULL),(135,1,'Profiles','profiles','Core member profiles','2014-01-11 17:21:00','2014-01-11 17:21:53','Initial Version',0,0,2,2,5,4,NULL),(134,2,'Github','wiki','Our Github pages','2013-12-05 04:15:00','2014-01-11 17:22:23','New Version 2',1,0,2,2,5,4,NULL),(135,2,'Profiles','profiles','Core member profiles','2014-01-11 17:21:00','2014-01-11 17:27:27','Version 2',0,0,2,2,5,4,NULL),(135,3,'Profiles','members','Core member profiles','2014-01-11 17:21:00','2014-01-11 17:28:01','New Version 3',1,0,2,2,5,4,NULL),(120,3,'Members','members','','2013-10-19 17:17:00','2014-01-11 17:49:31','New Version 3',0,0,2,2,5,0,NULL),(120,4,'Profiles','members','','2013-10-19 17:17:00','2014-01-11 17:49:43','New Version 4',0,0,2,2,5,0,NULL),(137,1,'Github Pages','httpgithubcomcodehuborg',NULL,'2014-01-11 18:04:19','2014-01-11 18:04:19','Initial Version',1,0,NULL,NULL,5,0,NULL),(133,2,'Current projects','current-projects','','2013-12-05 04:15:00','2014-01-11 18:15:45','Version 2',0,0,2,2,5,4,NULL),(112,3,'Profile','profile','','2013-10-19 17:17:26','2014-01-14 00:35:14','Version 3',0,0,2,1,5,0,NULL),(112,4,'Profile','profile','','2013-10-19 17:17:26','2014-01-14 00:47:23','Version 4',0,0,1,1,5,0,NULL),(112,5,'Profile','profile','','2013-10-19 17:17:26','2014-01-14 00:49:34','Version 5',0,0,1,1,5,0,NULL),(112,6,'Profile','profile','','2013-10-19 17:17:26','2014-01-14 02:02:58','New Version 6',0,0,2,2,5,0,NULL),(112,7,'Profile','profile','','2013-10-19 17:17:26','2014-01-15 19:57:01','Version 7',0,0,1,1,5,0,NULL),(112,8,'Profile','profile','','2013-10-19 17:17:26','2014-01-15 20:50:51','New Version 8',0,0,3,1,5,0,NULL),(112,9,'Profile','profile','','2013-10-19 17:17:26','2014-01-15 21:05:19','New Version 9',0,0,4,5,5,0,NULL),(112,10,'Profile','profile','','2013-10-19 17:17:26','2014-01-15 21:10:23','New Version 10',0,0,5,1,5,0,NULL),(1,12,'Home','home','','2013-10-19 17:17:17','2014-01-15 21:16:16','Version 12',0,0,1,1,5,6,NULL),(133,3,'Current projects','current-projects','','2013-12-05 04:15:00','2014-01-15 21:26:20','New Version 3',0,0,1,1,5,4,NULL),(133,4,'Current projects','current-projects','','2013-12-05 04:15:00','2014-01-15 21:42:15','New Version 4',0,0,1,1,5,4,NULL),(133,5,'Current projects','current-projects','','2013-12-05 04:15:00','2014-01-15 21:43:35','Version 5',0,0,1,1,5,4,NULL),(133,6,'Projects','current-projects','','2013-12-05 04:15:00','2014-01-15 23:43:24','New Version 6',0,0,1,1,5,4,NULL),(133,7,'Projects','current-projects','','2013-12-05 04:15:00','2014-01-15 23:47:35','Version 7',0,0,1,1,5,4,NULL),(133,8,'Projects','current-projects','','2013-12-05 04:15:00','2014-01-15 23:52:33','New Version 8',0,0,1,1,5,4,NULL),(133,9,'Projects','current-projects','','2013-12-05 04:15:00','2014-01-15 23:55:49','Version 9',0,0,1,1,5,4,NULL),(133,10,'Projects','current-projects','','2013-12-05 04:15:00','2014-01-15 23:56:11','Version 10',0,0,1,1,5,4,NULL),(133,11,'Projects','current-projects','','2013-12-05 04:15:00','2014-01-19 17:43:33','Version 11',0,0,1,1,5,4,NULL),(112,11,'Profile','profile','','2013-10-19 17:17:26','2014-01-26 20:22:23','Version 11',0,0,1,1,5,0,NULL),(1,13,'Home','home','','2013-10-19 17:17:17','2014-01-26 20:50:04','Version 13',0,0,1,1,5,6,NULL),(133,12,'Projects','current-projects','','2013-12-05 04:15:00','2014-01-26 21:23:14','Version 12',0,0,1,1,5,4,NULL),(1,14,'Home','home','','2013-10-19 17:17:17','2014-01-26 21:28:21','Version 14',0,0,1,1,5,6,NULL),(1,15,'Home','home','','2013-10-19 17:17:17','2014-01-26 21:29:46','Version 15',0,0,1,1,5,6,NULL),(1,16,'Home','home','','2013-10-19 17:17:17','2014-01-26 22:21:19','Version 16',0,0,1,1,5,6,NULL),(1,17,'Home','home','','2013-10-19 17:17:17','2014-01-26 22:39:46','Version 17',0,0,1,1,5,6,NULL),(1,18,'Home','home','','2013-10-19 17:17:17','2014-01-26 22:53:50','Version 18',0,0,1,1,5,6,NULL),(115,2,'Messages','messages','','2013-10-19 17:17:00','2014-01-27 00:59:11','New Version 2',1,0,1,1,5,0,NULL),(116,2,'Friends','friends','','2013-10-19 17:17:00','2014-01-27 00:59:39','New Version 2',1,0,1,1,5,0,NULL),(1,19,'Home','home','','2013-10-19 17:17:17','2014-01-27 01:02:09','Version 19',0,0,1,1,5,6,NULL),(1,20,'Home','home','','2013-10-19 17:17:17','2014-01-27 03:58:33','Version 20',0,0,1,1,5,6,NULL),(133,13,'Projects','current-projects','','2013-12-05 04:15:00','2014-01-27 20:04:43','Version 13',0,0,1,1,5,4,NULL),(1,21,'Home','home','','2013-10-19 17:17:17','2014-01-27 20:06:50','Version 21',0,0,1,1,5,6,NULL),(1,22,'Home','home','','2013-10-19 17:17:17','2014-01-27 21:13:57','Version 22',0,0,1,1,5,6,NULL),(133,14,'Projects','current-projects','','2013-12-05 04:15:00','2014-01-27 21:19:57','Version 14',0,0,1,1,5,4,NULL),(120,5,'Profiles','members','','2013-10-19 17:17:00','2014-01-29 16:51:18','Version 5',0,0,1,1,5,0,NULL),(120,6,'Profiles','members','','2013-10-19 17:17:00','2014-01-29 16:58:31','Version 6',0,0,1,1,5,0,NULL),(120,7,'Members','members','','2013-10-19 17:17:00','2014-01-29 16:59:01','New Version 7',0,0,1,1,5,0,NULL),(120,8,'Members','members','','2013-10-19 17:17:00','2014-01-29 17:00:34','New Version 8',0,0,1,1,5,0,NULL),(133,15,'Projects','current-projects','','2013-12-05 04:15:00','2014-01-29 23:34:14','Version 15',0,0,1,1,5,4,NULL),(120,9,'Members','members','','2013-10-19 17:17:00','2014-01-29 23:36:24','Version 9',0,0,1,1,5,0,NULL),(120,10,'Members','members','','2013-10-19 17:17:00','2014-01-29 23:49:12','Version 10',0,0,1,1,5,0,NULL),(120,11,'Members','members','','2013-10-19 17:17:00','2014-01-29 23:49:41','Version 11',0,0,1,1,5,0,NULL),(133,16,'Projects','current-projects','','2013-12-05 04:15:00','2014-01-30 00:10:39','Version 16',0,0,1,1,5,4,NULL),(112,12,'Profile','profile','','2013-10-19 17:17:26','2014-01-31 13:40:18','Version 12',0,0,1,1,5,0,NULL),(1,23,'Home','home','','2013-10-19 17:17:17','2014-01-31 13:48:44','Version 23',0,0,1,1,5,6,NULL),(120,12,'Members','members','','2013-10-19 17:17:00','2014-01-31 18:28:47','Version 12',0,0,1,1,5,0,NULL),(1,24,'Home','home','','2013-10-19 17:17:17','2014-02-11 23:08:02','Version 24',0,0,1,1,5,6,NULL),(112,13,'Profile','profile','','2013-10-19 17:17:26','2014-03-04 23:11:58','New Version 13',0,0,1,1,5,0,NULL),(120,13,'Members','members','','2013-10-19 17:17:00','2014-03-04 23:14:51','New Version 13',1,0,1,1,5,0,NULL),(1,25,'Home','home','','2013-10-19 17:17:17','2014-03-12 01:37:54','Version 25',0,0,1,1,5,6,NULL),(133,17,'Projects','current-projects','','2013-12-05 04:15:00','2014-03-20 19:14:01','Version 17',0,0,1,1,5,4,NULL),(1,26,'Home','home','','2013-10-19 17:17:17','2014-04-12 03:07:15','New Version 26',0,0,1,1,5,6,NULL),(1,28,'Home','home','','2013-10-19 17:17:17','2014-05-07 00:10:50','Version 28',0,0,1,1,5,6,NULL),(1,27,'Home','home','','2013-10-19 17:17:17','2014-04-24 00:11:05','Version 27',0,0,1,1,5,6,NULL),(1,29,'Home','home','','2013-10-19 17:17:17','2014-06-15 15:52:19','Version 29',0,0,1,1,5,6,NULL),(1,30,'Home','home','','2013-10-19 17:17:17','2014-06-15 16:15:50','Version 30',0,0,1,1,5,6,NULL),(1,31,'Home','home','','2013-10-19 17:17:17','2014-07-10 01:01:51','Version 31',0,0,1,1,5,6,NULL),(1,32,'Home','home','','2013-10-19 17:17:17','2014-07-14 02:06:52','Version 32',0,0,1,1,5,6,NULL),(1,33,'Home','home','','2013-10-19 17:17:17','2014-07-24 01:12:41','Version 33',0,0,1,1,5,6,NULL),(1,34,'Home','home','','2013-10-19 17:17:17','2014-07-24 01:15:17','Version 34',0,0,1,1,5,6,NULL),(1,35,'Home','home','','2013-10-19 17:17:17','2014-10-17 00:27:05','Version 35',0,0,1,1,5,6,NULL),(1,36,'Home','home','','2013-10-19 17:17:17','2014-10-17 01:33:04','Version 36',0,0,1,1,5,6,NULL),(1,37,'Home','home','','2013-10-19 17:17:17','2014-11-22 00:28:19','Version 37',0,0,1,1,5,6,NULL),(1,38,'Home','home','','2013-10-19 17:17:17','2014-12-16 11:59:41','Version 38',0,0,1,1,5,6,NULL),(1,39,'Home','home','','2013-10-19 17:17:17','2015-01-16 17:29:05','Version 39',1,0,1,1,5,6,NULL),(133,18,'Projects','current-projects','','2013-12-05 04:15:00','2015-01-16 19:36:20','Version 18',1,0,1,1,5,4,NULL),(112,14,'Profile','profile','','2013-10-19 17:17:26','2015-02-28 11:19:23','Version 14',1,0,1,1,5,0,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2013-10-19 17:17:17','2015-01-16 19:35:22','home'),(2,'2013-10-19 17:17:21','2013-10-19 17:17:22','dashboard'),(3,'2013-10-19 17:17:22','2013-10-19 17:17:22','composer'),(4,'2013-10-19 17:17:22','2013-10-19 17:17:22','write'),(5,'2013-10-19 17:17:22','2013-10-19 17:17:22','drafts'),(6,'2013-10-19 17:17:22','2013-10-19 17:17:22','sitemap'),(7,'2013-10-19 17:17:22','2013-10-19 17:17:22','full'),(8,'2013-10-19 17:17:22','2013-10-19 17:17:22','explore'),(9,'2013-10-19 17:17:22','2013-10-19 17:17:22','search'),(10,'2013-10-19 17:17:22','2013-10-19 17:17:22','files'),(11,'2013-10-19 17:17:22','2013-10-19 17:17:22','search'),(12,'2013-10-19 17:17:22','2013-10-19 17:17:22','attributes'),(13,'2013-10-19 17:17:22','2013-10-19 17:17:22','sets'),(14,'2013-10-19 17:17:22','2013-10-19 17:17:22','add_set'),(15,'2013-10-19 17:17:22','2013-10-19 17:17:22','users'),(16,'2013-10-19 17:17:22','2013-10-19 17:17:22','search'),(17,'2013-10-19 17:17:22','2013-10-19 17:17:22','groups'),(18,'2013-10-19 17:17:22','2013-10-19 17:17:22','attributes'),(19,'2013-10-19 17:17:22','2013-10-19 17:17:22','add'),(20,'2013-10-19 17:17:22','2013-10-19 17:17:22','add_group'),(21,'2013-10-19 17:17:22','2013-10-19 17:17:22','group_sets'),(22,'2013-10-19 17:17:22','2013-10-19 17:17:22','reports'),(23,'2013-10-19 17:17:22','2013-10-19 17:17:22','statistics'),(24,'2013-10-19 17:17:22','2013-10-19 17:17:22','forms'),(25,'2013-10-19 17:17:22','2013-10-19 17:17:22','surveys'),(26,'2013-10-19 17:17:22','2013-10-19 17:17:22','logs'),(27,'2013-10-19 17:17:22','2013-10-19 17:17:22','pages'),(28,'2013-10-19 17:17:22','2013-10-19 17:17:22','themes'),(29,'2013-10-19 17:17:22','2013-10-19 17:17:22','add'),(30,'2013-10-19 17:17:22','2013-10-19 17:17:22','inspect'),(31,'2013-10-19 17:17:22','2013-10-19 17:17:22','customize'),(32,'2013-10-19 17:17:22','2013-10-19 17:17:22','types'),(33,'2013-10-19 17:17:22','2013-10-19 17:17:22','add'),(34,'2013-10-19 17:17:22','2013-10-19 17:17:22','attributes'),(35,'2013-10-19 17:17:22','2013-10-19 17:17:22','single'),(36,'2013-10-19 17:17:22','2013-10-19 17:17:22','workflow'),(37,'2013-10-19 17:17:22','2013-10-19 17:17:22','list'),(38,'2013-10-19 17:17:22','2013-10-19 17:17:22','me'),(39,'2013-10-19 17:17:22','2013-10-19 17:17:22','blocks'),(40,'2013-10-19 17:17:22','2013-10-19 17:17:22','stacks'),(41,'2013-10-19 17:17:22','2013-10-19 17:17:22','permissions'),(42,'2013-10-19 17:17:22','2013-10-19 17:17:22','list'),(43,'2013-10-19 17:17:22','2013-10-19 17:17:22','types'),(44,'2013-10-19 17:17:22','2013-10-19 17:17:22','extend'),(45,'2013-10-19 17:17:22','2013-10-19 17:17:22','news'),(46,'2013-10-19 17:17:22','2013-10-19 17:17:22','install'),(47,'2013-10-19 17:17:22','2013-10-19 17:17:22','update'),(48,'2013-10-19 17:17:22','2013-10-19 17:17:22','connect'),(49,'2013-10-19 17:17:22','2013-10-19 17:17:23','themes'),(50,'2013-10-19 17:17:23','2013-10-19 17:17:23','add-ons'),(51,'2013-10-19 17:17:23','2013-10-19 17:17:23','system'),(52,'2013-10-19 17:17:23','2013-10-19 17:17:23','basics'),(53,'2013-10-19 17:17:23','2013-10-19 17:17:23','site_name'),(54,'2013-10-19 17:17:23','2013-10-19 17:17:23','icons'),(55,'2013-10-19 17:17:23','2013-10-19 17:17:23','editor'),(56,'2013-10-19 17:17:23','2013-10-19 17:17:23','multilingual'),(57,'2013-10-19 17:17:23','2013-10-19 17:17:23','timezone'),(58,'2013-10-19 17:17:23','2013-10-19 17:17:23','interface'),(59,'2013-10-19 17:17:23','2013-10-19 17:17:23','seo'),(60,'2013-10-19 17:17:23','2013-10-19 17:17:23','urls'),(61,'2013-10-19 17:17:23','2013-10-19 17:17:23','bulk_seo_tool'),(62,'2013-10-19 17:17:23','2013-10-19 17:17:23','tracking_codes'),(63,'2013-10-19 17:17:23','2013-10-19 17:17:23','excluded'),(64,'2013-10-19 17:17:23','2013-10-19 17:17:23','statistics'),(65,'2013-10-19 17:17:23','2013-10-19 17:17:23','search_index'),(66,'2013-10-19 17:17:23','2013-10-19 17:17:23','optimization'),(67,'2013-10-19 17:17:23','2013-10-19 17:17:23','cache'),(68,'2013-10-19 17:17:23','2013-10-19 17:17:23','clear_cache'),(69,'2013-10-19 17:17:23','2013-10-19 17:17:23','jobs'),(70,'2013-10-19 17:17:23','2013-10-19 17:17:23','permissions'),(71,'2013-10-19 17:17:23','2013-10-19 17:17:23','site'),(72,'2013-10-19 17:17:23','2013-10-19 17:17:23','files'),(73,'2013-10-19 17:17:23','2013-10-19 17:17:23','file_types'),(74,'2013-10-19 17:17:23','2013-10-19 17:17:23','tasks'),(75,'2013-10-19 17:17:23','2013-10-19 17:17:23','users'),(76,'2013-10-19 17:17:23','2013-10-19 17:17:23','advanced'),(77,'2013-10-19 17:17:23','2013-10-19 17:17:23','ip_blacklist'),(78,'2013-10-19 17:17:23','2013-10-19 17:17:23','captcha'),(79,'2013-10-19 17:17:23','2013-10-19 17:17:23','antispam'),(80,'2013-10-19 17:17:23','2013-10-19 17:17:23','maintenance_mode'),(81,'2013-10-19 17:17:23','2013-10-19 17:17:23','registration'),(82,'2013-10-19 17:17:23','2013-10-19 17:17:23','postlogin'),(83,'2013-10-19 17:17:23','2013-10-19 17:17:23','profiles'),(84,'2013-10-19 17:17:23','2013-10-19 17:17:23','public_registration'),(85,'2013-10-19 17:17:23','2013-10-19 17:17:23','mail'),(86,'2013-10-19 17:17:23','2013-10-19 17:17:23','method'),(87,'2013-10-19 17:17:23','2013-10-19 17:17:23','importers'),(88,'2013-10-19 17:17:23','2013-10-19 17:17:23','attributes'),(89,'2013-10-19 17:17:23','2013-10-19 17:17:23','sets'),(90,'2013-10-19 17:17:23','2013-10-19 17:17:23','types'),(91,'2013-10-19 17:17:23','2013-10-19 17:17:23','environment'),(92,'2013-10-19 17:17:23','2013-10-19 17:17:23','info'),(93,'2013-10-19 17:17:23','2013-10-19 17:17:23','debug'),(94,'2013-10-19 17:17:23','2013-10-19 17:17:23','logging'),(95,'2013-10-19 17:17:23','2013-10-19 17:17:23','file_storage_locations'),(96,'2013-10-19 17:17:23','2013-10-19 17:17:23','proxy'),(97,'2013-10-19 17:17:23','2013-10-19 17:17:24','backup_restore'),(98,'2013-10-19 17:17:24','2013-10-19 17:17:24','backup'),(99,'2013-10-19 17:17:24','2013-10-19 17:17:24','update'),(100,'2013-10-19 17:17:24','2013-10-19 17:17:24','database'),(101,'2013-10-19 17:17:24','2013-10-19 17:17:24','composer'),(102,'2013-10-19 17:17:24','2013-10-19 17:17:24',NULL),(103,'2013-10-19 17:17:24','2013-10-19 17:17:24',NULL),(104,'2013-10-19 17:17:24','2013-10-19 17:17:24',NULL),(105,'2013-10-19 17:17:24','2013-10-19 17:17:24','welcome'),(106,'2013-10-19 17:17:24','2013-10-19 17:17:24','home'),(107,'2013-10-19 17:17:26','2013-10-19 17:17:26','!drafts'),(108,'2013-10-19 17:17:26','2013-10-19 17:17:26','!trash'),(109,'2013-10-19 17:17:26','2013-10-19 17:17:26','!stacks'),(110,'2013-10-19 17:17:26','2013-10-19 17:17:26','login'),(111,'2013-10-19 17:17:26','2013-10-19 17:17:26','register'),(112,'2013-10-19 17:17:26','2015-02-28 11:19:40','profile'),(113,'2013-10-19 17:17:26','2013-10-19 17:17:26','edit'),(114,'2013-10-19 17:17:26','2013-10-19 17:17:26','avatar'),(115,'2013-10-19 17:17:26','2014-01-27 00:59:11','messages'),(116,'2013-10-19 17:17:26','2014-01-27 00:59:39','friends'),(117,'2013-10-19 17:17:26','2013-10-19 17:17:26','page_not_found'),(118,'2013-10-19 17:17:26','2013-10-19 17:17:26','page_forbidden'),(119,'2013-10-19 17:17:26','2013-10-19 17:17:26','download_file'),(120,'2013-10-19 17:17:26','2014-03-04 23:14:51','members'),(121,'2013-10-19 17:17:27','2013-10-19 17:17:27',NULL),(122,'2013-10-19 17:18:36','2013-10-19 17:18:36',NULL),(123,'2013-10-19 17:19:45','2013-10-20 00:53:38','site-logo'),(124,'2013-10-19 17:19:45','2013-10-20 00:53:38','header-nav'),(125,'2013-10-20 00:50:29','2014-01-11 15:01:29','profiles'),(126,'2013-10-20 00:51:05','2014-01-09 23:58:19','profile-gicela'),(127,'2013-10-20 16:30:30','2013-10-20 16:30:30',NULL),(128,'2013-10-20 22:38:25','2013-12-04 17:35:32','faqs'),(129,'2013-10-20 22:49:27','2013-10-20 22:49:27','example_faq'),(130,'2013-11-20 23:22:45','2013-11-20 23:22:45','boilerplate_crud'),(131,'2013-12-04 17:37:31','2014-01-11 15:01:25','katja'),(132,'2013-12-05 03:50:45','2013-12-05 03:51:53','memberform'),(133,'2013-12-05 04:15:31','2015-01-16 19:36:25','current-projects'),(134,'2013-12-05 04:15:47','2014-01-11 18:00:19','wiki'),(135,'2014-01-11 17:21:53','2014-01-11 17:46:17','profiles'),(137,'2014-01-11 18:04:19','2014-01-26 21:26:12','httpgithubcomcodehuborg');
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerContentLayout`
--

DROP TABLE IF EXISTS `ComposerContentLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerContentLayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerContentLayout`
--

LOCK TABLES `ComposerContentLayout` WRITE;
/*!40000 ALTER TABLE `ComposerContentLayout` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerContentLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerDrafts`
--

DROP TABLE IF EXISTS `ComposerDrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerDrafts`
--

LOCK TABLES `ComposerDrafts` WRITE;
/*!40000 ALTER TABLE `ComposerDrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerDrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerTypes`
--

DROP TABLE IF EXISTS `ComposerTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerTypes`
--

LOCK TABLES `ComposerTypes` WRITE;
/*!40000 ALTER TABLE `ComposerTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('ACCESS_ENTITY_UPDATED','2014-01-15 20:44:31','1389818671',0,0),('SITE_DEBUG_LEVEL','2013-10-19 16:17:26','1',0,0),('ENABLE_LOG_EMAILS','2013-10-19 16:17:26','1',0,0),('ENABLE_LOG_ERRORS','2013-10-19 16:17:26','1',0,0),('FULL_PAGE_CACHE_GLOBAL','2014-01-27 03:26:56','blocks',0,0),('ENABLE_MARKETPLACE_SUPPORT','2013-10-19 16:17:26','1',0,0),('ANTISPAM_LOG_SPAM','2013-10-19 16:17:26','1',0,0),('ENABLE_BLOCK_CACHE','2014-01-27 03:26:56','1',0,0),('ENABLE_OVERRIDE_CACHE','2014-01-27 03:26:56','1',0,0),('SITE','2013-10-19 16:17:27','CodeHub',0,0),('SITE_APP_VERSION','2013-10-19 16:17:27','5.6.2.1',0,0),('SITE_INSTALLED_APP_VERSION','2013-10-19 16:17:27','5.6.2.1',0,0),('NEWSFLOW_LAST_VIEWED','2015-02-28 10:42:06','1425120126',1,0),('APP_VERSION_LATEST','2015-02-28 10:42:07','5.6.3.3',0,0),('SEEN_INTRODUCTION','2013-10-19 16:17:42','1',0,0),('DO_PAGE_REINDEX_CHECK','2015-02-28 11:19:42','0',0,0),('FULL_PAGE_CACHE_LIFETIME','2014-01-27 03:26:56','default',0,0),('FULL_PAGE_CACHE_LIFETIME_CUSTOM','2014-01-27 03:26:56',NULL,0,0),('ENABLE_USER_PROFILES','2014-01-11 15:00:15','1',0,0),('GRAVATAR_FALLBACK','2014-01-11 15:00:15','0',0,0),('GRAVATAR_MAX_LEVEL','2014-01-11 15:00:15','g',0,0),('GRAVATAR_IMAGE_SET','2014-01-11 15:00:15','404',0,0),('NEWSFLOW_LAST_VIEWED','2014-01-23 12:22:40','1390479760',2,0),('LOGIN_REDIRECT','2014-01-11 17:29:10','PROFILE',0,0),('LOGIN_REDIRECT_CID','2014-01-11 17:29:10','0',0,0),('LOGIN_ADMIN_TO_DASHBOARD','2014-01-11 17:29:10','0',0,0),('NEWSFLOW_LAST_VIEWED','2014-01-15 20:50:30','1389819030',3,0),('NEWSFLOW_LAST_VIEWED','2014-01-23 01:41:22','1390441282',4,0),('NEWSFLOW_LAST_VIEWED','2014-01-23 01:40:20','1390441220',5,0),('URL_REWRITING','2014-01-29 10:59:28','1',0,0),('NEWSFLOW_LAST_VIEWED','2015-02-28 14:45:05','1425134705',6,0);
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStylePresets`
--

DROP TABLE IF EXISTS `CustomStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStylePresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStylePresets`
--

LOCK TABLES `CustomStylePresets` WRITE;
/*!40000 ALTER TABLE `CustomStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStyleRules`
--

DROP TABLE IF EXISTS `CustomStyleRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStyleRules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStyleRules`
--

LOCK TABLES `CustomStyleRules` WRITE;
/*!40000 ALTER TABLE `CustomStyleRules` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomStyleRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
INSERT INTO `FileAttributeValues` VALUES (1,1,12,125),(1,1,13,126);
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionAssignments`
--

LOCK TABLES `FilePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FilePermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `FileSearchIndexAttributes` VALUES (1,327.0000,283.0000,0.0000);
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionAssignments`
--

DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionAssignments`
--

LOCK TABLES `FileSetPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionAssignments` DISABLE KEYS */;
INSERT INTO `FileSetPermissionAssignments` VALUES (0,43,35),(0,44,36),(0,45,37),(0,46,38),(0,47,39),(0,48,40),(0,49,42),(0,50,41),(0,51,43);
/*!40000 ALTER TABLE `FileSetPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessList`
--

LOCK TABLES `FileSetPermissionFileTypeAccessList` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessListCustom`
--

LOCK TABLES `FileSetPermissionFileTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
INSERT INTO `FileVersionLog` VALUES (1,1,1,5,12),(2,1,1,5,13);
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
INSERT INTO `FileVersions` VALUES (1,1,'codeclub.jpg','511389405886',1,22890,'codeclub.jpg','','',1,'2014-01-11 02:04:46',1,1,'2014-01-11 02:04:46',1,1,0,'jpg',1);
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
INSERT INTO `Files` VALUES (1,'2014-01-11 02:04:46',1,0,0,0,NULL);
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSetGroups`
--

LOCK TABLES `GroupSetGroups` WRITE;
/*!40000 ALTER TABLE `GroupSetGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSetGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSets`
--

LOCK TABLES `GroupSets` WRITE;
/*!40000 ALTER TABLE `GroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL),(3,'Administrators','',0,NULL,NULL,0,NULL),(4,'Members','Members of CodeHub',0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSetJobs`
--

DROP TABLE IF EXISTS `JobSetJobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSetJobs`
--

LOCK TABLES `JobSetJobs` WRITE;
/*!40000 ALTER TABLE `JobSetJobs` DISABLE KEYS */;
INSERT INTO `JobSetJobs` VALUES (1,1,0),(1,3,0),(1,4,0),(1,5,0);
/*!40000 ALTER TABLE `JobSetJobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSets`
--

DROP TABLE IF EXISTS `JobSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSets`
--

LOCK TABLES `JobSets` WRITE;
/*!40000 ALTER TABLE `JobSets` DISABLE KEYS */;
INSERT INTO `JobSets` VALUES (1,'Default',0,NULL,0,'days',0);
/*!40000 ALTER TABLE `JobSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.','2013-10-19 17:17:21',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0),(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2013-10-19 17:17:21',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0),(3,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2013-10-19 17:17:21',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0),(4,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2013-10-19 17:17:21',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0),(5,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2013-10-19 17:17:21',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutPresets`
--

DROP TABLE IF EXISTS `LayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPresets`
--

LOCK TABLES `LayoutPresets` WRITE;
/*!40000 ALTER TABLE `LayoutPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Layouts`
--

DROP TABLE IF EXISTS `Layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layouts`
--

LOCK TABLES `Layouts` WRITE;
/*!40000 ALTER TABLE `Layouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message',NULL,NULL,NULL,NULL,0,NULL,0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
INSERT INTO `Packages` VALUES (1,'Tweetcrete','jereme_tweetcrete','Add a twitter feed to your website.','2013-11-04 13:11:28',1,'1.6.8',NULL),(2,'Boilerplate CRUD','boilerplate_crud','Custom Dashboard Management - Boilerplate CRUD Operations','2013-11-20 23:22:45',1,'0.1',NULL);
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES (1,2,'/dashboard','1'),(2,3,'/dashboard/composer','1'),(3,4,'/dashboard/composer/write','1'),(4,5,'/dashboard/composer/drafts','1'),(5,6,'/dashboard/sitemap','1'),(6,7,'/dashboard/sitemap/full','1'),(7,8,'/dashboard/sitemap/explore','1'),(8,9,'/dashboard/sitemap/search','1'),(9,10,'/dashboard/files','1'),(10,11,'/dashboard/files/search','1'),(11,12,'/dashboard/files/attributes','1'),(12,13,'/dashboard/files/sets','1'),(13,14,'/dashboard/files/add_set','1'),(14,15,'/dashboard/users','1'),(15,16,'/dashboard/users/search','1'),(16,17,'/dashboard/users/groups','1'),(17,18,'/dashboard/users/attributes','1'),(18,19,'/dashboard/users/add','1'),(19,20,'/dashboard/users/add_group','1'),(20,21,'/dashboard/users/group_sets','1'),(21,22,'/dashboard/reports','1'),(22,23,'/dashboard/reports/statistics','1'),(23,24,'/dashboard/reports/forms','1'),(24,25,'/dashboard/reports/surveys','1'),(25,26,'/dashboard/reports/logs','1'),(26,27,'/dashboard/pages','1'),(27,28,'/dashboard/pages/themes','1'),(28,29,'/dashboard/pages/themes/add','1'),(29,30,'/dashboard/pages/themes/inspect','1'),(30,31,'/dashboard/pages/themes/customize','1'),(31,32,'/dashboard/pages/types','1'),(32,33,'/dashboard/pages/types/add','1'),(33,34,'/dashboard/pages/attributes','1'),(34,35,'/dashboard/pages/single','1'),(35,36,'/dashboard/workflow','1'),(36,37,'/dashboard/workflow/list','1'),(37,38,'/dashboard/workflow/me','1'),(38,39,'/dashboard/blocks','1'),(39,40,'/dashboard/blocks/stacks','1'),(40,41,'/dashboard/blocks/permissions','1'),(41,42,'/dashboard/blocks/stacks/list','1'),(42,43,'/dashboard/blocks/types','1'),(43,44,'/dashboard/extend','1'),(44,45,'/dashboard/news','1'),(45,46,'/dashboard/extend/install','1'),(46,47,'/dashboard/extend/update','1'),(47,48,'/dashboard/extend/connect','1'),(48,49,'/dashboard/extend/themes','1'),(49,50,'/dashboard/extend/add-ons','1'),(50,51,'/dashboard/system','1'),(51,52,'/dashboard/system/basics','1'),(52,53,'/dashboard/system/basics/site_name','1'),(53,54,'/dashboard/system/basics/icons','1'),(54,55,'/dashboard/system/basics/editor','1'),(55,56,'/dashboard/system/basics/multilingual','1'),(56,57,'/dashboard/system/basics/timezone','1'),(57,58,'/dashboard/system/basics/interface','1'),(58,59,'/dashboard/system/seo','1'),(59,60,'/dashboard/system/seo/urls','1'),(60,61,'/dashboard/system/seo/bulk_seo_tool','1'),(61,62,'/dashboard/system/seo/tracking_codes','1'),(62,63,'/dashboard/system/seo/excluded','1'),(63,64,'/dashboard/system/seo/statistics','1'),(64,65,'/dashboard/system/seo/search_index','1'),(65,66,'/dashboard/system/optimization','1'),(66,67,'/dashboard/system/optimization/cache','1'),(67,68,'/dashboard/system/optimization/clear_cache','1'),(68,69,'/dashboard/system/optimization/jobs','1'),(69,70,'/dashboard/system/permissions','1'),(70,71,'/dashboard/system/permissions/site','1'),(71,72,'/dashboard/system/permissions/files','1'),(72,73,'/dashboard/system/permissions/file_types','1'),(73,74,'/dashboard/system/permissions/tasks','1'),(74,75,'/dashboard/system/permissions/users','1'),(75,76,'/dashboard/system/permissions/advanced','1'),(76,77,'/dashboard/system/permissions/ip_blacklist','1'),(77,78,'/dashboard/system/permissions/captcha','1'),(78,79,'/dashboard/system/permissions/antispam','1'),(79,80,'/dashboard/system/permissions/maintenance_mode','1'),(80,81,'/dashboard/system/registration','1'),(81,82,'/dashboard/system/registration/postlogin','1'),(82,83,'/dashboard/system/registration/profiles','1'),(83,84,'/dashboard/system/registration/public_registration','1'),(84,85,'/dashboard/system/mail','1'),(85,86,'/dashboard/system/mail/method','1'),(86,87,'/dashboard/system/mail/importers','1'),(87,88,'/dashboard/system/attributes','1'),(88,89,'/dashboard/system/attributes/sets','1'),(89,90,'/dashboard/system/attributes/types','1'),(90,91,'/dashboard/system/environment','1'),(91,92,'/dashboard/system/environment/info','1'),(92,93,'/dashboard/system/environment/debug','1'),(93,94,'/dashboard/system/environment/logging','1'),(94,95,'/dashboard/system/environment/file_storage_locations','1'),(95,96,'/dashboard/system/environment/proxy','1'),(96,97,'/dashboard/system/backup_restore','1'),(97,98,'/dashboard/system/backup_restore/backup','1'),(98,99,'/dashboard/system/backup_restore/update','1'),(99,100,'/dashboard/system/backup_restore/database','1'),(100,101,'/dashboard/pages/types/composer','1'),(101,105,'/dashboard/welcome','1'),(102,106,'/dashboard/home','1'),(103,107,'/!drafts','1'),(104,108,'/!trash','1'),(105,109,'/!stacks','1'),(106,110,'/login','1'),(107,111,'/register','1'),(247,112,'/profile','1'),(248,113,'/profile/edit','1'),(249,114,'/profile/avatar','1'),(250,115,'/profile/messages','1'),(251,116,'/profile/friends','1'),(113,117,'/page_not_found','1'),(114,118,'/page_forbidden','1'),(115,119,'/download_file','1'),(239,120,'/members','1'),(123,123,'/!stacks/site-logo','1'),(124,124,'/!stacks/header-nav','1'),(147,125,'/!trash/profiles','1'),(148,126,'/!trash/profiles/profile-gicela','1'),(134,128,'/!trash/faqs','1'),(131,129,'/dashboard/example_faq','1'),(133,130,'/dashboard/boilerplate_crud','1'),(146,131,'/!trash/katja','1'),(141,132,'/memberform','1'),(241,133,'/current-projects','1'),(162,134,'/!trash/wiki','1'),(159,135,'/!trash/members','1'),(157,135,'/profiles','0');
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionAssignments`
--

LOCK TABLES `PagePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PagePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PagePermissionAssignments` VALUES (1,1,52),(1,2,53),(1,3,54),(1,4,55),(1,5,56),(1,6,57),(1,7,58),(1,8,59),(1,9,60),(1,10,61),(1,11,62),(1,12,63),(1,13,64),(1,14,65),(1,15,66),(1,16,67),(2,1,18),(2,2,20),(2,3,19),(2,4,25),(2,5,21),(2,6,22),(2,7,27),(2,8,29),(2,9,31),(2,10,28),(2,11,32),(2,12,33),(2,13,23),(2,14,26),(2,15,24),(2,16,30),(42,1,34),(42,3,35),(110,1,38),(110,3,39),(111,1,40),(111,3,41),(112,1,83),(112,2,84),(112,3,54),(112,4,91),(112,5,85),(112,6,86),(112,7,87),(112,8,88),(112,9,89),(112,10,90),(112,11,93),(112,12,94),(112,13,95),(112,14,96),(112,15,97),(112,16,92),(120,1,68),(120,2,69),(120,3,54),(120,4,76),(120,5,70),(120,6,71),(120,7,72),(120,8,73),(120,9,74),(120,10,75),(120,11,78),(120,12,79),(120,13,80),(120,14,81),(120,15,82),(120,16,77);
/*!40000 ALTER TABLE `PagePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessList`
--

LOCK TABLES `PagePermissionPageTypeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessListCustom`
--

LOCK TABLES `PagePermissionPageTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAccessList`
--

LOCK TABLES `PagePermissionPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAttributeAccessListCustom`
--

LOCK TABLES `PagePermissionPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessList`
--

LOCK TABLES `PagePermissionThemeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessListCustom`
--

LOCK TABLES `PagePermissionThemeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (3,'','Composer','Write for your site.','/dashboard/composer','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(4,'','Write','','/dashboard/composer/write','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(5,'','Drafts','','/dashboard/composer/drafts','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(6,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(7,'','Full Sitemap','','/dashboard/sitemap/full','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(8,'','Flat View','','/dashboard/sitemap/explore','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(9,'','Page Search','','/dashboard/sitemap/search','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(11,'','File Manager','','/dashboard/files/search','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(12,'','Attributes','','/dashboard/files/attributes','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(13,'','File Sets','','/dashboard/files/sets','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(14,'','Add File Set','','/dashboard/files/add_set','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(15,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(16,'','Search Users','','/dashboard/users/search','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(17,'','User Groups','','/dashboard/users/groups','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(18,'','Attributes','','/dashboard/users/attributes','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(19,'','Add User','','/dashboard/users/add','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(20,'','Add Group','','/dashboard/users/add_group','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(21,'','Group Sets','','/dashboard/users/group_sets','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(22,'','Reports','Get data from forms and logs.','/dashboard/reports','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(23,'','Statistics','View your site activity.','/dashboard/reports/statistics','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(25,'','Surveys','','/dashboard/reports/surveys','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(26,'','Logs','','/dashboard/reports/logs','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(29,'','Add','','/dashboard/pages/themes/add','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(30,'','Inspect','','/dashboard/pages/themes/inspect','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(31,'','Customize','','/dashboard/pages/themes/customize','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(32,'','Page Types','What goes in your site.','/dashboard/pages/types','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(34,'','Attributes','','/dashboard/pages/attributes','2013-10-19 17:17:22','2013-10-19 17:17:24',NULL,0),(35,'','Single Pages','','/dashboard/pages/single','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(36,'','Workflow','','/dashboard/workflow','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(37,'','Workflow List','','/dashboard/workflow/list','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(38,'','Waiting for Me','','/dashboard/workflow/me','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(40,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(41,'','Block & Stack Permissions','Control who can add blocks and stacks on your site.','/dashboard/blocks/permissions','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(42,'','Stack List','','/dashboard/blocks/stacks/list','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(43,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(44,'','Extend concrete5','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','/dashboard/extend','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(45,'','Dashboard','','/dashboard/news','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(46,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(47,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(48,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(49,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2013-10-19 17:17:22','2013-10-19 17:17:25',NULL,0),(50,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/add-ons','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(51,'','System & Settings','Secure and setup your site.','/dashboard/system','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(53,'','Site Name','','/dashboard/system/basics/site_name','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(54,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(55,'','Rich Text Editor','','/dashboard/system/basics/editor','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(56,'','Languages','','/dashboard/system/basics/multilingual','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(57,'','Time Zone','','/dashboard/system/basics/timezone','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(58,'','Interface Preferences','','/dashboard/system/basics/interface','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(60,'','Pretty URLs','','/dashboard/system/seo/urls','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(61,'','Bulk SEO Updater','','/dashboard/system/seo/bulk_seo_tool','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(62,'','Tracking Codes','','/dashboard/system/seo/tracking_codes','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(63,'','Excluded URL Word List','','/dashboard/system/seo/excluded','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(64,'','Statistics','','/dashboard/system/seo/statistics','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(65,'','Search Index','','/dashboard/system/seo/search_index','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(67,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(68,'','Clear Cache','','/dashboard/system/optimization/clear_cache','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(69,'','Automated Jobs','','/dashboard/system/optimization/jobs','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(71,'','Site Access','','/dashboard/system/permissions/site','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(72,'','File Manager Permissions','','/dashboard/system/permissions/files','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(73,'','Allowed File Types','','/dashboard/system/permissions/file_types','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(74,'','Task Permissions','','/dashboard/system/permissions/tasks','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(77,'','IP Blacklist','','/dashboard/system/permissions/ip_blacklist','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(78,'','Captcha Setup','','/dashboard/system/permissions/captcha','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(79,'','Spam Control','','/dashboard/system/permissions/antispam','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(80,'','Maintenance Mode','','/dashboard/system/permissions/maintenance_mode','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(82,'','Login Destination','','/dashboard/system/registration/postlogin','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(83,'','Public Profiles','','/dashboard/system/registration/profiles','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(84,'','Public Registration','','/dashboard/system/registration/public_registration','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(85,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(86,'','SMTP Method','','/dashboard/system/mail/method','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(87,'','Email Importers','','/dashboard/system/mail/importers','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(88,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(89,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(90,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(92,'','Environment Information','','/dashboard/system/environment/info','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(93,'','Debug Settings','','/dashboard/system/environment/debug','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(94,'','Logging Settings','','/dashboard/system/environment/logging','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(95,'','File Storage Locations','','/dashboard/system/environment/file_storage_locations','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(96,'','Proxy Server','','/dashboard/system/environment/proxy','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(97,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup_restore','2013-10-19 17:17:23','2013-10-19 17:17:25',NULL,0),(99,'','Update concrete5','','/dashboard/system/backup_restore/update','2013-10-19 17:17:24','2013-10-19 17:17:25',NULL,0),(100,'','Database XML','','/dashboard/system/backup_restore/database','2013-10-19 17:17:24','2013-10-19 17:17:25',NULL,0),(105,'	Welcome to concrete5.\n						It\'s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2013-10-19 17:17:24','2013-10-19 17:17:26',NULL,0),(106,'','Customize Dashboard Home','','/dashboard/home','2013-10-19 17:17:24','2013-10-19 17:17:26',NULL,0),(1,'Is CodeHub for you?   Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.  What are we learning at CodeHub? Where and when do we meet? Getting in touch  CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is also a chapter of OpenTechSchool.    We are normally meeting once a month, and also run hack nights on Tuesday evenings roughly every two weeks.  We also occasionally do evening workshops. Please check our Meetup Page \r\n\r\n  We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc. \r\n There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our GitHub Pages. \r\n There are a few more places where you can find us on the web: \r\n\r\n\r\nOur Meetup Group that you can join, and where our meetings will be announced.\r\n\r\n  \r\n    The CodeHub Discourse for suggestions for talks and topics, posting resources etc \r\n   \r\nand our GitHub Account with repos of our sites and workshops\r\n   \r\n\r\n  You can email us on info@codehub.org.uk, or tweet to @CodeHubBs, or contact us through the Meetup group.  \r\n You can also get in touch with Gicela or Katja who usually organise the meetings.  ','Home','',NULL,'2013-10-19 17:17:17','2015-01-16 19:35:24',NULL,0),(115,'','Messages','','/profile/messages','2013-10-19 17:17:00','2014-01-27 00:59:44',NULL,0),(116,'','Friends','','/profile/friends','2013-10-19 17:17:00','2014-01-27 00:59:44',NULL,0),(125,'Profiles  Sample Content   Some more content  ','Profiles','List of member profiles','/profiles','2013-10-20 00:50:00','2013-12-04 17:38:14',NULL,0),(126,'Profiles ','Gicela','Profile of Gicela Morales','/profiles/profile-gicela','2013-10-20 00:50:00','2014-01-09 23:58:21',NULL,0),(123,'CodeHub ','Site Logo',NULL,'/!stacks/site-logo','2013-10-19 17:19:45','2013-10-20 00:53:38',NULL,0),(124,'','Header nav',NULL,'/!stacks/header-nav','2013-10-19 17:19:45','2013-10-20 00:53:38',NULL,0),(128,'','FAQs','','/faqs','2013-10-20 22:38:00','2013-11-05 01:44:47',NULL,0),(131,'','Codehub dev','Codehub dev\'s Profile','/profiles/katja','2013-12-04 17:37:00','2013-12-04 17:37:32',NULL,0),(132,'','Memberform','','/memberform','2013-12-05 03:50:00','2013-12-05 03:54:03',NULL,0),(120,'Members  This page shows just some of our members but we plan to include profiles of all those who take part on a regular basis. We will also at some point add filtering for topics/skills.  ','Members','','/members','2013-10-19 17:17:00','2014-03-04 23:15:07',NULL,0),(133,'Projects Following a JavaScript Roadmap\r\n\r\n  \r\nWe started studying Javascript according to this post. http://javascriptissexy.com/how-to-learn-javascript-properly/\r\nCommitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.\r\n  Some text\r\n   \r\n \r\n\r\nGetting set up with Git and GitHub\r\n\r\n  \r\nRob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.\r\n   \r\n  \r\n  Workshops\r\n  \r\nEach month we will decide what topics to tackle at the next meetup. \r\n   \r\n \r\n\r\n\r\n\r\n  CodeHub Website\r\n  \r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n   \r\n \r\n ','Projects','','/current-projects','2013-12-05 04:15:00','2015-01-16 19:36:26',NULL,0),(134,'','Github','Our Github pages','/wiki','2013-12-05 04:15:00','2014-01-11 17:22:32',NULL,0),(112,' HTML,CSS,Javascript, PHP, Wordpress, Mobile Development Javscript,Python,Java,Git HTML,CSS,PHP,Javascript,SilverStripe\r\n\r\n Javascript,Python,Git  I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I too keep learning new things all the time and I\'m loving it. The only thing is that working and learning from home can become a bit solitary, and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!  HTML,CSS,Javascript, PHP, Wordpress, Mobile Development  I\'ve been developing web sites since the mid 1990\'s and have never stopped learning. Pretty much everything I know I have learnt it from other people. I feel we need to create a hub of learners where we can meet, share knowledge and collaborate with each other.  Javscript,Python,Java   After a Fine Art degree, I started a business with a partner in \'96 writing front-end code for the emerging web industry in London. I\'ve learned (and continue to learn) everything on the job from practical examples, or from simply having to get from A to B. Working from home now in Gloucestershire is great but I miss learning from the people around me, so am excited to be involved with CodeHub  html,\r\ncss,\r\n basic php,\r\nbasic javascript,\r\n Wordpress,\r\ngraphic design,\r\ninformation architecture php,\r\njavascript,\r\njQuery,\r\nGit,\r\ngrep  text - about me  Skill 1,Skill 2 Skill 1,Skill 2  text - about me  Skill 1,Skill 2 Skill 1,Skill 2  Welcome, thanks for contributing to the codehub website.  ','Profile','','/profile','2013-10-19 17:17:26','2015-02-28 11:19:42',NULL,0),(135,'','Profiles','Core member profiles','/members1','2014-01-11 17:21:00','2014-01-11 17:43:54',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageStatistics`
--

DROP TABLE IF EXISTS `PageStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM AUTO_INCREMENT=8857 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageStatistics`
--

LOCK TABLES `PageStatistics` WRITE;
/*!40000 ALTER TABLE `PageStatistics` DISABLE KEYS */;
INSERT INTO `PageStatistics` VALUES (1,1,'2013-10-19','2013-10-19 16:17:42',1),(2,105,'2013-10-19','2013-10-19 16:17:43',1),(3,2,'2013-10-19','2013-10-19 16:18:17',1),(4,28,'2013-10-19','2013-10-19 16:18:23',1),(5,28,'2013-10-19','2013-10-19 16:18:29',1),(6,30,'2013-10-19','2013-10-19 16:18:29',1),(7,30,'2013-10-19','2013-10-19 16:18:36',1),(8,28,'2013-10-19','2013-10-19 16:18:40',1),(9,28,'2013-10-19','2013-10-19 16:18:44',1),(10,28,'2013-10-19','2013-10-19 16:18:47',1),(11,1,'2013-10-19','2013-10-19 16:18:50',1),(12,1,'2013-10-19','2013-10-19 16:19:06',1),(13,1,'2013-10-19','2013-10-19 16:19:16',1),(14,1,'2013-10-19','2013-10-19 16:19:45',1),(15,1,'2013-10-19','2013-10-19 16:20:00',1),(16,1,'2013-10-19','2013-10-19 16:53:38',1),(17,1,'2013-10-20','2013-10-19 23:47:36',1),(18,2,'2013-10-20','2013-10-19 23:47:51',1),(19,7,'2013-10-20','2013-10-19 23:47:55',1),(20,2,'2013-10-20','2013-10-19 23:48:59',1),(21,32,'2013-10-20','2013-10-19 23:49:04',1),(22,32,'2013-10-20','2013-10-19 23:49:26',1),(23,121,'2013-10-20','2013-10-19 23:49:26',1),(24,2,'2013-10-20','2013-10-19 23:49:45',1),(25,7,'2013-10-20','2013-10-19 23:49:48',1),(26,6,'2013-10-20','2013-10-19 23:50:29',1),(27,7,'2013-10-20','2013-10-19 23:50:29',1),(28,6,'2013-10-20','2013-10-19 23:51:05',1),(29,7,'2013-10-20','2013-10-19 23:51:05',1),(30,1,'2013-10-20','2013-10-19 23:53:32',1),(31,1,'2013-10-20','2013-10-19 23:53:38',1),(32,1,'2013-10-20','2013-10-19 23:55:47',1),(33,125,'2013-10-20','2013-10-19 23:56:28',1),(34,125,'2013-10-20','2013-10-19 23:56:30',1),(35,125,'2013-10-20','2013-10-20 00:02:14',1),(36,125,'2013-10-20','2013-10-20 00:02:17',1),(37,125,'2013-10-20','2013-10-20 00:03:22',1),(38,126,'2013-10-20','2013-10-20 00:15:24',1),(39,126,'2013-10-20','2013-10-20 00:15:26',1),(40,126,'2013-10-20','2013-10-20 00:16:55',1),(41,1,'2013-10-20','2013-10-20 00:17:10',1),(42,125,'2013-10-20','2013-10-20 00:17:14',1),(43,126,'2013-10-20','2013-10-20 00:17:17',1),(44,125,'2013-10-20','2013-10-20 00:17:21',1),(45,126,'2013-10-20','2013-10-20 00:17:33',1),(46,126,'2013-10-20','2013-10-20 00:18:28',1),(47,126,'2013-10-20','2013-10-20 00:19:27',1),(48,1,'2013-10-20','2013-10-20 00:19:40',1),(49,125,'2013-10-20','2013-10-20 00:19:49',1),(50,126,'2013-10-20','2013-10-20 14:20:27',1),(51,1,'2013-10-20','2013-10-20 14:20:32',1),(52,125,'2013-10-20','2013-10-20 14:20:35',1),(53,126,'2013-10-20','2013-10-20 14:20:37',1),(54,125,'2013-10-20','2013-10-20 15:17:37',1),(55,2,'2013-10-20','2013-10-20 15:17:54',1),(56,125,'2013-10-20','2013-10-20 15:17:58',1),(57,125,'2013-10-20','2013-10-20 15:19:56',1),(58,125,'2013-10-20','2013-10-20 15:20:04',1),(59,110,'2013-10-20','2013-10-20 15:21:48',0),(60,2,'2013-10-20','2013-10-20 15:21:49',1),(61,1,'2013-10-20','2013-10-20 15:21:53',1),(62,125,'2013-10-20','2013-10-20 15:22:03',1),(63,126,'2013-10-20','2013-10-20 15:22:06',1),(64,1,'2013-10-20','2013-10-20 15:22:09',1),(65,2,'2013-10-20','2013-10-20 15:29:19',1),(66,32,'2013-10-20','2013-10-20 15:29:24',1),(67,32,'2013-10-20','2013-10-20 15:29:35',1),(68,121,'2013-10-20','2013-10-20 15:29:35',1),(69,32,'2013-10-20','2013-10-20 15:29:43',1),(70,33,'2013-10-20','2013-10-20 15:29:53',1),(71,33,'2013-10-20','2013-10-20 15:30:23',1),(72,33,'2013-10-20','2013-10-20 15:30:30',1),(73,32,'2013-10-20','2013-10-20 15:30:31',1),(74,101,'2013-10-20','2013-10-20 15:30:36',1),(75,32,'2013-10-20','2013-10-20 15:30:50',1),(76,2,'2013-10-20','2013-10-20 15:30:59',1),(77,7,'2013-10-20','2013-10-20 15:31:02',1),(78,1,'2013-10-20','2013-10-20 15:31:17',1),(79,1,'2013-10-20','2013-10-20 15:33:11',1),(80,1,'2013-10-20','2013-10-20 15:33:29',1),(81,1,'2013-10-20','2013-10-20 15:36:16',1),(82,2,'2013-10-20','2013-10-20 15:36:27',1),(83,7,'2013-10-20','2013-10-20 15:36:30',1),(84,1,'2013-10-20','2013-10-20 15:36:43',1),(85,1,'2013-10-20','2013-10-20 15:36:47',1),(86,1,'2013-10-20','2013-10-20 15:37:16',1),(87,7,'2013-10-20','2013-10-20 15:37:27',1),(88,1,'2013-10-20','2013-10-20 15:37:48',1),(89,1,'2013-10-20','2013-10-20 15:37:51',1),(90,1,'2013-10-20','2013-10-20 15:37:56',1),(91,1,'2013-10-20','2013-10-20 15:38:16',1),(92,2,'2013-10-20','2013-10-20 15:38:27',1),(93,51,'2013-10-20','2013-10-20 15:38:31',1),(94,67,'2013-10-20','2013-10-20 15:38:36',1),(95,67,'2013-10-20','2013-10-20 15:38:50',1),(96,67,'2013-10-20','2013-10-20 15:38:51',1),(97,2,'2013-10-20','2013-10-20 15:38:53',1),(98,51,'2013-10-20','2013-10-20 15:38:58',1),(99,68,'2013-10-20','2013-10-20 15:39:01',1),(100,68,'2013-10-20','2013-10-20 15:39:04',1),(101,68,'2013-10-20','2013-10-20 15:39:05',1),(102,1,'2013-10-20','2013-10-20 15:39:09',1),(103,1,'2013-10-20','2013-10-20 15:48:49',1),(104,1,'2013-10-20','2013-10-20 15:50:24',1),(105,1,'2013-10-20','2013-10-20 15:50:29',1),(106,110,'2013-10-20','2013-10-20 15:51:00',1),(107,1,'2013-10-20','2013-10-20 15:51:00',0),(108,110,'2013-10-20','2013-10-20 15:51:25',0),(109,2,'2013-10-20','2013-10-20 15:51:27',1),(110,1,'2013-10-20','2013-10-20 15:51:39',1),(111,1,'2013-10-20','2013-10-20 15:51:42',1),(112,1,'2013-10-20','2013-10-20 15:53:42',1),(113,2,'2013-10-20','2013-10-20 16:04:02',1),(114,41,'2013-10-20','2013-10-20 16:04:09',1),(115,2,'2013-10-20','2013-10-20 16:04:11',1),(116,43,'2013-10-20','2013-10-20 16:04:14',1),(117,43,'2013-10-20','2013-10-20 16:05:30',1),(118,2,'2013-10-20','2013-10-20 16:06:42',1),(119,43,'2013-10-20','2013-10-20 16:06:46',1),(120,43,'2013-10-20','2013-10-20 16:11:16',1),(121,43,'2013-10-20','2013-10-20 16:12:08',1),(122,1,'2013-10-20','2013-10-20 16:12:19',1),(123,1,'2013-10-20','2013-10-20 16:12:23',1),(124,1,'2013-10-20','2013-10-20 16:14:42',1),(125,1,'2013-10-20','2013-10-20 16:14:52',1),(126,1,'2013-10-20','2013-10-20 16:16:42',1),(127,1,'2013-10-20','2013-10-20 16:19:16',1),(128,106,'2013-10-20','2013-10-20 16:19:18',1),(129,2,'2013-10-20','2013-10-20 16:19:25',1),(130,43,'2013-10-20','2013-10-20 16:19:29',1),(131,43,'2013-10-20','2013-10-20 16:21:12',1),(132,43,'2013-10-20','2013-10-20 16:21:15',1),(133,43,'2013-10-20','2013-10-20 16:21:18',1),(134,2,'2013-10-20','2013-10-20 16:21:37',1),(135,1,'2013-10-20','2013-10-20 16:23:09',1),(136,2,'2013-10-20','2013-10-20 16:30:30',1),(137,43,'2013-10-20','2013-10-20 16:30:36',1),(138,43,'2013-10-20','2013-10-20 16:30:50',1),(139,43,'2013-10-20','2013-10-20 16:31:23',1),(140,43,'2013-10-20','2013-10-20 16:31:27',1),(141,43,'2013-10-20','2013-10-20 16:31:54',1),(142,2,'2013-10-20','2013-10-20 16:31:58',1),(143,43,'2013-10-20','2013-10-20 16:32:03',1),(144,43,'2013-10-20','2013-10-20 16:32:08',1),(145,1,'2013-10-20','2013-10-20 16:32:19',1),(146,1,'2013-10-20','2013-10-20 16:32:24',1),(147,1,'2013-10-20','2013-10-20 16:32:27',1),(148,1,'2013-10-20','2013-10-20 16:33:09',1),(149,1,'2013-10-20','2013-10-20 16:34:08',1),(150,1,'2013-10-20','2013-10-20 16:34:53',1),(151,1,'2013-10-20','2013-10-20 16:35:23',1),(152,2,'2013-10-20','2013-10-20 16:43:20',1),(153,43,'2013-10-20','2013-10-20 16:43:24',1),(154,43,'2013-10-20','2013-10-20 16:43:29',1),(155,43,'2013-10-20','2013-10-20 16:43:32',1),(156,43,'2013-10-20','2013-10-20 16:43:36',1),(157,1,'2013-10-20','2013-10-20 16:43:38',1),(158,2,'2013-10-20','2013-10-20 16:47:51',1),(159,43,'2013-10-20','2013-10-20 16:47:55',1),(160,43,'2013-10-20','2013-10-20 16:47:59',1),(161,43,'2013-10-20','2013-10-20 16:48:02',1),(162,1,'2013-10-20','2013-10-20 16:48:07',1),(163,1,'2013-10-20','2013-10-20 16:48:10',1),(164,1,'2013-10-20','2013-10-20 16:48:13',1),(165,1,'2013-10-20','2013-10-20 17:12:51',1),(166,1,'2013-10-20','2013-10-20 17:12:56',1),(167,1,'2013-10-20','2013-10-20 17:19:49',1),(168,1,'2013-10-20','2013-10-20 17:22:46',1),(169,1,'2013-10-20','2013-10-20 17:25:31',1),(170,1,'2013-10-20','2013-10-20 17:33:43',1),(171,2,'2013-10-20','2013-10-20 17:33:50',1),(172,43,'2013-10-20','2013-10-20 17:33:54',1),(173,43,'2013-10-20','2013-10-20 17:33:59',1),(174,43,'2013-10-20','2013-10-20 17:34:02',1),(175,1,'2013-10-20','2013-10-20 17:34:07',1),(176,110,'2013-10-20','2013-10-20 17:36:54',1),(177,1,'2013-10-20','2013-10-20 17:36:54',0),(178,1,'2013-10-20','2013-10-20 17:45:35',0),(179,125,'2013-10-20','2013-10-20 17:50:33',0),(180,125,'2013-10-20','2013-10-20 17:55:34',0),(181,125,'2013-10-20','2013-10-20 17:55:47',0),(182,1,'2013-10-20','2013-10-20 17:57:06',0),(183,125,'2013-10-20','2013-10-20 17:59:46',0),(184,110,'2013-10-20','2013-10-20 18:00:02',0),(185,2,'2013-10-20','2013-10-20 18:00:03',1),(186,1,'2013-10-20','2013-10-20 18:00:06',1),(187,125,'2013-10-20','2013-10-20 18:00:09',1),(188,125,'2013-10-20','2013-10-20 18:00:11',1),(189,125,'2013-10-20','2013-10-20 18:01:28',1),(190,110,'2013-10-20','2013-10-20 18:01:34',1),(191,1,'2013-10-20','2013-10-20 18:01:34',0),(192,125,'2013-10-20','2013-10-20 18:01:37',0),(193,1,'2013-10-20','2013-10-20 18:04:27',0),(194,125,'2013-10-20','2013-10-20 18:04:35',0),(195,1,'2013-10-20','2013-10-20 18:04:38',0),(196,125,'2013-10-20','2013-10-20 18:12:44',0),(197,126,'2013-10-20','2013-10-20 18:12:48',0),(198,126,'2013-10-20','2013-10-20 18:14:05',0),(199,110,'2013-10-20','2013-10-20 18:15:59',0),(200,1,'2013-10-20','2013-10-20 18:15:59',0),(201,1,'2013-10-20','2013-10-20 18:33:15',0),(202,1,'2013-10-20','2013-10-20 21:37:40',0),(203,1,'2013-10-20','2013-10-20 21:37:47',0),(204,110,'2013-10-20','2013-10-20 21:37:56',0),(205,2,'2013-10-20','2013-10-20 21:37:58',1),(206,7,'2013-10-20','2013-10-20 21:38:02',1),(207,6,'2013-10-20','2013-10-20 21:38:25',1),(208,7,'2013-10-20','2013-10-20 21:38:25',1),(209,1,'2013-10-20','2013-10-20 21:38:33',1),(210,128,'2013-10-20','2013-10-20 21:38:37',1),(211,128,'2013-10-20','2013-10-20 21:38:39',1),(212,128,'2013-10-20','2013-10-20 21:38:43',1),(213,2,'2013-10-20','2013-10-20 21:41:01',1),(214,1,'2013-10-20','2013-10-20 21:41:05',1),(215,128,'2013-10-20','2013-10-20 21:41:08',1),(216,2,'2013-10-20','2013-10-20 21:42:30',1),(217,34,'2013-10-20','2013-10-20 21:42:35',1),(218,34,'2013-10-20','2013-10-20 21:42:42',1),(219,2,'2013-10-20','2013-10-20 21:43:03',1),(220,34,'2013-10-20','2013-10-20 21:43:07',1),(221,34,'2013-10-20','2013-10-20 21:43:15',1),(222,34,'2013-10-20','2013-10-20 21:43:41',1),(223,34,'2013-10-20','2013-10-20 21:43:42',1),(224,34,'2013-10-20','2013-10-20 21:44:07',1),(225,34,'2013-10-20','2013-10-20 21:44:20',1),(226,34,'2013-10-20','2013-10-20 21:44:21',1),(227,2,'2013-10-20','2013-10-20 21:47:26',1),(228,35,'2013-10-20','2013-10-20 21:47:30',1),(229,35,'2013-10-20','2013-10-20 21:47:45',1),(230,35,'2013-10-20','2013-10-20 21:47:46',1),(231,35,'2013-10-20','2013-10-20 21:49:27',1),(232,35,'2013-10-20','2013-10-20 21:49:27',1),(233,129,'2013-10-20','2013-10-20 21:50:04',1),(234,35,'2013-10-20','2013-10-20 21:50:10',1),(235,1,'2013-10-23','2013-10-23 01:48:39',0),(236,125,'2013-10-23','2013-10-23 01:48:49',0),(237,125,'2013-10-23','2013-10-23 01:48:50',0),(238,1,'2013-10-23','2013-10-23 01:48:56',0),(239,1,'2013-11-04','2013-11-04 00:51:09',0),(240,125,'2013-11-04','2013-11-04 00:51:23',0),(241,125,'2013-11-04','2013-11-04 00:51:24',0),(242,128,'2013-11-04','2013-11-04 00:51:29',0),(243,128,'2013-11-04','2013-11-04 00:51:29',0),(244,128,'2013-11-04','2013-11-04 00:51:30',0),(245,1,'2013-11-04','2013-11-04 00:51:31',0),(246,125,'2013-11-04','2013-11-04 00:53:30',0),(247,128,'2013-11-04','2013-11-04 00:53:32',0),(248,1,'2013-11-04','2013-11-04 00:53:35',0),(249,125,'2013-11-04','2013-11-04 00:54:46',0),(250,1,'2013-11-04','2013-11-04 00:54:51',0),(251,125,'2013-11-04','2013-11-04 00:54:53',0),(252,126,'2013-11-04','2013-11-04 00:54:55',0),(253,126,'2013-11-04','2013-11-04 00:54:56',0),(254,1,'2013-11-04','2013-11-04 00:56:00',0),(255,125,'2013-11-04','2013-11-04 00:56:04',0),(256,126,'2013-11-04','2013-11-04 00:56:06',0),(257,1,'2013-11-04','2013-11-04 00:56:37',0),(258,1,'2013-11-04','2013-11-04 13:09:20',0),(259,110,'2013-11-04','2013-11-04 13:09:32',0),(260,2,'2013-11-04','2013-11-04 13:09:34',1),(261,106,'2013-11-04','2013-11-04 13:09:35',1),(262,50,'2013-11-04','2013-11-04 13:10:34',1),(263,48,'2013-11-04','2013-11-04 13:10:34',1),(264,2,'2013-11-04','2013-11-04 13:10:43',1),(265,43,'2013-11-04','2013-11-04 13:10:50',1),(266,2,'2013-11-04','2013-11-04 13:11:02',1),(267,46,'2013-11-04','2013-11-04 13:11:25',1),(268,46,'2013-11-04','2013-11-04 13:11:28',1),(269,46,'2013-11-04','2013-11-04 13:11:29',1),(270,2,'2013-11-04','2013-11-04 13:11:41',1),(271,43,'2013-11-04','2013-11-04 13:11:45',1),(272,1,'2013-11-04','2013-11-04 13:12:29',1),(273,128,'2013-11-04','2013-11-04 13:12:34',1),(274,128,'2013-11-04','2013-11-04 13:12:36',1),(275,1,'2013-11-04','2013-11-04 14:00:58',1),(276,128,'2013-11-04','2013-11-04 14:01:07',1),(277,2,'2013-11-04','2013-11-04 14:01:41',1),(278,43,'2013-11-04','2013-11-04 14:01:46',1),(279,43,'2013-11-04','2013-11-04 14:01:54',1),(280,2,'2013-11-04','2013-11-04 14:02:02',1),(281,1,'2013-11-04','2013-11-04 14:02:09',1),(282,1,'2013-11-04','2013-11-04 14:02:12',1),(283,1,'2013-11-04','2013-11-04 14:02:18',1),(284,1,'2013-11-04','2013-11-04 14:02:22',1),(285,128,'2013-11-04','2013-11-04 14:02:25',1),(286,1,'2013-11-04','2013-11-04 14:02:27',1),(287,1,'2013-11-04','2013-11-04 14:02:40',1),(288,1,'2013-11-04','2013-11-04 14:02:52',1),(289,128,'2013-11-04','2013-11-04 14:02:55',1),(290,128,'2013-11-04','2013-11-04 14:03:01',1),(291,128,'2013-11-04','2013-11-04 17:28:05',1),(292,128,'2013-11-04','2013-11-04 17:28:08',1),(293,128,'2013-11-04','2013-11-04 17:28:22',1),(294,128,'2013-11-04','2013-11-04 17:28:26',1),(295,1,'2013-11-05','2013-11-05 01:43:58',0),(296,128,'2013-11-05','2013-11-05 01:44:02',0),(297,110,'2013-11-05','2013-11-05 01:44:13',0),(298,2,'2013-11-05','2013-11-05 01:44:15',1),(299,1,'2013-11-05','2013-11-05 01:44:30',1),(300,128,'2013-11-05','2013-11-05 01:44:35',1),(301,128,'2013-11-05','2013-11-05 01:44:44',1),(302,128,'2013-11-05','2013-11-05 02:55:28',1),(303,128,'2013-11-05','2013-11-05 02:56:50',1),(304,128,'2013-11-05','2013-11-05 03:00:25',1),(305,128,'2013-11-05','2013-11-05 03:09:46',1),(306,128,'2013-11-05','2013-11-05 03:14:23',1),(307,128,'2013-11-05','2013-11-05 20:41:54',1),(308,106,'2013-11-05','2013-11-05 20:42:00',1),(309,128,'2013-11-05','2013-11-05 20:42:12',1),(310,1,'2013-11-20','2013-11-20 23:17:31',0),(311,125,'2013-11-20','2013-11-20 23:17:38',0),(312,125,'2013-11-20','2013-11-20 23:17:39',0),(313,126,'2013-11-20','2013-11-20 23:18:23',0),(314,126,'2013-11-20','2013-11-20 23:18:24',0),(315,125,'2013-11-20','2013-11-20 23:18:27',0),(316,110,'2013-11-20','2013-11-20 23:18:37',0),(317,2,'2013-11-20','2013-11-20 23:18:39',1),(318,106,'2013-11-20','2013-11-20 23:18:41',1),(319,7,'2013-11-20','2013-11-20 23:18:49',1),(320,2,'2013-11-20','2013-11-20 23:18:56',1),(321,43,'2013-11-20','2013-11-20 23:19:44',1),(322,2,'2013-11-20','2013-11-20 23:19:56',1),(323,41,'2013-11-20','2013-11-20 23:22:14',1),(324,2,'2013-11-20','2013-11-20 23:22:17',1),(325,44,'2013-11-20','2013-11-20 23:22:39',1),(326,46,'2013-11-20','2013-11-20 23:22:39',1),(327,46,'2013-11-20','2013-11-20 23:22:45',1),(328,46,'2013-11-20','2013-11-20 23:22:45',1),(329,2,'2013-11-20','2013-11-20 23:22:57',1),(330,43,'2013-11-20','2013-11-20 23:23:02',1),(331,130,'2013-11-20','2013-11-20 23:25:24',1),(332,130,'2013-11-20','2013-11-20 23:25:24',1),(333,130,'2013-11-20','2013-11-20 23:25:41',1),(334,130,'2013-11-20','2013-11-20 23:25:51',1),(335,130,'2013-11-20','2013-11-20 23:25:56',1),(336,130,'2013-11-20','2013-11-20 23:26:10',1),(337,130,'2013-11-20','2013-11-20 23:26:11',1),(338,130,'2013-11-20','2013-11-20 23:26:22',1),(339,130,'2013-11-20','2013-11-20 23:30:01',1),(340,130,'2013-11-20','2013-11-20 23:30:01',1),(341,130,'2013-11-20','2013-11-20 23:30:18',1),(342,130,'2013-11-20','2013-11-20 23:30:23',1),(343,130,'2013-11-20','2013-11-20 23:30:33',1),(344,130,'2013-11-20','2013-11-20 23:30:33',1),(345,130,'2013-11-20','2013-11-20 23:30:41',1),(346,130,'2013-11-20','2013-11-20 23:30:58',1),(347,130,'2013-11-20','2013-11-20 23:30:59',1),(348,130,'2013-11-20','2013-11-20 23:31:04',1),(349,130,'2013-11-20','2013-11-20 23:31:04',1),(350,130,'2013-11-20','2013-11-20 23:31:10',1),(351,130,'2013-11-20','2013-11-20 23:32:09',1),(352,130,'2013-11-20','2013-11-20 23:32:09',1),(353,130,'2013-11-20','2013-11-20 23:32:14',1),(354,130,'2013-11-20','2013-11-20 23:32:25',1),(355,130,'2013-11-20','2013-11-20 23:32:26',1),(356,130,'2013-11-20','2013-11-20 23:32:32',1),(357,130,'2013-11-20','2013-11-20 23:32:46',1),(358,130,'2013-11-20','2013-11-20 23:32:46',1),(359,130,'2013-11-20','2013-11-20 23:32:49',1),(360,130,'2013-11-20','2013-11-20 23:32:59',1),(361,130,'2013-11-20','2013-11-20 23:33:13',1),(362,130,'2013-11-20','2013-11-20 23:33:13',1),(363,130,'2013-11-20','2013-11-20 23:33:23',1),(364,130,'2013-11-20','2013-11-20 23:33:26',1),(365,130,'2013-11-20','2013-11-20 23:33:26',1),(366,130,'2013-11-20','2013-11-20 23:33:30',1),(367,130,'2013-11-20','2013-11-20 23:33:42',1),(368,130,'2013-11-20','2013-11-20 23:33:42',1),(369,130,'2013-11-20','2013-11-20 23:33:52',1),(370,130,'2013-11-20','2013-11-20 23:34:00',1),(371,130,'2013-11-20','2013-11-20 23:34:04',1),(372,130,'2013-11-20','2013-11-20 23:34:21',1),(373,130,'2013-11-20','2013-11-20 23:34:21',1),(374,2,'2013-11-20','2013-11-20 23:38:14',1),(375,2,'2013-11-20','2013-11-20 23:38:15',1),(376,2,'2013-11-21','2013-11-21 22:00:03',1),(377,1,'2013-11-22','2013-11-22 12:26:47',0),(378,110,'2013-11-22','2013-11-22 12:27:04',0),(379,2,'2013-11-22','2013-11-22 12:27:06',1),(380,106,'2013-11-22','2013-11-22 12:27:07',1),(381,2,'2013-11-22','2013-11-22 12:30:09',1),(382,1,'2013-12-04','2013-12-04 11:00:21',0),(383,125,'2013-12-04','2013-12-04 11:01:25',0),(384,125,'2013-12-04','2013-12-04 11:01:26',0),(385,128,'2013-12-04','2013-12-04 11:01:28',0),(386,128,'2013-12-04','2013-12-04 11:01:31',0),(387,1,'2013-12-04','2013-12-04 11:01:43',0),(388,125,'2013-12-04','2013-12-04 11:04:05',0),(389,126,'2013-12-04','2013-12-04 11:04:08',0),(390,126,'2013-12-04','2013-12-04 11:04:09',0),(391,1,'2013-12-04','2013-12-04 11:23:24',0),(392,125,'2013-12-04','2013-12-04 11:23:27',0),(393,125,'2013-12-04','2013-12-04 11:23:38',0),(394,126,'2013-12-04','2013-12-04 11:23:42',0),(395,1,'2013-12-04','2013-12-04 11:24:30',0),(396,1,'2013-12-04','2013-12-04 16:01:51',0),(397,1,'2013-12-04','2013-12-04 17:22:34',0),(398,125,'2013-12-04','2013-12-04 17:22:40',0),(399,125,'2013-12-04','2013-12-04 17:22:41',0),(400,125,'2013-12-04','2013-12-04 17:22:41',0),(401,1,'2013-12-04','2013-12-04 17:22:42',0),(402,125,'2013-12-04','2013-12-04 17:24:26',0),(403,110,'2013-12-04','2013-12-04 17:27:58',0),(404,110,'2013-12-04','2013-12-04 17:28:02',0),(405,1,'2013-12-04','2013-12-04 17:28:03',1),(406,106,'2013-12-04','2013-12-04 17:28:05',1),(407,1,'2013-12-04','2013-12-04 17:28:13',1),(408,1,'2013-12-04','2013-12-04 17:28:23',1),(409,125,'2013-12-04','2013-12-04 17:28:26',1),(410,125,'2013-12-04','2013-12-04 17:28:32',1),(411,2,'2013-12-04','2013-12-04 17:35:17',1),(412,7,'2013-12-04','2013-12-04 17:35:23',1),(413,6,'2013-12-04','2013-12-04 17:37:31',1),(414,7,'2013-12-04','2013-12-04 17:37:31',1),(415,131,'2013-12-04','2013-12-04 17:37:37',1),(416,131,'2013-12-04','2013-12-04 17:37:44',1),(417,131,'2013-12-04','2013-12-04 17:37:58',1),(418,125,'2013-12-04','2013-12-04 17:38:02',1),(419,125,'2013-12-04','2013-12-04 17:38:13',1),(420,1,'2013-12-04','2013-12-04 18:13:02',1),(421,125,'2013-12-04','2013-12-04 18:17:40',1),(422,126,'2013-12-04','2013-12-04 18:17:43',1),(423,126,'2013-12-04','2013-12-04 18:17:44',1),(424,126,'2013-12-04','2013-12-04 18:17:46',1),(425,1,'2013-12-04','2013-12-04 18:19:25',1),(426,2,'2013-12-04','2013-12-04 18:19:31',1),(427,4,'2013-12-04','2013-12-04 18:20:17',1),(428,2,'2013-12-04','2013-12-04 18:20:23',1),(429,17,'2013-12-04','2013-12-04 18:20:42',1),(430,20,'2013-12-04','2013-12-04 18:20:52',1),(431,20,'2013-12-04','2013-12-04 18:21:11',1),(432,17,'2013-12-04','2013-12-04 18:21:12',1),(433,17,'2013-12-04','2013-12-04 18:21:19',1),(434,2,'2013-12-04','2013-12-04 18:21:21',1),(435,18,'2013-12-04','2013-12-04 18:21:33',1),(436,17,'2013-12-04','2013-12-04 18:21:44',1),(437,17,'2013-12-04','2013-12-04 18:21:47',1),(438,2,'2013-12-04','2013-12-04 18:21:53',1),(439,16,'2013-12-04','2013-12-04 18:21:57',1),(440,2,'2013-12-04','2013-12-04 18:22:12',1),(441,130,'2013-12-04','2013-12-04 18:22:25',1),(442,130,'2013-12-04','2013-12-04 18:22:26',1),(443,2,'2013-12-04','2013-12-04 18:22:31',1),(444,51,'2013-12-04','2013-12-04 18:22:36',1),(445,83,'2013-12-04','2013-12-04 18:22:46',1),(446,83,'2013-12-04','2013-12-04 18:22:52',1),(447,83,'2013-12-04','2013-12-04 18:22:52',1),(448,2,'2013-12-04','2013-12-04 18:23:03',1),(449,51,'2013-12-04','2013-12-04 18:23:17',1),(450,76,'2013-12-04','2013-12-04 18:23:26',1),(451,1,'2013-12-04','2013-12-04 18:23:42',1),(452,126,'2013-12-05','2013-12-05 01:27:18',1),(453,2,'2013-12-05','2013-12-05 03:50:21',1),(454,35,'2013-12-05','2013-12-05 03:50:26',1),(455,35,'2013-12-05','2013-12-05 03:50:45',1),(456,35,'2013-12-05','2013-12-05 03:50:45',1),(457,7,'2013-12-05','2013-12-05 03:50:56',1),(458,132,'2013-12-05','2013-12-05 03:51:56',1),(459,132,'2013-12-05','2013-12-05 03:54:01',1),(460,132,'2013-12-05','2013-12-05 03:55:57',1),(461,132,'2013-12-05','2013-12-05 03:56:59',1),(462,132,'2013-12-05','2013-12-05 03:57:31',1),(463,132,'2013-12-05','2013-12-05 04:01:20',1),(464,132,'2013-12-05','2013-12-05 04:03:52',1),(465,132,'2013-12-05','2013-12-05 04:04:01',1),(466,132,'2013-12-05','2013-12-05 04:04:35',1),(467,132,'2013-12-05','2013-12-05 04:05:48',1),(468,1,'2013-12-05','2013-12-05 04:05:48',1),(469,2,'2013-12-05','2013-12-05 04:08:34',1),(470,7,'2013-12-05','2013-12-05 04:08:39',1),(471,1,'2013-12-05','2013-12-05 04:09:21',1),(472,120,'2013-12-05','2013-12-05 04:09:25',1),(473,120,'2013-12-05','2013-12-05 04:09:27',1),(474,2,'2013-12-05','2013-12-05 04:09:50',1),(475,51,'2013-12-05','2013-12-05 04:09:58',1),(476,83,'2013-12-05','2013-12-05 04:10:05',1),(477,83,'2013-12-05','2013-12-05 04:10:12',1),(478,83,'2013-12-05','2013-12-05 04:10:12',1),(479,51,'2013-12-05','2013-12-05 04:10:24',1),(480,7,'2013-12-05','2013-12-05 04:10:48',1),(481,7,'2013-12-05','2013-12-05 04:10:54',1),(482,1,'2013-12-05','2013-12-05 04:11:30',1),(483,2,'2013-12-05','2013-12-05 04:15:03',1),(484,7,'2013-12-05','2013-12-05 04:15:10',1),(485,6,'2013-12-05','2013-12-05 04:15:31',1),(486,7,'2013-12-05','2013-12-05 04:15:32',1),(487,6,'2013-12-05','2013-12-05 04:15:47',1),(488,7,'2013-12-05','2013-12-05 04:15:47',1),(489,1,'2013-12-05','2013-12-05 04:15:52',1),(490,110,'2013-12-05','2013-12-05 04:16:08',1),(491,1,'2013-12-05','2013-12-05 04:16:09',0),(492,133,'2013-12-05','2013-12-05 11:44:46',0),(493,133,'2013-12-05','2013-12-05 11:44:48',0),(494,134,'2013-12-05','2013-12-05 11:44:54',0),(495,134,'2013-12-05','2013-12-05 11:44:55',0),(496,1,'2013-12-05','2013-12-05 11:44:56',0),(497,134,'2013-12-05','2013-12-05 11:44:57',0),(498,125,'2013-12-05','2013-12-05 11:44:58',0),(499,125,'2013-12-05','2013-12-05 11:54:29',0),(500,133,'2013-12-05','2013-12-05 11:55:54',0),(501,1,'2013-12-05','2013-12-05 11:55:56',0),(502,125,'2013-12-05','2013-12-05 11:55:59',0),(503,133,'2013-12-05','2013-12-05 11:57:35',0),(504,134,'2013-12-05','2013-12-05 11:57:38',0),(505,1,'2013-12-05','2013-12-05 11:57:40',0),(506,125,'2013-12-05','2013-12-05 11:57:42',0),(507,132,'2013-12-05','2013-12-05 11:58:35',0),(508,110,'2013-12-05','2013-12-05 11:58:53',0),(509,110,'2013-12-05','2013-12-05 11:58:56',0),(510,1,'2013-12-05','2013-12-05 11:58:57',1),(511,132,'2013-12-05','2013-12-05 11:59:08',1),(512,1,'2014-01-09','2014-01-09 23:14:24',0),(513,125,'2014-01-09','2014-01-09 23:14:52',0),(514,125,'2014-01-09','2014-01-09 23:14:53',0),(515,126,'2014-01-09','2014-01-09 23:14:56',0),(516,126,'2014-01-09','2014-01-09 23:14:57',0),(517,125,'2014-01-09','2014-01-09 23:15:06',0),(518,133,'2014-01-09','2014-01-09 23:15:20',0),(519,133,'2014-01-09','2014-01-09 23:15:21',0),(520,1,'2014-01-09','2014-01-09 23:15:31',0),(521,125,'2014-01-09','2014-01-09 23:16:15',0),(522,126,'2014-01-09','2014-01-09 23:16:21',0),(523,131,'2014-01-09','2014-01-09 23:17:04',0),(524,131,'2014-01-09','2014-01-09 23:17:06',0),(525,125,'2014-01-09','2014-01-09 23:17:11',0),(526,131,'2014-01-09','2014-01-09 23:17:14',0),(527,125,'2014-01-09','2014-01-09 23:17:19',0),(528,126,'2014-01-09','2014-01-09 23:17:22',0),(529,126,'2014-01-09','2014-01-09 23:33:04',0),(530,133,'2014-01-09','2014-01-09 23:33:21',0),(531,1,'2014-01-09','2014-01-09 23:33:23',0),(532,134,'2014-01-09','2014-01-09 23:33:47',0),(533,134,'2014-01-09','2014-01-09 23:33:48',0),(534,133,'2014-01-09','2014-01-09 23:33:50',0),(535,1,'2014-01-09','2014-01-09 23:33:52',0),(536,125,'2014-01-09','2014-01-09 23:33:56',0),(537,133,'2014-01-09','2014-01-09 23:33:59',0),(538,1,'2014-01-09','2014-01-09 23:34:01',0),(539,125,'2014-01-09','2014-01-09 23:34:05',0),(540,126,'2014-01-09','2014-01-09 23:38:46',0),(541,126,'2014-01-09','2014-01-09 23:38:50',0),(542,131,'2014-01-09','2014-01-09 23:38:51',0),(543,126,'2014-01-09','2014-01-09 23:38:59',0),(544,110,'2014-01-09','2014-01-09 23:39:11',0),(545,110,'2014-01-09','2014-01-09 23:39:14',0),(546,1,'2014-01-09','2014-01-09 23:39:15',1),(547,106,'2014-01-09','2014-01-09 23:39:17',1),(548,1,'2014-01-09','2014-01-09 23:39:27',1),(549,1,'2014-01-09','2014-01-09 23:39:39',1),(550,125,'2014-01-09','2014-01-09 23:39:42',1),(551,126,'2014-01-09','2014-01-09 23:39:44',1),(552,126,'2014-01-09','2014-01-09 23:39:46',1),(553,132,'2014-01-09','2014-01-09 23:44:38',1),(554,126,'2014-01-09','2014-01-09 23:46:27',1),(555,126,'2014-01-09','2014-01-09 23:47:23',1),(556,2,'2014-01-09','2014-01-09 23:54:35',1),(557,16,'2014-01-09','2014-01-09 23:54:43',1),(558,19,'2014-01-09','2014-01-09 23:54:48',1),(559,19,'2014-01-09','2014-01-09 23:55:20',1),(560,16,'2014-01-09','2014-01-09 23:55:21',1),(561,110,'2014-01-09','2014-01-09 23:55:27',1),(562,1,'2014-01-09','2014-01-09 23:55:27',0),(563,110,'2014-01-09','2014-01-09 23:55:33',0),(564,110,'2014-01-09','2014-01-09 23:55:47',0),(565,1,'2014-01-09','2014-01-09 23:55:49',2),(566,106,'2014-01-09','2014-01-09 23:55:50',2),(567,110,'2014-01-09','2014-01-09 23:56:01',2),(568,1,'2014-01-09','2014-01-09 23:56:07',2),(569,132,'2014-01-09','2014-01-09 23:56:15',2),(570,1,'2014-01-09','2014-01-09 23:57:24',2),(571,125,'2014-01-09','2014-01-09 23:57:27',2),(572,126,'2014-01-09','2014-01-09 23:57:30',2),(573,126,'2014-01-09','2014-01-09 23:58:20',2),(574,132,'2014-01-09','2014-01-09 23:58:45',2),(575,1,'2014-01-09','2014-01-09 23:58:45',2),(576,132,'2014-01-10','2014-01-10 00:01:12',2),(577,132,'2014-01-10','2014-01-10 00:24:59',2),(578,132,'2014-01-10','2014-01-10 00:25:38',2),(579,132,'2014-01-10','2014-01-10 00:27:29',2),(580,132,'2014-01-10','2014-01-10 00:27:46',2),(581,132,'2014-01-10','2014-01-10 00:43:52',2),(582,132,'2014-01-10','2014-01-10 00:48:47',2),(583,132,'2014-01-10','2014-01-10 00:49:34',2),(584,132,'2014-01-10','2014-01-10 00:49:51',2),(585,132,'2014-01-10','2014-01-10 00:51:00',2),(586,132,'2014-01-10','2014-01-10 00:53:12',2),(587,132,'2014-01-10','2014-01-10 00:56:41',2),(588,132,'2014-01-10','2014-01-10 00:58:28',2),(589,132,'2014-01-10','2014-01-10 00:58:58',2),(590,132,'2014-01-10','2014-01-10 00:59:36',2),(591,132,'2014-01-10','2014-01-10 01:00:26',2),(592,132,'2014-01-10','2014-01-10 01:00:43',2),(593,132,'2014-01-10','2014-01-10 01:01:04',2),(594,132,'2014-01-10','2014-01-10 01:01:57',2),(595,132,'2014-01-10','2014-01-10 01:02:31',2),(596,132,'2014-01-10','2014-01-10 01:02:52',2),(597,132,'2014-01-10','2014-01-10 01:04:10',2),(598,132,'2014-01-10','2014-01-10 01:04:49',2),(599,132,'2014-01-10','2014-01-10 01:04:59',2),(600,132,'2014-01-10','2014-01-10 01:05:23',2),(601,132,'2014-01-10','2014-01-10 01:08:13',2),(602,132,'2014-01-10','2014-01-10 01:09:39',2),(603,132,'2014-01-10','2014-01-10 01:12:51',2),(604,132,'2014-01-10','2014-01-10 01:13:21',2),(605,132,'2014-01-10','2014-01-10 01:14:04',2),(606,132,'2014-01-10','2014-01-10 01:14:50',2),(607,133,'2014-01-10','2014-01-10 01:15:22',2),(608,125,'2014-01-10','2014-01-10 01:15:24',2),(609,1,'2014-01-10','2014-01-10 01:15:27',2),(610,125,'2014-01-10','2014-01-10 01:15:29',2),(611,133,'2014-01-10','2014-01-10 01:15:39',2),(612,125,'2014-01-10','2014-01-10 01:15:41',2),(613,132,'2014-01-10','2014-01-10 01:37:33',2),(614,132,'2014-01-10','2014-01-10 01:38:08',2),(615,132,'2014-01-10','2014-01-10 01:39:16',2),(616,132,'2014-01-10','2014-01-10 01:39:33',2),(617,132,'2014-01-10','2014-01-10 01:55:11',2),(618,132,'2014-01-11','2014-01-11 00:39:25',2),(619,106,'2014-01-11','2014-01-11 00:39:27',2),(620,132,'2014-01-11','2014-01-11 00:52:43',2),(621,132,'2014-01-11','2014-01-11 00:53:01',2),(622,132,'2014-01-11','2014-01-11 01:18:07',2),(623,132,'2014-01-11','2014-01-11 01:18:14',2),(624,132,'2014-01-11','2014-01-11 01:18:23',2),(625,132,'2014-01-11','2014-01-11 01:19:36',2),(626,132,'2014-01-11','2014-01-11 01:19:40',2),(627,132,'2014-01-11','2014-01-11 01:22:51',2),(628,132,'2014-01-11','2014-01-11 01:22:55',2),(629,132,'2014-01-11','2014-01-11 01:23:45',2),(630,132,'2014-01-11','2014-01-11 01:24:33',2),(631,132,'2014-01-11','2014-01-11 01:25:15',2),(632,132,'2014-01-11','2014-01-11 01:25:16',2),(633,132,'2014-01-11','2014-01-11 01:26:41',2),(634,132,'2014-01-11','2014-01-11 01:27:31',2),(635,132,'2014-01-11','2014-01-11 01:31:46',2),(636,132,'2014-01-11','2014-01-11 01:32:34',2),(637,132,'2014-01-11','2014-01-11 01:33:54',2),(638,132,'2014-01-11','2014-01-11 01:42:16',2),(639,132,'2014-01-11','2014-01-11 01:47:34',2),(640,132,'2014-01-11','2014-01-11 01:47:59',2),(641,132,'2014-01-11','2014-01-11 01:48:16',2),(642,132,'2014-01-11','2014-01-11 01:48:26',2),(643,132,'2014-01-11','2014-01-11 01:48:34',2),(644,132,'2014-01-11','2014-01-11 01:48:50',2),(645,132,'2014-01-11','2014-01-11 01:49:20',2),(646,132,'2014-01-11','2014-01-11 01:49:23',2),(647,110,'2014-01-11','2014-01-11 01:52:41',0),(648,2,'2014-01-11','2014-01-11 01:52:42',1),(649,106,'2014-01-11','2014-01-11 01:52:44',1),(650,11,'2014-01-11','2014-01-11 01:52:50',1),(651,1,'2014-01-11','2014-01-11 01:55:54',0),(652,132,'2014-01-11','2014-01-11 01:55:59',0),(653,132,'2014-01-11','2014-01-11 01:56:22',0),(654,132,'2014-01-11','2014-01-11 02:00:14',0),(655,132,'2014-01-11','2014-01-11 02:00:40',0),(656,132,'2014-01-11','2014-01-11 02:01:20',0),(657,132,'2014-01-11','2014-01-11 02:01:28',0),(658,110,'2014-01-11','2014-01-11 02:01:37',0),(659,110,'2014-01-11','2014-01-11 02:01:41',0),(660,1,'2014-01-11','2014-01-11 02:01:42',1),(661,132,'2014-01-11','2014-01-11 02:01:49',1),(662,132,'2014-01-11','2014-01-11 02:02:04',1),(663,132,'2014-01-11','2014-01-11 02:02:41',1),(664,132,'2014-01-11','2014-01-11 02:02:43',1),(665,132,'2014-01-11','2014-01-11 02:04:46',1),(666,2,'2014-01-11','2014-01-11 02:04:53',1),(667,11,'2014-01-11','2014-01-11 02:04:58',1),(668,1,'2014-01-11','2014-01-11 02:06:36',1),(669,133,'2014-01-11','2014-01-11 02:06:40',1),(670,133,'2014-01-11','2014-01-11 02:06:41',1),(671,125,'2014-01-11','2014-01-11 02:06:42',1),(672,125,'2014-01-11','2014-01-11 02:06:44',1),(673,131,'2014-01-11','2014-01-11 02:06:47',1),(674,131,'2014-01-11','2014-01-11 02:06:48',1),(675,132,'2014-01-11','2014-01-11 14:06:12',1),(676,1,'2014-01-11','2014-01-11 14:58:48',1),(677,2,'2014-01-11','2014-01-11 14:58:50',1),(678,16,'2014-01-11','2014-01-11 14:59:16',1),(679,17,'2014-01-11','2014-01-11 14:59:24',1),(680,21,'2014-01-11','2014-01-11 14:59:34',1),(681,2,'2014-01-11','2014-01-11 14:59:40',1),(682,51,'2014-01-11','2014-01-11 14:59:54',1),(683,83,'2014-01-11','2014-01-11 15:00:01',1),(684,83,'2014-01-11','2014-01-11 15:00:15',1),(685,83,'2014-01-11','2014-01-11 15:00:15',1),(686,1,'2014-01-11','2014-01-11 15:00:25',1),(687,112,'2014-01-11','2014-01-11 15:00:34',1),(688,112,'2014-01-11','2014-01-11 15:00:36',1),(689,112,'2014-01-11','2014-01-11 15:00:48',1),(690,112,'2014-01-11','2014-01-11 15:00:49',1),(691,2,'2014-01-11','2014-01-11 15:01:03',1),(692,7,'2014-01-11','2014-01-11 15:01:13',1),(693,1,'2014-01-11','2014-01-11 15:01:56',1),(694,112,'2014-01-11','2014-01-11 15:02:05',1),(695,112,'2014-01-11','2014-01-11 15:02:19',1),(696,112,'2014-01-11','2014-01-11 15:02:20',1),(697,112,'2014-01-11','2014-01-11 15:03:32',1),(698,132,'2014-01-11','2014-01-11 15:10:00',1),(699,2,'2014-01-11','2014-01-11 15:23:40',1),(700,7,'2014-01-11','2014-01-11 15:23:43',1),(701,1,'2014-01-11','2014-01-11 15:24:09',1),(702,133,'2014-01-11','2014-01-11 15:24:12',1),(703,1,'2014-01-11','2014-01-11 15:24:15',1),(704,1,'2014-01-11','2014-01-11 15:26:58',1),(705,112,'2014-01-11','2014-01-11 15:34:07',1),(706,112,'2014-01-11','2014-01-11 15:34:08',1),(707,112,'2014-01-11','2014-01-11 15:34:11',1),(708,112,'2014-01-11','2014-01-11 15:35:02',1),(709,1,'2014-01-11','2014-01-11 15:35:06',1),(710,112,'2014-01-11','2014-01-11 15:43:35',1),(711,112,'2014-01-11','2014-01-11 15:43:36',1),(712,112,'2014-01-11','2014-01-11 15:44:12',1),(713,112,'2014-01-11','2014-01-11 15:45:57',1),(714,112,'2014-01-11','2014-01-11 15:46:14',1),(715,112,'2014-01-11','2014-01-11 15:47:14',1),(716,112,'2014-01-11','2014-01-11 15:49:22',1),(717,112,'2014-01-11','2014-01-11 15:50:42',1),(718,112,'2014-01-11','2014-01-11 15:50:57',1),(719,112,'2014-01-11','2014-01-11 15:50:58',1),(720,1,'2014-01-11','2014-01-11 15:51:36',1),(721,112,'2014-01-11','2014-01-11 15:51:43',1),(722,2,'2014-01-11','2014-01-11 15:52:10',1),(723,110,'2014-01-11','2014-01-11 15:52:13',1),(724,1,'2014-01-11','2014-01-11 15:52:13',0),(725,112,'2014-01-11','2014-01-11 15:52:23',0),(726,112,'2014-01-11','2014-01-11 15:54:03',0),(727,110,'2014-01-11','2014-01-11 15:55:17',0),(728,110,'2014-01-11','2014-01-11 15:55:25',0),(729,1,'2014-01-11','2014-01-11 15:55:26',2),(730,2,'2014-01-11','2014-01-11 15:55:35',2),(731,113,'2014-01-11','2014-01-11 15:55:57',2),(732,113,'2014-01-11','2014-01-11 15:55:58',2),(733,114,'2014-01-11','2014-01-11 15:57:03',2),(734,114,'2014-01-11','2014-01-11 15:57:04',2),(735,114,'2014-01-11','2014-01-11 15:57:04',2),(736,114,'2014-01-11','2014-01-11 15:57:39',2),(737,114,'2014-01-11','2014-01-11 15:57:39',2),(738,114,'2014-01-11','2014-01-11 15:57:41',2),(739,113,'2014-01-11','2014-01-11 15:58:22',2),(740,112,'2014-01-11','2014-01-11 15:59:13',2),(741,113,'2014-01-11','2014-01-11 15:59:21',2),(742,114,'2014-01-11','2014-01-11 15:59:29',2),(743,114,'2014-01-11','2014-01-11 15:59:34',2),(744,114,'2014-01-11','2014-01-11 15:59:34',2),(745,114,'2014-01-11','2014-01-11 15:59:35',2),(746,114,'2014-01-11','2014-01-11 15:59:36',2),(747,114,'2014-01-11','2014-01-11 16:00:06',2),(748,114,'2014-01-11','2014-01-11 16:00:07',2),(749,114,'2014-01-11','2014-01-11 16:00:09',2),(750,114,'2014-01-11','2014-01-11 16:00:16',2),(751,114,'2014-01-11','2014-01-11 16:00:16',2),(752,114,'2014-01-11','2014-01-11 16:00:18',2),(753,114,'2014-01-11','2014-01-11 16:00:38',2),(754,114,'2014-01-11','2014-01-11 16:00:38',2),(755,114,'2014-01-11','2014-01-11 16:00:40',2),(756,112,'2014-01-11','2014-01-11 16:00:48',2),(757,112,'2014-01-11','2014-01-11 16:02:39',2),(758,1,'2014-01-11','2014-01-11 16:02:47',2),(759,110,'2014-01-11','2014-01-11 16:02:51',2),(760,1,'2014-01-11','2014-01-11 16:02:51',0),(761,112,'2014-01-11','2014-01-11 16:02:57',0),(762,110,'2014-01-11','2014-01-11 16:03:12',0),(763,110,'2014-01-11','2014-01-11 16:03:18',0),(764,1,'2014-01-11','2014-01-11 16:03:20',2),(765,112,'2014-01-11','2014-01-11 16:03:49',2),(766,113,'2014-01-11','2014-01-11 16:03:55',2),(767,112,'2014-01-11','2014-01-11 16:13:19',2),(768,112,'2014-01-11','2014-01-11 16:19:39',2),(769,112,'2014-01-11','2014-01-11 16:23:03',2),(770,1,'2014-01-11','2014-01-11 16:26:25',2),(771,112,'2014-01-11','2014-01-11 16:26:37',2),(772,112,'2014-01-11','2014-01-11 16:35:03',2),(773,112,'2014-01-11','2014-01-11 16:35:22',2),(774,1,'2014-01-11','2014-01-11 16:35:44',2),(775,1,'2014-01-11','2014-01-11 16:38:38',2),(776,112,'2014-01-11','2014-01-11 16:38:48',2),(777,112,'2014-01-11','2014-01-11 16:38:52',2),(778,112,'2014-01-11','2014-01-11 16:39:07',2),(779,112,'2014-01-11','2014-01-11 16:40:41',2),(780,112,'2014-01-11','2014-01-11 16:41:31',2),(781,112,'2014-01-11','2014-01-11 16:41:54',2),(782,112,'2014-01-11','2014-01-11 16:42:47',2),(783,112,'2014-01-11','2014-01-11 16:42:53',2),(784,112,'2014-01-11','2014-01-11 16:46:20',2),(785,2,'2014-01-11','2014-01-11 16:49:32',2),(786,18,'2014-01-11','2014-01-11 16:49:35',2),(787,18,'2014-01-11','2014-01-11 16:49:38',2),(788,18,'2014-01-11','2014-01-11 16:50:10',2),(789,18,'2014-01-11','2014-01-11 16:50:11',2),(790,18,'2014-01-11','2014-01-11 16:50:19',2),(791,112,'2014-01-11','2014-01-11 16:56:23',2),(792,112,'2014-01-11','2014-01-11 16:56:53',2),(793,112,'2014-01-11','2014-01-11 16:57:26',2),(794,112,'2014-01-11','2014-01-11 16:57:31',2),(795,112,'2014-01-11','2014-01-11 16:59:29',2),(796,112,'2014-01-11','2014-01-11 17:00:07',2),(797,112,'2014-01-11','2014-01-11 17:00:15',2),(798,113,'2014-01-11','2014-01-11 17:01:00',2),(799,113,'2014-01-11','2014-01-11 17:01:27',2),(800,113,'2014-01-11','2014-01-11 17:02:24',2),(801,113,'2014-01-11','2014-01-11 17:02:29',2),(802,113,'2014-01-11','2014-01-11 17:02:48',2),(803,113,'2014-01-11','2014-01-11 17:02:56',2),(804,113,'2014-01-11','2014-01-11 17:03:25',2),(805,113,'2014-01-11','2014-01-11 17:03:50',2),(806,113,'2014-01-11','2014-01-11 17:04:04',2),(807,113,'2014-01-11','2014-01-11 17:04:10',2),(808,113,'2014-01-11','2014-01-11 17:04:20',2),(809,113,'2014-01-11','2014-01-11 17:05:35',2),(810,113,'2014-01-11','2014-01-11 17:05:59',2),(811,113,'2014-01-11','2014-01-11 17:06:58',2),(812,113,'2014-01-11','2014-01-11 17:07:14',2),(813,113,'2014-01-11','2014-01-11 17:07:32',2),(814,113,'2014-01-11','2014-01-11 17:08:13',2),(815,113,'2014-01-11','2014-01-11 17:08:22',2),(816,113,'2014-01-11','2014-01-11 17:10:04',2),(817,113,'2014-01-11','2014-01-11 17:10:05',2),(818,113,'2014-01-11','2014-01-11 17:10:06',2),(819,113,'2014-01-11','2014-01-11 17:10:46',2),(820,113,'2014-01-11','2014-01-11 17:11:26',2),(821,113,'2014-01-11','2014-01-11 17:11:27',2),(822,1,'2014-01-11','2014-01-11 17:11:56',2),(823,1,'2014-01-11','2014-01-11 17:12:57',2),(824,1,'2014-01-11','2014-01-11 17:13:17',2),(825,1,'2014-01-11','2014-01-11 17:13:48',2),(826,1,'2014-01-11','2014-01-11 17:15:13',2),(827,133,'2014-01-11','2014-01-11 17:16:50',2),(828,1,'2014-01-11','2014-01-11 17:16:53',2),(829,133,'2014-01-11','2014-01-11 17:16:59',2),(830,133,'2014-01-11','2014-01-11 17:17:01',2),(831,133,'2014-01-11','2014-01-11 17:19:19',2),(832,1,'2014-01-11','2014-01-11 17:19:24',2),(833,112,'2014-01-11','2014-01-11 17:19:49',2),(834,112,'2014-01-11','2014-01-11 17:20:03',2),(835,112,'2014-01-11','2014-01-11 17:20:10',2),(836,112,'2014-01-11','2014-01-11 17:20:18',2),(837,112,'2014-01-11','2014-01-11 17:20:32',2),(838,112,'2014-01-11','2014-01-11 17:21:12',2),(839,2,'2014-01-11','2014-01-11 17:21:15',2),(840,7,'2014-01-11','2014-01-11 17:21:18',2),(841,6,'2014-01-11','2014-01-11 17:21:53',2),(842,7,'2014-01-11','2014-01-11 17:21:54',2),(843,1,'2014-01-11','2014-01-11 17:22:30',2),(844,135,'2014-01-11','2014-01-11 17:22:51',2),(845,1,'2014-01-11','2014-01-11 17:22:55',2),(846,133,'2014-01-11','2014-01-11 17:23:06',2),(847,1,'2014-01-11','2014-01-11 17:23:09',2),(848,135,'2014-01-11','2014-01-11 17:23:41',2),(849,1,'2014-01-11','2014-01-11 17:23:44',2),(850,135,'2014-01-11','2014-01-11 17:25:37',2),(851,1,'2014-01-11','2014-01-11 17:25:41',2),(852,133,'2014-01-11','2014-01-11 17:26:01',2),(853,135,'2014-01-11','2014-01-11 17:26:03',2),(854,135,'2014-01-11','2014-01-11 17:26:15',2),(855,135,'2014-01-11','2014-01-11 17:26:19',2),(856,135,'2014-01-11','2014-01-11 17:27:42',2),(857,135,'2014-01-11','2014-01-11 17:27:47',2),(858,135,'2014-01-11','2014-01-11 17:27:53',2),(859,2,'2014-01-11','2014-01-11 17:28:19',2),(860,51,'2014-01-11','2014-01-11 17:28:26',2),(861,83,'2014-01-11','2014-01-11 17:28:31',2),(862,2,'2014-01-11','2014-01-11 17:28:50',2),(863,51,'2014-01-11','2014-01-11 17:28:56',2),(864,82,'2014-01-11','2014-01-11 17:29:01',2),(865,82,'2014-01-11','2014-01-11 17:29:10',2),(866,82,'2014-01-11','2014-01-11 17:29:11',2),(867,1,'2014-01-11','2014-01-11 17:29:17',2),(868,113,'2014-01-11','2014-01-11 17:31:23',2),(869,113,'2014-01-11','2014-01-11 17:31:36',2),(870,113,'2014-01-11','2014-01-11 17:32:37',2),(871,113,'2014-01-11','2014-01-11 17:32:45',2),(872,113,'2014-01-11','2014-01-11 17:32:56',2),(873,120,'2014-01-11','2014-01-11 17:33:09',2),(874,120,'2014-01-11','2014-01-11 17:33:10',2),(875,113,'2014-01-11','2014-01-11 17:33:26',2),(876,2,'2014-01-11','2014-01-11 17:33:42',2),(877,18,'2014-01-11','2014-01-11 17:33:45',2),(878,18,'2014-01-11','2014-01-11 17:33:52',2),(879,18,'2014-01-11','2014-01-11 17:34:02',2),(880,18,'2014-01-11','2014-01-11 17:34:03',2),(881,18,'2014-01-11','2014-01-11 17:34:05',2),(882,18,'2014-01-11','2014-01-11 17:34:16',2),(883,18,'2014-01-11','2014-01-11 17:34:16',2),(884,113,'2014-01-11','2014-01-11 17:34:24',2),(885,112,'2014-01-11','2014-01-11 17:35:24',2),(886,112,'2014-01-11','2014-01-11 17:35:53',2),(887,112,'2014-01-11','2014-01-11 17:37:25',2),(888,120,'2014-01-11','2014-01-11 17:41:38',2),(889,2,'2014-01-11','2014-01-11 17:42:57',2),(890,7,'2014-01-11','2014-01-11 17:43:01',2),(891,135,'2014-01-11','2014-01-11 17:43:09',2),(892,7,'2014-01-11','2014-01-11 17:43:15',2),(893,1,'2014-01-11','2014-01-11 17:43:52',2),(894,135,'2014-01-11','2014-01-11 17:43:55',2),(895,135,'2014-01-11','2014-01-11 17:43:56',2),(896,120,'2014-01-11','2014-01-11 17:44:12',2),(897,2,'2014-01-11','2014-01-11 17:44:17',2),(898,7,'2014-01-11','2014-01-11 17:44:27',2),(899,1,'2014-01-11','2014-01-11 17:46:04',2),(900,2,'2014-01-11','2014-01-11 17:46:08',2),(901,7,'2014-01-11','2014-01-11 17:46:11',2),(902,120,'2014-01-11','2014-01-11 17:46:59',2),(903,7,'2014-01-11','2014-01-11 17:48:27',2),(904,7,'2014-01-11','2014-01-11 17:48:48',2),(905,1,'2014-01-11','2014-01-11 17:49:51',2),(906,120,'2014-01-11','2014-01-11 17:49:54',2),(907,1,'2014-01-11','2014-01-11 17:49:57',2),(908,120,'2014-01-11','2014-01-11 17:51:55',2),(909,120,'2014-01-11','2014-01-11 17:52:16',2),(910,120,'2014-01-11','2014-01-11 17:53:33',2),(911,120,'2014-01-11','2014-01-11 17:54:02',2),(912,120,'2014-01-11','2014-01-11 17:54:40',2),(913,133,'2014-01-11','2014-01-11 17:55:54',2),(914,120,'2014-01-11','2014-01-11 17:55:57',2),(915,120,'2014-01-11','2014-01-11 17:56:08',2),(916,120,'2014-01-11','2014-01-11 17:56:11',2),(917,120,'2014-01-11','2014-01-11 17:56:22',2),(918,133,'2014-01-11','2014-01-11 17:56:25',2),(919,120,'2014-01-11','2014-01-11 17:56:45',2),(920,133,'2014-01-11','2014-01-11 17:57:20',2),(921,1,'2014-01-11','2014-01-11 17:57:23',2),(922,133,'2014-01-11','2014-01-11 17:57:26',2),(923,120,'2014-01-11','2014-01-11 17:57:29',2),(924,1,'2014-01-11','2014-01-11 17:57:41',2),(925,1,'2014-01-11','2014-01-11 17:57:59',2),(926,133,'2014-01-11','2014-01-11 17:58:02',2),(927,1,'2014-01-11','2014-01-11 17:58:05',2),(928,133,'2014-01-11','2014-01-11 17:58:09',2),(929,120,'2014-01-11','2014-01-11 17:58:11',2),(930,1,'2014-01-11','2014-01-11 17:58:15',2),(931,133,'2014-01-11','2014-01-11 17:58:18',2),(932,1,'2014-01-11','2014-01-11 17:58:21',2),(933,134,'2014-01-11','2014-01-11 17:59:03',2),(934,134,'2014-01-11','2014-01-11 17:59:04',2),(935,2,'2014-01-11','2014-01-11 17:59:11',2),(936,7,'2014-01-11','2014-01-11 17:59:15',2),(937,6,'2014-01-11','2014-01-11 18:00:02',2),(938,7,'2014-01-11','2014-01-11 18:00:02',2),(939,6,'2014-01-11','2014-01-11 18:04:19',2),(940,7,'2014-01-11','2014-01-11 18:04:19',2),(941,1,'2014-01-11','2014-01-11 18:04:29',2),(942,1,'2014-01-11','2014-01-11 18:04:41',2),(943,1,'2014-01-11','2014-01-11 18:04:47',2),(944,120,'2014-01-11','2014-01-11 18:04:53',2),(945,133,'2014-01-11','2014-01-11 18:06:16',2),(946,120,'2014-01-11','2014-01-11 18:06:21',2),(947,120,'2014-01-11','2014-01-11 18:07:20',2),(948,120,'2014-01-11','2014-01-11 18:07:50',2),(949,120,'2014-01-11','2014-01-11 18:09:45',2),(950,133,'2014-01-11','2014-01-11 18:09:53',2),(951,120,'2014-01-11','2014-01-11 18:09:57',2),(952,120,'2014-01-11','2014-01-11 18:11:26',2),(953,120,'2014-01-11','2014-01-11 18:11:59',2),(954,120,'2014-01-11','2014-01-11 18:13:31',2),(955,120,'2014-01-11','2014-01-11 18:14:25',2),(956,120,'2014-01-11','2014-01-11 18:15:04',2),(957,133,'2014-01-11','2014-01-11 18:15:19',2),(958,133,'2014-01-11','2014-01-11 18:15:29',2),(959,133,'2014-01-11','2014-01-11 18:15:51',2),(960,120,'2014-01-11','2014-01-11 18:17:14',2),(961,120,'2014-01-11','2014-01-11 18:20:05',2),(962,112,'2014-01-11','2014-01-11 18:20:17',2),(963,112,'2014-01-11','2014-01-11 18:21:17',2),(964,112,'2014-01-11','2014-01-11 18:22:10',2),(965,1,'2014-01-11','2014-01-11 18:22:22',2),(966,133,'2014-01-11','2014-01-11 18:22:26',2),(967,120,'2014-01-11','2014-01-11 18:22:29',2),(968,133,'2014-01-11','2014-01-11 18:23:02',2),(969,1,'2014-01-11','2014-01-11 18:23:06',2),(970,120,'2014-01-11','2014-01-11 18:23:08',2),(971,120,'2014-01-11','2014-01-11 18:23:15',2),(972,133,'2014-01-11','2014-01-11 18:23:23',2),(973,120,'2014-01-11','2014-01-11 18:23:26',2),(974,1,'2014-01-11','2014-01-11 18:23:57',2),(975,133,'2014-01-11','2014-01-11 18:24:00',2),(976,120,'2014-01-11','2014-01-11 18:24:02',2),(977,133,'2014-01-11','2014-01-11 18:24:22',2),(978,1,'2014-01-11','2014-01-11 18:24:27',2),(979,1,'2014-01-11','2014-01-11 18:24:37',2),(980,1,'2014-01-11','2014-01-11 18:25:06',2),(981,133,'2014-01-11','2014-01-11 18:25:09',2),(982,120,'2014-01-11','2014-01-11 18:25:16',2),(983,112,'2014-01-11','2014-01-11 18:25:37',2),(984,112,'2014-01-11','2014-01-11 18:25:39',2),(985,112,'2014-01-11','2014-01-11 18:25:46',2),(986,1,'2014-01-11','2014-01-11 18:26:22',2),(987,133,'2014-01-11','2014-01-11 18:26:24',2),(988,120,'2014-01-11','2014-01-11 18:26:27',2),(989,120,'2014-01-11','2014-01-11 18:26:34',2),(990,133,'2014-01-11','2014-01-11 18:26:36',2),(991,120,'2014-01-11','2014-01-11 18:26:39',2),(992,1,'2014-01-11','2014-01-11 18:26:41',2),(993,133,'2014-01-11','2014-01-11 18:26:44',2),(994,120,'2014-01-11','2014-01-11 18:26:46',2),(995,120,'2014-01-11','2014-01-11 18:26:52',2),(996,133,'2014-01-11','2014-01-11 18:27:08',2),(997,1,'2014-01-11','2014-01-11 18:27:11',2),(998,120,'2014-01-11','2014-01-11 18:33:15',2),(999,112,'2014-01-11','2014-01-11 18:33:18',2),(1000,112,'2014-01-11','2014-01-11 18:33:19',2),(1001,2,'2014-01-11','2014-01-11 18:33:37',2),(1002,18,'2014-01-11','2014-01-11 18:33:43',2),(1003,18,'2014-01-11','2014-01-11 18:33:47',2),(1004,18,'2014-01-11','2014-01-11 18:34:07',2),(1005,18,'2014-01-11','2014-01-11 18:34:08',2),(1006,1,'2014-01-11','2014-01-11 18:35:34',2),(1007,120,'2014-01-11','2014-01-11 18:35:42',2),(1008,112,'2014-01-11','2014-01-11 18:35:46',2),(1009,112,'2014-01-11','2014-01-11 18:37:34',2),(1010,112,'2014-01-11','2014-01-11 18:42:11',2),(1011,112,'2014-01-11','2014-01-11 18:42:55',2),(1012,2,'2014-01-11','2014-01-11 18:43:22',2),(1013,51,'2014-01-11','2014-01-11 18:43:33',2),(1014,68,'2014-01-11','2014-01-11 18:43:36',2),(1015,68,'2014-01-11','2014-01-11 18:43:38',2),(1016,68,'2014-01-11','2014-01-11 18:43:39',2),(1017,1,'2014-01-11','2014-01-11 18:43:43',2),(1018,120,'2014-01-11','2014-01-11 18:43:46',2),(1019,112,'2014-01-11','2014-01-11 18:43:49',2),(1020,112,'2014-01-11','2014-01-11 18:46:36',2),(1021,112,'2014-01-11','2014-01-11 18:47:15',2),(1022,112,'2014-01-11','2014-01-11 18:50:41',2),(1023,112,'2014-01-11','2014-01-11 18:51:42',2),(1024,112,'2014-01-11','2014-01-11 18:51:51',2),(1025,112,'2014-01-11','2014-01-11 18:52:18',2),(1026,113,'2014-01-11','2014-01-11 18:52:28',2),(1027,113,'2014-01-11','2014-01-11 18:53:04',2),(1028,113,'2014-01-11','2014-01-11 18:53:49',2),(1029,113,'2014-01-11','2014-01-11 18:54:00',2),(1030,113,'2014-01-11','2014-01-11 18:54:00',2),(1031,112,'2014-01-11','2014-01-11 18:54:09',2),(1032,112,'2014-01-11','2014-01-11 18:54:11',2),(1033,112,'2014-01-11','2014-01-11 18:55:14',2),(1034,112,'2014-01-11','2014-01-11 18:55:18',2),(1035,112,'2014-01-11','2014-01-11 18:56:08',2),(1036,112,'2014-01-11','2014-01-11 18:56:14',2),(1037,133,'2014-01-12','2014-01-12 00:55:43',2),(1038,106,'2014-01-12','2014-01-12 00:55:45',2),(1039,120,'2014-01-12','2014-01-12 00:55:52',2),(1040,120,'2014-01-12','2014-01-12 00:57:35',2),(1041,120,'2014-01-12','2014-01-12 00:58:00',2),(1042,120,'2014-01-12','2014-01-12 00:58:10',2),(1043,112,'2014-01-12','2014-01-12 00:58:13',2),(1044,120,'2014-01-12','2014-01-12 00:58:17',2),(1045,133,'2014-01-12','2014-01-12 00:58:36',2),(1046,1,'2014-01-12','2014-01-12 00:58:39',2),(1047,133,'2014-01-12','2014-01-12 00:58:43',2),(1048,120,'2014-01-12','2014-01-12 00:58:47',2),(1049,1,'2014-01-12','2014-01-12 00:58:48',2),(1050,120,'2014-01-12','2014-01-12 00:58:52',2),(1051,1,'2014-01-12','2014-01-12 00:58:55',2),(1052,133,'2014-01-12','2014-01-12 00:59:08',2),(1053,120,'2014-01-12','2014-01-12 00:59:11',2),(1054,120,'2014-01-13','2014-01-13 11:32:51',2),(1055,120,'2014-01-13','2014-01-13 11:32:55',2),(1056,106,'2014-01-13','2014-01-13 11:32:56',2),(1057,120,'2014-01-13','2014-01-13 12:29:16',2),(1058,120,'2014-01-13','2014-01-13 12:29:18',2),(1059,120,'2014-01-13','2014-01-13 13:44:13',2),(1060,120,'2014-01-13','2014-01-13 13:48:49',2),(1061,120,'2014-01-13','2014-01-13 13:48:57',2),(1062,120,'2014-01-13','2014-01-13 13:49:04',2),(1063,120,'2014-01-13','2014-01-13 13:53:25',2),(1064,133,'2014-01-13','2014-01-13 14:09:51',2),(1065,133,'2014-01-13','2014-01-13 14:09:52',2),(1066,1,'2014-01-13','2014-01-13 14:09:54',2),(1067,120,'2014-01-13','2014-01-13 14:09:57',2),(1068,120,'2014-01-13','2014-01-13 14:10:03',2),(1069,133,'2014-01-13','2014-01-13 14:10:56',2),(1070,1,'2014-01-14','2014-01-14 00:00:51',2),(1071,120,'2014-01-14','2014-01-14 00:03:53',2),(1072,133,'2014-01-14','2014-01-14 00:04:36',2),(1073,1,'2014-01-14','2014-01-14 00:04:38',2),(1074,133,'2014-01-14','2014-01-14 00:09:43',2),(1075,120,'2014-01-14','2014-01-14 00:09:46',2),(1076,133,'2014-01-14','2014-01-14 00:11:03',2),(1077,120,'2014-01-14','2014-01-14 00:11:06',2),(1078,112,'2014-01-14','2014-01-14 00:11:22',2),(1079,112,'2014-01-14','2014-01-14 00:11:23',2),(1080,112,'2014-01-14','2014-01-14 00:11:27',2),(1081,112,'2014-01-14','2014-01-14 00:17:58',2),(1082,112,'2014-01-14','2014-01-14 00:18:06',2),(1083,112,'2014-01-14','2014-01-14 00:21:54',2),(1084,112,'2014-01-14','2014-01-14 00:23:14',2),(1085,112,'2014-01-14','2014-01-14 00:25:41',2),(1086,112,'2014-01-14','2014-01-14 00:25:49',2),(1087,112,'2014-01-14','2014-01-14 00:25:56',2),(1088,112,'2014-01-14','2014-01-14 00:33:55',2),(1089,112,'2014-01-14','2014-01-14 00:34:19',2),(1090,112,'2014-01-14','2014-01-14 00:34:49',2),(1091,112,'2014-01-14','2014-01-14 00:37:53',2),(1092,110,'2014-01-14','2014-01-14 00:39:30',2),(1093,1,'2014-01-14','2014-01-14 00:39:31',0),(1094,110,'2014-01-14','2014-01-14 00:39:36',0),(1095,110,'2014-01-14','2014-01-14 00:39:40',0),(1096,112,'2014-01-14','2014-01-14 00:39:42',1),(1097,112,'2014-01-14','2014-01-14 00:39:43',1),(1098,106,'2014-01-14','2014-01-14 00:39:44',1),(1099,112,'2014-01-14','2014-01-14 00:39:54',1),(1100,112,'2014-01-14','2014-01-14 00:40:21',1),(1101,112,'2014-01-14','2014-01-14 00:40:23',1),(1102,112,'2014-01-14','2014-01-14 00:42:45',1),(1103,112,'2014-01-14','2014-01-14 00:42:49',1),(1104,110,'2014-01-14','2014-01-14 00:42:56',1),(1105,1,'2014-01-14','2014-01-14 00:42:56',0),(1106,112,'2014-01-14','2014-01-14 00:43:05',0),(1107,112,'2014-01-14','2014-01-14 00:43:12',0),(1108,112,'2014-01-14','2014-01-14 00:43:13',0),(1109,112,'2014-01-14','2014-01-14 00:43:22',0),(1110,110,'2014-01-14','2014-01-14 00:43:41',0),(1111,110,'2014-01-14','2014-01-14 00:43:46',0),(1112,112,'2014-01-14','2014-01-14 00:43:48',1),(1113,112,'2014-01-14','2014-01-14 00:44:13',1),(1114,112,'2014-01-14','2014-01-14 00:44:47',1),(1115,110,'2014-01-14','2014-01-14 00:44:52',1),(1116,1,'2014-01-14','2014-01-14 00:44:52',0),(1117,112,'2014-01-14','2014-01-14 00:44:59',0),(1118,110,'2014-01-14','2014-01-14 00:45:14',0),(1119,110,'2014-01-14','2014-01-14 00:45:33',0),(1120,112,'2014-01-14','2014-01-14 00:45:34',1),(1121,112,'2014-01-14','2014-01-14 00:45:49',1),(1122,112,'2014-01-14','2014-01-14 00:47:30',1),(1123,112,'2014-01-14','2014-01-14 00:47:39',1),(1124,112,'2014-01-14','2014-01-14 00:47:44',1),(1125,112,'2014-01-14','2014-01-14 00:48:28',1),(1126,112,'2014-01-14','2014-01-14 00:48:39',1),(1127,112,'2014-01-14','2014-01-14 00:48:43',1),(1128,112,'2014-01-14','2014-01-14 00:50:23',1),(1129,113,'2014-01-14','2014-01-14 00:53:34',1),(1130,113,'2014-01-14','2014-01-14 00:53:35',1),(1131,113,'2014-01-14','2014-01-14 00:56:14',1),(1132,113,'2014-01-14','2014-01-14 00:56:14',1),(1133,113,'2014-01-14','2014-01-14 00:56:15',1),(1134,112,'2014-01-14','2014-01-14 00:56:26',1),(1135,112,'2014-01-14','2014-01-14 00:56:27',1),(1136,112,'2014-01-14','2014-01-14 00:56:47',1),(1137,112,'2014-01-14','2014-01-14 00:56:51',1),(1138,2,'2014-01-14','2014-01-14 00:57:04',1),(1139,18,'2014-01-14','2014-01-14 00:57:45',1),(1140,18,'2014-01-14','2014-01-14 00:57:49',1),(1141,2,'2014-01-14','2014-01-14 00:58:12',1),(1142,18,'2014-01-14','2014-01-14 00:58:41',1),(1143,18,'2014-01-14','2014-01-14 00:58:50',1),(1144,18,'2014-01-14','2014-01-14 00:59:27',1),(1145,18,'2014-01-14','2014-01-14 00:59:28',1),(1146,18,'2014-01-14','2014-01-14 00:59:32',1),(1147,18,'2014-01-14','2014-01-14 01:00:03',1),(1148,18,'2014-01-14','2014-01-14 01:00:03',1),(1149,18,'2014-01-14','2014-01-14 01:00:06',1),(1150,18,'2014-01-14','2014-01-14 01:00:10',1),(1151,18,'2014-01-14','2014-01-14 01:00:11',1),(1152,18,'2014-01-14','2014-01-14 01:00:29',1),(1153,18,'2014-01-14','2014-01-14 01:00:47',1),(1154,18,'2014-01-14','2014-01-14 01:00:47',1),(1155,18,'2014-01-14','2014-01-14 01:00:52',1),(1156,18,'2014-01-14','2014-01-14 01:01:20',1),(1157,18,'2014-01-14','2014-01-14 01:01:21',1),(1158,18,'2014-01-14','2014-01-14 01:01:24',1),(1159,18,'2014-01-14','2014-01-14 01:01:35',1),(1160,18,'2014-01-14','2014-01-14 01:01:36',1),(1161,1,'2014-01-14','2014-01-14 01:01:44',1),(1162,112,'2014-01-14','2014-01-14 01:01:51',1),(1163,113,'2014-01-14','2014-01-14 01:01:59',1),(1164,113,'2014-01-14','2014-01-14 01:05:23',1),(1165,113,'2014-01-14','2014-01-14 01:05:23',1),(1166,112,'2014-01-14','2014-01-14 01:39:28',1),(1167,113,'2014-01-14','2014-01-14 01:39:39',1),(1168,113,'2014-01-14','2014-01-14 01:39:44',1),(1169,113,'2014-01-14','2014-01-14 01:39:44',1),(1170,112,'2014-01-14','2014-01-14 01:39:55',1),(1171,112,'2014-01-14','2014-01-14 01:40:47',1),(1172,112,'2014-01-14','2014-01-14 01:43:31',1),(1173,112,'2014-01-14','2014-01-14 01:43:37',1),(1174,112,'2014-01-14','2014-01-14 01:43:47',1),(1175,112,'2014-01-14','2014-01-14 01:43:52',1),(1176,112,'2014-01-14','2014-01-14 01:43:56',1),(1177,112,'2014-01-14','2014-01-14 01:45:44',1),(1178,112,'2014-01-14','2014-01-14 01:47:52',1),(1179,112,'2014-01-14','2014-01-14 01:48:53',1),(1180,112,'2014-01-14','2014-01-14 01:49:12',1),(1181,112,'2014-01-14','2014-01-14 01:49:21',1),(1182,112,'2014-01-14','2014-01-14 01:49:24',1),(1183,112,'2014-01-14','2014-01-14 01:49:39',1),(1184,112,'2014-01-14','2014-01-14 01:49:48',1),(1185,112,'2014-01-14','2014-01-14 01:50:00',1),(1186,112,'2014-01-14','2014-01-14 01:50:10',1),(1187,112,'2014-01-14','2014-01-14 01:50:40',1),(1188,112,'2014-01-14','2014-01-14 01:50:47',1),(1189,112,'2014-01-14','2014-01-14 01:51:16',1),(1190,113,'2014-01-14','2014-01-14 01:53:03',1),(1191,114,'2014-01-14','2014-01-14 01:53:23',1),(1192,112,'2014-01-14','2014-01-14 01:53:25',1),(1193,114,'2014-01-14','2014-01-14 01:54:18',1),(1194,112,'2014-01-14','2014-01-14 01:54:19',1),(1195,114,'2014-01-14','2014-01-14 01:56:04',1),(1196,112,'2014-01-14','2014-01-14 01:56:06',1),(1197,114,'2014-01-14','2014-01-14 01:57:53',1),(1198,114,'2014-01-14','2014-01-14 01:57:54',1),(1199,114,'2014-01-14','2014-01-14 01:57:56',1),(1200,114,'2014-01-14','2014-01-14 01:57:57',1),(1201,112,'2014-01-14','2014-01-14 01:58:03',1),(1202,133,'2014-01-14','2014-01-14 01:58:43',1),(1203,120,'2014-01-14','2014-01-14 01:58:49',1),(1204,112,'2014-01-14','2014-01-14 01:59:16',1),(1205,112,'2014-01-14','2014-01-14 01:59:17',1),(1206,2,'2014-01-14','2014-01-14 01:59:27',1),(1207,18,'2014-01-14','2014-01-14 01:59:32',1),(1208,18,'2014-01-14','2014-01-14 01:59:35',1),(1209,18,'2014-01-14','2014-01-14 01:59:41',1),(1210,18,'2014-01-14','2014-01-14 01:59:45',1),(1211,18,'2014-01-14','2014-01-14 01:59:55',1),(1212,18,'2014-01-14','2014-01-14 01:59:56',1),(1213,1,'2014-01-14','2014-01-14 02:00:00',1),(1214,120,'2014-01-14','2014-01-14 02:00:03',1),(1215,112,'2014-01-14','2014-01-14 02:00:11',1),(1216,120,'2014-01-14','2014-01-14 02:00:23',1),(1217,112,'2014-01-14','2014-01-14 02:00:28',1),(1218,120,'2014-01-14','2014-01-14 02:01:40',1),(1219,112,'2014-01-14','2014-01-14 02:01:43',1),(1220,120,'2014-01-14','2014-01-14 02:01:56',1),(1221,112,'2014-01-14','2014-01-14 02:02:00',1),(1222,110,'2014-01-14','2014-01-14 02:02:12',1),(1223,1,'2014-01-14','2014-01-14 02:02:12',0),(1224,110,'2014-01-14','2014-01-14 02:02:18',0),(1225,110,'2014-01-14','2014-01-14 02:02:26',0),(1226,112,'2014-01-14','2014-01-14 02:02:28',2),(1227,112,'2014-01-14','2014-01-14 02:02:29',2),(1228,112,'2014-01-14','2014-01-14 02:02:32',2),(1229,112,'2014-01-14','2014-01-14 02:04:17',2),(1230,113,'2014-01-14','2014-01-14 02:05:36',2),(1231,113,'2014-01-14','2014-01-14 02:06:29',2),(1232,113,'2014-01-14','2014-01-14 02:06:30',2),(1233,113,'2014-01-14','2014-01-14 02:06:41',2),(1234,113,'2014-01-14','2014-01-14 02:06:51',2),(1235,113,'2014-01-14','2014-01-14 02:06:57',2),(1236,113,'2014-01-14','2014-01-14 02:06:58',2),(1237,113,'2014-01-14','2014-01-14 02:07:05',2),(1238,113,'2014-01-14','2014-01-14 02:07:05',2),(1239,120,'2014-01-14','2014-01-14 02:07:17',2),(1240,112,'2014-01-14','2014-01-14 02:07:26',2),(1241,112,'2014-01-14','2014-01-14 02:07:37',2),(1242,112,'2014-01-14','2014-01-14 02:07:44',2),(1243,112,'2014-01-14','2014-01-14 02:08:36',2),(1244,110,'2014-01-14','2014-01-14 02:08:40',2),(1245,1,'2014-01-14','2014-01-14 02:08:41',0),(1246,120,'2014-01-14','2014-01-14 02:08:47',0),(1247,120,'2014-01-14','2014-01-14 02:08:58',0),(1248,120,'2014-01-14','2014-01-14 02:09:09',0),(1249,120,'2014-01-14','2014-01-14 02:09:18',0),(1250,120,'2014-01-14','2014-01-14 02:09:26',0),(1251,1,'2014-01-14','2014-01-14 02:10:10',0),(1252,133,'2014-01-14','2014-01-14 02:10:12',0),(1253,120,'2014-01-14','2014-01-14 02:10:16',0),(1254,1,'2014-01-15','2014-01-15 17:45:06',0),(1255,133,'2014-01-15','2014-01-15 17:45:12',0),(1256,133,'2014-01-15','2014-01-15 17:45:13',0),(1257,120,'2014-01-15','2014-01-15 17:45:14',0),(1258,120,'2014-01-15','2014-01-15 17:45:15',0),(1259,120,'2014-01-15','2014-01-15 17:45:16',0),(1260,1,'2014-01-15','2014-01-15 18:53:00',0),(1261,133,'2014-01-15','2014-01-15 18:53:06',0),(1262,133,'2014-01-15','2014-01-15 18:53:07',0),(1263,120,'2014-01-15','2014-01-15 18:53:09',0),(1264,120,'2014-01-15','2014-01-15 18:53:10',0),(1265,120,'2014-01-15','2014-01-15 18:53:10',0),(1266,110,'2014-01-15','2014-01-15 18:53:37',0),(1267,110,'2014-01-15','2014-01-15 18:53:52',0),(1268,112,'2014-01-15','2014-01-15 18:53:54',1),(1269,112,'2014-01-15','2014-01-15 18:54:00',1),(1270,106,'2014-01-15','2014-01-15 18:54:01',1),(1271,112,'2014-01-15','2014-01-15 18:54:09',1),(1272,114,'2014-01-15','2014-01-15 18:54:20',1),(1273,112,'2014-01-15','2014-01-15 18:54:22',1),(1274,112,'2014-01-15','2014-01-15 18:55:14',1),(1275,2,'2014-01-15','2014-01-15 18:56:08',1),(1276,43,'2014-01-15','2014-01-15 18:56:20',1),(1277,2,'2014-01-15','2014-01-15 18:56:23',1),(1278,1,'2014-01-15','2014-01-15 19:16:38',1),(1279,2,'2014-01-15','2014-01-15 19:16:41',1),(1280,43,'2014-01-15','2014-01-15 19:16:46',1),(1281,110,'2014-01-15','2014-01-15 19:50:48',1),(1282,1,'2014-01-15','2014-01-15 19:50:48',0),(1283,133,'2014-01-15','2014-01-15 19:53:17',0),(1284,120,'2014-01-15','2014-01-15 19:54:31',0),(1285,112,'2014-01-15','2014-01-15 19:54:58',0),(1286,112,'2014-01-15','2014-01-15 19:55:00',0),(1287,110,'2014-01-15','2014-01-15 19:55:16',0),(1288,110,'2014-01-15','2014-01-15 19:55:23',0),(1289,112,'2014-01-15','2014-01-15 19:55:25',1),(1290,112,'2014-01-15','2014-01-15 19:55:37',1),(1291,113,'2014-01-15','2014-01-15 19:55:41',1),(1292,113,'2014-01-15','2014-01-15 19:55:53',1),(1293,113,'2014-01-15','2014-01-15 19:55:54',1),(1294,113,'2014-01-15','2014-01-15 19:55:55',1),(1295,112,'2014-01-15','2014-01-15 19:56:04',1),(1296,112,'2014-01-15','2014-01-15 19:56:15',1),(1297,112,'2014-01-15','2014-01-15 19:57:37',1),(1298,1,'2014-01-15','2014-01-15 20:00:47',1),(1299,2,'2014-01-15','2014-01-15 20:01:07',1),(1300,17,'2014-01-15','2014-01-15 20:01:12',1),(1301,2,'2014-01-15','2014-01-15 20:01:27',1),(1302,16,'2014-01-15','2014-01-15 20:01:33',1),(1303,19,'2014-01-15','2014-01-15 20:01:42',1),(1304,19,'2014-01-15','2014-01-15 20:02:36',1),(1305,19,'2014-01-15','2014-01-15 20:02:47',1),(1306,16,'2014-01-15','2014-01-15 20:02:47',1),(1307,16,'2014-01-15','2014-01-15 20:02:52',1),(1308,16,'2014-01-15','2014-01-15 20:02:58',1),(1309,16,'2014-01-15','2014-01-15 20:03:02',1),(1310,16,'2014-01-15','2014-01-15 20:03:12',1),(1311,16,'2014-01-15','2014-01-15 20:03:27',1),(1312,2,'2014-01-15','2014-01-15 20:03:34',1),(1313,16,'2014-01-15','2014-01-15 20:03:37',1),(1314,19,'2014-01-15','2014-01-15 20:03:45',1),(1315,19,'2014-01-15','2014-01-15 20:05:05',1),(1316,16,'2014-01-15','2014-01-15 20:05:05',1),(1317,2,'2014-01-15','2014-01-15 20:07:52',1),(1318,16,'2014-01-15','2014-01-15 20:07:56',1),(1319,1,'2014-01-15','2014-01-15 20:10:04',1),(1320,133,'2014-01-15','2014-01-15 20:10:08',1),(1321,1,'2014-01-15','2014-01-15 20:10:16',1),(1322,1,'2014-01-15','2014-01-15 20:10:23',1),(1323,1,'2014-01-15','2014-01-15 20:10:27',1),(1324,2,'2014-01-15','2014-01-15 20:10:34',1),(1325,1,'2014-01-15','2014-01-15 20:10:38',1),(1326,1,'2014-01-15','2014-01-15 20:19:21',1),(1327,1,'2014-01-15','2014-01-15 20:20:44',1),(1328,1,'2014-01-15','2014-01-15 20:20:55',1),(1329,1,'2014-01-15','2014-01-15 20:21:12',1),(1330,2,'2014-01-15','2014-01-15 20:21:32',1),(1331,7,'2014-01-15','2014-01-15 20:22:02',1),(1332,2,'2014-01-15','2014-01-15 20:22:18',1),(1333,51,'2014-01-15','2014-01-15 20:22:23',1),(1334,68,'2014-01-15','2014-01-15 20:22:35',1),(1335,68,'2014-01-15','2014-01-15 20:22:39',1),(1336,68,'2014-01-15','2014-01-15 20:22:39',1),(1337,1,'2014-01-15','2014-01-15 20:22:46',1),(1338,1,'2014-01-15','2014-01-15 20:26:32',1),(1339,1,'2014-01-15','2014-01-15 20:26:37',1),(1340,2,'2014-01-15','2014-01-15 20:26:43',1),(1341,7,'2014-01-15','2014-01-15 20:26:48',1),(1342,1,'2014-01-15','2014-01-15 20:27:09',1),(1343,2,'2014-01-15','2014-01-15 20:28:15',1),(1344,32,'2014-01-15','2014-01-15 20:28:22',1),(1345,32,'2014-01-15','2014-01-15 20:28:30',1),(1346,127,'2014-01-15','2014-01-15 20:28:30',1),(1347,127,'2014-01-15','2014-01-15 20:28:36',1),(1348,127,'2014-01-15','2014-01-15 20:28:41',1),(1349,127,'2014-01-15','2014-01-15 20:35:25',1),(1350,127,'2014-01-15','2014-01-15 20:35:32',1),(1351,2,'2014-01-15','2014-01-15 20:35:35',1),(1352,1,'2014-01-15','2014-01-15 20:35:39',1),(1353,2,'2014-01-15','2014-01-15 20:35:43',1),(1354,16,'2014-01-15','2014-01-15 20:35:46',1),(1355,19,'2014-01-15','2014-01-15 20:36:28',1),(1356,19,'2014-01-15','2014-01-15 20:37:24',1),(1357,16,'2014-01-15','2014-01-15 20:37:24',1),(1358,2,'2014-01-15','2014-01-15 20:37:35',1),(1359,16,'2014-01-15','2014-01-15 20:37:38',1),(1360,16,'2014-01-15','2014-01-15 20:37:42',1),(1361,16,'2014-01-15','2014-01-15 20:37:50',1),(1362,120,'2014-01-15','2014-01-15 20:38:04',1),(1363,120,'2014-01-15','2014-01-15 20:38:05',1),(1364,112,'2014-01-15','2014-01-15 20:38:10',1),(1365,112,'2014-01-15','2014-01-15 20:38:12',1),(1366,110,'2014-01-15','2014-01-15 20:38:23',1),(1367,110,'2014-01-15','2014-01-15 20:38:36',1),(1368,110,'2014-01-15','2014-01-15 20:38:47',1),(1369,110,'2014-01-15','2014-01-15 20:38:54',1),(1370,112,'2014-01-15','2014-01-15 20:38:55',1),(1371,2,'2014-01-15','2014-01-15 20:38:59',1),(1372,16,'2014-01-15','2014-01-15 20:39:03',1),(1373,16,'2014-01-15','2014-01-15 20:39:06',1),(1374,16,'2014-01-15','2014-01-15 20:39:10',1),(1375,16,'2014-01-15','2014-01-15 20:39:31',1),(1376,110,'2014-01-15','2014-01-15 20:39:39',1),(1377,1,'2014-01-15','2014-01-15 20:39:40',0),(1378,110,'2014-01-15','2014-01-15 20:39:53',0),(1379,110,'2014-01-15','2014-01-15 20:39:56',0),(1380,112,'2014-01-15','2014-01-15 20:39:57',1),(1381,2,'2014-01-15','2014-01-15 20:40:04',1),(1382,110,'2014-01-15','2014-01-15 20:40:16',1),(1383,110,'2014-01-15','2014-01-15 20:40:16',0),(1384,1,'2014-01-15','2014-01-15 20:40:16',0),(1385,110,'2014-01-15','2014-01-15 20:40:21',0),(1386,110,'2014-01-15','2014-01-15 20:40:31',0),(1387,112,'2014-01-15','2014-01-15 20:40:32',3),(1388,112,'2014-01-15','2014-01-15 20:40:34',3),(1389,113,'2014-01-15','2014-01-15 20:40:54',3),(1390,113,'2014-01-15','2014-01-15 20:41:16',3),(1391,113,'2014-01-15','2014-01-15 20:41:17',3),(1392,112,'2014-01-15','2014-01-15 20:41:25',3),(1393,110,'2014-01-15','2014-01-15 20:42:24',3),(1394,110,'2014-01-15','2014-01-15 20:42:29',3),(1395,112,'2014-01-15','2014-01-15 20:42:30',1),(1396,2,'2014-01-15','2014-01-15 20:42:37',1),(1397,16,'2014-01-15','2014-01-15 20:43:04',1),(1398,16,'2014-01-15','2014-01-15 20:43:07',1),(1399,16,'2014-01-15','2014-01-15 20:43:11',1),(1400,16,'2014-01-15','2014-01-15 20:43:20',1),(1401,16,'2014-01-15','2014-01-15 20:43:42',1),(1402,2,'2014-01-15','2014-01-15 20:43:46',1),(1403,7,'2014-01-15','2014-01-15 20:43:51',1),(1404,7,'2014-01-15','2014-01-15 20:44:14',1),(1405,110,'2014-01-15','2014-01-15 20:45:16',1),(1406,1,'2014-01-15','2014-01-15 20:45:16',0),(1407,110,'2014-01-15','2014-01-15 20:45:23',0),(1408,110,'2014-01-15','2014-01-15 20:45:28',0),(1409,112,'2014-01-15','2014-01-15 20:45:28',3),(1410,110,'2014-01-15','2014-01-15 20:45:39',3),(1411,110,'2014-01-15','2014-01-15 20:45:46',3),(1412,112,'2014-01-15','2014-01-15 20:45:47',1),(1413,2,'2014-01-15','2014-01-15 20:45:52',1),(1414,16,'2014-01-15','2014-01-15 20:46:05',1),(1415,16,'2014-01-15','2014-01-15 20:46:11',1),(1416,16,'2014-01-15','2014-01-15 20:46:16',1),(1417,16,'2014-01-15','2014-01-15 20:46:28',1),(1418,16,'2014-01-15','2014-01-15 20:46:38',1),(1419,16,'2014-01-15','2014-01-15 20:46:46',1),(1420,16,'2014-01-15','2014-01-15 20:46:54',1),(1421,16,'2014-01-15','2014-01-15 20:47:02',1),(1422,110,'2014-01-15','2014-01-15 20:47:04',1),(1423,1,'2014-01-15','2014-01-15 20:47:04',0),(1424,110,'2014-01-15','2014-01-15 20:47:09',0),(1425,110,'2014-01-15','2014-01-15 20:47:13',0),(1426,112,'2014-01-15','2014-01-15 20:47:15',3),(1427,112,'2014-01-15','2014-01-15 20:47:24',3),(1428,110,'2014-01-15','2014-01-15 20:47:51',3),(1429,1,'2014-01-15','2014-01-15 20:47:53',0),(1430,110,'2014-01-15','2014-01-15 20:47:59',0),(1431,110,'2014-01-15','2014-01-15 20:48:03',0),(1432,112,'2014-01-15','2014-01-15 20:48:05',1),(1433,2,'2014-01-15','2014-01-15 20:48:12',1),(1434,16,'2014-01-15','2014-01-15 20:48:23',1),(1435,16,'2014-01-15','2014-01-15 20:48:26',1),(1436,16,'2014-01-15','2014-01-15 20:48:30',1),(1437,16,'2014-01-15','2014-01-15 20:48:33',1),(1438,16,'2014-01-15','2014-01-15 20:48:39',1),(1439,16,'2014-01-15','2014-01-15 20:48:49',1),(1440,1,'2014-01-15','2014-01-15 20:48:59',1),(1441,2,'2014-01-15','2014-01-15 20:49:03',1),(1442,16,'2014-01-15','2014-01-15 20:49:07',1),(1443,16,'2014-01-15','2014-01-15 20:49:12',1),(1444,16,'2014-01-15','2014-01-15 20:49:15',1),(1445,16,'2014-01-15','2014-01-15 20:49:21',1),(1446,1,'2014-01-15','2014-01-15 20:49:27',1),(1447,2,'2014-01-15','2014-01-15 20:49:33',1),(1448,16,'2014-01-15','2014-01-15 20:49:36',1),(1449,16,'2014-01-15','2014-01-15 20:49:39',1),(1450,16,'2014-01-15','2014-01-15 20:49:44',1),(1451,16,'2014-01-15','2014-01-15 20:50:08',1),(1452,110,'2014-01-15','2014-01-15 20:50:15',1),(1453,1,'2014-01-15','2014-01-15 20:50:15',0),(1454,110,'2014-01-15','2014-01-15 20:50:20',0),(1455,110,'2014-01-15','2014-01-15 20:50:25',0),(1456,112,'2014-01-15','2014-01-15 20:50:27',3),(1457,106,'2014-01-15','2014-01-15 20:50:30',3),(1458,112,'2014-01-15','2014-01-15 20:50:38',3),(1459,2,'2014-01-15','2014-01-15 20:53:23',3),(1460,112,'2014-01-15','2014-01-15 20:53:32',3),(1461,113,'2014-01-15','2014-01-15 20:55:00',3),(1462,113,'2014-01-15','2014-01-15 20:58:22',3),(1463,113,'2014-01-15','2014-01-15 20:58:23',3),(1464,120,'2014-01-15','2014-01-15 20:58:26',3),(1465,113,'2014-01-15','2014-01-15 20:58:42',3),(1466,114,'2014-01-15','2014-01-15 20:58:54',3),(1467,112,'2014-01-15','2014-01-15 20:58:55',3),(1468,114,'2014-01-15','2014-01-15 20:59:41',3),(1469,114,'2014-01-15','2014-01-15 20:59:42',3),(1470,114,'2014-01-15','2014-01-15 20:59:44',3),(1471,114,'2014-01-15','2014-01-15 20:59:45',3),(1472,1,'2014-01-15','2014-01-15 20:59:47',3),(1473,120,'2014-01-15','2014-01-15 20:59:50',3),(1474,110,'2014-01-15','2014-01-15 21:00:15',3),(1475,1,'2014-01-15','2014-01-15 21:00:16',0),(1476,110,'2014-01-15','2014-01-15 21:00:21',0),(1477,110,'2014-01-15','2014-01-15 21:00:25',0),(1478,112,'2014-01-15','2014-01-15 21:00:27',1),(1479,112,'2014-01-15','2014-01-15 21:00:32',1),(1480,114,'2014-01-15','2014-01-15 21:00:43',1),(1481,114,'2014-01-15','2014-01-15 21:01:55',1),(1482,114,'2014-01-15','2014-01-15 21:01:56',1),(1483,114,'2014-01-15','2014-01-15 21:01:58',1),(1484,120,'2014-01-15','2014-01-15 21:02:00',1),(1485,120,'2014-01-15','2014-01-15 21:02:06',1),(1486,112,'2014-01-15','2014-01-15 21:02:32',1),(1487,112,'2014-01-15','2014-01-15 21:02:34',1),(1488,133,'2014-01-15','2014-01-15 21:03:07',1),(1489,133,'2014-01-15','2014-01-15 21:03:15',1),(1490,133,'2014-01-15','2014-01-15 21:03:18',1),(1491,112,'2014-01-15','2014-01-15 21:03:21',1),(1492,110,'2014-01-15','2014-01-15 21:03:27',1),(1493,1,'2014-01-15','2014-01-15 21:03:27',0),(1494,110,'2014-01-15','2014-01-15 21:03:37',0),(1495,110,'2014-01-15','2014-01-15 21:04:08',0),(1496,112,'2014-01-15','2014-01-15 21:04:14',1),(1497,110,'2014-01-15','2014-01-15 21:04:29',1),(1498,1,'2014-01-15','2014-01-15 21:04:29',0),(1499,110,'2014-01-15','2014-01-15 21:04:34',0),(1500,110,'2014-01-15','2014-01-15 21:04:43',0),(1501,112,'2014-01-15','2014-01-15 21:04:46',4),(1502,112,'2014-01-15','2014-01-15 21:04:50',4),(1503,106,'2014-01-15','2014-01-15 21:04:51',4),(1504,112,'2014-01-15','2014-01-15 21:05:00',4),(1505,112,'2014-01-15','2014-01-15 21:06:53',4),(1506,113,'2014-01-15','2014-01-15 21:07:25',4),(1507,113,'2014-01-15','2014-01-15 21:07:38',4),(1508,113,'2014-01-15','2014-01-15 21:07:38',4),(1509,113,'2014-01-15','2014-01-15 21:07:51',4),(1510,113,'2014-01-15','2014-01-15 21:07:52',4),(1511,110,'2014-01-15','2014-01-15 21:08:02',4),(1512,1,'2014-01-15','2014-01-15 21:08:02',0),(1513,120,'2014-01-15','2014-01-15 21:08:05',0),(1514,110,'2014-01-15','2014-01-15 21:09:35',0),(1515,110,'2014-01-15','2014-01-15 21:09:45',0),(1516,112,'2014-01-15','2014-01-15 21:09:47',5),(1517,112,'2014-01-15','2014-01-15 21:09:50',5),(1518,106,'2014-01-15','2014-01-15 21:09:50',5),(1519,112,'2014-01-15','2014-01-15 21:09:58',5),(1520,112,'2014-01-15','2014-01-15 21:10:04',5),(1521,113,'2014-01-15','2014-01-15 21:12:13',5),(1522,113,'2014-01-15','2014-01-15 21:12:27',5),(1523,113,'2014-01-15','2014-01-15 21:12:30',5),(1524,120,'2014-01-15','2014-01-15 21:12:33',5),(1525,112,'2014-01-15','2014-01-15 21:12:49',5),(1526,110,'2014-01-15','2014-01-15 21:14:17',5),(1527,1,'2014-01-15','2014-01-15 21:14:17',0),(1528,110,'2014-01-15','2014-01-15 21:14:22',0),(1529,110,'2014-01-15','2014-01-15 21:14:29',0),(1530,112,'2014-01-15','2014-01-15 21:14:31',1),(1531,2,'2014-01-15','2014-01-15 21:14:34',1),(1532,16,'2014-01-15','2014-01-15 21:14:37',1),(1533,16,'2014-01-15','2014-01-15 21:15:03',1),(1534,16,'2014-01-15','2014-01-15 21:15:07',1),(1535,16,'2014-01-15','2014-01-15 21:15:14',1),(1536,16,'2014-01-15','2014-01-15 21:15:25',1),(1537,1,'2014-01-15','2014-01-15 21:15:32',1),(1538,1,'2014-01-15','2014-01-15 21:15:39',1),(1539,1,'2014-01-15','2014-01-15 21:17:04',1),(1540,120,'2014-01-15','2014-01-15 21:17:11',1),(1541,120,'2014-01-15','2014-01-15 21:17:12',1),(1542,120,'2014-01-15','2014-01-15 21:19:11',1),(1543,120,'2014-01-15','2014-01-15 21:19:19',1),(1544,120,'2014-01-15','2014-01-15 21:19:23',1),(1545,133,'2014-01-15','2014-01-15 21:19:30',1),(1546,133,'2014-01-15','2014-01-15 21:19:33',1),(1547,110,'2014-01-15','2014-01-15 21:37:16',1),(1548,1,'2014-01-15','2014-01-15 21:37:17',0),(1549,133,'2014-01-15','2014-01-15 21:37:29',0),(1550,110,'2014-01-15','2014-01-15 21:37:37',0),(1551,110,'2014-01-15','2014-01-15 21:37:46',0),(1552,112,'2014-01-15','2014-01-15 21:37:47',1),(1553,133,'2014-01-15','2014-01-15 21:37:52',1),(1554,133,'2014-01-15','2014-01-15 21:37:56',1),(1555,1,'2014-01-15','2014-01-15 21:37:58',1),(1556,120,'2014-01-15','2014-01-15 21:38:02',1),(1557,1,'2014-01-15','2014-01-15 21:39:26',1),(1558,2,'2014-01-15','2014-01-15 21:39:31',1),(1559,1,'2014-01-15','2014-01-15 21:39:47',1),(1560,133,'2014-01-15','2014-01-15 21:39:50',1),(1561,133,'2014-01-15','2014-01-15 21:39:56',1),(1562,110,'2014-01-15','2014-01-15 21:42:27',1),(1563,1,'2014-01-15','2014-01-15 21:42:27',0),(1564,110,'2014-01-15','2014-01-15 21:42:34',0),(1565,110,'2014-01-15','2014-01-15 21:42:39',0),(1566,112,'2014-01-15','2014-01-15 21:42:40',1),(1567,133,'2014-01-15','2014-01-15 21:42:44',1),(1568,133,'2014-01-15','2014-01-15 21:42:48',1),(1569,1,'2014-01-15','2014-01-15 21:43:10',1),(1570,120,'2014-01-15','2014-01-15 21:43:13',1),(1571,133,'2014-01-15','2014-01-15 21:43:16',1),(1572,133,'2014-01-15','2014-01-15 21:43:23',1),(1573,110,'2014-01-15','2014-01-15 21:43:44',1),(1574,1,'2014-01-15','2014-01-15 21:43:44',0),(1575,1,'2014-01-15','2014-01-15 21:46:45',0),(1576,120,'2014-01-15','2014-01-15 21:47:02',0),(1577,112,'2014-01-15','2014-01-15 21:47:24',0),(1578,133,'2014-01-15','2014-01-15 21:47:32',0),(1579,133,'2014-01-15','2014-01-15 21:47:33',0),(1580,120,'2014-01-15','2014-01-15 21:47:41',0),(1581,120,'2014-01-15','2014-01-15 21:47:43',0),(1582,112,'2014-01-15','2014-01-15 21:47:54',0),(1583,112,'2014-01-15','2014-01-15 21:47:56',0),(1584,133,'2014-01-15','2014-01-15 21:47:58',0),(1585,133,'2014-01-15','2014-01-15 21:48:13',0),(1586,120,'2014-01-15','2014-01-15 21:48:19',0),(1587,1,'2014-01-15','2014-01-15 21:48:33',0),(1588,1,'2014-01-15','2014-01-15 21:48:41',0),(1589,133,'2014-01-15','2014-01-15 21:48:43',0),(1590,120,'2014-01-15','2014-01-15 21:49:06',0),(1591,112,'2014-01-15','2014-01-15 21:49:09',0),(1592,112,'2014-01-15','2014-01-15 21:49:11',0),(1593,120,'2014-01-15','2014-01-15 21:49:19',0),(1594,133,'2014-01-15','2014-01-15 21:49:20',0),(1595,120,'2014-01-15','2014-01-15 21:49:21',0),(1596,112,'2014-01-15','2014-01-15 21:49:23',0),(1597,112,'2014-01-15','2014-01-15 21:49:24',0),(1598,120,'2014-01-15','2014-01-15 21:49:49',0),(1599,112,'2014-01-15','2014-01-15 21:49:51',0),(1600,110,'2014-01-15','2014-01-15 21:50:02',0),(1601,110,'2014-01-15','2014-01-15 21:50:07',0),(1602,112,'2014-01-15','2014-01-15 21:50:10',1),(1603,2,'2014-01-15','2014-01-15 21:50:40',1),(1604,16,'2014-01-15','2014-01-15 21:51:08',1),(1605,16,'2014-01-15','2014-01-15 21:51:11',1),(1606,16,'2014-01-15','2014-01-15 21:51:14',1),(1607,16,'2014-01-15','2014-01-15 21:51:23',1),(1608,110,'2014-01-15','2014-01-15 21:51:25',1),(1609,1,'2014-01-15','2014-01-15 21:51:26',0),(1610,120,'2014-01-15','2014-01-15 21:51:28',0),(1611,112,'2014-01-15','2014-01-15 21:51:30',0),(1612,120,'2014-01-15','2014-01-15 21:51:39',0),(1613,1,'2014-01-15','2014-01-15 22:15:32',0),(1614,1,'2014-01-15','2014-01-15 23:14:02',0),(1615,120,'2014-01-15','2014-01-15 23:14:05',0),(1616,112,'2014-01-15','2014-01-15 23:14:10',0),(1617,1,'2014-01-15','2014-01-15 23:39:09',0),(1618,133,'2014-01-15','2014-01-15 23:39:14',0),(1619,110,'2014-01-15','2014-01-15 23:39:29',0),(1620,110,'2014-01-15','2014-01-15 23:39:35',0),(1621,112,'2014-01-15','2014-01-15 23:39:35',1),(1622,133,'2014-01-15','2014-01-15 23:39:40',1),(1623,133,'2014-01-15','2014-01-15 23:39:45',1),(1624,133,'2014-01-15','2014-01-15 23:42:23',1),(1625,133,'2014-01-15','2014-01-15 23:42:39',1),(1626,133,'2014-01-15','2014-01-15 23:42:43',1),(1627,133,'2014-01-15','2014-01-15 23:42:45',1),(1628,2,'2014-01-15','2014-01-15 23:42:56',1),(1629,7,'2014-01-15','2014-01-15 23:42:59',1),(1630,1,'2014-01-15','2014-01-15 23:43:35',1),(1631,133,'2014-01-15','2014-01-15 23:43:38',1),(1632,120,'2014-01-15','2014-01-15 23:44:18',1),(1633,120,'2014-01-15','2014-01-15 23:44:29',1),(1634,133,'2014-01-15','2014-01-15 23:44:32',1),(1635,1,'2014-01-15','2014-01-15 23:44:36',1),(1636,110,'2014-01-15','2014-01-15 23:44:56',1),(1637,1,'2014-01-15','2014-01-15 23:44:56',0),(1638,120,'2014-01-15','2014-01-15 23:44:59',0),(1639,112,'2014-01-15','2014-01-15 23:45:03',0),(1640,112,'2014-01-15','2014-01-15 23:45:05',0),(1641,120,'2014-01-15','2014-01-15 23:45:13',0),(1642,112,'2014-01-15','2014-01-15 23:45:19',0),(1643,120,'2014-01-15','2014-01-15 23:45:35',0),(1644,120,'2014-01-15','2014-01-15 23:45:38',0),(1645,133,'2014-01-15','2014-01-15 23:46:05',0),(1646,133,'2014-01-15','2014-01-15 23:46:17',0),(1647,133,'2014-01-15','2014-01-15 23:46:34',0),(1648,120,'2014-01-15','2014-01-15 23:46:37',0),(1649,110,'2014-01-15','2014-01-15 23:46:45',0),(1650,110,'2014-01-15','2014-01-15 23:46:50',0),(1651,112,'2014-01-15','2014-01-15 23:46:51',1),(1652,112,'2014-01-15','2014-01-15 23:46:56',1),(1653,133,'2014-01-15','2014-01-15 23:47:01',1),(1654,133,'2014-01-15','2014-01-15 23:47:05',1),(1655,133,'2014-01-15','2014-01-15 23:48:07',1),(1656,120,'2014-01-15','2014-01-15 23:48:28',1),(1657,112,'2014-01-15','2014-01-15 23:48:38',1),(1658,1,'2014-01-15','2014-01-15 23:50:58',1),(1659,110,'2014-01-15','2014-01-15 23:51:04',1),(1660,1,'2014-01-15','2014-01-15 23:51:04',0),(1661,133,'2014-01-15','2014-01-15 23:51:20',0),(1662,1,'2014-01-15','2014-01-15 23:51:28',0),(1663,133,'2014-01-15','2014-01-15 23:51:31',0),(1664,110,'2014-01-15','2014-01-15 23:51:38',0),(1665,110,'2014-01-15','2014-01-15 23:51:41',0),(1666,112,'2014-01-15','2014-01-15 23:51:42',1),(1667,110,'2014-01-15','2014-01-15 23:51:43',1),(1668,112,'2014-01-15','2014-01-15 23:51:44',1),(1669,133,'2014-01-15','2014-01-15 23:51:48',1),(1670,133,'2014-01-15','2014-01-15 23:51:53',1),(1671,110,'2014-01-15','2014-01-15 23:54:26',1),(1672,1,'2014-01-15','2014-01-15 23:54:26',0),(1673,133,'2014-01-15','2014-01-15 23:54:31',0),(1674,110,'2014-01-15','2014-01-15 23:54:39',0),(1675,110,'2014-01-15','2014-01-15 23:54:45',0),(1676,112,'2014-01-15','2014-01-15 23:54:46',1),(1677,120,'2014-01-15','2014-01-15 23:54:50',1),(1678,133,'2014-01-15','2014-01-15 23:54:54',1),(1679,133,'2014-01-15','2014-01-15 23:55:03',1),(1680,133,'2014-01-15','2014-01-15 23:55:32',1),(1681,133,'2014-01-15','2014-01-15 23:55:37',1),(1682,133,'2014-01-15','2014-01-15 23:55:56',1),(1683,133,'2014-01-15','2014-01-15 23:55:59',1),(1684,133,'2014-01-15','2014-01-15 23:56:26',1),(1685,133,'2014-01-15','2014-01-15 23:58:21',1),(1686,120,'2014-01-15','2014-01-15 23:58:24',1),(1687,120,'2014-01-15','2014-01-15 23:58:26',1),(1688,1,'2014-01-16','2014-01-16 00:42:25',0),(1689,133,'2014-01-16','2014-01-16 00:42:35',0),(1690,133,'2014-01-16','2014-01-16 00:42:35',0),(1691,1,'2014-01-16','2014-01-16 00:42:39',0),(1692,133,'2014-01-16','2014-01-16 00:42:42',0),(1693,120,'2014-01-16','2014-01-16 00:42:44',0),(1694,120,'2014-01-16','2014-01-16 00:42:44',0),(1695,120,'2014-01-16','2014-01-16 00:42:49',0),(1696,120,'2014-01-16','2014-01-16 00:42:51',0),(1697,112,'2014-01-16','2014-01-16 00:42:54',0),(1698,112,'2014-01-16','2014-01-16 00:42:55',0),(1699,133,'2014-01-16','2014-01-16 00:43:02',0),(1700,1,'2014-01-16','2014-01-16 00:43:05',0),(1701,133,'2014-01-16','2014-01-16 00:43:23',0),(1702,120,'2014-01-16','2014-01-16 00:43:29',0),(1703,112,'2014-01-16','2014-01-16 00:43:31',0),(1704,112,'2014-01-16','2014-01-16 00:43:31',0),(1705,120,'2014-01-16','2014-01-16 00:43:39',0),(1706,112,'2014-01-16','2014-01-16 00:43:40',0),(1707,112,'2014-01-16','2014-01-16 00:43:41',0),(1708,1,'2014-01-16','2014-01-16 02:22:26',0),(1709,120,'2014-01-16','2014-01-16 02:22:28',0),(1710,112,'2014-01-16','2014-01-16 02:22:31',0),(1711,112,'2014-01-16','2014-01-16 02:22:31',0),(1712,1,'2014-01-16','2014-01-16 10:50:12',0),(1713,1,'2014-01-16','2014-01-16 10:50:14',0),(1714,120,'2014-01-16','2014-01-16 10:50:17',0),(1715,112,'2014-01-16','2014-01-16 10:50:21',0),(1716,112,'2014-01-16','2014-01-16 10:50:23',0),(1717,120,'2014-01-16','2014-01-16 10:50:25',0),(1718,112,'2014-01-16','2014-01-16 10:50:27',0),(1719,112,'2014-01-16','2014-01-16 10:50:28',0),(1720,120,'2014-01-16','2014-01-16 10:50:31',0),(1721,133,'2014-01-16','2014-01-16 10:50:37',0),(1722,1,'2014-01-16','2014-01-16 10:50:56',0),(1723,1,'2014-01-16','2014-01-16 15:00:23',0),(1724,120,'2014-01-16','2014-01-16 15:00:26',0),(1725,120,'2014-01-16','2014-01-16 15:00:27',0),(1726,112,'2014-01-16','2014-01-16 15:00:29',0),(1727,112,'2014-01-16','2014-01-16 15:00:30',0),(1728,120,'2014-01-16','2014-01-16 15:00:32',0),(1729,112,'2014-01-16','2014-01-16 15:00:34',0),(1730,112,'2014-01-16','2014-01-16 15:00:34',0),(1731,120,'2014-01-16','2014-01-16 15:00:46',0),(1732,112,'2014-01-16','2014-01-16 15:00:48',0),(1733,112,'2014-01-16','2014-01-16 15:00:48',0),(1734,112,'2014-01-16','2014-01-16 15:01:25',0),(1735,112,'2014-01-16','2014-01-16 15:01:26',0),(1736,120,'2014-01-16','2014-01-16 15:01:28',0),(1737,112,'2014-01-16','2014-01-16 15:01:32',0),(1738,112,'2014-01-16','2014-01-16 15:01:33',0),(1739,1,'2014-01-16','2014-01-16 18:03:55',0),(1740,1,'2014-01-16','2014-01-16 18:04:00',0),(1741,120,'2014-01-16','2014-01-16 18:04:01',0),(1742,120,'2014-01-16','2014-01-16 18:04:01',0),(1743,133,'2014-01-16','2014-01-16 18:04:16',0),(1744,133,'2014-01-16','2014-01-16 18:04:17',0),(1745,1,'2014-01-16','2014-01-16 23:37:56',0),(1746,120,'2014-01-16','2014-01-16 23:37:59',0),(1747,120,'2014-01-16','2014-01-16 23:37:59',0),(1748,112,'2014-01-16','2014-01-16 23:38:04',0),(1749,112,'2014-01-16','2014-01-16 23:38:04',0),(1750,120,'2014-01-16','2014-01-16 23:38:06',0),(1751,112,'2014-01-16','2014-01-16 23:38:08',0),(1752,112,'2014-01-16','2014-01-16 23:38:08',0),(1753,120,'2014-01-16','2014-01-16 23:38:11',0),(1754,112,'2014-01-16','2014-01-16 23:38:13',0),(1755,112,'2014-01-16','2014-01-16 23:38:14',0),(1756,120,'2014-01-16','2014-01-16 23:38:17',0),(1757,1,'2014-01-17','2014-01-17 09:03:36',0),(1758,120,'2014-01-17','2014-01-17 09:03:39',0),(1759,120,'2014-01-17','2014-01-17 09:03:39',0),(1760,112,'2014-01-17','2014-01-17 09:03:41',0),(1761,112,'2014-01-17','2014-01-17 09:03:42',0),(1762,120,'2014-01-17','2014-01-17 09:03:43',0),(1763,112,'2014-01-17','2014-01-17 09:03:45',0),(1764,112,'2014-01-17','2014-01-17 09:03:45',0),(1765,1,'2014-01-17','2014-01-17 11:12:18',0),(1766,120,'2014-01-17','2014-01-17 11:12:21',0),(1767,112,'2014-01-17','2014-01-17 11:12:24',0),(1768,112,'2014-01-17','2014-01-17 11:12:25',0),(1769,120,'2014-01-17','2014-01-17 11:12:28',0),(1770,112,'2014-01-17','2014-01-17 11:12:30',0),(1771,112,'2014-01-17','2014-01-17 11:12:31',0),(1772,120,'2014-01-17','2014-01-17 11:12:35',0),(1773,112,'2014-01-17','2014-01-17 11:12:37',0),(1774,112,'2014-01-17','2014-01-17 11:12:37',0),(1775,112,'2014-01-17','2014-01-17 11:12:59',0),(1776,112,'2014-01-17','2014-01-17 11:12:59',0),(1777,112,'2014-01-17','2014-01-17 11:13:02',0),(1778,112,'2014-01-17','2014-01-17 11:13:02',0),(1779,133,'2014-01-17','2014-01-17 11:13:06',0),(1780,133,'2014-01-17','2014-01-17 11:13:06',0),(1781,1,'2014-01-17','2014-01-17 11:13:23',0),(1782,1,'2014-01-19','2014-01-19 14:36:51',0),(1783,1,'2014-01-19','2014-01-19 17:42:05',0),(1784,120,'2014-01-19','2014-01-19 17:42:10',0),(1785,120,'2014-01-19','2014-01-19 17:42:11',0),(1786,112,'2014-01-19','2014-01-19 17:42:13',0),(1787,112,'2014-01-19','2014-01-19 17:42:14',0),(1788,120,'2014-01-19','2014-01-19 17:42:16',0),(1789,112,'2014-01-19','2014-01-19 17:42:18',0),(1790,112,'2014-01-19','2014-01-19 17:42:19',0),(1791,120,'2014-01-19','2014-01-19 17:42:22',0),(1792,112,'2014-01-19','2014-01-19 17:42:24',0),(1793,112,'2014-01-19','2014-01-19 17:42:25',0),(1794,133,'2014-01-19','2014-01-19 17:42:34',0),(1795,133,'2014-01-19','2014-01-19 17:42:35',0),(1796,110,'2014-01-19','2014-01-19 17:42:40',0),(1797,110,'2014-01-19','2014-01-19 17:42:45',0),(1798,112,'2014-01-19','2014-01-19 17:42:47',1),(1799,112,'2014-01-19','2014-01-19 17:42:49',1),(1800,106,'2014-01-19','2014-01-19 17:42:49',1),(1801,133,'2014-01-19','2014-01-19 17:42:58',1),(1802,133,'2014-01-19','2014-01-19 17:43:01',1),(1803,133,'2014-01-19','2014-01-19 17:44:01',1),(1804,120,'2014-01-19','2014-01-19 17:44:10',1),(1805,112,'2014-01-19','2014-01-19 17:44:12',1),(1806,1,'2014-01-19','2014-01-19 19:29:26',0),(1807,120,'2014-01-19','2014-01-19 19:29:33',0),(1808,120,'2014-01-19','2014-01-19 19:29:34',0),(1809,120,'2014-01-19','2014-01-19 19:29:34',0),(1810,112,'2014-01-19','2014-01-19 19:29:40',0),(1811,112,'2014-01-19','2014-01-19 19:29:41',0),(1812,120,'2014-01-19','2014-01-19 19:29:43',0),(1813,112,'2014-01-19','2014-01-19 19:29:44',0),(1814,112,'2014-01-19','2014-01-19 19:29:46',0),(1815,120,'2014-01-19','2014-01-19 19:29:48',0),(1816,120,'2014-01-19','2014-01-19 19:29:55',0),(1817,1,'2014-01-19','2014-01-19 19:29:57',0),(1818,1,'2014-01-20','2014-01-20 08:33:31',0),(1819,1,'2014-01-20','2014-01-20 08:33:41',0),(1820,1,'2014-01-20','2014-01-20 08:33:42',0),(1821,1,'2014-01-20','2014-01-20 08:33:46',0),(1822,1,'2014-01-20','2014-01-20 08:33:47',0),(1823,1,'2014-01-20','2014-01-20 08:33:47',0),(1824,1,'2014-01-20','2014-01-20 08:33:49',0),(1825,1,'2014-01-20','2014-01-20 08:33:50',0),(1826,1,'2014-01-20','2014-01-20 08:33:51',0),(1827,1,'2014-01-20','2014-01-20 08:33:54',0),(1828,1,'2014-01-20','2014-01-20 08:33:55',0),(1829,1,'2014-01-20','2014-01-20 08:33:59',0),(1830,110,'2014-01-20','2014-01-20 11:34:23',0),(1831,1,'2014-01-20','2014-01-20 11:34:49',0),(1832,133,'2014-01-20','2014-01-20 11:34:52',0),(1833,133,'2014-01-20','2014-01-20 11:34:53',0),(1834,120,'2014-01-20','2014-01-20 11:35:08',0),(1835,120,'2014-01-20','2014-01-20 11:35:10',0),(1836,120,'2014-01-20','2014-01-20 11:35:10',0),(1837,112,'2014-01-20','2014-01-20 11:35:17',0),(1838,112,'2014-01-20','2014-01-20 11:35:18',0),(1839,112,'2014-01-20','2014-01-20 11:35:19',0),(1840,112,'2014-01-20','2014-01-20 11:35:27',0),(1841,112,'2014-01-20','2014-01-20 11:35:28',0),(1842,112,'2014-01-20','2014-01-20 11:35:29',0),(1843,120,'2014-01-20','2014-01-20 11:35:31',0),(1844,133,'2014-01-20','2014-01-20 11:35:33',0),(1845,110,'2014-01-20','2014-01-20 11:35:38',0),(1846,110,'2014-01-20','2014-01-20 11:36:11',0),(1847,110,'2014-01-20','2014-01-20 11:36:29',0),(1848,110,'2014-01-20','2014-01-20 11:36:43',0),(1849,110,'2014-01-20','2014-01-20 11:36:56',0),(1850,110,'2014-01-20','2014-01-20 11:37:22',0),(1851,110,'2014-01-20','2014-01-20 11:37:24',0),(1852,1,'2014-01-20','2014-01-20 16:44:51',0),(1853,1,'2014-01-20','2014-01-20 16:44:53',0),(1854,120,'2014-01-20','2014-01-20 16:44:55',0),(1855,112,'2014-01-20','2014-01-20 16:44:59',0),(1856,112,'2014-01-20','2014-01-20 16:44:59',0),(1857,120,'2014-01-20','2014-01-20 16:45:02',0),(1858,112,'2014-01-20','2014-01-20 16:45:04',0),(1859,112,'2014-01-20','2014-01-20 16:45:05',0),(1860,120,'2014-01-20','2014-01-20 16:45:07',0),(1861,112,'2014-01-20','2014-01-20 16:45:09',0),(1862,112,'2014-01-20','2014-01-20 16:45:09',0),(1863,120,'2014-01-20','2014-01-20 16:45:16',0),(1864,110,'2014-01-20','2014-01-20 17:26:56',0),(1865,110,'2014-01-20','2014-01-20 17:26:56',0),(1866,110,'2014-01-20','2014-01-20 17:27:53',0),(1867,110,'2014-01-20','2014-01-20 17:28:00',0),(1868,112,'2014-01-20','2014-01-20 17:28:03',0),(1869,112,'2014-01-20','2014-01-20 17:28:04',4),(1870,106,'2014-01-20','2014-01-20 17:28:08',4),(1871,112,'2014-01-20','2014-01-20 17:28:11',4),(1872,112,'2014-01-20','2014-01-20 17:28:11',4),(1873,133,'2014-01-20','2014-01-20 17:28:25',0),(1874,133,'2014-01-20','2014-01-20 17:28:25',4),(1875,133,'2014-01-20','2014-01-20 17:28:26',4),(1876,133,'2014-01-20','2014-01-20 17:28:27',4),(1877,120,'2014-01-20','2014-01-20 17:28:29',0),(1878,120,'2014-01-20','2014-01-20 17:28:30',4),(1879,120,'2014-01-20','2014-01-20 17:28:31',4),(1880,112,'2014-01-20','2014-01-20 17:28:39',0),(1881,112,'2014-01-20','2014-01-20 17:28:39',4),(1882,112,'2014-01-20','2014-01-20 17:28:40',4),(1883,112,'2014-01-20','2014-01-20 17:28:41',4),(1884,120,'2014-01-20','2014-01-20 17:28:43',4),(1885,112,'2014-01-20','2014-01-20 17:28:45',0),(1886,112,'2014-01-20','2014-01-20 17:28:45',4),(1887,112,'2014-01-20','2014-01-20 17:28:46',4),(1888,112,'2014-01-20','2014-01-20 17:28:46',4),(1889,120,'2014-01-20','2014-01-20 17:28:49',4),(1890,110,'2014-01-20','2014-01-20 19:04:12',0),(1891,112,'2014-01-20','2014-01-20 19:04:12',2),(1892,106,'2014-01-20','2014-01-20 19:04:13',2),(1893,112,'2014-01-20','2014-01-20 19:04:15',2),(1894,112,'2014-01-20','2014-01-20 19:04:15',2),(1895,2,'2014-01-20','2014-01-20 19:04:31',2),(1896,18,'2014-01-20','2014-01-20 19:05:02',2),(1897,18,'2014-01-20','2014-01-20 19:05:09',2),(1898,112,'2014-01-20','2014-01-20 19:05:15',2),(1899,112,'2014-01-20','2014-01-20 19:05:16',2),(1900,112,'2014-01-20','2014-01-20 19:05:16',2),(1901,51,'2014-01-20','2014-01-20 19:05:25',2),(1902,83,'2014-01-20','2014-01-20 19:05:38',2),(1903,4,'2014-01-20','2014-01-20 19:06:07',2),(1904,2,'2014-01-20','2014-01-20 19:06:13',2),(1905,18,'2014-01-20','2014-01-20 19:06:21',2),(1906,89,'2014-01-20','2014-01-20 19:06:29',2),(1907,2,'2014-01-20','2014-01-20 19:06:33',2),(1908,17,'2014-01-20','2014-01-20 19:06:42',2),(1909,17,'2014-01-20','2014-01-20 19:06:46',2),(1910,1,'2014-01-20','2014-01-20 19:06:54',2),(1911,1,'2014-01-20','2014-01-20 19:06:59',2),(1912,2,'2014-01-20','2014-01-20 19:07:10',2),(1913,4,'2014-01-20','2014-01-20 19:07:27',2),(1914,2,'2014-01-20','2014-01-20 19:07:31',2),(1915,1,'2014-01-20','2014-01-20 19:07:33',2),(1916,51,'2014-01-20','2014-01-20 19:07:52',2),(1917,83,'2014-01-20','2014-01-20 19:08:24',2),(1918,110,'2014-01-20','2014-01-20 19:08:43',2),(1919,1,'2014-01-20','2014-01-20 19:08:43',0),(1920,1,'2014-01-20','2014-01-20 20:33:30',0),(1921,1,'2014-01-20','2014-01-20 21:57:19',0),(1922,120,'2014-01-20','2014-01-20 21:57:22',0),(1923,120,'2014-01-20','2014-01-20 21:57:22',0),(1924,112,'2014-01-20','2014-01-20 21:57:23',0),(1925,112,'2014-01-20','2014-01-20 21:57:24',0),(1926,112,'2014-01-20','2014-01-20 21:57:38',0),(1927,112,'2014-01-20','2014-01-20 21:57:38',0),(1928,1,'2014-01-21','2014-01-21 09:15:45',0),(1929,1,'2014-01-21','2014-01-21 09:40:42',0),(1930,1,'2014-01-21','2014-01-21 09:48:16',0),(1931,1,'2014-01-21','2014-01-21 15:47:30',0),(1932,1,'2014-01-21','2014-01-21 23:44:15',0),(1933,120,'2014-01-21','2014-01-21 23:44:18',0),(1934,120,'2014-01-21','2014-01-21 23:44:19',0),(1935,112,'2014-01-21','2014-01-21 23:44:21',0),(1936,112,'2014-01-21','2014-01-21 23:44:21',0),(1937,120,'2014-01-21','2014-01-21 23:44:24',0),(1938,112,'2014-01-21','2014-01-21 23:44:25',0),(1939,112,'2014-01-21','2014-01-21 23:44:26',0),(1940,120,'2014-01-21','2014-01-21 23:44:29',0),(1941,112,'2014-01-21','2014-01-21 23:45:33',0),(1942,112,'2014-01-21','2014-01-21 23:45:34',0),(1943,1,'2014-01-21','2014-01-21 23:45:50',0),(1944,1,'2014-01-22','2014-01-22 11:10:54',0),(1945,120,'2014-01-22','2014-01-22 11:10:57',0),(1946,120,'2014-01-22','2014-01-22 11:10:57',0),(1947,112,'2014-01-22','2014-01-22 11:11:01',0),(1948,112,'2014-01-22','2014-01-22 11:11:02',0),(1949,1,'2014-01-23','2014-01-23 01:39:48',0),(1950,110,'2014-01-23','2014-01-23 01:40:07',0),(1951,110,'2014-01-23','2014-01-23 01:40:18',0),(1952,112,'2014-01-23','2014-01-23 01:40:19',5),(1953,112,'2014-01-23','2014-01-23 01:40:20',5),(1954,106,'2014-01-23','2014-01-23 01:40:20',5),(1955,110,'2014-01-23','2014-01-23 01:40:59',5),(1956,1,'2014-01-23','2014-01-23 01:41:00',0),(1957,110,'2014-01-23','2014-01-23 01:41:05',0),(1958,110,'2014-01-23','2014-01-23 01:41:14',0),(1959,110,'2014-01-23','2014-01-23 01:41:21',0),(1960,112,'2014-01-23','2014-01-23 01:41:21',4),(1961,112,'2014-01-23','2014-01-23 01:41:22',4),(1962,106,'2014-01-23','2014-01-23 01:41:22',4),(1963,113,'2014-01-23','2014-01-23 01:43:05',4),(1964,112,'2014-01-23','2014-01-23 01:43:06',4),(1965,112,'2014-01-23','2014-01-23 01:43:36',4),(1966,114,'2014-01-23','2014-01-23 01:44:39',4),(1967,112,'2014-01-23','2014-01-23 01:44:40',4),(1968,110,'2014-01-23','2014-01-23 12:21:32',0),(1969,113,'2014-01-23','2014-01-23 12:22:34',0),(1970,110,'2014-01-23','2014-01-23 12:22:38',0),(1971,112,'2014-01-23','2014-01-23 12:22:39',2),(1972,106,'2014-01-23','2014-01-23 12:22:40',2),(1973,112,'2014-01-23','2014-01-23 12:22:48',2),(1974,112,'2014-01-23','2014-01-23 12:22:48',2),(1975,112,'2014-01-23','2014-01-23 12:23:01',2),(1976,112,'2014-01-23','2014-01-23 12:23:03',2),(1977,112,'2014-01-23','2014-01-23 12:23:03',2),(1978,2,'2014-01-23','2014-01-23 12:23:11',2),(1979,1,'2014-01-23','2014-01-23 17:46:37',0),(1980,1,'2014-01-23','2014-01-23 19:39:25',0),(1981,1,'2014-01-23','2014-01-23 19:39:30',0),(1982,133,'2014-01-23','2014-01-23 19:39:36',0),(1983,133,'2014-01-23','2014-01-23 19:39:37',0),(1984,120,'2014-01-23','2014-01-23 19:39:43',0),(1985,120,'2014-01-23','2014-01-23 19:39:44',0),(1986,112,'2014-01-23','2014-01-23 19:39:48',0),(1987,112,'2014-01-23','2014-01-23 19:39:48',0),(1988,120,'2014-01-23','2014-01-23 19:39:51',0),(1989,120,'2014-01-23','2014-01-23 19:40:08',0),(1990,112,'2014-01-23','2014-01-23 19:40:11',0),(1991,112,'2014-01-23','2014-01-23 19:40:11',0),(1992,120,'2014-01-23','2014-01-23 19:40:14',0),(1993,133,'2014-01-23','2014-01-23 19:40:24',0),(1994,133,'2014-01-23','2014-01-23 19:40:41',0),(1995,120,'2014-01-23','2014-01-23 19:40:54',0),(1996,112,'2014-01-23','2014-01-23 19:40:56',0),(1997,112,'2014-01-23','2014-01-23 19:40:57',0),(1998,112,'2014-01-24','2014-01-24 00:36:40',0),(1999,112,'2014-01-24','2014-01-24 00:36:41',0),(2000,112,'2014-01-24','2014-01-24 10:42:05',0),(2001,112,'2014-01-25','2014-01-25 00:52:40',0),(2002,112,'2014-01-25','2014-01-25 00:52:42',0),(2003,1,'2014-01-25','2014-01-25 14:58:58',0),(2004,110,'2014-01-25','2014-01-25 14:59:32',0),(2005,1,'2014-01-25','2014-01-25 14:59:39',0),(2006,1,'2014-01-25','2014-01-25 15:00:06',0),(2007,120,'2014-01-25','2014-01-25 15:00:08',0),(2008,120,'2014-01-25','2014-01-25 15:00:09',0),(2009,1,'2014-01-25','2014-01-25 15:00:27',0),(2010,1,'2014-01-25','2014-01-25 15:01:10',0),(2011,1,'2014-01-25','2014-01-25 15:44:05',0),(2012,1,'2014-01-26','2014-01-26 00:44:22',0),(2013,133,'2014-01-26','2014-01-26 00:44:29',0),(2014,133,'2014-01-26','2014-01-26 00:44:30',0),(2015,120,'2014-01-26','2014-01-26 00:44:36',0),(2016,120,'2014-01-26','2014-01-26 00:44:37',0),(2017,112,'2014-01-26','2014-01-26 00:44:39',0),(2018,112,'2014-01-26','2014-01-26 00:44:49',0),(2019,1,'2014-01-26','2014-01-26 12:54:25',0),(2020,120,'2014-01-26','2014-01-26 12:54:39',0),(2021,112,'2014-01-26','2014-01-26 12:54:44',0),(2022,112,'2014-01-26','2014-01-26 12:54:45',0),(2023,120,'2014-01-26','2014-01-26 12:54:50',0),(2024,112,'2014-01-26','2014-01-26 12:54:51',0),(2025,110,'2014-01-26','2014-01-26 12:55:02',0),(2026,110,'2014-01-26','2014-01-26 12:55:10',0),(2027,112,'2014-01-26','2014-01-26 12:55:11',1),(2028,112,'2014-01-26','2014-01-26 12:55:13',1),(2029,106,'2014-01-26','2014-01-26 12:55:13',1),(2030,133,'2014-01-26','2014-01-26 12:55:56',1),(2031,120,'2014-01-26','2014-01-26 12:56:28',1),(2032,112,'2014-01-26','2014-01-26 12:56:32',1),(2033,120,'2014-01-26','2014-01-26 12:56:34',1),(2034,1,'2014-01-26','2014-01-26 19:04:10',1),(2035,120,'2014-01-26','2014-01-26 19:07:09',1),(2036,112,'2014-01-26','2014-01-26 19:07:16',1),(2037,112,'2014-01-26','2014-01-26 19:07:17',1),(2038,112,'2014-01-26','2014-01-26 19:07:22',1),(2039,110,'2014-01-26','2014-01-26 19:07:30',1),(2040,1,'2014-01-26','2014-01-26 19:07:31',0),(2041,120,'2014-01-26','2014-01-26 19:07:34',0),(2042,112,'2014-01-26','2014-01-26 19:07:36',0),(2043,110,'2014-01-26','2014-01-26 19:07:43',0),(2044,110,'2014-01-26','2014-01-26 19:07:47',0),(2045,112,'2014-01-26','2014-01-26 19:07:48',1),(2046,2,'2014-01-26','2014-01-26 19:08:10',1),(2047,16,'2014-01-26','2014-01-26 19:08:16',1),(2048,16,'2014-01-26','2014-01-26 19:08:22',1),(2049,16,'2014-01-26','2014-01-26 19:08:27',1),(2050,16,'2014-01-26','2014-01-26 19:08:38',1),(2051,1,'2014-01-26','2014-01-26 19:08:42',1),(2052,120,'2014-01-26','2014-01-26 19:08:47',1),(2053,2,'2014-01-26','2014-01-26 19:08:52',1),(2054,16,'2014-01-26','2014-01-26 19:08:55',1),(2055,16,'2014-01-26','2014-01-26 19:09:07',1),(2056,16,'2014-01-26','2014-01-26 19:09:16',1),(2057,16,'2014-01-26','2014-01-26 19:09:35',1),(2058,16,'2014-01-26','2014-01-26 19:09:55',1),(2059,16,'2014-01-26','2014-01-26 19:10:05',1),(2060,2,'2014-01-26','2014-01-26 19:10:12',1),(2061,18,'2014-01-26','2014-01-26 19:10:30',1),(2062,18,'2014-01-26','2014-01-26 19:10:48',1),(2063,18,'2014-01-26','2014-01-26 19:11:57',1),(2064,18,'2014-01-26','2014-01-26 19:11:57',1),(2065,18,'2014-01-26','2014-01-26 20:16:19',1),(2066,1,'2014-01-26','2014-01-26 20:16:21',1),(2067,2,'2014-01-26','2014-01-26 20:16:29',1),(2068,16,'2014-01-26','2014-01-26 20:16:31',1),(2069,16,'2014-01-26','2014-01-26 20:16:34',1),(2070,16,'2014-01-26','2014-01-26 20:16:42',1),(2071,16,'2014-01-26','2014-01-26 20:16:49',1),(2072,16,'2014-01-26','2014-01-26 20:17:06',1),(2073,16,'2014-01-26','2014-01-26 20:17:11',1),(2074,16,'2014-01-26','2014-01-26 20:17:20',1),(2075,16,'2014-01-26','2014-01-26 20:17:28',1),(2076,16,'2014-01-26','2014-01-26 20:17:39',1),(2077,16,'2014-01-26','2014-01-26 20:17:46',1),(2078,16,'2014-01-26','2014-01-26 20:17:49',1),(2079,16,'2014-01-26','2014-01-26 20:17:55',1),(2080,16,'2014-01-26','2014-01-26 20:17:57',1),(2081,16,'2014-01-26','2014-01-26 20:18:02',1),(2082,1,'2014-01-26','2014-01-26 20:18:09',1),(2083,120,'2014-01-26','2014-01-26 20:18:12',1),(2084,120,'2014-01-26','2014-01-26 20:18:13',1),(2085,112,'2014-01-26','2014-01-26 20:18:24',1),(2086,112,'2014-01-26','2014-01-26 20:18:25',1),(2087,114,'2014-01-26','2014-01-26 20:18:28',1),(2088,114,'2014-01-26','2014-01-26 20:18:29',1),(2089,114,'2014-01-26','2014-01-26 20:19:12',1),(2090,114,'2014-01-26','2014-01-26 20:19:18',1),(2091,114,'2014-01-26','2014-01-26 20:19:20',1),(2092,112,'2014-01-26','2014-01-26 20:19:26',1),(2093,112,'2014-01-26','2014-01-26 20:19:30',1),(2094,112,'2014-01-26','2014-01-26 20:20:17',1),(2095,112,'2014-01-26','2014-01-26 20:22:42',1),(2096,110,'2014-01-26','2014-01-26 20:22:49',1),(2097,1,'2014-01-26','2014-01-26 20:22:50',0),(2098,120,'2014-01-26','2014-01-26 20:22:52',0),(2099,133,'2014-01-26','2014-01-26 20:48:33',0),(2100,133,'2014-01-26','2014-01-26 20:48:34',0),(2101,133,'2014-01-26','2014-01-26 20:48:34',0),(2102,1,'2014-01-26','2014-01-26 20:48:36',0),(2103,120,'2014-01-26','2014-01-26 20:48:38',0),(2104,1,'2014-01-26','2014-01-26 20:48:41',0),(2105,110,'2014-01-26','2014-01-26 20:49:07',0),(2106,110,'2014-01-26','2014-01-26 20:49:12',0),(2107,112,'2014-01-26','2014-01-26 20:49:13',1),(2108,112,'2014-01-26','2014-01-26 20:49:23',1),(2109,1,'2014-01-26','2014-01-26 20:49:30',1),(2110,1,'2014-01-26','2014-01-26 20:49:34',1),(2111,1,'2014-01-26','2014-01-26 21:08:43',1),(2112,112,'2014-01-26','2014-01-26 21:08:52',1),(2113,112,'2014-01-26','2014-01-26 21:08:53',1),(2114,1,'2014-01-26','2014-01-26 21:08:56',1),(2115,112,'2014-01-26','2014-01-26 21:08:58',1),(2116,1,'2014-01-26','2014-01-26 21:09:02',1),(2117,120,'2014-01-26','2014-01-26 21:09:22',1),(2118,1,'2014-01-26','2014-01-26 21:09:31',1),(2119,133,'2014-01-26','2014-01-26 21:09:34',1),(2120,1,'2014-01-26','2014-01-26 21:12:17',1),(2121,133,'2014-01-26','2014-01-26 21:12:36',1),(2122,1,'2014-01-26','2014-01-26 21:12:51',1),(2123,1,'2014-01-26','2014-01-26 21:12:54',1),(2124,2,'2014-01-26','2014-01-26 21:13:03',1),(2125,7,'2014-01-26','2014-01-26 21:13:24',1),(2126,7,'2014-01-26','2014-01-26 21:13:31',1),(2127,6,'2014-01-26','2014-01-26 21:13:56',1),(2128,7,'2014-01-26','2014-01-26 21:13:57',1),(2129,1,'2014-01-26','2014-01-26 21:14:03',1),(2130,1,'2014-01-26','2014-01-26 21:14:12',1),(2131,1,'2014-01-26','2014-01-26 21:14:20',1),(2132,1,'2014-01-26','2014-01-26 21:14:26',1),(2133,2,'2014-01-26','2014-01-26 21:14:31',1),(2134,7,'2014-01-26','2014-01-26 21:14:37',1),(2135,6,'2014-01-26','2014-01-26 21:14:50',1),(2136,7,'2014-01-26','2014-01-26 21:14:51',1),(2137,1,'2014-01-26','2014-01-26 21:14:56',1),(2138,1,'2014-01-26','2014-01-26 21:15:01',1),(2139,1,'2014-01-26','2014-01-26 21:16:14',1),(2140,1,'2014-01-26','2014-01-26 21:21:15',1),(2141,1,'2014-01-26','2014-01-26 21:21:15',1),(2142,1,'2014-01-26','2014-01-26 21:21:16',1),(2143,1,'2014-01-26','2014-01-26 21:21:16',1),(2144,1,'2014-01-26','2014-01-26 21:21:16',1),(2145,1,'2014-01-26','2014-01-26 21:21:16',1),(2146,1,'2014-01-26','2014-01-26 21:21:16',1),(2147,1,'2014-01-26','2014-01-26 21:21:16',1),(2148,1,'2014-01-26','2014-01-26 21:21:17',1),(2149,1,'2014-01-26','2014-01-26 21:21:34',1),(2150,120,'2014-01-26','2014-01-26 21:22:00',1),(2151,112,'2014-01-26','2014-01-26 21:22:22',1),(2152,112,'2014-01-26','2014-01-26 21:22:23',1),(2153,120,'2014-01-26','2014-01-26 21:22:28',1),(2154,133,'2014-01-26','2014-01-26 21:22:46',1),(2155,133,'2014-01-26','2014-01-26 21:22:57',1),(2156,133,'2014-01-26','2014-01-26 21:23:00',1),(2157,133,'2014-01-26','2014-01-26 21:23:01',1),(2158,133,'2014-01-26','2014-01-26 21:23:20',1),(2159,1,'2014-01-26','2014-01-26 21:24:44',1),(2160,1,'2014-01-26','2014-01-26 21:25:02',1),(2161,1,'2014-01-26','2014-01-26 21:25:07',1),(2162,2,'2014-01-26','2014-01-26 21:25:14',1),(2163,7,'2014-01-26','2014-01-26 21:25:53',1),(2164,6,'2014-01-26','2014-01-26 21:26:12',1),(2165,7,'2014-01-26','2014-01-26 21:26:12',1),(2166,1,'2014-01-26','2014-01-26 21:26:17',1),(2167,1,'2014-01-26','2014-01-26 21:26:43',1),(2168,1,'2014-01-26','2014-01-26 21:27:06',1),(2169,1,'2014-01-26','2014-01-26 21:28:58',1),(2170,1,'2014-01-26','2014-01-26 21:29:14',1),(2171,1,'2014-01-26','2014-01-26 21:35:22',0),(2172,1,'2014-01-26','2014-01-26 21:35:36',0),(2173,1,'2014-01-26','2014-01-26 21:49:55',0),(2174,133,'2014-01-26','2014-01-26 21:50:02',0),(2175,133,'2014-01-26','2014-01-26 21:50:04',0),(2176,133,'2014-01-26','2014-01-26 21:50:04',0),(2177,1,'2014-01-26','2014-01-26 21:50:09',0),(2178,120,'2014-01-26','2014-01-26 21:50:12',0),(2179,120,'2014-01-26','2014-01-26 21:50:12',0),(2180,1,'2014-01-26','2014-01-26 21:50:21',0),(2181,1,'2014-01-26','2014-01-26 21:53:06',0),(2182,120,'2014-01-26','2014-01-26 21:53:38',0),(2183,120,'2014-01-26','2014-01-26 21:53:42',0),(2184,133,'2014-01-26','2014-01-26 21:53:45',0),(2185,133,'2014-01-26','2014-01-26 21:53:47',0),(2186,1,'2014-01-26','2014-01-26 22:07:36',0),(2187,1,'2014-01-26','2014-01-26 22:09:19',0),(2188,1,'2014-01-26','2014-01-26 22:11:13',0),(2189,1,'2014-01-26','2014-01-26 22:11:22',0),(2190,133,'2014-01-26','2014-01-26 22:11:31',0),(2191,120,'2014-01-26','2014-01-26 22:11:34',0),(2192,112,'2014-01-26','2014-01-26 22:11:38',0),(2193,112,'2014-01-26','2014-01-26 22:11:38',0),(2194,133,'2014-01-26','2014-01-26 22:11:52',0),(2195,1,'2014-01-26','2014-01-26 22:14:42',0),(2196,133,'2014-01-26','2014-01-26 22:15:27',0),(2197,133,'2014-01-26','2014-01-26 22:15:27',0),(2198,120,'2014-01-26','2014-01-26 22:15:48',0),(2199,120,'2014-01-26','2014-01-26 22:15:48',0),(2200,133,'2014-01-26','2014-01-26 22:19:14',0),(2201,133,'2014-01-26','2014-01-26 22:19:15',0),(2202,1,'2014-01-26','2014-01-26 22:19:31',0),(2203,110,'2014-01-26','2014-01-26 22:19:57',0),(2204,110,'2014-01-26','2014-01-26 22:20:04',0),(2205,112,'2014-01-26','2014-01-26 22:20:05',1),(2206,112,'2014-01-26','2014-01-26 22:20:06',1),(2207,1,'2014-01-26','2014-01-26 22:20:12',1),(2208,1,'2014-01-26','2014-01-26 22:20:16',1),(2209,110,'2014-01-26','2014-01-26 22:20:19',1),(2210,1,'2014-01-26','2014-01-26 22:20:19',0),(2211,110,'2014-01-26','2014-01-26 22:20:51',0),(2212,110,'2014-01-26','2014-01-26 22:20:57',0),(2213,112,'2014-01-26','2014-01-26 22:20:58',1),(2214,1,'2014-01-26','2014-01-26 22:21:02',1),(2215,1,'2014-01-26','2014-01-26 22:21:06',1),(2216,1,'2014-01-26','2014-01-26 22:21:42',1),(2217,1,'2014-01-26','2014-01-26 22:23:03',1),(2218,1,'2014-01-26','2014-01-26 22:29:47',0),(2219,133,'2014-01-26','2014-01-26 22:30:49',0),(2220,120,'2014-01-26','2014-01-26 22:31:06',0),(2221,120,'2014-01-26','2014-01-26 22:31:57',0),(2222,1,'2014-01-26','2014-01-26 22:31:59',0),(2223,1,'2014-01-26','2014-01-26 22:35:03',0),(2224,1,'2014-01-26','2014-01-26 22:37:43',1),(2225,1,'2014-01-26','2014-01-26 22:37:55',1),(2226,1,'2014-01-26','2014-01-26 22:40:16',1),(2227,1,'2014-01-26','2014-01-26 22:53:19',1),(2228,1,'2014-01-26','2014-01-26 22:54:23',1),(2229,110,'2014-01-26','2014-01-26 22:56:42',1),(2230,1,'2014-01-26','2014-01-26 22:56:42',0),(2231,133,'2014-01-26','2014-01-26 22:56:53',0),(2232,120,'2014-01-26','2014-01-26 22:56:56',0),(2233,120,'2014-01-26','2014-01-26 22:57:26',0),(2234,120,'2014-01-26','2014-01-26 22:58:54',0),(2235,1,'2014-01-26','2014-01-26 22:59:06',0),(2236,1,'2014-01-26','2014-01-26 22:59:51',0),(2237,1,'2014-01-26','2014-01-26 23:00:06',0),(2238,120,'2014-01-26','2014-01-26 23:00:11',0),(2239,1,'2014-01-26','2014-01-26 23:00:23',0),(2240,133,'2014-01-26','2014-01-26 23:00:33',0),(2241,133,'2014-01-26','2014-01-26 23:00:36',0),(2242,1,'2014-01-26','2014-01-26 23:00:47',0),(2243,133,'2014-01-26','2014-01-26 23:00:51',0),(2244,120,'2014-01-26','2014-01-26 23:00:54',0),(2245,1,'2014-01-26','2014-01-26 23:01:02',0),(2246,1,'2014-01-26','2014-01-26 23:02:13',0),(2247,1,'2014-01-26','2014-01-26 23:16:11',0),(2248,133,'2014-01-26','2014-01-26 23:16:36',0),(2249,133,'2014-01-26','2014-01-26 23:16:37',0),(2250,120,'2014-01-26','2014-01-26 23:16:57',0),(2251,120,'2014-01-26','2014-01-26 23:16:58',0),(2252,1,'2014-01-26','2014-01-26 23:31:34',0),(2253,133,'2014-01-26','2014-01-26 23:32:37',0),(2254,133,'2014-01-26','2014-01-26 23:32:38',0),(2255,1,'2014-01-26','2014-01-26 23:32:52',0),(2256,1,'2014-01-27','2014-01-27 00:43:29',0),(2257,1,'2014-01-27','2014-01-27 00:56:41',0),(2258,1,'2014-01-27','2014-01-27 00:57:48',0),(2259,110,'2014-01-27','2014-01-27 00:58:11',0),(2260,110,'2014-01-27','2014-01-27 00:58:18',0),(2261,112,'2014-01-27','2014-01-27 00:58:18',1),(2262,1,'2014-01-27','2014-01-27 00:58:23',1),(2263,2,'2014-01-27','2014-01-27 00:58:29',1),(2264,7,'2014-01-27','2014-01-27 00:58:32',1),(2265,7,'2014-01-27','2014-01-27 00:58:36',1),(2266,1,'2014-01-27','2014-01-27 00:59:43',1),(2267,120,'2014-01-27','2014-01-27 00:59:48',1),(2268,112,'2014-01-27','2014-01-27 00:59:51',1),(2269,112,'2014-01-27','2014-01-27 00:59:52',1),(2270,120,'2014-01-27','2014-01-27 00:59:54',1),(2271,112,'2014-01-27','2014-01-27 00:59:57',1),(2272,112,'2014-01-27','2014-01-27 01:00:10',1),(2273,112,'2014-01-27','2014-01-27 01:00:41',1),(2274,1,'2014-01-27','2014-01-27 01:00:45',1),(2275,1,'2014-01-27','2014-01-27 01:00:54',1),(2276,1,'2014-01-27','2014-01-27 01:02:13',1),(2277,1,'2014-01-27','2014-01-27 03:23:15',0),(2278,1,'2014-01-27','2014-01-27 03:23:19',0),(2279,110,'2014-01-27','2014-01-27 03:25:55',0),(2280,110,'2014-01-27','2014-01-27 03:26:02',0),(2281,112,'2014-01-27','2014-01-27 03:26:03',1),(2282,112,'2014-01-27','2014-01-27 03:26:04',1),(2283,2,'2014-01-27','2014-01-27 03:26:07',1),(2284,51,'2014-01-27','2014-01-27 03:26:15',1),(2285,68,'2014-01-27','2014-01-27 03:26:18',1),(2286,68,'2014-01-27','2014-01-27 03:26:20',1),(2287,68,'2014-01-27','2014-01-27 03:26:21',1),(2288,2,'2014-01-27','2014-01-27 03:26:23',1),(2289,51,'2014-01-27','2014-01-27 03:26:27',1),(2290,67,'2014-01-27','2014-01-27 03:26:35',1),(2291,67,'2014-01-27','2014-01-27 03:26:56',1),(2292,67,'2014-01-27','2014-01-27 03:26:56',1),(2293,1,'2014-01-27','2014-01-27 03:27:02',1),(2294,110,'2014-01-27','2014-01-27 03:27:10',1),(2295,1,'2014-01-27','2014-01-27 03:27:10',0),(2296,133,'2014-01-27','2014-01-27 03:27:13',0),(2297,133,'2014-01-27','2014-01-27 03:27:14',0),(2298,120,'2014-01-27','2014-01-27 03:27:15',0),(2299,120,'2014-01-27','2014-01-27 03:27:16',0),(2300,133,'2014-01-27','2014-01-27 03:49:52',0),(2301,133,'2014-01-27','2014-01-27 03:49:52',0),(2302,120,'2014-01-27','2014-01-27 03:49:54',0),(2303,120,'2014-01-27','2014-01-27 03:49:54',0),(2304,110,'2014-01-27','2014-01-27 03:50:01',0),(2305,110,'2014-01-27','2014-01-27 03:50:04',0),(2306,112,'2014-01-27','2014-01-27 03:50:04',1),(2307,112,'2014-01-27','2014-01-27 03:50:05',1),(2308,114,'2014-01-27','2014-01-27 03:50:07',1),(2309,114,'2014-01-27','2014-01-27 03:50:08',1),(2310,114,'2014-01-27','2014-01-27 03:50:29',1),(2311,114,'2014-01-27','2014-01-27 03:50:29',1),(2312,114,'2014-01-27','2014-01-27 03:50:31',1),(2313,112,'2014-01-27','2014-01-27 03:50:34',1),(2314,112,'2014-01-27','2014-01-27 03:50:38',1),(2315,112,'2014-01-27','2014-01-27 03:50:57',1),(2316,120,'2014-01-27','2014-01-27 03:50:59',1),(2317,112,'2014-01-27','2014-01-27 03:51:09',1),(2318,112,'2014-01-27','2014-01-27 03:51:10',1),(2319,114,'2014-01-27','2014-01-27 03:51:12',1),(2320,114,'2014-01-27','2014-01-27 03:51:39',1),(2321,114,'2014-01-27','2014-01-27 03:51:39',1),(2322,114,'2014-01-27','2014-01-27 03:51:42',1),(2323,112,'2014-01-27','2014-01-27 03:51:45',1),(2324,120,'2014-01-27','2014-01-27 03:51:50',1),(2325,112,'2014-01-27','2014-01-27 03:53:09',1),(2326,112,'2014-01-27','2014-01-27 03:53:10',1),(2327,112,'2014-01-27','2014-01-27 03:53:13',1),(2328,112,'2014-01-27','2014-01-27 03:53:18',1),(2329,120,'2014-01-27','2014-01-27 03:54:02',1),(2330,120,'2014-01-27','2014-01-27 03:54:37',1),(2331,110,'2014-01-27','2014-01-27 03:56:02',1),(2332,112,'2014-01-27','2014-01-27 03:56:03',1),(2333,110,'2014-01-27','2014-01-27 03:56:35',1),(2334,112,'2014-01-27','2014-01-27 03:56:35',1),(2335,110,'2014-01-27','2014-01-27 03:56:52',1),(2336,112,'2014-01-27','2014-01-27 03:56:53',1),(2337,2,'2014-01-27','2014-01-27 03:56:58',1),(2338,120,'2014-01-27','2014-01-27 03:57:22',1),(2339,110,'2014-01-27','2014-01-27 03:57:47',1),(2340,112,'2014-01-27','2014-01-27 03:57:47',1),(2341,1,'2014-01-27','2014-01-27 03:57:57',1),(2342,1,'2014-01-27','2014-01-27 03:58:05',1),(2343,1,'2014-01-27','2014-01-27 03:58:36',1),(2344,110,'2014-01-27','2014-01-27 03:58:38',1),(2345,1,'2014-01-27','2014-01-27 03:58:38',0),(2346,120,'2014-01-27','2014-01-27 03:59:24',0),(2347,133,'2014-01-27','2014-01-27 07:07:22',0),(2348,133,'2014-01-27','2014-01-27 07:07:22',0),(2349,120,'2014-01-27','2014-01-27 07:07:50',0),(2350,120,'2014-01-27','2014-01-27 07:07:52',0),(2351,120,'2014-01-27','2014-01-27 07:48:18',0),(2352,112,'2014-01-27','2014-01-27 07:48:41',0),(2353,112,'2014-01-27','2014-01-27 08:16:13',0),(2354,112,'2014-01-27','2014-01-27 08:16:14',0),(2355,112,'2014-01-27','2014-01-27 08:16:14',0),(2356,112,'2014-01-27','2014-01-27 08:16:14',0),(2357,133,'2014-01-27','2014-01-27 08:29:44',0),(2358,120,'2014-01-27','2014-01-27 08:29:50',0),(2359,120,'2014-01-27','2014-01-27 08:29:50',0),(2360,112,'2014-01-27','2014-01-27 08:29:59',0),(2361,112,'2014-01-27','2014-01-27 08:29:59',0),(2362,120,'2014-01-27','2014-01-27 08:30:23',0),(2363,112,'2014-01-27','2014-01-27 08:30:25',0),(2364,112,'2014-01-27','2014-01-27 08:30:25',0),(2365,120,'2014-01-27','2014-01-27 08:30:38',0),(2366,112,'2014-01-27','2014-01-27 08:30:40',0),(2367,112,'2014-01-27','2014-01-27 08:30:40',0),(2368,133,'2014-01-27','2014-01-27 08:30:47',0),(2369,120,'2014-01-27','2014-01-27 08:32:06',0),(2370,120,'2014-01-27','2014-01-27 08:32:06',0),(2371,112,'2014-01-27','2014-01-27 08:32:10',0),(2372,112,'2014-01-27','2014-01-27 08:32:10',0),(2373,120,'2014-01-27','2014-01-27 08:32:28',0),(2374,112,'2014-01-27','2014-01-27 08:32:30',0),(2375,112,'2014-01-27','2014-01-27 08:32:30',0),(2376,120,'2014-01-27','2014-01-27 08:33:28',0),(2377,112,'2014-01-27','2014-01-27 08:33:30',0),(2378,112,'2014-01-27','2014-01-27 08:33:31',0),(2379,120,'2014-01-27','2014-01-27 08:33:57',0),(2380,112,'2014-01-27','2014-01-27 08:33:58',0),(2381,112,'2014-01-27','2014-01-27 08:33:59',0),(2382,120,'2014-01-27','2014-01-27 08:37:05',0),(2383,112,'2014-01-27','2014-01-27 08:37:07',0),(2384,112,'2014-01-27','2014-01-27 08:37:08',0),(2385,120,'2014-01-27','2014-01-27 08:38:16',0),(2386,133,'2014-01-27','2014-01-27 08:39:31',0),(2387,120,'2014-01-27','2014-01-27 08:40:16',0),(2388,120,'2014-01-27','2014-01-27 08:40:17',0),(2389,112,'2014-01-27','2014-01-27 08:40:23',0),(2390,112,'2014-01-27','2014-01-27 08:40:23',0),(2391,133,'2014-01-27','2014-01-27 08:40:33',0),(2392,133,'2014-01-27','2014-01-27 09:16:25',0),(2393,120,'2014-01-27','2014-01-27 09:16:37',0),(2394,120,'2014-01-27','2014-01-27 09:16:37',0),(2395,112,'2014-01-27','2014-01-27 09:16:41',0),(2396,112,'2014-01-27','2014-01-27 09:16:42',0),(2397,133,'2014-01-27','2014-01-27 09:34:46',0),(2398,133,'2014-01-27','2014-01-27 09:34:46',0),(2399,120,'2014-01-27','2014-01-27 09:35:38',0),(2400,120,'2014-01-27','2014-01-27 09:35:38',0),(2401,112,'2014-01-27','2014-01-27 09:38:10',0),(2402,112,'2014-01-27','2014-01-27 09:38:12',0),(2403,112,'2014-01-27','2014-01-27 09:38:21',0),(2404,112,'2014-01-27','2014-01-27 09:38:22',0),(2405,133,'2014-01-27','2014-01-27 09:38:32',0),(2406,120,'2014-01-27','2014-01-27 09:38:48',0),(2407,120,'2014-01-27','2014-01-27 09:38:49',0),(2408,133,'2014-01-27','2014-01-27 09:39:05',0),(2409,120,'2014-01-27','2014-01-27 09:39:53',0),(2410,120,'2014-01-27','2014-01-27 09:39:54',0),(2411,112,'2014-01-27','2014-01-27 09:40:08',0),(2412,112,'2014-01-27','2014-01-27 09:40:09',0),(2413,120,'2014-01-27','2014-01-27 09:40:31',0),(2414,112,'2014-01-27','2014-01-27 09:40:33',0),(2415,112,'2014-01-27','2014-01-27 09:40:33',0),(2416,120,'2014-01-27','2014-01-27 09:40:50',0),(2417,112,'2014-01-27','2014-01-27 09:40:52',0),(2418,112,'2014-01-27','2014-01-27 09:40:52',0),(2419,120,'2014-01-27','2014-01-27 09:41:22',0),(2420,1,'2014-01-27','2014-01-27 10:55:07',0),(2421,133,'2014-01-27','2014-01-27 13:38:55',0),(2422,133,'2014-01-27','2014-01-27 15:16:06',0),(2423,120,'2014-01-27','2014-01-27 15:16:25',0),(2424,120,'2014-01-27','2014-01-27 15:16:26',0),(2425,120,'2014-01-27','2014-01-27 15:16:50',0),(2426,133,'2014-01-27','2014-01-27 15:34:27',0),(2427,133,'2014-01-27','2014-01-27 15:34:27',0),(2428,120,'2014-01-27','2014-01-27 15:34:28',0),(2429,120,'2014-01-27','2014-01-27 15:34:28',0),(2430,120,'2014-01-27','2014-01-27 15:34:28',0),(2431,120,'2014-01-27','2014-01-27 15:34:29',0),(2432,133,'2014-01-27','2014-01-27 15:53:10',0),(2433,133,'2014-01-27','2014-01-27 15:53:10',0),(2434,112,'2014-01-27','2014-01-27 16:48:06',0),(2435,112,'2014-01-27','2014-01-27 16:48:09',0),(2436,120,'2014-01-27','2014-01-27 16:48:23',0),(2437,1,'2014-01-27','2014-01-27 17:08:57',0),(2438,133,'2014-01-27','2014-01-27 17:09:05',0),(2439,133,'2014-01-27','2014-01-27 17:09:05',0),(2440,120,'2014-01-27','2014-01-27 17:09:07',0),(2441,120,'2014-01-27','2014-01-27 17:09:07',0),(2442,120,'2014-01-27','2014-01-27 17:09:08',0),(2443,112,'2014-01-27','2014-01-27 17:09:10',0),(2444,112,'2014-01-27','2014-01-27 17:09:11',0),(2445,112,'2014-01-27','2014-01-27 17:09:11',0),(2446,133,'2014-01-27','2014-01-27 17:20:45',0),(2447,133,'2014-01-27','2014-01-27 17:20:45',0),(2448,120,'2014-01-27','2014-01-27 17:20:53',0),(2449,120,'2014-01-27','2014-01-27 17:20:54',0),(2450,120,'2014-01-27','2014-01-27 17:20:54',0),(2451,120,'2014-01-27','2014-01-27 17:22:29',0),(2452,120,'2014-01-27','2014-01-27 17:22:30',0),(2453,133,'2014-01-27','2014-01-27 17:22:32',0),(2454,112,'2014-01-27','2014-01-27 17:22:45',0),(2455,112,'2014-01-27','2014-01-27 17:22:45',0),(2456,120,'2014-01-27','2014-01-27 17:22:58',0),(2457,112,'2014-01-27','2014-01-27 17:23:01',0),(2458,112,'2014-01-27','2014-01-27 17:23:01',0),(2459,120,'2014-01-27','2014-01-27 17:23:15',0),(2460,112,'2014-01-27','2014-01-27 17:23:18',0),(2461,112,'2014-01-27','2014-01-27 17:23:18',0),(2462,110,'2014-01-27','2014-01-27 19:50:20',0),(2463,110,'2014-01-27','2014-01-27 19:50:22',0),(2464,112,'2014-01-27','2014-01-27 19:50:23',1),(2465,112,'2014-01-27','2014-01-27 19:50:25',1),(2466,106,'2014-01-27','2014-01-27 19:50:25',1),(2467,2,'2014-01-27','2014-01-27 19:50:31',1),(2468,16,'2014-01-27','2014-01-27 19:50:39',1),(2469,112,'2014-01-27','2014-01-27 19:50:53',1),(2470,112,'2014-01-27','2014-01-27 19:50:55',1),(2471,112,'2014-01-27','2014-01-27 19:50:58',1),(2472,112,'2014-01-27','2014-01-27 19:51:03',1),(2473,133,'2014-01-27','2014-01-27 20:02:04',1),(2474,133,'2014-01-27','2014-01-27 20:02:05',1),(2475,120,'2014-01-27','2014-01-27 20:03:03',1),(2476,120,'2014-01-27','2014-01-27 20:03:04',1),(2477,112,'2014-01-27','2014-01-27 20:03:07',1),(2478,112,'2014-01-27','2014-01-27 20:03:07',1),(2479,120,'2014-01-27','2014-01-27 20:03:10',1),(2480,112,'2014-01-27','2014-01-27 20:03:12',1),(2481,112,'2014-01-27','2014-01-27 20:03:13',1),(2482,133,'2014-01-27','2014-01-27 20:03:21',1),(2483,133,'2014-01-27','2014-01-27 20:03:27',1),(2484,133,'2014-01-27','2014-01-27 20:06:12',1),(2485,1,'2014-01-27','2014-01-27 20:06:31',1),(2486,1,'2014-01-27','2014-01-27 20:06:34',1),(2487,1,'2014-01-27','2014-01-27 20:06:53',1),(2488,112,'2014-01-27','2014-01-27 20:07:52',1),(2489,120,'2014-01-27','2014-01-27 20:08:07',1),(2490,112,'2014-01-27','2014-01-27 20:08:13',1),(2491,120,'2014-01-27','2014-01-27 20:20:05',0),(2492,1,'2014-01-27','2014-01-27 20:20:27',1),(2493,1,'2014-01-27','2014-01-27 20:30:34',0),(2494,1,'2014-01-27','2014-01-27 20:56:07',1),(2495,133,'2014-01-27','2014-01-27 20:56:28',0),(2496,133,'2014-01-27','2014-01-27 20:56:29',0),(2497,120,'2014-01-27','2014-01-27 20:57:04',1),(2498,120,'2014-01-27','2014-01-27 20:57:09',0),(2499,120,'2014-01-27','2014-01-27 20:57:10',0),(2500,112,'2014-01-27','2014-01-27 20:57:17',0),(2501,112,'2014-01-27','2014-01-27 20:57:17',1),(2502,112,'2014-01-27','2014-01-27 20:57:17',0),(2503,120,'2014-01-27','2014-01-27 20:57:22',1),(2504,120,'2014-01-27','2014-01-27 20:57:26',0),(2505,112,'2014-01-27','2014-01-27 20:57:32',0),(2506,112,'2014-01-27','2014-01-27 20:57:33',0),(2507,120,'2014-01-27','2014-01-27 20:57:49',0),(2508,112,'2014-01-27','2014-01-27 20:58:07',1),(2509,120,'2014-01-27','2014-01-27 20:58:59',0),(2510,120,'2014-01-27','2014-01-27 20:59:09',0),(2511,120,'2014-01-27','2014-01-27 20:59:19',0),(2512,120,'2014-01-27','2014-01-27 20:59:44',0),(2513,120,'2014-01-27','2014-01-27 20:59:56',0),(2514,120,'2014-01-27','2014-01-27 21:00:28',0),(2515,112,'2014-01-27','2014-01-27 21:00:34',1),(2516,120,'2014-01-27','2014-01-27 21:00:44',0),(2517,120,'2014-01-27','2014-01-27 21:00:54',0),(2518,112,'2014-01-27','2014-01-27 21:05:38',1),(2519,120,'2014-01-27','2014-01-27 21:05:58',0),(2520,112,'2014-01-27','2014-01-27 21:07:29',0),(2521,112,'2014-01-27','2014-01-27 21:07:29',0),(2522,120,'2014-01-27','2014-01-27 21:07:51',1),(2523,120,'2014-01-27','2014-01-27 21:10:03',0),(2524,120,'2014-01-27','2014-01-27 21:10:10',0),(2525,120,'2014-01-27','2014-01-27 21:12:04',0),(2526,112,'2014-01-27','2014-01-27 21:12:07',0),(2527,112,'2014-01-27','2014-01-27 21:12:07',0),(2528,120,'2014-01-27','2014-01-27 21:12:10',0),(2529,1,'2014-01-27','2014-01-27 21:12:27',1),(2530,120,'2014-01-27','2014-01-27 21:12:32',0),(2531,1,'2014-01-27','2014-01-27 21:13:39',1),(2532,1,'2014-01-27','2014-01-27 21:14:00',1),(2533,1,'2014-01-27','2014-01-27 21:14:03',1),(2534,112,'2014-01-27','2014-01-27 21:15:09',0),(2535,112,'2014-01-27','2014-01-27 21:15:09',0),(2536,120,'2014-01-27','2014-01-27 21:15:59',0),(2537,133,'2014-01-27','2014-01-27 21:16:42',1),(2538,133,'2014-01-27','2014-01-27 21:17:47',1),(2539,133,'2014-01-27','2014-01-27 21:20:00',1),(2540,133,'2014-01-27','2014-01-27 21:20:04',1),(2541,133,'2014-01-27','2014-01-27 21:20:15',0),(2542,120,'2014-01-27','2014-01-27 21:21:20',0),(2543,1,'2014-01-27','2014-01-27 21:23:32',0),(2544,120,'2014-01-27','2014-01-27 21:23:33',0),(2545,120,'2014-01-27','2014-01-27 21:23:34',0),(2546,1,'2014-01-27','2014-01-27 22:55:28',1),(2547,133,'2014-01-27','2014-01-27 22:55:31',1),(2548,1,'2014-01-27','2014-01-27 22:55:36',1),(2549,120,'2014-01-27','2014-01-27 22:55:40',1),(2550,120,'2014-01-27','2014-01-27 22:55:42',1),(2551,112,'2014-01-27','2014-01-27 22:56:01',1),(2552,112,'2014-01-27','2014-01-27 22:56:01',1),(2553,120,'2014-01-27','2014-01-27 22:56:04',1),(2554,1,'2014-01-28','2014-01-28 07:58:21',0),(2555,133,'2014-01-28','2014-01-28 07:59:10',0),(2556,120,'2014-01-28','2014-01-28 07:59:30',0),(2557,133,'2014-01-28','2014-01-28 09:40:10',0),(2558,120,'2014-01-28','2014-01-28 09:40:25',0),(2559,120,'2014-01-28','2014-01-28 09:40:26',0),(2560,112,'2014-01-28','2014-01-28 09:40:28',0),(2561,112,'2014-01-28','2014-01-28 09:40:29',0),(2562,1,'2014-01-28','2014-01-28 11:20:55',1),(2563,1,'2014-01-28','2014-01-28 11:28:50',1),(2564,1,'2014-01-28','2014-01-28 12:58:06',1),(2565,1,'2014-01-28','2014-01-28 12:58:11',1),(2566,112,'2014-01-28','2014-01-28 13:06:27',0),(2567,1,'2014-01-28','2014-01-28 13:07:02',1),(2568,1,'2014-01-28','2014-01-28 13:07:29',1),(2569,112,'2014-01-28','2014-01-28 13:07:39',0),(2570,120,'2014-01-28','2014-01-28 13:08:54',0),(2571,1,'2014-01-28','2014-01-28 13:11:35',1),(2572,112,'2014-01-28','2014-01-28 13:11:58',1),(2573,112,'2014-01-28','2014-01-28 13:12:02',1),(2574,2,'2014-01-28','2014-01-28 13:12:11',1),(2575,51,'2014-01-28','2014-01-28 13:13:19',1),(2576,68,'2014-01-28','2014-01-28 13:13:26',1),(2577,68,'2014-01-28','2014-01-28 13:13:29',1),(2578,68,'2014-01-28','2014-01-28 13:13:30',1),(2579,1,'2014-01-28','2014-01-28 13:13:34',1),(2580,120,'2014-01-28','2014-01-28 13:13:38',1),(2581,112,'2014-01-28','2014-01-28 13:13:40',1),(2582,112,'2014-01-28','2014-01-28 13:13:41',1),(2583,1,'2014-01-28','2014-01-28 13:16:54',1),(2584,1,'2014-01-28','2014-01-28 13:40:58',0),(2585,120,'2014-01-28','2014-01-28 17:39:43',0),(2586,120,'2014-01-28','2014-01-28 17:39:45',0),(2587,112,'2014-01-28','2014-01-28 17:40:03',0),(2588,112,'2014-01-28','2014-01-28 17:40:06',0),(2589,112,'2014-01-28','2014-01-28 17:40:19',0),(2590,112,'2014-01-28','2014-01-28 17:40:20',0),(2591,112,'2014-01-28','2014-01-28 17:40:37',0),(2592,112,'2014-01-28','2014-01-28 17:40:38',0),(2593,120,'2014-01-28','2014-01-28 17:40:38',0),(2594,133,'2014-01-28','2014-01-28 17:40:43',0),(2595,133,'2014-01-28','2014-01-28 17:40:44',0),(2596,120,'2014-01-28','2014-01-28 17:41:26',0),(2597,112,'2014-01-28','2014-01-28 17:41:35',0),(2598,112,'2014-01-28','2014-01-28 17:41:37',0),(2599,120,'2014-01-28','2014-01-28 17:43:29',0),(2600,120,'2014-01-28','2014-01-28 17:45:17',0),(2601,112,'2014-01-28','2014-01-28 17:45:24',0),(2602,112,'2014-01-28','2014-01-28 17:45:25',0),(2603,112,'2014-01-28','2014-01-28 17:46:09',0),(2604,112,'2014-01-28','2014-01-28 17:46:10',0),(2605,120,'2014-01-28','2014-01-28 17:46:14',0),(2606,112,'2014-01-28','2014-01-28 17:46:24',0),(2607,112,'2014-01-28','2014-01-28 17:46:25',0),(2608,120,'2014-01-28','2014-01-28 17:46:50',0),(2609,120,'2014-01-28','2014-01-28 17:47:32',0),(2610,120,'2014-01-28','2014-01-28 17:47:33',0),(2611,112,'2014-01-28','2014-01-28 18:26:29',0),(2612,112,'2014-01-28','2014-01-28 18:27:26',0),(2613,120,'2014-01-28','2014-01-28 18:30:30',0),(2614,112,'2014-01-28','2014-01-28 18:36:33',0),(2615,112,'2014-01-28','2014-01-28 18:36:34',0),(2616,112,'2014-01-28','2014-01-28 18:36:34',0),(2617,112,'2014-01-28','2014-01-28 18:39:13',0),(2618,112,'2014-01-28','2014-01-28 18:43:42',0),(2619,112,'2014-01-28','2014-01-28 18:46:05',0),(2620,1,'2014-01-28','2014-01-28 20:59:46',0),(2621,1,'2014-01-28','2014-01-28 22:19:51',1),(2622,106,'2014-01-28','2014-01-28 22:19:52',1),(2623,1,'2014-01-28','2014-01-28 22:20:07',1),(2624,1,'2014-01-29','2014-01-29 01:19:27',1),(2625,120,'2014-01-29','2014-01-29 01:23:01',0),(2626,120,'2014-01-29','2014-01-29 01:23:01',0),(2627,112,'2014-01-29','2014-01-29 01:23:03',0),(2628,112,'2014-01-29','2014-01-29 01:23:04',0),(2629,133,'2014-01-29','2014-01-29 01:23:06',0),(2630,133,'2014-01-29','2014-01-29 01:23:07',0),(2631,133,'2014-01-29','2014-01-29 01:28:25',0),(2632,120,'2014-01-29','2014-01-29 01:28:51',0),(2633,120,'2014-01-29','2014-01-29 01:28:52',0),(2634,112,'2014-01-29','2014-01-29 01:28:53',0),(2635,112,'2014-01-29','2014-01-29 01:28:53',0),(2636,120,'2014-01-29','2014-01-29 01:28:57',0),(2637,112,'2014-01-29','2014-01-29 01:28:58',0),(2638,112,'2014-01-29','2014-01-29 01:28:59',0),(2639,120,'2014-01-29','2014-01-29 01:29:02',0),(2640,1,'2014-01-29','2014-01-29 01:32:18',1),(2641,133,'2014-01-29','2014-01-29 01:36:30',1),(2642,133,'2014-01-29','2014-01-29 01:36:31',1),(2643,133,'2014-01-29','2014-01-29 01:41:56',1),(2644,1,'2014-01-29','2014-01-29 01:42:00',1),(2645,133,'2014-01-29','2014-01-29 01:42:03',1),(2646,1,'2014-01-29','2014-01-29 01:42:30',1),(2647,133,'2014-01-29','2014-01-29 04:27:46',0),(2648,120,'2014-01-29','2014-01-29 04:37:14',0),(2649,112,'2014-01-29','2014-01-29 05:01:21',0),(2650,1,'2014-01-29','2014-01-29 06:08:49',0),(2651,133,'2014-01-29','2014-01-29 10:02:30',0),(2652,1,'2014-01-29','2014-01-29 10:26:43',1),(2653,1,'2014-01-29','2014-01-29 10:40:31',1),(2654,110,'2014-01-29','2014-01-29 10:40:36',1),(2655,120,'2014-01-29','2014-01-29 10:41:13',0),(2656,120,'2014-01-29','2014-01-29 10:41:19',0),(2657,120,'2014-01-29','2014-01-29 10:56:39',0),(2658,112,'2014-01-29','2014-01-29 10:56:41',0),(2659,110,'2014-01-29','2014-01-29 10:57:57',0),(2660,110,'2014-01-29','2014-01-29 10:57:59',0),(2661,112,'2014-01-29','2014-01-29 10:58:00',1),(2662,112,'2014-01-29','2014-01-29 10:58:01',1),(2663,2,'2014-01-29','2014-01-29 10:58:03',1),(2664,51,'2014-01-29','2014-01-29 10:59:12',1),(2665,60,'2014-01-29','2014-01-29 10:59:24',1),(2666,60,'2014-01-29','2014-01-29 10:59:28',1),(2667,60,'2014-01-29','2014-01-29 10:59:28',1),(2668,1,'2014-01-29','2014-01-29 10:59:57',1),(2669,110,'2014-01-29','2014-01-29 10:59:59',1),(2670,120,'2014-01-29','2014-01-29 11:00:34',0),(2671,112,'2014-01-29','2014-01-29 11:00:39',0),(2672,112,'2014-01-29','2014-01-29 11:00:45',0),(2673,120,'2014-01-29','2014-01-29 11:00:49',0),(2674,120,'2014-01-29','2014-01-29 11:00:56',0),(2675,120,'2014-01-29','2014-01-29 11:17:04',0),(2676,120,'2014-01-29','2014-01-29 11:17:11',0),(2677,120,'2014-01-29','2014-01-29 11:17:33',0),(2678,120,'2014-01-29','2014-01-29 11:17:40',0),(2679,120,'2014-01-29','2014-01-29 11:19:19',0),(2680,120,'2014-01-29','2014-01-29 11:19:26',0),(2681,120,'2014-01-29','2014-01-29 11:19:40',0),(2682,120,'2014-01-29','2014-01-29 11:24:39',0),(2683,120,'2014-01-29','2014-01-29 11:24:46',0),(2684,112,'2014-01-29','2014-01-29 11:24:56',0),(2685,112,'2014-01-29','2014-01-29 11:25:00',0),(2686,133,'2014-01-29','2014-01-29 11:25:18',0),(2687,133,'2014-01-29','2014-01-29 11:25:18',0),(2688,120,'2014-01-29','2014-01-29 11:25:20',0),(2689,120,'2014-01-29','2014-01-29 11:26:35',0),(2690,120,'2014-01-29','2014-01-29 11:26:57',0),(2691,1,'2014-01-29','2014-01-29 12:32:50',0),(2692,110,'2014-01-29','2014-01-29 16:47:58',0),(2693,112,'2014-01-29','2014-01-29 16:47:58',1),(2694,112,'2014-01-29','2014-01-29 16:47:59',1),(2695,120,'2014-01-29','2014-01-29 16:48:02',1),(2696,120,'2014-01-29','2014-01-29 16:48:03',1),(2697,120,'2014-01-29','2014-01-29 16:48:06',1),(2698,120,'2014-01-29','2014-01-29 16:52:49',1),(2699,120,'2014-01-29','2014-01-29 16:57:23',1),(2700,120,'2014-01-29','2014-01-29 16:58:10',1),(2701,120,'2014-01-29','2014-01-29 16:58:35',1),(2702,2,'2014-01-29','2014-01-29 16:58:42',1),(2703,7,'2014-01-29','2014-01-29 16:58:45',1),(2704,7,'2014-01-29','2014-01-29 16:58:50',1),(2705,1,'2014-01-29','2014-01-29 16:59:07',1),(2706,110,'2014-01-29','2014-01-29 16:59:10',1),(2707,110,'2014-01-29','2014-01-29 16:59:23',0),(2708,110,'2014-01-29','2014-01-29 16:59:27',0),(2709,112,'2014-01-29','2014-01-29 16:59:27',1),(2710,112,'2014-01-29','2014-01-29 16:59:31',1),(2711,112,'2014-01-29','2014-01-29 16:59:36',1),(2712,110,'2014-01-29','2014-01-29 16:59:39',1),(2713,110,'2014-01-29','2014-01-29 16:59:53',0),(2714,112,'2014-01-29','2014-01-29 16:59:54',1),(2715,2,'2014-01-29','2014-01-29 17:00:01',1),(2716,7,'2014-01-29','2014-01-29 17:00:07',1),(2717,7,'2014-01-29','2014-01-29 17:00:14',1),(2718,110,'2014-01-29','2014-01-29 17:00:47',1),(2719,112,'2014-01-29','2014-01-29 17:00:47',1),(2720,2,'2014-01-29','2014-01-29 17:00:52',1),(2721,51,'2014-01-29','2014-01-29 17:00:58',1),(2722,67,'2014-01-29','2014-01-29 17:01:01',1),(2723,2,'2014-01-29','2014-01-29 17:01:05',1),(2724,51,'2014-01-29','2014-01-29 17:01:11',1),(2725,68,'2014-01-29','2014-01-29 17:01:14',1),(2726,68,'2014-01-29','2014-01-29 17:01:16',1),(2727,68,'2014-01-29','2014-01-29 17:01:17',1),(2728,110,'2014-01-29','2014-01-29 17:01:25',1),(2729,1,'2014-01-29','2014-01-29 17:01:28',0),(2730,120,'2014-01-29','2014-01-29 17:01:31',0),(2731,112,'2014-01-29','2014-01-29 17:01:54',0),(2732,112,'2014-01-29','2014-01-29 17:01:55',0),(2733,133,'2014-01-29','2014-01-29 17:02:06',0),(2734,133,'2014-01-29','2014-01-29 17:02:06',0),(2735,120,'2014-01-29','2014-01-29 17:02:08',0),(2736,120,'2014-01-29','2014-01-29 17:02:09',0),(2737,120,'2014-01-29','2014-01-29 17:02:09',0),(2738,112,'2014-01-29','2014-01-29 17:02:11',0),(2739,120,'2014-01-29','2014-01-29 17:02:14',0),(2740,133,'2014-01-29','2014-01-29 17:13:29',0),(2741,120,'2014-01-29','2014-01-29 17:13:37',0),(2742,112,'2014-01-29','2014-01-29 17:13:38',0),(2743,120,'2014-01-29','2014-01-29 17:13:41',0),(2744,112,'2014-01-29','2014-01-29 17:13:43',0),(2745,112,'2014-01-29','2014-01-29 17:13:46',0),(2746,112,'2014-01-29','2014-01-29 17:13:47',0),(2747,120,'2014-01-29','2014-01-29 17:13:48',0),(2748,112,'2014-01-29','2014-01-29 17:13:50',0),(2749,112,'2014-01-29','2014-01-29 17:13:50',0),(2750,112,'2014-01-29','2014-01-29 17:13:50',0),(2751,120,'2014-01-29','2014-01-29 17:13:55',0),(2752,120,'2014-01-29','2014-01-29 17:17:22',0),(2753,120,'2014-01-29','2014-01-29 17:17:30',0),(2754,120,'2014-01-29','2014-01-29 18:32:54',0),(2755,112,'2014-01-29','2014-01-29 18:33:02',0),(2756,112,'2014-01-29','2014-01-29 18:33:04',0),(2757,120,'2014-01-29','2014-01-29 18:33:06',0),(2758,133,'2014-01-29','2014-01-29 18:33:20',0),(2759,120,'2014-01-29','2014-01-29 18:58:02',0),(2760,112,'2014-01-29','2014-01-29 19:43:22',0),(2761,133,'2014-01-29','2014-01-29 22:19:16',0),(2762,110,'2014-01-29','2014-01-29 22:22:20',0),(2763,110,'2014-01-29','2014-01-29 22:22:23',0),(2764,112,'2014-01-29','2014-01-29 22:22:24',1),(2765,106,'2014-01-29','2014-01-29 22:22:25',1),(2766,120,'2014-01-29','2014-01-29 22:25:55',1),(2767,120,'2014-01-29','2014-01-29 22:27:14',1),(2768,120,'2014-01-29','2014-01-29 22:48:32',1),(2769,112,'2014-01-29','2014-01-29 22:48:41',1),(2770,120,'2014-01-29','2014-01-29 22:48:45',1),(2771,110,'2014-01-29','2014-01-29 22:56:35',1),(2772,112,'2014-01-29','2014-01-29 22:56:35',1),(2773,1,'2014-01-29','2014-01-29 22:56:43',1),(2774,1,'2014-01-29','2014-01-29 22:56:46',1),(2775,1,'2014-01-29','2014-01-29 23:07:24',1),(2776,1,'2014-01-29','2014-01-29 23:23:22',1),(2777,120,'2014-01-29','2014-01-29 23:23:43',1),(2778,120,'2014-01-29','2014-01-29 23:23:52',1),(2779,1,'2014-01-29','2014-01-29 23:26:34',1),(2780,120,'2014-01-29','2014-01-29 23:32:22',1),(2781,110,'2014-01-29','2014-01-29 23:33:00',1),(2782,112,'2014-01-29','2014-01-29 23:33:01',1),(2783,133,'2014-01-29','2014-01-29 23:33:08',1),(2784,133,'2014-01-29','2014-01-29 23:33:11',1),(2785,133,'2014-01-29','2014-01-29 23:35:34',1),(2786,120,'2014-01-29','2014-01-29 23:35:58',1),(2787,120,'2014-01-29','2014-01-29 23:36:04',1),(2788,120,'2014-01-29','2014-01-29 23:37:26',1),(2789,120,'2014-01-29','2014-01-29 23:37:31',1),(2790,133,'2014-01-29','2014-01-29 23:37:40',1),(2791,1,'2014-01-29','2014-01-29 23:37:43',1),(2792,133,'2014-01-29','2014-01-29 23:37:48',1),(2793,120,'2014-01-29','2014-01-29 23:37:49',1),(2794,1,'2014-01-29','2014-01-29 23:38:47',1),(2795,133,'2014-01-29','2014-01-29 23:38:52',1),(2796,120,'2014-01-29','2014-01-29 23:38:59',1),(2797,110,'2014-01-29','2014-01-29 23:44:35',1),(2798,1,'2014-01-29','2014-01-29 23:44:35',0),(2799,133,'2014-01-29','2014-01-29 23:44:47',0),(2800,120,'2014-01-29','2014-01-29 23:45:11',0),(2801,110,'2014-01-29','2014-01-29 23:45:48',0),(2802,112,'2014-01-29','2014-01-29 23:45:49',1),(2803,120,'2014-01-29','2014-01-29 23:45:52',1),(2804,120,'2014-01-29','2014-01-29 23:45:52',1),(2805,120,'2014-01-29','2014-01-29 23:45:54',1),(2806,120,'2014-01-29','2014-01-29 23:49:25',1),(2807,120,'2014-01-29','2014-01-29 23:49:29',1),(2808,120,'2014-01-29','2014-01-29 23:49:54',1),(2809,112,'2014-01-29','2014-01-29 23:51:36',1),(2810,112,'2014-01-29','2014-01-29 23:51:37',1),(2811,112,'2014-01-29','2014-01-29 23:51:44',1),(2812,112,'2014-01-29','2014-01-29 23:51:50',1),(2813,120,'2014-01-30','2014-01-30 00:02:50',1),(2814,120,'2014-01-30','2014-01-30 00:03:53',1),(2815,120,'2014-01-30','2014-01-30 00:05:43',0),(2816,120,'2014-01-30','2014-01-30 00:05:43',0),(2817,120,'2014-01-30','2014-01-30 00:07:05',0),(2818,120,'2014-01-30','2014-01-30 00:08:18',0),(2819,112,'2014-01-30','2014-01-30 00:08:23',0),(2820,112,'2014-01-30','2014-01-30 00:08:24',0),(2821,112,'2014-01-30','2014-01-30 00:08:36',0),(2822,112,'2014-01-30','2014-01-30 00:08:37',0),(2823,112,'2014-01-30','2014-01-30 00:09:32',0),(2824,112,'2014-01-30','2014-01-30 00:09:33',0),(2825,110,'2014-01-30','2014-01-30 00:10:10',1),(2826,112,'2014-01-30','2014-01-30 00:10:12',1),(2827,133,'2014-01-30','2014-01-30 00:10:18',1),(2828,133,'2014-01-30','2014-01-30 00:10:25',1),(2829,133,'2014-01-30','2014-01-30 00:10:57',1),(2830,120,'2014-01-30','2014-01-30 00:11:07',1),(2831,112,'2014-01-30','2014-01-30 00:12:09',1),(2832,110,'2014-01-30','2014-01-30 00:12:15',1),(2833,120,'2014-01-30','2014-01-30 00:12:19',0),(2834,112,'2014-01-30','2014-01-30 00:12:21',0),(2835,120,'2014-01-30','2014-01-30 00:17:12',0),(2836,120,'2014-01-30','2014-01-30 00:17:29',0),(2837,120,'2014-01-30','2014-01-30 00:38:06',0),(2838,112,'2014-01-30','2014-01-30 00:38:08',0),(2839,112,'2014-01-30','2014-01-30 00:38:09',0),(2840,120,'2014-01-30','2014-01-30 00:38:19',0),(2841,133,'2014-01-30','2014-01-30 03:06:29',0),(2842,133,'2014-01-30','2014-01-30 03:06:34',0),(2843,120,'2014-01-30','2014-01-30 03:06:37',0),(2844,120,'2014-01-30','2014-01-30 03:06:42',0),(2845,112,'2014-01-30','2014-01-30 03:06:44',0),(2846,112,'2014-01-30','2014-01-30 03:06:46',0),(2847,112,'2014-01-30','2014-01-30 04:50:44',0),(2848,120,'2014-01-30','2014-01-30 04:50:44',0),(2849,112,'2014-01-30','2014-01-30 04:50:44',0),(2850,112,'2014-01-30','2014-01-30 04:50:54',0),(2851,112,'2014-01-30','2014-01-30 04:50:54',0),(2852,112,'2014-01-30','2014-01-30 04:50:54',0),(2853,112,'2014-01-30','2014-01-30 04:50:54',0),(2854,112,'2014-01-30','2014-01-30 04:50:54',0),(2855,112,'2014-01-30','2014-01-30 04:50:59',0),(2856,1,'2014-01-30','2014-01-30 09:25:22',0),(2857,120,'2014-01-30','2014-01-30 14:16:26',0),(2858,112,'2014-01-30','2014-01-30 14:16:44',0),(2859,112,'2014-01-30','2014-01-30 14:17:01',0),(2860,133,'2014-01-30','2014-01-30 14:17:18',0),(2861,1,'2014-01-30','2014-01-30 16:30:14',0),(2862,120,'2014-01-30','2014-01-30 16:36:22',0),(2863,120,'2014-01-30','2014-01-30 17:50:55',0),(2864,120,'2014-01-30','2014-01-30 19:20:11',0),(2865,112,'2014-01-30','2014-01-30 19:20:15',0),(2866,112,'2014-01-30','2014-01-30 19:20:17',0),(2867,1,'2014-01-30','2014-01-30 22:46:11',0),(2868,120,'2014-01-30','2014-01-30 22:46:20',0),(2869,120,'2014-01-30','2014-01-30 22:46:21',0),(2870,120,'2014-01-30','2014-01-30 22:47:22',0),(2871,133,'2014-01-30','2014-01-30 22:47:32',0),(2872,133,'2014-01-30','2014-01-30 22:47:32',0),(2873,120,'2014-01-30','2014-01-30 22:47:34',0),(2874,120,'2014-01-30','2014-01-30 22:47:43',0),(2875,1,'2014-01-31','2014-01-31 04:46:58',0),(2876,120,'2014-01-31','2014-01-31 04:47:04',0),(2877,120,'2014-01-31','2014-01-31 04:47:04',0),(2878,133,'2014-01-31','2014-01-31 04:47:17',0),(2879,120,'2014-01-31','2014-01-31 08:03:30',0),(2880,120,'2014-01-31','2014-01-31 08:03:31',0),(2881,112,'2014-01-31','2014-01-31 08:03:34',0),(2882,112,'2014-01-31','2014-01-31 08:03:35',0),(2883,133,'2014-01-31','2014-01-31 08:03:44',0),(2884,133,'2014-01-31','2014-01-31 08:03:44',0),(2885,1,'2014-01-31','2014-01-31 12:36:58',0),(2886,112,'2014-01-31','2014-01-31 13:32:13',0),(2887,112,'2014-01-31','2014-01-31 13:32:16',0),(2888,112,'2014-01-31','2014-01-31 13:32:18',0),(2889,112,'2014-01-31','2014-01-31 13:32:21',0),(2890,112,'2014-01-31','2014-01-31 13:32:23',0),(2891,120,'2014-01-31','2014-01-31 13:35:05',0),(2892,120,'2014-01-31','2014-01-31 13:35:06',0),(2893,120,'2014-01-31','2014-01-31 13:35:25',0),(2894,112,'2014-01-31','2014-01-31 13:39:02',0),(2895,112,'2014-01-31','2014-01-31 13:39:03',0),(2896,110,'2014-01-31','2014-01-31 13:39:39',0),(2897,110,'2014-01-31','2014-01-31 13:39:42',0),(2898,112,'2014-01-31','2014-01-31 13:39:43',1),(2899,112,'2014-01-31','2014-01-31 13:39:43',1),(2900,106,'2014-01-31','2014-01-31 13:39:44',1),(2901,112,'2014-01-31','2014-01-31 13:39:54',1),(2902,112,'2014-01-31','2014-01-31 13:41:11',1),(2903,110,'2014-01-31','2014-01-31 13:41:31',1),(2904,110,'2014-01-31','2014-01-31 13:48:10',0),(2905,112,'2014-01-31','2014-01-31 13:48:10',1),(2906,1,'2014-01-31','2014-01-31 13:48:17',1),(2907,1,'2014-01-31','2014-01-31 13:48:23',1),(2908,1,'2014-01-31','2014-01-31 13:48:46',1),(2909,1,'2014-01-31','2014-01-31 13:49:16',1),(2910,1,'2014-01-31','2014-01-31 14:25:10',0),(2911,120,'2014-01-31','2014-01-31 14:25:36',0),(2912,120,'2014-01-31','2014-01-31 14:25:37',0),(2913,120,'2014-01-31','2014-01-31 14:25:37',0),(2914,110,'2014-01-31','2014-01-31 15:48:44',0),(2915,112,'2014-01-31','2014-01-31 15:48:46',1),(2916,112,'2014-01-31','2014-01-31 15:48:47',1),(2917,2,'2014-01-31','2014-01-31 15:48:51',1),(2918,51,'2014-01-31','2014-01-31 15:48:58',1),(2919,1,'2014-01-31','2014-01-31 15:49:09',1),(2920,110,'2014-01-31','2014-01-31 15:49:14',1),(2921,110,'2014-01-31','2014-01-31 15:49:29',0),(2922,112,'2014-01-31','2014-01-31 15:49:29',1),(2923,112,'2014-01-31','2014-01-31 15:49:30',1),(2924,2,'2014-01-31','2014-01-31 15:49:32',1),(2925,51,'2014-01-31','2014-01-31 15:49:39',1),(2926,2,'2014-01-31','2014-01-31 15:49:49',1),(2927,2,'2014-01-31','2014-01-31 15:49:55',1),(2928,2,'2014-01-31','2014-01-31 15:49:58',1),(2929,51,'2014-01-31','2014-01-31 15:50:05',1),(2930,2,'2014-01-31','2014-01-31 15:50:11',1),(2931,51,'2014-01-31','2014-01-31 15:50:20',1),(2932,68,'2014-01-31','2014-01-31 15:50:27',1),(2933,68,'2014-01-31','2014-01-31 15:50:29',1),(2934,68,'2014-01-31','2014-01-31 15:50:30',1),(2935,110,'2014-01-31','2014-01-31 15:50:33',1),(2936,1,'2014-01-31','2014-01-31 15:50:35',0),(2937,133,'2014-01-31','2014-01-31 15:52:44',0),(2938,133,'2014-01-31','2014-01-31 15:52:45',0),(2939,120,'2014-01-31','2014-01-31 15:52:49',0),(2940,120,'2014-01-31','2014-01-31 15:52:50',0),(2941,120,'2014-01-31','2014-01-31 15:53:44',0),(2942,1,'2014-01-31','2014-01-31 15:53:59',1),(2943,120,'2014-01-31','2014-01-31 15:54:04',1),(2944,133,'2014-01-31','2014-01-31 16:08:31',0),(2945,120,'2014-01-31','2014-01-31 16:08:32',0),(2946,120,'2014-01-31','2014-01-31 16:08:33',0),(2947,120,'2014-01-31','2014-01-31 16:08:44',0),(2948,120,'2014-01-31','2014-01-31 16:09:03',0),(2949,120,'2014-01-31','2014-01-31 17:51:30',0),(2950,120,'2014-01-31','2014-01-31 17:51:52',0),(2951,120,'2014-01-31','2014-01-31 17:51:55',0),(2952,110,'2014-01-31','2014-01-31 18:28:29',0),(2953,112,'2014-01-31','2014-01-31 18:28:29',1),(2954,120,'2014-01-31','2014-01-31 18:28:35',1),(2955,120,'2014-01-31','2014-01-31 18:28:39',1),(2956,120,'2014-01-31','2014-01-31 18:45:37',1),(2957,1,'2014-01-31','2014-01-31 18:45:45',1),(2958,120,'2014-01-31','2014-01-31 18:45:48',1),(2959,120,'2014-01-31','2014-01-31 18:52:21',0),(2960,133,'2014-01-31','2014-01-31 18:52:22',0),(2961,112,'2014-01-31','2014-01-31 18:52:52',1),(2962,120,'2014-01-31','2014-01-31 19:03:52',1),(2963,112,'2014-01-31','2014-01-31 19:04:10',1),(2964,112,'2014-01-31','2014-01-31 19:04:10',1),(2965,120,'2014-01-31','2014-01-31 19:05:18',0),(2966,133,'2014-01-31','2014-01-31 19:05:28',0),(2967,120,'2014-01-31','2014-01-31 19:05:45',0),(2968,120,'2014-01-31','2014-01-31 19:05:45',0),(2969,112,'2014-01-31','2014-01-31 19:05:49',0),(2970,112,'2014-01-31','2014-01-31 19:05:49',0),(2971,112,'2014-01-31','2014-01-31 19:06:26',0),(2972,112,'2014-01-31','2014-01-31 19:06:28',0),(2973,120,'2014-01-31','2014-01-31 19:06:50',0),(2974,120,'2014-01-31','2014-01-31 19:06:50',0),(2975,133,'2014-01-31','2014-01-31 19:06:53',0),(2976,120,'2014-01-31','2014-01-31 19:07:35',0),(2977,112,'2014-01-31','2014-01-31 19:07:41',0),(2978,110,'2014-01-31','2014-01-31 19:09:38',1),(2979,133,'2014-01-31','2014-01-31 19:09:52',0),(2980,133,'2014-01-31','2014-01-31 19:09:52',0),(2981,120,'2014-01-31','2014-01-31 19:10:04',0),(2982,120,'2014-01-31','2014-01-31 19:10:10',0),(2983,120,'2014-01-31','2014-01-31 19:18:01',0),(2984,112,'2014-01-31','2014-01-31 19:18:07',0),(2985,112,'2014-01-31','2014-01-31 19:18:15',0),(2986,120,'2014-01-31','2014-01-31 19:47:57',0),(2987,112,'2014-01-31','2014-01-31 19:48:03',0),(2988,112,'2014-01-31','2014-01-31 19:48:11',0),(2989,120,'2014-01-31','2014-01-31 19:48:12',0),(2990,120,'2014-01-31','2014-01-31 20:00:43',0),(2991,120,'2014-01-31','2014-01-31 20:00:45',0),(2992,120,'2014-01-31','2014-01-31 20:01:08',0),(2993,133,'2014-01-31','2014-01-31 20:01:18',0),(2994,120,'2014-01-31','2014-01-31 20:01:21',0),(2995,120,'2014-01-31','2014-01-31 20:01:49',0),(2996,120,'2014-01-31','2014-01-31 20:01:58',0),(2997,120,'2014-01-31','2014-01-31 20:05:54',0),(2998,120,'2014-01-31','2014-01-31 20:05:58',0),(2999,112,'2014-01-31','2014-01-31 20:06:00',0),(3000,112,'2014-01-31','2014-01-31 20:06:02',0),(3001,120,'2014-01-31','2014-01-31 20:06:15',0),(3002,120,'2014-01-31','2014-01-31 20:06:19',0),(3003,120,'2014-01-31','2014-01-31 20:06:28',0),(3004,112,'2014-01-31','2014-01-31 20:06:29',0),(3005,112,'2014-01-31','2014-01-31 20:06:30',0),(3006,120,'2014-01-31','2014-01-31 20:06:33',0),(3007,120,'2014-01-31','2014-01-31 22:23:15',0),(3008,120,'2014-01-31','2014-01-31 22:23:16',0),(3009,133,'2014-01-31','2014-01-31 22:23:19',0),(3010,120,'2014-02-01','2014-02-01 01:00:47',0),(3011,120,'2014-02-01','2014-02-01 01:00:48',0),(3012,120,'2014-02-01','2014-02-01 01:06:36',0),(3013,133,'2014-02-01','2014-02-01 01:07:00',0),(3014,133,'2014-02-01','2014-02-01 01:07:00',0),(3015,120,'2014-02-01','2014-02-01 01:07:01',0),(3016,120,'2014-02-01','2014-02-01 01:07:35',0),(3017,120,'2014-02-01','2014-02-01 01:07:42',0),(3018,120,'2014-02-01','2014-02-01 01:07:45',0),(3019,112,'2014-02-01','2014-02-01 01:07:47',0),(3020,112,'2014-02-01','2014-02-01 01:07:47',0),(3021,112,'2014-02-01','2014-02-01 01:08:03',0),(3022,112,'2014-02-01','2014-02-01 01:08:04',0),(3023,120,'2014-02-01','2014-02-01 01:08:13',0),(3024,112,'2014-02-01','2014-02-01 01:08:16',0),(3025,112,'2014-02-01','2014-02-01 01:08:16',0),(3026,112,'2014-02-01','2014-02-01 01:08:28',0),(3027,112,'2014-02-01','2014-02-01 01:08:28',0),(3028,112,'2014-02-01','2014-02-01 01:08:32',0),(3029,112,'2014-02-01','2014-02-01 01:08:32',0),(3030,120,'2014-02-01','2014-02-01 01:26:06',0),(3031,112,'2014-02-01','2014-02-01 01:26:08',0),(3032,112,'2014-02-01','2014-02-01 01:26:09',0),(3033,120,'2014-02-01','2014-02-01 01:26:30',0),(3034,1,'2014-02-01','2014-02-01 09:00:53',0),(3035,112,'2014-02-01','2014-02-01 10:37:04',0),(3036,1,'2014-02-01','2014-02-01 16:00:32',0),(3037,112,'2014-02-01','2014-02-01 17:42:31',0),(3038,1,'2014-02-02','2014-02-02 02:31:19',0),(3039,112,'2014-02-02','2014-02-02 02:31:38',0),(3040,112,'2014-02-02','2014-02-02 02:31:52',0),(3041,120,'2014-02-02','2014-02-02 02:32:10',0),(3042,133,'2014-02-02','2014-02-02 02:32:16',0),(3043,1,'2014-02-03','2014-02-03 12:09:17',0),(3044,133,'2014-02-03','2014-02-03 12:09:21',0),(3045,133,'2014-02-03','2014-02-03 12:09:22',0),(3046,120,'2014-02-03','2014-02-03 12:09:23',0),(3047,120,'2014-02-03','2014-02-03 12:09:24',0),(3048,112,'2014-02-03','2014-02-03 12:09:27',0),(3049,112,'2014-02-03','2014-02-03 12:09:27',0),(3050,120,'2014-02-03','2014-02-03 16:13:40',0),(3051,120,'2014-02-03','2014-02-03 16:13:40',0),(3052,1,'2014-02-03','2014-02-03 18:51:49',0),(3053,1,'2014-02-04','2014-02-04 00:55:52',0),(3054,120,'2014-02-04','2014-02-04 01:06:51',0),(3055,120,'2014-02-04','2014-02-04 01:06:52',0),(3056,120,'2014-02-04','2014-02-04 01:10:54',0),(3057,112,'2014-02-04','2014-02-04 01:10:58',0),(3058,112,'2014-02-04','2014-02-04 01:10:58',0),(3059,120,'2014-02-04','2014-02-04 01:11:53',0),(3060,112,'2014-02-04','2014-02-04 01:11:59',0),(3061,112,'2014-02-04','2014-02-04 01:12:00',0),(3062,112,'2014-02-04','2014-02-04 01:12:14',0),(3063,1,'2014-02-04','2014-02-04 10:08:23',0),(3064,133,'2014-02-04','2014-02-04 15:31:23',0),(3065,133,'2014-02-04','2014-02-04 15:31:24',0),(3066,120,'2014-02-04','2014-02-04 15:33:58',0),(3067,120,'2014-02-04','2014-02-04 15:33:59',0),(3068,112,'2014-02-04','2014-02-04 15:34:29',0),(3069,112,'2014-02-04','2014-02-04 15:34:29',0),(3070,112,'2014-02-04','2014-02-04 15:34:45',0),(3071,112,'2014-02-04','2014-02-04 15:34:46',0),(3072,1,'2014-02-04','2014-02-04 16:14:37',0),(3073,112,'2014-02-04','2014-02-04 16:19:05',0),(3074,120,'2014-02-04','2014-02-04 17:42:54',0),(3075,120,'2014-02-04','2014-02-04 17:42:55',0),(3076,133,'2014-02-04','2014-02-04 18:28:05',0),(3077,120,'2014-02-04','2014-02-04 18:31:28',0),(3078,112,'2014-02-04','2014-02-04 18:34:23',0),(3079,112,'2014-02-04','2014-02-04 18:37:16',0),(3080,120,'2014-02-04','2014-02-04 19:35:29',0),(3081,120,'2014-02-04','2014-02-04 19:35:31',0),(3082,133,'2014-02-04','2014-02-04 19:36:50',0),(3083,112,'2014-02-04','2014-02-04 20:45:53',0),(3084,112,'2014-02-04','2014-02-04 20:48:47',0),(3085,112,'2014-02-04','2014-02-04 20:51:40',0),(3086,112,'2014-02-04','2014-02-04 20:54:33',0),(3087,112,'2014-02-04','2014-02-04 20:57:27',0),(3088,1,'2014-02-05','2014-02-05 00:20:35',0),(3089,120,'2014-02-05','2014-02-05 00:59:13',0),(3090,133,'2014-02-05','2014-02-05 00:59:15',0),(3091,133,'2014-02-05','2014-02-05 00:59:15',0),(3092,133,'2014-02-05','2014-02-05 00:59:15',0),(3093,120,'2014-02-05','2014-02-05 00:59:19',0),(3094,112,'2014-02-05','2014-02-05 00:59:21',0),(3095,112,'2014-02-05','2014-02-05 00:59:21',0),(3096,120,'2014-02-05','2014-02-05 01:00:27',0),(3097,1,'2014-02-05','2014-02-05 08:37:18',0),(3098,1,'2014-02-05','2014-02-05 16:13:15',0),(3099,120,'2014-02-05','2014-02-05 17:08:51',0),(3100,120,'2014-02-05','2014-02-05 17:08:52',0),(3101,133,'2014-02-05','2014-02-05 20:05:23',0),(3102,1,'2014-02-06','2014-02-06 03:28:43',0),(3103,112,'2014-02-06','2014-02-06 05:36:40',0),(3104,112,'2014-02-06','2014-02-06 10:42:31',0),(3105,1,'2014-02-06','2014-02-06 13:34:16',0),(3106,133,'2014-02-06','2014-02-06 15:45:08',0),(3107,133,'2014-02-06','2014-02-06 15:45:09',0),(3108,133,'2014-02-06','2014-02-06 15:45:09',0),(3109,120,'2014-02-06','2014-02-06 15:45:24',0),(3110,120,'2014-02-06','2014-02-06 15:45:25',0),(3111,112,'2014-02-06','2014-02-06 15:45:31',0),(3112,112,'2014-02-06','2014-02-06 15:45:32',0),(3113,120,'2014-02-06','2014-02-06 15:45:49',0),(3114,112,'2014-02-06','2014-02-06 15:45:56',0),(3115,112,'2014-02-06','2014-02-06 15:45:56',0),(3116,120,'2014-02-06','2014-02-06 15:46:16',0),(3117,120,'2014-02-06','2014-02-06 15:46:40',0),(3118,120,'2014-02-06','2014-02-06 15:47:57',0),(3119,1,'2014-02-06','2014-02-06 21:47:34',0),(3120,1,'2014-02-07','2014-02-07 10:58:01',0),(3121,120,'2014-02-07','2014-02-07 13:13:31',0),(3122,133,'2014-02-07','2014-02-07 13:54:25',0),(3123,112,'2014-02-07','2014-02-07 18:29:28',0),(3124,1,'2014-02-07','2014-02-07 22:44:13',0),(3125,112,'2014-02-08','2014-02-08 08:04:44',0),(3126,112,'2014-02-08','2014-02-08 09:39:04',0),(3127,112,'2014-02-08','2014-02-08 10:08:43',0),(3128,112,'2014-02-08','2014-02-08 10:11:37',0),(3129,133,'2014-02-08','2014-02-08 10:14:32',0),(3130,112,'2014-02-08','2014-02-08 10:17:28',0),(3131,120,'2014-02-08','2014-02-08 10:20:23',0),(3132,1,'2014-02-08','2014-02-08 11:04:50',0),(3133,120,'2014-02-08','2014-02-08 11:04:54',0),(3134,112,'2014-02-08','2014-02-08 11:04:57',0),(3135,112,'2014-02-08','2014-02-08 11:05:01',0),(3136,112,'2014-02-08','2014-02-08 11:05:11',0),(3137,112,'2014-02-08','2014-02-08 11:05:15',0),(3138,112,'2014-02-08','2014-02-08 11:05:21',0),(3139,112,'2014-02-08','2014-02-08 11:05:26',0),(3140,112,'2014-02-08','2014-02-08 11:05:31',0),(3141,112,'2014-02-08','2014-02-08 11:05:36',0),(3142,1,'2014-02-08','2014-02-08 19:18:34',0),(3143,133,'2014-02-08','2014-02-08 22:45:55',0),(3144,120,'2014-02-09','2014-02-09 01:29:39',0),(3145,1,'2014-02-09','2014-02-09 02:05:33',0),(3146,133,'2014-02-09','2014-02-09 05:06:12',0),(3147,1,'2014-02-09','2014-02-09 08:33:03',0),(3148,1,'2014-02-09','2014-02-09 14:55:11',0),(3149,1,'2014-02-09','2014-02-09 21:05:08',0),(3150,112,'2014-02-09','2014-02-09 21:58:54',0),(3151,120,'2014-02-09','2014-02-09 22:20:12',0),(3152,120,'2014-02-09','2014-02-09 22:20:13',0),(3153,112,'2014-02-09','2014-02-09 22:20:56',0),(3154,112,'2014-02-09','2014-02-09 22:20:56',0),(3155,120,'2014-02-09','2014-02-09 22:31:40',0),(3156,120,'2014-02-09','2014-02-09 22:31:42',0),(3157,120,'2014-02-10','2014-02-10 01:41:18',0),(3158,1,'2014-02-10','2014-02-10 03:17:51',0),(3159,1,'2014-02-10','2014-02-10 09:42:23',0),(3160,133,'2014-02-10','2014-02-10 10:05:00',0),(3161,112,'2014-02-10','2014-02-10 10:11:47',0),(3162,112,'2014-02-10','2014-02-10 14:03:23',0),(3163,1,'2014-02-10','2014-02-10 17:41:20',0),(3164,120,'2014-02-10','2014-02-10 18:19:03',0),(3165,133,'2014-02-10','2014-02-10 20:19:57',0),(3166,120,'2014-02-10','2014-02-10 20:20:00',0),(3167,112,'2014-02-10','2014-02-10 20:20:03',0),(3168,112,'2014-02-10','2014-02-10 20:20:06',0),(3169,112,'2014-02-10','2014-02-10 20:20:09',0),(3170,112,'2014-02-10','2014-02-10 20:20:12',0),(3171,120,'2014-02-10','2014-02-10 20:20:19',0),(3172,112,'2014-02-10','2014-02-10 20:20:22',0),(3173,112,'2014-02-10','2014-02-10 20:20:25',0),(3174,112,'2014-02-10','2014-02-10 20:20:28',0),(3175,112,'2014-02-10','2014-02-10 20:20:31',0),(3176,112,'2014-02-10','2014-02-10 20:20:34',0),(3177,112,'2014-02-10','2014-02-10 20:20:37',0),(3178,112,'2014-02-10','2014-02-10 20:20:40',0),(3179,112,'2014-02-10','2014-02-10 20:20:43',0),(3180,112,'2014-02-10','2014-02-10 20:20:46',0),(3181,112,'2014-02-10','2014-02-10 20:20:49',0),(3182,112,'2014-02-10','2014-02-10 20:20:53',0),(3183,112,'2014-02-10','2014-02-10 20:20:59',0),(3184,1,'2014-02-11','2014-02-11 05:01:16',0),(3185,133,'2014-02-11','2014-02-11 09:28:16',0),(3186,133,'2014-02-11','2014-02-11 09:28:17',0),(3187,133,'2014-02-11','2014-02-11 09:28:17',0),(3188,1,'2014-02-11','2014-02-11 12:06:06',0),(3189,133,'2014-02-11','2014-02-11 12:25:33',0),(3190,120,'2014-02-11','2014-02-11 12:26:36',0),(3191,120,'2014-02-11','2014-02-11 12:26:37',0),(3192,120,'2014-02-11','2014-02-11 12:35:07',0),(3193,120,'2014-02-11','2014-02-11 12:35:07',0),(3194,120,'2014-02-11','2014-02-11 12:35:07',0),(3195,1,'2014-02-11','2014-02-11 22:09:39',0),(3196,110,'2014-02-11','2014-02-11 23:07:06',0),(3197,110,'2014-02-11','2014-02-11 23:07:19',0),(3198,112,'2014-02-11','2014-02-11 23:07:20',1),(3199,106,'2014-02-11','2014-02-11 23:07:21',1),(3200,112,'2014-02-11','2014-02-11 23:07:25',1),(3201,1,'2014-02-11','2014-02-11 23:07:38',1),(3202,1,'2014-02-11','2014-02-11 23:07:40',1),(3203,1,'2014-02-11','2014-02-11 23:08:14',1),(3204,112,'2014-02-12','2014-02-12 00:41:34',0),(3205,133,'2014-02-12','2014-02-12 07:38:15',0),(3206,112,'2014-02-12','2014-02-12 10:54:45',0),(3207,1,'2014-02-12','2014-02-12 11:40:59',0),(3208,120,'2014-02-12','2014-02-12 11:41:00',0),(3209,112,'2014-02-12','2014-02-12 11:41:00',0),(3210,112,'2014-02-12','2014-02-12 11:41:00',0),(3211,112,'2014-02-12','2014-02-12 11:41:00',0),(3212,112,'2014-02-12','2014-02-12 11:41:01',0),(3213,112,'2014-02-12','2014-02-12 11:41:02',0),(3214,112,'2014-02-12','2014-02-12 11:41:02',0),(3215,112,'2014-02-12','2014-02-12 11:41:03',0),(3216,112,'2014-02-12','2014-02-12 11:41:03',0),(3217,1,'2014-02-12','2014-02-12 18:55:45',0),(3218,120,'2014-02-13','2014-02-13 00:57:30',0),(3219,112,'2014-02-13','2014-02-13 01:46:02',0),(3220,1,'2014-02-13','2014-02-13 01:48:24',0),(3221,1,'2014-02-13','2014-02-13 09:04:17',0),(3222,1,'2014-02-13','2014-02-13 16:07:59',0),(3223,1,'2014-02-13','2014-02-13 22:57:23',0),(3224,133,'2014-02-13','2014-02-13 23:54:39',0),(3225,112,'2014-02-14','2014-02-14 01:56:55',0),(3226,1,'2014-02-14','2014-02-14 06:00:03',0),(3227,112,'2014-02-14','2014-02-14 08:30:26',0),(3228,1,'2014-02-14','2014-02-14 13:11:59',0),(3229,1,'2014-02-14','2014-02-14 20:56:51',0),(3230,112,'2014-02-15','2014-02-15 03:31:26',0),(3231,1,'2014-02-15','2014-02-15 08:06:55',0),(3232,112,'2014-02-15','2014-02-15 10:05:15',0),(3233,112,'2014-02-15','2014-02-15 10:51:47',0),(3234,1,'2014-02-15','2014-02-15 15:23:33',0),(3235,112,'2014-02-15','2014-02-15 19:35:25',0),(3236,1,'2014-02-16','2014-02-16 01:01:51',0),(3237,112,'2014-02-16','2014-02-16 04:33:02',0),(3238,1,'2014-02-16','2014-02-16 07:36:49',0),(3239,112,'2014-02-16','2014-02-16 09:44:08',0),(3240,112,'2014-02-16','2014-02-16 10:16:18',0),(3241,112,'2014-02-16','2014-02-16 10:24:55',0),(3242,112,'2014-02-16','2014-02-16 10:30:51',0),(3243,133,'2014-02-16','2014-02-16 10:32:33',0),(3244,133,'2014-02-16','2014-02-16 10:32:33',0),(3245,120,'2014-02-16','2014-02-16 10:32:59',0),(3246,120,'2014-02-16','2014-02-16 10:33:00',0),(3247,133,'2014-02-16','2014-02-16 10:51:50',0),(3248,1,'2014-02-17','2014-02-17 00:40:03',0),(3249,120,'2014-02-17','2014-02-17 03:23:37',0),(3250,133,'2014-02-17','2014-02-17 03:26:31',0),(3251,120,'2014-02-17','2014-02-17 03:29:24',0),(3252,112,'2014-02-17','2014-02-17 03:32:16',0),(3253,112,'2014-02-17','2014-02-17 03:35:08',0),(3254,112,'2014-02-17','2014-02-17 03:40:55',0),(3255,112,'2014-02-17','2014-02-17 04:20:57',0),(3256,112,'2014-02-17','2014-02-17 06:38:16',0),(3257,1,'2014-02-17','2014-02-17 07:02:54',0),(3258,112,'2014-02-17','2014-02-17 11:24:15',0),(3259,1,'2014-02-17','2014-02-17 16:09:11',0),(3260,112,'2014-02-17','2014-02-17 17:47:43',0),(3261,133,'2014-02-17','2014-02-17 20:59:01',0),(3262,133,'2014-02-17','2014-02-17 20:59:02',0),(3263,120,'2014-02-17','2014-02-17 21:22:07',0),(3264,120,'2014-02-17','2014-02-17 21:22:08',0),(3265,133,'2014-02-17','2014-02-17 21:22:15',0),(3266,120,'2014-02-17','2014-02-17 21:23:29',0),(3267,1,'2014-02-17','2014-02-17 22:55:57',0),(3268,1,'2014-02-18','2014-02-18 05:11:45',0),(3269,112,'2014-02-18','2014-02-18 07:51:08',0),(3270,1,'2014-02-18','2014-02-18 11:22:35',0),(3271,112,'2014-02-18','2014-02-18 12:22:32',0),(3272,112,'2014-02-18','2014-02-18 16:02:58',0),(3273,112,'2014-02-18','2014-02-18 18:17:39',0),(3274,112,'2014-02-19','2014-02-19 00:05:22',0),(3275,1,'2014-02-19','2014-02-19 03:30:47',0),(3276,120,'2014-02-19','2014-02-19 03:55:04',0),(3277,112,'2014-02-19','2014-02-19 05:14:10',0),(3278,112,'2014-02-19','2014-02-19 05:14:14',0),(3279,120,'2014-02-19','2014-02-19 06:58:13',0),(3280,1,'2014-02-19','2014-02-19 11:01:26',0),(3281,120,'2014-02-19','2014-02-19 11:03:52',0),(3282,112,'2014-02-19','2014-02-19 16:35:09',0),(3283,120,'2014-02-19','2014-02-19 18:00:06',0),(3284,133,'2014-02-19','2014-02-19 18:02:59',0),(3285,1,'2014-02-19','2014-02-19 20:43:15',0),(3286,120,'2014-02-19','2014-02-19 23:01:42',0),(3287,112,'2014-02-19','2014-02-19 23:01:48',0),(3288,112,'2014-02-19','2014-02-19 23:01:53',0),(3289,112,'2014-02-19','2014-02-19 23:01:59',0),(3290,112,'2014-02-19','2014-02-19 23:02:05',0),(3291,112,'2014-02-19','2014-02-19 23:02:10',0),(3292,112,'2014-02-19','2014-02-19 23:02:15',0),(3293,112,'2014-02-19','2014-02-19 23:02:21',0),(3294,112,'2014-02-19','2014-02-19 23:02:26',0),(3295,1,'2014-02-20','2014-02-20 02:52:22',0),(3296,112,'2014-02-20','2014-02-20 03:27:21',0),(3297,112,'2014-02-20','2014-02-20 06:26:44',0),(3298,112,'2014-02-20','2014-02-20 08:30:08',0),(3299,1,'2014-02-20','2014-02-20 09:17:49',0),(3300,120,'2014-02-20','2014-02-20 11:02:59',0),(3301,120,'2014-02-20','2014-02-20 13:04:37',0),(3302,112,'2014-02-20','2014-02-20 15:31:48',0),(3303,120,'2014-02-20','2014-02-20 17:36:50',0),(3304,1,'2014-02-20','2014-02-20 17:52:36',0),(3305,120,'2014-02-20','2014-02-20 17:52:43',0),(3306,120,'2014-02-20','2014-02-20 17:52:44',0),(3307,112,'2014-02-20','2014-02-20 19:10:18',0),(3308,133,'2014-02-20','2014-02-20 20:14:50',0),(3309,1,'2014-02-21','2014-02-21 00:14:21',0),(3310,1,'2014-02-21','2014-02-21 08:32:26',0),(3311,133,'2014-02-21','2014-02-21 09:31:33',0),(3312,133,'2014-02-21','2014-02-21 09:31:34',0),(3313,133,'2014-02-21','2014-02-21 09:31:34',0),(3314,120,'2014-02-21','2014-02-21 09:31:45',0),(3315,120,'2014-02-21','2014-02-21 09:31:46',0),(3316,120,'2014-02-21','2014-02-21 09:31:46',0),(3317,112,'2014-02-21','2014-02-21 10:55:20',0),(3318,112,'2014-02-21','2014-02-21 12:56:30',0),(3319,1,'2014-02-21','2014-02-21 16:24:37',0),(3320,120,'2014-02-21','2014-02-21 16:40:29',0),(3321,120,'2014-02-21','2014-02-21 19:20:48',0),(3322,1,'2014-02-21','2014-02-21 23:22:06',0),(3323,112,'2014-02-22','2014-02-22 04:51:51',0),(3324,112,'2014-02-22','2014-02-22 06:08:16',0),(3325,112,'2014-02-22','2014-02-22 06:30:58',0),(3326,112,'2014-02-22','2014-02-22 08:12:32',0),(3327,112,'2014-02-22','2014-02-22 09:37:35',0),(3328,112,'2014-02-22','2014-02-22 10:33:02',0),(3329,1,'2014-02-22','2014-02-22 11:13:25',0),(3330,112,'2014-02-22','2014-02-22 12:15:17',0),(3331,112,'2014-02-22','2014-02-22 17:13:33',0),(3332,133,'2014-02-22','2014-02-22 18:29:29',0),(3333,1,'2014-02-22','2014-02-22 21:19:21',0),(3334,112,'2014-02-22','2014-02-22 22:30:43',0),(3335,120,'2014-02-22','2014-02-22 23:54:15',0),(3336,112,'2014-02-22','2014-02-22 23:54:17',0),(3337,112,'2014-02-22','2014-02-22 23:54:18',0),(3338,112,'2014-02-22','2014-02-22 23:54:20',0),(3339,112,'2014-02-22','2014-02-22 23:54:21',0),(3340,112,'2014-02-22','2014-02-22 23:54:23',0),(3341,112,'2014-02-22','2014-02-22 23:54:25',0),(3342,112,'2014-02-22','2014-02-22 23:54:26',0),(3343,120,'2014-02-22','2014-02-22 23:56:51',0),(3344,112,'2014-02-22','2014-02-22 23:56:54',0),(3345,112,'2014-02-22','2014-02-22 23:56:59',0),(3346,112,'2014-02-22','2014-02-22 23:57:09',0),(3347,112,'2014-02-22','2014-02-22 23:57:14',0),(3348,112,'2014-02-22','2014-02-22 23:57:19',0),(3349,112,'2014-02-22','2014-02-22 23:57:24',0),(3350,112,'2014-02-22','2014-02-22 23:57:29',0),(3351,112,'2014-02-22','2014-02-22 23:57:34',0),(3352,133,'2014-02-23','2014-02-23 02:58:38',0),(3353,1,'2014-02-23','2014-02-23 08:35:12',0),(3354,112,'2014-02-23','2014-02-23 09:05:24',0),(3355,133,'2014-02-23','2014-02-23 09:14:38',0),(3356,112,'2014-02-23','2014-02-23 09:24:34',0),(3357,120,'2014-02-23','2014-02-23 11:38:29',0),(3358,112,'2014-02-23','2014-02-23 14:06:19',0),(3359,133,'2014-02-23','2014-02-23 17:27:04',0),(3360,1,'2014-02-23','2014-02-23 20:20:13',0),(3361,112,'2014-02-24','2014-02-24 01:03:19',0),(3362,133,'2014-02-24','2014-02-24 01:45:44',0),(3363,133,'2014-02-24','2014-02-24 01:45:46',0),(3364,133,'2014-02-24','2014-02-24 01:45:46',0),(3365,120,'2014-02-24','2014-02-24 01:45:51',0),(3366,120,'2014-02-24','2014-02-24 01:45:52',0),(3367,120,'2014-02-24','2014-02-24 01:47:35',0),(3368,1,'2014-02-24','2014-02-24 04:42:33',0),(3369,112,'2014-02-24','2014-02-24 08:15:32',0),(3370,120,'2014-02-24','2014-02-24 11:04:37',0),(3371,1,'2014-02-24','2014-02-24 11:10:44',0),(3372,133,'2014-02-24','2014-02-24 11:27:23',0),(3373,1,'2014-02-24','2014-02-24 19:01:39',0),(3374,112,'2014-02-25','2014-02-25 00:09:14',0),(3375,1,'2014-02-25','2014-02-25 01:54:33',0),(3376,120,'2014-02-25','2014-02-25 07:00:10',0),(3377,1,'2014-02-25','2014-02-25 10:25:54',0),(3378,1,'2014-02-25','2014-02-25 17:30:37',0),(3379,120,'2014-02-25','2014-02-25 18:08:05',0),(3380,112,'2014-02-25','2014-02-25 20:59:49',0),(3381,133,'2014-02-26','2014-02-26 03:35:31',0),(3382,112,'2014-02-26','2014-02-26 03:40:01',0),(3383,1,'2014-02-26','2014-02-26 03:42:30',0),(3384,120,'2014-02-26','2014-02-26 03:43:36',0),(3385,112,'2014-02-26','2014-02-26 03:52:16',0),(3386,112,'2014-02-26','2014-02-26 03:52:55',0),(3387,112,'2014-02-26','2014-02-26 03:53:42',0),(3388,112,'2014-02-26','2014-02-26 03:55:20',0),(3389,112,'2014-02-26','2014-02-26 03:56:43',0),(3390,112,'2014-02-26','2014-02-26 04:00:45',0),(3391,112,'2014-02-26','2014-02-26 04:02:21',0),(3392,112,'2014-02-26','2014-02-26 04:02:21',0),(3393,112,'2014-02-26','2014-02-26 04:02:34',0),(3394,120,'2014-02-26','2014-02-26 04:04:00',0),(3395,112,'2014-02-26','2014-02-26 04:05:45',0),(3396,112,'2014-02-26','2014-02-26 04:10:39',0),(3397,112,'2014-02-26','2014-02-26 04:10:39',0),(3398,112,'2014-02-26','2014-02-26 04:10:40',0),(3399,112,'2014-02-26','2014-02-26 04:10:40',0),(3400,112,'2014-02-26','2014-02-26 04:11:05',0),(3401,112,'2014-02-26','2014-02-26 04:20:54',0),(3402,112,'2014-02-26','2014-02-26 08:13:45',0),(3403,1,'2014-02-26','2014-02-26 10:37:48',0),(3404,133,'2014-02-26','2014-02-26 16:02:18',0),(3405,133,'2014-02-26','2014-02-26 16:02:18',0),(3406,120,'2014-02-26','2014-02-26 17:54:02',0),(3407,1,'2014-02-26','2014-02-26 18:33:32',0),(3408,1,'2014-02-27','2014-02-27 02:58:04',0),(3409,112,'2014-02-27','2014-02-27 06:43:28',0),(3410,133,'2014-02-27','2014-02-27 07:34:46',0),(3411,1,'2014-02-27','2014-02-27 10:21:04',0),(3412,1,'2014-02-27','2014-02-27 19:45:58',0),(3413,112,'2014-02-27','2014-02-27 21:29:05',0),(3414,1,'2014-02-28','2014-02-28 07:03:34',0),(3415,112,'2014-02-28','2014-02-28 07:31:19',0),(3416,133,'2014-02-28','2014-02-28 07:33:48',0),(3417,112,'2014-02-28','2014-02-28 07:33:48',0),(3418,120,'2014-02-28','2014-02-28 07:55:55',0),(3419,120,'2014-02-28','2014-02-28 07:55:55',0),(3420,112,'2014-02-28','2014-02-28 08:27:37',0),(3421,112,'2014-02-28','2014-02-28 11:44:01',0),(3422,112,'2014-02-28','2014-02-28 11:44:01',0),(3423,133,'2014-02-28','2014-02-28 11:44:24',0),(3424,120,'2014-02-28','2014-02-28 11:44:57',0),(3425,120,'2014-02-28','2014-02-28 11:44:58',0),(3426,120,'2014-02-28','2014-02-28 21:34:59',0),(3427,120,'2014-02-28','2014-02-28 21:44:40',0),(3428,1,'2014-03-01','2014-03-01 00:25:18',0),(3429,1,'2014-03-01','2014-03-01 07:39:09',0),(3430,112,'2014-03-01','2014-03-01 12:16:14',0),(3431,120,'2014-03-01','2014-03-01 12:17:01',0),(3432,112,'2014-03-01','2014-03-01 12:17:39',0),(3433,112,'2014-03-01','2014-03-01 12:18:17',0),(3434,133,'2014-03-01','2014-03-01 12:18:53',0),(3435,112,'2014-03-01','2014-03-01 12:19:29',0),(3436,112,'2014-03-01','2014-03-01 12:20:19',0),(3437,112,'2014-03-01','2014-03-01 12:21:02',0),(3438,112,'2014-03-01','2014-03-01 12:21:38',0),(3439,112,'2014-03-01','2014-03-01 12:22:14',0),(3440,112,'2014-03-01','2014-03-01 16:58:49',0),(3441,1,'2014-03-01','2014-03-01 17:05:15',0),(3442,112,'2014-03-01','2014-03-01 21:36:36',0),(3443,112,'2014-03-01','2014-03-01 21:45:26',0),(3444,1,'2014-03-01','2014-03-01 23:43:30',0),(3445,133,'2014-03-01','2014-03-01 23:43:31',0),(3446,120,'2014-03-01','2014-03-01 23:43:31',0),(3447,112,'2014-03-01','2014-03-01 23:43:32',0),(3448,112,'2014-03-01','2014-03-01 23:43:32',0),(3449,112,'2014-03-01','2014-03-01 23:43:33',0),(3450,112,'2014-03-01','2014-03-01 23:43:33',0),(3451,112,'2014-03-01','2014-03-01 23:43:33',0),(3452,112,'2014-03-01','2014-03-01 23:43:33',0),(3453,112,'2014-03-01','2014-03-01 23:43:34',0),(3454,112,'2014-03-01','2014-03-01 23:43:34',0),(3455,112,'2014-03-02','2014-03-02 05:18:08',0),(3456,1,'2014-03-02','2014-03-02 09:30:51',0),(3457,1,'2014-03-02','2014-03-02 18:40:44',0),(3458,112,'2014-03-02','2014-03-02 19:04:10',0),(3459,120,'2014-03-02','2014-03-02 20:04:37',0),(3460,112,'2014-03-02','2014-03-02 20:04:41',0),(3461,112,'2014-03-02','2014-03-02 20:04:46',0),(3462,133,'2014-03-02','2014-03-02 20:04:51',0),(3463,112,'2014-03-02','2014-03-02 20:04:56',0),(3464,112,'2014-03-02','2014-03-02 20:05:01',0),(3465,112,'2014-03-02','2014-03-02 20:05:06',0),(3466,112,'2014-03-02','2014-03-02 20:05:11',0),(3467,112,'2014-03-02','2014-03-02 20:05:16',0),(3468,112,'2014-03-02','2014-03-02 20:05:21',0),(3469,112,'2014-03-02','2014-03-02 20:09:00',0),(3470,112,'2014-03-03','2014-03-03 00:22:15',0),(3471,1,'2014-03-03','2014-03-03 01:53:58',0),(3472,133,'2014-03-03','2014-03-03 04:58:52',0),(3473,120,'2014-03-03','2014-03-03 05:31:06',0),(3474,112,'2014-03-03','2014-03-03 17:43:03',0),(3475,1,'2014-03-03','2014-03-03 20:20:51',0),(3476,112,'2014-03-03','2014-03-03 21:49:41',0),(3477,133,'2014-03-03','2014-03-03 22:02:44',0),(3478,133,'2014-03-03','2014-03-03 22:02:44',0),(3479,120,'2014-03-03','2014-03-03 22:02:49',0),(3480,120,'2014-03-03','2014-03-03 22:02:50',0),(3481,112,'2014-03-03','2014-03-03 22:35:40',0),(3482,1,'2014-03-04','2014-03-04 06:53:25',0),(3483,112,'2014-03-04','2014-03-04 07:23:54',0),(3484,120,'2014-03-04','2014-03-04 08:22:30',0),(3485,112,'2014-03-04','2014-03-04 11:37:39',0),(3486,1,'2014-03-04','2014-03-04 15:32:45',0),(3487,133,'2014-03-04','2014-03-04 15:32:46',0),(3488,120,'2014-03-04','2014-03-04 15:32:46',0),(3489,112,'2014-03-04','2014-03-04 15:32:46',0),(3490,112,'2014-03-04','2014-03-04 15:32:46',0),(3491,112,'2014-03-04','2014-03-04 15:32:46',0),(3492,112,'2014-03-04','2014-03-04 15:32:46',0),(3493,112,'2014-03-04','2014-03-04 15:32:47',0),(3494,112,'2014-03-04','2014-03-04 15:32:47',0),(3495,112,'2014-03-04','2014-03-04 15:32:47',0),(3496,112,'2014-03-04','2014-03-04 15:32:47',0),(3497,120,'2014-03-04','2014-03-04 16:01:52',0),(3498,1,'2014-03-04','2014-03-04 23:06:56',0),(3499,112,'2014-03-04','2014-03-04 23:08:37',0),(3500,112,'2014-03-04','2014-03-04 23:08:37',0),(3501,112,'2014-03-04','2014-03-04 23:08:51',0),(3502,112,'2014-03-04','2014-03-04 23:08:51',0),(3503,120,'2014-03-04','2014-03-04 23:09:20',0),(3504,120,'2014-03-04','2014-03-04 23:09:20',0),(3505,112,'2014-03-04','2014-03-04 23:09:31',0),(3506,112,'2014-03-04','2014-03-04 23:09:32',0),(3507,120,'2014-03-04','2014-03-04 23:09:37',0),(3508,110,'2014-03-04','2014-03-04 23:09:46',0),(3509,110,'2014-03-04','2014-03-04 23:10:49',0),(3510,112,'2014-03-04','2014-03-04 23:10:49',1),(3511,106,'2014-03-04','2014-03-04 23:10:50',1),(3512,112,'2014-03-04','2014-03-04 23:10:53',1),(3513,112,'2014-03-04','2014-03-04 23:11:39',1),(3514,2,'2014-03-04','2014-03-04 23:13:07',1),(3515,7,'2014-03-04','2014-03-04 23:13:55',1),(3516,7,'2014-03-04','2014-03-04 23:14:04',1),(3517,1,'2014-03-04','2014-03-04 23:15:06',1),(3518,1,'2014-03-04','2014-03-04 23:33:04',1),(3519,110,'2014-03-04','2014-03-04 23:33:13',1),(3520,133,'2014-03-04','2014-03-04 23:33:31',0),(3521,133,'2014-03-04','2014-03-04 23:33:31',0),(3522,110,'2014-03-04','2014-03-04 23:33:53',0),(3523,110,'2014-03-04','2014-03-04 23:34:01',0),(3524,2,'2014-03-04','2014-03-04 23:34:02',1),(3525,51,'2014-03-04','2014-03-04 23:34:11',1),(3526,68,'2014-03-04','2014-03-04 23:34:51',1),(3527,68,'2014-03-04','2014-03-04 23:34:55',1),(3528,68,'2014-03-04','2014-03-04 23:34:56',1),(3529,1,'2014-03-04','2014-03-04 23:35:02',1),(3530,110,'2014-03-04','2014-03-04 23:35:05',1),(3531,1,'2014-03-04','2014-03-04 23:35:05',0),(3532,112,'2014-03-05','2014-03-05 12:22:14',0),(3533,1,'2014-03-05','2014-03-05 15:13:29',0),(3534,120,'2014-03-05','2014-03-05 23:51:21',0),(3535,1,'2014-03-06','2014-03-06 05:04:13',0),(3536,112,'2014-03-06','2014-03-06 10:07:46',0),(3537,112,'2014-03-06','2014-03-06 10:07:48',0),(3538,120,'2014-03-06','2014-03-06 12:03:13',0),(3539,112,'2014-03-06','2014-03-06 12:23:38',0),(3540,1,'2014-03-06','2014-03-06 15:48:58',0),(3541,120,'2014-03-06','2014-03-06 16:46:27',0),(3542,133,'2014-03-06','2014-03-06 18:18:25',0),(3543,112,'2014-03-06','2014-03-06 18:26:46',0),(3544,120,'2014-03-06','2014-03-06 18:32:33',0),(3545,112,'2014-03-06','2014-03-06 18:35:26',0),(3546,112,'2014-03-06','2014-03-06 18:38:19',0),(3547,120,'2014-03-06','2014-03-06 18:44:08',0),(3548,112,'2014-03-06','2014-03-06 19:01:29',0),(3549,1,'2014-03-06','2014-03-06 22:44:58',0),(3550,112,'2014-03-07','2014-03-07 02:39:36',0),(3551,1,'2014-03-07','2014-03-07 08:41:56',0),(3552,112,'2014-03-07','2014-03-07 08:42:50',0),(3553,133,'2014-03-07','2014-03-07 11:51:31',0),(3554,133,'2014-03-07','2014-03-07 11:51:32',0),(3555,112,'2014-03-07','2014-03-07 13:24:59',0),(3556,1,'2014-03-07','2014-03-07 14:45:12',0),(3557,1,'2014-03-07','2014-03-07 21:14:48',0),(3558,133,'2014-03-07','2014-03-07 22:50:59',0),(3559,112,'2014-03-08','2014-03-08 00:24:33',0),(3560,1,'2014-03-08','2014-03-08 03:28:32',0),(3561,112,'2014-03-08','2014-03-08 04:10:13',0),(3562,112,'2014-03-08','2014-03-08 07:44:35',0),(3563,112,'2014-03-08','2014-03-08 08:06:10',0),(3564,120,'2014-03-08','2014-03-08 08:33:17',0),(3565,133,'2014-03-08','2014-03-08 08:48:22',0),(3566,1,'2014-03-08','2014-03-08 10:04:55',0),(3567,112,'2014-03-08','2014-03-08 10:34:54',0),(3568,112,'2014-03-08','2014-03-08 14:23:42',0),(3569,112,'2014-03-08','2014-03-08 18:50:18',0),(3570,1,'2014-03-08','2014-03-08 18:56:49',0),(3571,112,'2014-03-09','2014-03-09 01:47:44',0),(3572,133,'2014-03-09','2014-03-09 04:52:03',0),(3573,1,'2014-03-09','2014-03-09 07:18:07',0),(3574,1,'2014-03-09','2014-03-09 14:21:05',0),(3575,112,'2014-03-09','2014-03-09 16:30:48',0),(3576,1,'2014-03-09','2014-03-09 20:31:37',0),(3577,112,'2014-03-09','2014-03-09 23:51:46',0),(3578,1,'2014-03-10','2014-03-10 02:41:34',0),(3579,1,'2014-03-10','2014-03-10 09:12:28',0),(3580,133,'2014-03-10','2014-03-10 09:13:14',0),(3581,133,'2014-03-10','2014-03-10 09:13:15',0),(3582,133,'2014-03-10','2014-03-10 09:47:56',0),(3583,112,'2014-03-10','2014-03-10 11:33:20',0),(3584,112,'2014-03-10','2014-03-10 11:33:21',0),(3585,112,'2014-03-10','2014-03-10 11:33:23',0),(3586,112,'2014-03-10','2014-03-10 11:33:24',0),(3587,112,'2014-03-10','2014-03-10 11:33:27',0),(3588,112,'2014-03-10','2014-03-10 11:33:29',0),(3589,112,'2014-03-10','2014-03-10 11:33:30',0),(3590,112,'2014-03-10','2014-03-10 11:33:31',0),(3591,1,'2014-03-10','2014-03-10 16:41:56',0),(3592,133,'2014-03-10','2014-03-10 16:52:26',0),(3593,133,'2014-03-10','2014-03-10 20:29:10',0),(3594,1,'2014-03-10','2014-03-10 22:48:31',0),(3595,133,'2014-03-10','2014-03-10 22:49:27',0),(3596,112,'2014-03-11','2014-03-11 01:28:25',0),(3597,120,'2014-03-11','2014-03-11 03:47:31',0),(3598,1,'2014-03-11','2014-03-11 07:00:29',0),(3599,112,'2014-03-11','2014-03-11 07:35:48',0),(3600,120,'2014-03-11','2014-03-11 08:43:42',0),(3601,133,'2014-03-11','2014-03-11 10:22:39',0),(3602,133,'2014-03-11','2014-03-11 10:22:40',0),(3603,133,'2014-03-11','2014-03-11 12:25:42',0),(3604,1,'2014-03-11','2014-03-11 13:21:33',0),(3605,133,'2014-03-11','2014-03-11 13:26:02',0),(3606,112,'2014-03-11','2014-03-11 14:44:40',0),(3607,133,'2014-03-11','2014-03-11 17:19:42',0),(3608,133,'2014-03-11','2014-03-11 17:19:42',0),(3609,133,'2014-03-11','2014-03-11 17:30:58',0),(3610,133,'2014-03-11','2014-03-11 17:30:58',0),(3611,1,'2014-03-11','2014-03-11 23:10:05',0),(3612,110,'2014-03-12','2014-03-12 01:36:15',0),(3613,110,'2014-03-12','2014-03-12 01:36:30',0),(3614,110,'2014-03-12','2014-03-12 01:36:52',0),(3615,112,'2014-03-12','2014-03-12 01:36:52',1),(3616,106,'2014-03-12','2014-03-12 01:36:55',1),(3617,112,'2014-03-12','2014-03-12 01:36:57',1),(3618,1,'2014-03-12','2014-03-12 01:37:10',1),(3619,1,'2014-03-12','2014-03-12 01:37:18',1),(3620,1,'2014-03-12','2014-03-12 01:38:02',1),(3621,110,'2014-03-12','2014-03-12 02:02:56',1),(3622,1,'2014-03-12','2014-03-12 02:02:56',0),(3623,112,'2014-03-12','2014-03-12 02:24:35',0),(3624,112,'2014-03-12','2014-03-12 03:24:37',0),(3625,1,'2014-03-12','2014-03-12 09:19:24',0),(3626,133,'2014-03-12','2014-03-12 10:29:25',0),(3627,1,'2014-03-12','2014-03-12 16:38:50',0),(3628,133,'2014-03-12','2014-03-12 21:04:43',0),(3629,133,'2014-03-12','2014-03-12 21:04:44',0),(3630,1,'2014-03-13','2014-03-13 00:14:41',0),(3631,112,'2014-03-13','2014-03-13 07:10:11',0),(3632,112,'2014-03-13','2014-03-13 10:23:34',0),(3633,120,'2014-03-13','2014-03-13 13:28:25',0),(3634,112,'2014-03-13','2014-03-13 14:00:57',0),(3635,1,'2014-03-13','2014-03-13 15:32:57',0),(3636,120,'2014-03-13','2014-03-13 21:48:25',0),(3637,1,'2014-03-13','2014-03-13 22:57:21',0),(3638,112,'2014-03-14','2014-03-14 01:49:57',0),(3639,1,'2014-03-14','2014-03-14 13:13:50',0),(3640,112,'2014-03-14','2014-03-14 16:55:02',0),(3641,112,'2014-03-14','2014-03-14 16:55:03',0),(3642,133,'2014-03-14','2014-03-14 16:55:10',0),(3643,133,'2014-03-14','2014-03-14 16:55:11',0),(3644,133,'2014-03-14','2014-03-14 17:51:03',0),(3645,133,'2014-03-14','2014-03-14 17:51:03',0),(3646,112,'2014-03-14','2014-03-14 17:54:50',0),(3647,1,'2014-03-14','2014-03-14 19:29:03',0),(3648,112,'2014-03-14','2014-03-14 22:51:14',0),(3649,112,'2014-03-15','2014-03-15 00:50:23',0),(3650,112,'2014-03-15','2014-03-15 03:38:01',0),(3651,1,'2014-03-15','2014-03-15 04:37:17',0),(3652,112,'2014-03-15','2014-03-15 04:37:53',0),(3653,112,'2014-03-15','2014-03-15 04:37:53',0),(3654,112,'2014-03-15','2014-03-15 04:39:02',0),(3655,112,'2014-03-15','2014-03-15 04:39:02',0),(3656,112,'2014-03-15','2014-03-15 04:39:34',0),(3657,112,'2014-03-15','2014-03-15 04:39:34',0),(3658,112,'2014-03-15','2014-03-15 04:40:13',0),(3659,112,'2014-03-15','2014-03-15 04:40:13',0),(3660,112,'2014-03-15','2014-03-15 04:40:24',0),(3661,112,'2014-03-15','2014-03-15 04:40:25',0),(3662,112,'2014-03-15','2014-03-15 04:40:57',0),(3663,112,'2014-03-15','2014-03-15 04:40:58',0),(3664,112,'2014-03-15','2014-03-15 06:40:28',0),(3665,133,'2014-03-15','2014-03-15 07:49:47',0),(3666,133,'2014-03-15','2014-03-15 07:49:48',0),(3667,1,'2014-03-15','2014-03-15 18:40:03',0),(3668,120,'2014-03-15','2014-03-15 23:52:20',0),(3669,112,'2014-03-15','2014-03-15 23:52:21',0),(3670,112,'2014-03-15','2014-03-15 23:55:53',0),(3671,112,'2014-03-16','2014-03-16 00:12:35',0),(3672,112,'2014-03-16','2014-03-16 00:12:35',0),(3673,112,'2014-03-16','2014-03-16 00:42:07',0),(3674,112,'2014-03-16','2014-03-16 01:05:39',0),(3675,112,'2014-03-16','2014-03-16 01:21:11',0),(3676,1,'2014-03-16','2014-03-16 03:45:08',0),(3677,133,'2014-03-16','2014-03-16 08:08:50',0),(3678,1,'2014-03-16','2014-03-16 15:20:58',0),(3679,112,'2014-03-16','2014-03-16 16:08:46',0),(3680,112,'2014-03-16','2014-03-16 17:06:10',0),(3681,133,'2014-03-16','2014-03-16 21:57:34',0),(3682,112,'2014-03-16','2014-03-16 22:10:20',0),(3683,1,'2014-03-16','2014-03-16 23:28:50',0),(3684,112,'2014-03-17','2014-03-17 08:52:14',0),(3685,1,'2014-03-17','2014-03-17 08:57:31',0),(3686,1,'2014-03-17','2014-03-17 17:56:43',0),(3687,112,'2014-03-17','2014-03-17 17:56:44',0),(3688,112,'2014-03-17','2014-03-17 17:56:48',0),(3689,133,'2014-03-17','2014-03-17 17:56:53',0),(3690,112,'2014-03-17','2014-03-17 17:56:58',0),(3691,112,'2014-03-17','2014-03-17 17:57:03',0),(3692,112,'2014-03-17','2014-03-17 19:06:25',0),(3693,112,'2014-03-17','2014-03-17 19:35:54',0),(3694,1,'2014-03-18','2014-03-18 00:11:47',0),(3695,1,'2014-03-18','2014-03-18 07:37:20',0),(3696,112,'2014-03-18','2014-03-18 14:12:27',0),(3697,1,'2014-03-18','2014-03-18 14:16:50',0),(3698,120,'2014-03-18','2014-03-18 19:57:35',0),(3699,133,'2014-03-18','2014-03-18 20:01:29',0),(3700,1,'2014-03-18','2014-03-18 20:33:32',0),(3701,133,'2014-03-18','2014-03-18 20:40:09',0),(3702,133,'2014-03-18','2014-03-18 20:54:22',0),(3703,133,'2014-03-18','2014-03-18 23:39:40',0),(3704,112,'2014-03-19','2014-03-19 00:29:37',0),(3705,112,'2014-03-19','2014-03-19 00:30:06',0),(3706,1,'2014-03-19','2014-03-19 02:45:42',0),(3707,112,'2014-03-19','2014-03-19 02:51:50',0),(3708,1,'2014-03-19','2014-03-19 08:49:53',0),(3709,112,'2014-03-19','2014-03-19 10:06:47',0),(3710,1,'2014-03-19','2014-03-19 16:14:07',0),(3711,133,'2014-03-19','2014-03-19 17:45:40',0),(3712,112,'2014-03-19','2014-03-19 17:45:42',0),(3713,112,'2014-03-19','2014-03-19 17:45:43',0),(3714,112,'2014-03-19','2014-03-19 17:45:44',0),(3715,112,'2014-03-19','2014-03-19 17:45:45',0),(3716,1,'2014-03-19','2014-03-19 22:59:53',0),(3717,133,'2014-03-20','2014-03-20 01:50:50',0),(3718,1,'2014-03-20','2014-03-20 05:03:03',0),(3719,133,'2014-03-20','2014-03-20 10:50:00',0),(3720,1,'2014-03-20','2014-03-20 11:07:04',0),(3721,112,'2014-03-20','2014-03-20 13:06:08',0),(3722,112,'2014-03-20','2014-03-20 13:30:09',0),(3723,112,'2014-03-20','2014-03-20 14:42:52',0),(3724,133,'2014-03-20','2014-03-20 16:22:38',0),(3725,112,'2014-03-20','2014-03-20 17:34:38',0),(3726,1,'2014-03-20','2014-03-20 18:17:17',0),(3727,112,'2014-03-20','2014-03-20 18:31:21',0),(3728,112,'2014-03-20','2014-03-20 18:50:58',0),(3729,112,'2014-03-20','2014-03-20 18:51:03',0),(3730,133,'2014-03-20','2014-03-20 18:51:08',0),(3731,133,'2014-03-20','2014-03-20 18:57:01',0),(3732,110,'2014-03-20','2014-03-20 18:57:16',0),(3733,110,'2014-03-20','2014-03-20 18:57:18',0),(3734,112,'2014-03-20','2014-03-20 18:57:19',1),(3735,112,'2014-03-20','2014-03-20 18:57:20',1),(3736,106,'2014-03-20','2014-03-20 18:57:20',1),(3737,133,'2014-03-20','2014-03-20 18:57:33',1),(3738,133,'2014-03-20','2014-03-20 19:13:36',1),(3739,133,'2014-03-20','2014-03-20 19:14:56',1),(3740,112,'2014-03-20','2014-03-20 19:17:05',0),(3741,112,'2014-03-20','2014-03-20 19:48:22',0),(3742,1,'2014-03-21','2014-03-21 01:17:13',0),(3743,1,'2014-03-21','2014-03-21 09:18:52',0),(3744,1,'2014-03-21','2014-03-21 17:24:45',0),(3745,1,'2014-03-22','2014-03-22 00:15:33',0),(3746,120,'2014-03-22','2014-03-22 00:49:20',0),(3747,133,'2014-03-22','2014-03-22 06:09:14',0),(3748,1,'2014-03-22','2014-03-22 07:01:44',0),(3749,1,'2014-03-22','2014-03-22 14:01:17',0),(3750,112,'2014-03-22','2014-03-22 14:02:28',0),(3751,112,'2014-03-22','2014-03-22 16:28:17',0),(3752,112,'2014-03-22','2014-03-22 16:56:15',0),(3753,133,'2014-03-22','2014-03-22 16:56:20',0),(3754,1,'2014-03-22','2014-03-22 20:52:52',0),(3755,112,'2014-03-23','2014-03-23 05:46:45',0),(3756,1,'2014-03-23','2014-03-23 09:00:22',0),(3757,1,'2014-03-23','2014-03-23 17:04:21',0),(3758,1,'2014-03-24','2014-03-24 00:44:55',0),(3759,133,'2014-03-24','2014-03-24 04:16:42',0),(3760,120,'2014-03-24','2014-03-24 04:19:25',0),(3761,1,'2014-03-24','2014-03-24 07:54:30',0),(3762,133,'2014-03-24','2014-03-24 07:54:57',0),(3763,133,'2014-03-24','2014-03-24 07:54:57',0),(3764,133,'2014-03-24','2014-03-24 08:31:42',0),(3765,133,'2014-03-24','2014-03-24 08:32:22',0),(3766,1,'2014-03-24','2014-03-24 14:57:05',0),(3767,1,'2014-03-24','2014-03-24 21:00:44',0),(3768,112,'2014-03-24','2014-03-24 21:34:29',0),(3769,1,'2014-03-25','2014-03-25 04:44:16',0),(3770,112,'2014-03-25','2014-03-25 05:31:14',0),(3771,133,'2014-03-25','2014-03-25 05:31:19',0),(3772,1,'2014-03-25','2014-03-25 11:36:53',0),(3773,112,'2014-03-25','2014-03-25 15:39:39',0),(3774,120,'2014-03-25','2014-03-25 16:37:18',0),(3775,112,'2014-03-25','2014-03-25 16:55:21',0),(3776,112,'2014-03-25','2014-03-25 18:13:09',0),(3777,112,'2014-03-25','2014-03-25 20:27:13',0),(3778,1,'2014-03-26','2014-03-26 04:44:33',0),(3779,1,'2014-03-26','2014-03-26 10:50:41',0),(3780,133,'2014-03-26','2014-03-26 10:51:00',0),(3781,133,'2014-03-26','2014-03-26 10:51:00',0),(3782,112,'2014-03-26','2014-03-26 15:50:35',0),(3783,120,'2014-03-26','2014-03-26 15:59:15',0),(3784,112,'2014-03-26','2014-03-26 16:02:08',0),(3785,120,'2014-03-26','2014-03-26 16:05:03',0),(3786,112,'2014-03-26','2014-03-26 16:07:55',0),(3787,120,'2014-03-26','2014-03-26 20:35:08',0),(3788,1,'2014-03-26','2014-03-26 22:43:52',0),(3789,1,'2014-03-27','2014-03-27 07:54:17',0),(3790,112,'2014-03-27','2014-03-27 07:54:28',0),(3791,112,'2014-03-27','2014-03-27 07:54:28',0),(3792,133,'2014-03-27','2014-03-27 07:54:28',0),(3793,112,'2014-03-27','2014-03-27 07:54:38',0),(3794,112,'2014-03-27','2014-03-27 07:54:38',0),(3795,112,'2014-03-27','2014-03-27 08:58:45',0),(3796,112,'2014-03-27','2014-03-27 11:48:11',0),(3797,112,'2014-03-27','2014-03-27 11:48:11',0),(3798,112,'2014-03-27','2014-03-27 12:09:53',0),(3799,112,'2014-03-27','2014-03-27 12:09:54',0),(3800,120,'2014-03-27','2014-03-27 12:30:09',0),(3801,112,'2014-03-27','2014-03-27 12:30:14',0),(3802,112,'2014-03-27','2014-03-27 12:30:14',0),(3803,1,'2014-03-27','2014-03-27 16:05:18',0),(3804,112,'2014-03-27','2014-03-27 16:08:13',0),(3805,120,'2014-03-27','2014-03-27 16:11:05',0),(3806,112,'2014-03-27','2014-03-27 16:13:58',0),(3807,112,'2014-03-27','2014-03-27 16:16:51',0),(3808,112,'2014-03-27','2014-03-27 16:33:33',0),(3809,112,'2014-03-27','2014-03-27 22:48:24',0),(3810,112,'2014-03-28','2014-03-28 01:09:32',0),(3811,1,'2014-03-28','2014-03-28 02:49:14',0),(3812,133,'2014-03-28','2014-03-28 02:59:22',0),(3813,133,'2014-03-28','2014-03-28 02:59:23',0),(3814,112,'2014-03-28','2014-03-28 04:49:07',0),(3815,112,'2014-03-28','2014-03-28 11:12:14',0),(3816,1,'2014-03-28','2014-03-28 12:45:22',0),(3817,112,'2014-03-28','2014-03-28 14:09:42',0),(3818,1,'2014-03-28','2014-03-28 21:38:24',0),(3819,133,'2014-03-28','2014-03-28 21:38:58',0),(3820,133,'2014-03-28','2014-03-28 21:38:58',0),(3821,112,'2014-03-29','2014-03-29 02:21:26',0),(3822,1,'2014-03-29','2014-03-29 10:13:12',0),(3823,1,'2014-03-29','2014-03-29 17:29:44',0),(3824,112,'2014-03-29','2014-03-29 21:13:08',0),(3825,120,'2014-03-29','2014-03-29 21:19:39',0),(3826,112,'2014-03-29','2014-03-29 22:05:00',0),(3827,1,'2014-03-30','2014-03-30 02:47:28',0),(3828,133,'2014-03-30','2014-03-30 04:08:10',0),(3829,1,'2014-03-30','2014-03-30 12:40:09',0),(3830,1,'2014-03-30','2014-03-30 21:18:58',0),(3831,112,'2014-03-31','2014-03-31 01:01:45',0),(3832,112,'2014-03-31','2014-03-31 04:13:58',0),(3833,1,'2014-03-31','2014-03-31 08:03:42',0),(3834,133,'2014-03-31','2014-03-31 13:00:54',0),(3835,133,'2014-03-31','2014-03-31 13:00:54',0),(3836,133,'2014-03-31','2014-03-31 15:41:15',0),(3837,1,'2014-03-31','2014-03-31 17:33:26',0),(3838,112,'2014-03-31','2014-03-31 21:00:24',0),(3839,112,'2014-03-31','2014-03-31 21:00:28',0),(3840,133,'2014-03-31','2014-03-31 21:00:33',0),(3841,112,'2014-03-31','2014-03-31 21:00:38',0),(3842,112,'2014-03-31','2014-03-31 21:00:43',0),(3843,120,'2014-04-01','2014-04-01 00:57:15',0),(3844,1,'2014-04-01','2014-04-01 02:54:04',0),(3845,133,'2014-04-01','2014-04-01 03:33:28',0),(3846,1,'2014-04-01','2014-04-01 09:56:44',0),(3847,112,'2014-04-01','2014-04-01 14:29:26',0),(3848,1,'2014-04-01','2014-04-01 16:12:33',0),(3849,112,'2014-04-01','2014-04-01 22:02:34',0),(3850,1,'2014-04-02','2014-04-02 01:22:31',0),(3851,133,'2014-04-02','2014-04-02 01:22:33',0),(3852,112,'2014-04-02','2014-04-02 01:22:34',0),(3853,112,'2014-04-02','2014-04-02 01:22:36',0),(3854,112,'2014-04-02','2014-04-02 01:22:38',0),(3855,112,'2014-04-02','2014-04-02 01:22:39',0),(3856,112,'2014-04-02','2014-04-02 01:22:41',0),(3857,112,'2014-04-02','2014-04-02 01:22:42',0),(3858,120,'2014-04-02','2014-04-02 01:22:43',0),(3859,112,'2014-04-02','2014-04-02 01:22:45',0),(3860,112,'2014-04-02','2014-04-02 01:22:46',0),(3861,112,'2014-04-02','2014-04-02 04:38:18',0),(3862,1,'2014-04-02','2014-04-02 10:30:10',0),(3863,112,'2014-04-02','2014-04-02 14:20:30',0),(3864,112,'2014-04-02','2014-04-02 14:20:30',0),(3865,112,'2014-04-02','2014-04-02 14:37:11',0),(3866,112,'2014-04-02','2014-04-02 14:37:11',0),(3867,112,'2014-04-02','2014-04-02 14:38:42',0),(3868,120,'2014-04-02','2014-04-02 15:29:44',0),(3869,112,'2014-04-02','2014-04-02 15:29:45',0),(3870,120,'2014-04-02','2014-04-02 15:29:46',0),(3871,112,'2014-04-02','2014-04-02 16:58:27',0),(3872,1,'2014-04-02','2014-04-02 17:03:54',0),(3873,112,'2014-04-02','2014-04-02 17:10:59',0),(3874,133,'2014-04-02','2014-04-02 18:10:14',0),(3875,1,'2014-04-03','2014-04-02 23:06:14',0),(3876,112,'2014-04-03','2014-04-03 00:26:56',0),(3877,1,'2014-04-03','2014-04-03 11:00:48',0),(3878,1,'2014-04-03','2014-04-03 17:05:39',0),(3879,112,'2014-04-03','2014-04-03 19:44:29',0),(3880,112,'2014-04-03','2014-04-03 22:37:32',0),(3881,112,'2014-04-03','2014-04-03 22:40:49',0),(3882,112,'2014-04-04','2014-04-04 03:34:45',0),(3883,1,'2014-04-04','2014-04-04 08:28:17',0),(3884,112,'2014-04-04','2014-04-04 10:15:50',0),(3885,112,'2014-04-04','2014-04-04 10:15:51',0),(3886,112,'2014-04-04','2014-04-04 10:18:56',0),(3887,133,'2014-04-04','2014-04-04 12:44:51',0),(3888,133,'2014-04-04','2014-04-04 12:44:52',0),(3889,1,'2014-04-04','2014-04-04 14:56:57',0),(3890,112,'2014-04-04','2014-04-04 18:18:26',0),(3891,1,'2014-04-05','2014-04-05 02:58:39',0),(3892,112,'2014-04-05','2014-04-05 04:38:43',0),(3893,112,'2014-04-05','2014-04-05 04:40:47',0),(3894,133,'2014-04-05','2014-04-05 04:46:46',0),(3895,112,'2014-04-05','2014-04-05 04:51:36',0),(3896,112,'2014-04-05','2014-04-05 04:51:37',0),(3897,112,'2014-04-05','2014-04-05 04:51:37',0),(3898,112,'2014-04-05','2014-04-05 04:51:37',0),(3899,112,'2014-04-05','2014-04-05 05:07:48',0),(3900,1,'2014-04-05','2014-04-05 13:38:16',0),(3901,133,'2014-04-06','2014-04-06 00:16:31',0),(3902,1,'2014-04-06','2014-04-06 00:34:48',0),(3903,120,'2014-04-06','2014-04-06 04:46:33',0),(3904,112,'2014-04-06','2014-04-06 07:31:42',0),(3905,112,'2014-04-06','2014-04-06 08:39:18',0),(3906,112,'2014-04-06','2014-04-06 09:06:26',0),(3907,112,'2014-04-06','2014-04-06 10:07:20',0),(3908,1,'2014-04-06','2014-04-06 14:08:12',0),(3909,133,'2014-04-06','2014-04-06 14:08:21',0),(3910,133,'2014-04-06','2014-04-06 14:08:21',0),(3911,112,'2014-04-06','2014-04-06 19:58:00',0),(3912,1,'2014-04-06','2014-04-06 22:53:16',0),(3913,120,'2014-04-07','2014-04-07 03:38:02',0),(3914,1,'2014-04-07','2014-04-07 05:03:15',0),(3915,133,'2014-04-07','2014-04-07 05:36:29',0),(3916,133,'2014-04-07','2014-04-07 05:36:29',0),(3917,1,'2014-04-07','2014-04-07 13:02:37',0),(3918,133,'2014-04-07','2014-04-07 13:50:21',0),(3919,112,'2014-04-07','2014-04-07 14:36:31',0),(3920,112,'2014-04-07','2014-04-07 19:04:38',0),(3921,112,'2014-04-07','2014-04-07 20:36:35',0),(3922,120,'2014-04-07','2014-04-07 20:38:25',0),(3923,1,'2014-04-07','2014-04-07 21:17:45',0),(3924,1,'2014-04-08','2014-04-08 09:39:39',0),(3925,112,'2014-04-08','2014-04-08 11:17:28',0),(3926,133,'2014-04-08','2014-04-08 14:52:02',0),(3927,1,'2014-04-08','2014-04-08 17:20:31',0),(3928,1,'2014-04-09','2014-04-09 03:33:33',0),(3929,112,'2014-04-09','2014-04-09 07:24:39',0),(3930,1,'2014-04-09','2014-04-09 12:27:51',0),(3931,1,'2014-04-09','2014-04-09 19:01:54',0),(3932,112,'2014-04-09','2014-04-09 20:46:21',0),(3933,133,'2014-04-10','2014-04-10 02:14:03',0),(3934,1,'2014-04-10','2014-04-10 04:14:31',0),(3935,1,'2014-04-10','2014-04-10 12:33:09',0),(3936,1,'2014-04-11','2014-04-10 23:00:06',0),(3937,120,'2014-04-11','2014-04-11 04:20:42',0),(3938,112,'2014-04-11','2014-04-11 04:45:42',0),(3939,1,'2014-04-11','2014-04-11 05:11:14',0),(3940,1,'2014-04-11','2014-04-11 12:00:43',0),(3941,133,'2014-04-11','2014-04-11 14:52:15',0),(3942,133,'2014-04-11','2014-04-11 14:52:17',0),(3943,133,'2014-04-11','2014-04-11 14:52:17',0),(3944,1,'2014-04-11','2014-04-11 19:33:55',0),(3945,120,'2014-04-12','2014-04-12 00:34:59',0),(3946,110,'2014-04-12','2014-04-12 02:05:50',0),(3947,110,'2014-04-12','2014-04-12 02:05:55',0),(3948,2,'2014-04-12','2014-04-12 02:05:55',1),(3949,106,'2014-04-12','2014-04-12 02:05:57',1),(3950,7,'2014-04-12','2014-04-12 02:06:05',1),(3951,110,'2014-04-12','2014-04-12 02:06:11',1),(3952,1,'2014-04-12','2014-04-12 02:06:11',0),(3953,110,'2014-04-12','2014-04-12 02:06:24',0),(3954,2,'2014-04-12','2014-04-12 02:06:25',1),(3955,1,'2014-04-12','2014-04-12 02:06:32',1),(3956,1,'2014-04-12','2014-04-12 02:06:35',1),(3957,110,'2014-04-12','2014-04-12 02:07:27',1),(3958,133,'2014-04-12','2014-04-12 07:13:20',0),(3959,1,'2014-04-12','2014-04-12 10:50:07',0),(3960,133,'2014-04-12','2014-04-12 13:15:11',0),(3961,1,'2014-04-12','2014-04-12 22:03:42',0),(3962,1,'2014-04-12','2014-04-12 22:04:10',0),(3963,112,'2014-04-12','2014-04-12 22:09:36',0),(3964,1,'2014-04-13','2014-04-13 07:32:54',0),(3965,133,'2014-04-13','2014-04-13 07:32:59',0),(3966,112,'2014-04-13','2014-04-13 07:33:02',0),(3967,112,'2014-04-13','2014-04-13 07:33:05',0),(3968,112,'2014-04-13','2014-04-13 07:33:08',0),(3969,112,'2014-04-13','2014-04-13 07:33:11',0),(3970,112,'2014-04-13','2014-04-13 07:33:17',0),(3971,112,'2014-04-13','2014-04-13 07:33:21',0),(3972,112,'2014-04-13','2014-04-13 07:33:24',0),(3973,112,'2014-04-13','2014-04-13 07:33:27',0),(3974,1,'2014-04-13','2014-04-13 15:27:59',0),(3975,133,'2014-04-13','2014-04-13 17:46:46',0),(3976,133,'2014-04-13','2014-04-13 17:46:47',0),(3977,112,'2014-04-13','2014-04-13 18:18:12',0),(3978,1,'2014-04-13','2014-04-13 22:14:42',0),(3979,1,'2014-04-14','2014-04-14 06:22:40',0),(3980,133,'2014-04-14','2014-04-14 06:22:50',0),(3981,133,'2014-04-14','2014-04-14 06:22:50',0),(3982,120,'2014-04-14','2014-04-14 08:45:51',0),(3983,112,'2014-04-14','2014-04-14 12:18:47',0),(3984,1,'2014-04-14','2014-04-14 13:43:33',0),(3985,133,'2014-04-14','2014-04-14 13:43:34',0),(3986,112,'2014-04-14','2014-04-14 13:43:35',0),(3987,112,'2014-04-14','2014-04-14 13:43:35',0),(3988,112,'2014-04-14','2014-04-14 13:43:37',0),(3989,112,'2014-04-14','2014-04-14 13:43:38',0),(3990,120,'2014-04-14','2014-04-14 15:38:01',0),(3991,120,'2014-04-14','2014-04-14 16:55:56',0),(3992,133,'2014-04-14','2014-04-14 21:40:06',0),(3993,120,'2014-04-14','2014-04-14 21:45:53',0),(3994,1,'2014-04-15','2014-04-14 23:02:31',0),(3995,112,'2014-04-15','2014-04-15 02:19:34',0),(3996,133,'2014-04-15','2014-04-15 02:43:11',0),(3997,133,'2014-04-15','2014-04-15 04:21:14',0),(3998,1,'2014-04-15','2014-04-15 05:08:52',0),(3999,112,'2014-04-15','2014-04-15 05:59:55',0),(4000,1,'2014-04-15','2014-04-15 12:03:41',0),(4001,112,'2014-04-15','2014-04-15 17:32:10',0),(4002,1,'2014-04-15','2014-04-15 18:14:15',0),(4003,1,'2014-04-16','2014-04-16 01:28:34',0),(4004,1,'2014-04-16','2014-04-16 08:21:38',0),(4005,112,'2014-04-16','2014-04-16 10:27:10',0),(4006,1,'2014-04-16','2014-04-16 14:55:19',0),(4007,112,'2014-04-16','2014-04-16 17:30:32',0),(4008,112,'2014-04-16','2014-04-16 19:06:52',0),(4009,1,'2014-04-16','2014-04-16 22:20:49',0),(4010,1,'2014-04-17','2014-04-17 04:45:11',0),(4011,133,'2014-04-17','2014-04-17 06:33:55',0),(4012,133,'2014-04-17','2014-04-17 06:33:56',0),(4013,133,'2014-04-17','2014-04-17 06:33:56',0),(4014,112,'2014-04-17','2014-04-17 07:21:47',0),(4015,1,'2014-04-17','2014-04-17 12:51:24',0),(4016,133,'2014-04-17','2014-04-17 14:05:21',0),(4017,112,'2014-04-17','2014-04-17 14:05:22',0),(4018,112,'2014-04-17','2014-04-17 14:05:23',0),(4019,112,'2014-04-17','2014-04-17 14:24:08',0),(4020,1,'2014-04-18','2014-04-18 00:24:43',0),(4021,112,'2014-04-18','2014-04-18 00:52:44',0),(4022,112,'2014-04-18','2014-04-18 03:38:14',0),(4023,1,'2014-04-18','2014-04-18 09:54:02',0),(4024,120,'2014-04-18','2014-04-18 13:23:31',0),(4025,1,'2014-04-18','2014-04-18 20:45:55',0),(4026,112,'2014-04-18','2014-04-18 22:57:29',0),(4027,112,'2014-04-19','2014-04-18 23:50:08',0),(4028,1,'2014-04-19','2014-04-19 06:40:03',0),(4029,112,'2014-04-19','2014-04-19 08:34:36',0),(4030,1,'2014-04-19','2014-04-19 16:58:23',0),(4031,133,'2014-04-19','2014-04-19 16:58:25',0),(4032,112,'2014-04-19','2014-04-19 16:58:26',0),(4033,112,'2014-04-19','2014-04-19 16:58:27',0),(4034,112,'2014-04-19','2014-04-19 16:58:29',0),(4035,112,'2014-04-19','2014-04-19 16:58:30',0),(4036,133,'2014-04-20','2014-04-20 02:21:48',0),(4037,112,'2014-04-20','2014-04-20 02:26:38',0),(4038,112,'2014-04-20','2014-04-20 03:20:44',0),(4039,112,'2014-04-20','2014-04-20 05:16:46',0),(4040,1,'2014-04-20','2014-04-20 05:31:27',0),(4041,112,'2014-04-20','2014-04-20 06:19:44',0),(4042,133,'2014-04-20','2014-04-20 13:11:38',0),(4043,112,'2014-04-20','2014-04-20 13:40:08',0),(4044,1,'2014-04-20','2014-04-20 17:20:57',0),(4045,112,'2014-04-20','2014-04-20 18:21:44',0),(4046,1,'2014-04-21','2014-04-21 01:54:55',0),(4047,112,'2014-04-21','2014-04-21 02:41:35',0),(4048,1,'2014-04-21','2014-04-21 07:58:05',0),(4049,1,'2014-04-21','2014-04-21 15:02:55',0),(4050,133,'2014-04-21','2014-04-21 15:29:16',0),(4051,1,'2014-04-22','2014-04-22 02:36:02',0),(4052,133,'2014-04-22','2014-04-22 02:37:09',0),(4053,133,'2014-04-22','2014-04-22 02:37:10',0),(4054,1,'2014-04-22','2014-04-22 08:47:09',0),(4055,112,'2014-04-22','2014-04-22 10:28:46',0),(4056,133,'2014-04-22','2014-04-22 11:44:02',0),(4057,133,'2014-04-22','2014-04-22 11:44:02',0),(4058,1,'2014-04-22','2014-04-22 19:27:49',0),(4059,1,'2014-04-23','2014-04-23 04:43:33',0),(4060,1,'2014-04-23','2014-04-23 11:55:02',0),(4061,133,'2014-04-23','2014-04-23 16:52:11',0),(4062,133,'2014-04-23','2014-04-23 16:52:11',0),(4063,112,'2014-04-23','2014-04-23 18:51:18',0),(4064,1,'2014-04-23','2014-04-23 19:14:24',0),(4065,133,'2014-04-23','2014-04-23 19:14:36',0),(4066,112,'2014-04-23','2014-04-23 20:39:40',0),(4067,112,'2014-04-23','2014-04-23 21:30:57',0),(4068,110,'2014-04-24','2014-04-23 23:09:12',0),(4069,110,'2014-04-24','2014-04-23 23:09:20',0),(4070,110,'2014-04-24','2014-04-23 23:09:27',0),(4071,112,'2014-04-24','2014-04-23 23:09:28',1),(4072,106,'2014-04-24','2014-04-23 23:09:29',1),(4073,112,'2014-04-24','2014-04-23 23:09:33',1),(4074,1,'2014-04-24','2014-04-23 23:09:41',1),(4075,1,'2014-04-24','2014-04-23 23:09:52',1),(4076,1,'2014-04-24','2014-04-23 23:10:09',1),(4077,1,'2014-04-24','2014-04-23 23:11:36',1),(4078,110,'2014-04-24','2014-04-23 23:11:39',1),(4079,1,'2014-04-24','2014-04-23 23:11:39',0),(4080,112,'2014-04-24','2014-04-23 23:41:56',0),(4081,120,'2014-04-24','2014-04-24 04:45:49',0),(4082,1,'2014-04-24','2014-04-24 06:59:05',0),(4083,112,'2014-04-24','2014-04-24 10:11:06',0),(4084,133,'2014-04-24','2014-04-24 11:18:22',0),(4085,133,'2014-04-24','2014-04-24 11:18:22',0),(4086,1,'2014-04-24','2014-04-24 13:02:31',0),(4087,112,'2014-04-24','2014-04-24 13:12:30',0),(4088,112,'2014-04-24','2014-04-24 16:52:27',0),(4089,112,'2014-04-24','2014-04-24 16:52:28',0),(4090,112,'2014-04-24','2014-04-24 16:52:28',0),(4091,112,'2014-04-24','2014-04-24 16:52:28',0),(4092,1,'2014-04-24','2014-04-24 22:24:23',0),(4093,133,'2014-04-25','2014-04-24 23:28:54',0),(4094,1,'2014-04-25','2014-04-25 07:00:13',0),(4095,112,'2014-04-25','2014-04-25 15:33:48',0),(4096,1,'2014-04-25','2014-04-25 16:53:31',0),(4097,1,'2014-04-26','2014-04-25 23:06:09',0),(4098,112,'2014-04-26','2014-04-26 00:42:38',0),(4099,112,'2014-04-26','2014-04-26 00:42:40',0),(4100,112,'2014-04-26','2014-04-26 00:42:40',0),(4101,112,'2014-04-26','2014-04-26 00:42:59',0),(4102,112,'2014-04-26','2014-04-26 00:43:00',0),(4103,112,'2014-04-26','2014-04-26 00:43:00',0),(4104,112,'2014-04-26','2014-04-26 02:14:01',0),(4105,1,'2014-04-26','2014-04-26 06:59:54',0),(4106,133,'2014-04-26','2014-04-26 07:17:10',0),(4107,133,'2014-04-26','2014-04-26 07:17:11',0),(4108,133,'2014-04-26','2014-04-26 08:34:12',0),(4109,112,'2014-04-26','2014-04-26 10:19:30',0),(4110,112,'2014-04-26','2014-04-26 10:19:31',0),(4111,112,'2014-04-26','2014-04-26 11:32:53',0),(4112,1,'2014-04-26','2014-04-26 15:08:21',0),(4113,1,'2014-04-26','2014-04-26 21:49:42',0),(4114,112,'2014-04-27','2014-04-27 03:22:58',0),(4115,112,'2014-04-27','2014-04-27 03:23:02',0),(4116,133,'2014-04-27','2014-04-27 03:23:07',0),(4117,112,'2014-04-27','2014-04-27 03:23:12',0),(4118,112,'2014-04-27','2014-04-27 03:23:17',0),(4119,112,'2014-04-27','2014-04-27 08:49:51',0),(4120,133,'2014-04-27','2014-04-27 08:53:40',0),(4121,1,'2014-04-27','2014-04-27 10:55:50',0),(4122,1,'2014-04-27','2014-04-27 17:01:30',0),(4123,133,'2014-04-27','2014-04-27 17:02:11',0),(4124,112,'2014-04-27','2014-04-27 18:03:59',0),(4125,133,'2014-04-27','2014-04-27 18:47:00',0),(4126,133,'2014-04-28','2014-04-27 23:50:58',0),(4127,1,'2014-04-28','2014-04-28 02:11:02',0),(4128,120,'2014-04-28','2014-04-28 04:31:31',0),(4129,120,'2014-04-28','2014-04-28 06:39:10',0),(4130,120,'2014-04-28','2014-04-28 07:25:39',0),(4131,1,'2014-04-28','2014-04-28 08:14:11',0),(4132,133,'2014-04-28','2014-04-28 08:16:26',0),(4133,133,'2014-04-28','2014-04-28 08:16:27',0),(4134,133,'2014-04-28','2014-04-28 08:21:56',0),(4135,133,'2014-04-28','2014-04-28 08:48:09',0),(4136,133,'2014-04-28','2014-04-28 09:18:16',0),(4137,112,'2014-04-28','2014-04-28 12:13:56',0),(4138,112,'2014-04-28','2014-04-28 12:13:56',0),(4139,112,'2014-04-28','2014-04-28 12:13:57',0),(4140,133,'2014-04-28','2014-04-28 12:14:18',0),(4141,133,'2014-04-28','2014-04-28 12:14:19',0),(4142,1,'2014-04-28','2014-04-28 15:28:37',0),(4143,133,'2014-04-28','2014-04-28 20:03:40',0),(4144,133,'2014-04-28','2014-04-28 20:03:41',0),(4145,1,'2014-04-29','2014-04-29 02:51:34',0),(4146,120,'2014-04-29','2014-04-29 05:15:39',0),(4147,112,'2014-04-29','2014-04-29 06:10:28',0),(4148,133,'2014-04-29','2014-04-29 06:51:29',0),(4149,133,'2014-04-29','2014-04-29 06:51:30',0),(4150,1,'2014-04-29','2014-04-29 08:55:44',0),(4151,133,'2014-04-29','2014-04-29 12:26:47',0),(4152,133,'2014-04-29','2014-04-29 12:40:29',0),(4153,120,'2014-04-29','2014-04-29 14:03:49',0),(4154,120,'2014-04-29','2014-04-29 14:03:49',0),(4155,112,'2014-04-29','2014-04-29 14:03:52',0),(4156,112,'2014-04-29','2014-04-29 14:03:52',0),(4157,1,'2014-04-29','2014-04-29 15:45:43',0),(4158,112,'2014-04-29','2014-04-29 19:46:28',0),(4159,112,'2014-04-29','2014-04-29 20:04:32',0),(4160,133,'2014-04-29','2014-04-29 20:24:19',0),(4161,133,'2014-04-29','2014-04-29 20:24:19',0),(4162,133,'2014-04-29','2014-04-29 21:41:16',0),(4163,112,'2014-04-29','2014-04-29 21:43:02',0),(4164,112,'2014-04-29','2014-04-29 21:43:02',0),(4165,1,'2014-04-29','2014-04-29 22:05:42',0),(4166,112,'2014-04-30','2014-04-30 01:16:08',0),(4167,112,'2014-04-30','2014-04-30 02:26:19',0),(4168,112,'2014-04-30','2014-04-30 04:07:09',0),(4169,133,'2014-04-30','2014-04-30 05:26:11',0),(4170,1,'2014-04-30','2014-04-30 06:29:45',0),(4171,133,'2014-04-30','2014-04-30 11:52:37',0),(4172,133,'2014-04-30','2014-04-30 11:52:38',0),(4173,1,'2014-04-30','2014-04-30 20:41:07',0),(4174,120,'2014-04-30','2014-04-30 22:56:03',0),(4175,112,'2014-05-01','2014-04-30 23:35:00',0),(4176,1,'2014-05-01','2014-05-01 06:32:39',0),(4177,133,'2014-05-01','2014-05-01 09:26:19',0),(4178,1,'2014-05-01','2014-05-01 13:22:50',0),(4179,133,'2014-05-01','2014-05-01 15:37:53',0),(4180,133,'2014-05-01','2014-05-01 15:37:54',0),(4181,1,'2014-05-01','2014-05-01 21:02:57',0),(4182,133,'2014-05-01','2014-05-01 21:03:31',0),(4183,112,'2014-05-01','2014-05-01 21:15:45',0),(4184,133,'2014-05-01','2014-05-01 21:45:35',0),(4185,112,'2014-05-02','2014-05-02 00:30:55',0),(4186,1,'2014-05-02','2014-05-02 03:40:43',0),(4187,133,'2014-05-02','2014-05-02 03:40:47',0),(4188,133,'2014-05-02','2014-05-02 05:53:54',0),(4189,112,'2014-05-02','2014-05-02 10:46:14',0),(4190,1,'2014-05-02','2014-05-02 11:47:20',0),(4191,1,'2014-05-02','2014-05-02 20:25:26',0),(4192,133,'2014-05-02','2014-05-02 22:17:15',0),(4193,133,'2014-05-02','2014-05-02 22:17:15',0),(4194,120,'2014-05-03','2014-05-03 05:11:39',0),(4195,112,'2014-05-03','2014-05-03 05:12:20',0),(4196,133,'2014-05-03','2014-05-03 06:05:18',0),(4197,1,'2014-05-03','2014-05-03 06:06:00',0),(4198,112,'2014-05-03','2014-05-03 07:22:27',0),(4199,1,'2014-05-03','2014-05-03 12:29:19',0),(4200,1,'2014-05-03','2014-05-03 19:21:32',0),(4201,112,'2014-05-03','2014-05-03 20:23:47',0),(4202,112,'2014-05-03','2014-05-03 22:15:05',0),(4203,112,'2014-05-04','2014-05-04 01:59:53',0),(4204,1,'2014-05-04','2014-05-04 03:15:59',0),(4205,112,'2014-05-04','2014-05-04 08:13:51',0),(4206,1,'2014-05-04','2014-05-04 10:26:00',0),(4207,133,'2014-05-04','2014-05-04 13:02:11',0),(4208,112,'2014-05-04','2014-05-04 14:46:40',0),(4209,1,'2014-05-04','2014-05-04 16:39:13',0),(4210,112,'2014-05-04','2014-05-04 16:41:39',0),(4211,112,'2014-05-04','2014-05-04 18:11:12',0),(4212,112,'2014-05-04','2014-05-04 18:11:12',0),(4213,112,'2014-05-04','2014-05-04 18:11:12',0),(4214,112,'2014-05-04','2014-05-04 18:11:12',0),(4215,133,'2014-05-04','2014-05-04 21:53:45',0),(4216,112,'2014-05-04','2014-05-04 21:53:46',0),(4217,112,'2014-05-04','2014-05-04 21:53:46',0),(4218,1,'2014-05-05','2014-05-05 00:43:36',0),(4219,112,'2014-05-05','2014-05-05 01:00:36',0),(4220,112,'2014-05-05','2014-05-05 06:44:12',0),(4221,1,'2014-05-05','2014-05-05 07:00:10',0),(4222,112,'2014-05-05','2014-05-05 14:11:35',0),(4223,1,'2014-05-05','2014-05-05 14:36:21',0),(4224,133,'2014-05-05','2014-05-05 16:00:10',0),(4225,133,'2014-05-05','2014-05-05 16:36:10',0),(4226,133,'2014-05-05','2014-05-05 20:13:45',0),(4227,1,'2014-05-05','2014-05-05 21:07:50',0),(4228,112,'2014-05-06','2014-05-06 02:11:37',0),(4229,1,'2014-05-06','2014-05-06 04:47:03',0),(4230,133,'2014-05-06','2014-05-06 09:54:26',0),(4231,133,'2014-05-06','2014-05-06 09:54:26',0),(4232,112,'2014-05-06','2014-05-06 09:55:51',0),(4233,112,'2014-05-06','2014-05-06 10:12:08',0),(4234,1,'2014-05-06','2014-05-06 10:57:59',0),(4235,112,'2014-05-06','2014-05-06 13:28:41',0),(4236,120,'2014-05-06','2014-05-06 13:28:42',0),(4237,1,'2014-05-06','2014-05-06 17:01:08',0),(4238,133,'2014-05-06','2014-05-06 19:11:22',0),(4239,133,'2014-05-06','2014-05-06 19:11:22',0),(4240,112,'2014-05-06','2014-05-06 21:32:25',0),(4241,1,'2014-05-07','2014-05-06 23:09:48',0),(4242,110,'2014-05-07','2014-05-06 23:10:08',0),(4243,110,'2014-05-07','2014-05-06 23:10:14',0),(4244,112,'2014-05-07','2014-05-06 23:10:15',1),(4245,106,'2014-05-07','2014-05-06 23:10:17',1),(4246,112,'2014-05-07','2014-05-06 23:10:22',1),(4247,1,'2014-05-07','2014-05-06 23:10:25',1),(4248,1,'2014-05-07','2014-05-06 23:10:27',1),(4249,1,'2014-05-07','2014-05-07 05:44:16',0),(4250,1,'2014-05-07','2014-05-07 15:44:55',0),(4251,112,'2014-05-07','2014-05-07 16:51:38',0),(4252,112,'2014-05-07','2014-05-07 17:46:38',0),(4253,112,'2014-05-07','2014-05-07 21:15:26',0),(4254,1,'2014-05-08','2014-05-08 01:00:23',0),(4255,1,'2014-05-08','2014-05-08 07:50:34',0),(4256,1,'2014-05-08','2014-05-08 17:24:04',0),(4257,133,'2014-05-08','2014-05-08 17:50:19',0),(4258,112,'2014-05-08','2014-05-08 17:50:22',0),(4259,112,'2014-05-08','2014-05-08 17:50:27',0),(4260,120,'2014-05-08','2014-05-08 20:06:12',0),(4261,1,'2014-05-09','2014-05-09 01:40:50',0),(4262,112,'2014-05-09','2014-05-09 04:24:57',0),(4263,133,'2014-05-09','2014-05-09 06:00:03',0),(4264,1,'2014-05-09','2014-05-09 08:00:11',0),(4265,133,'2014-05-09','2014-05-09 09:28:04',0),(4266,112,'2014-05-09','2014-05-09 11:10:17',0),(4267,112,'2014-05-09','2014-05-09 17:15:57',0),(4268,112,'2014-05-09','2014-05-09 20:01:22',0),(4269,1,'2014-05-09','2014-05-09 21:08:27',0),(4270,133,'2014-05-10','2014-05-10 02:37:27',0),(4271,1,'2014-05-10','2014-05-10 05:48:08',0),(4272,1,'2014-05-10','2014-05-10 12:04:28',0),(4273,133,'2014-05-10','2014-05-10 12:04:32',0),(4274,133,'2014-05-10','2014-05-10 12:04:32',0),(4275,112,'2014-05-10','2014-05-10 15:30:10',0),(4276,133,'2014-05-10','2014-05-10 17:20:35',0),(4277,1,'2014-05-10','2014-05-10 22:28:21',0),(4278,112,'2014-05-11','2014-05-11 01:58:55',0),(4279,112,'2014-05-11','2014-05-11 02:02:44',0),(4280,120,'2014-05-11','2014-05-11 04:55:37',0),(4281,112,'2014-05-11','2014-05-11 11:33:58',0),(4282,1,'2014-05-11','2014-05-11 12:44:53',0),(4283,112,'2014-05-11','2014-05-11 14:00:28',0),(4284,112,'2014-05-11','2014-05-11 14:00:30',0),(4285,133,'2014-05-11','2014-05-11 14:00:32',0),(4286,1,'2014-05-11','2014-05-11 22:08:18',0),(4287,1,'2014-05-12','2014-05-12 05:26:04',0),(4288,112,'2014-05-12','2014-05-12 05:26:05',0),(4289,133,'2014-05-12','2014-05-12 05:26:05',0),(4290,112,'2014-05-12','2014-05-12 05:26:06',0),(4291,112,'2014-05-12','2014-05-12 05:26:07',0),(4292,112,'2014-05-12','2014-05-12 05:26:08',0),(4293,133,'2014-05-12','2014-05-12 08:33:22',0),(4294,1,'2014-05-12','2014-05-12 11:43:38',0),(4295,112,'2014-05-12','2014-05-12 17:14:13',0),(4296,1,'2014-05-13','2014-05-12 23:21:40',0),(4297,120,'2014-05-13','2014-05-13 04:10:24',0),(4298,112,'2014-05-13','2014-05-13 04:11:39',0),(4299,112,'2014-05-13','2014-05-13 05:46:40',0),(4300,112,'2014-05-13','2014-05-13 06:41:42',0),(4301,1,'2014-05-13','2014-05-13 06:58:51',0),(4302,1,'2014-05-13','2014-05-13 16:25:55',0),(4303,112,'2014-05-13','2014-05-13 17:16:58',0),(4304,133,'2014-05-13','2014-05-13 22:48:26',0),(4305,1,'2014-05-14','2014-05-14 03:54:01',0),(4306,1,'2014-05-14','2014-05-14 15:15:32',0),(4307,1,'2014-05-14','2014-05-14 21:52:54',0),(4308,110,'2014-05-14','2014-05-14 21:53:07',0),(4309,110,'2014-05-14','2014-05-14 21:53:21',0),(4310,112,'2014-05-14','2014-05-14 21:53:22',1),(4311,112,'2014-05-14','2014-05-14 21:53:23',1),(4312,106,'2014-05-14','2014-05-14 21:53:24',1),(4313,1,'2014-05-14','2014-05-14 21:53:53',1),(4314,1,'2014-05-14','2014-05-14 21:54:59',1),(4315,133,'2014-05-14','2014-05-14 22:04:36',0),(4316,112,'2014-05-15','2014-05-15 01:06:49',0),(4317,1,'2014-05-15','2014-05-15 01:59:45',0),(4318,1,'2014-05-15','2014-05-15 04:53:43',1),(4319,112,'2014-05-15','2014-05-15 05:37:08',0),(4320,133,'2014-05-15','2014-05-15 08:03:13',0),(4321,1,'2014-05-15','2014-05-15 09:45:51',0),(4322,112,'2014-05-15','2014-05-15 09:46:39',0),(4323,112,'2014-05-15','2014-05-15 10:56:22',0),(4324,133,'2014-05-15','2014-05-15 17:43:37',0),(4325,1,'2014-05-15','2014-05-15 18:00:36',0),(4326,1,'2014-05-16','2014-05-16 04:58:10',0),(4327,112,'2014-05-16','2014-05-16 07:13:08',0),(4328,133,'2014-05-16','2014-05-16 11:36:39',0),(4329,1,'2014-05-16','2014-05-16 11:38:56',0),(4330,112,'2014-05-16','2014-05-16 12:31:41',0),(4331,1,'2014-05-16','2014-05-16 18:11:30',0),(4332,120,'2014-05-17','2014-05-17 03:17:53',0),(4333,120,'2014-05-17','2014-05-17 03:17:54',0),(4334,1,'2014-05-17','2014-05-17 03:33:22',0),(4335,133,'2014-05-17','2014-05-17 04:18:48',0),(4336,112,'2014-05-17','2014-05-17 05:02:34',0),(4337,1,'2014-05-17','2014-05-17 10:09:13',0),(4338,112,'2014-05-17','2014-05-17 13:55:33',0),(4339,112,'2014-05-17','2014-05-17 17:47:48',0),(4340,1,'2014-05-17','2014-05-17 21:15:21',0),(4341,112,'2014-05-17','2014-05-17 21:15:22',0),(4342,112,'2014-05-17','2014-05-17 21:15:25',0),(4343,133,'2014-05-17','2014-05-17 21:15:30',0),(4344,112,'2014-05-17','2014-05-17 21:15:35',0),(4345,112,'2014-05-17','2014-05-17 21:15:40',0),(4346,112,'2014-05-17','2014-05-17 22:11:51',0),(4347,112,'2014-05-18','2014-05-18 02:03:09',0),(4348,112,'2014-05-18','2014-05-18 02:05:05',0),(4349,1,'2014-05-18','2014-05-18 04:40:11',0),(4350,112,'2014-05-18','2014-05-18 08:17:27',0),(4351,1,'2014-05-18','2014-05-18 13:00:56',0),(4352,120,'2014-05-18','2014-05-18 14:33:06',0),(4353,133,'2014-05-18','2014-05-18 14:48:42',0),(4354,133,'2014-05-18','2014-05-18 14:48:42',0),(4355,112,'2014-05-18','2014-05-18 16:35:10',0),(4356,120,'2014-05-18','2014-05-18 16:38:04',0),(4357,112,'2014-05-18','2014-05-18 16:40:59',0),(4358,112,'2014-05-18','2014-05-18 16:43:53',0),(4359,120,'2014-05-18','2014-05-18 16:46:49',0),(4360,1,'2014-05-18','2014-05-18 19:24:58',0),(4361,133,'2014-05-18','2014-05-18 21:13:27',0),(4362,133,'2014-05-18','2014-05-18 21:13:27',0),(4363,133,'2014-05-18','2014-05-18 21:13:28',0),(4364,1,'2014-05-19','2014-05-19 05:00:20',0),(4365,1,'2014-05-19','2014-05-19 12:05:17',0),(4366,133,'2014-05-19','2014-05-19 15:10:18',0),(4367,133,'2014-05-19','2014-05-19 15:10:19',0),(4368,112,'2014-05-19','2014-05-19 15:13:58',0),(4369,112,'2014-05-19','2014-05-19 15:13:59',0),(4370,112,'2014-05-19','2014-05-19 15:13:59',0),(4371,112,'2014-05-19','2014-05-19 15:13:59',0),(4372,1,'2014-05-19','2014-05-19 18:43:17',0),(4373,112,'2014-05-19','2014-05-19 19:43:11',0),(4374,133,'2014-05-19','2014-05-19 22:10:47',0),(4375,133,'2014-05-19','2014-05-19 22:10:48',0),(4376,1,'2014-05-20','2014-05-20 01:42:56',0),(4377,1,'2014-05-20','2014-05-20 10:02:54',0),(4378,112,'2014-05-20','2014-05-20 10:13:24',0),(4379,112,'2014-05-20','2014-05-20 17:01:51',0),(4380,1,'2014-05-21','2014-05-20 23:58:34',0),(4381,112,'2014-05-21','2014-05-21 04:07:20',0),(4382,112,'2014-05-21','2014-05-21 05:40:23',0),(4383,112,'2014-05-21','2014-05-21 06:07:24',0),(4384,1,'2014-05-21','2014-05-21 06:59:39',0),(4385,112,'2014-05-21','2014-05-21 11:56:46',0),(4386,1,'2014-05-21','2014-05-21 14:31:38',0),(4387,1,'2014-05-21','2014-05-21 21:17:18',0),(4388,133,'2014-05-21','2014-05-21 21:28:42',0),(4389,112,'2014-05-21','2014-05-21 21:28:43',0),(4390,112,'2014-05-21','2014-05-21 21:28:44',0),(4391,112,'2014-05-21','2014-05-21 21:28:46',0),(4392,112,'2014-05-21','2014-05-21 21:28:47',0),(4393,112,'2014-05-22','2014-05-22 04:20:57',0),(4394,1,'2014-05-22','2014-05-22 06:01:33',0),(4395,112,'2014-05-22','2014-05-22 09:33:31',0),(4396,112,'2014-05-22','2014-05-22 09:33:34',0),(4397,133,'2014-05-22','2014-05-22 09:34:18',0),(4398,133,'2014-05-22','2014-05-22 09:34:19',0),(4399,1,'2014-05-22','2014-05-22 13:23:04',0),(4400,120,'2014-05-22','2014-05-22 18:39:20',0),(4401,120,'2014-05-22','2014-05-22 18:39:22',0),(4402,133,'2014-05-22','2014-05-22 19:15:10',0),(4403,112,'2014-05-22','2014-05-22 19:15:16',0),(4404,112,'2014-05-22','2014-05-22 19:15:17',0),(4405,1,'2014-05-22','2014-05-22 20:21:38',0),(4406,1,'2014-05-23','2014-05-23 03:10:28',0),(4407,133,'2014-05-23','2014-05-23 05:07:12',0),(4408,112,'2014-05-23','2014-05-23 05:07:19',0),(4409,112,'2014-05-23','2014-05-23 05:07:26',0),(4410,112,'2014-05-23','2014-05-23 05:07:31',0),(4411,112,'2014-05-23','2014-05-23 05:07:37',0),(4412,1,'2014-05-23','2014-05-23 12:06:05',0),(4413,1,'2014-05-23','2014-05-23 18:11:00',0),(4414,112,'2014-05-23','2014-05-23 20:08:51',0),(4415,133,'2014-05-24','2014-05-23 23:52:32',0),(4416,112,'2014-05-24','2014-05-23 23:53:36',0),(4417,112,'2014-05-24','2014-05-23 23:54:28',0),(4418,112,'2014-05-24','2014-05-23 23:55:06',0),(4419,112,'2014-05-24','2014-05-23 23:55:50',0),(4420,1,'2014-05-24','2014-05-24 03:28:39',0),(4421,112,'2014-05-24','2014-05-24 04:25:21',0),(4422,112,'2014-05-24','2014-05-24 05:25:49',0),(4423,112,'2014-05-24','2014-05-24 09:47:06',0),(4424,133,'2014-05-24','2014-05-24 11:11:20',0),(4425,1,'2014-05-24','2014-05-24 16:26:28',0),(4426,133,'2014-05-24','2014-05-24 19:02:59',0),(4427,133,'2014-05-24','2014-05-24 19:02:59',0),(4428,133,'2014-05-24','2014-05-24 19:03:00',0),(4429,112,'2014-05-24','2014-05-24 21:46:58',0),(4430,1,'2014-05-25','2014-05-25 00:42:06',0),(4431,133,'2014-05-25','2014-05-25 02:34:26',0),(4432,1,'2014-05-25','2014-05-25 07:01:01',0),(4433,112,'2014-05-25','2014-05-25 10:39:51',0),(4434,1,'2014-05-25','2014-05-25 13:18:07',0),(4435,133,'2014-05-25','2014-05-25 13:18:18',0),(4436,133,'2014-05-25','2014-05-25 13:18:19',0),(4437,112,'2014-05-25','2014-05-25 14:09:11',0),(4438,112,'2014-05-25','2014-05-25 18:40:59',0),(4439,133,'2014-05-25','2014-05-25 20:38:03',0),(4440,112,'2014-05-25','2014-05-25 20:38:05',0),(4441,112,'2014-05-25','2014-05-25 20:38:07',0),(4442,1,'2014-05-25','2014-05-25 20:59:43',0),(4443,112,'2014-05-25','2014-05-25 21:43:47',0),(4444,112,'2014-05-25','2014-05-25 22:46:27',0),(4445,120,'2014-05-26','2014-05-25 23:05:07',0),(4446,112,'2014-05-26','2014-05-25 23:35:23',0),(4447,133,'2014-05-26','2014-05-26 00:38:24',0),(4448,1,'2014-05-26','2014-05-26 05:46:27',0),(4449,120,'2014-05-26','2014-05-26 06:07:54',0),(4450,120,'2014-05-26','2014-05-26 06:07:54',0),(4451,133,'2014-05-26','2014-05-26 09:30:48',0),(4452,112,'2014-05-26','2014-05-26 11:59:27',0),(4453,112,'2014-05-26','2014-05-26 11:59:43',0),(4454,112,'2014-05-26','2014-05-26 16:13:40',0),(4455,133,'2014-05-26','2014-05-26 16:13:44',0),(4456,1,'2014-05-26','2014-05-26 16:13:49',0),(4457,133,'2014-05-26','2014-05-26 17:14:51',0),(4458,1,'2014-05-27','2014-05-27 00:36:04',0),(4459,112,'2014-05-27','2014-05-27 05:14:04',0),(4460,112,'2014-05-27','2014-05-27 05:52:43',0),(4461,1,'2014-05-27','2014-05-27 07:00:27',0),(4462,133,'2014-05-27','2014-05-27 09:48:13',0),(4463,133,'2014-05-27','2014-05-27 09:48:14',0),(4464,112,'2014-05-27','2014-05-27 11:59:46',0),(4465,1,'2014-05-27','2014-05-27 16:26:00',0),(4466,133,'2014-05-27','2014-05-27 16:34:48',0),(4467,133,'2014-05-27','2014-05-27 16:34:48',0),(4468,112,'2014-05-27','2014-05-27 18:33:02',0),(4469,112,'2014-05-27','2014-05-27 18:33:02',0),(4470,133,'2014-05-27','2014-05-27 19:14:28',0),(4471,133,'2014-05-27','2014-05-27 20:01:30',0),(4472,133,'2014-05-27','2014-05-27 20:09:06',0),(4473,133,'2014-05-27','2014-05-27 21:10:38',0),(4474,1,'2014-05-28','2014-05-28 02:18:06',0),(4475,133,'2014-05-28','2014-05-28 08:06:40',0),(4476,1,'2014-05-28','2014-05-28 08:25:52',0),(4477,133,'2014-05-28','2014-05-28 08:26:01',0),(4478,133,'2014-05-28','2014-05-28 08:59:41',0),(4479,1,'2014-05-28','2014-05-28 14:56:06',0),(4480,133,'2014-05-28','2014-05-28 14:56:42',0),(4481,133,'2014-05-28','2014-05-28 14:56:43',0),(4482,112,'2014-05-28','2014-05-28 19:06:02',0),(4483,1,'2014-05-29','2014-05-29 02:05:36',0),(4484,133,'2014-05-29','2014-05-29 04:30:25',0),(4485,133,'2014-05-29','2014-05-29 04:30:26',0),(4486,112,'2014-05-29','2014-05-29 06:19:59',0),(4487,1,'2014-05-29','2014-05-29 11:56:47',0),(4488,112,'2014-05-29','2014-05-29 20:30:41',0),(4489,1,'2014-05-29','2014-05-29 21:10:46',0),(4490,1,'2014-05-30','2014-05-30 05:32:56',0),(4491,1,'2014-05-30','2014-05-30 12:08:54',0),(4492,112,'2014-05-30','2014-05-30 16:09:20',0),(4493,133,'2014-05-30','2014-05-30 16:14:19',0),(4494,133,'2014-05-30','2014-05-30 16:14:27',0),(4495,1,'2014-05-30','2014-05-30 22:29:51',0),(4496,112,'2014-05-31','2014-05-31 03:08:30',0),(4497,1,'2014-05-31','2014-05-31 07:01:55',0),(4498,112,'2014-05-31','2014-05-31 08:28:43',0),(4499,112,'2014-05-31','2014-05-31 08:36:51',0),(4500,112,'2014-05-31','2014-05-31 09:28:35',0),(4501,120,'2014-05-31','2014-05-31 12:40:44',0),(4502,1,'2014-05-31','2014-05-31 13:08:36',0),(4503,1,'2014-06-01','2014-06-01 02:35:38',0),(4504,112,'2014-06-01','2014-06-01 08:02:03',0),(4505,1,'2014-06-01','2014-06-01 13:34:50',0),(4506,112,'2014-06-01','2014-06-01 17:08:23',0),(4507,1,'2014-06-01','2014-06-01 19:37:25',0),(4508,133,'2014-06-02','2014-06-02 01:10:40',0),(4509,1,'2014-06-02','2014-06-02 07:01:51',0),(4510,1,'2014-06-02','2014-06-02 14:01:27',0),(4511,133,'2014-06-02','2014-06-02 16:27:29',0),(4512,133,'2014-06-02','2014-06-02 16:27:29',0),(4513,1,'2014-06-02','2014-06-02 21:08:04',0),(4514,112,'2014-06-02','2014-06-02 22:05:41',0),(4515,112,'2014-06-03','2014-06-03 01:58:39',0),(4516,1,'2014-06-03','2014-06-03 03:24:45',0),(4517,112,'2014-06-03','2014-06-03 03:26:08',0),(4518,112,'2014-06-03','2014-06-03 03:26:08',0),(4519,133,'2014-06-03','2014-06-03 03:26:08',0),(4520,133,'2014-06-03','2014-06-03 08:07:33',0),(4521,112,'2014-06-03','2014-06-03 08:18:20',0),(4522,1,'2014-06-03','2014-06-03 10:16:37',0),(4523,133,'2014-06-03','2014-06-03 10:16:58',0),(4524,133,'2014-06-03','2014-06-03 10:16:58',0),(4525,133,'2014-06-03','2014-06-03 10:16:58',0),(4526,1,'2014-06-03','2014-06-03 17:11:38',0),(4527,112,'2014-06-03','2014-06-03 17:12:10',0),(4528,112,'2014-06-03','2014-06-03 17:12:10',0),(4529,112,'2014-06-03','2014-06-03 17:12:11',0),(4530,133,'2014-06-03','2014-06-03 17:12:13',0),(4531,133,'2014-06-03','2014-06-03 17:12:13',0),(4532,112,'2014-06-03','2014-06-03 18:54:23',0),(4533,112,'2014-06-03','2014-06-03 19:12:39',0),(4534,133,'2014-06-03','2014-06-03 20:49:16',0),(4535,133,'2014-06-03','2014-06-03 20:49:16',0),(4536,112,'2014-06-03','2014-06-03 21:15:38',0),(4537,112,'2014-06-03','2014-06-03 22:06:45',0),(4538,1,'2014-06-04','2014-06-04 00:12:27',0),(4539,133,'2014-06-04','2014-06-04 02:05:09',0),(4540,1,'2014-06-04','2014-06-04 06:54:21',0),(4541,133,'2014-06-04','2014-06-04 12:27:06',0),(4542,133,'2014-06-04','2014-06-04 12:27:07',0),(4543,1,'2014-06-04','2014-06-04 13:13:53',0),(4544,133,'2014-06-04','2014-06-04 13:13:56',0),(4545,112,'2014-06-04','2014-06-04 13:27:30',0),(4546,112,'2014-06-04','2014-06-04 14:23:21',0),(4547,133,'2014-06-04','2014-06-04 15:05:04',0),(4548,112,'2014-06-04','2014-06-04 15:21:58',0),(4549,112,'2014-06-04','2014-06-04 18:10:50',0),(4550,1,'2014-06-04','2014-06-04 19:47:14',0),(4551,112,'2014-06-05','2014-06-05 01:11:15',0),(4552,112,'2014-06-05','2014-06-05 01:13:13',0),(4553,112,'2014-06-05','2014-06-05 02:27:17',0),(4554,1,'2014-06-05','2014-06-05 02:36:11',0),(4555,133,'2014-06-05','2014-06-05 02:36:11',0),(4556,112,'2014-06-05','2014-06-05 02:36:12',0),(4557,112,'2014-06-05','2014-06-05 02:36:12',0),(4558,112,'2014-06-05','2014-06-05 02:36:12',0),(4559,112,'2014-06-05','2014-06-05 02:36:12',0),(4560,112,'2014-06-05','2014-06-05 03:33:20',0),(4561,1,'2014-06-05','2014-06-05 08:51:39',0),(4562,112,'2014-06-05','2014-06-05 09:52:59',0),(4563,112,'2014-06-05','2014-06-05 11:06:40',0),(4564,1,'2014-06-05','2014-06-05 18:31:29',0),(4565,112,'2014-06-05','2014-06-05 21:44:42',0),(4566,1,'2014-06-06','2014-06-06 01:31:19',0),(4567,112,'2014-06-06','2014-06-06 04:14:00',0),(4568,112,'2014-06-06','2014-06-06 04:14:04',0),(4569,133,'2014-06-06','2014-06-06 04:14:09',0),(4570,112,'2014-06-06','2014-06-06 04:14:14',0),(4571,112,'2014-06-06','2014-06-06 04:14:19',0),(4572,1,'2014-06-06','2014-06-06 09:55:13',0),(4573,112,'2014-06-06','2014-06-06 10:36:48',0),(4574,133,'2014-06-06','2014-06-06 12:27:49',0),(4575,133,'2014-06-06','2014-06-06 12:27:50',0),(4576,1,'2014-06-06','2014-06-06 17:15:33',0),(4577,112,'2014-06-06','2014-06-06 18:16:38',0),(4578,133,'2014-06-06','2014-06-06 18:37:28',0),(4579,133,'2014-06-06','2014-06-06 18:37:29',0),(4580,133,'2014-06-06','2014-06-06 18:37:29',0),(4581,133,'2014-06-06','2014-06-06 18:37:29',0),(4582,112,'2014-06-06','2014-06-06 18:49:32',0),(4583,112,'2014-06-06','2014-06-06 21:06:39',0),(4584,112,'2014-06-06','2014-06-06 22:21:28',0),(4585,1,'2014-06-07','2014-06-07 03:03:11',0),(4586,133,'2014-06-07','2014-06-07 05:30:27',0),(4587,112,'2014-06-07','2014-06-07 07:03:09',0),(4588,112,'2014-06-07','2014-06-07 08:00:55',0),(4589,112,'2014-06-07','2014-06-07 08:39:49',0),(4590,112,'2014-06-07','2014-06-07 08:39:52',0),(4591,1,'2014-06-07','2014-06-07 12:40:41',0),(4592,112,'2014-06-07','2014-06-07 14:07:27',0),(4593,133,'2014-06-07','2014-06-07 14:41:25',0),(4594,120,'2014-06-07','2014-06-07 17:30:09',0),(4595,112,'2014-06-07','2014-06-07 21:30:53',0),(4596,1,'2014-06-08','2014-06-07 23:06:36',0),(4597,112,'2014-06-08','2014-06-08 01:13:26',0),(4598,112,'2014-06-08','2014-06-08 01:13:26',0),(4599,133,'2014-06-08','2014-06-08 01:13:26',0),(4600,112,'2014-06-08','2014-06-08 03:03:29',0),(4601,1,'2014-06-08','2014-06-08 08:36:40',0),(4602,1,'2014-06-08','2014-06-08 16:41:40',0),(4603,1,'2014-06-09','2014-06-08 23:12:08',0),(4604,1,'2014-06-09','2014-06-08 23:12:08',0),(4605,112,'2014-06-09','2014-06-09 05:05:19',0),(4606,1,'2014-06-09','2014-06-09 05:47:21',0),(4607,133,'2014-06-09','2014-06-09 08:28:22',0),(4608,133,'2014-06-09','2014-06-09 08:28:23',0),(4609,112,'2014-06-09','2014-06-09 08:32:35',0),(4610,1,'2014-06-09','2014-06-09 12:35:10',0),(4611,112,'2014-06-09','2014-06-09 14:26:39',0),(4612,112,'2014-06-09','2014-06-09 14:51:38',0),(4613,133,'2014-06-09','2014-06-09 15:30:30',0),(4614,133,'2014-06-09','2014-06-09 15:30:30',0),(4615,112,'2014-06-09','2014-06-09 15:31:06',0),(4616,112,'2014-06-09','2014-06-09 15:31:07',0),(4617,112,'2014-06-09','2014-06-09 15:31:43',0),(4618,112,'2014-06-09','2014-06-09 18:35:35',0),(4619,1,'2014-06-09','2014-06-09 19:12:03',0),(4620,112,'2014-06-09','2014-06-09 20:46:39',0),(4621,1,'2014-06-10','2014-06-10 02:22:05',0),(4622,120,'2014-06-10','2014-06-10 07:00:50',0),(4623,1,'2014-06-10','2014-06-10 09:22:55',0),(4624,120,'2014-06-10','2014-06-10 16:21:21',0),(4625,133,'2014-06-10','2014-06-10 16:21:25',0),(4626,1,'2014-06-10','2014-06-10 16:21:58',0),(4627,112,'2014-06-10','2014-06-10 18:56:54',0),(4628,112,'2014-06-10','2014-06-10 19:56:38',0),(4629,112,'2014-06-10','2014-06-10 20:31:39',0),(4630,1,'2014-06-10','2014-06-10 22:28:33',0),(4631,112,'2014-06-10','2014-06-10 22:51:30',0),(4632,112,'2014-06-11','2014-06-10 23:44:03',0),(4633,112,'2014-06-11','2014-06-11 00:16:39',0),(4634,112,'2014-06-11','2014-06-11 01:46:39',0),(4635,1,'2014-06-11','2014-06-11 09:59:09',0),(4636,112,'2014-06-11','2014-06-11 13:45:24',0),(4637,1,'2014-06-11','2014-06-11 17:39:52',0),(4638,133,'2014-06-11','2014-06-11 17:40:44',0),(4639,133,'2014-06-11','2014-06-11 17:40:45',0),(4640,133,'2014-06-11','2014-06-11 19:38:09',0),(4641,1,'2014-06-12','2014-06-12 03:22:57',0),(4642,133,'2014-06-12','2014-06-12 03:23:59',0),(4643,133,'2014-06-12','2014-06-12 03:24:00',0),(4644,133,'2014-06-12','2014-06-12 03:24:00',0),(4645,1,'2014-06-12','2014-06-12 10:10:41',0),(4646,112,'2014-06-12','2014-06-12 10:41:08',0),(4647,112,'2014-06-12','2014-06-12 10:41:40',0),(4648,112,'2014-06-12','2014-06-12 10:41:53',0),(4649,112,'2014-06-12','2014-06-12 10:42:08',0),(4650,133,'2014-06-12','2014-06-12 10:42:21',0),(4651,1,'2014-06-12','2014-06-12 17:42:15',0),(4652,1,'2014-06-12','2014-06-12 17:42:15',0),(4653,133,'2014-06-12','2014-06-12 21:55:02',0),(4654,112,'2014-06-12','2014-06-12 21:55:04',0),(4655,112,'2014-06-12','2014-06-12 21:55:07',0),(4656,112,'2014-06-12','2014-06-12 21:55:10',0),(4657,112,'2014-06-12','2014-06-12 21:55:13',0),(4658,112,'2014-06-12','2014-06-12 21:55:19',0),(4659,112,'2014-06-12','2014-06-12 21:55:22',0),(4660,112,'2014-06-12','2014-06-12 21:55:25',0),(4661,112,'2014-06-12','2014-06-12 21:55:29',0),(4662,1,'2014-06-13','2014-06-13 02:22:52',0),(4663,112,'2014-06-13','2014-06-13 03:04:23',0),(4664,112,'2014-06-13','2014-06-13 03:04:23',0),(4665,112,'2014-06-13','2014-06-13 07:47:33',0),(4666,1,'2014-06-13','2014-06-13 10:39:24',0),(4667,120,'2014-06-13','2014-06-13 13:54:30',0),(4668,112,'2014-06-13','2014-06-13 18:36:27',0),(4669,1,'2014-06-13','2014-06-13 18:47:22',0),(4670,112,'2014-06-14','2014-06-14 01:42:08',0),(4671,1,'2014-06-14','2014-06-14 01:53:21',0),(4672,112,'2014-06-14','2014-06-14 05:49:41',0),(4673,1,'2014-06-14','2014-06-14 08:01:39',0),(4674,112,'2014-06-14','2014-06-14 14:23:08',0),(4675,1,'2014-06-14','2014-06-14 17:21:09',0),(4676,112,'2014-06-14','2014-06-14 17:23:21',0),(4677,112,'2014-06-14','2014-06-14 17:25:31',0),(4678,112,'2014-06-14','2014-06-14 22:01:46',0),(4679,112,'2014-06-15','2014-06-14 23:51:41',0),(4680,1,'2014-06-15','2014-06-15 04:30:39',0),(4681,1,'2014-06-15','2014-06-15 11:42:19',0),(4682,110,'2014-06-15','2014-06-15 14:51:40',0),(4683,110,'2014-06-15','2014-06-15 14:51:47',0),(4684,112,'2014-06-15','2014-06-15 14:51:48',1),(4685,112,'2014-06-15','2014-06-15 14:51:48',1),(4686,106,'2014-06-15','2014-06-15 14:51:49',1),(4687,1,'2014-06-15','2014-06-15 14:51:54',1),(4688,1,'2014-06-15','2014-06-15 14:52:00',1),(4689,1,'2014-06-15','2014-06-15 14:52:40',1),(4690,133,'2014-06-15','2014-06-15 14:52:43',1),(4691,133,'2014-06-15','2014-06-15 14:52:44',1),(4692,110,'2014-06-15','2014-06-15 15:14:52',1),(4693,110,'2014-06-15','2014-06-15 15:15:04',0),(4694,112,'2014-06-15','2014-06-15 15:15:04',1),(4695,1,'2014-06-15','2014-06-15 15:15:11',1),(4696,1,'2014-06-15','2014-06-15 15:15:14',1),(4697,1,'2014-06-15','2014-06-15 15:15:56',1),(4698,110,'2014-06-15','2014-06-15 15:16:01',1),(4699,1,'2014-06-15','2014-06-15 15:16:09',0),(4700,1,'2014-06-16','2014-06-16 00:04:05',0),(4701,112,'2014-06-16','2014-06-16 01:47:50',0),(4702,112,'2014-06-16','2014-06-16 01:47:51',0),(4703,112,'2014-06-16','2014-06-16 01:47:51',0),(4704,112,'2014-06-16','2014-06-16 01:49:00',0),(4705,133,'2014-06-16','2014-06-16 01:50:16',0),(4706,133,'2014-06-16','2014-06-16 01:50:16',0),(4707,133,'2014-06-16','2014-06-16 01:50:16',0),(4708,1,'2014-06-16','2014-06-16 09:18:36',0),(4709,133,'2014-06-16','2014-06-16 10:44:02',0),(4710,133,'2014-06-16','2014-06-16 10:44:03',0),(4711,133,'2014-06-16','2014-06-16 10:44:03',0),(4712,133,'2014-06-16','2014-06-16 10:56:17',0),(4713,1,'2014-06-16','2014-06-16 15:31:54',0),(4714,133,'2014-06-16','2014-06-16 17:24:09',0),(4715,133,'2014-06-16','2014-06-16 17:24:10',0),(4716,112,'2014-06-16','2014-06-16 18:42:17',0),(4717,112,'2014-06-16','2014-06-16 18:42:18',0),(4718,112,'2014-06-16','2014-06-16 18:42:19',0),(4719,112,'2014-06-16','2014-06-16 18:42:19',0),(4720,1,'2014-06-16','2014-06-16 22:57:52',0),(4721,112,'2014-06-16','2014-06-16 22:58:02',0),(4722,112,'2014-06-16','2014-06-16 22:58:02',0),(4723,1,'2014-06-17','2014-06-17 05:32:13',0),(4724,1,'2014-06-17','2014-06-17 05:32:14',0),(4725,133,'2014-06-17','2014-06-17 08:10:14',0),(4726,133,'2014-06-17','2014-06-17 08:10:15',0),(4727,1,'2014-06-17','2014-06-17 12:38:36',0),(4728,133,'2014-06-17','2014-06-17 13:52:18',0),(4729,112,'2014-06-17','2014-06-17 17:15:41',0),(4730,1,'2014-06-17','2014-06-17 18:57:43',0),(4731,133,'2014-06-17','2014-06-17 19:00:18',0),(4732,133,'2014-06-17','2014-06-17 19:00:19',0),(4733,133,'2014-06-17','2014-06-17 19:00:20',0),(4734,112,'2014-06-17','2014-06-17 19:09:35',0),(4735,133,'2014-06-17','2014-06-17 21:03:19',0),(4736,112,'2014-06-18','2014-06-17 23:15:57',0),(4737,120,'2014-06-18','2014-06-18 00:34:04',0),(4738,1,'2014-06-18','2014-06-18 03:55:19',0),(4739,120,'2014-06-18','2014-06-18 04:10:17',0),(4740,112,'2014-06-18','2014-06-18 05:22:32',0),(4741,112,'2014-06-18','2014-06-18 05:22:33',0),(4742,112,'2014-06-18','2014-06-18 05:22:47',0),(4743,112,'2014-06-18','2014-06-18 05:22:48',0),(4744,112,'2014-06-18','2014-06-18 05:22:52',0),(4745,112,'2014-06-18','2014-06-18 05:22:53',0),(4746,112,'2014-06-18','2014-06-18 05:24:07',0),(4747,112,'2014-06-18','2014-06-18 05:24:08',0),(4748,1,'2014-06-18','2014-06-18 10:20:42',0),(4749,1,'2014-06-18','2014-06-18 18:00:55',0),(4750,133,'2014-06-18','2014-06-18 21:39:02',0),(4751,112,'2014-06-18','2014-06-18 21:39:02',0),(4752,112,'2014-06-18','2014-06-18 21:39:03',0),(4753,1,'2014-06-19','2014-06-19 00:12:02',0),(4754,112,'2014-06-19','2014-06-19 02:10:59',0),(4755,1,'2014-06-19','2014-06-19 06:31:52',0),(4756,1,'2014-06-19','2014-06-19 06:31:52',0),(4757,133,'2014-06-19','2014-06-19 09:23:29',0),(4758,133,'2014-06-19','2014-06-19 09:23:30',0),(4759,1,'2014-06-19','2014-06-19 13:32:03',0),(4760,133,'2014-06-19','2014-06-19 14:35:39',0),(4761,133,'2014-06-19','2014-06-19 14:35:39',0),(4762,133,'2014-06-19','2014-06-19 17:43:54',0),(4763,133,'2014-06-19','2014-06-19 19:50:37',0),(4764,112,'2014-06-19','2014-06-19 21:27:04',0),(4765,1,'2014-06-20','2014-06-20 00:40:16',0),(4766,133,'2014-06-20','2014-06-20 03:38:17',0),(4767,112,'2014-06-20','2014-06-20 03:38:18',0),(4768,112,'2014-06-20','2014-06-20 03:38:18',0),(4769,112,'2014-06-20','2014-06-20 08:01:24',0),(4770,120,'2014-06-20','2014-06-20 08:01:24',0),(4771,1,'2014-06-20','2014-06-20 12:37:45',0),(4772,112,'2014-06-20','2014-06-20 13:20:11',0),(4773,112,'2014-06-20','2014-06-20 15:39:27',0),(4774,112,'2014-06-20','2014-06-20 15:39:27',0),(4775,133,'2014-06-20','2014-06-20 15:39:28',0),(4776,1,'2014-06-20','2014-06-20 20:56:40',0),(4777,112,'2014-06-21','2014-06-21 04:42:34',0),(4778,1,'2014-06-21','2014-06-21 05:47:52',0),(4779,1,'2014-06-21','2014-06-21 14:42:31',0),(4780,1,'2014-06-21','2014-06-21 14:42:31',0),(4781,112,'2014-06-21','2014-06-21 15:28:50',0),(4782,112,'2014-06-21','2014-06-21 20:15:20',0),(4783,112,'2014-06-21','2014-06-21 20:15:22',0),(4784,1,'2014-06-21','2014-06-21 21:04:02',0),(4785,112,'2014-06-21','2014-06-21 22:26:33',0),(4786,112,'2014-06-21','2014-06-21 22:26:34',0),(4787,112,'2014-06-21','2014-06-21 22:26:50',0),(4788,112,'2014-06-21','2014-06-21 22:26:50',0),(4789,1,'2014-06-22','2014-06-22 03:40:29',0),(4790,112,'2014-06-22','2014-06-22 05:12:56',0),(4791,112,'2014-06-22','2014-06-22 05:22:46',0),(4792,112,'2014-06-22','2014-06-22 08:37:13',0),(4793,112,'2014-06-22','2014-06-22 08:44:09',0),(4794,1,'2014-06-22','2014-06-22 10:27:07',0),(4795,112,'2014-06-22','2014-06-22 12:41:38',0),(4796,112,'2014-06-22','2014-06-22 14:58:35',0),(4797,112,'2014-06-22','2014-06-22 16:02:01',0),(4798,1,'2014-06-22','2014-06-22 17:26:00',0),(4799,112,'2014-06-22','2014-06-22 19:21:38',0),(4800,133,'2014-06-22','2014-06-22 19:34:09',0),(4801,133,'2014-06-22','2014-06-22 19:34:11',0),(4802,1,'2014-06-23','2014-06-23 00:56:43',0),(4803,1,'2014-06-23','2014-06-23 09:39:11',0),(4804,133,'2014-06-23','2014-06-23 09:39:12',0),(4805,112,'2014-06-23','2014-06-23 09:39:14',0),(4806,112,'2014-06-23','2014-06-23 09:39:15',0),(4807,112,'2014-06-23','2014-06-23 09:39:16',0),(4808,112,'2014-06-23','2014-06-23 09:39:18',0),(4809,1,'2014-06-23','2014-06-23 16:17:57',0),(4810,112,'2014-06-24','2014-06-23 23:38:09',0),(4811,1,'2014-06-24','2014-06-24 00:38:17',0),(4812,112,'2014-06-24','2014-06-24 00:38:24',0),(4813,112,'2014-06-24','2014-06-24 00:38:25',0),(4814,133,'2014-06-24','2014-06-24 00:38:27',0),(4815,112,'2014-06-24','2014-06-24 00:38:32',0),(4816,112,'2014-06-24','2014-06-24 00:38:37',0),(4817,133,'2014-06-24','2014-06-24 04:36:32',0),(4818,133,'2014-06-24','2014-06-24 04:36:32',0),(4819,1,'2014-06-24','2014-06-24 08:51:06',0),(4820,133,'2014-06-24','2014-06-24 11:12:05',0),(4821,112,'2014-06-24','2014-06-24 11:12:05',0),(4822,112,'2014-06-24','2014-06-24 11:12:05',0),(4823,120,'2014-06-24','2014-06-24 11:17:35',0),(4824,133,'2014-06-24','2014-06-24 12:40:02',0),(4825,120,'2014-06-24','2014-06-24 12:46:24',0),(4826,112,'2014-06-24','2014-06-24 14:42:47',0),(4827,112,'2014-06-24','2014-06-24 14:42:48',0),(4828,1,'2014-06-24','2014-06-24 15:05:21',0),(4829,112,'2014-06-24','2014-06-24 18:56:38',0),(4830,112,'2014-06-24','2014-06-24 20:11:39',0),(4831,112,'2014-06-24','2014-06-24 20:26:50',0),(4832,1,'2014-06-24','2014-06-24 22:49:43',0),(4833,112,'2014-06-25','2014-06-25 00:37:06',0),(4834,1,'2014-06-25','2014-06-25 06:24:17',0),(4835,1,'2014-06-25','2014-06-25 06:24:17',0),(4836,133,'2014-06-25','2014-06-25 10:24:53',0),(4837,1,'2014-06-25','2014-06-25 13:35:00',0),(4838,112,'2014-06-25','2014-06-25 22:14:07',0),(4839,112,'2014-06-25','2014-06-25 22:23:34',0),(4840,112,'2014-06-25','2014-06-25 22:23:39',0),(4841,133,'2014-06-25','2014-06-25 22:23:44',0),(4842,1,'2014-06-25','2014-06-25 22:37:06',0),(4843,1,'2014-06-26','2014-06-26 07:35:57',0),(4844,112,'2014-06-26','2014-06-26 08:47:51',0),(4845,112,'2014-06-26','2014-06-26 12:46:39',0),(4846,1,'2014-06-26','2014-06-26 13:47:15',0),(4847,112,'2014-06-26','2014-06-26 16:11:18',0),(4848,133,'2014-06-26','2014-06-26 17:18:42',0),(4849,112,'2014-06-26','2014-06-26 17:18:43',0),(4850,112,'2014-06-26','2014-06-26 17:18:44',0),(4851,133,'2014-06-26','2014-06-26 17:18:46',0),(4852,112,'2014-06-26','2014-06-26 17:18:46',0),(4853,112,'2014-06-26','2014-06-26 17:18:47',0),(4854,112,'2014-06-26','2014-06-26 17:18:48',0),(4855,112,'2014-06-26','2014-06-26 17:18:49',0),(4856,112,'2014-06-26','2014-06-26 17:18:49',0),(4857,112,'2014-06-26','2014-06-26 17:56:39',0),(4858,1,'2014-06-26','2014-06-26 22:31:28',0),(4859,112,'2014-06-27','2014-06-27 04:24:43',0),(4860,1,'2014-06-27','2014-06-27 05:16:00',0),(4861,133,'2014-06-27','2014-06-27 05:48:52',0),(4862,133,'2014-06-27','2014-06-27 05:49:01',0),(4863,133,'2014-06-27','2014-06-27 05:49:02',0),(4864,112,'2014-06-27','2014-06-27 07:34:28',0),(4865,112,'2014-06-27','2014-06-27 09:53:33',0),(4866,1,'2014-06-27','2014-06-27 11:41:38',0),(4867,112,'2014-06-27','2014-06-27 12:04:28',0),(4868,120,'2014-06-27','2014-06-27 13:34:10',0),(4869,112,'2014-06-27','2014-06-27 13:34:15',0),(4870,133,'2014-06-27','2014-06-27 13:35:03',0),(4871,133,'2014-06-27','2014-06-27 15:19:20',0),(4872,112,'2014-06-27','2014-06-27 16:31:34',0),(4873,112,'2014-06-27','2014-06-27 16:31:34',0),(4874,1,'2014-06-27','2014-06-27 20:34:54',0),(4875,112,'2014-06-27','2014-06-27 21:16:54',0),(4876,112,'2014-06-28','2014-06-28 00:29:08',0),(4877,112,'2014-06-28','2014-06-28 00:56:39',0),(4878,133,'2014-06-28','2014-06-28 03:12:41',0),(4879,112,'2014-06-28','2014-06-28 03:19:05',0),(4880,112,'2014-06-28','2014-06-28 03:46:39',0),(4881,1,'2014-06-28','2014-06-28 04:50:13',0),(4882,112,'2014-06-28','2014-06-28 05:46:39',0),(4883,112,'2014-06-28','2014-06-28 06:46:41',0),(4884,112,'2014-06-28','2014-06-28 07:43:13',0),(4885,112,'2014-06-28','2014-06-28 09:42:46',0),(4886,1,'2014-06-28','2014-06-28 12:40:57',0),(4887,133,'2014-06-28','2014-06-28 15:26:47',0),(4888,112,'2014-06-28','2014-06-28 15:26:48',0),(4889,112,'2014-06-28','2014-06-28 15:26:49',0),(4890,133,'2014-06-28','2014-06-28 15:26:58',0),(4891,133,'2014-06-28','2014-06-28 15:26:58',0),(4892,112,'2014-06-28','2014-06-28 15:26:59',0),(4893,112,'2014-06-28','2014-06-28 15:27:00',0),(4894,112,'2014-06-28','2014-06-28 15:27:03',0),(4895,112,'2014-06-28','2014-06-28 15:27:03',0),(4896,112,'2014-06-28','2014-06-28 15:27:04',0),(4897,112,'2014-06-28','2014-06-28 15:27:10',0),(4898,112,'2014-06-28','2014-06-28 16:40:43',0),(4899,112,'2014-06-28','2014-06-28 18:57:41',0),(4900,1,'2014-06-28','2014-06-28 19:11:47',0),(4901,120,'2014-06-28','2014-06-28 20:46:21',0),(4902,112,'2014-06-29','2014-06-29 04:25:24',0),(4903,1,'2014-06-29','2014-06-29 04:35:36',0),(4904,112,'2014-06-29','2014-06-29 05:36:39',0),(4905,112,'2014-06-29','2014-06-29 07:33:16',0),(4906,133,'2014-06-29','2014-06-29 10:04:25',0),(4907,1,'2014-06-29','2014-06-29 11:06:57',0),(4908,112,'2014-06-29','2014-06-29 12:51:40',0),(4909,133,'2014-06-29','2014-06-29 15:11:04',0),(4910,112,'2014-06-29','2014-06-29 15:11:13',0),(4911,112,'2014-06-29','2014-06-29 15:11:20',0),(4912,112,'2014-06-29','2014-06-29 15:11:38',0),(4913,112,'2014-06-29','2014-06-29 15:12:45',0),(4914,112,'2014-06-29','2014-06-29 15:12:50',0),(4915,112,'2014-06-29','2014-06-29 15:12:58',0),(4916,112,'2014-06-29','2014-06-29 15:13:06',0),(4917,1,'2014-06-29','2014-06-29 19:51:54',0),(4918,133,'2014-06-29','2014-06-29 19:52:35',0),(4919,133,'2014-06-29','2014-06-29 19:52:36',0),(4920,1,'2014-06-30','2014-06-30 06:41:01',0),(4921,1,'2014-06-30','2014-06-30 12:47:33',0),(4922,112,'2014-06-30','2014-06-30 14:16:49',0),(4923,112,'2014-06-30','2014-06-30 17:22:12',0),(4924,112,'2014-06-30','2014-06-30 17:22:12',0),(4925,133,'2014-06-30','2014-06-30 17:22:12',0),(4926,1,'2014-06-30','2014-06-30 20:51:25',0),(4927,1,'2014-07-01','2014-07-01 03:49:41',0),(4928,1,'2014-07-01','2014-07-01 10:03:37',0),(4929,112,'2014-07-01','2014-07-01 10:06:27',0),(4930,133,'2014-07-01','2014-07-01 14:13:35',0),(4931,1,'2014-07-01','2014-07-01 16:20:36',0),(4932,1,'2014-07-02','2014-07-01 23:01:10',0),(4933,1,'2014-07-02','2014-07-02 06:45:13',0),(4934,133,'2014-07-02','2014-07-02 06:45:25',0),(4935,133,'2014-07-02','2014-07-02 06:45:26',0),(4936,133,'2014-07-02','2014-07-02 06:45:29',0),(4937,1,'2014-07-02','2014-07-02 13:01:28',0),(4938,1,'2014-07-02','2014-07-02 20:15:36',0),(4939,112,'2014-07-02','2014-07-02 20:56:33',0),(4940,112,'2014-07-02','2014-07-02 20:56:34',0),(4941,133,'2014-07-02','2014-07-02 22:47:45',0),(4942,133,'2014-07-02','2014-07-02 22:47:45',0),(4943,112,'2014-07-03','2014-07-03 02:53:07',0),(4944,1,'2014-07-03','2014-07-03 07:00:51',0),(4945,112,'2014-07-03','2014-07-03 10:24:08',0),(4946,1,'2014-07-03','2014-07-03 13:59:36',0),(4947,112,'2014-07-03','2014-07-03 18:45:32',0),(4948,1,'2014-07-03','2014-07-03 21:57:17',0),(4949,1,'2014-07-04','2014-07-04 04:22:34',0),(4950,112,'2014-07-04','2014-07-04 05:12:41',0),(4951,112,'2014-07-04','2014-07-04 05:12:41',0),(4952,133,'2014-07-04','2014-07-04 05:12:41',0),(4953,133,'2014-07-04','2014-07-04 09:33:00',0),(4954,1,'2014-07-04','2014-07-04 10:39:19',0),(4955,112,'2014-07-04','2014-07-04 11:16:08',0),(4956,133,'2014-07-04','2014-07-04 14:22:19',0),(4957,112,'2014-07-04','2014-07-04 15:30:02',0),(4958,1,'2014-07-04','2014-07-04 17:37:53',0),(4959,112,'2014-07-04','2014-07-04 19:06:40',0),(4960,112,'2014-07-04','2014-07-04 20:47:05',0),(4961,133,'2014-07-05','2014-07-05 00:09:03',0),(4962,1,'2014-07-05','2014-07-05 01:09:53',0),(4963,112,'2014-07-05','2014-07-05 05:11:56',0),(4964,112,'2014-07-05','2014-07-05 05:11:56',0),(4965,112,'2014-07-05','2014-07-05 05:11:57',0),(4966,112,'2014-07-05','2014-07-05 05:11:57',0),(4967,112,'2014-07-05','2014-07-05 06:24:35',0),(4968,112,'2014-07-05','2014-07-05 06:39:09',0),(4969,1,'2014-07-05','2014-07-05 08:19:50',0),(4970,112,'2014-07-05','2014-07-05 10:54:40',0),(4971,112,'2014-07-05','2014-07-05 14:08:44',0),(4972,112,'2014-07-05','2014-07-05 15:11:39',0),(4973,1,'2014-07-05','2014-07-05 16:40:35',0),(4974,112,'2014-07-05','2014-07-05 17:16:46',0),(4975,112,'2014-07-05','2014-07-05 17:19:42',0),(4976,133,'2014-07-05','2014-07-05 17:22:37',0),(4977,112,'2014-07-05','2014-07-05 19:00:25',0),(4978,1,'2014-07-06','2014-07-05 23:38:39',0),(4979,112,'2014-07-06','2014-07-06 03:25:18',0),(4980,1,'2014-07-06','2014-07-06 05:57:34',0),(4981,133,'2014-07-06','2014-07-06 07:12:27',0),(4982,133,'2014-07-06','2014-07-06 07:12:28',0),(4983,133,'2014-07-06','2014-07-06 07:12:28',0),(4984,133,'2014-07-06','2014-07-06 08:01:15',0),(4985,112,'2014-07-06','2014-07-06 08:26:40',0),(4986,112,'2014-07-06','2014-07-06 10:32:59',0),(4987,112,'2014-07-06','2014-07-06 10:42:28',0),(4988,1,'2014-07-06','2014-07-06 13:58:15',0),(4989,120,'2014-07-06','2014-07-06 14:24:19',0),(4990,112,'2014-07-06','2014-07-06 17:16:38',0),(4991,112,'2014-07-06','2014-07-06 22:18:43',0),(4992,112,'2014-07-06','2014-07-06 22:21:39',0),(4993,1,'2014-07-06','2014-07-06 22:22:42',0),(4994,112,'2014-07-06','2014-07-06 22:34:13',0),(4995,120,'2014-07-07','2014-07-07 01:45:45',0),(4996,112,'2014-07-07','2014-07-07 02:30:50',0),(4997,133,'2014-07-07','2014-07-07 02:30:50',0),(4998,112,'2014-07-07','2014-07-07 02:30:50',0),(4999,1,'2014-07-07','2014-07-07 04:39:49',0),(5000,120,'2014-07-07','2014-07-07 05:23:01',0),(5001,133,'2014-07-07','2014-07-07 05:23:35',0),(5002,112,'2014-07-07','2014-07-07 10:30:23',0),(5003,1,'2014-07-07','2014-07-07 10:41:16',0),(5004,133,'2014-07-07','2014-07-07 14:42:49',0),(5005,133,'2014-07-07','2014-07-07 14:42:49',0),(5006,133,'2014-07-07','2014-07-07 15:09:18',0),(5007,1,'2014-07-07','2014-07-07 16:58:46',0),(5008,112,'2014-07-07','2014-07-07 18:09:59',0),(5009,112,'2014-07-07','2014-07-07 18:57:08',0),(5010,112,'2014-07-07','2014-07-07 18:57:10',0),(5011,112,'2014-07-08','2014-07-07 23:26:57',0),(5012,1,'2014-07-08','2014-07-07 23:49:43',0),(5013,133,'2014-07-08','2014-07-07 23:49:43',0),(5014,112,'2014-07-08','2014-07-08 01:04:04',0),(5015,112,'2014-07-08','2014-07-08 01:04:05',0),(5016,112,'2014-07-08','2014-07-08 01:04:05',0),(5017,112,'2014-07-08','2014-07-08 01:04:06',0),(5018,133,'2014-07-08','2014-07-08 01:06:09',0),(5019,1,'2014-07-08','2014-07-08 06:37:34',0),(5020,133,'2014-07-08','2014-07-08 06:37:34',0),(5021,133,'2014-07-08','2014-07-08 07:02:54',0),(5022,112,'2014-07-08','2014-07-08 10:45:57',0),(5023,1,'2014-07-08','2014-07-08 12:39:32',0),(5024,133,'2014-07-08','2014-07-08 14:33:13',0),(5025,133,'2014-07-08','2014-07-08 14:33:14',0),(5026,133,'2014-07-08','2014-07-08 14:33:21',0),(5027,112,'2014-07-08','2014-07-08 15:30:47',0),(5028,112,'2014-07-08','2014-07-08 15:33:41',0),(5029,112,'2014-07-08','2014-07-08 15:38:01',0),(5030,112,'2014-07-08','2014-07-08 15:38:02',0),(5031,133,'2014-07-08','2014-07-08 15:38:16',0),(5032,1,'2014-07-08','2014-07-08 19:24:06',0),(5033,112,'2014-07-09','2014-07-09 01:30:06',0),(5034,133,'2014-07-09','2014-07-09 02:28:47',0),(5035,1,'2014-07-09','2014-07-09 03:02:47',0),(5036,112,'2014-07-09','2014-07-09 03:48:52',0),(5037,120,'2014-07-09','2014-07-09 03:51:47',0),(5038,112,'2014-07-09','2014-07-09 03:54:41',0),(5039,112,'2014-07-09','2014-07-09 03:57:36',0),(5040,120,'2014-07-09','2014-07-09 04:00:31',0),(5041,112,'2014-07-09','2014-07-09 06:35:59',0),(5042,112,'2014-07-09','2014-07-09 06:36:00',0),(5043,112,'2014-07-09','2014-07-09 06:36:06',0),(5044,112,'2014-07-09','2014-07-09 06:36:10',0),(5045,112,'2014-07-09','2014-07-09 08:07:53',0),(5046,112,'2014-07-09','2014-07-09 08:13:42',0),(5047,133,'2014-07-09','2014-07-09 08:33:38',0),(5048,133,'2014-07-09','2014-07-09 08:33:45',0),(5049,1,'2014-07-09','2014-07-09 09:39:14',0),(5050,112,'2014-07-09','2014-07-09 09:39:14',0),(5051,112,'2014-07-09','2014-07-09 09:39:15',0),(5052,112,'2014-07-09','2014-07-09 09:39:15',0),(5053,112,'2014-07-09','2014-07-09 09:39:15',0),(5054,112,'2014-07-09','2014-07-09 14:59:07',0),(5055,1,'2014-07-09','2014-07-09 15:47:51',0),(5056,1,'2014-07-09','2014-07-09 22:13:54',0),(5057,112,'2014-07-09','2014-07-09 22:43:14',0),(5058,133,'2014-07-09','2014-07-09 22:43:14',0),(5059,112,'2014-07-09','2014-07-09 22:43:14',0),(5060,110,'2014-07-10','2014-07-09 23:33:48',0),(5061,110,'2014-07-10','2014-07-09 23:33:51',0),(5062,112,'2014-07-10','2014-07-09 23:33:52',1),(5063,112,'2014-07-10','2014-07-09 23:33:52',1),(5064,106,'2014-07-10','2014-07-09 23:33:53',1),(5065,1,'2014-07-10','2014-07-09 23:34:02',1),(5066,1,'2014-07-10','2014-07-09 23:34:04',1),(5067,1,'2014-07-10','2014-07-10 00:04:05',1),(5068,1,'2014-07-10','2014-07-10 00:04:08',1),(5069,1,'2014-07-10','2014-07-10 00:16:46',0),(5070,112,'2014-07-10','2014-07-10 02:10:04',0),(5071,1,'2014-07-10','2014-07-10 02:11:57',1),(5072,133,'2014-07-10','2014-07-10 02:11:59',1),(5073,133,'2014-07-10','2014-07-10 02:12:00',1),(5074,1,'2014-07-10','2014-07-10 02:12:01',1),(5075,1,'2014-07-10','2014-07-10 02:12:03',1),(5076,110,'2014-07-10','2014-07-10 02:12:06',1),(5077,112,'2014-07-10','2014-07-10 03:35:05',0),(5078,1,'2014-07-10','2014-07-10 06:56:45',0),(5079,112,'2014-07-10','2014-07-10 08:10:04',0),(5080,112,'2014-07-10','2014-07-10 08:46:21',0),(5081,112,'2014-07-10','2014-07-10 09:15:06',0),(5082,133,'2014-07-10','2014-07-10 12:26:07',0),(5083,133,'2014-07-10','2014-07-10 12:26:08',0),(5084,1,'2014-07-10','2014-07-10 15:19:03',0),(5085,112,'2014-07-11','2014-07-11 02:03:05',0),(5086,1,'2014-07-11','2014-07-11 02:49:03',0),(5087,112,'2014-07-11','2014-07-11 04:06:22',0),(5088,112,'2014-07-11','2014-07-11 05:58:14',0),(5089,133,'2014-07-11','2014-07-11 06:53:27',0),(5090,112,'2014-07-11','2014-07-11 06:53:56',0),(5091,112,'2014-07-11','2014-07-11 06:54:00',0),(5092,1,'2014-07-11','2014-07-11 09:34:15',0),(5093,1,'2014-07-11','2014-07-11 17:26:42',0),(5094,133,'2014-07-11','2014-07-11 19:11:38',0),(5095,1,'2014-07-12','2014-07-11 23:30:37',0),(5096,1,'2014-07-12','2014-07-12 07:37:06',0),(5097,1,'2014-07-12','2014-07-12 07:37:07',0),(5098,120,'2014-07-12','2014-07-12 08:11:14',0),(5099,1,'2014-07-12','2014-07-12 16:11:51',0),(5100,112,'2014-07-12','2014-07-12 16:42:02',0),(5101,112,'2014-07-12','2014-07-12 21:01:20',0),(5102,112,'2014-07-12','2014-07-12 21:01:20',0),(5103,133,'2014-07-12','2014-07-12 21:01:20',0),(5104,112,'2014-07-12','2014-07-12 22:13:42',0),(5105,1,'2014-07-13','2014-07-13 01:37:36',0),(5106,112,'2014-07-13','2014-07-13 06:15:26',0),(5107,112,'2014-07-13','2014-07-13 09:59:37',0),(5108,1,'2014-07-13','2014-07-13 10:08:47',0),(5109,112,'2014-07-13','2014-07-13 12:47:28',0),(5110,1,'2014-07-13','2014-07-13 16:37:44',0),(5111,1,'2014-07-13','2014-07-13 22:48:13',0),(5112,133,'2014-07-14','2014-07-14 00:50:38',0),(5113,133,'2014-07-14','2014-07-14 00:50:38',0),(5114,110,'2014-07-14','2014-07-14 01:03:54',0),(5115,110,'2014-07-14','2014-07-14 01:04:05',0),(5116,112,'2014-07-14','2014-07-14 01:04:06',1),(5117,112,'2014-07-14','2014-07-14 01:04:07',1),(5118,106,'2014-07-14','2014-07-14 01:04:07',1),(5119,1,'2014-07-14','2014-07-14 01:04:12',1),(5120,1,'2014-07-14','2014-07-14 01:04:16',1),(5121,1,'2014-07-14','2014-07-14 01:07:26',1),(5122,1,'2014-07-14','2014-07-14 01:15:23',1),(5123,1,'2014-07-14','2014-07-14 01:19:21',0),(5124,112,'2014-07-14','2014-07-14 04:20:19',0),(5125,1,'2014-07-14','2014-07-14 07:44:18',0),(5126,120,'2014-07-14','2014-07-14 08:48:15',0),(5127,133,'2014-07-14','2014-07-14 09:05:56',0),(5128,133,'2014-07-14','2014-07-14 09:05:56',0),(5129,112,'2014-07-14','2014-07-14 15:07:38',0),(5130,112,'2014-07-14','2014-07-14 16:37:59',0),(5131,1,'2014-07-14','2014-07-14 16:59:55',0),(5132,133,'2014-07-14','2014-07-14 18:52:33',0),(5133,133,'2014-07-14','2014-07-14 18:52:40',0),(5134,1,'2014-07-15','2014-07-14 23:27:52',0),(5135,112,'2014-07-15','2014-07-15 08:17:15',0),(5136,1,'2014-07-15','2014-07-15 08:41:04',0),(5137,112,'2014-07-15','2014-07-15 08:46:16',0),(5138,112,'2014-07-15','2014-07-15 09:01:14',0),(5139,112,'2014-07-15','2014-07-15 09:21:36',0),(5140,133,'2014-07-15','2014-07-15 09:40:49',0),(5141,112,'2014-07-15','2014-07-15 09:40:50',0),(5142,112,'2014-07-15','2014-07-15 09:41:06',0),(5143,133,'2014-07-15','2014-07-15 09:41:34',0),(5144,133,'2014-07-15','2014-07-15 09:41:34',0),(5145,112,'2014-07-15','2014-07-15 09:41:44',0),(5146,112,'2014-07-15','2014-07-15 09:41:50',0),(5147,112,'2014-07-15','2014-07-15 09:42:06',0),(5148,112,'2014-07-15','2014-07-15 09:42:21',0),(5149,112,'2014-07-15','2014-07-15 09:42:32',0),(5150,112,'2014-07-15','2014-07-15 09:42:42',0),(5151,112,'2014-07-15','2014-07-15 13:08:27',0),(5152,1,'2014-07-15','2014-07-15 16:23:27',0),(5153,133,'2014-07-15','2014-07-15 17:44:51',0),(5154,133,'2014-07-15','2014-07-15 17:44:52',0),(5155,112,'2014-07-15','2014-07-15 18:17:14',0),(5156,133,'2014-07-15','2014-07-15 18:59:06',0),(5157,133,'2014-07-15','2014-07-15 19:29:43',0),(5158,112,'2014-07-15','2014-07-15 19:57:39',0),(5159,1,'2014-07-16','2014-07-15 23:23:05',0),(5160,112,'2014-07-16','2014-07-15 23:34:41',0),(5161,112,'2014-07-16','2014-07-15 23:34:41',0),(5162,133,'2014-07-16','2014-07-16 04:57:41',0),(5163,112,'2014-07-16','2014-07-16 05:15:03',0),(5164,1,'2014-07-16','2014-07-16 06:52:44',0),(5165,112,'2014-07-16','2014-07-16 09:15:04',0),(5166,1,'2014-07-16','2014-07-16 14:22:40',0),(5167,112,'2014-07-16','2014-07-16 14:23:31',0),(5168,133,'2014-07-16','2014-07-16 18:18:12',0),(5169,1,'2014-07-16','2014-07-16 20:40:10',0),(5170,112,'2014-07-17','2014-07-17 00:44:22',0),(5171,1,'2014-07-17','2014-07-17 03:06:43',0),(5172,112,'2014-07-17','2014-07-17 03:31:36',0),(5173,112,'2014-07-17','2014-07-17 05:13:27',0),(5174,1,'2014-07-17','2014-07-17 09:51:37',0),(5175,133,'2014-07-17','2014-07-17 11:49:12',0),(5176,133,'2014-07-17','2014-07-17 11:49:12',0),(5177,133,'2014-07-17','2014-07-17 11:51:10',0),(5178,112,'2014-07-17','2014-07-17 14:57:51',0),(5179,120,'2014-07-17','2014-07-17 15:08:06',0),(5180,1,'2014-07-17','2014-07-17 17:05:49',0),(5181,133,'2014-07-17','2014-07-17 18:44:10',0),(5182,120,'2014-07-17','2014-07-17 19:53:42',0),(5183,1,'2014-07-18','2014-07-18 00:40:57',0),(5184,133,'2014-07-18','2014-07-18 01:25:36',0),(5185,112,'2014-07-18','2014-07-18 01:25:37',0),(5186,112,'2014-07-18','2014-07-18 01:25:37',0),(5187,112,'2014-07-18','2014-07-18 01:25:38',0),(5188,112,'2014-07-18','2014-07-18 01:25:39',0),(5189,133,'2014-07-18','2014-07-18 05:19:33',0),(5190,1,'2014-07-18','2014-07-18 06:42:55',0),(5191,112,'2014-07-18','2014-07-18 09:59:52',0),(5192,133,'2014-07-18','2014-07-18 11:44:31',0),(5193,1,'2014-07-18','2014-07-18 12:59:33',0),(5194,1,'2014-07-18','2014-07-18 20:35:55',0),(5195,1,'2014-07-19','2014-07-19 03:07:57',0),(5196,112,'2014-07-19','2014-07-19 03:08:13',0),(5197,112,'2014-07-19','2014-07-19 03:08:13',0),(5198,133,'2014-07-19','2014-07-19 03:08:13',0),(5199,1,'2014-07-19','2014-07-19 11:31:29',0),(5200,133,'2014-07-19','2014-07-19 13:01:31',0),(5201,1,'2014-07-19','2014-07-19 17:34:10',0),(5202,112,'2014-07-19','2014-07-19 18:50:04',0),(5203,120,'2014-07-19','2014-07-19 19:22:51',0),(5204,133,'2014-07-19','2014-07-19 20:01:23',0),(5205,133,'2014-07-19','2014-07-19 20:01:24',0),(5206,112,'2014-07-19','2014-07-19 20:44:22',0),(5207,1,'2014-07-20','2014-07-20 00:40:58',0),(5208,112,'2014-07-20','2014-07-20 00:41:01',0),(5209,112,'2014-07-20','2014-07-20 00:41:03',0),(5210,112,'2014-07-20','2014-07-20 00:41:04',0),(5211,112,'2014-07-20','2014-07-20 00:41:05',0),(5212,133,'2014-07-20','2014-07-20 01:12:07',0),(5213,112,'2014-07-20','2014-07-20 01:59:47',0),(5214,1,'2014-07-20','2014-07-20 08:30:30',0),(5215,112,'2014-07-20','2014-07-20 08:31:21',0),(5216,112,'2014-07-20','2014-07-20 10:20:14',0),(5217,112,'2014-07-20','2014-07-20 14:30:29',0),(5218,112,'2014-07-20','2014-07-20 14:46:09',0),(5219,1,'2014-07-20','2014-07-20 15:14:27',0),(5220,112,'2014-07-20','2014-07-20 15:55:24',0),(5221,133,'2014-07-20','2014-07-20 21:58:04',0),(5222,112,'2014-07-20','2014-07-20 21:58:04',0),(5223,120,'2014-07-20','2014-07-20 22:00:47',0),(5224,112,'2014-07-20','2014-07-20 22:59:35',0),(5225,1,'2014-07-21','2014-07-20 23:26:53',0),(5226,133,'2014-07-21','2014-07-21 04:12:03',0),(5227,133,'2014-07-21','2014-07-21 04:12:04',0),(5228,133,'2014-07-21','2014-07-21 04:12:57',0),(5229,1,'2014-07-21','2014-07-21 05:47:35',0),(5230,112,'2014-07-21','2014-07-21 06:33:42',0),(5231,1,'2014-07-21','2014-07-21 12:52:46',0),(5232,133,'2014-07-21','2014-07-21 13:34:40',0),(5233,133,'2014-07-21','2014-07-21 13:34:40',0),(5234,133,'2014-07-21','2014-07-21 13:34:41',0),(5235,112,'2014-07-21','2014-07-21 14:16:23',0),(5236,112,'2014-07-21','2014-07-21 14:16:24',0),(5237,133,'2014-07-21','2014-07-21 19:29:17',0),(5238,112,'2014-07-21','2014-07-21 20:17:39',0),(5239,112,'2014-07-21','2014-07-21 20:17:40',0),(5240,120,'2014-07-21','2014-07-21 20:30:48',0),(5241,133,'2014-07-21','2014-07-21 21:27:27',0),(5242,133,'2014-07-21','2014-07-21 21:40:20',0),(5243,1,'2014-07-21','2014-07-21 21:49:41',0),(5244,112,'2014-07-22','2014-07-22 00:12:54',0),(5245,1,'2014-07-22','2014-07-22 04:18:32',0),(5246,133,'2014-07-22','2014-07-22 08:49:31',0),(5247,133,'2014-07-22','2014-07-22 08:49:32',0),(5248,1,'2014-07-22','2014-07-22 10:24:01',0),(5249,112,'2014-07-22','2014-07-22 10:24:06',0),(5250,112,'2014-07-22','2014-07-22 10:24:06',0),(5251,133,'2014-07-22','2014-07-22 10:24:06',0),(5252,133,'2014-07-22','2014-07-22 12:57:17',0),(5253,112,'2014-07-22','2014-07-22 16:04:22',0),(5254,112,'2014-07-22','2014-07-22 16:04:22',0),(5255,112,'2014-07-22','2014-07-22 16:04:42',0),(5256,112,'2014-07-22','2014-07-22 16:04:42',0),(5257,1,'2014-07-22','2014-07-22 16:34:29',0),(5258,112,'2014-07-22','2014-07-22 21:50:39',0),(5259,1,'2014-07-23','2014-07-23 01:16:32',0),(5260,1,'2014-07-23','2014-07-23 07:33:44',0),(5261,112,'2014-07-23','2014-07-23 08:52:35',0),(5262,112,'2014-07-23','2014-07-23 11:02:37',0),(5263,133,'2014-07-23','2014-07-23 14:06:36',0),(5264,133,'2014-07-23','2014-07-23 14:07:38',0),(5265,1,'2014-07-23','2014-07-23 15:23:45',0),(5266,112,'2014-07-23','2014-07-23 16:00:31',0),(5267,120,'2014-07-23','2014-07-23 18:55:35',0),(5268,112,'2014-07-23','2014-07-23 19:34:50',0),(5269,133,'2014-07-23','2014-07-23 21:06:21',0),(5270,133,'2014-07-23','2014-07-23 21:06:21',0),(5271,133,'2014-07-23','2014-07-23 21:06:22',0),(5272,133,'2014-07-23','2014-07-23 21:22:44',0),(5273,1,'2014-07-23','2014-07-23 22:04:13',0),(5274,112,'2014-07-23','2014-07-23 22:31:44',0),(5275,112,'2014-07-24','2014-07-23 23:09:54',0),(5276,110,'2014-07-24','2014-07-24 00:11:33',0),(5277,110,'2014-07-24','2014-07-24 00:11:56',0),(5278,112,'2014-07-24','2014-07-24 00:11:57',1),(5279,112,'2014-07-24','2014-07-24 00:11:58',1),(5280,106,'2014-07-24','2014-07-24 00:12:01',1),(5281,1,'2014-07-24','2014-07-24 00:12:05',1),(5282,1,'2014-07-24','2014-07-24 00:12:09',1),(5283,1,'2014-07-24','2014-07-24 00:12:46',1),(5284,1,'2014-07-24','2014-07-24 00:13:09',1),(5285,1,'2014-07-24','2014-07-24 00:15:27',1),(5286,133,'2014-07-24','2014-07-24 00:16:17',1),(5287,133,'2014-07-24','2014-07-24 00:16:32',1),(5288,1,'2014-07-24','2014-07-24 01:35:23',0),(5289,112,'2014-07-24','2014-07-24 07:39:16',0),(5290,1,'2014-07-24','2014-07-24 07:52:09',0),(5291,112,'2014-07-24','2014-07-24 07:52:52',0),(5292,112,'2014-07-24','2014-07-24 07:52:53',0),(5293,112,'2014-07-24','2014-07-24 07:53:12',0),(5294,112,'2014-07-24','2014-07-24 07:53:12',0),(5295,133,'2014-07-24','2014-07-24 07:53:27',0),(5296,133,'2014-07-24','2014-07-24 07:53:27',0),(5297,112,'2014-07-24','2014-07-24 08:45:03',0),(5298,112,'2014-07-24','2014-07-24 12:31:37',0),(5299,1,'2014-07-24','2014-07-24 15:20:09',0),(5300,1,'2014-07-25','2014-07-24 23:13:15',0),(5301,112,'2014-07-25','2014-07-25 05:02:14',0),(5302,1,'2014-07-25','2014-07-25 05:57:42',0),(5303,133,'2014-07-25','2014-07-25 05:58:09',0),(5304,133,'2014-07-25','2014-07-25 05:58:10',0),(5305,112,'2014-07-25','2014-07-25 10:27:24',0),(5306,1,'2014-07-25','2014-07-25 12:29:28',0),(5307,112,'2014-07-25','2014-07-25 18:21:18',0),(5308,1,'2014-07-25','2014-07-25 19:07:20',0),(5309,1,'2014-07-26','2014-07-26 02:41:10',0),(5310,133,'2014-07-26','2014-07-26 02:41:11',0),(5311,112,'2014-07-26','2014-07-26 02:41:11',0),(5312,112,'2014-07-26','2014-07-26 02:41:12',0),(5313,112,'2014-07-26','2014-07-26 02:41:12',0),(5314,112,'2014-07-26','2014-07-26 02:41:12',0),(5315,1,'2014-07-26','2014-07-26 11:42:17',0),(5316,112,'2014-07-26','2014-07-26 12:42:35',0),(5317,133,'2014-07-26','2014-07-26 15:27:34',0),(5318,112,'2014-07-26','2014-07-26 15:48:54',0),(5319,112,'2014-07-26','2014-07-26 16:32:40',0),(5320,1,'2014-07-26','2014-07-26 18:42:10',0),(5321,112,'2014-07-26','2014-07-26 19:41:19',0),(5322,112,'2014-07-26','2014-07-26 20:23:18',0),(5323,112,'2014-07-26','2014-07-26 22:21:10',0),(5324,1,'2014-07-27','2014-07-27 01:19:45',0),(5325,112,'2014-07-27','2014-07-27 01:57:17',0),(5326,112,'2014-07-27','2014-07-27 01:57:21',0),(5327,133,'2014-07-27','2014-07-27 01:57:26',0),(5328,112,'2014-07-27','2014-07-27 01:57:32',0),(5329,112,'2014-07-27','2014-07-27 01:57:36',0),(5330,112,'2014-07-27','2014-07-27 02:49:43',0),(5331,112,'2014-07-27','2014-07-27 04:33:12',0),(5332,112,'2014-07-27','2014-07-27 04:36:08',0),(5333,112,'2014-07-27','2014-07-27 06:04:48',0),(5334,112,'2014-07-27','2014-07-27 07:12:33',0),(5335,1,'2014-07-27','2014-07-27 08:02:01',0),(5336,112,'2014-07-27','2014-07-27 13:15:18',0),(5337,112,'2014-07-27','2014-07-27 14:31:30',0),(5338,1,'2014-07-27','2014-07-27 14:53:51',0),(5339,112,'2014-07-27','2014-07-27 15:49:45',0),(5340,112,'2014-07-27','2014-07-27 19:08:13',0),(5341,112,'2014-07-27','2014-07-27 19:08:13',0),(5342,133,'2014-07-27','2014-07-27 19:08:13',0),(5343,112,'2014-07-27','2014-07-27 22:16:25',0),(5344,1,'2014-07-27','2014-07-27 22:59:40',0),(5345,120,'2014-07-28','2014-07-28 00:41:48',0),(5346,1,'2014-07-28','2014-07-28 05:29:52',0),(5347,112,'2014-07-28','2014-07-28 06:27:32',0),(5348,133,'2014-07-28','2014-07-28 08:16:40',0),(5349,112,'2014-07-28','2014-07-28 08:16:40',0),(5350,112,'2014-07-28','2014-07-28 08:16:41',0),(5351,112,'2014-07-28','2014-07-28 08:37:33',0),(5352,133,'2014-07-28','2014-07-28 09:38:41',0),(5353,133,'2014-07-28','2014-07-28 09:41:06',0),(5354,133,'2014-07-28','2014-07-28 09:41:07',0),(5355,1,'2014-07-28','2014-07-28 12:39:26',0),(5356,1,'2014-07-29','2014-07-28 23:07:24',0),(5357,133,'2014-07-29','2014-07-29 03:51:04',0),(5358,133,'2014-07-29','2014-07-29 03:51:04',0),(5359,1,'2014-07-29','2014-07-29 09:22:44',0),(5360,133,'2014-07-29','2014-07-29 09:22:48',0),(5361,1,'2014-07-29','2014-07-29 16:11:16',0),(5362,120,'2014-07-29','2014-07-29 20:04:48',0),(5363,1,'2014-07-30','2014-07-30 02:24:26',0),(5364,1,'2014-07-30','2014-07-30 10:12:53',0),(5365,112,'2014-07-30','2014-07-30 11:00:04',0),(5366,133,'2014-07-30','2014-07-30 16:04:05',0),(5367,133,'2014-07-30','2014-07-30 16:04:07',0),(5368,133,'2014-07-30','2014-07-30 16:04:07',0),(5369,1,'2014-07-30','2014-07-30 16:38:19',0),(5370,112,'2014-07-30','2014-07-30 16:48:53',0),(5371,112,'2014-07-30','2014-07-30 16:52:16',0),(5372,112,'2014-07-30','2014-07-30 18:16:02',0),(5373,112,'2014-07-30','2014-07-30 20:13:44',0),(5374,112,'2014-07-30','2014-07-30 22:27:05',0),(5375,112,'2014-07-30','2014-07-30 22:27:05',0),(5376,133,'2014-07-30','2014-07-30 22:27:05',0),(5377,1,'2014-07-31','2014-07-31 01:23:40',0),(5378,112,'2014-07-31','2014-07-31 01:23:41',0),(5379,112,'2014-07-31','2014-07-31 01:23:41',0),(5380,133,'2014-07-31','2014-07-31 05:29:39',0),(5381,112,'2014-07-31','2014-07-31 07:06:55',0),(5382,1,'2014-07-31','2014-07-31 07:57:38',0),(5383,112,'2014-07-31','2014-07-31 10:27:19',0),(5384,112,'2014-07-31','2014-07-31 10:27:20',0),(5385,133,'2014-07-31','2014-07-31 15:03:23',0),(5386,133,'2014-07-31','2014-07-31 15:03:24',0),(5387,1,'2014-07-31','2014-07-31 17:27:44',0),(5388,112,'2014-07-31','2014-07-31 20:37:27',0),(5389,112,'2014-07-31','2014-07-31 20:37:28',0),(5390,112,'2014-07-31','2014-07-31 20:37:31',0),(5391,112,'2014-07-31','2014-07-31 20:37:32',0),(5392,112,'2014-07-31','2014-07-31 20:37:35',0),(5393,112,'2014-07-31','2014-07-31 20:37:36',0),(5394,112,'2014-07-31','2014-07-31 20:37:37',0),(5395,112,'2014-07-31','2014-07-31 20:40:37',0),(5396,112,'2014-07-31','2014-07-31 20:40:38',0),(5397,112,'2014-07-31','2014-07-31 20:40:48',0),(5398,112,'2014-07-31','2014-07-31 20:40:57',0),(5399,112,'2014-07-31','2014-07-31 20:41:05',0),(5400,112,'2014-07-31','2014-07-31 20:41:09',0),(5401,112,'2014-07-31','2014-07-31 20:41:21',0),(5402,133,'2014-07-31','2014-07-31 21:55:50',0),(5403,112,'2014-07-31','2014-07-31 21:55:50',0),(5404,112,'2014-07-31','2014-07-31 21:55:51',0),(5405,133,'2014-07-31','2014-07-31 21:55:53',0),(5406,133,'2014-07-31','2014-07-31 21:55:53',0),(5407,112,'2014-07-31','2014-07-31 21:55:54',0),(5408,112,'2014-07-31','2014-07-31 21:55:54',0),(5409,112,'2014-07-31','2014-07-31 21:55:55',0),(5410,112,'2014-07-31','2014-07-31 21:55:56',0),(5411,112,'2014-07-31','2014-07-31 21:55:56',0),(5412,112,'2014-07-31','2014-07-31 21:55:56',0),(5413,1,'2014-08-01','2014-08-01 00:22:39',0),(5414,112,'2014-08-01','2014-08-01 06:18:56',0),(5415,112,'2014-08-01','2014-08-01 06:18:57',0),(5416,133,'2014-08-01','2014-08-01 06:18:57',0),(5417,112,'2014-08-01','2014-08-01 06:41:42',0),(5418,1,'2014-08-01','2014-08-01 08:04:27',0),(5419,112,'2014-08-01','2014-08-01 08:41:57',0),(5420,1,'2014-08-01','2014-08-01 14:35:00',0),(5421,112,'2014-08-01','2014-08-01 18:07:15',0),(5422,112,'2014-08-01','2014-08-01 18:33:26',0),(5423,133,'2014-08-01','2014-08-01 20:34:20',0),(5424,112,'2014-08-01','2014-08-01 20:34:20',0),(5425,112,'2014-08-01','2014-08-01 20:34:21',0),(5426,1,'2014-08-01','2014-08-01 21:23:31',0),(5427,1,'2014-08-02','2014-08-02 04:21:05',0),(5428,1,'2014-08-02','2014-08-02 11:16:31',0),(5429,1,'2014-08-02','2014-08-02 12:24:44',0),(5430,1,'2014-08-02','2014-08-02 14:01:12',0),(5431,133,'2014-08-02','2014-08-02 16:02:42',0),(5432,112,'2014-08-02','2014-08-02 16:02:43',0),(5433,112,'2014-08-02','2014-08-02 16:02:43',0),(5434,1,'2014-08-02','2014-08-02 21:20:50',0),(5435,112,'2014-08-03','2014-08-02 23:16:43',0),(5436,133,'2014-08-03','2014-08-02 23:16:43',0),(5437,112,'2014-08-03','2014-08-02 23:16:43',0),(5438,1,'2014-08-03','2014-08-03 05:01:01',0),(5439,112,'2014-08-03','2014-08-03 06:14:57',0),(5440,112,'2014-08-03','2014-08-03 06:14:57',0),(5441,133,'2014-08-03','2014-08-03 06:14:57',0),(5442,1,'2014-08-03','2014-08-03 14:20:07',0),(5443,112,'2014-08-03','2014-08-03 16:32:14',0),(5444,112,'2014-08-03','2014-08-03 16:41:39',0),(5445,112,'2014-08-03','2014-08-03 19:22:15',0),(5446,112,'2014-08-03','2014-08-03 19:51:01',0),(5447,112,'2014-08-03','2014-08-03 19:51:37',0),(5448,1,'2014-08-03','2014-08-03 20:39:29',0),(5449,1,'2014-08-04','2014-08-04 05:23:32',0),(5450,133,'2014-08-04','2014-08-04 11:20:21',0),(5451,133,'2014-08-04','2014-08-04 11:20:22',0),(5452,133,'2014-08-04','2014-08-04 11:20:23',0),(5453,112,'2014-08-04','2014-08-04 12:42:13',0),(5454,1,'2014-08-04','2014-08-04 13:38:07',0),(5455,112,'2014-08-04','2014-08-04 15:17:15',0),(5456,133,'2014-08-04','2014-08-04 15:45:31',0),(5457,133,'2014-08-04','2014-08-04 15:45:32',0),(5458,112,'2014-08-04','2014-08-04 16:12:18',0),(5459,133,'2014-08-04','2014-08-04 17:21:39',0),(5460,112,'2014-08-04','2014-08-04 21:59:48',0),(5461,1,'2014-08-04','2014-08-04 22:05:34',0),(5462,112,'2014-08-05','2014-08-05 02:23:05',0),(5463,112,'2014-08-05','2014-08-05 02:23:06',0),(5464,133,'2014-08-05','2014-08-05 02:23:06',0),(5465,112,'2014-08-05','2014-08-05 03:41:52',0),(5466,112,'2014-08-05','2014-08-05 04:56:01',0),(5467,112,'2014-08-05','2014-08-05 08:06:03',0),(5468,120,'2014-08-05','2014-08-05 08:34:21',0),(5469,1,'2014-08-05','2014-08-05 08:52:58',0),(5470,133,'2014-08-05','2014-08-05 09:15:14',0),(5471,112,'2014-08-05','2014-08-05 09:15:14',0),(5472,112,'2014-08-05','2014-08-05 09:15:15',0),(5473,133,'2014-08-05','2014-08-05 13:02:55',0),(5474,112,'2014-08-05','2014-08-05 14:52:16',0),(5475,1,'2014-08-05','2014-08-05 17:38:53',0),(5476,133,'2014-08-05','2014-08-05 17:38:53',0),(5477,112,'2014-08-05','2014-08-05 17:38:54',0),(5478,112,'2014-08-05','2014-08-05 17:38:54',0),(5479,112,'2014-08-05','2014-08-05 17:38:54',0),(5480,112,'2014-08-05','2014-08-05 17:38:54',0),(5481,112,'2014-08-05','2014-08-05 22:22:30',0),(5482,1,'2014-08-06','2014-08-06 00:25:50',0),(5483,112,'2014-08-06','2014-08-06 02:40:54',0),(5484,112,'2014-08-06','2014-08-06 04:05:39',0),(5485,133,'2014-08-06','2014-08-06 05:14:12',0),(5486,112,'2014-08-06','2014-08-06 05:14:12',0),(5487,112,'2014-08-06','2014-08-06 05:14:12',0),(5488,1,'2014-08-06','2014-08-06 12:18:47',0),(5489,112,'2014-08-06','2014-08-06 13:37:16',0),(5490,133,'2014-08-06','2014-08-06 14:01:10',0),(5491,133,'2014-08-06','2014-08-06 14:01:11',0),(5492,133,'2014-08-06','2014-08-06 14:05:48',0),(5493,112,'2014-08-06','2014-08-06 14:25:44',0),(5494,133,'2014-08-06','2014-08-06 14:33:13',0),(5495,112,'2014-08-06','2014-08-06 14:35:38',0),(5496,133,'2014-08-06','2014-08-06 15:21:45',0),(5497,133,'2014-08-06','2014-08-06 15:31:14',0),(5498,133,'2014-08-06','2014-08-06 15:31:14',0),(5499,112,'2014-08-06','2014-08-06 17:34:05',0),(5500,112,'2014-08-06','2014-08-06 17:59:26',0),(5501,1,'2014-08-06','2014-08-06 18:51:42',0),(5502,112,'2014-08-06','2014-08-06 20:26:40',0),(5503,112,'2014-08-06','2014-08-06 21:05:29',0),(5504,112,'2014-08-06','2014-08-06 21:05:34',0),(5505,133,'2014-08-06','2014-08-06 21:05:38',0),(5506,112,'2014-08-06','2014-08-06 21:25:25',0),(5507,1,'2014-08-07','2014-08-07 01:18:40',0),(5508,112,'2014-08-07','2014-08-07 01:58:02',0),(5509,112,'2014-08-07','2014-08-07 04:36:22',0),(5510,112,'2014-08-07','2014-08-07 06:03:59',0),(5511,112,'2014-08-07','2014-08-07 06:03:59',0),(5512,133,'2014-08-07','2014-08-07 06:03:59',0),(5513,1,'2014-08-07','2014-08-07 07:32:34',0),(5514,112,'2014-08-07','2014-08-07 08:40:39',0),(5515,112,'2014-08-07','2014-08-07 08:40:44',0),(5516,1,'2014-08-07','2014-08-07 13:36:20',0),(5517,112,'2014-08-07','2014-08-07 13:58:46',0),(5518,112,'2014-08-07','2014-08-07 18:30:45',0),(5519,1,'2014-08-08','2014-08-08 03:39:08',0),(5520,112,'2014-08-08','2014-08-08 04:32:16',0),(5521,1,'2014-08-08','2014-08-08 12:40:22',0),(5522,133,'2014-08-08','2014-08-08 13:17:56',0),(5523,133,'2014-08-08','2014-08-08 13:17:57',0),(5524,133,'2014-08-08','2014-08-08 13:17:57',0),(5525,133,'2014-08-08','2014-08-08 13:26:12',0),(5526,112,'2014-08-08','2014-08-08 13:27:25',0),(5527,112,'2014-08-08','2014-08-08 14:15:52',0),(5528,112,'2014-08-08','2014-08-08 14:15:52',0),(5529,112,'2014-08-08','2014-08-08 14:15:52',0),(5530,112,'2014-08-08','2014-08-08 17:03:31',0),(5531,1,'2014-08-08','2014-08-08 19:07:36',0),(5532,112,'2014-08-09','2014-08-09 02:11:17',0),(5533,1,'2014-08-09','2014-08-09 03:02:16',0),(5534,112,'2014-08-09','2014-08-09 03:57:54',0),(5535,133,'2014-08-09','2014-08-09 06:27:16',0),(5536,112,'2014-08-09','2014-08-09 06:27:16',0),(5537,112,'2014-08-09','2014-08-09 06:27:16',0),(5538,112,'2014-08-09','2014-08-09 06:27:17',0),(5539,112,'2014-08-09','2014-08-09 06:27:17',0),(5540,112,'2014-08-09','2014-08-09 07:37:01',0),(5541,112,'2014-08-09','2014-08-09 07:37:01',0),(5542,112,'2014-08-09','2014-08-09 08:11:47',0),(5543,112,'2014-08-09','2014-08-09 08:11:48',0),(5544,1,'2014-08-09','2014-08-09 09:48:33',0),(5545,133,'2014-08-09','2014-08-09 16:36:14',0),(5546,133,'2014-08-09','2014-08-09 16:36:16',0),(5547,1,'2014-08-09','2014-08-09 16:39:48',0),(5548,1,'2014-08-10','2014-08-10 01:19:08',0),(5549,112,'2014-08-10','2014-08-10 01:19:08',0),(5550,112,'2014-08-10','2014-08-10 01:19:09',0),(5551,133,'2014-08-10','2014-08-10 01:19:09',0),(5552,1,'2014-08-10','2014-08-10 07:28:13',0),(5553,112,'2014-08-10','2014-08-10 13:12:16',0),(5554,112,'2014-08-10','2014-08-10 14:15:50',0),(5555,112,'2014-08-10','2014-08-10 14:55:58',0),(5556,1,'2014-08-10','2014-08-10 16:39:40',0),(5557,112,'2014-08-10','2014-08-10 20:45:49',0),(5558,133,'2014-08-10','2014-08-10 21:59:53',0),(5559,1,'2014-08-11','2014-08-11 05:04:41',0),(5560,112,'2014-08-11','2014-08-11 05:04:41',0),(5561,112,'2014-08-11','2014-08-11 05:04:41',0),(5562,133,'2014-08-11','2014-08-11 05:04:41',0),(5563,112,'2014-08-11','2014-08-11 06:19:43',0),(5564,133,'2014-08-11','2014-08-11 06:35:10',0),(5565,133,'2014-08-11','2014-08-11 06:45:15',0),(5566,1,'2014-08-11','2014-08-11 11:22:57',0),(5567,112,'2014-08-11','2014-08-11 14:30:08',0),(5568,112,'2014-08-11','2014-08-11 15:12:59',0),(5569,133,'2014-08-11','2014-08-11 15:54:03',0),(5570,133,'2014-08-11','2014-08-11 15:54:03',0),(5571,133,'2014-08-11','2014-08-11 15:54:18',0),(5572,133,'2014-08-11','2014-08-11 17:29:36',0),(5573,1,'2014-08-11','2014-08-11 18:34:08',0),(5574,112,'2014-08-11','2014-08-11 21:33:19',0),(5575,112,'2014-08-11','2014-08-11 21:33:24',0),(5576,1,'2014-08-12','2014-08-12 05:04:24',0),(5577,133,'2014-08-12','2014-08-12 05:04:25',0),(5578,112,'2014-08-12','2014-08-12 05:04:25',0),(5579,112,'2014-08-12','2014-08-12 05:04:25',0),(5580,112,'2014-08-12','2014-08-12 06:09:43',0),(5581,112,'2014-08-12','2014-08-12 06:09:44',0),(5582,112,'2014-08-12','2014-08-12 06:14:24',0),(5583,112,'2014-08-12','2014-08-12 09:45:10',0),(5584,1,'2014-08-12','2014-08-12 12:10:07',0),(5585,112,'2014-08-12','2014-08-12 12:24:10',0),(5586,133,'2014-08-12','2014-08-12 14:08:57',0),(5587,112,'2014-08-12','2014-08-12 14:09:00',0),(5588,112,'2014-08-12','2014-08-12 14:09:03',0),(5589,112,'2014-08-12','2014-08-12 14:09:06',0),(5590,112,'2014-08-12','2014-08-12 14:09:10',0),(5591,112,'2014-08-12','2014-08-12 14:09:16',0),(5592,112,'2014-08-12','2014-08-12 14:09:19',0),(5593,112,'2014-08-12','2014-08-12 14:09:22',0),(5594,112,'2014-08-12','2014-08-12 14:09:25',0),(5595,112,'2014-08-12','2014-08-12 15:03:53',0),(5596,112,'2014-08-12','2014-08-12 15:32:50',0),(5597,112,'2014-08-12','2014-08-12 15:32:50',0),(5598,1,'2014-08-12','2014-08-12 18:19:20',0),(5599,133,'2014-08-12','2014-08-12 18:43:07',0),(5600,120,'2014-08-12','2014-08-12 22:58:28',0),(5601,1,'2014-08-13','2014-08-13 02:21:02',0),(5602,112,'2014-08-13','2014-08-13 07:11:11',0),(5603,112,'2014-08-13','2014-08-13 08:39:52',0),(5604,112,'2014-08-13','2014-08-13 10:41:10',0),(5605,112,'2014-08-13','2014-08-13 12:02:24',0),(5606,1,'2014-08-13','2014-08-13 12:40:02',0),(5607,112,'2014-08-13','2014-08-13 13:06:46',0),(5608,112,'2014-08-13','2014-08-13 13:53:56',0),(5609,112,'2014-08-13','2014-08-13 13:53:57',0),(5610,133,'2014-08-13','2014-08-13 13:53:57',0),(5611,133,'2014-08-13','2014-08-13 15:03:26',0),(5612,133,'2014-08-13','2014-08-13 15:03:41',0),(5613,112,'2014-08-13','2014-08-13 16:28:56',0),(5614,112,'2014-08-13','2014-08-13 17:26:52',0),(5615,112,'2014-08-13','2014-08-13 18:36:57',0),(5616,112,'2014-08-13','2014-08-13 19:01:09',0),(5617,1,'2014-08-13','2014-08-13 19:07:48',0),(5618,133,'2014-08-14','2014-08-14 02:09:23',0),(5619,133,'2014-08-14','2014-08-14 02:09:26',0),(5620,133,'2014-08-14','2014-08-14 02:09:46',0),(5621,133,'2014-08-14','2014-08-14 02:17:28',0),(5622,112,'2014-08-14','2014-08-14 02:20:07',0),(5623,1,'2014-08-14','2014-08-14 03:09:10',0),(5624,112,'2014-08-14','2014-08-14 04:26:11',0),(5625,112,'2014-08-14','2014-08-14 07:19:09',0),(5626,112,'2014-08-14','2014-08-14 07:22:06',0),(5627,112,'2014-08-14','2014-08-14 07:46:12',0),(5628,1,'2014-08-14','2014-08-14 09:36:10',0),(5629,112,'2014-08-14','2014-08-14 10:41:11',0),(5630,112,'2014-08-14','2014-08-14 11:21:11',0),(5631,112,'2014-08-14','2014-08-14 12:57:18',0),(5632,112,'2014-08-14','2014-08-14 15:32:43',0),(5633,112,'2014-08-14','2014-08-14 15:32:43',0),(5634,133,'2014-08-14','2014-08-14 15:32:43',0),(5635,1,'2014-08-14','2014-08-14 16:05:49',0),(5636,112,'2014-08-14','2014-08-14 16:05:49',0),(5637,112,'2014-08-14','2014-08-14 16:05:53',0),(5638,112,'2014-08-14','2014-08-14 16:06:03',0),(5639,112,'2014-08-14','2014-08-14 16:06:07',0),(5640,1,'2014-08-15','2014-08-14 23:42:36',0),(5641,112,'2014-08-15','2014-08-15 00:43:47',0),(5642,112,'2014-08-15','2014-08-15 00:43:48',0),(5643,133,'2014-08-15','2014-08-15 00:43:48',0),(5644,133,'2014-08-15','2014-08-15 02:01:12',0),(5645,133,'2014-08-15','2014-08-15 02:01:12',0),(5646,112,'2014-08-15','2014-08-15 03:32:22',0),(5647,112,'2014-08-15','2014-08-15 03:32:24',0),(5648,1,'2014-08-15','2014-08-15 06:34:21',0),(5649,112,'2014-08-15','2014-08-15 08:01:10',0),(5650,133,'2014-08-15','2014-08-15 10:04:11',0),(5651,133,'2014-08-15','2014-08-15 10:04:11',0),(5652,112,'2014-08-15','2014-08-15 10:56:09',0),(5653,1,'2014-08-15','2014-08-15 12:41:06',0),(5654,112,'2014-08-15','2014-08-15 12:46:10',0),(5655,112,'2014-08-15','2014-08-15 14:37:52',0),(5656,112,'2014-08-15','2014-08-15 15:56:10',0),(5657,1,'2014-08-15','2014-08-15 21:49:29',0),(5658,112,'2014-08-15','2014-08-15 21:49:38',0),(5659,112,'2014-08-15','2014-08-15 21:49:38',0),(5660,133,'2014-08-15','2014-08-15 21:49:38',0),(5661,112,'2014-08-16','2014-08-16 02:12:33',0),(5662,112,'2014-08-16','2014-08-16 02:12:35',0),(5663,112,'2014-08-16','2014-08-16 05:31:10',0),(5664,1,'2014-08-16','2014-08-16 06:15:35',0),(5665,112,'2014-08-16','2014-08-16 06:55:21',0),(5666,112,'2014-08-16','2014-08-16 08:43:01',0),(5667,112,'2014-08-16','2014-08-16 10:06:11',0),(5668,1,'2014-08-16','2014-08-16 12:31:10',0),(5669,112,'2014-08-16','2014-08-16 12:35:23',0),(5670,112,'2014-08-16','2014-08-16 12:35:23',0),(5671,133,'2014-08-16','2014-08-16 12:35:23',0),(5672,112,'2014-08-16','2014-08-16 13:06:11',0),(5673,112,'2014-08-16','2014-08-16 14:54:42',0),(5674,133,'2014-08-16','2014-08-16 16:19:09',0),(5675,112,'2014-08-16','2014-08-16 17:58:12',0),(5676,1,'2014-08-16','2014-08-16 18:58:28',0),(5677,112,'2014-08-17','2014-08-17 00:41:11',0),(5678,1,'2014-08-17','2014-08-17 02:55:31',0),(5679,112,'2014-08-17','2014-08-17 08:21:52',0),(5680,112,'2014-08-17','2014-08-17 08:25:20',0),(5681,112,'2014-08-17','2014-08-17 08:25:20',0),(5682,133,'2014-08-17','2014-08-17 08:25:20',0),(5683,1,'2014-08-17','2014-08-17 09:10:28',0),(5684,112,'2014-08-17','2014-08-17 13:51:53',0),(5685,1,'2014-08-17','2014-08-17 15:44:21',0),(5686,112,'2014-08-17','2014-08-17 15:47:41',0),(5687,1,'2014-08-18','2014-08-17 23:18:09',0),(5688,133,'2014-08-18','2014-08-17 23:19:12',0),(5689,133,'2014-08-18','2014-08-17 23:19:13',0),(5690,112,'2014-08-18','2014-08-18 01:31:15',0),(5691,112,'2014-08-18','2014-08-18 01:31:16',0),(5692,112,'2014-08-18','2014-08-18 06:39:29',0),(5693,1,'2014-08-18','2014-08-18 06:48:57',0),(5694,112,'2014-08-18','2014-08-18 12:43:47',0),(5695,1,'2014-08-18','2014-08-18 12:48:57',0),(5696,133,'2014-08-18','2014-08-18 18:02:35',0),(5697,133,'2014-08-18','2014-08-18 18:02:36',0),(5698,1,'2014-08-18','2014-08-18 19:22:33',0),(5699,1,'2014-08-18','2014-08-18 19:22:33',0),(5700,112,'2014-08-18','2014-08-18 22:27:28',0),(5701,1,'2014-08-19','2014-08-19 01:56:45',0),(5702,112,'2014-08-19','2014-08-19 03:06:58',0),(5703,112,'2014-08-19','2014-08-19 03:06:58',0),(5704,133,'2014-08-19','2014-08-19 03:06:58',0),(5705,133,'2014-08-19','2014-08-19 05:32:08',0),(5706,133,'2014-08-19','2014-08-19 05:51:14',0),(5707,1,'2014-08-19','2014-08-19 09:21:12',0),(5708,133,'2014-08-19','2014-08-19 11:28:06',0),(5709,133,'2014-08-19','2014-08-19 11:29:09',0),(5710,133,'2014-08-19','2014-08-19 11:29:11',0),(5711,133,'2014-08-19','2014-08-19 11:29:29',0),(5712,133,'2014-08-19','2014-08-19 11:30:25',0),(5713,112,'2014-08-19','2014-08-19 13:07:20',0),(5714,112,'2014-08-19','2014-08-19 13:07:20',0),(5715,112,'2014-08-19','2014-08-19 13:36:42',0),(5716,133,'2014-08-19','2014-08-19 15:44:19',0),(5717,133,'2014-08-19','2014-08-19 15:44:23',0),(5718,1,'2014-08-19','2014-08-19 16:39:31',0),(5719,133,'2014-08-19','2014-08-19 19:19:11',0),(5720,112,'2014-08-19','2014-08-19 19:19:12',0),(5721,112,'2014-08-19','2014-08-19 19:19:14',0),(5722,112,'2014-08-19','2014-08-19 19:19:15',0),(5723,112,'2014-08-19','2014-08-19 19:19:16',0),(5724,1,'2014-08-20','2014-08-19 23:14:49',0),(5725,133,'2014-08-20','2014-08-20 02:53:23',0),(5726,133,'2014-08-20','2014-08-20 02:54:15',0),(5727,1,'2014-08-20','2014-08-20 06:48:26',0),(5728,133,'2014-08-20','2014-08-20 10:16:52',0),(5729,133,'2014-08-20','2014-08-20 10:17:10',0),(5730,133,'2014-08-20','2014-08-20 10:17:11',0),(5731,133,'2014-08-20','2014-08-20 10:17:12',0),(5732,133,'2014-08-20','2014-08-20 10:17:20',0),(5733,133,'2014-08-20','2014-08-20 10:17:22',0),(5734,133,'2014-08-20','2014-08-20 10:18:16',0),(5735,133,'2014-08-20','2014-08-20 10:18:22',0),(5736,133,'2014-08-20','2014-08-20 10:19:22',0),(5737,133,'2014-08-20','2014-08-20 12:24:00',0),(5738,1,'2014-08-20','2014-08-20 13:11:59',0),(5739,112,'2014-08-20','2014-08-20 15:31:42',0),(5740,112,'2014-08-20','2014-08-20 15:31:42',0),(5741,112,'2014-08-20','2014-08-20 16:19:35',0),(5742,133,'2014-08-20','2014-08-20 16:33:06',0),(5743,133,'2014-08-20','2014-08-20 16:33:07',0),(5744,112,'2014-08-20','2014-08-20 19:04:56',0),(5745,1,'2014-08-20','2014-08-20 19:43:50',0),(5746,1,'2014-08-21','2014-08-21 01:48:20',0),(5747,133,'2014-08-21','2014-08-21 02:11:28',0),(5748,112,'2014-08-21','2014-08-21 05:01:04',0),(5749,112,'2014-08-21','2014-08-21 05:01:04',0),(5750,133,'2014-08-21','2014-08-21 06:15:04',0),(5751,1,'2014-08-21','2014-08-21 10:04:20',0),(5752,133,'2014-08-21','2014-08-21 10:51:14',0),(5753,133,'2014-08-21','2014-08-21 10:51:14',0),(5754,112,'2014-08-21','2014-08-21 12:16:52',0),(5755,112,'2014-08-21','2014-08-21 14:14:51',0),(5756,133,'2014-08-21','2014-08-21 14:37:21',0),(5757,1,'2014-08-21','2014-08-21 16:39:40',0),(5758,112,'2014-08-21','2014-08-21 20:23:56',0),(5759,133,'2014-08-21','2014-08-21 22:04:10',0),(5760,133,'2014-08-21','2014-08-21 22:04:13',0),(5761,133,'2014-08-21','2014-08-21 22:04:27',0),(5762,1,'2014-08-22','2014-08-21 23:23:26',0),(5763,112,'2014-08-22','2014-08-21 23:38:38',0),(5764,112,'2014-08-22','2014-08-21 23:38:40',0),(5765,112,'2014-08-22','2014-08-21 23:38:42',0),(5766,112,'2014-08-22','2014-08-21 23:38:49',0),(5767,112,'2014-08-22','2014-08-21 23:38:52',0),(5768,112,'2014-08-22','2014-08-21 23:38:54',0),(5769,112,'2014-08-22','2014-08-22 01:34:20',0),(5770,112,'2014-08-22','2014-08-22 01:34:21',0),(5771,112,'2014-08-22','2014-08-22 02:50:18',0),(5772,1,'2014-08-22','2014-08-22 06:12:39',0),(5773,133,'2014-08-22','2014-08-22 10:48:27',0),(5774,133,'2014-08-22','2014-08-22 10:48:27',0),(5775,1,'2014-08-22','2014-08-22 12:41:00',0),(5776,1,'2014-08-22','2014-08-22 20:27:14',0),(5777,1,'2014-08-23','2014-08-23 03:27:10',0),(5778,112,'2014-08-23','2014-08-23 03:38:31',0),(5779,112,'2014-08-23','2014-08-23 03:38:32',0),(5780,133,'2014-08-23','2014-08-23 03:38:32',0),(5781,112,'2014-08-23','2014-08-23 07:22:03',0),(5782,112,'2014-08-23','2014-08-23 09:41:38',0),(5783,1,'2014-08-23','2014-08-23 11:42:18',0),(5784,133,'2014-08-23','2014-08-23 16:23:37',0),(5785,1,'2014-08-23','2014-08-23 18:24:32',0),(5786,112,'2014-08-23','2014-08-23 20:25:00',0),(5787,120,'2014-08-23','2014-08-23 20:31:21',0),(5788,112,'2014-08-23','2014-08-23 20:37:10',0),(5789,1,'2014-08-24','2014-08-24 02:17:08',0),(5790,112,'2014-08-24','2014-08-24 02:17:16',0),(5791,133,'2014-08-24','2014-08-24 02:17:16',0),(5792,112,'2014-08-24','2014-08-24 02:17:16',0),(5793,112,'2014-08-24','2014-08-24 04:51:03',0),(5794,112,'2014-08-24','2014-08-24 04:51:03',0),(5795,112,'2014-08-24','2014-08-24 06:53:41',0),(5796,112,'2014-08-24','2014-08-24 06:53:46',0),(5797,133,'2014-08-24','2014-08-24 07:34:48',0),(5798,112,'2014-08-24','2014-08-24 08:31:12',0),(5799,112,'2014-08-24','2014-08-24 08:31:17',0),(5800,133,'2014-08-24','2014-08-24 08:31:22',0),(5801,1,'2014-08-24','2014-08-24 09:54:11',0),(5802,112,'2014-08-24','2014-08-24 15:02:49',0),(5803,112,'2014-08-24','2014-08-24 16:21:06',0),(5804,1,'2014-08-24','2014-08-24 16:39:57',0),(5805,112,'2014-08-24','2014-08-24 22:13:30',0),(5806,1,'2014-08-25','2014-08-24 23:27:43',0),(5807,133,'2014-08-25','2014-08-24 23:27:54',0),(5808,133,'2014-08-25','2014-08-24 23:27:54',0),(5809,112,'2014-08-25','2014-08-24 23:58:09',0),(5810,112,'2014-08-25','2014-08-24 23:58:15',0),(5811,112,'2014-08-25','2014-08-25 01:17:45',0),(5812,112,'2014-08-25','2014-08-25 01:17:45',0),(5813,1,'2014-08-25','2014-08-25 05:33:56',0),(5814,133,'2014-08-25','2014-08-25 05:34:02',0),(5815,112,'2014-08-25','2014-08-25 05:34:08',0),(5816,112,'2014-08-25','2014-08-25 05:34:15',0),(5817,112,'2014-08-25','2014-08-25 05:34:21',0),(5818,112,'2014-08-25','2014-08-25 05:34:27',0),(5819,133,'2014-08-25','2014-08-25 06:28:01',0),(5820,112,'2014-08-25','2014-08-25 08:29:13',0),(5821,120,'2014-08-25','2014-08-25 12:32:19',0),(5822,1,'2014-08-25','2014-08-25 12:38:30',0),(5823,133,'2014-08-25','2014-08-25 14:16:57',0),(5824,133,'2014-08-25','2014-08-25 14:16:58',0),(5825,112,'2014-08-25','2014-08-25 16:07:09',0),(5826,112,'2014-08-25','2014-08-25 18:05:27',0),(5827,1,'2014-08-25','2014-08-25 19:29:26',0),(5828,1,'2014-08-26','2014-08-26 01:30:26',0),(5829,133,'2014-08-26','2014-08-26 01:50:34',0),(5830,112,'2014-08-26','2014-08-26 03:54:34',0),(5831,120,'2014-08-26','2014-08-26 03:57:31',0),(5832,112,'2014-08-26','2014-08-26 04:00:28',0),(5833,112,'2014-08-26','2014-08-26 04:03:25',0),(5834,120,'2014-08-26','2014-08-26 04:06:21',0),(5835,133,'2014-08-26','2014-08-26 04:09:18',0),(5836,112,'2014-08-26','2014-08-26 04:51:11',0),(5837,112,'2014-08-26','2014-08-26 05:45:49',0),(5838,1,'2014-08-26','2014-08-26 08:58:25',0),(5839,133,'2014-08-26','2014-08-26 08:58:28',0),(5840,112,'2014-08-26','2014-08-26 11:20:22',0),(5841,112,'2014-08-26','2014-08-26 11:20:22',0),(5842,133,'2014-08-26','2014-08-26 11:20:23',0),(5843,133,'2014-08-26','2014-08-26 13:35:25',0),(5844,1,'2014-08-26','2014-08-26 15:03:30',0),(5845,112,'2014-08-26','2014-08-26 15:51:59',0),(5846,112,'2014-08-26','2014-08-26 16:08:57',0),(5847,133,'2014-08-26','2014-08-26 17:15:07',0),(5848,1,'2014-08-27','2014-08-26 23:25:51',0),(5849,112,'2014-08-27','2014-08-27 02:07:42',0),(5850,112,'2014-08-27','2014-08-27 04:39:17',0),(5851,1,'2014-08-27','2014-08-27 05:44:06',0),(5852,112,'2014-08-27','2014-08-27 05:52:45',0),(5853,112,'2014-08-27','2014-08-27 05:52:45',0),(5854,133,'2014-08-27','2014-08-27 05:52:45',0),(5855,112,'2014-08-27','2014-08-27 06:49:34',0),(5856,112,'2014-08-27','2014-08-27 07:53:01',0),(5857,133,'2014-08-27','2014-08-27 09:28:51',0),(5858,1,'2014-08-27','2014-08-27 11:52:30',0),(5859,133,'2014-08-27','2014-08-27 11:52:33',0),(5860,110,'2014-08-27','2014-08-27 16:17:09',0),(5861,1,'2014-08-27','2014-08-27 19:06:59',0),(5862,1,'2014-08-28','2014-08-28 03:01:36',0),(5863,112,'2014-08-28','2014-08-28 03:01:57',0),(5864,112,'2014-08-28','2014-08-28 03:01:57',0),(5865,133,'2014-08-28','2014-08-28 03:01:57',0),(5866,133,'2014-08-28','2014-08-28 11:07:53',0),(5867,133,'2014-08-28','2014-08-28 11:07:57',0),(5868,1,'2014-08-28','2014-08-28 11:39:27',0),(5869,112,'2014-08-28','2014-08-28 13:38:29',0),(5870,112,'2014-08-28','2014-08-28 16:24:40',0),(5871,112,'2014-08-28','2014-08-28 17:18:16',0),(5872,112,'2014-08-28','2014-08-28 17:18:16',0),(5873,133,'2014-08-28','2014-08-28 17:18:16',0),(5874,1,'2014-08-28','2014-08-28 17:44:41',0),(5875,112,'2014-08-28','2014-08-28 18:54:40',0),(5876,133,'2014-08-28','2014-08-28 19:21:42',0),(5877,112,'2014-08-28','2014-08-28 19:47:17',0),(5878,112,'2014-08-28','2014-08-28 21:02:33',0),(5879,112,'2014-08-28','2014-08-28 22:18:21',0),(5880,112,'2014-08-28','2014-08-28 22:19:31',0),(5881,112,'2014-08-28','2014-08-28 22:19:33',0),(5882,133,'2014-08-28','2014-08-28 22:19:35',0),(5883,112,'2014-08-28','2014-08-28 22:19:36',0),(5884,112,'2014-08-28','2014-08-28 22:19:37',0),(5885,112,'2014-08-28','2014-08-28 22:19:38',0),(5886,112,'2014-08-28','2014-08-28 22:19:40',0),(5887,112,'2014-08-28','2014-08-28 22:19:41',0),(5888,1,'2014-08-29','2014-08-29 00:04:03',0),(5889,112,'2014-08-29','2014-08-29 02:08:46',0),(5890,112,'2014-08-29','2014-08-29 02:08:46',0),(5891,133,'2014-08-29','2014-08-29 02:08:47',0),(5892,1,'2014-08-29','2014-08-29 07:38:52',0),(5893,133,'2014-08-29','2014-08-29 10:21:57',0),(5894,133,'2014-08-29','2014-08-29 10:21:58',0),(5895,1,'2014-08-29','2014-08-29 14:45:21',0),(5896,112,'2014-08-29','2014-08-29 15:23:47',0),(5897,112,'2014-08-29','2014-08-29 19:17:22',0),(5898,120,'2014-08-29','2014-08-29 21:02:47',0),(5899,1,'2014-08-29','2014-08-29 21:38:02',0),(5900,1,'2014-08-30','2014-08-30 05:15:09',0),(5901,112,'2014-08-30','2014-08-30 06:20:07',0),(5902,112,'2014-08-30','2014-08-30 06:20:07',0),(5903,133,'2014-08-30','2014-08-30 06:20:08',0),(5904,112,'2014-08-30','2014-08-30 08:38:35',0),(5905,112,'2014-08-30','2014-08-30 08:43:47',0),(5906,1,'2014-08-30','2014-08-30 11:32:18',0),(5907,133,'2014-08-30','2014-08-30 15:02:32',0),(5908,133,'2014-08-30','2014-08-30 15:02:34',0),(5909,133,'2014-08-30','2014-08-30 18:24:35',0),(5910,1,'2014-08-30','2014-08-30 20:49:47',0),(5911,133,'2014-08-30','2014-08-30 22:32:05',0),(5912,112,'2014-08-30','2014-08-30 22:32:05',0),(5913,112,'2014-08-30','2014-08-30 22:32:06',0),(5914,112,'2014-08-30','2014-08-30 22:32:06',0),(5915,1,'2014-08-31','2014-08-31 03:06:10',0),(5916,112,'2014-08-31','2014-08-31 07:41:37',0),(5917,1,'2014-08-31','2014-08-31 10:26:19',0),(5918,112,'2014-08-31','2014-08-31 14:57:03',0),(5919,1,'2014-08-31','2014-08-31 16:33:50',0),(5920,1,'2014-08-31','2014-08-31 22:51:39',0),(5921,133,'2014-09-01','2014-09-01 03:20:12',0),(5922,133,'2014-09-01','2014-09-01 03:20:13',0),(5923,133,'2014-09-01','2014-09-01 03:20:14',0),(5924,1,'2014-09-01','2014-09-01 05:46:23',0),(5925,112,'2014-09-01','2014-09-01 08:36:36',0),(5926,112,'2014-09-01','2014-09-01 08:55:27',0),(5927,112,'2014-09-01','2014-09-01 08:55:27',0),(5928,133,'2014-09-01','2014-09-01 09:24:35',0),(5929,1,'2014-09-01','2014-09-01 12:05:18',0),(5930,112,'2014-09-01','2014-09-01 12:45:27',0),(5931,112,'2014-09-01','2014-09-01 12:48:24',0),(5932,112,'2014-09-01','2014-09-01 17:55:32',0),(5933,112,'2014-09-01','2014-09-01 17:55:36',0),(5934,133,'2014-09-01','2014-09-01 17:55:41',0),(5935,112,'2014-09-01','2014-09-01 17:55:46',0),(5936,112,'2014-09-01','2014-09-01 17:55:51',0),(5937,1,'2014-09-01','2014-09-01 19:39:55',0),(5938,133,'2014-09-02','2014-09-02 01:02:29',0),(5939,112,'2014-09-02','2014-09-02 01:05:24',0),(5940,112,'2014-09-02','2014-09-02 01:08:20',0),(5941,1,'2014-09-02','2014-09-02 02:49:36',0),(5942,112,'2014-09-02','2014-09-02 03:36:30',0),(5943,120,'2014-09-02','2014-09-02 07:11:08',0),(5944,1,'2014-09-02','2014-09-02 09:11:02',0),(5945,112,'2014-09-02','2014-09-02 11:27:57',0),(5946,112,'2014-09-02','2014-09-02 11:29:52',0),(5947,112,'2014-09-02','2014-09-02 11:35:58',0),(5948,1,'2014-09-02','2014-09-02 16:27:52',0),(5949,133,'2014-09-02','2014-09-02 18:20:59',0),(5950,112,'2014-09-02','2014-09-02 18:20:59',0),(5951,112,'2014-09-02','2014-09-02 18:21:00',0),(5952,112,'2014-09-02','2014-09-02 20:23:20',0),(5953,112,'2014-09-03','2014-09-02 23:04:36',0),(5954,1,'2014-09-03','2014-09-02 23:55:55',0),(5955,133,'2014-09-03','2014-09-03 04:53:58',0),(5956,133,'2014-09-03','2014-09-03 04:53:58',0),(5957,112,'2014-09-03','2014-09-03 10:24:11',0),(5958,112,'2014-09-03','2014-09-03 10:27:23',0),(5959,1,'2014-09-03','2014-09-03 10:49:42',0),(5960,112,'2014-09-03','2014-09-03 14:53:20',0),(5961,112,'2014-09-03','2014-09-03 14:53:24',0),(5962,133,'2014-09-03','2014-09-03 14:53:29',0),(5963,112,'2014-09-03','2014-09-03 15:45:33',0),(5964,112,'2014-09-03','2014-09-03 17:01:20',0),(5965,1,'2014-09-03','2014-09-03 18:55:02',0),(5966,133,'2014-09-03','2014-09-03 19:39:32',0),(5967,112,'2014-09-03','2014-09-03 20:29:45',0),(5968,112,'2014-09-04','2014-09-03 23:02:07',0),(5969,1,'2014-09-04','2014-09-04 01:15:38',0),(5970,112,'2014-09-04','2014-09-04 01:15:38',0),(5971,112,'2014-09-04','2014-09-04 01:15:38',0),(5972,133,'2014-09-04','2014-09-04 01:15:39',0),(5973,1,'2014-09-04','2014-09-04 08:11:07',0),(5974,133,'2014-09-04','2014-09-04 09:10:18',0),(5975,112,'2014-09-04','2014-09-04 10:40:29',0),(5976,133,'2014-09-04','2014-09-04 11:30:34',0),(5977,133,'2014-09-04','2014-09-04 11:30:34',0),(5978,1,'2014-09-04','2014-09-04 16:39:44',0),(5979,1,'2014-09-05','2014-09-05 00:31:31',0),(5980,112,'2014-09-05','2014-09-05 02:11:04',0),(5981,112,'2014-09-05','2014-09-05 04:49:50',0),(5982,112,'2014-09-05','2014-09-05 04:49:50',0),(5983,133,'2014-09-05','2014-09-05 04:49:51',0),(5984,1,'2014-09-05','2014-09-05 07:51:08',0),(5985,1,'2014-09-05','2014-09-05 14:32:08',0),(5986,133,'2014-09-05','2014-09-05 18:10:53',0),(5987,133,'2014-09-05','2014-09-05 18:10:54',0),(5988,133,'2014-09-05','2014-09-05 18:11:15',0),(5989,133,'2014-09-05','2014-09-05 19:23:46',0),(5990,1,'2014-09-05','2014-09-05 20:52:17',0),(5991,112,'2014-09-05','2014-09-05 22:02:09',0),(5992,112,'2014-09-05','2014-09-05 22:02:09',0),(5993,112,'2014-09-05','2014-09-05 22:02:10',0),(5994,112,'2014-09-05','2014-09-05 22:02:10',0),(5995,1,'2014-09-06','2014-09-06 03:44:41',0),(5996,1,'2014-09-06','2014-09-06 10:44:24',0),(5997,133,'2014-09-06','2014-09-06 10:52:25',0),(5998,133,'2014-09-06','2014-09-06 10:52:26',0),(5999,1,'2014-09-06','2014-09-06 17:31:18',0),(6000,112,'2014-09-06','2014-09-06 20:03:22',0),(6001,133,'2014-09-06','2014-09-06 20:08:31',0),(6002,1,'2014-09-07','2014-09-06 23:39:03',0),(6003,112,'2014-09-07','2014-09-07 01:57:45',0),(6004,112,'2014-09-07','2014-09-07 03:10:42',0),(6005,112,'2014-09-07','2014-09-07 03:10:43',0),(6006,133,'2014-09-07','2014-09-07 03:10:43',0),(6007,112,'2014-09-07','2014-09-07 06:17:12',0),(6008,1,'2014-09-07','2014-09-07 10:37:55',0),(6009,112,'2014-09-07','2014-09-07 14:36:47',0),(6010,1,'2014-09-07','2014-09-07 16:39:55',0),(6011,112,'2014-09-07','2014-09-07 17:54:59',0),(6012,112,'2014-09-07','2014-09-07 19:17:04',0),(6013,112,'2014-09-07','2014-09-07 22:51:27',0),(6014,112,'2014-09-08','2014-09-07 23:54:49',0),(6015,1,'2014-09-08','2014-09-08 01:32:01',0),(6016,112,'2014-09-08','2014-09-08 04:37:39',0),(6017,133,'2014-09-08','2014-09-08 06:24:21',0),(6018,133,'2014-09-08','2014-09-08 06:24:22',0),(6019,1,'2014-09-08','2014-09-08 09:21:14',0),(6020,112,'2014-09-08','2014-09-08 10:18:30',0),(6021,133,'2014-09-08','2014-09-08 10:21:01',0),(6022,112,'2014-09-08','2014-09-08 14:28:05',0),(6023,1,'2014-09-08','2014-09-08 15:25:44',0),(6024,112,'2014-09-08','2014-09-08 18:11:37',0),(6025,1,'2014-09-08','2014-09-08 21:48:23',0),(6026,112,'2014-09-09','2014-09-08 23:26:16',0),(6027,112,'2014-09-09','2014-09-08 23:45:13',0),(6028,112,'2014-09-09','2014-09-09 04:29:26',0),(6029,112,'2014-09-09','2014-09-09 04:45:17',0),(6030,1,'2014-09-09','2014-09-09 06:48:27',0),(6031,133,'2014-09-09','2014-09-09 07:50:43',0),(6032,133,'2014-09-09','2014-09-09 07:50:45',0),(6033,133,'2014-09-09','2014-09-09 07:50:45',0),(6034,112,'2014-09-09','2014-09-09 08:54:42',0),(6035,1,'2014-09-09','2014-09-09 14:11:26',0),(6036,133,'2014-09-09','2014-09-09 14:11:57',0),(6037,133,'2014-09-09','2014-09-09 14:11:57',0),(6038,120,'2014-09-09','2014-09-09 15:01:45',0),(6039,112,'2014-09-09','2014-09-09 15:36:31',0),(6040,112,'2014-09-09','2014-09-09 15:36:31',0),(6041,133,'2014-09-09','2014-09-09 19:16:35',0),(6042,133,'2014-09-09','2014-09-09 19:16:36',0),(6043,1,'2014-09-09','2014-09-09 22:24:06',0),(6044,1,'2014-09-10','2014-09-10 05:03:52',0),(6045,133,'2014-09-10','2014-09-10 05:06:46',0),(6046,133,'2014-09-10','2014-09-10 06:42:46',0),(6047,133,'2014-09-10','2014-09-10 06:42:56',0),(6048,112,'2014-09-10','2014-09-10 06:43:42',0),(6049,112,'2014-09-10','2014-09-10 08:35:48',0),(6050,112,'2014-09-10','2014-09-10 08:35:48',0),(6051,133,'2014-09-10','2014-09-10 10:02:34',0),(6052,1,'2014-09-10','2014-09-10 12:04:02',0),(6053,112,'2014-09-10','2014-09-10 12:04:03',0),(6054,112,'2014-09-10','2014-09-10 12:04:03',0),(6055,133,'2014-09-10','2014-09-10 12:04:03',0),(6056,1,'2014-09-10','2014-09-10 19:09:24',0),(6057,133,'2014-09-10','2014-09-10 19:25:26',0),(6058,112,'2014-09-10','2014-09-10 22:31:19',0),(6059,112,'2014-09-11','2014-09-11 00:33:24',0),(6060,112,'2014-09-11','2014-09-11 00:44:39',0),(6061,1,'2014-09-11','2014-09-11 01:25:24',0),(6062,1,'2014-09-11','2014-09-11 01:25:24',0),(6063,1,'2014-09-11','2014-09-11 07:59:40',0),(6064,133,'2014-09-11','2014-09-11 08:15:44',0),(6065,133,'2014-09-11','2014-09-11 10:50:02',0),(6066,1,'2014-09-11','2014-09-11 14:09:16',0),(6067,112,'2014-09-11','2014-09-11 14:09:16',0),(6068,112,'2014-09-11','2014-09-11 14:09:16',0),(6069,1,'2014-09-11','2014-09-11 20:15:55',0),(6070,133,'2014-09-11','2014-09-11 20:38:54',0),(6071,133,'2014-09-11','2014-09-11 20:38:54',0),(6072,1,'2014-09-12','2014-09-12 03:40:09',0),(6073,133,'2014-09-12','2014-09-12 06:28:14',0),(6074,112,'2014-09-12','2014-09-12 07:19:06',0),(6075,120,'2014-09-12','2014-09-12 07:19:07',0),(6076,112,'2014-09-12','2014-09-12 07:22:04',0),(6077,112,'2014-09-12','2014-09-12 08:26:52',0),(6078,112,'2014-09-12','2014-09-12 09:16:29',0),(6079,112,'2014-09-12','2014-09-12 09:16:30',0),(6080,1,'2014-09-12','2014-09-12 11:22:35',0),(6081,112,'2014-09-12','2014-09-12 15:03:05',0),(6082,112,'2014-09-12','2014-09-12 15:03:06',0),(6083,133,'2014-09-12','2014-09-12 15:03:06',0),(6084,112,'2014-09-12','2014-09-12 15:03:08',0),(6085,112,'2014-09-12','2014-09-12 15:03:08',0),(6086,112,'2014-09-12','2014-09-12 15:03:10',0),(6087,112,'2014-09-12','2014-09-12 15:03:11',0),(6088,112,'2014-09-12','2014-09-12 15:03:11',0),(6089,112,'2014-09-12','2014-09-12 17:19:36',0),(6090,1,'2014-09-12','2014-09-12 17:24:35',0),(6091,112,'2014-09-12','2014-09-12 19:09:36',0),(6092,112,'2014-09-12','2014-09-12 20:05:54',0),(6093,112,'2014-09-12','2014-09-12 22:04:36',0),(6094,1,'2014-09-13','2014-09-12 23:35:30',0),(6095,112,'2014-09-13','2014-09-12 23:58:34',0),(6096,133,'2014-09-13','2014-09-13 02:14:16',0),(6097,133,'2014-09-13','2014-09-13 03:34:42',0),(6098,112,'2014-09-13','2014-09-13 04:52:57',0),(6099,1,'2014-09-13','2014-09-13 06:41:44',0),(6100,1,'2014-09-13','2014-09-13 13:35:35',0),(6101,112,'2014-09-13','2014-09-13 14:59:37',0),(6102,112,'2014-09-13','2014-09-13 15:14:12',0),(6103,112,'2014-09-13','2014-09-13 15:14:14',0),(6104,133,'2014-09-13','2014-09-13 15:14:23',0),(6105,133,'2014-09-13','2014-09-13 15:14:23',0),(6106,112,'2014-09-13','2014-09-13 16:29:41',0),(6107,112,'2014-09-13','2014-09-13 18:25:51',0),(6108,112,'2014-09-13','2014-09-13 19:08:44',0),(6109,112,'2014-09-13','2014-09-13 20:42:33',0),(6110,1,'2014-09-13','2014-09-13 21:29:37',0),(6111,120,'2014-09-14','2014-09-13 23:19:37',0),(6112,112,'2014-09-14','2014-09-14 01:49:36',0),(6113,120,'2014-09-14','2014-09-14 02:24:36',0),(6114,112,'2014-09-14','2014-09-14 04:11:35',0),(6115,1,'2014-09-14','2014-09-14 04:34:45',0),(6116,112,'2014-09-14','2014-09-14 06:00:15',0),(6117,112,'2014-09-14','2014-09-14 06:39:37',0),(6118,120,'2014-09-14','2014-09-14 07:09:37',0),(6119,112,'2014-09-14','2014-09-14 08:19:36',0),(6120,120,'2014-09-14','2014-09-14 09:09:37',0),(6121,120,'2014-09-14','2014-09-14 09:33:33',0),(6122,112,'2014-09-14','2014-09-14 10:04:36',0),(6123,1,'2014-09-14','2014-09-14 11:03:23',0),(6124,120,'2014-09-14','2014-09-14 11:09:36',0),(6125,112,'2014-09-14','2014-09-14 12:57:09',0),(6126,112,'2014-09-14','2014-09-14 13:23:02',0),(6127,120,'2014-09-14','2014-09-14 13:23:02',0),(6128,133,'2014-09-14','2014-09-14 15:26:15',0),(6129,133,'2014-09-14','2014-09-14 15:26:16',0),(6130,133,'2014-09-14','2014-09-14 15:38:10',0),(6131,112,'2014-09-14','2014-09-14 16:44:54',0),(6132,1,'2014-09-14','2014-09-14 17:15:48',0),(6133,112,'2014-09-14','2014-09-14 17:17:27',0),(6134,112,'2014-09-14','2014-09-14 17:17:27',0),(6135,112,'2014-09-14','2014-09-14 22:10:23',0),(6136,1,'2014-09-15','2014-09-15 00:10:27',0),(6137,112,'2014-09-15','2014-09-15 03:34:50',0),(6138,112,'2014-09-15','2014-09-15 04:26:18',0),(6139,112,'2014-09-15','2014-09-15 05:14:10',0),(6140,1,'2014-09-15','2014-09-15 07:32:20',0),(6141,133,'2014-09-15','2014-09-15 07:32:26',0),(6142,133,'2014-09-15','2014-09-15 07:32:26',0),(6143,112,'2014-09-15','2014-09-15 08:10:04',0),(6144,120,'2014-09-15','2014-09-15 12:48:36',0),(6145,1,'2014-09-15','2014-09-15 13:57:48',0),(6146,133,'2014-09-15','2014-09-15 15:13:12',0),(6147,1,'2014-09-15','2014-09-15 20:33:28',0),(6148,133,'2014-09-15','2014-09-15 20:33:47',0),(6149,133,'2014-09-15','2014-09-15 21:34:43',0),(6150,133,'2014-09-15','2014-09-15 21:34:43',0),(6151,112,'2014-09-16','2014-09-16 01:52:38',0),(6152,133,'2014-09-16','2014-09-16 02:15:48',0),(6153,112,'2014-09-16','2014-09-16 02:19:06',0),(6154,1,'2014-09-16','2014-09-16 02:38:45',0),(6155,133,'2014-09-16','2014-09-16 02:41:58',0),(6156,133,'2014-09-16','2014-09-16 02:43:45',0),(6157,112,'2014-09-16','2014-09-16 03:39:38',0),(6158,112,'2014-09-16','2014-09-16 04:14:36',0),(6159,112,'2014-09-16','2014-09-16 06:30:42',0),(6160,112,'2014-09-16','2014-09-16 07:57:25',0),(6161,1,'2014-09-16','2014-09-16 08:55:45',0),(6162,133,'2014-09-16','2014-09-16 09:06:09',0),(6163,133,'2014-09-16','2014-09-16 09:06:10',0),(6164,133,'2014-09-16','2014-09-16 09:06:10',0),(6165,112,'2014-09-16','2014-09-16 09:55:12',0),(6166,112,'2014-09-16','2014-09-16 13:09:17',0),(6167,112,'2014-09-16','2014-09-16 14:25:24',0),(6168,120,'2014-09-16','2014-09-16 14:25:25',0),(6169,112,'2014-09-16','2014-09-16 14:25:40',0),(6170,112,'2014-09-16','2014-09-16 14:29:33',0),(6171,112,'2014-09-16','2014-09-16 14:30:58',0),(6172,120,'2014-09-16','2014-09-16 14:30:58',0),(6173,112,'2014-09-16','2014-09-16 14:31:45',0),(6174,1,'2014-09-16','2014-09-16 15:34:20',0),(6175,112,'2014-09-16','2014-09-16 16:36:37',0),(6176,133,'2014-09-16','2014-09-16 18:39:57',0),(6177,133,'2014-09-16','2014-09-16 18:39:58',0),(6178,133,'2014-09-16','2014-09-16 18:40:37',0),(6179,112,'2014-09-16','2014-09-16 21:01:32',0),(6180,1,'2014-09-16','2014-09-16 21:39:37',0),(6181,112,'2014-09-16','2014-09-16 22:52:58',0),(6182,112,'2014-09-17','2014-09-16 23:47:35',0),(6183,112,'2014-09-17','2014-09-17 01:09:51',0),(6184,133,'2014-09-17','2014-09-17 02:37:53',0),(6185,1,'2014-09-17','2014-09-17 05:58:23',0),(6186,1,'2014-09-17','2014-09-17 12:07:17',0),(6187,133,'2014-09-17','2014-09-17 13:57:32',0),(6188,133,'2014-09-17','2014-09-17 13:57:32',0),(6189,1,'2014-09-17','2014-09-17 18:49:42',0),(6190,133,'2014-09-17','2014-09-17 19:26:40',0),(6191,112,'2014-09-18','2014-09-17 23:52:38',0),(6192,1,'2014-09-18','2014-09-18 02:34:43',0),(6193,133,'2014-09-18','2014-09-18 05:28:03',0),(6194,133,'2014-09-18','2014-09-18 05:28:06',0),(6195,1,'2014-09-18','2014-09-18 10:03:44',0),(6196,112,'2014-09-18','2014-09-18 10:49:00',0),(6197,112,'2014-09-18','2014-09-18 10:49:05',0),(6198,112,'2014-09-18','2014-09-18 11:20:38',0),(6199,112,'2014-09-18','2014-09-18 12:26:29',0),(6200,1,'2014-09-18','2014-09-18 16:52:54',0),(6201,1,'2014-09-19','2014-09-19 00:53:03',0),(6202,133,'2014-09-19','2014-09-19 00:53:06',0),(6203,112,'2014-09-19','2014-09-19 00:53:09',0),(6204,112,'2014-09-19','2014-09-19 00:53:12',0),(6205,112,'2014-09-19','2014-09-19 01:02:16',0),(6206,112,'2014-09-19','2014-09-19 02:02:28',0),(6207,112,'2014-09-19','2014-09-19 02:02:32',0),(6208,112,'2014-09-19','2014-09-19 02:31:02',0),(6209,112,'2014-09-19','2014-09-19 02:31:02',0),(6210,133,'2014-09-19','2014-09-19 06:22:48',0),(6211,133,'2014-09-19','2014-09-19 06:22:51',0),(6212,133,'2014-09-19','2014-09-19 06:52:46',0),(6213,133,'2014-09-19','2014-09-19 06:52:47',0),(6214,1,'2014-09-19','2014-09-19 07:05:36',0),(6215,1,'2014-09-19','2014-09-19 07:05:36',0),(6216,112,'2014-09-19','2014-09-19 10:30:29',0),(6217,133,'2014-09-19','2014-09-19 11:41:17',0),(6218,1,'2014-09-19','2014-09-19 13:07:55',0),(6219,133,'2014-09-19','2014-09-19 13:29:56',0),(6220,120,'2014-09-19','2014-09-19 16:51:52',0),(6221,1,'2014-09-19','2014-09-19 21:14:38',0),(6222,133,'2014-09-20','2014-09-20 01:06:12',0),(6223,112,'2014-09-20','2014-09-20 01:06:13',0),(6224,112,'2014-09-20','2014-09-20 01:06:15',0),(6225,112,'2014-09-20','2014-09-20 01:06:16',0),(6226,112,'2014-09-20','2014-09-20 01:06:17',0),(6227,1,'2014-09-20','2014-09-20 03:19:36',0),(6228,112,'2014-09-20','2014-09-20 06:22:00',0),(6229,112,'2014-09-20','2014-09-20 06:58:15',0),(6230,112,'2014-09-20','2014-09-20 08:42:46',0),(6231,1,'2014-09-20','2014-09-20 09:21:50',0),(6232,112,'2014-09-20','2014-09-20 09:21:51',0),(6233,112,'2014-09-20','2014-09-20 09:21:54',0),(6234,133,'2014-09-20','2014-09-20 09:22:00',0),(6235,112,'2014-09-20','2014-09-20 09:22:05',0),(6236,112,'2014-09-20','2014-09-20 09:22:10',0),(6237,112,'2014-09-20','2014-09-20 12:56:58',0),(6238,133,'2014-09-20','2014-09-20 15:22:23',0),(6239,133,'2014-09-20','2014-09-20 15:22:24',0),(6240,133,'2014-09-20','2014-09-20 15:23:07',0),(6241,1,'2014-09-20','2014-09-20 16:07:39',0),(6242,112,'2014-09-20','2014-09-20 18:23:31',0),(6243,112,'2014-09-20','2014-09-20 22:22:29',0),(6244,1,'2014-09-21','2014-09-21 00:16:16',0),(6245,133,'2014-09-21','2014-09-21 04:04:34',0),(6246,133,'2014-09-21','2014-09-21 04:04:35',0),(6247,1,'2014-09-21','2014-09-21 06:39:05',0),(6248,112,'2014-09-21','2014-09-21 09:18:04',0),(6249,1,'2014-09-21','2014-09-21 13:25:58',0),(6250,133,'2014-09-21','2014-09-21 14:32:39',0),(6251,133,'2014-09-21','2014-09-21 14:32:42',0),(6252,1,'2014-09-21','2014-09-21 21:16:50',0),(6253,112,'2014-09-21','2014-09-21 21:53:24',0),(6254,112,'2014-09-22','2014-09-22 02:48:41',0),(6255,1,'2014-09-22','2014-09-22 04:45:45',0),(6256,112,'2014-09-22','2014-09-22 07:15:36',0),(6257,112,'2014-09-22','2014-09-22 08:14:28',0),(6258,112,'2014-09-22','2014-09-22 10:11:49',0),(6259,1,'2014-09-22','2014-09-22 10:59:09',0),(6260,112,'2014-09-22','2014-09-22 11:09:36',0),(6261,112,'2014-09-22','2014-09-22 12:14:31',0),(6262,112,'2014-09-22','2014-09-22 12:14:36',0),(6263,133,'2014-09-22','2014-09-22 12:15:14',0),(6264,112,'2014-09-22','2014-09-22 12:17:11',0),(6265,133,'2014-09-22','2014-09-22 13:03:49',0),(6266,133,'2014-09-22','2014-09-22 13:03:50',0),(6267,112,'2014-09-22','2014-09-22 14:32:33',0),(6268,1,'2014-09-22','2014-09-22 20:42:00',0),(6269,112,'2014-09-23','2014-09-23 02:22:47',0),(6270,133,'2014-09-23','2014-09-23 03:24:52',0),(6271,133,'2014-09-23','2014-09-23 03:24:55',0),(6272,1,'2014-09-23','2014-09-23 04:31:21',0),(6273,112,'2014-09-23','2014-09-23 08:36:53',0),(6274,112,'2014-09-23','2014-09-23 10:27:27',0),(6275,1,'2014-09-23','2014-09-23 10:58:54',0),(6276,112,'2014-09-23','2014-09-23 14:07:22',0),(6277,112,'2014-09-23','2014-09-23 14:07:27',0),(6278,133,'2014-09-23','2014-09-23 14:07:32',0),(6279,112,'2014-09-23','2014-09-23 14:39:38',0),(6280,112,'2014-09-23','2014-09-23 16:05:28',0),(6281,112,'2014-09-23','2014-09-23 16:05:49',0),(6282,112,'2014-09-23','2014-09-23 16:06:03',0),(6283,1,'2014-09-23','2014-09-23 17:34:40',0),(6284,112,'2014-09-23','2014-09-23 22:43:56',0),(6285,133,'2014-09-23','2014-09-23 22:43:56',0),(6286,112,'2014-09-23','2014-09-23 22:43:56',0),(6287,1,'2014-09-24','2014-09-24 00:49:47',0),(6288,112,'2014-09-24','2014-09-24 02:14:44',0),(6289,133,'2014-09-24','2014-09-24 03:00:43',0),(6290,133,'2014-09-24','2014-09-24 03:00:45',0),(6291,112,'2014-09-24','2014-09-24 03:13:22',0),(6292,112,'2014-09-24','2014-09-24 03:49:37',0),(6293,112,'2014-09-24','2014-09-24 04:54:39',0),(6294,112,'2014-09-24','2014-09-24 06:49:38',0),(6295,112,'2014-09-24','2014-09-24 06:54:36',0),(6296,1,'2014-09-24','2014-09-24 07:07:43',0),(6297,112,'2014-09-24','2014-09-24 09:04:24',0),(6298,112,'2014-09-24','2014-09-24 09:04:37',0),(6299,112,'2014-09-24','2014-09-24 10:38:51',0),(6300,112,'2014-09-24','2014-09-24 10:55:14',0),(6301,1,'2014-09-24','2014-09-24 13:12:19',0),(6302,133,'2014-09-24','2014-09-24 13:13:10',0),(6303,133,'2014-09-24','2014-09-24 13:13:10',0),(6304,112,'2014-09-24','2014-09-24 13:43:46',0),(6305,112,'2014-09-24','2014-09-24 15:32:02',0),(6306,133,'2014-09-24','2014-09-24 19:31:48',0),(6307,133,'2014-09-24','2014-09-24 19:31:49',0),(6308,1,'2014-09-24','2014-09-24 19:42:59',0),(6309,133,'2014-09-24','2014-09-24 19:44:20',0),(6310,112,'2014-09-25','2014-09-25 00:48:34',0),(6311,1,'2014-09-25','2014-09-25 01:58:25',0),(6312,112,'2014-09-25','2014-09-25 07:11:43',0),(6313,1,'2014-09-25','2014-09-25 09:08:08',0),(6314,112,'2014-09-25','2014-09-25 10:06:53',0),(6315,112,'2014-09-25','2014-09-25 10:53:32',0),(6316,133,'2014-09-25','2014-09-25 15:04:35',0),(6317,133,'2014-09-25','2014-09-25 15:04:36',0),(6318,133,'2014-09-25','2014-09-25 17:51:34',0),(6319,133,'2014-09-25','2014-09-25 17:51:36',0),(6320,1,'2014-09-25','2014-09-25 18:12:22',0),(6321,1,'2014-09-26','2014-09-26 01:01:12',0),(6322,112,'2014-09-26','2014-09-26 03:44:50',0),(6323,112,'2014-09-26','2014-09-26 05:02:43',0),(6324,133,'2014-09-26','2014-09-26 06:27:15',0),(6325,1,'2014-09-26','2014-09-26 07:18:37',0),(6326,1,'2014-09-26','2014-09-26 13:42:09',0),(6327,133,'2014-09-26','2014-09-26 14:26:33',0),(6328,133,'2014-09-26','2014-09-26 14:26:33',0),(6329,120,'2014-09-26','2014-09-26 15:10:02',0),(6330,112,'2014-09-26','2014-09-26 16:35:27',0),(6331,112,'2014-09-26','2014-09-26 18:19:01',0),(6332,1,'2014-09-26','2014-09-26 21:19:36',0),(6333,133,'2014-09-27','2014-09-26 23:06:47',0),(6334,112,'2014-09-27','2014-09-26 23:06:48',0),(6335,112,'2014-09-27','2014-09-26 23:06:48',0),(6336,112,'2014-09-27','2014-09-26 23:06:49',0),(6337,112,'2014-09-27','2014-09-26 23:06:49',0),(6338,1,'2014-09-27','2014-09-27 04:34:36',0),(6339,133,'2014-09-27','2014-09-27 10:21:26',0),(6340,133,'2014-09-27','2014-09-27 10:21:27',0),(6341,1,'2014-09-27','2014-09-27 11:08:04',0),(6342,133,'2014-09-27','2014-09-27 11:46:16',0),(6343,1,'2014-09-27','2014-09-27 17:40:40',0),(6344,133,'2014-09-27','2014-09-27 21:12:44',0),(6345,133,'2014-09-27','2014-09-27 21:12:45',0),(6346,112,'2014-09-27','2014-09-27 21:50:15',0),(6347,1,'2014-09-28','2014-09-27 23:49:39',0),(6348,1,'2014-09-28','2014-09-28 06:09:38',0),(6349,112,'2014-09-28','2014-09-28 06:10:22',0),(6350,112,'2014-09-28','2014-09-28 06:10:22',0),(6351,133,'2014-09-28','2014-09-28 06:10:22',0),(6352,112,'2014-09-28','2014-09-28 11:11:05',0),(6353,1,'2014-09-28','2014-09-28 13:49:00',0),(6354,112,'2014-09-28','2014-09-28 17:41:37',0),(6355,133,'2014-09-28','2014-09-28 17:41:37',0),(6356,112,'2014-09-28','2014-09-28 17:41:37',0),(6357,1,'2014-09-28','2014-09-28 20:14:37',0),(6358,112,'2014-09-29','2014-09-29 00:41:05',0),(6359,1,'2014-09-29','2014-09-29 06:50:04',0),(6360,133,'2014-09-29','2014-09-29 06:52:22',0),(6361,112,'2014-09-29','2014-09-29 07:06:40',0),(6362,112,'2014-09-29','2014-09-29 07:08:56',0),(6363,112,'2014-09-29','2014-09-29 07:14:11',0),(6364,112,'2014-09-29','2014-09-29 07:53:30',0),(6365,112,'2014-09-29','2014-09-29 07:53:34',0),(6366,120,'2014-09-29','2014-09-29 08:29:46',0),(6367,112,'2014-09-29','2014-09-29 09:57:54',0),(6368,1,'2014-09-29','2014-09-29 13:49:31',0),(6369,112,'2014-09-29','2014-09-29 14:24:37',0),(6370,112,'2014-09-29','2014-09-29 15:21:05',0),(6371,133,'2014-09-29','2014-09-29 16:14:38',0),(6372,112,'2014-09-29','2014-09-29 16:14:38',0),(6373,112,'2014-09-29','2014-09-29 16:14:39',0),(6374,112,'2014-09-29','2014-09-29 17:44:36',0),(6375,112,'2014-09-29','2014-09-29 18:01:21',0),(6376,112,'2014-09-29','2014-09-29 18:01:21',0),(6377,1,'2014-09-29','2014-09-29 19:55:44',0),(6378,112,'2014-09-29','2014-09-29 20:41:09',0),(6379,133,'2014-09-29','2014-09-29 21:33:57',0),(6380,112,'2014-09-30','2014-09-29 23:37:38',0),(6381,112,'2014-09-30','2014-09-30 00:01:45',0),(6382,1,'2014-09-30','2014-09-30 02:16:33',0),(6383,1,'2014-09-30','2014-09-30 08:35:54',0),(6384,112,'2014-09-30','2014-09-30 13:07:18',0),(6385,133,'2014-09-30','2014-09-30 13:12:49',0),(6386,133,'2014-09-30','2014-09-30 13:12:50',0),(6387,1,'2014-09-30','2014-09-30 15:02:02',0),(6388,120,'2014-09-30','2014-09-30 16:39:12',0),(6389,1,'2014-09-30','2014-09-30 22:32:54',0),(6390,1,'2014-10-01','2014-10-01 04:50:58',0),(6391,133,'2014-10-01','2014-10-01 04:51:29',0),(6392,133,'2014-10-01','2014-10-01 04:51:31',0),(6393,133,'2014-10-01','2014-10-01 05:34:57',0),(6394,112,'2014-10-01','2014-10-01 08:34:39',0),(6395,133,'2014-10-01','2014-10-01 09:55:50',0),(6396,112,'2014-10-01','2014-10-01 09:59:35',0),(6397,112,'2014-10-01','2014-10-01 10:32:48',0),(6398,112,'2014-10-01','2014-10-01 10:33:42',0),(6399,112,'2014-10-01','2014-10-01 10:36:14',0),(6400,1,'2014-10-01','2014-10-01 10:53:57',0),(6401,1,'2014-10-01','2014-10-01 17:07:36',0),(6402,133,'2014-10-01','2014-10-01 17:07:50',0),(6403,133,'2014-10-01','2014-10-01 17:07:51',0),(6404,133,'2014-10-01','2014-10-01 20:32:28',0),(6405,133,'2014-10-01','2014-10-01 20:32:32',0),(6406,133,'2014-10-01','2014-10-01 21:33:09',0),(6407,1,'2014-10-02','2014-10-01 23:38:24',0),(6408,133,'2014-10-02','2014-10-02 00:43:01',0),(6409,112,'2014-10-02','2014-10-02 02:18:51',0),(6410,112,'2014-10-02','2014-10-02 02:18:52',0),(6411,112,'2014-10-02','2014-10-02 04:20:13',0),(6412,112,'2014-10-02','2014-10-02 04:20:16',0),(6413,1,'2014-10-02','2014-10-02 07:19:36',0),(6414,112,'2014-10-02','2014-10-02 09:03:06',0),(6415,112,'2014-10-02','2014-10-02 10:24:37',0),(6416,133,'2014-10-02','2014-10-02 13:10:23',0),(6417,133,'2014-10-02','2014-10-02 13:10:23',0),(6418,133,'2014-10-02','2014-10-02 13:10:23',0),(6419,1,'2014-10-02','2014-10-02 13:33:27',0),(6420,133,'2014-10-02','2014-10-02 16:36:41',0),(6421,133,'2014-10-02','2014-10-02 18:21:48',0),(6422,112,'2014-10-02','2014-10-02 19:15:58',0),(6423,1,'2014-10-02','2014-10-02 21:17:49',0),(6424,133,'2014-10-02','2014-10-02 21:17:50',0),(6425,112,'2014-10-02','2014-10-02 21:17:50',0),(6426,112,'2014-10-02','2014-10-02 21:17:51',0),(6427,120,'2014-10-03','2014-10-02 23:11:06',0),(6428,1,'2014-10-03','2014-10-03 04:51:03',0),(6429,133,'2014-10-03','2014-10-03 06:00:10',0),(6430,133,'2014-10-03','2014-10-03 06:00:11',0),(6431,1,'2014-10-03','2014-10-03 11:13:08',0),(6432,112,'2014-10-03','2014-10-03 11:13:09',0),(6433,112,'2014-10-03','2014-10-03 11:13:13',0),(6434,112,'2014-10-03','2014-10-03 11:13:23',0),(6435,112,'2014-10-03','2014-10-03 11:13:27',0),(6436,133,'2014-10-03','2014-10-03 13:22:39',0),(6437,133,'2014-10-03','2014-10-03 13:22:42',0),(6438,133,'2014-10-03','2014-10-03 13:23:28',0),(6439,1,'2014-10-03','2014-10-03 19:03:14',0),(6440,1,'2014-10-04','2014-10-04 01:57:13',0),(6441,1,'2014-10-04','2014-10-04 08:16:50',0),(6442,1,'2014-10-04','2014-10-04 14:33:03',0),(6443,112,'2014-10-04','2014-10-04 15:04:47',0),(6444,120,'2014-10-04','2014-10-04 15:04:53',0),(6445,112,'2014-10-04','2014-10-04 15:08:38',0),(6446,133,'2014-10-04','2014-10-04 15:08:42',0),(6447,112,'2014-10-04','2014-10-04 15:08:47',0),(6448,112,'2014-10-04','2014-10-04 16:42:47',0),(6449,112,'2014-10-04','2014-10-04 17:00:12',0),(6450,112,'2014-10-04','2014-10-04 18:24:29',0),(6451,1,'2014-10-04','2014-10-04 21:33:46',0),(6452,133,'2014-10-04','2014-10-04 21:41:33',0),(6453,1,'2014-10-05','2014-10-05 04:44:40',0),(6454,112,'2014-10-05','2014-10-05 05:40:56',0),(6455,112,'2014-10-05','2014-10-05 06:39:47',0),(6456,112,'2014-10-05','2014-10-05 09:35:11',0),(6457,133,'2014-10-05','2014-10-05 10:37:08',0),(6458,133,'2014-10-05','2014-10-05 10:37:09',0),(6459,1,'2014-10-05','2014-10-05 11:11:20',0),(6460,112,'2014-10-05','2014-10-05 11:33:50',0),(6461,112,'2014-10-05','2014-10-05 14:27:41',0),(6462,112,'2014-10-05','2014-10-05 14:27:41',0),(6463,112,'2014-10-05','2014-10-05 14:27:41',0),(6464,112,'2014-10-05','2014-10-05 14:27:41',0),(6465,112,'2014-10-05','2014-10-05 16:29:26',0),(6466,112,'2014-10-05','2014-10-05 17:37:03',0),(6467,112,'2014-10-05','2014-10-05 17:37:08',0),(6468,133,'2014-10-05','2014-10-05 17:37:13',0),(6469,1,'2014-10-05','2014-10-05 17:37:18',0),(6470,1,'2014-10-06','2014-10-06 02:24:35',0),(6471,112,'2014-10-06','2014-10-06 03:20:34',0),(6472,133,'2014-10-06','2014-10-06 05:11:28',0),(6473,133,'2014-10-06','2014-10-06 05:11:29',0),(6474,112,'2014-10-06','2014-10-06 06:34:10',0),(6475,1,'2014-10-06','2014-10-06 08:51:50',0),(6476,112,'2014-10-06','2014-10-06 10:35:45',0),(6477,112,'2014-10-06','2014-10-06 10:35:50',0),(6478,133,'2014-10-06','2014-10-06 13:05:03',0),(6479,133,'2014-10-06','2014-10-06 13:05:04',0),(6480,133,'2014-10-06','2014-10-06 13:05:04',0),(6481,112,'2014-10-06','2014-10-06 16:04:35',0),(6482,1,'2014-10-06','2014-10-06 17:15:04',0),(6483,1,'2014-10-07','2014-10-07 00:44:52',0),(6484,112,'2014-10-07','2014-10-07 04:03:57',0),(6485,112,'2014-10-07','2014-10-07 04:03:57',0),(6486,133,'2014-10-07','2014-10-07 04:03:57',0),(6487,1,'2014-10-07','2014-10-07 07:57:25',0),(6488,112,'2014-10-07','2014-10-07 09:31:02',0),(6489,1,'2014-10-07','2014-10-07 14:46:14',0),(6490,112,'2014-10-07','2014-10-07 16:12:08',0),(6491,112,'2014-10-07','2014-10-07 18:38:11',0),(6492,1,'2014-10-07','2014-10-07 21:20:25',0),(6493,112,'2014-10-07','2014-10-07 22:25:17',0),(6494,1,'2014-10-08','2014-10-08 04:47:24',0),(6495,120,'2014-10-08','2014-10-08 07:50:52',0),(6496,112,'2014-10-08','2014-10-08 10:31:24',0),(6497,1,'2014-10-08','2014-10-08 11:01:44',0),(6498,1,'2014-10-08','2014-10-08 17:24:14',0),(6499,133,'2014-10-08','2014-10-08 17:40:03',0),(6500,112,'2014-10-08','2014-10-08 18:30:05',0),(6501,1,'2014-10-09','2014-10-08 23:33:32',0),(6502,112,'2014-10-09','2014-10-08 23:33:36',0),(6503,112,'2014-10-09','2014-10-08 23:33:36',0),(6504,112,'2014-10-09','2014-10-08 23:33:39',0),(6505,112,'2014-10-09','2014-10-08 23:33:40',0),(6506,112,'2014-10-09','2014-10-08 23:56:42',0),(6507,1,'2014-10-09','2014-10-09 06:34:08',0),(6508,1,'2014-10-09','2014-10-09 12:39:10',0),(6509,133,'2014-10-09','2014-10-09 17:19:58',0),(6510,133,'2014-10-09','2014-10-09 17:19:59',0),(6511,133,'2014-10-09','2014-10-09 17:20:57',0),(6512,133,'2014-10-09','2014-10-09 17:21:11',0),(6513,1,'2014-10-09','2014-10-09 18:43:57',0),(6514,112,'2014-10-09','2014-10-09 22:45:48',0),(6515,1,'2014-10-10','2014-10-10 01:16:22',0),(6516,112,'2014-10-10','2014-10-10 07:06:16',0),(6517,1,'2014-10-10','2014-10-10 08:05:45',0),(6518,112,'2014-10-10','2014-10-10 09:03:43',0),(6519,133,'2014-10-10','2014-10-10 09:23:20',0),(6520,133,'2014-10-10','2014-10-10 09:23:20',0),(6521,133,'2014-10-10','2014-10-10 10:05:00',0),(6522,133,'2014-10-10','2014-10-10 10:05:00',0),(6523,1,'2014-10-10','2014-10-10 14:23:49',0),(6524,112,'2014-10-10','2014-10-10 17:27:16',0),(6525,112,'2014-10-10','2014-10-10 18:52:51',0),(6526,133,'2014-10-10','2014-10-10 19:31:38',0),(6527,120,'2014-10-10','2014-10-10 19:59:36',0),(6528,112,'2014-10-10','2014-10-10 20:54:37',0),(6529,120,'2014-10-10','2014-10-10 21:24:37',0),(6530,1,'2014-10-10','2014-10-10 21:24:45',0),(6531,112,'2014-10-10','2014-10-10 22:20:40',0),(6532,120,'2014-10-11','2014-10-10 23:29:37',0),(6533,112,'2014-10-11','2014-10-11 00:49:36',0),(6534,1,'2014-10-11','2014-10-11 04:20:05',0),(6535,1,'2014-10-11','2014-10-11 11:44:22',0),(6536,133,'2014-10-11','2014-10-11 11:44:35',0),(6537,133,'2014-10-11','2014-10-11 11:44:35',0),(6538,112,'2014-10-11','2014-10-11 14:09:26',0),(6539,1,'2014-10-11','2014-10-11 18:27:54',0),(6540,133,'2014-10-11','2014-10-11 21:52:31',0),(6541,112,'2014-10-11','2014-10-11 21:52:33',0),(6542,112,'2014-10-11','2014-10-11 21:52:37',0),(6543,112,'2014-10-11','2014-10-11 21:52:40',0),(6544,112,'2014-10-11','2014-10-11 21:52:43',0),(6545,112,'2014-10-11','2014-10-11 21:52:49',0),(6546,112,'2014-10-11','2014-10-11 21:52:52',0),(6547,112,'2014-10-11','2014-10-11 21:52:55',0),(6548,112,'2014-10-11','2014-10-11 21:52:58',0),(6549,1,'2014-10-12','2014-10-12 04:37:17',0),(6550,133,'2014-10-12','2014-10-12 05:39:29',0),(6551,120,'2014-10-12','2014-10-12 07:37:50',0),(6552,1,'2014-10-12','2014-10-12 11:13:56',0),(6553,1,'2014-10-12','2014-10-12 17:27:02',0),(6554,112,'2014-10-12','2014-10-12 18:58:28',0),(6555,133,'2014-10-12','2014-10-12 18:58:28',0),(6556,112,'2014-10-12','2014-10-12 18:58:28',0),(6557,112,'2014-10-12','2014-10-12 19:16:47',0),(6558,112,'2014-10-12','2014-10-12 20:46:08',0),(6559,112,'2014-10-12','2014-10-12 21:15:57',0),(6560,112,'2014-10-12','2014-10-12 22:53:46',0),(6561,1,'2014-10-13','2014-10-12 23:29:36',0),(6562,133,'2014-10-13','2014-10-13 05:19:12',0),(6563,112,'2014-10-13','2014-10-13 05:19:15',0),(6564,112,'2014-10-13','2014-10-13 05:19:17',0),(6565,112,'2014-10-13','2014-10-13 05:19:19',0),(6566,112,'2014-10-13','2014-10-13 05:19:26',0),(6567,112,'2014-10-13','2014-10-13 05:19:28',0),(6568,112,'2014-10-13','2014-10-13 05:19:30',0),(6569,1,'2014-10-13','2014-10-13 05:29:45',0),(6570,112,'2014-10-13','2014-10-13 09:17:26',0),(6571,112,'2014-10-13','2014-10-13 09:17:27',0),(6572,112,'2014-10-13','2014-10-13 09:17:27',0),(6573,112,'2014-10-13','2014-10-13 09:17:28',0),(6574,112,'2014-10-13','2014-10-13 10:23:41',0),(6575,1,'2014-10-13','2014-10-13 11:49:17',0),(6576,133,'2014-10-13','2014-10-13 11:49:45',0),(6577,133,'2014-10-13','2014-10-13 11:49:45',0),(6578,112,'2014-10-13','2014-10-13 13:01:51',0),(6579,112,'2014-10-13','2014-10-13 13:01:51',0),(6580,112,'2014-10-13','2014-10-13 16:12:28',0),(6581,112,'2014-10-13','2014-10-13 16:54:25',0),(6582,112,'2014-10-13','2014-10-13 17:52:40',0),(6583,1,'2014-10-13','2014-10-13 18:52:56',0),(6584,133,'2014-10-13','2014-10-13 19:14:43',0),(6585,112,'2014-10-13','2014-10-13 19:48:35',0),(6586,112,'2014-10-13','2014-10-13 20:39:20',0),(6587,112,'2014-10-13','2014-10-13 21:36:11',0),(6588,112,'2014-10-14','2014-10-13 23:41:31',0),(6589,1,'2014-10-14','2014-10-14 01:22:23',0),(6590,112,'2014-10-14','2014-10-14 01:59:36',0),(6591,112,'2014-10-14','2014-10-14 04:54:36',0),(6592,112,'2014-10-14','2014-10-14 06:34:34',0),(6593,133,'2014-10-14','2014-10-14 06:41:21',0),(6594,112,'2014-10-14','2014-10-14 06:41:21',0),(6595,112,'2014-10-14','2014-10-14 06:41:22',0),(6596,1,'2014-10-14','2014-10-14 08:39:34',0),(6597,133,'2014-10-14','2014-10-14 09:30:04',0),(6598,133,'2014-10-14','2014-10-14 09:30:28',0),(6599,112,'2014-10-14','2014-10-14 09:31:27',0),(6600,112,'2014-10-14','2014-10-14 11:24:27',0),(6601,112,'2014-10-14','2014-10-14 12:28:09',0),(6602,1,'2014-10-14','2014-10-14 14:54:06',0),(6603,133,'2014-10-14','2014-10-14 14:59:32',0),(6604,133,'2014-10-14','2014-10-14 14:59:35',0),(6605,1,'2014-10-14','2014-10-14 22:04:56',0),(6606,133,'2014-10-15','2014-10-14 23:21:29',0),(6607,133,'2014-10-15','2014-10-14 23:21:30',0),(6608,133,'2014-10-15','2014-10-14 23:21:30',0),(6609,1,'2014-10-15','2014-10-15 04:44:58',0),(6610,133,'2014-10-15','2014-10-15 06:50:44',0),(6611,133,'2014-10-15','2014-10-15 06:50:50',0),(6612,133,'2014-10-15','2014-10-15 08:17:01',0),(6613,112,'2014-10-15','2014-10-15 08:17:05',0),(6614,112,'2014-10-15','2014-10-15 08:17:21',0),(6615,112,'2014-10-15','2014-10-15 08:17:29',0),(6616,112,'2014-10-15','2014-10-15 08:18:19',0),(6617,112,'2014-10-15','2014-10-15 08:18:26',0),(6618,112,'2014-10-15','2014-10-15 08:18:33',0),(6619,112,'2014-10-15','2014-10-15 08:18:50',0),(6620,112,'2014-10-15','2014-10-15 10:10:00',0),(6621,1,'2014-10-15','2014-10-15 10:48:55',0),(6622,112,'2014-10-15','2014-10-15 10:52:51',0),(6623,112,'2014-10-15','2014-10-15 10:52:56',0),(6624,133,'2014-10-15','2014-10-15 16:45:08',0),(6625,112,'2014-10-15','2014-10-15 16:45:09',0),(6626,112,'2014-10-15','2014-10-15 16:45:09',0),(6627,112,'2014-10-15','2014-10-15 16:45:10',0),(6628,112,'2014-10-15','2014-10-15 16:45:10',0),(6629,1,'2014-10-15','2014-10-15 16:51:17',0),(6630,112,'2014-10-15','2014-10-15 16:51:18',0),(6631,112,'2014-10-15','2014-10-15 16:51:18',0),(6632,112,'2014-10-15','2014-10-15 16:51:18',0),(6633,112,'2014-10-15','2014-10-15 16:51:19',0),(6634,1,'2014-10-16','2014-10-15 23:27:02',0),(6635,133,'2014-10-16','2014-10-16 01:46:00',0),(6636,112,'2014-10-16','2014-10-16 04:04:33',0),(6637,1,'2014-10-16','2014-10-16 06:11:09',0),(6638,133,'2014-10-16','2014-10-16 06:11:22',0),(6639,133,'2014-10-16','2014-10-16 11:01:24',0),(6640,133,'2014-10-16','2014-10-16 11:01:25',0),(6641,133,'2014-10-16','2014-10-16 11:17:52',0),(6642,133,'2014-10-16','2014-10-16 11:17:52',0),(6643,1,'2014-10-16','2014-10-16 12:21:44',0),(6644,112,'2014-10-16','2014-10-16 12:45:23',0),(6645,1,'2014-10-16','2014-10-16 18:23:56',0),(6646,110,'2014-10-17','2014-10-16 23:23:36',0),(6647,110,'2014-10-17','2014-10-16 23:23:44',0),(6648,110,'2014-10-17','2014-10-16 23:23:54',0),(6649,110,'2014-10-17','2014-10-16 23:24:03',0),(6650,110,'2014-10-17','2014-10-16 23:24:20',0),(6651,112,'2014-10-17','2014-10-16 23:24:22',1),(6652,112,'2014-10-17','2014-10-16 23:24:23',1),(6653,106,'2014-10-17','2014-10-16 23:24:24',1),(6654,1,'2014-10-17','2014-10-16 23:24:38',1),(6655,1,'2014-10-17','2014-10-16 23:24:43',1),(6656,1,'2014-10-17','2014-10-16 23:27:22',1),(6657,1,'2014-10-17','2014-10-16 23:49:34',0),(6658,133,'2014-10-17','2014-10-17 00:13:41',0),(6659,133,'2014-10-17','2014-10-17 00:13:42',0),(6660,112,'2014-10-17','2014-10-17 00:28:39',0),(6661,1,'2014-10-17','2014-10-17 00:31:50',1),(6662,1,'2014-10-17','2014-10-17 00:32:01',1),(6663,1,'2014-10-17','2014-10-17 00:33:21',1),(6664,1,'2014-10-17','2014-10-17 01:56:58',0),(6665,112,'2014-10-17','2014-10-17 04:07:54',0),(6666,133,'2014-10-17','2014-10-17 04:42:23',0),(6667,133,'2014-10-17','2014-10-17 05:34:16',0),(6668,133,'2014-10-17','2014-10-17 07:00:40',0),(6669,133,'2014-10-17','2014-10-17 07:00:41',0),(6670,133,'2014-10-17','2014-10-17 07:00:42',0),(6671,120,'2014-10-17','2014-10-17 08:24:07',0),(6672,1,'2014-10-17','2014-10-17 10:19:15',0),(6673,112,'2014-10-17','2014-10-17 12:23:52',0),(6674,112,'2014-10-17','2014-10-17 16:37:17',0),(6675,112,'2014-10-17','2014-10-17 17:46:43',0),(6676,1,'2014-10-17','2014-10-17 18:11:49',0),(6677,133,'2014-10-17','2014-10-17 18:15:58',0),(6678,112,'2014-10-17','2014-10-17 18:15:59',0),(6679,112,'2014-10-17','2014-10-17 18:15:59',0),(6680,112,'2014-10-17','2014-10-17 18:15:59',0),(6681,112,'2014-10-17','2014-10-17 18:16:00',0),(6682,120,'2014-10-17','2014-10-17 20:39:39',0),(6683,1,'2014-10-18','2014-10-18 00:19:53',0),(6684,112,'2014-10-18','2014-10-18 02:21:02',0),(6685,112,'2014-10-18','2014-10-18 04:53:46',0),(6686,1,'2014-10-18','2014-10-18 07:14:39',0),(6687,133,'2014-10-18','2014-10-18 09:20:02',0),(6688,112,'2014-10-18','2014-10-18 09:20:03',0),(6689,112,'2014-10-18','2014-10-18 09:20:03',0),(6690,1,'2014-10-18','2014-10-18 13:15:05',0),(6691,112,'2014-10-18','2014-10-18 13:15:18',0),(6692,112,'2014-10-18','2014-10-18 13:15:18',0),(6693,133,'2014-10-18','2014-10-18 15:47:09',0),(6694,112,'2014-10-18','2014-10-18 18:28:07',0),(6695,1,'2014-10-18','2014-10-18 21:11:33',0),(6696,133,'2014-10-18','2014-10-18 22:10:50',0),(6697,133,'2014-10-18','2014-10-18 22:10:50',0),(6698,112,'2014-10-18','2014-10-18 22:24:37',0),(6699,1,'2014-10-19','2014-10-19 07:37:44',0),(6700,133,'2014-10-19','2014-10-19 08:26:44',0),(6701,133,'2014-10-19','2014-10-19 08:26:45',0),(6702,1,'2014-10-19','2014-10-19 14:01:10',0),(6703,112,'2014-10-19','2014-10-19 19:47:49',0),(6704,1,'2014-10-19','2014-10-19 20:05:05',0),(6705,133,'2014-10-19','2014-10-19 20:05:07',0),(6706,112,'2014-10-19','2014-10-19 20:05:08',0),(6707,112,'2014-10-19','2014-10-19 20:05:09',0),(6708,112,'2014-10-19','2014-10-19 20:05:10',0),(6709,112,'2014-10-19','2014-10-19 20:05:12',0),(6710,112,'2014-10-19','2014-10-19 21:06:00',0),(6711,112,'2014-10-19','2014-10-19 21:06:20',0),(6712,112,'2014-10-20','2014-10-20 03:19:15',0),(6713,1,'2014-10-20','2014-10-20 04:46:40',0),(6714,112,'2014-10-20','2014-10-20 05:20:58',0),(6715,112,'2014-10-20','2014-10-20 06:11:44',0),(6716,133,'2014-10-20','2014-10-20 07:25:46',0),(6717,112,'2014-10-20','2014-10-20 07:25:47',0),(6718,112,'2014-10-20','2014-10-20 07:25:48',0),(6719,112,'2014-10-20','2014-10-20 07:25:48',0),(6720,112,'2014-10-20','2014-10-20 07:25:49',0),(6721,112,'2014-10-20','2014-10-20 08:18:50',0),(6722,112,'2014-10-20','2014-10-20 08:18:51',0),(6723,112,'2014-10-20','2014-10-20 08:18:51',0),(6724,112,'2014-10-20','2014-10-20 08:18:51',0),(6725,112,'2014-10-20','2014-10-20 09:28:02',0),(6726,112,'2014-10-20','2014-10-20 09:37:08',0),(6727,1,'2014-10-20','2014-10-20 11:27:26',0),(6728,133,'2014-10-20','2014-10-20 12:29:11',0),(6729,112,'2014-10-20','2014-10-20 13:46:53',0),(6730,112,'2014-10-20','2014-10-20 16:27:42',0),(6731,1,'2014-10-20','2014-10-20 17:50:23',0),(6732,133,'2014-10-20','2014-10-20 17:52:45',0),(6733,112,'2014-10-20','2014-10-20 21:34:55',0),(6734,1,'2014-10-21','2014-10-21 01:47:18',0),(6735,112,'2014-10-21','2014-10-21 06:27:29',0),(6736,1,'2014-10-21','2014-10-21 08:26:25',0),(6737,112,'2014-10-21','2014-10-21 10:23:24',0),(6738,112,'2014-10-21','2014-10-21 11:24:49',0),(6739,1,'2014-10-21','2014-10-21 16:09:50',0),(6740,133,'2014-10-21','2014-10-21 17:31:17',0),(6741,112,'2014-10-21','2014-10-21 18:29:15',0),(6742,112,'2014-10-21','2014-10-21 18:29:15',0),(6743,133,'2014-10-21','2014-10-21 22:05:53',0),(6744,1,'2014-10-22','2014-10-22 00:37:18',0),(6745,112,'2014-10-22','2014-10-22 04:22:48',0),(6746,112,'2014-10-22','2014-10-22 05:56:39',0),(6747,133,'2014-10-22','2014-10-22 06:59:08',0),(6748,1,'2014-10-22','2014-10-22 07:02:03',0),(6749,112,'2014-10-22','2014-10-22 11:55:29',0),(6750,1,'2014-10-22','2014-10-22 14:48:56',0),(6751,112,'2014-10-22','2014-10-22 17:40:38',0),(6752,112,'2014-10-22','2014-10-22 17:40:43',0),(6753,133,'2014-10-22','2014-10-22 17:40:49',0),(6754,112,'2014-10-22','2014-10-22 18:27:27',0),(6755,133,'2014-10-22','2014-10-22 20:15:21',0),(6756,1,'2014-10-22','2014-10-22 21:51:30',0),(6757,1,'2014-10-23','2014-10-23 04:19:37',0),(6758,112,'2014-10-23','2014-10-23 05:33:08',0),(6759,133,'2014-10-23','2014-10-23 06:55:37',0),(6760,1,'2014-10-23','2014-10-23 11:50:37',0),(6761,112,'2014-10-23','2014-10-23 17:56:22',0),(6762,1,'2014-10-23','2014-10-23 18:11:25',0),(6763,1,'2014-10-23','2014-10-23 18:11:25',0),(6764,133,'2014-10-24','2014-10-23 23:32:22',0),(6765,1,'2014-10-24','2014-10-24 00:36:23',0),(6766,1,'2014-10-24','2014-10-24 07:29:38',0),(6767,133,'2014-10-24','2014-10-24 09:53:03',0),(6768,133,'2014-10-24','2014-10-24 09:53:03',0),(6769,112,'2014-10-24','2014-10-24 10:15:35',0),(6770,112,'2014-10-24','2014-10-24 10:18:05',0),(6771,133,'2014-10-24','2014-10-24 13:15:33',0),(6772,133,'2014-10-24','2014-10-24 13:28:30',0),(6773,1,'2014-10-24','2014-10-24 14:05:36',0),(6774,112,'2014-10-24','2014-10-24 14:05:49',0),(6775,112,'2014-10-24','2014-10-24 14:05:49',0),(6776,112,'2014-10-24','2014-10-24 20:01:08',0),(6777,112,'2014-10-24','2014-10-24 20:01:14',0),(6778,1,'2014-10-24','2014-10-24 20:44:36',0),(6779,112,'2014-10-24','2014-10-24 21:11:27',0),(6780,112,'2014-10-24','2014-10-24 22:14:50',0),(6781,112,'2014-10-25','2014-10-25 05:23:54',0),(6782,133,'2014-10-25','2014-10-25 05:36:53',0),(6783,1,'2014-10-25','2014-10-25 06:01:16',0),(6784,112,'2014-10-25','2014-10-25 06:13:48',0),(6785,112,'2014-10-25','2014-10-25 06:56:51',0),(6786,112,'2014-10-25','2014-10-25 07:57:11',0),(6787,112,'2014-10-25','2014-10-25 09:59:36',0),(6788,112,'2014-10-25','2014-10-25 10:54:58',0),(6789,1,'2014-10-25','2014-10-25 12:20:29',0),(6790,112,'2014-10-25','2014-10-25 12:50:41',0),(6791,1,'2014-10-25','2014-10-25 18:48:05',0),(6792,133,'2014-10-25','2014-10-25 20:46:44',0),(6793,1,'2014-10-26','2014-10-26 02:49:55',0),(6794,133,'2014-10-26','2014-10-26 04:23:17',0),(6795,112,'2014-10-26','2014-10-26 04:23:24',0),(6796,112,'2014-10-26','2014-10-26 04:27:14',0),(6797,112,'2014-10-26','2014-10-26 04:41:23',0),(6798,112,'2014-10-26','2014-10-26 04:59:57',0),(6799,1,'2014-10-26','2014-10-26 10:24:10',0),(6800,133,'2014-10-26','2014-10-26 14:44:25',0),(6801,133,'2014-10-26','2014-10-26 14:44:26',0),(6802,1,'2014-10-26','2014-10-26 16:26:28',0),(6803,1,'2014-10-26','2014-10-26 22:47:43',0),(6804,133,'2014-10-26','2014-10-26 22:48:07',0),(6805,133,'2014-10-26','2014-10-26 22:48:07',0),(6806,112,'2014-10-27','2014-10-27 03:11:50',0),(6807,112,'2014-10-27','2014-10-27 03:11:54',0),(6808,112,'2014-10-27','2014-10-27 03:12:04',0),(6809,112,'2014-10-27','2014-10-27 03:12:09',0),(6810,1,'2014-10-27','2014-10-27 05:07:48',0),(6811,133,'2014-10-27','2014-10-27 05:08:40',0),(6812,133,'2014-10-27','2014-10-27 05:08:41',0),(6813,133,'2014-10-27','2014-10-27 05:08:41',0),(6814,133,'2014-10-27','2014-10-27 06:45:50',0),(6815,1,'2014-10-27','2014-10-27 12:04:07',0),(6816,133,'2014-10-27','2014-10-27 12:51:45',0),(6817,133,'2014-10-27','2014-10-27 12:51:46',0),(6818,133,'2014-10-27','2014-10-27 15:55:11',0),(6819,133,'2014-10-27','2014-10-27 15:55:11',0),(6820,1,'2014-10-27','2014-10-27 18:27:37',0),(6821,1,'2014-10-27','2014-10-27 18:27:37',0),(6822,112,'2014-10-27','2014-10-27 18:30:20',0),(6823,133,'2014-10-27','2014-10-27 20:34:26',0),(6824,133,'2014-10-27','2014-10-27 20:34:26',0),(6825,133,'2014-10-27','2014-10-27 21:27:17',0),(6826,133,'2014-10-27','2014-10-27 21:27:18',0),(6827,1,'2014-10-28','2014-10-28 01:05:46',0),(6828,112,'2014-10-28','2014-10-28 01:19:19',0),(6829,112,'2014-10-28','2014-10-28 01:19:19',0),(6830,112,'2014-10-28','2014-10-28 04:16:15',0),(6831,112,'2014-10-28','2014-10-28 04:16:24',0),(6832,133,'2014-10-28','2014-10-28 04:16:33',0),(6833,112,'2014-10-28','2014-10-28 05:46:49',0),(6834,112,'2014-10-28','2014-10-28 05:46:54',0),(6835,1,'2014-10-28','2014-10-28 07:16:34',0),(6836,133,'2014-10-28','2014-10-28 10:48:45',0),(6837,112,'2014-10-28','2014-10-28 12:12:12',0),(6838,1,'2014-10-28','2014-10-28 13:27:25',0),(6839,112,'2014-10-28','2014-10-28 14:18:10',0),(6840,133,'2014-10-28','2014-10-28 14:29:47',0),(6841,112,'2014-10-28','2014-10-28 15:27:53',0),(6842,133,'2014-10-28','2014-10-28 15:36:03',0),(6843,133,'2014-10-28','2014-10-28 17:23:30',0),(6844,133,'2014-10-28','2014-10-28 17:23:31',0),(6845,112,'2014-10-28','2014-10-28 19:19:06',0),(6846,1,'2014-10-28','2014-10-28 19:45:06',0),(6847,133,'2014-10-28','2014-10-28 19:51:30',0),(6848,133,'2014-10-28','2014-10-28 19:53:37',0),(6849,112,'2014-10-28','2014-10-28 20:33:18',0),(6850,133,'2014-10-29','2014-10-29 00:25:44',0),(6851,112,'2014-10-29','2014-10-29 00:25:58',0),(6852,112,'2014-10-29','2014-10-29 00:26:02',0),(6853,112,'2014-10-29','2014-10-29 00:26:14',0),(6854,133,'2014-10-29','2014-10-29 00:50:17',0),(6855,1,'2014-10-29','2014-10-29 02:18:56',0),(6856,133,'2014-10-29','2014-10-29 05:28:29',0),(6857,133,'2014-10-29','2014-10-29 08:17:10',0),(6858,133,'2014-10-29','2014-10-29 08:17:11',0),(6859,133,'2014-10-29','2014-10-29 08:17:11',0),(6860,1,'2014-10-29','2014-10-29 09:19:06',0),(6861,133,'2014-10-29','2014-10-29 09:42:17',0),(6862,133,'2014-10-29','2014-10-29 14:00:48',0),(6863,133,'2014-10-29','2014-10-29 14:00:48',0),(6864,133,'2014-10-29','2014-10-29 15:02:04',0),(6865,112,'2014-10-29','2014-10-29 15:39:47',0),(6866,1,'2014-10-29','2014-10-29 16:17:15',0),(6867,112,'2014-10-29','2014-10-29 17:34:49',0),(6868,112,'2014-10-29','2014-10-29 21:43:00',0),(6869,112,'2014-10-29','2014-10-29 21:43:00',0),(6870,112,'2014-10-29','2014-10-29 21:43:00',0),(6871,120,'2014-10-29','2014-10-29 21:43:00',0),(6872,112,'2014-10-29','2014-10-29 21:43:09',0),(6873,1,'2014-10-29','2014-10-29 22:26:46',0),(6874,133,'2014-10-29','2014-10-29 23:19:00',0),(6875,133,'2014-10-29','2014-10-29 23:19:01',0),(6876,112,'2014-10-29','2014-10-29 23:39:07',0),(6877,112,'2014-10-30','2014-10-30 04:25:56',0),(6878,112,'2014-10-30','2014-10-30 04:26:01',0),(6879,120,'2014-10-30','2014-10-30 04:26:02',0),(6880,112,'2014-10-30','2014-10-30 04:26:06',0),(6881,1,'2014-10-30','2014-10-30 04:30:05',0),(6882,133,'2014-10-30','2014-10-30 06:30:07',0),(6883,133,'2014-10-30','2014-10-30 06:30:08',0),(6884,133,'2014-10-30','2014-10-30 06:30:09',0),(6885,112,'2014-10-30','2014-10-30 06:46:23',0),(6886,112,'2014-10-30','2014-10-30 10:09:48',0),(6887,1,'2014-10-30','2014-10-30 10:30:25',0),(6888,112,'2014-10-30','2014-10-30 17:13:57',0),(6889,112,'2014-10-30','2014-10-30 17:38:14',0),(6890,1,'2014-10-30','2014-10-30 17:55:39',0),(6891,133,'2014-10-30','2014-10-30 18:34:58',0),(6892,112,'2014-10-30','2014-10-30 19:35:40',0),(6893,112,'2014-10-30','2014-10-30 19:35:40',0),(6894,112,'2014-10-30','2014-10-30 19:35:40',0),(6895,112,'2014-10-30','2014-10-30 19:35:49',0),(6896,112,'2014-10-30','2014-10-30 20:41:17',0),(6897,133,'2014-10-30','2014-10-30 21:11:38',0),(6898,112,'2014-10-30','2014-10-30 22:03:09',0),(6899,112,'2014-10-30','2014-10-30 22:03:09',0),(6900,1,'2014-10-31','2014-10-31 01:40:16',0),(6901,112,'2014-10-31','2014-10-31 04:31:53',0),(6902,1,'2014-10-31','2014-10-31 09:29:05',0),(6903,133,'2014-10-31','2014-10-31 10:34:08',0),(6904,133,'2014-10-31','2014-10-31 10:34:09',0),(6905,1,'2014-10-31','2014-10-31 16:19:36',0),(6906,112,'2014-10-31','2014-10-31 21:35:41',0),(6907,1,'2014-10-31','2014-10-31 23:31:19',0),(6908,112,'2014-11-01','2014-11-01 00:25:18',0),(6909,133,'2014-11-01','2014-11-01 00:43:07',0),(6910,112,'2014-11-01','2014-11-01 00:43:07',0),(6911,112,'2014-11-01','2014-11-01 00:43:07',0),(6912,112,'2014-11-01','2014-11-01 03:37:57',0),(6913,1,'2014-11-01','2014-11-01 06:20:34',0),(6914,133,'2014-11-01','2014-11-01 06:21:38',0),(6915,1,'2014-11-01','2014-11-01 13:02:45',0),(6916,133,'2014-11-01','2014-11-01 13:44:18',0),(6917,133,'2014-11-01','2014-11-01 13:44:19',0),(6918,133,'2014-11-01','2014-11-01 13:44:19',0),(6919,112,'2014-11-01','2014-11-01 13:50:38',0),(6920,133,'2014-11-01','2014-11-01 14:35:21',0),(6921,112,'2014-11-01','2014-11-01 16:06:16',0),(6922,112,'2014-11-01','2014-11-01 16:32:13',0),(6923,120,'2014-11-01','2014-11-01 20:03:19',0),(6924,1,'2014-11-01','2014-11-01 22:53:51',0),(6925,133,'2014-11-01','2014-11-01 22:55:41',0),(6926,112,'2014-11-01','2014-11-01 22:56:33',0),(6927,112,'2014-11-01','2014-11-01 23:11:58',0),(6928,112,'2014-11-02','2014-11-02 03:58:12',0),(6929,112,'2014-11-02','2014-11-02 04:39:10',0),(6930,112,'2014-11-02','2014-11-02 04:39:14',0),(6931,1,'2014-11-02','2014-11-02 05:09:48',0),(6932,112,'2014-11-02','2014-11-02 09:59:22',0),(6933,1,'2014-11-02','2014-11-02 12:04:29',0),(6934,133,'2014-11-02','2014-11-02 17:50:19',0),(6935,112,'2014-11-02','2014-11-02 17:50:20',0),(6936,112,'2014-11-02','2014-11-02 17:50:22',0),(6937,112,'2014-11-02','2014-11-02 18:17:13',0),(6938,112,'2014-11-02','2014-11-02 19:18:39',0),(6939,1,'2014-11-02','2014-11-02 19:33:21',0),(6940,112,'2014-11-02','2014-11-02 23:04:36',0),(6941,112,'2014-11-03','2014-11-03 00:59:46',0),(6942,1,'2014-11-03','2014-11-03 01:56:14',0),(6943,112,'2014-11-03','2014-11-03 03:23:18',0),(6944,112,'2014-11-03','2014-11-03 03:36:47',0),(6945,112,'2014-11-03','2014-11-03 04:51:52',0),(6946,112,'2014-11-03','2014-11-03 06:21:35',0),(6947,112,'2014-11-03','2014-11-03 06:26:09',0),(6948,1,'2014-11-03','2014-11-03 08:06:50',0),(6949,133,'2014-11-03','2014-11-03 10:18:49',0),(6950,133,'2014-11-03','2014-11-03 11:07:28',0),(6951,133,'2014-11-03','2014-11-03 13:07:29',0),(6952,133,'2014-11-03','2014-11-03 13:56:35',0),(6953,1,'2014-11-03','2014-11-03 14:17:21',0),(6954,133,'2014-11-03','2014-11-03 14:17:33',0),(6955,112,'2014-11-03','2014-11-03 20:13:27',0),(6956,1,'2014-11-03','2014-11-03 21:04:39',0),(6957,133,'2014-11-04','2014-11-04 00:57:27',0),(6958,133,'2014-11-04','2014-11-04 02:27:11',0),(6959,112,'2014-11-04','2014-11-04 03:04:25',0),(6960,112,'2014-11-04','2014-11-04 03:35:37',0),(6961,1,'2014-11-04','2014-11-04 04:23:10',0),(6962,133,'2014-11-04','2014-11-04 06:48:51',0),(6963,133,'2014-11-04','2014-11-04 06:48:51',0),(6964,112,'2014-11-04','2014-11-04 07:39:38',0),(6965,133,'2014-11-04','2014-11-04 07:45:27',0),(6966,112,'2014-11-04','2014-11-04 07:45:27',0),(6967,112,'2014-11-04','2014-11-04 07:45:28',0),(6968,112,'2014-11-04','2014-11-04 08:54:35',0),(6969,1,'2014-11-04','2014-11-04 10:27:08',0),(6970,112,'2014-11-04','2014-11-04 11:54:43',0),(6971,133,'2014-11-04','2014-11-04 12:03:45',0),(6972,112,'2014-11-04','2014-11-04 15:19:25',0),(6973,112,'2014-11-04','2014-11-04 16:14:57',0),(6974,112,'2014-11-04','2014-11-04 16:15:01',0),(6975,1,'2014-11-04','2014-11-04 16:48:06',0),(6976,133,'2014-11-04','2014-11-04 18:10:11',0),(6977,112,'2014-11-04','2014-11-04 18:22:05',0),(6978,112,'2014-11-04','2014-11-04 18:24:53',0),(6979,112,'2014-11-04','2014-11-04 18:33:52',0),(6980,1,'2014-11-04','2014-11-04 23:53:56',0),(6981,1,'2014-11-05','2014-11-05 07:23:19',0),(6982,112,'2014-11-05','2014-11-05 08:20:02',0),(6983,133,'2014-11-05','2014-11-05 08:55:34',0),(6984,112,'2014-11-05','2014-11-05 08:58:51',0),(6985,112,'2014-11-05','2014-11-05 09:01:21',0),(6986,112,'2014-11-05','2014-11-05 09:03:24',0),(6987,112,'2014-11-05','2014-11-05 09:04:50',0),(6988,112,'2014-11-05','2014-11-05 10:04:39',0),(6989,112,'2014-11-05','2014-11-05 12:19:40',0),(6990,112,'2014-11-05','2014-11-05 13:04:38',0),(6991,1,'2014-11-05','2014-11-05 13:30:20',0),(6992,112,'2014-11-05','2014-11-05 14:15:00',0),(6993,120,'2014-11-05','2014-11-05 14:15:28',0),(6994,120,'2014-11-05','2014-11-05 14:15:29',0),(6995,112,'2014-11-05','2014-11-05 14:18:25',0),(6996,112,'2014-11-05','2014-11-05 16:19:36',0),(6997,112,'2014-11-05','2014-11-05 18:19:36',0),(6998,112,'2014-11-05','2014-11-05 19:18:21',0),(6999,112,'2014-11-05','2014-11-05 19:18:25',0),(7000,1,'2014-11-05','2014-11-05 19:47:53',0),(7001,133,'2014-11-05','2014-11-05 20:57:22',0),(7002,112,'2014-11-05','2014-11-05 22:13:05',0),(7003,112,'2014-11-06','2014-11-06 01:21:39',0),(7004,1,'2014-11-06','2014-11-06 01:58:23',0),(7005,112,'2014-11-06','2014-11-06 01:58:43',0),(7006,112,'2014-11-06','2014-11-06 01:58:43',0),(7007,1,'2014-11-06','2014-11-06 08:16:24',0),(7008,133,'2014-11-06','2014-11-06 13:59:56',0),(7009,133,'2014-11-06','2014-11-06 14:00:03',0),(7010,133,'2014-11-06','2014-11-06 14:00:03',0),(7011,1,'2014-11-06','2014-11-06 14:16:52',0),(7012,112,'2014-11-06','2014-11-06 14:16:53',0),(7013,133,'2014-11-06','2014-11-06 19:22:38',0),(7014,1,'2014-11-06','2014-11-06 21:04:37',0),(7015,1,'2014-11-07','2014-11-07 03:39:52',0),(7016,112,'2014-11-07','2014-11-07 08:08:48',0),(7017,1,'2014-11-07','2014-11-07 10:17:36',0),(7018,1,'2014-11-07','2014-11-07 17:01:40',0),(7019,112,'2014-11-07','2014-11-07 22:27:46',0),(7020,1,'2014-11-07','2014-11-07 23:23:44',0),(7021,112,'2014-11-08','2014-11-08 04:17:17',0),(7022,1,'2014-11-08','2014-11-08 07:19:55',0),(7023,133,'2014-11-08','2014-11-08 10:21:50',0),(7024,133,'2014-11-08','2014-11-08 10:21:51',0),(7025,1,'2014-11-08','2014-11-08 15:05:29',0),(7026,112,'2014-11-08','2014-11-08 20:45:23',0),(7027,112,'2014-11-08','2014-11-08 20:48:03',0),(7028,1,'2014-11-08','2014-11-08 21:57:30',0),(7029,112,'2014-11-08','2014-11-08 22:59:37',0),(7030,112,'2014-11-09','2014-11-09 01:24:40',0),(7031,1,'2014-11-09','2014-11-09 05:50:37',0),(7032,133,'2014-11-09','2014-11-09 07:45:58',0),(7033,112,'2014-11-09','2014-11-09 10:39:45',0),(7034,112,'2014-11-09','2014-11-09 10:51:22',0),(7035,1,'2014-11-09','2014-11-09 12:44:09',0),(7036,112,'2014-11-09','2014-11-09 14:12:54',0),(7037,112,'2014-11-09','2014-11-09 16:02:50',0),(7038,1,'2014-11-09','2014-11-09 18:54:48',0),(7039,112,'2014-11-09','2014-11-09 19:47:22',0),(7040,112,'2014-11-09','2014-11-09 21:28:56',0),(7041,112,'2014-11-09','2014-11-09 21:33:46',0),(7042,112,'2014-11-09','2014-11-09 21:59:37',0),(7043,1,'2014-11-10','2014-11-10 00:59:00',0),(7044,133,'2014-11-10','2014-11-10 00:59:07',0),(7045,112,'2014-11-10','2014-11-10 00:59:10',0),(7046,112,'2014-11-10','2014-11-10 00:59:17',0),(7047,112,'2014-11-10','2014-11-10 00:59:23',0),(7048,112,'2014-11-10','2014-11-10 00:59:26',0),(7049,112,'2014-11-10','2014-11-10 01:04:37',0),(7050,112,'2014-11-10','2014-11-10 02:10:02',0),(7051,112,'2014-11-10','2014-11-10 02:29:37',0),(7052,112,'2014-11-10','2014-11-10 04:47:14',0),(7053,1,'2014-11-10','2014-11-10 07:55:56',0),(7054,133,'2014-11-10','2014-11-10 09:00:09',0),(7055,112,'2014-11-10','2014-11-10 09:00:09',0),(7056,112,'2014-11-10','2014-11-10 09:00:10',0),(7057,112,'2014-11-10','2014-11-10 09:00:10',0),(7058,112,'2014-11-10','2014-11-10 09:00:10',0),(7059,112,'2014-11-10','2014-11-10 10:15:31',0),(7060,1,'2014-11-10','2014-11-10 14:02:03',0),(7061,133,'2014-11-10','2014-11-10 14:07:23',0),(7062,1,'2014-11-10','2014-11-10 20:33:29',0),(7063,112,'2014-11-10','2014-11-10 22:20:43',0),(7064,112,'2014-11-10','2014-11-10 22:48:35',0),(7065,133,'2014-11-11','2014-11-11 02:09:56',0),(7066,1,'2014-11-11','2014-11-11 05:22:17',0),(7067,133,'2014-11-11','2014-11-11 08:11:45',0),(7068,133,'2014-11-11','2014-11-11 08:11:46',0),(7069,1,'2014-11-11','2014-11-11 11:32:22',0),(7070,112,'2014-11-11','2014-11-11 11:52:31',0),(7071,112,'2014-11-11','2014-11-11 12:52:56',0),(7072,112,'2014-11-11','2014-11-11 14:09:23',0),(7073,112,'2014-11-11','2014-11-11 14:49:29',0),(7074,112,'2014-11-11','2014-11-11 16:45:27',0),(7075,1,'2014-11-11','2014-11-11 17:44:35',0),(7076,112,'2014-11-11','2014-11-11 18:48:36',0),(7077,133,'2014-11-11','2014-11-11 19:59:08',0),(7078,133,'2014-11-11','2014-11-11 19:59:08',0),(7079,133,'2014-11-11','2014-11-11 20:01:12',0),(7080,112,'2014-11-11','2014-11-11 20:44:53',0),(7081,133,'2014-11-11','2014-11-11 23:22:51',0),(7082,1,'2014-11-12','2014-11-12 00:42:53',0),(7083,1,'2014-11-12','2014-11-12 06:49:28',0),(7084,112,'2014-11-12','2014-11-12 11:14:36',0),(7085,112,'2014-11-12','2014-11-12 12:04:59',0),(7086,1,'2014-11-12','2014-11-12 12:50:38',0),(7087,112,'2014-11-12','2014-11-12 13:48:20',0),(7088,133,'2014-11-12','2014-11-12 16:21:00',0),(7089,133,'2014-11-12','2014-11-12 16:21:01',0),(7090,112,'2014-11-12','2014-11-12 16:44:38',0),(7091,112,'2014-11-12','2014-11-12 19:44:36',0),(7092,1,'2014-11-12','2014-11-12 19:52:44',0),(7093,112,'2014-11-12','2014-11-12 19:53:09',0),(7094,112,'2014-11-12','2014-11-12 19:53:09',0),(7095,133,'2014-11-12','2014-11-12 23:11:42',0),(7096,133,'2014-11-12','2014-11-12 23:11:42',0),(7097,1,'2014-11-13','2014-11-13 02:25:49',0),(7098,112,'2014-11-13','2014-11-13 04:25:05',0),(7099,1,'2014-11-13','2014-11-13 08:48:16',0),(7100,133,'2014-11-13','2014-11-13 12:16:55',0),(7101,133,'2014-11-13','2014-11-13 12:16:55',0),(7102,133,'2014-11-13','2014-11-13 12:43:57',0),(7103,1,'2014-11-13','2014-11-13 15:27:55',0),(7104,112,'2014-11-13','2014-11-13 16:21:42',0),(7105,112,'2014-11-13','2014-11-13 17:53:25',0),(7106,133,'2014-11-13','2014-11-13 18:22:00',0),(7107,112,'2014-11-13','2014-11-13 18:24:03',0),(7108,1,'2014-11-13','2014-11-13 22:47:10',0),(7109,112,'2014-11-14','2014-11-14 00:11:22',0),(7110,112,'2014-11-14','2014-11-14 00:11:27',0),(7111,112,'2014-11-14','2014-11-14 00:32:08',0),(7112,112,'2014-11-14','2014-11-14 01:38:36',0),(7113,112,'2014-11-14','2014-11-14 01:38:37',0),(7114,112,'2014-11-14','2014-11-14 06:27:12',0),(7115,1,'2014-11-14','2014-11-14 07:57:05',0),(7116,133,'2014-11-14','2014-11-14 10:02:32',0),(7117,133,'2014-11-14','2014-11-14 10:02:32',0),(7118,133,'2014-11-14','2014-11-14 10:33:41',0),(7119,112,'2014-11-14','2014-11-14 11:30:53',0),(7120,112,'2014-11-14','2014-11-14 11:32:59',0),(7121,1,'2014-11-14','2014-11-14 15:15:23',0),(7122,133,'2014-11-14','2014-11-14 16:36:25',0),(7123,133,'2014-11-14','2014-11-14 16:36:26',0),(7124,1,'2014-11-14','2014-11-14 21:17:42',0),(7125,133,'2014-11-15','2014-11-15 01:31:06',0),(7126,112,'2014-11-15','2014-11-15 03:34:05',0),(7127,1,'2014-11-15','2014-11-15 04:15:52',0),(7128,112,'2014-11-15','2014-11-15 05:04:36',0),(7129,112,'2014-11-15','2014-11-15 06:34:38',0),(7130,112,'2014-11-15','2014-11-15 08:29:37',0),(7131,112,'2014-11-15','2014-11-15 09:07:05',0),(7132,112,'2014-11-15','2014-11-15 09:29:38',0),(7133,1,'2014-11-15','2014-11-15 10:24:48',0),(7134,112,'2014-11-15','2014-11-15 11:24:36',0),(7135,112,'2014-11-15','2014-11-15 12:20:45',0),(7136,1,'2014-11-15','2014-11-15 16:35:42',0),(7137,1,'2014-11-15','2014-11-15 23:04:13',0),(7138,133,'2014-11-15','2014-11-15 23:13:27',0),(7139,133,'2014-11-15','2014-11-15 23:13:28',0),(7140,133,'2014-11-15','2014-11-15 23:13:28',0),(7141,112,'2014-11-16','2014-11-16 02:56:52',0),(7142,112,'2014-11-16','2014-11-16 03:00:24',0),(7143,1,'2014-11-16','2014-11-16 06:28:47',0),(7144,133,'2014-11-16','2014-11-16 06:29:12',0),(7145,112,'2014-11-16','2014-11-16 06:29:29',0),(7146,112,'2014-11-16','2014-11-16 06:29:42',0),(7147,112,'2014-11-16','2014-11-16 06:30:05',0),(7148,112,'2014-11-16','2014-11-16 08:31:29',0),(7149,112,'2014-11-16','2014-11-16 09:00:19',0),(7150,112,'2014-11-16','2014-11-16 10:56:07',0),(7151,112,'2014-11-16','2014-11-16 11:43:17',0),(7152,1,'2014-11-16','2014-11-16 12:59:42',0),(7153,112,'2014-11-16','2014-11-16 13:50:55',0),(7154,112,'2014-11-16','2014-11-16 16:19:36',0),(7155,112,'2014-11-16','2014-11-16 16:54:36',0),(7156,112,'2014-11-16','2014-11-16 18:42:29',0),(7157,1,'2014-11-16','2014-11-16 19:21:09',0),(7158,1,'2014-11-17','2014-11-17 01:30:58',0),(7159,120,'2014-11-17','2014-11-17 03:22:02',0),(7160,112,'2014-11-17','2014-11-17 04:33:52',0),(7161,112,'2014-11-17','2014-11-17 04:33:55',0),(7162,1,'2014-11-17','2014-11-17 07:36:44',0),(7163,133,'2014-11-17','2014-11-17 07:38:10',0),(7164,133,'2014-11-17','2014-11-17 07:38:11',0),(7165,112,'2014-11-17','2014-11-17 09:41:53',0),(7166,112,'2014-11-17','2014-11-17 11:52:45',0),(7167,112,'2014-11-17','2014-11-17 11:52:49',0),(7168,112,'2014-11-17','2014-11-17 11:52:59',0),(7169,112,'2014-11-17','2014-11-17 11:53:03',0),(7170,1,'2014-11-17','2014-11-17 14:00:43',0),(7171,1,'2014-11-17','2014-11-17 20:37:05',0),(7172,112,'2014-11-17','2014-11-17 20:40:08',0),(7173,112,'2014-11-18','2014-11-18 00:10:48',0),(7174,120,'2014-11-18','2014-11-18 00:31:14',0),(7175,1,'2014-11-18','2014-11-18 04:39:35',0),(7176,133,'2014-11-18','2014-11-18 06:14:33',0),(7177,112,'2014-11-18','2014-11-18 07:37:00',0),(7178,112,'2014-11-18','2014-11-18 08:40:41',0),(7179,133,'2014-11-18','2014-11-18 10:09:52',0),(7180,1,'2014-11-18','2014-11-18 12:46:50',0),(7181,1,'2014-11-18','2014-11-18 19:33:02',0),(7182,133,'2014-11-18','2014-11-18 20:03:41',0),(7183,133,'2014-11-18','2014-11-18 20:03:41',0),(7184,120,'2014-11-18','2014-11-18 22:05:54',0),(7185,112,'2014-11-18','2014-11-18 22:14:03',0),(7186,1,'2014-11-19','2014-11-19 01:47:06',0),(7187,1,'2014-11-19','2014-11-19 08:40:53',0),(7188,112,'2014-11-19','2014-11-19 09:30:21',0),(7189,1,'2014-11-19','2014-11-19 15:13:20',0),(7190,133,'2014-11-19','2014-11-19 15:32:50',0),(7191,112,'2014-11-19','2014-11-19 15:32:52',0),(7192,112,'2014-11-19','2014-11-19 15:32:53',0),(7193,112,'2014-11-19','2014-11-19 15:32:54',0),(7194,112,'2014-11-19','2014-11-19 15:32:56',0),(7195,112,'2014-11-19','2014-11-19 15:54:03',0),(7196,112,'2014-11-19','2014-11-19 15:54:03',0),(7197,112,'2014-11-19','2014-11-19 15:58:30',0),(7198,112,'2014-11-19','2014-11-19 18:13:34',0),(7199,1,'2014-11-19','2014-11-19 22:02:39',0),(7200,133,'2014-11-19','2014-11-19 22:15:26',0),(7201,112,'2014-11-19','2014-11-19 23:18:46',0),(7202,112,'2014-11-19','2014-11-19 23:39:58',0),(7203,112,'2014-11-20','2014-11-20 00:57:48',0),(7204,112,'2014-11-20','2014-11-20 01:39:45',0),(7205,112,'2014-11-20','2014-11-20 01:39:45',0),(7206,1,'2014-11-20','2014-11-20 04:13:13',0),(7207,112,'2014-11-20','2014-11-20 05:17:23',0),(7208,112,'2014-11-20','2014-11-20 06:08:49',0),(7209,112,'2014-11-20','2014-11-20 07:53:36',0),(7210,112,'2014-11-20','2014-11-20 10:38:25',0),(7211,112,'2014-11-20','2014-11-20 10:51:16',0),(7212,1,'2014-11-20','2014-11-20 11:47:03',0),(7213,112,'2014-11-20','2014-11-20 11:55:13',0),(7214,1,'2014-11-20','2014-11-20 18:05:05',0),(7215,1,'2014-11-21','2014-11-21 01:36:44',0),(7216,1,'2014-11-21','2014-11-21 07:40:28',0),(7217,1,'2014-11-21','2014-11-21 14:34:14',0),(7218,1,'2014-11-21','2014-11-21 20:45:43',0),(7219,133,'2014-11-21','2014-11-21 20:46:04',0),(7220,133,'2014-11-21','2014-11-21 20:46:04',0),(7221,133,'2014-11-21','2014-11-21 20:46:05',0),(7222,110,'2014-11-22','2014-11-22 00:25:13',0),(7223,110,'2014-11-22','2014-11-22 00:25:25',0),(7224,110,'2014-11-22','2014-11-22 00:25:31',0),(7225,112,'2014-11-22','2014-11-22 00:25:32',1),(7226,110,'2014-11-22','2014-11-22 00:25:33',1),(7227,112,'2014-11-22','2014-11-22 00:25:33',1),(7228,112,'2014-11-22','2014-11-22 00:25:34',1),(7229,106,'2014-11-22','2014-11-22 00:25:34',1),(7230,1,'2014-11-22','2014-11-22 00:25:39',1),(7231,1,'2014-11-22','2014-11-22 00:25:42',1),(7232,1,'2014-11-22','2014-11-22 00:28:23',1),(7233,133,'2014-11-22','2014-11-22 00:28:47',1),(7234,133,'2014-11-22','2014-11-22 00:28:48',1),(7235,1,'2014-11-22','2014-11-22 00:32:54',0),(7236,133,'2014-11-22','2014-11-22 05:39:49',0),(7237,133,'2014-11-22','2014-11-22 05:39:49',0),(7238,1,'2014-11-22','2014-11-22 07:37:56',0),(7239,112,'2014-11-22','2014-11-22 08:30:02',0),(7240,112,'2014-11-22','2014-11-22 08:30:03',0),(7241,112,'2014-11-22','2014-11-22 12:33:20',0),(7242,1,'2014-11-22','2014-11-22 15:10:29',0),(7243,133,'2014-11-22','2014-11-22 15:12:25',0),(7244,133,'2014-11-22','2014-11-22 15:12:26',0),(7245,112,'2014-11-22','2014-11-22 15:20:12',0),(7246,112,'2014-11-22','2014-11-22 20:20:14',0),(7247,112,'2014-11-22','2014-11-22 20:20:26',0),(7248,112,'2014-11-22','2014-11-22 20:20:27',0),(7249,112,'2014-11-22','2014-11-22 20:49:49',0),(7250,112,'2014-11-22','2014-11-22 21:05:18',0),(7251,120,'2014-11-22','2014-11-22 21:14:55',0),(7252,1,'2014-11-22','2014-11-22 22:52:27',0),(7253,1,'2014-11-23','2014-11-23 04:57:39',0),(7254,112,'2014-11-23','2014-11-23 05:57:34',0),(7255,112,'2014-11-23','2014-11-23 06:39:15',0),(7256,120,'2014-11-23','2014-11-23 06:42:11',0),(7257,112,'2014-11-23','2014-11-23 06:45:08',0),(7258,112,'2014-11-23','2014-11-23 06:48:05',0),(7259,120,'2014-11-23','2014-11-23 06:51:02',0),(7260,133,'2014-11-23','2014-11-23 06:53:59',0),(7261,112,'2014-11-23','2014-11-23 11:06:50',0),(7262,1,'2014-11-23','2014-11-23 12:06:08',0),(7263,112,'2014-11-23','2014-11-23 13:56:51',0),(7264,1,'2014-11-23','2014-11-23 19:06:50',0),(7265,112,'2014-11-23','2014-11-23 19:43:54',0),(7266,112,'2014-11-23','2014-11-23 20:09:32',0),(7267,112,'2014-11-24','2014-11-24 01:36:59',0),(7268,112,'2014-11-24','2014-11-24 01:55:50',0),(7269,1,'2014-11-24','2014-11-24 02:37:51',0),(7270,133,'2014-11-24','2014-11-24 05:55:16',0),(7271,112,'2014-11-24','2014-11-24 05:55:22',0),(7272,112,'2014-11-24','2014-11-24 05:55:28',0),(7273,112,'2014-11-24','2014-11-24 05:55:34',0),(7274,112,'2014-11-24','2014-11-24 05:55:41',0),(7275,1,'2014-11-24','2014-11-24 10:44:56',0),(7276,112,'2014-11-24','2014-11-24 12:05:46',0),(7277,112,'2014-11-24','2014-11-24 12:05:47',0),(7278,133,'2014-11-24','2014-11-24 13:34:59',0),(7279,133,'2014-11-24','2014-11-24 13:35:00',0),(7280,112,'2014-11-24','2014-11-24 13:59:33',0),(7281,112,'2014-11-24','2014-11-24 13:59:35',0),(7282,1,'2014-11-24','2014-11-24 16:55:45',0),(7283,133,'2014-11-24','2014-11-24 20:42:08',0),(7284,133,'2014-11-24','2014-11-24 20:42:10',0),(7285,1,'2014-11-25','2014-11-25 01:31:26',0),(7286,133,'2014-11-25','2014-11-25 01:54:28',0),(7287,133,'2014-11-25','2014-11-25 02:05:57',0),(7288,133,'2014-11-25','2014-11-25 04:59:34',0),(7289,1,'2014-11-25','2014-11-25 07:53:01',0),(7290,112,'2014-11-25','2014-11-25 11:44:01',0),(7291,112,'2014-11-25','2014-11-25 11:44:26',0),(7292,133,'2014-11-25','2014-11-25 12:53:08',0),(7293,133,'2014-11-25','2014-11-25 12:53:09',0),(7294,133,'2014-11-25','2014-11-25 12:53:33',0),(7295,1,'2014-11-25','2014-11-25 14:37:14',0),(7296,133,'2014-11-25','2014-11-25 20:04:36',0),(7297,112,'2014-11-25','2014-11-25 20:04:56',0),(7298,112,'2014-11-25','2014-11-25 20:05:10',0),(7299,133,'2014-11-25','2014-11-25 20:25:43',0),(7300,1,'2014-11-25','2014-11-25 20:47:34',0),(7301,1,'2014-11-26','2014-11-26 04:09:35',0),(7302,112,'2014-11-26','2014-11-26 09:01:11',0),(7303,133,'2014-11-26','2014-11-26 09:01:14',0),(7304,133,'2014-11-26','2014-11-26 09:01:15',0),(7305,112,'2014-11-26','2014-11-26 09:02:18',0),(7306,112,'2014-11-26','2014-11-26 09:02:18',0),(7307,1,'2014-11-26','2014-11-26 10:09:35',0),(7308,112,'2014-11-26','2014-11-26 13:01:00',0),(7309,133,'2014-11-26','2014-11-26 15:31:08',0),(7310,133,'2014-11-26','2014-11-26 15:31:09',0),(7311,1,'2014-11-26','2014-11-26 17:28:43',0),(7312,112,'2014-11-26','2014-11-26 20:32:22',0),(7313,112,'2014-11-26','2014-11-26 21:54:38',0),(7314,112,'2014-11-26','2014-11-26 23:54:35',0),(7315,1,'2014-11-27','2014-11-27 00:44:24',0),(7316,112,'2014-11-27','2014-11-27 01:25:03',0),(7317,133,'2014-11-27','2014-11-27 02:05:47',0),(7318,112,'2014-11-27','2014-11-27 02:05:48',0),(7319,112,'2014-11-27','2014-11-27 02:05:48',0),(7320,112,'2014-11-27','2014-11-27 02:24:53',0),(7321,112,'2014-11-27','2014-11-27 05:29:36',0),(7322,1,'2014-11-27','2014-11-27 07:11:09',0),(7323,133,'2014-11-27','2014-11-27 09:03:59',0),(7324,133,'2014-11-27','2014-11-27 09:04:00',0),(7325,133,'2014-11-27','2014-11-27 09:30:42',0),(7326,133,'2014-11-27','2014-11-27 09:33:20',0),(7327,112,'2014-11-27','2014-11-27 11:41:23',0),(7328,112,'2014-11-27','2014-11-27 11:41:29',0),(7329,1,'2014-11-27','2014-11-27 14:17:02',0),(7330,112,'2014-11-27','2014-11-27 14:33:11',0),(7331,133,'2014-11-27','2014-11-27 18:55:39',0),(7332,1,'2014-11-27','2014-11-27 21:46:20',0),(7333,1,'2014-11-28','2014-11-28 04:39:36',0),(7334,112,'2014-11-28','2014-11-28 06:06:28',0),(7335,133,'2014-11-28','2014-11-28 09:02:25',0),(7336,133,'2014-11-28','2014-11-28 09:02:25',0),(7337,1,'2014-11-28','2014-11-28 11:53:10',0),(7338,133,'2014-11-28','2014-11-28 15:41:16',0),(7339,112,'2014-11-28','2014-11-28 15:41:16',0),(7340,112,'2014-11-28','2014-11-28 15:41:16',0),(7341,133,'2014-11-28','2014-11-28 16:56:34',0),(7342,1,'2014-11-28','2014-11-28 20:07:35',0),(7343,112,'2014-11-28','2014-11-28 23:48:56',0),(7344,112,'2014-11-28','2014-11-28 23:49:01',0),(7345,133,'2014-11-29','2014-11-29 00:21:54',0),(7346,133,'2014-11-29','2014-11-29 00:21:55',0),(7347,1,'2014-11-29','2014-11-29 02:17:00',0),(7348,1,'2014-11-29','2014-11-29 09:41:55',0),(7349,112,'2014-11-29','2014-11-29 11:39:02',0),(7350,112,'2014-11-29','2014-11-29 13:08:50',0),(7351,133,'2014-11-29','2014-11-29 15:09:35',0),(7352,112,'2014-11-29','2014-11-29 15:59:39',0),(7353,112,'2014-11-29','2014-11-29 16:45:03',0),(7354,1,'2014-11-29','2014-11-29 16:56:38',0),(7355,1,'2014-11-29','2014-11-29 23:50:12',0),(7356,133,'2014-11-29','2014-11-29 23:52:19',0),(7357,112,'2014-11-29','2014-11-29 23:52:38',0),(7358,112,'2014-11-30','2014-11-30 00:00:52',0),(7359,1,'2014-11-30','2014-11-30 06:01:46',0),(7360,112,'2014-11-30','2014-11-30 09:49:47',0),(7361,1,'2014-11-30','2014-11-30 13:10:31',0),(7362,133,'2014-11-30','2014-11-30 17:00:52',0),(7363,112,'2014-11-30','2014-11-30 17:00:52',0),(7364,112,'2014-11-30','2014-11-30 17:00:53',0),(7365,133,'2014-11-30','2014-11-30 17:53:33',0),(7366,112,'2014-11-30','2014-11-30 18:04:46',0),(7367,112,'2014-11-30','2014-11-30 18:04:46',0),(7368,112,'2014-11-30','2014-11-30 18:10:56',0),(7369,112,'2014-11-30','2014-11-30 18:10:56',0),(7370,112,'2014-11-30','2014-11-30 18:11:21',0),(7371,112,'2014-11-30','2014-11-30 18:11:22',0),(7372,1,'2014-11-30','2014-11-30 19:56:15',0),(7373,112,'2014-11-30','2014-11-30 21:00:50',0),(7374,112,'2014-11-30','2014-11-30 21:00:56',0),(7375,112,'2014-11-30','2014-11-30 21:00:56',0),(7376,112,'2014-11-30','2014-11-30 21:01:37',0),(7377,112,'2014-11-30','2014-11-30 21:01:38',0),(7378,112,'2014-11-30','2014-11-30 21:01:49',0),(7379,112,'2014-11-30','2014-11-30 21:01:49',0),(7380,112,'2014-11-30','2014-11-30 21:01:56',0),(7381,112,'2014-11-30','2014-11-30 21:01:56',0),(7382,112,'2014-11-30','2014-11-30 21:02:04',0),(7383,112,'2014-11-30','2014-11-30 21:02:04',0),(7384,112,'2014-11-30','2014-11-30 21:02:07',0),(7385,133,'2014-11-30','2014-11-30 22:42:38',0),(7386,133,'2014-11-30','2014-11-30 22:42:40',0),(7387,112,'2014-12-01','2014-12-01 01:00:54',0),(7388,1,'2014-12-01','2014-12-01 02:09:22',0),(7389,133,'2014-12-01','2014-12-01 08:32:11',0),(7390,1,'2014-12-01','2014-12-01 08:32:12',0),(7391,133,'2014-12-01','2014-12-01 08:32:20',0),(7392,1,'2014-12-01','2014-12-01 15:16:00',0),(7393,112,'2014-12-01','2014-12-01 16:15:41',0),(7394,112,'2014-12-01','2014-12-01 19:41:01',0),(7395,1,'2014-12-01','2014-12-01 22:19:52',0),(7396,112,'2014-12-02','2014-12-02 00:24:36',0),(7397,112,'2014-12-02','2014-12-02 01:34:37',0),(7398,1,'2014-12-02','2014-12-02 04:48:01',0),(7399,1,'2014-12-02','2014-12-02 11:24:37',0),(7400,1,'2014-12-02','2014-12-02 17:59:40',0),(7401,112,'2014-12-02','2014-12-02 21:46:21',0),(7402,112,'2014-12-02','2014-12-02 22:54:45',0),(7403,112,'2014-12-02','2014-12-02 23:48:39',0),(7404,133,'2014-12-02','2014-12-02 23:48:39',0),(7405,112,'2014-12-02','2014-12-02 23:48:39',0),(7406,1,'2014-12-03','2014-12-03 01:08:15',0),(7407,1,'2014-12-03','2014-12-03 07:58:38',0),(7408,133,'2014-12-03','2014-12-03 08:20:07',0),(7409,112,'2014-12-03','2014-12-03 08:20:07',0),(7410,112,'2014-12-03','2014-12-03 08:20:12',0),(7411,133,'2014-12-03','2014-12-03 12:49:16',0),(7412,112,'2014-12-03','2014-12-03 15:18:40',0),(7413,1,'2014-12-03','2014-12-03 16:54:40',0),(7414,133,'2014-12-03','2014-12-03 18:19:54',0),(7415,133,'2014-12-03','2014-12-03 18:19:55',0),(7416,112,'2014-12-03','2014-12-03 21:44:36',0),(7417,112,'2014-12-03','2014-12-03 22:16:24',0),(7418,1,'2014-12-03','2014-12-03 23:39:47',0),(7419,112,'2014-12-04','2014-12-04 00:19:36',0),(7420,112,'2014-12-04','2014-12-04 01:44:37',0),(7421,133,'2014-12-04','2014-12-04 04:58:48',0),(7422,133,'2014-12-04','2014-12-04 04:58:49',0),(7423,1,'2014-12-04','2014-12-04 05:44:06',0),(7424,112,'2014-12-04','2014-12-04 08:24:37',0),(7425,133,'2014-12-04','2014-12-04 09:33:33',0),(7426,133,'2014-12-04','2014-12-04 09:33:33',0),(7427,1,'2014-12-04','2014-12-04 12:16:45',0),(7428,133,'2014-12-04','2014-12-04 15:02:52',0),(7429,133,'2014-12-04','2014-12-04 15:02:53',0),(7430,1,'2014-12-04','2014-12-04 18:29:45',0),(7431,1,'2014-12-05','2014-12-05 00:46:57',0),(7432,1,'2014-12-05','2014-12-05 00:46:57',0),(7433,133,'2014-12-05','2014-12-05 05:35:12',0),(7434,133,'2014-12-05','2014-12-05 05:35:12',0),(7435,133,'2014-12-05','2014-12-05 05:35:13',0),(7436,1,'2014-12-05','2014-12-05 08:37:32',0),(7437,1,'2014-12-05','2014-12-05 08:37:32',0),(7438,112,'2014-12-05','2014-12-05 08:38:34',0),(7439,112,'2014-12-05','2014-12-05 08:38:34',0),(7440,112,'2014-12-05','2014-12-05 08:38:35',0),(7441,112,'2014-12-05','2014-12-05 08:38:35',0),(7442,112,'2014-12-05','2014-12-05 12:26:17',0),(7443,112,'2014-12-05','2014-12-05 12:26:22',0),(7444,133,'2014-12-05','2014-12-05 12:26:27',0),(7445,112,'2014-12-05','2014-12-05 12:26:31',0),(7446,112,'2014-12-05','2014-12-05 12:26:36',0),(7447,1,'2014-12-05','2014-12-05 15:13:57',0),(7448,112,'2014-12-05','2014-12-05 15:14:09',0),(7449,112,'2014-12-05','2014-12-05 15:14:19',0),(7450,112,'2014-12-05','2014-12-05 15:14:39',0),(7451,112,'2014-12-05','2014-12-05 15:14:44',0),(7452,112,'2014-12-05','2014-12-05 15:14:52',0),(7453,112,'2014-12-05','2014-12-05 15:14:54',0),(7454,112,'2014-12-05','2014-12-05 15:14:55',0),(7455,112,'2014-12-05','2014-12-05 15:14:57',0),(7456,112,'2014-12-05','2014-12-05 15:14:59',0),(7457,112,'2014-12-05','2014-12-05 15:15:01',0),(7458,112,'2014-12-05','2014-12-05 15:15:03',0),(7459,112,'2014-12-05','2014-12-05 15:15:04',0),(7460,133,'2014-12-05','2014-12-05 20:55:02',0),(7461,133,'2014-12-05','2014-12-05 20:55:03',0),(7462,1,'2014-12-05','2014-12-05 21:50:36',0),(7463,120,'2014-12-05','2014-12-05 22:04:47',0),(7464,112,'2014-12-05','2014-12-05 22:49:41',0),(7465,112,'2014-12-05','2014-12-05 23:40:50',0),(7466,1,'2014-12-06','2014-12-06 04:36:55',0),(7467,133,'2014-12-06','2014-12-06 04:38:49',0),(7468,112,'2014-12-06','2014-12-06 04:39:43',0),(7469,112,'2014-12-06','2014-12-06 04:49:58',0),(7470,112,'2014-12-06','2014-12-06 10:42:19',0),(7471,1,'2014-12-06','2014-12-06 10:56:10',0),(7472,133,'2014-12-06','2014-12-06 10:56:17',0),(7473,133,'2014-12-06','2014-12-06 10:56:18',0),(7474,133,'2014-12-06','2014-12-06 17:02:44',0),(7475,1,'2014-12-06','2014-12-06 17:15:48',0),(7476,112,'2014-12-06','2014-12-06 21:30:47',0),(7477,112,'2014-12-06','2014-12-06 21:30:47',0),(7478,1,'2014-12-06','2014-12-06 23:20:07',0),(7479,133,'2014-12-07','2014-12-07 01:54:36',0),(7480,1,'2014-12-07','2014-12-07 05:46:22',0),(7481,133,'2014-12-07','2014-12-07 11:34:20',0),(7482,120,'2014-12-07','2014-12-07 12:16:41',0),(7483,112,'2014-12-07','2014-12-07 12:16:41',0),(7484,112,'2014-12-07','2014-12-07 12:16:41',0),(7485,1,'2014-12-07','2014-12-07 12:16:41',0),(7486,112,'2014-12-07','2014-12-07 12:16:41',0),(7487,112,'2014-12-07','2014-12-07 12:16:43',0),(7488,112,'2014-12-07','2014-12-07 12:16:43',0),(7489,112,'2014-12-07','2014-12-07 15:43:11',0),(7490,1,'2014-12-07','2014-12-07 20:53:30',0),(7491,112,'2014-12-07','2014-12-07 22:04:44',0),(7492,1,'2014-12-08','2014-12-08 04:24:50',0),(7493,133,'2014-12-08','2014-12-08 05:23:14',0),(7494,112,'2014-12-08','2014-12-08 11:17:39',0),(7495,1,'2014-12-08','2014-12-08 12:10:49',0),(7496,133,'2014-12-08','2014-12-08 16:52:56',0),(7497,133,'2014-12-08','2014-12-08 16:52:57',0),(7498,133,'2014-12-08','2014-12-08 16:52:57',0),(7499,1,'2014-12-08','2014-12-08 19:01:16',0),(7500,1,'2014-12-09','2014-12-09 01:36:26',0),(7501,112,'2014-12-09','2014-12-09 01:36:26',0),(7502,112,'2014-12-09','2014-12-09 01:36:26',0),(7503,112,'2014-12-09','2014-12-09 01:36:26',0),(7504,112,'2014-12-09','2014-12-09 01:36:26',0),(7505,133,'2014-12-09','2014-12-09 01:36:26',0),(7506,112,'2014-12-09','2014-12-09 05:46:27',0),(7507,112,'2014-12-09','2014-12-09 05:46:27',0),(7508,1,'2014-12-09','2014-12-09 09:43:30',0),(7509,112,'2014-12-09','2014-12-09 09:49:11',0),(7510,112,'2014-12-09','2014-12-09 11:00:20',0),(7511,112,'2014-12-09','2014-12-09 11:36:57',0),(7512,133,'2014-12-09','2014-12-09 15:58:12',0),(7513,1,'2014-12-09','2014-12-09 16:00:22',0),(7514,133,'2014-12-09','2014-12-09 17:23:40',0),(7515,1,'2014-12-09','2014-12-09 22:33:31',0),(7516,112,'2014-12-09','2014-12-09 23:21:03',0),(7517,133,'2014-12-09','2014-12-09 23:24:16',0),(7518,112,'2014-12-09','2014-12-09 23:37:28',0),(7519,112,'2014-12-10','2014-12-10 04:56:19',0),(7520,1,'2014-12-10','2014-12-10 05:27:26',0),(7521,133,'2014-12-10','2014-12-10 05:48:04',0),(7522,133,'2014-12-10','2014-12-10 05:48:05',0),(7523,133,'2014-12-10','2014-12-10 08:08:48',0),(7524,133,'2014-12-10','2014-12-10 08:08:49',0),(7525,133,'2014-12-10','2014-12-10 11:00:39',0),(7526,1,'2014-12-10','2014-12-10 12:01:49',0),(7527,112,'2014-12-10','2014-12-10 16:49:37',0),(7528,1,'2014-12-10','2014-12-10 18:02:17',0),(7529,112,'2014-12-10','2014-12-10 18:54:43',0),(7530,133,'2014-12-10','2014-12-10 19:49:53',0),(7531,133,'2014-12-10','2014-12-10 19:49:53',0),(7532,112,'2014-12-10','2014-12-10 21:19:38',0),(7533,133,'2014-12-10','2014-12-10 21:20:41',0),(7534,112,'2014-12-11','2014-12-11 00:19:45',0),(7535,1,'2014-12-11','2014-12-11 00:24:36',0),(7536,112,'2014-12-11','2014-12-11 02:04:42',0),(7537,112,'2014-12-11','2014-12-11 04:41:19',0),(7538,112,'2014-12-11','2014-12-11 05:53:49',0),(7539,1,'2014-12-11','2014-12-11 06:40:21',0),(7540,133,'2014-12-11','2014-12-11 08:21:00',0),(7541,133,'2014-12-11','2014-12-11 08:21:01',0),(7542,133,'2014-12-11','2014-12-11 12:34:52',0),(7543,112,'2014-12-11','2014-12-11 12:34:55',0),(7544,112,'2014-12-11','2014-12-11 12:34:59',0),(7545,112,'2014-12-11','2014-12-11 12:35:02',0),(7546,112,'2014-12-11','2014-12-11 12:35:05',0),(7547,112,'2014-12-11','2014-12-11 12:35:08',0),(7548,112,'2014-12-11','2014-12-11 12:35:13',0),(7549,112,'2014-12-11','2014-12-11 12:35:16',0),(7550,1,'2014-12-11','2014-12-11 13:02:20',0),(7551,112,'2014-12-11','2014-12-11 13:11:21',0),(7552,1,'2014-12-11','2014-12-11 19:35:20',0),(7553,133,'2014-12-11','2014-12-11 20:30:02',0),(7554,112,'2014-12-11','2014-12-11 20:30:04',0),(7555,112,'2014-12-11','2014-12-11 20:30:05',0),(7556,112,'2014-12-11','2014-12-11 20:30:06',0),(7557,112,'2014-12-11','2014-12-11 20:30:07',0),(7558,112,'2014-12-12','2014-12-12 01:42:18',0),(7559,1,'2014-12-12','2014-12-12 03:14:35',0),(7560,133,'2014-12-12','2014-12-12 04:00:44',0),(7561,133,'2014-12-12','2014-12-12 04:00:46',0),(7562,133,'2014-12-12','2014-12-12 04:00:46',0),(7563,112,'2014-12-12','2014-12-12 07:17:11',0),(7564,112,'2014-12-12','2014-12-12 08:04:35',0),(7565,1,'2014-12-12','2014-12-12 09:15:11',0),(7566,112,'2014-12-12','2014-12-12 09:34:35',0),(7567,112,'2014-12-12','2014-12-12 11:59:36',0),(7568,133,'2014-12-12','2014-12-12 12:47:23',0),(7569,133,'2014-12-12','2014-12-12 12:47:23',0),(7570,112,'2014-12-12','2014-12-12 13:29:36',0),(7571,112,'2014-12-12','2014-12-12 15:29:36',0),(7572,112,'2014-12-12','2014-12-12 15:55:31',0),(7573,1,'2014-12-12','2014-12-12 16:50:58',0),(7574,112,'2014-12-12','2014-12-12 17:17:09',0),(7575,112,'2014-12-12','2014-12-12 17:17:09',0),(7576,112,'2014-12-12','2014-12-12 17:17:09',0),(7577,112,'2014-12-12','2014-12-12 17:17:11',0),(7578,112,'2014-12-12','2014-12-12 18:34:53',0),(7579,112,'2014-12-12','2014-12-12 18:34:53',0),(7580,1,'2014-12-13','2014-12-13 00:17:49',0),(7581,133,'2014-12-13','2014-12-13 03:11:27',0),(7582,133,'2014-12-13','2014-12-13 03:11:27',0),(7583,1,'2014-12-13','2014-12-13 11:04:38',0),(7584,112,'2014-12-13','2014-12-13 11:15:27',0),(7585,120,'2014-12-13','2014-12-13 11:52:11',0),(7586,112,'2014-12-13','2014-12-13 12:02:47',0),(7587,112,'2014-12-13','2014-12-13 14:01:23',0),(7588,112,'2014-12-13','2014-12-13 17:24:36',0),(7589,1,'2014-12-13','2014-12-13 17:29:39',0),(7590,112,'2014-12-13','2014-12-13 19:19:35',0),(7591,112,'2014-12-13','2014-12-13 20:55:16',0),(7592,112,'2014-12-13','2014-12-13 22:19:36',0),(7593,112,'2014-12-14','2014-12-14 00:09:37',0),(7594,1,'2014-12-14','2014-12-14 00:47:49',0),(7595,112,'2014-12-14','2014-12-14 01:49:37',0),(7596,112,'2014-12-14','2014-12-14 03:44:35',0),(7597,1,'2014-12-14','2014-12-14 07:46:10',0),(7598,112,'2014-12-14','2014-12-14 07:48:34',0),(7599,133,'2014-12-14','2014-12-14 07:49:17',0),(7600,112,'2014-12-14','2014-12-14 07:52:15',0),(7601,1,'2014-12-14','2014-12-14 14:06:42',0),(7602,133,'2014-12-14','2014-12-14 14:16:41',0),(7603,133,'2014-12-14','2014-12-14 14:16:42',0),(7604,112,'2014-12-14','2014-12-14 15:30:55',0),(7605,1,'2014-12-14','2014-12-14 20:39:27',0),(7606,133,'2014-12-14','2014-12-14 22:05:47',0),(7607,112,'2014-12-14','2014-12-14 22:05:50',0),(7608,112,'2014-12-14','2014-12-14 22:05:59',0),(7609,112,'2014-12-14','2014-12-14 22:06:11',0),(7610,1,'2014-12-15','2014-12-15 02:40:33',0),(7611,133,'2014-12-15','2014-12-15 06:27:44',0),(7612,133,'2014-12-15','2014-12-15 06:27:44',0),(7613,112,'2014-12-15','2014-12-15 07:49:05',0),(7614,1,'2014-12-15','2014-12-15 10:58:04',0),(7615,112,'2014-12-15','2014-12-15 13:46:08',0),(7616,133,'2014-12-15','2014-12-15 14:49:07',0),(7617,133,'2014-12-15','2014-12-15 14:49:07',0),(7618,1,'2014-12-15','2014-12-15 16:59:21',0),(7619,133,'2014-12-15','2014-12-15 18:09:20',0),(7620,1,'2014-12-16','2014-12-16 01:12:59',0),(7621,133,'2014-12-16','2014-12-16 01:40:34',0),(7622,1,'2014-12-16','2014-12-16 07:14:36',0),(7623,110,'2014-12-16','2014-12-16 11:56:20',0),(7624,110,'2014-12-16','2014-12-16 11:56:35',0),(7625,110,'2014-12-16','2014-12-16 11:57:00',0),(7626,110,'2014-12-16','2014-12-16 11:57:13',0),(7627,112,'2014-12-16','2014-12-16 11:57:14',1),(7628,112,'2014-12-16','2014-12-16 11:57:16',1),(7629,106,'2014-12-16','2014-12-16 11:57:17',1),(7630,1,'2014-12-16','2014-12-16 11:57:23',1),(7631,1,'2014-12-16','2014-12-16 11:57:30',1),(7632,1,'2014-12-16','2014-12-16 11:59:47',1),(7633,1,'2014-12-16','2014-12-16 12:03:44',0),(7634,133,'2014-12-16','2014-12-16 16:54:15',0),(7635,133,'2014-12-16','2014-12-16 16:54:16',0),(7636,1,'2014-12-16','2014-12-16 18:20:10',0),(7637,133,'2014-12-16','2014-12-16 18:57:43',0),(7638,133,'2014-12-16','2014-12-16 18:58:03',0),(7639,112,'2014-12-16','2014-12-16 19:49:36',0),(7640,112,'2014-12-16','2014-12-16 19:54:35',0),(7641,112,'2014-12-16','2014-12-16 21:17:03',0),(7642,112,'2014-12-16','2014-12-16 21:17:09',0),(7643,112,'2014-12-16','2014-12-16 21:44:41',0),(7644,112,'2014-12-16','2014-12-16 21:54:35',0),(7645,112,'2014-12-16','2014-12-16 23:39:36',0),(7646,112,'2014-12-16','2014-12-16 23:44:37',0),(7647,1,'2014-12-17','2014-12-17 00:37:16',0),(7648,112,'2014-12-17','2014-12-17 02:54:40',0),(7649,112,'2014-12-17','2014-12-17 03:04:51',0),(7650,112,'2014-12-17','2014-12-17 03:05:13',0),(7651,133,'2014-12-17','2014-12-17 03:05:37',0),(7652,112,'2014-12-17','2014-12-17 04:49:42',0),(7653,1,'2014-12-17','2014-12-17 07:38:00',0),(7654,133,'2014-12-17','2014-12-17 07:40:58',0),(7655,133,'2014-12-17','2014-12-17 09:15:27',0),(7656,133,'2014-12-17','2014-12-17 09:49:44',0),(7657,133,'2014-12-17','2014-12-17 14:01:38',0),(7658,1,'2014-12-17','2014-12-17 14:41:28',0),(7659,133,'2014-12-17','2014-12-17 17:07:04',0),(7660,133,'2014-12-17','2014-12-17 17:07:05',0),(7661,112,'2014-12-17','2014-12-17 18:24:57',0),(7662,112,'2014-12-17','2014-12-17 18:59:35',0),(7663,112,'2014-12-17','2014-12-17 19:30:33',0),(7664,1,'2014-12-17','2014-12-17 21:28:14',0),(7665,112,'2014-12-17','2014-12-17 22:27:35',0),(7666,112,'2014-12-18','2014-12-18 02:40:04',0),(7667,112,'2014-12-18','2014-12-18 05:27:38',0),(7668,1,'2014-12-18','2014-12-18 06:19:59',0),(7669,133,'2014-12-18','2014-12-18 07:59:42',0),(7670,1,'2014-12-18','2014-12-18 12:54:37',0),(7671,112,'2014-12-18','2014-12-18 15:28:57',0),(7672,112,'2014-12-18','2014-12-18 17:26:12',0),(7673,112,'2014-12-18','2014-12-18 18:03:58',0),(7674,112,'2014-12-18','2014-12-18 18:03:58',0),(7675,133,'2014-12-18','2014-12-18 18:03:58',0),(7676,1,'2014-12-18','2014-12-18 19:05:21',0),(7677,112,'2014-12-18','2014-12-18 19:24:37',0),(7678,112,'2014-12-18','2014-12-18 21:07:30',0),(7679,112,'2014-12-18','2014-12-18 21:08:11',0),(7680,133,'2014-12-19','2014-12-19 00:26:00',0),(7681,133,'2014-12-19','2014-12-19 00:26:01',0),(7682,1,'2014-12-19','2014-12-19 02:29:57',0),(7683,1,'2014-12-19','2014-12-19 08:42:19',0),(7684,133,'2014-12-19','2014-12-19 09:03:35',0),(7685,133,'2014-12-19','2014-12-19 09:03:35',0),(7686,112,'2014-12-19','2014-12-19 10:27:00',0),(7687,112,'2014-12-19','2014-12-19 10:30:52',0),(7688,112,'2014-12-19','2014-12-19 10:30:52',0),(7689,112,'2014-12-19','2014-12-19 10:30:53',0),(7690,112,'2014-12-19','2014-12-19 10:30:53',0),(7691,112,'2014-12-19','2014-12-19 13:21:47',0),(7692,112,'2014-12-19','2014-12-19 14:12:33',0),(7693,112,'2014-12-19','2014-12-19 14:12:35',0),(7694,112,'2014-12-19','2014-12-19 14:12:36',0),(7695,112,'2014-12-19','2014-12-19 14:12:37',0),(7696,133,'2014-12-19','2014-12-19 14:28:59',0),(7697,133,'2014-12-19','2014-12-19 14:28:59',0),(7698,133,'2014-12-19','2014-12-19 14:28:59',0),(7699,133,'2014-12-19','2014-12-19 14:29:00',0),(7700,112,'2014-12-19','2014-12-19 14:38:08',0),(7701,1,'2014-12-19','2014-12-19 15:34:38',0),(7702,112,'2014-12-19','2014-12-19 15:42:05',0),(7703,112,'2014-12-19','2014-12-19 16:41:24',0),(7704,112,'2014-12-19','2014-12-19 19:03:36',0),(7705,112,'2014-12-19','2014-12-19 20:39:39',0),(7706,133,'2014-12-19','2014-12-19 20:58:29',0),(7707,133,'2014-12-19','2014-12-19 20:58:30',0),(7708,112,'2014-12-19','2014-12-19 21:39:37',0),(7709,112,'2014-12-19','2014-12-19 22:12:17',0),(7710,112,'2014-12-19','2014-12-19 22:44:37',0),(7711,1,'2014-12-19','2014-12-19 23:32:13',0),(7712,112,'2014-12-20','2014-12-20 00:35:45',0),(7713,112,'2014-12-20','2014-12-20 01:39:36',0),(7714,112,'2014-12-20','2014-12-20 01:52:51',0),(7715,112,'2014-12-20','2014-12-20 03:34:37',0),(7716,112,'2014-12-20','2014-12-20 05:30:05',0),(7717,1,'2014-12-20','2014-12-20 06:05:45',0),(7718,112,'2014-12-20','2014-12-20 07:00:03',0),(7719,112,'2014-12-20','2014-12-20 09:17:30',0),(7720,112,'2014-12-20','2014-12-20 13:52:07',0),(7721,1,'2014-12-20','2014-12-20 14:03:53',0),(7722,133,'2014-12-20','2014-12-20 14:20:57',0),(7723,112,'2014-12-20','2014-12-20 16:54:38',0),(7724,112,'2014-12-20','2014-12-20 18:54:35',0),(7725,1,'2014-12-21','2014-12-21 01:30:11',0),(7726,120,'2014-12-21','2014-12-21 02:03:09',0),(7727,112,'2014-12-21','2014-12-21 02:28:05',0),(7728,112,'2014-12-21','2014-12-21 04:34:35',0),(7729,112,'2014-12-21','2014-12-21 05:29:36',0),(7730,120,'2014-12-21','2014-12-21 06:47:54',0),(7731,1,'2014-12-21','2014-12-21 08:58:45',0),(7732,1,'2014-12-21','2014-12-21 08:58:45',0),(7733,133,'2014-12-21','2014-12-21 12:35:14',0),(7734,133,'2014-12-21','2014-12-21 12:35:14',0),(7735,1,'2014-12-21','2014-12-21 15:05:41',0),(7736,120,'2014-12-22','2014-12-22 01:32:02',0),(7737,112,'2014-12-22','2014-12-22 02:15:05',0),(7738,1,'2014-12-22','2014-12-22 02:38:34',0),(7739,133,'2014-12-22','2014-12-22 06:02:31',0),(7740,133,'2014-12-22','2014-12-22 06:02:32',0),(7741,133,'2014-12-22','2014-12-22 06:02:32',0),(7742,112,'2014-12-22','2014-12-22 07:53:06',0),(7743,112,'2014-12-22','2014-12-22 08:13:07',0),(7744,1,'2014-12-22','2014-12-22 09:48:23',0),(7745,1,'2014-12-22','2014-12-22 15:58:10',0),(7746,112,'2014-12-22','2014-12-22 18:36:05',0),(7747,1,'2014-12-22','2014-12-22 22:42:01',0),(7748,1,'2014-12-23','2014-12-23 05:06:35',0),(7749,133,'2014-12-23','2014-12-23 05:22:15',0),(7750,133,'2014-12-23','2014-12-23 06:39:02',0),(7751,1,'2014-12-23','2014-12-23 11:17:08',0),(7752,133,'2014-12-23','2014-12-23 11:17:20',0),(7753,112,'2014-12-23','2014-12-23 13:12:18',0),(7754,112,'2014-12-23','2014-12-23 13:12:24',0),(7755,133,'2014-12-23','2014-12-23 13:12:29',0),(7756,112,'2014-12-23','2014-12-23 17:23:56',0),(7757,1,'2014-12-23','2014-12-23 17:26:26',0),(7758,1,'2014-12-24','2014-12-24 00:19:37',0),(7759,112,'2014-12-24','2014-12-24 04:01:39',0),(7760,1,'2014-12-24','2014-12-24 06:50:15',0),(7761,133,'2014-12-24','2014-12-24 08:59:41',0),(7762,133,'2014-12-24','2014-12-24 08:59:42',0),(7763,112,'2014-12-24','2014-12-24 09:16:52',0),(7764,112,'2014-12-24','2014-12-24 10:17:31',0),(7765,112,'2014-12-24','2014-12-24 10:17:34',0),(7766,112,'2014-12-24','2014-12-24 10:17:37',0),(7767,112,'2014-12-24','2014-12-24 10:17:40',0),(7768,112,'2014-12-24','2014-12-24 10:17:46',0),(7769,112,'2014-12-24','2014-12-24 10:17:49',0),(7770,112,'2014-12-24','2014-12-24 10:17:52',0),(7771,112,'2014-12-24','2014-12-24 10:17:55',0),(7772,112,'2014-12-24','2014-12-24 11:20:19',0),(7773,1,'2014-12-24','2014-12-24 12:50:17',0),(7774,112,'2014-12-24','2014-12-24 16:11:29',0),(7775,133,'2014-12-24','2014-12-24 16:36:40',0),(7776,112,'2014-12-24','2014-12-24 16:50:19',0),(7777,1,'2014-12-24','2014-12-24 19:21:47',0),(7778,1,'2014-12-24','2014-12-24 19:21:47',0),(7779,133,'2014-12-24','2014-12-24 20:11:49',0),(7780,112,'2014-12-25','2014-12-25 00:23:24',0),(7781,1,'2014-12-25','2014-12-25 02:05:31',0),(7782,112,'2014-12-25','2014-12-25 05:43:00',0),(7783,133,'2014-12-25','2014-12-25 07:05:10',0),(7784,1,'2014-12-25','2014-12-25 08:58:25',0),(7785,133,'2014-12-25','2014-12-25 13:44:48',0),(7786,133,'2014-12-25','2014-12-25 13:44:48',0),(7787,1,'2014-12-25','2014-12-25 15:32:28',0),(7788,112,'2014-12-25','2014-12-25 17:51:07',0),(7789,112,'2014-12-25','2014-12-25 21:00:19',0),(7790,1,'2014-12-25','2014-12-25 21:50:22',0),(7791,1,'2014-12-26','2014-12-26 04:55:13',0),(7792,112,'2014-12-26','2014-12-26 06:55:52',0),(7793,1,'2014-12-26','2014-12-26 11:07:45',0),(7794,1,'2014-12-26','2014-12-26 18:04:35',0),(7795,112,'2014-12-26','2014-12-26 18:51:28',0),(7796,133,'2014-12-26','2014-12-26 18:52:23',0),(7797,112,'2014-12-26','2014-12-26 19:34:44',0),(7798,112,'2014-12-26','2014-12-26 19:54:37',0),(7799,112,'2014-12-26','2014-12-26 22:48:21',0),(7800,1,'2014-12-27','2014-12-27 00:45:59',0),(7801,112,'2014-12-27','2014-12-27 01:38:48',0),(7802,112,'2014-12-27','2014-12-27 03:43:49',0),(7803,112,'2014-12-27','2014-12-27 06:09:35',0),(7804,1,'2014-12-27','2014-12-27 07:17:48',0),(7805,1,'2014-12-27','2014-12-27 15:36:40',0),(7806,133,'2014-12-27','2014-12-27 17:05:04',0),(7807,112,'2014-12-27','2014-12-27 17:05:13',0),(7808,112,'2014-12-27','2014-12-27 17:05:15',0),(7809,112,'2014-12-27','2014-12-27 17:05:17',0),(7810,112,'2014-12-27','2014-12-27 17:05:18',0),(7811,112,'2014-12-27','2014-12-27 19:01:34',0),(7812,112,'2014-12-27','2014-12-27 19:20:09',0),(7813,1,'2014-12-27','2014-12-27 22:32:57',0),(7814,133,'2014-12-28','2014-12-28 01:11:46',0),(7815,112,'2014-12-28','2014-12-28 01:11:47',0),(7816,112,'2014-12-28','2014-12-28 01:11:47',0),(7817,112,'2014-12-28','2014-12-28 01:11:48',0),(7818,112,'2014-12-28','2014-12-28 01:11:48',0),(7819,112,'2014-12-28','2014-12-28 04:13:35',0),(7820,1,'2014-12-28','2014-12-28 04:55:07',0),(7821,112,'2014-12-28','2014-12-28 07:34:06',0),(7822,133,'2014-12-28','2014-12-28 08:09:49',0),(7823,133,'2014-12-28','2014-12-28 08:09:50',0),(7824,1,'2014-12-28','2014-12-28 11:49:45',0),(7825,120,'2014-12-28','2014-12-28 11:50:02',0),(7826,112,'2014-12-28','2014-12-28 13:27:46',0),(7827,133,'2014-12-28','2014-12-28 14:41:24',0),(7828,112,'2014-12-28','2014-12-28 14:41:30',0),(7829,112,'2014-12-28','2014-12-28 14:41:37',0),(7830,112,'2014-12-28','2014-12-28 14:41:41',0),(7831,112,'2014-12-28','2014-12-28 14:41:46',0),(7832,1,'2014-12-28','2014-12-28 18:15:54',0),(7833,112,'2014-12-28','2014-12-28 18:33:25',0),(7834,112,'2014-12-28','2014-12-28 18:33:26',0),(7835,133,'2014-12-28','2014-12-28 21:41:30',0),(7836,112,'2014-12-28','2014-12-28 21:41:31',0),(7837,112,'2014-12-28','2014-12-28 21:41:31',0),(7838,112,'2014-12-28','2014-12-28 22:32:47',0),(7839,112,'2014-12-28','2014-12-28 22:32:48',0),(7840,112,'2014-12-28','2014-12-28 22:37:53',0),(7841,112,'2014-12-28','2014-12-28 22:39:59',0),(7842,1,'2014-12-29','2014-12-29 01:04:35',0),(7843,112,'2014-12-29','2014-12-29 02:34:30',0),(7844,112,'2014-12-29','2014-12-29 02:34:31',0),(7845,112,'2014-12-29','2014-12-29 04:48:27',0),(7846,112,'2014-12-29','2014-12-29 04:48:28',0),(7847,1,'2014-12-29','2014-12-29 08:16:20',0),(7848,133,'2014-12-29','2014-12-29 08:44:31',0),(7849,112,'2014-12-29','2014-12-29 08:44:33',0),(7850,112,'2014-12-29','2014-12-29 08:44:36',0),(7851,112,'2014-12-29','2014-12-29 08:44:38',0),(7852,112,'2014-12-29','2014-12-29 08:44:45',0),(7853,112,'2014-12-29','2014-12-29 08:44:47',0),(7854,112,'2014-12-29','2014-12-29 08:44:50',0),(7855,112,'2014-12-29','2014-12-29 12:57:44',0),(7856,1,'2014-12-29','2014-12-29 15:38:18',0),(7857,133,'2014-12-29','2014-12-29 19:30:00',0),(7858,133,'2014-12-29','2014-12-29 19:30:01',0),(7859,112,'2014-12-29','2014-12-29 19:58:27',0),(7860,1,'2014-12-29','2014-12-29 21:44:22',0),(7861,112,'2014-12-30','2014-12-30 03:02:37',0),(7862,112,'2014-12-30','2014-12-30 04:27:31',0),(7863,1,'2014-12-30','2014-12-30 07:30:21',0),(7864,133,'2014-12-30','2014-12-30 07:35:11',0),(7865,133,'2014-12-30','2014-12-30 07:35:13',0),(7866,133,'2014-12-30','2014-12-30 11:16:38',0),(7867,1,'2014-12-30','2014-12-30 14:12:15',0),(7868,133,'2014-12-30','2014-12-30 16:21:23',0),(7869,133,'2014-12-30','2014-12-30 16:21:23',0),(7870,112,'2014-12-30','2014-12-30 20:53:03',0),(7871,112,'2014-12-30','2014-12-30 21:18:06',0),(7872,112,'2014-12-30','2014-12-30 21:24:57',0),(7873,1,'2014-12-30','2014-12-30 23:26:37',0),(7874,112,'2014-12-31','2014-12-31 00:40:58',0),(7875,112,'2014-12-31','2014-12-31 03:09:34',0),(7876,133,'2014-12-31','2014-12-31 04:13:40',0),(7877,112,'2014-12-31','2014-12-31 04:33:31',0),(7878,1,'2014-12-31','2014-12-31 06:04:40',0),(7879,112,'2014-12-31','2014-12-31 06:39:36',0),(7880,112,'2014-12-31','2014-12-31 07:44:36',0),(7881,112,'2014-12-31','2014-12-31 09:17:28',0),(7882,112,'2014-12-31','2014-12-31 10:59:34',0),(7883,112,'2014-12-31','2014-12-31 11:22:35',0),(7884,133,'2014-12-31','2014-12-31 11:50:16',0),(7885,133,'2014-12-31','2014-12-31 11:50:16',0),(7886,1,'2014-12-31','2014-12-31 12:15:02',0),(7887,112,'2014-12-31','2014-12-31 13:27:27',0),(7888,112,'2014-12-31','2014-12-31 13:53:35',0),(7889,112,'2014-12-31','2014-12-31 13:58:55',0),(7890,112,'2014-12-31','2014-12-31 13:58:55',0),(7891,112,'2014-12-31','2014-12-31 16:17:24',0),(7892,1,'2014-12-31','2014-12-31 19:11:08',0),(7893,133,'2014-12-31','2014-12-31 22:23:20',0),(7894,112,'2014-12-31','2014-12-31 22:26:16',0),(7895,112,'2014-12-31','2014-12-31 22:29:14',0),(7896,112,'2014-12-31','2014-12-31 23:29:35',0),(7897,1,'2015-01-01','2015-01-01 01:32:57',0),(7898,112,'2015-01-01','2015-01-01 02:24:37',0),(7899,112,'2015-01-01','2015-01-01 03:34:36',0),(7900,112,'2015-01-01','2015-01-01 03:36:03',0),(7901,112,'2015-01-01','2015-01-01 03:36:05',0),(7902,112,'2015-01-01','2015-01-01 03:36:16',0),(7903,112,'2015-01-01','2015-01-01 03:36:21',0),(7904,133,'2015-01-01','2015-01-01 04:43:12',0),(7905,112,'2015-01-01','2015-01-01 06:08:03',0),(7906,1,'2015-01-01','2015-01-01 07:39:37',0),(7907,112,'2015-01-01','2015-01-01 08:29:35',0),(7908,112,'2015-01-01','2015-01-01 10:41:55',0),(7909,112,'2015-01-01','2015-01-01 12:36:30',0),(7910,112,'2015-01-01','2015-01-01 13:09:35',0),(7911,112,'2015-01-01','2015-01-01 13:39:35',0),(7912,1,'2015-01-01','2015-01-01 14:38:58',0),(7913,112,'2015-01-01','2015-01-01 14:44:25',0),(7914,112,'2015-01-01','2015-01-01 15:54:35',0),(7915,112,'2015-01-01','2015-01-01 22:23:57',0),(7916,1,'2015-01-02','2015-01-02 00:54:11',0),(7917,112,'2015-01-02','2015-01-02 01:49:21',0),(7918,1,'2015-01-02','2015-01-02 08:17:09',0),(7919,133,'2015-01-02','2015-01-02 14:09:57',0),(7920,112,'2015-01-02','2015-01-02 14:09:58',0),(7921,112,'2015-01-02','2015-01-02 14:09:58',0),(7922,1,'2015-01-02','2015-01-02 15:36:52',0),(7923,112,'2015-01-02','2015-01-02 20:29:37',0),(7924,133,'2015-01-02','2015-01-02 21:39:28',0),(7925,133,'2015-01-02','2015-01-02 21:39:28',0),(7926,1,'2015-01-02','2015-01-02 22:06:03',0),(7927,112,'2015-01-02','2015-01-02 22:22:52',0),(7928,112,'2015-01-03','2015-01-03 00:20:45',0),(7929,112,'2015-01-03','2015-01-03 02:19:35',0),(7930,133,'2015-01-03','2015-01-03 03:11:09',0),(7931,112,'2015-01-03','2015-01-03 04:19:40',0),(7932,1,'2015-01-03','2015-01-03 04:56:28',0),(7933,112,'2015-01-03','2015-01-03 05:14:29',0),(7934,112,'2015-01-03','2015-01-03 05:14:29',0),(7935,112,'2015-01-03','2015-01-03 07:13:39',0),(7936,112,'2015-01-03','2015-01-03 07:22:46',0),(7937,112,'2015-01-03','2015-01-03 09:39:35',0),(7938,133,'2015-01-03','2015-01-03 09:50:27',0),(7939,133,'2015-01-03','2015-01-03 09:50:28',0),(7940,112,'2015-01-03','2015-01-03 10:12:46',0),(7941,1,'2015-01-03','2015-01-03 10:57:30',0),(7942,112,'2015-01-03','2015-01-03 14:50:52',0),(7943,112,'2015-01-03','2015-01-03 16:54:35',0),(7944,1,'2015-01-03','2015-01-03 17:03:47',0),(7945,133,'2015-01-03','2015-01-03 17:04:18',0),(7946,133,'2015-01-03','2015-01-03 17:04:18',0),(7947,112,'2015-01-03','2015-01-03 17:56:36',0),(7948,112,'2015-01-03','2015-01-03 17:56:36',0),(7949,112,'2015-01-03','2015-01-03 19:49:35',0),(7950,112,'2015-01-03','2015-01-03 21:43:18',0),(7951,112,'2015-01-03','2015-01-03 21:43:18',0),(7952,1,'2015-01-04','2015-01-04 01:22:15',0),(7953,112,'2015-01-04','2015-01-04 04:16:42',0),(7954,112,'2015-01-04','2015-01-04 04:32:40',0),(7955,112,'2015-01-04','2015-01-04 06:32:59',0),(7956,1,'2015-01-04','2015-01-04 07:54:19',0),(7957,133,'2015-01-04','2015-01-04 08:11:24',0),(7958,112,'2015-01-04','2015-01-04 08:11:24',0),(7959,112,'2015-01-04','2015-01-04 08:11:25',0),(7960,112,'2015-01-04','2015-01-04 08:11:25',0),(7961,112,'2015-01-04','2015-01-04 08:11:25',0),(7962,112,'2015-01-04','2015-01-04 10:49:35',0),(7963,112,'2015-01-04','2015-01-04 12:42:04',0),(7964,1,'2015-01-04','2015-01-04 14:34:09',0),(7965,112,'2015-01-04','2015-01-04 15:49:35',0),(7966,112,'2015-01-04','2015-01-04 17:59:41',0),(7967,112,'2015-01-04','2015-01-04 19:34:37',0),(7968,112,'2015-01-04','2015-01-04 20:44:35',0),(7969,1,'2015-01-04','2015-01-04 20:57:30',0),(7970,112,'2015-01-04','2015-01-04 21:14:29',0),(7971,112,'2015-01-04','2015-01-04 23:44:35',0),(7972,112,'2015-01-05','2015-01-05 02:04:36',0),(7973,1,'2015-01-05','2015-01-05 03:11:11',0),(7974,112,'2015-01-05','2015-01-05 03:25:03',0),(7975,112,'2015-01-05','2015-01-05 05:49:36',0),(7976,112,'2015-01-05','2015-01-05 07:24:37',0),(7977,1,'2015-01-05','2015-01-05 09:34:41',0),(7978,133,'2015-01-05','2015-01-05 11:20:30',0),(7979,112,'2015-01-05','2015-01-05 11:20:52',0),(7980,112,'2015-01-05','2015-01-05 11:38:07',0),(7981,112,'2015-01-05','2015-01-05 12:58:33',0),(7982,112,'2015-01-05','2015-01-05 12:58:50',0),(7983,112,'2015-01-05','2015-01-05 12:59:04',0),(7984,1,'2015-01-05','2015-01-05 15:54:19',0),(7985,133,'2015-01-05','2015-01-05 15:54:34',0),(7986,1,'2015-01-05','2015-01-05 22:09:34',0),(7987,112,'2015-01-05','2015-01-05 22:39:46',0),(7988,112,'2015-01-06','2015-01-06 00:49:36',0),(7989,112,'2015-01-06','2015-01-06 01:52:56',0),(7990,1,'2015-01-06','2015-01-06 04:41:28',0),(7991,133,'2015-01-06','2015-01-06 08:27:19',0),(7992,133,'2015-01-06','2015-01-06 08:27:20',0),(7993,112,'2015-01-06','2015-01-06 09:12:07',0),(7994,112,'2015-01-06','2015-01-06 11:11:27',0),(7995,1,'2015-01-06','2015-01-06 11:21:28',0),(7996,112,'2015-01-06','2015-01-06 13:03:57',0),(7997,112,'2015-01-06','2015-01-06 13:09:34',0),(7998,1,'2015-01-06','2015-01-06 17:21:59',0),(7999,112,'2015-01-06','2015-01-06 18:04:36',0),(8000,112,'2015-01-06','2015-01-06 22:14:58',0),(8001,1,'2015-01-06','2015-01-06 23:27:56',0),(8002,133,'2015-01-07','2015-01-07 03:35:40',0),(8003,120,'2015-01-07','2015-01-07 04:38:18',0),(8004,133,'2015-01-07','2015-01-07 05:08:55',0),(8005,133,'2015-01-07','2015-01-07 05:08:56',0),(8006,1,'2015-01-07','2015-01-07 05:44:35',0),(8007,112,'2015-01-07','2015-01-07 07:20:38',0),(8008,112,'2015-01-07','2015-01-07 09:18:07',0),(8009,133,'2015-01-07','2015-01-07 10:35:24',0),(8010,133,'2015-01-07','2015-01-07 10:35:29',0),(8011,112,'2015-01-07','2015-01-07 10:39:47',0),(8012,112,'2015-01-07','2015-01-07 12:13:34',0),(8013,1,'2015-01-07','2015-01-07 12:35:57',0),(8014,112,'2015-01-07','2015-01-07 13:36:56',0),(8015,112,'2015-01-07','2015-01-07 13:36:56',0),(8016,112,'2015-01-07','2015-01-07 13:54:35',0),(8017,133,'2015-01-07','2015-01-07 14:42:50',0),(8018,112,'2015-01-07','2015-01-07 18:09:36',0),(8019,1,'2015-01-07','2015-01-07 19:12:54',0),(8020,112,'2015-01-07','2015-01-07 20:49:54',0),(8021,133,'2015-01-07','2015-01-07 22:39:02',0),(8022,133,'2015-01-07','2015-01-07 22:39:02',0),(8023,1,'2015-01-08','2015-01-08 01:32:50',0),(8024,112,'2015-01-08','2015-01-08 05:35:22',0),(8025,1,'2015-01-08','2015-01-08 09:40:39',0),(8026,112,'2015-01-08','2015-01-08 09:43:34',0),(8027,120,'2015-01-08','2015-01-08 09:46:29',0),(8028,112,'2015-01-08','2015-01-08 09:49:24',0),(8029,112,'2015-01-08','2015-01-08 09:52:18',0),(8030,120,'2015-01-08','2015-01-08 09:55:13',0),(8031,133,'2015-01-08','2015-01-08 09:58:09',0),(8032,112,'2015-01-08','2015-01-08 11:19:56',0),(8033,112,'2015-01-08','2015-01-08 13:09:32',0),(8034,133,'2015-01-08','2015-01-08 14:56:15',0),(8035,1,'2015-01-08','2015-01-08 17:17:02',0),(8036,133,'2015-01-08','2015-01-08 23:19:33',0),(8037,112,'2015-01-09','2015-01-09 01:12:21',0),(8038,112,'2015-01-09','2015-01-09 01:26:49',0),(8039,1,'2015-01-09','2015-01-09 02:04:56',0),(8040,112,'2015-01-09','2015-01-09 02:33:55',0),(8041,133,'2015-01-09','2015-01-09 05:56:01',0),(8042,133,'2015-01-09','2015-01-09 05:56:01',0),(8043,133,'2015-01-09','2015-01-09 06:18:57',0),(8044,1,'2015-01-09','2015-01-09 08:46:47',0),(8045,133,'2015-01-09','2015-01-09 13:47:47',0),(8046,133,'2015-01-09','2015-01-09 13:47:49',0),(8047,1,'2015-01-09','2015-01-09 14:50:37',0),(8048,112,'2015-01-09','2015-01-09 17:17:35',0),(8049,112,'2015-01-09','2015-01-09 17:17:38',0),(8050,112,'2015-01-09','2015-01-09 17:18:05',0),(8051,112,'2015-01-09','2015-01-09 17:18:19',0),(8052,112,'2015-01-09','2015-01-09 17:18:23',0),(8053,112,'2015-01-09','2015-01-09 17:18:28',0),(8054,112,'2015-01-09','2015-01-09 17:18:33',0),(8055,112,'2015-01-09','2015-01-09 17:48:59',0),(8056,1,'2015-01-09','2015-01-09 21:01:44',0),(8057,112,'2015-01-09','2015-01-09 23:40:05',0),(8058,1,'2015-01-10','2015-01-10 03:04:40',0),(8059,133,'2015-01-10','2015-01-10 03:45:34',0),(8060,112,'2015-01-10','2015-01-10 03:45:34',0),(8061,112,'2015-01-10','2015-01-10 03:45:35',0),(8062,112,'2015-01-10','2015-01-10 07:05:47',0),(8063,112,'2015-01-10','2015-01-10 07:05:49',0),(8064,112,'2015-01-10','2015-01-10 07:05:50',0),(8065,112,'2015-01-10','2015-01-10 07:05:51',0),(8066,1,'2015-01-10','2015-01-10 09:13:44',0),(8067,1,'2015-01-10','2015-01-10 15:19:40',0),(8068,133,'2015-01-10','2015-01-10 16:30:41',0),(8069,133,'2015-01-10','2015-01-10 16:30:43',0),(8070,133,'2015-01-10','2015-01-10 17:42:51',0),(8071,133,'2015-01-10','2015-01-10 19:17:43',0),(8072,120,'2015-01-10','2015-01-10 20:09:39',0),(8073,1,'2015-01-10','2015-01-10 21:39:49',0),(8074,112,'2015-01-11','2015-01-11 00:52:34',0),(8075,1,'2015-01-11','2015-01-11 04:57:45',0),(8076,133,'2015-01-11','2015-01-11 11:00:27',0),(8077,1,'2015-01-11','2015-01-11 11:50:23',0),(8078,112,'2015-01-11','2015-01-11 16:14:36',0),(8079,112,'2015-01-11','2015-01-11 17:54:36',0),(8080,112,'2015-01-11','2015-01-11 19:27:20',0),(8081,1,'2015-01-11','2015-01-11 19:29:00',0),(8082,112,'2015-01-11','2015-01-11 20:04:34',0),(8083,133,'2015-01-11','2015-01-11 20:24:58',0),(8084,112,'2015-01-11','2015-01-11 20:24:59',0),(8085,112,'2015-01-11','2015-01-11 20:24:59',0),(8086,112,'2015-01-11','2015-01-11 20:38:44',0),(8087,112,'2015-01-11','2015-01-11 20:38:52',0),(8088,112,'2015-01-11','2015-01-11 20:42:07',0),(8089,112,'2015-01-11','2015-01-11 20:42:57',0),(8090,112,'2015-01-11','2015-01-11 20:49:35',0),(8091,112,'2015-01-11','2015-01-11 23:47:21',0),(8092,112,'2015-01-12','2015-01-12 00:29:04',0),(8093,112,'2015-01-12','2015-01-12 02:43:52',0),(8094,1,'2015-01-12','2015-01-12 03:25:20',0),(8095,112,'2015-01-12','2015-01-12 04:41:34',0),(8096,112,'2015-01-12','2015-01-12 06:19:16',0),(8097,133,'2015-01-12','2015-01-12 06:30:16',0),(8098,133,'2015-01-12','2015-01-12 06:30:17',0),(8099,133,'2015-01-12','2015-01-12 06:30:17',0),(8100,1,'2015-01-12','2015-01-12 09:43:56',0),(8101,112,'2015-01-12','2015-01-12 10:41:36',0),(8102,112,'2015-01-12','2015-01-12 12:41:41',0),(8103,133,'2015-01-12','2015-01-12 13:49:55',0),(8104,133,'2015-01-12','2015-01-12 13:49:55',0),(8105,133,'2015-01-12','2015-01-12 15:26:39',0),(8106,1,'2015-01-12','2015-01-12 15:57:45',0),(8107,133,'2015-01-12','2015-01-12 17:23:18',0),(8108,133,'2015-01-12','2015-01-12 18:26:32',0),(8109,133,'2015-01-12','2015-01-12 18:26:33',0),(8110,133,'2015-01-12','2015-01-12 18:32:25',0),(8111,1,'2015-01-12','2015-01-12 22:01:49',0),(8112,112,'2015-01-12','2015-01-12 23:36:19',0),(8113,1,'2015-01-13','2015-01-13 04:08:59',0),(8114,112,'2015-01-13','2015-01-13 07:27:15',0),(8115,1,'2015-01-13','2015-01-13 10:54:56',0),(8116,133,'2015-01-13','2015-01-13 16:46:16',0),(8117,133,'2015-01-13','2015-01-13 16:46:17',0),(8118,133,'2015-01-13','2015-01-13 16:55:25',0),(8119,1,'2015-01-13','2015-01-13 17:07:31',0),(8120,1,'2015-01-14','2015-01-14 00:43:47',0),(8121,112,'2015-01-14','2015-01-14 02:21:51',0),(8122,133,'2015-01-14','2015-01-14 03:58:31',0),(8123,133,'2015-01-14','2015-01-14 03:58:32',0),(8124,112,'2015-01-14','2015-01-14 05:16:45',0),(8125,112,'2015-01-14','2015-01-14 05:16:45',0),(8126,112,'2015-01-14','2015-01-14 05:19:47',0),(8127,112,'2015-01-14','2015-01-14 06:01:05',0),(8128,1,'2015-01-14','2015-01-14 07:21:59',0),(8129,112,'2015-01-14','2015-01-14 11:03:24',0),(8130,112,'2015-01-14','2015-01-14 13:24:45',0),(8131,1,'2015-01-14','2015-01-14 14:02:10',0),(8132,133,'2015-01-14','2015-01-14 16:16:28',0),(8133,112,'2015-01-14','2015-01-14 16:16:29',0),(8134,112,'2015-01-14','2015-01-14 16:16:29',0),(8135,112,'2015-01-14','2015-01-14 16:20:16',0),(8136,112,'2015-01-14','2015-01-14 18:18:36',0),(8137,112,'2015-01-14','2015-01-14 18:18:44',0),(8138,112,'2015-01-14','2015-01-14 20:16:22',0),(8139,1,'2015-01-14','2015-01-14 20:55:09',0),(8140,133,'2015-01-14','2015-01-14 22:11:07',0),(8141,133,'2015-01-14','2015-01-14 22:11:08',0),(8142,112,'2015-01-14','2015-01-14 22:12:51',0),(8143,112,'2015-01-15','2015-01-15 00:27:04',0),(8144,112,'2015-01-15','2015-01-15 02:02:23',0),(8145,1,'2015-01-15','2015-01-15 04:05:35',0),(8146,112,'2015-01-15','2015-01-15 05:23:49',0),(8147,112,'2015-01-15','2015-01-15 05:23:49',0),(8148,133,'2015-01-15','2015-01-15 05:23:49',0),(8149,133,'2015-01-15','2015-01-15 08:37:47',0),(8150,133,'2015-01-15','2015-01-15 08:37:48',0),(8151,1,'2015-01-15','2015-01-15 10:09:32',0),(8152,133,'2015-01-15','2015-01-15 10:09:53',0),(8153,112,'2015-01-15','2015-01-15 10:27:33',0),(8154,133,'2015-01-15','2015-01-15 11:58:29',0),(8155,133,'2015-01-15','2015-01-15 11:58:29',0),(8156,133,'2015-01-15','2015-01-15 14:55:33',0),(8157,1,'2015-01-15','2015-01-15 16:19:34',0),(8158,112,'2015-01-15','2015-01-15 16:28:57',0),(8159,112,'2015-01-15','2015-01-15 16:28:58',0),(8160,112,'2015-01-15','2015-01-15 16:29:15',0),(8161,112,'2015-01-15','2015-01-15 16:29:16',0),(8162,112,'2015-01-15','2015-01-15 16:29:46',0),(8163,112,'2015-01-15','2015-01-15 16:29:46',0),(8164,112,'2015-01-15','2015-01-15 17:21:44',0),(8165,112,'2015-01-15','2015-01-15 17:21:47',0),(8166,133,'2015-01-15','2015-01-15 20:50:39',0),(8167,112,'2015-01-15','2015-01-15 20:50:39',0),(8168,112,'2015-01-15','2015-01-15 20:50:40',0),(8169,1,'2015-01-15','2015-01-15 22:43:09',0),(8170,112,'2015-01-15','2015-01-15 23:57:22',0),(8171,112,'2015-01-15','2015-01-15 23:57:24',0),(8172,112,'2015-01-15','2015-01-15 23:57:27',0),(8173,112,'2015-01-15','2015-01-15 23:57:29',0),(8174,1,'2015-01-16','2015-01-16 04:57:02',0),(8175,133,'2015-01-16','2015-01-16 04:58:22',0),(8176,133,'2015-01-16','2015-01-16 04:58:34',0),(8177,133,'2015-01-16','2015-01-16 04:58:36',0),(8178,133,'2015-01-16','2015-01-16 08:52:06',0),(8179,112,'2015-01-16','2015-01-16 10:37:38',0),(8180,112,'2015-01-16','2015-01-16 10:37:40',0),(8181,1,'2015-01-16','2015-01-16 12:55:04',0),(8182,112,'2015-01-16','2015-01-16 13:26:16',0),(8183,133,'2015-01-16','2015-01-16 14:55:07',0),(8184,133,'2015-01-16','2015-01-16 14:55:08',0),(8185,110,'2015-01-16','2015-01-16 17:22:46',0),(8186,110,'2015-01-16','2015-01-16 17:22:53',0),(8187,112,'2015-01-16','2015-01-16 17:22:54',1),(8188,112,'2015-01-16','2015-01-16 17:22:56',1),(8189,106,'2015-01-16','2015-01-16 17:22:56',1),(8190,1,'2015-01-16','2015-01-16 17:23:05',1),(8191,1,'2015-01-16','2015-01-16 17:23:09',1),(8192,112,'2015-01-16','2015-01-16 18:12:52',0),(8193,112,'2015-01-16','2015-01-16 18:12:53',0),(8194,1,'2015-01-16','2015-01-16 19:17:39',0),(8195,1,'2015-01-16','2015-01-16 19:35:23',1),(8196,133,'2015-01-16','2015-01-16 19:35:41',1),(8197,133,'2015-01-16','2015-01-16 19:35:42',1),(8198,133,'2015-01-16','2015-01-16 19:36:05',1),(8199,133,'2015-01-16','2015-01-16 19:36:25',1),(8200,133,'2015-01-16','2015-01-16 19:36:33',1),(8201,133,'2015-01-16','2015-01-16 19:36:39',1),(8202,110,'2015-01-16','2015-01-16 19:36:41',1),(8203,1,'2015-01-16','2015-01-16 19:36:41',0),(8204,1,'2015-01-17','2015-01-17 01:58:39',0),(8205,133,'2015-01-17','2015-01-17 02:26:10',0),(8206,1,'2015-01-17','2015-01-17 10:02:58',0),(8207,133,'2015-01-17','2015-01-17 16:04:36',0),(8208,112,'2015-01-17','2015-01-17 17:04:38',0),(8209,1,'2015-01-17','2015-01-17 18:04:45',0),(8210,112,'2015-01-17','2015-01-17 18:29:36',0),(8211,133,'2015-01-17','2015-01-17 19:02:16',0),(8212,133,'2015-01-17','2015-01-17 19:02:16',0),(8213,112,'2015-01-17','2015-01-17 19:09:36',0),(8214,112,'2015-01-17','2015-01-17 20:18:21',0),(8215,133,'2015-01-17','2015-01-17 21:42:14',0),(8216,112,'2015-01-17','2015-01-17 22:08:52',0),(8217,1,'2015-01-18','2015-01-18 00:13:49',0),(8218,133,'2015-01-18','2015-01-18 03:18:59',0),(8219,133,'2015-01-18','2015-01-18 04:58:17',0),(8220,133,'2015-01-18','2015-01-18 06:08:15',0),(8221,1,'2015-01-18','2015-01-18 07:09:34',0),(8222,112,'2015-01-18','2015-01-18 11:58:46',0),(8223,112,'2015-01-18','2015-01-18 11:58:53',0),(8224,133,'2015-01-18','2015-01-18 13:33:47',0),(8225,133,'2015-01-18','2015-01-18 13:33:48',0),(8226,133,'2015-01-18','2015-01-18 13:53:07',0),(8227,1,'2015-01-18','2015-01-18 14:04:00',0),(8228,112,'2015-01-18','2015-01-18 14:19:16',0),(8229,112,'2015-01-18','2015-01-18 14:19:20',0),(8230,112,'2015-01-18','2015-01-18 14:19:31',0),(8231,112,'2015-01-18','2015-01-18 14:19:35',0),(8232,1,'2015-01-18','2015-01-18 20:05:42',0),(8233,1,'2015-01-19','2015-01-19 03:02:27',0),(8234,1,'2015-01-19','2015-01-19 09:36:56',0),(8235,1,'2015-01-19','2015-01-19 09:36:56',0),(8236,133,'2015-01-19','2015-01-19 09:48:36',0),(8237,133,'2015-01-19','2015-01-19 09:48:36',0),(8238,1,'2015-01-19','2015-01-19 15:44:54',0),(8239,112,'2015-01-19','2015-01-19 16:14:27',0),(8240,112,'2015-01-19','2015-01-19 17:44:58',0),(8241,112,'2015-01-19','2015-01-19 18:44:49',0),(8242,112,'2015-01-19','2015-01-19 20:23:02',0),(8243,112,'2015-01-19','2015-01-19 20:54:37',0),(8244,133,'2015-01-19','2015-01-19 21:02:46',0),(8245,112,'2015-01-19','2015-01-19 23:09:37',0),(8246,1,'2015-01-20','2015-01-20 00:03:33',0),(8247,112,'2015-01-20','2015-01-20 01:32:51',0),(8248,112,'2015-01-20','2015-01-20 01:33:07',0),(8249,112,'2015-01-20','2015-01-20 01:50:19',0),(8250,112,'2015-01-20','2015-01-20 01:53:39',0),(8251,112,'2015-01-20','2015-01-20 02:38:33',0),(8252,1,'2015-01-20','2015-01-20 07:03:41',0),(8253,133,'2015-01-20','2015-01-20 07:56:43',0),(8254,112,'2015-01-20','2015-01-20 07:56:44',0),(8255,112,'2015-01-20','2015-01-20 07:56:45',0),(8256,133,'2015-01-20','2015-01-20 07:57:16',0),(8257,112,'2015-01-20','2015-01-20 08:29:22',0),(8258,112,'2015-01-20','2015-01-20 08:31:40',0),(8259,112,'2015-01-20','2015-01-20 10:31:19',0),(8260,133,'2015-01-20','2015-01-20 14:35:00',0),(8261,1,'2015-01-20','2015-01-20 15:07:30',0),(8262,1,'2015-01-20','2015-01-20 21:24:26',0),(8263,112,'2015-01-21','2015-01-21 00:10:50',0),(8264,112,'2015-01-21','2015-01-21 02:08:33',0),(8265,133,'2015-01-21','2015-01-21 02:08:36',0),(8266,112,'2015-01-21','2015-01-21 02:09:40',0),(8267,112,'2015-01-21','2015-01-21 03:05:52',0),(8268,133,'2015-01-21','2015-01-21 03:15:40',0),(8269,1,'2015-01-21','2015-01-21 04:57:39',0),(8270,112,'2015-01-21','2015-01-21 06:52:30',0),(8271,133,'2015-01-21','2015-01-21 09:53:08',0),(8272,133,'2015-01-21','2015-01-21 09:53:09',0),(8273,1,'2015-01-21','2015-01-21 11:14:40',0),(8274,1,'2015-01-21','2015-01-21 17:43:29',0),(8275,133,'2015-01-21','2015-01-21 20:07:10',0),(8276,112,'2015-01-21','2015-01-21 20:07:15',0),(8277,112,'2015-01-21','2015-01-21 20:07:17',0),(8278,112,'2015-01-21','2015-01-21 20:30:50',0),(8279,110,'2015-01-21','2015-01-21 21:22:08',0),(8280,110,'2015-01-21','2015-01-21 21:22:15',0),(8281,112,'2015-01-21','2015-01-21 21:22:16',1),(8282,112,'2015-01-21','2015-01-21 21:22:17',1),(8283,106,'2015-01-21','2015-01-21 21:22:17',1),(8284,1,'2015-01-21','2015-01-21 21:23:36',1),(8285,1,'2015-01-22','2015-01-22 00:10:17',0),(8286,112,'2015-01-22','2015-01-22 01:52:12',0),(8287,120,'2015-01-22','2015-01-22 03:39:45',0),(8288,133,'2015-01-22','2015-01-22 05:54:31',0),(8289,133,'2015-01-22','2015-01-22 05:54:31',0),(8290,112,'2015-01-22','2015-01-22 07:37:01',0),(8291,112,'2015-01-22','2015-01-22 08:13:23',0),(8292,1,'2015-01-22','2015-01-22 08:56:00',0),(8293,133,'2015-01-22','2015-01-22 13:02:21',0),(8294,133,'2015-01-22','2015-01-22 13:02:22',0),(8295,112,'2015-01-22','2015-01-22 13:33:08',0),(8296,1,'2015-01-22','2015-01-22 15:01:28',0),(8297,133,'2015-01-22','2015-01-22 19:43:56',0),(8298,133,'2015-01-22','2015-01-22 19:43:57',0),(8299,133,'2015-01-22','2015-01-22 19:59:26',0),(8300,112,'2015-01-22','2015-01-22 20:49:52',0),(8301,112,'2015-01-22','2015-01-22 20:49:52',0),(8302,120,'2015-01-22','2015-01-22 21:03:34',0),(8303,1,'2015-01-22','2015-01-22 21:38:36',0),(8304,112,'2015-01-23','2015-01-23 01:20:43',0),(8305,112,'2015-01-23','2015-01-23 02:14:25',0),(8306,133,'2015-01-23','2015-01-23 03:08:34',0),(8307,133,'2015-01-23','2015-01-23 03:08:34',0),(8308,1,'2015-01-23','2015-01-23 03:59:13',0),(8309,133,'2015-01-23','2015-01-23 05:50:54',0),(8310,133,'2015-01-23','2015-01-23 05:50:55',0),(8311,133,'2015-01-23','2015-01-23 07:41:30',0),(8312,133,'2015-01-23','2015-01-23 07:41:30',0),(8313,1,'2015-01-23','2015-01-23 10:19:36',0),(8314,133,'2015-01-23','2015-01-23 11:20:35',0),(8315,133,'2015-01-23','2015-01-23 14:26:04',0),(8316,112,'2015-01-23','2015-01-23 14:48:10',0),(8317,112,'2015-01-23','2015-01-23 14:48:10',0),(8318,1,'2015-01-23','2015-01-23 16:42:46',0),(8319,112,'2015-01-23','2015-01-23 16:42:50',0),(8320,112,'2015-01-23','2015-01-23 16:42:52',0),(8321,112,'2015-01-23','2015-01-23 16:42:55',0),(8322,112,'2015-01-23','2015-01-23 16:42:57',0),(8323,133,'2015-01-23','2015-01-23 20:18:50',0),(8324,112,'2015-01-23','2015-01-23 20:18:58',0),(8325,112,'2015-01-23','2015-01-23 20:19:03',0),(8326,112,'2015-01-23','2015-01-23 20:19:05',0),(8327,112,'2015-01-23','2015-01-23 20:19:08',0),(8328,112,'2015-01-23','2015-01-23 21:01:02',0),(8329,1,'2015-01-24','2015-01-24 00:03:07',0),(8330,112,'2015-01-24','2015-01-24 01:00:05',0),(8331,112,'2015-01-24','2015-01-24 01:10:57',0),(8332,112,'2015-01-24','2015-01-24 02:20:52',0),(8333,133,'2015-01-24','2015-01-24 04:16:26',0),(8334,112,'2015-01-24','2015-01-24 04:16:29',0),(8335,112,'2015-01-24','2015-01-24 04:16:31',0),(8336,112,'2015-01-24','2015-01-24 05:12:36',0),(8337,1,'2015-01-24','2015-01-24 07:18:17',0),(8338,133,'2015-01-24','2015-01-24 09:36:21',0),(8339,112,'2015-01-24','2015-01-24 11:01:34',0),(8340,112,'2015-01-24','2015-01-24 12:20:02',0),(8341,112,'2015-01-24','2015-01-24 12:20:25',0),(8342,1,'2015-01-24','2015-01-24 13:33:45',0),(8343,112,'2015-01-24','2015-01-24 16:27:12',0),(8344,112,'2015-01-24','2015-01-24 16:27:23',0),(8345,1,'2015-01-24','2015-01-24 21:56:31',0),(8346,133,'2015-01-25','2015-01-25 00:13:06',0),(8347,133,'2015-01-25','2015-01-25 00:13:07',0),(8348,112,'2015-01-25','2015-01-25 02:03:52',0),(8349,112,'2015-01-25','2015-01-25 02:38:53',0),(8350,112,'2015-01-25','2015-01-25 02:52:36',0),(8351,112,'2015-01-25','2015-01-25 03:53:05',0),(8352,112,'2015-01-25','2015-01-25 04:14:35',0),(8353,1,'2015-01-25','2015-01-25 04:49:25',0),(8354,112,'2015-01-25','2015-01-25 06:05:23',0),(8355,112,'2015-01-25','2015-01-25 07:49:36',0),(8356,112,'2015-01-25','2015-01-25 12:48:33',0),(8357,1,'2015-01-25','2015-01-25 14:30:58',0),(8358,112,'2015-01-25','2015-01-25 16:03:59',0),(8359,133,'2015-01-25','2015-01-25 16:22:05',0),(8360,112,'2015-01-25','2015-01-25 17:00:38',0),(8361,112,'2015-01-25','2015-01-25 23:18:16',0),(8362,112,'2015-01-25','2015-01-25 23:33:16',0),(8363,1,'2015-01-26','2015-01-26 03:28:23',0),(8364,133,'2015-01-26','2015-01-26 08:49:38',0),(8365,133,'2015-01-26','2015-01-26 08:50:25',0),(8366,112,'2015-01-26','2015-01-26 09:06:51',0),(8367,1,'2015-01-26','2015-01-26 10:02:30',0),(8368,133,'2015-01-26','2015-01-26 10:03:11',0),(8369,112,'2015-01-26','2015-01-26 11:21:51',0),(8370,112,'2015-01-26','2015-01-26 11:21:51',0),(8371,112,'2015-01-26','2015-01-26 13:01:13',0),(8372,1,'2015-01-26','2015-01-26 16:20:48',0),(8373,133,'2015-01-26','2015-01-26 18:15:03',0),(8374,112,'2015-01-26','2015-01-26 20:02:21',0),(8375,112,'2015-01-26','2015-01-26 20:03:05',0),(8376,112,'2015-01-26','2015-01-26 20:07:10',0),(8377,112,'2015-01-26','2015-01-26 20:19:29',0),(8378,1,'2015-01-26','2015-01-26 22:28:02',0),(8379,112,'2015-01-27','2015-01-27 00:44:42',0),(8380,1,'2015-01-27','2015-01-27 04:37:16',0),(8381,133,'2015-01-27','2015-01-27 07:01:29',0),(8382,133,'2015-01-27','2015-01-27 07:01:31',0),(8383,133,'2015-01-27','2015-01-27 07:01:31',0),(8384,1,'2015-01-27','2015-01-27 11:02:54',0),(8385,1,'2015-01-27','2015-01-27 17:31:13',0),(8386,133,'2015-01-27','2015-01-27 18:47:34',0),(8387,133,'2015-01-27','2015-01-27 18:47:34',0),(8388,133,'2015-01-27','2015-01-27 18:47:34',0),(8389,1,'2015-01-28','2015-01-28 00:18:55',0),(8390,133,'2015-01-28','2015-01-28 04:16:11',0),(8391,112,'2015-01-28','2015-01-28 04:51:23',0),(8392,112,'2015-01-28','2015-01-28 04:51:23',0),(8393,1,'2015-01-28','2015-01-28 09:25:31',0),(8394,112,'2015-01-28','2015-01-28 13:06:13',0),(8395,133,'2015-01-28','2015-01-28 13:06:13',0),(8396,1,'2015-01-28','2015-01-28 15:32:28',0),(8397,112,'2015-01-28','2015-01-28 15:32:40',0),(8398,112,'2015-01-28','2015-01-28 15:32:43',0),(8399,112,'2015-01-28','2015-01-28 15:32:47',0),(8400,112,'2015-01-28','2015-01-28 15:32:50',0),(8401,112,'2015-01-28','2015-01-28 15:33:52',0),(8402,112,'2015-01-28','2015-01-28 15:33:55',0),(8403,112,'2015-01-28','2015-01-28 15:33:58',0),(8404,112,'2015-01-28','2015-01-28 15:34:02',0),(8405,112,'2015-01-28','2015-01-28 21:02:59',0),(8406,1,'2015-01-28','2015-01-28 22:43:06',0),(8407,1,'2015-01-29','2015-01-29 05:02:04',0),(8408,1,'2015-01-29','2015-01-29 11:09:36',0),(8409,112,'2015-01-29','2015-01-29 14:32:25',0),(8410,112,'2015-01-29','2015-01-29 14:35:56',0),(8411,133,'2015-01-29','2015-01-29 14:57:06',0),(8412,133,'2015-01-29','2015-01-29 14:57:07',0),(8413,133,'2015-01-29','2015-01-29 17:00:04',0),(8414,1,'2015-01-29','2015-01-29 18:05:41',0),(8415,112,'2015-01-29','2015-01-29 18:05:47',0),(8416,112,'2015-01-29','2015-01-29 18:05:56',0),(8417,112,'2015-01-29','2015-01-29 18:06:05',0),(8418,112,'2015-01-29','2015-01-29 18:06:09',0),(8419,112,'2015-01-29','2015-01-29 18:06:20',0),(8420,112,'2015-01-29','2015-01-29 18:06:21',0),(8421,112,'2015-01-29','2015-01-29 18:06:24',0),(8422,133,'2015-01-29','2015-01-29 18:36:07',0),(8423,1,'2015-01-30','2015-01-30 00:44:59',0),(8424,112,'2015-01-30','2015-01-30 01:31:57',0),(8425,112,'2015-01-30','2015-01-30 03:00:57',0),(8426,112,'2015-01-30','2015-01-30 06:08:10',0),(8427,112,'2015-01-30','2015-01-30 06:08:22',0),(8428,133,'2015-01-30','2015-01-30 06:08:35',0),(8429,1,'2015-01-30','2015-01-30 08:05:13',0),(8430,112,'2015-01-30','2015-01-30 08:07:39',0),(8431,133,'2015-01-30','2015-01-30 11:19:33',0),(8432,133,'2015-01-30','2015-01-30 11:19:33',0),(8433,1,'2015-01-30','2015-01-30 14:24:08',0),(8434,133,'2015-01-30','2015-01-30 14:32:25',0),(8435,133,'2015-01-30','2015-01-30 14:32:26',0),(8436,112,'2015-01-30','2015-01-30 19:13:48',0),(8437,112,'2015-01-30','2015-01-30 19:13:48',0),(8438,133,'2015-01-30','2015-01-30 19:24:53',0),(8439,1,'2015-01-30','2015-01-30 20:44:04',0),(8440,112,'2015-01-31','2015-01-31 00:11:32',0),(8441,133,'2015-01-31','2015-01-31 00:11:45',0),(8442,112,'2015-01-31','2015-01-31 00:11:52',0),(8443,112,'2015-01-31','2015-01-31 00:12:05',0),(8444,112,'2015-01-31','2015-01-31 00:12:23',0),(8445,112,'2015-01-31','2015-01-31 00:14:28',0),(8446,1,'2015-01-31','2015-01-31 03:09:28',0),(8447,1,'2015-01-31','2015-01-31 10:09:16',0),(8448,112,'2015-01-31','2015-01-31 15:02:38',0),(8449,1,'2015-01-31','2015-01-31 18:31:39',0),(8450,120,'2015-01-31','2015-01-31 20:16:28',0),(8451,133,'2015-01-31','2015-01-31 20:22:43',0),(8452,133,'2015-01-31','2015-01-31 20:22:45',0),(8453,1,'2015-02-01','2015-02-01 00:50:26',0),(8454,133,'2015-02-01','2015-02-01 05:47:32',0),(8455,112,'2015-02-01','2015-02-01 05:47:32',0),(8456,112,'2015-02-01','2015-02-01 05:47:32',0),(8457,1,'2015-02-01','2015-02-01 08:24:31',0),(8458,112,'2015-02-01','2015-02-01 10:39:15',0),(8459,112,'2015-02-01','2015-02-01 14:40:51',0),(8460,1,'2015-02-01','2015-02-01 15:01:34',0),(8461,133,'2015-02-01','2015-02-01 17:10:57',0),(8462,112,'2015-02-01','2015-02-01 20:24:16',0),(8463,133,'2015-02-01','2015-02-01 20:36:27',0),(8464,1,'2015-02-01','2015-02-01 21:23:47',0),(8465,1,'2015-02-02','2015-02-02 03:27:45',0),(8466,112,'2015-02-02','2015-02-02 04:28:13',0),(8467,112,'2015-02-02','2015-02-02 05:01:08',0),(8468,133,'2015-02-02','2015-02-02 05:39:44',0),(8469,112,'2015-02-02','2015-02-02 06:34:15',0),(8470,112,'2015-02-02','2015-02-02 09:45:13',0),(8471,1,'2015-02-02','2015-02-02 10:01:36',0),(8472,1,'2015-02-02','2015-02-02 16:15:58',0),(8473,133,'2015-02-02','2015-02-02 17:09:08',0),(8474,133,'2015-02-02','2015-02-02 17:09:11',0),(8475,133,'2015-02-02','2015-02-02 17:09:11',0),(8476,112,'2015-02-02','2015-02-02 20:39:25',0),(8477,112,'2015-02-02','2015-02-02 20:39:26',0),(8478,112,'2015-02-02','2015-02-02 20:59:19',0),(8479,1,'2015-02-03','2015-02-03 00:19:15',0),(8480,112,'2015-02-03','2015-02-03 01:44:25',0),(8481,1,'2015-02-03','2015-02-03 06:24:15',0),(8482,112,'2015-02-03','2015-02-03 10:05:51',0),(8483,133,'2015-02-03','2015-02-03 10:05:51',0),(8484,112,'2015-02-03','2015-02-03 10:10:31',0),(8485,112,'2015-02-03','2015-02-03 10:18:36',0),(8486,1,'2015-02-03','2015-02-03 13:09:15',0),(8487,133,'2015-02-03','2015-02-03 14:07:00',0),(8488,133,'2015-02-03','2015-02-03 14:07:01',0),(8489,133,'2015-02-03','2015-02-03 14:07:01',0),(8490,133,'2015-02-03','2015-02-03 15:15:32',0),(8491,133,'2015-02-03','2015-02-03 16:06:01',0),(8492,133,'2015-02-03','2015-02-03 16:06:01',0),(8493,133,'2015-02-03','2015-02-03 16:06:01',0),(8494,133,'2015-02-03','2015-02-03 16:06:01',0),(8495,133,'2015-02-03','2015-02-03 19:26:03',0),(8496,1,'2015-02-03','2015-02-03 19:51:41',0),(8497,1,'2015-02-04','2015-02-04 02:54:15',0),(8498,1,'2015-02-04','2015-02-04 09:44:18',0),(8499,133,'2015-02-04','2015-02-04 15:11:41',0),(8500,112,'2015-02-04','2015-02-04 15:11:41',0),(8501,112,'2015-02-04','2015-02-04 15:11:42',0),(8502,112,'2015-02-04','2015-02-04 15:11:42',0),(8503,112,'2015-02-04','2015-02-04 15:11:42',0),(8504,1,'2015-02-04','2015-02-04 15:45:50',0),(8505,133,'2015-02-04','2015-02-04 16:18:20',0),(8506,1,'2015-02-04','2015-02-04 21:56:56',0),(8507,112,'2015-02-04','2015-02-04 23:10:38',0),(8508,112,'2015-02-04','2015-02-04 23:10:42',0),(8509,133,'2015-02-04','2015-02-04 23:10:47',0),(8510,112,'2015-02-04','2015-02-04 23:10:52',0),(8511,112,'2015-02-04','2015-02-04 23:10:56',0),(8512,112,'2015-02-05','2015-02-05 00:31:42',0),(8513,112,'2015-02-05','2015-02-05 00:31:43',0),(8514,112,'2015-02-05','2015-02-05 01:11:18',0),(8515,1,'2015-02-05','2015-02-05 04:09:16',0),(8516,1,'2015-02-05','2015-02-05 10:09:17',0),(8517,133,'2015-02-05','2015-02-05 10:36:50',0),(8518,133,'2015-02-05','2015-02-05 10:36:51',0),(8519,133,'2015-02-05','2015-02-05 11:52:50',0),(8520,1,'2015-02-05','2015-02-05 16:34:20',0),(8521,133,'2015-02-05','2015-02-05 18:59:40',0),(8522,133,'2015-02-05','2015-02-05 18:59:43',0),(8523,1,'2015-02-05','2015-02-05 22:41:54',0),(8524,1,'2015-02-06','2015-02-06 04:50:36',0),(8525,133,'2015-02-06','2015-02-06 07:54:16',0),(8526,133,'2015-02-06','2015-02-06 07:54:17',0),(8527,112,'2015-02-06','2015-02-06 09:29:17',0),(8528,112,'2015-02-06','2015-02-06 09:29:19',0),(8529,112,'2015-02-06','2015-02-06 09:29:22',0),(8530,112,'2015-02-06','2015-02-06 09:29:24',0),(8531,1,'2015-02-06','2015-02-06 11:04:27',0),(8532,1,'2015-02-06','2015-02-06 17:10:48',0),(8533,112,'2015-02-06','2015-02-06 18:26:46',0),(8534,133,'2015-02-06','2015-02-06 22:40:56',0),(8535,133,'2015-02-06','2015-02-06 22:40:57',0),(8536,1,'2015-02-06','2015-02-06 23:29:28',0),(8537,133,'2015-02-07','2015-02-07 05:16:43',0),(8538,1,'2015-02-07','2015-02-07 06:26:18',0),(8539,1,'2015-02-07','2015-02-07 12:46:19',0),(8540,133,'2015-02-07','2015-02-07 14:03:49',0),(8541,1,'2015-02-07','2015-02-07 20:27:03',0),(8542,1,'2015-02-08','2015-02-08 03:16:16',0),(8543,133,'2015-02-08','2015-02-08 05:43:53',0),(8544,133,'2015-02-08','2015-02-08 05:44:33',0),(8545,133,'2015-02-08','2015-02-08 05:44:33',0),(8546,1,'2015-02-08','2015-02-08 09:44:26',0),(8547,133,'2015-02-08','2015-02-08 13:17:05',0),(8548,133,'2015-02-08','2015-02-08 13:17:06',0),(8549,1,'2015-02-08','2015-02-08 16:59:34',0),(8550,112,'2015-02-08','2015-02-08 22:38:01',0),(8551,1,'2015-02-08','2015-02-08 23:24:40',0),(8552,112,'2015-02-09','2015-02-09 05:01:09',0),(8553,1,'2015-02-09','2015-02-09 05:25:44',0),(8554,133,'2015-02-09','2015-02-09 05:25:55',0),(8555,133,'2015-02-09','2015-02-09 05:25:56',0),(8556,1,'2015-02-09','2015-02-09 11:59:16',0),(8557,112,'2015-02-09','2015-02-09 13:57:32',0),(8558,1,'2015-02-09','2015-02-09 18:16:38',0),(8559,112,'2015-02-09','2015-02-09 19:08:52',0),(8560,112,'2015-02-09','2015-02-09 19:08:53',0),(8561,112,'2015-02-09','2015-02-09 19:08:54',0),(8562,133,'2015-02-09','2015-02-09 21:24:18',0),(8563,112,'2015-02-09','2015-02-09 21:24:28',0),(8564,112,'2015-02-09','2015-02-09 21:24:48',0),(8565,133,'2015-02-09','2015-02-09 21:25:18',0),(8566,112,'2015-02-09','2015-02-09 21:25:27',0),(8567,112,'2015-02-09','2015-02-09 21:25:37',0),(8568,112,'2015-02-09','2015-02-09 21:25:41',0),(8569,112,'2015-02-09','2015-02-09 23:41:11',0),(8570,112,'2015-02-09','2015-02-09 23:41:27',0),(8571,112,'2015-02-09','2015-02-09 23:42:30',0),(8572,112,'2015-02-10','2015-02-10 00:07:16',0),(8573,1,'2015-02-10','2015-02-10 00:40:48',0),(8574,112,'2015-02-10','2015-02-10 03:46:44',0),(8575,1,'2015-02-10','2015-02-10 06:44:16',0),(8576,133,'2015-02-10','2015-02-10 08:04:19',0),(8577,133,'2015-02-10','2015-02-10 08:04:20',0),(8578,133,'2015-02-10','2015-02-10 09:43:41',0),(8579,1,'2015-02-10','2015-02-10 13:29:15',0),(8580,1,'2015-02-10','2015-02-10 19:30:56',0),(8581,112,'2015-02-10','2015-02-10 21:00:03',0),(8582,112,'2015-02-10','2015-02-10 21:00:05',0),(8583,1,'2015-02-11','2015-02-11 02:09:49',0),(8584,112,'2015-02-11','2015-02-11 02:45:37',0),(8585,133,'2015-02-11','2015-02-11 04:44:13',0),(8586,133,'2015-02-11','2015-02-11 04:44:13',0),(8587,112,'2015-02-11','2015-02-11 06:56:01',0),(8588,112,'2015-02-11','2015-02-11 06:58:55',0),(8589,1,'2015-02-11','2015-02-11 08:39:15',0),(8590,112,'2015-02-11','2015-02-11 09:40:02',0),(8591,112,'2015-02-11','2015-02-11 09:53:48',0),(8592,1,'2015-02-11','2015-02-11 15:24:58',0),(8593,1,'2015-02-12','2015-02-12 00:12:32',0),(8594,133,'2015-02-12','2015-02-12 05:12:40',0),(8595,133,'2015-02-12','2015-02-12 05:12:42',0),(8596,1,'2015-02-12','2015-02-12 06:51:56',0),(8597,133,'2015-02-12','2015-02-12 07:19:50',0),(8598,1,'2015-02-12','2015-02-12 13:01:20',0),(8599,1,'2015-02-12','2015-02-12 19:23:09',0),(8600,1,'2015-02-13','2015-02-13 03:19:01',0),(8601,1,'2015-02-13','2015-02-13 09:36:08',0),(8602,1,'2015-02-13','2015-02-13 16:06:47',0),(8603,1,'2015-02-13','2015-02-13 23:08:52',0),(8604,1,'2015-02-14','2015-02-14 05:22:04',0),(8605,112,'2015-02-14','2015-02-14 05:25:19',0),(8606,133,'2015-02-14','2015-02-14 09:35:36',0),(8607,112,'2015-02-14','2015-02-14 09:35:49',0),(8608,112,'2015-02-14','2015-02-14 09:36:04',0),(8609,133,'2015-02-14','2015-02-14 09:36:27',0),(8610,112,'2015-02-14','2015-02-14 09:36:35',0),(8611,112,'2015-02-14','2015-02-14 09:36:47',0),(8612,112,'2015-02-14','2015-02-14 09:36:59',0),(8613,112,'2015-02-14','2015-02-14 09:37:04',0),(8614,112,'2015-02-14','2015-02-14 09:37:10',0),(8615,1,'2015-02-14','2015-02-14 11:30:38',0),(8616,1,'2015-02-14','2015-02-14 18:14:15',0),(8617,112,'2015-02-14','2015-02-14 19:19:12',0),(8618,133,'2015-02-14','2015-02-14 19:43:36',0),(8619,1,'2015-02-15','2015-02-15 01:04:14',0),(8620,1,'2015-02-15','2015-02-15 07:44:49',0),(8621,1,'2015-02-15','2015-02-15 07:44:49',0),(8622,133,'2015-02-15','2015-02-15 13:35:40',0),(8623,133,'2015-02-15','2015-02-15 13:35:41',0),(8624,1,'2015-02-15','2015-02-15 14:42:32',0),(8625,112,'2015-02-15','2015-02-15 19:48:23',0),(8626,112,'2015-02-15','2015-02-15 19:48:55',0),(8627,133,'2015-02-15','2015-02-15 19:49:28',0),(8628,112,'2015-02-15','2015-02-15 19:54:46',0),(8629,112,'2015-02-15','2015-02-15 20:08:06',0),(8630,1,'2015-02-15','2015-02-15 20:46:17',0),(8631,1,'2015-02-16','2015-02-16 03:22:10',0),(8632,133,'2015-02-16','2015-02-16 08:07:05',0),(8633,133,'2015-02-16','2015-02-16 08:07:06',0),(8634,1,'2015-02-16','2015-02-16 10:29:49',0),(8635,112,'2015-02-16','2015-02-16 10:37:50',0),(8636,120,'2015-02-16','2015-02-16 10:40:44',0),(8637,112,'2015-02-16','2015-02-16 10:43:39',0),(8638,112,'2015-02-16','2015-02-16 10:46:35',0),(8639,120,'2015-02-16','2015-02-16 10:49:33',0),(8640,133,'2015-02-16','2015-02-16 11:52:19',0),(8641,112,'2015-02-16','2015-02-16 12:28:01',0),(8642,112,'2015-02-16','2015-02-16 13:11:34',0),(8643,112,'2015-02-16','2015-02-16 13:11:54',0),(8644,112,'2015-02-16','2015-02-16 13:12:12',0),(8645,133,'2015-02-16','2015-02-16 14:12:21',0),(8646,133,'2015-02-16','2015-02-16 14:12:22',0),(8647,1,'2015-02-16','2015-02-16 16:58:41',0),(8648,112,'2015-02-16','2015-02-16 21:09:04',0),(8649,112,'2015-02-16','2015-02-16 21:11:31',0),(8650,1,'2015-02-16','2015-02-16 23:32:10',0),(8651,112,'2015-02-17','2015-02-17 02:11:00',0),(8652,1,'2015-02-17','2015-02-17 05:36:43',0),(8653,133,'2015-02-17','2015-02-17 08:39:21',0),(8654,1,'2015-02-17','2015-02-17 11:44:15',0),(8655,133,'2015-02-17','2015-02-17 16:10:18',0),(8656,133,'2015-02-17','2015-02-17 16:10:18',0),(8657,1,'2015-02-17','2015-02-17 20:22:22',0),(8658,111,'2015-02-17','2015-02-17 23:48:08',0),(8659,133,'2015-02-17','2015-02-17 23:54:27',0),(8660,1,'2015-02-18','2015-02-18 02:26:35',0),(8661,1,'2015-02-18','2015-02-18 08:41:50',0),(8662,133,'2015-02-18','2015-02-18 13:32:13',0),(8663,133,'2015-02-18','2015-02-18 13:32:14',0),(8664,1,'2015-02-18','2015-02-18 14:49:14',0),(8665,133,'2015-02-18','2015-02-18 17:50:33',0),(8666,1,'2015-02-18','2015-02-18 21:02:31',0),(8667,133,'2015-02-19','2015-02-19 01:05:45',0),(8668,1,'2015-02-19','2015-02-19 04:08:55',0),(8669,112,'2015-02-19','2015-02-19 06:37:40',0),(8670,112,'2015-02-19','2015-02-19 06:37:59',0),(8671,133,'2015-02-19','2015-02-19 10:23:37',0),(8672,133,'2015-02-19','2015-02-19 10:23:38',0),(8673,1,'2015-02-19','2015-02-19 10:34:59',0),(8674,112,'2015-02-19','2015-02-19 14:16:08',0),(8675,112,'2015-02-19','2015-02-19 14:16:10',0),(8676,1,'2015-02-19','2015-02-19 16:54:27',0),(8677,1,'2015-02-20','2015-02-20 00:09:28',0),(8678,112,'2015-02-20','2015-02-20 03:29:31',0),(8679,1,'2015-02-20','2015-02-20 06:11:34',0),(8680,112,'2015-02-20','2015-02-20 07:20:36',0),(8681,133,'2015-02-20','2015-02-20 09:08:31',0),(8682,133,'2015-02-20','2015-02-20 09:08:32',0),(8683,112,'2015-02-20','2015-02-20 10:49:05',0),(8684,112,'2015-02-20','2015-02-20 10:49:07',0),(8685,112,'2015-02-20','2015-02-20 10:49:10',0),(8686,112,'2015-02-20','2015-02-20 10:49:12',0),(8687,1,'2015-02-20','2015-02-20 12:53:35',0),(8688,112,'2015-02-20','2015-02-20 15:46:00',0),(8689,112,'2015-02-20','2015-02-20 15:46:03',0),(8690,133,'2015-02-20','2015-02-20 15:57:37',0),(8691,133,'2015-02-20','2015-02-20 15:57:37',0),(8692,133,'2015-02-20','2015-02-20 16:43:52',0),(8693,1,'2015-02-20','2015-02-20 19:20:06',0),(8694,112,'2015-02-20','2015-02-20 19:20:12',0),(8695,112,'2015-02-20','2015-02-20 19:20:13',0),(8696,112,'2015-02-20','2015-02-20 19:20:13',0),(8697,112,'2015-02-20','2015-02-20 19:20:14',0),(8698,112,'2015-02-20','2015-02-20 19:36:30',0),(8699,112,'2015-02-20','2015-02-20 19:37:32',0),(8700,133,'2015-02-20','2015-02-20 22:08:49',0),(8701,1,'2015-02-21','2015-02-21 01:28:23',0),(8702,1,'2015-02-21','2015-02-21 07:57:31',0),(8703,133,'2015-02-21','2015-02-21 08:57:58',0),(8704,133,'2015-02-21','2015-02-21 10:24:27',0),(8705,1,'2015-02-21','2015-02-21 14:28:57',0),(8706,1,'2015-02-21','2015-02-21 21:26:27',0),(8707,112,'2015-02-22','2015-02-22 02:38:57',0),(8708,112,'2015-02-22','2015-02-22 02:39:00',0),(8709,133,'2015-02-22','2015-02-22 02:39:05',0),(8710,112,'2015-02-22','2015-02-22 02:39:10',0),(8711,112,'2015-02-22','2015-02-22 02:39:14',0),(8712,112,'2015-02-22','2015-02-22 03:04:51',0),(8713,112,'2015-02-22','2015-02-22 03:04:57',0),(8714,112,'2015-02-22','2015-02-22 03:05:04',0),(8715,112,'2015-02-22','2015-02-22 03:05:10',0),(8716,1,'2015-02-22','2015-02-22 03:34:29',0),(8717,1,'2015-02-22','2015-02-22 09:39:55',0),(8718,133,'2015-02-22','2015-02-22 13:30:16',0),(8719,133,'2015-02-22','2015-02-22 13:30:17',0),(8720,1,'2015-02-22','2015-02-22 15:40:25',0),(8721,133,'2015-02-22','2015-02-22 16:27:00',0),(8722,1,'2015-02-22','2015-02-22 22:49:27',0),(8723,112,'2015-02-23','2015-02-23 02:37:23',0),(8724,112,'2015-02-23','2015-02-23 02:39:48',0),(8725,133,'2015-02-23','2015-02-23 02:40:20',0),(8726,112,'2015-02-23','2015-02-23 02:56:09',0),(8727,112,'2015-02-23','2015-02-23 03:10:34',0),(8728,1,'2015-02-23','2015-02-23 05:18:41',0),(8729,133,'2015-02-23','2015-02-23 06:51:22',0),(8730,1,'2015-02-23','2015-02-23 11:18:42',0),(8731,133,'2015-02-23','2015-02-23 11:25:12',0),(8732,133,'2015-02-23','2015-02-23 11:25:12',0),(8733,1,'2015-02-23','2015-02-23 18:40:14',0),(8734,133,'2015-02-23','2015-02-23 22:14:56',0),(8735,112,'2015-02-24','2015-02-24 00:10:32',0),(8736,112,'2015-02-24','2015-02-24 01:06:18',0),(8737,1,'2015-02-24','2015-02-24 01:45:42',0),(8738,120,'2015-02-24','2015-02-24 05:40:05',0),(8739,112,'2015-02-24','2015-02-24 06:26:50',0),(8740,1,'2015-02-24','2015-02-24 09:17:17',0),(8741,133,'2015-02-24','2015-02-24 14:03:14',0),(8742,133,'2015-02-24','2015-02-24 14:03:15',0),(8743,133,'2015-02-24','2015-02-24 14:53:28',0),(8744,1,'2015-02-24','2015-02-24 15:35:13',0),(8745,133,'2015-02-24','2015-02-24 16:14:15',0),(8746,1,'2015-02-24','2015-02-24 21:38:46',0),(8747,1,'2015-02-25','2015-02-25 04:29:48',0),(8748,133,'2015-02-25','2015-02-25 08:24:51',0),(8749,133,'2015-02-25','2015-02-25 08:24:52',0),(8750,1,'2015-02-25','2015-02-25 10:31:05',0),(8751,133,'2015-02-25','2015-02-25 15:47:02',0),(8752,1,'2015-02-25','2015-02-25 18:06:35',0),(8753,112,'2015-02-25','2015-02-25 18:42:25',0),(8754,112,'2015-02-25','2015-02-25 19:22:19',0),(8755,1,'2015-02-26','2015-02-26 00:38:54',0),(8756,133,'2015-02-26','2015-02-26 02:26:36',0),(8757,1,'2015-02-26','2015-02-26 07:23:04',0),(8758,112,'2015-02-26','2015-02-26 11:30:30',0),(8759,133,'2015-02-26','2015-02-26 12:05:40',0),(8760,1,'2015-02-26','2015-02-26 13:24:30',0),(8761,1,'2015-02-26','2015-02-26 13:24:36',0),(8762,112,'2015-02-26','2015-02-26 14:06:42',0),(8763,112,'2015-02-26','2015-02-26 14:06:45',0),(8764,133,'2015-02-26','2015-02-26 16:01:40',0),(8765,112,'2015-02-26','2015-02-26 18:44:25',0),(8766,112,'2015-02-26','2015-02-26 18:51:40',0),(8767,112,'2015-02-26','2015-02-26 18:54:00',0),(8768,1,'2015-02-26','2015-02-26 19:38:33',0),(8769,133,'2015-02-26','2015-02-26 19:48:10',0),(8770,112,'2015-02-26','2015-02-26 19:48:23',0),(8771,112,'2015-02-26','2015-02-26 19:48:29',0),(8772,1,'2015-02-27','2015-02-27 03:26:32',0),(8773,133,'2015-02-27','2015-02-27 08:21:08',0),(8774,133,'2015-02-27','2015-02-27 08:21:09',0),(8775,1,'2015-02-27','2015-02-27 09:33:34',0),(8776,1,'2015-02-27','2015-02-27 16:59:29',0),(8777,112,'2015-02-27','2015-02-27 17:45:15',0),(8778,112,'2015-02-27','2015-02-27 20:36:47',0),(8779,120,'2015-02-27','2015-02-27 20:54:30',0),(8780,133,'2015-02-27','2015-02-27 21:38:53',0),(8781,133,'2015-02-27','2015-02-27 21:38:53',0),(8782,1,'2015-02-27','2015-02-27 23:35:36',0),(8783,133,'2015-02-27','2015-02-27 23:35:42',0),(8784,1,'2015-02-28','2015-02-28 05:46:18',0),(8785,133,'2015-02-28','2015-02-28 10:24:08',0),(8786,133,'2015-02-28','2015-02-28 10:24:10',0),(8787,110,'2015-02-28','2015-02-28 10:41:58',0),(8788,110,'2015-02-28','2015-02-28 10:42:03',0),(8789,112,'2015-02-28','2015-02-28 10:42:04',1),(8790,112,'2015-02-28','2015-02-28 10:42:05',1),(8791,106,'2015-02-28','2015-02-28 10:42:06',1),(8792,112,'2015-02-28','2015-02-28 10:42:17',1),(8793,2,'2015-02-28','2015-02-28 10:42:46',1),(8794,16,'2015-02-28','2015-02-28 10:43:01',1),(8795,19,'2015-02-28','2015-02-28 10:43:12',1),(8796,19,'2015-02-28','2015-02-28 10:43:50',1),(8797,19,'2015-02-28','2015-02-28 10:44:42',1),(8798,16,'2015-02-28','2015-02-28 10:44:43',1),(8799,16,'2015-02-28','2015-02-28 10:45:12',1),(8800,16,'2015-02-28','2015-02-28 10:45:19',1),(8801,1,'2015-02-28','2015-02-28 14:21:34',0),(8802,1,'2015-02-28','2015-02-28 14:21:36',0),(8803,110,'2015-02-28','2015-02-28 14:27:30',0),(8804,110,'2015-02-28','2015-02-28 14:27:39',0),(8805,110,'2015-02-28','2015-02-28 14:28:04',0),(8806,110,'2015-02-28','2015-02-28 14:28:24',0),(8807,110,'2015-02-28','2015-02-28 14:28:54',0),(8808,110,'2015-02-28','2015-02-28 14:30:03',0),(8809,110,'2015-02-28','2015-02-28 14:36:42',0),(8810,110,'2015-02-28','2015-02-28 14:36:56',0),(8811,1,'2015-02-28','2015-02-28 14:44:43',0),(8812,110,'2015-02-28','2015-02-28 14:45:02',0),(8813,112,'2015-02-28','2015-02-28 14:45:03',6),(8814,106,'2015-02-28','2015-02-28 14:45:05',6),(8815,112,'2015-02-28','2015-02-28 14:45:15',6),(8816,2,'2015-02-28','2015-02-28 14:45:21',6),(8817,17,'2015-02-28','2015-02-28 14:45:31',6),(8818,17,'2015-02-28','2015-02-28 14:45:33',6),(8819,17,'2015-02-28','2015-02-28 14:45:41',6),(8820,17,'2015-02-28','2015-02-28 14:47:59',6),(8821,17,'2015-02-28','2015-02-28 14:48:08',6),(8822,2,'2015-02-28','2015-02-28 14:48:14',6),(8823,110,'2015-02-28','2015-02-28 14:49:11',6),(8824,110,'2015-02-28','2015-02-28 14:49:24',0),(8825,110,'2015-02-28','2015-02-28 14:49:46',0),(8826,110,'2015-02-28','2015-02-28 14:50:01',0),(8827,112,'2015-02-28','2015-02-28 14:50:02',6),(8828,110,'2015-02-28','2015-02-28 14:50:05',6),(8829,110,'2015-02-28','2015-02-28 14:50:34',0),(8830,110,'2015-02-28','2015-02-28 14:51:59',0),(8831,112,'2015-02-28','2015-02-28 14:51:59',1),(8832,112,'2015-02-28','2015-02-28 14:52:01',1),(8833,1,'2015-02-28','2015-02-28 15:36:09',1),(8834,1,'2015-02-28','2015-02-28 15:36:19',1),(8835,112,'2015-02-28','2015-02-28 15:43:44',1),(8836,1,'2015-02-28','2015-02-28 15:46:22',1),(8837,133,'2015-02-28','2015-02-28 15:46:28',1),(8838,133,'2015-02-28','2015-02-28 15:46:28',1),(8839,133,'2015-02-28','2015-02-28 15:46:36',1),(8840,1,'2015-02-28','2015-02-28 15:46:40',1),(8841,133,'2015-02-28','2015-02-28 15:46:41',1),(8842,110,'2015-02-28','2015-02-28 16:17:10',1),(8843,112,'2015-02-28','2015-02-28 16:17:11',1),(8844,113,'2015-02-28','2015-02-28 16:17:38',1),(8845,113,'2015-02-28','2015-02-28 16:17:39',1),(8846,113,'2015-02-28','2015-02-28 16:18:28',1),(8847,113,'2015-02-28','2015-02-28 16:18:28',1),(8848,113,'2015-02-28','2015-02-28 16:18:30',1),(8849,112,'2015-02-28','2015-02-28 16:18:35',1),(8850,113,'2015-02-28','2015-02-28 16:18:44',1),(8851,113,'2015-02-28','2015-02-28 16:18:48',1),(8852,113,'2015-02-28','2015-02-28 16:18:49',1),(8853,113,'2015-02-28','2015-02-28 16:18:49',1),(8854,112,'2015-02-28','2015-02-28 16:18:51',1),(8855,112,'2015-02-28','2015-02-28 16:18:57',1),(8856,112,'2015-02-28','2015-02-28 16:19:41',1);
/*!40000 ALTER TABLE `PageStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeStyles`
--

DROP TABLE IF EXISTS `PageThemeStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeStyles`
--

LOCK TABLES `PageThemeStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageThemeStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (1,'default','Plain Yogurt','Plain Yogurt is concrete5\'s default theme.',0),(2,'greensalad','Green Salad Theme','This is concrete5\'s Green Salad site theme.',0),(3,'dark_chocolate','Dark Chocolate','Dark Chocolate is concrete5\'s default theme in black.',0),(4,'greek_yogurt','Greek Yogurt','An elegant theme for concrete5.',0),(5,'codehub','CodeHub Theme','A new try!',0);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeAttributes`
--

DROP TABLE IF EXISTS `PageTypeAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeAttributes`
--

LOCK TABLES `PageTypeAttributes` WRITE;
/*!40000 ALTER TABLE `PageTypeAttributes` DISABLE KEYS */;
INSERT INTO `PageTypeAttributes` VALUES (6,1),(6,2),(6,3);
/*!40000 ALTER TABLE `PageTypeAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'core_stack','main.png','Stack',1,0),(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0),(4,'right_sidebar','right_sidebar.png','Right Sidebar',0,0),(5,'profile','main.png','Profile',0,0),(6,'home','main.png','Home',0,0);
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageWorkflowProgress`
--

LOCK TABLES `PageWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `PageWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,14,0,0,0,-1,'0',0,0),(2,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,15,0,0,0,-1,'0',0,1),(3,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/view.php',0,NULL,0,1,2,0,2,0,-1,'0',0,1),(4,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/write.php',0,NULL,0,1,0,0,3,0,-1,'0',0,1),(5,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/drafts.php',0,NULL,0,1,0,1,3,0,-1,'0',0,1),(6,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,-1,'0',0,1),(7,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,6,0,-1,'0',0,1),(8,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,6,0,-1,'0',0,1),(9,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,6,0,-1,'0',0,1),(10,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,-1,'0',0,1),(11,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,10,0,-1,'0',0,1),(12,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,10,0,-1,'0',0,1),(13,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,10,0,-1,'0',0,1),(14,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,10,0,-1,'0',0,1),(15,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,6,3,2,0,-1,'0',0,1),(16,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,15,0,-1,'0',0,1),(17,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,0,1,15,0,-1,'0',0,1),(18,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,15,0,-1,'0',0,1),(19,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,15,0,-1,'0',0,1),(20,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,15,0,-1,'0',0,1),(21,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,15,0,-1,'0',0,1),(22,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,4,2,0,-1,'0',0,1),(23,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/statistics.php',0,NULL,0,1,0,0,22,0,-1,'0',0,1),(24,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,1,22,0,-1,'0',0,1),(25,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,2,22,0,-1,'0',0,1),(26,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,3,22,0,-1,'0',0,1),(27,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,4,5,2,0,-1,'0',0,1),(28,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,3,0,27,0,-1,'0',0,1),(29,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/add.php',0,NULL,0,1,0,0,28,0,-1,'0',0,1),(30,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,1,28,0,-1,'0',0,1),(31,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/customize.php',0,NULL,0,1,0,2,28,0,-1,'0',0,1),(32,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,2,1,27,0,-1,'0',0,1),(33,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,0,32,0,-1,'0',0,1),(34,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,2,27,0,-1,'0',0,1),(35,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,3,27,0,-1,'0',0,1),(36,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,-1,'0',0,1),(37,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/list.php',0,NULL,0,1,0,0,36,0,-1,'0',0,1),(38,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,1,36,0,-1,'0',0,1),(39,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,-1,'0',0,1),(40,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,39,0,-1,'0',0,1),(41,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,39,0,-1,'0',0,1),(42,0,1,0,NULL,NULL,NULL,1,42,'OVERRIDE','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,40,0,-1,'0',0,1),(43,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,39,0,-1,'0',0,1),(44,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,-1,'0',0,1),(45,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,-1,'0',0,1),(46,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,44,0,-1,'0',0,1),(47,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,44,0,-1,'0',0,1),(48,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,44,0,-1,'0',0,1),(49,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,44,0,-1,'0',0,1),(50,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/add-ons.php',0,NULL,0,1,0,4,44,0,-1,'0',0,1),(51,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,9,10,2,0,-1,'0',0,1),(52,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,6,0,51,0,-1,'0',0,1),(53,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/site_name.php',0,NULL,0,1,0,0,52,0,-1,'0',0,1),(54,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,1,52,0,-1,'0',0,1),(55,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,2,52,0,-1,'0',0,1),(56,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,3,52,0,-1,'0',0,1),(57,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,4,52,0,-1,'0',0,1),(58,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/interface.php',0,NULL,0,1,0,5,52,0,-1,'0',0,1),(59,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,6,1,51,0,-1,'0',0,1),(60,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,59,0,-1,'0',0,1),(61,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk_seo_tool.php',0,NULL,0,1,0,1,59,0,-1,'0',0,1),(62,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/tracking_codes.php',0,NULL,0,1,0,2,59,0,-1,'0',0,1),(63,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,59,0,-1,'0',0,1),(64,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/statistics.php',0,NULL,0,1,0,4,59,0,-1,'0',0,1),(65,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/search_index.php',0,NULL,0,1,0,5,59,0,-1,'0',0,1),(66,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,3,2,51,0,-1,'0',0,1),(67,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,66,0,-1,'0',0,1),(68,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clear_cache.php',0,NULL,0,1,0,1,66,0,-1,'0',0,1),(69,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,66,0,-1,'0',0,1),(70,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,10,3,51,0,-1,'0',0,1),(71,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,70,0,-1,'0',0,1),(72,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/files.php',0,NULL,0,1,0,1,70,0,-1,'0',0,1),(73,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/file_types.php',0,NULL,0,1,0,2,70,0,-1,'0',0,1),(74,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,3,70,0,-1,'0',0,1),(75,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,4,70,0,-1,'0',0,1),(76,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,5,70,0,-1,'0',0,1),(77,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/ip_blacklist.php',0,NULL,0,1,0,6,70,0,-1,'0',0,1),(78,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,7,70,0,-1,'0',0,1),(79,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,8,70,0,-1,'0',0,1),(80,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance_mode.php',0,NULL,0,1,0,9,70,0,-1,'0',0,1),(81,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,3,4,51,0,-1,'0',0,1),(82,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,81,0,-1,'0',0,1),(83,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,81,0,-1,'0',0,1),(84,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/public_registration.php',0,NULL,0,1,0,2,81,0,-1,'0',0,1),(85,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,5,51,0,-1,'0',0,1),(86,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,0,0,85,0,-1,'0',0,1),(87,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,85,0,-1,'0',0,1),(88,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,2,6,51,0,-1,'0',0,1),(89,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,88,0,-1,'0',0,1),(90,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,88,0,-1,'0',0,1),(91,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,7,51,0,-1,'0',0,1),(92,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,91,0,-1,'0',0,1),(93,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,91,0,-1,'0',0,1),(94,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,91,0,-1,'0',0,1),(95,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/file_storage_locations.php',0,NULL,0,1,0,3,91,0,-1,'0',0,1),(96,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,4,91,0,-1,'0',0,1),(97,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/view.php',0,NULL,0,1,3,8,51,0,-1,'0',0,1),(98,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/backup.php',0,NULL,0,1,0,0,97,0,-1,'0',0,1),(99,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/update.php',0,NULL,0,1,0,1,97,0,-1,'0',0,1),(100,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/database.php',0,NULL,0,1,0,2,97,0,-1,'0',0,1),(101,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/composer.php',0,NULL,0,1,0,1,32,0,-1,'0',0,1),(102,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(103,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(104,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(105,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,-1,'0',0,1),(106,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,-1,'0',0,1),(107,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(108,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,5,0,0,0,-1,'0',0,1),(109,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,2,0,0,0,-1,'0',0,1),(110,0,1,0,NULL,NULL,NULL,1,110,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(111,0,1,0,NULL,NULL,NULL,1,111,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(112,0,1,0,NULL,NULL,NULL,1,112,'OVERRIDE','/profile/view.php',0,NULL,0,1,4,0,1,0,-1,'0',0,1),(113,0,1,0,NULL,NULL,NULL,1,112,'PARENT','/profile/edit.php',0,NULL,0,1,0,0,112,0,-1,'0',0,1),(114,0,1,0,NULL,NULL,NULL,1,112,'PARENT','/profile/avatar.php',0,NULL,0,1,0,1,112,0,-1,'0',0,1),(115,0,1,0,NULL,NULL,NULL,1,112,'PARENT','/profile/messages.php',0,NULL,0,1,0,2,112,0,-1,'0',0,1),(116,0,1,0,NULL,NULL,NULL,1,112,'PARENT','/profile/friends.php',0,NULL,0,1,0,3,112,0,-1,'0',0,1),(117,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1),(118,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1),(119,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,2,1,0,-1,'0',0,1),(120,0,1,0,NULL,NULL,NULL,1,120,'OVERRIDE','/members.php',0,NULL,0,1,0,4,1,0,-1,'0',0,1),(121,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(122,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(123,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,109,0,-1,'0',0,1),(124,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,109,0,-1,'0',0,1),(126,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,0,125,0,-1,'0',0,1),(125,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,1,2,108,0,-1,'0',0,1),(127,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(128,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,0,108,0,-1,'0',0,1),(129,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/example_faq/view.php',0,NULL,0,1,0,13,2,0,-1,'0',0,1),(130,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/boilerplate_crud/view.php',0,NULL,0,1,0,14,2,2,-1,'0',0,1),(131,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,1,108,0,-1,'0',0,1),(132,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/memberform.php',0,NULL,0,1,0,1,1,0,-1,'0',0,0),(133,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,1,0,-1,'0',0,0),(134,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,4,108,0,-1,'0',0,1),(135,0,2,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,3,108,0,-1,'0',0,1),(137,0,2,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,'http://codehuborg.github.io',0,1,0,5,1,0,-1,'0',0,0);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccess`
--

LOCK TABLES `PermissionAccess` WRITE;
/*!40000 ALTER TABLE `PermissionAccess` DISABLE KEYS */;
INSERT INTO `PermissionAccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1);
/*!40000 ALTER TABLE `PermissionAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntities`
--

LOCK TABLES `PermissionAccessEntities` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntities` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntities` VALUES (1,1),(2,1),(3,1),(4,5),(5,6),(6,1);
/*!40000 ALTER TABLE `PermissionAccessEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroupSets`
--

LOCK TABLES `PermissionAccessEntityGroupSets` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

LOCK TABLES `PermissionAccessEntityGroups` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityGroups` VALUES (1,1,3),(2,2,1),(3,3,2),(4,6,4);
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

LOCK TABLES `PermissionAccessEntityTypeCategories` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypeCategories` VALUES (1,1),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(2,1),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(3,1),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(4,1),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(5,1),(6,6),(6,7);
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

LOCK TABLES `PermissionAccessEntityTypes` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0);
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

LOCK TABLES `PermissionAccessEntityUsers` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessList`
--

LOCK TABLES `PermissionAccessList` WRITE;
/*!40000 ALTER TABLE `PermissionAccessList` DISABLE KEYS */;
INSERT INTO `PermissionAccessList` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,1,0,10),(27,1,0,10),(28,1,0,10),(29,1,0,10),(30,1,0,10),(31,1,0,10),(32,1,0,10),(33,1,0,10),(34,2,0,10),(35,2,0,10),(36,2,0,10),(37,2,0,10),(38,2,0,10),(38,3,0,10),(39,2,0,10),(39,3,0,10),(40,2,0,10),(41,2,0,10),(42,2,0,10),(43,2,0,10),(43,1,0,10),(44,1,0,10),(45,1,0,10),(46,1,0,10),(47,1,0,10),(48,1,0,10),(49,1,0,10),(50,1,0,10),(51,1,0,10),(52,2,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,1,0,10),(59,1,0,10),(60,1,0,10),(61,1,0,10),(62,1,0,10),(63,1,0,10),(64,1,0,10),(65,1,0,10),(66,1,0,10),(67,1,0,10),(68,2,0,10),(69,1,0,10),(69,6,0,10),(70,1,0,10),(70,6,0,10),(71,1,0,10),(71,6,0,10),(72,1,0,10),(72,6,0,10),(73,1,0,10),(73,6,0,10),(74,1,0,10),(74,6,0,10),(75,1,0,10),(75,6,0,10),(76,1,0,10),(76,6,0,10),(77,1,0,10),(77,6,0,10),(78,1,0,10),(78,6,0,10),(79,1,0,10),(79,6,0,10),(80,1,0,10),(80,6,0,10),(81,1,0,10),(81,6,0,10),(82,1,0,10),(82,6,0,10),(83,2,0,10),(84,1,0,10),(84,6,0,10),(85,1,0,10),(85,6,0,10),(86,1,0,10),(86,6,0,10),(87,1,0,10),(87,6,0,10),(88,1,0,10),(88,6,0,10),(89,1,0,10),(89,6,0,10),(90,1,0,10),(90,6,0,10),(91,1,0,10),(91,6,0,10),(92,1,0,10),(92,6,0,10),(93,1,0,10),(93,6,0,10),(94,1,0,10),(94,6,0,10),(95,1,0,10),(95,6,0,10),(96,1,0,10),(96,6,0,10),(97,1,0,10),(97,6,0,10);
/*!40000 ALTER TABLE `PermissionAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessWorkflows`
--

LOCK TABLES `PermissionAccessWorkflows` WRITE;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAssignments`
--

LOCK TABLES `PermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PermissionAssignments` DISABLE KEYS */;
INSERT INTO `PermissionAssignments` VALUES (1,17),(2,18),(3,55),(4,56),(5,57),(6,58),(7,60),(8,61),(9,62),(10,63),(11,64),(12,66),(13,67),(14,68),(15,69),(16,70),(17,71);
/*!40000 ALTER TABLE `PermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionDurationObjects`
--

LOCK TABLES `PermissionDurationObjects` WRITE;
/*!40000 ALTER TABLE `PermissionDurationObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionDurationObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeyCategories`
--

LOCK TABLES `PermissionKeyCategories` WRITE;
/*!40000 ALTER TABLE `PermissionKeyCategories` DISABLE KEYS */;
INSERT INTO `PermissionKeyCategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'composer_page',NULL),(5,'user',NULL),(6,'file_set',NULL),(7,'file',NULL),(8,'area',NULL),(9,'block_type',NULL),(10,'block',NULL),(11,'admin',NULL),(12,'sitemap',NULL),(13,'marketplace_newsflow',NULL),(14,'basic_workflow',NULL);
/*!40000 ALTER TABLE `PermissionKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeys`
--

LOCK TABLES `PermissionKeys` WRITE;
/*!40000 ALTER TABLE `PermissionKeys` DISABLE KEYS */;
INSERT INTO `PermissionKeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0),(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(9,'edit_page_type','Change Page Type',0,0,'Ability to change just the page type for this page, also check out Theme permissions.',1,0),(10,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(11,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(12,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(13,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(14,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(15,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(16,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(17,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',9,0),(18,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',9,0),(19,'view_area','View Area',0,0,'Can view the area and its contents.',8,0),(20,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',8,0),(21,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',8,0),(22,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',8,0),(23,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',8,0),(24,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',8,0),(25,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',8,0),(26,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',8,0),(27,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',8,0),(28,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',10,0),(29,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',10,0),(30,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',10,0),(31,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',10,0),(32,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',10,0),(33,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',10,0),(34,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',10,0),(35,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',6,0),(36,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',6,0),(37,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(38,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',6,0),(39,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',6,0),(40,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',6,0),(41,'delete_file_set','Delete File Set',0,0,'',6,0),(42,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',6,0),(43,'add_file','Add File',0,1,'Can add files to set.',6,0),(44,'view_file','View Files',0,0,'Can view and download files.',7,0),(45,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',7,0),(46,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',7,0),(47,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',7,0),(48,'copy_file','Copy File',0,0,'Can copy file.',7,0),(49,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',7,0),(50,'delete_file','Delete File',0,0,'Can delete file.',7,0),(51,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',14,0),(52,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',14,0),(53,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',14,0),(54,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',14,0),(55,'access_user_search','Access User Search',0,1,'',5,0),(56,'edit_user_properties','Edit User Details',0,1,NULL,5,0),(57,'view_user_attributes','View User Attributes',0,1,NULL,5,0),(58,'activate_user','Activate/Deactivate User',0,0,NULL,5,0),(59,'sudo','Sign in as User',0,0,NULL,5,0),(60,'delete_user','Delete User',0,0,NULL,5,0),(61,'access_group_search','Access Group Search',0,0,'',5,0),(62,'edit_groups','Edit Groups',0,0,'',5,0),(63,'assign_user_groups','Assign Groups to User',0,1,'',5,0),(64,'backup','Perform Backups',0,0,NULL,11,0),(65,'access_task_permissions','Access Task Permissions',0,0,NULL,11,0),(66,'access_sitemap','Access Sitemap',0,0,NULL,12,0),(67,'access_page_defaults','Access Page Type Defaults',0,0,NULL,11,0),(68,'empty_trash','Empty Trash',0,0,NULL,11,0),(69,'uninstall_packages','Uninstall Packages',0,0,NULL,13,0),(70,'install_packages','Install Packages',0,0,NULL,13,0),(71,'view_newsflow','View Newsflow',0,0,NULL,13,0);
/*!40000 ALTER TABLE `PermissionKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
INSERT INTO `Piles` VALUES (1,2,1,'2014-01-11 17:26:53',NULL,'READY');
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueueMessages`
--

DROP TABLE IF EXISTS `QueueMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueueMessages` (
  `message_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) DEFAULT NULL,
  `body` varchar(8192) NOT NULL,
  `md5` varchar(32) NOT NULL,
  `timeout` decimal(14,0) unsigned DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueueMessages`
--

LOCK TABLES `QueueMessages` WRITE;
/*!40000 ALTER TABLE `QueueMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueueMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuePageDuplicationRelations`
--

DROP TABLE IF EXISTS `QueuePageDuplicationRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuePageDuplicationRelations`
--

LOCK TABLES `QueuePageDuplicationRelations` WRITE;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Queues`
--

DROP TABLE IF EXISTS `Queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) NOT NULL,
  `timeout` int(5) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Queues`
--

LOCK TABLES `Queues` WRITE;
/*!40000 ALTER TABLE `Queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `Queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupRequests`
--

DROP TABLE IF EXISTS `SignupRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupRequests`
--

LOCK TABLES `SignupRequests` WRITE;
/*!40000 ALTER TABLE `SignupRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `SignupRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
INSERT INTO `Stacks` VALUES (1,'Site Logo',20,123),(2,'Header nav',20,124);
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemNotifications`
--

DROP TABLE IF EXISTS `SystemNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemNotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemNotifications`
--

LOCK TABLES `SystemNotifications` WRITE;
/*!40000 ALTER TABLE `SystemNotifications` DISABLE KEYS */;
INSERT INTO `SystemNotifications` VALUES (1,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-04-12 03:05:57',0,1,'A new version of concrete5 is now available.','','\n	\n<h2>5.6.3.1 Release Notes</h2>\n\n<h3>Huge Maintenance Update</h3>\n\n<p>\nVersion 5.6.3 and 5.6.3.1 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\nThey are highly recommended for all users of concrete5.\n</p>\n<p>\nAs always, backup your data and site before running the upgrade live.\n</p>			\n\n<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n\n\n	'),(2,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-04-24 00:09:30',0,1,'A new version of concrete5 is now available.','','\n	\n<h2>5.6.3.1 Release Notes</h2>\n\n<h3>Huge Maintenance Update</h3>\n\n<p>\nVersion 5.6.3 and 5.6.3.1 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\nThey are highly recommended for all users of concrete5.\n</p>\n<p>\nAs always, backup your data and site before running the upgrade live.\n</p>			\n\n<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n\n\n	'),(3,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-05-07 00:10:18',0,1,'A new version of concrete5 is now available.','','\n\n<h2>5.6.3.1 Release Notes</h2>\n\n<h3>Huge Maintenance Update</h3>\n\n<p>\nVersion 5.6.3 and 5.6.3.1 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\nThey are highly recommended for all users of concrete5.\n</p>\n<p>\nAs always, backup your data and site before running the upgrade live.\n</p>\n\n<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n\n\n    '),(4,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-05-14 22:53:24',0,1,'A new version of concrete5 is now available.','','\n\n<h2>5.6.3.1 Release Notes</h2>\n\n<h3>Huge Maintenance Update</h3>\n\n<p>\nVersion 5.6.3 and 5.6.3.1 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\nThey are highly recommended for all users of concrete5.\n</p>\n<p>\nAs always, backup your data and site before running the upgrade live.\n</p>\n\n<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n\n\n    '),(5,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-06-15 15:51:50',0,1,'A new version of concrete5 is now available.','','\n\n                <h2>5.6.3.1 Release Notes</h2>\n\n                <h3>Huge Maintenance Update</h3>\n\n                <p>\n                    Version 5.6.3 and 5.6.3.1 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n                    They are highly recommended for all users of concrete5.\n                </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n\n\n                '),(6,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-07-10 00:33:54',0,1,'A new version of concrete5 is now available.','','\n\n                <h2>5.6.3.1 Release Notes</h2>\n\n                <h3>Huge Maintenance Update</h3>\n\n                <p>\n                    Version 5.6.3 and 5.6.3.1 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n                    They are highly recommended for all users of concrete5.\n                </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n\n\n                '),(7,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-07-14 02:04:08',0,1,'A new version of concrete5 is now available.','','\n\n                <h2>5.6.3.1 Release Notes</h2>\n\n                <h3>Huge Maintenance Update</h3>\n\n                <p>\n                    Version 5.6.3 and 5.6.3.1 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n                    They are highly recommended for all users of concrete5.\n                </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n\n\n                '),(8,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-07-24 01:12:01',0,1,'A new version of concrete5 is now available.','','\n\n                <h2>5.6.3.1 Release Notes</h2>\n\n                <h3>Huge Maintenance Update</h3>\n\n                <p>\n                    Version 5.6.3 and 5.6.3.1 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n                    They are highly recommended for all users of concrete5.\n                </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n\n\n                '),(9,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-10-17 00:24:24',0,1,'A new version of concrete5 is now available.','','\n\n                <h2>5.6.3.1 Release Notes</h2>\n\n                <h3>Huge Maintenance Update</h3>\n\n                <p>\n                    Version 5.6.3 and 5.6.3.1 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n                    They are highly recommended for all users of concrete5.\n                </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n\n\n                '),(10,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-11-22 00:25:35',0,1,'A new version of concrete5 is now available.','','\n\n                <h2>5.6.3.2 Release Notes</h2>\n\n                <h3>Huge Maintenance Update</h3>\n\n                <p>\n                    Version 5.6.3, 5.6.3.1 and 5.6.3.2 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n                    They are highly recommended for all users of concrete5.\n                </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-2/\" target=\"_blank\">Full 5.6.3.2 Release Notes</a></h3>\n\n                '),(11,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-12-16 11:57:18',0,1,'A new version of concrete5 is now available.','','\n\n                <h2>5.6.3.2 Release Notes</h2>\n\n                <h3>Huge Maintenance Update</h3>\n\n                <p>\n                    Version 5.6.3, 5.6.3.1 and 5.6.3.2 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n                    They are highly recommended for all users of concrete5.\n                </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-2/\" target=\"_blank\">Full 5.6.3.2 Release Notes</a></h3>\n\n                '),(12,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2015-01-16 17:22:56',0,1,'A new version of concrete5 is now available.','','\n\n                <h2>5.6.3.2 Release Notes</h2>\n\n                <h3>Huge Maintenance Update</h3>\n\n                <p>\n                    Version 5.6.3, 5.6.3.1 and 5.6.3.2 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n                    They are highly recommended for all users of concrete5.\n                </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-2/\" target=\"_blank\">Full 5.6.3.2 Release Notes</a></h3>\n\n                '),(13,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2015-01-21 21:22:18',0,1,'A new version of concrete5 is now available.','','\n\n                <h2>5.6.3.2 Release Notes</h2>\n\n                <h3>Huge Maintenance Update</h3>\n\n                <p>\n                    Version 5.6.3, 5.6.3.1 and 5.6.3.2 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n                    They are highly recommended for all users of concrete5.\n                </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-2/\" target=\"_blank\">Full 5.6.3.2 Release Notes</a></h3>\n\n                '),(14,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2015-02-28 10:42:07',0,1,'A new version of concrete5 is now available.','','\n\n                <h2>5.6.3.3 Release Notes</h2>\n\n                <h3>Huge Maintenance Update</h3>\n\n                <p>\n                    Version 5.6.3 and its updates introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n                    They are highly recommended for all users of concrete5.\n                </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-2/\" target=\"_blank\">Full 5.6.3.2 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-3/\" target=\"_blank\">Full 5.6.3.3 Release Notes</a></h3>\n\n                ');
/*!40000 ALTER TABLE `SystemNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Topic`
--

DROP TABLE IF EXISTS `Topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Topic` (
  `topicID` int(11) NOT NULL AUTO_INCREMENT,
  `topicName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`topicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Topic`
--

LOCK TABLES `Topic` WRITE;
/*!40000 ALTER TABLE `Topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `Topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (10,0,0,0,0,0,0,1,1),(11,0,0,0,0,0,0,2,1),(17,1,1,1,1,0,0,3,1),(18,1,0,1,0,0,0,4,1),(19,1,0,1,0,0,0,5,1),(20,1,0,1,0,0,0,6,1),(21,1,0,1,0,0,0,7,1),(22,1,0,1,0,0,0,8,1),(23,0,0,0,0,0,0,9,1);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
INSERT INTO `UserAttributeValues` VALUES (1,17,131),(1,18,132),(1,19,133),(1,20,134),(1,21,135),(1,22,136),(2,10,123),(2,11,124),(2,17,127),(2,18,130),(2,19,137),(2,20,138),(2,21,139),(2,22,140),(3,17,141),(3,18,142),(3,19,143),(3,20,144),(3,21,145),(3,22,146),(4,17,147),(4,18,148),(4,19,149),(4,20,150),(4,21,151),(4,22,152),(4,23,159),(5,17,153),(5,18,154),(5,19,155),(5,20,156),(5,21,157),(5,22,158),(5,23,160);
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserBannedIPs`
--

DROP TABLE IF EXISTS `UserBannedIPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserBannedIPs`
--

LOCK TABLES `UserBannedIPs` WRITE;
/*!40000 ALTER TABLE `UserBannedIPs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserBannedIPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
INSERT INTO `UserGroups` VALUES (2,3,'2014-01-09 23:55:20',NULL),(4,4,'2014-01-15 20:05:05',NULL),(5,4,'2014-01-15 20:37:24',NULL),(5,3,'2014-01-15 20:46:28',NULL),(3,4,'2014-01-26 19:09:35',NULL),(3,3,'2014-01-26 19:09:35',NULL),(4,3,'2014-01-15 20:49:21',NULL),(2,4,'2014-01-15 20:50:08',NULL),(1,4,'2014-01-15 21:15:25',NULL),(6,3,'2015-02-28 10:44:42',NULL),(6,4,'2015-02-28 10:44:42',NULL);
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserMemberform`
--

DROP TABLE IF EXISTS `UserMemberform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserMemberform` (
  `uID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `github` varchar(45) DEFAULT NULL,
  `photoID` varchar(45) DEFAULT NULL,
  `about` longtext,
  PRIMARY KEY (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserMemberform`
--

LOCK TABLES `UserMemberform` WRITE;
/*!40000 ALTER TABLE `UserMemberform` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserMemberform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserOpenIDs`
--

DROP TABLE IF EXISTS `UserOpenIDs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserOpenIDs`
--

LOCK TABLES `UserOpenIDs` WRITE;
/*!40000 ALTER TABLE `UserOpenIDs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserOpenIDs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionAssignGroupAccessList`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionAssignGroupAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionAssignGroupAccessList`
--

LOCK TABLES `UserPermissionAssignGroupAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionAssignGroupAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionAssignGroupAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionAssignGroupAccessListCustom`
--

LOCK TABLES `UserPermissionAssignGroupAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAccessList`
--

LOCK TABLES `UserPermissionEditPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionEditPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionUserSearchAccessList`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionUserSearchAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionUserSearchAccessList`
--

LOCK TABLES `UserPermissionUserSearchAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionUserSearchAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionUserSearchAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionUserSearchAccessListCustom`
--

LOCK TABLES `UserPermissionUserSearchAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessList`
--

LOCK TABLES `UserPermissionViewAttributeAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionViewAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointHistory`
--

DROP TABLE IF EXISTS `UserPointHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointHistory`
--

LOCK TABLES `UserPointHistory` WRITE;
/*!40000 ALTER TABLE `UserPointHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPointHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  `ak_full_name` text,
  `ak_website` text,
  `ak_twitter` text,
  `ak_linkedin` text,
  `ak_googleplus` text,
  `ak_github` text,
  `ak_notlisted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `UserSearchIndexAttributes` VALUES (1,0,0,'Codehub Dev','codehub.org.uk','codehubbs','','','',0);
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','dev@codehub.org.uk','da0111aa9f83d4c70ccdbca3f7e53ab0','1',-1,1,'2013-10-19 17:17:17',1,1425140381,1425140230,2887548929,1425135119,88,NULL,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersExpTopic`
--

DROP TABLE IF EXISTS `UsersExpTopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsersExpTopic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT NULL,
  `topicID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersExpTopic`
--

LOCK TABLES `UsersExpTopic` WRITE;
/*!40000 ALTER TABLE `UsersExpTopic` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersExpTopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersFriends`
--

DROP TABLE IF EXISTS `UsersFriends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsersFriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersFriends`
--

LOCK TABLES `UsersFriends` WRITE;
/*!40000 ALTER TABLE `UsersFriends` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersFriends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersLearnTopic`
--

DROP TABLE IF EXISTS `UsersLearnTopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsersLearnTopic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT NULL,
  `topicID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersLearnTopic`
--

LOCK TABLES `UsersLearnTopic` WRITE;
/*!40000 ALTER TABLE `UsersLearnTopic` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersLearnTopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgress`
--

LOCK TABLES `WorkflowProgress` WRITE;
/*!40000 ALTER TABLE `WorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressCategories`
--

LOCK TABLES `WorkflowProgressCategories` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressCategories` DISABLE KEYS */;
INSERT INTO `WorkflowProgressCategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `WorkflowProgressCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressHistory`
--

LOCK TABLES `WorkflowProgressHistory` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressHistory` DISABLE KEYS */;
INSERT INTO `WorkflowProgressHistory` VALUES (1,1,'2013-10-19 23:50:29','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"125\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"1\";}'),(2,2,'2013-10-19 23:51:05','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"126\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"2\";}'),(3,3,'2013-10-19 23:53:38','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"3\";}'),(4,4,'2013-10-20 00:03:21','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"125\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"4\";}'),(5,5,'2013-10-20 00:19:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"126\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"5\";}'),(6,6,'2013-10-20 15:31:13','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"6\";}'),(7,7,'2013-10-20 15:36:36','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"7\";}'),(8,8,'2013-10-20 15:50:24','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"8\";}'),(9,9,'2013-10-20 15:53:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"9\";}'),(10,10,'2013-10-20 16:32:24','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"10\";}'),(11,11,'2013-10-20 16:34:53','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"11\";}'),(12,12,'2013-10-20 16:48:10','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"12\";}'),(13,13,'2013-10-20 17:12:51','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"13\";}'),(14,14,'2013-10-20 17:25:31','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"14\";}'),(15,15,'2013-10-20 18:01:28','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"125\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"15\";}'),(16,16,'2013-10-20 21:38:25','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"128\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"16\";}'),(17,17,'2013-11-05 01:44:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"128\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"17\";}'),(18,18,'2013-12-04 17:35:32','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"128\";s:4:\"wrID\";s:2:\"18\";}'),(19,19,'2013-12-04 17:37:31','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"131\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"19\";}'),(20,20,'2013-12-04 17:38:12','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"125\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"20\";}'),(21,21,'2013-12-05 03:51:40','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"132\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"21\";}'),(22,22,'2013-12-05 03:51:53','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"132\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"22\";}'),(23,23,'2013-12-05 04:11:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"23\";}'),(24,24,'2013-12-05 04:15:31','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"24\";}'),(25,25,'2013-12-05 04:15:47','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"134\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"25\";}'),(26,26,'2014-01-09 23:58:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"126\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"26\";}'),(27,27,'2014-01-11 15:01:25','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"131\";s:4:\"wrID\";s:2:\"27\";}'),(28,28,'2014-01-11 15:01:29','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"125\";s:4:\"wrID\";s:2:\"28\";}'),(29,29,'2014-01-11 16:57:30','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"29\";}'),(30,30,'2014-01-11 17:21:53','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"135\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"30\";}'),(31,31,'2014-01-11 17:22:23','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"134\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"31\";}'),(32,32,'2014-01-11 17:27:47','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"135\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"32\";}'),(33,33,'2014-01-11 17:43:49','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"135\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"33\";}'),(34,34,'2014-01-11 17:46:17','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"135\";s:4:\"wrID\";s:2:\"34\";}'),(35,35,'2014-01-11 17:49:31','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"35\";}'),(36,36,'2014-01-11 17:49:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"36\";}'),(37,37,'2014-01-11 18:00:19','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"134\";s:4:\"wrID\";s:2:\"37\";}'),(38,38,'2014-01-11 18:15:51','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"38\";}'),(39,39,'2014-01-14 00:44:47','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"39\";}'),(40,40,'2014-01-14 00:47:30','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"40\";}'),(41,41,'2014-01-14 00:50:23','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"41\";}'),(42,42,'2014-01-14 02:08:35','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"42\";}'),(43,43,'2014-01-15 19:57:36','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"43\";}'),(44,44,'2014-01-15 21:00:32','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"44\";}'),(45,45,'2014-01-15 21:09:57','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"5\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"45\";}'),(46,46,'2014-01-15 21:17:03','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"46\";}'),(47,47,'2014-01-15 21:37:56','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"47\";}'),(48,48,'2014-01-15 21:42:47','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"48\";}'),(49,49,'2014-01-15 23:42:22','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"49\";}'),(50,50,'2014-01-15 23:43:24','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"50\";}'),(51,51,'2014-01-15 23:46:56','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"51\";}'),(52,52,'2014-01-15 23:48:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"52\";}'),(53,53,'2014-01-15 23:55:02','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"53\";}'),(54,54,'2014-01-15 23:55:52','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"54\";}'),(55,55,'2014-01-15 23:56:17','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"55\";}'),(56,56,'2014-01-15 23:56:26','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"56\";}'),(57,57,'2014-01-19 17:44:01','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"57\";}'),(58,58,'2014-01-26 20:22:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"58\";}'),(59,59,'2014-01-26 21:08:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"59\";}'),(60,60,'2014-01-26 21:23:20','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"60\";}'),(61,61,'2014-01-26 21:28:57','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"61\";}'),(62,62,'2014-01-26 22:20:16','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"62\";}'),(63,63,'2014-01-26 22:21:41','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"63\";}'),(64,64,'2014-01-26 22:40:16','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:2:\"64\";}'),(65,65,'2014-01-26 22:54:22','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"65\";}'),(66,66,'2014-01-27 00:59:11','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"115\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"66\";}'),(67,67,'2014-01-27 00:59:39','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"116\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"67\";}'),(68,68,'2014-01-27 01:02:13','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"68\";}'),(69,69,'2014-01-27 03:58:36','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:2:\"69\";}'),(70,70,'2014-01-27 20:06:12','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"70\";}'),(71,71,'2014-01-27 20:06:52','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"21\";s:4:\"wrID\";s:2:\"71\";}'),(72,72,'2014-01-27 21:14:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"22\";s:4:\"wrID\";s:2:\"72\";}'),(73,73,'2014-01-27 21:20:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"73\";}'),(74,74,'2014-01-29 16:52:49','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"74\";}'),(75,75,'2014-01-29 16:58:35','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"75\";}'),(76,76,'2014-01-29 16:59:01','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"76\";}'),(77,77,'2014-01-29 17:00:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"77\";}'),(78,78,'2014-01-29 23:35:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"78\";}'),(79,79,'2014-01-29 23:37:30','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"79\";}'),(80,80,'2014-01-29 23:49:24','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"80\";}'),(81,81,'2014-01-29 23:49:54','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"81\";}'),(82,82,'2014-01-30 00:10:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"82\";}'),(83,83,'2014-01-31 13:41:11','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"83\";}'),(84,84,'2014-01-31 13:48:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"23\";s:4:\"wrID\";s:2:\"84\";}'),(85,85,'2014-01-31 18:45:37','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"85\";}'),(86,86,'2014-02-11 23:08:13','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"24\";s:4:\"wrID\";s:2:\"86\";}'),(87,87,'2014-03-04 23:14:51','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"120\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"87\";}'),(88,88,'2014-03-12 01:38:02','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"25\";s:4:\"wrID\";s:2:\"88\";}'),(89,89,'2014-03-20 19:14:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:2:\"89\";}'),(90,90,'2014-04-23 23:09:52','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"26\";s:4:\"wrID\";s:2:\"90\";}'),(91,91,'2014-04-23 23:11:36','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"27\";s:4:\"wrID\";s:2:\"91\";}'),(92,92,'2014-05-14 21:54:58','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"28\";s:4:\"wrID\";s:2:\"92\";}'),(93,93,'2014-06-15 14:52:40','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"29\";s:4:\"wrID\";s:2:\"93\";}'),(94,94,'2014-06-15 15:15:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"30\";s:4:\"wrID\";s:2:\"94\";}'),(95,95,'2014-07-10 00:04:04','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"31\";s:4:\"wrID\";s:2:\"95\";}'),(96,96,'2014-07-14 01:07:26','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"32\";s:4:\"wrID\";s:2:\"96\";}'),(97,97,'2014-07-24 00:12:45','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"33\";s:4:\"wrID\";s:2:\"97\";}'),(98,98,'2014-07-24 00:15:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"34\";s:4:\"wrID\";s:2:\"98\";}'),(99,99,'2014-10-16 23:27:22','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"35\";s:4:\"wrID\";s:2:\"99\";}'),(100,100,'2014-10-17 00:33:21','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"36\";s:4:\"wrID\";s:3:\"100\";}'),(101,101,'2014-11-22 00:28:23','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"37\";s:4:\"wrID\";s:3:\"101\";}'),(102,102,'2014-12-16 11:59:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"38\";s:4:\"wrID\";s:3:\"102\";}'),(103,103,'2015-01-16 19:35:22','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"39\";s:4:\"wrID\";s:3:\"103\";}'),(104,104,'2015-01-16 19:36:25','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:3:\"104\";}'),(105,105,'2015-02-28 10:42:17','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:3:\"105\";}'),(106,106,'2015-02-28 16:19:40','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"112\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:3:\"106\";}');
/*!40000 ALTER TABLE `WorkflowProgressHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowRequestObjects`
--

LOCK TABLES `WorkflowRequestObjects` WRITE;
/*!40000 ALTER TABLE `WorkflowRequestObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowRequestObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTypes`
--

LOCK TABLES `WorkflowTypes` WRITE;
/*!40000 ALTER TABLE `WorkflowTypes` DISABLE KEYS */;
INSERT INTO `WorkflowTypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `WorkflowTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workflows`
--

LOCK TABLES `Workflows` WRITE;
/*!40000 ALTER TABLE `Workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `Workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressCustomCountries`
--

DROP TABLE IF EXISTS `atAddressCustomCountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressCustomCountries`
--

LOCK TABLES `atAddressCustomCountries` WRITE;
/*!40000 ALTER TABLE `atAddressCustomCountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressCustomCountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (20,1),(31,1),(34,1),(64,1),(65,1),(68,1),(69,1),(75,1),(108,1),(117,1),(118,1),(119,1),(120,0),(121,1),(122,1),(123,1),(124,1),(128,0),(129,0),(159,1),(160,1),(161,1),(162,1),(163,0),(164,0),(165,1);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (5,0),(6,0),(8,0),(9,0),(10,1),(11,1),(15,1),(23,1);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES (1,'blog, blogging'),(2,'icon-book'),(3,'new blog, write blog, blogging'),(4,'icon-pencil'),(5,'blog drafts, composer'),(6,'icon-book'),(7,'pages, add page, delete page, copy, move, alias'),(8,'pages, add page, delete page, copy, move, alias'),(9,'icon-home'),(10,'pages, add page, delete page, copy, move, alias, bulk'),(11,'icon-road'),(12,'find page, search page, search, find, pages, sitemap'),(13,'icon-search'),(14,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),(15,'icon-picture'),(16,'file, file attributes, title, attribute, description, rename'),(17,'icon-cog'),(18,'files, category, categories'),(19,'icon-list-alt'),(21,'new file set'),(22,'icon-plus-sign'),(23,'users, groups, people, find, delete user, remove user, change password, password'),(24,'find, search, people, delete user, remove user, change password, password'),(25,'icon-user'),(26,'user, group, people, permissions, access, expire'),(27,'icon-globe'),(28,'user attributes, user data, gather data, registration data'),(29,'icon-cog'),(30,'new user, create'),(32,'icon-plus-sign'),(33,'new user group, new group, group, create'),(35,'icon-plus'),(36,'group set'),(37,'icon-list'),(38,'forms, log, error, email, mysql, exception, survey'),(39,'hits, pageviews, visitors, activity'),(40,'icon-signal'),(41,'forms, questions, response, data'),(42,'icon-briefcase'),(43,'questions, quiz, response'),(44,'icon-tasks'),(45,'forms, log, error, email, mysql, exception, survey, history'),(46,'icon-time'),(47,'new theme, theme, active theme, change theme, template, css'),(48,'icon-font'),(49,'theme'),(50,'page types'),(51,'custom theme, change theme, custom css, css'),(52,'page type defaults, global block, global area, starter, template'),(53,'icon-file'),(54,'page attributes, custom'),(55,'icon-cog'),(56,'single, page, custom, application'),(57,'icon-wrench'),(58,'add workflow, remove workflow'),(59,'icon-list'),(60,'icon-user'),(61,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),(62,'icon-th'),(63,'icon-lock'),(66,'block, refresh, custom'),(67,'icon-wrench'),(70,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),(71,'update, upgrade'),(72,'concrete5.org, my account, marketplace'),(73,'buy theme, new theme, marketplace, template'),(74,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(76,'website name, title'),(77,'logo, favicon, iphone, icon, bookmark'),(78,'tinymce, content block, fonts, editor, content, overlay'),(79,'translate, translation, internationalization, multilingual'),(80,'timezone, profile, locale'),(81,'interface, quick nav, dashboard background, background image'),(82,'vanity, pretty url, seo, pageview, view'),(83,'bulk, seo, change keywords, engine, optimization, search'),(84,'traffic, statistics, google analytics, quant, pageviews, hits'),(85,'pretty, slug'),(86,'turn off statistics, tracking, statistics, pageviews, hits'),(87,'configure search, site search, search option'),(88,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),(89,'cache option, turn off cache, no cache, page cache, caching'),(90,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(91,'editors, hide site, offline, private, public, access'),(92,'file options, file manager, upload, modify'),(93,'security, files, media, extension, manager, upload'),(94,'security, actions, administrator, admin, package, marketplace, search'),(95,'security, lock ip, lock out, block ip, address, restrict, access'),(96,'security, registration'),(97,'antispam, block spam, security'),(98,'lock site, under construction, hide, hidden'),(99,'profile, login, redirect, specific, dashboard, administrators'),(100,'member profile, member page, community, forums, social, avatar'),(101,'signup, new user, community'),(102,'smtp, mail settings'),(103,'email server, mail settings, mail configuration, external, internal'),(104,'email server, mail settings, mail configuration, private message, message system, import, email, message'),(105,'attribute configuration'),(106,'attributes, sets'),(107,'attributes, types'),(109,'overrides, system info, debug, support, help'),(110,'errors, exceptions, develop, support, help'),(111,'email, logging, logs, smtp, pop, errors, mysql, log'),(112,'security, alternate storage, hide files'),(113,'network, proxy server'),(114,'export, backup, database, sql, mysql, encryption, restore'),(115,'upgrade, new version, update'),(116,'export, database, xml, starting, points, schema, refresh, custom, tables'),(127,'Gicela Morales'),(130,'gicelamorales.com'),(131,'Codehub Dev'),(132,'codehub.org.uk'),(133,'codehubbs'),(134,''),(135,''),(136,''),(137,'gicela'),(138,'in/gicela'),(139,'u/0/102657572303151942871/posts'),(140,'gicela'),(141,'Sam Urquhart'),(142,''),(143,'mrstth'),(144,'in/samurquhart'),(145,''),(146,'smoobs'),(147,'Robert Thumpston'),(148,''),(149,''),(150,''),(151,''),(152,''),(153,'Gabriel Thornton'),(154,''),(155,''),(156,''),(157,''),(158,'gabbathehutt');
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
INSERT INTO `atNumber` VALUES (125,327.0000),(126,283.0000);
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
INSERT INTO `atSelectSettings` VALUES (16,0,'display_asc',0);
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES (2,''),(3,''),(4,''),(7,'');
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
INSERT INTO `btContentLocal` VALUES (1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						'),(2,'<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>'),(3,'<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>'),(4,'<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>'),(5,'\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>'),(13,'<h1>CodeHub</h1>'),(14,'<h1>CodeHub</h1>'),(16,'<h2>Profiles</h2>'),(18,'<h2>Profiles</h2>'),(20,'<p>CodeHub is a place to code, share, and learn from one another. At CodeHub, our plan will be to work together on projects, but you are welcome to bring your own. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>'),(21,'<p>Is CodeHub for you?</p>'),(22,'<pre id=\"line1\"><span>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</span></pre>'),(23,'Is CodeHub for you?'),(24,'<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>'),(28,'<pre id=\"line1\"><span>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</span></pre>'),(29,'<p>Freelance designers, developers, engineers and anyone who makes stuff for the web are welcome.</p>'),(33,'<p>We will be touching on all the technologies that we use in our daily work. These include, HTML, CSS, JavaScript, JQuery, Mobile Web, PHP, MySQL, APIs, JSON, Open Data, Python, etc.</p>'),(34,'<p>We are meeting on the first or second Tuesday of every month. Our next session will be on Tuesday, the 5th of November 2013 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n          <p>With a 30min talk/discussion of a learning topic. The rest of the time is for hacking.  We will continue to collaborate remotely outside the fixed session.</p>\r\n        </div>'),(35,' <p>Contact: <a href=\"mailto:info@codehub.org.uk\">info@codehub.org.uk</a></p>'),(37,' <p>\r\n       ..is hopefully going to grow soon. We have some ideas for that, one of them is to have member profiles. We created these as a test:\r\n        <a href=\"/profile-gicela.html\">Gicela</a>, <a href=\"profile-sam.html\">Sam</a>, <a href=\"profile-katja.html\">Katja</a>\r\n       </p>'),(38,'<p><strong>Katja (<a href=\"https://twitter.com/kdurrani\" title=\"Follow Katja on Twitter\">@kdurrani</a>)</strong>: I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I too keep learning new things all the time and I\'m loving it. The only thing is that working and learning from home can become a bit solitary, and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>'),(39,'    <p><strong>Gicela (<a href=\"http://twitter.com/gicela\" title=\"Follow Gicela on Twitter\">@gicela</a>)</strong>: I\'ve been developing web sites since the\r\n       mid 1990\'s and have never stopped learning. Pretty much everythig I know I have\r\n       learnt it from other people. I feel we need to create a hub of learners where we \r\n      can meet, share knowledge and collaborate with each other. </p>'),(41,'<p>Sample Content</p>'),(42,'<p>Some more content</p>'),(45,'<p>I\'ve been developing web sites since the mid 1990\'s and have never stopped learning. Pretty much everything I know I have learnt it from other people. I feel we need to create a hub of learners where we can meet, share knowledge and collaborate with each other.</p>'),(47,'<p>Adding some content here..</p>'),(48,' <li>HTML,</li><li>CSS,</li><li>Javascript,</li><li> PHP,</li><li> Wordpress,</li><li> Mobile Development</li>'),(49,'<li>Javscript,</li><li>Python,</li><li>Java,</li><li>Git</li>'),(50,'<p>What happens if I change this?</p>'),(51,'<li>HTML,</li><li>CSS,</li><li>PHP,</li><li>Javascript,</li><li>SilverStripe</li>\r\n\r\n'),(52,'<li>Javascript,</li><li>Python,</li><li>Git</li>'),(53,'<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I too keep learning new things all the time and I\'m loving it. The only thing is that working and learning from home can become a bit solitary, and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>'),(54,'<li>HTML,</li><li>CSS,</li><li>Javascript,</li><li> PHP,</li><li> Wordpress,</li><li> Mobile Development</li>'),(55,'<p>I\'ve been developing web sites since the mid 1990\'s and have never stopped learning. Pretty much everything I know I have learnt it from other people. I feel we need to create a hub of learners where we can meet, share knowledge and collaborate with each other.</p>'),(56,'<li>Javscript,</li><li>Python,</li><li>Java </li>'),(57,'<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I too keep learning new things all the time and I\'m loving it. The only thing is that working and learning from home can become a bit solitary, and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>'),(58,'<p>After a Fine Art degree, I started a business with a partner in \'96 writing front-end code for the emerging web industry in London. I\'ve learned (and continue to learn) everything on the job from practical examples, or from simply having to get from A to B. Working from home now in Gloucestershire is great but I miss learning from the people around me, so am excited to be involved with CodeHub</p>'),(59,'<li>html,</li>\r\n<li>css,</li>\r\n<li> basic php,</li>\r\n<li>basic javascript,</li>\r\n<li> Wordpress,</li>\r\n<li>graphic design,</li>\r\n<li>information architecture</li>'),(60,'<li>php,</li>\r\n<li>javascript,</li>\r\n<li>jQuery,</li>\r\n<li>Git,</li>\r\n<li>grep</li>'),(61,'<p>text - about me</p>'),(62,'<li>Skill 1,</li><li>Skill 2</li>'),(63,'<li>Skill 1,</li><li>Skill 2</li>'),(64,'<p>text - about me</p>'),(65,'<li>Skill 1,</li><li>Skill 2</li>'),(66,'<li>Skill 1,</li><li>Skill 2</li>'),(67,'<p>We are meeting on the first or second Tuesday of every month. Our next session will be on Tuesday, the 11th of February 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n          <p>With a 30min talk/discussion of a learning topic. The rest of the time is for hacking.  We will continue to collaborate remotely outside the fixed session.</p>\r\n        </div>'),(68,'<h2>Data Visualisation</h2>\r\n<p>We have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\"</p>\r\n<h2>Following a JavaScript Roadmap</h2>\r\n<p>We started studying Javascript according to this post. <a href=\"http://javascriptissexy.com/how-to-learn-javascript-properly/\">http://javascriptissexy.com/how-to-learn-javascript-properly/</a></p>\r\n<p>There were varying levels of commitment, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.</p>\r\n<h2>Getting set up with Git and GitHub</h2>\r\n<p>Rob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>'),(69,'<h2>Data Visualisation</h2>\r\n<p>We have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\"</p>\r\n<h2>Following a JavaScript Roadmap</h2>\r\n<p>We started studying Javascript according to this post. <a href=\"http://javascriptissexy.com/how-to-learn-javascript-properly/\">http://javascriptissexy.com/how-to-learn-javascript-properly/</a></p>\r\n<p>Commitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.</p>\r\n<h2>Getting set up with Git and GitHub</h2>\r\n<p>Rob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>'),(70,'<h2>CodeHub website</h2>\r\n<p>This website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.</p>\r\n<h2>Data Visualisation</h2>\r\n<p>We have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\"</p>\r\n<h2>Following a JavaScript Roadmap</h2>\r\n<p>We started studying Javascript according to this post. <a href=\"http://javascriptissexy.com/how-to-learn-javascript-properly/\">http://javascriptissexy.com/how-to-learn-javascript-properly/</a></p>\r\n<p>Commitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.</p>\r\n<h2>Getting set up with Git and GitHub</h2>\r\n<p>Rob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>'),(71,'<h2>CodeHub website</h2>\r\n<p>This website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.</p>\r\n<h2>Data Visualisation</h2>\r\n<p>We have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\"</p>'),(72,'<h2>Following a JavaScript Roadmap</h2>\r\n<p>We started studying Javascript according to this post. <a href=\"http://javascriptissexy.com/how-to-learn-javascript-properly/\">http://javascriptissexy.com/how-to-learn-javascript-properly/</a></p>\r\n<p>Commitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.</p>\r\n<h2>Getting set up with Git and GitHub</h2>\r\n<p>Rob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.</p>'),(73,'<h2>Projects</h2>\r\n<p> </p>\r\n<h3>CodeHub website</h3>\r\n<p>This website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.</p>\r\n<h3>Data Visualisation</h3>\r\n<p>We have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\"</p>'),(74,'<h3>Following a JavaScript Roadmap</h3>\r\n<p>We started studying Javascript according to this post. <a href=\"http://javascriptissexy.com/how-to-learn-javascript-properly/\">http://javascriptissexy.com/how-to-learn-javascript-properly/</a></p>\r\n<p>Commitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.</p>\r\n<h3>Getting set up with Git and GitHub</h3>\r\n<p>Rob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.</p>'),(75,'<h3>Following a JavaScript Roadmap</h3>\r\n<p>We started studying Javascript according to this post. <a href=\"http://javascriptissexy.com/how-to-learn-javascript-properly/\">http://javascriptissexy.com/how-to-learn-javascript-properly/</a>Commitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.</p>\r\n<h3>Getting set up with Git and GitHub</h3>\r\n<p>Rob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.</p>'),(76,'<h3>Following a JavaScript Roadmap</h3>\r\n<p>We started studying Javascript according to this post. <a href=\"http://javascriptissexy.com/how-to-learn-javascript-properly/\">http://javascriptissexy.com/how-to-learn-javascript-properly/</a><br />Commitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.</p>\r\n<h3>Getting set up with Git and GitHub</h3>\r\n<p>Rob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.</p>'),(77,'<h2>Projects</h2>\r\n<p> </p>\r\n<h2>CodeHub website</h2>\r\n<p>This website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.</p>\r\n<h2>Data Visualisation</h2>\r\n<p>We have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\"</p>'),(78,'<h2>Following a JavaScript Roadmap</h2>\r\n<p>We started studying Javascript according to this post. <a href=\"http://javascriptissexy.com/how-to-learn-javascript-properly/\">http://javascriptissexy.com/how-to-learn-javascript-properly/</a><br />Commitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.</p>\r\n<h2>Getting set up with Git and GitHub</h2>\r\n<p>Rob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.</p>'),(79,'<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I have mostly been working from home, which can become a bit solitary and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>'),(80,'<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, JQuery, Mobile Web, PHP, MySQL, APIs, JSON, Open Data, Python, etc.</p>'),(81,'<p>We are meeting on the first or second Tuesday of every month. Our next session will be on Tuesday, the 11th of February 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that attendees can follow. We might also collaborate on a project. We will strive to document every session on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>\r\n</p>'),(83,''),(84,'<p>You can email us on <a href=\"mailto: info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>'),(85,'<h2>Projects</h2>\r\n<p> </p>\r\n<h2>CodeHub website</h2>\r\n<p>This website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.</p>\r\n<h2>Data Visualisation</h2>\r\n<p>We have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".</p>'),(86,'<p>We are meeting on the first or second Tuesday of every month. Our next session will be on Tuesday, the 11th of February 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that attendees can follow. We might also collaborate on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>\r\n'),(87,'<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome.</p>'),(88,'<p>We are meeting on the first or second Tuesday of every month. Our next session will be on Tuesday, the 11th of February 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n'),(89,'<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, JQuery, Mobile Web, PHP, MySQL, APIs, JSON, Open Data, Python, etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that attendees can follow. We might also collaborate on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>'),(90,'<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto: info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>'),(91,'<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, JQuery, Mobile Web, PHP, MySQL, APIs, JSON, Open Data, Python, etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>'),(92,'<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data,etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>'),(93,'<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>'),(94,'<h2>Projects</h2>\r\n<p> </p>\r\n<h2>CodeHub website</h2>\r\n<p>This website is in itself an ongoing project. It is currently running on concrete5 and the code is on <a href=\"https://github.com/CodeHubOrg/CodeHub\">github</a>. Suggestions for new features etc. welcome.</p>\r\n<h2>Data Visualisation</h2>\r\n<p>We have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".</p>'),(95,'<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>'),(96,'<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 11th of February 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n'),(97,'<h2>Projects</h2>\r\n<p> </p>\r\n<h2>Workshops</h2>\r\n<p>Each month we will decide what topics to tackle at the next meetup. For the upcoming one it will be Unix File Permissions and Ownership, as well as Chrome Dev Tools.</p>\r\n<h2>CodeHub website</h2>\r\n<p>This website is in itself an ongoing project. It is currently running on concrete5 and the code is on <a href=\"https://github.com/CodeHubOrg/CodeHub\">github</a>. Suggestions for new features etc. welcome.</p>\r\n<h2>Data Visualisation</h2>\r\n<p>We have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".</p>'),(98,'<p>Some core members are still missing at the moment! Also, we are planning to add filtering for topics/skills.</p>'),(99,'<p>Some core members are still missing at the moment! Also, we are planning to add filtering for topics/skills. (And more members, of course.)</p>'),(100,'<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. For the upcoming one it will be Unix File Permissions and Ownership, as well as Chrome Dev Tools.\r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\nData Visualisation\r\n  </div>\r\n</div>\r\n\r\n<div class=\"learnings\">\r\n  <h2>Data Visualisation</h2>\r\n  <div class=\"inner margins-vert\">\r\nWe have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".\r\n  </div>\r\n</div>'),(101,'<h2>Projects</h2>'),(102,'<h2>Following a JavaScript Roadmap</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nWe started studying Javascript according to this post. http://javascriptissexy.com/how-to-learn-javascript-properly/\r\nCommitment levels varied, but I think we all got something out of it! We made a little quiz as specified in the post. We did this as a pair programming exercise, which was a great experience.\r\n  Some text\r\n  </div>\r\n</div>\r\n\r\n<h2>Getting set up with Git and GitHub</h2>\r\n<div class=\"inner\">\r\n  <div class=\"margins-vert\">\r\nRob talked us through the steps of creating a Git repository, adding user details, branching etc. We also set up accounts for everyone on Github, where they didn\'t exist yet, and also one for CodeHub.\r\n  </div>\r\n</div>'),(103,'<h2>Members</h2>'),(104,'<p>This page shows just some of our members but we plan to include profiles of all those who take part on a regular basis. We will also at some point add filtering for topics/skills.</p>'),(105,'<p>This page shows just some of our members but we plan to include profiles of all those who take part on a regular basis. We will also at some point add filtering for topics/skills.</p>'),(106,'<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. For the upcoming one it will be Unix File Permissions and Ownership, as well as Chrome Dev Tools.\r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n\r\n<div class=\"learnings\">\r\n  <h2>Data Visualisation</h2>\r\n  <div class=\"inner margins-vert\">\r\nWe have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".\r\n  </div>\r\n</div>'),(107,'<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I have mostly been working from home (although that has changed recently!), which can become a bit solitary and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>'),(108,'<p>We have a <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.</p>\r\n<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>.</p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>'),(111,'<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 11th of March 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n'),(110,'<p>This page shows just some of our members but we plan to include profiles of all those who take part on a regular basis. We will also at some point add filtering for topics/skills.</p>'),(112,'<p>I have been fascinated by the web since uploading my first HTML file in 2000 and creating a personal website. I have now been developing for the web professionally for over 5 years. I have mostly been working from home (although that has changed recently!), which can become a bit solitary and for long stretches there is no feedback. So teaming up with others in a similar situation seems a good idea!</p>'),(113,'<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of April 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n'),(114,'<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. \r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n\r\n<div class=\"learnings\">\r\n  <h2>Data Visualisation</h2>\r\n  <div class=\"inner margins-vert\">\r\nWe have looked at Data Sets to do with Bristol, and are currently looking to create a map of \"abandoned shopping trolleys in Bristol rivers\".\r\n  </div>\r\n</div>'),(115,'<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 13th of May 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n'),(116,'<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 13th of May 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We will also have some evening sessions in the future, and will start with a social meetup on the 29th of April at 7pm.</p>\r\n'),(117,'<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 10th of June 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n'),(118,'<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of July 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n'),(119,'<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 8th of July 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n\r\n'),(120,'<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 14th of October 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We have however an evening workshop on Testing taking place on Tuesday, 15th July (see the <a href=\"http://www.meetup.com/CodeHub-Bristol/events/182735742/\">Meetup page</a>), and there will be a one-day JavaScript workshop on Saturday, the 13th September 2014 - signup to be added to Meetup.com soon. </p>\r\n\r\n'),(121,'<p>CodeHub (OpenTechSchool Bristol) is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is part of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>'),(122,'<p>CodeHub is a place to code, share, and learn from one another. If you are developing for the web and wish to exchange knowledge and skills, come and join us. We are largely based within a 25 mile radius of Bristol/Bath, but anyone welcome. CodeHub is also a chapter of <a href=\"http://www.opentechschool.org/\">OpenTechSchool</a>. </p>'),(123,'<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 14th of October 2014 from 10am till 2pm, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We will also be running a <a href=\"http://www.meetup.com/CodeHub-Bristol/events/196402012/\">one-day JavaScript workshop</a> on Saturday, the 13th September 2014</p>\r\n\r\n'),(124,'<p>We are meeting on the second Tuesday of every month. After a summer break, our next morning session will be on Tuesday, the 11th of November 2014, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street.</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n'),(125,'<p>We are meeting on the second Tuesday of every month. Our next session will be on Tuesday, the 11th of November 2014, at <a href=\"http://wearebigchill.com/venues/bristol/\">The Big Chill</a> in Small Street. Unlike previous sessions, this will most likely take place in the evening.</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n'),(126,'<p>We are normally meeting on the second Tuesday of every month. Our next session however will be on Thursday, the 4th of December 2014, at <a href=\"http://www.yha.org.uk/hostel/bristol\">YHA Bristol</a> at Narrow Quay. Unlike previous sessions, this will take place in the evening  (at 7pm).</p>\r\n<p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a>. \r\n\r\n'),(127,'<p>We are normally meeting once a month, and also run hack nights on Tuesday evenings roughly every two weeks.</p><p>We also occasionally do evening workshops. Please check our <a href=\"http://meetup.com/codehub-bristol\">Meetup Page</a></p>\r\n\r\n'),(128,'<p>We will be touching on technologies that we use in our daily work: HTML, CSS, JavaScript, PHP, Git, Python, APIs, Open Data etc.</p>\r\n<p>There will be presentations by CodeHub members or invited speakers. The presentations will normally include practical exercises that participants can follow. We might also work together on a project. Documentation of what we learn will be on our <a href=\"http://codehuborg.github.io\">GitHub Pages</a>.</p>\r\n<p>There are a few more places where you can find us on the web:</p>\r\n<ul>\r\n<li>\r\nOur <a href=\"http://meetup.com/codehub-bristol\">Meetup Group</a> that you can join, and where our meetings will be announced.\r\n</li>\r\n  <li>\r\n    The <a href=\"http://discourse.codehub.org.uk\">CodeHub Discourse</a> for suggestions for talks and topics, posting resources etc </li>\r\n   <li>\r\nand our <a href=\"http://github.com/CodeHubOrg\">GitHub Account</a> with repos of our sites and workshops\r\n   </li>\r\n\r\n</ul>'),(129,'<p>You can email us on <a href=\"mailto:info@codehub.org\">info@codehub.org.uk</a>, or tweet to <a href=\"http://twitter.com/codehubbs\">@CodeHubBs</a>, or contact us through the Meetup group. </p>\r\n<p>You can also get in touch with <a href=\"/profile/2\">Gicela</a> or <a href=\"/profile/1\">Katja</a> who usually organise the meetings.</p>'),(130,'<div class=\"learnings\">\r\n  <h2>Workshops</h2>\r\n  <div class=\"inner margins-vert\">\r\nEach month we will decide what topics to tackle at the next meetup. \r\n  </div>\r\n</div>\r\n\r\n\r\n<div class=\"learnings\">\r\n  <h2>CodeHub Website</h2>\r\n  <div class=\"inner margins-vert\">\r\nThis website is in itself an ongoing project. It is currently running on concrete5 and the code is on github. Suggestions for new features etc. welcome.\r\n  </div>\r\n</div>\r\n'),(131,'<p>Welcome, thanks for contributing to the codehub website.</p>');
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDashboardNewsflowLatest`
--

DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

LOCK TABLES `btDashboardNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDashboardNewsflowLatest` VALUES (8,'A'),(9,'B'),(12,'C');
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNav`
--

DROP TABLE IF EXISTS `btDateNav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNav`
--

LOCK TABLES `btDateNav` WRITE;
/*!40000 ALTER TABLE `btDateNav` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDateNav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFlashContent`
--

DROP TABLE IF EXISTS `btFlashContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFlashContent`
--

LOCK TABLES `btFlashContent` WRITE;
/*!40000 ALTER TABLE `btFlashContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFlashContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBook`
--

DROP TABLE IF EXISTS `btGuestBook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBook`
--

LOCK TABLES `btGuestBook` WRITE;
/*!40000 ALTER TABLE `btGuestBook` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBookEntries`
--

DROP TABLE IF EXISTS `btGuestBookEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBookEntries`
--

LOCK TABLES `btGuestBookEntries` WRITE;
/*!40000 ALTER TABLE `btGuestBookEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBookEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btJeremeTweetcrete`
--

DROP TABLE IF EXISTS `btJeremeTweetcrete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btJeremeTweetcrete` (
  `bID` int(10) unsigned NOT NULL,
  `showUsername` int(10) unsigned DEFAULT '1',
  `showAuthorTimeline` int(10) unsigned DEFAULT '1',
  `showTimestamp` int(10) unsigned DEFAULT '1',
  `showReplies` int(10) unsigned DEFAULT '0',
  `showAvatar` int(10) unsigned DEFAULT '1',
  `showAvatarTimeline` int(10) unsigned DEFAULT '1',
  `showFollowLink` int(10) unsigned DEFAULT '1',
  `showRetweets` int(10) unsigned DEFAULT '0',
  `displayLimit` int(10) unsigned DEFAULT '3',
  `userName` varchar(255) DEFAULT NULL,
  `userID` int(10) unsigned DEFAULT NULL,
  `oAuthToken` varchar(255) DEFAULT NULL,
  `oAuthTokenSecret` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(255) DEFAULT 'F j, Y',
  `requestMultiplier` int(10) unsigned DEFAULT '1',
  `showAuthenticatedUserInTimeline` int(10) unsigned DEFAULT '1',
  `showHashAndUserData` int(11) DEFAULT '1',
  `timelineCacheTTL` int(10) unsigned DEFAULT '300',
  `showTimestampInWords` int(10) unsigned DEFAULT '300',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btJeremeTweetcrete`
--

LOCK TABLES `btJeremeTweetcrete` WRITE;
/*!40000 ALTER TABLE `btJeremeTweetcrete` DISABLE KEYS */;
INSERT INTO `btJeremeTweetcrete` VALUES (43,0,1,1,1,0,1,1,1,3,'kdurrani',24833629,'24833629-2B50laf9SLlAQySaVQMsXcqwDrxXgEvfR3nkw1Uxk','JqTNrSqB3dKsflTQeGinil7LZ4jsvsAmM9o6e1mIdo9HE','F j, Y',NULL,NULL,1,1,1);
/*!40000 ALTER TABLE `btJeremeTweetcrete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btJeremeTweetcreteUserOrHashSettings`
--

DROP TABLE IF EXISTS `btJeremeTweetcreteUserOrHashSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btJeremeTweetcreteUserOrHashSettings` (
  `assertOrder` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`assertOrder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btJeremeTweetcreteUserOrHashSettings`
--

LOCK TABLES `btJeremeTweetcreteUserOrHashSettings` WRITE;
/*!40000 ALTER TABLE `btJeremeTweetcreteUserOrHashSettings` DISABLE KEYS */;
INSERT INTO `btJeremeTweetcreteUserOrHashSettings` VALUES (2,43,1,'kdurrani');
/*!40000 ALTER TABLE `btJeremeTweetcreteUserOrHashSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
INSERT INTO `btNavigation` VALUES (15,'display_asc','top',0,0,'none','enough',0,0),(17,'display_asc','second_level',0,0,'none','enough',0,0),(19,'display_asc','second_level',0,0,'none','enough',0,0);
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
INSERT INTO `btPageList` VALUES (44,0,'display_asc',125,0,0,0,1,0,0,'','',0,0,0),(46,0,'display_asc',135,1,0,0,1,0,0,'','',0,0,0);
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPlainText`
--

DROP TABLE IF EXISTS `btPlainText`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPlainText` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPlainText`
--

LOCK TABLES `btPlainText` WRITE;
/*!40000 ALTER TABLE `btPlainText` DISABLE KEYS */;
INSERT INTO `btPlainText` VALUES (27,'Is CodeHub for you? '),(30,''),(31,'What are we learning at CodeHub?'),(32,'Where and when do we meet?'),(36,'This Site'),(40,'Organisers'),(82,'Getting in touch');
/*!40000 ALTER TABLE `btPlainText` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshow`
--

DROP TABLE IF EXISTS `btSlideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshow`
--

LOCK TABLES `btSlideshow` WRITE;
/*!40000 ALTER TABLE `btSlideshow` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSlideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshowImg`
--

DROP TABLE IF EXISTS `btSlideshowImg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshowImg`
--

LOCK TABLES `btSlideshowImg` WRITE;
/*!40000 ALTER TABLE `btSlideshowImg` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSlideshowImg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-28 16:19:53
