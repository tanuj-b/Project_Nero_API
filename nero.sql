-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 01, 2012 at 10:02 AM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `ascore_l1` varchar(200) DEFAULT NULL COMMENT 'separated by ||',
  `ascore_l2` varchar(200) DEFAULT NULL COMMENT 'separated by ||',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=3 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `ascore_l1`, `ascore_l2`) VALUES
(1, 'ssachan', NULL, 'shikhar', 'sachan', 'shikhar.sachan@gmail.com', NULL, NULL),
(2, 'raghav', NULL, 'raghav', 'verma', 'email@mskd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ascored_l2`
--

CREATE TABLE `ascored_l2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `l2_id` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ascores_l1`
--

CREATE TABLE `ascores_l1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `l1_id` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

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
  KEY `question_list_id` (`question_list_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=12 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `options`, `answer`, `comments`, `l3_id`, `difficulty`, `average_time`, `question_type_id`, `question_list_id`, `flag`) VALUES
(1, 'aaaa', 'a|:b', 0, NULL, NULL, NULL, NULL, NULL, 1, 1),
(2, 'bbbb', NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 1),
(3, 'ccc', 'e|:f', 1, NULL, NULL, NULL, NULL, NULL, 2, 1),
(4, 'ccc', 'e|:f', 1, NULL, NULL, NULL, NULL, NULL, 2, 1),
(5, 'ccc', 'e|:f', 1, NULL, NULL, NULL, NULL, NULL, 2, 1),
(6, 'ccc', 'e|:f', 1, NULL, NULL, NULL, NULL, NULL, 2, 1),
(7, 'ccc', 'e|:f', 1, NULL, NULL, NULL, NULL, NULL, 2, 1),
(8, 'ccc', 'e|:f', 1, NULL, NULL, NULL, NULL, NULL, 2, 1),
(9, 'ccc', 'e|:f', 1, NULL, NULL, NULL, NULL, NULL, 2, 1),
(10, 'ccc', 'e|:f', 1, NULL, NULL, NULL, NULL, NULL, 2, 1),
(11, 'ccc', 'e|:f', 1, NULL, NULL, NULL, NULL, NULL, 2, 1);

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
(1, 'iuhiufsihcihsihciuhi', 3, '1|:5|:9', NULL),
(2, 'cccc', 1, '2|:4|:6', NULL),
(3, 'iuhiufsihcihsihciuhi', 3, '1|:5|:8', NULL),
(4, 'cccc', 1, '3', NULL);

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
  `question_list_ids` varchar(100) DEFAULT NULL COMMENT 'string of question_list_ids separated by ||',
  `l1_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=7 ;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `question_list_ids`, `l1_id`) VALUES
(1, '1|:2', NULL),
(2, '1|:2', NULL),
(3, '1|:2', NULL),
(4, '1|:2', NULL),
(5, '1|:2', NULL),
(6, '1|:2', NULL);

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
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `section_l2`
--

CREATE TABLE `section_l2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l1_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l1_id` (`l1_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `section_l3`
--

CREATE TABLE `section_l3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l2_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l2_id` (`l2_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`question_list_id`) REFERENCES `question_list` (`id`);

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
