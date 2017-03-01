-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2016 a las 16:56:35
-- Versión del servidor: 5.5.44-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `joinelderly`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(11) NOT NULL,
  `emisor` varchar(45) NOT NULL,
  `receptor` varchar(45) NOT NULL,
  `mensaje` varchar(100) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `hora` time NOT NULL,
  `valoracion` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `emisor`, `receptor`, `mensaje`, `fecha`, `hora`, `valoracion`) VALUES
(1, 'lauramore', 'josegg85', 'Me ha gustado mucho la actividad que has realizado', '10/06/2016', '17:30:00', 8),
(2, 'lauramore', 'miguelgh', 'Me hubiera gustado hacer la actividad durante mas tiempo', '20/05/2016', '19:08:00', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertas`
--

CREATE TABLE IF NOT EXISTS `ofertas` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha_inicio` varchar(100) NOT NULL,
  `fecha_final` varchar(100) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_final` time NOT NULL,
  `lugar_inicio` varchar(45) NOT NULL,
  `lugar_final` varchar(45) NOT NULL,
  `asistentes` varchar(200) NOT NULL,
  `precio` float NOT NULL,
  `latitud` float NOT NULL,
  `longitud` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ofertas`
--

INSERT INTO `ofertas` (`id`, `usuario`, `descripcion`, `fecha_inicio`, `fecha_final`, `hora_inicio`, `hora_final`, `lugar_inicio`, `lugar_final`, `asistentes`, `precio`, `latitud`, `longitud`) VALUES
(1, 'josegg85', 'Excursion a Tierra Natura', '20/05/2016', '20/05/2016', '09:00:00', '19:00:00', 'Ontinyent', 'Ontinyent', 'Paco-Miguel-yomogan', 25, 38.8175, -0.604407),
(2, 'miguelgh', 'Visita al museo botanico', '10/06/2016', '10/06/2016', '10:00:00', '13:30:00', 'Ontinyent', 'Ontinyent', 'Jose-Laura', 10, 38.8175, -0.614507),
(3, 'josegg85', 'Partida de Petanca', '15/02/2016', '15/02/2016', '09:30:00', '12:00:00', 'Ontinyent', 'Ontinyent', 'Jose-Laura', 2, 38.8119, -0.610749);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `usuario` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `nombre` varchar(45) CHARACTER SET latin1 NOT NULL,
  `apellidos` varchar(100) CHARACTER SET latin1 NOT NULL,
  `dni` varchar(9) CHARACTER SET latin1 NOT NULL,
  `password` varchar(200) CHARACTER SET latin1 NOT NULL,
  `date_birthday` varchar(45) CHARACTER SET latin1 NOT NULL,
  `tipo` varchar(45) CHARACTER SET latin1 NOT NULL,
  `bank` varchar(45) CHARACTER SET latin1 NOT NULL,
  `pais` varchar(100) CHARACTER SET latin1 NOT NULL,
  `provincia` varchar(100) CHARACTER SET latin1 NOT NULL,
  `poblacion` varchar(100) CHARACTER SET latin1 NOT NULL,
  `avatar` varchar(200) CHARACTER SET latin1 NOT NULL,
  `valoracion` float NOT NULL,
  `activado` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `email`, `nombre`, `apellidos`, `dni`, `password`, `date_birthday`, `tipo`, `bank`, `pais`, `provincia`, `poblacion`, `avatar`, `valoracion`, `activado`, `token`) VALUES
('158218454554356', 'joinelderly@gmail.com', 'JoinElderly', 'JE', '', '$2y$10$8s8AHJt2aFu4jGRvqEUmrekMyarw7degEaQ4h3emx69Ef2F27VBl6', '', 'client', '', ' ', ' ', ' ', 'http://graph.facebook.com/158218454554356/picture', 0, 1, ''),
('4702104732', '', 'JoinElderly', '', '', '$2y$10$8s8AHJt2aFu4jGRvqEUmrekMyarw7degEaQ4h3emx69Ef2F27VBl6', '', 'client', '', ' ', ' ', ' ', 'http://graph.facebook.com/4702104732/picture', 0, 1, ''),
('josegg85', '', 'jose', 'garcia', '', '', '', 'admin', '', ' ', ' ', ' ', 'https://www.gravatar.com/avatar/58039862b980afb29cdc439a2ecb486c58039862b980afb29cdc439a2ecb486c?s=400&d=identicon&r=g', 3, 1, ''),
('miguelgh', '', 'miguel', 'garcia', '', '', '', 'admin', '', ' ', ' ', ' ', 'https://www.gravatar.com/avatar/58039862b980afb29cdc439a2ecb486c58039862b980afb29cdc439a2ecb486c?s=400&d=identicon&r=g', 3, 1, ''),
('Raul', 'raulcolomer_revert@hotmail.com', 'Raul', 'Colomer', '48607190W', '$2y$10$GkUNfziurcesbp/ngH6vr.C5nDE4KYKWJNTaQpg0THgym7XeQ/.UO', '21/05/1993', 'client', '65895577889', 'ES', '46', 'Bufali', 'http://www.gravatar.com/avatar/fb4b4fea17f9e0e3a91151dd14e8f538fb4b4fea17f9e0e3a91151dd14e8f538?s=400&d=identicon&r=g', 0, 1, 'Chac929f846cd76bdc8f8f9714fc1203219'),
('Vicent', 'vicent.albo@gmail.com', 'vicent', 'albert borrell', '48607270J', '$2y$10$r71.krqgflTdO7hLNOe2i.bqEbwlbMHa5D/qd1.tvBrTpntCDShfG', '12/01/1995', 'client', '1515424554', ' ', ' ', ' ', 'http://www.gravatar.com/avatar/d41d8cd98f00b204e9800998ecf8427ed41d8cd98f00b204e9800998ecf8427e?s=400&d=identicon&r=g', 0, 1, 'Ver14a40272b4c4a9f052d3f72fc00d2f8a'),
('yomogan', 'yomogan@gmail.com', 'yomogan', 'yomogan', '48287734Q', '$2y$10$j1jmfVxBgzxdBEMpCObf0.mz6BR3tzviZ2bxH3XP5mb7gtOx2Q/4i', '05/04/1977', 'admin', '1234', ' ', ' ', ' ', 'http://www.gravatar.com/avatar/d41d8cd98f00b204e9800998ecf8427ed41d8cd98f00b204e9800998ecf8427e?s=400&d=identicon&r=g', 0, 1, 'Cha35797b26576deb2de1ad27389a484263');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
