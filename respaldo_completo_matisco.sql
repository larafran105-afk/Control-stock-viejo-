-- MySQL dump 10.13  Distrib 8.4.3, for Win64 (x86_64)
--
-- Host: localhost    Database: db_inventory
-- ------------------------------------------------------
-- Server version	8.4.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` VALUES (2,12,'HUGO CRACK','Sumó stock a Sprite 3l x 6u (2026-01-23 - Cristina CACA): 68 -> 73 (+5 unidades)','2026-01-27 11:05:09','2026-01-27 11:05:09'),(3,12,'HUGO CRACK','Sumó stock a Sprite 3l x 6u (2026-01-23 - Cristina CACA): 73 -> 78 (+5 unidades)','2026-01-27 20:17:09','2026-01-27 20:17:09'),(4,12,'HUGO CRACK','Restó stock a Sprite 3l x 6u (2026-01-23 - Cristina CACA): 78 -> 73 (-5 unidades)','2026-01-27 20:17:16','2026-01-27 20:17:16'),(5,12,'HUGO CRACK','Sumó stock a Sprite 3l x 6u (2026-01-23 - Cristina CACA): 73 -> 78 (+5 unidades)','2026-01-27 20:20:53','2026-01-27 20:20:53'),(6,12,'HUGO CRACK','Restó stock a Sprite 3l x 6u (2026-01-23 - Cristina CACA): 78 -> 73 (-5 unidades)','2026-01-27 20:20:59','2026-01-27 20:20:59'),(7,12,'HUGO CRACK','Sumó stock a Sprite 3l x 6u (2026-01-23 - Cristina CACA): 73 -> 78 (+5 unidades)','2026-01-27 20:22:17','2026-01-27 20:22:17'),(8,12,'HUGO CRACK','Restó stock a Sprite 3l x 6u (2026-01-23 - Cristina CACA): 78 -> 73 (-5 unidades)','2026-01-27 20:22:24','2026-01-27 20:22:24'),(9,22,'Prueba','Restó stock a Sprite 3l x 6u (2026-01-23 - Cristina CACA): 73 -> 70 (-3 unidades)','2026-01-27 20:25:39','2026-01-27 20:25:39'),(10,22,'Prueba','Sumó stock a Sprite 3l x 6u (2026-01-23 - Cristina CACA): 70 -> 73 (+3 unidades)','2026-01-27 20:25:56','2026-01-27 20:25:56'),(11,23,'Cristina Lara','ELIMINÓ definitivamente la existencia de: Aquarius 2,25 x 6u (2026-02-02 - Cristina Lara)','2026-02-02 12:09:47','2026-02-02 12:09:47'),(12,23,'Cristina Lara','Editó existencias de Aquarius 2,25 x 6u (2026-02-02 - Cristina Lara). Venta: $14800 -> $14500 | Compra: $0 -> $0','2026-02-02 12:19:44','2026-02-02 12:19:44'),(13,23,'Cristina Lara','ELIMINÓ definitivamente la existencia de: 1890 x unidad (2026-02-02 - Cristina Lara)','2026-02-02 12:20:25','2026-02-02 12:20:25'),(14,23,'Cristina Lara','ELIMINÓ definitivamente la existencia de: Coca 3l x unidad (2026-02-02 - Cristina Lara)','2026-02-02 14:19:01','2026-02-02 14:19:01'),(15,23,'Cristina Lara','Editó existencias de Sprite 3l x 6u (2026-02-02 - Cristina Lara). Venta: $17000 -> $17000 | Compra: $0 -> $0','2026-02-02 14:40:41','2026-02-02 14:40:41'),(16,23,'Cristina Lara','Editó existencias de Paso de los toros 269 x unidad (2026-02-02 - Cristina Lara). Venta: $1500 -> $1000 | Compra: $0 -> $0','2026-02-02 14:53:13','2026-02-02 14:53:13'),(17,12,'Francisco Lara','ELIMINÓ definitivamente la existencia de: Cuatro Monos Locos 750 x 4u (2026-02-02 - Cristina Lara)','2026-02-02 18:04:07','2026-02-02 18:04:07'),(18,12,'Francisco Lara','Sumó stock a Sidra Real 750 x 6u (2026-02-02 - Francisco Lara): 68 -> 73 (+5 unidades)','2026-02-03 13:09:33','2026-02-03 13:09:33'),(19,12,'Francisco Lara','Restó stock a Sidra Real 750 x 6u (2026-02-02 - Francisco Lara): 73 -> 68 (-5 unidades)','2026-02-03 13:09:55','2026-02-03 13:09:55'),(20,23,'Cristina Lara','Editó existencias de Sprite 3l x 6u (2026-02-02 - Cristina Lara). Venta: $17000 -> $23000 | Compra: $0 -> $0','2026-02-03 21:18:42','2026-02-03 21:18:42'),(21,26,'Geovana Piaggesi','Editó existencias de Coca 2,5 x 8u (2026-02-02 - Cristina Lara). Venta: $24500 -> $24000 | Compra: $0 -> $0','2026-02-05 14:35:37','2026-02-05 14:35:37'),(22,12,'Francisco Lara','ELIMINÓ definitivamente la factura/venta ID #118.','2026-02-05 21:11:46','2026-02-05 21:11:46'),(23,12,'Francisco Lara','ELIMINÓ definitivamente la factura/venta ID #123, Creada por usuario ID #12 con precio de 38500.','2026-02-05 21:24:29','2026-02-05 21:24:29'),(24,23,'Cristina Lara','Editó existencias de Agua Nestle 2,25 x 6u (2026-02-05 - Cristina Lara). Venta: $8000 -> $8000 | Compra: $729307.29 -> $729307.29','2026-02-05 21:38:06','2026-02-05 21:38:06'),(25,23,'Cristina Lara','Sumó stock a Quilmes 710 x unidad (2026-02-02 - Cristina Lara): 0 -> 8 (+8 unidades)','2026-02-06 12:28:50','2026-02-06 12:28:50'),(26,23,'Cristina Lara','Sumó stock a Quilmes 710 x unidad (2026-02-02 - Cristina Lara): 8 -> 11 (+3 unidades)','2026-02-06 12:36:56','2026-02-06 12:36:56'),(27,23,'Cristina Lara','Restó stock a Quilmes 710 x unidad (2026-02-02 - Cristina Lara): 11 -> 8 (-3 unidades)','2026-02-06 12:37:13','2026-02-06 12:37:13'),(28,23,'Cristina Lara','Sumó stock a Toro x unidad (2026-02-02 - Cristina Lara): 0 -> 57 (+57 unidades)','2026-02-06 12:50:18','2026-02-06 12:50:18'),(29,23,'Cristina Lara','Restó stock a Toro x unidad (2026-02-02 - Cristina Lara): 57 -> 0 (-57 unidades)','2026-02-06 12:51:35','2026-02-06 12:51:35'),(30,23,'Cristina Lara','Sumó stock a Toro x unidad (2026-02-05 - Cristina Lara): 9 -> 59 (+50 unidades)','2026-02-06 12:51:49','2026-02-06 12:51:49'),(31,23,'Cristina Lara','Editó existencias de Toro x unidad (2026-02-05 - Cristina Lara). Venta: $2500 -> $1800 | Compra: $0 -> $0','2026-02-06 12:53:30','2026-02-06 12:53:30'),(32,26,'Geovana Piaggesi','ELIMINÓ definitivamente la factura/venta ID #152, Creada por usuario ID #26 con precio de 33000.','2026-02-06 13:46:39','2026-02-06 13:46:39'),(33,23,'Cristina Lara','Editó existencias de Quilmes 1l x 12u (2026-02-02 - Cristina Lara). Venta: $33000 -> $33800 | Compra: $0 -> $0','2026-02-06 13:49:04','2026-02-06 13:49:04'),(34,26,'Geovana Piaggesi','ELIMINÓ definitivamente la factura/venta ID #164, Creada por usuario ID #26 con precio de 17000.','2026-02-06 15:13:59','2026-02-06 15:13:59');
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cajas`
--

