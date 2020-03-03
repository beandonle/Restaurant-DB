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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `eid` varchar(20) NOT NULL,
  `eFirstName` varchar(20) NOT NULL,
  `eLastName` varchar(20) NOT NULL,
  `eDOB` date NOT NULL,
  `shiftType` varchar(20) NOT NULL,
  `jobTitle` varchar(20) NOT NULL,
  `managerID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  UNIQUE KEY `employee_ck` (`eFirstName`,`eLastName`,`eDOB`),
  KEY `employee_fk1` (`shiftType`),
  KEY `employeee_fk2` (`jobTitle`),
  KEY `employee_fk3` (`managerID`),
  CONSTRAINT `employee_fk1` FOREIGN KEY (`shiftType`) REFERENCES `shift` (`shiftType`),
  CONSTRAINT `employee_fk3` FOREIGN KEY (`managerID`) REFERENCES `employee` (`eid`),
  CONSTRAINT `employeee_fk2` FOREIGN KEY (`jobTitle`) REFERENCES `job` (`jobTitle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('0001','Poppy','Herbert','1964-04-26','Morning','Manager',NULL),('0002','Christopher','Smith','1965-03-04','Night','Manager',NULL),('0003','Bella','Hart','1966-10-11','Morning','Head Chef','0001'),('0004','Adil','Schmidt','1967-12-17','Night','Head Chef','0002'),('0005','Tessa','Duncan','1969-01-25','Morning','Sous Chef','0001'),('0006','Verity','Kennedy','1969-09-04','Morning','Sous Chef','0001'),('0007','Lola','Chapman','1970-10-21','Night','Sous Chef','0002'),('0008','Eddy','Ayala','1973-06-29','Night','Sous Chef','0002'),('0009','Catherine','Martinez','1976-11-01','Morning','Line Cook','0001'),('0010','Mark','Watts','1978-11-24','Morning','Line Cook','0001'),('0011','Michelle','Hammond','1978-05-10','Morning','Line Cook','0001'),('0012','Joel','Moore','1978-11-24','Morning','Line Cook','0001'),('0013','Meghan','Liu','1981-04-08','Night','Line Cook','0002'),('0014','Loan','Larson','1982-12-27','Night','Line Cook','0002'),('0015','Allie','Camacho','1983-02-21','Night','Line Cook','0002'),('0016','Katelin','Clark','1983-02-21','Night','Line Cook','0002'),('0017','Liberty','Holland','1983-02-21','Morning','Maitre D','0001'),('0018','Layton','Hopkins','1983-12-25','Morning','Maitre D','0001'),('0019','Daniella','Cooper','1984-05-09','Night','Maitre D','0002'),('0020','Xander','Simpson','1987-11-11','Night','Maitre D','0002'),('0021','Sharon','Mejia','1988-06-19','Morning','Wait Staff','0001'),('0022','Jimmy','Alvarado','1990-01-12','Morning','Wait Staff','0001'),('0023','Carmen','Dawson','1994-10-28','Morning','Wait Staff','0001'),('0024','Tony','Mcgee','1997-11-04','Morning','Wait Staff','0001'),('0025','Tabitha','Patel','2000-08-12','Night','Wait Staff','0002'),('0026','Marcel','Holt','2000-01-11','Night','Wait Staff','0002'),('0027','Kyla','Khan','2000-03-15','Night','Wait Staff','0002'),('0028','Dexter','Dennis','2001-02-25','Night','Wait Staff','0002'),('0029','Felicity','Robertson','2001-03-05','Morning','Dish Washer','0001'),('0030','Ollie','Wright','2002-04-11','Morning','Dish Washer','0001'),('0031','Holly','White','2002-09-06','Night','Dish Washer','0002'),('0032','Jacky','Gardner','2002-01-19','Night','Dish Washer','0002');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  2:50:39
