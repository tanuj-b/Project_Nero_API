# Sequel Pro dump
# Version 1630
# http://code.google.com/p/sequel-pro
#
# Host: localhost (MySQL 5.5.9)
# Database: edu
# Generation Time: 2012-10-09 04:43:51 +0530
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table account_fb
# ------------------------------------------------------------

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



# Dump of table account_google
# ------------------------------------------------------------

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



# Dump of table accounts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `ascoreL1` varchar(200) DEFAULT NULL COMMENT 'separated by ||',
  `ascoreL2` varchar(200) DEFAULT NULL COMMENT 'separated by ||',
  `createdOn` datetime DEFAULT NULL,
  `verifiedOn` datetime DEFAULT NULL,
  `lastsignedinOn` datetime DEFAULT NULL,
  `deletedOn` datetime DEFAULT NULL,
  `suspendedOn` datetime DEFAULT NULL,
  `resetsentOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii;

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`,`username`,`password`,`firstName`,`lastName`,`email`,`ascoreL1`,`ascoreL2`,`createdOn`,`verifiedOn`,`lastsignedinOn`,`deletedOn`,`suspendedOn`,`resetsentOn`)
VALUES
	(1,'ssachan',NULL,'shikhar','sachan','shikhar.sachan@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'raghav',NULL,'raghav','verma','email@mskd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ascored_l2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ascored_l2`;

CREATE TABLE `ascored_l2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) DEFAULT NULL,
  `l2Id` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ascores_l1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ascores_l1`;

CREATE TABLE `ascores_l1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) DEFAULT NULL,
  `l1Id` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table devices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `devices`;

