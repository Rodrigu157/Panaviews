-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: panaviews
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `categoria_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`categoria_id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'ecologico'),(2,'gastronomico'),(3,'historico'),(4,'paradisiaco'),(5,'recreativo'),(6,'reflexion'),(7,'tiempo limitado');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corregimientos`
--

DROP TABLE IF EXISTS `corregimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corregimientos` (
  `corregimientos_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `distrito_id` int DEFAULT NULL,
  PRIMARY KEY (`corregimientos_id`),
  UNIQUE KEY `corregimientos_id` (`corregimientos_id`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `distrito_id` (`distrito_id`),
  CONSTRAINT `corregimientos_ibfk_1` FOREIGN KEY (`distrito_id`) REFERENCES `distrito` (`distrito_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corregimientos`
--

LOCK TABLES `corregimientos` WRITE;
/*!40000 ALTER TABLE `corregimientos` DISABLE KEYS */;
INSERT INTO `corregimientos` VALUES (1,'24 de Diciembre',1),(2,'Alcalde Díaz',1),(3,'Ancón',1),(4,'Bella Vista',1),(5,'Betania',1),(6,'Calidonia',1),(7,'Chilibre',1),(8,'Curundú',1),(9,'El Chorrillo',1),(10,'Las Cumbres',1),(11,'Juan Díaz',1),(12,'Ernesto Córdoba Campos',1),(13,'Las Mañanitas',1),(14,'Pacora',1),(15,'Parque Lefevre',1),(16,'Pedegral',1),(17,'Pueblo Nuevo',1),(18,'Río Abajo',1),(19,'San Felipe',1),(20,'San Francisco',1),(21,'San Martín',1),(22,'Santa Ana ',1),(23,'Tocumen',1),(24,'Veracruz',1),(25,'Las Garzas',1),(26,'Armelia Denis de Icaza',2),(27,'Belisario Frías',2),(28,'José Domingo Espinar',2),(29,'Mateo Iturralde',2),(30,'Omar Torrijos',2),(31,'Rufina Alfaro',2),(32,'Victoriano Lorenzo',2),(33,'Arnulfo Arias',2),(34,'Belisario Porras',2),(35,'Chepo',3),(36,'Cañitas',3),(37,'Chepillo',3),(38,'El Llano',3),(39,'Las Margaritas',3),(40,'Santa Cruz de Chinina',3),(41,'Tortí',3),(42,'Chimán',4),(43,'Brujas',4),(44,'Gonzalo Vásquez',4),(45,'Unión Santeña',4),(46,'Balboa',5),(47,'San Miguel',5),(48,'La Ensenada',5),(49,'Lajas Blancas',5),(50,'El Real de Santa María',5),(51,'Taboga',6),(52,'Otoque Occidente',6);
/*!40000 ALTER TABLE `corregimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distrito` (
  `distrito_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `provincia_id` int DEFAULT NULL,
  PRIMARY KEY (`distrito_id`),
  KEY `fk_provincia` (`provincia_id`),
  CONSTRAINT `fk_provincia` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES (1,'Panamá',1),(2,'San Miguelito',1),(3,'Chepo',1),(4,'Chimán',1),(5,'Balboa',1),(6,'Taboga',1);
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edad`
--

DROP TABLE IF EXISTS `edad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edad` (
  `edad_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`edad_id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edad`
--

LOCK TABLES `edad` WRITE;
/*!40000 ALTER TABLE `edad` DISABLE KEYS */;
INSERT INTO `edad` VALUES (2,'jovenes'),(3,'mas 18'),(1,'niños');
/*!40000 ALTER TABLE `edad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `evento_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` text,
  `provincia_id` int DEFAULT NULL,
  `distrito_id` int DEFAULT NULL,
  `corregimientos_id` int DEFAULT NULL,
  `precio_id` int DEFAULT NULL,
  `categoria_id` int DEFAULT NULL,
  `edad_id` int DEFAULT NULL,
  `redes sociales` varchar(45) DEFAULT NULL,
  `num_telefono` varchar(45) DEFAULT NULL,
  `horario` varchar(45) DEFAULT NULL,
  `posicion` point DEFAULT NULL,
  PRIMARY KEY (`evento_id`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `fk_provincia1` (`provincia_id`),
  KEY `fk_distrito1` (`distrito_id`),
  KEY `fk_corregimiento` (`corregimientos_id`),
  KEY `fk_precio1` (`precio_id`),
  KEY `fk_categoria2` (`categoria_id`),
  KEY `fk_edad` (`edad_id`),
  CONSTRAINT `fk_categoria2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`),
  CONSTRAINT `fk_corregimiento` FOREIGN KEY (`corregimientos_id`) REFERENCES `corregimientos` (`corregimientos_id`),
  CONSTRAINT `fk_distrito1` FOREIGN KEY (`distrito_id`) REFERENCES `distrito` (`distrito_id`),
  CONSTRAINT `fk_edad` FOREIGN KEY (`edad_id`) REFERENCES `edad` (`edad_id`),
  CONSTRAINT `fk_precio1` FOREIGN KEY (`precio_id`) REFERENCES `precio` (`precio_id`),
  CONSTRAINT `fk_provincia1` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugares`
--

DROP TABLE IF EXISTS `lugares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lugares` (
  `lugares_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` text,
  `corregimientos_id` int DEFAULT NULL,
  `distrito_id` int DEFAULT NULL,
  `provincia_id` int DEFAULT NULL,
  `categoria_id` int DEFAULT NULL,
  `edad_id` int DEFAULT NULL,
  `precio_id` int DEFAULT NULL,
  `horario` varchar(45) DEFAULT NULL,
  `redes sociales` varchar(45) DEFAULT NULL,
  `num_telefono` varchar(45) DEFAULT NULL,
  `posicion` point DEFAULT NULL,
  PRIMARY KEY (`lugares_id`),
  UNIQUE KEY `lugares_id` (`lugares_id`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `corregimientos_id` (`corregimientos_id`),
  KEY `distrito_id` (`distrito_id`),
  KEY `provincia_id` (`provincia_id`),
  KEY `fk_categoria` (`categoria_id`),
  KEY `fk_edad1` (`edad_id`),
  KEY `fk_precio3` (`precio_id`),
  CONSTRAINT `fk_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`),
  CONSTRAINT `fk_edad1` FOREIGN KEY (`edad_id`) REFERENCES `edad` (`edad_id`),
  CONSTRAINT `fk_precio3` FOREIGN KEY (`precio_id`) REFERENCES `precio` (`precio_id`),
  CONSTRAINT `lugares_ibfk_1` FOREIGN KEY (`corregimientos_id`) REFERENCES `corregimientos` (`corregimientos_id`),
  CONSTRAINT `lugares_ibfk_2` FOREIGN KEY (`distrito_id`) REFERENCES `distrito` (`distrito_id`),
  CONSTRAINT `lugares_ibfk_3` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`provincia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugares`
--

LOCK TABLES `lugares` WRITE;
/*!40000 ALTER TABLE `lugares` DISABLE KEYS */;
/*!40000 ALTER TABLE `lugares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opiniones`
--

DROP TABLE IF EXISTS `opiniones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opiniones` (
  `user_id` int DEFAULT NULL,
  `comentario` text,
  `lugares_id` int DEFAULT NULL,
  `restaurante_id` int DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `fk_opiniones1` (`lugares_id`),
  KEY `fk_opiniones2` (`restaurante_id`),
  CONSTRAINT `fk_opiniones1` FOREIGN KEY (`lugares_id`) REFERENCES `lugares` (`lugares_id`),
  CONSTRAINT `fk_opiniones2` FOREIGN KEY (`restaurante_id`) REFERENCES `restaurante` (`restaurante_id`),
  CONSTRAINT `opiniones_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opiniones`
--

LOCK TABLES `opiniones` WRITE;
/*!40000 ALTER TABLE `opiniones` DISABLE KEYS */;
/*!40000 ALTER TABLE `opiniones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precio`
--

DROP TABLE IF EXISTS `precio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precio` (
  `precio_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`precio_id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precio`
--

LOCK TABLES `precio` WRITE;
/*!40000 ALTER TABLE `precio` DISABLE KEYS */;
INSERT INTO `precio` VALUES (3,'$$$ojo'),(2,'$$cariñoso'),(1,'$tranqui');
/*!40000 ALTER TABLE `precio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `provincia_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Bocas del Toro'),(2,'Coclé'),(3,'Colón'),(4,'Chiriquí'),(5,'Darién'),(6,'Herrera'),(7,'Los Santos'),(8,'Panamá'),(9,'Panamá Oeste'),(10,'Veraguas');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurante`
--

DROP TABLE IF EXISTS `restaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurante` (
  `restaurante_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` text,
  `provincia_id` int DEFAULT NULL,
  `distrito_id` int DEFAULT NULL,
  `corregimientos_id` int DEFAULT NULL,
  `categoria_id` int DEFAULT NULL,
  `precio_id` int DEFAULT NULL,
  `redes sociales` varchar(45) DEFAULT NULL,
  `num_telefono` varchar(45) DEFAULT NULL,
  `horario` varchar(45) DEFAULT NULL,
  `posicion` point DEFAULT NULL,
  PRIMARY KEY (`restaurante_id`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `fk_provincia2` (`provincia_id`),
  KEY `fk_distrito` (`distrito_id`),
  KEY `fk_corregimiento1` (`corregimientos_id`),
  KEY `fk_categoria1` (`categoria_id`),
  KEY `fk_precio` (`precio_id`),
  CONSTRAINT `fk_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`),
  CONSTRAINT `fk_corregimiento1` FOREIGN KEY (`corregimientos_id`) REFERENCES `corregimientos` (`corregimientos_id`),
  CONSTRAINT `fk_distrito` FOREIGN KEY (`distrito_id`) REFERENCES `distrito` (`distrito_id`),
  CONSTRAINT `fk_precio` FOREIGN KEY (`precio_id`) REFERENCES `precio` (`precio_id`),
  CONSTRAINT `fk_provincia2` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`provincia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurante`
--

LOCK TABLES `restaurante` WRITE;
/*!40000 ALTER TABLE `restaurante` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `tipo_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`tipo_id`),
  UNIQUE KEY `tipo_id` (`tipo_id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (2,'extranjero'),(1,'residente');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `contraseña` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `tipo_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `correo` (`correo`),
  KEY `fk_tipo` (`tipo_id`),
  CONSTRAINT `fk_tipo` FOREIGN KEY (`tipo_id`) REFERENCES `tipo` (`tipo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'panaviews'
--

--
-- Dumping routines for database 'panaviews'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-18 17:39:15
