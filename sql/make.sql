-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2016 at 03:12 PM
-- Server version: 5.5.25
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `make`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `from_mess` varchar(11) NOT NULL,
  `to_mess` varchar(11) NOT NULL,
  `message` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`from_mess`, `to_mess`, `message`) VALUES
('8', '', 'aaaaaaaa'),
('8', '7', 'assss'),
('8', '7', 'sassasadd'),
('8', '7', 'saddsasdas'),
('8', '7', 'sdds'),
('8', '7', 'aaaaaaaaaaaaa'),
('8', '7', 'aaaaaaaaaaaaa'),
('8', '7', 'aaaaaaaaaaaaa'),
('9', '7', 'aaaaaaaaaaa'),
('9', '8', 'aaaaaaaaaaaaaa'),
('9', '8', 'aaaaa'),
('8', '7', 'kkkkkkkkkkk'),
('8', '7', ' jjjj'),
('9', '8', ''),
('9', '8', 'kjsdakjdkasjjsjas'),
('8', '7', 'saaaaaaaaaa'),
('9', '8', 'sasasasasa'),
('9', '7', 'dassdaaaaa'),
('9', '7', 'dsaaaa'),
('9', '7', 'Marlen'),
('9', '8', 'asasasa'),
('9', '8', 'lol'),
('8', '9', 'hahhah'),
('8', '9', 'dddd'),
('8', '9', 'ddd'),
('8', '9', 'AAAAAAAAAAAAAAAAAA'),
('8', '9', 'llllllllllllll'),
('', '8', 'dsaaaa'),
('', '8', 'sdaaaaasdasadasd'),
('', '8', 'saaaaaaa'),
('', '8', 'MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM'),
('', '8', 'MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM'),
('', '8', ' lllllllllllllllllllllllllllllllllllllllllllll'),
('8', '7', 'Admin'),
('8', '7', 'Admin'),
('8', '7', ''),
('8', '7', 'sdsfdfsdfsdfsd'),
('9', '7', 'aasssaassa');

-- --------------------------------------------------------

--
-- Table structure for table `db`
--

CREATE TABLE IF NOT EXISTS `db` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Surname` varchar(200) NOT NULL,
  `Login` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `db`
--

INSERT INTO `db` (`id`, `Name`, `Surname`, `Login`, `Password`) VALUES
(1, 'Marlen', 'Abdigaliyev', 'Marlen@gmail.com', 'Marlen');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `uid`, `url`) VALUES
(1, '1', 'image/123.jpg'),
(2, '2', 'image/Arago_4.jpg'),
(3, '3', 'image/becquerel1.gif'),
(4, '4', 'image/faraday01.jpg'),
(5, '1', 'image/6.png'),
(6, '1', 'image/form2.png'),
(7, '555', 'image/im4.png'),
(8, '33', 'image/im111.png'),
(9, 'test@mail.ru', 'image/im6.png'),
(10, 'test@mail.ru', 'image/RGB.gif'),
(11, 'unknown', 'image/1304399567_metodika.jpg'),
(12, 'unknown', 'image/frenkel.jpg'),
(13, 'unknown', 'image/AIWq-uduPpo.jpg'),
(14, 'unknown', 'image/wall.png'),
(15, 'unknown', 'image/IMG_6944_1600_01.jpg'),
(16, 'unknown', 'image/NegvHxLNq3s.jpg'),
(17, 'test', 'image/AIWq-uduPpo.jpg'),
(18, 'test', 'image/gold.png'),
(19, 'test', 'image/trenie.gif'),
(20, 'test', 'image/AIWq-uduPpo.jpg'),
(21, 'test', 'image/AIWq-uduPpo.jpg'),
(22, 'test', 'image/robot.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Login` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Surname` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Login`, `Password`, `Name`, `Surname`) VALUES
(7, 'admin@gmail.com', 'admin', 'admin', 'admin'),
(9, 'test1@mail.ru', 'test1', 'test1', 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Login` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Surname` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Login`, `Password`, `Name`, `Surname`) VALUES
(1, 'aaa@mail.ru', 'a', 'a', 'a'),
(2, 'a@mail.ru', 'aaaaaa', 'aaaaaaaaaaaa', 'aaaaaaa'),
(3, 'aaaaa@mil.ru', 'aaaaa', 'aaaaaaaaaaaa', 'a'),
(4, 'aaa@mail.ru', 'aaaa', 'aaaaaaaaaaaa', 'aaaaaaa'),
(5, 'Make@mail.ru', '123', 'Marlen', 'Abdigaliyev'),
(6, 'admin@gmail.com', 'admin', 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
