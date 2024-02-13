-- MySQL dump 10.13  Distrib 5.7.17, for Win32 (AMD64)
--
-- Host: localhost    Database: labdb
-- ------------------------------------------------------
-- Server version	5.7.17-log
#create database lab;
#use lab;
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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `DEPARTMENT_ID` int(4) NOT NULL,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `MANAGER_ID` int(6) DEFAULT NULL,
  `LOCATION_ID` int(4) DEFAULT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`),
  KEY `DEPT_LOC_FK` (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1000,'Prepare',NULL,NULL);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `Employee_id` char(4) NOT NULL,
  `First_name` varchar(20) DEFAULT NULL,
  `Last_name` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone_number` varchar(20) DEFAULT NULL,
  `Hire_date` date NOT NULL,
  `Job_id` varchar(10) NOT NULL,
  `Salary` float(8,2) DEFAULT NULL,
  `Commision_pct` float(2,2) DEFAULT NULL,
  `Manager_id` char(4) DEFAULT NULL,
  `Department_id` int(4) DEFAULT NULL,
  `Ratehour` int(2) DEFAULT '0' COMMENT 'rate hour,Percent,[MAX/MIN/COUNT]',
  `Address` varchar(100) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  PRIMARY KEY (`Employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('1','Natcha','Srikun','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,1000,'Tasala Muangnear','1975-01-03'),('2','Sukanya','Narak','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,2500,'Tasung Muangklai','1979-07-01'),('3','Panita','Narak','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,1500,'Samoon Maunglai','1974-01-06'),('4','Auschara','Bunchouy','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,2500,'Suksai Samosorn','1972-01-01'),('5','Natee','Deeharm','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,1500,'Silpakorn Tappitak','1979-05-01'),('6','SomSkul','Deeharm','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,1000,'Tasala Muangnear','1985-01-01'),('7','Pethan','Deeharm','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,1000,'Samoon Muangthai','1980-07-01'),('8','Aumnath','Khangkrang','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,3000,'Tasung Maungtong','1977-06-01');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_backup`
--

DROP TABLE IF EXISTS `employees_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees_backup` (
  `Empoyee_id` char(4) NOT NULL,
  `First_name` varchar(20) DEFAULT NULL,
  `Last_name` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone_number` varchar(20) DEFAULT NULL,
  `Hire_date` date NOT NULL,
  `Job_id` varchar(10) NOT NULL,
  `Salary` float(8,2) DEFAULT NULL,
  `Commision_pct` float(2,2) DEFAULT NULL,
  `Manager_id` char(4) DEFAULT NULL,
  `Department_id` int(4) DEFAULT NULL,
  `Ratehour` int(2) DEFAULT '0' COMMENT 'rate hour,Percent,[MAX/MIN/COUNT]',
  `Address` varchar(100) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  PRIMARY KEY (`Empoyee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_backup`
--

LOCK TABLES `employees_backup` WRITE;
/*!40000 ALTER TABLE `employees_backup` DISABLE KEYS */;
INSERT INTO `employees_backup` VALUES ('1','นัชชา','สีกัน','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,1000,'ท่าศาลา เมืองเหนือ','1975-01-03'),('2','สุกัญญา','น่ารัก','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,2500,'ท่าสุง  เมืองจินตนา','1979-07-01'),('3','ปนิดา','น่ารัก','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,1500,'สมุนหมอน เมืองเลย','1974-01-06'),('4','อัชรา','บุญช่วย','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,2500,'สุขใส สโมสร','1972-01-01'),('5','นธี','ดีงาม','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,1500,'ศิลปากร เทพพิทัก','1979-05-01'),('6','สมสกุล','สวยมาก','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,1000,'ท่าศาลา เมืองเหนือ','1985-01-01'),('7','พิธาน','ดีงาม','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,1000,'สมุนหมอน เมืองเลย','1980-07-01'),('8','อำนาจ','แข็งแกร่ง','',NULL,'0000-00-00','',NULL,NULL,NULL,1000,3000,'ท่าสูง เมืองทอง','1977-06-01');
/*!40000 ALTER TABLE `employees_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `Person_id` char(3) NOT NULL,
  `RateHour` int(2) DEFAULT NULL COMMENT 'rate hour,Percent,[MAX/MIN/COUNT]',
  `Person_name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  PRIMARY KEY (`Person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES ('001',1000,'นัชชา  สีกัน','ท่าศาลา เมืองเหนือ','1975-01-03'),('002',2500,'สุกัญญา น่ารัก','ท่าสุง  เมืองจินตนา','1979-07-01'),('003',1500,'ปนิดา น่ารัก','สมุนหมอน เมืองเลย','1974-01-06'),('004',2500,'อัชรา บุญช่วย','สุขใส สโมสร','1972-01-01'),('005',1500,'นธี ดีงาม','ศิลปากร เทพพิทัก','1979-05-01'),('006',1000,'สมสกุล สวยมาก','ท่าศาลา เมืองเหนือ','1985-01-01'),('007',1000,'พิธาน ดีงาม','สมุนหมอน เมืองเลย','1980-07-01'),('008',3000,'อำนาจ แข็งแกร่ง','ท่าสูง เมืองทอง','1977-06-01');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `Project_id` char(5) NOT NULL DEFAULT '' COMMENT 'project id,Sequence,[LIKE/COUNT/BETWEEN/HAVING]',
  `Manager_id` char(3) DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `End_date` date DEFAULT NULL,
  PRIMARY KEY (`Project_id`) COMMENT 'project id,Sequence,[LIKE/COUNT/BETWEEN/HAVING]',
  KEY `projects_persons_fk` (`Manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('Proj1','008','2560-01-01','2560-03-28'),('Proj2','004','2560-01-01','2560-05-05'),('Proj3','002','2560-06-01','2560-07-03'),('Proj4','008','2560-04-03','2560-05-10');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `Project_id` char(5) NOT NULL,
  `Person_id` char(3) NOT NULL,
  PRIMARY KEY (`Project_id`,`Person_id`),
  KEY `works_persons_fk` (`Person_id`),
  CONSTRAINT `works_projects_fk` FOREIGN KEY (`Project_id`) REFERENCES `projects` (`Project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='การทำงานของแต่ละคน';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES ('Proj1','001'),('Proj3','001'),('Proj3','002'),('Proj1','003'),('Proj2','004'),('Proj2','005'),('Proj3','005'),('Proj4','005'),('Proj1','006'),('Proj2','006'),('Proj3','006'),('Proj1','007'),('Proj2','007'),('Proj3','007'),('Proj4','007'),('Proj1','008');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-25 13:34:55

select * from employees;
select * from departments;
select * from persons;
select * from works;
select * from projects;
show tables;


select Employee_id,First_name,Last_name,DEPARTMENT_NAME from employees inner join departments on 
employees.Department_id = departments.DEPARTMENT_ID;

insert into departments values (5,'XXXY',null,null);

select Employee_id,First_name from employees left join departments on employees.First_name = departments.DEPARTMENT_NAME;

select DEPARTMENT_NAME from employees Right join departments on employees.First_name = departments.DEPARTMENT_NAME;

select Person_name,Project_id from persons inner join works on persons.Person_id = works.Person_id;

select Employee_id,First_name,Last_name,DEPARTMENT_NAME from employees full join departments ;