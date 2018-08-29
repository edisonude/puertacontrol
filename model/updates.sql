-- Se crea columna para guardar los correos de los usuarios
ALTER TABLE `puertacontrol`.`user` 
ADD COLUMN `email` VARCHAR(100) NULL COMMENT 'Correo electrónico del usuario' AFTER `code_rol`;

-- Se ajusta la información para los usuarios administradores 
UPDATE `puertacontrol`.`user` SET `email`='santiagojmg@hotmail.com' WHERE `id`='3';
UPDATE `puertacontrol`.`user` SET `email`='administrador2@itacaadministraciones.com' WHERE `id`='4';
UPDATE `puertacontrol`.`user` SET `email`='isabelacristi@hotmail.com' WHERE `id`='5';
UPDATE `puertacontrol`.`user` SET `email`='edisonandres2@hotmail.com' WHERE `id`='1';

-- Se muestran las alarmas del día actual y del último día
USE `puertacontrol`;
CREATE 
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `room_details` AS
    SELECT 
        `r`.`id` AS `id`,
        `r`.`number` AS `number`,
        `rt`.`description` AS `type`,
        `a`.`alerts` AS `alerts`,
        `sr`.`code` AS `status_code`,
        `sr`.`description` AS `status`,
        `s`.`id` AS `service_id`,
        `s`.`datetime_start_service` AS `datetime_start_service`,
        `s`.`datetime_end_service` AS `datetime_end_service`,
        `s`.`datetime_start_clean` AS `datetime_start_clean`,
        `s`.`datetime_end_clean` AS `datetime_end_clean`
    FROM
        ((((`puertacontrol`.`room` `r`
        LEFT JOIN (SELECT 
            `puertacontrol`.`alert`.`id_room` AS `id_room`,
                COUNT(`puertacontrol`.`alert`.`id`) AS `alerts`
        FROM
            `puertacontrol`.`alert`
        WHERE
            (`puertacontrol`.`alert`.`code_type` = 'IDO' and date> date_format(date_sub(NOW(), INTERVAL 1 DAY),'%Y-%m-%d 00:00:00'))
        GROUP BY `puertacontrol`.`alert`.`id_room`) `a` ON ((`r`.`id` = `a`.`id_room`)))
        JOIN `puertacontrol`.`status_room` `sr` ON ((`sr`.`code` = `r`.`code_status`)))
        JOIN `puertacontrol`.`room_type` `rt` ON ((`r`.`id_type` = `rt`.`id`)))
        LEFT JOIN `puertacontrol`.`service` `s` ON (((`s`.`id_room` = `r`.`id`)
            AND (`s`.`status` = 'ACT'))));
            
-- Se crea el tipo de producto
ALTER TABLE `puertacontrol`.`product` 
ADD COLUMN `code_product_type` VARCHAR(5) NULL COMMENT 'Código del tipo de producto' AFTER `price_sale`;

CREATE TABLE `puertacontrol`.`product_type` (
  `code` VARCHAR(5) NOT NULL,
  `description` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE INDEX `code_UNIQUE` (`code` ASC))
COMMENT = 'Almacena todos los tipos de producto de la habitación';

