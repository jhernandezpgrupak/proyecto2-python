/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.24-MariaDB : Database - python
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`python` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `python`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add task',7,'add_task'),(26,'Can change task',7,'change_task'),(27,'Can delete task',7,'delete_task'),(28,'Can view task',7,'view_task');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (1,'pbkdf2_sha256$390000$UPKdeg3OVLMgEvUzK86rEv$Q4i2wL4p6Pf2N2S/lTArzeYdp/ba8+YrbqVdjG6nOg0=','2023-02-10 17:26:34.611443',1,'jhernandezp','','','jhernandezp@grupak.com.mx',1,1,'2023-02-02 22:34:15.612543');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (1,'2023-02-03 17:06:52.623998','1','Task object (1)',1,'[{\"added\": {}}]',7,1),(2,'2023-02-03 17:07:01.888406','1','Task object (1)',3,'',7,1),(3,'2023-02-03 17:07:33.172903','2','Task object (2)',1,'[{\"added\": {}}]',7,1),(4,'2023-02-07 17:05:06.656488','1','Task object (1)',1,'[{\"added\": {}}]',7,1),(5,'2023-02-07 17:07:29.716276','1','Task object (1)',2,'[{\"changed\": {\"fields\": [\"Important\"]}}]',7,1),(6,'2023-02-07 17:45:12.036715','2','Tarea dos by jhernandezp',1,'[{\"added\": {}}]',7,1);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'myapp','task'),(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2023-02-02 22:28:20.427850'),(2,'auth','0001_initial','2023-02-02 22:28:20.816388'),(3,'admin','0001_initial','2023-02-02 22:28:20.909023'),(4,'admin','0002_logentry_remove_auto_add','2023-02-02 22:28:20.925506'),(5,'admin','0003_logentry_add_action_flag_choices','2023-02-02 22:28:20.931488'),(6,'contenttypes','0002_remove_content_type_name','2023-02-02 22:28:20.987467'),(7,'auth','0002_alter_permission_name_max_length','2023-02-02 22:28:21.031350'),(8,'auth','0003_alter_user_email_max_length','2023-02-02 22:28:21.056283'),(9,'auth','0004_alter_user_username_opts','2023-02-02 22:28:21.064263'),(10,'auth','0005_alter_user_last_login_null','2023-02-02 22:28:21.100105'),(11,'auth','0006_require_contenttypes_0002','2023-02-02 22:28:21.103095'),(12,'auth','0007_alter_validators_add_error_messages','2023-02-02 22:28:21.110078'),(13,'auth','0008_alter_user_username_max_length','2023-02-02 22:28:21.128029'),(14,'auth','0009_alter_user_last_name_max_length','2023-02-02 22:28:21.142992'),(15,'auth','0010_alter_group_name_max_length','2023-02-02 22:28:21.158946'),(16,'auth','0011_update_proxy_permissions','2023-02-02 22:28:21.167922'),(17,'auth','0012_alter_user_first_name_max_length','2023-02-02 22:28:21.188865'),(18,'myapp','0001_initial','2023-02-02 22:28:21.253383'),(19,'sessions','0001_initial','2023-02-02 22:28:21.282333'),(20,'myapp','0002_remove_task_user','2023-02-02 22:29:38.320077');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('8yy4o41pg6t6m00ipxgfiouio9bkxoz3','.eJxVjEEOwiAQAP_C2ZClpcB69N43EGAXqZqSlPZk_Lsh6UGvM5N5Cx-Ovfij8eYXElehxOWXxZCevHZBj7Deq0x13bclyp7I0zY5V-LX7Wz_BiW00rfACTBNYBQMNqIbtcspG80OIOpxcpYoIOiAkQcktApIIwwmATNk8fkCwkc3Pw:1pQVpP:Bqk8vIZw0vO288AQZqYSwrHmr8f1ZKJ6RfCplC2r6Sc','2023-02-24 16:00:47.098211'),('upcyqvyw2cfasbmjku575lhqdoohyud8','.eJxVjEEOwiAQAP_C2ZClpcB69N43EGAXqZqSlPZk_Lsh6UGvM5N5Cx-Ovfij8eYXElehxOWXxZCevHZBj7Deq0x13bclyp7I0zY5V-LX7Wz_BiW00rfACTBNYBQMNqIbtcspG80OIOpxcpYoIOiAkQcktApIIwwmATNk8fkCwkc3Pw:1pQVpP:Bqk8vIZw0vO288AQZqYSwrHmr8f1ZKJ6RfCplC2r6Sc','2023-02-24 16:00:47.293719'),('vr7crywn4wzna6l1uu1yujcw1r02df0h','.eJxVjEEOwiAQAP_C2ZClpcB69N43EGAXqZqSlPZk_Lsh6UGvM5N5Cx-Ovfij8eYXElehxOWXxZCevHZBj7Deq0x13bclyp7I0zY5V-LX7Wz_BiW00rfACTBNYBQMNqIbtcspG80OIOpxcpYoIOiAkQcktApIIwwmATNk8fkCwkc3Pw:1pPS7c:ZVsKQGY5NrBdqpr1w0ezQYSagACY6b_yh1c7nueCQgQ','2023-02-21 17:51:12.805477');

/*Table structure for table `myapp_task` */

DROP TABLE IF EXISTS `myapp_task`;

CREATE TABLE `myapp_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `datecompleted` datetime DEFAULT NULL,
  `important` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `myapp_task_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `myapp_task` */

insert  into `myapp_task`(`id`,`title`,`description`,`created`,`datecompleted`,`important`,`user_id`) values (1,'Tarea 1','Primera tarea numero 1.','2023-02-07 17:05:06','2023-02-07 17:05:01',1,1),(4,'Cuarta tarea','Cuarta tarea','2023-02-07 18:25:24','2023-02-08 21:16:39',0,1),(5,'Quinta tarea actualizada','Quinta tarea sin informacion actualizada','2023-02-07 21:06:45','2023-02-09 22:40:30',0,1),(6,'Sexta tarea','Sexta tarea, implementando bootstrap 5','2023-02-09 22:25:25',NULL,1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
