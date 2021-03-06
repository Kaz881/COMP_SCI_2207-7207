CREATE DATABASE /*!32312 IF NOT EXISTS*/ `enrolment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `enrolment`;


DROP TABLE IF EXISTS `Enrolments`;
CREATE TABLE `Enrolments` (
  `student_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mark` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


LOCK TABLES `Enrolments` WRITE;
INSERT INTO `Enrolments` VALUES ('a1111115','COMP SCI 1102',62),('a1111115','COMP SCI 2000',80),('a1111112','COMP SCI 1102',55),('a1111112','COMP SCI 2207',80),('a1111113','PHIL 2039',65),('a1111113','COMP SCI 1102',50),('a1111116','COMP SCI 2207',67),('a1111116','COMP SCI 2000',49),('a1111118','COMP SCI 2000',48),('a1111117','COMP SCI 2207',75),('a1111120','COMP SCI 2207',81),('a1111118','ENTREP 1011',73),('a1111117','ENG 1002',91),('a1111120','ELEC ENG 1102',38),('a1111119','ENTREP 1011',57),('a1111119','BIOCHEM 2500',91),('a1111119','COMP SCI 2000',70),('a1111113','ENG 1002',58);
UNLOCK TABLES;


DROP TABLE IF EXISTS `Students`;

CREATE TABLE `Students` (
  `student_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES ('a1111112','Jane','Brown','BE(Hons)(Soft)'),('a1111113','Bob','Smith','BCompSc'),('a1111115','Dot','Broadbent','BCompSc'),('a1111116','Raleigh','Lovell','BCompSc'),('a1111117','Roxanne','Palmer','BMaCompSc'),('a1111118','Jin','Chu','BE(Hons)(Soft)'),('a1111119','Ming','Lam','BCompSc'),('a1111120','Tai','Jiang','BE(Hons)(Soft)');
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subjects`
--

DROP TABLE IF EXISTS `Subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Subjects` (
  `subject_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subjects`
--

LOCK TABLES `Subjects` WRITE;
/*!40000 ALTER TABLE `Subjects` DISABLE KEYS */;
INSERT INTO `Subjects` VALUES ('ENG 1002','Programming (MATLAB and C)','ECMS','a2222221'),('ELEC ENG 1102','Digital Electronics','ECMS','a2222222'),('COMP SCI 1102','Object Oriented Programming','ECMS','a2222223'),('COMP SCI 2207','Web and Database Computing','ECMS','a2222221'),('COMP SCI 2000','Computer Systems','ECMS','a2222223'),('PHIL 2039','Philosophy of Mind','Arts','a2222224'),('ENTREP 1011','Entrepreneurship Foundations and Mindset','Business','a2222225'),('BIOCHEM 2500','Biochemistry II: Molecular and Cell Biology','Science','a2222226');
/*!40000 ALTER TABLE `Subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teachers`
--

DROP TABLE IF EXISTS `Teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teachers` (
  `staff_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teachers`
--

LOCK TABLES `Teachers` WRITE;
/*!40000 ALTER TABLE `Teachers` DISABLE KEYS */;
INSERT INTO `Teachers` VALUES ('a2222221','Doctor',' Quintella','Hill','ECMS'),('a2222222','Associate Lecturer',' Nieves','Cantu','ECMS'),('a2222223','Professor',' Yating','Yuen','ECMS'),('a2222224','Doctor',' Stone','Vance','Arts'),('a2222225','Associate Professor',' Kay','Crewe','Business'),('a2222226','Professor',' Christa','Barret','Science');
/*!40000 ALTER TABLE `Teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-26 15:44:06
