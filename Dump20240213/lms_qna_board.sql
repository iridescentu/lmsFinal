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
-- Table structure for table `qna_board`
--

DROP TABLE IF EXISTS `qna_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna_board` (
  `qna_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `question_text` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `course_id` bigint NOT NULL,
  `member_id` bigint NOT NULL,
  PRIMARY KEY (`qna_id`),
  KEY `FKlwkn03noudiqds4i8v8ohmoqr` (`course_id`),
  KEY `FK55pw91v2ctmq6ecm2o7d4iopa` (`member_id`),
  CONSTRAINT `FK55pw91v2ctmq6ecm2o7d4iopa` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`),
  CONSTRAINT `FKlwkn03noudiqds4i8v8ohmoqr` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna_board`
--

LOCK TABLES `qna_board` WRITE;
/*!40000 ALTER TABLE `qna_board` DISABLE KEYS */;
INSERT INTO `qna_board` VALUES (1,'2024-02-13 10:55:16.791399','토익의 구조 이해 부분에서 2 번 문제가 잘 이해되지 않아요. 2 번 문제에 대해 상세하게 설명해 주실 수 있나요?','2024-02-13 10:55:16.791399',1,15),(2,'2024-02-13 11:01:25.564875','강의 내용이 조금 어려운 것 같은데 기본 어휘 및 문법 강의의 3 번 문제에 대해 설명해 주실 수 있을까요?','2024-02-13 11:01:25.564875',1,17),(3,'2024-02-13 11:04:21.575353','잘 외우고 열심히 공부하면 됩니다.','2024-02-13 11:04:21.575353',1,18),(4,'2024-02-13 11:11:01.922461','과제 1 번의 정답이 왜 satisfied인가요? 자세히 설명해 주시면 감사하겠습니다.','2024-02-13 11:11:01.922461',1,15);
/*!40000 ALTER TABLE `qna_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-13 11:13:20