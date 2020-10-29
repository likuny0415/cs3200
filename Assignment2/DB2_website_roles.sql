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
-- Table structure for table `website_roles`
--

DROP TABLE IF EXISTS `website_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_roles` (
  `id` int NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  `website_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `website_role_enumeration_idx` (`role`),
  KEY `developer_role_idx` (`website_id`),
  KEY `developer_role_idx1` (`developer_id`),
  CONSTRAINT `developer_role` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`),
  CONSTRAINT `website_role` FOREIGN KEY (`website_id`) REFERENCES `websites` (`id`),
  CONSTRAINT `website_role_enumeration` FOREIGN KEY (`role`) REFERENCES `roles` (`role`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_roles`
--

LOCK TABLES `website_roles` WRITE;
/*!40000 ALTER TABLE `website_roles` DISABLE KEYS */;
INSERT INTO `website_roles` VALUES (1,'owner',123,12),(2,'editor',123,23),(3,'admin',123,34),(4,'owner',234,23),(5,'editor',234,34),(6,'admin',234,12),(7,'owner',345,34),(8,'editor',345,23),(9,'admin',345,23),(10,'owner',456,12),(11,'editor',456,23),(12,'admin',456,34),(13,'owner',567,23),(14,'editor',567,34),(15,'admin',567,12),(16,'owner',678,34),(17,'editor',678,12),(18,'admin',678,23);
/*!40000 ALTER TABLE `website_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-17  0:54:31
