/*
SQLyog Community v12.4.1 (64 bit)
MySQL - 10.1.13-MariaDB : Database - hr_management_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hr_management_system` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hr_management_system`;

/*Table structure for table `applicants` */

DROP TABLE IF EXISTS `applicants`;

CREATE TABLE `applicants` (
  `applicant_id` int(11) NOT NULL,
  `vacancy_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `contact_no` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `email_id` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `qualification` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `salary_expectation` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `experience` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `comments` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`applicant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `applicants` */

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `attendance` */

/*Table structure for table `designations` */

DROP TABLE IF EXISTS `designations`;

CREATE TABLE `designations` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`designation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `designations` */

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `first_name` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `address` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `contact_number` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `username` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `basic_pay` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `create_date` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `employees` */

/*Table structure for table `interview_schedules` */

DROP TABLE IF EXISTS `interview_schedules`;

CREATE TABLE `interview_schedules` (
  `interview_id` int(11) NOT NULL,
  `selection_round` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `vacancy_id` datetime DEFAULT NULL,
  `interview_date_time` int(11) DEFAULT NULL,
  `venue` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `contact_no` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`interview_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `interview_schedules` */

/*Table structure for table `leave_requests` */

DROP TABLE IF EXISTS `leave_requests`;

CREATE TABLE `leave_requests` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `leave_from` datetime DEFAULT NULL,
  `leave_to` datetime DEFAULT NULL,
  `reason` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `leave_requests` */

/*Table structure for table `project_allocations` */

DROP TABLE IF EXISTS `project_allocations`;

CREATE TABLE `project_allocations` (
  `proj_allocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `comment` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`proj_allocation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `project_allocations` */

/*Table structure for table `projects` */

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_title` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `projects` */

/*Table structure for table `vacancies` */

DROP TABLE IF EXISTS `vacancies`;

CREATE TABLE `vacancies` (
  `vacancy_id` int(11) NOT NULL,
  `title` text CHARACTER SET latin1,
  `designation_id` int(11) DEFAULT NULL,
  `description` text CHARACTER SET latin1,
  `qualification` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `experience` float DEFAULT NULL,
  `age` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `last_application_date` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`vacancy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `vacancies` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
