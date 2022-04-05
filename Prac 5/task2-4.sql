
CREATE DATABASE `enrolment`;

USE `enrolment`;

DROP TABLE IF EXISTS `Enrolments`;

CREATE TABLE `Enrolments` (
  `student_id` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_code` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mark` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


LOCK TABLES `Enrolments` WRITE;
INSERT INTO `Enrolments` VALUES ('a1111115','COMP SCI 1102',62),('a1111115','COMP SCI 2000',80),('a1111112','COMP SCI 1102',55),('a1111112','COMP SCI 2207',80),('a1111113','PHIL 2039',65),('a1111113','COMP SCI 1102',46),('a1111116','COMP SCI 2207',67),('a1111116','COMP SCI 2000',49),('a1111118','COMP SCI 2000',48),('a1111117','COMP SCI 2207',75),('a1111120','COMP SCI 2207',81),('a1111118','ENTREP 1011',73),('a1111117','ENG 1002',91),('a1111120','ELEC ENG 1102',38),('a1111119','ENTREP 1011',57),('a1111119','BIOCHEM 2500',91),('a1111119','COMP SCI 2000',70),('a1111113','ENG 1002',58);
UNLOCK TABLES;


DROP TABLE IF EXISTS `Students`;
CREATE TABLE `Students` (
  `student_id` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_name` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_name` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Students` WRITE;
INSERT INTO `Students` VALUES ('a1111112','Jane','Brown','BE(Hons)(Soft)'),('a1111113','Bob','Smith','BCompSc'),('a1111115','Dot','Broadbent','BCompSc'),('a1111116','Raleigh','Lovell','BCompSc'),('a1111117','Roxanne','Palmer','BMaCompSc'),('a1111118','Jin','Chu','BE(Hons)(Soft)'),('a1111119','Ming','Lam','BCompSc'),('a1111120','Tai','Jiang','BE(Hons)(Soft)');
UNLOCK TABLES;


DROP TABLE IF EXISTS `Subjects`;
CREATE TABLE `Subjects` (
  `subject_code` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


LOCK TABLES `Subjects` WRITE;
INSERT INTO `Subjects` VALUES ('ENG 1002','Programming (MATLAB and C)','ECMS','a2222221'),('ELEC ENG 1102','Digital Electronics','ECMS','a2222222'),('COMP SCI 1102','Object Oriented Programming','ECMS','a2222223'),('COMP SCI 2207','Web and Database Computing','ECMS','a2222221'),('COMP SCI 2000','Computer Systems','ECMS','a2222223'),('PHIL 2039','Philosophy of Mind','Arts','a2222224'),('ENTREP 1011','Entrepreneurship Foundations and Mindset','Business','a2222225'),('BIOCHEM 2500','Biochemistry II: Molecular and Cell Biology','Science','a2222226');
UNLOCK TABLES;

DROP TABLE IF EXISTS `Teachers`;
CREATE TABLE `Teachers` (
  `staff_id` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_name` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_name` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Teachers` WRITE;
INSERT INTO `Teachers` VALUES ('a2222221','Doctor',' Quintella','Hill','ECMS'),('a2222222','Associate Lecturer',' Nieves','Cantu','ECMS'),('a2222223','Professor',' Yating','Yuen','ECMS'),('a2222224','Doctor',' Stone','Vance','Arts'),('a2222225','Associate Professor',' Kay','Crewe','Business'),('a2222226','Professor',' Christa','Barret','Science');
UNLOCK TABLES;
