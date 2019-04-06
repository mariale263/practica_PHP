-- phpMyAdmin SQL Dump
-- version 3.5.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 22, 2013 at 12:40 
-- Server version: 5.5.23
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siteeu_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `id_provincia` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`Id`, `Nombre`, `id_provincia`) VALUES
(1, 'Sergio', 10),
(2, 'Juan', 20),
(3, 'Edu', 35),
(4, 'Perla', 47),
(5, 'Silvia', 11),
(6, 'Almudena', 26);

-- --------------------------------------------------------

--
-- Table structure for table `asignaturas`
--

CREATE TABLE IF NOT EXISTS `asignaturas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `asignaturas`
--

INSERT INTO `asignaturas` (`Id`, `nombre`) VALUES
(1, 'Matemáticas'),
(2, 'Religión'),
(3, 'Geología'),
(4, 'Química'),
(5, 'Inglés');

-- --------------------------------------------------------

--
-- Table structure for table `examenes`
--

CREATE TABLE IF NOT EXISTS `examenes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `id_asignatura` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `examenes`
--

INSERT INTO `examenes` (`Id`, `id_asignatura`, `nota`, `id_alumno`) VALUES
(1, 1, 6, 1),
(3, 1, 4, 3),
(4, 1, 8, 4),
(5, 1, 2, 5),
(6, 2, 4, 1),
(7, 2, 4, 2),
(8, 2, 7, 3),
(9, 2, 8, 4),
(11, 3, 6, 1),
(13, 3, 6, 3),
(14, 3, 5, 4),
(15, 3, 5, 5),
(16, 4, 2, 1),
(17, 4, 3, 2),
(18, 4, 8, 3),
(19, 4, 10, 4),
(21, 5, 8, 1),
(23, 5, 7, 3),
(24, 5, 6, 4),
(26, 1, 2, 6),
(27, 2, 4, 6),
(28, 3, 4, 6),
(29, 4, 3, 6),
(30, 5, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `provincias`
--

CREATE TABLE IF NOT EXISTS `provincias` (
  `Id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  KEY `id` (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=53 ;

--
-- Dumping data for table `provincias`
--

INSERT INTO `provincias` (`Id`, `nombre`) VALUES
(1, 'Álava'),
(2, 'Albacete'),
(3, 'Alicante'),
(4, 'Almería'),
(5, 'Ávila'),
(6, 'Badajoz'),
(7, 'Baleares (Illes)'),
(8, 'Barcelona'),
(9, 'Burgos'),
(10, 'Cáceres'),
(11, 'Cádiz'),
(12, 'Castellón'),
(13, 'Ciudad Real'),
(14, 'Córdoba'),
(15, 'A Coruña'),
(16, 'Cuenca'),
(17, 'Girona'),
(18, 'Granada'),
(19, 'Guadalajara'),
(20, 'Guipúzcoa'),
(21, 'Huelva'),
(22, 'Huesca'),
(23, 'Jaén'),
(24, 'León'),
(25, 'Lleida'),
(26, 'La Rioja'),
(27, 'Lugo'),
(28, 'Madrid'),
(29, 'Málaga'),
(30, 'Murcia'),
(31, 'Navarra'),
(32, 'Ourense'),
(33, 'Asturias'),
(34, 'Palencia'),
(35, 'Las Palmas'),
(36, 'Pontevedra'),
(37, 'Salamanca'),
(38, 'Santa Cruz de Tenerife'),
(39, 'Cantabria'),
(40, 'Segovia'),
(41, 'Sevilla'),
(42, 'Soria'),
(43, 'Tarragona'),
(44, 'Teruel'),
(45, 'Toledo'),
(46, 'Valencia'),
(47, 'Valladolid'),
(48, 'Vizcaya'),
(49, 'Zamora'),
(50, 'Zaragoza'),
(51, 'Ceuta'),
(52, 'Melilla');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
