-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: testJDBC
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (2,'Pankaj'),(3,'Pankaj'),(4,'Pankaj');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TEACHERS`
--

DROP TABLE IF EXISTS `TEACHERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEACHERS` (
  `teacherId` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `birth_date` varchar(45) DEFAULT NULL,
  `cell_phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`teacherId`),
  KEY `FKCAADA0D1A1CE88AB` (`teacherId`),
  CONSTRAINT `FKCAADA0D1A1CE88AB` FOREIGN KEY (`teacherId`) REFERENCES `TEACHERS` (`teacherId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEACHERS`
--

LOCK TABLES `TEACHERS` WRITE;
/*!40000 ALTER TABLE `TEACHERS` DISABLE KEYS */;
INSERT INTO `TEACHERS` VALUES (2,'andriy','glybobets','19.10.1996','9666201942'),(3,'Andrii','Glybovets','2018-02-25 21:27:48','+380675097865'),(4,'Andrii','Glybovets','2018-02-25 21:30:17','+380675097865'),(5,'Andrii','Glybovets','2018-02-25 21:31:49','+380675097865'),(6,'Andrii','Glybovets','2018-03-25','+380675097865');
/*!40000 ALTER TABLE `TEACHERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STREET` varchar(45) DEFAULT NULL,
  `CITY` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'shevchenka','kyiv'),(2,'shevchenka','kyiv'),(3,'shevchenka','kyiv'),(4,'shevchenka','kyiv'),(5,'shevchenka','kyiv'),(6,'shevchenka','kyiv'),(7,'shevchenka','kyiv'),(8,'shevchenka','kyiv'),(9,'shevchenka','kyiv'),(10,'shevchenka2','kyiv2'),(11,'shevchenka2','kyiv2'),(12,'shevchenka2','kyiv2'),(13,'shevchenka2','kyiv2'),(14,'shevchenka2','kyiv2'),(15,'shevchenka2','kyiv2'),(16,'shevchenka2','kyiv2'),(17,'shevchenka2','kyiv2'),(18,'shevchenka2','kyiv2'),(19,'shevchenka2','kyiv2'),(20,'shevchenka2','kyiv2'),(21,'shevchenka2','kyiv2'),(22,'shevchenka2','kyiv2'),(23,'shevchenka2','kyiv2'),(24,'shevchenka2','kyiv2'),(25,'shevchenka2','kyiv2'),(26,'shevchenka2','kyiv2'),(27,'shevchenka2','kyiv2'),(28,'shevchenka2','kyiv2'),(29,'shevchenka2','kyiv2'),(30,'shevchenka2','kyiv2'),(31,'shevchenka2','kyiv2'),(32,'shevchenka2','kyiv2'),(33,'shevchenka2','kyiv2'),(34,'shevchenka2','kyiv2'),(35,'shevchenka2','kyiv2'),(36,'shevchenka2','kyiv2'),(37,'shevchenka2','kyiv2'),(38,'shevchenka2','kyiv2'),(39,'shevchenka2','kyiv2'),(40,'shevchenka2','kyiv2'),(41,'shevchenka2','kyiv2'),(42,'shevchenka2','kyiv2'),(43,'shevchenka2','kyiv2'),(44,'shevchenka2','kyiv2'),(45,'shevchenka2','kyiv2');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `gr_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`gr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lecture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(250) DEFAULT NULL,
  `CREDITS` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture`
--

LOCK TABLES `lecture` WRITE;
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` VALUES (17,'lecture_0',0),(18,'lecture_1',1),(19,'lecture_2',2),(20,'lecture_3',3),(21,'lecture_4',4),(22,'java ee',10);
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture_content`
--

DROP TABLE IF EXISTS `lecture_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lecture_content` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `question` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture_content`
--

LOCK TABLES `lecture_content` WRITE;
/*!40000 ALTER TABLE `lecture_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `lecture_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lectures`
--

DROP TABLE IF EXISTS `lectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lectures` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `credits` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lectures`
--

LOCK TABLES `lectures` WRITE;
/*!40000 ALTER TABLE `lectures` DISABLE KEYS */;
INSERT INTO `lectures` VALUES (1,'Introduction to Spring',2.5),(2,'Introduction to Spring',2.5),(3,'Introduction to Spring',2.5),(4,'Introduction to Spring',2.5),(5,'Introduction to Spring',2.5),(6,'Introduction to Spring',2.5),(7,'Introduction to Spring',2.5),(8,'Introduction to Spring',2.5),(9,'Introduction to Spring',2.5),(10,'Introduction to Spring',2.5);
/*!40000 ALTER TABLE `lectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mySubject`
--

DROP TABLE IF EXISTS `mySubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mySubject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mySubject`
--

LOCK TABLES `mySubject` WRITE;
/*!40000 ALTER TABLE `mySubject` DISABLE KEYS */;
INSERT INTO `mySubject` VALUES (1,'JAVA'),(2,'JAVA'),(3,'JAVA'),(4,'JAVA'),(5,'JAVA'),(6,'JAVA'),(7,'JAVA'),(8,'JAVA'),(9,'JAVA'),(10,'JAVA'),(11,'JAVA'),(12,'JAVA'),(13,'JAVA'),(14,'JAVA'),(15,'JAVA'),(16,'JAVA_EE'),(17,'JAVA_EE'),(18,'JAVA_EE'),(19,'JAVA_EE'),(20,'JAVA_EE'),(21,'JAVA_EE'),(22,'JAVA_EE'),(23,'JAVA_EE'),(24,'JAVA_EE'),(25,'JAVA_EE'),(26,'JAVA_EE'),(27,'JAVA_EE'),(28,'JAVA_EE'),(29,'Math'),(30,'Math'),(31,'Math');
/*!40000 ALTER TABLE `mySubject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(250) DEFAULT NULL,
  `student_address` int(11) DEFAULT NULL,
  `student_subject` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_student_address_idx` (`student_address`),
  KEY `fk_student_subject_idx` (`student_subject`),
  CONSTRAINT `fk_student_address` FOREIGN KEY (`student_address`) REFERENCES `address` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_student_subject` FOREIGN KEY (`student_subject`) REFERENCES `mySubject` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (14,'student_1',NULL,NULL),(15,'student_0',NULL,NULL),(16,'student_1',NULL,NULL),(17,'student_2',NULL,NULL),(18,'student_3',NULL,NULL),(19,'student_4',NULL,NULL),(20,'student_5',NULL,NULL),(21,'student_6',NULL,NULL),(22,'student_7',NULL,NULL),(23,'student_8',NULL,NULL),(24,'student_9',NULL,NULL),(25,'student_1',NULL,NULL),(26,'test_student',NULL,NULL),(28,'test_student',NULL,NULL),(29,'test_student',NULL,NULL),(30,'test_student',NULL,NULL),(31,'test_student',7,NULL),(32,'test_student',8,NULL),(33,'test_student',9,NULL),(34,'test2_student',10,NULL),(35,'test2_student',11,NULL),(36,'test2_student',NULL,NULL),(37,'st_0',NULL,NULL),(38,'st_1',NULL,NULL),(39,'st_2',NULL,NULL),(40,'st_3',NULL,NULL),(41,'st_4',NULL,NULL),(42,'test2_student',12,NULL),(43,'st_0',NULL,NULL),(44,'st_1',NULL,NULL),(45,'st_2',NULL,NULL),(46,'st_3',NULL,NULL),(47,'st_4',NULL,NULL),(48,'test2_student',13,NULL),(49,'st_0',NULL,NULL),(50,'st_1',NULL,NULL),(51,'st_2',NULL,NULL),(52,'st_3',NULL,NULL),(53,'st_4',NULL,NULL),(54,'test2_student',14,NULL),(55,'st_0',NULL,NULL),(56,'st_1',NULL,NULL),(57,'st_2',NULL,NULL),(58,'st_3',NULL,NULL),(59,'st_4',NULL,NULL),(60,'test2_student',15,NULL),(61,'st_0',NULL,NULL),(62,'st_1',NULL,NULL),(63,'st_2',NULL,NULL),(64,'st_3',NULL,NULL),(65,'st_4',NULL,NULL),(66,'test2_student',16,NULL),(67,'st_0',NULL,NULL),(68,'st_1',NULL,NULL),(69,'st_2',NULL,NULL),(70,'st_3',NULL,NULL),(71,'st_4',NULL,NULL),(72,'test2_student',17,NULL),(73,'st_0',NULL,NULL),(74,'st_1',NULL,NULL),(75,'st_2',NULL,NULL),(76,'st_3',NULL,NULL),(77,'st_4',NULL,NULL),(78,'test2_student',18,NULL),(79,'st_0',NULL,NULL),(80,'st_1',NULL,NULL),(81,'st_2',NULL,NULL),(82,'st_3',NULL,NULL),(83,'st_4',NULL,NULL),(84,'test2_student',19,NULL),(85,'st_0',NULL,NULL),(86,'st_1',NULL,NULL),(87,'st_2',NULL,NULL),(88,'st_3',NULL,NULL),(89,'st_4',NULL,NULL),(90,'test2_student',20,NULL),(91,'st_0',NULL,NULL),(92,'st_1',NULL,NULL),(93,'st_2',NULL,NULL),(94,'st_3',NULL,NULL),(95,'st_4',NULL,NULL),(96,'test2_student',21,NULL),(97,'st_0',NULL,NULL),(98,'st_1',NULL,NULL),(99,'st_2',NULL,NULL),(100,'st_3',NULL,NULL),(101,'st_4',NULL,NULL),(102,'test2_student',22,NULL),(103,'st_0',NULL,NULL),(104,'st_1',NULL,NULL),(105,'st_2',NULL,NULL),(106,'st_3',NULL,NULL),(107,'st_4',NULL,NULL),(108,'test2_student',23,NULL),(109,'st_0',NULL,NULL),(110,'st_1',NULL,NULL),(111,'st_2',NULL,NULL),(112,'st_3',NULL,NULL),(113,'st_4',NULL,NULL),(114,'test2_student',24,NULL),(115,'st_0',NULL,NULL),(116,'st_1',NULL,NULL),(117,'st_2',NULL,NULL),(118,'st_3',NULL,NULL),(119,'st_4',NULL,NULL),(120,'test2_student',25,NULL),(121,'st_0',NULL,NULL),(122,'st_1',NULL,NULL),(123,'st_2',NULL,NULL),(124,'st_3',NULL,NULL),(125,'st_4',NULL,NULL),(126,'test2_student',26,NULL),(127,'st_0',NULL,NULL),(128,'st_1',NULL,NULL),(129,'st_2',NULL,NULL),(130,'st_3',NULL,NULL),(131,'st_4',NULL,NULL),(132,'test2_student',27,NULL),(133,'stud_0',NULL,NULL),(134,'stud_1',NULL,NULL),(135,'stud_2',NULL,NULL),(136,'stud_3',NULL,NULL),(137,'stud_4',NULL,NULL),(138,'test2_student',28,NULL),(139,'stud_0',NULL,NULL),(140,'stud_1',NULL,NULL),(141,'stud_2',NULL,NULL),(142,'stud_3',NULL,NULL),(143,'stud_4',NULL,NULL),(144,'test2_student',29,NULL),(145,'stud_0',NULL,NULL),(146,'stud_1',NULL,NULL),(147,'stud_2',NULL,NULL),(148,'stud_3',NULL,NULL),(149,'stud_4',NULL,NULL),(150,'test2_student',30,NULL),(151,'stud_0',NULL,NULL),(152,'stud_1',NULL,NULL),(153,'stud_2',NULL,NULL),(154,'stud_3',NULL,NULL),(155,'stud_4',NULL,NULL),(156,'test2_student',31,NULL),(157,'stud_0',NULL,NULL),(158,'stud_1',NULL,NULL),(159,'stud_2',NULL,NULL),(160,'stud_3',NULL,NULL),(161,'stud_4',NULL,NULL),(162,'test2_student',32,NULL),(163,'stud_0',NULL,NULL),(164,'stud_1',NULL,NULL),(165,'stud_2',NULL,NULL),(166,'stud_3',NULL,NULL),(167,'stud_4',NULL,NULL),(168,'test2_student',33,NULL),(169,'stud_0',NULL,23),(170,'stud_1',NULL,23),(171,'stud_2',NULL,23),(172,'stud_3',NULL,23),(173,'stud_4',NULL,23),(174,'test2_student',34,NULL),(175,'test4_student',35,NULL),(176,'test4_student',35,NULL),(177,NULL,NULL,NULL),(178,NULL,NULL,NULL),(179,'test4_student',36,NULL),(180,'test4_student',36,NULL),(181,NULL,NULL,NULL),(182,NULL,NULL,NULL),(183,'test4_student',37,NULL),(184,'test4_student',37,NULL),(185,NULL,NULL,NULL),(186,NULL,NULL,NULL),(187,'test4_student',38,NULL),(188,NULL,NULL,NULL),(189,NULL,NULL,NULL),(190,'test4_student',38,NULL),(191,NULL,NULL,NULL),(192,NULL,NULL,NULL),(193,'test2_student',39,NULL),(194,'stud_0',NULL,NULL),(195,'stud_1',NULL,NULL),(196,'stud_2',NULL,NULL),(197,'stud_3',NULL,NULL),(198,'stud_4',NULL,NULL),(199,'test2_student',40,NULL),(201,'test2_student',41,NULL),(202,'stud_0',NULL,NULL),(203,'test2_student',42,NULL),(204,'stud_0',NULL,NULL),(205,'stud_1',NULL,NULL),(206,'stud_2',NULL,NULL),(207,'stud_3',NULL,NULL),(208,'stud_4',NULL,NULL),(209,'test2_student',43,NULL),(210,'stud_0',NULL,29),(211,'stud_1',NULL,29),(212,'stud_2',NULL,29),(213,'stud_3',NULL,29),(214,'stud_4',NULL,29),(215,'test2_student',44,NULL),(216,'stud_0',NULL,30),(217,'stud_1',NULL,30),(218,'stud_2',NULL,30),(219,'stud_3',NULL,30),(220,'stud_4',NULL,30),(221,'test2_student',45,NULL),(222,'stud_0',NULL,31),(223,'stud_1',NULL,31),(224,'stud_2',NULL,31),(225,'stud_3',NULL,31),(226,'stud_4',NULL,31);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_grade`
--

DROP TABLE IF EXISTS `student_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_grade` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_id` varchar(45) NOT NULL,
  PRIMARY KEY (`student_id`,`grade_id`),
  CONSTRAINT `studentgrade_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_grade`
--

LOCK TABLES `student_grade` WRITE;
/*!40000 ALTER TABLE `student_grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_to_lecture`
--

DROP TABLE IF EXISTS `student_to_lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_to_lecture` (
  `STUDENT_ID` int(11) NOT NULL,
  `LECTURE_ID` int(11) NOT NULL,
  KEY `STUDENT_ID` (`STUDENT_ID`),
  KEY `LECTURE_ID` (`LECTURE_ID`),
  CONSTRAINT `student_to_lecture_ibfk_1` FOREIGN KEY (`STUDENT_ID`) REFERENCES `student` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `student_to_lecture_ibfk_2` FOREIGN KEY (`LECTURE_ID`) REFERENCES `lecture` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_to_lecture`
--

LOCK TABLES `student_to_lecture` WRITE;
/*!40000 ALTER TABLE `student_to_lecture` DISABLE KEYS */;
INSERT INTO `student_to_lecture` VALUES (14,17),(14,18),(14,19),(14,20),(14,21),(15,22),(16,22),(17,22),(18,22),(19,22),(20,22),(21,22),(22,22),(23,22),(24,22);
/*!40000 ALTER TABLE `student_to_lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pib` varchar(100) NOT NULL,
  `course` int(11) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `subjects` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_address_idx` (`address`),
  KEY `fk_grades_idx` (`subjects`),
  CONSTRAINT `fk_address` FOREIGN KEY (`address`) REFERENCES `students_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_subject` FOREIGN KEY (`subjects`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Karaiman',3,NULL,NULL),(2,'Gavryshko',3,NULL,NULL),(3,'Kertop',3,NULL,NULL),(4,'Olha Karaiman',5,NULL,NULL),(5,'Olha Karaiman',5,NULL,NULL),(6,'Olha Karaiman',5,NULL,NULL),(7,'Olha Karaiman',5,NULL,NULL),(8,'Olha Karaiman',5,NULL,NULL),(9,'Olha Karaiman',5,NULL,NULL),(10,'Olha Karaiman',5,NULL,NULL),(11,'Olha Karaiman',5,NULL,NULL),(12,'Olha Karaiman',5,NULL,NULL),(13,'Olha Karaiman',5,NULL,NULL),(14,'Olha Karaiman',5,NULL,NULL),(15,'Olha Karaiman',5,NULL,NULL),(16,'Olha Karaiman',5,NULL,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_address`
--

DROP TABLE IF EXISTS `students_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_city` varchar(45) DEFAULT NULL,
  `address_street` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_address`
--

LOCK TABLES `students_address` WRITE;
/*!40000 ALTER TABLE `students_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `students_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` int(11) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-02  9:03:44
