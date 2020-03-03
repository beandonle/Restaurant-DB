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
-- Table structure for table `eatIn`
--

DROP TABLE IF EXISTS `eatIn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eatIn` (
  `tableNum` int(11) NOT NULL,
  `orderID` varchar(20) NOT NULL,
  `partySize` int(11) NOT NULL,
  `gratuityCharge` float(5,2) DEFAULT NULL,
  PRIMARY KEY (`tableNum`,`orderID`),
  KEY `eatIn_fk2` (`orderID`),
  CONSTRAINT `eatIn_fk1` FOREIGN KEY (`tableNum`) REFERENCES `tableInfo` (`tableNum`),
  CONSTRAINT `eatIn_fk2` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eatIn`
--

LOCK TABLES `eatIn` WRITE;
/*!40000 ALTER TABLE `eatIn` DISABLE KEYS */;
INSERT INTO `eatIn` VALUES (60,'1202190100',8,16.61),(60,'1202190110',1,0.00),(61,'1202190107',2,0.00),(62,'1202190109',2,0.00),(63,'1202190101',1,0.00),(63,'1202190105',2,0.00),(64,'1202190102',2,0.00);
/*!40000 ALTER TABLE `eatIn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  2:50:43
