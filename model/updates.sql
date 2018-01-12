-- Se establece el código como un campo no requerido y se pone valores por defecto sobre las cantidades

ALTER TABLE `puertacontrol`.`product` 
CHANGE COLUMN `quantity_min` `quantity_min` INT(11) NOT NULL DEFAULT 0 ,
CHANGE COLUMN `code` `code` VARCHAR(20) NULL COMMENT 'Código especial del producto, pensado para el código de barras' ;