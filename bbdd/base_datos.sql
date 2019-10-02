-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administradores` (
  `idadministradores` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(65) DEFAULT NULL,
  `pais` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`idadministradores`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES (1,'todas','españa'),(2,'sur','españa'),(3,'norte','españa');
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administradores_has_usuarios`
--

DROP TABLE IF EXISTS `administradores_has_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administradores_has_usuarios` (
  `administradores_idadministradores` int(11) NOT NULL,
  `usuarios_idusuarios` int(11) NOT NULL,
  PRIMARY KEY (`administradores_idadministradores`,`usuarios_idusuarios`),
  KEY `fk_administradores_has_usuarios_usuarios1_idx` (`usuarios_idusuarios`),
  KEY `fk_administradores_has_usuarios_administradores1_idx` (`administradores_idadministradores`),
  CONSTRAINT `fk_administradores_has_usuarios_administradores1` FOREIGN KEY (`administradores_idadministradores`) REFERENCES `administradores` (`idadministradores`),
  CONSTRAINT `fk_administradores_has_usuarios_usuarios1` FOREIGN KEY (`usuarios_idusuarios`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores_has_usuarios`
--

LOCK TABLES `administradores_has_usuarios` WRITE;
/*!40000 ALTER TABLE `administradores_has_usuarios` DISABLE KEYS */;
INSERT INTO `administradores_has_usuarios` VALUES (1,1),(2,1),(1,2),(2,2),(1,3),(2,3),(1,4),(3,4),(1,5),(3,5),(1,6),(1,7),(2,7),(1,8),(3,8);
/*!40000 ALTER TABLE `administradores_has_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aseos`
--

DROP TABLE IF EXISTS `aseos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aseos` (
  `idaseos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `calle` varchar(200) DEFAULT NULL,
  `num` varchar(5) DEFAULT NULL,
  `cp` varchar(8) DEFAULT NULL,
  `ciudad` varchar(65) DEFAULT NULL,
  `pais` varchar(55) DEFAULT NULL,
  `web` varchar(70) DEFAULT NULL,
  `local` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idaseos`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseos`
--

LOCK TABLES `aseos` WRITE;
/*!40000 ALTER TABLE `aseos` DISABLE KEYS */;
INSERT INTO `aseos` VALUES (1,'signes reposteria creativa','partida viñes','16','03518','tarbena','españa','http://www.signesreposteria.com/','otro'),(2,'bar pepe','plaza carmen','2','29640','fuengirola','españa','','bar'),(3,'gran clavel','calle gran via','11','28013','madrid','españa','https://granclavel.com','restaurante'),(4,'centro comercial ruta de la plata','calle londres','1','10005','caceres','españa','https://centrocomercialrutadelaplata.com','centrocomercial'),(5,'hotel cimbel','avenida de europa','1','03503','benidorm','españa','https://www.hotelcimbel.com','alojamiento'),(6,'centro comercial parquesur','avenida de gran bretaña',NULL,'28916','leganes','españa','https://www.parquesur.com','centrocomercial'),(7,'starbucks salamanca','plaza mayor','21','37002','salamanca','españa','http://www.starbucks.es','bar'),(8,'viana restaurante','carrer del vidre','7','08002','barcelona','españa','https://www.vianabcn.com','restaurante');
/*!40000 ALTER TABLE `aseos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aseos_has_comentarios`
--

DROP TABLE IF EXISTS `aseos_has_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aseos_has_comentarios` (
  `aseos_idaseos` int(11) NOT NULL,
  `comentarios_idcomentarios` int(11) NOT NULL,
  PRIMARY KEY (`aseos_idaseos`,`comentarios_idcomentarios`),
  KEY `fk_aseos_has_comentarios_comentarios1_idx` (`comentarios_idcomentarios`),
  KEY `fk_aseos_has_comentarios_aseos1_idx` (`aseos_idaseos`),
  CONSTRAINT `fk_aseos_has_comentarios_aseos1` FOREIGN KEY (`aseos_idaseos`) REFERENCES `aseos` (`idaseos`),
  CONSTRAINT `fk_aseos_has_comentarios_comentarios1` FOREIGN KEY (`comentarios_idcomentarios`) REFERENCES `comentarios` (`idcomentarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseos_has_comentarios`
--

LOCK TABLES `aseos_has_comentarios` WRITE;
/*!40000 ALTER TABLE `aseos_has_comentarios` DISABLE KEYS */;
INSERT INTO `aseos_has_comentarios` VALUES (3,1),(1,2),(1,3);
/*!40000 ALTER TABLE `aseos_has_comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aseos_has_servicios`
--

DROP TABLE IF EXISTS `aseos_has_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aseos_has_servicios` (
  `aseos_idaseos` int(11) NOT NULL,
  `servicios_idservicios` int(11) NOT NULL,
  PRIMARY KEY (`aseos_idaseos`,`servicios_idservicios`),
  KEY `fk_aseos_has_servicios_servicios1_idx` (`servicios_idservicios`),
  KEY `fk_aseos_has_servicios_aseos1_idx` (`aseos_idaseos`),
  CONSTRAINT `fk_aseos_has_servicios_aseos1` FOREIGN KEY (`aseos_idaseos`) REFERENCES `aseos` (`idaseos`),
  CONSTRAINT `fk_aseos_has_servicios_servicios1` FOREIGN KEY (`servicios_idservicios`) REFERENCES `servicios` (`idservicios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseos_has_servicios`
--

LOCK TABLES `aseos_has_servicios` WRITE;
/*!40000 ALTER TABLE `aseos_has_servicios` DISABLE KEYS */;
INSERT INTO `aseos_has_servicios` VALUES (5,1),(2,2),(7,3),(1,4),(3,5),(4,6),(6,7),(8,8);
/*!40000 ALTER TABLE `aseos_has_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `idcomentarios` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` longtext,
  `valoracion` int(11) DEFAULT NULL,
  `limpieza` int(11) DEFAULT NULL,
  `comodidad` int(11) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcomentarios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In cursus augue ac ex vestibulum, et scelerisque urna dapibus. Etiam sagittis magna vitae arcu maximus mattis. Quisque ipsum risus, consectetur a cursus id, maximus malesuada nisi. Fusce quam odio, tristique vitae est in, porta blandit nunc.',10,5,4,'Super limpio'),(2,'Comerse un pastel y tomarse una limonada es un placer. Pero después poder a un baño como este lo es todavía más. Es precioso. Hasta el último detalle. El único problema es que para secarse las manos había una toalla y eso da un poco de asquito...',8,4,4,'Unos pasteles que te cagas'),(3,'A ver... No puedes poner una toalla en un baño.',2,1,4,'Secarse con la misma toalla que el resto...');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotos` (
  `idfotos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfotos`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (1,'featured1.jpg'),(2,'featured2.jpg'),(3,'featured3.jpg'),(4,'featured4.jpg'),(5,'featured5.jpg'),(6,'featured6.jpg'),(7,'featured7.jpg'),(8,'featured8.jpg');
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_has_aseos`
--

DROP TABLE IF EXISTS `fotos_has_aseos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotos_has_aseos` (
  `fotos_idfotos` int(11) NOT NULL,
  `aseos_idaseos` int(11) NOT NULL,
  PRIMARY KEY (`fotos_idfotos`,`aseos_idaseos`),
  KEY `fk_fotos_has_aseos_aseos1_idx` (`aseos_idaseos`),
  KEY `fk_fotos_has_aseos_fotos1_idx` (`fotos_idfotos`),
  CONSTRAINT `fk_fotos_has_aseos_aseos1` FOREIGN KEY (`aseos_idaseos`) REFERENCES `aseos` (`idaseos`),
  CONSTRAINT `fk_fotos_has_aseos_fotos1` FOREIGN KEY (`fotos_idfotos`) REFERENCES `fotos` (`idfotos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_has_aseos`
--

LOCK TABLES `fotos_has_aseos` WRITE;
/*!40000 ALTER TABLE `fotos_has_aseos` DISABLE KEYS */;
INSERT INTO `fotos_has_aseos` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8);
/*!40000 ALTER TABLE `fotos_has_aseos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `niveles`
--

DROP TABLE IF EXISTS `niveles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `niveles` (
  `idniveles` int(11) NOT NULL AUTO_INCREMENT,
  `comentar` tinyint(4) DEFAULT NULL,
  `perfil` tinyint(4) DEFAULT NULL,
  `agregar` tinyint(4) DEFAULT NULL,
  `gestion_com` tinyint(4) DEFAULT NULL,
  `gestion_usuarios` tinyint(4) DEFAULT NULL,
  `gestion_admins` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idniveles`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niveles`
--

LOCK TABLES `niveles` WRITE;
/*!40000 ALTER TABLE `niveles` DISABLE KEYS */;
INSERT INTO `niveles` VALUES (1,1,1,1,1,1,1),(2,1,1,1,1,1,0),(3,1,1,0,0,0,0),(4,1,1,0,0,0,0),(5,0,0,0,0,0,0);
/*!40000 ALTER TABLE `niveles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `niveles_has_administradores`
--

DROP TABLE IF EXISTS `niveles_has_administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `niveles_has_administradores` (
  `niveles_idniveles` int(11) NOT NULL,
  `administradores_idadministradores` int(11) NOT NULL,
  PRIMARY KEY (`niveles_idniveles`,`administradores_idadministradores`),
  KEY `fk_niveles_has_administradores_administradores1_idx` (`administradores_idadministradores`),
  KEY `fk_niveles_has_administradores_niveles1_idx` (`niveles_idniveles`),
  CONSTRAINT `fk_niveles_has_administradores_administradores1` FOREIGN KEY (`administradores_idadministradores`) REFERENCES `administradores` (`idadministradores`),
  CONSTRAINT `fk_niveles_has_administradores_niveles1` FOREIGN KEY (`niveles_idniveles`) REFERENCES `niveles` (`idniveles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niveles_has_administradores`
--

LOCK TABLES `niveles_has_administradores` WRITE;
/*!40000 ALTER TABLE `niveles_has_administradores` DISABLE KEYS */;
INSERT INTO `niveles_has_administradores` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `niveles_has_administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `idservicios` int(11) NOT NULL AUTO_INCREMENT,
  `gratis` tinyint(4) DEFAULT NULL,
  `accesible` tinyint(4) DEFAULT NULL,
  `libre` tinyint(4) DEFAULT NULL,
  `cambiador` tinyint(4) DEFAULT NULL,
  `bar` tinyint(4) DEFAULT NULL,
  `restaurante` tinyint(4) DEFAULT NULL,
  `wifi` tinyint(4) DEFAULT NULL,
  `alojamiento` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idservicios`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,0,1,0,0,0,0,1,1),(2,1,0,1,0,1,0,0,0),(3,0,1,0,0,1,0,1,0),(4,1,0,1,0,0,0,0,0),(5,0,0,1,1,0,1,0,0),(6,1,1,1,1,0,0,1,0),(7,1,1,1,1,0,0,1,0),(8,0,0,1,0,1,1,0,0);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(90) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `ciudad` varchar(65) DEFAULT NULL,
  `pais` varchar(55) DEFAULT NULL,
  `cp` varchar(8) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Justina','Fajardo Alvarez','justinafajardoalvarez@gmail.com','Telde','españa','35210',4,'justina15',NULL),(2,'Michel','Magana Montalvo','michelmaganamontalvo@gmail.com','Sant Vicenç de Castellet','españa','08295',4,'bestpepee',NULL),(3,'Gerónimo','Alvarado Nava','geronimoalvaradonava@gmail.com','Madrid','españa','28023',4,'geronimoshit',NULL),(4,'Betty','Tejada Vela','bettytejadavela@gmail.com','Barcelona','españa','08002',4,'purplebath',NULL),(5,'Placido','Domingo Perez','placidodomingoperez@gmail.com','Fuengirola','españa','29640',4,'placeres',NULL),(6,'Raquel','Martínez Crespo','raquelmartinezcrespo@gmail.com','Madrid','españa','28011',1,'Rachel',NULL),(7,'Laura','Maya Rufo','lauramayarufo@gmail.com','Madrid','españa','28916',2,'Laimon	',NULL),(8,'Eloy','Rojano Vargas','eloyrojanovargas@gmail.com','Barcelona','españa',NULL,2,'Eloycito',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_has_aseos`
