-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.24


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema cse
--

CREATE DATABASE IF NOT EXISTS cse;
USE cse;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`username`,`password`,`email`) VALUES 
 ('admin','nahipata987','monicarekhan@gmail.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `userId` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `dept` varchar(10) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `speciality` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` (`userId`,`password`,`name`,`gender`,`dept`,`mobile`,`dob`,`address`,`image`,`qualification`,`email`,`speciality`) VALUES 
 ('subashish.majumdar','mainhodhu1','subhashish','male','cse','7890111278','26-12-79','56,ueorl',NULL,'M.S.',NULL,NULL);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;


--
-- Definition of table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `receiver` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `reply` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` (`receiver`,`sender`,`description`,`reply`) VALUES 
 ('subhashish.majumdar','saurav.singhi','hello sirji','hi beta');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;


--
-- Definition of table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `date` varchar(10) DEFAULT NULL,
  `content` varchar(250) DEFAULT NULL,
  `issuer` varchar(10) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice`
--

/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` (`date`,`content`,`issuer`,`subject`) VALUES 
 ('27-08-2012','hiii to all','admin',NULL);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `userId` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `graduation` varchar(10) DEFAULT NULL,
  `inter` varchar(10) DEFAULT NULL,
  `acdachvmnt` varchar(30) DEFAULT NULL,
  `sports` varchar(100) DEFAULT NULL,
  `acadproj` varchar(100) DEFAULT NULL,
  `industryexp` bit(1) DEFAULT NULL,
  `interest` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `highschool` varchar(10) DEFAULT NULL,
  `roll` varchar(10) DEFAULT NULL,
  `father` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`userId`,`password`,`name`,`gender`,`batch`,`dept`,`mobile`,`dob`,`address`,`image`,`graduation`,`inter`,`acdachvmnt`,`sports`,`acadproj`,`industryexp`,`interest`,`email`,`highschool`,`roll`,`father`) VALUES 
 ('saurav.singhi','12345','saurav singhi','male','2014','cse',9876543456,'12-12-1992','jcdhsdkw',NULL,'8.7','85','',NULL,NULL,NULL,NULL,'saurav.singhi@gmail.com',NULL,NULL,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Definition of table `studentprof`
--

DROP TABLE IF EXISTS `studentprof`;
CREATE TABLE `studentprof` (
  `userId` varchar(30) NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `graduation` varchar(50) DEFAULT NULL,
  `inter` varchar(50) DEFAULT NULL,
  `acadachmnt` varchar(50) DEFAULT NULL,
  `sports` varchar(50) DEFAULT NULL,
  `acadproj` varchar(50) DEFAULT NULL,
  `industryexp` varchar(100) DEFAULT NULL,
  `interest` varchar(100) DEFAULT NULL,
  `highschool` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentprof`
--

/*!40000 ALTER TABLE `studentprof` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentprof` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
