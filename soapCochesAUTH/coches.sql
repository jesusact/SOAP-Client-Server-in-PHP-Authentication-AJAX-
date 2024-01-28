-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 16, 2023 at 11:00 AM
-- Server version: 8.0.31-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coches`
--
CREATE DATABASE IF NOT EXISTS `coches` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `coches`;

-- --------------------------------------------------------

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
CREATE TABLE `marcas` (
  `id` bigint UNSIGNED NOT NULL,
  `marca` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb3_spanish_ci DEFAULT NULL
) 

--
-- Dumping data for table `marcas`
--

INSERT INTO `marcas` (`id`, `marca`, `url`) VALUES
(1, 'Ford', 'https://youtu.be/aZqgutxMjpM'),
(2, 'Seat', 'https://youtu.be/b8gGJSJeUTQ'),
(3, 'Nissan', 'https://youtu.be/BXXkp-P20hU'),
(4, 'Audi', 'https://youtu.be/oZD2uALmvbU'),
(5, 'BMW', 'https://youtu.be/d7wj_Pm14FM'),
(6, 'Citroen', 'https://youtu.be/2CMlcDDz6Lg');

-- --------------------------------------------------------

--
-- Table structure for table `modelos`
--

DROP TABLE IF EXISTS `modelos`;
CREATE TABLE `modelos` (
  `id` bigint UNSIGNED NOT NULL,
  `marca` bigint UNSIGNED NOT NULL,
  `modelo` varchar(75) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL
) 

--
-- Dumping data for table `modelos`
--

INSERT INTO `modelos` (`id`, `marca`, `modelo`) VALUES
(1, 1, 'Ka'),
(2, 1, 'Fiesta'),
(3, 1, 'Focus'),
(4, 1, 'Kuga'),
(5, 1, 'Mondeo'),
(6, 1, 'C-Max'),
(7, 1, 'Galaxy'),
(8, 2, 'Altea'),
(9, 2, 'Arosa'),
(10, 2, 'Córdoba'),
(11, 2, 'Exeo'),
(12, 2, 'Ibiza'),
(13, 2, 'León'),
(14, 3, 'Micra'),
(15, 3, 'Note'),
(16, 3, 'Pathfinder'),
(17, 3, 'Almera'),
(18, 3, 'Qashqai'),
(19, 4, 'A1'),
(20, 4, 'A2'),
(21, 4, 'A3'),
(22, 4, 'A4'),
(23, 4, 'A5'),
(24, 4, 'A6'),
(25, 4, 'A7'),
(26, 4, 'A8'),
(27, 5, 'Serie 1'),
(28, 5, 'Serie 3'),
(29, 5, 'Serie 5'),
(30, 5, 'Serie 6'),
(31, 5, 'Serie 7'),
(32, 6, 'C2'),
(33, 6, 'C3'),
(34, 6, 'C4'),
(35, 6, 'Xsara'),
(36, 6, 'Xsara Picasso');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