ALTER TABLE `puertacontrol`.`product` 
ADD INDEX `fk_product_type_idx` (`code_product_type` ASC);
ALTER TABLE `puertacontrol`.`product` 
ADD CONSTRAINT `fk_product_type`
  FOREIGN KEY (`code_product_type`)
  REFERENCES `puertacontrol`.`product_type` (`code`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
INSERT INTO `puertacontrol`.`product_type` (`code`, `description`) VALUES ('CON', 'Consumo');
INSERT INTO `puertacontrol`.`product_type` (`code`, `description`) VALUES ('ERO', 'Erótico');
INSERT INTO `puertacontrol`.`product_type` (`code`, `description`) VALUES ('INS', 'Insumo');

-- Se corrigen los tipos de las habitaciones 501 y 503
UPDATE `puertacontrol`.`room` SET `id_type`='7' WHERE `id`='25';
UPDATE `puertacontrol`.`room` SET `id_type`='5' WHERE `id`='27';

-- Se clasifican los productos x tipo
update product set code_product_type='CON' where id<38;
update product set code_product_type='ERO' where id>=38;

-- Columna para almacenar el descuento de un servicio
ALTER TABLE `puertacontrol`.`service_details` 
ADD COLUMN `discount` DOUBLE NOT NULL DEFAULT 0 COMMENT 'Valor del descuento unicamente sobre el item del servicio en porcentaje (0.1 a 1)' AFTER `price`;

-- 14/02/2018

-- Campo para determinar si la habitación tiene habilitadas las alarmas
ALTER TABLE `puertacontrol`.`room` 
ADD COLUMN `alerts_enabled` TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'Establece si las alarmas se encuentran habilitadas para la habitación' AFTER `date_last_clean`;

update room set alerts_enabled=1;

-- Entidad con los estados posibles que puede tomar una operación de habitación
CREATE TABLE `puertacontrol`.`operation_room_status` (
  `id` TINYINT(1) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_operation`))
COMMENT = 'Estado de la operación ocurrida para una habitación';

INSERT INTO `puertacontrol`.`operation_room_status` (`id`, `description`) VALUES ('0', 'PENDING');
INSERT INTO `puertacontrol`.`operation_room_status` (`id`, `description`) VALUES ('1', 'SUCCESS');
INSERT INTO `puertacontrol`.`operation_room_status` (`id`, `description`) VALUES ('2', 'ERROR_NOISE');
INSERT INTO `puertacontrol`.`operation_room_status` (`id`, `description`) VALUES ('3', 'ERROR_NO_SYSTEM_EMAIL');
INSERT INTO `puertacontrol`.`operation_room_status` (`id`, `description`) VALUES ('4', 'AVOIDED_BY_ADMIN');
INSERT INTO `puertacontrol`.`operation_room_status` (`id`, `description`) VALUES ('5', 'ROOM_DISABLED');

-- 17/02/2018

INSERT INTO `puertacontrol`.`operation_room_status` (`id`, `description`) VALUES ('6', 'NO_ALARM');

-- Estado de mantenimiento
INSERT INTO `puertacontrol`.`status_room` (`code`, `description`) VALUES ('MAN', 'Mantenimiento');

ALTER TABLE `puertacontrol`.`room` 
ADD COLUMN `time_maintenance` INT NULL COMMENT 'Tiempo de mantenimiento de una habitación en minutos' AFTER `alerts_enabled`;

update room set time_maintenance='15' where id<=24;
update room set time_maintenance='20' where id>24;

CREATE TABLE `maintenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_room` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL COMMENT 'Tiempo del mantenimiento en minutos',
  `datetime_start` datetime NOT NULL,
  `datetime_end` datetime NOT NULL,
  `datetime_real_end` datetime DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL COMMENT 'Usuario que inicio la operación de mantenimiento',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Almacena los matenimientos realizados a las habitaciones.';
      
ALTER TABLE `puertacontrol`.`maintenance` 
ADD COLUMN `status` VARCHAR(5) NOT NULL DEFAULT 'ACT' COMMENT 'Determina el estado del mantenimiento ACT(Activo) FIN(Finalizado)' AFTER `id_user`;

USE `puertacontrol`;
CREATE 
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `room_details` AS
    SELECT 
        `r`.`id` AS `id`,
        `r`.`number` AS `number`,
        `rt`.`description` AS `type`,
        `a`.`alerts` AS `alerts`,
        `sr`.`code` AS `status_code`,
        `sr`.`description` AS `status`,
        `s`.`id` AS `service_id`,
        `s`.`datetime_start_service` AS `datetime_start_service`,
        `s`.`datetime_end_service` AS `datetime_end_service`,
        `s`.`datetime_start_clean` AS `datetime_start_clean`,
        `s`.`datetime_end_clean` AS `datetime_end_clean`,
        `mm`.`id` AS `id_maintenance`,
        `mm`.`datetime_start` AS `datetime_start_maintenance`,
        `mm`.`datetime_end` AS `datetime_end_maintenance`
    FROM
        (((((`puertacontrol`.`room` `r`
        LEFT JOIN (SELECT 
            `puertacontrol`.`alert`.`id_room` AS `id_room`,
                COUNT(`puertacontrol`.`alert`.`id`) AS `alerts`
        FROM
            `puertacontrol`.`alert`
        WHERE
            ((`puertacontrol`.`alert`.`code_type` = 'IDO')
                AND (`puertacontrol`.`alert`.`date` > DATE_FORMAT((NOW() - INTERVAL 0 DAY), '%Y-%m-%d 00:00:00')))
        GROUP BY `puertacontrol`.`alert`.`id_room`) `a` ON ((`r`.`id` = `a`.`id_room`)))
        JOIN `puertacontrol`.`status_room` `sr` ON ((`sr`.`code` = `r`.`code_status`)))
        JOIN `puertacontrol`.`room_type` `rt` ON ((`r`.`id_type` = `rt`.`id`)))
        LEFT JOIN `puertacontrol`.`service` `s` ON (((`s`.`id_room` = `r`.`id`)
            AND (`s`.`status` = 'ACT'))))
        LEFT JOIN `puertacontrol`.`maintenance` `mm` ON (`mm`.`id_room` = `r`.`id`) AND (`mm`.`status` = 'ACT'));
        
-- 18/02/2018

CREATE TABLE `puertacontrol`.`cash` (
  `cash` DOUBLE NULL COMMENT 'Valor de efectivo en la caja',
  `total_services` INT NULL COMMENT 'Total de servicios que han sumado valor a la caja',
  `total_collection` INT NULL COMMENT 'Total de recaudos que han restado valor a la caja',
  `total_expenses` INT NULL COMMENT 'Total gastos que han restado valor a la caja',
  `total_income` INT NULL COMMENT 'Total de ingresos que aumentan el valor de la caja')
COMMENT = 'Almacena los valores del control de caja';

CREATE TABLE `cash_operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL COMMENT 'Tipo de operación de la caja',
  `date` datetime NOT NULL COMMENT 'Fecha de la operación de caja',
  `value` double NOT NULL COMMENT 'Valor de la operación',
  `id_user` int(11) NOT NULL COMMENT 'Usuario que ejecutó la operación',
  PRIMARY KEY (`id`),
  KEY `fk_cash_operation_user_idx` (`id_user`),
  CONSTRAINT `fk_cash_operation_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Almacena todas las operaciones relacionadas con la caja';

ALTER TABLE `puertacontrol`.`cash_operations` 
ADD INDEX `fk_cash_operation_user_idx` (`id_user` ASC);
ALTER TABLE `puertacontrol`.`cash_operations` 
ADD CONSTRAINT `fk_cash_operation_user`
  FOREIGN KEY (`id_user`)
  REFERENCES `puertacontrol`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- valores iniciales de la caja
insert into cash values (0,0,0,0,0);

-- 20/02/2018

ALTER TABLE `puertacontrol`.`cash_operations` 
ADD COLUMN `description` VARCHAR(500) NULL AFTER `id_user`;





-----------------------------------------------------------------------------------------------------------
-- 03/04/2018
ALTER TABLE `puertacontrol`.`package` 
ADD COLUMN `selectable` TINYINT(1) NOT NULL DEFAULT 0 AFTER `description`;

INSERT INTO `puertacontrol`.`package` (`id`, `description`, `selectable`) VALUES ('3', 'Persona adicional', '0');
INSERT INTO `puertacontrol`.`package` (`id`, `description`, `selectable`) VALUES ('4', 'Hora adicional', '0');
UPDATE `puertacontrol`.`package` SET `selectable`='1' WHERE `id`='1';
UPDATE `puertacontrol`.`package` SET `selectable`='1' WHERE `id`='2';


