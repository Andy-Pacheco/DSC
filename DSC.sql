CREATE DATABASE  IF NOT EXISTS `deluxe` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `deluxe`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: deluxe
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievements` (
  `achievement_id` int NOT NULL AUTO_INCREMENT,
  `trophy_avatar` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`achievement_id`),
  UNIQUE KEY `achievement_id_UNIQUE` (`achievement_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `spotify_link` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (49,'Italy',NULL,NULL),(50,'Spain',NULL,NULL),(51,'United Kingdom',NULL,NULL),(52,'Greece',NULL,NULL),(53,'Serbia',NULL,NULL),(54,'Sweden',NULL,NULL),(55,'Portugal',NULL,NULL),(56,'Romania',NULL,NULL),(57,'France',NULL,NULL),(58,'Norway',NULL,NULL),(59,'Belgium',NULL,NULL),(60,'Denmark',NULL,NULL),(61,'Turkey',NULL,NULL),(62,'Ukraine',NULL,NULL),(63,'Slovenia',NULL,NULL),(64,'Irland',NULL,NULL),(65,'Bulgaria',NULL,NULL),(66,'San Marino',NULL,NULL),(67,'Russia',NULL,NULL),(68,'Belarus',NULL,NULL),(69,'South Africa',NULL,NULL),(70,'Andorra',NULL,NULL),(71,'Morocco',NULL,NULL),(72,'Poland',NULL,NULL),(73,'Germany',NULL,NULL),(74,'Finland',NULL,NULL),(75,'Malta',NULL,NULL),(76,'Canada',NULL,NULL),(77,'Monaco',NULL,NULL),(78,'Switzerland',NULL,NULL),(79,'Austria',NULL,NULL),(80,'Hungary',NULL,NULL),(81,'Cyprus',NULL,NULL),(82,'Israel',NULL,NULL),(83,'The Netherlands',NULL,NULL),(84,'Croatia',NULL,NULL),(85,'South Korea',NULL,NULL),(86,'Iceland',NULL,NULL),(87,'Luxuembourg',NULL,NULL),(88,'Estonia',NULL,NULL),(89,'New Zealand',NULL,NULL),(90,'Australia',NULL,NULL),(91,'Kazakhstan',NULL,NULL),(92,'Lithuania',NULL,NULL),(104,'Latvia',NULL,NULL),(105,'United States',NULL,NULL),(106,'Albania',NULL,NULL),(124,'Iran',NULL,NULL),(125,'Mexico',NULL,NULL),(126,'Bosnia-Herzegovina',NULL,NULL),(127,'Czech Republic',NULL,NULL),(128,'Armenia',NULL,NULL),(129,'Chile',NULL,NULL),(130,'Georgia',NULL,NULL),(131,'Lebanon',NULL,NULL),(132,'Ecuador',NULL,NULL),(133,'Azerbaijan',NULL,NULL),(134,'Puerto Rico',NULL,NULL),(135,'Egypt',NULL,NULL),(136,'Moldova',NULL,NULL),(137,'Colombia',NULL,NULL),(138,'Cuba',NULL,NULL),(139,'Cambodia',NULL,NULL);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_edition`
--

DROP TABLE IF EXISTS `current_edition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `current_edition` (
  `song_id` int NOT NULL,
  `semi_order` int NOT NULL,
  `finally_order` int DEFAULT NULL,
  `finalist` tinyint DEFAULT NULL,
  UNIQUE KEY `song_id_UNIQUE` (`song_id`),
  UNIQUE KEY `finally_order_UNIQUE` (`finally_order`),
  CONSTRAINT `song_id_4` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_edition`
--

LOCK TABLES `current_edition` WRITE;
/*!40000 ALTER TABLE `current_edition` DISABLE KEYS */;
/*!40000 ALTER TABLE `current_edition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_vote`
--

DROP TABLE IF EXISTS `current_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `current_vote` (
  `vote_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `song_id` int NOT NULL,
  `points` int NOT NULL,
  `round` int DEFAULT NULL,
  PRIMARY KEY (`vote_id`),
  KEY `user_id_6_idx` (`user_id`),
  KEY `song_id_5_idx` (`song_id`),
  CONSTRAINT `song_id_5` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`),
  CONSTRAINT `user_id_6` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_vote`
--

LOCK TABLES `current_vote` WRITE;
/*!40000 ALTER TABLE `current_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `current_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edition`
--

DROP TABLE IF EXISTS `edition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edition` (
  `edition_id` int NOT NULL,
  `semi` tinyint DEFAULT NULL,
  `semi_1_yl` varchar(100) DEFAULT NULL,
  `semi_1_sl` varchar(100) DEFAULT NULL,
  `semi_2_yl` varchar(100) DEFAULT NULL,
  `semi_2_sl` varchar(100) DEFAULT NULL,
  `final_yl` varchar(100) DEFAULT NULL,
  `final_sl` varchar(100) DEFAULT NULL,
  `state` int NOT NULL,
  PRIMARY KEY (`edition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edition`
--

LOCK TABLES `edition` WRITE;
/*!40000 ALTER TABLE `edition` DISABLE KEYS */;
INSERT INTO `edition` VALUES (1,0,NULL,NULL,NULL,NULL,'https://www.youtube.com/watch?v=JFyEx-DGvfk&list=PLN3IRkahE83dxMbq-KHzBvw6YYizRbd0k',NULL,1),(2,0,NULL,NULL,NULL,NULL,'https://www.youtube.com/watch?v=eGeSdjU1HrA&list=PLN3IRkahE83eU3nhvrqBVjAHjIXMUNoRL',NULL,1),(3,0,NULL,NULL,NULL,NULL,'https://www.youtube.com/watch?v=ZbsqG_R3ySE&list=PLN3IRkahE83cjIkN6cmCZ8XxQbJGV-Asl',NULL,1),(4,1,'https://www.youtube.com/watch?v=TSJ7Gd0lsgg&list=PLN3IRkahE83fBsxDPNv81mP_Yb5eTZTZb',NULL,'https://www.youtube.com/watch?v=c5q_upIGd_4&list=PLN3IRkahE83fTWc0c0CI6bmaM3Xh63U9H',NULL,'https://www.youtube.com/watch?v=ZoymjG314T4&list=PLN3IRkahE83dJ-0SNz2fG_XG_i2hf08mT',NULL,1),(5,1,'https://www.youtube.com/watch?v=fT8ElbZTGdg&list=PLN3IRkahE83cGRAWFrhtTv7LWLMQ_5JHt',NULL,'https://www.youtube.com/watch?v=nYdPtcx-4mo&list=PLN3IRkahE83efilmZl5jnVoXtEUBXLfI7',NULL,'https://www.youtube.com/watch?v=LkWaSCKKWvU&list=PLN3IRkahE83ck2GV3F0VKBDqec8APlSxs',NULL,1),(6,1,'https://www.youtube.com/watch?v=gACCfaI3GAA&list=PLN3IRkahE83fi4IR2ApjALfGrv5ej9SAN',NULL,'https://www.youtube.com/watch?v=NUg-xSLvZus&list=PLN3IRkahE83dup-FXxisdRaNxWhcRTHxE',NULL,'https://www.youtube.com/watch?v=gACCfaI3GAA&list=PLN3IRkahE83fTVvnbQSGkaWos96ZQswC1',NULL,1),(7,1,'https://www.youtube.com/watch?v=8gM1dXiPY6A&list=PLN3IRkahE83fBK0hGoI6XePBLxN7_R5NP','https://open.spotify.com/playlist/1xaeIAWb11NvjXrEYQB4FR?si=h_SEBo4hQaeMQlirLTwd4g','https://www.youtube.com/watch?v=APoIEpnNiEI&list=PLN3IRkahE83ds7TKv6TdAU742bsoJDP1i','https://open.spotify.com/playlist/02J75DKf62P7hOQFPDCF9y?si=QmO9rLlETrWVVyKVSZ1rkg','https://www.youtube.com/watch?v=mdXJk4N_M5M&list=PLN3IRkahE83emObJfl0H5N9pGgCWTnz4V',NULL,1),(8,1,'https://www.youtube.com/watch?v=i-tsZRuxKl4&list=PLN3IRkahE83en7Ac0VDz8ISXXlJJLQtX1',NULL,'https://www.youtube.com/watch?v=5KVk8mHOOkQ&list=PLN3IRkahE83cYAN8LKAEwuuUxeoheyec9',NULL,'https://www.youtube.com/watch?v=JyqemIbjcfg&list=PLN3IRkahE83e5oIvPmzfBmdmsXd2JolM-','https://open.spotify.com/playlist/0nuBRSXwyzhtEhcphoDYZf?si=UH_b3nH9R3SYxAoMaA8OpA',1),(9,1,'https://www.youtube.com/watch?v=lmc21V-zBq0&list=PLN3IRkahE83fzWMRj6UdJioxnnA682756',NULL,NULL,NULL,'https://www.youtube.com/watch?v=lmc21V-zBq0&list=PLN3IRkahE83cMK5P2daVBTZeIXpX4v7Ai','https://open.spotify.com/playlist/05P3SudBvYkFkiBXhuSEzn?si=Zc8LqCKJTyyuMeJDJLu5DA',1),(10,1,NULL,NULL,NULL,NULL,NULL,NULL,1),(11,1,'https://www.youtube.com/watch?v=Ug2UoHoLZiQ&list=PLN3IRkahE83dGcLcnltVSgSk6nDKsYzM_',NULL,'https://www.youtube.com/watch?v=2rElXO3wcC0&list=PLN3IRkahE83dJ8J_rYCEUhkRkPf3AswPV',NULL,'https://www.youtube.com/watch?v=fs5sxTIyn0s&list=PLN3IRkahE83enY2ZSEoyHbGNdGc9N61Mo','https://open.spotify.com/playlist/12BJHhfZ5W9yeWu0ud40gN?si=5L59-BqeTLulbkMQwkdYeQ',1),(12,1,'https://www.youtube.com/watch?v=IC3ks9jPLRc&list=PLN3IRkahE83eejFu90zU8yT79_ttU8S4W',NULL,'https://www.youtube.com/watch?v=Rw1Me3o5naY&list=PLN3IRkahE83dM0eCKTOi4kanzbwsyJ23B',NULL,'https://www.youtube.com/watch?v=icZ-OlVSvb4&list=PLN3IRkahE83f9xkrl4N1q3LNzrhH5JxUR',NULL,1),(13,1,'https://www.youtube.com/watch?v=uRj_4YZXLQY&list=PLN3IRkahE83f678OD98vD3ivA8oYA6ppy','https://open.spotify.com/playlist/3JU9QAqpLXKZAuRpHQ2wXG?si=W-CQuF6nTGKw_WJHqOYszw','https://www.youtube.com/watch?v=LDsxtBVLyss&list=PLN3IRkahE83cJYYg57oGjLzCmuPj-6dLD','https://open.spotify.com/playlist/0hKMVVJw9dvorFdCIN5IxF?si=hRORwRbdTuqHKHJfcJqO-w','https://www.youtube.com/watch?v=TjLT1nde_UM&list=PLN3IRkahE83fXoghHk6TLTBW2-vOwUE-3','https://open.spotify.com/playlist/7paCRIR9vGjgOgRvV8ZT3u?si=tT5vI_LgQ8mt_Uhqg0wUIw',1),(14,1,'https://www.youtube.com/watch?v=MngGNxGiEBY&list=PLN3IRkahE83ek6ilI1MlL7ewcAbj3tlRC','https://open.spotify.com/playlist/5AJHInOOPO2YvLNdVowrdI?si=e7B8LeSfQGOMNHjAMyLkZA','https://www.youtube.com/watch?v=Pue3cewj618&list=PLN3IRkahE83fR-5xlFJiahK1J3kSHFbY0','https://open.spotify.com/playlist/0b1wWm9jRgtvxgXB1CnyDq?si=AxGPezkzTTuU84U5AoMv1A','https://www.youtube.com/watch?v=oQBiPwklN_Q&list=PLN3IRkahE83cP-tLpHcXa42aIXSLtrwKY','https://open.spotify.com/playlist/7AEukReNtrHQhamyYdrlfn?si=IFxssnHOSNiiwrs_gNP3JA',1),(15,1,'https://www.youtube.com/watch?v=0eD4AeUfRQY&list=PLN3IRkahE83eHV01dilLMXXM5GBes3nUd','https://open.spotify.com/playlist/0uiboy9aEw147TUForDWFI?si=vXazFdKMSVKstzDxMdYyYQ','https://www.youtube.com/watch?v=cIriwVhRPVA&list=PLN3IRkahE83cfCt2MU-vkOyaJvbAW5DcT','https://open.spotify.com/playlist/3VMbIbABT62aPjt6XNnNRy?si=xyMmXRoOQJySyMC7qX3Nkw','https://www.youtube.com/watch?v=92w9r0puvl0&list=PLN3IRkahE83eKcwoNBmIPgcR5zDWdSJpa','https://open.spotify.com/playlist/6aHEtrO0jfO1NDVVfxlCcG?si=uqXDodcgRa6k4mnj_SUaww',1),(16,1,'https://www.youtube.com/watch?v=oVXyPPr1v_M&list=PLN3IRkahE83datIcH_HOZ6eSER4FrMxHp','https://open.spotify.com/playlist/6kZunzLZsCzEvHnDzRQIX5?si=uUB-urzkR6mYERvR0MsxmA','https://www.youtube.com/watch?v=QTxga6nwUTg&list=PLN3IRkahE83cM7-VgonzAE_ImksR_rTxr','https://open.spotify.com/playlist/7pPnWfzY1JpwvsgDNf1Ef2?si=VYkM29c5TaK5rcwXpa2Ebg','https://www.youtube.com/watch?v=-VOLFvbRekA&list=PLN3IRkahE83cd4EkW-aSLfa0GeOrs2Pko','https://open.spotify.com/playlist/7qWpEkAL4WGkZNH7uY3eeJ?si=lSTZ3IkRSiKZXV04pBF4VQ',1),(17,1,'https://www.youtube.com/watch?v=Wt2oZKPa4kE&list=PLN3IRkahE83cZDYhczzsEPLIEhfODrWPJ','https://open.spotify.com/playlist/4jGzByAkgqyzJf9v4oWntU?si=6-xA7KrCTGWHy-uHDBw2cw','https://www.youtube.com/watch?v=swVoIVjuFUw&list=PLN3IRkahE83eUFiDvYpfBfOkZoCgPRWa6','https://open.spotify.com/playlist/5obQAbB6lEEA5IhKoTe1Fh?si=N_qGDlP3RBOtAqhgplgUFg','https://www.youtube.com/watch?v=UcbOZR_8C7s&list=PLN3IRkahE83c6Vc8pUKwdKlFX7BQlRhzh','https://open.spotify.com/playlist/65vX0w3UqodwshORp5oeP7?si=NOYpx5BMQRubMysyVYUpBA',1),(18,1,'https://www.youtube.com/watch?v=JUheB5lnsA0&list=PLN3IRkahE83czXanqRJTSfcNPNYITojgT','https://open.spotify.com/playlist/45WDb81jwYynC3wyChOLsh?si=YASWH3gHRIqPHnoVxYrImw','https://www.youtube.com/watch?v=Pnzx8cBhyN8&list=PLN3IRkahE83cNn4j4mS7mk0Q7jgvV5w5l','https://open.spotify.com/playlist/7qwAaODivfrbFAWSPqBCxr?si=joGyEMAYRdS8zLF8N_-hcA','https://www.youtube.com/watch?v=dFhpIpK4_Q8&list=PLN3IRkahE83fiUauUNythkEAph1iYZMNA','https://open.spotify.com/playlist/0Z4zGrTZTwW8E6YZh7vfM1?si=BAOpdOtoTxmn-u51Dkh4rw',1),(19,1,'https://www.youtube.com/watch?v=v6vp-fv9mZw&list=PLN3IRkahE83dx39BfC5Rm57Htvhu86Hjy','https://open.spotify.com/playlist/7lxhYNApHBPriltYZ04Za8?si=2jcTN6VJSDuDDqeN-edp8w','https://www.youtube.com/watch?v=qBCYqf555bY&list=PLN3IRkahE83fpBK2COZr1l5WIduf75YQe','https://open.spotify.com/playlist/3g9tlIiQHHIiyZEZbruKkQ?si=Ke4NsbskT1OhQUpKoI7MIw','https://www.youtube.com/watch?v=UAlUqOtGRcM&list=PLN3IRkahE83dH5fWKefUKd0BwfcNF4uZ8','https://open.spotify.com/playlist/5HzGw5wVEbyDcvwjSyzRCM?si=cIJ0LRD3SFGXhnr0agClOA',1),(20,1,'https://www.youtube.com/watch?v=BMXDlBYCZIg&list=PLN3IRkahE83eaQEbilMFHq5gDQmiibS_o','https://open.spotify.com/playlist/4eTnrbBFhYdlWQWFKTnS0z?si=Q1asCBPrQ5it0qnuV6RqnQ','https://www.youtube.com/watch?v=C7n-oMSpcbg&list=PLN3IRkahE83eDwcw5j8RMw7hdHvGVZUN6','https://open.spotify.com/playlist/3ftou9NfzQt8wjmv8hUqL6?si=_eG9KTlxSdGTsmyuatwqqg','https://www.youtube.com/watch?v=nV8FGJNQqyM&list=PLN3IRkahE83fejxMg3p50exaiubWe5Xsl','https://open.spotify.com/playlist/16HURfHQzDFRrQhq562fCY?si=L-r8KevEQgmcZ0ZlWRQpOQ',1),(21,1,'https://www.youtube.com/watch?v=Hrn9fQ95cDA&list=PLN3IRkahE83dsSNZ5J2qYgvULZmzZoi-g','https://open.spotify.com/playlist/15Nk0WqPg6qw0UJqcXAPTN?si=emioXKq6TMyHbNJ_ZHDWcQ','https://www.youtube.com/watch?v=67yF52Yjyfg&list=PLN3IRkahE83fKMhskXHzB4oa2AJbCb2BY','https://open.spotify.com/playlist/3mxG7Ma40JngNerfZ39I24?si=tOLWiKvMQdeHo5xr4amaHA','https://www.youtube.com/watch?v=ESlaR6hectY&list=PLN3IRkahE83ejailF1IbRveUA31EL-8wY','https://open.spotify.com/playlist/1uRCRfsFhyKdYYd2nEJKxa?si=iNiJQ6RPRmuo8V5QKTng-g',1);
/*!40000 ALTER TABLE `edition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enemies`
--

DROP TABLE IF EXISTS `enemies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enemies` (
  `user_id` int NOT NULL,
  `user_enemied_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`user_enemied_id`),
  KEY `enemied_user_id_2_idx` (`user_enemied_id`),
  CONSTRAINT `enemied_user_id_2` FOREIGN KEY (`user_enemied_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `enemier_user_id_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enemies`
--

LOCK TABLES `enemies` WRITE;
/*!40000 ALTER TABLE `enemies` DISABLE KEYS */;
/*!40000 ALTER TABLE `enemies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `song_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `singer` varchar(200) NOT NULL,
  `features` varchar(100) DEFAULT NULL,
  `year` varchar(45) NOT NULL,
  `finalist` tinyint NOT NULL,
  `spotify_link` varchar(200) DEFAULT NULL,
  `youtube_link` varchar(100) DEFAULT NULL,
  `user_id` int NOT NULL,
  `country_id` int NOT NULL,
  `edition_id` int NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `user_id_1_idx` (`user_id`),
  KEY `country_id_2_idx` (`country_id`),
  KEY `edition_id_3_idx` (`edition_id`),
  CONSTRAINT `country_id_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  CONSTRAINT `edition_id_1` FOREIGN KEY (`edition_id`) REFERENCES `edition` (`edition_id`),
  CONSTRAINT `user_id_3_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `spotify_link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `avatar_UNIQUE` (`avatar`),
  UNIQUE KEY `spotify_link_UNIQUE` (`spotify_link`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,'Adri Uzumaki',NULL,NULL),(2,NULL,NULL,'Blondie',NULL,NULL),(3,NULL,NULL,'Dani Estalella',NULL,NULL),(4,NULL,NULL,'David Moreno',NULL,NULL),(5,NULL,NULL,'Eduardo Lojo',NULL,NULL),(6,NULL,NULL,'Felipe Viza',NULL,NULL),(7,NULL,NULL,'Javi Comesaña',NULL,NULL),(8,NULL,NULL,'José Bieber',NULL,NULL),(9,NULL,NULL,'Juan Canales',NULL,NULL),(10,NULL,NULL,'Justin McCarthy',NULL,NULL),(11,NULL,NULL,'Oskar Riddare',NULL,NULL),(12,NULL,NULL,'Rubén Diez',NULL,NULL),(13,NULL,NULL,'Samuel Bjork',NULL,NULL),(14,NULL,NULL,'Víctor Vicman',NULL,NULL),(15,NULL,NULL,'Miguel González',NULL,NULL),(16,NULL,NULL,'Dva Nieves',NULL,NULL),(17,NULL,NULL,'Fran Tole',NULL,NULL),(18,NULL,NULL,'Labandeira & Filgueira',NULL,NULL),(19,NULL,NULL,'Belén Méndez',NULL,NULL),(20,NULL,NULL,'Fabio Carlsson',NULL,NULL),(21,NULL,NULL,'Jordi María',NULL,NULL),(22,NULL,NULL,'Pablo Gismero',NULL,NULL),(23,NULL,NULL,'Paulino Bouzas',NULL,NULL),(24,NULL,NULL,'Sergio LaMugre',NULL,NULL),(25,NULL,NULL,'Susana Pombo',NULL,NULL),(26,NULL,NULL,'Víctor Lloyd',NULL,NULL),(27,NULL,NULL,'Germán FG',NULL,NULL),(28,NULL,NULL,'Olalla Amboage',NULL,NULL),(29,NULL,NULL,'Nacho RH',NULL,NULL),(30,NULL,NULL,'Alpio Aquilina',NULL,NULL),(31,NULL,NULL,'Ruth Rodríguez',NULL,NULL),(32,NULL,NULL,'María Alejandres',NULL,NULL),(33,NULL,NULL,'Aitor Nevado',NULL,NULL),(34,NULL,NULL,'Álvaro Romero',NULL,NULL),(35,NULL,NULL,'Fran Soto',NULL,NULL),(36,NULL,NULL,'José Luis Amo',NULL,NULL),(37,NULL,NULL,'Pedro Bjork',NULL,NULL),(38,NULL,NULL,'Luis de Arpe',NULL,NULL),(39,NULL,NULL,'Geoff Fontignie',NULL,NULL),(40,NULL,NULL,'Álvaro Alique',NULL,NULL),(41,NULL,NULL,'Yago Jack',NULL,NULL),(42,NULL,NULL,'Miguel Sistar',NULL,NULL),(43,NULL,NULL,'Jorge Gutiérrez',NULL,NULL),(44,NULL,NULL,'José Sánchez',NULL,NULL),(45,NULL,NULL,'Dani Vega',NULL,NULL),(46,NULL,NULL,'Alejandro Martínez',NULL,NULL),(47,NULL,NULL,'Andy Mars',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_achievement`
--

DROP TABLE IF EXISTS `user_achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_achievement` (
  `user_id` int NOT NULL,
  `achievement_id` int NOT NULL,
  KEY `user_id_1_idx` (`user_id`),
  KEY `achievement_id_1_idx` (`achievement_id`),
  CONSTRAINT `achievement_id_1` FOREIGN KEY (`achievement_id`) REFERENCES `achievements` (`achievement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_achievement`
--

LOCK TABLES `user_achievement` WRITE;
/*!40000 ALTER TABLE `user_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vote` (
  `vote_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `song_id` int NOT NULL,
  `point` int NOT NULL,
  `round` int NOT NULL,
  PRIMARY KEY (`vote_id`),
  KEY `user_id_4_idx` (`user_id`),
  KEY `song_id_2_idx` (`song_id`),
  CONSTRAINT `song_id_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`),
  CONSTRAINT `user_id_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'deluxe'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-02 20:20:32
