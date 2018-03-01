CREATE DATABASE  IF NOT EXISTS `ense470` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ense470`;
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
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL,
  `analyst_ID` bigint(20) NOT NULL,
  `approver_ID` bigint(20) NOT NULL,
  `requester_ID` bigint(20) NOT NULL,
  `software_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_e7kco0mvtg09pgt9gqgnqmku9` (`analyst_ID`),
  KEY `FK_pqbl2jm3ymitpi41sxhso30sr` (`approver_ID`),
  KEY `FK_soduxm9xwmelllgf4xq7clc2p` (`requester_ID`),
  KEY `FK_gobadjveulb77ue0blxrm9ca3` (`software_ID`),
  CONSTRAINT `FK_e7kco0mvtg09pgt9gqgnqmku9` FOREIGN KEY (`analyst_ID`) REFERENCES `user` (`ID`),
  CONSTRAINT `FK_gobadjveulb77ue0blxrm9ca3` FOREIGN KEY (`software_ID`) REFERENCES `software` (`ID`),
  CONSTRAINT `FK_pqbl2jm3ymitpi41sxhso30sr` FOREIGN KEY (`approver_ID`) REFERENCES `user` (`ID`),
  CONSTRAINT `FK_soduxm9xwmelllgf4xq7clc2p` FOREIGN KEY (`requester_ID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `softwareapprover`
--

DROP TABLE IF EXISTS `softwareapprover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `softwareapprover` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `approver_ID` bigint(20) NOT NULL,
  `software_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_mr5m7me10xd286jb1r113cw31` (`approver_ID`),
  KEY `FK_n1alojwu0i4pvh7qxj3u64u3b` (`software_ID`),
  CONSTRAINT `FK_mr5m7me10xd286jb1r113cw31` FOREIGN KEY (`approver_ID`) REFERENCES `user` (`ID`),
  CONSTRAINT `FK_n1alojwu0i4pvh7qxj3u64u3b` FOREIGN KEY (`software_ID`) REFERENCES `software` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softwareapprover`
--

