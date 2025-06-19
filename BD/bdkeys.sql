-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.33 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bdkeys
CREATE DATABASE IF NOT EXISTS `bdkeys` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bdkeys`;

-- Volcando estructura para tabla bdkeys.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `document` bigint NOT NULL,
  `fullname` varchar(80) NOT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`document`),
  KEY `FK_employee_employee_type` (`type_id`),
  CONSTRAINT `FK_employee_employee_type` FOREIGN KEY (`type_id`) REFERENCES `employee_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bdkeys.employee: ~50 rows (aproximadamente)
INSERT INTO `employee` (`document`, `fullname`, `address`, `phone`, `type_id`) VALUES
	(1115, 'AITOR TILLA', 'Av 12 # 10-19', '311', 2),
	(1116, 'HELEN SHUFFE', 'Cra 1 # 2-3', '315', 1),
	(1117, 'ELBA LAZO', 'Cll 5 # 6-7', '317', 3),
	(1118, 'ELVIS NIETO', 'Tr 12 # 6-7', '320', 4),
	(1119, 'Alba Rotte', 'Sede sagrado', '225', 4),
	(1001234567, 'Lionel Messi', 'Calle Falsa 123', '3001234567', 1),
	(1002345678, 'Cristiano Ronaldo', 'Avenida Siempreviva 742', '3012345678', 2),
	(1003456789, 'Neymar Jr', 'Carrera 15 # 80-50', '3023456789', 3),
	(1004567890, 'Kylian Mbappé', 'Diagonal 20 # 30-40', '3034567890', 4),
	(1005678901, 'Robert Lewandowski', 'Calle Luna 56', '3045678901', 1),
	(1006789012, 'Kevin De Bruyne', 'Avenida Sol 90', '3056789012', 2),
	(1007890123, 'Virgil van Dijk', 'Calle Estrella 12', '3067890123', 3),
	(1008901234, 'Sergio Ramos', 'Carrera 25 # 60-70', '3078901234', 4),
	(1009012345, 'Zinedine Zidane', 'Diagonal 30 # 40-50', '3089012345', 1),
	(1010123456, 'Andres Iniesta', 'Calle Primavera 88', '3090123456', 2),
	(1011234567, 'Xavi Hernandez', 'Avenida Mar 100', '3101234567', 3),
	(1012345678, 'Ronaldo Nazario', 'Calle Nieve 22', '3112345678', 4),
	(1013456789, 'Diego Maradona', 'Carrera 35 # 90-100', '3123456789', 1),
	(1014567890, 'Pelé', 'Diagonal 40 # 50-60', '3134567890', 2),
	(1015678901, 'Johan Cruyff', 'Calle Flor 77', '3145678901', 3),
	(1016789012, 'Franz Beckenbauer', 'Avenida Luz 110', '3156789012', 4),
	(1017890123, 'Gerd Müller', 'Calle Brisa 33', '3167890123', 1),
	(1018901234, 'George Best', 'Carrera 45 # 100-110', '3178901234', 2),
	(1019012345, 'Alfredo Di Stefano', 'Diagonal 50 # 60-70', '3189012345', 3),
	(1020123456, 'Eusébio', 'Calle Montaña 99', '3190123456', 4),
	(1021234567, 'Paolo Maldini', 'Avenida Río 120', '3201234567', 1),
	(1022345678, 'Thierry Henry', 'Calle Lago 44', '3212345678', 2),
	(1023456789, 'Zlatan Ibrahimovic', 'Carrera 55 # 110-120', '3223456789', 3),
	(1024567890, 'David Beckham', 'Diagonal 60 # 70-80', '3234567890', 4),
	(1025678901, 'Wayne Rooney', 'Calle Viento 66', '3245678901', 1),
	(1026789012, 'Raúl González', 'Avenida Campo 130', '3256789012', 2),
	(1027890123, 'Carles Puyol', 'Calle Sol 88', '3267890123', 3),
	(1028901234, 'Iker Casillas', 'Carrera 65 # 120-130', '3278901234', 4),
	(1029012345, 'Luís Figo', 'Diagonal 70 # 80-90', '3289012345', 1),
	(1030123456, 'Ronaldinho', 'Calle Luna 111', '3290123456', 2),
	(1031234567, 'Roberto Carlos', 'Avenida Estrella 140', '3301234567', 3),
	(1032345678, 'Gabriel Batistuta', 'Calle Aire 55', '3312345678', 4),
	(1033456789, 'Romário', 'Carrera 75 # 130-140', '3323456789', 1),
	(1034567890, 'Carlos Valderrama', 'Diagonal 80 # 90-100', '3334567890', 2),
	(1035678901, 'Radamel Falcao', 'Calle Mariposa 122', '3345678901', 3),
	(1036789012, 'James Rodríguez', 'Avenida Nube 150', '3356789012', 4),
	(1037890123, 'Hugo Sánchez', 'Calle Rosa 77', '3367890123', 1),
	(1038901234, 'Marco Reus', 'Carrera 85 # 140-150', '3378901234', 2),
	(1039012345, 'Antoine Griezmann', 'Diagonal 90 # 100-110', '3389012345', 3),
	(1040123456, 'Luka Modric', 'Calle Árbol 133', '3390123456', 4),
	(1041234567, 'Karim Benzema', 'Avenida Bosque 160', '3401234567', 1),
	(1042345678, 'Eden Hazard', 'Calle Flor 88', '3412345678', 2),
	(1043456789, 'Vinícius Júnior', 'Carrera 95 # 150-160', '3423456789', 3),
	(1044567890, 'Rodrygo Goes', 'Diagonal 100 # 110-120', '3434567890', 4),
	(1045678901, 'Erling Haaland', 'Calle Sol 99', '3445678901', 1);

