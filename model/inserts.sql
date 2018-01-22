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



-- Se crean los productos base
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('CocaCola');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Club colombia');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Soda');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Chocolatina Jet');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Snickers');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('MilkyWay');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Gatorade');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Halls');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Bayleys');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Vino Gato Negro');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Tequila Jose Cuervo');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Whisky Old Parr');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Ron en Caja');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Aguardiente en Caja');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Vive 100');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Nutella');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Lecherita');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('JP Chenet');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Mani La Especial');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Pringles');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Tic Tac');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Alka Seltzer Extrem');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Trident pequeño');
INSERT INTO `puertacontrol`.`product` (`description`) VALUES ('Condones');

-- Se crean los tipos de habitaciones
INSERT INTO `puertacontrol`.`room_type` (`id`, `description`) VALUES ('1', 'Habitación sencilla');
INSERT INTO `puertacontrol`.`room_type` (`id`, `description`) VALUES ('2', 'Habitación normal');
INSERT INTO `puertacontrol`.`room_type` (`id`, `description`) VALUES ('3', 'Suite');
INSERT INTO `puertacontrol`.`room_type` (`id`, `description`) VALUES ('4', 'Regular Suite');
INSERT INTO `puertacontrol`.`room_type` (`id`, `description`) VALUES ('5', 'Master Suite');
INSERT INTO `puertacontrol`.`room_type` (`id`, `description`) VALUES ('6', 'Play Suite');
INSERT INTO `puertacontrol`.`room_type` (`id`, `description`) VALUES ('7', 'Suite Presidencial');

-- Se crea la asociación entre los productos, el tipo de habitación y la cantidad mínima requerida por habitación
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','1','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','2','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','3','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','4','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','5','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','6','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','7','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','8','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','9','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','10','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','11','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','12','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','13','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','14','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','15','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','16','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','17','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','18','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','19','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','20','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','21','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','22','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','23','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','24','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','25','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','26','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','27','0','8');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('1','28','0','3');

INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','1','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','2','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','3','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','4','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','5','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','6','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','7','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','8','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','9','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','10','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','11','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','12','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','13','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','14','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','15','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','16','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','17','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','18','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','19','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','20','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','21','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','22','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','23','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','24','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','25','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','26','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','27','0','8');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('2','28','0','3');

INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','1','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','2','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','3','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','4','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','5','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','6','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','7','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','8','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','9','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','10','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','11','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','12','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','13','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','14','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','15','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','16','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','17','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','18','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','19','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','20','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','21','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','22','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','23','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','24','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','25','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','26','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','27','0','8');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('3','28','0','3');

INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','1','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','2','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','3','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','4','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','5','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','6','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','7','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','8','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','9','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','10','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','11','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','12','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','13','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','14','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','15','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','16','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','17','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','18','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','19','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','20','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','21','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','22','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','23','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','24','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','25','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','26','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','27','0','8');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('4','28','0','3');

INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','1','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','2','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','3','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','4','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','5','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','6','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','7','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','8','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','9','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','10','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','11','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','12','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','13','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','14','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','15','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','16','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','17','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','18','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','19','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','20','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','21','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','22','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','23','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','24','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','25','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','26','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','27','0','8');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('5','28','0','3');

INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','1','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','2','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','3','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','4','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','5','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','6','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','7','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','8','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','9','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','10','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','11','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','12','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','13','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','14','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','15','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','16','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','17','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','18','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','19','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','20','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','21','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','22','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','23','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','24','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','25','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','26','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','27','0','8');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('6','28','0','3');

INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','1','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','2','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','3','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','4','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','5','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','6','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','7','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','8','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','9','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','10','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','11','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','12','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','13','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','14','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','15','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','16','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','17','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','18','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','19','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','20','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','21','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','22','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','23','0','2');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','24','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','25','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','26','0','1');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','27','0','8');
INSERT INTO `puertacontrol`.`products_x_type_room` (`id_room_type`, `id_product`, `quantity`, `quantity_min`) VALUES ('7','28','0','3');

--

INSERT INTO `puertacontrol`.`status_room` (`code`, `description`) VALUES ('CLP', 'En limpieza');
UPDATE `puertacontrol`.`status_room` SET `description`='A limpieza' WHERE `code`='CLN';