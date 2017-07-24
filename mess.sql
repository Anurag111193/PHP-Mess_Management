-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2016 at 08:08 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mess`
--

-- --------------------------------------------------------

--
-- Table structure for table `baai`
--

CREATE TABLE IF NOT EXISTS `baai` (
  `num_baai` int(11) NOT NULL,
  `day_baai` int(11) NOT NULL,
  `perday_baai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baai`
--

INSERT INTO `baai` (`num_baai`, `day_baai`, `perday_baai`) VALUES
(20, 10, 10),
(20, 10, 10),
(20, 10, 10),
(10, 100, 10),
(2, 2, 2),
(3, 3, 3),
(1, 1, 1),
(2, 2, 2),
(2, 2, 2),
(2, 2, 2),
(2, 2, 2),
(2, 2, 22),
(2, 34, 10);

-- --------------------------------------------------------

--
-- Table structure for table `baaibilling`
--

CREATE TABLE IF NOT EXISTS `baaibilling` (
  `num_baai` int(11) NOT NULL,
  `day_baai` int(11) NOT NULL,
  `perday_baai` float NOT NULL,
  `dt` date NOT NULL,
  `total_bill` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baaibilling`
--

INSERT INTO `baaibilling` (`num_baai`, `day_baai`, `perday_baai`, `dt`, `total_bill`) VALUES
(2, 2, 2, '2015-01-30', 8),
(2, 2, 22, '2015-01-29', 88),
(2, 34, 10, '2015-01-29', 680);

-- --------------------------------------------------------

--
-- Table structure for table `cadetbilling`
--

