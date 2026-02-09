-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: springboot
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Jean','Dupont'),(2,'Marie','Martin'),(3,'Pierre','Durand'),(4,'Jean','Dupont'),(5,'Marie','Martin'),(6,'Pierre','Durand'),(7,'Jean','Dupont'),(8,'Marie','Martin'),(9,'Pierre','Durand'),(10,'Jean','Dupont'),(11,'Marie','Martin'),(12,'Pierre','Durand'),(13,NULL,NULL),(14,'Jean','Dupont'),(15,'Marie','Martin'),(16,'Pierre','Durand'),(17,NULL,NULL),(18,'Jean','Dupont'),(19,'Marie','Martin'),(20,'Pierre','Durand'),(21,NULL,NULL),(22,NULL,NULL),(23,NULL,NULL),(24,NULL,NULL),(25,'Jean','Dupont'),(26,'Marie','Martin'),(27,'Pierre','Durand'),(28,NULL,NULL),(29,'Jean','Dupont'),(30,'Marie','Martin'),(31,'Pierre','Durand'),(32,NULL,NULL),(33,'Jean','Dupont'),(34,'Marie','Martin'),(35,'Pierre','Durand'),(36,'Jean','Dupont'),(37,'Marie','Martin'),(38,'Pierre','Durand'),(39,'Jean','Dupont'),(40,'Marie','Martin'),(41,'Pierre','Durand'),(42,'Jean','Dupont'),(43,'Marie','Martin'),(44,'Pierre','Durand'),(45,'Jean','Dupont'),(46,'Marie','Martin'),(47,'Pierre','Durand'),(48,'Jean','Dupont'),(49,'Marie','Martin'),(50,'Pierre','Durand'),(51,'Jean','Dupont'),(52,'Marie','Martin'),(53,'Pierre','Durand'),(54,'Jean','Dupont'),(55,'Marie','Martin'),(56,'Pierre','Durand'),(57,'Jean','Dupont'),(58,'Marie','Martin'),(59,'Pierre','Durand');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-09 14:14:41
