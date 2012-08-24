-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 24, 2012 at 09:38 AM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=3 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `firstName`, `lastName`, `email`, `ascoreL1`, `ascoreL2`, `createdOn`, `verifiedOn`, `lastsignedinOn`, `deletedOn`, `suspendedOn`, `resetsentOn`) VALUES
(1, 'ssachan', NULL, 'shikhar', 'sachan', 'shikhar.sachan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'raghav', NULL, 'raghav', 'verma', 'email@mskd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_fb`
--

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
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_google`
--

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
  KEY `accountId` (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ascored_l2`
--

CREATE TABLE `ascored_l2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) DEFAULT NULL,
  `l2Id` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ascores_l1`
--

CREATE TABLE `ascores_l1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) DEFAULT NULL,
  `l1Id` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `accountId` int(11) DEFAULT NULL,
  `deviceId` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceName` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicePlatform` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceVersion` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastLogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_cards`
--

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
  KEY `l3Id` (`l3Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `flash_cards`
--

INSERT INTO `flash_cards` (`id`, `word`, `meaning`, `description`, `pronunciation`, `options`, `correctOption`, `usage`, `l3Id`) VALUES
(1, 'Atrocious', 'Horrifyingly wicked', 'Of a very poor quality; extremely bad or unpleasant: "atrocious weather".', 'Aa-tro-cius', '1|:2|:3', 0, 'Tanujs coding is atrocius', NULL),
(2, 'T-Rex', 'bad ass dinosaur', 'Very big, large, awesome dino', 'tee-ray-ex', '3|:2|:1', 1, 'T-Rexs are awesome.', NULL),
(3, 'Test2', 'bad bad', 'blah bleh', NULL, '3|:2|:1', 1, NULL, NULL),
(4, 'Test2', 'bad bad', 'blah bleh', NULL, '3|:2|:1', 1, NULL, NULL),
(5, 'Test2', 'bad bad', 'blah bleh', NULL, '3|:2|:1', 1, NULL, NULL),
(6, 'Test2', 'bad bad', 'blah bleh', NULL, '3|:2|:1', 1, NULL, NULL),
(7, 'Test2', 'bad bad', 'blah bleh', NULL, '3|:2|:1', 1, NULL, NULL),
(8, 'Test2', 'bad bad', 'blah bleh', NULL, '3|:2|:1', 1, NULL, NULL),
(9, 'Test2', 'bad bad', 'blah bleh', NULL, '3|:2|:1', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flash_cards_list`
--

CREATE TABLE `flash_cards_list` (
  `id` int(11) DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wordCount` int(3) DEFAULT NULL,
  `wordIds` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l2Id` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `l2Id` (`l2Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_cards_list`
--

INSERT INTO `flash_cards_list` (`id`, `description`, `wordCount`, `wordIds`, `l2Id`, `title`) VALUES
(1, 'List of awesome things', 4, '1|:2|:3|:4', 1, 'Awesome things'),
(2, 'List of not so awesome things', 4, '2|:3|:4|:1', 2, 'Not awesome things');

-- --------------------------------------------------------

--
-- Table structure for table `i`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `practice_sets`
--

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
  KEY `l2Id` (`l2Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionText` varchar(5000) DEFAULT NULL,
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
  KEY `question_list_id` (`questionSetId`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=13 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `questionText`, `options`, `correctOption`, `explanation`, `l3Id`, `difficulty`, `questionSetId`, `averageTimeCorrect`, `mobileFlag`, `availableFlag`, `averageTimeIncorrect`, `averageTimeUnattempted`, `resourcesIds`, `tagIds`, `allotedTime`, `qscoreCorrect`, `qscoreIncorrect`, `qscoreUnattempted`, `qscore`) VALUES
(1, 'aaaa', 'a|:b|:c|:d', 0, NULL, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'bbbb', 'a|:b', 0, NULL, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'ccc', 'e|:f', 1, NULL, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ddd', 'e|:f', 1, NULL, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'eeee', 'e|:f', 1, NULL, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'fff', 'e|:f', 1, NULL, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ggg', 'e|:f', 1, NULL, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'ccc', 'e|:f', 1, NULL, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'ccc', 'e|:f', 1, NULL, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ccc', 'e|:f', 1, NULL, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'ccc', 'e|:f', 1, NULL, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_list`
--

CREATE TABLE `question_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paragraph` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_count` int(2) DEFAULT NULL,
  `question_id_list` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'question ids separated by ||',
  `difficulty` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `question_list`
--

INSERT INTO `question_list` (`id`, `paragraph`, `question_count`, `question_id_list`, `difficulty`) VALUES
(1, 'iuhiufsihcihsihciuhi', 1, '1', NULL),
(2, 'cccc', 1, '2', NULL),
(3, 'iuhiufsihcihsihciuhi', 1, '3', NULL),
(4, 'cccc', 1, '4', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_sets`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `question_sets`
--

INSERT INTO `question_sets` (`id`, `paragraph`, `questionIds`, `questionCount`, `resourceIds`, `l3Id`, `difficulty`, `mobileFlag`) VALUES
(1, 'iuhiufsihcihsihciuhi', '1', 1, NULL, NULL, NULL, NULL),
(2, 'cccc', '2', 1, NULL, NULL, NULL, NULL),
(3, 'iuhiufsihcihsihciuhi', '3', 1, NULL, NULL, NULL, NULL),
(4, 'cccc', '4', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_tags`
--

CREATE TABLE `question_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `question_tags`
--

INSERT INTO `question_tags` (`id`, `name`) VALUES
(1, 'lengthy'),
(2, 'calculations');

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`id`, `type`) VALUES
(1, 'normal'),
(2, 'paragraph');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionSetIds` varchar(100) DEFAULT NULL COMMENT 'string of question_list_ids separated by ||',
  `l1Id` int(11) DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL,
  `currentFlag` int(1) DEFAULT NULL,
  `mobileFlag` int(1) DEFAULT NULL,
  `questionSetCount` int(3) DEFAULT NULL,
  `allotedTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=7 ;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `questionSetIds`, `l1Id`, `accountId`, `currentFlag`, `mobileFlag`, `questionSetCount`, `allotedTime`) VALUES
(1, '1|:2|:3|:4', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '4|:3|:2|:1', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '1|:2', NULL, NULL, NULL, NULL, NULL, NULL),
(4, '1|:2', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '1|:2', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '1|:2', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) DEFAULT NULL,
  `questionId` int(11) DEFAULT NULL,
  `optionSelected` int(1) DEFAULT NULL COMMENT 'options number separated by "||"',
  `time` varchar(500) DEFAULT NULL COMMENT 'time taken per question separated by "||"',
  `timeScore` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `l1Id` int(11) DEFAULT NULL,
  `l2Id` int(11) DEFAULT NULL,
  `l3Id` int(11) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`accountId`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=3 ;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `accountId`, `questionId`, `optionSelected`, `time`, `timeScore`, `status`, `l1Id`, `l2Id`, `l3Id`, `difficulty`, `timestamp`) VALUES
(1, 1, NULL, 2, '23:30|12|', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, 2, '23:40|21|', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

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
  KEY `results_ibfk_1` (`quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=3 ;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `account_id`, `quiz_id`, `options_selected`, `time_per_question`, `sent_time`, `sync_time`) VALUES
(1, 1, 1, '2|3', '23:30|12|', NULL, NULL),
(2, 1, 2, '2|3|4|', '23:40|21|', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results_desc`
--

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
  KEY `results_desc_ibfk_2` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `section_l1`
--

CREATE TABLE `section_l1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shortName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `section_l1`
--

INSERT INTO `section_l1` (`id`, `shortName`, `longName`) VALUES
(1, 'DI', NULL),
(2, 'VA', NULL),
(3, 'LR', NULL),
(4, 'QA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `section_l2`
--

CREATE TABLE `section_l2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shortName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l1_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l1_id` (`l1_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `section_l2`
--

INSERT INTO `section_l2` (`id`, `shortName`, `longName`, `l1_id`) VALUES
(1, 'Data Sufficiency', NULL, 1),
(2, 'Geo', NULL, 3),
(3, 'Ratio', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `section_l3`
--

CREATE TABLE `section_l3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l2_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l2_id` (`l2_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `section_l3`
--

INSERT INTO `section_l3` (`id`, `name`, `longName`, `l2_id`) VALUES
(1, 'Ratio', NULL, 3),
(2, 'Area', NULL, 2),
(3, 'Volume', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_bookmarks`
--

CREATE TABLE `user_bookmarks` (
  `id` int(11) DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL,
  `typeOfObject` int(11) DEFAULT NULL,
  `objectId` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `word`, `meaning`, `description`, `word_type`, `pronunciation`, `options`, `answer`) VALUES
(1, 'Atrocious', 'Horrifyingly wicked', 'Of a very poor quality; extremely bad or unpleasant: "atrocious weather".', 1, 'abhi kuch nahi', '1|:2|:3', 1),
(2, 'Test2', 'bad bad', 'blah bleh', 1, 'abhi kuch nahi', '3|:2|:1', 1),
(3, 'Test3', 'bad bad', 'blah bleh', 1, 'abhi kuch nahi', 'a|:b|:c', 3),
(4, 'Test4', 'bad bad', 'blah bleh', 1, 'abhi kuch nahi', 'a|:b|:c', 2);

-- --------------------------------------------------------

--
-- Table structure for table `word_options`
--

CREATE TABLE `word_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `word_options`
--

INSERT INTO `word_options` (`id`, `option`) VALUES
(1, 'option 1'),
(2, 'option 2'),
(3, 'option 3'),
(4, 'option 4');

-- --------------------------------------------------------

--
-- Table structure for table `word_type`
--

CREATE TABLE `word_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `word_type`
--

INSERT INTO `word_type` (`id`, `type`) VALUES
(1, 'Noun'),
(2, 'Verb'),
(3, 'Adjective');

-- --------------------------------------------------------

--
-- Table structure for table `word_usage`
--

CREATE TABLE `word_usage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `example` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_fb`
--
ALTER TABLE `account_fb`
  ADD CONSTRAINT `account_fb_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `account_google`
--
ALTER TABLE `account_google`
  ADD CONSTRAINT `account_google_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `flash_cards`
--
ALTER TABLE `flash_cards`
  ADD CONSTRAINT `flash_cards_ibfk_1` FOREIGN KEY (`l3Id`) REFERENCES `section_l3` (`id`);

--
-- Constraints for table `flash_cards_list`
--
ALTER TABLE `flash_cards_list`
  ADD CONSTRAINT `flash_cards_list_ibfk_1` FOREIGN KEY (`l2Id`) REFERENCES `section_l2` (`id`);

--
-- Constraints for table `practice_sets`
--
ALTER TABLE `practice_sets`
  ADD CONSTRAINT `practice_sets_ibfk_1` FOREIGN KEY (`questionSetIds`) REFERENCES `question_sets` (`id`),
  ADD CONSTRAINT `practice_sets_ibfk_2` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `practice_sets_ibfk_3` FOREIGN KEY (`l2Id`) REFERENCES `section_l2` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`questionSetId`) REFERENCES `question_sets` (`id`);

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`),
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `results_desc`
--
ALTER TABLE `results_desc`
  ADD CONSTRAINT `results_desc_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `results_desc_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `results_desc_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `section_l2`
--
ALTER TABLE `section_l2`
  ADD CONSTRAINT `section_l2_ibfk_1` FOREIGN KEY (`l1_id`) REFERENCES `section_l1` (`id`);

--
-- Constraints for table `section_l3`
--
ALTER TABLE `section_l3`
  ADD CONSTRAINT `section_l3_ibfk_1` FOREIGN KEY (`l2_id`) REFERENCES `section_l3` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
