-- MySQL dump 10.13  Distrib 8.4.8, for Linux (x86_64)
--
-- Host: localhost    Database: IOE_PUR_080_BCT_063
-- ------------------------------------------------------
-- Server version	8.4.8

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
-- Table structure for table `COURSE`
--

DROP TABLE IF EXISTS `COURSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COURSE` (
  `CODE` int NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PREQ_COURSE_ID` int DEFAULT NULL,
  `INSTRUCTO_ID` int DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COURSE`
--

LOCK TABLES `COURSE` WRITE;
/*!40000 ALTER TABLE `COURSE` DISABLE KEYS */;
INSERT INTO `COURSE` VALUES (101,'Database Systems',NULL,1),(102,'Algorithms',101,2),(103,'Thermodynamics',NULL,3),(104,'Operating Systems',101,4),(105,'Structural Analysis',NULL,5),(106,'Computer Networks',102,6),(107,'Software Engineering',102,7),(108,'Electronics Lab',103,8),(109,'Architecture Design',NULL,9),(110,'Biomedical Instrumentation',NULL,10);
/*!40000 ALTER TABLE `COURSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPARTMENT`
--

DROP TABLE IF EXISTS `DEPARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEPARTMENT` (
  `DEPT_NO` int NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PHONE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DEPT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENT`
--

LOCK TABLES `DEPARTMENT` WRITE;
/*!40000 ALTER TABLE `DEPARTMENT` DISABLE KEYS */;
INSERT INTO `DEPARTMENT` VALUES (1,'Computer','056-123456'),(2,'Mechanical','056-654321'),(3,'Civil','056-987654'),(4,'Electrical','056-112233'),(5,'Chemical','056-445566'),(6,'Electronics','056-556677'),(7,'Architecture','056-778899'),(8,'Software','056-998877'),(9,'Biomedical','056-334455'),(10,'Industrial','056-667788');
/*!40000 ALTER TABLE `DEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INSTRUCTOR`
--

DROP TABLE IF EXISTS `INSTRUCTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INSTRUCTOR` (
  `INST_ID` int NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DEPT_N0` int DEFAULT NULL,
  `SALARY` int DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INSTRUCTOR`
--

LOCK TABLES `INSTRUCTOR` WRITE;
/*!40000 ALTER TABLE `INSTRUCTOR` DISABLE KEYS */;
INSERT INTO `INSTRUCTOR` VALUES (1,'Ramesh KC',1,25000,'ramesh@ioe.edu.np'),(2,'Sita Shrestha',1,22000,'sita@ioe.edu.np'),(3,'Hari Adhikari',2,18000,'hari@ioe.edu.np'),(4,'Nisha Thapa',1,30000,'nisha@ioe.edu.np'),(5,'Ram Shahi',3,20000,'ram@ioe.edu.np'),(6,'Anita Magar',4,24000,'anita@ioe.edu.np'),(7,'Prakash Lama',5,21000,'prakash@ioe.edu.np'),(8,'Suman KC',6,23000,'suman@ioe.edu.np'),(9,'Rita Thapa',7,19000,'rita@ioe.edu.np'),(10,'Sujan Sharma',8,26000,'sujan@ioe.edu.np');
/*!40000 ALTER TABLE `INSTRUCTOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENT`
--

DROP TABLE IF EXISTS `STUDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STUDENT` (
  `ROLL_NO` int NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `BATCH` int DEFAULT NULL,
  `DETP_NO` int DEFAULT NULL,
  PRIMARY KEY (`ROLL_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT`
--

LOCK TABLES `STUDENT` WRITE;
/*!40000 ALTER TABLE `STUDENT` DISABLE KEYS */;
INSERT INTO `STUDENT` VALUES (101,'Pratik Acharya','Dharan',80,1),(102,'Prashant Shah','Dharan',80,1),(103,'Sita Magar','Dang',81,1),(104,'Ram Kumar','Kathmandu',82,2),(105,'Anita Thapa','Biratnagar',80,3),(106,'Nisha Shrestha','Lalitpur',81,1),(107,'Sudip Poudel','Biratnagar',82,2),(108,'Ramesh KC','Dharan',83,4),(109,'Sita KC','Kathmandu',80,5),(110,'Hari Adhikari','Pokhara',81,6);
/*!40000 ALTER TABLE `STUDENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-29 10:57:43
