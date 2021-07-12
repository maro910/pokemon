-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pokeIndex
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB-1:10.4.8+maria~bionic-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alolan`
--

DROP TABLE IF EXISTS `alolan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alolan` (
  `103` text DEFAULT NULL,
  `105` text DEFAULT NULL,
  `19` text DEFAULT NULL,
  `20` text DEFAULT NULL,
  `26` text DEFAULT NULL,
  `27` text DEFAULT NULL,
  `28` text DEFAULT NULL,
  `37` text DEFAULT NULL,
  `38` text DEFAULT NULL,
  `50` text DEFAULT NULL,
  `51` text DEFAULT NULL,
  `52` text DEFAULT NULL,
  `53` text DEFAULT NULL,
  `74` text DEFAULT NULL,
  `75` text DEFAULT NULL,
  `76` text DEFAULT NULL,
  `88` text DEFAULT NULL,
  `89` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alolan`
--

LOCK TABLES `alolan` WRITE;
/*!40000 ALTER TABLE `alolan` DISABLE KEYS */;
INSERT INTO `alolan` VALUES ('103','105','19','20','26','27','28','37','38','50','51','52','53','74','75','76','88','89'),('Exeggutor','Marowak','Rattata','Raticate','Raichu','Sandshrew','Sandslash','Vulpix','Ninetales','Diglett','Dugtrio','Meowth','Persian','Geodude','Graveler','Golem','Grimer','Muk');
/*!40000 ALTER TABLE `alolan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiny`
--

DROP TABLE IF EXISTS `shiny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiny` (
  `1` text DEFAULT NULL,
  `2` text DEFAULT NULL,
  `3` text DEFAULT NULL,
  `4` text DEFAULT NULL,
  `5` text DEFAULT NULL,
  `6` text DEFAULT NULL,
  `7` text DEFAULT NULL,
  `8` text DEFAULT NULL,
  `9` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiny`
--

LOCK TABLES `shiny` WRITE;
/*!40000 ALTER TABLE `shiny` DISABLE KEYS */;
INSERT INTO `shiny` VALUES ('1','0','0','1','0','0','1','0','0'),('0','1','1','0','1','1','0','1','1'),('1','0','0','1','0','0','1','0','0'),('0','0','1','0','0','1','0','0','1'),('1','0','1','1','0','1','1','0','1'),('1','0','0','1','0','0','1','0','0'),('1','2','3','4','5','6','7','8','9'),('Bulbasaur','Ivysaur','Venusaur','Charmander','Charmeleon','Charizard','Squirtle','Wartortle','Blastoise'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `shiny` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-12  3:12:50
