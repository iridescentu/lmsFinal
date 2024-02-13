-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lms
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
-- Table structure for table `login_history`
--

DROP TABLE IF EXISTS `login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_history` (
  `log_id` bigint NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(50) DEFAULT NULL,
  `login_time` datetime(6) NOT NULL,
  `member_id` bigint NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `FKq2swtm0wd8kuwki103rgvmh6t` (`member_id`),
  CONSTRAINT `FKq2swtm0wd8kuwki103rgvmh6t` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_history`
--

LOCK TABLES `login_history` WRITE;
/*!40000 ALTER TABLE `login_history` DISABLE KEYS */;
INSERT INTO `login_history` VALUES (1,'ipAddress','2024-01-05 08:00:00.000000',1),(2,NULL,'2024-02-07 09:52:22.105497',27),(3,NULL,'2024-02-07 10:08:49.288198',27),(4,NULL,'2024-02-07 10:09:16.357412',27),(5,NULL,'2024-02-07 10:15:32.779460',27),(6,NULL,'2024-02-07 10:30:27.908257',27),(7,NULL,'2024-02-07 10:39:06.493160',27),(8,NULL,'2024-02-07 10:39:26.587301',27),(9,NULL,'2024-02-07 10:44:28.602893',27),(10,NULL,'2024-02-07 10:46:22.057509',27),(11,NULL,'2024-02-07 11:07:10.360456',27),(12,NULL,'2024-02-07 11:08:15.070501',27),(13,NULL,'2024-02-07 11:11:53.501068',27),(14,NULL,'2024-02-07 11:18:12.700896',27),(15,NULL,'2024-02-07 11:19:21.035620',27),(16,NULL,'2024-02-07 11:30:15.205180',27),(17,NULL,'2024-02-07 11:36:06.986386',27),(18,NULL,'2024-02-07 11:36:38.620647',27),(19,NULL,'2024-02-07 11:39:38.456736',27),(20,NULL,'2024-02-07 11:41:03.522743',27),(21,NULL,'2024-02-07 11:41:28.123701',27),(22,NULL,'2024-02-07 11:41:30.446744',27),(23,NULL,'2024-02-07 11:44:11.399574',27),(24,NULL,'2024-02-07 12:27:16.790398',27),(25,NULL,'2024-02-07 12:27:19.890309',27),(26,NULL,'2024-02-07 12:27:33.387364',27),(27,NULL,'2024-02-07 12:27:41.851362',27),(28,NULL,'2024-02-07 15:48:52.549102',27),(29,NULL,'2024-02-07 15:51:53.302706',27),(30,NULL,'2024-02-07 16:30:24.806782',27),(31,NULL,'2024-02-07 17:50:38.057700',28),(32,NULL,'2024-02-07 17:50:41.121848',28),(33,NULL,'2024-02-07 18:45:06.762908',27),(34,NULL,'2024-02-07 18:45:43.048996',27),(35,NULL,'2024-02-07 18:46:38.349024',27),(36,NULL,'2024-02-07 18:48:12.653796',27),(37,NULL,'2024-02-07 18:51:45.701310',27),(38,NULL,'2024-02-07 19:27:07.482062',27),(39,NULL,'2024-02-07 19:34:59.492571',27),(40,NULL,'2024-02-07 21:33:06.071854',13),(41,NULL,'2024-02-07 21:41:07.764975',13),(42,NULL,'2024-02-08 09:25:52.302471',27),(43,NULL,'2024-02-08 11:42:40.164798',27),(44,NULL,'2024-02-08 11:53:32.649357',27),(45,NULL,'2024-02-08 11:58:50.376274',27),(46,NULL,'2024-02-08 11:58:52.381026',27),(47,NULL,'2024-02-08 12:23:05.754770',27),(48,NULL,'2024-02-08 12:41:12.320740',13),(49,NULL,'2024-02-08 12:41:26.390862',14),(50,NULL,'2024-02-08 12:42:07.727840',27);
/*!40000 ALTER TABLE `login_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-08 20:04:23
