-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2018 at 10:27 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--
create database test;
use test;

CREATE TABLE `books` (
  `isbn` int(10) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `pub` varchar(10) DEFAULT NULL,
  `cat` varchar(5) DEFAULT NULL,
  `price` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`isbn`, `title`, `author`, `pub`, `cat`, `price`) VALUES
(1, 'Java Programming', 'Manish Hurkat', 'NIIT', 'Java', 1000),
(2, 'Introduction .Net Programming', 'Akhelesh Agarwal', 'NIIT', '.NET', 500),
(3, 'Introduction to Oracle', 'Sumen Dey', 'NIIT', 'Oracl', 600);

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `ordid` int(5) NOT NULL,
  `isbn` int(10) NOT NULL,
  `price` int(5) DEFAULT NULL,
  `qty` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordid` int(5) NOT NULL,
  `userid` int(5) DEFAULT NULL,
  `orddate` timestamp NULL DEFAULT NULL,
  `totamt` int(6) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `isbn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ordid`, `userid`, `orddate`, `totamt`, `status`, `isbn`) VALUES
(1, 2, '2018-11-20 18:30:00', 500, 'A', 0),
(2, 2, NULL, 500, 'a', 0),
(3, 2, '2018-11-20 18:30:00', 600, 'a', 0),
(4, 2, '2018-11-20 18:30:00', 500, 'a', 0),
(5, 2, '2018-11-20 18:30:00', 500, 'a', 0),
(6, 2, '2018-11-20 18:30:00', 500, 'a', 0),
(7, 2, '2018-11-20 18:30:00', 500, 'a', 3),
(8, 2, '2018-11-20 18:30:00', 500, 'a', 3),
(9, 2, '2018-11-21 18:30:00', 400, 'a', 2),
(10, 2, '2018-11-21 18:30:00', 400, 'a', 2),
(11, 2, '2018-11-21 18:30:00', 450, 'a', 2),
(12, 2, '2018-11-21 20:07:04', 12, 'a', 2),
(13, 2, '2018-11-21 20:20:58', 450, 'a', 2),
(14, 2, '2018-11-21 20:22:08', 450, 'a', 2),
(15, 2, '2018-11-21 20:23:41', 450, 'a', 2),
(16, 2, '2018-11-21 20:29:23', 675, 'a', 2),
(17, 2, '2018-11-21 20:40:27', 450, 'a', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(5) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pwd` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `uname`, `pwd`, `email`, `address`, `phone`) VALUES
(2, 'Rk', '12345', 'rinkalsingh400@gmail.com', 'dfdf', '9999999999'),
(4, 'pk', '23', 'rinkalsingh0@gmail.com', 'dfdf', '9999999999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`ordid`,`isbn`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `uname` (`uname`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ordid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
