-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ense470
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `software` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_7edfj69okafhsl1lvo0rywq8b` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software`
--

LOCK TABLES `software` WRITE;
/*!40000 ALTER TABLE `software` DISABLE KEYS */;
INSERT INTO `software` VALUES (1,'OMG','Operating Map of Gastropathy'),(2,'LOL','Limited Operating Liability '),(3,'TMI','Total Mastering of Incisions'),(4,'FOMO','Fixed Orthodontics Medical Operations'),(5,'LOTR','List of Transactions and Redactions'),(6,'NOOB','Northern Ozone & Ocean Biome'),(7,'','Alternative Sewage System'),(8,'ROFL','Relational Observation System Limited'),(9,'','Fast Family Finder'),(10,'SuX','Sustainable Xeriscaping'),(11,'WTF','World Terrain & Forestry '),(12,'WUT','Web Utility Table '),(13,'DUH','Data & Utility Heuristics'),(14,'OB1','Observation (version 1)'),(15,'NOOB','National Ozone Observatory Bot'),(16,'HUH','Heart Ultrasound Heatmaps'),(17,'FML','Free MySQL Logger'),(18,'HAHA','Heart, Abdomen, and Head Assessor'),(19,'WEWE','Waste Electronic & Wireless Equipment'),(20,'','Biosphere Air and Gas Interpreter'),(21,'ORLY','Original Record of Landscape and Yards'),(22,'SAM','Selected Analytical Methods'),(23,'','Storm Water Management'),(24,'PERS','Planetary Environmental Reference System'),(25,'SASEE','Snowmed Analyzer System Extended Edition'),(26,'PACS','Picture Archive and Communication System'),(27,'RIS','Radiology Information System'),(28,'DUMB','Download Urgent Medical Backups'),(29,'PIP','Pharmaceutical Information Program'),(30,'','Remote Health Checker'),(31,'','Remote Stroke Checker'),(32,'','Chronic Disease Management'),(33,'','Ambulance Schedule System'),(34,'','Care Manager'),(35,'LIS','Lab Information System'),(36,'PAT','Patient Admitter Tool'),(37,'','Spillage Locator Tool'),(38,'','Environmental Assessor Tool'),(39,'SAS','Statistical Analysis System'),(40,'SPSS','Statistical Package for Social Sciences'),(41,'','Cisco WebEx'),(42,'','Homecare System'),(43,'EMR','Electronic Medical Record (Viewer)'),(44,'','eHealthChart'),(45,'','Environmental Home Manager'),(46,'CDR','Clinical Data Repository '),(47,'NOOBS','Netcare Occupation & Observation Base System'),(48,'FAD','Find a Doctor'),(49,'DPV','Drug Profile Viewer'),(50,'AT-AT','Abdomen Tissue and Analysis Tool'),(51,'PCV','Provider Coverage Viewer'),(52,'TMI','Transcription Magic Interpreter'),(53,'','PharmaCare'),(54,'PRS','Provider Registry System'),(55,'ELSI','Electronic Lab System Interpolator'),(56,'','myeHealth (For British Columbia)'),(57,'','eReferral'),(58,'','myeHealth (For Alberta, Saskatchewan, Manitoba)'),(59,'','Cleaning Product Analyzer'),(60,'','Greenhouse Gas Analyzer'),(61,'PAD','Pollution Alerts Datamart'),(62,'WALDO','Water and Land Data Observer'),(63,'','Waste Observation System'),(64,'','myeHealth (For Ontario)'),(65,'','myeHealth (For Quebec)'),(66,'','myeHealth (For Yukon, Northwest Territories, Nunavut)'),(67,'WASSUP','Weather Analyzer Software System Unix Platform'),(68,'WOOKEEE','Weather and Ozone Observation Knowledge Emulator Enterprise Edition'),(69,'','Microstrategy'),(70,'','myeHealth (for New Brunswick, Prince Edward Island, Nova Scotia, Newfoundland and Labrador)'),(71,'','Clinical Admission Manager'),(72,'','Ambulance Supply System'),(73,'','TeleCare'),(74,'','Surgical Information System');
/*!40000 ALTER TABLE `software` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-01  0:33:16
