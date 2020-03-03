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
-- Table structure for table `partTimeStaff`
--

DROP TABLE IF EXISTS `partTimeStaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partTimeStaff` (
  `eID` varchar(20) NOT NULL,
  `hourlyRate` float(4,2) NOT NULL,
  `hoursWorkedPerWeek` float(4,2) DEFAULT NULL,
  PRIMARY KEY (`eID`),
  CONSTRAINT `partTimeStaff_fk` FOREIGN KEY (`eID`) REFERENCES `employee` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partTimeStaff`
--

LOCK TABLES `partTimeStaff` WRITE;
/*!40000 ALTER TABLE `partTimeStaff` DISABLE KEYS */;
INSERT INTO `partTimeStaff` VALUES ('0017',15.00,40.00),('0018',15.00,40.00),('0019',16.00,40.00),('0020',16.25,40.00),('0021',15.00,40.00),('0022',15.00,40.00),('0023',15.00,40.00),('0024',15.00,40.00),('0025',15.00,40.00),('0026',15.00,40.00),('0027',15.00,40.00),('0028',15.00,40.00),('0029',20.00,40.00),('0030',21.00,40.00),('0031',21.50,40.00),('0032',22.00,40.00);
/*!40000 ALTER TABLE `partTimeStaff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  2:50:32
