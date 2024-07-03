/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - rohith
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `rohith`;

USE `rohith`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `AdminID` varchar(20) NOT NULL,
  `Password` varchar(20) default NULL,
  PRIMARY KEY  (`AdminID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`AdminID`,`Password`) values ('Admin1','Admin@123');

/*Table structure for table `cl` */

DROP TABLE IF EXISTS `cl`;

CREATE TABLE `cl` (
  `ID` int(10) NOT NULL auto_increment,
  `Faculty_ID` varchar(20) default NULL,
  `Name` varchar(20) default NULL,
  `Designation` varchar(20) default NULL,
  `Department` varchar(20) default NULL,
  `No_of_Days` varchar(20) default NULL,
  `FromDate` varchar(20) default NULL,
  `To` varchar(20) default NULL,
  `Reason` varchar(100) default NULL,
  `Alternate_Arrangements` varchar(50) default NULL,
  `Date` varchar(20) default NULL,
  `status` varchar(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `cl` */

insert  into `cl`(`ID`,`Faculty_ID`,`Name`,`Designation`,`Department`,`No_of_Days`,`FromDate`,`To`,`Reason`,`Alternate_Arrangements`,`Date`,`status`) values (4,'20C41A0101','srinivas','HOD','CSM','1','2024-04-17','2024-04-18','vacation','sagar','2024-04-16','Approve '),(6,'20C41A0584','Chidurala Rohith','Teaching','CSE','01','2024-04-15','2024-04-16','Virul fiver','nagaraju','2024-04-15','Approve'),(10,'20C41A0101','srinivas','HOD','CSM','1','2024-04-17','2024-04-18','vacation','sagar','2024-04-16','Approve '),(11,'20C41A0584','rohith','Teaching','CSE','01','2024-04-24','2024-04-25','marriage','Rohith','2024-04-23','Approve'),(19,'20C41A0101','srinivas','HOD','ECE','2','2024-05-10','2024-05-12','wedding','maths , physics','2024-05-10','Approve '),(20,'101','saikrishna','Teaching','CSE','1','2024-05-10','2024-05-10','wedding','maths , physics','2024-05-10','Approve');

/*Table structure for table `faculty` */

DROP TABLE IF EXISTS `faculty`;

CREATE TABLE `faculty` (
  `ID` int(20) NOT NULL auto_increment,
  `Designation` varchar(20) default NULL,
  `Department` varchar(20) default NULL,
  `Name` varchar(30) default NULL,
  `Faculty_ID` varchar(20) default NULL,
  `Email_ID` varchar(50) default NULL,
  `Password` varchar(50) default NULL,
  `Conform-Password` varchar(50) default NULL,
  `Gender` varchar(20) default NULL,
  `DOB` varchar(20) default NULL,
  `casual` int(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `faculty` */

insert  into `faculty`(`ID`,`Designation`,`Department`,`Name`,`Faculty_ID`,`Email_ID`,`Password`,`Conform-Password`,`Gender`,`DOB`,`casual`) values (1,'Teaching','CSE','Chidurala Rohith','20C41A0584','chiduralarohith2@gmail.com','Vinith@123','Vinith@123','male','2002-02-14',NULL),(4,'HOD','CSE','Srinivas','20C41A0101','srinivasrao12@gmail.com','Srinivas@123','Srinivas@123','male','1990-01-01',NULL),(5,'Principal','CSE','S Janaki','20C41A0100','janaki12@gmail.com','Janaki@123','Janaki@123','female','1991-02-02',NULL),(6,'Teaching','CSE','Lokesh','20C41A0569','lokeshnarige569@gmail.com','Lokesh@123','Lokesh@123','male','2001-05-04',NULL),(7,'Teaching','CSE','sandeep','12345','sandeep@gmail.com','sandeep','sandeep','male','2007-05-29',2),(8,'Teaching','CSE','Shivamaruthi','20C41A0513','chiduralarohith2@gmail.com','123456','123456','male','2001-04-17',2),(9,'Teaching','ECE','msk m','101','msk@gmail.com','msk','msk','male','1999-05-05',2);

/*Table structure for table `leaves` */

DROP TABLE IF EXISTS `leaves`;

CREATE TABLE `leaves` (
  `ID` int(10) NOT NULL auto_increment,
  `leavetype` varchar(20) default NULL,
  `count` int(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `leaves` */

insert  into `leaves`(`ID`,`leavetype`,`count`) values (1,'casual',2);

/*Table structure for table `onduty` */

DROP TABLE IF EXISTS `onduty`;

CREATE TABLE `onduty` (
  `ID` int(10) NOT NULL auto_increment,
  `Faculty_ID` varchar(20) default NULL,
  `Name` varchar(20) default NULL,
  `Designation` varchar(20) default NULL,
  `Department` varchar(20) default NULL,
  `No_of_Days` varchar(20) default NULL,
  `From` varchar(20) default NULL,
  `To` varchar(20) default NULL,
  `Reason` varchar(100) default NULL,
  `Alternate_arrangements` varchar(50) default NULL,
  `Date` varchar(20) default NULL,
  `status` varchar(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `onduty` */

insert  into `onduty`(`ID`,`Faculty_ID`,`Name`,`Designation`,`Department`,`No_of_Days`,`From`,`To`,`Reason`,`Alternate_arrangements`,`Date`,`status`) values (4,'101','saikrishna','Teaching','CSD','13','2024-05-11','2024-05-24','teaching','srujan','2024-05-10','Approve '),(5,'20C41A0101','srinivas','HOD','EEE','15','2024-05-11','2024-05-26','teaching','srujan','2024-05-10','Approve '),(6,'20C41A0101','srinivas','HOD','CSE','12','2024-05-18','2024-05-30','teaching','ravi','2024-05-10','pending');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
