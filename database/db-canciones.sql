-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2022 a las 18:36:10
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db-canciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums_db`
--

CREATE TABLE `albums_db` (
  `id` int(11) NOT NULL,
  `artista` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `año` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones_db`
--

CREATE TABLE `canciones_db` (
  `id` int(11) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `anio` int(11) NOT NULL,
  `banda` varchar(30) NOT NULL,
  `album` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albums_db`
--
ALTER TABLE `albums_db`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones_db`
--
ALTER TABLE `canciones_db`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album` (`album`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albums_db`
--
ALTER TABLE `albums_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones_db`
--
ALTER TABLE `canciones_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `albums_db`
--
ALTER TABLE `albums_db`
  ADD CONSTRAINT `albums_db_ibfk_1` FOREIGN KEY (`id`) REFERENCES `canciones_db` (`album`);

--
-- Filtros para la tabla `canciones_db`
--
ALTER TABLE `canciones_db`
  ADD CONSTRAINT `canciones_db_ibfk_1` FOREIGN KEY (`album`) REFERENCES `albums_db` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