-- Volcando estructura para tabla bdkeys.employee_type
CREATE TABLE IF NOT EXISTS `employee_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descript` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descript` (`descript`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bdkeys.employee_type: ~8 rows (aproximadamente)
INSERT INTO `employee_type` (`id`, `descript`) VALUES
	(8, 'COORDINADOR'),
	(2, 'FUNCIONARIO'),
	(4, 'GUARDA'),
	(1, 'INSTRUCTOR'),
	(10, 'kjhjkjh'),
	(3, 'SERVICIOS GENERALES'),
	(7, 'SUBDIRECTOR');

-- Volcando estructura para tabla bdkeys.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdkeys.failed_jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla bdkeys.key_room
CREATE TABLE IF NOT EXISTS `key_room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `room` varchar(50) NOT NULL,
  `count` int NOT NULL,
  `observation` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bdkeys.key_room: ~4 rows (aproximadamente)
INSERT INTO `key_room` (`id`, `name`, `room`, `count`, `observation`) VALUES
	(1, 'BICENTENARIO AMBIENTE 02', 'Sala 202', 3, 'Llavero con 3 llaves, color blanco'),
	(2, 'SENNOVA', 'Aula Sennova', 1, NULL),
	(3, 'INFORMATICA 2', 'Sala informática 2', 2, 'Llavero con dos llaves'),
	(4, 'ADMINISTRATIVO 3', 'Oficina administrativa 3', 1, 'Llave suelta sin llavero');

