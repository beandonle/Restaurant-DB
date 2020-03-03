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
-- Table structure for table `menuItemCategory`
--

DROP TABLE IF EXISTS `menuItemCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuItemCategory` (
  `itemID` varchar(20) NOT NULL,
  `category` enum('Appetizer','Soup','Meat Entrees','Chow Mein','Egg Foo Young','Chop Suey') NOT NULL,
  PRIMARY KEY (`itemID`,`category`),
  KEY `menuItemCategory_fk2` (`category`),
  CONSTRAINT `menuItemCategory_fk1` FOREIGN KEY (`itemID`) REFERENCES `menuItem` (`itemID`),
  CONSTRAINT `menuItemCategory_fk2` FOREIGN KEY (`category`) REFERENCES `categoryEnum` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuItemCategory`
--

LOCK TABLES `menuItemCategory` WRITE;
/*!40000 ALTER TABLE `menuItemCategory` DISABLE KEYS */;
INSERT INTO `menuItemCategory` VALUES ('001','Appetizer'),('002','Appetizer'),('003','Appetizer'),('004','Appetizer'),('005','Soup'),('006','Soup'),('007','Soup'),('008','Soup'),('010','Meat Entrees'),('011','Meat Entrees'),('012','Meat Entrees'),('013','Meat Entrees'),('014','Meat Entrees'),('015','Meat Entrees'),('016','Meat Entrees'),('017','Meat Entrees'),('018','Meat Entrees'),('019','Meat Entrees'),('020','Chow Mein'),('021','Chow Mein'),('022','Chow Mein'),('023','Chow Mein'),('024','Chow Mein'),('025','Egg Foo Young'),('026','Egg Foo Young'),('027','Egg Foo Young'),('028','Egg Foo Young'),('029','Egg Foo Young'),('030','Chop Suey'),('031','Chop Suey'),('032','Chop Suey'),('033','Chop Suey'),('034','Chop Suey');
/*!40000 ALTER TABLE `menuItemCategory` ENABLE KEYS */;
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
