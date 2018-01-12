-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: puertacontrol
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `alert_type`
--

LOCK TABLES `alert_type` WRITE;
/*!40000 ALTER TABLE `alert_type` DISABLE KEYS */;
INSERT INTO `alert_type` VALUES ('IDO','INVALID_DOOR_OPEN','1');
/*!40000 ALTER TABLE `alert_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'4 horas'),(2,'Amanecida');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `package_x_type_room`
--

LOCK TABLES `package_x_type_room` WRITE;
/*!40000 ALTER TABLE `package_x_type_room` DISABLE KEYS */;
INSERT INTO `package_x_type_room` VALUES (1,1,1,240,30,0),(2,1,2,240,30,0),(3,1,3,240,30,0),(4,1,4,240,30,0),(5,1,5,240,30,0),(6,1,6,240,30,0),(7,1,7,240,30,0),(8,2,1,480,40,0),(9,2,2,480,30,0),(10,2,3,480,40,0),(11,2,4,480,40,0),(12,2,5,480,40,0),(13,2,6,480,40,0),(14,2,7,480,40,0);
/*!40000 ALTER TABLE `package_x_type_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'NIT','111111','General',NULL,NULL,NULL);
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'all','all');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `resources_x_rol`
--

LOCK TABLES `resources_x_rol` WRITE;
/*!40000 ALTER TABLE `resources_x_rol` DISABLE KEYS */;
INSERT INTO `resources_x_rol` VALUES (1,'ADM',1);
/*!40000 ALTER TABLE `resources_x_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES ('ADM','Administrador');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,201,2,NULL,2,'DIS',NULL),(2,202,2,NULL,2,'DIS',NULL),(3,203,2,NULL,1,'DIS',NULL),(4,204,2,NULL,1,'DIS',NULL),(5,205,2,NULL,2,'DIS',NULL),(6,206,2,NULL,2,'DIS',NULL),(7,207,2,NULL,4,'DIS',NULL),(8,208,2,NULL,3,'DIS',NULL),(9,301,3,NULL,2,'DIS',NULL),(10,302,3,NULL,2,'DIS',NULL),(11,303,3,NULL,1,'DIS',NULL),(12,304,3,NULL,1,'DIS',NULL),(13,305,3,NULL,2,'DIS',NULL),(14,306,3,NULL,2,'DIS',NULL),(15,307,3,NULL,4,'DIS',NULL),(16,308,3,NULL,3,'DIS',NULL),(17,401,4,NULL,2,'DIS',NULL),(18,402,4,NULL,2,'DIS',NULL),(19,403,4,NULL,1,'DIS',NULL),(20,404,4,NULL,1,'DIS',NULL),(21,405,4,NULL,2,'DIS',NULL),(22,406,4,NULL,2,'DIS',NULL),(23,407,4,NULL,4,'DIS',NULL),(24,408,4,NULL,3,'DIS',NULL),(25,501,5,NULL,5,'DIS',NULL),(26,502,5,NULL,6,'DIS',NULL),(27,503,5,NULL,7,'DIS',NULL);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `status_room`
--

LOCK TABLES `status_room` WRITE;
/*!40000 ALTER TABLE `status_room` DISABLE KEYS */;
INSERT INTO `status_room` VALUES ('CLN','En limpieza'),('DIS','Disponible'),('OCU','Ocupada');
/*!40000 ALTER TABLE `status_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','ADM');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-12  0:11:35
