-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Generation Time: July 09, 2021 at 03:51 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spark-bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `sno` int(3) NOT NULL AUTO_INCREMENT,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Sahil', 'Pallavi', 400, '2021-07-09 00:20:45'),
(2, 'Sakshi', 'Jay', 600, '2021-07-09 00:05:20'),
(3, 'Riya', 'Nidhi', 1000, '2021-07-10 17:07:15');
(4, 'Pallavi', 'Ayush', 500, '2021-07-13 18:38:10');
(5, 'Pallavi', 'Nidhi', 400, '2021-07-13 20:45:52');
(6, 'Sakshi', 'Jay', 600, '2021-07-14 18:31:39');
(7, 'Riya', 'Nidhi', 400, '2021-07-14 20:45:17');
(8, 'Nidhi', 'Dhiraj', 500, '2021-07-15 13:08:14');
(9, 'Mansi', 'Parul', 100, '2021-07-15 15:30:48');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Pallavi', 'pallavi20@gmail.com', 49000),
(2, 'Sahil', 'sahil@gmail.com', 30000),
(3, 'Nidhi', 'nidhi30@gmail.com', 40000),
(4, 'Sakshi', 'sakshi02@gmail.com', 60000),
(5, 'Riya', 'sharma@gmail.com', 45000),
(6, 'Parul', 'parul30@gmail.com', 80000),
(7, 'Mansi', 'mansi@gmail.com', 50000),
(8, 'Jay', 'thakre@gmail.com', 43000),
(9, 'Dhiraj', 'dhiraj@gmail.com', 35550),
(10, 'Ayush', 'ayush07@gmail.com', 20000);


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;