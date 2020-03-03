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
-- Table structure for table `corporation`
--

DROP TABLE IF EXISTS `corporation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corporation` (
  `customerID` varchar(20) NOT NULL,
  `corporationName` varchar(20) NOT NULL,
  `organizationName` varchar(20) NOT NULL,
  `officeAddress` varchar(60) NOT NULL,
  PRIMARY KEY (`customerID`),
  CONSTRAINT `corporation_fk` FOREIGN KEY (`customerID`) REFERENCES `member` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporation`
--

LOCK TABLES `corporation` WRITE;
/*!40000 ALTER TABLE `corporation` DISABLE KEYS */;
INSERT INTO `corporation` VALUES ('JSJAT87R','Verizon','Sales','605 Nichols St. Ocean Springs, CA 39564'),('QPTIDI3C','SBC Global','Sales','264 Wakehurst St. Waltham, CA 02453'),('XLN1LOX4','SBC Global','Human Resources','264 Wakehurst St. Waltham, CA 02453');
/*!40000 ALTER TABLE `corporation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  2:50:34
