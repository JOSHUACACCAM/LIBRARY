/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - library
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`library` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `library`;

/*Table structure for table `authors` */

DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
  `authorid` int(9) NOT NULL AUTO_INCREMENT,
  `authorname` char(255) NOT NULL,
  PRIMARY KEY (`authorid`)
) ENGINE=InnoDB AUTO_INCREMENT=423 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `authors` */

insert  into `authors`(`authorid`,`authorname`) values 
(316,'Charlyn'),
(317,'Charlyn Nudas'),
(318,'Author Three'),
(319,'Author Four'),
(320,'Author Five'),
(321,'cha'),
(322,'Author 1'),
(323,'Author 2'),
(324,'Author 3'),
(325,'Author 4'),
(326,'Author 5'),
(327,'Author 6'),
(328,'Author 7'),
(329,'Author 8'),
(330,'Author 9'),
(331,'Author 10'),
(332,'Author 11'),
(333,'Author 12'),
(334,'Author 13'),
(335,'Author 14'),
(336,'Author 15'),
(337,'Author 16'),
(338,'Author 17'),
(339,'Author 18'),
(340,'Author 19'),
(341,'Author 20'),
(342,'Author 21'),
(343,'Author 22'),
(344,'Author 23'),
(345,'Author 24'),
(346,'Author 25'),
(347,'Author 26'),
(348,'Author 27'),
(349,'Author 28'),
(350,'Author 29'),
(351,'Author 30'),
(352,'Author 31'),
(353,'Author 32'),
(354,'Author 33'),
(355,'Author 34'),
(356,'Author 35'),
(357,'Author 36'),
(358,'Author 37'),
(359,'Author 38'),
(360,'Author 39'),
(361,'Author 40'),
(362,'Author 41'),
(363,'Author 42'),
(364,'Author 43'),
(365,'Author 44'),
(366,'Author 45'),
(367,'Author 46'),
(368,'Author 47'),
(369,'Author 48'),
(370,'Author 49'),
(371,'Author 50'),
(372,'Author 51'),
(373,'Author 52'),
(374,'Author 53'),
(375,'Author 54'),
(376,'Author 55'),
(377,'Author 56'),
(378,'Author 57'),
(379,'Author 58'),
(380,'Author 59'),
(381,'Author 60'),
(382,'Author 61'),
(383,'Author 62'),
(384,'Author 63'),
(385,'Author 64'),
(386,'Author 65'),
(387,'Author 66'),
(388,'Author 67'),
(389,'Author 68'),
(390,'Author 69'),
(391,'Author 70'),
(392,'Author 71'),
(393,'Author 72'),
(394,'Author 73'),
(395,'Author 74'),
(396,'Author 75'),
(397,'Author 76'),
(398,'Author 77'),
(399,'Author 78'),
(400,'Author 79'),
(401,'Author 80'),
(402,'Author 81'),
(403,'Author 82'),
(404,'Author 83'),
(405,'Author 84'),
(406,'Author 85'),
(407,'Author 86'),
(408,'Author 87'),
(409,'Author 88'),
(410,'Author 89'),
(411,'Author 90'),
(412,'Author 91'),
(413,'Author 92'),
(414,'Author 93'),
(415,'Author 94'),
(416,'Author 95'),
(417,'Author 96'),
(418,'Author 97'),
(419,'Author 98'),
(420,'Author 99'),
(421,'Author 100'),
(422,'Author One');

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `bookid` int(9) NOT NULL AUTO_INCREMENT,
  `title` char(255) NOT NULL,
  `genre` char(255) NOT NULL,
  `authorid` int(9) NOT NULL,
  `bookCode` varchar(5) NOT NULL,
  PRIMARY KEY (`bookid`),
  KEY `authorid` (`authorid`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `books` */

insert  into `books`(`bookid`,`title`,`genre`,`authorid`,`bookCode`) values 
(123,'Book Title Three','Mystery',318,'915AG'),
(124,'Book Title Four','Science Fiction',319,'748NV'),
(125,'Book Title Five','Fantasy',320,'704YQ'),
(126,'Book Title One','Fiction',316,'372HG'),
(127,'Book Title Two','Non-Fiction',317,'858RG'),
(128,'Book Title Three','Mystery',318,'542JH'),
(129,'Book Title Four','Science Fiction',319,'140PM'),
(130,'Book Title Five','Fantasy',320,'634XY'),
(131,'Book Title One','Fiction',316,'641SH'),
(132,'Book Title Two','Non-Fiction',317,'136MG'),
(133,'Book Title Three','Mystery',318,'476CC'),
(134,'Book Title Four','Science Fiction',319,'676WQ'),
(135,'Book Title Five','Fantasy',320,'596IX'),
(136,'Book Title One','Fiction',316,'864MT'),
(137,'Book Title Two','Non-Fiction',317,'357UL'),
(138,'Book Title Three','Mystery',318,'378SO'),
(139,'Book Title Four','Science Fiction',319,'613EJ'),
(140,'Book Title Five','Fantasy',320,'334KT'),
(141,'Book Title One','Fiction',422,'411ZT'),
(142,'Book Title Two','Non-Fiction',317,'526CW'),
(143,'Book Title Three','Mystery',318,'382UZ'),
(144,'Book Title Four','Science Fiction',319,'549XB'),
(145,'Book Title Five','Fantasy',320,'799CS'),
(146,'Book Title One','Fiction',422,'999XD'),
(147,'Book Title Two','Non-Fiction',317,'482WP'),
(148,'Book Title Three','Mystery',318,'721UE'),
(149,'Book Title Four','Science Fiction',319,'503NK'),
(150,'Book Title Five','Fantasy',320,'944AU');

/*Table structure for table `books_collection` */

DROP TABLE IF EXISTS `books_collection`;

CREATE TABLE `books_collection` (
  `collectionid` int(9) NOT NULL AUTO_INCREMENT,
  `bookid` int(9) NOT NULL,
  `authorid` int(9) NOT NULL,
  PRIMARY KEY (`collectionid`),
  KEY `bookid` (`bookid`),
  KEY `authorid` (`authorid`),
  CONSTRAINT `books_collection_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `books_collection_ibfk_2` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `books_collection` */

insert  into `books_collection`(`collectionid`,`bookid`,`authorid`) values 
(123,123,318),
(124,124,319),
(125,125,320),
(126,126,316),
(127,127,317),
(128,128,318),
(129,129,319),
(130,130,320),
(131,131,316),
(132,132,317),
(133,133,318),
(134,134,319),
(135,135,320),
(136,136,316),
(137,137,317),
(138,138,318),
(139,139,319),
(140,140,320),
(141,141,422),
(142,142,317),
(143,143,318),
(144,144,319),
(145,145,320),
(146,146,422),
(147,147,317),
(148,148,318),
(149,149,319),
(150,150,320);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userid` int(9) NOT NULL AUTO_INCREMENT,
  `username` char(255) NOT NULL,
  `password` text NOT NULL,
  `access_level` varchar(10) NOT NULL,
  `token` text NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`userid`,`username`,`password`,`access_level`,`token`) values 
(115,'admin','$2y$10$DTPgrdjEio4OfBUrKXx.QOfpTvhFSR6SOCRf.qXUGQnUeriA1CU8O','admin',''),
(116,'joshua','$2y$10$7SrrmrjgJGnD/VxZ74t4Eum9weiG4InifJMoeu636g.lXzW15y2Be','',''),
(117,'joshu','$2y$10$m6df.fijmT5PAZmqrquqietspU7OwQsiBvuTdUUCplirJXC5KvARq','','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
