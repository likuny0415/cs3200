-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: DB2
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `website_privileges`
--

DROP TABLE IF EXISTS `website_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_privileges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `privileges` varchar(45) DEFAULT NULL,
  `website_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `privilege_enumeration_idx` (`privileges`),
  CONSTRAINT `privilege_enumeration` FOREIGN KEY (`privileges`) REFERENCES `privileges` (`privilege`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_privileges`
--

LOCK TABLES `website_privileges` WRITE;
/*!40000 ALTER TABLE `website_privileges` DISABLE KEYS */;
INSERT INTO `website_privileges` VALUES (23,'create',123,12),(24,'read',123,12),(25,'update',123,12),(26,'delete',123,12),(29,'read',123,23),(30,'update',123,23),(31,'create',123,34),(32,'read',123,34),(33,'update',123,34),(34,'delete',123,34),(35,'create',234,23),(36,'read',234,23),(37,'update',234,23),(38,'delete',234,23),(39,'read',234,34),(40,'update',234,34),(41,'create',234,12),(42,'read',234,12),(43,'update',234,12),(44,'delete',234,12),(45,'create',345,34),(46,'read',345,34),(47,'update',345,34),(48,'delete',345,34),(49,'read',345,23),(50,'update',345,23),(51,'create',345,23),(52,'read',345,23),(53,'update',345,23),(54,'delete',345,23),(55,'create',456,12),(56,'read',456,12),(57,'update',456,12),(58,'delete',456,12),(59,'read',456,23),(60,'update',456,23),(61,'create',456,34),(62,'read',456,34),(63,'update',456,34),(64,'delete',456,34),(65,'create',567,23),(66,'read',567,23),(67,'update',567,23),(68,'delete',567,23),(69,'read',567,34),(70,'update',567,34),(71,'create',567,12),(72,'read',567,12),(73,'update',567,12),(74,'delete',567,12),(75,'create',678,34),(76,'read',678,34),(77,'update',678,34),(78,'delete',678,34),(79,'read',678,12),(80,'update',678,12),(81,'create',678,23),(82,'read',678,23),(83,'update',678,23),(84,'delete',678,23);
/*!40000 ALTER TABLE `website_privileges` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-17  0:54:30
