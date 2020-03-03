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
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `eID` varchar(20) NOT NULL,
  `recipe` varchar(70) NOT NULL,
  PRIMARY KEY (`eID`,`recipe`),
  CONSTRAINT `recipe_fk` FOREIGN KEY (`eID`) REFERENCES `chef` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES ('0003','Beef Chow Mein'),('0003','Braised Beef Soup'),('0003','Chicken Chow Mein'),('0003','Cucumber Salad'),('0003','Jidori Chicken Wonton Soup'),('0003','Kurobuta Pork Sticky Rice Wrap'),('0003','Pork Chow Mein'),('0003','Seaweed and BeanCurd'),('0003','Shrimp & Kurobuta Pork Wonton Soup'),('0003','Shrimp Chow Mein'),('0003','Stuffed Eggplant in Black Bean Sauce'),('0003','Sweet and Sour Pork Ribs'),('0004','Beef Chop Suey'),('0004','Beef Egg Foo Young'),('0004','Chicken Chop Suey'),('0004','Chicken Egg Foo Young'),('0004','Pork Chop Suey'),('0004','Pork Egg Foo Young'),('0004','Red Hot Chop Suey'),('0004','Red Hot Chow Mein'),('0004','Red Hot Egg Foo Young'),('0004','Seafood Chop Suey'),('0004','Seafood Egg Foo Young');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  2:50:26
