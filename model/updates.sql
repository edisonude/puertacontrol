-- Se crea columna para guardar los correos de los usuarios
ALTER TABLE `puertacontrol`.`user` 
ADD COLUMN `email` VARCHAR(100) NULL COMMENT 'Correo electrónico del usuario' AFTER `code_rol`;

-- Se ajusta la información para los usuarios administradores 
UPDATE `puertacontrol`.`user` SET `email`='santiagojmg@hotmail.com' WHERE `id`='3';
UPDATE `puertacontrol`.`user` SET `email`='administrador2@itacaadministraciones.com' WHERE `id`='4';
UPDATE `puertacontrol`.`user` SET `email`='isabelacristi@hotmail.com' WHERE `id`='5';
UPDATE `puertacontrol`.`user` SET `email`='edisonandres2@hotmail.com' WHERE `id`='1';

--Se muestran las alarmas del día actual y del último día
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