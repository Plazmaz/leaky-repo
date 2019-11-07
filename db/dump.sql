-- MySQL dump 10.13  Distrib 8.0.1, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: main
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `flag` tinyint(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `flag`) VALUES
(1, 'rogers63', '$2y$12$s.YfVZdfvAuO/Iz6fte5iO..ZbbEgreZnDcYOGvX4NGJskYQIstcG', 1),
(2, 'mike28', '$2y$12$Sq//4hEpn1z91c3I/iU67.rqaHNtD3ucwG0Ncx7vOsHST4Jsr2Q0C', 0),
(3, 'rivera92', '$2y$12$3iskP41QVYgh2GFesX2Rpe0DstoL9GpIsvYxM4VI24jcILuCha3O2', 1),
(4, 'ross95', '$2y$12$hnktY9dEP/LexZjZ5b9B7ubzgxjO2393dWDaregvwPPaiRicOYkpu', 1),
(5, 'paul85', '$2y$12$M593ZP8u9pOnJiBIUbyW1.r8KfCy8uv9UCgDlX2oj3OtHmibEsQie', 1),
(6, 'smith34', '$2y$12$GEu9AWgT/Jf9Kgj/WEUanOkoa5OBC6W4cPkGeuVyROcS9T1U6orX.', 0),
(7, 'james84', '$2y$12$hjrJNp/UijB4YKg5rMhDeOoqUT5Oe2T7pTfxCEgyfgYtrHC5ph36W', 0),
(8, 'daniel53', '$2y$12$lipAFqG0QyyYKa.S16oTNOdFgkr3svEUx7JOl1HYU4m03oYFq89Uq', 1),
(9, 'brooks80', '$2y$12$/jJGIYh9wizWMFIcu79TEucXzYtvRdn3YxUpGUKnoZT1B6Gv2taSm', 0),
(10, 'morgan65', '$2y$12$kZ55ticjwXD9d/A5o3y8..fA7/1qycT2befZ4QrCjJCfrxk415gUy', 1);
