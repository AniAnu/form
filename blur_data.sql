-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2017 at 02:11 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blur_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `chart_js`
--

CREATE TABLE IF NOT EXISTS `chart_js` (
`id` int(11) NOT NULL,
  `labels` varchar(10) NOT NULL,
  `data` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chart_js`
--

INSERT INTO `chart_js` (`id`, `labels`, `data`) VALUES
(1, 'Sleeping', 20),
(2, 'Designing', 40),
(3, 'Coding', 5),
(4, 'Cycling', 35);

-- --------------------------------------------------------

--
-- Table structure for table `smarttable`
--

CREATE TABLE IF NOT EXISTS `smarttable` (
`id` int(11) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smarttable`
--

INSERT INTO `smarttable` (`id`, `firstName`, `lastName`, `username`, `email`, `age`) VALUES
(1, 'asd', 'asd', 'asd', 'asd@asd.com', 12),
(2, 'dfg', 'dfg', 'dfg', 'dfg@dfg.com', 25),
(3, 'qwe', 'qwe', 'qwe', 'qwe@qwe.com', 45),
(4, 'yui', 'yui', 'yui', 'yui@yui.com', 55),
(5, 'sdf', 'sdf', 'sdf', 'sdf', 23);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
`id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `group` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `name`, `status`, `group`) VALUES
(108, 'kkkkk', 2, 1),
(109, 'dfgdfgdfg', 1, 2),
(110, 'ghjghjghj', 0, 0),
(111, '456456', 1, 1),
(112, 'kkkkk', 1, 4),
(113, 'kkk', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chart_js`
--
ALTER TABLE `chart_js`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smarttable`
--
ALTER TABLE `smarttable`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chart_js`
--
ALTER TABLE `chart_js`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `smarttable`
--
ALTER TABLE `smarttable`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
