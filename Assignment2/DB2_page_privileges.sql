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
-- Table structure for table `page_privileges`
--

DROP TABLE IF EXISTS `page_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_privileges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `privilege` varchar(45) DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enumeration_privilege_idx` (`privilege`),
  CONSTRAINT `enumeration_privilege` FOREIGN KEY (`privilege`) REFERENCES `privileges` (`privilege`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_privileges`
--

LOCK TABLES `page_privileges` WRITE;
/*!40000 ALTER TABLE `page_privileges` DISABLE KEYS */;
INSERT INTO `page_privileges` VALUES (1,'create',123,123),(2,'read',123,123),(3,'update',123,123),(4,'delete',123,123),(5,'read',123,12),(6,'update',123,12),(7,'read',123,23),(8,'create',123,34),(9,'read',123,34),(10,'update',123,34),(11,'read',234,23),(12,'update',234,23),(13,'read',234,34),(14,'create',234,12),(15,'read',234,12),(16,'update',234,12),(17,'read',345,34),(18,'update',345,34),(19,'read',345,12),(20,'create',345,23),(21,'read',345,23),(22,'update',345,23),(23,'read',456,12),(24,'update',456,12),(25,'read',456,23),(26,'create',456,34),(27,'read',456,34),(28,'update',456,34),(29,'read',567,23),(30,'update',567,23),(31,'read',567,34),(32,'create',567,12),(33,'read',567,12),(34,'update',567,12);
/*!40000 ALTER TABLE `page_privileges` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-17  0:54:28
