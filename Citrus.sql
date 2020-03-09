-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2020 at 11:20 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Citrus`
--
CREATE DATABASE IF NOT EXISTS Citrus;

USE Citrus;

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE `Comments` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Approved` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Comments`
--

INSERT INTO `Comments` (`ID`, `Name`, `Email`, `Comment`, `Approved`) VALUES
(1, 'John Doe', 'john.doe@gmail.com', 'This is such a lovely company.', 1),
(2, 'Jane Doe', 'jane.doe@gmail.com', 'Great company! They have the best citruses :)', 1),
(3, 'Rob Smith', 'rob22@gmail.com', 'Unpleasant staff...', 0),
(18, 'Evan Snow', 'evan@gmail.com', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, expedita!', 1),
(22, 'Tim Philips', 'timPhilips@gmail.com', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, expedita!', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `ID` int(11) NOT NULL,
  `Image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`ID`, `Image`, `Title`, `Description`) VALUES
(1, 'lemon.jpg', 'Lemon', 'Lemony lemon'),
(2, 'orange.jpg', 'Orange', 'Beautiful orange'),
(3, 'yellowGrapefruit.png', 'Yellow Grapefruit', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sed, illum?'),
(4, 'clementine.jpg', 'Clementine', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sed, illum?'),
(5, 'grapefruit.jpeg', 'Grapefruit', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sed, illum?'),
(6, 'keyLime.jpg', 'Lime', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sed, illum?'),
(7, 'kumquat.jpg', 'Kumquat', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sed, illum?'),
(8, 'mandarinOrange.jpg', 'Orange Mandarin', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sed, illum?'),
(9, 'pomelo.jpg', 'Pomelo', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sed, illum?');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `ID` int(11) NOT NULL,
  `Username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Type` enum('Admin','User') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID`, `Username`, `Password`, `Type`) VALUES
(1, 'admin', 'admin', 'Admin'),
(2, 'user', 'user', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Comments`
--
ALTER TABLE `Comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
