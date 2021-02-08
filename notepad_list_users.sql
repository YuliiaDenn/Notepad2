-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: notepad
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `list_users`
--

DROP TABLE IF EXISTS `list_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `second_name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idx` (`address_id`),
  CONSTRAINT `fk` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_users`
--

LOCK TABLES `list_users` WRITE;
/*!40000 ALTER TABLE `list_users` DISABLE KEYS */;
INSERT INTO `list_users` VALUES (1,'Andreev','Andrey','Andriyovych','11111',4),(2,'Petrov','Petor','Petrovych','22222',1),(3,'Ivanov','Ivan','Ivanovych','33333',1),(7,'Petrenko','Tamara','Petrivna','99999',1),(8,'Petrenko','Oleh','Olehovych','77777',1),(9,'Ivanenko','Tamara','Pavlivna','10101',1),(14,'Grusha','Mariya','Ivanivna','20154',1),(15,'Petrenko','Iryna','Andriivna','20365',1),(17,'Bober','Oleksandr','Oleksandrovych','25896',1),(18,'Sergienko','Sergiy','Sergiyovych','77441',1),(22,'Ivanenko','Olga','Vitalivna','26598',1),(23,'Rogovets','Yanna','Oleksandrivna','23568',1),(24,'ivan','ivan','ivan','ivan',1),(25,'ivan','ivan','ivan','000',1),(26,'one','one','one','one',5),(27,'one','one','one','one',7),(28,'two','two','two','two',8),(29,'two','two','two','two',9),(30,'two','two','two','two',10),(31,'Denysenko','Yuliia','Oleksandrivna','00011',11),(32,'Ivanov','Petro','Petrovuch','552255',12),(33,'Petrov ','Petro','Ivanovych','0001233',13);
/*!40000 ALTER TABLE `list_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-08 18:04:55
