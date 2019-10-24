/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : sanlorenzo

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-10-10 15:57:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for visitantes_visitante
-- ----------------------------
DROP TABLE IF EXISTS `visitantes_visitante`;
CREATE TABLE `visitantes_visitante` (
  `id` binary(16) NOT NULL,
  `foto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numero_documento` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_expedicion_documento` date NOT NULL,
  `primer_nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `segundo_nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primer_apellido` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `segundo_apellido` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `celular` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contacto_emergencia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `celular_emergencia` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `eps` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `razon_social_empresa` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arl` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `lugar_expedicion_documento_id` int(11) NOT NULL,
  `rh_id` int(11) NOT NULL,
  `tipo_documento_id` int(11) NOT NULL,
  `tipo_visitante_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visitantes_visitante_genero_id_10bfad5f_fk_parametri` (`genero_id`),
  KEY `visitantes_visitante_lugar_expedicion_doc_633dc981_fk_parametri` (`lugar_expedicion_documento_id`),
  KEY `visitantes_visitante_rh_id_50ba43a5_fk_parametricos_rh_id` (`rh_id`),
  KEY `visitantes_visitante_tipo_documento_id_f104f071_fk_parametri` (`tipo_documento_id`),
  KEY `visitantes_visitante_tipo_visitante_id_abc940b6_fk_parametri` (`tipo_visitante_id`),
  CONSTRAINT `visitantes_visitante_genero_id_10bfad5f_fk_parametri` FOREIGN KEY (`genero_id`) REFERENCES `parametricos_genero` (`id`),
  CONSTRAINT `visitantes_visitante_lugar_expedicion_doc_633dc981_fk_parametri` FOREIGN KEY (`lugar_expedicion_documento_id`) REFERENCES `parametricos_municipio` (`id`),
  CONSTRAINT `visitantes_visitante_rh_id_50ba43a5_fk_parametricos_rh_id` FOREIGN KEY (`rh_id`) REFERENCES `parametricos_rh` (`id`),
  CONSTRAINT `visitantes_visitante_tipo_documento_id_f104f071_fk_parametri` FOREIGN KEY (`tipo_documento_id`) REFERENCES `parametricos_tipodocumento` (`id`),
  CONSTRAINT `visitantes_visitante_tipo_visitante_id_abc940b6_fk_parametri` FOREIGN KEY (`tipo_visitante_id`) REFERENCES `parametricos_tipovisitante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of visitantes_visitante
-- ----------------------------
INSERT INTO `visitantes_visitante` VALUES (0x30373832656634382D613433392D3131, '123', '3211321', '2019-10-10', 'asdflkj', 'asdflk', 'asdflkj', 'asdlfkj', '2019-10-30', '321654', 'asdjas@djasd.com', '321321', '321321', 'Sura', 'RAPI', 'NO APLICA', '2019-10-10 15:39:36.000000', '2019-10-10 15:39:46.000000', '1', '1', '1', '1', '1');
