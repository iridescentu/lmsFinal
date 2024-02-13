-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `expiration_date` datetime(6) DEFAULT NULL,
  `price` decimal(38,2) NOT NULL,
  `quantity` int NOT NULL,
  `course_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `FKtc2uxybe6r9ak6sd66whjd27` (`course_id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `FKtc2uxybe6r9ak6sd66whjd27` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,'2025-02-13 10:42:29.591196',400000.00,2,1,1),(2,'2025-02-13 11:00:16.792824',200000.00,1,1,2),(3,'2025-02-13 11:03:43.520432',200000.00,1,1,3),(4,'2025-02-13 11:25:53.345661',250000.00,1,2,4),(5,'2025-02-13 11:27:21.885801',300000.00,1,3,5),(6,'2025-02-13 11:47:34.557882',200000.00,1,1,6),(7,'2025-02-13 11:47:34.559880',250000.00,1,2,6),(8,'2025-02-13 11:47:34.560880',300000.00,1,3,6),(9,'2025-02-13 11:50:16.963750',200000.00,1,1,7),(10,'2025-02-13 11:50:16.966735',250000.00,1,5,7),(11,'2025-02-13 11:50:16.967750',250000.00,1,11,7),(12,'2025-02-13 11:51:22.781835',200000.00,1,1,8),(13,'2025-02-13 11:51:22.783843',250000.00,1,5,8),(14,'2025-02-13 11:51:22.784843',200000.00,1,7,8),(15,'2025-02-13 11:51:22.785847',300000.00,1,12,8),(16,'2025-02-13 11:57:04.135685',200000.00,1,1,9),(17,'2025-02-13 11:57:04.139683',250000.00,1,5,9),(18,'2025-02-13 12:00:27.488753',200000.00,1,1,10),(19,'2025-02-13 12:00:27.490749',200000.00,1,4,10),(20,'2025-02-13 12:06:12.269503',200000.00,1,1,11),(21,'2025-02-13 12:08:52.669439',200000.00,1,1,12),(22,'2025-02-13 12:11:41.115447',200000.00,1,1,13),(23,'2025-02-13 12:13:49.835378',200000.00,1,1,14),(24,'2025-02-13 12:19:12.546212',200000.00,1,1,15),(25,'2025-02-13 12:21:32.570038',200000.00,1,1,16),(26,'2025-02-13 12:24:54.466537',200000.00,1,1,17);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-13 12:26:51
