/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - evidence
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`evidence` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `evidence`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('mlrit','csit1234');

/*Table structure for table `case_details` */

DROP TABLE IF EXISTS `case_details`;

CREATE TABLE `case_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `cid` varchar(100) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `description` longtext,
  `str` longtext,
  `image` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `case_details` */

insert  into `case_details`(`id`,`cid`,`cname`,`location`,`description`,`str`,`image`,`skey`,`status`,`fname`) values (2,'434','Murder','hyderabad',' exhibit that the scheme is feasible for real','hi hello how ru?','new.jpg','Lazc3m+Y8EOuCU9E5zq/Kw==','-1978975193','test.txt');

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `manager` */

insert  into `manager`(`username`,`password`) values ('manager','manager');

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `cloud` varchar(100) NOT NULL,
  `attributes` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`,`cloud`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

insert  into `owner`(`username`,`password`,`email`,`gender`,`address`,`mobile`,`cloud`,`attributes`,`skey`,`status`,`otp`,`image`) values ('shiva','shiva','shiva.1000projects@gmail.com','MALE','Hyderabad','9032101992','IDM','developers','NkPg/0hhAM20HDdR4JakuA==','Blocked',25051,'shiva.jpg');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `cid` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`cid`,`cname`,`username`,`skey`,`status`) values ('434','Murder','shan@gmail.com','Lazc3m+Y8EOuCU9E5zq/Kw==','sent');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` text,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`email`,`gender`,`address`,`mobile`) values ('sk','123','shivakrish573@gmail.com','MALE','hyd','9099990909');
insert  into `user`(`username`,`password`,`email`,`gender`,`address`,`mobile`) values ('shan','shan','shan@gmail.com','MALE','hyd','8989898989');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
