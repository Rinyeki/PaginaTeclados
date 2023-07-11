CREATE DATABASE  IF NOT EXISTS `kissu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kissu`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: kissu
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add categoria',7,'add_categoria'),(26,'Can change categoria',7,'change_categoria'),(27,'Can delete categoria',7,'delete_categoria'),(28,'Can view categoria',7,'view_categoria'),(29,'Can add estado_pedido',8,'add_estado_pedido'),(30,'Can change estado_pedido',8,'change_estado_pedido'),(31,'Can delete estado_pedido',8,'delete_estado_pedido'),(32,'Can view estado_pedido',8,'view_estado_pedido'),(33,'Can add pedido',9,'add_pedido'),(34,'Can change pedido',9,'change_pedido'),(35,'Can delete pedido',9,'delete_pedido'),(36,'Can view pedido',9,'view_pedido'),(37,'Can add producto',10,'add_producto'),(38,'Can change producto',10,'change_producto'),(39,'Can delete producto',10,'delete_producto'),(40,'Can view producto',10,'view_producto'),(41,'Can add producto_pedido',11,'add_producto_pedido'),(42,'Can change producto_pedido',11,'change_producto_pedido'),(43,'Can delete producto_pedido',11,'delete_producto_pedido'),(44,'Can view producto_pedido',11,'view_producto_pedido');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$vPNd2wzV70qRhPipuV4PDi$HMO/NNzDND5Ji38DgVNlz6PbFMKXEk+Hri0mo0BCHnc=','2023-07-10 23:02:28.311944',1,'rinyeki','','','',1,1,'2023-07-10 00:16:21.936079');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-07-10 00:19:36.773853','1','Teclados',1,'[{\"added\": {}}]',7,1),(2,'2023-07-10 00:19:42.590445','2','Keycaps',1,'[{\"added\": {}}]',7,1),(3,'2023-07-10 00:20:09.107929','1','Obinslab Ano pro 2',1,'[{\"added\": {}}]',10,1),(4,'2023-07-10 00:20:28.835167','2','Teclado Quarz Rose K55',1,'[{\"added\": {}}]',10,1),(5,'2023-07-10 00:21:06.508157','3','Teclado Generico Gamer',1,'[{\"added\": {}}]',10,1),(6,'2023-07-10 00:21:21.660239','4','Keycaps Brown',1,'[{\"added\": {}}]',10,1),(7,'2023-07-10 00:21:34.896652','5','Keycap Pudding',1,'[{\"added\": {}}]',10,1),(8,'2023-07-10 00:22:06.607739','6','Keycap Pink',1,'[{\"added\": {}}]',10,1),(9,'2023-07-10 23:02:45.819753','1','Obinstlab Ano pro 2',2,'[{\"changed\": {\"fields\": [\"Nom producto\"]}}]',10,1),(10,'2023-07-11 04:21:30.148873','5','Keycap Pudding',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',10,1),(11,'2023-07-11 04:21:56.695398','6','Keycap Pink',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',10,1),(12,'2023-07-11 04:21:59.138361','5','Keycap Pudding',2,'[]',10,1),(13,'2023-07-11 04:22:05.970434','4','Keycaps Brown',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',10,1),(14,'2023-07-11 04:22:18.327074','3','Teclado Generico Gamer',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',10,1),(15,'2023-07-11 04:22:20.394048','2','Teclado Quarz Rose K55',2,'[]',10,1),(16,'2023-07-11 04:22:26.101256','2','Teclado Quarz Rose K55',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',10,1),(17,'2023-07-11 04:22:29.829719','1','Obinstlab Ano pro 2',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',10,1),(18,'2023-07-11 04:22:33.754589','1','Obinstlab Ano pro 2',2,'[]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'myapp','categoria'),(8,'myapp','estado_pedido'),(9,'myapp','pedido'),(10,'myapp','producto'),(11,'myapp','producto_pedido'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-07-09 22:59:53.695834'),(2,'auth','0001_initial','2023-07-09 22:59:54.045157'),(3,'admin','0001_initial','2023-07-09 22:59:54.183044'),(4,'admin','0002_logentry_remove_auto_add','2023-07-09 22:59:54.192469'),(5,'admin','0003_logentry_add_action_flag_choices','2023-07-09 22:59:54.203879'),(6,'contenttypes','0002_remove_content_type_name','2023-07-09 22:59:54.255956'),(7,'auth','0002_alter_permission_name_max_length','2023-07-09 22:59:54.298118'),(8,'auth','0003_alter_user_email_max_length','2023-07-09 22:59:54.321925'),(9,'auth','0004_alter_user_username_opts','2023-07-09 22:59:54.331845'),(10,'auth','0005_alter_user_last_login_null','2023-07-09 22:59:54.410710'),(11,'auth','0006_require_contenttypes_0002','2023-07-09 22:59:54.414182'),(12,'auth','0007_alter_validators_add_error_messages','2023-07-09 22:59:54.422116'),(13,'auth','0008_alter_user_username_max_length','2023-07-09 22:59:54.468742'),(14,'auth','0009_alter_user_last_name_max_length','2023-07-09 22:59:54.508918'),(15,'auth','0010_alter_group_name_max_length','2023-07-09 22:59:54.530742'),(16,'auth','0011_update_proxy_permissions','2023-07-09 22:59:54.539172'),(17,'auth','0012_alter_user_first_name_max_length','2023-07-09 22:59:54.579931'),(18,'myapp','0001_initial','2023-07-09 22:59:54.759382'),(19,'sessions','0001_initial','2023-07-09 22:59:54.788152'),(20,'myapp','0002_alter_producto_stock','2023-07-10 00:02:35.367913'),(21,'myapp','0003_producto_foto','2023-07-11 04:20:23.951935');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('f07nff70mkwb3zgh060rrt8i2tyd205u','.eJxVjDsOgzAQBe-ydWT5hwWU6XMGtOtdB5IIS8ZUiLsTJBraNzNvg4ilTDVDv-0PGHCt47AuUoaJoQcDt40wfmU-AX9wfmcV81zLROpU1EUX9cosv-fl3g5GXMZ_nax3bYPk2FiMnSadkLw21LjgO5cwpoaDF04-kHhES1paNsIYtHUt7Acpoz01:1qJ5Jx:X3Vi7jHdw0FQfDB6SixuoHEOniF8KT1U9n5jJDWJBD8','2023-07-25 04:49:53.468298'),('nbv6dvejrrx8zq6zis9sa9g3ngztqb6g','.eJxVjDsOgzAQBe_iOrL8wzKU6XMGtOtdB5IIS7apEHcPSBRJ-2bebGKEtU3jWrmMM4lBaHH73RDim5cT0AuWZ5YxL63MKE9FXrTKRyb-3C_3LzBBnY53Ms6GDtCSNhB7hSoBOqWxs971NkFMHXnHlJxHdgAGFQfSTOCVseGIRihlblkM275_AfOiPTU:1qIy9Q:OAMb9k82CJ2-w3tqEaZnOlk6yA3Uu-CjnVvwR63mTBE','2023-07-24 21:10:32.988349'),('yg7x1ood41aw6qycjuoi71kzalokoh15','.eJyrVkpOLCrKLMlXsqpWMgURmSnxBUX5KaXJIDFTHaW8_FwkASXv1MrkxAKFgNKUlMy8dCUdpcTk0tzSnMQUkGpLS3MDHaXikvzkbCUr49raWgAZqyAg:1qJ0Ee:dI8mdO-yFq8mvYKVcqdovccLl9iwvWojTNbr0WK4zFU','2023-07-24 23:24:04.061227');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_categoria`
--

DROP TABLE IF EXISTS `myapp_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nom_categoria` varchar(20) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_categoria`
--

LOCK TABLES `myapp_categoria` WRITE;
/*!40000 ALTER TABLE `myapp_categoria` DISABLE KEYS */;
INSERT INTO `myapp_categoria` VALUES (1,'Teclados'),(2,'Keycaps');
/*!40000 ALTER TABLE `myapp_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_estado_pedido`
--

DROP TABLE IF EXISTS `myapp_estado_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_estado_pedido` (
  `id_estado` int NOT NULL AUTO_INCREMENT,
  `nom_estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_estado_pedido`
--

LOCK TABLES `myapp_estado_pedido` WRITE;
/*!40000 ALTER TABLE `myapp_estado_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_estado_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_pedido`
--

DROP TABLE IF EXISTS `myapp_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `total_pedido` double NOT NULL,
  `id_estado` int NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `myapp_pedido_id_estado_50d371bd_fk_myapp_estado_pedido_id_estado` (`id_estado`),
  CONSTRAINT `myapp_pedido_id_estado_50d371bd_fk_myapp_estado_pedido_id_estado` FOREIGN KEY (`id_estado`) REFERENCES `myapp_estado_pedido` (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_pedido`
--

LOCK TABLES `myapp_pedido` WRITE;
/*!40000 ALTER TABLE `myapp_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_producto`
--

DROP TABLE IF EXISTS `myapp_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nom_producto` varchar(30) NOT NULL,
  `precio_producto` int NOT NULL,
  `stock` int NOT NULL,
  `id_categoria` int NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `myapp_producto_id_categoria_3cf89def_fk_myapp_cat` (`id_categoria`),
  CONSTRAINT `myapp_producto_id_categoria_3cf89def_fk_myapp_cat` FOREIGN KEY (`id_categoria`) REFERENCES `myapp_categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_producto`
--

LOCK TABLES `myapp_producto` WRITE;
/*!40000 ALTER TABLE `myapp_producto` DISABLE KEYS */;
INSERT INTO `myapp_producto` VALUES (1,'Obinstlab Ano pro 2',29990,5,1,'images/teclado.png'),(2,'Teclado Quarz Rose K55',45000,3,1,'images/teclado2.jpg'),(3,'Teclado Generico Gamer',10000,10,1,'images/teclado3.jpg'),(4,'Keycaps Brown',5990,4,2,'images/Keycaps3.png'),(5,'Keycap Pudding',19990,10,2,'images/Keycaps1.png'),(6,'Keycap Pink',12990,5,2,'images/Keycaps2.png');
/*!40000 ALTER TABLE `myapp_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_producto_pedido`
--

DROP TABLE IF EXISTS `myapp_producto_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_producto_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_producto` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_producto_pedid_id_pedido_7f5ff8d6_fk_myapp_ped` (`id_pedido`),
  KEY `myapp_producto_pedid_id_producto_0cfdd8a1_fk_myapp_pro` (`id_producto`),
  CONSTRAINT `myapp_producto_pedid_id_pedido_7f5ff8d6_fk_myapp_ped` FOREIGN KEY (`id_pedido`) REFERENCES `myapp_pedido` (`id_pedido`),
  CONSTRAINT `myapp_producto_pedid_id_producto_0cfdd8a1_fk_myapp_pro` FOREIGN KEY (`id_producto`) REFERENCES `myapp_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_producto_pedido`
--

LOCK TABLES `myapp_producto_pedido` WRITE;
/*!40000 ALTER TABLE `myapp_producto_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_producto_pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-11  0:52:19
