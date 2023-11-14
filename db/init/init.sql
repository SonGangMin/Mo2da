-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: docs.yi.or.kr    Database: Mo2Da
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `carousels`
--
CREATE DATABASE Mo2Da;
use Mo2Da;

DROP TABLE IF EXISTS `carousels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carousels` (
  `carouselNum` int NOT NULL AUTO_INCREMENT,
  `content` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` json DEFAULT NULL,
  `backgroundColor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `textColor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `onlyImg` tinyint(1) NOT NULL,
  `count` bigint NOT NULL DEFAULT '0',
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`carouselNum`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousels`
--

LOCK TABLES `carousels` WRITE;
/*!40000 ALTER TABLE `carousels` DISABLE KEYS */;
INSERT INTO `carousels` VALUES (102,'\r\n\r\n모임은?\r\n모이다','localhost:3000','{\"url\": \"../../images/carousel/1699325248749-00.jpg\", \"filename\": \"1699325248749-00.jpg\"}','#ffcd00','#ffffff',0,2,'2023-11-07 02:45:07','2023-11-11 08:55:09'),(103,'\r\n\r\n영화는?\r\n모두의무비','docs.yi.or.kr:3000','{\"url\": \"../../images/carousel/1699325273447-00.jpg\", \"filename\": \"1699325273447-00.jpg\"}','#000','#FFF',0,3,'2023-11-07 02:46:39','2023-11-11 08:55:13'),(104,'','docs.yi.or.kr:3004','{\"url\": \"../../images/1699325330108-00.jpg\", \"filename\": \"1699325330108-00.jpg\"}','#000','#FFF',1,4,'2023-11-07 02:48:50','2023-11-13 05:05:01'),(105,'\r\n\r\n맛집은?\r\n맛팁!(MATP)','docs.yi.or.kr:3333','{\"url\": \"../../images/carousel/1699692993098-00.jpg\", \"filename\": \"1699692993098-00.jpg\"}','#ffffff','#000000',0,3,'2023-11-07 07:27:45','2023-11-13 04:54:26'),(106,'\r\n\r\n펫 커뮤니티는??\r\n펫프렌즈','docs.yi.or.kr:3002','{\"url\": \"../../images/1699693073580-00.jpg\", \"filename\": \"1699693073580-00.jpg\"}','#ffffff','#ff9d00',0,2,'2023-11-11 08:57:53','2023-11-13 04:54:30');
/*!40000 ALTER TABLE `carousels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communityComments`
--

DROP TABLE IF EXISTS `communityComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communityComments` (
  `commentNum` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` bigint NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `postId` bigint NOT NULL,
  PRIMARY KEY (`commentNum`),
  KEY `communityComments_ibfk_2` (`postId`),
  KEY `communityComments_FK` (`userId`),
  CONSTRAINT `communityComments_FK` FOREIGN KEY (`userId`) REFERENCES `users` (`userNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `communityComments_ibfk_2` FOREIGN KEY (`postId`) REFERENCES `communitys` (`communityNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communityComments`
--

LOCK TABLES `communityComments` WRITE;
/*!40000 ALTER TABLE `communityComments` DISABLE KEYS */;
INSERT INTO `communityComments` VALUES (1,'안녕',17,'2023-10-15 05:46:43','2023-10-15 05:46:43',49),(2,'dfg',17,'2023-10-16 09:01:23','2023-10-16 09:01:23',47),(3,'dfg',17,'2023-10-16 09:01:26','2023-10-16 09:01:26',47),(4,'',17,'2023-10-16 09:03:10','2023-10-16 09:03:10',47),(5,'',17,'2023-10-16 09:03:11','2023-10-16 09:03:11',47),(6,'asdf',17,'2023-10-16 09:20:05','2023-10-16 09:20:05',48),(7,'sdfg',17,'2023-10-16 09:25:33','2023-10-16 09:25:33',48),(8,'sdfg',17,'2023-10-16 09:25:34','2023-10-16 09:25:34',48),(9,'sdf',17,'2023-10-16 10:22:18','2023-10-16 10:22:18',48),(10,'안녕2',17,'2023-10-16 13:14:09','2023-10-16 13:14:09',49),(11,'앙녕',17,'2023-10-16 19:15:53','2023-10-16 19:15:53',49),(12,'안녕',17,'2023-10-16 19:18:36','2023-10-16 19:18:36',49),(13,'댓글',17,'2023-10-16 19:26:56','2023-10-16 19:26:56',49),(14,'답글',17,'2023-10-16 19:27:45','2023-10-16 19:27:45',49),(15,'ㅂㅈㄷ',17,'2023-10-16 19:28:50','2023-10-16 19:28:50',49),(16,'123',17,'2023-10-16 19:29:07','2023-10-16 19:29:07',49),(17,'qwe',17,'2023-10-17 11:37:17','2023-10-17 11:37:17',49),(18,'ㄷㄳ',17,'2023-10-17 12:58:51','2023-10-17 12:58:51',49),(19,'ㅎㅇ',17,'2023-10-17 12:59:14','2023-10-17 12:59:14',49),(20,'나도',17,'2023-10-17 13:02:15','2023-10-17 13:02:15',49),(21,'댓글',17,'2023-10-17 13:03:07','2023-10-17 13:03:07',49),(22,'안녕22',17,'2023-10-17 13:04:06','2023-10-17 13:04:06',49),(23,'댓글 구현',17,'2023-10-17 13:04:15','2023-10-17 13:04:15',49),(24,'댓글 구현',17,'2023-10-17 13:04:19','2023-10-17 13:04:19',49),(25,'댓글댓글',17,'2023-10-17 13:04:56','2023-10-17 13:04:56',49),(26,'1234',17,'2023-10-17 13:05:29','2023-10-17 13:05:29',49),(27,'12344567',17,'2023-10-17 13:05:35','2023-10-17 13:05:35',49),(28,'12344567',17,'2023-10-17 13:05:39','2023-10-17 13:05:39',49),(29,'댓글저장',17,'2023-10-17 13:06:02','2023-10-17 13:06:02',49),(30,'댓글',17,'2023-10-17 13:06:35','2023-10-17 13:06:35',46),(31,'댓글 업',17,'2023-10-17 13:06:46','2023-10-17 13:06:46',46),(32,'댓글클릭',17,'2023-10-17 13:07:13','2023-10-17 13:07:13',46),(33,'오류 확인',17,'2023-10-17 13:07:19','2023-10-17 13:07:19',46),(34,'렌더링확인',17,'2023-10-17 13:07:53','2023-10-17 13:07:53',46),(35,'렌더링확인2',17,'2023-10-17 13:08:00','2023-10-17 13:08:00',46),(36,'댓글 확인',17,'2023-10-17 13:08:55','2023-10-17 13:08:55',42),(37,'댓글',17,'2023-10-17 13:12:01','2023-10-17 13:12:01',42),(38,'ㅂㅈㄷ',17,'2023-10-17 13:12:58','2023-10-17 13:12:58',42),(39,'ㄱㄹㅇ',17,'2023-10-17 13:14:54','2023-10-17 13:14:54',42),(43,'댓글',17,'2023-10-17 13:25:50','2023-10-17 13:25:50',50),(44,'댓글추가',17,'2023-10-17 13:26:32','2023-10-17 13:26:32',50),(45,'댓글추가',17,'2023-10-17 13:28:47','2023-10-17 13:28:47',50),(49,'',17,'2023-10-18 04:42:18','2023-10-18 04:42:18',50),(50,'yyju',17,'2023-10-18 04:42:20','2023-10-18 04:42:20',50),(51,'asdfsadfsadf',17,'2023-10-18 05:28:05','2023-10-18 05:28:05',49),(52,'asdfasdf',17,'2023-10-18 05:28:22','2023-10-18 05:28:22',48),(53,'aa',17,'2023-10-20 05:21:15','2023-10-20 05:21:15',49),(54,'aaaaa',17,'2023-10-20 05:22:16','2023-10-20 05:22:16',49),(55,'ㄴㅇㄹ',17,'2023-10-23 05:51:34','2023-10-23 05:51:34',49),(56,'sdf',17,'2023-10-23 06:29:26','2023-10-23 06:29:26',48),(57,'zzzz',17,'2023-10-23 06:29:41','2023-10-23 06:29:41',50),(58,'zzzzdf',17,'2023-10-23 06:29:45','2023-10-23 06:29:45',50),(59,'',17,'2023-10-23 09:45:57','2023-10-23 09:45:57',51),(60,'',17,'2023-10-23 09:50:31','2023-10-23 09:50:31',51),(61,'관리자\n',17,'2023-10-23 09:50:43','2023-10-23 09:50:43',51),(62,'관리자\n',28,'2023-10-23 09:53:51','2023-10-23 09:53:51',51),(63,'ㅁㄴㅇ',28,'2023-10-23 09:54:43','2023-10-23 09:54:43',51),(64,'ㅁㄴㅇ',28,'2023-10-23 09:56:37','2023-10-23 09:56:37',51),(65,'ss',17,'2023-10-24 06:37:00','2023-10-24 06:37:00',50),(66,'sdf',28,'2023-10-24 08:56:18','2023-10-24 08:56:18',51),(67,'ddd',28,'2023-10-26 09:02:44','2023-10-26 09:02:44',51),(68,'?\n',28,'2023-10-30 08:32:32','2023-10-30 08:32:32',53),(71,'sdf',28,'2023-10-31 08:36:00','2023-10-31 08:36:00',42),(72,'sdf',28,'2023-10-31 08:36:01','2023-10-31 08:36:01',42),(73,'asd',28,'2023-11-07 03:06:55','2023-11-07 03:06:55',59),(74,'d',28,'2023-11-07 08:54:00','2023-11-07 08:54:00',53),(75,'',28,'2023-11-13 02:38:57','2023-11-13 02:38:57',60),(76,'ㅈㄷㄹ',28,'2023-11-13 02:47:03','2023-11-13 02:47:03',49),(77,'ㅈㄷㄹ',28,'2023-11-13 02:47:04','2023-11-13 02:47:04',49);
/*!40000 ALTER TABLE `communityComments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communityFavoriteUsers`
--

DROP TABLE IF EXISTS `communityFavoriteUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communityFavoriteUsers` (
  `favoriteUserNum` bigint NOT NULL AUTO_INCREMENT,
  `postId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`favoriteUserNum`),
  KEY `communityFavoriteUsers_FK_1` (`postId`),
  KEY `communityFavoriteUsers_FK` (`userId`),
  CONSTRAINT `communityFavoriteUsers_FK` FOREIGN KEY (`userId`) REFERENCES `users` (`userNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `communityFavoriteUsers_FK_1` FOREIGN KEY (`postId`) REFERENCES `communityComments` (`commentNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communityFavoriteUsers`
--

LOCK TABLES `communityFavoriteUsers` WRITE;
/*!40000 ALTER TABLE `communityFavoriteUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `communityFavoriteUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communityReplys`
--

DROP TABLE IF EXISTS `communityReplys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communityReplys` (
  `replyNum` bigint NOT NULL AUTO_INCREMENT,
  `userId` bigint NOT NULL,
  `postId` bigint NOT NULL,
  `commentId` bigint NOT NULL,
  `content` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `isParentsReply` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`replyNum`),
  KEY `communityReply_FK_2` (`commentId`),
  KEY `communityReply_FK_1` (`postId`),
  KEY `communityReply_FK` (`userId`),
  CONSTRAINT `communityReply_FK` FOREIGN KEY (`userId`) REFERENCES `users` (`userNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `communityReply_FK_1` FOREIGN KEY (`postId`) REFERENCES `communitys` (`communityNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `communityReply_FK_2` FOREIGN KEY (`commentId`) REFERENCES `communityComments` (`commentNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communityReplys`
--

LOCK TABLES `communityReplys` WRITE;
/*!40000 ALTER TABLE `communityReplys` DISABLE KEYS */;
INSERT INTO `communityReplys` VALUES (36,28,51,62,'관리자\n','2023-10-23 14:12:16','2023-10-23 14:12:16',1),(37,28,51,62,'관리자\n','2023-10-23 14:12:16','2023-10-23 14:12:16',1),(38,28,51,62,'22','2023-10-23 14:12:26','2023-10-23 14:12:26',0),(39,28,49,20,'안녕','2023-10-23 14:16:01','2023-10-23 14:16:01',1),(40,28,49,20,'관리자','2023-10-23 14:16:10','2023-10-23 14:16:10',0),(41,28,49,20,'안녕2','2023-10-23 14:23:34','2023-10-23 14:23:34',1),(42,28,50,45,'sdf','2023-10-24 08:56:58','2023-10-24 08:56:58',1),(43,28,50,45,'sdf','2023-10-24 08:57:00','2023-10-24 08:57:00',0),(44,28,50,45,'sdf','2023-10-24 08:57:04','2023-10-24 08:57:04',0),(45,28,46,31,'답글','2023-10-30 14:00:35','2023-10-30 14:00:35',1),(46,28,46,31,'답글2','2023-10-30 14:00:53','2023-10-30 14:00:53',0),(47,28,59,73,'dd','2023-11-07 03:06:58','2023-11-07 03:06:58',1),(48,28,59,73,'dd','2023-11-07 03:06:59','2023-11-07 03:06:59',1),(49,28,59,73,'d','2023-11-07 03:07:03','2023-11-07 03:07:03',0),(50,28,59,73,'d','2023-11-07 03:07:04','2023-11-07 03:07:04',0),(51,28,59,73,'d','2023-11-07 03:07:04','2023-11-07 03:07:04',0),(52,28,59,73,'dsdf','2023-11-07 03:07:05','2023-11-07 03:07:05',0),(53,28,59,73,'dsdf','2023-11-07 03:07:05','2023-11-07 03:07:05',0),(54,28,59,73,'dsdf','2023-11-07 03:07:05','2023-11-07 03:07:05',0),(55,28,49,1,'ㅈㄷㄷㄹㅈ','2023-11-13 02:46:57','2023-11-13 02:46:57',1),(56,28,59,73,'ㄴㅇㄹ','2023-11-13 03:02:38','2023-11-13 03:02:38',0),(57,28,59,73,'ㄴㅇㄹ','2023-11-13 03:02:39','2023-11-13 03:02:39',0),(58,28,59,73,'ㅇㄹ','2023-11-13 03:02:43','2023-11-13 03:02:43',1),(59,28,59,73,'ㅇㄹ','2023-11-13 03:02:44','2023-11-13 03:02:44',1);
/*!40000 ALTER TABLE `communityReplys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communitys`
--

DROP TABLE IF EXISTS `communitys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communitys` (
  `communityNum` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  `view` int DEFAULT '0',
  `userId` bigint NOT NULL,
  PRIMARY KEY (`communityNum`),
  KEY `communitys_ibfk_1` (`userId`),
  CONSTRAINT `communitys_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communitys`
--

LOCK TABLES `communitys` WRITE;
/*!40000 ALTER TABLE `communitys` DISABLE KEYS */;
INSERT INTO `communitys` VALUES (32,'잡담','','ㅁㄴㅇdzzz','<p>ㅁㄴㅇsdfzzz</p>','2023-10-14 18:13:25','2023-11-07 02:30:57',21,2),(42,'잡담','','1015','<p>522</p>','2023-10-14 20:22:45','2023-10-31 08:37:08',11,17),(43,'질문','','15','<p>523</p>','2023-10-14 20:23:32','2023-10-14 20:23:32',0,17),(44,'잡담','','534','<p>1015</p>','2023-10-14 20:34:55','2023-11-13 02:46:33',3,17),(45,'질문','','1015','<p>542</p>','2023-10-14 20:42:24','2023-11-11 10:54:47',2,17),(46,'질문','','1015 544','<p>.</p>','2023-10-14 20:43:36','2023-10-30 14:00:29',9,17),(47,'질문','','ㅂㅈㄷ','<p>ㅂㅈㄷ</p>','2023-10-14 20:45:08','2023-10-17 13:06:29',6,17),(48,'질문','','제발 시간좀','<p>547</p>','2023-10-14 20:46:56','2023-11-11 10:38:56',48,17),(49,'후기','','ㅂㅈㄷ','<p>ㅂㅈㄷㅂㅈ</p>','2023-10-14 20:50:17','2023-11-13 06:38:29',627,17),(50,'후기','','ㅁㄴㅇ','<p>ㅁㄴㅇ</p>','2023-10-17 13:25:35','2023-11-13 02:59:42',46,17),(51,'질문','','aaaa','<p>질문이요</p>','2023-10-23 06:53:01','2023-10-30 13:56:22',68,17),(52,'후기','사이트 개발','ㅇㅇㅇ','<p>ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</p>','2023-10-26 10:16:08','2023-11-13 06:38:26',9,17),(53,'후기','','재밌엇습니다','<p>ㄴㅇㄹㄴㅇㄹ</p>','2023-10-30 02:58:51','2023-11-13 05:01:27',34,17),(59,'잡담','','재미지다','<p>ㅎㅎㅎ</p>','2023-11-03 04:07:59','2023-11-13 04:59:07',14,28),(60,'잡담','','ㄴㅇㄹ','<p>ㄴㅇㄹㄴㅇㄹ</p>','2023-11-11 08:50:25','2023-11-13 06:38:31',23,28);
/*!40000 ALTER TABLE `communitys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `messageNum` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userNum` bigint NOT NULL,
  `state` int NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`messageNum`),
  KEY `messages_FK` (`userNum`),
  CONSTRAINT `messages_FK` FOREIGN KEY (`userNum`) REFERENCES `users` (`userNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (66,'zzz',28,1,'2023-11-03 10:53:38','2023-11-03 12:01:50'),(67,'dsdf',28,1,'2023-11-03 10:59:44','2023-11-03 12:01:47'),(68,'일반관리자',40,1,'2023-11-03 11:02:53','2023-11-03 12:01:45'),(69,'안녕하세요',40,1,'2023-11-03 11:27:37','2023-11-03 12:01:42'),(72,'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',40,1,'2023-11-03 11:28:19','2023-11-03 11:55:06'),(73,'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',40,1,'2023-11-03 11:28:24','2023-11-03 11:53:17'),(74,'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',40,1,'2023-11-03 11:31:19','2023-11-03 11:53:15'),(76,'  display: -webkit-box;   -webkit-box-orient: vertical;   -webkit-line-clamp: 2;   word-break: break-all;   overflow: hidden;  display: -webkit-box;   -webkit-box-orient: vertical;   -webkit-line-clamp: 2;   word-break: break-all;   overflow: hidden;',40,1,'2023-11-03 11:37:35','2023-11-03 11:52:44'),(77,'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇdddddddddddddddddd',40,1,'2023-11-03 11:37:49','2023-11-03 11:52:36'),(80,'이준영씨 차트좀 만들어주세요',28,0,'2023-11-03 11:55:20','2023-11-03 11:55:20'),(81,'ㅇㅇㅇ',28,1,'2023-11-03 11:56:52','2023-11-03 12:01:30'),(82,'이준영씨 뭐하세요',28,0,'2023-11-07 01:53:21','2023-11-07 01:53:21'),(83,'fff',28,1,'2023-11-07 03:04:45','2023-11-07 08:12:38'),(84,'알겠스빈다... ㅠㅠ',28,0,'2023-11-07 06:04:47','2023-11-07 06:04:47'),(85,'d',28,1,'2023-11-07 09:05:16','2023-11-07 09:05:47'),(86,'s',28,1,'2023-11-07 09:05:18','2023-11-07 09:05:46'),(87,'d',28,1,'2023-11-07 09:05:20','2023-11-07 09:05:45'),(88,'d',28,1,'2023-11-07 09:05:21','2023-11-07 09:05:43'),(89,'dd',28,1,'2023-11-13 04:53:07','2023-11-13 04:53:11');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registercomments`
--

DROP TABLE IF EXISTS `registercomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registercomments` (
  `commentNum` bigint NOT NULL AUTO_INCREMENT,
  `registerNum` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`commentNum`),
  KEY `NewTable_FK` (`registerNum`),
  KEY `registercomments_FK` (`userId`),
  CONSTRAINT `NewTable_FK` FOREIGN KEY (`registerNum`) REFERENCES `registers` (`registerNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `registercomments_FK` FOREIGN KEY (`userId`) REFERENCES `users` (`userNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registercomments`
--

LOCK TABLES `registercomments` WRITE;
/*!40000 ALTER TABLE `registercomments` DISABLE KEYS */;
INSERT INTO `registercomments` VALUES (27,1,34,'aa','2023-10-20 14:29:08','2023-10-20 14:29:08'),(28,1,28,'ㄴㅇㄹ','2023-10-20 14:59:55','2023-10-20 14:59:55'),(29,1,28,'ㄴㅇㄹ','2023-10-20 14:59:56','2023-10-20 14:59:56'),(30,1,28,'ㅋㅋㅋ','2023-10-20 14:59:58','2023-10-20 14:59:58'),(31,123,28,'ㅌㅋㅊㅍ','2023-10-20 15:17:22','2023-10-20 15:17:22'),(32,123,28,'ㅋㅋㅋ','2023-10-20 15:17:24','2023-10-20 15:17:24'),(33,123,28,'ㅇㅇㄹ','2023-10-20 15:17:28','2023-10-20 15:17:28'),(34,1,34,'aa','2023-10-20 15:28:59','2023-10-20 15:28:59'),(35,123,28,'ㅋㅋㅋ','2023-10-23 12:29:00','2023-10-23 12:29:00'),(36,125,28,'zzz','2023-10-23 15:19:07','2023-10-23 15:19:07'),(38,123,28,'zzz','2023-10-23 15:28:24','2023-10-23 15:28:24'),(39,122,28,'xzxc','2023-10-23 15:38:50','2023-10-23 15:38:50'),(40,125,28,'ㅋㅋ','2023-10-23 18:58:35','2023-10-23 18:58:35'),(41,128,28,'aaasdfsadf','2023-10-24 14:25:09','2023-10-24 14:25:09'),(42,128,28,'ㅇㅋㅇㅋ','2023-10-24 14:25:16','2023-10-24 14:25:16'),(43,128,34,'asdf','2023-10-24 15:18:05','2023-10-24 15:18:05'),(44,128,34,'ㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹ','2023-10-24 15:22:58','2023-10-24 15:22:58'),(46,122,28,'zz','2023-10-24 18:07:59','2023-10-24 18:07:59'),(47,127,28,'ㅋㅋㅋ','2023-10-27 15:56:17','2023-10-27 15:56:17'),(48,127,28,'ㅇㅇㅇ','2023-10-27 15:56:20','2023-10-27 15:56:20'),(49,130,28,'ㅇㅇ','2023-10-27 15:56:57','2023-10-27 15:56:57'),(50,127,28,'??','2023-10-30 18:00:00','2023-10-30 18:00:00'),(51,135,28,'asd','2023-11-03 21:27:30','2023-11-03 21:27:30'),(52,141,28,'ㄴㅇㄹ','2023-11-13 11:59:23','2023-11-13 11:59:23');
/*!40000 ALTER TABLE `registercomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registers`
--

DROP TABLE IF EXISTS `registers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registers` (
  `registerNum` bigint NOT NULL AUTO_INCREMENT,
  `userNum` bigint NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personnel` int NOT NULL,
  `meeting` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` bigint NOT NULL DEFAULT '0',
  `favorite` bigint NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`registerNum`),
  KEY `registers_FK` (`userNum`),
  CONSTRAINT `registers_FK` FOREIGN KEY (`userNum`) REFERENCES `users` (`userNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registers`
--

LOCK TABLES `registers` WRITE;
/*!40000 ALTER TABLE `registers` DISABLE KEYS */;
INSERT INTO `registers` VALUES (1,34,'수정합니다','운동',3,'온라인','z','ㅁㅁ','2023-11-01','ㅁㅁasd',478,0,'2023-10-20 05:19:12','2023-11-13 02:26:37',2),(120,34,'aa','운동',1,'온라인','a','a','2023-10-20','aa',86,0,'2023-10-20 06:09:35','2023-10-27 11:34:11',2),(122,28,'ㅋㅋㅋㄴㅇㄹzzz','운동',2,'온라인','ㄴㅇㄹㄴㅇㄹ','ㄴㅇㄹㄴㅇㄹ','2023-10-30','ㅋㅋㄴㅇㄹㄴㅇㄹ',88,0,'2023-10-20 06:14:08','2023-10-31 02:27:00',2),(123,28,'ㅋㅋㅋ','운동',2,'온라인','ㄴㅇㄹ','ㄴㅇㄹ','2023-10-31','ㄴㅇㄹ',49,0,'2023-10-20 06:17:09','2023-10-27 07:52:05',2),(124,34,'aa','운동',1,'온라인','aa','aa','2023-10-20','aa',5,0,'2023-10-20 06:29:23','2023-10-27 07:47:17',2),(125,34,'ㅁㅁ','운동',2,'오프라인','ㅁㅁ','ㅁㅁ','2023-10-26','ㅁㅁ',135,0,'2023-10-22 07:25:03','2023-10-27 10:27:55',2),(127,28,'스터디','스터디',11,'오프라인','여자','카톡','2024-01-31','스터디하실분~',58,0,'2023-10-23 14:24:52','2023-11-07 08:36:00',1),(128,34,'수정수정수정수정수정수정수정수정2222222','게임',2,'오프라인','a','a','2023-10-25','aa',58,0,'2023-10-24 04:49:14','2023-10-27 07:47:17',2),(130,28,'자바스크립트 공부하실분','기타',7,'오프라인','공부하길원하는사람','카카오톡','2024-06-21','자바스크립트 함께 공부하실분\n\n노트북 가지고',11,0,'2023-10-24 09:14:17','2023-11-11 10:55:07',1),(131,28,'ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ','운동',10,'오프라인','ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ','ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ','2023-10-31','ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ',7,0,'2023-10-27 03:33:53','2023-11-02 02:27:00',2),(134,28,'운동좋아하는사람','운동',10,'온라인','ㅋㅋ','ㅋㅋ','2024-03-21','ㅇㅇ',2,0,'2023-10-30 12:01:24','2023-11-07 08:54:12',1),(135,28,'옵치잘하는사람','게임',11,'온라인','딜러','카톡','2024-04-25','모집합니다',2,0,'2023-11-02 07:52:06','2023-11-03 12:27:31',1),(136,28,'자바스크립트 공부하실분','스터디',9,'오프라인','공부','카톡','2024-05-23','ㅎㅎㅎ',2,0,'2023-11-02 07:52:40','2023-11-13 06:38:24',1),(137,28,'sdf','게임',1,'온라인','ss','ss','2023-11-02','dd',0,0,'2023-11-02 10:25:13','2023-11-03 03:27:00',2),(138,28,'모디라','게임',8,'오프라인','딜러','카톡','2024-03-28','옵치하자',4,0,'2023-11-03 04:07:48','2023-11-13 06:38:08',1),(139,40,'피파온라인 함뜨실분ㄴㄴㅇ','게임',1,'온라인','피파','댓글','2023-11-28','피파 고수만',43,0,'2023-11-03 11:34:58','2023-11-13 05:16:16',1),(140,28,'ㅇㅇㅇ','운동',10,'온라인','ㅋㅋ','ㅇㅇ','2023-11-30','ㅇㅇ',4,0,'2023-11-11 08:28:17','2023-11-13 06:25:02',2),(141,28,'피파하자','게임',4,'온라인','2:2','댓글','2023-12-28','피파잘하시는분?',9,0,'2023-11-11 08:36:37','2023-11-13 03:13:00',1),(142,40,'qa','운동',3,'오프라인','dc','asd','2023-11-23','x',0,0,'2023-11-13 06:39:11','2023-11-13 06:39:11',1);
/*!40000 ALTER TABLE `registers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userNum` bigint NOT NULL AUTO_INCREMENT,
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nick` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `grade` int NOT NULL DEFAULT '1',
  `addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userNum`),
  UNIQUE KEY `users_UN` (`id`),
  UNIQUE KEY `users_UN1` (`nick`),
  UNIQUE KEY `users_UN2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'ss','ss','ss','ss','ss','010',2,1,'','여','2023-09-05 08:14:24','2023-10-26 05:20:09'),(17,'antjd0419','antjd1043','김무성','무성ㅇㅇ','antjd0419@gmail.com','01075335244',23,2,'서울 은평구 북한산로 2ㄴㅇㄹㄴㅇㄹ','남','2023-10-14 15:09:54','2023-11-07 07:20:40'),(21,'asdf','asdf','asdf','asdf','asdf','1',12,1,'asdf','남','2023-10-16 09:14:01','2023-10-16 09:14:01'),(27,'aazz','$2b$15$ELuQLlzIbnJFHd639CouoeQ4UDpM9szHcAQnEYb53Dkt/Yh00O.8q','손ㅋㅋㅋ','asd@das.com','asd@das.com','02',96456,1,'s','남','2023-10-16 09:18:14','2023-11-02 05:26:09'),(28,'admin','$2b$15$o/5JZooD7S9UYQWotIa/wuM1nwzw9GmBYsP1qZiayY5sD8DF5nbNy','관리자이름','관리자닉네임','admin@admin.com','010',930101,3,'경기 가평군 가평읍 북한강변로 9undefined','남','2023-10-16 10:41:41','2023-11-07 03:22:02'),(30,'wnsdud96908','$2b$15$k3M6gNhSRlPWmLYviQ8b6O.59s2WfTuzzRP7K0xwxwGkq/8xOSwXC','이준영','이준영','wnsdud96908@naver.com','010-7338-3966',971018,2,'구암로','여','2023-10-17 06:00:51','2023-11-02 12:24:47'),(31,'wnsdud1','$2b$15$y23KQVeF47h9y3NyhzC3wes0L4DMeszna3lcaaQ/xGu6NmKku//Ae','리주녕','어이','qudtls519@naver.com','01098545645',12315,1,'부산 북구 가람로','남','2023-10-19 05:52:51','2023-10-19 05:52:51'),(33,'wsgkdj','$2b$15$Gdal6y5LmS3/9CBWrZyj9uWeRbuTuWULrxbqBVW.8WxpA/E0NAOn.','어이어이','세에에에에','우우우우우','1231451452',1234,1,'서울 성동구 서울숲길 17 ㅇㄹㄴㅇㄹ','남','2023-10-19 08:21:44','2023-10-19 08:21:44'),(34,'kdhun1838','$2b$15$MkL/NvAZZvsPxDeZA8hok.rqLKfLw2xyaA4EvNDdvpWPTh8FuVe2e','김다훈','다훈','kdhun@kdh','010',10,2,'asdfundefined','남','2023-10-20 04:16:55','2023-11-13 01:51:14'),(40,'rkdals','$2b$15$Oel/UpXyQbhIFGvWiJQ4ounz9cvP2UH088ANlo38KkcM1ABMDSvWq','강민','강민닉네임','sk@sdf.com','010',930628,2,'대구 동구 송라로10길 34','남','2023-10-24 12:18:51','2023-11-03 11:02:36'),(41,'user','$2b$15$0BEAYydLRpdllwZbBdLNDud3QSud9J.x0qPjQ.DmeElQDf3bW3e8O','유저이름','유저닉네임','user@user.com','010',980404,1,'대전 동구 판교1길 3','남','2023-10-26 02:50:33','2023-10-26 02:50:33'),(44,'wow','$2b$15$MaUXka3kBKKILt7/oDESh.3e1elTDjoCtdLlpSeHdmRXPLdk.B8wa','adsf','sadf','WVDSF','21343',12341,1,'경기 성남시 분당구 판교역로2번길 1203동 1903호','남','2023-10-26 06:58:25','2023-10-26 06:58:25'),(45,'test001','$2b$15$qd4HSl3mf7PB4N65jKVEKOQduP83qVyH2SDW2UG/pefsg97jx9HI6','테스트','테스트','est2sadf@asdf.com','010',930202,1,'sdfsdfasdfsdf','남','2023-10-30 11:22:34','2023-10-30 11:22:34'),(58,'a','$2b$15$gARj2CMqlCEnhdkuO5jq/.a26X4PRk7T/dYcpWd743fFQvPwkk10G','fd','s','s','1',1,1,'ddafg','남','2023-11-03 07:47:09','2023-11-03 08:02:45'),(59,'dasfdsfsd','$2b$15$IuNowJXXtlGqapaozL6p4.gjKcVweAHhzyIIkSGDv4KiyQFEa.oji','rbegdvb','bdbgnrn','a','21341',1,1,'adfadsdf','남','2023-11-12 14:04:11','2023-11-12 14:04:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitors` (
  `visitorNum` int NOT NULL AUTO_INCREMENT,
  `visitor_count` int NOT NULL DEFAULT '0',
  `user_count` int NOT NULL DEFAULT '0',
  `total_count` int NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  PRIMARY KEY (`visitorNum`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` VALUES (27,1,4,5,'2023-10-24'),(28,2,1,3,'2023-10-25'),(29,2,5,7,'2023-10-26'),(30,22,1,23,'2023-10-27'),(31,2,4,6,'2023-10-28'),(32,2,1,3,'2023-10-29'),(33,3,0,3,'2023-10-30'),(34,4,10,14,'2023-10-31'),(35,2,1,3,'2023-11-01'),(36,1,4,5,'2023-11-02'),(37,1,4,5,'2023-11-03'),(39,1,1,2,'2023-11-04'),(40,1,2,3,'2023-11-05'),(41,2,3,5,'2023-11-06'),(42,2,3,5,'2023-11-07'),(43,1,1,2,'2023-11-11'),(44,0,3,3,'2023-11-12'),(45,0,3,3,'2023-11-13'),(46,0,0,0,'2023-11-14');
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Mo2Da'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-14 16:41:29
