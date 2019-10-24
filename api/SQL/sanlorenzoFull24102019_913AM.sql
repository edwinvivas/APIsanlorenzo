/*
Navicat MySQL Data Transfer

Source Server         : mysqlLocal
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : sanlorenzo

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2019-10-24 09:13:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add departamento', '7', 'add_departamento');
INSERT INTO `auth_permission` VALUES ('26', 'Can change departamento', '7', 'change_departamento');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete departamento', '7', 'delete_departamento');
INSERT INTO `auth_permission` VALUES ('28', 'Can view departamento', '7', 'view_departamento');
INSERT INTO `auth_permission` VALUES ('29', 'Can add genero', '8', 'add_genero');
INSERT INTO `auth_permission` VALUES ('30', 'Can change genero', '8', 'change_genero');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete genero', '8', 'delete_genero');
INSERT INTO `auth_permission` VALUES ('32', 'Can view genero', '8', 'view_genero');
INSERT INTO `auth_permission` VALUES ('33', 'Can add rh', '9', 'add_rh');
INSERT INTO `auth_permission` VALUES ('34', 'Can change rh', '9', 'change_rh');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete rh', '9', 'delete_rh');
INSERT INTO `auth_permission` VALUES ('36', 'Can view rh', '9', 'view_rh');
INSERT INTO `auth_permission` VALUES ('37', 'Can add tipo documento', '10', 'add_tipodocumento');
INSERT INTO `auth_permission` VALUES ('38', 'Can change tipo documento', '10', 'change_tipodocumento');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete tipo documento', '10', 'delete_tipodocumento');
INSERT INTO `auth_permission` VALUES ('40', 'Can view tipo documento', '10', 'view_tipodocumento');
INSERT INTO `auth_permission` VALUES ('41', 'Can add tipo visitante', '11', 'add_tipovisitante');
INSERT INTO `auth_permission` VALUES ('42', 'Can change tipo visitante', '11', 'change_tipovisitante');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete tipo visitante', '11', 'delete_tipovisitante');
INSERT INTO `auth_permission` VALUES ('44', 'Can view tipo visitante', '11', 'view_tipovisitante');
INSERT INTO `auth_permission` VALUES ('45', 'Can add municipio', '12', 'add_municipio');
INSERT INTO `auth_permission` VALUES ('46', 'Can change municipio', '12', 'change_municipio');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete municipio', '12', 'delete_municipio');
INSERT INTO `auth_permission` VALUES ('48', 'Can view municipio', '12', 'view_municipio');
INSERT INTO `auth_permission` VALUES ('49', 'Can add TipoPropiedad', '13', 'add_tipopropiedad');
INSERT INTO `auth_permission` VALUES ('50', 'Can change TipoPropiedad', '13', 'change_tipopropiedad');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete TipoPropiedad', '13', 'delete_tipopropiedad');
INSERT INTO `auth_permission` VALUES ('52', 'Can view TipoPropiedad', '13', 'view_tipopropiedad');
INSERT INTO `auth_permission` VALUES ('53', 'Can add Vehiculo', '14', 'add_vehiculo');
INSERT INTO `auth_permission` VALUES ('54', 'Can change Vehiculo', '14', 'change_vehiculo');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete Vehiculo', '14', 'delete_vehiculo');
INSERT INTO `auth_permission` VALUES ('56', 'Can view Vehiculo', '14', 'view_vehiculo');
INSERT INTO `auth_permission` VALUES ('57', 'Can add Propiedad', '15', 'add_propiedad');
INSERT INTO `auth_permission` VALUES ('58', 'Can change Propiedad', '15', 'change_propiedad');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete Propiedad', '15', 'delete_propiedad');
INSERT INTO `auth_permission` VALUES ('60', 'Can view Propiedad', '15', 'view_propiedad');
INSERT INTO `auth_permission` VALUES ('61', 'Can add test', '16', 'add_test');
INSERT INTO `auth_permission` VALUES ('62', 'Can change test', '16', 'change_test');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete test', '16', 'delete_test');
INSERT INTO `auth_permission` VALUES ('64', 'Can view test', '16', 'view_test');
INSERT INTO `auth_permission` VALUES ('65', 'Can add visitante', '17', 'add_visitante');
INSERT INTO `auth_permission` VALUES ('66', 'Can change visitante', '17', 'change_visitante');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete visitante', '17', 'delete_visitante');
INSERT INTO `auth_permission` VALUES ('68', 'Can view visitante', '17', 'view_visitante');
INSERT INTO `auth_permission` VALUES ('69', 'Can add entrada', '18', 'add_entrada');
INSERT INTO `auth_permission` VALUES ('70', 'Can change entrada', '18', 'change_entrada');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete entrada', '18', 'delete_entrada');
INSERT INTO `auth_permission` VALUES ('72', 'Can view entrada', '18', 'view_entrada');
INSERT INTO `auth_permission` VALUES ('73', 'Can add Residente', '19', 'add_residente');
INSERT INTO `auth_permission` VALUES ('74', 'Can change Residente', '19', 'change_residente');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete Residente', '19', 'delete_residente');
INSERT INTO `auth_permission` VALUES ('76', 'Can view Residente', '19', 'view_residente');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'parametricos', 'departamento');
INSERT INTO `django_content_type` VALUES ('8', 'parametricos', 'genero');
INSERT INTO `django_content_type` VALUES ('12', 'parametricos', 'municipio');
INSERT INTO `django_content_type` VALUES ('9', 'parametricos', 'rh');
INSERT INTO `django_content_type` VALUES ('10', 'parametricos', 'tipodocumento');
INSERT INTO `django_content_type` VALUES ('11', 'parametricos', 'tipovisitante');
INSERT INTO `django_content_type` VALUES ('15', 'residentes', 'propiedad');
INSERT INTO `django_content_type` VALUES ('19', 'residentes', 'residente');
INSERT INTO `django_content_type` VALUES ('13', 'residentes', 'tipopropiedad');
INSERT INTO `django_content_type` VALUES ('14', 'residentes', 'vehiculo');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('18', 'visitantes', 'entrada');
INSERT INTO `django_content_type` VALUES ('16', 'visitantes', 'test');
INSERT INTO `django_content_type` VALUES ('17', 'visitantes', 'visitante');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-10-21 21:54:03.892495');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-10-21 21:54:04.007179');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-10-21 21:54:04.334304');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-10-21 21:54:04.406141');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-10-21 21:54:04.414091');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-10-21 21:54:04.477934');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-10-21 21:54:04.489887');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-10-21 21:54:04.505846');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-10-21 21:54:04.515818');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-10-21 21:54:04.549729');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-10-21 21:54:04.553717');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-10-21 21:54:04.562694');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-10-21 21:54:04.577655');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-10-21 21:54:04.593610');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2019-10-21 21:54:04.609569');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2019-10-21 21:54:04.620539');
INSERT INTO `django_migrations` VALUES ('17', 'parametricos', '0001_initial', '2019-10-21 21:54:04.720789');
INSERT INTO `django_migrations` VALUES ('18', 'residentes', '0001_initial', '2019-10-21 21:54:04.832489');
INSERT INTO `django_migrations` VALUES ('19', 'sessions', '0001_initial', '2019-10-21 21:54:04.886345');
INSERT INTO `django_migrations` VALUES ('20', 'visitantes', '0001_initial', '2019-10-21 21:54:04.975106');
INSERT INTO `django_migrations` VALUES ('21', 'residentes', '0002_auto_20191022_1109', '2019-10-22 16:09:31.998445');
INSERT INTO `django_migrations` VALUES ('22', 'residentes', '0003_auto_20191022_1205', '2019-10-22 17:06:14.142429');
INSERT INTO `django_migrations` VALUES ('23', 'residentes', '0004_auto_20191023_1235', '2019-10-23 17:36:04.451320');
INSERT INTO `django_migrations` VALUES ('24', 'residentes', '0005_auto_20191023_1247', '2019-10-23 17:47:18.068877');
INSERT INTO `django_migrations` VALUES ('25', 'residentes', '0006_auto_20191023_1304', '2019-10-23 18:04:40.762592');
INSERT INTO `django_migrations` VALUES ('26', 'residentes', '0007_auto_20191023_1324', '2019-10-23 18:24:44.266383');
INSERT INTO `django_migrations` VALUES ('27', 'residentes', '0008_residente_propiedad', '2019-10-23 18:26:05.426086');
INSERT INTO `django_migrations` VALUES ('28', 'residentes', '0009_auto_20191023_2055', '2019-10-24 01:55:43.276209');
INSERT INTO `django_migrations` VALUES ('29', 'residentes', '0010_auto_20191023_2059', '2019-10-24 01:59:56.763155');
INSERT INTO `django_migrations` VALUES ('30', 'residentes', '0011_auto_20191023_2103', '2019-10-24 02:03:41.404168');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for parametricos_departamento
-- ----------------------------
DROP TABLE IF EXISTS `parametricos_departamento`;
CREATE TABLE `parametricos_departamento` (
  `codigo` varchar(2) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parametricos_departamento
-- ----------------------------
INSERT INTO `parametricos_departamento` VALUES ('05', 'ANTIOQUIA');
INSERT INTO `parametricos_departamento` VALUES ('08', 'ATLÁNTICO');
INSERT INTO `parametricos_departamento` VALUES ('11', 'BOGOTÁ, D.C.');
INSERT INTO `parametricos_departamento` VALUES ('13', 'BOLÍVAR');
INSERT INTO `parametricos_departamento` VALUES ('15', 'BOYACÁ');
INSERT INTO `parametricos_departamento` VALUES ('17', 'CALDAS');
INSERT INTO `parametricos_departamento` VALUES ('18', 'CAQUETÁ');
INSERT INTO `parametricos_departamento` VALUES ('19', 'CAUCA');
INSERT INTO `parametricos_departamento` VALUES ('20', 'CESAR');
INSERT INTO `parametricos_departamento` VALUES ('23', 'CÓRDOBA');
INSERT INTO `parametricos_departamento` VALUES ('25', 'CUNDINAMARCA');
INSERT INTO `parametricos_departamento` VALUES ('27', 'CHOCÓ');
INSERT INTO `parametricos_departamento` VALUES ('41', 'HUILA');
INSERT INTO `parametricos_departamento` VALUES ('44', 'LA GUAJIRA');
INSERT INTO `parametricos_departamento` VALUES ('47', 'MAGDALENA');
INSERT INTO `parametricos_departamento` VALUES ('50', 'META');
INSERT INTO `parametricos_departamento` VALUES ('52', 'NARIÑO');
INSERT INTO `parametricos_departamento` VALUES ('54', 'NORTE DE SANTANDER');
INSERT INTO `parametricos_departamento` VALUES ('63', 'QUINDÍO');
INSERT INTO `parametricos_departamento` VALUES ('66', 'RISARALDA');
INSERT INTO `parametricos_departamento` VALUES ('68', 'SANTANDER');
INSERT INTO `parametricos_departamento` VALUES ('70', 'SUCRE');
INSERT INTO `parametricos_departamento` VALUES ('73', 'TOLIMA');
INSERT INTO `parametricos_departamento` VALUES ('76', 'VALLE DEL CAUCA');
INSERT INTO `parametricos_departamento` VALUES ('81', 'ARAUCA');
INSERT INTO `parametricos_departamento` VALUES ('85', 'CASANARE');
INSERT INTO `parametricos_departamento` VALUES ('86', 'PUTUMAYO');
INSERT INTO `parametricos_departamento` VALUES ('88', 'ARCHIPIÉLAGO DE SAN ANDRÉS');
INSERT INTO `parametricos_departamento` VALUES ('91', 'AMAZONAS');
INSERT INTO `parametricos_departamento` VALUES ('94', 'GUAINÍA');
INSERT INTO `parametricos_departamento` VALUES ('95', 'GUAVIARE');
INSERT INTO `parametricos_departamento` VALUES ('97', 'VAUPÉS');
INSERT INTO `parametricos_departamento` VALUES ('99', 'VICHADA');

-- ----------------------------
-- Table structure for parametricos_genero
-- ----------------------------
DROP TABLE IF EXISTS `parametricos_genero`;
CREATE TABLE `parametricos_genero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(1) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parametricos_genero
-- ----------------------------
INSERT INTO `parametricos_genero` VALUES ('1', 'M', 'Masculino');
INSERT INTO `parametricos_genero` VALUES ('2', 'F', 'Femenino');

-- ----------------------------
-- Table structure for parametricos_municipio
-- ----------------------------
DROP TABLE IF EXISTS `parametricos_municipio`;
CREATE TABLE `parametricos_municipio` (
  `codigo` varchar(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `departamento_id` varchar(2) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `parametricos_municip_departamento_id_e95a0e30_fk_parametri` (`departamento_id`),
  CONSTRAINT `parametricos_municip_departamento_id_e95a0e30_fk_parametri` FOREIGN KEY (`departamento_id`) REFERENCES `parametricos_departamento` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parametricos_municipio
-- ----------------------------
INSERT INTO `parametricos_municipio` VALUES ('05001', 'MEDELLÍN', '05');
INSERT INTO `parametricos_municipio` VALUES ('05002', 'ABEJORRAL', '05');
INSERT INTO `parametricos_municipio` VALUES ('05004', 'ABRIAQUÍ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05021', 'ALEJANDRÍA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05030', 'AMAGÁ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05031', 'AMALFI', '05');
INSERT INTO `parametricos_municipio` VALUES ('05034', 'ANDES', '05');
INSERT INTO `parametricos_municipio` VALUES ('05036', 'ANGELÓPOLIS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05038', 'ANGOSTURA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05040', 'ANORÍ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05042', 'SANTA FÉ DE ANTIOQUIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05044', 'ANZÁ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05045', 'APARTADÓ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05051', 'ARBOLETES', '05');
INSERT INTO `parametricos_municipio` VALUES ('05055', 'ARGELIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05059', 'ARMENIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05079', 'BARBOSA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05086', 'BELMIRA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05088', 'BELLO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05091', 'BETANIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05093', 'BETULIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05101', 'CIUDAD BOLÍVAR', '05');
INSERT INTO `parametricos_municipio` VALUES ('05107', 'BRICEÑO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05113', 'BURITICÁ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05120', 'CÁCERES', '05');
INSERT INTO `parametricos_municipio` VALUES ('05125', 'CAICEDO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05129', 'CALDAS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05134', 'CAMPAMENTO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05138', 'CAÑASGORDAS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05142', 'CARACOLÍ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05145', 'CARAMANTA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05147', 'CAREPA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05148', 'EL CARMEN DE VIBORAL', '05');
INSERT INTO `parametricos_municipio` VALUES ('05150', 'CAROLINA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05154', 'CAUCASIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05172', 'CHIGORODÓ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05190', 'CISNEROS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05197', 'COCORNÁ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05206', 'CONCEPCIÓN', '05');
INSERT INTO `parametricos_municipio` VALUES ('05209', 'CONCORDIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05212', 'COPACABANA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05234', 'DABEIBA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05237', 'DONMATÍAS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05240', 'EBÉJICO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05250', 'EL BAGRE', '05');
INSERT INTO `parametricos_municipio` VALUES ('05264', 'ENTRERRÍOS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05266', 'ENVIGADO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05282', 'FREDONIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05284', 'FRONTINO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05306', 'GIRALDO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05308', 'GIRARDOTA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05310', 'GÓMEZ PLATA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05313', 'GRANADA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05315', 'GUADALUPE', '05');
INSERT INTO `parametricos_municipio` VALUES ('05318', 'GUARNE', '05');
INSERT INTO `parametricos_municipio` VALUES ('05321', 'GUATAPÉ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05347', 'HELICONIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05353', 'HISPANIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05360', 'ITAGÜÍ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05361', 'ITUANGO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05364', 'JARDÍN', '05');
INSERT INTO `parametricos_municipio` VALUES ('05368', 'JERICÓ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05376', 'LA CEJA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05380', 'LA ESTRELLA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05390', 'LA PINTADA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05400', 'LA UNIÓN', '05');
INSERT INTO `parametricos_municipio` VALUES ('05411', 'LIBORINA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05425', 'MACEO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05440', 'MARINILLA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05467', 'MONTEBELLO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05475', 'MURINDÓ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05480', 'MUTATÁ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05483', 'NARIÑO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05490', 'NECOCLÍ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05495', 'NECHÍ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05501', 'OLAYA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05541', 'PEÑOL', '05');
INSERT INTO `parametricos_municipio` VALUES ('05543', 'PEQUE', '05');
INSERT INTO `parametricos_municipio` VALUES ('05576', 'PUEBLORRICO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05579', 'PUERTO BERRÍO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05585', 'PUERTO NARE', '05');
INSERT INTO `parametricos_municipio` VALUES ('05591', 'PUERTO TRIUNFO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05604', 'REMEDIOS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05607', 'RETIRO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05615', 'RIONEGRO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05628', 'SABANALARGA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05631', 'SABANETA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05642', 'SALGAR', '05');
INSERT INTO `parametricos_municipio` VALUES ('05647', 'SAN ANDRÉS DE CUERQUÍA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05649', 'SAN CARLOS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05652', 'SAN FRANCISCO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05656', 'SAN JERÓNIMO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05658', 'SAN JOSÉ DE LA MONTAÑA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05659', 'SAN JUAN DE URABÁ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05660', 'SAN LUIS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05664', 'SAN PEDRO DE LOS MILAGROS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05665', 'SAN PEDRO DE URABÁ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05667', 'SAN RAFAEL', '05');
INSERT INTO `parametricos_municipio` VALUES ('05670', 'SAN ROQUE', '05');
INSERT INTO `parametricos_municipio` VALUES ('05674', 'SAN VICENTE FERRER', '05');
INSERT INTO `parametricos_municipio` VALUES ('05679', 'SANTA BÁRBARA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05686', 'SANTA ROSA DE OSOS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05690', 'SANTO DOMINGO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05697', 'EL SANTUARIO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05736', 'SEGOVIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05756', 'SONSÓN', '05');
INSERT INTO `parametricos_municipio` VALUES ('05761', 'SOPETRÁN', '05');
INSERT INTO `parametricos_municipio` VALUES ('05789', 'TÁMESIS', '05');
INSERT INTO `parametricos_municipio` VALUES ('05790', 'TARAZÁ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05792', 'TARSO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05809', 'TITIRIBÍ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05819', 'TOLEDO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05837', 'TURBO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05842', 'URAMITA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05847', 'URRAO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05854', 'VALDIVIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05856', 'VALPARAÍSO', '05');
INSERT INTO `parametricos_municipio` VALUES ('05858', 'VEGACHÍ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05861', 'VENECIA', '05');
INSERT INTO `parametricos_municipio` VALUES ('05873', 'VIGÍA DEL FUERTE', '05');
INSERT INTO `parametricos_municipio` VALUES ('05885', 'YALÍ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05887', 'YARUMAL', '05');
INSERT INTO `parametricos_municipio` VALUES ('05890', 'YOLOMBÓ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05893', 'YONDÓ', '05');
INSERT INTO `parametricos_municipio` VALUES ('05895', 'ZARAGOZA', '05');
INSERT INTO `parametricos_municipio` VALUES ('08001', 'BARRANQUILLA', '08');
INSERT INTO `parametricos_municipio` VALUES ('08078', 'BARANOA', '08');
INSERT INTO `parametricos_municipio` VALUES ('08137', 'CAMPO DE LA CRUZ', '08');
INSERT INTO `parametricos_municipio` VALUES ('08141', 'CANDELARIA', '08');
INSERT INTO `parametricos_municipio` VALUES ('08296', 'GALAPA', '08');
INSERT INTO `parametricos_municipio` VALUES ('08372', 'JUAN DE ACOSTA', '08');
INSERT INTO `parametricos_municipio` VALUES ('08421', 'LURUACO', '08');
INSERT INTO `parametricos_municipio` VALUES ('08433', 'MALAMBO', '08');
INSERT INTO `parametricos_municipio` VALUES ('08436', 'MANATÍ', '08');
INSERT INTO `parametricos_municipio` VALUES ('08520', 'PALMAR DE VARELA', '08');
INSERT INTO `parametricos_municipio` VALUES ('08549', 'PIOJÓ', '08');
INSERT INTO `parametricos_municipio` VALUES ('08558', 'POLONUEVO', '08');
INSERT INTO `parametricos_municipio` VALUES ('08560', 'PONEDERA', '08');
INSERT INTO `parametricos_municipio` VALUES ('08573', 'PUERTO COLOMBIA', '08');
INSERT INTO `parametricos_municipio` VALUES ('08606', 'REPELÓN', '08');
INSERT INTO `parametricos_municipio` VALUES ('08634', 'SABANAGRANDE', '08');
INSERT INTO `parametricos_municipio` VALUES ('08638', 'SABANALARGA', '08');
INSERT INTO `parametricos_municipio` VALUES ('08675', 'SANTA LUCÍA', '08');
INSERT INTO `parametricos_municipio` VALUES ('08685', 'SANTO TOMÁS', '08');
INSERT INTO `parametricos_municipio` VALUES ('08758', 'SOLEDAD', '08');
INSERT INTO `parametricos_municipio` VALUES ('08770', 'SUAN', '08');
INSERT INTO `parametricos_municipio` VALUES ('08832', 'TUBARÁ', '08');
INSERT INTO `parametricos_municipio` VALUES ('08849', 'USIACURÍ', '08');
INSERT INTO `parametricos_municipio` VALUES ('11001', 'BOGOTÁ, D.C.', '11');
INSERT INTO `parametricos_municipio` VALUES ('13001', 'CARTAGENA DE INDIAS', '13');
INSERT INTO `parametricos_municipio` VALUES ('13006', 'ACHÍ', '13');
INSERT INTO `parametricos_municipio` VALUES ('13030', 'ALTOS DEL ROSARIO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13042', 'ARENAL', '13');
INSERT INTO `parametricos_municipio` VALUES ('13052', 'ARJONA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13062', 'ARROYOHONDO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13074', 'BARRANCO DE LOBA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13140', 'CALAMAR', '13');
INSERT INTO `parametricos_municipio` VALUES ('13160', 'CANTAGALLO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13188', 'CICUCO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13212', 'CÓRDOBA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13222', 'CLEMENCIA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13244', 'EL CARMEN DE BOLÍVAR', '13');
INSERT INTO `parametricos_municipio` VALUES ('13248', 'EL GUAMO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13268', 'EL PEÑÓN', '13');
INSERT INTO `parametricos_municipio` VALUES ('13300', 'HATILLO DE LOBA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13430', 'MAGANGUÉ', '13');
INSERT INTO `parametricos_municipio` VALUES ('13433', 'MAHATES', '13');
INSERT INTO `parametricos_municipio` VALUES ('13440', 'MARGARITA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13442', 'MARÍA LA BAJA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13458', 'MONTECRISTO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13468', 'MOMPÓS', '13');
INSERT INTO `parametricos_municipio` VALUES ('13473', 'MORALES', '13');
INSERT INTO `parametricos_municipio` VALUES ('13490', 'NOROSÍ', '13');
INSERT INTO `parametricos_municipio` VALUES ('13549', 'PINILLOS', '13');
INSERT INTO `parametricos_municipio` VALUES ('13580', 'REGIDOR', '13');
INSERT INTO `parametricos_municipio` VALUES ('13600', 'RÍO VIEJO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13620', 'SAN CRISTÓBAL', '13');
INSERT INTO `parametricos_municipio` VALUES ('13647', 'SAN ESTANISLAO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13650', 'SAN FERNANDO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13654', 'SAN JACINTO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13655', 'SAN JACINTO DEL CAUCA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13657', 'SAN JUAN NEPOMUCENO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13667', 'SAN MARTÍN DE LOBA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13670', 'SAN PABLO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13673', 'SANTA CATALINA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13683', 'SANTA ROSA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13688', 'SANTA ROSA DEL SUR', '13');
INSERT INTO `parametricos_municipio` VALUES ('13744', 'SIMITÍ', '13');
INSERT INTO `parametricos_municipio` VALUES ('13760', 'SOPLAVIENTO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13780', 'TALAIGUA NUEVO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13810', 'TIQUISIO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13836', 'TURBACO', '13');
INSERT INTO `parametricos_municipio` VALUES ('13838', 'TURBANÁ', '13');
INSERT INTO `parametricos_municipio` VALUES ('13873', 'VILLANUEVA', '13');
INSERT INTO `parametricos_municipio` VALUES ('13894', 'ZAMBRANO', '13');
INSERT INTO `parametricos_municipio` VALUES ('15001', 'TUNJA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15022', 'ALMEIDA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15047', 'AQUITANIA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15051', 'ARCABUCO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15087', 'BELÉN', '15');
INSERT INTO `parametricos_municipio` VALUES ('15090', 'BERBEO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15092', 'BETÉITIVA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15097', 'BOAVITA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15104', 'BOYACÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15106', 'BRICEÑO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15109', 'BUENAVISTA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15114', 'BUSBANZÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15131', 'CALDAS', '15');
INSERT INTO `parametricos_municipio` VALUES ('15135', 'CAMPOHERMOSO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15162', 'CERINZA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15172', 'CHINAVITA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15176', 'CHIQUINQUIRÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15180', 'CHISCAS', '15');
INSERT INTO `parametricos_municipio` VALUES ('15183', 'CHITA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15185', 'CHITARAQUE', '15');
INSERT INTO `parametricos_municipio` VALUES ('15187', 'CHIVATÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15189', 'CIÉNEGA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15204', 'CÓMBITA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15212', 'COPER', '15');
INSERT INTO `parametricos_municipio` VALUES ('15215', 'CORRALES', '15');
INSERT INTO `parametricos_municipio` VALUES ('15218', 'COVARACHÍA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15223', 'CUBARÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15224', 'CUCAITA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15226', 'CUÍTIVA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15232', 'CHÍQUIZA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15236', 'CHIVOR', '15');
INSERT INTO `parametricos_municipio` VALUES ('15238', 'DUITAMA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15244', 'EL COCUY', '15');
INSERT INTO `parametricos_municipio` VALUES ('15248', 'EL ESPINO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15272', 'FIRAVITOBA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15276', 'FLORESTA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15293', 'GACHANTIVÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15296', 'GÁMEZA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15299', 'GARAGOA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15317', 'GUACAMAYAS', '15');
INSERT INTO `parametricos_municipio` VALUES ('15322', 'GUATEQUE', '15');
INSERT INTO `parametricos_municipio` VALUES ('15325', 'GUAYATÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15332', 'GÜICÁN DE LA SIERRA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15362', 'IZA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15367', 'JENESANO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15368', 'JERICÓ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15377', 'LABRANZAGRANDE', '15');
INSERT INTO `parametricos_municipio` VALUES ('15380', 'LA CAPILLA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15401', 'LA VICTORIA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15403', 'LA UVITA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15407', 'VILLA DE LEYVA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15425', 'MACANAL', '15');
INSERT INTO `parametricos_municipio` VALUES ('15442', 'MARIPÍ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15455', 'MIRAFLORES', '15');
INSERT INTO `parametricos_municipio` VALUES ('15464', 'MONGUA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15466', 'MONGUÍ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15469', 'MONIQUIRÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15476', 'MOTAVITA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15480', 'MUZO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15491', 'NOBSA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15494', 'NUEVO COLÓN', '15');
INSERT INTO `parametricos_municipio` VALUES ('15500', 'OICATÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15507', 'OTANCHE', '15');
INSERT INTO `parametricos_municipio` VALUES ('15511', 'PACHAVITA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15514', 'PÁEZ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15516', 'PAIPA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15518', 'PAJARITO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15522', 'PANQUEBA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15531', 'PAUNA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15533', 'PAYA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15537', 'PAZ DE RÍO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15542', 'PESCA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15550', 'PISBA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15572', 'PUERTO BOYACÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15580', 'QUÍPAMA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15599', 'RAMIRIQUÍ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15600', 'RÁQUIRA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15621', 'RONDÓN', '15');
INSERT INTO `parametricos_municipio` VALUES ('15632', 'SABOYÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15638', 'SÁCHICA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15646', 'SAMACÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15660', 'SAN EDUARDO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15664', 'SAN JOSÉ DE PARE', '15');
INSERT INTO `parametricos_municipio` VALUES ('15667', 'SAN LUIS DE GACENO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15673', 'SAN MATEO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15676', 'SAN MIGUEL DE SEMA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15681', 'SAN PABLO DE BORBUR', '15');
INSERT INTO `parametricos_municipio` VALUES ('15686', 'SANTANA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15690', 'SANTA MARÍA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15693', 'SANTA ROSA DE VITERBO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15696', 'SANTA SOFÍA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15720', 'SATIVANORTE', '15');
INSERT INTO `parametricos_municipio` VALUES ('15723', 'SATIVASUR', '15');
INSERT INTO `parametricos_municipio` VALUES ('15740', 'SIACHOQUE', '15');
INSERT INTO `parametricos_municipio` VALUES ('15753', 'SOATÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15755', 'SOCOTÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15757', 'SOCHA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15759', 'SOGAMOSO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15761', 'SOMONDOCO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15762', 'SORA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15763', 'SOTAQUIRÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15764', 'SORACÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15774', 'SUSACÓN', '15');
INSERT INTO `parametricos_municipio` VALUES ('15776', 'SUTAMARCHÁN', '15');
INSERT INTO `parametricos_municipio` VALUES ('15778', 'SUTATENZA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15790', 'TASCO', '15');
INSERT INTO `parametricos_municipio` VALUES ('15798', 'TENZA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15804', 'TIBANÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15806', 'TIBASOSA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15808', 'TINJACÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15810', 'TIPACOQUE', '15');
INSERT INTO `parametricos_municipio` VALUES ('15814', 'TOCA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15816', 'TOGÜÍ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15820', 'TÓPAGA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15822', 'TOTA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15832', 'TUNUNGUÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15835', 'TURMEQUÉ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15837', 'TUTA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15839', 'TUTAZÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15842', 'ÚMBITA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15861', 'VENTAQUEMADA', '15');
INSERT INTO `parametricos_municipio` VALUES ('15879', 'VIRACACHÁ', '15');
INSERT INTO `parametricos_municipio` VALUES ('15897', 'ZETAQUIRA', '15');
INSERT INTO `parametricos_municipio` VALUES ('17001', 'MANIZALES', '17');
INSERT INTO `parametricos_municipio` VALUES ('17013', 'AGUADAS', '17');
INSERT INTO `parametricos_municipio` VALUES ('17042', 'ANSERMA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17050', 'ARANZAZU', '17');
INSERT INTO `parametricos_municipio` VALUES ('17088', 'BELALCÁZAR', '17');
INSERT INTO `parametricos_municipio` VALUES ('17174', 'CHINCHINÁ', '17');
INSERT INTO `parametricos_municipio` VALUES ('17272', 'FILADELFIA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17380', 'LA DORADA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17388', 'LA MERCED', '17');
INSERT INTO `parametricos_municipio` VALUES ('17433', 'MANZANARES', '17');
INSERT INTO `parametricos_municipio` VALUES ('17442', 'MARMATO', '17');
INSERT INTO `parametricos_municipio` VALUES ('17444', 'MARQUETALIA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17446', 'MARULANDA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17486', 'NEIRA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17495', 'NORCASIA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17513', 'PÁCORA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17524', 'PALESTINA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17541', 'PENSILVANIA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17614', 'RIOSUCIO', '17');
INSERT INTO `parametricos_municipio` VALUES ('17616', 'RISARALDA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17653', 'SALAMINA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17662', 'SAMANÁ', '17');
INSERT INTO `parametricos_municipio` VALUES ('17665', 'SAN JOSÉ', '17');
INSERT INTO `parametricos_municipio` VALUES ('17777', 'SUPÍA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17867', 'VICTORIA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17873', 'VILLAMARÍA', '17');
INSERT INTO `parametricos_municipio` VALUES ('17877', 'VITERBO', '17');
INSERT INTO `parametricos_municipio` VALUES ('18001', 'FLORENCIA', '18');
INSERT INTO `parametricos_municipio` VALUES ('18029', 'ALBANIA', '18');
INSERT INTO `parametricos_municipio` VALUES ('18094', 'BELÉN DE LOS ANDAQUÍES', '18');
INSERT INTO `parametricos_municipio` VALUES ('18150', 'CARTAGENA DEL CHAIRÁ', '18');
INSERT INTO `parametricos_municipio` VALUES ('18205', 'CURILLO', '18');
INSERT INTO `parametricos_municipio` VALUES ('18247', 'EL DONCELLO', '18');
INSERT INTO `parametricos_municipio` VALUES ('18256', 'EL PAUJÍL', '18');
INSERT INTO `parametricos_municipio` VALUES ('18410', 'LA MONTAÑITA', '18');
INSERT INTO `parametricos_municipio` VALUES ('18460', 'MILÁN', '18');
INSERT INTO `parametricos_municipio` VALUES ('18479', 'MORELIA', '18');
INSERT INTO `parametricos_municipio` VALUES ('18592', 'PUERTO RICO', '18');
INSERT INTO `parametricos_municipio` VALUES ('18610', 'SAN JOSÉ DEL FRAGUA', '18');
INSERT INTO `parametricos_municipio` VALUES ('18753', 'SAN VICENTE DEL CAGUÁN', '18');
INSERT INTO `parametricos_municipio` VALUES ('18756', 'SOLANO', '18');
INSERT INTO `parametricos_municipio` VALUES ('18785', 'SOLITA', '18');
INSERT INTO `parametricos_municipio` VALUES ('18860', 'VALPARAÍSO', '18');
INSERT INTO `parametricos_municipio` VALUES ('19001', 'POPAYÁN', '19');
INSERT INTO `parametricos_municipio` VALUES ('19022', 'ALMAGUER', '19');
INSERT INTO `parametricos_municipio` VALUES ('19050', 'ARGELIA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19075', 'BALBOA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19100', 'BOLÍVAR', '19');
INSERT INTO `parametricos_municipio` VALUES ('19110', 'BUENOS AIRES', '19');
INSERT INTO `parametricos_municipio` VALUES ('19130', 'CAJIBÍO', '19');
INSERT INTO `parametricos_municipio` VALUES ('19137', 'CALDONO', '19');
INSERT INTO `parametricos_municipio` VALUES ('19142', 'CALOTO', '19');
INSERT INTO `parametricos_municipio` VALUES ('19212', 'CORINTO', '19');
INSERT INTO `parametricos_municipio` VALUES ('19256', 'EL TAMBO', '19');
INSERT INTO `parametricos_municipio` VALUES ('19290', 'FLORENCIA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19300', 'GUACHENÉ', '19');
INSERT INTO `parametricos_municipio` VALUES ('19318', 'GUAPI', '19');
INSERT INTO `parametricos_municipio` VALUES ('19355', 'INZÁ', '19');
INSERT INTO `parametricos_municipio` VALUES ('19364', 'JAMBALÓ', '19');
INSERT INTO `parametricos_municipio` VALUES ('19392', 'LA SIERRA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19397', 'LA VEGA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19418', 'LÓPEZ DE MICAY', '19');
INSERT INTO `parametricos_municipio` VALUES ('19450', 'MERCADERES', '19');
INSERT INTO `parametricos_municipio` VALUES ('19455', 'MIRANDA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19473', 'MORALES', '19');
INSERT INTO `parametricos_municipio` VALUES ('19513', 'PADILLA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19517', 'PÁEZ', '19');
INSERT INTO `parametricos_municipio` VALUES ('19532', 'PATÍA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19533', 'PIAMONTE', '19');
INSERT INTO `parametricos_municipio` VALUES ('19548', 'PIENDAMÓ - TUNÍA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19573', 'PUERTO TEJADA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19585', 'PURACÉ', '19');
INSERT INTO `parametricos_municipio` VALUES ('19622', 'ROSAS', '19');
INSERT INTO `parametricos_municipio` VALUES ('19693', 'SAN SEBASTIÁN', '19');
INSERT INTO `parametricos_municipio` VALUES ('19698', 'SANTANDER DE QUILICHAO', '19');
INSERT INTO `parametricos_municipio` VALUES ('19701', 'SANTA ROSA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19743', 'SILVIA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19760', 'SOTARÁ PAISPAMBA', '19');
INSERT INTO `parametricos_municipio` VALUES ('19780', 'SUÁREZ', '19');
INSERT INTO `parametricos_municipio` VALUES ('19785', 'SUCRE', '19');
INSERT INTO `parametricos_municipio` VALUES ('19807', 'TIMBÍO', '19');
INSERT INTO `parametricos_municipio` VALUES ('19809', 'TIMBIQUÍ', '19');
INSERT INTO `parametricos_municipio` VALUES ('19821', 'TORIBÍO', '19');
INSERT INTO `parametricos_municipio` VALUES ('19824', 'TOTORÓ', '19');
INSERT INTO `parametricos_municipio` VALUES ('19845', 'VILLA RICA', '19');
INSERT INTO `parametricos_municipio` VALUES ('20001', 'VALLEDUPAR', '20');
INSERT INTO `parametricos_municipio` VALUES ('20011', 'AGUACHICA', '20');
INSERT INTO `parametricos_municipio` VALUES ('20013', 'AGUSTÍN CODAZZI', '20');
INSERT INTO `parametricos_municipio` VALUES ('20032', 'ASTREA', '20');
INSERT INTO `parametricos_municipio` VALUES ('20045', 'BECERRIL', '20');
INSERT INTO `parametricos_municipio` VALUES ('20060', 'BOSCONIA', '20');
INSERT INTO `parametricos_municipio` VALUES ('20175', 'CHIMICHAGUA', '20');
INSERT INTO `parametricos_municipio` VALUES ('20178', 'CHIRIGUANÁ', '20');
INSERT INTO `parametricos_municipio` VALUES ('20228', 'CURUMANÍ', '20');
INSERT INTO `parametricos_municipio` VALUES ('20238', 'EL COPEY', '20');
INSERT INTO `parametricos_municipio` VALUES ('20250', 'EL PASO', '20');
INSERT INTO `parametricos_municipio` VALUES ('20295', 'GAMARRA', '20');
INSERT INTO `parametricos_municipio` VALUES ('20310', 'GONZÁLEZ', '20');
INSERT INTO `parametricos_municipio` VALUES ('20383', 'LA GLORIA', '20');
INSERT INTO `parametricos_municipio` VALUES ('20400', 'LA JAGUA DE IBIRICO', '20');
INSERT INTO `parametricos_municipio` VALUES ('20443', 'MANAURE BALCÓN DEL CESAR', '20');
INSERT INTO `parametricos_municipio` VALUES ('20517', 'PAILITAS', '20');
INSERT INTO `parametricos_municipio` VALUES ('20550', 'PELAYA', '20');
INSERT INTO `parametricos_municipio` VALUES ('20570', 'PUEBLO BELLO', '20');
INSERT INTO `parametricos_municipio` VALUES ('20614', 'RÍO DE ORO', '20');
INSERT INTO `parametricos_municipio` VALUES ('20621', 'LA PAZ', '20');
INSERT INTO `parametricos_municipio` VALUES ('20710', 'SAN ALBERTO', '20');
INSERT INTO `parametricos_municipio` VALUES ('20750', 'SAN DIEGO', '20');
INSERT INTO `parametricos_municipio` VALUES ('20770', 'SAN MARTÍN', '20');
INSERT INTO `parametricos_municipio` VALUES ('20787', 'TAMALAMEQUE', '20');
INSERT INTO `parametricos_municipio` VALUES ('23001', 'MONTERÍA', '23');
INSERT INTO `parametricos_municipio` VALUES ('23068', 'AYAPEL', '23');
INSERT INTO `parametricos_municipio` VALUES ('23079', 'BUENAVISTA', '23');
INSERT INTO `parametricos_municipio` VALUES ('23090', 'CANALETE', '23');
INSERT INTO `parametricos_municipio` VALUES ('23162', 'CERETÉ', '23');
INSERT INTO `parametricos_municipio` VALUES ('23168', 'CHIMÁ', '23');
INSERT INTO `parametricos_municipio` VALUES ('23182', 'CHINÚ', '23');
INSERT INTO `parametricos_municipio` VALUES ('23189', 'CIÉNAGA DE ORO', '23');
INSERT INTO `parametricos_municipio` VALUES ('23300', 'COTORRA', '23');
INSERT INTO `parametricos_municipio` VALUES ('23350', 'LA APARTADA', '23');
INSERT INTO `parametricos_municipio` VALUES ('23417', 'LORICA', '23');
INSERT INTO `parametricos_municipio` VALUES ('23419', 'LOS CÓRDOBAS', '23');
INSERT INTO `parametricos_municipio` VALUES ('23464', 'MOMIL', '23');
INSERT INTO `parametricos_municipio` VALUES ('23466', 'MONTELÍBANO', '23');
INSERT INTO `parametricos_municipio` VALUES ('23500', 'MOÑITOS', '23');
INSERT INTO `parametricos_municipio` VALUES ('23555', 'PLANETA RICA', '23');
INSERT INTO `parametricos_municipio` VALUES ('23570', 'PUEBLO NUEVO', '23');
INSERT INTO `parametricos_municipio` VALUES ('23574', 'PUERTO ESCONDIDO', '23');
INSERT INTO `parametricos_municipio` VALUES ('23580', 'PUERTO LIBERTADOR', '23');
INSERT INTO `parametricos_municipio` VALUES ('23586', 'PURÍSIMA DE LA CONCEPCIÓN', '23');
INSERT INTO `parametricos_municipio` VALUES ('23660', 'SAHAGÚN', '23');
INSERT INTO `parametricos_municipio` VALUES ('23670', 'SAN ANDRÉS DE SOTAVENTO', '23');
INSERT INTO `parametricos_municipio` VALUES ('23672', 'SAN ANTERO', '23');
INSERT INTO `parametricos_municipio` VALUES ('23675', 'SAN BERNARDO DEL VIENTO', '23');
INSERT INTO `parametricos_municipio` VALUES ('23678', 'SAN CARLOS', '23');
INSERT INTO `parametricos_municipio` VALUES ('23682', 'SAN JOSÉ DE URÉ', '23');
INSERT INTO `parametricos_municipio` VALUES ('23686', 'SAN PELAYO', '23');
INSERT INTO `parametricos_municipio` VALUES ('23807', 'TIERRALTA', '23');
INSERT INTO `parametricos_municipio` VALUES ('23815', 'TUCHÍN', '23');
INSERT INTO `parametricos_municipio` VALUES ('23855', 'VALENCIA', '23');
INSERT INTO `parametricos_municipio` VALUES ('25001', 'AGUA DE DIOS', '25');
INSERT INTO `parametricos_municipio` VALUES ('25019', 'ALBÁN', '25');
INSERT INTO `parametricos_municipio` VALUES ('25035', 'ANAPOIMA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25040', 'ANOLAIMA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25053', 'ARBELÁEZ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25086', 'BELTRÁN', '25');
INSERT INTO `parametricos_municipio` VALUES ('25095', 'BITUIMA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25099', 'BOJACÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25120', 'CABRERA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25123', 'CACHIPAY', '25');
INSERT INTO `parametricos_municipio` VALUES ('25126', 'CAJICÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25148', 'CAPARRAPÍ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25151', 'CÁQUEZA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25154', 'CARMEN DE CARUPA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25168', 'CHAGUANÍ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25175', 'CHÍA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25178', 'CHIPAQUE', '25');
INSERT INTO `parametricos_municipio` VALUES ('25181', 'CHOACHÍ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25183', 'CHOCONTÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25200', 'COGUA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25214', 'COTA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25224', 'CUCUNUBÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25245', 'EL COLEGIO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25258', 'EL PEÑÓN', '25');
INSERT INTO `parametricos_municipio` VALUES ('25260', 'EL ROSAL', '25');
INSERT INTO `parametricos_municipio` VALUES ('25269', 'FACATATIVÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25279', 'FÓMEQUE', '25');
INSERT INTO `parametricos_municipio` VALUES ('25281', 'FOSCA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25286', 'FUNZA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25288', 'FÚQUENE', '25');
INSERT INTO `parametricos_municipio` VALUES ('25290', 'FUSAGASUGÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25293', 'GACHALÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25295', 'GACHANCIPÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25297', 'GACHETÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25299', 'GAMA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25307', 'GIRARDOT', '25');
INSERT INTO `parametricos_municipio` VALUES ('25312', 'GRANADA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25317', 'GUACHETÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25320', 'GUADUAS', '25');
INSERT INTO `parametricos_municipio` VALUES ('25322', 'GUASCA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25324', 'GUATAQUÍ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25326', 'GUATAVITA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25328', 'GUAYABAL DE SÍQUIMA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25335', 'GUAYABETAL', '25');
INSERT INTO `parametricos_municipio` VALUES ('25339', 'GUTIÉRREZ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25368', 'JERUSALÉN', '25');
INSERT INTO `parametricos_municipio` VALUES ('25372', 'JUNÍN', '25');
INSERT INTO `parametricos_municipio` VALUES ('25377', 'LA CALERA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25386', 'LA MESA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25394', 'LA PALMA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25398', 'LA PEÑA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25402', 'LA VEGA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25407', 'LENGUAZAQUE', '25');
INSERT INTO `parametricos_municipio` VALUES ('25426', 'MACHETÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25430', 'MADRID', '25');
INSERT INTO `parametricos_municipio` VALUES ('25436', 'MANTA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25438', 'MEDINA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25473', 'MOSQUERA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25483', 'NARIÑO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25486', 'NEMOCÓN', '25');
INSERT INTO `parametricos_municipio` VALUES ('25488', 'NILO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25489', 'NIMAIMA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25491', 'NOCAIMA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25506', 'VENECIA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25513', 'PACHO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25518', 'PAIME', '25');
INSERT INTO `parametricos_municipio` VALUES ('25524', 'PANDI', '25');
INSERT INTO `parametricos_municipio` VALUES ('25530', 'PARATEBUENO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25535', 'PASCA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25572', 'PUERTO SALGAR', '25');
INSERT INTO `parametricos_municipio` VALUES ('25580', 'PULÍ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25592', 'QUEBRADANEGRA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25594', 'QUETAME', '25');
INSERT INTO `parametricos_municipio` VALUES ('25596', 'QUIPILE', '25');
INSERT INTO `parametricos_municipio` VALUES ('25599', 'APULO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25612', 'RICAURTE', '25');
INSERT INTO `parametricos_municipio` VALUES ('25645', 'SAN ANTONIO DEL TEQUENDAMA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25649', 'SAN BERNARDO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25653', 'SAN CAYETANO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25658', 'SAN FRANCISCO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25662', 'SAN JUAN DE RIOSECO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25718', 'SASAIMA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25736', 'SESQUILÉ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25740', 'SIBATÉ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25743', 'SILVANIA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25745', 'SIMIJACA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25754', 'SOACHA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25758', 'SOPÓ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25769', 'SUBACHOQUE', '25');
INSERT INTO `parametricos_municipio` VALUES ('25772', 'SUESCA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25777', 'SUPATÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25779', 'SUSA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25781', 'SUTATAUSA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25785', 'TABIO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25793', 'TAUSA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25797', 'TENA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25799', 'TENJO', '25');
INSERT INTO `parametricos_municipio` VALUES ('25805', 'TIBACUY', '25');
INSERT INTO `parametricos_municipio` VALUES ('25807', 'TIBIRITA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25815', 'TOCAIMA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25817', 'TOCANCIPÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25823', 'TOPAIPÍ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25839', 'UBALÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25841', 'UBAQUE', '25');
INSERT INTO `parametricos_municipio` VALUES ('25843', 'VILLA DE SAN DIEGO DE UBATÉ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25845', 'UNE', '25');
INSERT INTO `parametricos_municipio` VALUES ('25851', 'ÚTICA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25862', 'VERGARA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25867', 'VIANÍ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25871', 'VILLAGÓMEZ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25873', 'VILLAPINZÓN', '25');
INSERT INTO `parametricos_municipio` VALUES ('25875', 'VILLETA', '25');
INSERT INTO `parametricos_municipio` VALUES ('25878', 'VIOTÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25885', 'YACOPÍ', '25');
INSERT INTO `parametricos_municipio` VALUES ('25898', 'ZIPACÓN', '25');
INSERT INTO `parametricos_municipio` VALUES ('25899', 'ZIPAQUIRÁ', '25');
INSERT INTO `parametricos_municipio` VALUES ('27001', 'QUIBDÓ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27006', 'ACANDÍ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27025', 'ALTO BAUDÓ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27050', 'ATRATO', '27');
INSERT INTO `parametricos_municipio` VALUES ('27073', 'BAGADÓ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27075', 'BAHÍA SOLANO', '27');
INSERT INTO `parametricos_municipio` VALUES ('27077', 'BAJO BAUDÓ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27099', 'BOJAYÁ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27135', 'EL CANTÓN DEL SAN PABLO', '27');
INSERT INTO `parametricos_municipio` VALUES ('27150', 'CARMEN DEL DARIÉN', '27');
INSERT INTO `parametricos_municipio` VALUES ('27160', 'CÉRTEGUI', '27');
INSERT INTO `parametricos_municipio` VALUES ('27205', 'CONDOTO', '27');
INSERT INTO `parametricos_municipio` VALUES ('27245', 'EL CARMEN DE ATRATO', '27');
INSERT INTO `parametricos_municipio` VALUES ('27250', 'EL LITORAL DEL SAN JUAN', '27');
INSERT INTO `parametricos_municipio` VALUES ('27361', 'ISTMINA', '27');
INSERT INTO `parametricos_municipio` VALUES ('27372', 'JURADÓ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27413', 'LLORÓ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27425', 'MEDIO ATRATO', '27');
INSERT INTO `parametricos_municipio` VALUES ('27430', 'MEDIO BAUDÓ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27450', 'MEDIO SAN JUAN', '27');
INSERT INTO `parametricos_municipio` VALUES ('27491', 'NÓVITA', '27');
INSERT INTO `parametricos_municipio` VALUES ('27495', 'NUQUÍ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27580', 'RÍO IRÓ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27600', 'RÍO QUITO', '27');
INSERT INTO `parametricos_municipio` VALUES ('27615', 'RIOSUCIO', '27');
INSERT INTO `parametricos_municipio` VALUES ('27660', 'SAN JOSÉ DEL PALMAR', '27');
INSERT INTO `parametricos_municipio` VALUES ('27745', 'SIPÍ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27787', 'TADÓ', '27');
INSERT INTO `parametricos_municipio` VALUES ('27800', 'UNGUÍA', '27');
INSERT INTO `parametricos_municipio` VALUES ('27810', 'UNIÓN PANAMERICANA', '27');
INSERT INTO `parametricos_municipio` VALUES ('41001', 'NEIVA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41006', 'ACEVEDO', '41');
INSERT INTO `parametricos_municipio` VALUES ('41013', 'AGRADO', '41');
INSERT INTO `parametricos_municipio` VALUES ('41016', 'AIPE', '41');
INSERT INTO `parametricos_municipio` VALUES ('41020', 'ALGECIRAS', '41');
INSERT INTO `parametricos_municipio` VALUES ('41026', 'ALTAMIRA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41078', 'BARAYA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41132', 'CAMPOALEGRE', '41');
INSERT INTO `parametricos_municipio` VALUES ('41206', 'COLOMBIA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41244', 'ELÍAS', '41');
INSERT INTO `parametricos_municipio` VALUES ('41298', 'GARZÓN', '41');
INSERT INTO `parametricos_municipio` VALUES ('41306', 'GIGANTE', '41');
INSERT INTO `parametricos_municipio` VALUES ('41319', 'GUADALUPE', '41');
INSERT INTO `parametricos_municipio` VALUES ('41349', 'HOBO', '41');
INSERT INTO `parametricos_municipio` VALUES ('41357', 'ÍQUIRA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41359', 'ISNOS', '41');
INSERT INTO `parametricos_municipio` VALUES ('41378', 'LA ARGENTINA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41396', 'LA PLATA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41483', 'NÁTAGA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41503', 'OPORAPA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41518', 'PAICOL', '41');
INSERT INTO `parametricos_municipio` VALUES ('41524', 'PALERMO', '41');
INSERT INTO `parametricos_municipio` VALUES ('41530', 'PALESTINA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41548', 'PITAL', '41');
INSERT INTO `parametricos_municipio` VALUES ('41551', 'PITALITO', '41');
INSERT INTO `parametricos_municipio` VALUES ('41615', 'RIVERA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41660', 'SALADOBLANCO', '41');
INSERT INTO `parametricos_municipio` VALUES ('41668', 'SAN AGUSTÍN', '41');
INSERT INTO `parametricos_municipio` VALUES ('41676', 'SANTA MARÍA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41770', 'SUAZA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41791', 'TARQUI', '41');
INSERT INTO `parametricos_municipio` VALUES ('41797', 'TESALIA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41799', 'TELLO', '41');
INSERT INTO `parametricos_municipio` VALUES ('41801', 'TERUEL', '41');
INSERT INTO `parametricos_municipio` VALUES ('41807', 'TIMANÁ', '41');
INSERT INTO `parametricos_municipio` VALUES ('41872', 'VILLAVIEJA', '41');
INSERT INTO `parametricos_municipio` VALUES ('41885', 'YAGUARÁ', '41');
INSERT INTO `parametricos_municipio` VALUES ('44001', 'RIOHACHA', '44');
INSERT INTO `parametricos_municipio` VALUES ('44035', 'ALBANIA', '44');
INSERT INTO `parametricos_municipio` VALUES ('44078', 'BARRANCAS', '44');
INSERT INTO `parametricos_municipio` VALUES ('44090', 'DIBULLA', '44');
INSERT INTO `parametricos_municipio` VALUES ('44098', 'DISTRACCIÓN', '44');
INSERT INTO `parametricos_municipio` VALUES ('44110', 'EL MOLINO', '44');
INSERT INTO `parametricos_municipio` VALUES ('44279', 'FONSECA', '44');
INSERT INTO `parametricos_municipio` VALUES ('44378', 'HATONUEVO', '44');
INSERT INTO `parametricos_municipio` VALUES ('44420', 'LA JAGUA DEL PILAR', '44');
INSERT INTO `parametricos_municipio` VALUES ('44430', 'MAICAO', '44');
INSERT INTO `parametricos_municipio` VALUES ('44560', 'MANAURE', '44');
INSERT INTO `parametricos_municipio` VALUES ('44650', 'SAN JUAN DEL CESAR', '44');
INSERT INTO `parametricos_municipio` VALUES ('44847', 'URIBIA', '44');
INSERT INTO `parametricos_municipio` VALUES ('44855', 'URUMITA', '44');
INSERT INTO `parametricos_municipio` VALUES ('44874', 'VILLANUEVA', '44');
INSERT INTO `parametricos_municipio` VALUES ('47001', 'SANTA MARTA', '47');
INSERT INTO `parametricos_municipio` VALUES ('47030', 'ALGARROBO', '47');
INSERT INTO `parametricos_municipio` VALUES ('47053', 'ARACATACA', '47');
INSERT INTO `parametricos_municipio` VALUES ('47058', 'ARIGUANÍ', '47');
INSERT INTO `parametricos_municipio` VALUES ('47161', 'CERRO DE SAN ANTONIO', '47');
INSERT INTO `parametricos_municipio` VALUES ('47170', 'CHIVOLO', '47');
INSERT INTO `parametricos_municipio` VALUES ('47189', 'CIÉNAGA', '47');
INSERT INTO `parametricos_municipio` VALUES ('47205', 'CONCORDIA', '47');
INSERT INTO `parametricos_municipio` VALUES ('47245', 'EL BANCO', '47');
INSERT INTO `parametricos_municipio` VALUES ('47258', 'EL PIÑÓN', '47');
INSERT INTO `parametricos_municipio` VALUES ('47268', 'EL RETÉN', '47');
INSERT INTO `parametricos_municipio` VALUES ('47288', 'FUNDACIÓN', '47');
INSERT INTO `parametricos_municipio` VALUES ('47318', 'GUAMAL', '47');
INSERT INTO `parametricos_municipio` VALUES ('47460', 'NUEVA GRANADA', '47');
INSERT INTO `parametricos_municipio` VALUES ('47541', 'PEDRAZA', '47');
INSERT INTO `parametricos_municipio` VALUES ('47545', 'PIJIÑO DEL CARMEN', '47');
INSERT INTO `parametricos_municipio` VALUES ('47551', 'PIVIJAY', '47');
INSERT INTO `parametricos_municipio` VALUES ('47555', 'PLATO', '47');
INSERT INTO `parametricos_municipio` VALUES ('47570', 'PUEBLOVIEJO', '47');
INSERT INTO `parametricos_municipio` VALUES ('47605', 'REMOLINO', '47');
INSERT INTO `parametricos_municipio` VALUES ('47660', 'SABANAS DE SAN ÁNGEL', '47');
INSERT INTO `parametricos_municipio` VALUES ('47675', 'SALAMINA', '47');
INSERT INTO `parametricos_municipio` VALUES ('47692', 'SAN SEBASTIÁN DE BUENAVISTA', '47');
INSERT INTO `parametricos_municipio` VALUES ('47703', 'SAN ZENÓN', '47');
INSERT INTO `parametricos_municipio` VALUES ('47707', 'SANTA ANA', '47');
INSERT INTO `parametricos_municipio` VALUES ('47720', 'SANTA BÁRBARA DE PINTO', '47');
INSERT INTO `parametricos_municipio` VALUES ('47745', 'SITIONUEVO', '47');
INSERT INTO `parametricos_municipio` VALUES ('47798', 'TENERIFE', '47');
INSERT INTO `parametricos_municipio` VALUES ('47960', 'ZAPAYÁN', '47');
INSERT INTO `parametricos_municipio` VALUES ('47980', 'ZONA BANANERA', '47');
INSERT INTO `parametricos_municipio` VALUES ('50001', 'VILLAVICENCIO', '50');
INSERT INTO `parametricos_municipio` VALUES ('50006', 'ACACÍAS', '50');
INSERT INTO `parametricos_municipio` VALUES ('50110', 'BARRANCA DE UPÍA', '50');
INSERT INTO `parametricos_municipio` VALUES ('50124', 'CABUYARO', '50');
INSERT INTO `parametricos_municipio` VALUES ('50150', 'CASTILLA LA NUEVA', '50');
INSERT INTO `parametricos_municipio` VALUES ('50223', 'CUBARRAL', '50');
INSERT INTO `parametricos_municipio` VALUES ('50226', 'CUMARAL', '50');
INSERT INTO `parametricos_municipio` VALUES ('50245', 'EL CALVARIO', '50');
INSERT INTO `parametricos_municipio` VALUES ('50251', 'EL CASTILLO', '50');
INSERT INTO `parametricos_municipio` VALUES ('50270', 'EL DORADO', '50');
INSERT INTO `parametricos_municipio` VALUES ('50287', 'FUENTE DE ORO', '50');
INSERT INTO `parametricos_municipio` VALUES ('50313', 'GRANADA', '50');
INSERT INTO `parametricos_municipio` VALUES ('50318', 'GUAMAL', '50');
INSERT INTO `parametricos_municipio` VALUES ('50325', 'MAPIRIPÁN', '50');
INSERT INTO `parametricos_municipio` VALUES ('50330', 'MESETAS', '50');
INSERT INTO `parametricos_municipio` VALUES ('50350', 'LA MACARENA', '50');
INSERT INTO `parametricos_municipio` VALUES ('50370', 'URIBE', '50');
INSERT INTO `parametricos_municipio` VALUES ('50400', 'LEJANÍAS', '50');
INSERT INTO `parametricos_municipio` VALUES ('50450', 'PUERTO CONCORDIA', '50');
INSERT INTO `parametricos_municipio` VALUES ('50568', 'PUERTO GAITÁN', '50');
INSERT INTO `parametricos_municipio` VALUES ('50573', 'PUERTO LÓPEZ', '50');
INSERT INTO `parametricos_municipio` VALUES ('50577', 'PUERTO LLERAS', '50');
INSERT INTO `parametricos_municipio` VALUES ('50590', 'PUERTO RICO', '50');
INSERT INTO `parametricos_municipio` VALUES ('50606', 'RESTREPO', '50');
INSERT INTO `parametricos_municipio` VALUES ('50680', 'SAN CARLOS DE GUAROA', '50');
INSERT INTO `parametricos_municipio` VALUES ('50683', 'SAN JUAN DE ARAMA', '50');
INSERT INTO `parametricos_municipio` VALUES ('50686', 'SAN JUANITO', '50');
INSERT INTO `parametricos_municipio` VALUES ('50689', 'SAN MARTÍN', '50');
INSERT INTO `parametricos_municipio` VALUES ('50711', 'VISTAHERMOSA', '50');
INSERT INTO `parametricos_municipio` VALUES ('52001', 'PASTO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52019', 'ALBÁN', '52');
INSERT INTO `parametricos_municipio` VALUES ('52022', 'ALDANA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52036', 'ANCUYA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52051', 'ARBOLEDA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52079', 'BARBACOAS', '52');
INSERT INTO `parametricos_municipio` VALUES ('52083', 'BELÉN', '52');
INSERT INTO `parametricos_municipio` VALUES ('52110', 'BUESACO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52203', 'COLÓN', '52');
INSERT INTO `parametricos_municipio` VALUES ('52207', 'CONSACÁ', '52');
INSERT INTO `parametricos_municipio` VALUES ('52210', 'CONTADERO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52215', 'CÓRDOBA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52224', 'CUASPUD CARLOSAMA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52227', 'CUMBAL', '52');
INSERT INTO `parametricos_municipio` VALUES ('52233', 'CUMBITARA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52240', 'CHACHAGÜÍ', '52');
INSERT INTO `parametricos_municipio` VALUES ('52250', 'EL CHARCO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52254', 'EL PEÑOL', '52');
INSERT INTO `parametricos_municipio` VALUES ('52256', 'EL ROSARIO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52258', 'EL TABLÓN DE GÓMEZ', '52');
INSERT INTO `parametricos_municipio` VALUES ('52260', 'EL TAMBO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52287', 'FUNES', '52');
INSERT INTO `parametricos_municipio` VALUES ('52317', 'GUACHUCAL', '52');
INSERT INTO `parametricos_municipio` VALUES ('52320', 'GUAITARILLA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52323', 'GUALMATÁN', '52');
INSERT INTO `parametricos_municipio` VALUES ('52352', 'ILES', '52');
INSERT INTO `parametricos_municipio` VALUES ('52354', 'IMUÉS', '52');
INSERT INTO `parametricos_municipio` VALUES ('52356', 'IPIALES', '52');
INSERT INTO `parametricos_municipio` VALUES ('52378', 'LA CRUZ', '52');
INSERT INTO `parametricos_municipio` VALUES ('52381', 'LA FLORIDA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52385', 'LA LLANADA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52390', 'LA TOLA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52399', 'LA UNIÓN', '52');
INSERT INTO `parametricos_municipio` VALUES ('52405', 'LEIVA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52411', 'LINARES', '52');
INSERT INTO `parametricos_municipio` VALUES ('52418', 'LOS ANDES', '52');
INSERT INTO `parametricos_municipio` VALUES ('52427', 'MAGÜÍ', '52');
INSERT INTO `parametricos_municipio` VALUES ('52435', 'MALLAMA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52473', 'MOSQUERA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52480', 'NARIÑO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52490', 'OLAYA HERRERA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52506', 'OSPINA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52520', 'FRANCISCO PIZARRO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52540', 'POLICARPA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52560', 'POTOSÍ', '52');
INSERT INTO `parametricos_municipio` VALUES ('52565', 'PROVIDENCIA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52573', 'PUERRES', '52');
INSERT INTO `parametricos_municipio` VALUES ('52585', 'PUPIALES', '52');
INSERT INTO `parametricos_municipio` VALUES ('52612', 'RICAURTE', '52');
INSERT INTO `parametricos_municipio` VALUES ('52621', 'ROBERTO PAYÁN', '52');
INSERT INTO `parametricos_municipio` VALUES ('52678', 'SAMANIEGO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52683', 'SANDONÁ', '52');
INSERT INTO `parametricos_municipio` VALUES ('52685', 'SAN BERNARDO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52687', 'SAN LORENZO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52693', 'SAN PABLO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52694', 'SAN PEDRO DE CARTAGO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52696', 'SANTA BÁRBARA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52699', 'SANTACRUZ', '52');
INSERT INTO `parametricos_municipio` VALUES ('52720', 'SAPUYES', '52');
INSERT INTO `parametricos_municipio` VALUES ('52786', 'TAMINANGO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52788', 'TANGUA', '52');
INSERT INTO `parametricos_municipio` VALUES ('52835', 'SAN ANDRÉS DE TUMACO', '52');
INSERT INTO `parametricos_municipio` VALUES ('52838', 'TÚQUERRES', '52');
INSERT INTO `parametricos_municipio` VALUES ('52885', 'YACUANQUER', '52');
INSERT INTO `parametricos_municipio` VALUES ('54001', 'SAN JOSÉ DE CÚCUTA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54003', 'ÁBREGO', '54');
INSERT INTO `parametricos_municipio` VALUES ('54051', 'ARBOLEDAS', '54');
INSERT INTO `parametricos_municipio` VALUES ('54099', 'BOCHALEMA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54109', 'BUCARASICA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54125', 'CÁCOTA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54128', 'CÁCHIRA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54172', 'CHINÁCOTA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54174', 'CHITAGÁ', '54');
INSERT INTO `parametricos_municipio` VALUES ('54206', 'CONVENCIÓN', '54');
INSERT INTO `parametricos_municipio` VALUES ('54223', 'CUCUTILLA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54239', 'DURANIA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54245', 'EL CARMEN', '54');
INSERT INTO `parametricos_municipio` VALUES ('54250', 'EL TARRA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54261', 'EL ZULIA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54313', 'GRAMALOTE', '54');
INSERT INTO `parametricos_municipio` VALUES ('54344', 'HACARÍ', '54');
INSERT INTO `parametricos_municipio` VALUES ('54347', 'HERRÁN', '54');
INSERT INTO `parametricos_municipio` VALUES ('54377', 'LABATECA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54385', 'LA ESPERANZA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54398', 'LA PLAYA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54405', 'LOS PATIOS', '54');
INSERT INTO `parametricos_municipio` VALUES ('54418', 'LOURDES', '54');
INSERT INTO `parametricos_municipio` VALUES ('54480', 'MUTISCUA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54498', 'OCAÑA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54518', 'PAMPLONA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54520', 'PAMPLONITA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54553', 'PUERTO SANTANDER', '54');
INSERT INTO `parametricos_municipio` VALUES ('54599', 'RAGONVALIA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54660', 'SALAZAR', '54');
INSERT INTO `parametricos_municipio` VALUES ('54670', 'SAN CALIXTO', '54');
INSERT INTO `parametricos_municipio` VALUES ('54673', 'SAN CAYETANO', '54');
INSERT INTO `parametricos_municipio` VALUES ('54680', 'SANTIAGO', '54');
INSERT INTO `parametricos_municipio` VALUES ('54720', 'SARDINATA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54743', 'SILOS', '54');
INSERT INTO `parametricos_municipio` VALUES ('54800', 'TEORAMA', '54');
INSERT INTO `parametricos_municipio` VALUES ('54810', 'TIBÚ', '54');
INSERT INTO `parametricos_municipio` VALUES ('54820', 'TOLEDO', '54');
INSERT INTO `parametricos_municipio` VALUES ('54871', 'VILLA CARO', '54');
INSERT INTO `parametricos_municipio` VALUES ('54874', 'VILLA DEL ROSARIO', '54');
INSERT INTO `parametricos_municipio` VALUES ('63001', 'ARMENIA', '63');
INSERT INTO `parametricos_municipio` VALUES ('63111', 'BUENAVISTA', '63');
INSERT INTO `parametricos_municipio` VALUES ('63130', 'CALARCÁ', '63');
INSERT INTO `parametricos_municipio` VALUES ('63190', 'CIRCASIA', '63');
INSERT INTO `parametricos_municipio` VALUES ('63212', 'CÓRDOBA', '63');
INSERT INTO `parametricos_municipio` VALUES ('63272', 'FILANDIA', '63');
INSERT INTO `parametricos_municipio` VALUES ('63302', 'GÉNOVA', '63');
INSERT INTO `parametricos_municipio` VALUES ('63401', 'LA TEBAIDA', '63');
INSERT INTO `parametricos_municipio` VALUES ('63470', 'MONTENEGRO', '63');
INSERT INTO `parametricos_municipio` VALUES ('63548', 'PIJAO', '63');
INSERT INTO `parametricos_municipio` VALUES ('63594', 'QUIMBAYA', '63');
INSERT INTO `parametricos_municipio` VALUES ('63690', 'SALENTO', '63');
INSERT INTO `parametricos_municipio` VALUES ('66001', 'PEREIRA', '66');
INSERT INTO `parametricos_municipio` VALUES ('66045', 'APÍA', '66');
INSERT INTO `parametricos_municipio` VALUES ('66075', 'BALBOA', '66');
INSERT INTO `parametricos_municipio` VALUES ('66088', 'BELÉN DE UMBRÍA', '66');
INSERT INTO `parametricos_municipio` VALUES ('66170', 'DOSQUEBRADAS', '66');
INSERT INTO `parametricos_municipio` VALUES ('66318', 'GUÁTICA', '66');
INSERT INTO `parametricos_municipio` VALUES ('66383', 'LA CELIA', '66');
INSERT INTO `parametricos_municipio` VALUES ('66400', 'LA VIRGINIA', '66');
INSERT INTO `parametricos_municipio` VALUES ('66440', 'MARSELLA', '66');
INSERT INTO `parametricos_municipio` VALUES ('66456', 'MISTRATÓ', '66');
INSERT INTO `parametricos_municipio` VALUES ('66572', 'PUEBLO RICO', '66');
INSERT INTO `parametricos_municipio` VALUES ('66594', 'QUINCHÍA', '66');
INSERT INTO `parametricos_municipio` VALUES ('66682', 'SANTA ROSA DE CABAL', '66');
INSERT INTO `parametricos_municipio` VALUES ('66687', 'SANTUARIO', '66');
INSERT INTO `parametricos_municipio` VALUES ('68001', 'BUCARAMANGA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68013', 'AGUADA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68020', 'ALBANIA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68051', 'ARATOCA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68077', 'BARBOSA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68079', 'BARICHARA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68081', 'BARRANCABERMEJA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68092', 'BETULIA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68101', 'BOLÍVAR', '68');
INSERT INTO `parametricos_municipio` VALUES ('68121', 'CABRERA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68132', 'CALIFORNIA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68147', 'CAPITANEJO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68152', 'CARCASÍ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68160', 'CEPITÁ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68162', 'CERRITO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68167', 'CHARALÁ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68169', 'CHARTA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68176', 'CHIMA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68179', 'CHIPATÁ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68190', 'CIMITARRA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68207', 'CONCEPCIÓN', '68');
INSERT INTO `parametricos_municipio` VALUES ('68209', 'CONFINES', '68');
INSERT INTO `parametricos_municipio` VALUES ('68211', 'CONTRATACIÓN', '68');
INSERT INTO `parametricos_municipio` VALUES ('68217', 'COROMORO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68229', 'CURITÍ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68235', 'EL CARMEN DE CHUCURI', '68');
INSERT INTO `parametricos_municipio` VALUES ('68245', 'EL GUACAMAYO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68250', 'EL PEÑÓN', '68');
INSERT INTO `parametricos_municipio` VALUES ('68255', 'EL PLAYÓN', '68');
INSERT INTO `parametricos_municipio` VALUES ('68264', 'ENCINO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68266', 'ENCISO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68271', 'FLORIÁN', '68');
INSERT INTO `parametricos_municipio` VALUES ('68276', 'FLORIDABLANCA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68296', 'GALÁN', '68');
INSERT INTO `parametricos_municipio` VALUES ('68298', 'GÁMBITA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68307', 'GIRÓN', '68');
INSERT INTO `parametricos_municipio` VALUES ('68318', 'GUACA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68320', 'GUADALUPE', '68');
INSERT INTO `parametricos_municipio` VALUES ('68322', 'GUAPOTÁ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68324', 'GUAVATÁ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68327', 'GÜEPSA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68344', 'HATO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68368', 'JESÚS MARÍA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68370', 'JORDÁN', '68');
INSERT INTO `parametricos_municipio` VALUES ('68377', 'LA BELLEZA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68385', 'LANDÁZURI', '68');
INSERT INTO `parametricos_municipio` VALUES ('68397', 'LA PAZ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68406', 'LEBRIJA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68418', 'LOS SANTOS', '68');
INSERT INTO `parametricos_municipio` VALUES ('68425', 'MACARAVITA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68432', 'MÁLAGA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68444', 'MATANZA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68464', 'MOGOTES', '68');
INSERT INTO `parametricos_municipio` VALUES ('68468', 'MOLAGAVITA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68498', 'OCAMONTE', '68');
INSERT INTO `parametricos_municipio` VALUES ('68500', 'OIBA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68502', 'ONZAGA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68522', 'PALMAR', '68');
INSERT INTO `parametricos_municipio` VALUES ('68524', 'PALMAS DEL SOCORRO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68533', 'PÁRAMO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68547', 'PIEDECUESTA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68549', 'PINCHOTE', '68');
INSERT INTO `parametricos_municipio` VALUES ('68572', 'PUENTE NACIONAL', '68');
INSERT INTO `parametricos_municipio` VALUES ('68573', 'PUERTO PARRA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68575', 'PUERTO WILCHES', '68');
INSERT INTO `parametricos_municipio` VALUES ('68615', 'RIONEGRO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68655', 'SABANA DE TORRES', '68');
INSERT INTO `parametricos_municipio` VALUES ('68669', 'SAN ANDRÉS', '68');
INSERT INTO `parametricos_municipio` VALUES ('68673', 'SAN BENITO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68679', 'SAN GIL', '68');
INSERT INTO `parametricos_municipio` VALUES ('68682', 'SAN JOAQUÍN', '68');
INSERT INTO `parametricos_municipio` VALUES ('68684', 'SAN JOSÉ DE MIRANDA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68686', 'SAN MIGUEL', '68');
INSERT INTO `parametricos_municipio` VALUES ('68689', 'SAN VICENTE DE CHUCURÍ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68705', 'SANTA BÁRBARA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68720', 'SANTA HELENA DEL OPÓN', '68');
INSERT INTO `parametricos_municipio` VALUES ('68745', 'SIMACOTA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68755', 'SOCORRO', '68');
INSERT INTO `parametricos_municipio` VALUES ('68770', 'SUAITA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68773', 'SUCRE', '68');
INSERT INTO `parametricos_municipio` VALUES ('68780', 'SURATÁ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68820', 'TONA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68855', 'VALLE DE SAN JOSÉ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68861', 'VÉLEZ', '68');
INSERT INTO `parametricos_municipio` VALUES ('68867', 'VETAS', '68');
INSERT INTO `parametricos_municipio` VALUES ('68872', 'VILLANUEVA', '68');
INSERT INTO `parametricos_municipio` VALUES ('68895', 'ZAPATOCA', '68');
INSERT INTO `parametricos_municipio` VALUES ('70001', 'SINCELEJO', '70');
INSERT INTO `parametricos_municipio` VALUES ('70110', 'BUENAVISTA', '70');
INSERT INTO `parametricos_municipio` VALUES ('70124', 'CAIMITO', '70');
INSERT INTO `parametricos_municipio` VALUES ('70204', 'COLOSÓ', '70');
INSERT INTO `parametricos_municipio` VALUES ('70215', 'COROZAL', '70');
INSERT INTO `parametricos_municipio` VALUES ('70221', 'COVEÑAS', '70');
INSERT INTO `parametricos_municipio` VALUES ('70230', 'CHALÁN', '70');
INSERT INTO `parametricos_municipio` VALUES ('70233', 'EL ROBLE', '70');
INSERT INTO `parametricos_municipio` VALUES ('70235', 'GALERAS', '70');
INSERT INTO `parametricos_municipio` VALUES ('70265', 'GUARANDA', '70');
INSERT INTO `parametricos_municipio` VALUES ('70400', 'LA UNIÓN', '70');
INSERT INTO `parametricos_municipio` VALUES ('70418', 'LOS PALMITOS', '70');
INSERT INTO `parametricos_municipio` VALUES ('70429', 'MAJAGUAL', '70');
INSERT INTO `parametricos_municipio` VALUES ('70473', 'MORROA', '70');
INSERT INTO `parametricos_municipio` VALUES ('70508', 'OVEJAS', '70');
INSERT INTO `parametricos_municipio` VALUES ('70523', 'PALMITO', '70');
INSERT INTO `parametricos_municipio` VALUES ('70670', 'SAMPUÉS', '70');
INSERT INTO `parametricos_municipio` VALUES ('70678', 'SAN BENITO ABAD', '70');
INSERT INTO `parametricos_municipio` VALUES ('70702', 'SAN JUAN DE BETULIA', '70');
INSERT INTO `parametricos_municipio` VALUES ('70708', 'SAN MARCOS', '70');
INSERT INTO `parametricos_municipio` VALUES ('70713', 'SAN ONOFRE', '70');
INSERT INTO `parametricos_municipio` VALUES ('70717', 'SAN PEDRO', '70');
INSERT INTO `parametricos_municipio` VALUES ('70742', 'SAN LUIS DE SINCÉ', '70');
INSERT INTO `parametricos_municipio` VALUES ('70771', 'SUCRE', '70');
INSERT INTO `parametricos_municipio` VALUES ('70820', 'SANTIAGO DE TOLÚ', '70');
INSERT INTO `parametricos_municipio` VALUES ('70823', 'SAN JOSÉ DE TOLUVIEJO', '70');
INSERT INTO `parametricos_municipio` VALUES ('73001', 'IBAGUÉ', '73');
INSERT INTO `parametricos_municipio` VALUES ('73024', 'ALPUJARRA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73026', 'ALVARADO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73030', 'AMBALEMA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73043', 'ANZOÁTEGUI', '73');
INSERT INTO `parametricos_municipio` VALUES ('73055', 'ARMERO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73067', 'ATACO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73124', 'CAJAMARCA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73148', 'CARMEN DE APICALÁ', '73');
INSERT INTO `parametricos_municipio` VALUES ('73152', 'CASABIANCA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73168', 'CHAPARRAL', '73');
INSERT INTO `parametricos_municipio` VALUES ('73200', 'COELLO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73217', 'COYAIMA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73226', 'CUNDAY', '73');
INSERT INTO `parametricos_municipio` VALUES ('73236', 'DOLORES', '73');
INSERT INTO `parametricos_municipio` VALUES ('73268', 'ESPINAL', '73');
INSERT INTO `parametricos_municipio` VALUES ('73270', 'FALAN', '73');
INSERT INTO `parametricos_municipio` VALUES ('73275', 'FLANDES', '73');
INSERT INTO `parametricos_municipio` VALUES ('73283', 'FRESNO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73319', 'GUAMO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73347', 'HERVEO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73349', 'HONDA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73352', 'ICONONZO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73408', 'LÉRIDA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73411', 'LÍBANO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73443', 'SAN SEBASTIÁN DE MARIQUITA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73449', 'MELGAR', '73');
INSERT INTO `parametricos_municipio` VALUES ('73461', 'MURILLO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73483', 'NATAGAIMA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73504', 'ORTEGA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73520', 'PALOCABILDO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73547', 'PIEDRAS', '73');
INSERT INTO `parametricos_municipio` VALUES ('73555', 'PLANADAS', '73');
INSERT INTO `parametricos_municipio` VALUES ('73563', 'PRADO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73585', 'PURIFICACIÓN', '73');
INSERT INTO `parametricos_municipio` VALUES ('73616', 'RIOBLANCO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73622', 'RONCESVALLES', '73');
INSERT INTO `parametricos_municipio` VALUES ('73624', 'ROVIRA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73671', 'SALDAÑA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73675', 'SAN ANTONIO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73678', 'SAN LUIS', '73');
INSERT INTO `parametricos_municipio` VALUES ('73686', 'SANTA ISABEL', '73');
INSERT INTO `parametricos_municipio` VALUES ('73770', 'SUÁREZ', '73');
INSERT INTO `parametricos_municipio` VALUES ('73854', 'VALLE DE SAN JUAN', '73');
INSERT INTO `parametricos_municipio` VALUES ('73861', 'VENADILLO', '73');
INSERT INTO `parametricos_municipio` VALUES ('73870', 'VILLAHERMOSA', '73');
INSERT INTO `parametricos_municipio` VALUES ('73873', 'VILLARRICA', '73');
INSERT INTO `parametricos_municipio` VALUES ('76001', 'CALI', '76');
INSERT INTO `parametricos_municipio` VALUES ('76020', 'ALCALÁ', '76');
INSERT INTO `parametricos_municipio` VALUES ('76036', 'ANDALUCÍA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76041', 'ANSERMANUEVO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76054', 'ARGELIA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76100', 'BOLÍVAR', '76');
INSERT INTO `parametricos_municipio` VALUES ('76109', 'BUENAVENTURA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76111', 'GUADALAJARA DE BUGA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76113', 'BUGALAGRANDE', '76');
INSERT INTO `parametricos_municipio` VALUES ('76122', 'CAICEDONIA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76126', 'CALIMA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76130', 'CANDELARIA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76147', 'CARTAGO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76233', 'DAGUA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76243', 'EL ÁGUILA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76246', 'EL CAIRO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76248', 'EL CERRITO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76250', 'EL DOVIO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76275', 'FLORIDA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76306', 'GINEBRA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76318', 'GUACARÍ', '76');
INSERT INTO `parametricos_municipio` VALUES ('76364', 'JAMUNDÍ', '76');
INSERT INTO `parametricos_municipio` VALUES ('76377', 'LA CUMBRE', '76');
INSERT INTO `parametricos_municipio` VALUES ('76400', 'LA UNIÓN', '76');
INSERT INTO `parametricos_municipio` VALUES ('76403', 'LA VICTORIA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76497', 'OBANDO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76520', 'PALMIRA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76563', 'PRADERA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76606', 'RESTREPO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76616', 'RIOFRÍO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76622', 'ROLDANILLO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76670', 'SAN PEDRO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76736', 'SEVILLA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76823', 'TORO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76828', 'TRUJILLO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76834', 'TULUÁ', '76');
INSERT INTO `parametricos_municipio` VALUES ('76845', 'ULLOA', '76');
INSERT INTO `parametricos_municipio` VALUES ('76863', 'VERSALLES', '76');
INSERT INTO `parametricos_municipio` VALUES ('76869', 'VIJES', '76');
INSERT INTO `parametricos_municipio` VALUES ('76890', 'YOTOCO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76892', 'YUMBO', '76');
INSERT INTO `parametricos_municipio` VALUES ('76895', 'ZARZAL', '76');
INSERT INTO `parametricos_municipio` VALUES ('81001', 'ARAUCA', '81');
INSERT INTO `parametricos_municipio` VALUES ('81065', 'ARAUQUITA', '81');
INSERT INTO `parametricos_municipio` VALUES ('81220', 'CRAVO NORTE', '81');
INSERT INTO `parametricos_municipio` VALUES ('81300', 'FORTUL', '81');
INSERT INTO `parametricos_municipio` VALUES ('81591', 'PUERTO RONDÓN', '81');
INSERT INTO `parametricos_municipio` VALUES ('81736', 'SARAVENA', '81');
INSERT INTO `parametricos_municipio` VALUES ('81794', 'TAME', '81');
INSERT INTO `parametricos_municipio` VALUES ('85001', 'YOPAL', '85');
INSERT INTO `parametricos_municipio` VALUES ('85010', 'AGUAZUL', '85');
INSERT INTO `parametricos_municipio` VALUES ('85015', 'CHÁMEZA', '85');
INSERT INTO `parametricos_municipio` VALUES ('85125', 'HATO COROZAL', '85');
INSERT INTO `parametricos_municipio` VALUES ('85136', 'LA SALINA', '85');
INSERT INTO `parametricos_municipio` VALUES ('85139', 'MANÍ', '85');
INSERT INTO `parametricos_municipio` VALUES ('85162', 'MONTERREY', '85');
INSERT INTO `parametricos_municipio` VALUES ('85225', 'NUNCHÍA', '85');
INSERT INTO `parametricos_municipio` VALUES ('85230', 'OROCUÉ', '85');
INSERT INTO `parametricos_municipio` VALUES ('85250', 'PAZ DE ARIPORO', '85');
INSERT INTO `parametricos_municipio` VALUES ('85263', 'PORE', '85');
INSERT INTO `parametricos_municipio` VALUES ('85279', 'RECETOR', '85');
INSERT INTO `parametricos_municipio` VALUES ('85300', 'SABANALARGA', '85');
INSERT INTO `parametricos_municipio` VALUES ('85315', 'SÁCAMA', '85');
INSERT INTO `parametricos_municipio` VALUES ('85325', 'SAN LUIS DE PALENQUE', '85');
INSERT INTO `parametricos_municipio` VALUES ('85400', 'TÁMARA', '85');
INSERT INTO `parametricos_municipio` VALUES ('85410', 'TAURAMENA', '85');
INSERT INTO `parametricos_municipio` VALUES ('85430', 'TRINIDAD', '85');
INSERT INTO `parametricos_municipio` VALUES ('85440', 'VILLANUEVA', '85');
INSERT INTO `parametricos_municipio` VALUES ('86001', 'MOCOA', '86');
INSERT INTO `parametricos_municipio` VALUES ('86219', 'COLÓN', '86');
INSERT INTO `parametricos_municipio` VALUES ('86320', 'ORITO', '86');
INSERT INTO `parametricos_municipio` VALUES ('86568', 'PUERTO ASÍS', '86');
INSERT INTO `parametricos_municipio` VALUES ('86569', 'PUERTO CAICEDO', '86');
INSERT INTO `parametricos_municipio` VALUES ('86571', 'PUERTO GUZMÁN', '86');
INSERT INTO `parametricos_municipio` VALUES ('86573', 'PUERTO LEGUÍZAMO', '86');
INSERT INTO `parametricos_municipio` VALUES ('86749', 'SIBUNDOY', '86');
INSERT INTO `parametricos_municipio` VALUES ('86755', 'SAN FRANCISCO', '86');
INSERT INTO `parametricos_municipio` VALUES ('86757', 'SAN MIGUEL', '86');
INSERT INTO `parametricos_municipio` VALUES ('86760', 'SANTIAGO', '86');
INSERT INTO `parametricos_municipio` VALUES ('86865', 'VALLE DEL GUAMUEZ', '86');
INSERT INTO `parametricos_municipio` VALUES ('86885', 'VILLAGARZÓN', '86');
INSERT INTO `parametricos_municipio` VALUES ('88001', 'SAN ANDRÉS', '88');
INSERT INTO `parametricos_municipio` VALUES ('88564', 'PROVIDENCIA', '88');
INSERT INTO `parametricos_municipio` VALUES ('91001', 'LETICIA', '91');
INSERT INTO `parametricos_municipio` VALUES ('91263', 'EL ENCANTO', '91');
INSERT INTO `parametricos_municipio` VALUES ('91405', 'LA CHORRERA', '91');
INSERT INTO `parametricos_municipio` VALUES ('91407', 'LA PEDRERA', '91');
INSERT INTO `parametricos_municipio` VALUES ('91430', 'LA VICTORIA', '91');
INSERT INTO `parametricos_municipio` VALUES ('91460', 'MIRITÍ - PARANÁ', '91');
INSERT INTO `parametricos_municipio` VALUES ('91530', 'PUERTO ALEGRÍA', '91');
INSERT INTO `parametricos_municipio` VALUES ('91536', 'PUERTO ARICA', '91');
INSERT INTO `parametricos_municipio` VALUES ('91540', 'PUERTO NARIÑO', '91');
INSERT INTO `parametricos_municipio` VALUES ('91669', 'PUERTO SANTANDER', '91');
INSERT INTO `parametricos_municipio` VALUES ('91798', 'TARAPACÁ', '91');
INSERT INTO `parametricos_municipio` VALUES ('94001', 'INÍRIDA', '94');
INSERT INTO `parametricos_municipio` VALUES ('94343', 'BARRANCOMINAS', '94');
INSERT INTO `parametricos_municipio` VALUES ('94883', 'SAN FELIPE', '94');
INSERT INTO `parametricos_municipio` VALUES ('94884', 'PUERTO COLOMBIA', '94');
INSERT INTO `parametricos_municipio` VALUES ('94885', 'LA GUADALUPE', '94');
INSERT INTO `parametricos_municipio` VALUES ('94886', 'CACAHUAL', '94');
INSERT INTO `parametricos_municipio` VALUES ('94887', 'PANA PANA', '94');
INSERT INTO `parametricos_municipio` VALUES ('94888', 'MORICHAL', '94');
INSERT INTO `parametricos_municipio` VALUES ('95001', 'SAN JOSÉ DEL GUAVIARE', '95');
INSERT INTO `parametricos_municipio` VALUES ('95015', 'CALAMAR', '95');
INSERT INTO `parametricos_municipio` VALUES ('95025', 'EL RETORNO', '95');
INSERT INTO `parametricos_municipio` VALUES ('95200', 'MIRAFLORES', '95');
INSERT INTO `parametricos_municipio` VALUES ('97001', 'MITÚ', '97');
INSERT INTO `parametricos_municipio` VALUES ('97161', 'CARURÚ', '97');
INSERT INTO `parametricos_municipio` VALUES ('97511', 'PACOA', '97');
INSERT INTO `parametricos_municipio` VALUES ('97666', 'TARAIRA', '97');
INSERT INTO `parametricos_municipio` VALUES ('97777', 'PAPUNAHUA', '97');
INSERT INTO `parametricos_municipio` VALUES ('97889', 'YAVARATÉ', '97');
INSERT INTO `parametricos_municipio` VALUES ('99001', 'PUERTO CARREÑO', '99');
INSERT INTO `parametricos_municipio` VALUES ('99524', 'LA PRIMAVERA', '99');
INSERT INTO `parametricos_municipio` VALUES ('99624', 'SANTA ROSALÍA', '99');
INSERT INTO `parametricos_municipio` VALUES ('99773', 'CUMARIBO', '99');

-- ----------------------------
-- Table structure for parametricos_rh
-- ----------------------------
DROP TABLE IF EXISTS `parametricos_rh`;
CREATE TABLE `parametricos_rh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parametricos_rh
-- ----------------------------
INSERT INTO `parametricos_rh` VALUES ('1', '1');
INSERT INTO `parametricos_rh` VALUES ('2', 'O+');
INSERT INTO `parametricos_rh` VALUES ('3', 'O-');
INSERT INTO `parametricos_rh` VALUES ('4', 'A+');
INSERT INTO `parametricos_rh` VALUES ('5', 'A-');
INSERT INTO `parametricos_rh` VALUES ('6', 'B+');
INSERT INTO `parametricos_rh` VALUES ('7', 'B-');
INSERT INTO `parametricos_rh` VALUES ('8', 'AB+');
INSERT INTO `parametricos_rh` VALUES ('9', 'AB-');

-- ----------------------------
-- Table structure for parametricos_tipodocumento
-- ----------------------------
DROP TABLE IF EXISTS `parametricos_tipodocumento`;
CREATE TABLE `parametricos_tipodocumento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parametricos_tipodocumento
-- ----------------------------
INSERT INTO `parametricos_tipodocumento` VALUES ('1', 'CC', 'Cédula de ciudadanía');
INSERT INTO `parametricos_tipodocumento` VALUES ('2', 'CE', 'Cédula de Extranjería');
INSERT INTO `parametricos_tipodocumento` VALUES ('3', 'PA', 'Pasaporte');
INSERT INTO `parametricos_tipodocumento` VALUES ('4', 'TI', 'Tarjeta de Identidad');

-- ----------------------------
-- Table structure for parametricos_tipovisitante
-- ----------------------------
DROP TABLE IF EXISTS `parametricos_tipovisitante`;
CREATE TABLE `parametricos_tipovisitante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parametricos_tipovisitante
-- ----------------------------
INSERT INTO `parametricos_tipovisitante` VALUES ('1', 'Familiar');
INSERT INTO `parametricos_tipovisitante` VALUES ('2', 'Domicilio');
INSERT INTO `parametricos_tipovisitante` VALUES ('3', 'Servicios');

-- ----------------------------
-- Table structure for residentes_propiedad
-- ----------------------------
DROP TABLE IF EXISTS `residentes_propiedad`;
CREATE TABLE `residentes_propiedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interior` varchar(3) NOT NULL,
  `numero` varchar(3) NOT NULL,
  `tipoPropiedad_id` int(11) NOT NULL,
  `celular_propietario` varchar(40) NOT NULL,
  `deposito` varchar(10) DEFAULT NULL,
  `direccion_propietario` varchar(200) NOT NULL,
  `inmobiliaria_razon_social` varchar(50) DEFAULT NULL,
  `nombre_propietario` varchar(255) NOT NULL,
  `numero_documento_propietario` varchar(20) NOT NULL,
  `propietario_es_residente` tinyint(1) NOT NULL,
  `telefono_propietario` varchar(40) NOT NULL,
  `tipo_documento_propietario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `residentes_propiedad_tipoPropiedad_id_ecccf45d_fk_residente` (`tipoPropiedad_id`),
  KEY `tipo_documento_propietario_id` (`tipo_documento_propietario_id`),
  CONSTRAINT `residentes_propiedad_ibfk_1` FOREIGN KEY (`tipo_documento_propietario_id`) REFERENCES `parametricos_tipodocumento` (`id`),
  CONSTRAINT `residentes_propiedad_tipoPropiedad_id_ecccf45d_fk_residente` FOREIGN KEY (`tipoPropiedad_id`) REFERENCES `residentes_tipopropiedad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of residentes_propiedad
-- ----------------------------
INSERT INTO `residentes_propiedad` VALUES ('1', '1', '101', '1', '3008101611', 'NO', 'CLLE 22 A BIS No. 27 15 AP 403 INT 4', '', 'JORGE ALEJANDRO DIAZ', '19267610', '0', '3008745748', '1');
INSERT INTO `residentes_propiedad` VALUES ('2', '1', '102', '1', '', 'NO', '', '', 'MARTHA SAAVEDRA', '51882251', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('3', '1', '103', '1', '3164579776', 'NO', '', '', 'BLANCA INES SANCHEZ DE CASTRO', '20080861', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('4', '1', '104', '1', '3106977108', 'NO', 'Cra 22 No. 15-10 Yopal', '', 'PEDRO JULIO PERALTA', '3282342', '0', '986354250', '1');
INSERT INTO `residentes_propiedad` VALUES ('5', '1', '201', '1', '3103111784', '6C', '', '', 'MARIA OSPINA DE JIMENEZ', '24724419', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('6', '1', '202', '1', '3158275175', '2', '', '', 'ALCIDES ROJAS ', '104773', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('7', '1', '203', '1', '3114452675', 'NO', '', '', 'LUIS ENRIQUE ALEGRIA', '4958123', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('8', '1', '301', '1', '3132854821', '3', '', '', 'PEDRO NELSON PARDO', '79112597', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('9', '1', '302', '1', '300 5727994', 'NO', '', '', 'GUILLERMO PORRAS B', '17156127', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('10', '1', '303', '1', '3115075019', '4B', '', '', 'JOSE RODRIGUEZ  ZORR', '79323281', '1', '3138706862', '1');
INSERT INTO `residentes_propiedad` VALUES ('11', '1', '304', '1', '3174315987', 'NO', '', '', 'YIVER ALEXANDER SACHEZ PORTILLA', '1015434000', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('12', '1', '401', '1', '3187075273', '4C', '', '', 'NUBIA PEDRAZA DUEÑAS', '63293635', '0', '3105762901', '1');
INSERT INTO `residentes_propiedad` VALUES ('13', '1', '402', '1', '3007618252', 'NO', '', '', 'MARIA ESTRELLA ANGARITA GIL', '24047501', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('14', '1', '403', '1', '3173712995', 'NO', '', '', 'LUIS EDUARDO MARTINEZ', '19217797', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('15', '1', '404', '1', '3158009791', 'NO', '', '', 'LAUDICE LINARES DE ACEVEDO', '41448643', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('16', '1', '501', '1', '3112547998', '35A', '', '', 'MAURICIO QUEVEDO ESPITIA ', '79044501', '1', '3182660351', '1');
INSERT INTO `residentes_propiedad` VALUES ('17', '1', '502', '1', '3108199460', 'NO', 'cra 69B No. 24B-56 Int 2 Ap 202', '', 'LUIS FERNANDO VELANDIA RODRIGUEZ ', '3064136', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('18', '1', '503', '1', '3125130597', 'NO', 'Cra. 69 D No. 25 - 45 Int. 9 apto. 201', '', 'SEBASTIAN LOPEZ TORRES ', '1032453374', '0', '4109476', '1');
INSERT INTO `residentes_propiedad` VALUES ('19', '1', '504', '1', '3132633568', 'NO', '', '', 'EDGAR TARAZONA ', '91253529', '1', '3144704148', '1');
INSERT INTO `residentes_propiedad` VALUES ('20', '1', '601', '1', '3124822347', 'NO', '', '', 'LUIS ERNESTO RODRIGUEZ ', '4216953', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('21', '1', '602', '1', '3017869936', '4A', '', '', 'ANGELA LILIANA BOCANEGRA ', '52517893', '1', '3188896582', '1');
INSERT INTO `residentes_propiedad` VALUES ('22', '1', '603', '1', '3128813054', 'NO', 'CLLE 25 No. 69-38 Int 6 apto 101', '', 'DORALICE GUTIERREZ TAMBO ', '23924953', '0', '3118952720', '1');
INSERT INTO `residentes_propiedad` VALUES ('23', '1', '604', '1', '3002754879', 'NO', 'CLLE 144 # 9-46 casa 4 Conjunto Santa Rosalia', '', 'ESMERALDA LUZ POLO CHARRIS', '32817167', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('24', '1', '701', '1', '3133641447', '6A', '', '', 'TERESA ALVAREZ DE TORRES', '23763156', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('25', '1', '702', '1', '3118984080', '5A', '', '', 'LUIS ARMANDO RODRIGUEZ ', '79115536', '1', '3114798001', '1');
INSERT INTO `residentes_propiedad` VALUES ('26', '1', '703', '1', '4750442', 'NO', '', '', 'DARLY CRISTINA OTALORA ', '52009608', '0', '3212227739', '1');
INSERT INTO `residentes_propiedad` VALUES ('27', '1', '704', '1', '3125230056', 'NO', '', '', 'MARIA LUZ AGUILERA RODRIGUEZ ', '39714236', '1', '3421325', '1');
INSERT INTO `residentes_propiedad` VALUES ('28', '1', '801', '1', '3105856260', 'NO', 'Calle 38 BIS SUR No. 33-32 ', 'LORENCA', 'JULIO LOZADA CABRERA ', '4941987', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('29', '1', '802', '1', '3108097930', '5B', '', '', 'JOSE ANIBAL ROJAS SALAZAR ', '70122068', '1', '3108059048', '1');
INSERT INTO `residentes_propiedad` VALUES ('30', '1', '803', '1', '3142943185', 'NO', '', '', 'JAIRO ERNESTO CORTES', '79313652', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('31', '1', '804', '1', '3013571987', 'NO', '', '', 'PAULO ALONSO GAONA GARCIA', '80092512', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('32', '1', '901', '1', '3164008044', '1', '', '', 'TERESA ARTUNDUAGA  B.', '26499848', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('33', '1', '902', '1', '3112954566', '6B', '', '', 'FLOR ALBA PIRAZAN', '23274974', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('34', '1', '903', '1', '7431444 EX 119 SAE', 'NO', 'Clle 96 No. 13-11 Piso 23', '', 'SOCIEDAD ACTIVOS ESPECIALES', '900265408', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('35', '1', '904', '1', '', 'NO', 'VIVE LA HIJA KAREN SANCHEZ', ',', 'JAVIER ALIRIO SANCHEZ NOVOA', '7332023', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('36', '2', '101', '1', '3118701221', 'NO', '', '', 'JOAQUIN ARIAS ACEVEDO', '19243499', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('37', '2', '102', '1', '3126603629', 'NO', '', '', 'ITALIA NAVIA', '6091952', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('38', '2', '103', '1', '3108842867', 'NO', '', '', 'GERMAN SANDOVAL VARGAS', '19372444', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('39', '2', '104', '1', '3124565848', '9', '', '', 'FABIO RICARDO BARON', '79283883', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('40', '2', '201', '1', '3103356922', '7', '', '', 'ALEXANDER PULIDO GUZMAN', '79626072', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('41', '2', '202', '1', '3103441198', 'NO', '', '', 'RAQUEL ROJAS BUSTAMANTE', '41386424', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('42', '2', '203', '1', '3003256944', 'NO', '', '', 'RAIMON DIAB ', '19365217', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('43', '2', '204', '1', '3108748065', 'NO', '', '', 'MONICA MARTINEZ RESTREPO', '42794080', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('44', '2', '301', '1', '3106806341', 'NO', '', '', 'JULIO CESAR MORENO  B.', '19224575', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('45', '2', '302', '1', '3102259315', 'NO', '', '', 'ROCIO  DEL PILAR QUINTERO ', '65711583', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('46', '2', '303', '1', '3125860973', 'NO', 'Av. Cra. 30 No. 4 A - 24', 'INMOBILIARIA  ALIADAS', 'ROBERT TULIO GALVIS ', '79420037', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('47', '2', '304', '1', '8843052', 'NO', 'CRA 15  No. 13-35 casa 70 Av chilacos conjunto aventura chia', '4868080 ext.1180', 'BELKIS PINZON DE SANDOVAL ', '27980744', '0', '3106979994', '1');
INSERT INTO `residentes_propiedad` VALUES ('48', '2', '401', '1', '3105614942', 'NO', 'CLLE 25 No. 68B-47 INT 1 APT 504', '', 'HUGO ENRIQUE CERON GROSSO', '19336940', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('49', '2', '402', '1', '3005669711', 'NO', '', '', 'HELBER ALFONSO RUIZ RODRIGUEZ ', '79041451', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('50', '2', '403', '1', '3108679211', 'NO', '', '', 'VICTOR HERNANDO DIAZ', '4207302', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('51', '2', '404', '1', '3115384806', 'NO', '', '', 'EVELIA RUSSI  DE CRUZ', '20247076', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('52', '2', '501', '1', '3115993982', 'NO', '', '', 'SHIRLEY LILIANA ROJAS', '53044177', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('53', '2', '502', '1', '3102643395', 'NO', '', '', 'BERNARDO VALENCIA AGUDELO', '5946509', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('54', '2', '503', '1', '3184094122', 'NO', '', '', 'JULIO CESAR GUZMAN', '79319634', '1', '3050930', '1');
INSERT INTO `residentes_propiedad` VALUES ('55', '2', '504', '1', '300 5534643 ', '11', '', '', 'JOSE VICTOR CELI REINA ', '19337049', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('56', '2', '601', '1', '3108782254', 'NO', '', '', 'JAIRO BENJAMÍN PÉREZ HOYOS', '19354331', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('57', '2', '602', '1', '3015197396', 'NO', '', '', 'MARTHA RIVEROS', '51603397', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('58', '2', '603', '1', '3003918486', 'NO', '', '', 'ROSALBA DE QUIROGA ', '20604118', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('59', '2', '604', '1', '3106185016', 'N O', '', '', 'EFRAIN VARGAS  AVILA', '80778816', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('60', '2', '701', '1', '2095556', 'NO', '', '', 'INÉS PATARROYO DE GARCÍA', '20074317', '0', '2256367', '1');
INSERT INTO `residentes_propiedad` VALUES ('61', '2', '702', '1', '3134767176', 'NO', '', '', 'RICARDO AMAYA', '17069428', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('62', '2', '703', '1', '3103228019', 'NO', 'Cra. 10  No. 8-39  Hotel Emperador Barbosa (Santander)', '', 'RAMIRO GALEANO HERREÑO', '7212582', '0', '977485711', '1');
INSERT INTO `residentes_propiedad` VALUES ('63', '2', '704', '1', '3134873579', 'NO', 'Cra. 25 No. 87 B -10  casa G-9 Girasol-vergel Ibagué ', 'INMOBILIARIA NUEVA CIUDAD', 'ALVARO EDUARDO AVILA RUIZ', '19341302', '0', '3005534123', '1');
INSERT INTO `residentes_propiedad` VALUES ('64', '2', '801', '1', '3106669829', 'NO', '', '', 'WILLIAN FIGUEREDO VIVAS', '4060117', '1', '3203391049', '1');
INSERT INTO `residentes_propiedad` VALUES ('65', '2', '802', '1', '3143321719', 'NO', '', '', 'RODRIGO AVALOS OSPINA', '4443849', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('66', '2', '803', '1', '3203626098', 'NO', 'Calle 24 B No. 71 A - 53 Int. 2-204', '', 'NUBIA FORERO', '38282144', '0', '4105680', '1');
INSERT INTO `residentes_propiedad` VALUES ('67', '2', '804', '1', '3108149879', 'NO', '', '', 'HERNANDO NAVARRETE BARRERA', '19283623', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('68', '2', '901', '1', '3124042669', 'NO', '', '', 'TILCIA MARIA PEREZ', '23911678', '1', '3108603870', '1');
INSERT INTO `residentes_propiedad` VALUES ('69', '2', '902', '1', '3102534454', '13', '', '', 'MARIO ALBEERTO GIRALDO ', '71605103', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('70', '2', '903', '1', '3108587413', 'NO', '', '', 'CARLOS FERNANDO  GUERRERO GUILLEN/   ', '79512873', '1', '2843649', '1');
INSERT INTO `residentes_propiedad` VALUES ('71', '2', '904', '1', '3112170358', 'NO', '', '', 'OFELIA MURCIADE GOMEZ', '20285151', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('72', '3', '101', '1', '3153052934', 'NO', 'Cra. 68 B No.22 A -71 torre 10 apto. 203', '', 'GLADYS CESPEDES M.', '41707744', '0', '4271758', '1');
INSERT INTO `residentes_propiedad` VALUES ('73', '3', '102', '1', '3118557717', 'NO', '', '', 'YOLANDA GARCIA ', '24573202', '1', '3114798001', '1');
INSERT INTO `residentes_propiedad` VALUES ('74', '3', '103', '1', '3157491232', 'NO', '', '', 'ALVARO JOSE ROMERO', '17805733', '1', '3017602516', '1');
INSERT INTO `residentes_propiedad` VALUES ('75', '3', '104', '1', '3132529811', 'NO', '', '', 'MARGARITA FLOREZ AMAYA ', '51784947', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('76', '3', '201', '1', '3228186023', 'NO', '', '', 'ADA SOFIA CORTES A.', '21298261', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('77', '3', '202', '1', '3118203663', '34B', 'Calle 25 No. 69 D - 51 apto. 301 torre 1 ', '', 'BLANCA DOLLY DUARTE', '41776542', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('78', '3', '203', '1', '3176370229', 'NO', '', '', 'HECTOR ALFONSO CRUZ/', '351578', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('79', '3', '204', '1', '3125062705', 'NO', '', '', 'JAVIER MENDOZA MARTÍNEZ ', '79580875', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('80', '3', '301', '1', '', 'NO', '', '', 'BEATRIZ ESCANDON DE GORDILLO / EDGAR A GORDILLO', '28236209', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('81', '3', '302', '1', '3132738778', 'NO', '', '', 'JOSE LUIS PARDO', '2999800', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('82', '3', '303', '1', '3134703816', '12', '', '', 'ERNESTO GARCIA MUÑOZ ', '19168050', '1', '2793383', '1');
INSERT INTO `residentes_propiedad` VALUES ('83', '3', '304', '1', '3132828087', '34A', '', '', 'HERNANDO ROJAS', '2895575', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('84', '3', '401', '1', '3134239135', '33A', '', '', 'JAIME CARREÑO MARTINEZ', '4112678', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('85', '3', '402', '1', '3232109065', 'NO', 'SECUESTRE EERNESTO ALDANA', '', 'MARCO FIDEL SANCHEZ-', '6774873', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('86', '3', '403', '1', '3114404338', '8', '', '', 'VICTOR HERNANDO GAMEZ', '3021415', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('87', '3', '404', '1', '3153644646', 'NO', '', '', 'JOSE JOAQUIN HERNANDEZ', '79201501', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('88', '3', '501', '1', '3105762901', 'NO', '', '', 'HUMBERTO FORERO ', '7490025', '0', '315 792789', '1');
INSERT INTO `residentes_propiedad` VALUES ('89', '3', '502', '1', '3102349043', 'NO', '', '', 'JOSE ALFONSO MACEDONIO', '19072094', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('90', '3', '503', '1', '3153349504', 'NO', 'Cra. 63 No. 22 B-84 Int. 2-901', '', 'LUIS ENRIQUE PEÑA', '80268595', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('91', '3', '504', '1', '3158812488', 'NO', '', '', 'CARLOS ARTURO MEJIA GIRALDO', '7211327', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('92', '3', '601', '1', '31447146791', 'NO', '', 'JB ASOCIADOS ', 'LUIS ALFONSO VARGAS ', '5892768', '0', '3115325289', '1');
INSERT INTO `residentes_propiedad` VALUES ('93', '3', '602', '1', '3133724058', 'NO', '', '', 'HUGO PACHON G. ', '19282999', '1', '3105585948', '1');
INSERT INTO `residentes_propiedad` VALUES ('94', '3', '603', '1', '3125201713', 'NO', '', '', 'STELLA RODRIGUEZ NIETO', '41631131', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('95', '3', '604', '1', '3125752496', 'NO', '', '', 'MIREYA GUERRERO CASALLAS', '41708630', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('96', '3', '701', '1', '3112838208', 'NO', '', '', 'SARA INES MORALES', '41489907', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('97', '3', '702', '1', '3112486821', 'NO', '', '', 'LUCIA AUROR MOJICA', '51735915', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('98', '3', '703', '1', '', 'NO', '', '', 'JORGE ENRIQUE MEDINA ', '19425747', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('99', '3', '704', '1', '3208016449', 'NO', '', '', 'JORGE JIMENEZ y/o FABIOLA VARGAS', '17037650', '1', '3002242788', '1');
INSERT INTO `residentes_propiedad` VALUES ('100', '3', '801', '1', '3133594118', 'NO', '', '', 'GERMAN HOLGUIN ', '19462160', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('101', '3', '802', '1', '3156227462', 'NO', '', '', 'LUIS JORGE CONTRERAS', '19059289', '1', '3125153063', '1');
INSERT INTO `residentes_propiedad` VALUES ('102', '3', '803', '1', '3112106922', 'NO', '', '', 'LUIS ANTONIO VELANDIA', '371369', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('103', '3', '804', '1', '3126212898', 'NO', '', '', 'ESPERANZA PINTO BETANCOUR', '41725368', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('104', '3', '901', '1', '2634576', 'NO', 'CRA.71 D No. 55- 94 apart -201', '', 'INGRID ERICA SENZ', '41483319', '0', '2631220', '1');
INSERT INTO `residentes_propiedad` VALUES ('105', '3', '902', '1', '4108305', 'NO', 'CRA.71 D No. 55- 94 apart -202', '', 'GISELA SILVA', '51802377', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('106', '3', '903', '1', '3142194527', '15', '', '', 'GABRIELA CEBALLOS DE RODRIGUEZ', '20158762', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('107', '3', '904', '1', '8109981', 'NO', 'Cra. 71 A  No. 52 A-04 Normandia ', '', 'CARLOS DAMIAN DUQUE', '79265215', '0', '3202019726', '1');
INSERT INTO `residentes_propiedad` VALUES ('108', '4', '101', '1', '3153490729', 'NO', '', '', 'MARTHA TORRES ', '51874352', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('109', '4', '102', '1', '3214384378', 'NO', '', '', 'JOHANA BECERRA ANGARITA', '52882865', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('110', '4', '201', '1', '3105665837', 'NO', '', '', 'GLORIA ISABEL RODRIGUEz', '51933733', '1', '2933051', '1');
INSERT INTO `residentes_propiedad` VALUES ('111', '4', '202', '1', '3115214901', 'NO', '', '', 'ANA GAMBA', '41574800', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('112', '4', '203', '1', '3108419062', 'NO', '', '', 'JENNY ESTELLA GAONA RAMIREZ', '38437337', '1', '3173804393', '1');
INSERT INTO `residentes_propiedad` VALUES ('113', '4', '204', '1', '3132857788', 'NO', '', '', 'PABLO EMILIO MONROY', '79455053', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('114', '4', '301', '1', '3138727584', 'NO', '', '', 'CONSUELO CHAVEZ DE HERRERA', '41732261', '0', '4163925', '1');
INSERT INTO `residentes_propiedad` VALUES ('115', '4', '302', '1', '3103446116', 'NO', '', '', 'DABOBERTO ESQUIVIA  AGAMEZ', '15039777', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('116', '4', '303', '1', '3005707562', 'NO', 'calle 26 6-43 casa 4B. Tunja', '', 'ALVARO ENRIQUE CABRERA BAYONA', '79463952', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('117', '4', '304', '1', '3172853889', 'NO', '', '', 'GIOVANNI  VILLALBA  MAYORGA', '79733300', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('118', '4', '401', '1', '3112275944', 'NO', '', '', 'BETTY MARTINEZ', '24455026', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('119', '4', '402', '1', '3152158555', 'NO', 'CALLE 67 B No 67-16  ', '', 'BLANCA BOHORQUEZ', '20056688', '0', '4736879', '1');
INSERT INTO `residentes_propiedad` VALUES ('120', '4', '403', '1', '310 4733966  ', 'NO', 'Av 4 oeste No. 5-274 apto 802 B edificio Bosques de Bayadares Cali ', '', 'JAIME SUAREZ ESCAMILLA', '19417696', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('121', '4', '404', '1', '2711189', 'NO', '', 'BIENES Y PROYECIOS', 'MARGARITA DE JESUS RUIZ DE ECHEVERRY', '21925255', '0', '3114729784', '1');
INSERT INTO `residentes_propiedad` VALUES ('122', '4', '501', '1', '3108812828', 'NO', 'calle 25 G # 74B-50 torre 1 apto 906 Nuevo Salitre', '', 'GLADYS CLAVIJO BOTERO', '25126631', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('123', '4', '502', '1', '3108079428', 'NO', '', '', 'GUILLERMO LEON VERDUGO.', '19489535', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('124', '4', '503', '1', '3125750330', 'NO', '', '', 'WILLIAM MENDOZA MARTINEZ', '19433464', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('125', '4', '504', '1', '3212594325', '21', '', '', 'LUIS SANCHEZ T', '19229991', '1', '3102920969', '1');
INSERT INTO `residentes_propiedad` VALUES ('126', '4', '601', '1', '3102210143', 'NO', '', '', 'PEDRO NEL GONZALEZ', '17175060', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('127', '4', '602', '1', '3158008877', '20', '', '', 'BERTHA ROMERO /WILSON ROMERO ', '20753345', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('128', '4', '603', '1', '3108804114', 'NO', '', '', 'JULIO ANTONIO BAEZ BAEZ', '19268860', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('129', '4', '604', '1', '3012101032', 'NO', '', '', 'DIEGO FERNANDO SANCHEZ', '7182804', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('130', '4', '701', '1', '3124577604', 'NO', '', 'LORENCA', 'JUAN  DE DIOS SEPULVEDA', '19232230', '0', '3002659349', '1');
INSERT INTO `residentes_propiedad` VALUES ('131', '4', '702', '1', '3103125754', 'NO', '', 'NUEVA CIUDAD', 'BLANCA NIDIA BAEZ  CELY', '52749414', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('132', '4', '703', '1', '3004301820', 'NO', '', '', 'JHON MARIO ARIAS ACOSTA', '79579708', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('133', '4', '704', '1', '3103259616', 'NO', '', '', 'LILIANA ROCIO VARGAS LOPEZ ', '53028357', '1', '3162472671', '1');
INSERT INTO `residentes_propiedad` VALUES ('134', '4', '801', '1', '3133866257', 'NO', '', '', 'LUIS ERNESTO RODRIGUEZ S', '5810076', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('135', '4', '802', '1', '3103434867', 'NO', '', '', 'MARTHA LUCIA SANDOVAL DIAZ ', '39529624', '1', '6504010', '1');
INSERT INTO `residentes_propiedad` VALUES ('136', '4', '803', '1', '3204865644', '39', '', '', 'MARIO IGNACIO DELGADO ', '83237212', '1', '3153256294', '1');
INSERT INTO `residentes_propiedad` VALUES ('137', '4', '804', '1', '3153449791', 'NO', '', 'CORREDOR Y GOMEZ', 'FLOR EVELIA CASTELBLANCO', '41593982', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('138', '4', '901', '1', '3138886320', '22', '', '', 'JORGE EDUARDO BELLO GONZÁLEZ', '11519701', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('139', '4', '902', '1', '3138886320', 'NO', '', '', 'MAURICIO EDUARDO MOLINA TRIVIÑO', '79482118', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('140', '4', '903', '1', '3103206225', 'NO', 'Condominio Monte Arroyo casa 7-14 Villavicencio 3118840014', '', 'FAEL EDITH ROMERO PEÑA ', '40383468', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('141', '4', '904', '1', '2360823', 'NO', 'Calle 83 Bis No. 24-78', '', 'REINALDO ROJAS BAEZ', '19349654', '0', '3158337467', '1');
INSERT INTO `residentes_propiedad` VALUES ('142', '5', '101', '1', '3103345359', 'NO', '', '', 'DIANA PAOLA BARRETO GALVEZ', '108412661', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('143', '5', '102', '1', '310 3436936 ', 'NO', 'CRA 10 No. 93-51 APTO 505 ', '', 'FERNANDO DE LA HOZ ', '12550088', '0', '3105598311', '1');
INSERT INTO `residentes_propiedad` VALUES ('144', '5', '201', '1', '', '31B', '', '', 'MARIANA URREA DE MORA', '20561831', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('145', '5', '202', '1', '3163810769', '32B', 'Diagonal 59 No. 22 A-20 San Luis ', 'APONTE Y CARVAJAL ', 'MARIA CAROLINA PEÑUELA ', '40988289', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('146', '5', '203', '1', '3166288756', '32A', '', '', 'DORA INES CASTRO', '21024855', '0', '3213208139', '1');
INSERT INTO `residentes_propiedad` VALUES ('147', '5', '204', '1', '3112892599', '35B', '', '', 'HECTOR JULIO RUIZ ', '4131128', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('148', '5', '301', '1', '3015805561', 'NO', '', '', 'JOSE LUIS AVELLA CH.', '74085392', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('149', '5', '302', '1', '3107622114', 'NO', '', '', 'GLORIA STELLA CARRILLO', '41670020', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('150', '5', '303', '1', '3102681864', 'NO', '', '', 'JORGE SANTANA MARULANDA', '9807261', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('151', '5', '304', '1', '2145631', 'NO', 'Cra. 52 No. 116 - 30 apto. 206 ', '', 'CARRERA PEÑA Y CIA. LTDA.', '800180967', '0', '3164183807', '1');
INSERT INTO `residentes_propiedad` VALUES ('152', '5', '401', '1', '3106797690', 'NO', '', '', 'OCTAVIO JIMENEZ MONTOYA', '4338154', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('153', '5', '402', '1', '3166679591', 'NO', 'CALLE 23 No. 68-50 T10 apto 602 blanca cecilia laverde', '', 'AMPARO CHIA PARRA ', '63447210', '0', '6903813', '1');
INSERT INTO `residentes_propiedad` VALUES ('154', '5', '403', '1', '3002331605', 'NO', 'Cra. 68 B No. 22 A - 62 casa 24', '', 'JUAN ARANGO GUTIERREZ', '19466866', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('155', '5', '404', '1', '3102900582', 'NO', '', '', 'VICTORIA MONTAÑA ', '51901812', '1', '6948751', '1');
INSERT INTO `residentes_propiedad` VALUES ('156', '5', '501', '1', '3003227265', 'NO', '', '', 'JORGE ENRIQUE LONDOÑO', '17153492', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('157', '5', '502', '1', '3112225998', 'NO', 'Cra 10 No. 15-39 ofic. 1001', '', 'JUAN PORFIRIO CASTELLANOS ', '382115', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('158', '5', '503', '1', '3124380851', 'NO', '', '', 'MABEL LUCERO CASTAÑEDA ', '53003177', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('159', '5', '504', '1', '3012290992', '23', '', '', 'JUANA CRISTINA PUERTA', '22774897', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('160', '5', '601', '1', '3505678711', 'NO', '', '', 'FREDY YOVANI COBA ASTROS', '80243141', '1', '3213050931', '1');
INSERT INTO `residentes_propiedad` VALUES ('161', '5', '602', '1', '3103740945', 'NO', '', '', 'CARLOS ALBERTO ARIAS MONCALEANO ', '10232932', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('162', '5', '603', '1', '3104781983', 'NO', '', '', 'OSCAR OSWALDO RUIZ', '79433953', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('163', '5', '604', '1', '3168308967', '24', '', '', 'JUAN CARLOS LARA', '16626293', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('164', '5', '701', '1', '3143157894', 'NO', 'Cra.10 No.16-27 Calzado Tentación ', '', 'MARIA FANNY RODRIGUEZ A.', '41352508', '0', '3124340804', '1');
INSERT INTO `residentes_propiedad` VALUES ('165', '5', '702', '1', '3133260228', 'NO', '', '', 'JOSE BERCELINO DOMINGUEZ ', '17146680', '1', '3003482230', '1');
INSERT INTO `residentes_propiedad` VALUES ('166', '5', '703', '1', '3112896948', 'NO', '', '', 'MARIA DELOS ANGELES RMIREZ', '41706306', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('167', '5', '704', '1', '3107723591', 'NO', '', '', 'JOSE NELSON  DIAZ CARDENAS', '4207839', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('168', '5', '801', '1', '3002062902', 'NO', '', '', 'CLODOMIRO PINTO HEREDIA', '19172577', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('169', '5', '802', '1', '3114762521', '19', 'Calle 27 A SUR No. 34 A 20', 'PANAMERICANA', 'JOSE APONTE SANCHEZ', '2869008', '0', '3143407449', '1');
INSERT INTO `residentes_propiedad` VALUES ('170', '5', '803', '1', '3103314491', 'NO', '', '', 'JOSE ZAMUDIO PENAGOS', '19104356', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('171', '5', '804', '1', '3203067539', 'NO', '', '', 'HECTOR FABIO CASTRO SERRATO', '19446898', '1', '3123609508', '1');
INSERT INTO `residentes_propiedad` VALUES ('172', '5', '901', '1', '3002062883', 'NO', 'cra 71 No. 24-50 Ap 207', '', 'OLGA ISABEL GARZÓN', '51638952', '0', '2632863', '1');
INSERT INTO `residentes_propiedad` VALUES ('173', '5', '902', '1', '3102816434', '25', '', '', 'ANA LUCIA POSADA', '42963195', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('174', '5', '903', '1', '300 2004246', 'NO', 'Autop Norte No. 128-11', '', 'BERNARDO MORENO CONTENTO', '19347085', '0', '3208340932', '1');
INSERT INTO `residentes_propiedad` VALUES ('175', '5', '904', '1', '3158937004', 'NO', '', '', 'ROSALBA CASTRO DE SOTO', '27949526', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('176', '6', '101', '1', '3103042421', 'NO', '', '', 'PEDRO VALBUENA ', '2923789', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('177', '6', '102', '1', '30127679856', 'NO', '', '', 'GABRIEL RODRIGUEZ', '19070441', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('178', '6', '201', '1', '3112082080', 'NO', '', '', 'JORGE A.CARDENAS ', '19149186', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('179', '6', '202', '1', '3125970702', 'NO', '', '', 'DILMA DEL CARMEN OVALLE VARGAS', '39639499', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('180', '6', '203', '1', '3115117428', '26', '', '', 'BEATRIZ MARTINEZ', '21015019', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('181', '6', '204', '1', '3126658803', 'NO', '', '', 'JESU ORLANDO BENAVIDES DE LA CRUZ ', '73113993', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('182', '6', '301', '1', '3153355913', 'NO', '', '', 'ARTURO URUEÑA GALINDO', '19245416', '1', '3157836110', '1');
INSERT INTO `residentes_propiedad` VALUES ('183', '6', '302', '1', '3134634863', 'NO', 'AV 116 No. 47 A -60 ', 'ACROS', 'LUIS HERNANDO MENDIVELSO HIGUERA ', '5683150', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('184', '6', '303', '1', '3152578198', 'NO', '', '', 'CARLOS APONTE ', '87276556', '1', '3103155335', '1');
INSERT INTO `residentes_propiedad` VALUES ('185', '6', '304', '1', '3182164744', '28', '', '', 'CLAUDIA VICKY GALINDO PATIÑO', '52220561', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('186', '6', '401', '1', '3005662420', '29B', 'CLLE 23 C No. 69-16  T 4 AP 725', '', 'JOSE O RAMIREZ HERRERA ', '3303754', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('187', '6', '402', '1', '3007768531', 'NO', 'Clle 73 No. 20 A - 66', 'CONINSA RAMON H', 'ODILIA DELGADO ', '23270903', '0', '3016638612', '1');
INSERT INTO `residentes_propiedad` VALUES ('188', '6', '403', '1', '3143344014', 'NO', '', '', 'OSCAR VACA ', '3024261', '1', '3204924509', '1');
INSERT INTO `residentes_propiedad` VALUES ('189', '6', '404', '1', '3125317750', 'NO', '', '', 'MIGUEL BOTERO CORREA ', '15255171', '1', '3103147505', '1');
INSERT INTO `residentes_propiedad` VALUES ('190', '6', '501', '1', '3105585948', 'NO', '', '', 'ROBERTO GUERRERO', '19050244', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('191', '6', '502', '1', '3108662354', 'NO', '', '', 'JORGE ROJAS', '17191094', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('192', '6', '503', '1', '3168676747', '38', '', '', 'SEBASTIAN ALZATE BOTERO', '1018441583', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('193', '6', '504', '1', '3217177564', 'NO', '', '', 'ESMERALDA OCHOA', '41785630', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('194', '6', '601', '1', '3002123168', 'NO', '', '', 'MARINA SANCHEZ DE SANCHEZ ', '20325757', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('195', '6', '602', '1', '3107635576', 'NO', 'Calle 22 B No. 64-27 TORRE 4 AP 218', '', 'OMAR VASQUEZ JARAMILLO ', '79349622', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('196', '6', '603', '1', '', '16', 'PUERTO RICO', '', 'JENARO BELTRAN ', '212175959', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('197', '6', '604', '1', '3118007435', 'NO', 'DG 40 C sur  No. 73-20  apto 402 int 3', '', 'FABIOLA JIMENEZ PEREZ', '52768540', '0', '3112771378', '1');
INSERT INTO `residentes_propiedad` VALUES ('198', '6', '701', '1', '3203129027', 'NO', '', 'JULIO CORREDOR', 'MIRYAM TOBAR DE SANTAMARIA', '41609831', '0', '2639152', '1');
INSERT INTO `residentes_propiedad` VALUES ('199', '6', '702', '1', '3106962825', '14B', 'CRA 79 No.. 19-88 T 2 Apto 1007', '', 'HERMES RUIZ ', '4399008', '0', '4427844', '1');
INSERT INTO `residentes_propiedad` VALUES ('200', '6', '703', '1', '2557727', 'NO', '', '', 'HECTOR SALGADO ', '19347057', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('201', '6', '704', '1', '3158280354', '17', '', '', 'MANUEL A. GUIO', '19716494', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('202', '6', '801', '1', '7216613', 'NO', '', '', 'JOSE  DEL CARMEN VARGAS ', '17001035', '1', '3124333748', '1');
INSERT INTO `residentes_propiedad` VALUES ('203', '6', '802', '1', '2633806', 'NO', '', '', 'PEDRO E. CONTRERAS', '17069716', '1', '3133933043', '1');
INSERT INTO `residentes_propiedad` VALUES ('204', '6', '803', '1', '3107797933', 'NO', '', '', 'NORMA CECILIA ROJAS P.', '40778836', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('205', '6', '804', '1', '3118121495', '27', '', '', 'NELLY SICULABA S.', '41413151', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('206', '6', '901', '1', '3102283732', '29A', '', '', 'LUIS ORLANDO RUIZ BARRETO ', '11251714', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('207', '6', '902', '1', '3102750610', '30A', '', '', 'REBECA BUSTAMANTE', '37228922', '1', '4160074', '1');
INSERT INTO `residentes_propiedad` VALUES ('208', '6', '903', '1', '3157915364', '18', '', '', 'JOSE BOTERO SERNA', '70691570', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('209', '6', '904', '1', '3153089737', 'NO', 'CRA 13 No. 32-51 t3 of. 502', '', 'CARLOS HECTOR ORTIZ CRUZ', '79396738', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('210', '8', '1', '2', '2419600 ext 5450', 'NO', 'Cra 13 No. 27-47 PISO 4', '', 'MARCO AURELIO URIBE', '19403431', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('211', '8', '2', '2', '3143816464', 'NO', '', '', 'JUAN IGNACIO CHAVEZ', '79714259', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('212', '8', '3', '2', '3208487884', 'NO', '', 'AYALA INVERSINES', 'MONICA LUISA FERNANDA BRAVO', '46365093', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('213', '8', '4', '2', '3102129800', 'NO', 'Cra. 69 D No. 24 15 Int. 43 apto 402', '', 'MARTHA TADEA BEJARANO', '39638258', '0', '2956196', '1');
INSERT INTO `residentes_propiedad` VALUES ('214', '8', '5', '2', '3143505420', 'NO', 'Calle 24 B No.68 A-42 Apto.920 Torre 5', '', 'Ma.CECILIA MURCIA DE VARGAS  ', '20082157', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('215', '8', '6', '2', '3193106842', 'NO', 'CRA 79 No. 19-56 APTO 2-803', '', 'JOSE RAUL LOPEZ    ', '19287102', '0', '3203008684', '1');
INSERT INTO `residentes_propiedad` VALUES ('216', '8', '7', '2', '3108591290', 'NO', 'Calle 79 A  No. 66-69 apto 410', 'LUIS F CORREDOR', 'LUIS CHAPARRO', '7493569', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('217', '8', '8', '2', '3153366904', 'NO', 'Cra.17 No. 109-54 Apto.301', '', 'GERMAN SALAZAR ', '17163694', '0', '6290883', '1');
INSERT INTO `residentes_propiedad` VALUES ('218', '8', '9', '2', '3123792612', 'NO', '', '', 'JOSE ALBERTO DEVIA BRAVO', '3101016', '0', '3142196097', '1');
INSERT INTO `residentes_propiedad` VALUES ('219', '8', '10', '2', '3102044390', 'NO', '', '', 'SANDRA MILENA CASTRO FRANCO', '60391982', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('220', '8', '11', '2', '3115543830', 'NO', 'Calle 22 B No. 64-26 Torre 4 apto. 1015', '', 'DORA GARCIA MENDEZ', '35312627', '0', '3157259', '1');
INSERT INTO `residentes_propiedad` VALUES ('221', '8', '12', '2', '', 'NO', '', 'REPORTI INMOBILIARIA', 'JULIO ROBERTO SANCHEZ', '17115191', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('222', '8', '13', '2', '3124484408', 'NO', 'CLLE 25 No. 68 A -70 T 4 AP 1013', '', 'CESAR ROSAS RODRIGUEZ', '19447413', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('223', '8', '14', '2', '3005662990', 'NO', 'CRA 18C No. 123-27 AP 307', 'NUEVA CIUDAD', 'MARCO TULIO MEJIA', '1122953', '0', '3232833', '1');
INSERT INTO `residentes_propiedad` VALUES ('224', '8', '15', '2', '3002125258', 'NO', 'CLLE 11 A No. 79 A - 28 T 5 APTO 404', 'LORENCA', 'JOSE RONDON BARON', '13804331', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('225', '8', '16', '2', '3133866257', 'NO', '', '', 'LUIS ERNESTO RODRIGUEZ', '5810076', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('226', '8', '17', '2', '3114551217', 'NO', 'Cra. 68 B No. 24 A-64 torre 1 apto. 803', '', 'HECTOR GARCIA PEÑA', '2889860', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('227', '8', '18', '2', '3202602939', 'NO', '', '', 'LUIS EDUARDO GONZALEZ', '9064923', '0', '2345576', '1');
INSERT INTO `residentes_propiedad` VALUES ('228', '8', '19', '2', '3134327300', 'NO', 'SANDRA SUAREZ 3134327300 ENCARGADA', 'BODEGA INMOBILIARIA', 'LEANDRO SERRANO ', '', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('229', '8', '20', '2', '3016860852', 'NO', 'AV. Calle  80 No. 60-95 Apto 3-307', 'INMOBILIARIA ANDES', 'NUBIA ELISA RAMIREZ DECANAL', '41506287', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('230', '8', '21', '2', '3108009601', 'NO', 'Cra 71F No. 12B-51 Torre 7 Ap 603', '', 'ALBERTO MONCADA', '1934427', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('231', '8', '22', '2', '3107683543', 'NO', 'CRA 28 # 52-05 PISO 2o.', '', 'ROSALBA BURBANO PEÑA', '34526266', '0', '7018000', '1');
INSERT INTO `residentes_propiedad` VALUES ('232', '8', '23', '2', '', 'NO', '', '', 'ALEJANDRO BENAVIDES', '', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('233', '8', '24', '2', '3105805326', 'NO', 'Calle 117 D No. 58-50 torre 3 apto. 1313 conjunto Bali', 'VASQUEZ Y VASQUEZ', 'GLORIA ARENAS', '20310334', '0', '7531379', '1');
INSERT INTO `residentes_propiedad` VALUES ('234', '8', '25', '2', '3108584341', 'NO', 'CALLE 23F No.  80B-22 modelia', '', 'FABIO ANDRES CABRERA', '79823406', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('235', '8', '26', '2', '3014546595', 'NO', 'AV. ESPERANZA 69 A- 44 LOCAL 12', '', 'MIGUEL RIVERA', '19341824', '0', '2951411', '1');
INSERT INTO `residentes_propiedad` VALUES ('236', '8', '27', '2', '3133864094', 'NO', 'Calle 107 A No. 54-57apto. 402 Puente Largo ', '', 'MIGUEL TORRES ORTIZ', '17161483', '0', '3105741873', '1');
INSERT INTO `residentes_propiedad` VALUES ('237', '8', '28', '2', '4757542', 'NO', '', 'ALINA INMOBILIARIA', 'ALBA JULIETA FORERO GONZALEZ - FRANCE HELENA FORERO ', '', '0', '3213346950', '1');
INSERT INTO `residentes_propiedad` VALUES ('238', '8', '29', '2', '4289331', 'NO', 'Cra.82 No. 17-95 Torre7- 401', '', 'MARIA ISABEL CARDENAS/ JORGE BAUTISTA', '17064732', '0', '3132538450', '1');
INSERT INTO `residentes_propiedad` VALUES ('239', '8', '30', '2', '3152533474', 'NO', '', '', 'YANIRA RODRIGUEZ', '', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('240', '8', '31', '2', '4108068', 'NO', '', '', 'GUSTAVO BUITRAGO GARCIA', '19311667', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('241', '8', '32', '2', '3202756239', 'NO', '', '', 'MARTHA RAMIREZ', '41495261', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('242', '7', '101', '1', '3202110888', 'NO', '', '', 'JUAN FRACISCO PEREA ', '79453455', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('243', '7', '102', '1', '3105814087', 'NO', '', '', 'HUMBERTO GOMEZ  GUERRERO ', '19149919', '1', '3156022826', '1');
INSERT INTO `residentes_propiedad` VALUES ('244', '7', '103', '1', '3107837118', 'NO', '', '', 'FRANCISCO BOHORQUEZ RAMMIREZ', '3176059', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('245', '7', '201', '1', '3212020039', 'NO', '', '', 'LAURA JOHANNA QUINTERO', '52225626', '0', '4103036', '1');
INSERT INTO `residentes_propiedad` VALUES ('246', '7', '202', '1', '3175612154', 'NO', '', '', 'CRISTIAN PATIÑO ', '1122649841', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('247', '7', '203', '1', '3124560518', 'no', '', '', 'PAUL ALBERTO  JARRY DUARTE', '79459892', '1', '2811643', '1');
INSERT INTO `residentes_propiedad` VALUES ('248', '7', '204', '1', '3108752283', 'NO', '', '', 'LUZ DARY PINEDA GUEVARA ', '41372278', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('249', '7', '301', '1', '3017470337', 'NO', '', '', 'ANGELICA ALZATE', '52479796', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('250', '7', '302', '1', '3135729326', '30B', '', '', 'BERTHA LUCY FLOREZ ', '49731162', '1', '3008004963', '1');
INSERT INTO `residentes_propiedad` VALUES ('251', '7', '303', '1', '3108111250', 'NO', 'Cra 56 No. 152-42 T  3 Apto 703', 'PATRIMONO INMOBILIARIO', 'EDNA JULIETH BOCANEGRA LARA', '1020739890', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('252', '7', '304', '1', '3106972716', 'NO', '', '', 'JUAN BAUTISTA BARRIOS R.', '19136939', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('253', '7', '401', '1', '3002235520', 'NO', '', '', 'CECILIA MARTINEZ DE SEPULVEDA ', '41512396', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('254', '7', '402', '1', '2950197', 'NO', '', '', 'MERCEDES ROMERO', '41320364', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('255', '7', '403', '1', '3173581404', 'NO', '', '', 'JESUS SEGOVIA ROMERO', '93362334', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('256', '7', '404', '1', '3125848488', 'NO', '', '', 'ARMIDA ESPERANZA ZAMBRANO P.', '23628700', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('257', '7', '501', '1', '3102346544', 'NO', '', '', 'DAVID SANCHEZ ', '91206147', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('258', '7', '502', '1', '313 4300162', 'NO', 'Cra. 64 No. 24-47 Int. 2-508', '', 'GLADYS ALBARRAN', '41461765', '0', '6947416', '1');
INSERT INTO `residentes_propiedad` VALUES ('259', '7', '503', '1', '3006125428', 'NO', '', '', 'JAIRO PIÑEROS ALFONSO', '79321925', '1', '3006115390', '1');
INSERT INTO `residentes_propiedad` VALUES ('260', '7', '504', '1', '3202355767', 'NO', '', '', 'FRANCENETH  RUBIO ', '41670313', '1', '3105747555', '1');
INSERT INTO `residentes_propiedad` VALUES ('261', '7', '601', '1', '3123513470', 'NO', '', '', 'JORGE IVAN JIMENEZ ARISTIZABAL ', '15986997', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('262', '7', '602', '1', '3108822845', 'NO', 'Calle 6 No. 20-22 Barrio San Martin-Yopal Casanare', '', 'BLANCA ELVIRA CRISTANCHO', '46360208', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('263', '7', '603', '1', '3212058596', 'NO', '', '', 'MARÍA EVA CELY', '46356421', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('264', '7', '604', '1', '3114666344', '33B', 'Cra. 69 D No.1-10 sur Int. 7-303', '', 'ALCIRA TORRES CHOCONTA', '20257562', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('265', '7', '701', '1', '3125516625', 'NO', '', '', 'CLAUDIA PATRICIA CIPRIAN L.', '42123494', '1', '6601117', '1');
INSERT INTO `residentes_propiedad` VALUES ('266', '7', '702', '1', '3182051465', 'NO', '', '', 'BLANCA MARGARITA PATIÑO', '41551033', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('267', '7', '703', '1', '', 'NO', '', '', 'CARLOS OSORIO', '14222333', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('268', '7', '704', '1', '3153360917', 'NO', '', '', 'ROBERTO SARMIENTO YO MA. SOCORRO RODRIGUEZ', '13836222', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('269', '7', '801', '1', '3118532321', 'NO', 'CRA 52 C no. 42 A - 11 sur', '', 'ROSAL DEL PILAR HERNANDEZ URIBE', '1026271186', '0', '7101119', '1');
INSERT INTO `residentes_propiedad` VALUES ('270', '7', '802', '1', '3163315774', 'NO', 'Calle 152 No. 58 C - 50 Torre 1 Apto. 203', '', 'PEDRO SARMIENTO R.', '19168546', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('271', '7', '803', '1', '3042479343', 'NO', '', '', 'CLARA INES PINEDA TORRES', '51614166', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('272', '7', '804', '1', '3108582745', '14A', '', '', 'MARCO ANTONIO GUTIERRES PINZON ', '9650039', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('273', '7', '902', '1', '3153314228', 'NO', '', '', 'SANDRA GOMEZ', '51957523', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('274', '7', '903', '1', '3115366813', 'NO', '', '', 'NATALY CAROLINA ACOSTA RODRIGUEZ', '1010177774', '1', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('275', '7', '904', '1', '4204950', '31A', '', '', 'LUIS FELIPE LEGUIZAMON', '11291846', '1', '7201287', '1');
INSERT INTO `residentes_propiedad` VALUES ('276', '1', '204', '1', '3183354891', 'NO', 'Cra. 23 No. 29 - 135 casa 5 conjunto residencial colina campestre barrio Cañaveral- Florida blanca- Bucaramanga.', 'ALIANZA PROFESIONAL', 'MELECIO QUINTO ARIA', '11795265', '0', '', '1');
INSERT INTO `residentes_propiedad` VALUES ('556', '7', '901', '1', '3002169204', '36 y 37', '', '', 'ANA EXCELINA TAPIAS', '41301904', '1', '', '1');

-- ----------------------------
-- Table structure for residentes_residente
-- ----------------------------
DROP TABLE IF EXISTS `residentes_residente`;
CREATE TABLE `residentes_residente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_documento` varchar(20) NOT NULL,
  `primer_apellido` varchar(20) NOT NULL,
  `segundo_apellido` varchar(20) NOT NULL,
  `primer_nombre` varchar(20) NOT NULL,
  `segundo_nombre` varchar(20) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `tipo_documento_id` int(11) NOT NULL,
  `propiedad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `residentes_residente_tipo_documento_id_6748da9c_fk_parametri` (`tipo_documento_id`),
  KEY `residentes_residente_propiedad_id_c99656b4_fk_residente` (`propiedad_id`),
  CONSTRAINT `residentes_residente_propiedad_id_c99656b4_fk_residente` FOREIGN KEY (`propiedad_id`) REFERENCES `residentes_propiedad` (`id`),
  CONSTRAINT `residentes_residente_tipo_documento_id_6748da9c_fk_parametri` FOREIGN KEY (`tipo_documento_id`) REFERENCES `parametricos_tipodocumento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of residentes_residente
-- ----------------------------

-- ----------------------------
-- Table structure for residentes_tipopropiedad
-- ----------------------------
DROP TABLE IF EXISTS `residentes_tipopropiedad`;
CREATE TABLE `residentes_tipopropiedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of residentes_tipopropiedad
-- ----------------------------
INSERT INTO `residentes_tipopropiedad` VALUES ('1', 'Apartamento');
INSERT INTO `residentes_tipopropiedad` VALUES ('2', 'Local');

-- ----------------------------
-- Table structure for residentes_vehiculo
-- ----------------------------
DROP TABLE IF EXISTS `residentes_vehiculo`;
CREATE TABLE `residentes_vehiculo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placa` varchar(9) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `garage` varchar(10) DEFAULT NULL,
  `propiedad_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `residentes_vehiculo_propiedad_id_41e6520f_fk_residente` (`propiedad_id`),
  CONSTRAINT `residentes_vehiculo_propiedad_id_41e6520f_fk_residente` FOREIGN KEY (`propiedad_id`) REFERENCES `residentes_propiedad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of residentes_vehiculo
-- ----------------------------
INSERT INTO `residentes_vehiculo` VALUES ('1', 'MJZ-525', 'kia ', 'gris ', '175', '1');
INSERT INTO `residentes_vehiculo` VALUES ('2', 'IMS-843', 'kia ', 'gris ', '177', '2');
INSERT INTO `residentes_vehiculo` VALUES ('3', ' BYK-144', 'kia ', 'cereza ', '178', '3');
INSERT INTO `residentes_vehiculo` VALUES ('4', '', '', '', '108', '4');
INSERT INTO `residentes_vehiculo` VALUES ('5', 'ALD-428', 'toyota ', 'rojo ', '10 A B', '5');
INSERT INTO `residentes_vehiculo` VALUES ('6', ' ZXS-768', 'samury ', 'verde ', '14 A B', '6');
INSERT INTO `residentes_vehiculo` VALUES ('8', ' RJX-045', 'ford ', 'negro ', '174', '7');
INSERT INTO `residentes_vehiculo` VALUES ('9', 'EJL-836', 'renault ', 'plateado', '171', '276');
INSERT INTO `residentes_vehiculo` VALUES ('10', ' FPL-344', 'hiunday ', 'blanco ', '7 A B ', '8');
INSERT INTO `residentes_vehiculo` VALUES ('11', 'MCW-587', '', '', '4 A B ', '9');
INSERT INTO `residentes_vehiculo` VALUES ('12', ' IXR-207', 'honda ', 'negra ', '63', '10');
INSERT INTO `residentes_vehiculo` VALUES ('13', ' JFK-147', 'aveo ', 'azul ', '111', '11');
INSERT INTO `residentes_vehiculo` VALUES ('14', '', '', '', '8 A B', '12');
INSERT INTO `residentes_vehiculo` VALUES ('15', ' MPW-828', 'dodge ', 'plateado ', '13 AB ', '13');
INSERT INTO `residentes_vehiculo` VALUES ('16', ' CXI-814', 'samuro ', 'negro', '112', '14');
INSERT INTO `residentes_vehiculo` VALUES ('17', ' RGX-011', 'journey ', 'negro ', '109', '15');
INSERT INTO `residentes_vehiculo` VALUES ('18', ' FYN-580', 'wolsvagen ', 'plateado ', '74', '16');
INSERT INTO `residentes_vehiculo` VALUES ('19', '', '', '', '62', '17');
INSERT INTO `residentes_vehiculo` VALUES ('20', ' IVU-229', 'renault ', 'platrado ', '173', '18');
INSERT INTO `residentes_vehiculo` VALUES ('21', ' BGX-917 ', 'wolsvagen ', 'rojo ', '59', '19');
INSERT INTO `residentes_vehiculo` VALUES ('22', ' BEG-433', 'bmw ', 'negro', '75', '20');
INSERT INTO `residentes_vehiculo` VALUES ('23', ' IEM-308', 'toyota ', 'plateada ', '5 A B', '21');
INSERT INTO `residentes_vehiculo` VALUES ('24', ' UUK-263', 'ford ', 'blanco ', '110', '22');
INSERT INTO `residentes_vehiculo` VALUES ('25', '', '', '', '172', '23');
INSERT INTO `residentes_vehiculo` VALUES ('26', ' HIV-964', 'bmw ', 'plateado ', '64', '24');
INSERT INTO `residentes_vehiculo` VALUES ('27', ' MCO-814', 'renault ', 'negro ', '12 A B', '25');
INSERT INTO `residentes_vehiculo` VALUES ('28', 'RZZ-527', 'kia ', 'blanco ', '168', '26');
INSERT INTO `residentes_vehiculo` VALUES ('29', ' HTN-691', 'chevrolet ', 'plateado ', '107', '27');
INSERT INTO `residentes_vehiculo` VALUES ('30', 'GOD-099', 'mercedes ', 'negro ', '3 A B', '28');
INSERT INTO `residentes_vehiculo` VALUES ('31', ' ZZS-206', 'citroen ', 'rojo ', '11 A B', '29');
INSERT INTO `residentes_vehiculo` VALUES ('32', 'MPG-915', 'toyota ', 'vinotinto ', '2 A B', '30');
INSERT INTO `residentes_vehiculo` VALUES ('33', ' FPQ-991', 'nizan ', 'plateada ', '102', '31');
INSERT INTO `residentes_vehiculo` VALUES ('34', ' GRG-346', 'mazda', 'gris ', '6 A B', '32');
INSERT INTO `residentes_vehiculo` VALUES ('35', ' IWD-415', 'ford ', 'plateada ', '9 A B', '33');
INSERT INTO `residentes_vehiculo` VALUES ('36', ' EJL-836', 'renault ', 'negro', '170', '34');
INSERT INTO `residentes_vehiculo` VALUES ('37', ' JKK-147', 'wolswagen', 'blanco ', '179', '35');
INSERT INTO `residentes_vehiculo` VALUES ('38', '', '', '', '52', '36');
INSERT INTO `residentes_vehiculo` VALUES ('39', ' CSR-079', 'mazda ', 'gris ', '77', '37');
INSERT INTO `residentes_vehiculo` VALUES ('40', ' HXV-904', 'ford ', 'plateada ', '101', '38');
INSERT INTO `residentes_vehiculo` VALUES ('41', ' SXT-411', 'wolsvagen ', 'gris ', '22 A B', '39');
INSERT INTO `residentes_vehiculo` VALUES ('42', 'MKV-568', 'kia ', 'blanca', '19 A B', '40');
INSERT INTO `residentes_vehiculo` VALUES ('43', 'MQZ-449', 'bmw ', 'azul ', '84', '41');
INSERT INTO `residentes_vehiculo` VALUES ('44', ' YFN-699', 'nizan ', 'rojo ', '56', '42');
INSERT INTO `residentes_vehiculo` VALUES ('45', '', '', '', '105', '43');
INSERT INTO `residentes_vehiculo` VALUES ('46', 'CXG-121', 'hinday ', 'azul ', '28 A B', '44');
INSERT INTO `residentes_vehiculo` VALUES ('47', ' BTM-902', 'skoda ', 'verde ', '55', '45');
INSERT INTO `residentes_vehiculo` VALUES ('48', ' MPS-727', 'mazda', 'blanca ', '29 A B', '46');
INSERT INTO `residentes_vehiculo` VALUES ('49', '', '', '', '80', '47');
INSERT INTO `residentes_vehiculo` VALUES ('50', ' EMU-319', 'mazda ', 'plateado ', '51', '48');
INSERT INTO `residentes_vehiculo` VALUES ('51', ' BOY-272', 'mazda ', 'plateado ', '57', '49');
INSERT INTO `residentes_vehiculo` VALUES ('52', ' HVP-6785', 'honda ', 'plateada', '53', '50');
INSERT INTO `residentes_vehiculo` VALUES ('53', '', '', '', '30 A B', '51');
INSERT INTO `residentes_vehiculo` VALUES ('54', 'EJX-125', 'optra ', 'gris ', '17 A B', '52');
INSERT INTO `residentes_vehiculo` VALUES ('55', ' BNP-819', 'chevrolet ', 'plateado ', '54', '53');
INSERT INTO `residentes_vehiculo` VALUES ('56', '', 'wolsvagen ', 'rojo ', '58', '54');
INSERT INTO `residentes_vehiculo` VALUES ('57', '', '', '', '26 A B', '55');
INSERT INTO `residentes_vehiculo` VALUES ('58', ' NAS-061', 'hiunday ', 'plateada', '104', '56');
INSERT INTO `residentes_vehiculo` VALUES ('59', ' CPS-852', 'audi ', 'verde', '82', '57');
INSERT INTO `residentes_vehiculo` VALUES ('60', ' CBO-152', 'bmw ', 'negro ', '25 A B', '58');
INSERT INTO `residentes_vehiculo` VALUES ('61', '', '', '', '106', '59');
INSERT INTO `residentes_vehiculo` VALUES ('62', '', '', '', '83', '60');
INSERT INTO `residentes_vehiculo` VALUES ('63', ' NCY-817', 'niza ', 'plateado', '16 A B', '61');
INSERT INTO `residentes_vehiculo` VALUES ('64', 'FUL-044', 'nizan ', 'blanco ', '24 A B', '62');
INSERT INTO `residentes_vehiculo` VALUES ('65', 'BTH-429', 'renault ', 'plateado ', '100', '63');
INSERT INTO `residentes_vehiculo` VALUES ('66', ' RMV-985', 'chevrolet ', 'beige', '81', '64');
INSERT INTO `residentes_vehiculo` VALUES ('67', ' DXM -102', 'toyota ', 'negra ', '85', '65');
INSERT INTO `residentes_vehiculo` VALUES ('68', 'DOL-380', 'ford ', 'rojo ', '15 A B', '66');
INSERT INTO `residentes_vehiculo` VALUES ('69', ' NCY-418', 'nisan ', 'gris ', '18 A B', '67');
INSERT INTO `residentes_vehiculo` VALUES ('70', ' IKV-978', 'chevrolet ', 'beige ', '79', '68');
INSERT INTO `residentes_vehiculo` VALUES ('71', '', '', '', '21 A B', '69');
INSERT INTO `residentes_vehiculo` VALUES ('72', ' BPD-500', 'chevrolet ', 'plateado ', '27 A B', '70');
INSERT INTO `residentes_vehiculo` VALUES ('73', '', '', '', '20 A B ', '71');
INSERT INTO `residentes_vehiculo` VALUES ('74', 'IS-247', 'renault ', 'plateado ', '61', '72');
INSERT INTO `residentes_vehiculo` VALUES ('75', 'BYF-224', 'toyota ', 'plateado ', '97', '73');
INSERT INTO `residentes_vehiculo` VALUES ('76', ' KGD-990', 'kiat ', 'negro ', '96', '74');
INSERT INTO `residentes_vehiculo` VALUES ('77', '', '', '', '94', '75');
INSERT INTO `residentes_vehiculo` VALUES ('78', ' NDS-943', 'tracker ', 'plateado', '48', '76');
INSERT INTO `residentes_vehiculo` VALUES ('79', ' BKY-096', 'chevrolet ', 'rojo ', '47', '77');
INSERT INTO `residentes_vehiculo` VALUES ('80', '', '', '', '50', '78');
INSERT INTO `residentes_vehiculo` VALUES ('81', ' MCT-023', 'wolsvagen ', 'gris', '90', '79');
INSERT INTO `residentes_vehiculo` VALUES ('82', '', '', '', '89', '80');
INSERT INTO `residentes_vehiculo` VALUES ('83', 'NCW-061', 'honda ', 'plateada', '42 A B', '81');
INSERT INTO `residentes_vehiculo` VALUES ('84', 'RIX-840', 'hiunday ', 'café ', '31 A B ', '82');
INSERT INTO `residentes_vehiculo` VALUES ('85', ' HGL-992 ', 'mitsubishi', 'roja ', '46', '83');
INSERT INTO `residentes_vehiculo` VALUES ('86', 'DCR-531', 'toyota ', 'gris ', '41 A B ', '84');
INSERT INTO `residentes_vehiculo` VALUES ('87', 'BCC-565', 'mazda ', 'gris ', '32 A B ', '85');
INSERT INTO `residentes_vehiculo` VALUES ('88', 'RGU-973', 'nizan ', 'plateada ', '23 A B ', '86');
INSERT INTO `residentes_vehiculo` VALUES ('89', 'DCO-322', 'kiat ', 'plateada ', '88', '87');
INSERT INTO `residentes_vehiculo` VALUES ('90', ' RK-840', 'renault ', 'rojo ', '40 A B ', '88');
INSERT INTO `residentes_vehiculo` VALUES ('91', 'BTV-726', 'chevrolet ', 'plateado ', '92', '89');
INSERT INTO `residentes_vehiculo` VALUES ('92', 'LFP-126', 'chevrolet ', 'azul ', '49', '90');
INSERT INTO `residentes_vehiculo` VALUES ('93', ' IFU-498', 'renault ', 'negro ', '87', '91');
INSERT INTO `residentes_vehiculo` VALUES ('94', ' CYH-228', 'renault', 'CYH-228', '60', '92');
INSERT INTO `residentes_vehiculo` VALUES ('95', ' BWN-291', 'honda ', 'azul ', '43 A B ', '93');
INSERT INTO `residentes_vehiculo` VALUES ('96', ' RBM-254', 'scala ', 'plateado ', '35 A B ', '94');
INSERT INTO `residentes_vehiculo` VALUES ('97', ' RAN-407', 'renault ', 'negro ', '86', '95');
INSERT INTO `residentes_vehiculo` VALUES ('98', 'CSH-801', 'jeep ', 'azul ', '98', '96');
INSERT INTO `residentes_vehiculo` VALUES ('99', ' KJI-016', 'wolsvagen ', 'blanca ', '39 A B ', '97');
INSERT INTO `residentes_vehiculo` VALUES ('100', '', '', '', '33 A B ', '98');
INSERT INTO `residentes_vehiculo` VALUES ('101', 'DQS-117', 'mg ', 'blanco ', '91', '99');
INSERT INTO `residentes_vehiculo` VALUES ('102', ' FEB-739', 'chevrolet ', 'plateado ', '95', '100');
INSERT INTO `residentes_vehiculo` VALUES ('103', ' DDI-831', 'renault ', 'café ', '93', '101');
INSERT INTO `residentes_vehiculo` VALUES ('104', ' ILW-077', 'mitsubishi ', 'plateado ', '45', '102');
INSERT INTO `residentes_vehiculo` VALUES ('105', '', '', '', '44', '103');
INSERT INTO `residentes_vehiculo` VALUES ('106', 'RBZ-077', 'bmw ', 'plateado', '36 A B', '104');
INSERT INTO `residentes_vehiculo` VALUES ('107', ' MOR-589', 'renault ', 'plateado', '37 A B', '105');
INSERT INTO `residentes_vehiculo` VALUES ('108', ' BWD-866', 'renault ', 'negro ', '34 A B', '106');
INSERT INTO `residentes_vehiculo` VALUES ('109', 'DVS-808', 'ford ', 'blanco ', '38 A B', '107');
INSERT INTO `residentes_vehiculo` VALUES ('110', ' IWL-189', 'nizan ', 'azul ', '135', '108');
INSERT INTO `residentes_vehiculo` VALUES ('111', ' TUP-147', 'aeroban ', 'blanca', '142', '109');
INSERT INTO `residentes_vehiculo` VALUES ('112', ' RMX-468', 'hiunday ', 'negro ', '204', '110');
INSERT INTO `residentes_vehiculo` VALUES ('113', ' BOT-038', 'chevrolet ', 'café ', '214 A B', '111');
INSERT INTO `residentes_vehiculo` VALUES ('114', ' BCH-735', 'mitsubishi ', 'blanco ', '211 A B', '112');
INSERT INTO `residentes_vehiculo` VALUES ('115', ' MKX-488', 'mada ', 'blanco ', '215 A B ', '113');
INSERT INTO `residentes_vehiculo` VALUES ('116', 'BDG-139', '', '', '140', '114');
INSERT INTO `residentes_vehiculo` VALUES ('117', ' RDY-017', 'nizan ', 'verde', '217 A B ', '115');
INSERT INTO `residentes_vehiculo` VALUES ('118', ' HJZ-064', 'nizan ', 'rojo ', '201', '116');
INSERT INTO `residentes_vehiculo` VALUES ('119', ' RIM-899', 'chevrolet ', 'negro ', '210 A B', '117');
INSERT INTO `residentes_vehiculo` VALUES ('120', ' BET-242', 'mazda ', 'rojo ', '208', '118');
INSERT INTO `residentes_vehiculo` VALUES ('121', '', '', '', '141', '119');
INSERT INTO `residentes_vehiculo` VALUES ('122', ' HCL-759', 'ford ', 'plateado ', '202', '120');
INSERT INTO `residentes_vehiculo` VALUES ('123', ' HQV-539', 'kia ', 'plateada ', '203', '121');
INSERT INTO `residentes_vehiculo` VALUES ('124', ' HKN-522', 'renault', 'negro ', '139', '122');
INSERT INTO `residentes_vehiculo` VALUES ('125', 'MBR-564', 'toyota', 'plateada ', '200', '123');
INSERT INTO `residentes_vehiculo` VALUES ('126', 'DMV-643', 'mercedes ', 'gris ', '144', '124');
INSERT INTO `residentes_vehiculo` VALUES ('127', ' DAD-608', 'chevrolet ', 'platedo ', '212 A B', '125');
INSERT INTO `residentes_vehiculo` VALUES ('128', ' BSO-307', 'chevrolet ', 'plateado ', '209 A B ', '126');
INSERT INTO `residentes_vehiculo` VALUES ('129', 'RAU-736', 'kia ', 'plateada', '206', '127');
INSERT INTO `residentes_vehiculo` VALUES ('130', ' VCT-468', 'kiat ', 'blanca ', '199', '128');
INSERT INTO `residentes_vehiculo` VALUES ('131', ' RLK-633', 'renault ', 'negro ', '146', '129');
INSERT INTO `residentes_vehiculo` VALUES ('132', ' ELT-699', 'ford', 'azul ', '147', '130');
INSERT INTO `residentes_vehiculo` VALUES ('133', '', '', '', '207', '131');
INSERT INTO `residentes_vehiculo` VALUES ('134', 'RLW-081', 'kiat', 'plateada', '143', '132');
INSERT INTO `residentes_vehiculo` VALUES ('135', 'NR-135', 'nizan ', 'plateado ', '145', '133');
INSERT INTO `residentes_vehiculo` VALUES ('136', ' IFN-965', 'kia ', 'azul ', '205', '134');
INSERT INTO `residentes_vehiculo` VALUES ('137', 'DNR-464', 'ford ', 'gris ', '138', '135');
INSERT INTO `residentes_vehiculo` VALUES ('138', 'DXK-311', 'mazda ', 'roja', '137', '136');
INSERT INTO `residentes_vehiculo` VALUES ('139', ' ZIS-256', 'skoda ', 'rojo ', '149', '137');
INSERT INTO `residentes_vehiculo` VALUES ('140', ' VBK-250', 'chevrolet ', 'plateado ', '213 A B', '138');
INSERT INTO `residentes_vehiculo` VALUES ('141', '', '', '', '148', '139');
INSERT INTO `residentes_vehiculo` VALUES ('142', ' BDI-334', 'chevrolet', 'blanco ', '136', '140');
INSERT INTO `residentes_vehiculo` VALUES ('143', 'RAL-609', 'kiat ', 'rojo ', '216 A B', '141');
INSERT INTO `residentes_vehiculo` VALUES ('144', ' CZA-465', 'chevrolet ', 'gris ', '195', '142');
INSERT INTO `residentes_vehiculo` VALUES ('145', ' CQM 417', 'audi', 'beige ', '129', '143');
INSERT INTO `residentes_vehiculo` VALUES ('146', '', '', '', '226 A B', '144');
INSERT INTO `residentes_vehiculo` VALUES ('147', ' WND-046', 'renault ', 'blanco ', '227 A B', '145');
INSERT INTO `residentes_vehiculo` VALUES ('148', 'ZZV-940 ', 'renault ', 'rojo ', '151', '146');
INSERT INTO `residentes_vehiculo` VALUES ('149', ' BNB-464', 'montero ', 'azul', '220', '147');
INSERT INTO `residentes_vehiculo` VALUES ('150', ' CXM-929', 'renault ', 'plateado ', '191', '148');
INSERT INTO `residentes_vehiculo` VALUES ('151', 'RHU-378', 'kolyang ', 'café', '130', '149');
INSERT INTO `residentes_vehiculo` VALUES ('152', ' KKK-766 ', 'chevrolet ', 'gris ', '78-133', '150');
INSERT INTO `residentes_vehiculo` VALUES ('153', ' BOX-160', 'mazda ', 'plateado ', '219 A B', '151');
INSERT INTO `residentes_vehiculo` VALUES ('154', ' FNZ-891', 'hiunday ', 'gris ', '194', '152');
INSERT INTO `residentes_vehiculo` VALUES ('155', '', '', '', '192', '153');
INSERT INTO `residentes_vehiculo` VALUES ('156', ' FNQ-004', 'chevrolet ', 'blanco ', '225 A B', '154');
INSERT INTO `residentes_vehiculo` VALUES ('157', ' DDP-746', 'nizan ', 'plateada ', '221 A B', '155');
INSERT INTO `residentes_vehiculo` VALUES ('158', 'BZE-077', 'WILSVAGEN ', 'GRIS ', '190', '156');
INSERT INTO `residentes_vehiculo` VALUES ('159', ' EBO-373', 'mazda ', 'rojo ', '193', '157');
INSERT INTO `residentes_vehiculo` VALUES ('160', ' HIX-158', 'chevrolet ', 'café ', '197', '158');
INSERT INTO `residentes_vehiculo` VALUES ('161', 'BGR-371', 'nizan ', 'rojo ', '222 A B', '159');
INSERT INTO `residentes_vehiculo` VALUES ('162', '', '', '', '157', '160');
INSERT INTO `residentes_vehiculo` VALUES ('163', '', '', '', '154', '161');
INSERT INTO `residentes_vehiculo` VALUES ('164', ' NBV-737', 'chevrolet ', 'plateado ', '155', '162');
INSERT INTO `residentes_vehiculo` VALUES ('165', ' EBN-954', 'mazda ', 'plateada ', '218 A B', '163');
INSERT INTO `residentes_vehiculo` VALUES ('166', '', '', '', '198', '164');
INSERT INTO `residentes_vehiculo` VALUES ('167', 'VCV-544', 'wolsvagen ', 'plateado ', '1538', '165');
INSERT INTO `residentes_vehiculo` VALUES ('168', '', '', '', '158', '166');
INSERT INTO `residentes_vehiculo` VALUES ('169', ' JDY-783', 'renault', 'plateado ', '131', '167');
INSERT INTO `residentes_vehiculo` VALUES ('170', ' FOS-840', 'toyota ', 'plateada ', '156', '168');
INSERT INTO `residentes_vehiculo` VALUES ('171', ' EWT-008', 'chevrolet', 'negra ', '115 A B', '169');
INSERT INTO `residentes_vehiculo` VALUES ('172', 'RLX-173', 'ford', 'blanco ', '134', '170');
INSERT INTO `residentes_vehiculo` VALUES ('173', ' BSJ-052', 'renault', 'gris ', '132', '171');
INSERT INTO `residentes_vehiculo` VALUES ('174', 'NBV-998', 'huster', 'negra ', '152', '172');
INSERT INTO `residentes_vehiculo` VALUES ('175', ' CJD-069', 'toyota ', 'verde ', '223 A B', '173');
INSERT INTO `residentes_vehiculo` VALUES ('176', 'ZXS-887', 'renault ', 'beige', '224 A B', '174');
INSERT INTO `residentes_vehiculo` VALUES ('177', 'CTW-835', 'ford', 'rojo ', '196', '175');
INSERT INTO `residentes_vehiculo` VALUES ('178', ' IFO-713', 'renault ', 'plateado ', '240 A B', '176');
INSERT INTO `residentes_vehiculo` VALUES ('179', 'HSX-208', 'renault', 'negro ', '185', '177');
INSERT INTO `residentes_vehiculo` VALUES ('180', 'IJX-535', 'renaut ', 'café', '119', '178');
INSERT INTO `residentes_vehiculo` VALUES ('181', 'WNV-430', 'hiunday', 'blanca', '182', '179');
INSERT INTO `residentes_vehiculo` VALUES ('182', 'ZVU-166', 'zotye ', 'blanco ', '232 A B', '180');
INSERT INTO `residentes_vehiculo` VALUES ('183', 'INL-771', 'chevrolet ', 'plateado ', '188', '181');
INSERT INTO `residentes_vehiculo` VALUES ('184', 'RAN-446', 'toyota ', 'plateada', '71', '182');
INSERT INTO `residentes_vehiculo` VALUES ('185', ' HDK-735', 'renault ', 'rojo', '189', '183');
INSERT INTO `residentes_vehiculo` VALUES ('186', 'VCW-047', 'mazda', 'roja ', '229 A B', '184');
INSERT INTO `residentes_vehiculo` VALUES ('187', 'FNO-499', 'mazda ', 'roja ', '233 A B', '185');
INSERT INTO `residentes_vehiculo` VALUES ('188', ' UDN-070', 'renault ', 'rojo ', '236 A B', '186');
INSERT INTO `residentes_vehiculo` VALUES ('189', ' HER-812', 'chevrolet ', 'gris', '121', '187');
INSERT INTO `residentes_vehiculo` VALUES ('190', ' RCT-865', 'chevrolet ', 'plateado ', '234 A B', '188');
INSERT INTO `residentes_vehiculo` VALUES ('191', ' EBO-373', 'kiat ', 'blanca ', '163', '189');
INSERT INTO `residentes_vehiculo` VALUES ('192', '', '', '', '238 A B ', '190');
INSERT INTO `residentes_vehiculo` VALUES ('193', ' FPQ-991', 'nissan ', 'gris ', '184', '191');
INSERT INTO `residentes_vehiculo` VALUES ('194', ' CDP-914', 'optra ', 'plateado ', '231 A B', '192');
INSERT INTO `residentes_vehiculo` VALUES ('195', '', '', '', '114 A B', '193');
INSERT INTO `residentes_vehiculo` VALUES ('196', '', '', '', '183', '194');
INSERT INTO `residentes_vehiculo` VALUES ('197', ' RGK-066', 'WOLSVAGEN ', 'negro ', '160', '195');
INSERT INTO `residentes_vehiculo` VALUES ('198', ' JDR-966', 'bmw ', 'plateado', '230', '196');
INSERT INTO `residentes_vehiculo` VALUES ('199', ' VBY-854', 'renault ', 'plateado ', '162', '197');
INSERT INTO `residentes_vehiculo` VALUES ('200', '  KFR-761', 'kiat', 'negra  ', '113 A B ', '198');
INSERT INTO `residentes_vehiculo` VALUES ('201', '', '', '', '120', '199');
INSERT INTO `residentes_vehiculo` VALUES ('202', 'BMO-067', 'kia ', 'café', '235 A B', '200');
INSERT INTO `residentes_vehiculo` VALUES ('203', ' HAV-757', 'renault', 'negro ', '164', '201');
INSERT INTO `residentes_vehiculo` VALUES ('204', '', '', '', '124', '202');
INSERT INTO `residentes_vehiculo` VALUES ('205', ' HAN-182', 'dodge ', 'negra ', '123', '203');
INSERT INTO `residentes_vehiculo` VALUES ('206', 'DXO-574', 'kiat  ', 'plateado', '159', '204');
INSERT INTO `residentes_vehiculo` VALUES ('207', ' BJU-581', 'nizan ', 'verde', '161', '205');
INSERT INTO `residentes_vehiculo` VALUES ('208', ' BZA-365', 'hiunday ', 'gris ', '237 A B', '206');
INSERT INTO `residentes_vehiculo` VALUES ('209', '', '', '', '242 A B ', '207');
INSERT INTO `residentes_vehiculo` VALUES ('210', ' UCW-047', 'mazda ', 'roja ', '239 A B', '208');
INSERT INTO `residentes_vehiculo` VALUES ('211', '', '', '', '186', '209');
INSERT INTO `residentes_vehiculo` VALUES ('212', ' ZZX-698', 'blanco ', 'blanco', '76', '242');
INSERT INTO `residentes_vehiculo` VALUES ('213', 'CFN-190', 'chevrolet ', 'plateado ', '176', '243');
INSERT INTO `residentes_vehiculo` VALUES ('214', 'JCW-480', 'ford ', 'blanco ', '67', '244');
INSERT INTO `residentes_vehiculo` VALUES ('215', ' JDM-320', 'chevrolet ', 'azul ', '180', '245');
INSERT INTO `residentes_vehiculo` VALUES ('216', '', '', '', '247 A B', '246');
INSERT INTO `residentes_vehiculo` VALUES ('217', '', '', '', '72', '247');
INSERT INTO `residentes_vehiculo` VALUES ('218', ' GCJ-836', 'wolsvagen', 'verde', '241 A B', '248');
INSERT INTO `residentes_vehiculo` VALUES ('219', 'MTQ-572', 'nissan ', 'rojo', '65', '249');
INSERT INTO `residentes_vehiculo` VALUES ('220', 'CXM-264', 'kiat ', 'plateada ', '181', '250');
INSERT INTO `residentes_vehiculo` VALUES ('221', ' DQN-366', 'daster ', 'plateado ', '118', '251');
INSERT INTO `residentes_vehiculo` VALUES ('222', ' NET-750', 'ford ', 'plateada', '69', '252');
INSERT INTO `residentes_vehiculo` VALUES ('223', 'FNU-543', 'ford ', 'plateado', '167', '253');
INSERT INTO `residentes_vehiculo` VALUES ('224', ' CJF-522', 'renault ', 'negro', '245 A B', '254');
INSERT INTO `residentes_vehiculo` VALUES ('225', ' CIQ-172', 'chevrolet ', 'rojo ', '165', '255');
INSERT INTO `residentes_vehiculo` VALUES ('226', 'GQK -324', 'sangyong ', 'plateado', '116 A B', '256');
INSERT INTO `residentes_vehiculo` VALUES ('227', 'EJZ-755', 'ford ', 'rojo ', '246 A B', '257');
INSERT INTO `residentes_vehiculo` VALUES ('228', ' IDW-592', 'kiat ', 'azul ', '250 A B', '258');
INSERT INTO `residentes_vehiculo` VALUES ('229', 'BYK-144', 'kiat ', 'rojo ', '128', '259');
INSERT INTO `residentes_vehiculo` VALUES ('230', ' ZXV-492', 'chevrolet ', 'blanco ', '122', '260');
INSERT INTO `residentes_vehiculo` VALUES ('231', 'RGW-602', 'toyota ', 'gris ', '73', '261');
INSERT INTO `residentes_vehiculo` VALUES ('232', ' DBR-652', 'chevrolet', 'plateado', '248 A B', '262');
INSERT INTO `residentes_vehiculo` VALUES ('233', ' EMR-580', 'nizan ', 'plateada ', '187', '263');
INSERT INTO `residentes_vehiculo` VALUES ('234', 'MBZ-554', 'hinday', 'negro  ', '127', '264');
INSERT INTO `residentes_vehiculo` VALUES ('235', ' USY1-138', 'twizy ', 'negro ', '243 A B ', '265');
INSERT INTO `residentes_vehiculo` VALUES ('236', 'EJO-706', 'nizan ', 'rojo ', '166', '266');
INSERT INTO `residentes_vehiculo` VALUES ('237', ' HKR-763', 'renault ', 'negro ', '117', '267');
INSERT INTO `residentes_vehiculo` VALUES ('238', ' HBO-542', 'Ford ', 'plateado ', '66', '268');
INSERT INTO `residentes_vehiculo` VALUES ('239', 'NCZ-729', 'kiat ', 'negra', '70', '269');
INSERT INTO `residentes_vehiculo` VALUES ('240', ' FNN-010', 'ford ', 'rojo ', '68', '270');
INSERT INTO `residentes_vehiculo` VALUES ('241', '', '', '', '126', '271');
INSERT INTO `residentes_vehiculo` VALUES ('242', '', '', '', '125', '272');
INSERT INTO `residentes_vehiculo` VALUES ('243', 'DEQ-576', 'nizan ', 'café', '244 A B', '273');
INSERT INTO `residentes_vehiculo` VALUES ('244', 'UBO-833', 'magindra ', 'plateado ', '1 A B ', '274');
INSERT INTO `residentes_vehiculo` VALUES ('245', 'SPS-030', 'chevrolet ', 'blanco ', '249 A B', '275');
INSERT INTO `residentes_vehiculo` VALUES ('246', 'REV-262', 'chevrolet', 'plateado', '228 A B', '556');

-- ----------------------------
-- Table structure for visitantes_entrada
-- ----------------------------
DROP TABLE IF EXISTS `visitantes_entrada`;
CREATE TABLE `visitantes_entrada` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `apartamento_id` int(11) NOT NULL,
  `visitante_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visitantes_entrada_visitante_id_bfc2f4e9_fk_visitante` (`visitante_id`),
  KEY `apartamento_id` (`apartamento_id`),
  CONSTRAINT `visitantes_entrada_ibfk_1` FOREIGN KEY (`apartamento_id`) REFERENCES `residentes_propiedad` (`id`),
  CONSTRAINT `visitantes_entrada_visitante_id_bfc2f4e9_fk_visitante` FOREIGN KEY (`visitante_id`) REFERENCES `visitantes_visitante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of visitantes_entrada
-- ----------------------------

-- ----------------------------
-- Table structure for visitantes_test
-- ----------------------------
DROP TABLE IF EXISTS `visitantes_test`;
CREATE TABLE `visitantes_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of visitantes_test
-- ----------------------------

-- ----------------------------
-- Table structure for visitantes_visitante
-- ----------------------------
DROP TABLE IF EXISTS `visitantes_visitante`;
CREATE TABLE `visitantes_visitante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(100) NOT NULL,
  `numero_documento` varchar(12) NOT NULL,
  `fecha_expedicion_documento` date NOT NULL,
  `primer_nombre` varchar(50) NOT NULL,
  `segundo_nombre` varchar(50) DEFAULT NULL,
  `primer_apellido` varchar(25) NOT NULL,
  `segundo_apellido` varchar(25) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `celular` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contacto_emergencia` varchar(100) NOT NULL,
  `celular_emergencia` varchar(12) NOT NULL,
  `eps` varchar(50) NOT NULL,
  `razon_social_empresa` varchar(50) DEFAULT NULL,
  `arl` varchar(50) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `lugar_expedicion_documento_id` varchar(5) NOT NULL,
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
  CONSTRAINT `visitantes_visitante_lugar_expedicion_doc_633dc981_fk_parametri` FOREIGN KEY (`lugar_expedicion_documento_id`) REFERENCES `parametricos_municipio` (`codigo`),
  CONSTRAINT `visitantes_visitante_rh_id_50ba43a5_fk_parametricos_rh_id` FOREIGN KEY (`rh_id`) REFERENCES `parametricos_rh` (`id`),
  CONSTRAINT `visitantes_visitante_tipo_documento_id_f104f071_fk_parametri` FOREIGN KEY (`tipo_documento_id`) REFERENCES `parametricos_tipodocumento` (`id`),
  CONSTRAINT `visitantes_visitante_tipo_visitante_id_abc940b6_fk_parametri` FOREIGN KEY (`tipo_visitante_id`) REFERENCES `parametricos_tipovisitante` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of visitantes_visitante
-- ----------------------------
INSERT INTO `visitantes_visitante` VALUES ('1', '1', '1', '2019-10-22', '1', '1', '1', '1', '2019-10-22', '1', '1', '1', '1', '1', '1', '1', '2019-10-22 13:17:53.000000', '2019-10-22 13:17:57.000000', '1', '05021', '1', '1', '1');
