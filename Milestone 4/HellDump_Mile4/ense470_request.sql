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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-01  0:33:16
