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
-- Table structure for table `salaryStaff`
--

DROP TABLE IF EXISTS `salaryStaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaryStaff` (
  `eid` varchar(20) NOT NULL,
  `weeklyRate` float(7,2) NOT NULL,
  `healthCareBenefits` varchar(60) NOT NULL,
  PRIMARY KEY (`eid`),
  CONSTRAINT `salaryStaff_fk` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaryStaff`
--

LOCK TABLES `salaryStaff` WRITE;
/*!40000 ALTER TABLE `salaryStaff` DISABLE KEYS */;
INSERT INTO `salaryStaff` VALUES ('0001',1500.00,'Full Coverage'),('0002',1700.00,'Full Coverage'),('0003',1150.00,'Full Coverage'),('0004',1075.00,'Full Coverage'),('0005',800.00,'Co Pay'),('0006',775.00,'Co Pay'),('0007',750.00,'Co Pay'),('0008',775.00,'Co Pay'),('0009',600.00,'Deductible'),('0010',575.00,'Deductible'),('0011',600.00,'Deductible'),('0012',625.00,'Deductible'),('0013',615.00,'Deductible'),('0014',630.00,'Deductible'),('0015',610.00,'Deductible'),('0016',600.00,'Deductible');
/*!40000 ALTER TABLE `salaryStaff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  2:50:45