--

DROP TABLE IF EXISTS `usuarios_has_aseos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_has_aseos` (
  `usuarios_idusuarios` int(11) NOT NULL,
  `aseos_idaseos` int(11) NOT NULL,
  PRIMARY KEY (`usuarios_idusuarios`,`aseos_idaseos`),
  KEY `fk_usuarios_has_aseos_aseos1_idx` (`aseos_idaseos`),
  KEY `fk_usuarios_has_aseos_usuarios_idx` (`usuarios_idusuarios`),
  CONSTRAINT `fk_usuarios_has_aseos_aseos1` FOREIGN KEY (`aseos_idaseos`) REFERENCES `aseos` (`idaseos`),
  CONSTRAINT `fk_usuarios_has_aseos_usuarios` FOREIGN KEY (`usuarios_idusuarios`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_has_aseos`
--

LOCK TABLES `usuarios_has_aseos` WRITE;
/*!40000 ALTER TABLE `usuarios_has_aseos` DISABLE KEYS */;
INSERT INTO `usuarios_has_aseos` VALUES (1,1),(5,2),(3,3),(4,4),(1,5),(8,6),(6,7),(2,8);
/*!40000 ALTER TABLE `usuarios_has_aseos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_has_comentarios`
--

DROP TABLE IF EXISTS `usuarios_has_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_has_comentarios` (
  `usuarios_idusuarios` int(11) NOT NULL,
  `comentarios_idcomentarios` int(11) NOT NULL,
  PRIMARY KEY (`usuarios_idusuarios`,`comentarios_idcomentarios`),
  KEY `fk_usuarios_has_comentarios_comentarios1_idx` (`comentarios_idcomentarios`),
  KEY `fk_usuarios_has_comentarios_usuarios1_idx` (`usuarios_idusuarios`),
  CONSTRAINT `fk_usuarios_has_comentarios_comentarios1` FOREIGN KEY (`comentarios_idcomentarios`) REFERENCES `comentarios` (`idcomentarios`),
  CONSTRAINT `fk_usuarios_has_comentarios_usuarios1` FOREIGN KEY (`usuarios_idusuarios`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_has_comentarios`
--

LOCK TABLES `usuarios_has_comentarios` WRITE;
/*!40000 ALTER TABLE `usuarios_has_comentarios` DISABLE KEYS */;
INSERT INTO `usuarios_has_comentarios` VALUES (3,1),(1,2),(8,3);
/*!40000 ALTER TABLE `usuarios_has_comentarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-02 16:33:03
