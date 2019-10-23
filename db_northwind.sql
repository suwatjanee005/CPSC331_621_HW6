-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2019 at 04:04 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_northwind`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_categoryid` int(11) DEFAULT NULL,
  `categoryname` varchar(40) DEFAULT NULL,
  `description` char(40) DEFAULT NULL,
  `picture` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(11) DEFAULT NULL,
  `companyname` varchar(40) DEFAULT NULL,
  `contactname` varchar(40) DEFAULT NULL,
  `contacttitle` varchar(40) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id_employeeid` int(11) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `birthdate` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderid` int(11) DEFAULT NULL,
  `productid` varchar(40) DEFAULT NULL,
  `unitprice` char(40) DEFAULT NULL,
  `quantity` char(40) DEFAULT NULL,
  `discount` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) DEFAULT NULL,
  `customerid` char(40) DEFAULT NULL,
  `employeeid` char(40) DEFAULT NULL,
  `orderdate` varchar(40) DEFAULT NULL,
  `requireddate` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_productid` int(11) DEFAULT NULL,
  `productname` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `supplierid` char(40) DEFAULT NULL,
  `categoryid` char(40) DEFAULT NULL,
  `quantityperunit` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_productid`, `productname`, `supplierid`, `categoryid`, `quantityperunit`) VALUES
(1, 'ขนม', '01', '001', '100');

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `shipperid` int(11) DEFAULT NULL,
  `companyname` varchar(40) DEFAULT NULL,
  `phone` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierid` int(11) DEFAULT NULL,
  `companyname` varchar(40) DEFAULT NULL,
  `contactname` char(40) DEFAULT NULL,
  `contacttitle` char(40) DEFAULT NULL,
  `address` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