DROP TABLE IF EXISTS `cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cajas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `monto_inicial` decimal(12,2) NOT NULL,
  `monto_final` decimal(12,2) DEFAULT NULL,
  `estado` enum('abierta','cerrada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'abierta',
  `abierta_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cerrada_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cajas_user_id_foreign` (`user_id`),
  CONSTRAINT `cajas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajas`
--

LOCK TABLES `cajas` WRITE;
/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
INSERT INTO `cajas` VALUES (11,26,1000.00,1900.00,'cerrada','2026-02-03 20:10:56','2026-02-03 23:58:32','2026-02-03 20:10:56','2026-02-03 23:58:32'),(15,26,2900.00,7400.00,'cerrada','2026-02-04 12:29:48','2026-02-05 00:03:46','2026-02-04 12:29:48','2026-02-05 00:03:46'),(18,26,7400.00,9600.00,'cerrada','2026-02-05 13:34:38','2026-02-06 00:02:51','2026-02-05 13:34:38','2026-02-06 00:02:51'),(19,26,9600.00,NULL,'abierta','2026-02-06 12:18:03',NULL,'2026-02-06 12:18:03','2026-02-06 12:18:03');
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (34,'Alimentos secos',1,'2023-04-16 03:14:24','2023-04-16 03:14:24'),(36,'Bebidas no alcohólicas',1,'2023-04-16 03:14:38','2023-04-16 03:14:38'),(37,'Bebidas alcohólicas',1,'2023-04-16 03:14:44','2023-04-16 03:14:44');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'MATISCO LOGISTICA','0','.',NULL,'2026-02-01 21:16:07');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Ivana Calizaya',NULL,'3885067462','Santo Domingo',1,'2026-02-03 12:52:33','2026-02-03 12:52:33'),(2,'3883116477',NULL,'3883116477','Tita Merello 180',1,'2026-02-03 14:59:31','2026-02-03 21:34:09'),(3,'Cancha Jonathan',NULL,'3885771954','Juan Pablo ||',1,'2026-02-04 14:05:21','2026-02-04 14:05:21'),(4,'Dalma',NULL,'3885292010','Merendero los peques Viviendas amarillas',1,'2026-02-05 14:42:50','2026-02-05 14:42:50'),(5,'Nely calizaya',NULL,'3884415171','Rocio Sayavedra',1,'2026-02-05 14:43:49','2026-02-05 14:43:49'),(6,'May',NULL,'3884452100','Tres Cruces 360',1,'2026-02-05 14:44:30','2026-02-05 14:44:30'),(7,'Laura Pari',NULL,'3885017209','Cerca Despensa Kiki',1,'2026-02-05 14:46:10','2026-02-05 14:46:10'),(8,'Mercedes',NULL,'3885817702','Av Canadá entre Eva Perón y Nicolás lamas',1,'2026-02-05 15:17:34','2026-02-05 15:17:34'),(9,'Mabel pimentel',NULL,'3884391856',NULL,1,'2026-02-05 15:51:40','2026-02-05 15:51:40'),(10,'Alejandra',NULL,NULL,NULL,1,'2026-02-05 16:00:09','2026-02-05 16:00:09'),(11,'Gaston deudor',NULL,NULL,NULL,1,'2026-02-05 22:59:44','2026-02-05 22:59:44'),(12,'Salidas internas',NULL,NULL,NULL,1,'2026-02-06 12:43:31','2026-02-06 12:43:31'),(13,'Geo',NULL,NULL,NULL,1,'2026-02-06 13:25:21','2026-02-06 13:25:21'),(14,'Noemi',NULL,'3884724290','Barrio 2 de agosto mz 497 lote 7',1,'2026-02-06 14:52:55','2026-02-06 14:52:55'),(15,'Isabel Guzman',NULL,'3884307042','Barrio Antártida Argentina',1,'2026-02-06 14:54:41','2026-02-06 14:54:41'),(16,'Laura zumbay',NULL,'3886100851','Barrio virgen del valle',1,'2026-02-06 14:56:10','2026-02-06 14:56:10');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,0,'Clientes','contacts','customer.index',0,'2020-07-29 13:17:51','2020-07-29 13:17:56'),(2,0,'Gestión de Productos','category',NULL,0,'2020-07-29 13:17:53','2020-07-29 13:17:54'),(3,0,'Gestión de Existencias','assignment',NULL,0,'2020-07-29 13:17:52','2020-07-29 13:17:54'),(4,0,'Gestión de usuarios','supervised_user_circle',NULL,0,'2020-07-29 13:17:51','2020-07-29 13:17:56'),(5,0,'Reportes','receipt_long','report.index',0,'2020-07-29 13:17:52','2020-07-29 13:17:55'),(6,0,'Configuración','settings',NULL,0,'2020-07-29 13:17:58','2020-07-29 13:17:57'),(7,2,'Categorias',NULL,'category.index',0,'2020-07-29 13:17:50','2020-07-29 13:17:57'),(8,2,'Productos',NULL,'product.index',0,'2020-07-29 13:17:49','2020-07-29 13:17:59'),(9,2,'Proveedores',NULL,'supplier.index',0,'2020-07-29 13:17:49','2020-07-29 13:18:00'),(10,3,'Entradas',NULL,'stock.index',0,'2020-07-29 13:17:48','2020-07-29 13:18:00'),(11,3,'Salidas / Facturación',NULL,'invoice.index',0,'2020-07-29 13:17:47','2020-07-29 13:18:01'),(12,4,'Gestión de roles',NULL,'role.index',0,'2020-07-29 13:17:46','2020-07-29 13:17:46'),(13,4,'Usuarios',NULL,'user.index',0,'2020-07-29 13:17:44','2020-07-29 13:17:44'),(14,6,'Información de la empresa',NULL,'company.index',0,'2020-07-29 13:17:43','2020-07-29 13:17:45'),(15,6,'Cambiar la contraseña',NULL,'password.index',0,'2020-07-29 13:17:42','2020-07-29 13:16:37'),(16,0,'Auditoria','history','auditoria.index',0,NULL,NULL);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_12_10_051212_create_products_table',2),(4,'2018_12_10_052440_create_vendors_table',2),(5,'2018_12_10_052501_create_customers_table',2),(6,'2018_12_10_052521_create_stocks_table',2),(7,'2018_12_10_052610_create_sells_table',2),(8,'2018_12_10_052631_create_sell_details_table',2),(9,'2018_12_10_075236_create_branches_table',2),(10,'2018_12_31_160432_create_categories_table',3),(11,'2019_01_12_163604_create_payments_table',4),(12,'2019_01_19_152250_biye--tabl',5),(13,'2019_02_10_113651_create_roles_table',6),(14,'2019_02_10_114632_create_permissions_table',6),(15,'2019_02_10_114735_create_menus_table',6),(16,'2019_02_14_130126_create_companies_table',7),(21,'2026_01_22_070739_create_sessions_table',8),(22,'2026_01_23_143131_create_activity_logs_table',8),(24,'2026_01_27_153039_create_cajas_table',9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sell_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sell_id` (`sell_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (70,12,NULL,26,'2026-02-03','Transferencia',NULL,17000,'2026-02-03 12:48:46','2026-02-03 12:48:46'),(71,13,NULL,26,'2026-02-03','Transferencia',NULL,198000,'2026-02-03 12:56:52','2026-02-03 12:56:52'),(83,51,NULL,26,'2026-02-03','Efectivo/Transferencia',NULL,33000,'2026-02-03 21:26:13','2026-02-03 21:26:13'),(84,54,NULL,26,'2026-02-03','Efectivo/Transferencia',NULL,85000,'2026-02-03 23:31:28','2026-02-03 23:31:28'),(85,58,NULL,26,'2026-02-04','Transferencia',NULL,24200,'2026-02-04 13:21:20','2026-02-04 13:21:20'),(86,65,NULL,26,'2026-02-04','Transferencia',NULL,117500,'2026-02-04 14:25:59','2026-02-04 14:25:59'),(87,71,NULL,26,'2026-02-04','Transferencia',NULL,49000,'2026-02-04 20:26:14','2026-02-04 20:26:14'),(88,72,NULL,26,'2026-02-04','Transferencia',NULL,51500,'2026-02-04 20:31:50','2026-02-04 20:31:50'),(89,73,NULL,26,'2026-02-04','Transferencia',NULL,5000,'2026-02-04 20:42:27','2026-02-04 20:42:27'),(90,74,NULL,26,'2026-02-04','Transferencia',NULL,57500,'2026-02-04 21:19:55','2026-02-04 21:19:55'),(91,77,NULL,26,'2026-02-04','Transferencia',NULL,8000,'2026-02-04 21:36:53','2026-02-04 21:36:53'),(92,85,NULL,26,'2026-02-04','Transferencia',NULL,39000,'2026-02-04 23:37:47','2026-02-04 23:37:47'),(93,91,NULL,26,'2026-02-05','Efectivo/Transferencia',NULL,165000,'2026-02-05 13:49:19','2026-02-05 13:49:19'),(94,94,NULL,26,'2026-02-05','Transferencia',NULL,40000,'2026-02-05 14:14:22','2026-02-05 14:14:22'),(95,96,NULL,26,'2026-02-05','Transferencia',NULL,61500,'2026-02-05 14:36:41','2026-02-05 14:36:41'),(96,97,NULL,26,'2026-02-05','Transferencia',NULL,157000,'2026-02-05 14:47:58','2026-02-05 14:47:58'),(97,99,4,26,'2026-02-05','Efectivo/Transferencia',NULL,90000,'2026-02-05 14:52:38','2026-02-05 14:52:38'),(98,100,5,26,'2026-02-05','Efectivo/Transferencia',NULL,90000,'2026-02-05 14:54:15','2026-02-05 14:54:15'),(99,101,7,26,'2026-02-05','Transferencia',NULL,57000,'2026-02-05 14:57:52','2026-02-05 14:57:52'),(100,103,NULL,26,'2026-02-05','Transferencia',NULL,84500,'2026-02-05 15:14:26','2026-02-05 15:14:26'),(101,110,NULL,26,'2026-02-05','Tarjeta de Crédito',NULL,96000,'2026-02-05 15:32:19','2026-02-05 15:32:19'),(102,112,9,26,'2026-02-05','Tarjeta de Crédito',NULL,161000,'2026-02-05 15:51:40','2026-02-05 15:51:40'),(103,113,10,26,'2026-02-05','Efectivo/Transferencia',NULL,330000,'2026-02-05 16:00:09','2026-02-05 16:00:09'),(104,114,NULL,26,'2026-02-05','Transferencia',NULL,13800,'2026-02-05 20:45:41','2026-02-05 20:45:41'),(105,116,NULL,26,'2026-02-05','Transferencia',NULL,169000,'2026-02-05 21:00:03','2026-02-05 21:00:03'),(106,121,NULL,26,'2026-02-05','Transferencia',NULL,39000,'2026-02-05 21:18:21','2026-02-05 21:18:21'),(107,128,NULL,26,'2026-02-05','Transferencia',NULL,33000,'2026-02-05 21:57:48','2026-02-05 21:57:48'),(108,136,NULL,23,'2026-02-05','Transferencia',NULL,33000,'2026-02-05 23:20:33','2026-02-05 23:20:33'),(109,145,NULL,26,'2026-02-06','Efectivo/Transferencia',NULL,115600,'2026-02-06 12:55:25','2026-02-06 12:55:25'),(110,156,NULL,26,'2026-02-06','Transferencia',NULL,167900,'2026-02-06 14:24:22','2026-02-06 14:24:22'),(111,159,15,26,'2026-02-06','Transferencia',NULL,187500,'2026-02-06 14:54:41','2026-02-06 14:54:41');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=789 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (137,6,1,'2019-02-23 03:25:01','2019-02-23 03:25:01'),(138,6,3,'2019-02-23 03:25:01','2019-02-23 03:25:01'),(139,6,6,'2019-02-23 03:25:01','2019-02-23 03:25:01'),(140,6,15,'2019-02-23 03:25:01','2019-02-23 03:25:01'),(721,3,1,'2020-11-17 17:03:42','2020-11-17 17:03:42'),(722,3,9,'2020-11-17 17:03:42','2020-11-17 17:03:42'),(723,3,8,'2020-11-17 17:03:42','2020-11-17 17:03:42'),(724,3,7,'2020-11-17 17:03:42','2020-11-17 17:03:42'),(725,3,2,'2020-11-17 17:03:42','2020-11-17 17:03:42'),(726,3,10,'2020-11-17 17:03:42','2020-11-17 17:03:42'),(727,3,11,'2020-11-17 17:03:42','2020-11-17 17:03:42'),(728,3,3,'2020-11-17 17:03:42','2020-11-17 17:03:42'),(729,2,1,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(730,2,9,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(731,2,8,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(732,2,7,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(733,2,2,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(734,2,10,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(735,2,11,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(736,2,3,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(737,2,12,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(738,2,13,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(739,2,4,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(740,2,5,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(741,2,14,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(742,2,15,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(743,2,6,'2021-07-05 20:00:38','2021-07-05 20:00:38'),(744,2,16,NULL,NULL),(750,4,10,'2026-01-30 17:43:42','2026-01-30 17:43:42'),(751,4,11,'2026-01-30 17:43:42','2026-01-30 17:43:42'),(752,4,3,'2026-01-30 17:43:42','2026-01-30 17:43:42'),(753,4,5,'2026-01-30 17:43:42','2026-01-30 17:43:42'),(754,4,15,'2026-01-30 17:43:42','2026-01-30 17:43:42'),(755,4,6,'2026-01-30 17:43:42','2026-01-30 17:43:42'),(756,5,1,'2026-02-02 10:39:13','2026-02-02 10:39:13'),(757,5,7,'2026-02-02 10:39:13','2026-02-02 10:39:13'),(758,5,8,'2026-02-02 10:39:13','2026-02-02 10:39:13'),(759,5,9,'2026-02-02 10:39:13','2026-02-02 10:39:13'),(760,5,2,'2026-02-02 10:39:13','2026-02-02 10:39:13'),(761,5,10,'2026-02-02 10:39:13','2026-02-02 10:39:13'),(762,5,11,'2026-02-02 10:39:13','2026-02-02 10:39:13'),(763,5,3,'2026-02-02 10:39:13','2026-02-02 10:39:13'),(764,5,5,'2026-02-02 10:39:13','2026-02-02 10:39:13'),(765,5,15,'2026-02-02 10:39:13','2026-02-02 10:39:13'),(766,5,6,'2026-02-02 10:39:13','2026-02-02 10:39:13'),(777,13,1,'2026-02-05 21:48:52','2026-02-05 21:48:52'),(778,13,7,'2026-02-05 21:48:52','2026-02-05 21:48:52'),(779,13,8,'2026-02-05 21:48:52','2026-02-05 21:48:52'),(780,13,9,'2026-02-05 21:48:52','2026-02-05 21:48:52'),(781,13,2,'2026-02-05 21:48:52','2026-02-05 21:48:52'),(782,13,10,'2026-02-05 21:48:52','2026-02-05 21:48:52'),(783,13,11,'2026-02-05 21:48:52','2026-02-05 21:48:52'),(784,13,3,'2026-02-05 21:48:52','2026-02-05 21:48:52'),(785,13,5,'2026-02-05 21:48:52','2026-02-05 21:48:52'),(786,13,15,'2026-02-05 21:48:52','2026-02-05 21:48:52'),(787,13,6,'2026-02-05 21:48:52','2026-02-05 21:48:52'),(788,13,16,'2026-02-05 21:48:52','2026-02-05 21:48:52');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,37,'Los Robles 1125 x 6u',NULL,1,'2026-01-23 11:41:19','2026-01-23 17:25:46'),(3,37,'Corona 710 x 12u',NULL,1,'2026-01-23 17:26:13','2026-01-23 17:26:13'),(4,37,'Sidra Real 750 x 6u',NULL,1,'2026-01-23 17:26:38','2026-01-23 17:26:38'),(5,37,'Cuatro Monos Locos 750 x 4u',NULL,1,'2026-01-23 17:27:28','2026-01-23 17:27:28'),(6,37,'Martin Fierro 1125 x 6u',NULL,1,'2026-01-23 17:28:03','2026-01-23 17:28:03'),(7,37,'Frizze 1l x 6u',NULL,1,'2026-01-23 17:28:48','2026-01-23 17:28:48'),(8,37,'Quilmes 710 x 16u',NULL,1,'2026-01-23 17:29:37','2026-01-23 17:29:37'),(9,37,'Quilmes 1l x 12u',NULL,1,'2026-01-23 17:30:02','2026-01-23 17:30:02'),(10,37,'Sernova 700 x 6u',NULL,1,'2026-01-23 17:31:20','2026-01-23 17:31:20'),(11,37,'Skyy chicle x unidad',NULL,1,'2026-01-23 17:37:59','2026-02-02 14:58:09'),(12,37,'Smirnoff x unidad',NULL,1,'2026-01-23 17:38:27','2026-01-23 17:38:27'),(13,37,'California Moscato x unidad',NULL,1,'2026-01-23 17:38:46','2026-01-23 17:38:46'),(14,37,'New Age x unidad',NULL,1,'2026-01-23 17:39:34','2026-01-23 17:39:34'),(15,37,'1890 x unidad',NULL,1,'2026-01-23 17:41:06','2026-01-23 17:41:06'),(16,37,'Quilmes 710 x unidad',NULL,1,'2026-01-23 17:41:23','2026-01-23 17:41:23'),(17,37,'Quilmes 473 x unidad',NULL,1,'2026-01-23 17:41:40','2026-01-23 17:41:40'),(18,37,'Toro 1l x 12u',NULL,1,'2026-01-23 17:42:18','2026-01-23 17:42:18'),(19,37,'Toro x unidad',NULL,1,'2026-01-23 17:42:40','2026-01-23 17:42:40'),(20,36,'Gatorade 1,25 x 6u',NULL,1,'2026-01-23 17:43:11','2026-01-23 17:43:11'),(21,36,'Sprite 3l x 6u',NULL,1,'2026-01-23 17:43:29','2026-01-23 17:43:29'),(22,36,'Coca 3l x 6u',NULL,1,'2026-01-23 17:43:51','2026-01-23 17:43:51'),(23,36,'Agua Nestle 2,25 x 6u',NULL,1,'2026-01-23 17:44:11','2026-01-23 17:44:11'),(24,36,'Coca 600 x 12u',NULL,1,'2026-01-23 17:45:10','2026-01-23 17:45:10'),(25,36,'Fanta 2,5 x 6u','Descartable manzana y limón dulce',1,'2026-01-23 17:45:27','2026-02-04 12:45:43'),(26,36,'Aquarius 1,5 x 6u',NULL,1,'2026-01-23 17:45:52','2026-01-23 17:45:52'),(27,36,'Aquarius 2,25 x 6u',NULL,1,'2026-01-23 17:46:10','2026-01-23 17:46:10'),(28,36,'Coca 2,5 x 8u',NULL,1,'2026-01-23 17:46:29','2026-01-23 17:46:29'),(29,36,'Coca 1,5 x 8u',NULL,1,'2026-01-23 17:46:49','2026-01-23 17:46:49'),(30,36,'Fanta 2,5 x 8u',NULL,1,'2026-01-23 17:47:05','2026-01-23 17:47:05'),(31,36,'Sprite 2,5 x 8u',NULL,1,'2026-01-23 17:47:29','2026-01-23 17:47:29'),(32,36,'Mixto F y S 3l x 6u',NULL,1,'2026-01-23 17:47:56','2026-01-23 17:47:56'),(33,36,'Mixto F y S 2,5 x 8u',NULL,1,'2026-01-23 17:48:15','2026-01-23 17:48:15'),(34,34,'Higienol x 12u',NULL,1,'2026-01-23 17:48:36','2026-01-23 17:48:36'),(35,34,'Sussex x 10u',NULL,1,'2026-01-23 17:48:51','2026-01-23 17:48:51'),(36,34,'Harina Morixe x 10u',NULL,1,'2026-01-23 17:49:10','2026-01-23 17:49:10'),(37,36,'Red Bull x unidad',NULL,1,'2026-01-23 17:50:22','2026-01-23 17:50:22'),(38,37,'Quilmes 710 x pack',NULL,1,'2026-01-23 17:50:54','2026-01-23 17:50:54'),(39,37,'Quilmes 473 x pack',NULL,1,'2026-01-23 17:51:16','2026-01-23 17:51:16'),(40,36,'Pepsi 354 x unidad',NULL,1,'2026-01-23 17:51:40','2026-01-23 17:51:40'),(41,36,'Paso de los toros 269 x unidad',NULL,1,'2026-01-23 17:52:28','2026-01-23 17:52:28'),(42,37,'Smirnoff 473 x unidad',NULL,1,'2026-01-23 17:53:01','2026-01-23 17:53:01'),(43,36,'Coca 3l x unidad',NULL,1,'2026-01-23 17:53:36','2026-01-23 17:53:36'),(44,36,'Sprite 3l x unidad',NULL,1,'2026-01-23 17:53:55','2026-01-23 17:53:55'),(45,36,'Aquarius 1,5 x unidad',NULL,1,'2026-01-23 17:54:30','2026-01-23 17:54:30'),(46,36,'Aquarius 2,25 x unidad',NULL,1,'2026-01-23 17:54:50','2026-01-23 17:54:50'),(47,36,'Agua Benedictino x unidad',NULL,1,'2026-01-23 17:55:23','2026-01-23 17:55:23'),(48,36,'Benedictino 600 x unidad',NULL,1,'2026-01-23 17:56:05','2026-01-23 17:56:05'),(49,36,'Coca 600 x unidad',NULL,1,'2026-01-23 17:56:22','2026-01-23 17:56:22'),(50,36,'Schweppes 310 x unidad',NULL,1,'2026-01-23 17:56:57','2026-01-23 17:56:57'),(51,36,'Coca 220 x unidad',NULL,1,'2026-01-23 17:57:23','2026-01-23 17:57:23'),(52,36,'Coca 354 x unidad',NULL,1,'2026-01-23 17:57:39','2026-01-23 17:57:39'),(53,36,'Sprite 220 x unidad',NULL,1,'2026-01-23 17:58:06','2026-01-23 17:58:06'),(54,36,'Fanta 220 x unidad',NULL,1,'2026-01-23 17:58:22','2026-01-23 17:58:22'),(55,36,'Fanta 3l x 6u',NULL,1,'2026-01-23 18:01:36','2026-01-23 18:01:36'),(56,37,'Mosquita muerta 750 x 6u',NULL,1,'2026-01-23 18:03:23','2026-01-23 18:03:23'),(57,37,'Alaskasha 1l x 6u',NULL,1,'2026-01-23 18:03:41','2026-01-23 18:03:41'),(58,37,'Fernet 750 x 12u',NULL,1,'2026-01-23 18:04:06','2026-01-23 18:04:06'),(59,36,'Fanta 2,5 x unidad','Descartable',1,'2026-01-23 18:04:43','2026-01-23 18:04:43'),(60,37,'Costa de Reyes',NULL,1,'2026-01-23 18:06:23','2026-01-23 18:06:23'),(61,36,'Soda Benedictino Sifón 2l x 6u',NULL,1,'2026-01-23 18:07:15','2026-01-23 18:07:15'),(62,37,'Corona 710 x unidad',NULL,1,'2026-01-23 18:47:24','2026-01-23 18:47:24'),(63,36,'Soda sifón x unidad',NULL,1,'2026-01-23 19:42:46','2026-01-23 19:42:46'),(64,36,'Fanta 3l x unidad',NULL,1,'2026-02-02 14:34:19','2026-02-02 14:34:19'),(66,37,'Skyy maracuyá x unidad',NULL,1,'2026-02-02 14:58:34','2026-02-02 14:58:34'),(67,36,'Coca 1,5 x 6u',NULL,1,'2026-02-02 15:08:08','2026-02-02 15:08:08'),(68,36,'Fanta 1,5 x 6u',NULL,1,'2026-02-02 15:08:30','2026-02-02 15:08:30'),(69,36,'Coca 1,5 x unidad',NULL,1,'2026-02-02 15:10:36','2026-02-02 15:10:36');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'Superadministrador','2019-02-12 03:59:54','2023-04-17 04:53:28'),(3,'Gerente','2019-02-13 00:07:41','2023-04-17 04:35:56'),(4,'Vendedor','2019-02-13 01:34:11','2023-04-17 04:36:08'),(5,'Controlador','2019-02-13 05:53:15','2023-04-17 04:41:36'),(13,'Mama','2026-02-05 21:28:35','2026-02-05 21:28:35');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sell_details`
--

DROP TABLE IF EXISTS `sell_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sell_details` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` int NOT NULL,
  `sell_id` int NOT NULL,
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `user_id` int NOT NULL,
  `chalan_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sold_quantity` int NOT NULL,
  `buy_price` double NOT NULL,
  `sold_price` double NOT NULL,
  `total_buy_price` double NOT NULL,
  `total_sold_price` double NOT NULL,
  `discount` double NOT NULL,
  `discount_type` tinyint NOT NULL,
  `discount_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_id` (`stock_id`),
  KEY `selling_date` (`selling_date`),
  KEY `product_id` (`product_id`),
  KEY `category_id` (`category_id`),
  KEY `vendor_id` (`vendor_id`),
  KEY `user_id` (`user_id`),
  KEY `sell_id` (`sell_id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sell_details`
--

LOCK TABLES `sell_details` WRITE;
/*!40000 ALTER TABLE `sell_details` DISABLE KEYS */;
INSERT INTO `sell_details` VALUES (10,11,9,28,36,2,26,'2026-02-02','2026-02-03',NULL,2,0,24500,0,49000,0,1,0,'2026-02-03 12:41:47','2026-02-03 12:41:47'),(11,10,9,29,36,2,26,'2026-02-02','2026-02-03',NULL,2,0,18500,0,37000,0,1,0,'2026-02-03 12:41:47','2026-02-03 12:41:47'),(12,11,10,28,36,2,26,'2026-02-02','2026-02-03',NULL,2,0,24500,0,49000,0,1,0,'2026-02-03 12:43:01','2026-02-03 12:43:01'),(13,10,10,29,36,2,26,'2026-02-02','2026-02-03',NULL,1,0,18500,0,18500,0,1,0,'2026-02-03 12:43:01','2026-02-03 12:43:01'),(15,15,12,24,36,2,26,'2026-02-02','2026-02-03',NULL,1,0,17000,0,17000,0,1,0,'2026-02-03 12:48:46','2026-02-03 12:48:46'),(16,40,13,9,37,1,26,'2026-02-02','2026-02-03',NULL,6,0,33000,0,198000,0,1,0,'2026-02-03 12:56:52','2026-02-03 12:56:52'),(17,10,14,29,36,2,26,'2026-02-02','2026-02-03',NULL,1,0,18500,0,18500,0,1,0,'2026-02-03 12:57:16','2026-02-03 12:57:16'),(26,40,16,9,37,1,26,'2026-02-02','2026-02-03',NULL,1,0,33000,0,33000,0,1,0,'2026-02-03 13:08:21','2026-02-03 13:08:21'),(29,43,19,16,37,1,26,'2026-02-02','2026-02-03',NULL,1,0,2500,0,2500,0,1,0,'2026-02-03 14:46:59','2026-02-03 14:46:59'),(30,40,20,9,37,1,26,'2026-02-02','2026-02-03',NULL,1,0,33000,0,33000,0,1,0,'2026-02-03 14:47:36','2026-02-03 14:47:36'),(31,11,20,28,36,2,26,'2026-02-02','2026-02-03',NULL,1,0,24500,0,24500,0,1,0,'2026-02-03 14:47:36','2026-02-03 14:47:36'),(32,18,21,3,37,1,26,'2026-02-02','2026-02-03','1',1,0,38500,0,38500,0,1,0,'2026-02-03 14:56:52','2026-02-03 14:56:52'),(33,40,21,9,37,1,26,'2026-02-02','2026-02-03','1',8,0,33000,0,264000,0,1,0,'2026-02-03 14:56:52','2026-02-03 14:56:52'),(34,12,21,22,36,2,26,'2026-02-02','2026-02-03','1',2,0,23000,0,46000,0,1,0,'2026-02-03 14:56:52','2026-02-03 14:56:52'),(35,11,21,28,36,2,26,'2026-02-02','2026-02-03','1',1,0,24500,0,24500,0,1,0,'2026-02-03 14:56:52','2026-02-03 14:56:52'),(36,10,21,29,36,2,26,'2026-02-02','2026-02-03','1',2,0,18500,0,37000,0,1,0,'2026-02-03 14:56:52','2026-02-03 14:56:52'),(37,60,21,67,36,2,26,'2026-02-02','2026-02-03','1',1,0,17500,0,17500,0,1,0,'2026-02-03 14:56:52','2026-02-03 14:56:52'),(38,15,21,24,36,2,26,'2026-02-02','2026-02-03','1',1,0,17000,0,17000,0,1,0,'2026-02-03 14:56:52','2026-02-03 14:56:52'),(39,36,21,23,36,1,26,'2026-02-02','2026-02-03','1',1,0,7200,0,7200,0,1,0,'2026-02-03 14:56:52','2026-02-03 14:56:52'),(40,40,22,9,37,1,26,'2026-02-02','2026-02-03','2',2,0,33000,0,66000,0,1,0,'2026-02-03 15:00:21','2026-02-03 15:00:21'),(41,11,22,28,36,2,26,'2026-02-02','2026-02-03','2',1,0,24500,0,24500,0,1,0,'2026-02-03 15:00:21','2026-02-03 15:00:21'),(42,40,23,9,37,1,26,'2026-02-02','2026-02-03',NULL,2,0,33000,0,66000,0,1,0,'2026-02-03 15:03:37','2026-02-03 15:03:37'),(43,10,24,29,36,2,26,'2026-02-02','2026-02-03',NULL,2,0,18500,0,37000,0,1,0,'2026-02-03 15:50:50','2026-02-03 15:50:50'),(44,11,24,28,36,2,26,'2026-02-02','2026-02-03',NULL,1,0,24500,0,24500,0,1,0,'2026-02-03 15:50:50','2026-02-03 15:50:50'),(66,3,46,47,36,1,26,'2026-02-02','2026-02-03',NULL,1,0,1800,0,1800,0,1,0,'2026-02-03 21:03:36','2026-02-03 21:03:36'),(67,29,47,7,37,1,26,'2026-02-02','2026-02-03',NULL,3,0,14000,0,42000,0,1,0,'2026-02-03 21:06:13','2026-02-03 21:06:13'),(69,27,49,21,36,2,26,'2026-02-02','2026-02-03',NULL,3,0,23000,0,69000,0,1,0,'2026-02-03 21:19:56','2026-02-03 21:19:56'),(70,27,50,21,36,2,26,'2026-02-02','2026-02-03',NULL,3,0,23000,0,69000,0,1,0,'2026-02-03 21:19:57','2026-02-03 21:19:57'),(71,40,51,9,37,1,26,'2026-02-02','2026-02-03',NULL,1,0,33000,0,33000,0,1,0,'2026-02-03 21:26:13','2026-02-03 21:26:13'),(72,30,52,20,36,1,26,'2026-02-02','2026-02-03',NULL,2,0,17000,0,34000,0,1,0,'2026-02-03 23:24:41','2026-02-03 23:24:41'),(73,18,52,3,37,1,26,'2026-02-02','2026-02-03',NULL,1,0,38500,0,38500,0,1,0,'2026-02-03 23:24:41','2026-02-03 23:24:41'),(74,30,53,20,36,1,26,'2026-02-02','2026-02-03',NULL,2,0,17000,0,34000,0,1,0,'2026-02-03 23:24:41','2026-02-03 23:24:41'),(75,18,53,3,37,1,26,'2026-02-02','2026-02-03',NULL,1,0,38500,0,38500,0,1,0,'2026-02-03 23:24:41','2026-02-03 23:24:41'),(76,11,54,28,36,2,26,'2026-02-02','2026-02-03',NULL,1,0,24500,0,24500,0,1,0,'2026-02-03 23:31:28','2026-02-03 23:31:28'),(77,10,54,29,36,2,26,'2026-02-02','2026-02-03',NULL,1,0,18500,0,18500,0,1,0,'2026-02-03 23:31:28','2026-02-03 23:31:28'),(78,12,54,22,36,2,26,'2026-02-02','2026-02-03',NULL,1,0,23000,0,23000,0,1,0,'2026-02-03 23:31:28','2026-02-03 23:31:28'),(79,24,54,31,36,2,26,'2026-02-02','2026-02-03',NULL,1,0,19000,0,19000,0,1,0,'2026-02-03 23:31:28','2026-02-03 23:31:28'),(80,11,55,28,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,24500,0,24500,0,1,0,'2026-02-04 12:58:34','2026-02-04 12:58:34'),(81,23,55,30,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,19000,0,19000,0,1,0,'2026-02-04 12:58:34','2026-02-04 12:58:34'),(82,24,55,31,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,19000,0,19000,0,1,0,'2026-02-04 12:58:34','2026-02-04 12:58:34'),(83,6,55,27,36,1,26,'2026-02-02','2026-02-04',NULL,3,0,14500,0,43500,0,1,0,'2026-02-04 12:58:34','2026-02-04 12:58:34'),(84,36,55,23,36,1,26,'2026-02-02','2026-02-04',NULL,2,0,7200,0,14400,0,1,0,'2026-02-04 12:58:34','2026-02-04 12:58:34'),(85,58,56,61,36,1,26,'2026-02-02','2026-02-04',NULL,1,0,8000,0,8000,0,1,0,'2026-02-04 13:03:40','2026-02-04 13:03:40'),(86,40,57,9,37,1,26,'2026-02-02','2026-02-04',NULL,1,0,33000,0,33000,0,1,0,'2026-02-04 13:15:45','2026-02-04 13:15:45'),(87,51,57,18,37,1,26,'2026-02-02','2026-02-04',NULL,1,0,19000,0,19000,0,1,0,'2026-02-04 13:15:45','2026-02-04 13:15:45'),(88,15,58,24,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,17000,0,17000,0,1,0,'2026-02-04 13:21:20','2026-02-04 13:21:20'),(89,36,58,23,36,1,26,'2026-02-02','2026-02-04',NULL,1,0,7200,0,7200,0,1,0,'2026-02-04 13:21:20','2026-02-04 13:21:20'),(90,51,59,18,37,1,26,'2026-02-02','2026-02-04',NULL,2,0,19000,0,38000,0,1,0,'2026-02-04 13:26:50','2026-02-04 13:26:50'),(91,40,60,9,37,1,26,'2026-02-02','2026-02-04',NULL,5,0,33000,0,165000,0,1,0,'2026-02-04 13:48:44','2026-02-04 13:48:44'),(92,36,61,23,36,1,26,'2026-02-02','2026-02-04',NULL,1,0,7200,0,7200,0,1,0,'2026-02-04 13:49:19','2026-02-04 13:49:19'),(93,40,62,9,37,1,26,'2026-02-02','2026-02-04','3',6,0,33000,0,198000,0,1,0,'2026-02-04 14:05:53','2026-02-04 14:05:53'),(94,34,63,6,37,1,26,'2026-02-02','2026-02-04',NULL,10,0,13000,0,130000,0,1,0,'2026-02-04 14:12:14','2026-02-04 14:12:14'),(95,58,64,61,36,1,26,'2026-02-02','2026-02-04',NULL,3,0,8000,0,24000,0,1,0,'2026-02-04 14:14:55','2026-02-04 14:14:55'),(96,40,65,9,37,1,26,'2026-02-02','2026-02-04',NULL,3,0,33000,0,99000,0,1,0,'2026-02-04 14:25:59','2026-02-04 14:25:59'),(97,10,65,29,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,18500,0,18500,0,1,0,'2026-02-04 14:25:59','2026-02-04 14:25:59'),(98,11,66,28,36,2,26,'2026-02-02','2026-02-04',NULL,2,0,24500,0,49000,0,1,0,'2026-02-04 14:28:38','2026-02-04 14:28:38'),(99,11,67,28,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,24500,0,24500,0,1,0,'2026-02-04 14:47:41','2026-02-04 14:47:41'),(100,40,68,9,37,1,26,'2026-02-02','2026-02-04',NULL,2,0,33000,0,66000,0,1,0,'2026-02-04 15:15:47','2026-02-04 15:15:47'),(101,11,68,28,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,24500,0,24500,0,1,0,'2026-02-04 15:15:47','2026-02-04 15:15:47'),(102,40,69,9,37,1,26,'2026-02-02','2026-02-04',NULL,1,0,33000,0,33000,0,1,0,'2026-02-04 15:20:16','2026-02-04 15:20:16'),(103,12,69,22,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,23000,0,23000,0,1,0,'2026-02-04 15:20:16','2026-02-04 15:20:16'),(104,40,70,9,37,1,26,'2026-02-02','2026-02-04',NULL,5,0,33000,0,165000,0,1,0,'2026-02-04 20:22:15','2026-02-04 20:22:15'),(105,11,71,28,36,2,26,'2026-02-02','2026-02-04',NULL,2,0,24500,0,49000,0,1,0,'2026-02-04 20:26:14','2026-02-04 20:26:14'),(106,40,72,9,37,1,26,'2026-02-02','2026-02-04',NULL,1,0,33000,0,33000,0,1,0,'2026-02-04 20:31:50','2026-02-04 20:31:50'),(107,10,72,29,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,18500,0,18500,0,1,0,'2026-02-04 20:31:50','2026-02-04 20:31:50'),(108,43,73,16,37,1,26,'2026-02-02','2026-02-04',NULL,2,0,2500,0,5000,0,1,0,'2026-02-04 20:42:27','2026-02-04 20:42:27'),(109,40,74,9,37,1,26,'2026-02-02','2026-02-04',NULL,1,0,33000,0,33000,0,1,0,'2026-02-04 21:19:55','2026-02-04 21:19:55'),(110,11,74,28,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,24500,0,24500,0,1,0,'2026-02-04 21:19:55','2026-02-04 21:19:55'),(111,30,75,20,36,1,26,'2026-02-02','2026-02-04',NULL,1,0,17000,0,17000,0,1,0,'2026-02-04 21:20:28','2026-02-04 21:20:28'),(112,11,76,28,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,24500,0,24500,0,1,0,'2026-02-04 21:23:19','2026-02-04 21:23:19'),(113,36,76,23,36,1,26,'2026-02-02','2026-02-04',NULL,2,0,7200,0,14400,0,1,0,'2026-02-04 21:23:19','2026-02-04 21:23:19'),(114,6,76,27,36,1,26,'2026-02-02','2026-02-04',NULL,2,0,14500,0,29000,0,1,0,'2026-02-04 21:23:19','2026-02-04 21:23:19'),(115,58,77,61,36,1,26,'2026-02-02','2026-02-04',NULL,1,0,8000,0,8000,0,1,0,'2026-02-04 21:36:53','2026-02-04 21:36:53'),(116,11,78,28,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,24500,0,24500,0,1,0,'2026-02-04 21:48:40','2026-02-04 21:48:40'),(117,10,78,29,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,18500,0,18500,0,1,0,'2026-02-04 21:48:40','2026-02-04 21:48:40'),(118,40,78,9,37,1,26,'2026-02-02','2026-02-04',NULL,1,0,33000,0,33000,0,1,0,'2026-02-04 21:48:40','2026-02-04 21:48:40'),(119,40,79,9,37,1,26,'2026-02-02','2026-02-04',NULL,3,0,33000,0,99000,0,1,0,'2026-02-04 21:57:17','2026-02-04 21:57:17'),(120,11,79,28,36,2,26,'2026-02-02','2026-02-04',NULL,2,0,24500,0,49000,0,1,0,'2026-02-04 21:57:17','2026-02-04 21:57:17'),(121,30,80,20,36,1,26,'2026-02-02','2026-02-04',NULL,1,0,17000,0,17000,0,1,0,'2026-02-04 22:20:01','2026-02-04 22:20:01'),(122,40,81,9,37,1,26,'2026-02-02','2026-02-04',NULL,3,0,33000,0,99000,0,1,0,'2026-02-04 22:21:52','2026-02-04 22:21:52'),(123,11,81,28,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,24500,0,24500,0,1,0,'2026-02-04 22:21:52','2026-02-04 22:21:52'),(126,40,83,9,37,1,26,'2026-02-02','2026-02-04',NULL,2,0,33000,0,66000,0,1,0,'2026-02-04 23:05:39','2026-02-04 23:05:39'),(127,10,83,29,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,18500,0,18500,0,1,0,'2026-02-04 23:05:39','2026-02-04 23:05:39'),(128,11,84,28,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,24500,0,24500,0,1,0,'2026-02-04 23:11:06','2026-02-04 23:11:06'),(129,34,85,6,37,1,26,'2026-02-02','2026-02-04',NULL,2,0,13000,0,26000,0,1,0,'2026-02-04 23:37:47','2026-02-04 23:37:47'),(130,44,85,2,37,1,26,'2026-02-02','2026-02-04',NULL,1,0,13000,0,13000,0,1,0,'2026-02-04 23:37:47','2026-02-04 23:37:47'),(131,40,86,9,37,1,26,'2026-02-02','2026-02-04',NULL,2,0,33000,0,66000,0,1,0,'2026-02-04 23:40:51','2026-02-04 23:40:51'),(132,17,86,52,36,2,26,'2026-02-02','2026-02-04',NULL,1,0,1500,0,1500,0,1,0,'2026-02-04 23:40:51','2026-02-04 23:40:51'),(133,40,87,9,37,1,26,'2026-02-02','2026-02-05',NULL,4,0,33000,0,132000,0,1,0,'2026-02-05 13:44:46','2026-02-05 13:44:46'),(134,10,87,29,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,18500,0,18500,0,1,0,'2026-02-05 13:44:46','2026-02-05 13:44:46'),(135,12,87,22,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,23000,0,23000,0,1,0,'2026-02-05 13:44:46','2026-02-05 13:44:46'),(136,43,88,16,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,2500,0,2500,0,1,0,'2026-02-05 13:45:08','2026-02-05 13:45:08'),(137,40,89,9,37,1,26,'2026-02-02','2026-02-05',NULL,3,0,33000,0,99000,0,1,0,'2026-02-05 13:46:59','2026-02-05 13:46:59'),(138,40,90,9,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,33000,0,33000,0,1,0,'2026-02-05 13:48:43','2026-02-05 13:48:43'),(139,40,91,9,37,1,26,'2026-02-02','2026-02-05',NULL,5,0,33000,0,165000,0,1,0,'2026-02-05 13:49:19','2026-02-05 13:49:19'),(140,40,92,9,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,33000,0,33000,0,1,0,'2026-02-05 13:49:45','2026-02-05 13:49:45'),(141,12,93,22,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,23000,0,23000,0,1,0,'2026-02-05 13:52:37','2026-02-05 13:52:37'),(142,40,93,9,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,33000,0,66000,0,1,0,'2026-02-05 13:52:37','2026-02-05 13:52:37'),(143,23,93,30,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,19000,0,19000,0,1,0,'2026-02-05 13:52:37','2026-02-05 13:52:37'),(144,15,93,24,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,17000,0,17000,0,1,0,'2026-02-05 13:52:37','2026-02-05 13:52:37'),(145,42,94,38,37,1,26,'2026-02-02','2026-02-05',NULL,4,0,10000,0,40000,0,1,0,'2026-02-05 14:14:22','2026-02-05 14:14:22'),(146,40,95,9,37,1,26,'2026-02-02','2026-02-05',NULL,3,0,33000,0,99000,0,1,0,'2026-02-05 14:17:12','2026-02-05 14:17:12'),(147,11,96,28,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,24000,0,24000,0,1,0,'2026-02-05 14:36:41','2026-02-05 14:36:41'),(148,10,96,29,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,18500,0,18500,0,1,0,'2026-02-05 14:36:41','2026-02-05 14:36:41'),(149,51,96,18,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,19000,0,19000,0,1,0,'2026-02-05 14:36:41','2026-02-05 14:36:41'),(150,11,97,28,36,2,26,'2026-02-02','2026-02-05',NULL,3,0,24000,0,72000,0,1,0,'2026-02-05 14:47:58','2026-02-05 14:47:58'),(151,23,97,30,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,19000,0,19000,0,1,0,'2026-02-05 14:47:58','2026-02-05 14:47:58'),(152,40,97,9,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,33000,0,66000,0,1,0,'2026-02-05 14:47:58','2026-02-05 14:47:58'),(153,58,98,61,36,1,26,'2026-02-02','2026-02-05',NULL,1,0,8000,0,8000,0,1,0,'2026-02-05 14:48:34','2026-02-05 14:48:34'),(154,40,99,9,37,1,26,'2026-02-02','2026-02-05','4',2,0,33000,0,66000,0,1,0,'2026-02-05 14:52:38','2026-02-05 14:52:38'),(155,11,99,28,36,2,26,'2026-02-02','2026-02-05','4',1,0,24000,0,24000,0,1,0,'2026-02-05 14:52:38','2026-02-05 14:52:38'),(156,40,100,9,37,1,26,'2026-02-02','2026-02-05','5',2,0,33000,0,66000,0,1,0,'2026-02-05 14:54:15','2026-02-05 14:54:15'),(157,11,100,28,36,2,26,'2026-02-02','2026-02-05','5',1,0,24000,0,24000,0,1,0,'2026-02-05 14:54:15','2026-02-05 14:54:15'),(158,40,101,9,37,1,26,'2026-02-02','2026-02-05','7',1,0,33000,0,33000,0,1,0,'2026-02-05 14:57:52','2026-02-05 14:57:52'),(159,11,101,28,36,2,26,'2026-02-02','2026-02-05','7',1,0,24000,0,24000,0,1,0,'2026-02-05 14:57:52','2026-02-05 14:57:52'),(160,40,102,9,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,33000,0,66000,0,1,0,'2026-02-05 15:10:57','2026-02-05 15:10:57'),(161,11,102,28,36,2,26,'2026-02-02','2026-02-05',NULL,2,0,24000,0,48000,0,1,0,'2026-02-05 15:10:57','2026-02-05 15:10:57'),(162,10,102,29,36,2,26,'2026-02-02','2026-02-05',NULL,2,0,18500,0,37000,0,1,0,'2026-02-05 15:10:57','2026-02-05 15:10:57'),(163,54,102,35,34,1,26,'2026-02-02','2026-02-05',NULL,1,0,13500,0,13500,0,1,0,'2026-02-05 15:10:57','2026-02-05 15:10:57'),(164,6,102,27,36,1,26,'2026-02-02','2026-02-05',NULL,1,0,14500,0,14500,0,1,0,'2026-02-05 15:10:57','2026-02-05 15:10:57'),(165,40,103,9,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,33000,0,66000,0,1,0,'2026-02-05 15:14:26','2026-02-05 15:14:26'),(166,10,103,29,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,18500,0,18500,0,1,0,'2026-02-05 15:14:26','2026-02-05 15:14:26'),(169,43,105,16,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,2500,0,2500,0,1,0,'2026-02-05 15:24:55','2026-02-05 15:24:55'),(170,36,106,23,36,1,26,'2026-02-02','2026-02-05',NULL,1,0,8000,0,8000,0,1,0,'2026-02-05 15:25:56','2026-02-05 15:25:56'),(171,34,107,6,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,13000,0,13000,0,1,0,'2026-02-05 15:26:22','2026-02-05 15:26:22'),(172,18,108,3,37,1,26,'2026-02-02','2026-02-05',NULL,3,0,38500,0,115500,0,1,0,'2026-02-05 15:26:56','2026-02-05 15:26:56'),(173,12,108,22,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,23000,0,23000,0,1,0,'2026-02-05 15:26:56','2026-02-05 15:26:56'),(174,40,109,9,37,1,26,'2026-02-02','2026-02-05',NULL,4,0,33000,0,132000,0,1,0,'2026-02-05 15:27:31','2026-02-05 15:27:31'),(175,10,109,29,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,18500,0,18500,0,1,0,'2026-02-05 15:27:31','2026-02-05 15:27:31'),(176,51,110,18,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,19000,0,38000,0,1,0,'2026-02-05 15:32:19','2026-02-05 15:32:19'),(177,12,110,22,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,23000,0,23000,0,1,0,'2026-02-05 15:32:19','2026-02-05 15:32:19'),(178,61,110,68,36,2,26,'2026-02-02','2026-02-05',NULL,2,0,17500,0,35000,0,1,0,'2026-02-05 15:32:19','2026-02-05 15:32:19'),(179,40,111,9,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,33000,0,33000,0,1,0,'2026-02-05 15:46:22','2026-02-05 15:46:22'),(180,10,112,29,36,2,26,'2026-02-02','2026-02-05','9',1,0,18500,0,18500,0,1,0,'2026-02-05 15:51:40','2026-02-05 15:51:40'),(181,12,112,22,36,2,26,'2026-02-02','2026-02-05','9',2,0,23000,0,46000,0,1,0,'2026-02-05 15:51:40','2026-02-05 15:51:40'),(182,27,112,21,36,2,26,'2026-02-02','2026-02-05','9',1,0,23000,0,23000,0,1,0,'2026-02-05 15:51:40','2026-02-05 15:51:40'),(183,6,112,27,36,1,26,'2026-02-02','2026-02-05','9',3,0,14500,0,43500,0,1,0,'2026-02-05 15:51:40','2026-02-05 15:51:40'),(184,21,112,25,36,2,26,'2026-02-02','2026-02-05','9',3,0,10000,0,30000,0,1,0,'2026-02-05 15:51:40','2026-02-05 15:51:40'),(185,40,113,9,37,1,26,'2026-02-02','2026-02-05','10',10,0,33000,0,330000,0,1,0,'2026-02-05 16:00:09','2026-02-05 16:00:09'),(186,52,114,19,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,1500,0,3000,0,1,0,'2026-02-05 20:45:41','2026-02-05 20:45:41'),(187,14,114,43,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,4500,0,4500,0,1,0,'2026-02-05 20:45:41','2026-02-05 20:45:41'),(188,26,114,64,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,4500,0,4500,0,1,0,'2026-02-05 20:45:41','2026-02-05 20:45:41'),(189,59,114,63,36,1,26,'2026-02-02','2026-02-05',NULL,1,0,1800,0,1800,0,1,0,'2026-02-05 20:45:41','2026-02-05 20:45:41'),(190,40,115,9,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,33000,0,66000,0,1,0,'2026-02-05 20:46:18','2026-02-05 20:46:18'),(191,40,116,9,37,1,26,'2026-02-02','2026-02-05',NULL,4,0,33000,0,132000,0,1,0,'2026-02-05 21:00:03','2026-02-05 21:00:03'),(192,10,116,29,36,2,26,'2026-02-02','2026-02-05',NULL,2,0,18500,0,37000,0,1,0,'2026-02-05 21:00:03','2026-02-05 21:00:03'),(193,40,117,9,37,1,26,'2026-02-02','2026-02-05',NULL,4,0,33000,0,132000,0,1,0,'2026-02-05 21:08:45','2026-02-05 21:08:45'),(195,12,119,22,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,23000,0,23000,0,1,0,'2026-02-05 21:15:16','2026-02-05 21:15:16'),(196,12,120,22,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,23000,0,23000,0,1,0,'2026-02-05 21:15:17','2026-02-05 21:15:17'),(197,44,121,2,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,13000,0,13000,0,1,0,'2026-02-05 21:18:21','2026-02-05 21:18:21'),(198,34,121,6,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,13000,0,26000,0,1,0,'2026-02-05 21:18:21','2026-02-05 21:18:21'),(199,27,122,21,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,23000,0,23000,0,1,0,'2026-02-05 21:19:27','2026-02-05 21:19:27'),(201,40,124,9,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,33000,0,66000,0,1,0,'2026-02-05 21:31:53','2026-02-05 21:31:53'),(202,39,125,40,36,1,26,'2026-02-02','2026-02-05',NULL,1,0,1500,0,1500,0,1,0,'2026-02-05 21:34:08','2026-02-05 21:34:08'),(203,12,126,22,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,23000,0,23000,0,1,0,'2026-02-05 21:35:52','2026-02-05 21:35:52'),(204,11,126,28,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,24000,0,24000,0,1,0,'2026-02-05 21:35:52','2026-02-05 21:35:52'),(205,10,127,29,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,18500,0,18500,0,1,0,'2026-02-05 21:54:43','2026-02-05 21:54:43'),(206,40,128,9,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,33000,0,33000,0,1,0,'2026-02-05 21:57:48','2026-02-05 21:57:48'),(207,42,129,38,37,1,23,'2026-02-02','2026-02-05',NULL,1,0,10000,0,10000,0,1,0,'2026-02-05 22:40:49','2026-02-05 22:40:49'),(208,40,130,9,37,1,23,'2026-02-02','2026-02-05',NULL,1,0,33000,0,33000,0,1,0,'2026-02-05 22:49:21','2026-02-05 22:49:21'),(209,14,130,43,36,2,23,'2026-02-02','2026-02-05',NULL,1,0,4500,0,4500,0,1,0,'2026-02-05 22:49:21','2026-02-05 22:49:21'),(210,12,131,22,36,2,26,'2026-02-02','2026-02-05',NULL,2,0,23000,0,46000,0,1,0,'2026-02-05 22:58:35','2026-02-05 22:58:35'),(211,11,131,28,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,24000,0,24000,0,1,0,'2026-02-05 22:58:35','2026-02-05 22:58:35'),(212,15,131,24,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,17000,0,17000,0,1,0,'2026-02-05 22:58:35','2026-02-05 22:58:35'),(213,17,132,52,36,2,26,'2026-02-02','2026-02-05','11',1,0,0,0,0,0,1,0,'2026-02-05 22:59:44','2026-02-05 22:59:44'),(214,12,133,22,36,2,26,'2026-02-02','2026-02-05',NULL,2,0,23000,0,46000,0,1,0,'2026-02-05 23:01:19','2026-02-05 23:01:19'),(215,40,133,9,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,33000,0,66000,0,1,0,'2026-02-05 23:01:19','2026-02-05 23:01:19'),(216,40,134,9,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,33000,0,66000,0,1,0,'2026-02-05 23:05:12','2026-02-05 23:05:12'),(217,51,134,18,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,19000,0,19000,0,1,0,'2026-02-05 23:05:12','2026-02-05 23:05:12'),(218,43,135,16,37,1,26,'2026-02-02','2026-02-05',NULL,2,0,2500,0,5000,0,1,0,'2026-02-05 23:05:57','2026-02-05 23:05:57'),(219,16,135,49,36,2,26,'2026-02-02','2026-02-05',NULL,1,0,1700,0,1700,0,1,0,'2026-02-05 23:05:57','2026-02-05 23:05:57'),(220,40,136,9,37,1,23,'2026-02-02','2026-02-05',NULL,1,0,33000,0,33000,0,1,0,'2026-02-05 23:20:33','2026-02-05 23:20:33'),(221,17,137,52,36,2,23,'2026-02-02','2026-02-05',NULL,1,0,1500,0,1500,0,1,0,'2026-02-05 23:26:25','2026-02-05 23:26:25'),(222,64,138,69,36,2,23,'2026-02-05','2026-02-05',NULL,1,0,2700,0,2700,0,1,0,'2026-02-05 23:28:30','2026-02-05 23:28:30'),(223,40,139,9,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,33000,0,33000,0,1,0,'2026-02-05 23:49:05','2026-02-05 23:49:05'),(224,65,140,19,37,1,26,'2026-02-05','2026-02-05',NULL,1,0,1000,0,1000,0,1,0,'2026-02-05 23:58:18','2026-02-05 23:58:18'),(225,51,140,18,37,1,26,'2026-02-02','2026-02-05',NULL,1,0,19000,0,19000,0,1,0,'2026-02-05 23:58:18','2026-02-05 23:58:18'),(226,42,141,38,37,1,23,'2026-02-02','2026-02-06','12',2,0,0,0,0,0,1,0,'2026-02-06 12:43:31','2026-02-06 12:43:31'),(227,51,142,18,37,1,23,'2026-02-02','2026-02-06','12',4,0,0,0,0,0,1,0,'2026-02-06 12:46:27','2026-02-06 12:46:27'),(228,30,143,20,36,1,26,'2026-02-02','2026-02-06',NULL,20,0,17000,0,340000,0,1,0,'2026-02-06 12:46:43','2026-02-06 12:46:43'),(229,43,144,16,37,1,26,'2026-02-02','2026-02-06',NULL,1,0,2500,0,2500,0,1,0,'2026-02-06 12:49:13','2026-02-06 12:49:13'),(230,40,145,9,37,1,26,'2026-02-02','2026-02-06',NULL,2,0,33800,0,67600,0,1,0,'2026-02-06 12:55:25','2026-02-06 12:55:25'),(231,11,145,28,36,2,26,'2026-02-02','2026-02-06',NULL,2,0,24000,0,48000,0,1,0,'2026-02-06 12:55:25','2026-02-06 12:55:25'),(232,63,146,23,36,3,26,'2026-02-05','2026-02-06',NULL,1,729307.29,8000,729307.29,8000,0,1,0,'2026-02-06 13:02:02','2026-02-06 13:02:02'),(233,10,147,29,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,18500,0,18500,0,1,0,'2026-02-06 13:02:26','2026-02-06 13:02:26'),(234,11,148,28,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,24000,0,24000,0,1,0,'2026-02-06 13:13:59','2026-02-06 13:13:59'),(235,42,149,38,37,1,26,'2026-02-02','2026-02-06',NULL,1,0,10000,0,10000,0,1,0,'2026-02-06 13:24:17','2026-02-06 13:24:17'),(236,14,149,43,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,4500,0,4500,0,1,0,'2026-02-06 13:24:17','2026-02-06 13:24:17'),(237,26,149,64,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,4500,0,4500,0,1,0,'2026-02-06 13:24:17','2026-02-06 13:24:17'),(238,58,150,61,36,1,26,'2026-02-02','2026-02-06','13',1,0,0,0,0,0,1,0,'2026-02-06 13:25:21','2026-02-06 13:25:21'),(239,40,151,9,37,1,26,'2026-02-02','2026-02-06',NULL,2,0,33800,0,67600,0,1,0,'2026-02-06 13:34:11','2026-02-06 13:34:11'),(240,12,151,22,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,23000,0,23000,0,1,0,'2026-02-06 13:34:11','2026-02-06 13:34:11'),(242,40,153,9,37,1,26,'2026-02-02','2026-02-06',NULL,1,0,33800,0,33800,0,1,0,'2026-02-06 13:47:47','2026-02-06 13:47:47'),(243,43,154,16,37,1,26,'2026-02-02','2026-02-06',NULL,1,0,2500,0,2500,0,1,0,'2026-02-06 13:49:19','2026-02-06 13:49:19'),(244,40,155,9,37,1,26,'2026-02-02','2026-02-06',NULL,3,0,33800,0,101400,0,1,0,'2026-02-06 14:22:58','2026-02-06 14:22:58'),(245,10,155,29,36,2,26,'2026-02-02','2026-02-06',NULL,2,0,18500,0,37000,0,1,0,'2026-02-06 14:22:58','2026-02-06 14:22:58'),(246,40,156,9,37,1,26,'2026-02-02','2026-02-06',NULL,3,0,33800,0,101400,0,1,0,'2026-02-06 14:24:22','2026-02-06 14:24:22'),(247,11,156,28,36,2,26,'2026-02-02','2026-02-06',NULL,2,0,24000,0,48000,0,1,0,'2026-02-06 14:24:22','2026-02-06 14:24:22'),(248,10,156,29,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,18500,0,18500,0,1,0,'2026-02-06 14:24:22','2026-02-06 14:24:22'),(249,43,157,16,37,1,26,'2026-02-02','2026-02-06',NULL,1,0,2500,0,2500,0,1,0,'2026-02-06 14:50:12','2026-02-06 14:50:12'),(250,40,158,9,37,1,26,'2026-02-02','2026-02-06','14',2,0,33800,0,67600,0,1,0,'2026-02-06 14:52:55','2026-02-06 14:52:55'),(251,11,158,28,36,2,26,'2026-02-02','2026-02-06','14',1,0,24000,0,24000,0,1,0,'2026-02-06 14:52:55','2026-02-06 14:52:55'),(252,10,158,29,36,2,26,'2026-02-02','2026-02-06','14',1,0,18500,0,18500,0,1,0,'2026-02-06 14:52:55','2026-02-06 14:52:55'),(253,15,158,24,36,2,26,'2026-02-02','2026-02-06','14',1,0,17000,0,17000,0,1,0,'2026-02-06 14:52:55','2026-02-06 14:52:55'),(254,40,159,9,37,1,26,'2026-02-02','2026-02-06','15',5,0,33800,0,169000,0,1,0,'2026-02-06 14:54:41','2026-02-06 14:54:41'),(255,10,159,29,36,2,26,'2026-02-02','2026-02-06','15',1,0,18500,0,18500,0,1,0,'2026-02-06 14:54:41','2026-02-06 14:54:41'),(256,10,160,29,36,2,26,'2026-02-02','2026-02-06','16',7,0,18500,0,129500,0,1,0,'2026-02-06 14:56:10','2026-02-06 14:56:10'),(257,11,161,28,36,2,26,'2026-02-02','2026-02-06','2',1,0,24000,0,24000,0,1,0,'2026-02-06 14:57:40','2026-02-06 14:57:40'),(258,23,161,30,36,2,26,'2026-02-02','2026-02-06','2',1,0,19000,0,19000,0,1,0,'2026-02-06 14:57:40','2026-02-06 14:57:40'),(259,40,161,9,37,1,26,'2026-02-02','2026-02-06','2',1,0,33800,0,33800,0,1,0,'2026-02-06 14:57:40','2026-02-06 14:57:40'),(260,40,162,9,37,1,26,'2026-02-02','2026-02-06',NULL,4,0,33800,0,135200,0,1,0,'2026-02-06 15:12:27','2026-02-06 15:12:27'),(261,10,162,29,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,18500,0,18500,0,1,0,'2026-02-06 15:12:27','2026-02-06 15:12:27'),(262,17,162,52,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,1500,0,1500,0,1,0,'2026-02-06 15:12:27','2026-02-06 15:12:27'),(263,15,163,24,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,17000,0,17000,0,1,0,'2026-02-06 15:13:36','2026-02-06 15:13:36'),(265,21,165,25,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,10000,0,10000,0,1,0,'2026-02-06 15:54:58','2026-02-06 15:54:58'),(266,10,165,29,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,18500,0,18500,0,1,0,'2026-02-06 15:54:58','2026-02-06 15:54:58'),(267,11,166,28,36,2,26,'2026-02-02','2026-02-06',NULL,1,0,24000,0,24000,0,1,0,'2026-02-06 16:05:37','2026-02-06 16:05:37'),(268,6,167,27,36,1,26,'2026-02-02','2026-02-06',NULL,1,0,14500,0,14500,0,1,0,'2026-02-06 16:07:52','2026-02-06 16:07:52');
/*!40000 ALTER TABLE `sell_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sells`
--

DROP TABLE IF EXISTS `sells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sells` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `branch_id` int NOT NULL DEFAULT '1',
  `total_amount` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `sell_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metodo_pago` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Efectivo',
  `discount_amount` double NOT NULL DEFAULT '0',
  `payment_method` tinyint NOT NULL DEFAULT '0',
  `payment_status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cash_amount` decimal(15,2) DEFAULT '0.00',
  `transfer_amount` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sells`
--

LOCK TABLES `sells` WRITE;
/*!40000 ALTER TABLE `sells` DISABLE KEYS */;
INSERT INTO `sells` VALUES (9,26,NULL,1,86000,86000,'2026-02-03','Efectivo',0,0,1,'2026-02-03 12:41:47','2026-02-03 12:41:47',0.00,0.00),(10,26,NULL,1,67500,67500,'2026-02-03','Efectivo',0,0,1,'2026-02-03 12:43:01','2026-02-03 12:43:01',0.00,0.00),(12,26,NULL,1,17000,17000,'2026-02-03','Transferencia',0,0,1,'2026-02-03 12:48:46','2026-02-03 12:48:46',0.00,0.00),(13,26,NULL,1,198000,198000,'2026-02-03','Transferencia',0,0,1,'2026-02-03 12:56:52','2026-02-03 12:56:52',0.00,0.00),(14,26,NULL,1,18500,18500,'2026-02-03','Efectivo',0,0,1,'2026-02-03 12:57:16','2026-02-03 12:57:16',0.00,0.00),(16,26,NULL,1,33000,33000,'2026-02-03','Efectivo',0,0,1,'2026-02-03 13:08:21','2026-02-03 13:08:21',0.00,0.00),(19,26,NULL,1,2500,2500,'2026-02-03','Efectivo',0,0,1,'2026-02-03 14:46:59','2026-02-03 14:46:59',0.00,0.00),(20,26,NULL,1,57500,57500,'2026-02-03','Efectivo',0,0,1,'2026-02-03 14:47:36','2026-02-03 14:47:36',0.00,0.00),(21,26,1,1,451700,451700,'2026-02-03','Efectivo',0,0,1,'2026-02-03 14:56:52','2026-02-03 14:56:52',0.00,0.00),(22,26,2,1,90500,90500,'2026-02-03','Efectivo',0,0,1,'2026-02-03 15:00:21','2026-02-03 15:00:21',0.00,0.00),(23,26,NULL,1,66000,66000,'2026-02-03','Efectivo',0,0,1,'2026-02-03 15:03:37','2026-02-03 15:03:37',0.00,0.00),(24,26,NULL,1,61500,61500,'2026-02-03','Efectivo',0,0,1,'2026-02-03 15:50:50','2026-02-03 15:50:50',0.00,0.00),(46,26,NULL,1,1800,1800,'2026-02-03','Efectivo',0,0,1,'2026-02-03 21:03:36','2026-02-03 21:03:36',0.00,0.00),(47,26,NULL,1,42000,42000,'2026-02-03','Efectivo',0,0,1,'2026-02-03 21:06:13','2026-02-03 21:06:13',0.00,0.00),(49,26,NULL,1,69000,69000,'2026-02-03','Efectivo',0,0,1,'2026-02-03 21:19:56','2026-02-03 21:19:56',0.00,0.00),(50,26,NULL,1,69000,69000,'2026-02-03','Efectivo',0,0,1,'2026-02-03 21:19:57','2026-02-03 21:19:57',0.00,0.00),(51,26,NULL,1,33000,33000,'2026-02-03','Efectivo/Transferencia',0,0,1,'2026-02-03 21:26:13','2026-02-03 21:26:13',6000.00,27000.00),(52,26,NULL,1,72500,72500,'2026-02-03','Efectivo',0,0,1,'2026-02-03 23:24:41','2026-02-03 23:24:41',0.00,0.00),(53,26,NULL,1,72500,72500,'2026-02-03','Efectivo',0,0,1,'2026-02-03 23:24:41','2026-02-03 23:24:41',0.00,0.00),(54,26,NULL,1,85000,85000,'2026-02-03','Efectivo/Transferencia',0,0,1,'2026-02-03 23:31:28','2026-02-03 23:31:28',32000.00,53000.00),(55,26,NULL,1,120400,120400,'2026-02-04','Efectivo',0,0,1,'2026-02-04 12:58:34','2026-02-04 12:58:34',0.00,0.00),(56,26,NULL,1,8000,8000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 13:03:40','2026-02-04 13:03:40',0.00,0.00),(57,26,NULL,1,52000,52000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 13:15:45','2026-02-04 13:15:45',0.00,0.00),(58,26,NULL,1,24200,24200,'2026-02-04','Transferencia',0,0,1,'2026-02-04 13:21:20','2026-02-04 13:21:20',0.00,0.00),(59,26,NULL,1,38000,38000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 13:26:50','2026-02-04 13:26:50',0.00,0.00),(60,26,NULL,1,165000,165000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 13:48:44','2026-02-04 13:48:44',0.00,0.00),(61,26,NULL,1,7200,7200,'2026-02-04','Efectivo',0,0,1,'2026-02-04 13:49:19','2026-02-04 13:49:19',0.00,0.00),(62,26,3,1,198000,198000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 14:05:53','2026-02-04 14:05:53',0.00,0.00),(63,26,NULL,1,130000,130000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 14:12:14','2026-02-04 14:12:14',0.00,0.00),(64,26,NULL,1,24000,24000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 14:14:55','2026-02-04 14:14:55',0.00,0.00),(65,26,NULL,1,117500,117500,'2026-02-04','Transferencia',0,0,1,'2026-02-04 14:25:59','2026-02-04 14:25:59',0.00,0.00),(66,26,NULL,1,49000,49000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 14:28:38','2026-02-04 14:28:38',0.00,0.00),(67,26,NULL,1,24500,24500,'2026-02-04','Efectivo',0,0,1,'2026-02-04 14:47:41','2026-02-04 14:47:41',0.00,0.00),(68,26,NULL,1,90500,90500,'2026-02-04','Efectivo',0,0,1,'2026-02-04 15:15:47','2026-02-04 15:15:47',0.00,0.00),(69,26,NULL,1,56000,56000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 15:20:16','2026-02-04 15:20:16',0.00,0.00),(70,26,NULL,1,165000,165000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 20:22:15','2026-02-04 20:22:15',0.00,0.00),(71,26,NULL,1,49000,49000,'2026-02-04','Transferencia',0,0,1,'2026-02-04 20:26:14','2026-02-04 20:26:14',0.00,0.00),(72,26,NULL,1,51500,51500,'2026-02-04','Transferencia',0,0,1,'2026-02-04 20:31:50','2026-02-04 20:31:50',0.00,0.00),(73,26,NULL,1,5000,5000,'2026-02-04','Transferencia',0,0,1,'2026-02-04 20:42:27','2026-02-04 20:42:27',0.00,0.00),(74,26,NULL,1,57500,57500,'2026-02-04','Transferencia',0,0,1,'2026-02-04 21:19:55','2026-02-04 21:19:55',0.00,0.00),(75,26,NULL,1,17000,17000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 21:20:28','2026-02-04 21:20:28',0.00,0.00),(76,26,NULL,1,67900,67900,'2026-02-04','Efectivo',0,0,1,'2026-02-04 21:23:19','2026-02-04 21:23:19',0.00,0.00),(77,26,NULL,1,8000,8000,'2026-02-04','Transferencia',0,0,1,'2026-02-04 21:36:53','2026-02-04 21:36:53',0.00,0.00),(78,26,NULL,1,76000,76000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 21:48:40','2026-02-04 21:48:40',0.00,0.00),(79,26,NULL,1,148000,148000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 21:57:17','2026-02-04 21:57:17',0.00,0.00),(80,26,NULL,1,17000,17000,'2026-02-04','Efectivo',0,0,1,'2026-02-04 22:20:01','2026-02-04 22:20:01',0.00,0.00),(81,26,NULL,1,123500,123500,'2026-02-04','Efectivo',0,0,1,'2026-02-04 22:21:52','2026-02-04 22:21:52',0.00,0.00),(83,26,NULL,1,84500,84500,'2026-02-04','Efectivo',0,0,1,'2026-02-04 23:05:39','2026-02-04 23:05:39',0.00,0.00),(84,26,NULL,1,24500,24500,'2026-02-04','Efectivo',0,0,1,'2026-02-04 23:11:06','2026-02-04 23:11:06',0.00,0.00),(85,26,NULL,1,39000,39000,'2026-02-04','Transferencia',0,0,1,'2026-02-04 23:37:47','2026-02-04 23:37:47',0.00,0.00),(86,26,NULL,1,67500,67500,'2026-02-04','Efectivo',0,0,1,'2026-02-04 23:40:51','2026-02-04 23:40:51',0.00,0.00),(87,26,NULL,1,173500,173500,'2026-02-05','Efectivo',0,0,1,'2026-02-05 13:44:46','2026-02-05 13:44:46',0.00,0.00),(88,26,NULL,1,2500,2500,'2026-02-05','Efectivo',0,0,1,'2026-02-05 13:45:08','2026-02-05 13:45:08',0.00,0.00),(89,26,NULL,1,99000,99000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 13:46:59','2026-02-05 13:46:59',0.00,0.00),(90,26,NULL,1,33000,33000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 13:48:43','2026-02-05 13:48:43',0.00,0.00),(91,26,NULL,1,165000,165000,'2026-02-05','Efectivo/Transferencia',0,0,1,'2026-02-05 13:49:19','2026-02-05 13:49:19',15000.00,150000.00),(92,26,NULL,1,33000,33000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 13:49:45','2026-02-05 13:49:45',0.00,0.00),(93,26,NULL,1,125000,125000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 13:52:37','2026-02-05 13:52:37',0.00,0.00),(94,26,NULL,1,40000,40000,'2026-02-05','Transferencia',0,0,1,'2026-02-05 14:14:22','2026-02-05 14:14:22',0.00,0.00),(95,26,NULL,1,99000,99000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 14:17:12','2026-02-05 14:17:12',0.00,0.00),(96,26,NULL,1,61500,61500,'2026-02-05','Transferencia',0,0,1,'2026-02-05 14:36:41','2026-02-05 14:36:41',0.00,0.00),(97,26,NULL,1,157000,157000,'2026-02-05','Transferencia',0,0,1,'2026-02-05 14:47:58','2026-02-05 14:47:58',0.00,0.00),(98,26,NULL,1,8000,8000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 14:48:34','2026-02-05 14:48:34',0.00,0.00),(99,26,4,1,90000,90000,'2026-02-05','Efectivo/Transferencia',0,0,1,'2026-02-05 14:52:38','2026-02-05 14:52:38',3000.00,87000.00),(100,26,5,1,90000,90000,'2026-02-05','Efectivo/Transferencia',0,0,1,'2026-02-05 14:54:15','2026-02-05 14:54:15',24000.00,66000.00),(101,26,7,1,57000,57000,'2026-02-05','Transferencia',0,0,1,'2026-02-05 14:57:52','2026-02-05 14:57:52',0.00,0.00),(102,26,NULL,1,179000,179000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 15:10:57','2026-02-05 15:10:57',0.00,0.00),(103,26,NULL,1,84500,84500,'2026-02-05','Transferencia',0,0,1,'2026-02-05 15:14:26','2026-02-05 15:14:26',0.00,0.00),(105,26,NULL,1,2500,2500,'2026-02-05','Efectivo',0,0,1,'2026-02-05 15:24:55','2026-02-05 15:24:55',0.00,0.00),(106,26,NULL,1,8000,8000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 15:25:56','2026-02-05 15:25:56',0.00,0.00),(107,26,NULL,1,13000,13000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 15:26:22','2026-02-05 15:26:22',0.00,0.00),(108,26,NULL,1,138500,138500,'2026-02-05','Efectivo',0,0,1,'2026-02-05 15:26:56','2026-02-05 15:26:56',0.00,0.00),(109,26,NULL,1,150500,150500,'2026-02-05','Efectivo',0,0,1,'2026-02-05 15:27:31','2026-02-05 15:27:31',0.00,0.00),(110,26,NULL,1,96000,96000,'2026-02-05','Tarjeta de Crédito',0,0,1,'2026-02-05 15:32:19','2026-02-05 15:32:19',0.00,0.00),(111,26,NULL,1,33000,33000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 15:46:22','2026-02-05 15:46:22',0.00,0.00),(112,26,9,1,161000,161000,'2026-02-05','Tarjeta de Crédito',0,0,1,'2026-02-05 15:51:40','2026-02-05 15:51:40',0.00,0.00),(113,26,10,1,330000,330000,'2026-02-05','Efectivo/Transferencia',0,0,1,'2026-02-05 16:00:09','2026-02-05 16:00:09',200000.00,130000.00),(114,26,NULL,1,13800,13800,'2026-02-05','Transferencia',0,0,1,'2026-02-05 20:45:41','2026-02-05 20:45:41',0.00,0.00),(115,26,NULL,1,66000,66000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 20:46:18','2026-02-05 20:46:18',0.00,0.00),(116,26,NULL,1,169000,169000,'2026-02-05','Transferencia',0,0,1,'2026-02-05 21:00:03','2026-02-05 21:00:03',0.00,0.00),(117,26,NULL,1,132000,132000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 21:08:45','2026-02-05 21:08:45',0.00,0.00),(119,26,NULL,1,23000,23000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 21:15:16','2026-02-05 21:15:16',0.00,0.00),(120,26,NULL,1,23000,23000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 21:15:17','2026-02-05 21:15:17',0.00,0.00),(121,26,NULL,1,39000,39000,'2026-02-05','Transferencia',0,0,1,'2026-02-05 21:18:21','2026-02-05 21:18:21',0.00,0.00),(122,26,NULL,1,23000,23000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 21:19:27','2026-02-05 21:19:27',0.00,0.00),(124,26,NULL,1,66000,66000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 21:31:53','2026-02-05 21:31:53',0.00,0.00),(125,26,NULL,1,1500,1500,'2026-02-05','Efectivo',0,0,1,'2026-02-05 21:34:08','2026-02-05 21:34:08',0.00,0.00),(126,26,NULL,1,47000,47000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 21:35:52','2026-02-05 21:35:52',0.00,0.00),(127,26,NULL,1,18500,18500,'2026-02-05','Efectivo',0,0,1,'2026-02-05 21:54:43','2026-02-05 21:54:43',0.00,0.00),(128,26,NULL,1,33000,33000,'2026-02-05','Transferencia',0,0,1,'2026-02-05 21:57:48','2026-02-05 21:57:48',0.00,0.00),(129,23,NULL,1,10000,10000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 22:40:49','2026-02-05 22:40:49',0.00,0.00),(130,23,NULL,1,37500,37500,'2026-02-05','Efectivo',0,0,1,'2026-02-05 22:49:21','2026-02-05 22:49:21',0.00,0.00),(131,26,NULL,1,87000,87000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 22:58:35','2026-02-05 22:58:35',0.00,0.00),(132,26,11,1,0,0,'2026-02-05','Efectivo',0,0,1,'2026-02-05 22:59:44','2026-02-05 22:59:44',0.00,0.00),(133,26,NULL,1,112000,112000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 23:01:19','2026-02-05 23:01:19',0.00,0.00),(134,26,NULL,1,85000,85000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 23:05:12','2026-02-05 23:05:12',0.00,0.00),(135,26,NULL,1,6700,6700,'2026-02-05','Efectivo',0,0,1,'2026-02-05 23:05:57','2026-02-05 23:05:57',0.00,0.00),(136,23,NULL,1,33000,33000,'2026-02-05','Transferencia',0,0,1,'2026-02-05 23:20:33','2026-02-05 23:20:33',0.00,0.00),(137,23,NULL,1,1500,1500,'2026-02-05','Efectivo',0,0,1,'2026-02-05 23:26:25','2026-02-05 23:26:25',0.00,0.00),(138,23,NULL,1,2700,2700,'2026-02-05','Efectivo',0,0,1,'2026-02-05 23:28:30','2026-02-05 23:28:30',0.00,0.00),(139,26,NULL,1,33000,33000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 23:49:05','2026-02-05 23:49:05',0.00,0.00),(140,26,NULL,1,20000,20000,'2026-02-05','Efectivo',0,0,1,'2026-02-05 23:58:18','2026-02-05 23:58:18',0.00,0.00),(141,23,12,1,0,0,'2026-02-06','Efectivo',0,0,1,'2026-02-06 12:43:31','2026-02-06 12:43:31',0.00,0.00),(142,23,12,1,0,0,'2026-02-06','Efectivo',0,0,1,'2026-02-06 12:46:27','2026-02-06 12:46:27',0.00,0.00),(143,26,NULL,1,340000,340000,'2026-02-06','Efectivo',0,0,1,'2026-02-06 12:46:43','2026-02-06 12:46:43',0.00,0.00),(144,26,NULL,1,2500,2500,'2026-02-06','Efectivo',0,0,1,'2026-02-06 12:49:13','2026-02-06 12:49:13',0.00,0.00),(145,26,NULL,1,115600,115600,'2026-02-06','Efectivo/Transferencia',0,0,1,'2026-02-06 12:55:25','2026-02-06 12:55:25',50000.00,65600.00),(146,26,NULL,1,8000,8000,'2026-02-06','Efectivo',0,0,1,'2026-02-06 13:02:02','2026-02-06 13:02:02',0.00,0.00),(147,26,NULL,1,18500,18500,'2026-02-06','Efectivo',0,0,1,'2026-02-06 13:02:26','2026-02-06 13:02:26',0.00,0.00),(148,26,NULL,1,24000,24000,'2026-02-06','Efectivo',0,0,1,'2026-02-06 13:13:59','2026-02-06 13:13:59',0.00,0.00),(149,26,NULL,1,19000,19000,'2026-02-06','Efectivo',0,0,1,'2026-02-06 13:24:17','2026-02-06 13:24:17',0.00,0.00),(150,26,13,1,0,0,'2026-02-06','Efectivo',0,0,1,'2026-02-06 13:25:21','2026-02-06 13:25:21',0.00,0.00),(151,26,NULL,1,90600,90600,'2026-02-06','Efectivo',0,0,1,'2026-02-06 13:34:11','2026-02-06 13:34:11',0.00,0.00),(153,26,NULL,1,33800,33800,'2026-02-06','Efectivo',0,0,1,'2026-02-06 13:47:47','2026-02-06 13:47:47',0.00,0.00),(154,26,NULL,1,2500,2500,'2026-02-06','Efectivo',0,0,1,'2026-02-06 13:49:19','2026-02-06 13:49:19',0.00,0.00),(155,26,NULL,1,138400,138400,'2026-02-06','Efectivo',0,0,1,'2026-02-06 14:22:58','2026-02-06 14:22:58',0.00,0.00),(156,26,NULL,1,167900,167900,'2026-02-06','Transferencia',0,0,1,'2026-02-06 14:24:22','2026-02-06 14:24:22',0.00,0.00),(157,26,NULL,1,2500,2500,'2026-02-06','Efectivo',0,0,1,'2026-02-06 14:50:12','2026-02-06 14:50:12',0.00,0.00),(158,26,14,1,127100,127100,'2026-02-06','Efectivo',0,0,1,'2026-02-06 14:52:55','2026-02-06 14:52:55',0.00,0.00),(159,26,15,1,187500,187500,'2026-02-06','Transferencia',0,0,1,'2026-02-06 14:54:41','2026-02-06 14:54:41',0.00,0.00),(160,26,16,1,129500,129500,'2026-02-06','Efectivo',0,0,1,'2026-02-06 14:56:10','2026-02-06 14:56:10',0.00,0.00),(161,26,2,1,76800,76800,'2026-02-06','Efectivo',0,0,1,'2026-02-06 14:57:40','2026-02-06 14:57:40',0.00,0.00),(162,26,NULL,1,155200,155200,'2026-02-06','Efectivo',0,0,1,'2026-02-06 15:12:27','2026-02-06 15:12:27',0.00,0.00),(163,26,NULL,1,17000,17000,'2026-02-06','Efectivo',0,0,1,'2026-02-06 15:13:36','2026-02-06 15:13:36',0.00,0.00),(165,26,NULL,1,28500,28500,'2026-02-06','Efectivo',0,0,1,'2026-02-06 15:54:58','2026-02-06 15:54:58',0.00,0.00),(166,26,NULL,1,24000,24000,'2026-02-06','Efectivo',0,0,1,'2026-02-06 16:05:37','2026-02-06 16:05:37',0.00,0.00),(167,26,NULL,1,14500,14500,'2026-02-06','Efectivo',0,0,1,'2026-02-06 16:07:52','2026-02-06 16:07:52',0.00,0.00);
/*!40000 ALTER TABLE `sells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `product_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `user_id` int NOT NULL,
  `chalan_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `stock_quantity` int NOT NULL,
  `current_quantity` int NOT NULL DEFAULT '0',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`),
  KEY `vendor_id` (`vendor_id`),
  KEY `stock_quantity` (`stock_quantity`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (1,34,'1770040951',34,1,26,'2026-02-02',0,14500,0,110,110,'prueba',1,'2026-02-02 11:02:31','2026-02-03 00:46:56'),(3,36,'1770044863',47,1,23,'2026-02-02',0,1800,0,5,4,NULL,1,'2026-02-02 12:07:43','2026-02-03 21:03:36'),(4,37,'1770044905',57,1,23,'2026-02-02',0,18000,0,4,4,NULL,1,'2026-02-02 12:08:25','2026-02-02 12:08:25'),(5,36,'1770044937',45,1,23,'2026-02-02',0,2000,0,1,1,NULL,1,'2026-02-02 12:08:57','2026-02-02 12:08:57'),(6,36,'1770044978',27,1,23,'2026-02-02',0,14500,0,55,45,NULL,1,'2026-02-02 12:09:38','2026-02-06 16:07:52'),(8,37,'1770045361',13,1,23,'2026-02-02',0,2500,0,5,5,NULL,1,'2026-02-02 12:16:01','2026-02-02 12:16:01'),(9,37,'1770045657',15,1,23,'2026-02-02',0,1500,0,5,5,NULL,1,'2026-02-02 12:20:57','2026-02-02 12:20:57'),(10,36,'1770045866',29,2,23,'2026-02-02',0,18500,0,77,39,NULL,1,'2026-02-02 12:24:26','2026-02-06 15:54:58'),(11,36,'1770045918',28,2,23,'2026-02-02',0,24000,0,93,51,NULL,1,'2026-02-02 12:25:18','2026-02-06 16:05:37'),(12,36,'1770052661',22,2,23,'2026-02-02',0,23000,0,126,108,NULL,1,'2026-02-02 14:17:41','2026-02-06 13:34:11'),(14,36,'1770052713',43,2,23,'2026-02-02',0,4500,0,5,2,NULL,1,'2026-02-02 14:18:33','2026-02-06 13:24:17'),(15,36,'1770052864',24,2,23,'2026-02-02',0,17000,0,24,17,NULL,1,'2026-02-02 14:21:04','2026-02-06 15:13:59'),(16,36,'1770052935',49,2,23,'2026-02-02',0,1700,0,5,4,NULL,1,'2026-02-02 14:22:15','2026-02-05 23:05:57'),(17,36,'1770053026',52,2,23,'2026-02-02',0,1500,0,21,17,NULL,1,'2026-02-02 14:23:46','2026-02-06 15:12:27'),(18,37,'1770053071',3,1,23,'2026-02-02',0,38500,0,8,2,NULL,1,'2026-02-02 14:24:31','2026-02-05 21:24:29'),(19,37,'1770053153',62,1,23,'2026-02-02',0,3500,0,12,12,NULL,1,'2026-02-02 14:25:53','2026-02-02 14:25:53'),(20,37,'1770053255',60,1,23,'2026-02-02',0,8500,0,1,1,NULL,1,'2026-02-02 14:27:35','2026-02-02 14:27:35'),(21,36,'1770053335',25,2,23,'2026-02-02',0,10000,0,48,44,NULL,1,'2026-02-02 14:28:55','2026-02-06 15:54:58'),(22,36,'1770053381',59,2,23,'2026-02-02',0,2000,0,4,4,NULL,1,'2026-02-02 14:29:41','2026-02-02 14:29:41'),(23,36,'1770053490',30,2,23,'2026-02-02',0,19000,0,17,13,NULL,1,'2026-02-02 14:31:30','2026-02-06 14:57:40'),(24,36,'1770053522',31,2,23,'2026-02-02',0,19000,0,20,18,NULL,1,'2026-02-02 14:32:02','2026-02-04 12:58:34'),(25,36,'1770053610',55,2,23,'2026-02-02',0,23000,0,1,1,NULL,1,'2026-02-02 14:33:30','2026-02-02 14:33:30'),(26,36,'1770053692',64,2,23,'2026-02-02',0,4000,0,6,4,NULL,1,'2026-02-02 14:34:52','2026-02-06 13:24:17'),(27,36,'1770053720',21,2,23,'2026-02-02',0,23000,0,67,59,NULL,1,'2026-02-02 14:35:20','2026-02-05 21:19:27'),(28,37,'1770053793',58,1,23,'2026-02-02',0,145000,0,4,4,NULL,1,'2026-02-02 14:36:33','2026-02-02 14:36:33'),(29,37,'1770053993',7,1,23,'2026-02-02',0,14000,0,85,82,NULL,1,'2026-02-02 14:39:53','2026-02-03 21:06:13'),(30,36,'1770054020',20,1,23,'2026-02-02',0,17000,0,160,134,NULL,1,'2026-02-02 14:40:20','2026-02-06 12:46:43'),(31,36,'1770054120',51,2,23,'2026-02-02',0,1200,0,146,146,NULL,1,'2026-02-02 14:42:00','2026-02-02 14:42:00'),(32,36,'1770054159',53,2,23,'2026-02-02',0,1200,0,17,17,NULL,1,'2026-02-02 14:42:39','2026-02-02 14:42:39'),(33,36,'1770054182',54,2,23,'2026-02-02',0,1200,0,17,17,NULL,1,'2026-02-02 14:43:02','2026-02-02 14:43:02'),(34,37,'1770054249',6,1,23,'2026-02-02',0,13000,0,89,74,NULL,1,'2026-02-02 14:44:09','2026-02-05 21:18:21'),(35,37,'1770054296',5,1,23,'2026-02-02',0,17500,0,167,167,NULL,1,'2026-02-02 14:44:56','2026-02-02 14:56:02'),(36,36,'1770054339',23,1,23,'2026-02-02',0,8000,0,92,84,NULL,1,'2026-02-02 14:45:39','2026-02-05 21:12:57'),(37,37,'1770054367',14,1,23,'2026-02-02',0,1000,0,1,1,NULL,1,'2026-02-02 14:46:07','2026-02-02 14:46:07'),(38,36,'1770054401',41,1,23,'2026-02-02',0,1000,0,15,15,NULL,1,'2026-02-02 14:46:41','2026-02-02 14:53:13'),(39,36,'1770054437',40,1,23,'2026-02-02',0,1500,0,7,6,NULL,1,'2026-02-02 14:47:17','2026-02-05 21:34:08'),(40,37,'1770054470',9,1,23,'2026-02-02',0,33800,0,413,268,NULL,1,'2026-02-02 14:47:50','2026-02-06 15:12:27'),(41,37,'1770054498',8,1,23,'2026-02-02',0,36000,0,1,1,NULL,1,'2026-02-02 14:48:18','2026-02-02 14:48:18'),(42,37,'1770054619',38,1,23,'2026-02-02',0,10000,0,15,7,NULL,1,'2026-02-02 14:50:19','2026-02-06 13:24:17'),(43,37,'1770054690',16,1,23,'2026-02-02',0,2500,0,15,5,NULL,1,'2026-02-02 14:51:30','2026-02-06 14:50:12'),(44,37,'1770054728',2,1,23,'2026-02-02',0,13000,0,71,69,NULL,1,'2026-02-02 14:52:08','2026-02-05 21:18:21'),(45,36,'1770054834',50,1,23,'2026-02-02',0,1500,0,2,2,NULL,1,'2026-02-02 14:53:54','2026-02-02 14:53:54'),(46,37,'1770054910',10,1,23,'2026-02-02',0,35000,0,8,8,NULL,1,'2026-02-02 14:55:10','2026-02-02 14:55:10'),(48,37,'1770055142',11,1,23,'2026-02-02',0,13000,0,2,2,NULL,1,'2026-02-02 14:59:02','2026-02-02 14:59:02'),(49,37,'1770055170',66,1,23,'2026-02-02',0,10000,0,1,1,NULL,1,'2026-02-02 14:59:30','2026-02-02 14:59:30'),(50,37,'1770055237',12,1,23,'2026-02-02',0,8000,0,1,1,NULL,1,'2026-02-02 15:00:37','2026-02-02 15:00:37'),(51,37,'1770055287',18,1,23,'2026-02-02',0,19000,0,79,67,NULL,1,'2026-02-02 15:01:27','2026-02-06 12:46:27'),(52,37,'1770055314',19,1,23,'2026-02-02',0,2500,0,2,0,NULL,1,'2026-02-02 15:01:54','2026-02-06 12:51:35'),(53,36,'1770055408',37,1,23,'2026-02-02',0,2000,0,13,13,NULL,1,'2026-02-02 15:03:28','2026-02-02 15:03:28'),(54,34,'1770055454',35,1,23,'2026-02-02',0,13500,0,24,23,NULL,1,'2026-02-02 15:04:14','2026-02-05 21:11:46'),(55,34,'1770055484',34,1,23,'2026-02-02',0,14500,0,28,28,NULL,1,'2026-02-02 15:04:44','2026-02-02 15:04:44'),(56,34,'1770055513',36,1,23,'2026-02-02',0,12500,0,4,4,NULL,1,'2026-02-02 15:05:13','2026-02-02 15:05:13'),(57,34,'1770055513',36,1,23,'2026-02-02',0,12500,0,4,4,NULL,1,'2026-02-02 15:05:13','2026-02-02 15:05:13'),(58,36,'1770055548',61,1,23,'2026-02-02',0,8000,0,11,4,NULL,1,'2026-02-02 15:05:48','2026-02-06 13:25:21'),(59,36,'1770055574',63,1,23,'2026-02-02',0,1800,0,3,2,NULL,1,'2026-02-02 15:06:14','2026-02-05 20:45:41'),(60,36,'1770055755',67,2,23,'2026-02-02',0,17500,0,115,114,NULL,1,'2026-02-02 15:09:15','2026-02-03 14:56:52'),(61,36,'1770055793',68,2,23,'2026-02-02',0,17500,0,100,98,NULL,1,'2026-02-02 15:09:53','2026-02-05 15:32:19'),(62,37,'1770066282',4,1,12,'2026-02-02',0,17500,0,68,68,NULL,1,'2026-02-02 18:04:42','2026-02-03 19:49:58'),(63,36,'1770325977',23,3,23,'2026-02-05',729307.29,8000,0,100,99,NULL,1,'2026-02-05 21:12:57','2026-02-06 13:02:02'),(64,36,'1770334085',69,2,23,'2026-02-05',0,2700,0,2,1,'VIDRIO',1,'2026-02-05 23:28:05','2026-02-05 23:28:30'),(65,37,'1770335861',19,1,23,'2026-02-05',0,1800,0,60,59,NULL,1,'2026-02-05 23:57:41','2026-02-06 12:53:30');
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` int NOT NULL DEFAULT '1',
  `role_id` int NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'Francisco Lara','Fran@matisco','$2y$10$W/nqTuN0X.JaGtGBkpw01OTSL0I3aShYL9QusP8Q5kIZ2AviqQHKC',1,2,'a8L4XjaksEieyWfJmPF6Nf3JThNjReR3Cve3bjz7UINaJb7NZmWe7ATvkSE5','2020-07-31 17:27:25','2026-02-02 17:32:21'),(23,'Cristina Lara','Cristina@matisco','$2y$10$g8HiI2fmhUmZX/3Skgf5j.n.vFmOWN4nvliq5LEEI3Vxjqm4psIKa',1,2,NULL,'2026-02-01 21:19:14','2026-02-02 17:32:06'),(24,'Elizabeth Bridarolli','Eli@matisco','$2y$10$p1tOUVXsLjSwpZdhPs5OcelS5Ws02GHc/hB4OEAtO0Gm7p1EelMAK',1,13,'6p6te7Jaht0129mKqNbtSXiEXfYFLaf6jxWumQ9eJVU8tKnAPlyoXEvQIP0l','2026-02-01 21:20:17','2026-02-05 21:32:58'),(25,'Hugo Lara','Hugo@matisco','$2y$10$0AlckkMmXbuZY6OJjUVbluU/.tM3qI3Bbcm7VVASJEp1DRyTJO2U6',1,2,'y6u2j6n0xgLg2ZtBr4Gx4Xfp28wBXrLIjxwU0SPzDVDnd1TUupxYI7pSI3aI','2026-02-01 21:20:51','2026-02-02 17:31:50'),(26,'Geovana Piaggesi','Geo@matisco','$2y$10$NOssfl83BAe8yx1g9cvjwOjuMq/f4DiKhkTh6DoohVajX2el9EQo2',1,5,'JKYEaqXrtNQxOzclwqayus2OoizR6w61Jup3kzWM3i9uE5PcyO9vqlUxSRUJ','2026-02-01 21:21:45','2026-02-03 12:33:34'),(27,'prueba','prueba','$2y$10$TNKa6xSn2bRfN1zDiGhi..bFoX5RkM7ZXQSS1gY5Btts.QuMg6Soq',1,2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'x','343434','x@gmail.com','x','2026-01-22 12:42:02','2026-01-22 12:42:02'),(2,'COCA COLA','.','.','.','2026-01-23 18:21:00','2026-01-23 18:21:00'),(3,'QUILMES','..','..','..','2026-02-05 21:37:47','2026-02-05 21:37:47');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-06 15:56:20
