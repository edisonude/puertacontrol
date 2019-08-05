INSERT INTO `puertacontrol`.`room_type` (`id`, `description`) VALUES ('8', 'Suite Hot Party');

INSERT INTO `puertacontrol`.`room` (`id`, `number`, `floor`, `id_type`, `code_status`, `alerts_enabled`, `time_maintenance`) VALUES ('0', '101', '1', '8', 'DIS', '0', '20');

INSERT INTO `puertacontrol`.`package_x_type_room` (`id`, `id_package`, `id_room_type`, `time_service`, `time_clean`, `time_grace`, `price`) VALUES ('15', '1', '8', '240', '40', '0', '150000');
INSERT INTO `puertacontrol`.`package_x_type_room` (`id`, `id_package`, `id_room_type`, `time_service`, `time_clean`, `time_grace`, `price`) VALUES ('16', '2', '8', '720', '40', '0', '300000');

commit;