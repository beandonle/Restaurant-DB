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
-- Table structure for table `menuItem`
--

DROP TABLE IF EXISTS `menuItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuItem` (
  `itemID` varchar(20) NOT NULL,
  `itemName` varchar(60) NOT NULL,
  `spiceLevel` enum('Mild','Tangy','Piquant','Hot','Oh My God') NOT NULL,
  `entree` enum('Chef Special','Pork','Beef','Chicken','Seafood','Vegetables') DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  KEY `menuItem_fk1` (`spiceLevel`),
  KEY `menuItem_fk2` (`entree`),
  CONSTRAINT `menuItem_fk1` FOREIGN KEY (`spiceLevel`) REFERENCES `spiceLevelEnum` (`spiceLevel`),
  CONSTRAINT `menuItem_fk2` FOREIGN KEY (`entree`) REFERENCES `entreeEnum` (`entree`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuItem`
--

LOCK TABLES `menuItem` WRITE;
/*!40000 ALTER TABLE `menuItem` DISABLE KEYS */;
INSERT INTO `menuItem` VALUES ('001','Cucumber Salad','Mild',NULL),('002','Seaweed and BeanCurd','Mild',NULL),('003','Sweet and Sour Pork Ribs','Tangy',NULL),('004','Kurobuta Pork Sticky Rice Wrap','Mild',NULL),('005','Braised Beef Soup','Mild',NULL),('006','Shrimp & Kurobuta Pork Wonton Soup','Mild',NULL),('007','Jidori Chicken Wonton Soup','Tangy',NULL),('008','Vegetarian Noodle Soup','Mild',NULL),('010','Sauteed String Green Beans with Garlic','Mild','Vegetables'),('011','Sauteed Bok Choy','Mild','Vegetables'),('012','Sauteed Mustard Greens with Shredded Ginger','Tangy','Vegetables'),('013','Sauteed Spinach with Garlic','Mild','Vegetables'),('014','Kurobuta Pork Xiao Long Bao','Piquant','Pork'),('015','Chicken & Mushroom Bun','Tangy','Chicken'),('016','Shrimp Fried Rice','Mild','Seafood'),('017','Braised Beef','Mild','Beef'),('018','Jidori Chicken Wontons with Spicy Sauce','Hot','Chicken'),('019','Stuffed Eggplant in Black Bean Sauce','Hot','Chef Special'),('020','Pork Chow Mein','Mild','Pork'),('021','Chicken Chow Mein','Tangy','Chicken'),('022','Shrimp Chow Mein','Mild','Seafood'),('023','Beef Chow Mein','Mild','Beef'),('024','Red Hot Chow Mein','Oh My God','Chef Special'),('025','Pork Egg Foo Young','Piquant','Pork'),('026','Chicken Egg Foo Young','Tangy','Chicken'),('027','Seafood Egg Foo Young','Mild','Seafood'),('028','Beef Egg Foo Young','Mild','Beef'),('029','Red Hot Egg Foo Young','Oh My God','Chef Special'),('030','Pork Chop Suey','Piquant','Pork'),('031','Chicken Chop Suey','Tangy','Chicken'),('032','Seafood Chop Suey','Mild','Seafood'),('033','Beef Chop Suey','Mild','Beef'),('034','Red Hot Chop Suey','Oh My God','Chef Special');
/*!40000 ALTER TABLE `menuItem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  2:50:44
