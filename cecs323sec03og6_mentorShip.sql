-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: cecs-db01.coe.csulb.edu    Database: cecs323sec03og6
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mentorShip`
--

DROP TABLE IF EXISTS `mentorShip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentorShip` (
  `eID` varchar(20) NOT NULL,
  `sChefID` varchar(20) NOT NULL,
  `itemID` varchar(20) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`eID`,`sChefID`,`itemID`,`startDate`),
  KEY `mentorShip_fk1` (`itemID`),
  KEY `mentorShip_fk3` (`sChefID`),
  CONSTRAINT `mentorShip_fk1` FOREIGN KEY (`itemID`) REFERENCES `menuItem` (`itemID`),
  CONSTRAINT `mentorShip_fk2` FOREIGN KEY (`eID`) REFERENCES `sousChef` (`eID`),
  CONSTRAINT `mentorShip_fk3` FOREIGN KEY (`sChefID`) REFERENCES `sousChef` (`eID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentorShip`
--

LOCK TABLES `mentorShip` WRITE;
/*!40000 ALTER TABLE `mentorShip` DISABLE KEYS */;
INSERT INTO `mentorShip` VALUES ('0005','0007','001','2019-09-01','2019-10-01'),('0006','0007','002','2019-09-10','2019-10-10'),('0007','0005','003','2019-11-20','2019-12-20'),('0008','0005','004','2019-11-27','2019-12-27');
/*!40000 ALTER TABLE `mentorShip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  2:50:46
