/*
SQLyog Community v10.0 Beta2
MySQL - 5.5.25a : Database - edu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`edu` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `edu`;

/*Table structure for table `account_fb` */

DROP TABLE IF EXISTS `account_fb`;

CREATE TABLE `account_fb` (
  `accountId` int(11) NOT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `linkedOn` datetime DEFAULT NULL,
  `bio` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pictures` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quotes` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`accountId`),
  CONSTRAINT `account_fb_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `account_fb` */

/*Table structure for table `account_google` */

DROP TABLE IF EXISTS `account_google`;

CREATE TABLE `account_google` (
  `accountId` int(11) DEFAULT NULL,
  `googleId` int(25) DEFAULT NULL,
  `familyName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `givenName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verifiedEmail` int(1) DEFAULT NULL,
  `linkedOn` timestamp NULL DEFAULT NULL,
  KEY `accountId` (`accountId`),
  CONSTRAINT `account_google_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `account_google` */

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `ascoreL1` varchar(200) DEFAULT NULL COMMENT 'separated by ||',
  `ascoreL2` varchar(200) DEFAULT NULL COMMENT 'separated by ||',
  `createdOn` datetime DEFAULT NULL,
  `verifiedOn` datetime DEFAULT NULL,
  `lastsignedinOn` datetime DEFAULT NULL,
  `deletedOn` datetime DEFAULT NULL,
  `suspendedOn` datetime DEFAULT NULL,
  `resetsentOn` datetime DEFAULT NULL,
  `picture` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii;

/*Data for the table `accounts` */

insert  into `accounts`(`id`,`username`,`password`,`firstName`,`lastName`,`email`,`ascoreL1`,`ascoreL2`,`createdOn`,`verifiedOn`,`lastsignedinOn`,`deletedOn`,`suspendedOn`,`resetsentOn`,`picture`) values (1,'ssachan',NULL,'shikhar','sachan','shikhar.sachan@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'raghav',NULL,'raghav','verma','email@mskd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `ascored_l2` */

DROP TABLE IF EXISTS `ascored_l2`;

CREATE TABLE `ascored_l2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) DEFAULT NULL,
  `l2Id` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ascored_l2` */

/*Table structure for table `ascores_l1` */

DROP TABLE IF EXISTS `ascores_l1`;

CREATE TABLE `ascores_l1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) DEFAULT NULL,
  `l1Id` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ascores_l1` */

/*Table structure for table `devices` */

DROP TABLE IF EXISTS `devices`;

CREATE TABLE `devices` (
  `accountId` int(11) DEFAULT NULL,
  `deviceId` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceName` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicePlatform` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceVersion` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastLogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `devices` */

/*Table structure for table `falsh_cards` */

DROP TABLE IF EXISTS `falsh_cards`;

CREATE TABLE `falsh_cards` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meaning` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pronunciation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correctOption` int(1) DEFAULT NULL,
  `usage` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l3Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l3Id` (`l3Id`),
  CONSTRAINT `falsh_cards_ibfk_1` FOREIGN KEY (`l3Id`) REFERENCES `section_l3` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `falsh_cards` */

insert  into `falsh_cards`(`id`,`word`,`meaning`,`description`,`pronunciation`,`options`,`correctOption`,`usage`,`l3Id`) values (1,'Atrocious','Horrifyingly wicked','Of a very poor quality; extremely bad or unpleasant: \"atrocious weather\".','(null)','1|:2|:3',1,NULL,NULL),(2,'Test2','bad bad','blah bleh',NULL,'3|:2|:1',1,NULL,NULL);

/*Table structure for table `flash_cards_list` */

DROP TABLE IF EXISTS `flash_cards_list`;

CREATE TABLE `flash_cards_list` (
  `id` int(11) DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wordIds` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l2Id` int(11) DEFAULT NULL,
  KEY `l2Id` (`l2Id`),
  CONSTRAINT `flash_cards_list_ibfk_1` FOREIGN KEY (`l2Id`) REFERENCES `section_l2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `flash_cards_list` */

/*Table structure for table `practice_sets` */

