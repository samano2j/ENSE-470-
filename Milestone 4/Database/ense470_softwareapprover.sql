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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-01  0:33:16
