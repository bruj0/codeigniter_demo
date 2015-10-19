-- MySQL dump 10.13  Distrib 5.1.62, for pc-linux-gnu (i686)
--
-- Host: localhost    Database: news
-- ------------------------------------------------------
-- Server version	5.1.62

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `idarticle` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `photo` varchar(254) DEFAULT NULL,
  `text` text NOT NULL,
  `summary` mediumtext NOT NULL,
  `posted_ts` int(11) NOT NULL,
  `update_ts` int(11) DEFAULT NULL,
  `fkuser` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`idarticle`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Lorem ipsum dolor sit ame','/assets/img/150x90.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dui lorem, tincidunt id nibh sed, dapibus feugiat urna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse eleifend lacus turpis, ac laoreet ligula auctor a. Mauris est nunc, lacinia nec auctor a, ultricies ultrices ipsum. Nullam odio ipsum, fermentum eget sagittis ut, efficitur a nulla. Nunc finibus posuere malesuada. Donec id magna quam. Donec ac ornare nulla, et facilisis massa. Curabitur volutpat nulla vel turpis varius, quis semper sem tincidunt. Sed lobortis commodo urna. Proin ut neque lacus. Ut eget lorem condimentum, aliquam dolor eget, viverra lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nNam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dui lorem, tincidunt id nibh sed, dapibus feugiat urna. Interdum et malesuada fames ac ante ipsum primis in faucibus',1445137946,NULL,8,1,0),(2,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,0),(3,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,0),(4,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(5,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(6,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(7,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(8,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(9,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(10,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(11,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(12,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(13,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(14,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(15,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(16,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(17,'Lorem ipsum dolor ','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec vitae iaculis urna, et dictum lectus. Cras dignissim quam nec orci dapibus suscipit. Curabitur tempor, risus vitae pellentesque mattis, ex dolor venenatis eros, eu consequat eros lectus id arcu. Donec dapibus est ac semper pulvinar.','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. ',1445137946,NULL,8,1,1),(20,'title','/assets/img/150x90.png','content','summary',1445216659,NULL,8,1,1),(21,'Nec lectus tempus elit commodo','/assets/img/150x90.png','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec ','Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Nam nec lectus tempus elit commodo hendrerit sollicitudin quis dolor. Ut sed dui ut dui mollis sagittis. Mauris tempus, dolor id fermentum tempor, risus eros venenatis lorem, ac sagittis risus sem quis ipsum. Sed vehicula condimentum enim, et rhoncus libero ullamcorper in. Donec ',1445232054,NULL,8,1,1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `email` varchar(254) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `username_3` (`username`,`password`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user1','testme',2,'0bruj0@gmail.com',1),(7,'user2','3abef1a14ccecd20d6ce892cbe042ae6d74946c8',1,'email@example.org',3),(8,'user3','3abef1a14ccecd20d6ce892cbe042ae6d74946c8',1,'ramakandra@gmail.com',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifications`
--

DROP TABLE IF EXISTS `verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifications` (
  `idverification` int(11) NOT NULL AUTO_INCREMENT,
  `fkuser` int(11) NOT NULL,
  `hash` varchar(254) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`idverification`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifications`
--

LOCK TABLES `verifications` WRITE;
/*!40000 ALTER TABLE `verifications` DISABLE KEYS */;
INSERT INTO `verifications` VALUES (1,7,'0c7d36270dba53ccd9888084defc2373',0),(2,8,'f50e099a5c78efb41c7df63c4d85e087',1);
/*!40000 ALTER TABLE `verifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-19  3:06:49
