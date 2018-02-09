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



