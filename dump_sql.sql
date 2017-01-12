/*
SQLyog Enterprise - MySQL GUI v7.15 
MySQL - 5.6.31 : Database - library
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`library` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `library`;

/*Table structure for table `Author` */

DROP TABLE IF EXISTS `Author`;

CREATE TABLE `Author` (
  `id` int(11) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Author` */

insert  into `Author`(`id`,`author`) values (1,'Jack London'),(2,'Jenny Lawson '),(3,'Fedor Dostoevsky');

/*Table structure for table `Genre` */

DROP TABLE IF EXISTS `Genre`;

CREATE TABLE `Genre` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Ganre` varchar(100) NOT NULL DEFAULT '0',
  `id_author` int(100) DEFAULT NULL,
  `id_book` int(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `Genre` */

insert  into `Genre`(`id`,`Ganre`,`id_author`,`id_book`) values (1,'romantic',1,1),(2,'fantasic',1,2),(3,'comedy',2,3),(4,'love story',2,4),(5,'romantic',3,5),(6,'Philosophical novel',2,6);

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `id_author` int(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=FIXED;

/*Data for the table `books` */

insert  into `books`(`id`,`name`,`id_author`) values (1,'A Daughter of the Snows',1),(2,'The Game',1),(3,'A Funny Book About Horrible Things',2),(4,'A Mostly True Memoir ',2),(5,'Player',3),(6,'idiot',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
