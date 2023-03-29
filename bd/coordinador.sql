-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 11:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myuca`
--

-- --------------------------------------------------------

--
-- Table structure for table `coordinador`
--

CREATE TABLE `coordinador` (
  `idC` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `fechaNac` date NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `facultad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coordinador`
--

INSERT INTO `coordinador` (`idC`, `nombres`, `apellidos`, `fechaNac`, `titulo`, `email`, `facultad`) VALUES
(1, 'Juan', 'Gomez', '1980-01-15', 'Lic. en Ciencias de la Comp.', 'jgomez@ejemplo.com', 'Facultad de Ciencias Exactas'),
(2, 'Ana', 'Perez', '1985-05-20', 'MSc', 'aperez@ejemplo.com', 'Facultad de Ciencias Biologicas'),
(3, 'Luis', 'Hernandez', '1978-12-10', 'Ing. en Sistemas Comput.', 'lhernandez@ejemplo.com', 'Facultad de Ingenieria'),
(4, 'Maria', 'Torres', '1990-06-05', 'Lic. en Informatica', 'mtorres@ejemplo.com', 'Facultad de Ciencias Exactas'),
(5, 'Pedro', 'Lopez', '1983-11-22', 'Ing. en Computacion', 'plopez@ejemplo.com', 'Facultad de Ingenieria'),
(6, 'Lucia', 'Garcia', '1988-09-03', 'Lic. en Sistemas de Informacion', 'lgarcia@ejemplo.com', 'Facultad de Ciencias Exactas'),
(7, 'Julio', 'Ramirez', '1975-04-12', 'Ing. en Informatica', 'jramirez@ejemplo.com', 'Facultad de Ingenieria'),
(8, 'Monica', 'Martinez', '1987-07-18', 'Lic. en Ciencias de la Comp.', 'mmartinez@ejemplo.com', 'Facultad de Ciencias Exactas'),
(9, 'David', 'Gutierrez', '1991-02-28', 'Ing. en Sistemas Comput.', 'dgutierrez@ejemplo.com', 'Facultad de Ingenieria'),
(10, 'Ilan', 'Ruiz', '2003-07-31', 'Ing. en Sistemas de Comput.', 'ilan@gmail.com', 'Facultad de Ingenieria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coordinador`
--
ALTER TABLE `coordinador`
  ADD PRIMARY KEY (`idC`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coordinador`
--
ALTER TABLE `coordinador`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
