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
-- Table structure for table `togo`
--

DROP TABLE IF EXISTS `togo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `togo` (
  `orderID` varchar(20) NOT NULL,
  `orderStatus` varchar(20) NOT NULL,
  `orderMethod` varchar(20) NOT NULL,
  `pickUpTime` time DEFAULT NULL,
  `readyTime` time DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  UNIQUE KEY `togo_ck` (`orderMethod`,`pickUpTime`,`readyTime`),
  CONSTRAINT `togo_fk` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `togo`
--

LOCK TABLES `togo` WRITE;
/*!40000 ALTER TABLE `togo` DISABLE KEYS */;
INSERT INTO `togo` VALUES ('1202190103','READY','Phone','12:45:21','12:30:08'),('1202190104','READY','In-Person','14:32:31','14:31:27'),('1202190106','READY','Phone','13:45:01','13:35:48'),('1202190108','READY','In-Person','19:01:12','18:56:32');
/*!40000 ALTER TABLE `togo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  2:50:42
