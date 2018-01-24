CREATE DATABASE  IF NOT EXISTS `puertacontrol` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `puertacontrol`;
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
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_service` int(11) DEFAULT NULL,
  `id_room` int(11) DEFAULT NULL,
  `code_type` varchar(5) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alert_type_idx` (`code_type`),
  KEY `fk_alert_service_idx` (`id_service`),
  KEY `fk_alert_room_idx` (`id_room`),
  CONSTRAINT `fk_alert_room` FOREIGN KEY (`id_room`) REFERENCES `room` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alert_service` FOREIGN KEY (`id_service`) REFERENCES `service` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alert_type` FOREIGN KEY (`code_type`) REFERENCES `alert_type` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert`
--

LOCK TABLES `alert` WRITE;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alert_type`
--

DROP TABLE IF EXISTS `alert_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert_type` (
  `code` varchar(5) NOT NULL,
  `description` varchar(50) NOT NULL,
  `priority` varchar(20) NOT NULL COMMENT 'Prioridad del tipo de alerta',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Representa los tipos de alerta que maneja la aplicación';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert_type`
--

LOCK TABLES `alert_type` WRITE;
/*!40000 ALTER TABLE `alert_type` DISABLE KEYS */;
INSERT INTO `alert_type` VALUES ('IDO','INVALID_DOOR_OPEN','1');
/*!40000 ALTER TABLE `alert_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy`
--

DROP TABLE IF EXISTS `buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `id_provider` int(11) NOT NULL DEFAULT '1',
  `id_user` int(11) NOT NULL COMMENT 'Usuario que registro la compra',
  `gross_value` double NOT NULL,
  `iva_value` double NOT NULL,
  `net_value` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_buy_provider_idx` (`id_provider`),
  KEY `fk_buy_user_idx` (`id_user`),
  CONSTRAINT `fk_buy_provider` FOREIGN KEY (`id_provider`) REFERENCES `provider` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_buy_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy`
--

LOCK TABLES `buy` WRITE;
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy_details`
--

DROP TABLE IF EXISTS `buy_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy_details` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_buy` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `gross_value` double NOT NULL,
  `iva_value` double NOT NULL,
  `net_value` double NOT NULL,
  PRIMARY KEY (`id_detail`),
  KEY `fk_details_x_buy_idx` (`id_buy`),
  KEY `fk_details_x_product_idx` (`id_product`),
  CONSTRAINT `fk_details_x_buy` FOREIGN KEY (`id_buy`) REFERENCES `buy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_details_x_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy_details`
--

LOCK TABLES `buy_details` WRITE;
/*!40000 ALTER TABLE `buy_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_room_log`
--

DROP TABLE IF EXISTS `operation_room_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_room_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_action` datetime NOT NULL,
  `number_room` int(11) NOT NULL,
  `message` varchar(100) NOT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  `date_processed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log de operaciones de apertura/cierre de las habitaciones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_room_log`
--

LOCK TABLES `operation_room_log` WRITE;
/*!40000 ALTER TABLE `operation_room_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_room_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description_UNIQUE` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tiempo de gracia que se le da a un cliente para dar por finalizado su servicio.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'4 horas'),(2,'Amanecida');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_x_type_room`
--

DROP TABLE IF EXISTS `package_x_type_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_x_type_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_package` int(11) NOT NULL,
  `id_room_type` int(11) NOT NULL,
  `time_service` int(11) NOT NULL COMMENT 'Tiempo po defecto en el que la habitación es prestada a un cliente',
  `time_clean` int(11) NOT NULL COMMENT 'Tiempo po defecto en el que la habitación debe ser limpiada',
  `time_grace` int(11) NOT NULL DEFAULT '0' COMMENT 'Tiempo de gracia que se le da al cliente para liberar el servicio antes de someterse a una multa',
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_package_x_type_room_package_idx` (`id_package`),
  KEY `fk_package_x_type_room_type_idx` (`id_room_type`),
  CONSTRAINT `fk_package_x_type_room_package` FOREIGN KEY (`id_package`) REFERENCES `package` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_package_x_type_room_type` FOREIGN KEY (`id_room_type`) REFERENCES `room_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Representa los paquetes que puede ofrecer un tipo de habitación';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_x_type_room`
--

LOCK TABLES `package_x_type_room` WRITE;
/*!40000 ALTER TABLE `package_x_type_room` DISABLE KEYS */;
INSERT INTO `package_x_type_room` VALUES (1,1,1,240,30,0,30000),(2,1,2,240,30,0,45000),(3,1,3,240,40,0,80000),(4,1,4,240,40,0,65000),(5,1,5,240,40,0,70000),(6,1,6,240,40,0,100000),(7,1,7,240,40,0,160000),(8,2,1,480,30,0,60000),(9,2,2,480,30,0,90000),(10,2,3,480,40,0,160000),(11,2,4,480,40,0,130000),(12,2,5,480,40,0,140000),(13,2,6,480,40,0,200000),(14,2,7,480,40,0,320000);
/*!40000 ALTER TABLE `package_x_type_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `quantity_min` int(11) NOT NULL DEFAULT '0',
  `code` varchar(20) DEFAULT NULL COMMENT 'Código especial del producto, pensado para el código de barras',
  `last_price_buy` double DEFAULT NULL COMMENT 'Último precio de compra',
  `price_sale` double NOT NULL COMMENT 'Precio al cual se debe vender el producto',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Agua sin gas',20,10,NULL,NULL,2000),(2,'H2O',20,10,NULL,NULL,4000),(3,'Salchichas Lata',20,10,NULL,NULL,5000),(4,'Jugo Hit Caja',20,10,NULL,NULL,2000),(5,'CocaCola',20,10,NULL,NULL,4000),(6,'Club colombia',20,10,NULL,NULL,4500),(7,'Soda',20,10,NULL,NULL,3000),(8,'Chocolatina Jet',20,10,NULL,NULL,1000),(9,'Snickers',20,10,NULL,NULL,5000),(10,'MilkyWay',20,10,NULL,NULL,5000),(11,'Gatorade',20,10,NULL,NULL,6000),(12,'Halls',20,10,NULL,NULL,2500),(13,'Bayleys',20,10,NULL,NULL,35000),(14,'Vino Gato Negro',20,10,NULL,NULL,30000),(15,'Tequila Jose Cuervo',20,10,NULL,NULL,65000),(16,'Whisky Old Parr',20,10,NULL,NULL,85000),(17,'Ron Medellín 3 años (Tetrapack)',20,10,NULL,NULL,25000),(18,'Aguardiente Antioqueño(Tetrapack)',20,10,NULL,NULL,20000),(19,'Vive 100',20,10,NULL,NULL,3000),(20,'Nutella',20,10,NULL,NULL,11000),(21,'Lecherita',20,10,NULL,NULL,3500),(22,'JP Chenet',20,10,NULL,NULL,28000),(23,'Mani La Especial',20,10,NULL,NULL,3500),(24,'Pringles',20,10,NULL,NULL,5000),(25,'Tic Tac',20,10,NULL,NULL,2500),(26,'Alka Seltzer Extrem',20,10,NULL,NULL,3000),(27,'Trident pequeño',20,10,NULL,NULL,500),(28,'Condones',20,10,NULL,NULL,3500);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_x_type_room`
--

DROP TABLE IF EXISTS `products_x_type_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_x_type_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_room_type` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `quantity_min` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_product_x_room_idx` (`id_product`),
  KEY `fk_room_type_x_product_idx` (`id_room_type`),
  CONSTRAINT `fk_product_x_room` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_room_type_x_product` FOREIGN KEY (`id_room_type`) REFERENCES `room_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COMMENT='Relaciona los productos que estan asignados a una habitación';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_x_type_room`
--

LOCK TABLES `products_x_type_room` WRITE;
/*!40000 ALTER TABLE `products_x_type_room` DISABLE KEYS */;
INSERT INTO `products_x_type_room` VALUES (2,1,1,2,2),(3,1,2,2,2),(4,1,3,2,2),(5,1,4,2,2),(6,1,5,2,2),(7,1,6,2,2),(8,1,7,2,2),(9,1,8,2,2),(10,1,9,2,1),(11,1,10,2,1),(12,1,11,2,1),(13,1,12,2,1),(14,1,13,2,1),(15,1,14,2,1),(16,1,15,2,1),(17,1,16,2,1),(18,1,17,2,1),(19,1,18,2,1),(20,1,19,2,2),(21,1,20,2,1),(22,1,21,2,1),(23,1,22,2,1),(24,1,23,2,2),(25,1,24,2,1),(26,1,25,2,1),(27,1,26,2,1),(28,1,27,2,8),(29,1,28,2,3),(30,2,1,2,2),(31,2,2,2,2),(32,2,3,2,2),(33,2,4,2,2),(34,2,5,2,2),(35,2,6,2,2),(36,2,7,2,2),(37,2,8,2,2),(38,2,9,2,1),(39,2,10,2,1),(40,2,11,2,1),(41,2,12,2,1),(42,2,13,2,1),(43,2,14,2,1),(44,2,15,2,1),(45,2,16,2,1),(46,2,17,2,1),(47,2,18,2,1),(48,2,19,2,2),(49,2,20,2,1),(50,2,21,2,1),(51,2,22,2,1),(52,2,23,2,2),(53,2,24,2,1),(54,2,25,2,1),(55,2,26,2,1),(56,2,27,2,8),(57,2,28,2,3),(58,3,1,2,2),(59,3,2,2,2),(60,3,3,2,2),(61,3,4,2,2),(62,3,5,2,2),(63,3,6,2,2),(64,3,7,2,2),(65,3,8,2,2),(66,3,9,2,1),(67,3,10,2,1),(68,3,11,2,1),(69,3,12,2,1),(70,3,13,2,1),(71,3,14,2,1),(72,3,15,2,1),(73,3,16,2,1),(74,3,17,2,1),(75,3,18,2,1),(76,3,19,2,2),(77,3,20,2,1),(78,3,21,2,1),(79,3,22,2,1),(80,3,23,2,2),(81,3,24,2,1),(82,3,25,2,1),(83,3,26,2,1),(84,3,27,2,8),(85,3,28,2,3),(86,4,1,2,2),(87,4,2,2,2),(88,4,3,2,2),(89,4,4,2,2),(90,4,5,2,2),(91,4,6,2,2),(92,4,7,2,2),(93,4,8,2,2),(94,4,9,2,1),(95,4,10,2,1),(96,4,11,2,1),(97,4,12,2,1),(98,4,13,2,1),(99,4,14,2,1),(100,4,15,2,1),(101,4,16,2,1),(102,4,17,2,1),(103,4,18,2,1),(104,4,19,2,2),(105,4,20,2,1),(106,4,21,2,1),(107,4,22,2,1),(108,4,23,2,2),(109,4,24,2,1),(110,4,25,2,1),(111,4,26,2,1),(112,4,27,2,8),(113,4,28,2,3),(114,5,1,2,2),(115,5,2,2,2),(116,5,3,2,2),(117,5,4,2,2),(118,5,5,2,2),(119,5,6,2,2),(120,5,7,2,2),(121,5,8,2,2),(122,5,9,2,1),(123,5,10,2,1),(124,5,11,2,1),(125,5,12,2,1),(126,5,13,2,1),(127,5,14,2,1),(128,5,15,2,1),(129,5,16,2,1),(130,5,17,2,1),(131,5,18,2,1),(132,5,19,2,2),(133,5,20,2,1),(134,5,21,2,1),(135,5,22,2,1),(136,5,23,2,2),(137,5,24,2,1),(138,5,25,2,1),(139,5,26,2,1),(140,5,27,2,8),(141,5,28,2,3),(142,6,1,2,2),(143,6,2,2,2),(144,6,3,2,2),(145,6,4,2,2),(146,6,5,2,2),(147,6,6,2,2),(148,6,7,2,2),(149,6,8,2,2),(150,6,9,2,1),(151,6,10,2,1),(152,6,11,2,1),(153,6,12,2,1),(154,6,13,2,1),(155,6,14,2,1),(156,6,15,2,1),(157,6,16,2,1),(158,6,17,2,1),(159,6,18,2,1),(160,6,19,2,2),(161,6,20,2,1),(162,6,21,2,1),(163,6,22,2,1),(164,6,23,2,2),(165,6,24,2,1),(166,6,25,2,1),(167,6,26,2,1),(168,6,27,2,8),(169,6,28,2,3),(171,7,1,2,2),(172,7,2,2,2),(173,7,3,2,2),(174,7,4,2,2),(175,7,5,2,2),(176,7,6,2,2),(177,7,7,2,2),(178,7,8,2,2),(179,7,9,2,1),(180,7,10,2,1),(181,7,11,2,1),(182,7,12,2,1),(183,7,13,2,1),(184,7,14,2,1),(185,7,15,2,1),(186,7,16,2,1),(187,7,17,2,1),(188,7,18,2,1),(189,7,19,2,2),(190,7,20,2,1),(191,7,21,2,1),(192,7,22,2,1),(193,7,23,2,2),(194,7,24,2,1),(195,7,25,2,1),(196,7,26,2,1),(197,7,27,2,8),(198,7,28,2,3);
/*!40000 ALTER TABLE `products_x_type_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_type` varchar(5) DEFAULT NULL COMMENT 'Tipo de documento del proveedor, puede ser NIT o CC',
  `document` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `addrees` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'NIT','111111','General',NULL,NULL,NULL);
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `id_resource` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(100) NOT NULL,
  `description` varchar(20) NOT NULL,
  PRIMARY KEY (`id_resource`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'all','all');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources_x_rol`
--

DROP TABLE IF EXISTS `resources_x_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources_x_rol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_rol` varchar(5) NOT NULL,
  `id_resource` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resources_x_rol_rol_idx` (`code_rol`),
  KEY `fk_resources_x_rol_resource_idx` (`id_resource`),
  CONSTRAINT `fk_resources_x_rol_resource` FOREIGN KEY (`id_resource`) REFERENCES `resource` (`id_resource`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_resources_x_rol_rol` FOREIGN KEY (`code_rol`) REFERENCES `rol` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources_x_rol`
--

LOCK TABLES `resources_x_rol` WRITE;
/*!40000 ALTER TABLE `resources_x_rol` DISABLE KEYS */;
INSERT INTO `resources_x_rol` VALUES (1,'ADM',1);
/*!40000 ALTER TABLE `resources_x_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `code` varchar(5) NOT NULL,
  `description` varchar(20) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Representa todos los roles que puede tener un usuario del sistema. El rol determina los permisos que puede tener el usuario.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES ('ADM','Administrador'),('EMP','Empleado');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL COMMENT 'Número que le asigna el cliente a la puerta de la habitación',
  `floor` int(11) NOT NULL COMMENT 'Piso en el que se encuentra ubicada la habitación',
  `photo` varchar(1000) DEFAULT NULL,
  `id_type` int(11) NOT NULL,
  `code_status` varchar(5) NOT NULL,
  `date_last_clean` datetime DEFAULT NULL COMMENT 'Fecha en la que se realizó la última limpieza de la habitación',
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_UNIQUE` (`number`),
  KEY `fk_room_room_type_idx` (`id_type`),
  KEY `fk_room_status_idx` (`code_status`),
  CONSTRAINT `fk_room_room_type` FOREIGN KEY (`id_type`) REFERENCES `room_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_room_status` FOREIGN KEY (`code_status`) REFERENCES `status_room` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,201,2,NULL,2,'DIS',NULL),(2,202,2,NULL,2,'DIS',NULL),(3,203,2,NULL,1,'DIS',NULL),(4,204,2,NULL,1,'DIS',NULL),(5,205,2,NULL,2,'DIS',NULL),(6,206,2,NULL,2,'CLP',NULL),(7,207,2,NULL,4,'DIS',NULL),(8,208,2,NULL,3,'DIS',NULL),(9,301,3,NULL,2,'DIS',NULL),(10,302,3,NULL,2,'OCU',NULL),(11,303,3,NULL,1,'DIS',NULL),(12,304,3,NULL,1,'DIS',NULL),(13,305,3,NULL,2,'DIS',NULL),(14,306,3,NULL,2,'DIS',NULL),(15,307,3,NULL,4,'DIS',NULL),(16,308,3,NULL,3,'DIS',NULL),(17,401,4,NULL,2,'DIS',NULL),(18,402,4,NULL,2,'DIS',NULL),(19,403,4,NULL,1,'DIS',NULL),(20,404,4,NULL,1,'DIS',NULL),(21,405,4,NULL,2,'DIS',NULL),(22,406,4,NULL,2,'DIS',NULL),(23,407,4,NULL,4,'DIS',NULL),(24,408,4,NULL,3,'DIS',NULL),(25,501,5,NULL,5,'DIS',NULL),(26,502,5,NULL,6,'CLP',NULL),(27,503,5,NULL,7,'DIS',NULL);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `room_details`
--

DROP TABLE IF EXISTS `room_details`;
/*!50001 DROP VIEW IF EXISTS `room_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `room_details` AS SELECT 
 1 AS `id`,
 1 AS `number`,
 1 AS `type`,
 1 AS `alerts`,
 1 AS `status_code`,
 1 AS `status`,
 1 AS `service_id`,
 1 AS `datetime_start_service`,
 1 AS `datetime_end_service`,
 1 AS `datetime_start_clean`,
 1 AS `datetime_end_clean`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description_UNIQUE` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Representa todas las habitaciones que tiene disponibles el sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (2,'Habitación normal'),(1,'Habitación sencilla'),(5,'Master Suite'),(6,'Play Suite'),(4,'Regular Suite'),(3,'Suite'),(7,'Suite Presidencial');
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `id_package` int(11) NOT NULL,
  `time_service` int(11) NOT NULL,
  `time_clean` int(11) NOT NULL,
  `datetime_start_service` datetime DEFAULT NULL,
  `datetime_end_service` datetime DEFAULT NULL,
  `datetime_start_clean` datetime DEFAULT NULL,
  `datetime_end_clean` datetime DEFAULT NULL,
  `status` varchar(5) NOT NULL COMMENT 'Estado del servicio: ACT(Activo) FIN(Finalizado)',
  `datetime_end_real_service` datetime DEFAULT NULL COMMENT 'Fecha de finalización real del servicio',
  `datetime_end_real_clean` datetime DEFAULT NULL COMMENT 'Fecha de finalización real de la limpieza',
  `net_value` double DEFAULT NULL COMMENT 'Valor total del servicio una vez es finalizado',
  PRIMARY KEY (`id`),
  KEY `fk_service_room_idx` (`id_room`),
  KEY `fk_service_package_idx` (`id_package`),
  KEY `fk_service_user_idx` (`id_user`),
  CONSTRAINT `fk_service_package` FOREIGN KEY (`id_package`) REFERENCES `package_x_type_room` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_room` FOREIGN KEY (`id_room`) REFERENCES `room` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Representa el prestámo servicio que se hace de una habitación, en un paquete u horario especifico a un cliente.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (3,1,17,1,30,30,'2018-01-21 22:17:22','2018-01-21 22:47:22','2018-01-22 02:38:16','2018-01-22 03:08:16','FIN','2018-01-22 02:55:42','2018-01-22 02:49:26',4000),(6,1,26,13,0,0,'2018-01-22 01:46:20','2018-01-22 01:46:20','2018-01-22 02:50:51','2018-01-22 03:20:51','ACT','2018-01-22 02:55:42',NULL,4000),(7,1,6,2,0,40,'2018-01-22 02:00:11','2018-01-22 02:00:11','2018-01-22 02:58:02','2018-01-22 03:38:02','ACT','2018-01-22 02:55:42',NULL,4000),(8,1,10,9,0,30,'2018-01-22 02:58:45','2018-01-22 02:58:45','2018-01-22 02:59:45','2018-01-22 03:29:45','ACT',NULL,NULL,NULL);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_details`
--

DROP TABLE IF EXISTS `service_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_service` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL COMMENT 'Posible producto relacionado en el detalle',
  `id_package` int(11) DEFAULT NULL COMMENT 'Posible paquete relacionado en el detalle',
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_service_detail_idx` (`id_service`),
  KEY `fk_service_detail_x_product_idx` (`id_product`),
  KEY `fk_service_detail_x_package_idx` (`id_package`),
  CONSTRAINT `fk_service_detail_x_package` FOREIGN KEY (`id_package`) REFERENCES `package` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_detail_x_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_detail_x_service` FOREIGN KEY (`id_service`) REFERENCES `service` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Detalles del servicio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_details`
--

LOCK TABLES `service_details` WRITE;
/*!40000 ALTER TABLE `service_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_room`
--

DROP TABLE IF EXISTS `status_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_room` (
  `code` varchar(5) NOT NULL,
  `description` varchar(20) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Representa los estados que puede tener una habitación.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_room`
--

LOCK TABLES `status_room` WRITE;
/*!40000 ALTER TABLE `status_room` DISABLE KEYS */;
INSERT INTO `status_room` VALUES ('CLN','A limpieza'),('CLP','En limpieza'),('DIS','Disponible'),('OCU','Ocupada');
/*!40000 ALTER TABLE `status_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `code_rol` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_rol_idx` (`code_rol`),
  CONSTRAINT `fk_user_rol` FOREIGN KEY (`code_rol`) REFERENCES `rol` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Representa todos los usuarios que pueden acceder al sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','ADM'),(2,'user','user','EMP'),(3,'santiagojmg','123456','ADM'),(4,'administrador2','123456','ADM'),(5,'isabelcristi','123456','ADM');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notified`
--

DROP TABLE IF EXISTS `user_notified`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notified` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_alert` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_first_notify` datetime NOT NULL,
  `no_notifications` int(11) NOT NULL,
  `date_readed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_notified_alert_idx` (`id_alert`),
  KEY `fk_user_notified_user_idx` (`id_user`),
  CONSTRAINT `fk_user_notified_alert` FOREIGN KEY (`id_alert`) REFERENCES `alert` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_notified_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Representa la notificación que se realizó para un usuario especifico.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notified`
--

LOCK TABLES `user_notified` WRITE;
/*!40000 ALTER TABLE `user_notified` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notified` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_x_alert_type`
--

DROP TABLE IF EXISTS `user_x_alert_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_x_alert_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_alert_type` varchar(5) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_x_alert_type_type_idx` (`code_alert_type`),
  KEY `fk_user_x_alert_type_user_idx` (`id_user`),
  CONSTRAINT `fk_user_x_alert_type_type` FOREIGN KEY (`code_alert_type`) REFERENCES `alert_type` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_x_alert_type_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Representa los usuarios que deben notificarse según el tipo de alerta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_x_alert_type`
--

LOCK TABLES `user_x_alert_type` WRITE;
/*!40000 ALTER TABLE `user_x_alert_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_x_alert_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_products_x_room`
--

DROP TABLE IF EXISTS `vw_products_x_room`;
/*!50001 DROP VIEW IF EXISTS `vw_products_x_room`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_products_x_room` AS SELECT 
 1 AS `id`,
 1 AS `id_room_type`,
 1 AS `id_product`,
 1 AS `quantity`,
 1 AS `quantity_min`,
 1 AS `type_room`,
 1 AS `product`,
 1 AS `price_sale`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_services`
--

DROP TABLE IF EXISTS `vw_services`;
/*!50001 DROP VIEW IF EXISTS `vw_services`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_services` AS SELECT 
 1 AS `id`,
 1 AS `user`,
 1 AS `number`,
 1 AS `type_room`,
 1 AS `package`,
 1 AS `net_value`,
 1 AS `time_service`,
 1 AS `time_clean`,
 1 AS `status`,
 1 AS `datetime_start_service`,
 1 AS `datetime_end_service`,
 1 AS `datetime_end_real_service`,
 1 AS `datetime_start_clean`,
 1 AS `datetime_end_clean`,
 1 AS `datetime_end_real_clean`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `room_details`
--

/*!50001 DROP VIEW IF EXISTS `room_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `room_details` AS select `r`.`id` AS `id`,`r`.`number` AS `number`,`rt`.`description` AS `type`,`a`.`alerts` AS `alerts`,`sr`.`code` AS `status_code`,`sr`.`description` AS `status`,`s`.`id` AS `service_id`,`s`.`datetime_start_service` AS `datetime_start_service`,`s`.`datetime_end_service` AS `datetime_end_service`,`s`.`datetime_start_clean` AS `datetime_start_clean`,`s`.`datetime_end_clean` AS `datetime_end_clean` from ((((`puertacontrol`.`room` `r` left join (select `puertacontrol`.`alert`.`id_room` AS `id_room`,count(`puertacontrol`.`alert`.`id`) AS `alerts` from `puertacontrol`.`alert` where (`puertacontrol`.`alert`.`code_type` = 'IDO') group by `puertacontrol`.`alert`.`id_room`) `a` on((`r`.`id` = `a`.`id_room`))) join `puertacontrol`.`status_room` `sr` on((`sr`.`code` = `r`.`code_status`))) join `puertacontrol`.`room_type` `rt` on((`r`.`id_type` = `rt`.`id`))) left join `puertacontrol`.`service` `s` on(((`s`.`id_room` = `r`.`id`) and (`s`.`status` = 'ACT')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_products_x_room`
--

/*!50001 DROP VIEW IF EXISTS `vw_products_x_room`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_products_x_room` AS select `pr`.`id` AS `id`,`pr`.`id_room_type` AS `id_room_type`,`pr`.`id_product` AS `id_product`,`pr`.`quantity` AS `quantity`,`pr`.`quantity_min` AS `quantity_min`,`rt`.`description` AS `type_room`,`p`.`description` AS `product`,`p`.`price_sale` AS `price_sale` from ((`products_x_type_room` `pr` join `room_type` `rt` on((`pr`.`id_room_type` = `rt`.`id`))) join `product` `p` on((`pr`.`id_product` = `p`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_services`
--

/*!50001 DROP VIEW IF EXISTS `vw_services`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_services` AS select `s`.`id` AS `id`,`u`.`username` AS `user`,`r`.`number` AS `number`,`rt`.`description` AS `type_room`,`pk`.`description` AS `package`,`s`.`net_value` AS `net_value`,`s`.`time_service` AS `time_service`,`s`.`time_clean` AS `time_clean`,`s`.`status` AS `status`,`s`.`datetime_start_service` AS `datetime_start_service`,`s`.`datetime_end_service` AS `datetime_end_service`,`s`.`datetime_end_real_service` AS `datetime_end_real_service`,`s`.`datetime_start_clean` AS `datetime_start_clean`,`s`.`datetime_end_clean` AS `datetime_end_clean`,`s`.`datetime_end_real_clean` AS `datetime_end_real_clean` from (((((`service` `s` join `user` `u` on((`s`.`id_user` = `u`.`id`))) join `room` `r` on((`r`.`id` = `s`.`id_room`))) join `room_type` `rt` on((`rt`.`id` = `r`.`id_type`))) join `package_x_type_room` `ptr` on((`ptr`.`id` = `s`.`id_package`))) join `package` `pk` on((`pk`.`id` = `ptr`.`id_package`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-22 15:57:28