CREATE TABLE `devices` (
  `accountId` int(11) DEFAULT NULL,
  `deviceId` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceName` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicePlatform` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceVersion` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastLogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table flash_cards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `flash_cards`;

CREATE TABLE `flash_cards` (
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
  CONSTRAINT `flash_cards_ibfk_1` FOREIGN KEY (`l3Id`) REFERENCES `section_l3` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `flash_cards` WRITE;
/*!40000 ALTER TABLE `flash_cards` DISABLE KEYS */;
INSERT INTO `flash_cards` (`id`,`word`,`meaning`,`description`,`pronunciation`,`options`,`correctOption`,`usage`,`l3Id`)
VALUES
	(1,'Atrocious','Horrifyingly wicked','Of a very poor quality; extremely bad or unpleasant: \"atrocious weather\".','Aa-tro-cius','1|:2|:3',0,'Tanujs coding is atrocius',NULL),
	(2,'T-Rex','bad ass dinosaur','Very big, large, awesome dino','tee-ray-ex','3|:2|:1',1,'T-Rexs are awesome.',NULL),
	(3,'Test2','bad bad','blah bleh',NULL,'3|:2|:1',1,NULL,NULL),
	(4,'Test2','bad bad','blah bleh',NULL,'3|:2|:1',1,NULL,NULL),
	(5,'Test2','bad bad','blah bleh',NULL,'3|:2|:1',1,NULL,NULL),
	(6,'Test2','bad bad','blah bleh',NULL,'3|:2|:1',1,NULL,NULL),
	(7,'Test2','bad bad','blah bleh',NULL,'3|:2|:1',1,NULL,NULL),
	(8,'Test2','bad bad','blah bleh',NULL,'3|:2|:1',1,NULL,NULL),
	(9,'Test2','bad bad','blah bleh',NULL,'3|:2|:1',1,NULL,NULL);

/*!40000 ALTER TABLE `flash_cards` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table flash_cards_list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `flash_cards_list`;

CREATE TABLE `flash_cards_list` (
  `id` int(11) DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wordCount` int(3) DEFAULT NULL,
  `wordIds` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l2Id` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `l2Id` (`l2Id`),
  CONSTRAINT `flash_cards_list_ibfk_1` FOREIGN KEY (`l2Id`) REFERENCES `section_l2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `flash_cards_list` WRITE;
/*!40000 ALTER TABLE `flash_cards_list` DISABLE KEYS */;
INSERT INTO `flash_cards_list` (`id`,`description`,`wordCount`,`wordIds`,`l2Id`,`title`)
VALUES
	(1,'List of awesome things',4,'1|:2|:3|:4',1,'Awesome things'),
	(2,'List of not so awesome things',4,'2|:3|:4|:1',2,'Not awesome things');

/*!40000 ALTER TABLE `flash_cards_list` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table practice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `practice`;

CREATE TABLE `practice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionSetIds` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l2Id` int(11) DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL,
  `currentFlag` int(1) DEFAULT NULL,
  `mobileFlag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questionSetIds` (`questionSetIds`),
  KEY `accountId` (`accountId`),
  KEY `l2Id` (`l2Id`),
  CONSTRAINT `practice_ibfk_2` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`),
  CONSTRAINT `practice_ibfk_3` FOREIGN KEY (`l2Id`) REFERENCES `section_l2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `practice` WRITE;
/*!40000 ALTER TABLE `practice` DISABLE KEYS */;
INSERT INTO `practice` (`id`,`questionSetIds`,`l2Id`,`accountId`,`currentFlag`,`mobileFlag`)
VALUES
	(1,'28|:29|:30',1,NULL,NULL,NULL);

/*!40000 ALTER TABLE `practice` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table question_sets
# ------------------------------------------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `question_sets` WRITE;
/*!40000 ALTER TABLE `question_sets` DISABLE KEYS */;
INSERT INTO `question_sets` (`id`,`paragraph`,`questionIds`,`questionCount`,`resourceIds`,`l3Id`,`difficulty`,`mobileFlag`)
VALUES
	(1,NULL,'1',1,NULL,NULL,NULL,NULL),
	(2,NULL,'2',1,NULL,NULL,NULL,NULL),
	(3,NULL,'3',1,NULL,NULL,NULL,NULL),
	(4,NULL,'4',1,NULL,NULL,NULL,NULL),
	(5,NULL,'5',1,NULL,NULL,NULL,NULL),
	(6,NULL,'6',1,NULL,NULL,NULL,NULL),
	(7,NULL,'7',1,NULL,NULL,NULL,NULL),
	(8,NULL,'8',1,NULL,NULL,NULL,NULL),
	(9,NULL,'9',1,NULL,NULL,NULL,NULL),
	(10,NULL,'10',1,NULL,NULL,NULL,NULL),
	(11,NULL,'11',1,NULL,NULL,NULL,NULL),
	(12,NULL,'12',1,NULL,NULL,NULL,NULL),
	(13,NULL,'13',1,NULL,NULL,NULL,NULL),
	(14,NULL,'14',1,NULL,NULL,NULL,NULL),
	(15,NULL,'15',1,NULL,NULL,NULL,NULL),
	(16,NULL,'16',1,NULL,NULL,NULL,NULL),
	(17,NULL,'17',1,NULL,NULL,NULL,NULL),
	(18,NULL,'18',1,NULL,NULL,NULL,NULL),
	(19,NULL,'19',1,NULL,NULL,NULL,NULL),
	(20,NULL,'20',1,NULL,NULL,NULL,NULL),
	(21,NULL,'21',1,NULL,NULL,NULL,NULL),
	(22,NULL,'22',1,NULL,NULL,NULL,NULL),
	(23,NULL,'23',1,NULL,NULL,NULL,NULL),
	(24,NULL,'24',1,NULL,NULL,NULL,NULL),
	(25,NULL,'25',1,NULL,NULL,NULL,NULL),
	(26,NULL,'26',1,NULL,NULL,NULL,NULL),
	(27,NULL,'27',1,NULL,NULL,NULL,NULL),
	(28,NULL,'28',1,NULL,NULL,NULL,NULL),
	(29,NULL,'29',1,NULL,NULL,NULL,NULL),
	(30,NULL,'30',1,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `question_sets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table question_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `question_tags`;

CREATE TABLE `question_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `question_tags` WRITE;
/*!40000 ALTER TABLE `question_tags` DISABLE KEYS */;
INSERT INTO `question_tags` (`id`,`name`)
VALUES
	(1,'lengthy'),
	(2,'calculations');

/*!40000 ALTER TABLE `question_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table question_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `question_type`;

CREATE TABLE `question_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `question_type` WRITE;
/*!40000 ALTER TABLE `question_type` DISABLE KEYS */;
INSERT INTO `question_type` (`id`,`type`)
VALUES
	(1,'normal'),
	(2,'paragraph');

/*!40000 ALTER TABLE `question_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionText` text,
  `options` varchar(5000) DEFAULT NULL COMMENT 'options separated by ''||''',
  `correctOption` int(1) DEFAULT NULL,
  `explanation` varchar(5000) DEFAULT NULL COMMENT 'information on options separated by ''||''',
  `l3Id` int(11) DEFAULT NULL,
  `difficulty` int(1) DEFAULT NULL,
  `questionSetId` int(11) DEFAULT NULL,
  `averageTimeCorrect` timestamp NULL DEFAULT NULL,
  `mobileFlag` int(1) DEFAULT '1',
  `availableFlag` int(1) DEFAULT NULL,
  `averageTimeIncorrect` timestamp NULL DEFAULT NULL,
  `averageTimeUnattempted` timestamp NULL DEFAULT NULL,
  `resourcesIds` varchar(30) DEFAULT NULL,
  `tagIds` varchar(30) DEFAULT NULL,
  `allotedTime` timestamp NULL DEFAULT NULL,
  `qscoreCorrect` int(2) DEFAULT NULL,
  `qscoreIncorrect` int(2) DEFAULT NULL,
  `qscoreUnattempted` int(2) DEFAULT NULL,
  `qscore` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_list_id` (`questionSetId`),
  CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`questionSetId`) REFERENCES `question_sets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=ascii;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`id`,`questionText`,`options`,`correctOption`,`explanation`,`l3Id`,`difficulty`,`questionSetId`,`averageTimeCorrect`,`mobileFlag`,`availableFlag`,`averageTimeIncorrect`,`averageTimeUnattempted`,`resourcesIds`,`tagIds`,`allotedTime`,`qscoreCorrect`,`qscoreIncorrect`,`qscoreUnattempted`,`qscore`)
VALUES
	(1,'Out of 6 people in a group, find the number of ways of selecting 4 people in the group','12|:24|:30|:10|:15',4,'This is a simple application of Permutations. Selecting 4 out of 6 is equivalent to 6C4 which is <br> 6!/ (2! 4!) = 15',19,1,1,'0000-00-00 00:00:00',1,1,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL),
	(2,'Using 8 different english alphabets and 4 different numbers, 5 digit codes are generated. The code contains 3 alphabets and 2 numbers. If in the given code all the characters are distinct, how many such codes can be generated ','40320|:53760|:336|:448|:2240',0,'We start by looking at all the coices that can be generated by selecting 3 unique alphabets out of 8 and selecting 2 numbers out of 4. Hence we have 8C3 X 4C2. Having selected the 5 digits now we need to arrange them in all possible manners to have 5! combinations. Hence we have a total to 8C3X4C2X5! combinations, which is 40320. ',19,2,2,NULL,1,1,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL),
	(3,'In a foorball tournament each team plays alll the other teams twice, if there there were 90 matches, how many teams played in the tournament','9|:10|:20|:14|:18',1,'Since each team played two matches with all the opponent teams, the total matches played in the tournament should be nC2 X 2. <br> Hence nC2 = 45 => n(n-1)/2 = 45. Solving for n, we get n = 10',19,2,3,NULL,1,1,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL),
	(4,'Letters from the word ANDROID are used to create all possible words using all letters in the given word. How many such words would start with D','120|:480|:240|:720|:None of the above',3,'We fix letter D at the first position. Since no other word is repeating, we have the choice of arranging all 6 remaining alphabets in 6! Ways. Hence we have 720 such words',19,1,4,NULL,1,1,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL),
	(5,'Letters from the word ANDROID are used to create all possible words using all letters in the given word. How many such words would start with A and end in R','120|:240|:60|:480|:None of the above',1,'We fix letters A and R at the first and the last position. We have 5 positions to fill with 5 letters and hence 5! Combinations. Now since D is repeating we divide by 2! Hence we have 5!/2! = 60',19,2,5,NULL,1,1,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL),
	(6,'A committee of 7 has to be formed from 5 ladies and 6 gentlemen. How many such committees can be formed which consist of atleast 4 ladies','110|:100|:120|:115|:105',2,'The committee can either consist of 4 ladies and 3 gentlemen or 5 ladies and 2 gentlemen, hence: <br> 5C4 X 6C3 + 5C5 X 6C2 <br> =115',19,2,6,NULL,1,1,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL),
	(7,'Rajat answers questions at random from in a 12 question test in with each question having 4 options (and only 1 option correct). What is the probability that Rajat gets all questions wrong.','1/12|:1/6|:(1/4)^12|:3/4|:(3/4)^12',4,'The number of ways in whichh Rajat can answer the exam - 4^12 <br> For Rajat to get all answers wrong he needs to select one of 3 wrong options for all questions, hence he can answer in 3^12 ways. Therefore the probability of getting all answers wrong is 3^12/4^12',19,2,7,NULL,1,1,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL),
	(8,'If 2 cards are drawn from a well shuffled pack of cards, what is the probability that both of them are aces','1/15|:1/221|:1/13|:1/17|:1/195',1,'The probability that the first card is an ace - 4/52 <br> The prbability of 2nd card being ace given the first card is a n ace is -3/51. Hence the probability of both the events occuring is - 4/52 X 3/51 = 1/221',20,1,8,NULL,1,1,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL),
	(9,'If 4 fair coins are tossed, what is the probability of getting 2 heads ? ','3/5|:1/2|:2/5|:3/8|:1/4',3,'The probability of getting 2 heads in a set of 4 coins is when we have 2 heads and 2 tails. The occurance of the same is 4C2 = 4!/2! 2! = 3. <br> Total number of cases = 2^4. <br> Hence probability = 3/8',20,1,9,NULL,1,1,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL),
	(10,'When two cards are drawn randomly from a pack of cards, what is the probability that both of them are either Aces or both of them are Red in color','(26C2 + 4C2 - 1) / 52C2|:28C2 / 52C2|:26C2 / 52C2|:(26C2 + 4C2) / 52C2|:	None of the above',4,'Here the probability includes the following two events: both the cards can be Aces OR be Red in color. Hence the probability will be defined as - P(A) + P (R) - P(A U R) <br> P(A) = 4C2/52C2, P(R) = 26C2/52C2, P(A U R) = 2C2/52C2 . <br> Hence the probability is - (26C2 + 4C2 - 1) / 52C2',20,2,10,NULL,1,1,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL),
	(11,'If 2 fair coins are tossed together, what is the probability that both of them show the same face','1/2|:1/4|:3/8|:1/8|:None of the above',0,'The following cases can come up when 2 coins are tossed together - HH, HT, TH, TT. <br> The top faces are same for HH & TT, hence the probability of occurance is 1/2',20,1,11,NULL,1,1,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL),
	(12,'Ram has a box with 4 Red pens, 3 Blue pens and 3 Green pens. He draws two pens, one after the other. What is the probability that the second pen is Red. ','.33|:.40|:.60|:.44|:None of the above',1,'To evaluate the probability, we need to take 2 cases. <br> Case 1: When the first pen is also a Red pen and, <br> Case 2: When the first pen is not a Red pen. <br> For Case 1, since 1 red pen is already gone the probability will be 4/10 X 3/9, while for Case 2, the probability will be 6/10 X 4/9<br> Hence the total probability is - (4X3 + 6X4)/10X9 = .4',20,2,12,NULL,1,1,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL),
	(13,'Ram has a box with 4 Red pens, 3 Blue pens and 3 Green pens. He draws three pens, one after the other. What is the probability that the three pens are of the same color','2/9|:1/4|:1/8|:1/18|:None of the above',3,'For all pens to be of Red color the probability is - 4/10 X 3/9 X 2/8 <br> For all pens to be of Blue color the probability is - 3/10 X 2/9 X 1/8 <br> For all pens to be of Green color the probability is - 3/10 X 2/9 X 1/8 <br> Summng the above 3, the probability is - 1/18',20,2,13,NULL,1,1,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL),
	(14,'The average score of a class of 55 students came out to be 16 out of a maximum score of 25. If the teacher misread the scores 15, 17, 21 and 16 as 5, 1, 2, 6 what is the actual average of the class','51|:20|:24|:26|:None of the above',2,'The difference between the actual score and the score calculated by the teacher is: <br> (15-5) + (17-1) + (21-2) + (16-6)',1,1,14,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(15,'The average score of the class was calcuated by 2 different evaluators. The first evaluator came out with an average score of 17 she misread scores of 3 students - 4 as 14, 13 as 8 and 2 as 12. The second evaluator came out with an average score of 15 but also misread scores of 3 students - 18 as 13, 16 as 6 and 17 as 7. What is the number of students who gave the exam','18|:20|:12|:16|:Not enough information',1,'The difference between average scores, as calculated by the 2 evaluators is 2. <br> The difference between the total scores for these evaluators will be - 2 X Total number of students. <br> For evaluator 1, the score calcuated is (14-4) + (8-13) + (12-2) = 15 off of the actual score, similarly for evaluator 2, the score calcuated is (13-18) + (6-16) + (7-17) = -25 off of the actual score <br> Hence the difference in the 2 scores is 15 - (-25) = 40 <br> Therefore total students = 40/2 = 20',1,2,15,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(16,'The arithmetic mean of multiples of 13 between the numbers 150 and 250 is','195|:221|:208|:214.5|:None of the above',2,'For calculating the AM, the smallest number in the series is - 156, and there are (250-150) / 13 = 7 terms (7 is the highest integer smaller than the term). Hence the AM will be - 156 + (7-1)/2 * 13 = 208',1,1,16,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(17,'A man completes a 10 km journey in time T1 by walking 5 kms at speed V1 and the rest by driving a car at speed V2. What is his average speed:','Geometric Mean of V1 & V2|:T1(V1+V2)/ 10|:Harmonic Mean of V1 & V2	(V1 +V2)/2	|:None of the above',2,'The average can be calculated as follows: Total Distance / Total Time <br> = 10 / (5/V1 + 5/V2) <br> = 2/ (1/V1 + 1/V2) Which is also the Harmonic Mean of V1 & V2',1,2,17,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(18,'Geeta bought 2 varities of pens, the first one costing Rs 13 and the other costing Rs 5 a piece. In total she spent Rs. 133, in how many different ways can she buy pens - ','1|:2|:4|:3|:None of the above',1,'Let the no. of pens be x and y. Hence the total cost is 13x + 5y = 133 <br> since the term 5y will always end in either 5 or 0, the other term 13x can end only in 8 or 3 ( for the 2 to sum to 133). <br> Hence we need to look at multiples of 13 which are less than 133 and end in either 8 or 3. This leaves us with: 13 X 1= 13 and 13 X 6 = 78. These should be the only 2 solutions. Just to verify we plug back these numbers in the equation and get: 13 X 1 + 5 X 24 = 133 and 13 X 6 + 5 X 11 = 133',1,3,18,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(19,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. Western music theory is easier to comprehend and work with than Indian music theory\r2. The great western composer Wolfgang Amadeus Mozart had once said that neither a lofty degree of intelligence nor imagination nor both together go to the making of a genius\r3. The symposium on the use of music to treat depression will create more awareness on the beneficial effects of classical music\r4. The beauty of music cannot be seen or analyzed but has been experienced by each and every one of us','FJFJ|:JFJJ|:JIJJ|:JFJF|:IFJJ',1,'The first statement is a Judgement, since it is an opinion and may vary from person to person\rThe second statement is a quote by a famous composer, something that can be verified - therefore Fact\rThe third statement is a judgement, since it is based on someones opinion of how things will shape up in the future\rThe fourth statement is a judgement since it is very subjective to the approval or disapproval of other people and cannot be verified',NULL,2,19,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(20,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. The first feature film presented as a talkie was The Jazz Singer released in October 1927\r2. The film Lord of the Rings was dubbed in 57 other languages so as to cater to international audiences\r3. It is impossible to capture the spirit of a book in a movie adaptation\r4. The director Peter Jackson has admitted that his movie adaptation cannot match the greatness of the trilogy by JRR Tolkien','FIJF|:FJJF|:JIJF|:JIJI|:FJIF',0,'The first statement is clearly a fact. The second is inferred from the fact that the movie was dubbed into 57 languages, making it an inference. The third statement is an opinion, hence a judgement. The fourth is a statement made by the movie\'s director and can thus be verified, making it a fact',NULL,2,20,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(21,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. Alexander III of Macedon was a king of Macedon, a state in northern ancienct Greece\r2. Alexander\'s legacy includes the cultural diffusion his conquests engendered\r3. His father Philip could have ruled the empire for another 20 years had he not been assasinated\r4. Alexander conquered 20 countries during his reign; one of the contributors of his success was the strong kingdom and experienced army that he inherited from his father','FIJF|:IFIJ|:FJJI|:FFJI|:FIJI',3,'The first statement is clearly a fact as it is stated he was a king of ancient Greece. The second talks about his legacy of spreading culture which can again be verified. The third statement is an opinion, hence a judgement. The fourth is an inference as it talks about the possible reason why he was able to conquer 20 countries',NULL,3,21,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(22,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. Mergers and acquisitions are the indication of a progressing economy\r2. The most critical challenge in a merger is the alignment of organization structure and values in the 2 companies\r3. The valuation of a company should be validated by management consulting firms\r4. To build buy-in, a company must earn the trust of the employees of the company being taken over','FJFJ|:FFJJ|:JJJJ|:JFJF|:FJJJ',2,'All the statements are judgements since they are opinions being expressed and cannot be validated. Look for keywords like \"usually\", \"must\" and \"should\" and any statement that cannot in whole or part be verified',NULL,3,22,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(23,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. Studies have shown that the more the number of moving parts in an industrial design, the more likely it is to require regular maintenance\r2. The growth output of the industrial sector was close to 8% last year. This can be attributed to strong fundamentals in manufacturing\r3. It is better to avoid machines that require regular maintenance\r4. The recent work by the R&D team of Maruti would lead to cheaper automobiles in the years to come','IIJI|:FFJJ|:FFJI|:IFJI|:FIJI',4,'The first statement talks about the result of a study and can thus be classified as a fact. The second gives the possible reason for increase in growth output, making it an inference. The thirds statement is an opinion which can be challenged - therefore it is a judgement. The fourth is an inference as it explores the possibility of cheaper automobiles manufactured by Maruti based on their recent R&D work',NULL,4,23,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(24,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. Policies can help in both subjective and objective decision making\r2. As seen from India\'s growth in the last 3 years, policy reforms are extremely important\r3. Policies frequently have side effects or unintended consequences\r4. India\'s economic policy reforms were started 15 years ago','JIJF|:FIJF|:JFJF|:JIFF|:FIIF',0,'The first statement is a debatable opinion and hence a judgement. The second gives the possible reason for increase in growth output, making it an inference. The third statement is an opinion which can be challenged - therefore it is a judgement. The fourth is a fact as it states something that happened 15 years ago and can be verified',NULL,3,24,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(25,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. The BSE Sensex is composed of 30 of the largest and most actively traded stocks representative of various industrial sectors of the Indian economy\r2. The base value of the SENSEX is taken as 100 on April 1, 1979, and its base year as 1978-79\r3. The sensex is expected to fall with sharp rise in dollar value\r4.  The free float market capitalization method is the best method to calculate the index','JFJJ|:JIJJ|:FIJI|:FFJI|:FFJJ',4,'The first 2 statements discuss facts about the BSE. The third and fourth are opinions and are thus classified as Judgements',NULL,1,25,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(26,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. A recent trend in supporting life imprisonment sentences over the death penalty is seen to have led to reduction in number of such offences \r2. A recent trend in death penalty sentences has been the reduction in the number of such offences\r3. Recent trends in death penalty sentences will not be allowed to carry on for long with such a vigilant populace\r4.  The death penalty is the deterrent that reduces the total number of such offences','FIJJ|:IFJJ|:IIFJ|:IIJJ|:JFJJ',1,'The first statement uses the trend to infer the reduction in number of offences. The second statement is a fact as it talks about the observed historical trend itself. The third and fourth are opinions on the death penalty and its effects, both of which can be easily disputed',NULL,3,26,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(27,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. Seeing the history of solar systems similar to our own, we can estimate that our sun will only increase in intensity over the next few years\r2. The recent asteroid collisions with the moon might lead to disturbances in satellite transmissions\r3. The sun is a star\r4.  The expedition to Mars was successful','IFFJ|:FIFJ|:IIFJ|:IJFJ|:IJFI',2,'The first two statements follow the structure: Fact..what is expected to happen based on fact - they are thus inferences. The third statement is clearly a fact while the fourth is an opinion; the success of the Mars expedition is subjective and cannot be verified',NULL,2,27,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(28,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. More than 9 million combatants were killed\r2. World War I (WWI) was a global war centred in Europe that began on 28 July 1914 and lasted until 11 November 1918\r3. German industrial and economic power had grown greatly after unification and the foundation of the Empire in 1871\r4.  Events on the home fronts were as tumultuous as on the battle fronts','IFFJ|:FJJJ|:FFJJ|:FFFJ|:FIFF',3,'The first three statements state facts. The last statement is somebody\'s opinion comparing the events on the home front and the battle front',NULL,2,28,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(29,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. 54 percent of India\'s population defecates in the open according to the latest report by WHO and UNICEF\r2. The work performed in the field of sanitation by men such as Fuad Lokhandwala is likely to make a significant difference to the lives of thousands\r3. It is shameful that we cannot build clean toilets, but we have a nuclear weapon\r4.  The silence by the central government clearly shows that the political class is least bothered about the country','FIJI|:FFJI|:FFJF|:FIJJ|:FIII',0,'Check the statement 4 - it is an inference because it uses a fact to make a logical deduction. Similarly, statement 2 is an inference because it uses a fact to infer something. Also, the third statement is an opinion, making it a judgement. The only option satisfying all these criteria is A',NULL,4,29,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(30,'Classify the following statements as one of the following:\r<u>Facts</u>, which deal with the pieces of information that one has heard, seen or read, and which are open to discovery or verification (indicated with an \"\"F\"\" in the answer option)\r<u>Inferences</u>, which are the conclusions drawn about the unknown, on the basis of the known (indicated with an \"\"I\"\" in the answer option)\r<u>Judgements</u>, which are the opinions that imply approval or disapproval of persons, objects, situations and occurencesin the past, the present or future(indicated with a \"\"J\"\" in the answer option)\r\r1. The ambience of the restaurant is spectacular\r2. The food is sourced from local organic farms\r3. If we look at the last few weeks\' turnover, the restaurant is all set to become a success\r4. In our country, 40 percent of urban families eat at restaurants every week','JJJF|:JFIF|:JFFJ|:JIFF|:FIFF',1,'The first statement is an opinion; the statements 2 and 4 are facts while statement 3 infers the chances of the restaurant  based on past trends. Even if we consider the third statement, only the option B satisfies the criteria of the third statement being an inference',NULL,1,30,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table quizzes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quizzes`;

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionSetIds` varchar(100) DEFAULT NULL COMMENT 'string of question_list_ids separated by ||',
  `l1Id` int(11) DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL,
  `currentFlag` int(1) DEFAULT NULL,
  `mobileFlag` int(1) DEFAULT NULL,
  `questionSetCount` int(3) DEFAULT NULL,
  `allotedTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=ascii;

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` (`id`,`questionSetIds`,`l1Id`,`accountId`,`currentFlag`,`mobileFlag`,`questionSetCount`,`allotedTime`)
VALUES
	(1,'1|:2|:3|:4|:5|:6|:7|:14|:15|:16',1,NULL,NULL,NULL,10,300),
	(2,'8|:9|:10|:11|:12|:13|:17|:18|:19|:20',1,NULL,NULL,NULL,10,20),
	(3,'21|:22|:23|:24|:25|:26|:27|:28|:29|:30',1,NULL,NULL,NULL,10,20);

/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table quizzes_pushed
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quizzes_pushed`;

CREATE TABLE `quizzes_pushed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) NOT NULL,
  `quizId` int(11) NOT NULL,
  `pushedTimeStamp` varchar(20) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `syncTimeStamp` bigint(20) NOT NULL,
  `optionsSelected` varchar(200) DEFAULT NULL,
  `timeTaken` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table responses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `responses`;

CREATE TABLE `responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) DEFAULT NULL,
  `quizId` int(11) DEFAULT NULL,
  `questionId` int(11) DEFAULT NULL,
  `optionSelected` int(1) DEFAULT NULL COMMENT 'options number separated by "||"',
  `timeTaken` varchar(500) DEFAULT NULL COMMENT 'time taken per question separated by "||"',
  `timeScore` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `l1Id` int(11) DEFAULT NULL,
  `l2Id` int(11) DEFAULT NULL,
  `l3Id` int(11) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `timestamp` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`accountId`),
  CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;



# Dump of table results_desc
# ------------------------------------------------------------

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



# Dump of table section_l1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `section_l1`;

CREATE TABLE `section_l1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shortName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `section_l1` WRITE;
/*!40000 ALTER TABLE `section_l1` DISABLE KEYS */;
INSERT INTO `section_l1` (`id`,`shortName`,`longName`)
VALUES
	(1,'QA','Quantitative Ability'),
	(2,'DI','Data Interpretation'),
	(3,'VA','Verbal Ability'),
	(4,'LR','Logical Reasoning');

/*!40000 ALTER TABLE `section_l1` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table section_l2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `section_l2`;

CREATE TABLE `section_l2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shortName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l1_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l1_id` (`l1_id`),
  CONSTRAINT `section_l2_ibfk_1` FOREIGN KEY (`l1_id`) REFERENCES `section_l1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `section_l2` WRITE;
/*!40000 ALTER TABLE `section_l2` DISABLE KEYS */;
INSERT INTO `section_l2` (`id`,`shortName`,`longName`,`l1_id`)
VALUES
	(1,'Number System',NULL,1),
	(2,'Ratios',NULL,1),
	(3,'Measurements',NULL,1),
	(4,'Geometry',NULL,1),
	(5,'Equations',NULL,1),
	(6,'Permutations & Combinations',NULL,1),
	(7,'Percentages',NULL,1),
	(8,'Data Interpretation',NULL,2),
	(9,'Data Sufficiency',NULL,2),
	(10,'Reading Comprehension',NULL,3),
	(11,'Vocabulary Based',NULL,3),
	(12,'Verbal Reasoning',NULL,3),
	(13,'Sentence Correction',NULL,3),
	(14,'Jumbled paragraphs',NULL,3),
	(15,'Deductions',NULL,4),
	(16,'Distribution',NULL,4),
	(17,'Venn Diagrams',NULL,4),
	(18,'Quant Based',NULL,4),
	(19,'Logical Connectors',NULL,4);

/*!40000 ALTER TABLE `section_l2` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table section_l3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `section_l3`;

CREATE TABLE `section_l3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l2_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l2_id` (`l2_id`),
  CONSTRAINT `section_l3_ibfk_1` FOREIGN KEY (`l2_id`) REFERENCES `section_l3` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `section_l3` WRITE;
/*!40000 ALTER TABLE `section_l3` DISABLE KEYS */;
INSERT INTO `section_l3` (`id`,`name`,`longName`,`l2_id`)
VALUES
	(1,'Statistics',NULL,1),
	(2,'Number Base',NULL,1),
	(3,'Progressions',NULL,1),
	(4,'Logarithms',NULL,1),
	(5,'Ratio & Proportion',NULL,2),
	(6,'Mixture & Solutions',NULL,2),
	(7,'Time-Speed-Distance',NULL,3),
	(8,'Work-Time-Partnerships',NULL,3),
	(9,'Pipes & Cistern',NULL,3),
	(10,'2D Geometry',NULL,4),
	(11,'Trigonometry',NULL,4),
	(12,'Coordinate Geometry',NULL,4),
	(13,'Mensuration',NULL,4),
	(14,'Linear Equations',NULL,5),
	(15,'Quadratic and Polynomial Equal',NULL,5),
	(16,'Inequalities & Modulus',NULL,5),
	(17,'Operator Based Questions',NULL,5),
	(18,'Set Theory, Venn Diagrams',NULL,6),
	(19,'Permutation & Combination',NULL,6),
	(20,'Probability',NULL,6),
	(21,'Simple and Compound Interest',NULL,7),
	(22,'Installment Payments',NULL,7),
	(23,'Percentages',NULL,7),
	(24,'Profit & Loss',NULL,7),
	(25,'Data Tables',NULL,8),
	(26,'Bar Charts',NULL,8),
	(27,'Pie Charts',NULL,8),
	(28,'Pert Charts',NULL,8),
	(29,'Line-Area Graphs',NULL,8),
	(30,'Venn Diagrams',NULL,8),
	(31,'Network Diagram',NULL,8),
	(32,'Quant Based',NULL,9),
	(33,'Reasoning Based',NULL,9),
	(34,'Main Idea Questions',NULL,10),
	(35,'Specific Idea Questions or Dir',NULL,10),
	(36,'Implied Idea Questions',NULL,10),
	(37,'Logical Structure Questions',NULL,10),
	(38,'Tone or Attitude Questions',NULL,10),
	(39,'Continued Idea Questions',NULL,10),
	(40,'Synonyms and Word Meanings',NULL,11),
	(41,'Antonyms',NULL,11),
	(42,'Word Usage in Sentence',NULL,11),
	(43,'Analogies',NULL,11),
	(44,'Logical complement of an idea ',NULL,12),
	(45,'Fact-Inference-Judgement',NULL,12),
	(46,'Summary of a paragraph',NULL,12),
	(47,'Jumbled Sentence',NULL,NULL),
	(48,'Jumbled Paragraph',NULL,NULL),
	(49,'Jumbled Paragraph with fixed sentences',NULL,NULL),
	(50,'Deductions - independent sentences with linkages',NULL,15),
	(51,'Binary Logic - Statements with 2 way logic',NULL,15),
	(52,'Logical Connectives - if, then statement ',NULL,15),
	(53,'Sequencing - ordering in single line or in a circl',NULL,16),
	(54,'Distribution - placing along a 2d space',NULL,16),
	(55,'Selection - Small group or individuals are selecte',NULL,17),
	(56,'Venn Diagrams',NULL,17),
	(57,'Geometry Based Reasoning',NULL,18),
	(58,'Quant Based Reasoning',NULL,18),
	(59,'Order & Sequence - gives comparison between object',NULL,19),
	(60,'Routes & Networks - connection between multiple no',NULL,19);

/*!40000 ALTER TABLE `section_l3` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_bookmarks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_bookmarks`;

CREATE TABLE `user_bookmarks` (
  `id` int(11) DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL,
  `typeOfObject` int(11) DEFAULT NULL,
  `objectId` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table word_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `word_options`;

CREATE TABLE `word_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `word_options` WRITE;
/*!40000 ALTER TABLE `word_options` DISABLE KEYS */;
INSERT INTO `word_options` (`id`,`option`)
VALUES
	(1,'option 1'),
	(2,'option 2'),
	(3,'option 3'),
	(4,'option 4');

/*!40000 ALTER TABLE `word_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table word_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `word_type`;

CREATE TABLE `word_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `word_type` WRITE;
/*!40000 ALTER TABLE `word_type` DISABLE KEYS */;
INSERT INTO `word_type` (`id`,`type`)
VALUES
	(1,'Noun'),
	(2,'Verb'),
	(3,'Adjective');

/*!40000 ALTER TABLE `word_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table word_usage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `word_usage`;

CREATE TABLE `word_usage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `example` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table words
# ------------------------------------------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` (`id`,`word`,`meaning`,`description`,`word_type`,`pronunciation`,`options`,`answer`)
VALUES
	(1,'Atrocious','Horrifyingly wicked','Of a very poor quality; extremely bad or unpleasant: \"atrocious weather\".',1,'abhi kuch nahi','1|:2|:3',1),
	(2,'Test2','bad bad','blah bleh',1,'abhi kuch nahi','3|:2|:1',1),
	(3,'Test3','bad bad','blah bleh',1,'abhi kuch nahi','a|:b|:c',3),
	(4,'Test4','bad bad','blah bleh',1,'abhi kuch nahi','a|:b|:c',2);

/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
