-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: student_immigrate
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `studentid` int(11) NOT NULL,
  `profileId` int(11) NOT NULL AUTO_INCREMENT,
  `matricPercentage` int(5) NOT NULL,
  `FAPercentage` int(5) NOT NULL,
  `bachelorCGPA` int(5) NOT NULL,
  `IELTS` int(2) DEFAULT NULL,
  `profileGrade` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`profileId`),
  KEY `studentid` (`studentid`),
  CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`studentid`) REFERENCES `user` (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `university` (
  `universityId` int(11) NOT NULL AUTO_INCREMENT,
  `ProgramName` varchar(255) NOT NULL,
  `tutionFee` varchar(255) NOT NULL,
  `courseLanguage` varchar(255) NOT NULL,
  `admissionSemester` varchar(255) NOT NULL,
  `courseWebsite` varchar(255) NOT NULL,
  `uniGrade` varchar(1) DEFAULT NULL,
  `universityName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`universityId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university`
--

LOCK TABLES `university` WRITE;
/*!40000 ALTER TABLE `university` DISABLE KEYS */;
INSERT INTO `university` VALUES (1,'Advanced Signal Processing and Communications Engineering MSc','none','English','Winter semester only','http://www.asc.studium.fau.de/','B',' FAU Erlangen-Nürnberg'),(2,'Applied Computer Science (MSc)','none','English','Summer and winter semester','https://www.th-deg.de/de/','B','Deggendorf Institute of Technology'),(3,'Applied Computer Science (MSc)','	from 4,000 to 5,000 EUR per semester','English','Summer and winter semester','https://www.hochschule-heidelberg.de/en/academics/masters-degree/applied-computer-science/','A',' SRH University Heidelberg'),(4,'Applied Mathematics for Network and Data Sciences','none','English','Winter semester only','http://www.hs-mittweida.de/','B',' University of Applied Sciences Mittweida'),(5,'Automation & IT','none','English','Winter semester only','http://www.master-ait.de/content/index_ger.html','A','TH Köln (University of Applied Sciences)'),(6,'Computer and Information Science (MSc)','varied','English	','Summer and winter semester','https://www.informatik.uni-konstanz.de/en/studies/master-of-science/','A','University of Konstanz'),(7,'Computer Science','varied','English	','Summer and winter semester','http://www.informatik.uni-stuttgart.de/studium/interessierte/msc-studiengaenge/msc-computer-science/index.html','A','University of Stuttgart'),(8,'Computer Science (Master of Science)','none','English	','Winter semester only','http://www.uni-kl.de/international/home/','A','Technische Universität Kaiserslautern'),(9,'Computer Science (MSc)','none','English	','Summer and winter semester','http://www.cs.uni-saarland.de/','A','Saarland University'),(10,'Embedded Systems (MSc)','none','English	','Summer and winter semester','http://www.cs.uni-saarland.de/','A','Saarland University'),(11,'Web Engineering','none','English	','Winter semester only','https://www.tu-chemnitz.de/informatik/index.php.en','A','Technische Universität Chemnitz'),(12,'MSc Computer Engineering','none','German, English','Summer and winter semester','https://www.uni-due.de/ise/','B','University of Duisburg-Essen'),(13,'Software Engineering for Industrial Applications (MEng)','	from 2,000 to 3,000 EUR per semester','English	','Summer and winter semester','http://www.hof-university.com/continuing-education/masters-program-full-time/software-engineering-for-industrial-applications-meng.html','A','Hof University of Applied Sciences'),(14,'Master of Science in Computational Sciences','none','German, English','Winter semester only','http://www.compsci.fu-berlin.de/en/','A','Freie Universität Berlin'),(15,'Master of Software Engineering for Embedded Systems (DISC) ','from 1,000 to 2,000 EUR per semester','English	','Winter semester only','https://www.zfuw.uni-kl.de/en/distance-learning-courses/science-engineering/software-engineering-for-embedded-systems/','A','Technische Universität Kaiserslautern'),(16,'Master\'s Course Web Science (MSc)','from 1,000 to 2,000 EUR per semester','English	','Summer and winter semester','http://www.webscience.th-koeln.de/','A','TH Köln (University of Applied Sciences)'),(17,'Master in Distributed Software Systems','none','English	','Summer and winter semester','https://www.informatik.tu-darmstadt.de/de/studierende/studiengaenge/masterstudiengaenge/spezialisierte-masterstudiengaenge/distributed-software-systems/','A','TU Darmstadt'),(18,'Human Computer Interaction','none','English	','Summer and winter semester','http://hci-siegen.de/','B','University of Siegen'),(19,'Applied Computer Science (MSc)','none','English	','Summer and winter semester','http://www.uni-goettingen.de/en/40954.html','B','University of Göttingen'),(21,'Robotic Systems Engineering','from 4,000 to 5,000 EUR per semester','English	','Winter semester only','https://www.academy.rwth-aachen.de/en/education-formats/msc-degree-programmes','B','RWTH Aachen University'),(22,'Software Engineering and Management (MSc)','varied','English	','Winter semester only','https://www.hs-heilbronn.de/msem/students','B','Heilbronn University');
/*!40000 ALTER TABLE `university` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `studentid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`studentid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Gita','gkirshan@live.com','admin123'),(2,'Sehr','sinbox@live.com','123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-03 19:11:46
