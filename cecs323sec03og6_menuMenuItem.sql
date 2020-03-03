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
-- Table structure for table `menuMenuItem`
--

DROP TABLE IF EXISTS `menuMenuItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuMenuItem` (
  `menuID` varchar(20) NOT NULL,
  `itemID` varchar(20) NOT NULL,
  `itemPrice` float(5,2) NOT NULL,
  `size` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`menuID`,`itemID`),
  KEY `menuMenuItem_fk2` (`itemID`),
  CONSTRAINT `menuMenuItem_fk1` FOREIGN KEY (`menuID`) REFERENCES `menu` (`menuID`),
  CONSTRAINT `menuMenuItem_fk2` FOREIGN KEY (`itemID`) REFERENCES `menuItem` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuMenuItem`
--

LOCK TABLES `menuMenuItem` WRITE;
/*!40000 ALTER TABLE `menuMenuItem` DISABLE KEYS */;
INSERT INTO `menuMenuItem` VALUES ('001','001',4.50,'Small'),('001','002',3.50,'Small'),('001','003',5.80,'Small'),('001','004',4.50,'Small'),('001','005',8.50,'Bowl'),('001','006',8.75,'Bowl'),('001','007',8.50,'Bowl'),('001','008',7.50,'Bowl'),('001','010',10.25,'Large'),('001','011',10.25,'Large'),('001','012',10.25,'Large'),('001','013',10.25,'Large'),('001','014',10.90,'Large'),('001','015',11.25,'Large'),('001','016',11.25,'Large'),('001','017',11.25,'Large'),('001','018',11.50,'Large'),('001','019',10.90,'Large'),('001','020',10.70,'Large'),('001','021',10.70,'Large'),('001','022',10.70,'Large'),('001','023',11.10,'Large'),('001','024',11.10,'Large'),('001','025',10.70,'Large'),('001','026',10.70,'Large'),('001','027',10.70,'Large'),('001','028',11.10,'Large'),('001','029',11.10,'Large'),('001','030',10.70,'Large'),('001','031',10.70,'Large'),('001','032',10.70,'Large'),('001','033',11.10,'Large'),('001','034',11.10,'Large'),('002','001',4.50,'Small'),('002','002',3.50,'Small'),('002','004',4.50,'Small'),('002','005',7.50,'Cup'),('002','006',7.75,'Cup'),('002','007',7.50,'Cup'),('002','008',6.50,'Cup'),('002','010',8.25,'Medium'),('002','011',8.25,'Medium'),('002','012',8.25,'Medium'),('002','013',8.25,'Medium'),('002','014',8.90,'Medium'),('002','015',9.25,'Medium'),('002','016',9.25,'Medium'),('002','017',9.25,'Medium'),('002','018',9.50,'Medium'),('002','019',8.90,'Medium'),('002','020',8.70,'Medium'),('002','021',8.70,'Medium'),('002','022',8.70,'Medium'),('002','023',9.10,'Medium'),('002','024',9.10,'Medium'),('002','025',8.70,'Medium'),('002','026',8.70,'Medium'),('002','027',8.70,'Medium'),('002','028',9.10,'Medium'),('002','029',9.10,'Medium'),('002','030',8.70,'Medium'),('002','031',8.70,'Medium'),('002','032',8.70,'Medium'),('002','033',9.10,'Medium'),('002','034',9.10,'Medium'),('003','005',7.50,'Cup'),('003','006',7.75,'Cup'),('003','007',7.50,'Cup'),('003','008',6.50,'Cup'),('003','010',6.25,'Small'),('003','011',6.25,'Small'),('003','012',6.25,'Small'),('003','013',6.25,'Small'),('003','014',6.90,'Small'),('003','015',7.25,'Small'),('003','016',7.25,'Small'),('003','017',7.25,'Small'),('003','020',6.70,'Small'),('003','021',6.70,'Small'),('003','022',6.70,'Small'),('003','023',7.10,'Small'),('003','025',6.70,'Small'),('003','026',6.70,'Small'),('003','027',6.70,'Small'),('003','028',7.10,'Small'),('003','030',6.70,'Small'),('003','031',6.70,'Small'),('003','032',6.70,'Small'),('003','033',7.10,'Small'),('004','001',0.00,'Small'),('004','002',0.00,'Small'),('004','004',0.00,'Small'),('004','005',0.00,'Cup'),('004','006',0.00,'Cup'),('004','007',0.00,'Cup'),('004','010',0.00,'Medium'),('004','011',0.00,'Medium'),('004','013',0.00,'Medium'),('004','014',0.00,'Medium'),('004','016',0.00,'Medium'),('004','017',0.00,'Medium'),('004','019',0.00,'Medium'),('004','020',0.00,'Medium'),('004','021',0.00,'Medium'),('004','022',0.00,'Medium'),('004','023',0.00,'Medium'),('004','024',0.00,'Medium'),('004','025',0.00,'Medium'),('004','026',0.00,'Medium'),('004','027',0.00,'Medium'),('004','028',0.00,'Medium'),('004','029',0.00,'Medium'),('004','030',0.00,'Medium'),('004','031',0.00,'Medium'),('004','032',0.00,'Medium'),('004','033',0.00,'Medium'),('004','034',0.00,'Medium');
/*!40000 ALTER TABLE `menuMenuItem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  2:50:49
