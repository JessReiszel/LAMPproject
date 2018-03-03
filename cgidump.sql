-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: creativegamesinc
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `deptid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `deptname` varchar(20) DEFAULT NULL,
  `depthead` int(3) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`deptid`),
  KEY `depthead` (`depthead`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`depthead`) REFERENCES `employee` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (01,'Games',001),(02,'Photos',002),(03,'Crafts and Food',003);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `eid` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `efirst` varchar(30) DEFAULT NULL,
  `elast` varchar(30) DEFAULT NULL,
  `ephone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (001,'Tomas','Maldonado','5166261982'),(002,'Chris','Young','5166262382'),(003,'Amanda','Mauro','6314789920');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `iid` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `itype` int(4) unsigned zerofill DEFAULT NULL,
  `ipurchased` date DEFAULT NULL,
  `icondition` varchar(40) DEFAULT NULL,
  `iavailable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iid`),
  KEY `itype` (`itype`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`itype`) REFERENCES `item_info` (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (00001,0001,'2010-02-15','Good',1),(00002,0001,'2011-03-10','Good',1),(00003,0003,'2015-12-20','Good',1),(00004,0002,'2014-10-05','Good',1),(00005,0003,'2016-11-05','Good',1),(00006,0005,'2017-07-02','Bad',1),(00007,0008,'2009-10-28','Good',1),(00008,0007,'2012-11-18','Good',1),(00009,0001,'2014-12-17','Bad',1),(00010,0009,'2017-04-19','Good',1),(00011,0006,'2015-03-13','Good',1),(00012,0004,'2013-06-11','Good',1);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_info`
--

DROP TABLE IF EXISTS `item_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_info` (
  `itemid` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `itemname` varchar(40) DEFAULT NULL,
  `itemdept` int(2) unsigned zerofill DEFAULT NULL,
  `itemprice` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `itemdept` (`itemdept`),
  CONSTRAINT `item_info_ibfk_1` FOREIGN KEY (`itemdept`) REFERENCES `department` (`deptid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_info`
--

LOCK TABLES `item_info` WRITE;
/*!40000 ALTER TABLE `item_info` DISABLE KEYS */;
INSERT INTO `item_info` VALUES (0001,'Artic Thunder',01,600.00),(0002,'Minute to Win It',01,1500.00),(0003,'Glo Hockey',01,800.00),(0004,'Infinite Booth',02,2000.00),(0005,'UPhoto Booth',02,1200.00),(0006,'Photobilities',02,2500.00),(0007,'Spin Art',03,500.00),(0008,'Baked by Melissa',03,3000.00),(0009,'Cookie Couture',03,2500.00);
/*!40000 ALTER TABLE `item_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'amauro','ampassword','admin'),(2,'emauro','empassword','admin'),(3,'cyoung','cypassword','admin'),(4,'guesttest','gpassword','other');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue` (
  `vid` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `vname` varchar(255) DEFAULT NULL,
  `vphone` varchar(10) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (001,'Old Oaks Country Club','6314572231','200 Ivy Lane','Huntington','NY','11776'),(002,'Glen Head Country Club','6314574451','89 Francine Avenue','Glen Head','NY','11776'),(003,'W Hotel','3474522461','60 Madison Avenue','New York','NY','10012'),(004,'Edison Ballroom','3474433096','333 Herald Square','New York','NY','10012'),(005,'Rainbow Room','3473320097','48 W 50th Street','New York','NY','10012'),(006,'Hilton Short Hills','7326647781','260 Calibur Drive','Short Hills','NJ','11443'),(007,'Crystal Plaza','7326442781','77 Sakura Drive','Parsippany','NJ','11442'),(008,'Loading Dock','4432290321','888 Hybrid Avenue','Stamford','CT','11053'),(009,'Temple Beth Shalom','4473326681','2741 Northwood Court','Essex','NJ','11082'),(010,'Temple Avodah','7543326221','333 Larkfield Lane','Westchester','NY','11732');
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-03  4:21:02
