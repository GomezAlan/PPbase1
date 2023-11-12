-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2019 a las 00:02:01
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ceprocom_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE `participante` (
  `idparticipante` int(11) NOT NULL,
  `ci` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellidopaterno` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellidomaterno` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `whatsapp` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `telefonofijo` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `nit` varchar(15) COLLATE latin1_spanish_ci DEFAULT NULL,
  `empresa` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `teloficina` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rubro` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cargo` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sexo` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nacionalidad` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `profesion` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ciudad` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `pais` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sitioweb` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `facebook` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `skype` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `twitter` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `linkedin` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `medioatencion` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fasecrm` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `responsableacargo` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `observaciones` text COLLATE latin1_spanish_ci,
  `estado` tinyint(1) DEFAULT NULL,
  `foto` longtext COLLATE latin1_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`idparticipante`, `ci`, `nombre`, `apellidopaterno`, `apellidomaterno`, `whatsapp`, `telefonofijo`, `direccion`, `fechanacimiento`, `nit`, `empresa`, `teloficina`, `rubro`, `email`, `cargo`, `sexo`, `nacionalidad`, `profesion`, `ciudad`, `pais`, `sitioweb`, `facebook`, `skype`, `twitter`, `linkedin`, `medioatencion`, `fasecrm`, `responsableacargo`, `observaciones`, `estado`, `foto`) VALUES
(1, '9999999', 'Pepe', 'Perez', 'Gonzales', '78998790', '44444444', 'Av. Balnco Galindo', '2019-04-12', '55555555', 'Universidad Salesiana de Bolivia', '79390907', '', 'garyCespedesH@gmail.com', '', 'hombre', 'Bolivia', '', 'quillacollo', 'Bolivia', '', '', '', '', '', 'kakak', 'hola', 'kakak', '', 1, '../../assets/img/man.png'),
(2, '84949', 'Alejandro fernando', 'tardio', 'peÃ±a', '99999999', '99090909', 'Av. America', '2013-12-15', '84848', 'Universidad Salesiana de Bolivia', '79390907', '', 'garyCespedesH@gmail.com', '', 'hombre', 'Bolivia', '', 'quillacollo', 'Bolivia', '', '', '', '', '', '4884', 'dfghjk', '8492', '', 1, '../../assets/img/people-2585733_1920.jpg'),
(3, '77777777', 'Camila', 'Ferrufino', 'Prieto', '9999985154', '54454', '', '2019-05-22', '2738286', 'Universidad Salesiana de Bolivia', '79390907', '', 'garyCespedesH@gmail.com', '', 'mujer', '', '', '', '', '', '', '', '', '', 'facebook', 'dfghjk', 'juan', '', 1, '../../assets/img/hijab-3064633_1920.jpg'),
(4, '919373', 'juana', 'perez', 'pedrazas', '9999999', '5552453', 'Av. Capitan Ustariz', '2023-02-10', '73921', '', '', '', 'sjs@jsj.com', '', 'mujer', '', '', '', '', '', '', '', '', '', 'twitter', 'fase inicial', 'juan', '', 1, '../../assets/img/woman.png'),
(5, '45557773', 'gabriel', 'cespedes', 'cespedes', '79390907', '79390907', 'calixto peÃ±aloza', '2019-05-09', '2323032021', 'Universidad Salesiana de Bolivia', '79390907', '', 'garyCespedesH@gmail.com', '', 'hombre', 'Bolivia', '', 'quillacollo', 'Bolivia', '', '', '', '', '', 'facebook', 'fase final', 'gary', '', 1, '../../assets/img/adult-2449725_1920.jpg'),
(7, '8059278', 'gloria', 'trevi', 'peÃ±a', '78428832', '847474', 'jsdajj', '1989-06-14', '848483', 'Universidad Salesiana de Bolivia', '', '', 'garyCespedesH@gmail.com', '', 'mujer', 'Bolivia', '', 'quillacollo', 'Bolivia', '', '', '', '', '', 'facebook', 'fase inicial', 'andrea', '', 1, '../../assets/img/user7-128x128.jpg'),
(8, '8439439', 'orlando', 'alvarez', 'teran', '681939', '548228', 'calixto peñaloza', '2019-04-29', '8428824', 'Universidad Salesiana de Bolivia', '', '', 'garyCespedesH@gmail.com', '', 'hombre', 'Bolivia', '', 'quillacollo', 'Bolivia', '', '', '', '', '', 'youtube', 'fase inicial', 'juan', '', 1, '../../assets/img/man.png'),
(9, '638292', 'valeria', 'campos', 'teran', '847382', '4611818', '', '1980-07-31', '782282', '', '', '', 'vale@gmail.com', '', 'mujer', '', '', '', '', '', 'vale', '', '', '', 'facebook', 'fase inicial', 'juan', '', 1, '../../assets/img/girl-919048_1920.jpg'),
(10, '838438', 'feranando', 'torrico', 'caceres', '76117192', '418191', '', '1987-04-29', '64722', '', '', '', 'gahah@jajaa.com', '', 'hombre', '', '', '', '', '', '', 'fernando.1243', '@fernando', '', 'whatsapp', 'fase inicial', 'alan', '', 1, '../../assets/img/child-817373_1920.jpg'),
(11, '232313', 'maria', 'lopez', 'montalvo', '71812919', '48828281', '', '1891-05-02', '38282823', '', '', '', 'naria1@gmail.com', '', 'mujer', '', '', '', '', '', '', '', '', '', 'facebook', 'dfghjk', 'juan', '', 1, '../../assets/img/woman.png'),
(12, '7237237', 'celeste', 'caceres', 'alemendras', '2328832', '32823823', '', '1929-05-02', '238348', '', '', '', 'celeste21@gmail.com', '', 'mujer', '', '', '', '', '', 'celeste caceres', '', '', '', 'facebook', 'fase inicial', 'juan', '', 1, '../../assets/img/woman.png'),
(13, '73917292', 'jhon', 'aguilar', 'agreda', '74838382', '28328328', '', '1992-05-02', '438282', '', '', '', 'jhoncito@hotmail.com', '', 'hombre', '', '', '', '', '', 'jhon forever', '', '', '', 'whatsapp', 'fase inicial', 'gary', '', 1, '../../assets/img/man.png'),
(14, '834882', 'juan', 'perez', 'perez', '7828282', '4681919', 'calixto peñaloza', '1950-05-02', '74373818', 'Universidad Salesiana de Bolivia', '', '', 'garyCespedesH@gmail.com', '', 'hombre', 'Bolivia', '', 'quillacollo', 'Bolivia', '', '', '', '@JuanPerez', '', 'twitter', 'fase inicial', 'juan', '', 1, '../../assets/img/man.png'),
(16, '74883', 'hernan', 'almendras', 'usuas', '848384', '483848', 'calixto peÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â±aloza', '2019-05-02', '8438438', 'Universidad Salesiana de Bolivia', '', '', 'garyCespedesH@gmail.com', '', 'hombre', 'Bolivia', '', 'quillacollo', 'Bolivia', '', '', '', '', '', 'facebook', 'fase inicial', 'juan', '', 0, '../../assets/img/child-817373_1920.jpg'),
(17, '748428', 'gary', 'cespedes', 'cespedes', '79390907', '79390907', 'calixto peÃ±aloza', '2019-05-20', '432335', 'Universidad Salesiana de Bolivia', '79390907', '', 'garyCespedesH@gmail.com', '', 'hombre', 'Bolivia', '', 'quillacollo', 'Bolivia', '', '', '', '', '', 'facebook', 'fase inicial', 'juan', '', 1, '../../assets/img/adult-2449725_1920.jpg'),
(18, '74883', 'vero', 'padilla', 'guzman', '79390907', '79390907', 'calixto peÃ±aloza', '2019-05-20', '9929239', 'Universidad Salesiana de Bolivia', '79390907', '', 'garyCespedesH@gmail.com', '', 'hombre', 'Bolivia', '', 'quillacollo', 'Bolivia', '', '', '', '', '', 'facebook', 'fase inicial', 'juan', '', 1, '../../assets/img/girl-919048_1920.jpg'),
(19, '93929', 'hilda', 'quispe', 'jaja', '79390907', '79390907', 'calixto peÃ±aloza', '2019-05-20', '23230323', 'Universidad Salesiana de Bolivia', '79390907', '', 'garyCespedesH@gmail.com', '', 'mujer', 'Bolivia', '', 'quillacollo', 'Bolivia', '', '', '', '', '', 'facebook', 'fase inicial', 'juan', '', 1, '../../assets/img/smile-2072907_1920.jpg'),
(20, '74883', 'valeria', 'sajdja', 'asjajs', '79390907', '79390907', 'calixto peÃ±aloza', '2019-05-21', '19', 'Universidad Salesiana de Bolivia', '79390907', '', 'garyCespedesH@gmail.com', '', 'mujer', 'Bolivia', '', 'quillacollo', 'Bolivia', '', '', '', '', '', 'facebook', 'fase inicial', 'juan', '', 1, '../../assets/img/beanie-2562646_1920.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`idparticipante`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `participante`
--
ALTER TABLE `participante`
  MODIFY `idparticipante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
