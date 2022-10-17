-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2022 a las 01:42:57
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
  `nombre` varchar(50) NOT NULL,
  `anio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `albums_db`
--

INSERT INTO `albums_db` (`id`, `artista`, `nombre`, `anio`) VALUES
(13, 'Duki', 'Desde el fin del mundo', 1988),
(14, 'The Beatles', 'Abbey road', 1983);

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
-- Volcado de datos para la tabla `canciones_db`
--

INSERT INTO `canciones_db` (`id`, `genero`, `anio`, `banda`, `album`, `nombre`) VALUES
(13, 'Trap', 1988, 'Duki', 13, 'No me llores'),
(14, 'Rock', 1983, 'Cerati', 14, 'Let it be');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_db`
--

CREATE TABLE `users_db` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contraseña` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users_db`
--

INSERT INTO `users_db` (`id`, `email`, `contraseña`) VALUES
(1, 'agustinperez@hotmail.com', '$2a$12$SSx7lQqQhQmECchd243o.u7x1zDbP4QhogISXNr74OKm/G3wFNaeG');

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
-- Indices de la tabla `users_db`
--
ALTER TABLE `users_db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albums_db`
--
ALTER TABLE `albums_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `canciones_db`
--
ALTER TABLE `canciones_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `users_db`
--
ALTER TABLE `users_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canciones_db`
--
ALTER TABLE `canciones_db`
  ADD CONSTRAINT `canciones_db_ibfk_1` FOREIGN KEY (`album`) REFERENCES `albums_db` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
