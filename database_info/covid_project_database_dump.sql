-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Project
-- ------------------------------------------------------
-- Server version	8.0.19-0ubuntu5

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `Project`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `Project`;

--
-- Table structure for table `Accounts`
--

DROP TABLE IF EXISTS `Accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accounts` (
  `userID` varchar(50) NOT NULL,
  `passwordHash` varchar(256) DEFAULT NULL,
  `accountType` int NOT NULL DEFAULT '0',
  `addressID` int NOT NULL,
  `emailAddress` varchar(100) NOT NULL DEFAULT '',
  `contact` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `uniqueAccount` (`userID`),
  UNIQUE KEY `uniqueEmail` (`emailAddress`),
  UNIQUE KEY `uniqueUserID` (`userID`),
  KEY `addressFK` (`addressID`),
  CONSTRAINT `addressFK` FOREIGN KEY (`addressID`) REFERENCES `Addresses` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts`
--

LOCK TABLES `Accounts` WRITE;
/*!40000 ALTER TABLE `Accounts` DISABLE KEYS */;
INSERT INTO `Accounts` VALUES ('acemarco1311','$2b$10$xCwVSIagBR13TacOnwLgduLzE/nGJei.h4lU7i6XiJtR7VtVc.pJu',1,1,'acemarco1311@gmail.com','234234234'),('acemarco9','$2b$10$RwnzFWyudoQ6sigfiIcIqOo2mvqswZhB3pek4CsRj9rjrI4GvrOeW',0,2,'acemarco9@gmail.com','111222333'),('AdelaideVenue','$2b$10$RwnzFWyudoQ6sigfiIcIqOo2mvqswZhB3pek4CsRj9rjrI4GvrOeW',1,110,'AdelaideVenue@adelaide.com','123123123'),('admin','$2b$10$iPrK9SNd1SlkFuWtlFDE4.Nc9V1K31pt92vlLF3sge0xXTFxAjmdO',2,93,'admin@admin.com','123456'),('anotherAdmin','$2b$10$4.amehZd0LaU9aIhBSHCBez/Bbb2gSXkCTGdeDwdXGchxcarYItrq',2,92,'anotherAdmin@gmail.com','234435'),('Blake1','$2b$10$0I7P6rIVRmkSlA81hwovWO14J9wqrSYXdM3m5i/F9l7OAAFfKy18K',2,74,'714228079@qq.com','123'),('Blake10','$2b$10$ksVZAFIspvTTxfv1HPePbey9Htr9uJccwP83DMoPviQxxj0g0Zj/O',2,101,'12579@gmail.com','1234567890'),('Blake103','$2b$10$RNjV8AKU9DHkDyQeCTqSqeCUhcIIIgbZBCEgk25NUvSnL/xBHdt.S',2,90,'71422@qq.com','1234567890'),('Blake11','$2b$10$Fbcqgq1ZCJNTYMI89QP.Y.rGDJ3MiRzTxUu2bmqnenYu89RKXhOfC',0,106,'a1789591@student.adelaide.edu.au','12345467890'),('Blake123','$2b$10$h5jSU0vfQ7K0JS1piIpXnuWg8v8mz3iNde/dZkb/46UlzJJH77E4y',1,105,'Blake123@gmail.com','1234'),('Blake1234','$2b$10$S2BVys6suLBFZ48BjibXDuqDX..3EHtxqbtuN0.6h5GwvucdX72D2',1,108,'Blake1234@gmail.com','123'),('Blake12345','$2b$10$mBRBQUIJFrTN4QXrDWwHVuY/nL/ZT1sUU37j99xYjFnmKbKojE71K',1,107,'Blake12345@qq.com','123'),('Blake2','$2b$10$DUFeYmLy3eKWy.jQxqYLCuf9WnXi6AadULMO6u.FwZ/6HioUynpLi',2,75,'125793332@qq.com','1234567890'),('Blake7','$2b$10$CwBX/QfIMm1sF0nbtAWFEOOsXKxtcbCVck3Lm44hrRrpsVz288zKm',2,91,'Blake7','1234567890'),('jason123','$2b$10$lJnp7ytF3IgPJ1jNf0yL1uby6gPr8Iw7F5T6ftpb/4o6Ab39oUQOa',1,99,'jason123@gmail.com','0176129856'),('jetlow123','$2b$10$RwnzFWyudoQ6sigfiIcIqOo2mvqswZhB3pek4CsRj9rjrI4GvrOeW',0,3,'jetlow123@gmail.com','876738546753'),('mmm','$2b$10$GiufbbVshXWBcO66TOVHvecfEgTeTr/FpNPBOfyP0eZ/CV1Iilpwa',2,102,'mmm','656'),('pppp','$2b$10$4tkloKKsWGwLH1.M6aODJuPTe1t5VO4lFqQB21S1Jgk7FB.14ujAi',0,103,'pppp','23423'),('ruixin1','$2b$10$7Pl7aTeQlGfOQU6KXqmb9.vLmdoTun.NFuBNeUjTzCVn4dxyzwqm.',2,60,'ruixin1233@gmail.com','11114444'),('thanhtoan123','$2b$10$0tT6DqQcaFnN0i9pG73XuuHj808xRCGhu2Bx2Vzlf6RvmrPXKtXhm',2,100,'zxcv','34234235'),('u','$2b$10$RbinQVTjpZ8rzxEDE7789O/IxhO/SUos7BvUcS33nI77n4DOAZRQq',0,109,'u','123123'),('wtfddfsf','$2b$10$ycAssRaXnFR36NORfoFIiOLKe2qnmMjYJ9pGaeeMrC.8LOpXDBuva',2,94,'ace@gmail.com','adfasdf');
/*!40000 ALTER TABLE `Accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Addresses`
--

DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Addresses` (
  `addressID` int NOT NULL AUTO_INCREMENT,
  `number` int DEFAULT NULL,
  `streetName` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `stateName` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`addressID`),
  UNIQUE KEY `uniqueAddressID` (`addressID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Addresses`
--

LOCK TABLES `Addresses` WRITE;
/*!40000 ALTER TABLE `Addresses` DISABLE KEYS */;
INSERT INTO `Addresses` VALUES (1,11,'Alexander','Adelaide','South Australia','Australia'),(2,14,'John','Adelaide','South Australia','Australia'),(3,50,'Xudong','Hunan','Shanghai','China'),(5,34,'asdf','asdf','asdf','asdf'),(6,34,'asdf','asdf','asdf','asdf'),(59,122,'casa','KL','KL','malaysia'),(60,96,'Cangkat Intisari','Desa ParkCity','PT','Australia'),(61,103,'Cangkat Intisari','Desa ParkCity','KL','Malaysia'),(62,103,'Cangkat Intisari','Desa ParkCity','KL','Malaysia'),(63,103,'Franklin Street','Adelaide','South Australia','Australia'),(64,103,'Cangkat Intisari','Desa ParkCity','KL','Malaysia'),(65,123,'ABC','Adelaide','SA','Australia'),(66,103,'Cangkat Intisari','Desa ParkCity','KL','Malaysia'),(67,103,'Cangkat Intisari','Desa ParkCity','KL','Malaysia'),(68,103,'Cangkat Intisari','Desa ParkCity','KL','Malaysia'),(69,103,'Cangkat Intisari','Desa ParkCity','KL','Malaysia'),(70,103,'Cangkat Intisari','Desa ParkCity','KL','Malaysia'),(71,103,'Cangkat Intisari','Desa ParkCity','KL','Malaysia'),(72,13,'ABC','Adelaide','SA','Australia'),(73,13,'ABC','Adelaide','SA','Australia'),(74,11,'ABCD','Adelaide','SA','Australia'),(75,13,'ABC','Adelaide','SA','Australia'),(82,88,'zxcv','zxcv','zxcv','zxcv'),(83,88,'zxcv','zxcv','zxcv','zxcv'),(84,12,'Adelaide','Adelaide','Adelaide','Australia'),(85,12,'Adelaide','Adelaide','Adelaide','Australia'),(86,123,'Adelaide','Adelaide','Adelaide','Adelaide'),(87,123,'123','Adelaide','SA','Australia'),(88,123,'123','Adelaide','SA','Australia'),(89,123,'123','Adelaide','SA','Australia'),(90,13,'ABC','Adelaide','SA','Australia'),(91,2,'2','2','2','Blake71'),(92,23,'qwer','qwer','qwer','qwer'),(93,12,'sa','sa','sa','sa'),(94,23,'asdfadf','asdfasdf','adsfasdf','asdfasdf'),(95,123,'Franklin Street','Adelaide','South Australia','Australia'),(96,123,'Franklin Street','Adelaide','South Australia','Australia'),(97,123,'Franklin Street','Adelaide','South Australia','Australia'),(98,123,'Franklin Street','Adelaide','South Australia','Australia'),(99,123,'Franklin Street','Adelaide','South Australia','Australia'),(100,123,'asdf','asdf','asddg','asdf'),(101,123,'123','Adelaide','SA','Australia'),(102,5,'mmm','mmm','mmm','mmm'),(103,4243,'pppp','pppp','pppp','pppp'),(104,123,'123','Adelaide','SA','Australia'),(105,123,'123','Adelaide','SA','Australia'),(106,1234,'1234','Adelaide','SA','Australia'),(107,123,'123','Adelaide','SA','Australia'),(108,123,'123','Adelaide','SA','Australia'),(109,123,'u','u','u','u'),(110,735,'Tran Hung Dao','Thot Not','Can Tho','Vietnam');
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdminInfo`
--

DROP TABLE IF EXISTS `AdminInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AdminInfo` (
  `userID` varchar(50) NOT NULL,
  `officialName` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdminInfo`
--

LOCK TABLES `AdminInfo` WRITE;
/*!40000 ALTER TABLE `AdminInfo` DISABLE KEYS */;
INSERT INTO `AdminInfo` VALUES ('admin','Admin'),('anotherAdmin','AnotherAdmin'),('Blake1','Blake123'),('Blake10','Blake10'),('Blake103','Blake111'),('Blake7','admin123'),('mmm','mmm'),('ruixin1','ruixin123'),('ruixin123','Ruixin'),('thanhtoan123','zxcvzxcv'),('wtfddfsf','asdfasdf');
/*!40000 ALTER TABLE `AdminInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CheckInCodeRecords`
--

DROP TABLE IF EXISTS `CheckInCodeRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CheckInCodeRecords` (
  `checkInCode` char(6) NOT NULL DEFAULT '000000',
  `latitude` decimal(10,7) NOT NULL DEFAULT '0.0000000',
  `longitude` decimal(10,7) NOT NULL DEFAULT '0.0000000',
  PRIMARY KEY (`checkInCode`),
  UNIQUE KEY `uniqueCode` (`checkInCode`),
  UNIQUE KEY `uniqueCheckInCode` (`checkInCode`),
  CONSTRAINT `checkValidLatLocation` CHECK (((`latitude` >= -(90)) and (`latitude` <= 90))),
  CONSTRAINT `checkValidLngLocation` CHECK (((`longitude` >= -(180)) and (`longitude` <= 180)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CheckInCodeRecords`
--

LOCK TABLES `CheckInCodeRecords` WRITE;
/*!40000 ALTER TABLE `CheckInCodeRecords` DISABLE KEYS */;
INSERT INTO `CheckInCodeRecords` VALUES ('000000',-34.9274759,138.5998298),('12345',-29.0422610,172.7027890),('123456',-34.9212300,138.5995030),('123457',-30.0000000,130.0000000),('223344',-29.0422610,172.7027890),('567890',-34.9175740,138.5995030),('678912',-10.1234567,123.1234567);
/*!40000 ALTER TABLE `CheckInCodeRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CheckInRecords`
--

DROP TABLE IF EXISTS `CheckInRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CheckInRecords` (
  `checkInID` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(50) NOT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `dateAdded` datetime DEFAULT NULL,
  `checkInCode` char(6) DEFAULT NULL,
  PRIMARY KEY (`checkInID`),
  UNIQUE KEY `uniqueCheckInID` (`checkInID`),
  KEY `checkInUserFK` (`userID`),
  KEY `codeFk` (`checkInCode`),
  CONSTRAINT `checkInUserFK` FOREIGN KEY (`userID`) REFERENCES `Accounts` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `codeFk` FOREIGN KEY (`checkInCode`) REFERENCES `CheckInCodeRecords` (`checkInCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `checkLat` CHECK (((`latitude` >= -(90)) and (`latitude` <= 90))),
  CONSTRAINT `checkLng` CHECK (((`longitude` >= -(180)) and (`longitude` <= 180)))
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CheckInRecords`
--

LOCK TABLES `CheckInRecords` WRITE;
/*!40000 ALTER TABLE `CheckInRecords` DISABLE KEYS */;
INSERT INTO `CheckInRecords` VALUES (114,'acemarco9',-34.9274759,138.5998298,'2021-08-23 16:35:14','000000'),(115,'acemarco9',-34.9274759,138.5998298,'2021-08-24 07:30:52','000000'),(116,'acemarco9',10.8142000,106.6438000,'2021-08-24 07:31:52',NULL);
/*!40000 ALTER TABLE `CheckInRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hotspots`
--

DROP TABLE IF EXISTS `Hotspots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hotspots` (
  `hotspotID` int NOT NULL AUTO_INCREMENT,
  `latitude` decimal(10,7) NOT NULL DEFAULT '0.0000000',
  `longitude` decimal(10,7) NOT NULL DEFAULT '0.0000000',
  `dateAdded` date DEFAULT NULL,
  `confirmedCases` int DEFAULT NULL,
  `deaths` int DEFAULT NULL,
  `recoveredCases` int DEFAULT NULL,
  `activeCases` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`hotspotID`),
  UNIQUE KEY `uniqueHotspotID` (`hotspotID`),
  UNIQUE KEY `uniqueHotpotID` (`hotspotID`),
  CONSTRAINT `checkValidLat` CHECK (((`latitude` >= -(90)) and (`latitude` <= 90))),
  CONSTRAINT `checkValidLng` CHECK (((`longitude` >= -(180)) and (`longitude` <= 180)))
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hotspots`
--

LOCK TABLES `Hotspots` WRITE;
/*!40000 ALTER TABLE `Hotspots` DISABLE KEYS */;
INSERT INTO `Hotspots` VALUES (1,-34.9212300,138.5995030,'2020-05-17',742,4,724,14),(5,-25.0422610,117.7932210,'2020-05-17',1015,9,999,7),(62,-33.8651430,151.2099000,'2021-06-13',10000,20,1000,8980),(63,-31.9535120,115.8570480,'2021-06-13',10000,20,8980,400),(65,41.8818320,-87.6231770,'2021-08-24',10000,0,5000,5000);
/*!40000 ALTER TABLE `Hotspots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInfo`
--

DROP TABLE IF EXISTS `UserInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserInfo` (
  `userID` varchar(50) NOT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `uniqueUser` (`userID`),
  CONSTRAINT `userFK` FOREIGN KEY (`userID`) REFERENCES `Accounts` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInfo`
--

LOCK TABLES `UserInfo` WRITE;
/*!40000 ALTER TABLE `UserInfo` DISABLE KEYS */;
INSERT INTO `UserInfo` VALUES ('acemarco9','Le Nguyen','Toan'),('Blake11','Xin','Wang'),('jetlow123','Jet','Low'),('pppp','pppp','pppp'),('u','u','u');
/*!40000 ALTER TABLE `UserInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VenueInfo`
--

DROP TABLE IF EXISTS `VenueInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VenueInfo` (
  `userID` varchar(50) NOT NULL,
  `venueName` varchar(100) DEFAULT NULL,
  `checkInCode` char(6) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `uniqueCheckIn` (`checkInCode`),
  CONSTRAINT `checkInFK` FOREIGN KEY (`checkInCode`) REFERENCES `CheckInCodeRecords` (`checkInCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `venueFK` FOREIGN KEY (`userID`) REFERENCES `Accounts` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VenueInfo`
--

LOCK TABLES `VenueInfo` WRITE;
/*!40000 ALTER TABLE `VenueInfo` DISABLE KEYS */;
INSERT INTO `VenueInfo` VALUES ('acemarco1311','La La Land','123456'),('AdelaideVenue','Victoria Square','000000'),('Blake123','Blake1234','12345'),('Blake1234','Blake1234','567890'),('Blake12345','Blake12345','223344'),('jason123','GOOD RES','678912');
/*!40000 ALTER TABLE `VenueInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-24 10:24:40
