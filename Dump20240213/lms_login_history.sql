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
-- Table structure for table `login_history`
--

DROP TABLE IF EXISTS `login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_history` (
  `log_id` bigint NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `login_time` datetime(6) NOT NULL,
  `member_id` bigint NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `FKq2swtm0wd8kuwki103rgvmh6t` (`member_id`),
  CONSTRAINT `FKq2swtm0wd8kuwki103rgvmh6t` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_history`
--

LOCK TABLES `login_history` WRITE;
/*!40000 ALTER TABLE `login_history` DISABLE KEYS */;
INSERT INTO `login_history` VALUES (1,NULL,'2024-02-13 09:40:02.187017',15),(2,NULL,'2024-02-13 09:41:04.338743',1),(3,NULL,'2024-02-13 10:36:44.125336',15),(4,NULL,'2024-02-13 10:43:18.578028',15),(5,NULL,'2024-02-13 10:59:31.757644',17),(6,NULL,'2024-02-13 11:03:01.917754',18),(7,NULL,'2024-02-13 11:04:56.877288',2),(8,NULL,'2024-02-13 11:09:52.032894',15),(9,NULL,'2024-02-13 11:11:22.444902',2),(10,NULL,'2024-02-13 11:12:30.060492',1),(11,NULL,'2024-02-13 11:21:37.498112',15),(12,NULL,'2024-02-13 11:46:58.172708',19),(13,NULL,'2024-02-13 11:49:40.360570',20),(14,NULL,'2024-02-13 11:50:43.420239',20),(15,NULL,'2024-02-13 11:54:39.926607',20),(16,NULL,'2024-02-13 11:56:37.858604',21),(17,NULL,'2024-02-13 11:58:48.310817',20),(18,NULL,'2024-02-13 11:59:56.214152',22),(19,NULL,'2024-02-13 12:05:48.387086',23),(20,NULL,'2024-02-13 12:08:26.733277',24),(21,NULL,'2024-02-13 12:11:16.546040',25),(22,NULL,'2024-02-13 12:13:28.866956',26),(23,NULL,'2024-02-13 12:13:29.027823',26),(24,NULL,'2024-02-13 12:18:32.821543',27),(25,NULL,'2024-02-13 12:21:11.800810',28),(26,NULL,'2024-02-13 12:24:21.594380',29),(27,NULL,'2024-02-13 12:34:39.531097',2),(28,NULL,'2024-02-13 12:47:19.722062',1),(29,NULL,'2024-02-13 12:51:39.017695',2),(30,NULL,'2024-02-13 12:52:16.777398',15),(31,NULL,'2024-02-13 12:52:41.056581',2),(32,NULL,'2024-02-13 12:52:56.336355',1);
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

-- Dump completed on 2024-02-13 12:54:13
