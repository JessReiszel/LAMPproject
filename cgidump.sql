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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `eventid` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `eventname` varchar(255) DEFAULT NULL,
  `eventvenue` int(3) unsigned zerofill DEFAULT NULL,
  `eventdate` date DEFAULT NULL,
  PRIMARY KEY (`eventid`),
  KEY `eventvenue` (`eventvenue`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`eventvenue`) REFERENCES `venue` (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (001000,'Sam\'s Bat Mitzvah',006,'2018-03-17'),(001001,'Jake and Tristen\'s B\'Nai Mitzvah',002,'2018-03-18'),(001002,'Jacklyn and Jason\'s Wedding',008,'2018-03-25'),(001003,'Brandon\'s Bar Mitzvah',003,'2018-03-23'),(001004,'Bob\'s Bar Mitzvah',007,'2018-03-29');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inven_checkout`
--

DROP TABLE IF EXISTS `inven_checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inven_checkout` (
  `iid` int(5) unsigned zerofill DEFAULT NULL,
  `eventid` int(6) unsigned zerofill DEFAULT NULL,
  KEY `iid` (`iid`),
  KEY `eventid` (`eventid`),
  CONSTRAINT `inven_checkout_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `inventory` (`iid`),
  CONSTRAINT `inven_checkout_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inven_checkout`
--

LOCK TABLES `inven_checkout` WRITE;
/*!40000 ALTER TABLE `inven_checkout` DISABLE KEYS */;
INSERT INTO `inven_checkout` VALUES (00005,001000),(00018,001000),(00019,001000),(00020,001000),(00027,001000),(00001,001001),(00003,001001),(00006,001001),(00041,001001),(00053,001001),(00070,001002),(00060,001002),(00013,001002),(00002,001003),(00029,001003),(00032,001003),(00056,001003),(00050,001004),(00044,001004),(00055,001004);
/*!40000 ALTER TABLE `inven_checkout` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (00001,0001,'2010-02-15','Good',0),(00002,0001,'2011-03-10','Good',0),(00003,0003,'2015-12-20','Good',0),(00004,0002,'2014-10-05','Good',1),(00005,0003,'2016-11-05','Good',0),(00006,0005,'2017-07-02','Bad',0),(00007,0008,'2009-10-28','Good',1),(00008,0007,'2012-11-18','Good',1),(00009,0001,'2014-12-17','Bad',1),(00010,0009,'2017-04-19','Good',1),(00011,0006,'2015-03-13','Good',1),(00012,0004,'2013-06-11','Good',1),(00013,0010,'2013-02-17','Good',0),(00014,0010,'2012-02-19','Good',1),(00015,0010,'2011-02-19','Good',1),(00016,0010,'2014-05-20','Bad',1),(00017,0011,'2013-02-22','Good',1),(00018,0011,'2015-09-12','Good',0),(00019,0012,'2017-10-12','Good',0),(00020,0012,'2013-11-11','Good',0),(00021,0012,'2014-12-22','Good',1),(00022,0013,'2012-10-10','Good',1),(00023,0013,'2016-09-09','Good',1),(00024,0014,'2017-12-09','Good',1),(00025,0014,'2016-11-05','Good',1),(00026,0014,'2014-11-01','Bad',1),(00027,0014,'2014-12-03','Good',0),(00028,0015,'2012-11-13','Good',1),(00029,0015,'2014-10-15','Good',0),(00030,0015,'2012-08-15','Good',1),(00031,0015,'2018-01-14','Good',1),(00032,0016,'2016-08-18','Good',0),(00033,0016,'2016-12-19','Good',1),(00034,0017,'2013-11-11','Good',1),(00035,0017,'2013-10-02','Good',1),(00036,0017,'2015-11-02','Good',1),(00037,0018,'2014-12-02','Good',1),(00038,0018,'2013-03-13','Good',1),(00039,0018,'2012-04-14','Good',1),(00040,0018,'2012-04-15','Good',1),(00041,0019,'2016-03-16','Good',0),(00042,0019,'2015-05-26','Good',1),(00043,0020,'2017-04-12','Good',1),(00044,0020,'2017-11-16','Good',0),(00045,0020,'2015-10-12','Good',1),(00046,0021,'2012-11-14','Good',1),(00047,0021,'2013-10-14','Good',1),(00048,0022,'2015-11-14','Good',1),(00049,0022,'2015-02-14','Good',1),(00050,0022,'2016-02-14','Bad',0),(00051,0022,'2017-05-15','Bad',1),(00052,0022,'2014-04-29','Good',1),(00053,0023,'2015-05-28','Good',0),(00054,0023,'2015-03-23','Good',1),(00055,0023,'2017-04-22','Good',0),(00056,0024,'2017-08-19','Good',0),(00057,0024,'2017-09-20','Good',1),(00058,0024,'2016-09-21','Good',1),(00059,0025,'2017-10-22','Good',1),(00060,0025,'2017-11-20','Good',0),(00061,0025,'2015-04-11','Good',1),(00062,0026,'2016-03-10','Good',1),(00063,0026,'2013-04-11','Good',1),(00064,0027,'2015-05-15','Good',1),(00065,0027,'2016-06-16','Good',1),(00066,0027,'2017-07-16','Good',1),(00067,0028,'2014-04-16','Good',1),(00068,0028,'2015-04-16','Good',1),(00069,0028,'2016-02-12','Good',1),(00070,0028,'2014-04-22','Good',0),(00071,0029,'2015-05-15','Good',1),(00072,0029,'2017-02-25','Good',1),(00073,0029,'2017-09-23','Good',1),(00074,0030,'2016-03-24','Good',1),(00075,0030,'2015-07-21','Good',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_info`
--

LOCK TABLES `item_info` WRITE;
/*!40000 ALTER TABLE `item_info` DISABLE KEYS */;
INSERT INTO `item_info` VALUES (0001,'Arctic Thunder',01,600.00),(0002,'Minute to Win It',01,1500.00),(0003,'Glo Hockey',01,800.00),(0004,'Infinite Booth',02,2000.00),(0005,'UPhoto Booth',02,1200.00),(0006,'Photobilities',02,2500.00),(0007,'Spin Art',03,500.00),(0008,'Baked by Melissa',03,3000.00),(0009,'Cookie Couture',03,2500.00),(0010,'Popcorn Machine',03,500.00),(0011,'Cotton Candy Machine',03,500.00),(0012,'Jump Photos',02,1600.00),(0013,'Mega Photobooth',02,2000.00),(0014,'Mirror Booth',02,2300.00),(0015,'Toy Story Bounce',01,1000.00),(0016,'Nemo Bounce',01,1000.00),(0017,'Castle Bounce',01,1000.00),(0018,'Musically',01,1300.00),(0019,'Street Hoops',01,1300.00),(0020,'Pop a Shot',01,500.00),(0021,'Hydro Thunder',01,600.00),(0022,'Tri Hockey',01,500.00),(0023,'Foosball Table',01,500.00),(0024,'Video Foosball Table',01,1000.00),(0025,'Blackjack Table',01,1200.00),(0026,'Custom EON Station',03,5000.00),(0027,'Donut Station',03,2000.00),(0028,'TShirt Bar',03,3000.00),(0029,'Snowglobe Photos',02,2500.00),(0030,'Deluxe Candy Shoppe',03,5000.00);
/*!40000 ALTER TABLE `item_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `packageid` int(3) NOT NULL,
  `pitemid` int(4) unsigned zerofill DEFAULT NULL,
  KEY `pitemid` (`pitemid`),
  CONSTRAINT `package_ibfk_1` FOREIGN KEY (`pitemid`) REFERENCES `item_info` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,0003),(1,0019),(1,0023),(1,0020),(1,0022),(2,0004),(2,0009),(2,0011),(2,0018),(2,0030),(3,0001),(3,0005),(3,0020),(3,0022),(3,0010),(4,0030),(4,0028),(4,0009),(4,0029),(4,0026),(5,0007),(5,0010),(5,0011),(5,0015),(5,0009);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
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

-- Dump completed on 2018-03-05  2:05:39