LOCK TABLES `softwareapprover` WRITE;
/*!40000 ALTER TABLE `softwareapprover` DISABLE KEYS */;
INSERT INTO `softwareapprover` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,5),(7,7,6),(8,8,7),(9,9,8),(10,10,9),(11,11,10),(12,12,11),(13,13,12),(14,14,13),(15,15,14),(16,16,15),(17,17,16),(18,18,17),(19,19,18),(20,20,19),(21,21,20),(22,22,21),(23,23,22),(24,24,23),(25,25,24),(26,26,25),(27,27,26),(28,28,27),(29,29,28),(30,30,29),(31,31,29),(32,32,30),(33,33,30),(34,32,31),(35,33,31),(36,34,32),(37,35,33),(38,36,34),(39,37,35),(40,38,36),(41,39,37),(42,40,38),(43,41,39),(44,42,40),(45,43,41),(46,44,42),(47,45,43),(48,46,44),(49,47,45),(50,48,46),(51,49,47),(52,50,48),(53,31,49),(54,30,49),(55,2,50),(56,51,51),(57,52,52),(58,53,53),(59,54,54),(60,55,55),(61,56,56),(62,57,57),(63,58,58),(64,59,59),(65,60,60),(66,61,61),(67,62,62),(68,63,63),(69,64,64),(70,65,65),(71,66,66),(72,67,67),(73,68,68),(74,69,69),(75,70,70),(76,71,71),(77,72,72),(78,33,73),(79,32,73),(80,73,74);
/*!40000 ALTER TABLE `softwareapprover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `password` varchar(32) NOT NULL,
  `type` char(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_jreodf78a7pl5qidfh43axdfb` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Chester@gmail.com','Chester Field','827ccb0eea8a706c4c34a16891f84e7b','A','Chester'),(2,'Ida@gmail.com','Ida Claire','827ccb0eea8a706c4c34a16891f84e7b','A','Ida'),(3,'Amanda@gmail.com','Amanda Huginkiss','827ccb0eea8a706c4c34a16891f84e7b','A','Amanda'),(4,'Les@gmail.com','Les Wynan','827ccb0eea8a706c4c34a16891f84e7b','A','Les'),(5,'Tara@gmail.com','Tara Dactyl','827ccb0eea8a706c4c34a16891f84e7b','A','Tara'),(6,'Claire@gmail.com','Claire Voyant','827ccb0eea8a706c4c34a16891f84e7b','A','Claire'),(7,'Will@gmail.com','Will Tickelu','827ccb0eea8a706c4c34a16891f84e7b','A','Will'),(8,'Polly@gmail.com','Polly Graff','827ccb0eea8a706c4c34a16891f84e7b','A','Polly'),(9,'Stan@gmail.com','Stan Dupp','827ccb0eea8a706c4c34a16891f84e7b','A','Stan'),(10,'Gene@gmail.com','Gene Poole','827ccb0eea8a706c4c34a16891f84e7b','A','Gene'),(11,'Neil@gmail.com','Neil Down','827ccb0eea8a706c4c34a16891f84e7b','A','Neil'),(12,'Brock@gmail.com','Brock Lee','827ccb0eea8a706c4c34a16891f84e7b','A','Brock'),(13,'Dot@gmail.com','Dot Matricks','827ccb0eea8a706c4c34a16891f84e7b','A','Dot'),(14,'Goldie@gmail.com','Goldie Locke','827ccb0eea8a706c4c34a16891f84e7b','A','Goldie'),(15,'Ally@gmail.com','Ally Katz','827ccb0eea8a706c4c34a16891f84e7b','A','Ally'),(16,'Leah@gmail.com','Leah Tarde','827ccb0eea8a706c4c34a16891f84e7b','A','Leah'),(17,'DrChris@gmail.com','Dr. Chris P. Bacon','827ccb0eea8a706c4c34a16891f84e7b','A','DrChris'),(18,'Sue@gmail.com','Sue Flay','827ccb0eea8a706c4c34a16891f84e7b','A','Sue'),(19,'Derry@gmail.com','Derry Yare','827ccb0eea8a706c4c34a16891f84e7b','A','Derry'),(20,'Krystal@gmail.com','Krystal Ball','827ccb0eea8a706c4c34a16891f84e7b','A','Krystal'),(21,'Honey@gmail.com','Honey Potts','827ccb0eea8a706c4c34a16891f84e7b','A','Honey'),(22,'Seymore@gmail.com','Seymore Butts','827ccb0eea8a706c4c34a16891f84e7b','A','Seymore'),(23,'Bud@gmail.com','Bud Light','827ccb0eea8a706c4c34a16891f84e7b','A','Bud'),(24,'Filet@gmail.com','Filet Minyon','827ccb0eea8a706c4c34a16891f84e7b','A','Filet'),(25,'Robyn@gmail.com','Robyn Banks','827ccb0eea8a706c4c34a16891f84e7b','A','Robyn'),(26,'Dyl@gmail.com','Dyl Pickel','827ccb0eea8a706c4c34a16891f84e7b','A','Dyl'),(27,'Paige@gmail.com','Paige Turner','827ccb0eea8a706c4c34a16891f84e7b','A','Paige'),(28,'DrJed@gmail.com','Dr. Jed I. Knight','827ccb0eea8a706c4c34a16891f84e7b','A','DrJed'),(29,'Justin@gmail.com','Justin Case','827ccb0eea8a706c4c34a16891f84e7b','A','Justin'),(30,'Crystal@gmail.com','Crystal Ball','827ccb0eea8a706c4c34a16891f84e7b','A','Crystal'),(31,'Pea@gmail.com','Pea Pu','827ccb0eea8a706c4c34a16891f84e7b','A','Pea'),(32,'AlDente@gmail.com','Al Dente','827ccb0eea8a706c4c34a16891f84e7b','A','AlDente'),(33,'Douglas@gmail.com','Douglas Furr','827ccb0eea8a706c4c34a16891f84e7b','A','Douglas'),(34,'Biff@gmail.com','Biff Wellington','827ccb0eea8a706c4c34a16891f84e7b','A','Biff'),(35,'Art@gmail.com','Art Dekko','827ccb0eea8a706c4c34a16891f84e7b','A','Art'),(36,'Clay@gmail.com','Clay Potts','827ccb0eea8a706c4c34a16891f84e7b','A','Clay'),(37,'AlFalfa@gmail.com','Al Falfa','827ccb0eea8a706c4c34a16891f84e7b','A','AlFalfa'),(38,'Frank@gmail.com','Frank Furter','827ccb0eea8a706c4c34a16891f84e7b','A','Frank'),(39,'Harry@gmail.com','Harry Beard','827ccb0eea8a706c4c34a16891f84e7b','A','Harry'),(40,'Anna@gmail.com','Anna Conda','827ccb0eea8a706c4c34a16891f84e7b','A','Anna'),(41,'JustinThyme@gmail.com','Justin Thyme','827ccb0eea8a706c4c34a16891f84e7b','A','JustinThyme'),(42,'Ollie@gmail.com','Ollie Gark','827ccb0eea8a706c4c34a16891f84e7b','A','Ollie'),(43,'Pete@gmail.com','Pete Moss','827ccb0eea8a706c4c34a16891f84e7b','A','Pete'),(44,'Rusty@gmail.com','Rusty Foord','827ccb0eea8a706c4c34a16891f84e7b','A','Rusty'),(45,'Tom@gmail.com','Tom Foolery','827ccb0eea8a706c4c34a16891f84e7b','A','Tom'),(46,'Warren@gmail.com','Warren Peace','827ccb0eea8a706c4c34a16891f84e7b','A','Warren'),(47,'Linda@gmail.com','Linda Hand','827ccb0eea8a706c4c34a16891f84e7b','A','Linda'),(48,'Lotta@gmail.com','Lotta Noyes','827ccb0eea8a706c4c34a16891f84e7b','A','Lotta'),(49,'Barb@gmail.com','Barb Wyre','827ccb0eea8a706c4c34a16891f84e7b','A','Barb'),(50,'Bunsen@gmail.com','Bunsen Berner','827ccb0eea8a706c4c34a16891f84e7b','A','Bunsen'),(51,'Ginger@gmail.com','Ginger Vitus','827ccb0eea8a706c4c34a16891f84e7b','A','Ginger'),(52,'Jack@gmail.com','Jack Uzzi','827ccb0eea8a706c4c34a16891f84e7b','A','Jack'),(53,'Mason@gmail.com','Mason Jarr','827ccb0eea8a706c4c34a16891f84e7b','A','Mason'),(54,'TyKuhn@gmail.com','Ty Kuhn','827ccb0eea8a706c4c34a16891f84e7b','A','TyKuhn'),(55,'Wazziz@gmail.com','Wazziz Naime','827ccb0eea8a706c4c34a16891f84e7b','A','Wazziz'),(56,'Rod@gmail.com','Rod Curtains','827ccb0eea8a706c4c34a16891f84e7b','A','Rod'),(57,'Kayne@gmail.com','Kayne Kun','827ccb0eea8a706c4c34a16891f84e7b','A','Kayne'),(58,'Rocky@gmail.com','Rocky Rhodes','827ccb0eea8a706c4c34a16891f84e7b','A','Rocky'),(59,'Sandy@gmail.com','Sandy Beech','827ccb0eea8a706c4c34a16891f84e7b','A','Sandy'),(60,'SueVlaki@gmail.com','Sue Vlaki','827ccb0eea8a706c4c34a16891f84e7b','A','SueVlaki'),(61,'Alan@gmail.com','Alan Rench','827ccb0eea8a706c4c34a16891f84e7b','A','Alan'),(62,'Anne@gmail.com','Anne Thrax','827ccb0eea8a706c4c34a16891f84e7b','A','Anne'),(63,'Annita@gmail.com','Annita Job','827ccb0eea8a706c4c34a16891f84e7b','A','Annita'),(64,'ArtMajor@gmail.com','Art Major','827ccb0eea8a706c4c34a16891f84e7b','A','ArtMajor'),(65,'Tess@gmail.com','Tess Tamoni','827ccb0eea8a706c4c34a16891f84e7b','A','Tess'),(66,'AlPacca@gmail.com','Al Pacca','827ccb0eea8a706c4c34a16891f84e7b','A','AlPacca'),(67,'ArtChoake@gmail.com','Art A. Choake','827ccb0eea8a706c4c34a16891f84e7b','A','ArtChoake'),(68,'Benny@gmail.com','Benny Fitz','827ccb0eea8a706c4c34a16891f84e7b','A','Benny'),(69,'AnnaNimmity@gmail.com','Anna Nimmity','827ccb0eea8a706c4c34a16891f84e7b','A','AnnaNimmity'),(70,'Mike@gmail.com','Mike Raffone','827ccb0eea8a706c4c34a16891f84e7b','A','Mike'),(71,'Sonny@gmail.com','Sonny Day','827ccb0eea8a706c4c34a16891f84e7b','A','Sonny'),(72,'Wil@gmail.com','Wil Doolittle','827ccb0eea8a706c4c34a16891f84e7b','A','Wil'),(73,'Gladys@gmail.com','Gladys Dunn','827ccb0eea8a706c4c34a16891f84e7b','A','Gladys'),(74,'analyst@gmail.com','Analyst','827ccb0eea8a706c4c34a16891f84e7b','N','Analyst'),(75,'user@gmail.com','User','827ccb0eea8a706c4c34a16891f84e7b','U','User');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-01  0:33:45
