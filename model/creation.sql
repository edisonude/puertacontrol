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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Log de operaciones de apertura/cierre de las habitaciones';
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Representa el prestámo servicio que se hace de una habitación, en un paquete u horario especifico a un cliente.';
/*!40101 SET character_set_client = @saved_cs_client */;

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

-- Dump completed on 2018-01-24  1:14:15