DROP TABLE IF EXISTS `practice_sets`;

CREATE TABLE `practice_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionSetIds` int(11) DEFAULT NULL,
  `l2Id` int(11) DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL,
  `currentFlag` int(1) DEFAULT NULL,
  `mobileFlag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questionSetIds` (`questionSetIds`),
  KEY `accountId` (`accountId`),
  KEY `l2Id` (`l2Id`),
  CONSTRAINT `practice_sets_ibfk_1` FOREIGN KEY (`questionSetIds`) REFERENCES `question_sets` (`id`),
  CONSTRAINT `practice_sets_ibfk_2` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`),
  CONSTRAINT `practice_sets_ibfk_3` FOREIGN KEY (`l2Id`) REFERENCES `section_l2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `practice_sets` */

/*Table structure for table `question_sets` */

DROP TABLE IF EXISTS `question_sets`;

CREATE TABLE `question_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paragraph` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `questionIds` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'question ids separated by ||',
  `questionCount` int(2) DEFAULT NULL,
  `resourceIds` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l3Id` int(11) DEFAULT NULL,
  `difficulty` int(1) DEFAULT NULL,
  `mobileFlag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `question_sets` */

insert  into `question_sets`(`id`,`paragraph`,`questionIds`,`questionCount`,`resourceIds`,`l3Id`,`difficulty`,`mobileFlag`) values (1,'iuhiufsihcihsihciuhi','1',1,NULL,NULL,NULL,NULL),(2,'cccc','2',1,NULL,NULL,NULL,NULL),(3,'iuhiufsihcihsihciuhi','3',1,NULL,NULL,NULL,NULL),(4,'cccc','4',1,NULL,NULL,NULL,NULL);

/*Table structure for table `question_tags` */

DROP TABLE IF EXISTS `question_tags`;

CREATE TABLE `question_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `question_tags` */

insert  into `question_tags`(`id`,`name`) values (1,'lengthy'),(2,'calculations');

/*Table structure for table `question_type` */

DROP TABLE IF EXISTS `question_type`;

CREATE TABLE `question_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `question_type` */

