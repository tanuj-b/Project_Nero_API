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
  `account_id` int(11) NOT NULL,
  `facebook_id` bigint(20) DEFAULT NULL,
  `linkedon` datetime DEFAULT NULL,
  `bio` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pictures` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quotes` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `account_fb` */

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `ascore_l1` varchar(200) DEFAULT NULL COMMENT 'separated by ||',
  `ascore_l2` varchar(200) DEFAULT NULL COMMENT 'separated by ||',
  `createdon` datetime DEFAULT NULL,
  `verifiedon` datetime DEFAULT NULL,
  `lastsignedinon` datetime DEFAULT NULL,
  `deletedon` datetime DEFAULT NULL,
  `suspendedon` datetime DEFAULT NULL,
  `resetsenton` datetime DEFAULT NULL,
  `picture` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii;

/*Data for the table `accounts` */

insert  into `accounts`(`id`,`username`,`password`,`firstname`,`lastname`,`email`,`ascore_l1`,`ascore_l2`,`createdon`,`verifiedon`,`lastsignedinon`,`deletedon`,`suspendedon`,`resetsenton`,`picture`) values (1,'ssachan',NULL,'shikhar','sachan','shikhar.sachan@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'raghav',NULL,'raghav','verma','email@mskd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `ascored_l2` */

DROP TABLE IF EXISTS `ascored_l2`;

CREATE TABLE `ascored_l2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `l2_id` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ascored_l2` */

/*Table structure for table `ascores_l1` */

DROP TABLE IF EXISTS `ascores_l1`;

CREATE TABLE `ascores_l1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `l1_id` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ascores_l1` */

/*Table structure for table `i` */

DROP TABLE IF EXISTS `i`;

CREATE TABLE `i` (
  `account_id` int(11) DEFAULT NULL,
  `google_id` int(25) DEFAULT NULL,
  `family_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `given_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_email` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `i` */

/*Table structure for table `question_list` */

DROP TABLE IF EXISTS `question_list`;

CREATE TABLE `question_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paragraph` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_count` int(2) DEFAULT NULL,
  `question_id_list` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'question ids separated by ||',
  `difficulty` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `question_list` */

insert  into `question_list`(`id`,`paragraph`,`question_count`,`question_id_list`,`difficulty`) values (1,'iuhiufsihcihsihciuhi',1,'1',NULL),(2,'cccc',1,'2',NULL),(3,'iuhiufsihcihsihciuhi',1,'3',NULL),(4,'cccc',1,'4',NULL);

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
  `question` varchar(5000) DEFAULT NULL,
  `options` varchar(5000) DEFAULT NULL COMMENT 'options separated by ''||''',
  `answer` int(1) DEFAULT NULL,
  `comments` varchar(5000) DEFAULT NULL COMMENT 'information on options separated by ''||''',
  `l3_id` int(11) DEFAULT NULL,
  `difficulty` int(1) DEFAULT NULL,
  `average_time` timestamp NULL DEFAULT NULL,
  `question_type_id` int(11) DEFAULT NULL,
  `question_list_id` int(11) DEFAULT NULL,
  `flag` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `question_list_id` (`question_list_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`question_list_id`) REFERENCES `question_list` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=ascii;

/*Data for the table `questions` */

insert  into `questions`(`id`,`question`,`options`,`answer`,`comments`,`l3_id`,`difficulty`,`average_time`,`question_type_id`,`question_list_id`,`flag`) values (1,'aaaa','a|:b|:c|:d',0,NULL,NULL,NULL,NULL,NULL,1,1),(2,'bbbb','a|:b',0,NULL,NULL,NULL,NULL,NULL,1,1),(3,'ccc','e|:f',1,NULL,NULL,NULL,NULL,NULL,2,1),(4,'ddd','e|:f',1,NULL,NULL,NULL,NULL,NULL,2,1),(5,'eeee','e|:f',1,NULL,NULL,NULL,NULL,NULL,2,1),(6,'fff','e|:f',1,NULL,NULL,NULL,NULL,NULL,2,1),(7,'ggg','e|:f',1,NULL,NULL,NULL,NULL,NULL,2,1),(8,'ccc','e|:f',1,NULL,NULL,NULL,NULL,NULL,2,1),(9,'ccc','e|:f',1,NULL,NULL,NULL,NULL,NULL,2,1),(10,'ccc','e|:f',1,NULL,NULL,NULL,NULL,NULL,2,1),(11,'ccc','e|:f',1,NULL,NULL,NULL,NULL,NULL,2,1);

/*Table structure for table `quizzes` */

DROP TABLE IF EXISTS `quizzes`;

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_list_ids` varchar(100) DEFAULT NULL COMMENT 'string of question_list_ids separated by ||',
  `l1_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=ascii;

/*Data for the table `quizzes` */

insert  into `quizzes`(`id`,`question_list_ids`,`l1_id`) values (1,'1|:2|:3|:4',NULL),(2,'4|:3|:2|:1',NULL),(3,'1|:2',NULL),(4,'1|:2',NULL),(5,'1|:2',NULL),(6,'1|:2',NULL);

/*Table structure for table `results` */

DROP TABLE IF EXISTS `results`;

CREATE TABLE `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `options_selected` varchar(500) DEFAULT NULL COMMENT 'options number separated by "||"',
  `time_per_question` varchar(500) DEFAULT NULL COMMENT 'time taken per question separated by "||"',
  `sent_time` timestamp NULL DEFAULT NULL,
  `sync_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `results_ibfk_1` (`quiz_id`),
  CONSTRAINT `results_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`),
  CONSTRAINT `results_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii;

/*Data for the table `results` */

insert  into `results`(`id`,`account_id`,`quiz_id`,`options_selected`,`time_per_question`,`sent_time`,`sync_time`) values (1,1,1,'2|3','23:30|12|',NULL,NULL),(2,1,2,'2|3|4|','23:40|21|',NULL,NULL);

/*Table structure for table `results_desc` */

DROP TABLE IF EXISTS `results_desc`;

CREATE TABLE `results_desc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option` int(1) DEFAULT NULL,
  `time_taken` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `results_desc_ibfk_1` (`quiz_id`),
  KEY `results_desc_ibfk_3` (`question_id`),
  KEY `results_desc_ibfk_2` (`account_id`),
  CONSTRAINT `results_desc_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `results_desc_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `results_desc_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `results_desc` */

/*Table structure for table `section_l1` */

DROP TABLE IF EXISTS `section_l1`;

CREATE TABLE `section_l1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `section_l1` */

insert  into `section_l1`(`id`,`name`) values (1,'DI'),(2,'VA'),(3,'LR'),(4,'QA');

/*Table structure for table `section_l2` */

DROP TABLE IF EXISTS `section_l2`;

CREATE TABLE `section_l2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l1_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l1_id` (`l1_id`),
  CONSTRAINT `section_l2_ibfk_1` FOREIGN KEY (`l1_id`) REFERENCES `section_l1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `section_l2` */

insert  into `section_l2`(`id`,`name`,`l1_id`) values (1,'Data Sufficiency',1),(2,'Geo',3),(3,'Ratio',3);

/*Table structure for table `section_l3` */

DROP TABLE IF EXISTS `section_l3`;

CREATE TABLE `section_l3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l2_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l2_id` (`l2_id`),
  CONSTRAINT `section_l3_ibfk_1` FOREIGN KEY (`l2_id`) REFERENCES `section_l3` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `section_l3` */

insert  into `section_l3`(`id`,`name`,`l2_id`) values (1,'Ratio',3),(2,'Area',2),(3,'Volume',2);

/*Table structure for table `word_options` */

DROP TABLE IF EXISTS `word_options`;

CREATE TABLE `word_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `word_options` */

insert  into `word_options`(`id`,`option`) values (1,'option 1'),(2,'option 2'),(3,'option 3'),(4,'option 4');

/*Table structure for table `word_type` */

DROP TABLE IF EXISTS `word_type`;

CREATE TABLE `word_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `word_type` */

insert  into `word_type`(`id`,`type`) values (1,'Noun'),(2,'Verb'),(3,'Adjective');

/*Table structure for table `word_usage` */

DROP TABLE IF EXISTS `word_usage`;

CREATE TABLE `word_usage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `example` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `word_usage` */

/*Table structure for table `words` */

DROP TABLE IF EXISTS `words`;

CREATE TABLE `words` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meaning` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `word_type` int(11) DEFAULT NULL,
  `pronunciation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `words` */

insert  into `words`(`id`,`word`,`meaning`,`description`,`word_type`,`pronunciation`,`options`,`answer`) values (1,'Atrocious','Horrifyingly wicked','Of a very poor quality; extremely bad or unpleasant: \"atrocious weather\".',1,'(null)','1|:2|:3',1),(2,'Test2','bad bad','blah bleh',1,NULL,'3|:2|:1',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