CREATE TABLE IF NOT EXISTS `cadetbilling` (
  `batchid` int(5) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `fathersname` varchar(30) NOT NULL,
  `mothersname` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `yearofjoining` int(5) NOT NULL,
  `totalcost` float NOT NULL,
  `datee` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cadetinfo`
--

CREATE TABLE IF NOT EXISTS `cadetinfo` (
  `batchid` int(5) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `fathersname` varchar(30) NOT NULL,
  `mothersname` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(60) CHARACTER SET utf8 NOT NULL,
  `district` varchar(30) NOT NULL,
  `yearofjoining` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cadetinfo`
--

INSERT INTO `cadetinfo` (`batchid`, `firstname`, `lastname`, `fathersname`, `mothersname`, `age`, `city`, `state`, `district`, `yearofjoining`) VALUES
(1, 'Anurag', 'Sukhija', ' Santkumar', ' kanchan', 21, 'nagpur', 'twentytwo', 'nagpur', 2015),
(22, 'Dhiraj', 'Wakodikar', ' Deorao', ' Lata', 21, 'Nagpur', 'twentytwo', 'Nagpur', 2014),
(34, 'fhjg', 'f', ' f', ' f', 4, 'hg', 'à¤†à¤¸à¤¾à¤®', 'g', 675),
(21, 'nb', 'nb', ' ', ' kk', 78, 'hbj', 'à¤…à¤°à¥à¤£à¤¾à¤šà¤² à¤ªà¥à¤°à¤¦à¥‡à¤¶', 'bhj', 89),
(122, 'vb', 'vb', ' null', ' null', 0, 'null', 'à¤…à¤°à¥à¤£à¤¾à¤šà¤² à¤ªà¥à¤°à¤¦à¥‡à¤¶', 'kl', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gaadi`
--

CREATE TABLE IF NOT EXISTS `gaadi` (
  `quant` float NOT NULL,
  `perl_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaadi`
--

INSERT INTO `gaadi` (`quant`, `perl_cost`) VALUES
(20, 10),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `gadibilling`
--

CREATE TABLE IF NOT EXISTS `gadibilling` (
  `quant` float NOT NULL,
  `perl_cost` float NOT NULL,
  `datee` date NOT NULL,
  `total_bill` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gadibilling`
--

INSERT INTO `gadibilling` (`quant`, `perl_cost`, `datee`, `total_bill`) VALUES
(20, 10, '0000-00-00', 200),
(3, 3, '2015-01-29', 9);

-- --------------------------------------------------------

--
-- Table structure for table `loginfo`
--

CREATE TABLE IF NOT EXISTS `loginfo` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginfo`
--

INSERT INTO `loginfo` (`username`, `password`) VALUES
('ptc', 'mess');

-- --------------------------------------------------------

--
-- Table structure for table `otherbilling`
--

CREATE TABLE IF NOT EXISTS `otherbilling` (
  `cost` float NOT NULL,
  `datee` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otherbilling`
--

INSERT INTO `otherbilling` (`cost`, `datee`) VALUES
(12, '0000-00-00'),
(22, '0000-00-00'),
(30, '2015-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `pisai`
--

CREATE TABLE IF NOT EXISTS `pisai` (
  `quant` float NOT NULL,
  `perkg_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pisai`
--

INSERT INTO `pisai` (`quant`, `perkg_cost`) VALUES
(20, 10),
(2, 10),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pisaibilling`
--

CREATE TABLE IF NOT EXISTS `pisaibilling` (
  `quant` float NOT NULL,
  `perkg_cost` float NOT NULL,
  `datee` date NOT NULL,
  `total_bill` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pisaibilling`
--

INSERT INTO `pisaibilling` (`quant`, `perkg_cost`, `datee`, `total_bill`) VALUES
(20, 10, '0000-00-00', 200),
(2, 10, '2015-01-29', 20),
(2, 2, '2015-01-29', 4),
(3, 3, '2015-01-29', 9);

-- --------------------------------------------------------

--
-- Table structure for table `rough`
--

CREATE TABLE IF NOT EXISTS `rough` (
  `id` int(2) NOT NULL,
  `item` varchar(5) NOT NULL,
  `dateeeee` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rough`
--

INSERT INTO `rough` (`id`, `item`, `dateeeee`) VALUES
(1, 'qwert', '2014-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `storea`
--

CREATE TABLE IF NOT EXISTS `storea` (
  `item_number` int(6) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `quantityp` int(6) NOT NULL,
  `consumed` int(6) NOT NULL,
  `remaining` int(6) NOT NULL,
  `cost_perkg` int(6) NOT NULL,
  `datee` date NOT NULL,
  `minvalue` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storea`
--

INSERT INTO `storea` (`item_number`, `item_name`, `quantityp`, `consumed`, `remaining`, `cost_perkg`, `datee`, `minvalue`) VALUES
(0, 'zz', 4, 1, 4, 1, '2000-01-26', 0),
(0, 'cc', 3, 2, 3, 9, '2000-01-26', 2);

-- --------------------------------------------------------

--
-- Table structure for table `storeabilling`
--

CREATE TABLE IF NOT EXISTS `storeabilling` (
  `item_number` int(5) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(30) NOT NULL,
  `quantityp` int(11) NOT NULL,
  `consumed` int(11) NOT NULL,
  `remaining` int(11) NOT NULL,
  `cost_perkg` float NOT NULL,
  `datee` date NOT NULL,
  `total_cost` float NOT NULL,
  UNIQUE KEY `item_number` (`item_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `storeabilling`
--

INSERT INTO `storeabilling` (`item_number`, `item_name`, `quantityp`, `consumed`, `remaining`, `cost_perkg`, `datee`, `total_cost`) VALUES
(6, 'zz', 5, 1, 4, 1, '2015-02-08', 5),
(7, 'cc', 5, 2, 3, 9, '2015-02-08', 45);

-- --------------------------------------------------------

--
-- Table structure for table `storeb`
--

CREATE TABLE IF NOT EXISTS `storeb` (
  `item_number` int(5) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(30) NOT NULL,
  `quantity_q` float NOT NULL,
  `quantity_k` float NOT NULL,
  `consumed_q` float NOT NULL,
  `consumed_k` float NOT NULL,
  `remaining_q` float NOT NULL,
  `remaining_k` float NOT NULL,
  `cost_perkg` float NOT NULL,
  `minvalue` int(5) NOT NULL,
  PRIMARY KEY (`item_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `storeb`
--

INSERT INTO `storeb` (`item_number`, `item_name`, `quantity_q`, `quantity_k`, `consumed_q`, `consumed_k`, `remaining_q`, `remaining_k`, `cost_perkg`, `minvalue`) VALUES
(11, 'dhiraj', 120, 0, 0, 0, 120, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `storebbilling`
--

CREATE TABLE IF NOT EXISTS `storebbilling` (
  `item_number` int(5) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(30) NOT NULL,
  `quantity_q` float NOT NULL,
  `quantity_k` float NOT NULL,
  `consumed_q` float NOT NULL,
  `consumed_k` float NOT NULL,
  `remaining_q` float NOT NULL,
  `remaining_k` float NOT NULL,
  `cost_perkg` float NOT NULL,
  `datee` date NOT NULL,
  `total_cost` float NOT NULL,
  UNIQUE KEY `item_number` (`item_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `storebbilling`
--

INSERT INTO `storebbilling` (`item_number`, `item_name`, `quantity_q`, `quantity_k`, `consumed_q`, `consumed_k`, `remaining_q`, `remaining_k`, `cost_perkg`, `datee`, `total_cost`) VALUES
(21, 'dhiraj', 100, 0, 0, 0, 100, 0, 1, '2015-02-08', 10000),
(22, 'dhiraj', 10, 0, 0, 0, 110, 0, 1, '2015-02-08', 1000),
(23, 'dhiraj', 0, 0, 10, 0, 100, 0, 1, '2015-02-08', 0),
(24, 'dhiraj', 10, 0, 5, 0, 115, 0, 9, '2015-02-08', 9000),
(25, 'dhiraj', 0, 0, 0, 0, 120, 0, 0, '2015-02-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `storec`
--

CREATE TABLE IF NOT EXISTS `storec` (
  `item_number` int(5) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(30) NOT NULL,
  `quantity_q` float NOT NULL,
  `quantity_k` float NOT NULL,
  `consumed_q` float NOT NULL,
  `consumed_k` float NOT NULL,
  `remaining_q` float NOT NULL,
  `remaining_k` float NOT NULL,
  `cost_perkg` float NOT NULL,
  `minvalue` int(5) NOT NULL,
  PRIMARY KEY (`item_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `storec`
--

INSERT INTO `storec` (`item_number`, `item_name`, `quantity_q`, `quantity_k`, `consumed_q`, `consumed_k`, `remaining_q`, `remaining_k`, `cost_perkg`, `minvalue`) VALUES
(8, 'hii', 8, 0, 10, 0, 8, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `storecbilling`
--

CREATE TABLE IF NOT EXISTS `storecbilling` (
  `item_number` int(5) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(30) NOT NULL,
  `quantity_q` float NOT NULL,
  `quantity_k` float NOT NULL,
  `consumed_q` float NOT NULL,
  `consumed_k` float NOT NULL,
  `remaining_q` float NOT NULL,
  `remaining_k` float NOT NULL,
  `cost_perkg` float NOT NULL,
  `datee` date NOT NULL,
  UNIQUE KEY `item_number` (`item_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `storecbilling`
--

INSERT INTO `storecbilling` (`item_number`, `item_name`, `quantity_q`, `quantity_k`, `consumed_q`, `consumed_k`, `remaining_q`, `remaining_k`, `cost_perkg`, `datee`) VALUES
(20, 'hii', 10, 0, 0, 0, 10, 0, 1, '2015-02-08'),
(21, 'hii', 0, 0, 2, 0, 8, 0, 9, '2015-02-08'),
(22, 'hii', 10, 0, 10, 0, 8, 0, 1, '2015-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `stored`
--

CREATE TABLE IF NOT EXISTS `stored` (
  `item_number` int(5) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(30) NOT NULL,
  `quantity_l` float NOT NULL,
  `quantity_ml` float NOT NULL,
  `consumed_l` float NOT NULL,
  `consumed_ml` float NOT NULL,
  `remaining_l` float NOT NULL,
  `remaining_ml` float NOT NULL,
  `costperl` float NOT NULL,
  `minvalue` int(5) NOT NULL,
  PRIMARY KEY (`item_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stored`
--

INSERT INTO `stored` (`item_number`, `item_name`, `quantity_l`, `quantity_ml`, `consumed_l`, `consumed_ml`, `remaining_l`, `remaining_ml`, `costperl`, `minvalue`) VALUES
(2, 'tel', 4, 0, 6, 0, 4, 0, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `storedbilling`
--

CREATE TABLE IF NOT EXISTS `storedbilling` (
  `item_number` int(5) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(30) NOT NULL,
  `quantity_l` float NOT NULL,
  `quantity_ml` float NOT NULL,
  `consumed_l` float NOT NULL,
  `consumed_ml` float NOT NULL,
  `remaining_l` float NOT NULL,
  `remaining_ml` float NOT NULL,
  `costperl` float NOT NULL,
  `totalbill` float NOT NULL,
  `datee` date NOT NULL,
  PRIMARY KEY (`item_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `storedbilling`
--

INSERT INTO `storedbilling` (`item_number`, `item_name`, `quantity_l`, `quantity_ml`, `consumed_l`, `consumed_ml`, `remaining_l`, `remaining_ml`, `costperl`, `totalbill`, `datee`) VALUES
(9, 'tel', 10, 0, 0, 0, 10, 0, 1, 0, '2015-02-08'),
(10, 'tel', 0, 0, 6, 0, 4, 0, 8, 0, '2015-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `storee`
--

CREATE TABLE IF NOT EXISTS `storee` (
  `item_number` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(30) NOT NULL,
  `number_baai` int(11) NOT NULL,
  `days_worked` int(11) NOT NULL,
  `perday_baai` float NOT NULL,
  `gehu_q` int(11) NOT NULL,
  `gehu_k` int(11) NOT NULL,
  `total_km` int(11) NOT NULL,
  `perkm` float NOT NULL,
  PRIMARY KEY (`item_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `storef`
--

CREATE TABLE IF NOT EXISTS `storef` (
  `sr_no` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mealstaken` float NOT NULL,
  `costpermeal` float NOT NULL,
  `totalbill` float NOT NULL,
  `datee` date NOT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `storef`
--

INSERT INTO `storef` (`sr_no`, `name`, `mealstaken`, `costpermeal`, `totalbill`, `datee`) VALUES
(1, 'Anurag', 10, 100, 1000, '0000-00-00'),
(2, 'Dhiraj', 5, 500, 2500, '0000-00-00'),
(5, 'Vinita', 10, 10, 100, '0000-00-00'),
(6, 'bbbb', 2, 10, 20, '2015-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `vegetables`
--

CREATE TABLE IF NOT EXISTS `vegetables` (
  `item_number` int(5) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `quantity_q` int(6) NOT NULL,
  `quantity_k` int(6) NOT NULL,
  `consumed_q` int(6) NOT NULL,
  `consumed_k` int(6) NOT NULL,
  `remaining_q` int(6) NOT NULL,
  `remaining_k` int(6) NOT NULL,
  `cost_perkg` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