-- Volcando estructura para tabla bdkeys.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdkeys.migrations: ~4 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- Volcando estructura para tabla bdkeys.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdkeys.password_reset_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla bdkeys.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdkeys.personal_access_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla bdkeys.record
CREATE TABLE IF NOT EXISTS `record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_record` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `employee_id` bigint NOT NULL,
  `key_id` int NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'PENDIENTE, ENTREGADO, CANCELADO',
  PRIMARY KEY (`id`),
  KEY `FK_record_employee` (`employee_id`),
  KEY `FK_record_key` (`key_id`),
  CONSTRAINT `FK_record_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`document`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_record_key` FOREIGN KEY (`key_id`) REFERENCES `key_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bdkeys.record: ~6 rows (aproximadamente)
INSERT INTO `record` (`id`, `date_record`, `start_time`, `end_time`, `employee_id`, `key_id`, `status`) VALUES
	(1, '2025-02-13', '06:50:00', '09:00:00', 1116, 1, 'PENDIENTE'),
	(2, '2025-02-12', '07:00:00', '13:00:00', 1117, 2, 'ENTREGADO'),
	(3, '2025-01-28', '08:10:00', NULL, 1118, 3, 'CANCELADO'),
	(4, '2025-03-20', '10:00:00', '11:00:00', 1115, 1, 'ENTREGADO'),
	(7, '2025-04-03', '07:00:00', '10:00:00', 1118, 1, 'ENTREGADO');

-- Volcando estructura para tabla bdkeys.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdkeys.users: ~10 rows (aproximadamente)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Kiarra Lang', 'ollie.donnelly@example.net', '2025-06-18 03:17:26', '$2y$12$O85SFRwimVtbB3WR/w3GvOx04CNQX8jkq93tkcfGFYc4Gv.h7pVXq', 'KwHRKq9Wew', '2025-06-18 03:17:26', '2025-06-18 03:17:26'),
	(2, 'Dr. Alivia Cremin', 'titus19@example.com', '2025-06-18 03:17:26', '$2y$12$O85SFRwimVtbB3WR/w3GvOx04CNQX8jkq93tkcfGFYc4Gv.h7pVXq', 'xFuKZGB4ql', '2025-06-18 03:17:26', '2025-06-18 03:17:26'),
	(3, 'Joaquin Macejkovic', 'harmstrong@example.org', '2025-06-18 03:17:26', '$2y$12$O85SFRwimVtbB3WR/w3GvOx04CNQX8jkq93tkcfGFYc4Gv.h7pVXq', 'duje4WwCo4', '2025-06-18 03:17:26', '2025-06-18 03:17:26'),
	(4, 'Jaida Barrows', 'ramiro.keebler@example.net', '2025-06-18 03:17:26', '$2y$12$O85SFRwimVtbB3WR/w3GvOx04CNQX8jkq93tkcfGFYc4Gv.h7pVXq', 'TiiaDTehIM', '2025-06-18 03:17:26', '2025-06-18 03:17:26'),
	(5, 'Veronica Carter II', 'barrows.veronica@example.com', '2025-06-18 03:17:26', '$2y$12$O85SFRwimVtbB3WR/w3GvOx04CNQX8jkq93tkcfGFYc4Gv.h7pVXq', 'hPDZ6TO5R4', '2025-06-18 03:17:26', '2025-06-18 03:17:26'),
	(6, 'Mr. Arthur Morar Jr.', 'katelyn56@example.org', '2025-06-18 03:17:26', '$2y$12$O85SFRwimVtbB3WR/w3GvOx04CNQX8jkq93tkcfGFYc4Gv.h7pVXq', 'HHovcy6tMG', '2025-06-18 03:17:26', '2025-06-18 03:17:26'),
	(7, 'Prof. Asa O\'Hara I', 'eulah08@example.org', '2025-06-18 03:17:26', '$2y$12$O85SFRwimVtbB3WR/w3GvOx04CNQX8jkq93tkcfGFYc4Gv.h7pVXq', 'aIITzhDeEe', '2025-06-18 03:17:26', '2025-06-18 03:17:26'),
	(8, 'Moshe Baumbach DDS', 'lyla.cormier@example.net', '2025-06-18 03:17:26', '$2y$12$O85SFRwimVtbB3WR/w3GvOx04CNQX8jkq93tkcfGFYc4Gv.h7pVXq', 'leGvDRRAjT', '2025-06-18 03:17:26', '2025-06-18 03:17:26'),
	(9, 'Miss Estella Lang', 'kuhlman.issac@example.org', '2025-06-18 03:17:26', '$2y$12$O85SFRwimVtbB3WR/w3GvOx04CNQX8jkq93tkcfGFYc4Gv.h7pVXq', 'dxO5g7nkBh', '2025-06-18 03:17:26', '2025-06-18 03:17:26'),
	(10, 'Grant Parisian', 'stehr.hans@example.net', '2025-06-18 03:17:26', '$2y$12$O85SFRwimVtbB3WR/w3GvOx04CNQX8jkq93tkcfGFYc4Gv.h7pVXq', 'hffYIzGczY', '2025-06-18 03:17:26', '2025-06-18 03:17:26');

-- Volcando estructura para vista bdkeys.view_employee
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_employee` (
	`document` BIGINT(19) NOT NULL,
	`fullname` VARCHAR(80) NOT NULL COLLATE 'utf8mb4_0900_ai_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista bdkeys.view_instructor_no_record
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_instructor_no_record` 
) ENGINE=MyISAM;

-- Volcando estructura para vista bdkeys.view_pending_records
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_pending_records` 
) ENGINE=MyISAM;

-- Volcando estructura para vista bdkeys.view_record_key
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_record_key` 
) ENGINE=MyISAM;

-- Volcando estructura para vista bdkeys.view_record_key2
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_record_key2` 
) ENGINE=MyISAM;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_employee`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_employee` AS select `employee`.`document` AS `document`,`employee`.`fullname` AS `fullname` from `employee`;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_instructor_no_record`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_instructor_no_record` AS select `employee`.`document` AS `document`,`employee`.`fullname` AS `fullname`,`employee`.`direccion` AS `direccion`,`employee`.`telefono` AS `telefono`,`employee`.`type_id` AS `type_id` from `employee` where ((`employee`.`type_id` = 1) and `employee`.`document` in (select `record`.`employee_id` from `record`) is false);

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_pending_records`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_pending_records` AS select `record`.`id` AS `id`,`record`.`date_record` AS `date_record`,`record`.`start_time` AS `start_time`,`employee`.`fullname` AS `fullname`,`k`.`name` AS `name`,`k`.`room` AS `room` from ((`record` join `employee`) join `key` `k`) where ((`record`.`employee_id` = `employee`.`document`) and (`record`.`key_id` = `k`.`id`) and (`record`.`status` like 'pendiente'));

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_record_key`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_record_key` AS select `record`.`id` AS `id`,`record`.`date_record` AS `date_record`,`key`.`name` AS `name`,`key`.`room` AS `room` from (`record` join `key`) where (`record`.`key_id` = `key`.`id`);

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_record_key2`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_record_key2` AS select `record`.`id` AS `record_id`,`k`.`id` AS `key_id`,`record`.`status` AS `status` from (`record` join `key` `k`) where (`record`.`key_id` = `k`.`id`);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
