CREATE DATABASE  IF NOT EXISTS `sgi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sgi`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: sgi
-- ------------------------------------------------------
-- Server version	5.6.26-enterprise-commercial-advanced-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `sDescripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Tecnologia'),(2,'Operación'),(3,'Riesgo'),(4,'Caja'),(5,'HelpDesk');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atencionincidencia`
--

DROP TABLE IF EXISTS `atencionincidencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atencionincidencia` (
  `idAtencionIncidencia` int(11) NOT NULL AUTO_INCREMENT,
  `dFechaAsociacion` datetime DEFAULT NULL,
  `iResultado` int(11) DEFAULT NULL,
  `idIncidencia` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idAtencionIncidencia`),
  KEY `fk_AtencionIncidencia_Incidencia1_idx` (`idIncidencia`),
  KEY `fk_AtencionIncidencia_Usuario1_idx` (`idUsuario`),
  CONSTRAINT `fk_AtencionIncidencia_Incidencia1` FOREIGN KEY (`idIncidencia`) REFERENCES `incidencia` (`idIncidencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_AtencionIncidencia_Usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atencionincidencia`
--

LOCK TABLES `atencionincidencia` WRITE;
/*!40000 ALTER TABLE `atencionincidencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `atencionincidencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL AUTO_INCREMENT,
  `sDescripcion` varchar(45) DEFAULT NULL,
  `iActivo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Creado',1),(2,'Observado',1),(3,'En proceso',1),(4,'Finalizado',1);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL AUTO_INCREMENT,
  `sDescripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Masculino'),(2,'Femenino');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo`
--

DROP TABLE IF EXISTS `geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo` (
  `idGeo` int(11) NOT NULL AUTO_INCREMENT,
  `sDescripcion` varchar(1000) DEFAULT NULL,
  `sNivel` varchar(45) DEFAULT NULL,
  `idPadre` int(11) DEFAULT NULL,
  `sTipoGeo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGeo`),
  KEY `fk_Geo_Geo1_idx` (`idPadre`),
  CONSTRAINT `fk_Geo_Geo1` FOREIGN KEY (`idPadre`) REFERENCES `geo` (`idGeo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo`
--

LOCK TABLES `geo` WRITE;
/*!40000 ALTER TABLE `geo` DISABLE KEYS */;
INSERT INTO `geo` VALUES (1,'Peru','PAIS',NULL,'ALL'),(2,'Lima','PROV',1,'ALL'),(3,'Huaura','PROV',1,'ALL'),(4,'Lima','DEPA',2,'ALL'),(5,'Huacho','DEPA',3,'ALL'),(6,'Cercado de Lima','DIST',4,'ALL'),(7,'Ate','DIST',4,'ALL'),(8,'Barranco','DIST',4,'ALL'),(9,'Miraflores','DIST',4,'ALL'),(10,'Santa Maria','DIST',5,'ALL'),(11,'Huaura','DIST',5,'ALL'),(12,'Hualmay','DIST',5,'ALL'),(13,'Carquin','DIST',5,'ALL'),(14,'Lima','DIST',4,'ALL'),(15,'Jr Junin 4587','DIRE',14,'ALL'),(16,'Av. 28 de julio 4210','DIRE',14,'ALL');
/*!40000 ALTER TABLE `geo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagen` (
  `idImagen` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` longblob NOT NULL,
  `idIncidencia` int(11) NOT NULL,
  PRIMARY KEY (`idImagen`),
  KEY `fk_Imagen_Incidencia1_idx` (`idIncidencia`),
  CONSTRAINT `fk_Imagen_Incidencia1` FOREIGN KEY (`idIncidencia`) REFERENCES `incidencia` (`idIncidencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidencia`
--

DROP TABLE IF EXISTS `incidencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incidencia` (
  `idIncidencia` int(11) NOT NULL AUTO_INCREMENT,
  `sTitulo` varchar(200) DEFAULT NULL,
  `iResultadoFinalizado` int(11) DEFAULT NULL,
  `dFechaCreacion` datetime DEFAULT NULL,
  `dFechaTermino` datetime DEFAULT NULL,
  `sDescripcion` varchar(2000) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  `idTipoIncidencia` int(11) NOT NULL,
  `idEstado` int(11) NOT NULL,
  `iEvaluacion` int(11) DEFAULT NULL,
  `idUrgencia` int(11) NOT NULL,
  `idPrioridad` int(11) NOT NULL,
  PRIMARY KEY (`idIncidencia`),
  KEY `fk_Incidencia_Usuario1_idx` (`idUsuario`),
  KEY `fk_Incidencia_Estado1_idx` (`idEstado`),
  KEY `fk_Incidencia_TipoIncidencia1_idx` (`idTipoIncidencia`),
  KEY `fk_incidencia_Urgencia1_idx` (`idUrgencia`),
  KEY `fk_incidencia_Prioridad1_idx` (`idPrioridad`),
  CONSTRAINT `fk_Incidencia_Estado1` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Incidencia_TipoIncidencia1` FOREIGN KEY (`idTipoIncidencia`) REFERENCES `tipoincidencia` (`idTipoIncidencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Incidencia_Usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_incidencia_Prioridad1` FOREIGN KEY (`idPrioridad`) REFERENCES `prioridad` (`idPrioridad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_incidencia_Urgencia1` FOREIGN KEY (`idUrgencia`) REFERENCES `urgencia` (`idUrgencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidencia`
--

LOCK TABLES `incidencia` WRITE;
/*!40000 ALTER TABLE `incidencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL AUTO_INCREMENT,
  `sNombre` varchar(100) DEFAULT NULL,
  `sApellido` varchar(200) DEFAULT NULL,
  `sDni` varchar(8) DEFAULT NULL,
  `sCorreo` varchar(150) DEFAULT NULL,
  `sTelefono` varchar(7) DEFAULT NULL,
  `sAnexo` varchar(15) DEFAULT NULL,
  `sCelular` varchar(9) DEFAULT NULL,
  `idGenero` int(11) NOT NULL,
  PRIMARY KEY (`idPersona`),
  KEY `fk_Persona_Genero_idx` (`idGenero`),
  CONSTRAINT `fk_Persona_Genero` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Zeler Benji','Villarreal Marcelo','70825136','villarreal.benji@gmail.com','3887920',NULL,'935510119',1),(2,'Melanie','Veliz','70115425','mveliz@gmail.com','3544152','52012','953122521',2),(4,'Natalie','Ramos Rojas','75884521','natalie@gmail.com','3887954',NULL,'955456451',2),(5,'Alex','Villarreal Marcelo','70842551','alex@gmail.com','3884851',NULL,'955455616',1),(6,'Dayana','Vertiz Rodriguez','85442111','dayana@gmail.com','3892544',NULL,'949441455',2),(7,'Royer','Rosales','54654254','asdf@gmail.com','6264651',NULL,'965252151',1),(8,'Jose Maria','Rodriguez Carbajal','74581525','jose@gmail.com','3887950',NULL,'949412151',1),(9,'natalie ','barrios','77414329','bnatalie@gmail.com','4588468',NULL,'997745457',2),(10,'Alex Miller','Villarreal Marcelo','70814524','alex@gmail.com','3887952',NULL,'935545125',1),(11,'Melanie Sharon','Veliz Ruiz','70515445','melanie@gmail.com','3887154',NULL,'944411641',2),(12,'Carlos Alberto','Rodriguez Carbajal','54887515','crodriguex@gmail.com','3448684',NULL,'934494161',1),(13,'Gabriel Martin','Rosales Carrasco','70845221','gabriel@gmail.com','2164644',NULL,'949411511',1),(14,'Orlando Mijael','Rodriguez Lopez','70515224','orlando@gmail.com','1964100',NULL,'999191911',1);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prioridad`
--

DROP TABLE IF EXISTS `prioridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prioridad` (
  `idPrioridad` int(11) NOT NULL AUTO_INCREMENT,
  `sDescripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPrioridad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prioridad`
--

LOCK TABLES `prioridad` WRITE;
/*!40000 ALTER TABLE `prioridad` DISABLE KEYS */;
INSERT INTO `prioridad` VALUES (1,'Alta'),(2,'Media'),(3,'Baja');
/*!40000 ALTER TABLE `prioridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residencia`
--

DROP TABLE IF EXISTS `residencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `residencia` (
  `idResidencia` int(11) NOT NULL AUTO_INCREMENT,
  `sDescripcion` varchar(45) DEFAULT NULL,
  `idtipoResidencia` int(11) NOT NULL,
  `iActivo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idResidencia`),
  KEY `fk_residencia_tipoResidencia1_idx` (`idtipoResidencia`),
  CONSTRAINT `fk_residencia_tipoResidencia1` FOREIGN KEY (`idtipoResidencia`) REFERENCES `tiporesidencia` (`idtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residencia`
--

LOCK TABLES `residencia` WRITE;
/*!40000 ALTER TABLE `residencia` DISABLE KEYS */;
INSERT INTO `residencia` VALUES (1,'28 de Julio',2,1),(2,'Sucursal central de Lima',3,1);
/*!40000 ALTER TABLE `residencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residencia_area`
--

DROP TABLE IF EXISTS `residencia_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `residencia_area` (
  `idresidencia_area` int(11) NOT NULL AUTO_INCREMENT,
  `idResidencia` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  `iActivo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idresidencia_area`),
  KEY `fk_agencia_area_agencia1_idx` (`idResidencia`),
  KEY `fk_agencia_area_Area1_idx` (`idArea`),
  CONSTRAINT `fk_agencia_area_Area1` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_agencia_area_agencia1` FOREIGN KEY (`idResidencia`) REFERENCES `residencia` (`idResidencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residencia_area`
--

LOCK TABLES `residencia_area` WRITE;
/*!40000 ALTER TABLE `residencia_area` DISABLE KEYS */;
INSERT INTO `residencia_area` VALUES (1,2,1,1),(2,1,2,1),(3,1,3,1),(4,2,5,1);
/*!40000 ALTER TABLE `residencia_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residencia_geo`
--

DROP TABLE IF EXISTS `residencia_geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `residencia_geo` (
  `idResidencia_Geo` int(11) NOT NULL AUTO_INCREMENT,
  `idResidencia` int(11) NOT NULL,
  `idGeo` int(11) NOT NULL,
  `idPadre` int(11) DEFAULT NULL,
  `iActivo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idResidencia_Geo`),
  KEY `fk_sede_geo_Sede1_idx` (`idResidencia`),
  KEY `fk_sede_geo_Geo1_idx` (`idGeo`),
  KEY `fk_residencia_geo_residencia_geo1_idx` (`idPadre`),
  CONSTRAINT `fk_residencia_geo_residencia_geo1` FOREIGN KEY (`idPadre`) REFERENCES `residencia_geo` (`idResidencia_Geo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sede_geo_Geo1` FOREIGN KEY (`idGeo`) REFERENCES `geo` (`idGeo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sede_geo_Sede1` FOREIGN KEY (`idResidencia`) REFERENCES `residencia` (`idResidencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residencia_geo`
--

LOCK TABLES `residencia_geo` WRITE;
/*!40000 ALTER TABLE `residencia_geo` DISABLE KEYS */;
INSERT INTO `residencia_geo` VALUES (1,2,15,NULL,1),(2,1,16,1,1);
/*!40000 ALTER TABLE `residencia_geo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguimientoincidencia`
--

DROP TABLE IF EXISTS `seguimientoincidencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguimientoincidencia` (
  `idSeguimientoIncidencia` int(11) NOT NULL AUTO_INCREMENT,
  `sDescripcion` varchar(1000) DEFAULT NULL,
  `dFecha` datetime NOT NULL,
  `idIncidencia` int(11) NOT NULL,
  `idEstado` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idTipoSeguimiento` int(11) NOT NULL,
  PRIMARY KEY (`idSeguimientoIncidencia`),
  KEY `fk_SeguimientoIncidencia_Incidencia1_idx` (`idIncidencia`),
  KEY `fk_SeguimientoIncidencia_Estado1_idx` (`idEstado`),
  KEY `fk_seguimientoincidencia_usuario1_idx` (`idUsuario`),
  KEY `fk_seguimientoincidencia_Comentario1_idx` (`idTipoSeguimiento`),
  CONSTRAINT `fk_SeguimientoIncidencia_Estado1` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_SeguimientoIncidencia_Incidencia1` FOREIGN KEY (`idIncidencia`) REFERENCES `incidencia` (`idIncidencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_seguimientoincidencia_Comentario1` FOREIGN KEY (`idTipoSeguimiento`) REFERENCES `tiposeguimiento` (`idTipoSeguimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_seguimientoincidencia_usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguimientoincidencia`
--

LOCK TABLES `seguimientoincidencia` WRITE;
/*!40000 ALTER TABLE `seguimientoincidencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguimientoincidencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoincidencia`
--

DROP TABLE IF EXISTS `tipoincidencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoincidencia` (
  `idTipoIncidencia` int(11) NOT NULL AUTO_INCREMENT,
  `sDescripcion` varchar(100) DEFAULT NULL,
  `iActivo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTipoIncidencia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoincidencia`
--

LOCK TABLES `tipoincidencia` WRITE;
/*!40000 ALTER TABLE `tipoincidencia` DISABLE KEYS */;
INSERT INTO `tipoincidencia` VALUES (1,'Hardware',1),(2,'Software',1);
/*!40000 ALTER TABLE `tipoincidencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiporesidencia`
--

DROP TABLE IF EXISTS `tiporesidencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiporesidencia` (
  `idtipo` int(11) NOT NULL AUTO_INCREMENT,
  `sDescripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiporesidencia`
--

LOCK TABLES `tiporesidencia` WRITE;
/*!40000 ALTER TABLE `tiporesidencia` DISABLE KEYS */;
INSERT INTO `tiporesidencia` VALUES (1,'Agencia Provincia'),(2,'Agencia Lima'),(3,'Sucursal');
/*!40000 ALTER TABLE `tiporesidencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposeguimiento`
--

DROP TABLE IF EXISTS `tiposeguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposeguimiento` (
  `idTipoSeguimiento` int(11) NOT NULL AUTO_INCREMENT,
  `sDescripcion` varchar(200) DEFAULT NULL,
  `iActivo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTipoSeguimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposeguimiento`
--

LOCK TABLES `tiposeguimiento` WRITE;
/*!40000 ALTER TABLE `tiposeguimiento` DISABLE KEYS */;
INSERT INTO `tiposeguimiento` VALUES (1,'Sistema',1),(2,'Comentario',1);
/*!40000 ALTER TABLE `tiposeguimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipousuario` (
  `idTipoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `sDescripcion` varchar(45) DEFAULT NULL,
  `iActivo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTipoUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` VALUES (1,'Administrador',1),(2,'Usuario',1),(3,'Operativo',1),(4,'Supervisor',1);
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urgencia`
--

DROP TABLE IF EXISTS `urgencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urgencia` (
  `idUrgencia` int(11) NOT NULL AUTO_INCREMENT,
  `sDescripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idUrgencia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urgencia`
--

LOCK TABLES `urgencia` WRITE;
/*!40000 ALTER TABLE `urgencia` DISABLE KEYS */;
INSERT INTO `urgencia` VALUES (1,'Alta'),(2,'Media'),(3,'Baja');
/*!40000 ALTER TABLE `urgencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `sMatricula` varchar(100) DEFAULT NULL,
  `sUsuario` varchar(100) DEFAULT NULL,
  `sClave` varchar(100) DEFAULT NULL,
  `iActivo` int(11) DEFAULT NULL,
  `idPersona` int(11) NOT NULL,
  `idTipoUsuario` int(11) NOT NULL,
  `dFechaRegistro` datetime DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_Usuario_Persona1_idx` (`idPersona`),
  KEY `fk_Usuario_TipoUsuario1_idx` (`idTipoUsuario`),
  CONSTRAINT `fk_Usuario_Persona1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_TipoUsuario1` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'s53202','bvillarreal','123',1,1,1,'2016-06-10 13:51:00'),(10,'s56522','avillarreal','123',1,10,2,'2016-07-09 01:27:33'),(11,'s52251','mveliz','123',1,11,3,'2016-07-09 02:16:55'),(12,'s55616','crodriguez','123',1,12,4,'2016-07-09 06:45:43'),(13,'s52111','grosales','123',1,13,3,'2016-07-09 15:18:03'),(14,'s56122','orodriguez','123',1,14,2,'2016-07-09 15:19:04');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_area`
--

DROP TABLE IF EXISTS `usuario_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_area` (
  `idusuario_area` int(11) NOT NULL AUTO_INCREMENT,
  `idresidencia_area` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idusuario_area`),
  KEY `fk_usuario_area_residencia_area1_idx` (`idresidencia_area`),
  KEY `fk_usuario_area_usuario1_idx` (`idUsuario`),
  CONSTRAINT `fk_usuario_area_residencia_area1` FOREIGN KEY (`idresidencia_area`) REFERENCES `residencia_area` (`idresidencia_area`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_area_usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_area`
--

LOCK TABLES `usuario_area` WRITE;
/*!40000 ALTER TABLE `usuario_area` DISABLE KEYS */;
INSERT INTO `usuario_area` VALUES (1,4,1),(9,3,10),(10,4,11),(11,1,12),(12,1,13),(13,1,14);
/*!40000 ALTER TABLE `usuario_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sgi'
--
/*!50003 DROP FUNCTION IF EXISTS `SGI_WEB_FUC_CALCULARNOMBRE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SGI_WEB_FUC_CALCULARNOMBRE`(
NOMBRE VARCHAR(200),
APELLIDO VARCHAR(200)
) RETURNS varchar(100) CHARSET utf8
BEGIN
        DECLARE USUARIOCOMPLETO VARCHAR(100);
        DECLARE ENCONTRO BOOLEAN DEFAULT TRUE;
        DECLARE NUMERO INT DEFAULT 0;
        DECLARE VAL CHAR(10) DEFAULT '';
        DECLARE RESULTADO VARCHAR(100) DEFAULT '';
        
        WHILE ENCONTRO DO
			
            
			SET USUARIOCOMPLETO = CONCAT(LEFT(NOMBRE,1),SPLIT_STR(APELLIDO,' ',1),VAL);
			IF EXISTS( SELECT 1 FROM USUARIO WHERE SUSUARIO = USUARIOCOMPLETO)
            THEN
				SET NUMERO = NUMERO +1;
                SET VAL = CAST(NUMERO AS CHAR);
            ELSE
				SET ENCONTRO = FALSE;
            END IF;
        END WHILE;
        
        RETURN USUARIOCOMPLETO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SGI_WEB_OBTENEREMPLEADOLIBRE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SGI_WEB_OBTENEREMPLEADOLIBRE`() RETURNS int(11)
BEGIN
	DECLARE IDOPERATIVO INT;
    
    SET IDOPERATIVO = 0;
    
	SET IDOPERATIVO = (
						SELECT T.idUsuario 
						FROM 
						(
								(
									SELECT 0 incidenciasAsignada ,
											us.idUsuario 
									FROM atencionincidencia ati RIGHT JOIN usuario us
									ON ati.idUsuario = us.idUsuario
									WHERE us.idTipoUsuario = 3 AND ati.idAtencionIncidencia IS NULL
								)
							UNION
								(	
									SELECT count(*) incidenciasAsignada,
											us.idUsuario 
									FROM atencionincidencia ati RIGHT JOIN usuario us
									on us.idUsuario = ati.idUsuario
									WHERE us.idTipoUsuario = 3 AND ati.idAtencionIncidencia IS NOT NULL AND ati.iResultado = 1
									GROUP BY us.idUsuario
								)
							ORDER BY incidenciasAsignada ASC,idUsuario ASC
						) as T
						limit 1
					);
        
RETURN IDOPERATIVO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SPLIT_STR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STR`(
  x VARCHAR(255),
  delim VARCHAR(12),
  pos INT
) RETURNS varchar(255) CHARSET utf8
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '') ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_C_COMENTARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_C_COMENTARIO`(IN IDINCIDENCIAPARAM INT,IN DESCRIPCIONPARAM VARCHAR(100))
BEGIN
	DECLARE IDESTADO INT;
    DECLARE IDUSUARIO INT;
    DECLARE USUARIO VARCHAR(100);
    
	START TRANSACTION;
    
    SELECT inc.idEstado INTO IDESTADO FROM Incidencia inc WHERE inc.idIncidencia = IDINCIDENCIAPARAM LIMIT 1;
    
    SELECT ATE.idUsuario,USU.sUsuario INTO IDUSUARIO,USUARIO FROM ATENCIONINCIDENCIA ATE INNER JOIN USUARIO USU
    ON ATE.idUsuario = USU.idUsuario
    WHERE idIncidencia = IDINCIDENCIAPARAM AND iResultado = 1 LIMIT 1;
    
    
    
    IF IDESTADO = 3
    THEN
        
        INSERT SEGUIMIENTOINCIDENCIA (sDescripcion,dFecha,idIncidencia,idEstado,idUsuario,idTipoSeguimiento)
        VALUES(DESCRIPCIONPARAM,now(),IDINCIDENCIAPARAM,3,IDUSUARIO,2);
        
        IF(ROW_COUNT() > 0)
		THEN
			COMMIT;
			SELECT 1;
        ELSE
			ROLLBACK;
            SELECT -1;
        END IF;
    ELSE
		ROLLBACK;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_C_INCIDENCIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_C_INCIDENCIA`(in titulo varchar(100),in descripcion varchar(1000),in idTipoIncidencia int,in idPrioridad int,in idUrgencia int,in fotobinary longblob,in idUsuario int)
BEGIN
	DECLARE IDGENERADO INT;
    DECLARE IDOPERATIVO INT;
    DECLARE USUARIO VARCHAR(100);
	START TRANSACTION;
	
	SELECT usu.sUsuario INTO USUARIO FROM usuario usu where usu.idUsuario = idUsuario LIMIT 1; 
	
    /*Creando Cabecera de Incidencia*/
    INSERT Incidencia (sTitulo,dFechaCreacion,sDescripcion,idUsuario,idTipoIncidencia,idEstado,idUrgencia,idPrioridad)
	VALUES(titulo,now(),descripcion,idUsuario,idTipoIncidencia,1,idUrgencia,idPrioridad);
    
    SET IDGENERADO = @@IDENTITY;
    
    /*Ingresando el Seguimiento de la Incidencia*/
	SET USUARIO = CONCAT('Creado por ',USUARIO);
    
    INSERT SeguimientoIncidencia(sDescripcion,dFecha,idIncidencia,idEstado,idUsuario,idTipoSeguimiento)
    VALUES(USUARIO,now(),IDGENERADO,1,idUsuario,1);
    
    /*Agregando Imagen a la Incidencia*/
    IF fotobinary <> "" OR fotobinary is not null  THEN
    
		INSERT imagen (imagen,idIncidencia)
		VALUES(fotobinary,IDGENERADO);		
        
    END IF;
    
    SET IDOPERATIVO =  `sgi`.`SGI_WEB_OBTENEREMPLEADOLIBRE`();
    
    
    INSERT AtencionIncidencia (dFechaAsociacion, iResultado, idIncidencia, idUsuario)
    VALUES (now(),1,IDGENERADO,IDOPERATIVO);
    
    IF ROW_COUNT() > 0
    THEN
		COMMIT;
        SELECT IDGENERADO;
    ELSE
		ROLLBACK;
        SELECT -1;
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_C_REGISTRARSEDE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_C_REGISTRARSEDE`(in idPadre INTEGER,in sDescripcion VARCHAR(150),in direccion VARCHAR(500))
BEGIN
	DECLARE IDSEDEGENERADO INT DEFAULT -1;
	DECLARE IDGEOGENERADO INT DEFAULT -1;
	START TRANSACTION;
    
    INSERT SEDE (sDescripcion) VALUES(sDescripcion);
    
    SET IDSEDEGENERADO = @@IDENTITY;
    
    
    INSERT GEO (sDescripcion,sNivel,idPadre,sTipoGeo)
    VALUES (direccion,'DIRE',idPadre,'SEDE');
    
    INSERT SEDE_GEO (idSede,idGeo,iActivo)
    VALUES (IDSEDEGENERADO,IDGEOGENERADO,1);
    
    IF ROW_COUNT() > 0
    THEN
		COMMIT;
        SELECT @@IDENTITY;
    ELSE
		ROLLBACK;
        SELECT -1;
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_C_REGISTRARUSUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_C_REGISTRARUSUARIO`(
IN NOMBRE VARCHAR(200),
IN APELLIDO VARCHAR(200),
IN MATRICULA VARCHAR(50),
IN DNI VARCHAR(8),
IN GENERO INT,
IN TIPOUSUARIO INT,
IN TELEFONO VARCHAR(7),
IN CELULAR VARCHAR(9),
IN CORREO VARCHAR(200),
IN ANEXO VARCHAR(10),
IN IDRESIDENCIA_AREA INT
)
BEGIN
	DECLARE USUARIO VARCHAR(120);
    DECLARE IDPERSONA INT;
    DECLARE IDUSUARIO INT;
    
	START TRANSACTION;
    
    IF NOT EXISTS(SELECT 1 FROM PERSONA PP INNER JOIN USUARIO US ON US.idPersona = PP.idPersona WHERE PP.sDni = DNI AND US.iActivo = 1)
    THEN
    
		INSERT PERSONA(sNombre, sApellido, sDni, sCorreo, sTelefono, sCelular, idGenero)
		VALUES(NOMBRE,APELLIDO,DNI,CORREO,TELEFONO,CELULAR,GENERO);
        
        SET IDPERSONA = @@IDENTITY;
        
        /*Funcion para determinar cual es nombre del usuario*/
        SET USUARIO = LOWER(SGI_WEB_FUC_CALCULARNOMBRE(NOMBRE,APELLIDO));
	
		INSERT usuario (sMatricula, sUsuario, sClave, iActivo, idPersona, idTipoUsuario,dFechaRegistro)
		VALUES(MATRICULA,USUARIO,DNI,1,IDPERSONA,TIPOUSUARIO,now());
        
        SET IDUSUARIO = @@IDENTITY;
        
        INSERT usuario_area(idresidencia_area,idUsuario)
        VALUES(IDRESIDENCIA_AREA,IDUSUARIO);
        
        IF ROW_COUNT() > 0
        THEN
			COMMIT;
            SELECT IDPERSONA;
        ELSE
			ROLLBACK;
            SELECT -1;
        END IF;
    ELSE
		ROLLBACK;
        SELECT -2;
    END IF;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_ATENCIONINCIDENCIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_ATENCIONINCIDENCIA`(IN IDINCIDENCIAPARAM INT)
BEGIN
	DECLARE ESTADO INT;
    DECLARE USUARIO VARCHAR(100);
    DECLARE IDUSUARIO INT;
    
    /*SET ESTADO = (SELECT idEstado FROM incidencia where idIncidencia = IDINCIDENCIAPARAM LIMIT 1);*/
    SELECT idEstado INTO ESTADO FROM incidencia where idIncidencia = IDINCIDENCIAPARAM LIMIT 1;
	
    IF ESTADO = 1 OR ESTADO = 2
    THEN
    
		IF ESTADO = 1
        THEN
			START TRANSACTION;
            
            /*Obtenemos el usuario que lo está atendiento*/
			SELECT usu.sUsuario,usu.idUsuario INTO USUARIO,IDUSUARIO FROM usuario usu inner join atencionincidencia ate
            on usu.idUsuario = ate.idUsuario
            where ate.idIncidencia = IDINCIDENCIAPARAM LIMIT 1;
            
            SET USUARIO = CONCAT('Observado por ',USUARIO);
            
			UPDATE incidencia
			SET idEstado = 2
			WHERE idIncidencia = IDINCIDENCIAPARAM;
            
            INSERT SEGUIMIENTOINCIDENCIA(sDescripcion,dFecha,idIncidencia,idEstado,idUsuario,idTipoSeguimiento)
			VALUES(USUARIO,now(),IDINCIDENCIAPARAM,2,IDUSUARIO,1);
            
            COMMIT;
            
        END IF;
		
		SELECT 
			INC.IDINCIDENCIA as idIncidencia,
			INC.sTitulo  	 as titulo,
			TI.sDescripcion  as sTipoIncidencia,
			INC.sDescripcion as sDescripcion,
			IMG.imagen		 as fotobynari,
            ES.idEstado		 as idEstado,
            ES.sDescripcion	 as sEstado,
            usu.sUsuario	 as sUsuario,
            seg.sDescripcion as sSeguimiento,
            seg.dFecha		 as dFecha,
            seg.idTipoSeguimiento as idTipoSeguimiento,
            tseg.sDescripcion as sTipoSeguimiento

		FROM INCIDENCIA INC LEFT JOIN IMAGEN IMG
		ON INC.idIncidencia = IMG.idIncidencia LEFT JOIN TIPOINCIDENCIA TI
		ON TI.idTipoIncidencia = INC.idTipoIncidencia INNER JOIN ESTADO ES
		ON ES.idEstado = INC.idEstado LEFT JOIN seguimientoincidencia seg
		ON seg.idIncidencia = INC.idIncidencia LEFT JOIN Usuario usu
		ON usu.idUsuario = seg.idUsuario LEFT JOIN tiposeguimiento tseg
        ON tseg.idTipoSeguimiento = seg.idTipoSeguimiento
		WHERE INC.IDINCIDENCIA = IDINCIDENCIAPARAM;
    ELSE
		     
		SELECT 
			INC.IDINCIDENCIA as idIncidencia,
			INC.sTitulo  	 as titulo,
			TI.sDescripcion  as sTipoIncidencia,
			INC.sDescripcion as sDescripcion,
			IMG.imagen		 as fotobynari,
            USU.sUsuario 	 as Usuario,
            PER.sNombre		 as Nombre,
            PER.sApellido 	 as Apellido,
            USU.sMatricula	 as Matricula,
            PER.sAnexo 		 as Anexo,
            PER.sTelefono	 as Telefono,
            ES.idEstado		 as idEstado,
            ES.sDescripcion	 as sEstado,
			usus.sUsuario	 as sUsuario,
            seg.sDescripcion as sSeguimiento,
            seg.dFecha		 as dFecha,
            seg.idTipoSeguimiento as idTipoSeguimiento,
            tseg.sDescripcion as sTipoSeguimiento
			
		FROM INCIDENCIA INC LEFT JOIN IMAGEN IMG
		ON INC.idIncidencia = IMG.idIncidencia LEFT JOIN TIPOINCIDENCIA TI
		ON TI.idTipoIncidencia = INC.idTipoIncidencia LEFT JOIN ESTADO ES
		ON ES.idEstado = INC.idEstado LEFT JOIN USUARIO USU
        ON INC.IDUSUARIO = USU.IDUSUARIO LEFT JOIN PERSONA PER
        ON PER.idPersona = USU.idPersona LEFT JOIN seguimientoincidencia seg
		ON seg.idIncidencia = INC.idIncidencia LEFT JOIN Usuario usus
		ON usus.idUsuario = seg.idUsuario LEFT JOIN tiposeguimiento tseg
        ON tseg.idTipoSeguimiento = seg.idTipoSeguimiento
		WHERE INC.IDINCIDENCIA = IDINCIDENCIAPARAM;
        
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARAREAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARAREAS`()
BEGIN
	SELECT 
		idArea as idArea,
        sDescripcion as sDescripcion
    FROM area;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARAREASSUCURSAL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARAREASSUCURSAL`()
BEGIN

	/*Muestra todas las areas de las sucursales*/
	SELECT 
		rar.idResidencia		idResidencia,
        res.sDescripcion 		Residencia,
        rar.idresidencia_area	idResidenciaArea,
        ar.sDescripcion			area
        
	FROM area ar inner join residencia_area rar
	on ar.idArea = rar.idArea inner join residencia res
	on res.idResidencia = rar.idResidencia
	where idtipoResidencia = 3;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARAREASXRESIDENCIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARAREASXRESIDENCIA`(IN IDRESIDENCIA INTEGER)
BEGIN
	SELECT
		rar.idResidencia_area,
        ar.sDescripcion as sDescripcion,
        rar.iActivo as iActivo
	FROM area ar inner join residencia_area rar
	ON ar.idArea = rar.idArea inner join residencia res
    ON rar.idResidencia = res.idResidencia
    WHERE rar.iActivo = 1 and res.idResidencia = IDRESIDENCIA;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARDEPARTAMENTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARDEPARTAMENTOS`(IN IDPROV INTEGER)
BEGIN
	SELECT idGeo,sDescripcion FROM geo WHERE sNIVEL = 'DEPA' AND idPadre = IDPROV;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARGENERO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARGENERO`()
BEGIN
	SELECT 
		idGenero iGenero,
        sDescripcion
	FROM GENERO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARINCIDENCIAREPORTADASSUP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARINCIDENCIAREPORTADASSUP`()
BEGIN
	SELECT 
		inc.idIncidencia 	 						 as idIncidencia,
        CONCAT(per.sNombre,' ',per.sApellido)		 as sNombreCompleto,
        ti.sDescripcion								 as sTipoIncidencia,
        es.sDescripcion 			 				 as Estado,
        inc.dFechaCreacion							 as FechaCreacion,
        ate.dFechaAsociacion						 as FechaAsignacion,
        inc.sTitulo									 as Titulo,
        usu.sUsuario								 as sUsuario
        
    FROM atencionincidencia  ate inner join incidencia inc
    on ate.idIncidencia = inc.idIncidencia inner join usuario usu
    on usu.idUsuario = inc.idUsuario inner join persona per
    on per.idPersona = usu.idPersona inner join tipoincidencia ti
    on ti.idTipoIncidencia = inc.idTipoIncidencia inner join estado es
    on es.idEstado = inc.idEstado
    Where ate.iResultado = 1 AND inc.idEstado <= 2 AND DATEDIFF(CAST(now() AS DATE),CAST(inc.dFechaCreacion AS DATE)) > 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARINCIDENCIASASIGNADAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARINCIDENCIASASIGNADAS`(IN IDUSUARIO INTEGER)
BEGIN
	SELECT 
		inc.idIncidencia 	 						 as idIncidencia,
        CONCAT(per.sNombre,' ',per.sApellido)		 as sNombreCompleto,
        ti.sDescripcion								 as sTipoIncidencia,
        es.sDescripcion 			 				 as Estado,
        inc.dFechaCreacion							 as FechaCreacion,
        ate.dFechaAsociacion						 as FechaAsignacion,
        inc.sTitulo									 as Titulo
    FROM atencionincidencia  ate inner join incidencia inc
    on ate.idIncidencia = inc.idIncidencia inner join usuario usu
    on usu.idUsuario = inc.idUsuario inner join persona per
    on per.idPersona = usu.idPersona inner join tipoincidencia ti
    on ti.idTipoIncidencia = inc.idTipoIncidencia inner join estado es
    on es.idEstado = inc.idEstado
    Where ate.idUsuario = IDUSUARIO AND ate.iResultado = 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARPRIORIDAD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARPRIORIDAD`()
BEGIN
	SELECT * FROM PRIORIDAD;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARRECIDENCIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARRECIDENCIA`()
BEGIN
	SELECT 
		idResidencia,
		sDescripcion
	FROM residencia 
    WHERE iActivo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARTIPOINCIDENCIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARTIPOINCIDENCIA`()
BEGIN
	SELECT 
		idTipoIncidencia,
        sDescripcion 
	FROM TIPOINCIDENCIA
    WHERE iActivo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARTIPOUSUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARTIPOUSUARIO`()
BEGIN
	SELECT 
			idTipoUsuario iTipo,
			sDescripcion sDescripcion
    FROM TipoUsuario
    WHERE iActivo = 1 and idTipoUsuario <> 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARURGENCIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARURGENCIA`()
BEGIN
	SELECT * FROM URGENCIA;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_LISTARUSUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_LISTARUSUARIO`()
BEGIN
	SELECT 
		us.idUsuario,
		us.sUsuario,
		us.sClave,
		us.sMatricula,
		IFNULL(per.sTelefono,'') as sTelefono,
		IFNULL(per.sCelular,'') as sCelular,
		IFNULL(per.sCorreo,'') as sCorreo,
		us.idTipoUsuario,
		tu.sDescripcion as tipoUsuario,
		us.idPersona,
		us.iActivo,
		case us.iActivo
		when 1 then 'Activo'
		else 'Inactivo' end as activo,
		per.sNombre,
		per.sApellido

	FROM usuario us inner join tipousuario tu
	on us.idTipoUsuario = tu.idTipoUsuario inner join persona per
	on per.idPersona = us.idPersona;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_OBTENEROPERATIVOXAREA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_OBTENEROPERATIVOXAREA`(IN IDAREA INTEGER)
BEGIN
	SELECT 
		usu.idUsuario as idUsuario,
		per.sNombre as sNombre,
		per.sApellido as sApellido
	FROM USUARIO usu INNER JOIN usuario_area uare
	on usu.idUsuario = uare.idUsuario INNER JOIN persona per
	on per.idPersona = usu.idPersona
	where idTipoUsuario = 3 and uare.idresidencia_area = IDAREA;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_SEGUIMIENTOINCIDENCIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_SEGUIMIENTOINCIDENCIA`(IN IDUSUARIOPARAM INTEGER)
BEGIN

	SELECT
		inc.idIncidencia				as idIncidencia,
		inc.stitulo						as titulo,
		inc.idEstado					as idEstadoActual,
		est.idEstado					as idEstado,
		est.sDescripcion				as estado,
		seginc.dFecha					as dFecha
    
	FROM incidencia inc LEFT JOIN seguimientoincidencia seginc
	ON inc.idIncidencia = seginc.idIncidencia LEFT JOIN estado est
	ON est.idEstado = seginc.idEstado LEFT JOIN usuario usu
	ON usu.idUsuario = inc.idUsuario  
	where idTipoSeguimiento = 1 and inc.idUsuario = IDUSUARIOPARAM and DATEDIFF(CAST(now() as date),CAST(ifnull(inc.dFechaTermino,now()) as date)) <= 2;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_R_VALIDARUSUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_R_VALIDARUSUARIO`(IN usu VARCHAR(50),IN clave VARCHAR(50))
BEGIN
	SELECT * FROM usuario where sUsuario = usu and  sClave = clave;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_U_COMENZARATENCIONINCIDENCIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_U_COMENZARATENCIONINCIDENCIA`(IN IDINCIDENCIAPARAM INT)
BEGIN
	DECLARE IDESTADO INT;
    DECLARE IDUSUARIO INT;
    DECLARE USUARIO VARCHAR(100);
    DECLARE DESCRIPCION VARCHAR(100);
    
	START TRANSACTION;
    
    SELECT inc.idEstado INTO IDESTADO FROM Incidencia inc WHERE inc.idIncidencia = IDINCIDENCIAPARAM LIMIT 1;
    
    SELECT ATE.idUsuario,USU.sUsuario INTO IDUSUARIO,USUARIO FROM ATENCIONINCIDENCIA ATE INNER JOIN USUARIO USU
    ON ATE.idUsuario = USU.idUsuario
    WHERE idIncidencia = IDINCIDENCIAPARAM AND iResultado = 1 LIMIT 1;
    
    
    
    IF IDESTADO = 2
    THEN
		SET DESCRIPCION = CONCAT('En proceso por el usuario : ',USUARIO);
        
		UPDATE INCIDENCIA
        SET idEstado = 3
        WHERE idIncidencia = IDINCIDENCIAPARAM;
        
        INSERT SEGUIMIENTOINCIDENCIA (sDescripcion,dFecha,idIncidencia,idEstado,idUsuario,idTipoSeguimiento)
        VALUES(DESCRIPCION,now(),IDINCIDENCIAPARAM,3,IDUSUARIO,1);
        
        IF(ROW_COUNT() > 0)
		THEN
			COMMIT;
			SELECT 1;
        ELSE
			ROLLBACK;
            SELECT -1;
        END IF;
    ELSE
		ROLLBACK;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_U_DERIVARINCIDENCIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_U_DERIVARINCIDENCIA`(IN IDINCIDENCIAPARAM INTEGER,IN IDUSUARIOPARAM INTEGER,IN DESCRIPCION VARCHAR(200))
BEGIN
	DECLARE USUARIO VARCHAR(200);
    DECLARE IDUSUARIOQUEDERIVA INT;
    DECLARE USUARIODERIVADO VARCHAR(200);
    DECLARE IDESTADO INT;
    
    SELECT inc.idEstado INTO IDESTADO FROM Incidencia inc where inc.idIncidencia = IDINCIDENCIAPARAM LIMIT 1;
    
    SELECT usu.sUsuario,usu.idUsuario INTO USUARIO,IDUSUARIOQUEDERIVA FROM atencionincidencia ate inner join usuario usu
	ON usu.idUsuario = ate.idUsuario 
    WHERE ate.idIncidencia = IDINCIDENCIAPARAM AND ate.iResultado = 1 LIMIT 1;
    
    SELECT usu.sUsuario INTO USUARIODERIVADO FROM usuario usu WHERE usu.idUsuario = IDUSUARIOPARAM LIMIT 1;
    
    IF IDUSUARIOQUEDERIVA = IDUSUARIOPARAM
    THEN
		SELECT -2;
	
    ELSE
		START TRANSACTION;
		
        SET USUARIO = CONCAT('El operativo ',USUARIO,' ha derivado la incidencia a ',USUARIODERIVADO);
        
        /*Actualizamos la atencion del operativo a derivada*/
		UPDATE ATENCIONINCIDENCIA
		SET iResultado = 2
		WHERE iResultado = 1 AND idIncidencia = IDINCIDENCIAPARAM;
        
		/*Se guarda el seguimiento*/
		INSERT SeguimientoIncidencia(sDescripcion,dFecha,idIncidencia,idEstado,idUsuario,idTipoSeguimiento)
		VALUES(USUARIO,now(),IDINCIDENCIAPARAM,IDESTADO,IDUSUARIOQUEDERIVA,1);
        
        INSERT SeguimientoIncidencia(sDescripcion,dFecha,idIncidencia,idEstado,idUsuario,idTipoSeguimiento)
		VALUES(DESCRIPCION,now(),IDINCIDENCIAPARAM,IDESTADO,IDUSUARIOQUEDERIVA,2);
		
        /*Se agrega una atención al operativo escogido*/
		INSERT AtencionIncidencia (dFechaAsociacion, iResultado, idIncidencia, idUsuario)
		VALUES (now(),1,IDINCIDENCIAPARAM,IDUSUARIOPARAM);
        
		IF ROW_COUNT() > 0
        THEN
        COMMIT;
			SELECT 1;
        ELSE
        ROLLBACK;
			SELECT -1;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SGI_WEB_U_TERMINARINCIDENCIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SGI_WEB_U_TERMINARINCIDENCIA`(IN IDINCIDENCIAPARAM INTEGER,IN IDRESULTADOFINALIZADOPARAM INTEGER)
BEGIN
	DECLARE IDESTADO INT;
    DECLARE IDUSUARIO INT;
    DECLARE USUARIO VARCHAR(100);
    DECLARE DESCRIPCION VARCHAR(100);
    
	START TRANSACTION;
    
    SELECT inc.idEstado INTO IDESTADO FROM Incidencia inc WHERE inc.idIncidencia = IDINCIDENCIAPARAM LIMIT 1;
    
    SELECT ATE.idUsuario,USU.sUsuario INTO IDUSUARIO,USUARIO FROM ATENCIONINCIDENCIA ATE INNER JOIN USUARIO USU
    ON ATE.idUsuario = USU.idUsuario
    WHERE idIncidencia = IDINCIDENCIAPARAM AND iResultado = 1 LIMIT 1;
    
    
    
    IF IDESTADO = 3
    THEN
		SET DESCRIPCION = CONCAT('Terminado por el usuario : ',USUARIO);
        
		UPDATE INCIDENCIA
        SET idEstado = 4,iResultadoFinalizado = IDRESULTADOFINALIZADOPARAM,dFechaTermino= now()
        WHERE idIncidencia = IDINCIDENCIAPARAM;
        
        UPDATE ATENCIONINCIDENCIA
        SET iResultado = 3
        WHERE idIncidencia = IDINCIDENCIAPARAM AND iResultado = 1;
        
        INSERT SEGUIMIENTOINCIDENCIA (sDescripcion,dFecha,idIncidencia,idEstado,idUsuario,idTipoSeguimiento)
        VALUES(DESCRIPCION,now(),IDINCIDENCIAPARAM,4,IDUSUARIO,1);
        
        IF(ROW_COUNT() > 0)
		THEN
			COMMIT;
			SELECT 1;
        ELSE
			ROLLBACK;
            SELECT -1;
        END IF;
    ELSE
		ROLLBACK;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-09 15:29:05