insert  into `question_type`(`id`,`type`) values (1,'normal'),(2,'paragraph');

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionText` varchar(5000) DEFAULT NULL,
  `options` varchar(5000) DEFAULT NULL COMMENT 'options separated by ''||''',
  `correctOption` int(1) DEFAULT NULL,
  `explanation` varchar(5000) DEFAULT NULL COMMENT 'information on options separated by ''||''',
  `l3Id` int(11) DEFAULT NULL,
  `difficulty` int(1) DEFAULT NULL,
  `questionTypeId` int(11) DEFAULT NULL,
  `questionSetId` int(11) DEFAULT NULL,
  `averageTimeCorrect` timestamp NULL DEFAULT NULL,
  `mobileFlag` int(1) DEFAULT '1',
  `availableFlag` int(1) DEFAULT NULL,
  `averageTimeIncorrect` timestamp NULL DEFAULT NULL,
  `averageTimeUnattempted` timestamp NULL DEFAULT NULL,
  `resourcesIds` varchar(30) DEFAULT NULL,
  `tagIds` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_list_id` (`questionSetId`),
  KEY `questionTypeId` (`questionTypeId`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`questionTypeId`) REFERENCES `question_type` (`id`),
  CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`questionSetId`) REFERENCES `question_sets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=ascii;

/*Data for the table `questions` */

insert  into `questions`(`id`,`questionText`,`options`,`correctOption`,`explanation`,`l3Id`,`difficulty`,`questionTypeId`,`questionSetId`,`averageTimeCorrect`,`mobileFlag`,`availableFlag`,`averageTimeIncorrect`,`averageTimeUnattempted`,`resourcesIds`,`tagIds`) values (1,'aaaa','a|:b|:c|:d',0,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL),(2,'bbbb','a|:b',0,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL),(3,'ccc','e|:f',1,NULL,NULL,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,NULL),(4,'ddd','e|:f',1,NULL,NULL,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,NULL),(5,'eeee','e|:f',1,NULL,NULL,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,NULL),(6,'fff','e|:f',1,NULL,NULL,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,NULL),(7,'ggg','e|:f',1,NULL,NULL,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,NULL),(8,'ccc','e|:f',1,NULL,NULL,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,NULL),(9,'ccc','e|:f',1,NULL,NULL,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,NULL),(10,'ccc','e|:f',1,NULL,NULL,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,NULL),(11,'ccc','e|:f',1,NULL,NULL,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `quizzes` */

DROP TABLE IF EXISTS `quizzes`;

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionSetIds` varchar(100) DEFAULT NULL COMMENT 'string of question_list_ids separated by ||',
  `l1Id` int(11) DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL,
  `currentFlag` int(1) DEFAULT NULL,
  `mobileFlag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=ascii;

/*Data for the table `quizzes` */

insert  into `quizzes`(`id`,`questionSetIds`,`l1Id`,`accountId`,`currentFlag`,`mobileFlag`) values (1,'1|:2|:3|:4',NULL,NULL,NULL,NULL),(2,'4|:3|:2|:1',NULL,NULL,NULL,NULL),(3,'1|:2',NULL,NULL,NULL,NULL),(4,'1|:2',NULL,NULL,NULL,NULL),(5,'1|:2',NULL,NULL,NULL,NULL),(6,'1|:2',NULL,NULL,NULL,NULL);

/*Table structure for table `resources` */

DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `resources` */

/*Table structure for table `responses` */

DROP TABLE IF EXISTS `responses`;

CREATE TABLE `responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) DEFAULT NULL,
  `questionId` int(11) DEFAULT NULL,
  `optionSelected` int(1) DEFAULT NULL COMMENT 'options number separated by "||"',
  `time` varchar(500) DEFAULT NULL COMMENT 'time taken per question separated by "||"',
  `timeScore` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `l1Id` int(11) DEFAULT NULL,
  `l2Id` int(11) DEFAULT NULL,
  `l3Id` int(11) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`accountId`),
  CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii;

/*Data for the table `responses` */

insert  into `responses`(`id`,`accountId`,`questionId`,`optionSelected`,`time`,`timeScore`,`status`,`l1Id`,`l2Id`,`l3Id`,`difficulty`,`timestamp`) values (1,1,NULL,2,'23:30|12|',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,NULL,2,'23:40|21|',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `section_l1` */

DROP TABLE IF EXISTS `section_l1`;

CREATE TABLE `section_l1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shortName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `section_l1` */

insert  into `section_l1`(`id`,`shortName`,`longName`) values (1,'DI',NULL),(2,'VA',NULL),(3,'LR',NULL),(4,'QA',NULL);

/*Table structure for table `section_l2` */

DROP TABLE IF EXISTS `section_l2`;

CREATE TABLE `section_l2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shortName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l1_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l1_id` (`l1_id`),
  CONSTRAINT `section_l2_ibfk_1` FOREIGN KEY (`l1_id`) REFERENCES `section_l1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `section_l2` */

insert  into `section_l2`(`id`,`shortName`,`longName`,`l1_id`) values (1,'Data Sufficiency',NULL,1),(2,'Geo',NULL,3),(3,'Ratio',NULL,3);

/*Table structure for table `section_l3` */

DROP TABLE IF EXISTS `section_l3`;

CREATE TABLE `section_l3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l2_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l2_id` (`l2_id`),
  CONSTRAINT `section_l3_ibfk_1` FOREIGN KEY (`l2_id`) REFERENCES `section_l3` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `section_l3` */

insert  into `section_l3`(`id`,`name`,`longName`,`l2_id`) values (1,'Ratio',NULL,3),(2,'Area',NULL,2),(3,'Volume',NULL,2);

/*Table structure for table `user_bookmarks` */

DROP TABLE IF EXISTS `user_bookmarks`;

CREATE TABLE `user_bookmarks` (
  `id` int(11) DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL,
  `typeOfObject` int(11) DEFAULT NULL,
  `objectId` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user_bookmarks` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
