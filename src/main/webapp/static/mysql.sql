/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.6.12 : Database - db_haitest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_haitest` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_haitest`;

/*Table structure for table `t_patch` */

DROP TABLE IF EXISTS `t_patch`;

CREATE TABLE `t_patch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION_CODE` int(11) NOT NULL,
  `DESCRIBE` text,
  `PATCH_MD5` varchar(200) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `DOWNLOAD_LINK` text NOT NULL,
  `DOWNLOAD_SUCCESS_NUM` int(11) NOT NULL DEFAULT '0',
  `APPLY_ SUCCESS _NUM` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `t_version` */

DROP TABLE IF EXISTS `t_version`;

CREATE TABLE `t_version` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_KEY` varchar(50) NOT NULL,
  `VERSION_CODE` varchar(20) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
