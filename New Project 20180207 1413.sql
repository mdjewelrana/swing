-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema database1
--

CREATE DATABASE IF NOT EXISTS database1;
USE database1;

--
-- Definition of table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `aid` int(10) unsigned NOT NULL auto_increment,
  `pid` varchar(45) NOT NULL,
  `pnam` varchar(45) NOT NULL,
  `did` varchar(45) NOT NULL,
  `fees` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` (`aid`,`pid`,`pnam`,`did`,`fees`,`date`) VALUES 
 (7,'333','anwar','223','600','2018-02-01'),
 (11,'444','razu','445','700','2018-02-01'),
 (12,'111','abid','112','500','2018-02-07'),
 (13,'444','razu','112','500','2018-02-13'),
 (123,'222','jewel','223','600','2018-02-07');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;


--
-- Definition of table `mdoc`
--

DROP TABLE IF EXISTS `mdoc`;
CREATE TABLE `mdoc` (
  `did` int(10) unsigned NOT NULL auto_increment,
  `dnam` varchar(45) NOT NULL,
  `depart` varchar(45) NOT NULL,
  `cfees` varchar(45) NOT NULL,
  `exp` varchar(45) NOT NULL,
  `ladd` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `cont` varchar(45) NOT NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdoc`
--

/*!40000 ALTER TABLE `mdoc` DISABLE KEYS */;
INSERT INTO `mdoc` (`did`,`dnam`,`depart`,`cfees`,`exp`,`ladd`,`city`,`cont`) VALUES 
 (1,'Abid','Medicine','2500','10 year','Magura','khulna','019201564654'),
 (2,'raju','serjare','2500','5 years','dfgfd','magura','012367465879'),
 (3,'Dr. Abid','medecine','500','Dhaka','Dhaka','Magura','01745068074');
/*!40000 ALTER TABLE `mdoc` ENABLE KEYS */;


--
-- Definition of table `mpat`
--

DROP TABLE IF EXISTS `mpat`;
CREATE TABLE `mpat` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `pnam` varchar(45) NOT NULL,
  `p_age` varchar(45) NOT NULL,
  `bgroup` varchar(45) NOT NULL,
  `gen` varchar(45) NOT NULL,
  `reg_date` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `cont` varchar(45) NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mpat`
--

/*!40000 ALTER TABLE `mpat` DISABLE KEYS */;
INSERT INTO `mpat` (`pid`,`pnam`,`p_age`,`bgroup`,`gen`,`reg_date`,`city`,`cont`) VALUES 
 (1,'jewel rana','26','b+','male','12/01/2018','Faridpur','01937745755'),
 (3,'Abid','26','b-','Male','01/02/2018','Magura','019377457554');
/*!40000 ALTER TABLE `mpat` ENABLE KEYS */;


--
-- Definition of table `npat`
--

DROP TABLE IF EXISTS `npat`;
CREATE TABLE `npat` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `pnam` varchar(45) NOT NULL,
  `p_age` varchar(45) NOT NULL,
  `bgroup` varchar(45) NOT NULL,
  `gen` varchar(45) NOT NULL,
  `reg_date` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `cont` varchar(45) NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `npat`
--

/*!40000 ALTER TABLE `npat` DISABLE KEYS */;
INSERT INTO `npat` (`pid`,`pnam`,`p_age`,`bgroup`,`gen`,`reg_date`,`city`,`cont`) VALUES 
 (1,'d','fd','dd','ddg','dfd','dfdfdd','fdfdf'),
 (2,'Jewel','25','b','male','1/02/2018','',''),
 (11,'kd','hd','fd','dh','sgs','sgs','sgsd');
/*!40000 ALTER TABLE `npat` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
