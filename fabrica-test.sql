-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 04-03-2021 a las 12:40:49
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fabrica-test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ajustes_inventario`
--

DROP TABLE IF EXISTS `ajustes_inventario`;
CREATE TABLE IF NOT EXISTS `ajustes_inventario` (
  `id` int(11) NOT NULL,
  `motivo` int(11) DEFAULT NULL,
  `id_usuario_reg` int(11) DEFAULT NULL,
  `fecha_reg` datetime DEFAULT NULL,
  `anulado` tinyint(4) DEFAULT NULL,
  `id_usuario_baja` int(11) DEFAULT NULL,
  `fecha_baja` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ajustes_inventarios`
--

DROP TABLE IF EXISTS `ajustes_inventarios`;
CREATE TABLE IF NOT EXISTS `ajustes_inventarios` (
  `id_ajuste` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `motivo` varchar(45) NOT NULL,
  `descripcion` text,
  `id_usuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ajuste`),
  KEY `ajustesinventarios_id_usuario_idx` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ajustes_inventarios`
--

INSERT INTO `ajustes_inventarios` (`id_ajuste`, `tipo`, `motivo`, `descripcion`, `id_usuario`, `fecha`) VALUES
(1, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2020-06-09 23:48:13'),
(2, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2020-06-09 23:50:29'),
(3, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2020-06-09 23:54:03'),
(4, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2020-06-12 14:29:27'),
(5, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2020-06-12 14:31:17'),
(6, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2020-06-15 14:22:31'),
(7, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2020-06-15 14:25:41'),
(8, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2020-06-15 14:26:02'),
(9, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2020-06-17 19:59:51'),
(10, 'Insumos', 'Ajuste Stock', 'DescribaAjuste actualizado al 12/6 junto a ordenes de produccion.', 4, '2020-06-17 20:05:11'),
(11, 'Insumos', 'Ajuste Stock', 'ajuste realizado para actualizar stock al 12/6 junto a ordenes de produccion', 4, '2020-06-17 20:08:24'),
(12, 'Insumos', 'Ajuste Stock', 'Se ajusta stock para emision de OP Salame Iberico el cual se confeccionara con hilo amarillo y rojo.', 4, '2020-06-24 07:06:06'),
(13, 'Insumos', 'Ajuste Stock', ' Se ajusta stock para emision de OP Salame Iberico el cual se confeccionara con hilo amarillo y rojo.', 4, '2020-06-24 07:18:00'),
(14, 'Insumos', 'Ajuste Stock', 'Se ajusta stock por defecto en carga de hilos compra -Shorton - al no indicar metros corrigiendo carga por numero de bobinas. Se ajusta metros de red bondiola (corregir en receta)', 4, '2020-06-24 19:57:13'),
(15, 'Insumos', 'Ajuste Stock', 'Se ajusta stock por defecto en carga de existencia producto vino Bco dulce.', 4, '2020-06-30 15:21:12'),
(16, 'Insumos', 'Ajuste Stock', 'SE AJUSTA STOCK  POR DEFECTO PARA OP NRO 125', 4, '2020-07-07 14:21:41'),
(17, 'Insumos', 'Ajuste Stock', 'Se ajusta stock debido a diferencia en red de Jamon', 4, '2020-07-23 03:02:42'),
(18, 'Insumos', 'Ajuste Stock', 'AJUSTE REALIZADO POR DIFERENCIAS ENTRE LO UTILIZADO Y LO INDICADO EN OP.', 4, '2020-08-06 02:35:51'),
(19, 'Insumos', 'Ajuste Stock', 'AJUSTE DE BOLSAS Y ETIQUETAS (CELSO MARCOS)', 4, '2020-08-09 14:03:23'),
(20, 'Carnes', 'Ajuste Stock', 'EXEDENTE DE OP', 4, '2020-08-11 10:04:54'),
(21, 'Carnes', 'Ajuste Stock', 'EXEDENTES OP', 4, '2020-08-11 10:06:57'),
(22, 'Carnes', 'Ajuste Stock', 'EXEDENTES OP', 4, '2020-08-11 10:08:11'),
(23, 'Carnes', 'Ajuste Stock', 'EXEDENTES OP', 4, '2020-08-11 10:08:54'),
(24, 'Carnes', 'Ajuste Stock', 'EXEDENTES OP', 4, '2020-08-11 10:09:30'),
(25, 'Insumos', 'Ajuste Stock', 'SE AJUSTA STOCK PARA PRODUCCION DE PARRILLORO LOTE NRO 50, RECETA CON DEFECTO VINO BLANCO (NO DULCE)', 4, '2020-09-08 19:53:15'),
(26, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2020-10-03 06:10:08'),
(27, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2020-10-03 06:20:26'),
(28, 'Insumos', 'Ajuste Stock', 'DescribaAjuste de bolsas por envasado de productos ', 4, '2020-12-04 12:15:14'),
(29, 'Insumos', 'Ajuste Stock', 'DescribaConteo de trileros, 15 triperos dobles', 4, '2020-12-04 12:16:52'),
(30, 'Carnes', 'Ajuste Stock', 'DescribaSE AJUSTA STOCK PARA CONTROL PRODUCCION 2021', 4, '2021-01-05 12:10:56'),
(31, 'Carnes', 'Ajuste Stock', 'AJUSTE A FIN DE CONTROLAR PRODUCCION 2021', 4, '2021-01-05 12:11:58'),
(32, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2021-01-07 12:27:33'),
(33, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2021-01-26 18:42:38'),
(34, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2021-01-26 18:43:16'),
(35, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2021-01-26 18:45:18'),
(36, 'Insumos', 'Ajuste Stock', 'DescribaAJUSTE DE PIMIENTA BLANCA PARTIDA A STOCK ORIGINAL.', 4, '2021-02-04 02:59:11'),
(37, 'Insumos', 'Ajuste Stock', 'Describa', 4, '2021-02-04 12:06:17'),
(38, 'Insumos', 'Ajuste Stock', 'AJUSTE POR ERROR EN RECETA SALAME ESPECIAL. SOLICITA VINO BLANCO (NO DULCE)', 4, '2021-03-01 19:16:26'),
(39, 'Carnes', 'Ajuste Stock', 'DescribaAJUSTE DE BONDIOLAS POR CONSUMO FRESCO', 4, '2021-03-01 19:26:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carnes_mov`
--

DROP TABLE IF EXISTS `carnes_mov`;
CREATE TABLE IF NOT EXISTS `carnes_mov` (
  `id_movimiento` int(11) NOT NULL AUTO_INCREMENT,
  `id_carne` int(11) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `id_desposte` int(11) NOT NULL,
  `cantidad` decimal(10,3) NOT NULL,
  `id_ordenprod` int(11) DEFAULT NULL,
  `id_decomiso` int(11) DEFAULT NULL,
  `id_ajuste_stock` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_movimiento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_movimiento`),
  KEY `id_carne_mov_carne_idx` (`id_carne`),
  KEY `id_cuenta_mov_carne_idx` (`id_cuenta`),
  KEY `id_usuario_mov_carne_idx` (`id_usuario`),
  KEY `id_desposte_mov_carne_idx` (`id_desposte`),
  KEY `id_ordenprod_mov_carnes_idx` (`id_ordenprod`),
  KEY `id_decomiso_mov_carne_idx` (`id_decomiso`),
  KEY `id_ajuste_mov_carne_idx` (`id_ajuste_stock`)
) ENGINE=InnoDB AUTO_INCREMENT=1336 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carnes_mov`
--

INSERT INTO `carnes_mov` (`id_movimiento`, `id_carne`, `id_cuenta`, `id_desposte`, `cantidad`, `id_ordenprod`, `id_decomiso`, `id_ajuste_stock`, `id_usuario`, `fecha_movimiento`, `descripcion`) VALUES
(1, 1, 1, 1, '56.000', NULL, NULL, NULL, 2, '2020-04-14 14:47:46', NULL),
(2, 2, 1, 1, '50.500', NULL, NULL, NULL, 2, '2020-04-14 14:47:46', NULL),
(3, 3, 1, 1, '12.000', NULL, NULL, NULL, 2, '2020-04-14 14:47:46', NULL),
(4, 4, 1, 1, '15.500', NULL, NULL, NULL, 2, '2020-04-14 14:47:46', NULL),
(5, 5, 1, 1, '23.800', NULL, NULL, NULL, 2, '2020-04-14 14:47:46', NULL),
(6, 7, 1, 1, '9.700', NULL, NULL, NULL, 2, '2020-04-14 14:47:46', NULL),
(7, 12, 1, 1, '30.000', NULL, NULL, NULL, 2, '2020-04-14 14:47:46', NULL),
(8, 13, 1, 1, '5.000', NULL, NULL, NULL, 2, '2020-04-14 14:47:46', NULL),
(9, 14, 1, 1, '5.500', NULL, NULL, NULL, 2, '2020-04-14 14:47:46', NULL),
(10, 15, 1, 1, '30.000', NULL, NULL, NULL, 2, '2020-04-14 14:47:46', NULL),
(11, 1, 1, 2, '56.000', NULL, NULL, NULL, 2, '2020-04-14 14:47:53', NULL),
(12, 2, 1, 2, '50.500', NULL, NULL, NULL, 2, '2020-04-14 14:47:53', NULL),
(13, 3, 1, 2, '12.000', NULL, NULL, NULL, 2, '2020-04-14 14:47:53', NULL),
(14, 4, 1, 2, '15.500', NULL, NULL, NULL, 2, '2020-04-14 14:47:53', NULL),
(15, 5, 1, 2, '23.800', NULL, NULL, NULL, 2, '2020-04-14 14:47:53', NULL),
(16, 7, 1, 2, '9.700', NULL, NULL, NULL, 2, '2020-04-14 14:47:53', NULL),
(17, 12, 1, 2, '30.000', NULL, NULL, NULL, 2, '2020-04-14 14:47:53', NULL),
(18, 13, 1, 2, '5.000', NULL, NULL, NULL, 2, '2020-04-14 14:47:53', NULL),
(19, 14, 1, 2, '5.500', NULL, NULL, NULL, 2, '2020-04-14 14:47:53', NULL),
(20, 15, 1, 2, '30.000', NULL, NULL, NULL, 2, '2020-04-14 14:47:53', NULL),
(21, 1, 1, 3, '56.000', NULL, NULL, NULL, 2, '2020-04-14 14:48:05', NULL),
(22, 2, 1, 3, '50.500', NULL, NULL, NULL, 2, '2020-04-14 14:48:05', NULL),
(23, 3, 1, 3, '12.000', NULL, NULL, NULL, 2, '2020-04-14 14:48:05', NULL),
(24, 4, 1, 3, '15.500', NULL, NULL, NULL, 2, '2020-04-14 14:48:05', NULL),
(25, 5, 1, 3, '23.800', NULL, NULL, NULL, 2, '2020-04-14 14:48:05', NULL),
(26, 7, 1, 3, '9.700', NULL, NULL, NULL, 2, '2020-04-14 14:48:05', NULL),
(27, 12, 1, 3, '30.000', NULL, NULL, NULL, 2, '2020-04-14 14:48:05', NULL),
(28, 13, 1, 3, '5.000', NULL, NULL, NULL, 2, '2020-04-14 14:48:05', NULL),
(29, 14, 1, 3, '5.500', NULL, NULL, NULL, 2, '2020-04-14 14:48:05', NULL),
(30, 15, 1, 3, '30.000', NULL, NULL, NULL, 2, '2020-04-14 14:48:05', NULL),
(31, 1, 1, 4, '56.000', NULL, NULL, NULL, 2, '2020-04-14 14:48:06', NULL),
(32, 2, 1, 4, '50.500', NULL, NULL, NULL, 2, '2020-04-14 14:48:06', NULL),
(33, 3, 1, 4, '12.000', NULL, NULL, NULL, 2, '2020-04-14 14:48:06', NULL),
(34, 4, 1, 4, '15.500', NULL, NULL, NULL, 2, '2020-04-14 14:48:06', NULL),
(35, 5, 1, 4, '23.800', NULL, NULL, NULL, 2, '2020-04-14 14:48:07', NULL),
(36, 7, 1, 4, '9.700', NULL, NULL, NULL, 2, '2020-04-14 14:48:07', NULL),
(37, 12, 1, 4, '30.000', NULL, NULL, NULL, 2, '2020-04-14 14:48:07', NULL),
(38, 13, 1, 4, '5.000', NULL, NULL, NULL, 2, '2020-04-14 14:48:07', NULL),
(39, 14, 1, 4, '5.500', NULL, NULL, NULL, 2, '2020-04-14 14:48:07', NULL),
(40, 15, 1, 4, '30.000', NULL, NULL, NULL, 2, '2020-04-14 14:48:07', NULL),
(41, 1, 1, 5, '56.000', NULL, NULL, NULL, 2, '2020-04-14 14:57:11', NULL),
(42, 2, 1, 5, '50.500', NULL, NULL, NULL, 2, '2020-04-14 14:57:11', NULL),
(43, 3, 1, 5, '12.000', NULL, NULL, NULL, 2, '2020-04-14 14:57:11', NULL),
(44, 4, 1, 5, '15.500', NULL, NULL, NULL, 2, '2020-04-14 14:57:11', NULL),
(45, 5, 1, 5, '23.800', NULL, NULL, NULL, 2, '2020-04-14 14:57:11', NULL),
(46, 7, 1, 5, '9.700', NULL, NULL, NULL, 2, '2020-04-14 14:57:11', NULL),
(47, 12, 1, 5, '30.000', NULL, NULL, NULL, 2, '2020-04-14 14:57:11', NULL),
(48, 13, 1, 5, '5.000', NULL, NULL, NULL, 2, '2020-04-14 14:57:11', NULL),
(49, 14, 1, 5, '5.500', NULL, NULL, NULL, 2, '2020-04-14 14:57:11', NULL),
(50, 15, 1, 5, '30.000', NULL, NULL, NULL, 2, '2020-04-14 14:57:11', NULL),
(51, 1, 3, 5, '-56.000', NULL, NULL, NULL, 1, '2020-04-14 15:49:29', NULL),
(52, 2, 3, 5, '-50.500', NULL, NULL, NULL, 1, '2020-04-14 15:49:29', NULL),
(53, 3, 3, 5, '-12.000', NULL, NULL, NULL, 1, '2020-04-14 15:49:29', NULL),
(54, 4, 3, 5, '-15.500', NULL, NULL, NULL, 1, '2020-04-14 15:49:29', NULL),
(55, 5, 3, 5, '-23.800', NULL, NULL, NULL, 1, '2020-04-14 15:49:29', NULL),
(56, 7, 3, 5, '-9.700', NULL, NULL, NULL, 1, '2020-04-14 15:49:29', NULL),
(57, 12, 3, 5, '-30.000', NULL, NULL, NULL, 1, '2020-04-14 15:49:29', NULL),
(58, 13, 3, 5, '-5.000', NULL, NULL, NULL, 1, '2020-04-14 15:49:29', NULL),
(59, 14, 3, 5, '-5.500', NULL, NULL, NULL, 1, '2020-04-14 15:49:29', NULL),
(60, 15, 3, 5, '-30.000', NULL, NULL, NULL, 1, '2020-04-14 15:49:29', NULL),
(66, 1, 3, 4, '-56.000', NULL, NULL, NULL, 1, '2020-04-14 15:49:58', NULL),
(67, 2, 3, 4, '-50.500', NULL, NULL, NULL, 1, '2020-04-14 15:49:58', NULL),
(68, 3, 3, 4, '-12.000', NULL, NULL, NULL, 1, '2020-04-14 15:49:58', NULL),
(69, 4, 3, 4, '-15.500', NULL, NULL, NULL, 1, '2020-04-14 15:49:58', NULL),
(70, 5, 3, 4, '-23.800', NULL, NULL, NULL, 1, '2020-04-14 15:49:58', NULL),
(71, 7, 3, 4, '-9.700', NULL, NULL, NULL, 1, '2020-04-14 15:49:58', NULL),
(72, 12, 3, 4, '-30.000', NULL, NULL, NULL, 1, '2020-04-14 15:49:58', NULL),
(73, 13, 3, 4, '-5.000', NULL, NULL, NULL, 1, '2020-04-14 15:49:58', NULL),
(74, 14, 3, 4, '-5.500', NULL, NULL, NULL, 1, '2020-04-14 15:49:58', NULL),
(75, 15, 3, 4, '-30.000', NULL, NULL, NULL, 1, '2020-04-14 15:49:58', NULL),
(81, 1, 3, 3, '-56.000', NULL, NULL, NULL, 1, '2020-04-14 15:50:16', NULL),
(82, 2, 3, 3, '-50.500', NULL, NULL, NULL, 1, '2020-04-14 15:50:16', NULL),
(83, 3, 3, 3, '-12.000', NULL, NULL, NULL, 1, '2020-04-14 15:50:16', NULL),
(84, 4, 3, 3, '-15.500', NULL, NULL, NULL, 1, '2020-04-14 15:50:16', NULL),
(85, 5, 3, 3, '-23.800', NULL, NULL, NULL, 1, '2020-04-14 15:50:16', NULL),
(86, 7, 3, 3, '-9.700', NULL, NULL, NULL, 1, '2020-04-14 15:50:16', NULL),
(87, 12, 3, 3, '-30.000', NULL, NULL, NULL, 1, '2020-04-14 15:50:16', NULL),
(88, 13, 3, 3, '-5.000', NULL, NULL, NULL, 1, '2020-04-14 15:50:16', NULL),
(89, 14, 3, 3, '-5.500', NULL, NULL, NULL, 1, '2020-04-14 15:50:16', NULL),
(90, 15, 3, 3, '-30.000', NULL, NULL, NULL, 1, '2020-04-14 15:50:16', NULL),
(96, 1, 3, 2, '-56.000', NULL, NULL, NULL, 1, '2020-04-14 15:50:36', NULL),
(97, 2, 3, 2, '-50.500', NULL, NULL, NULL, 1, '2020-04-14 15:50:36', NULL),
(98, 3, 3, 2, '-12.000', NULL, NULL, NULL, 1, '2020-04-14 15:50:36', NULL),
(99, 4, 3, 2, '-15.500', NULL, NULL, NULL, 1, '2020-04-14 15:50:36', NULL),
(100, 5, 3, 2, '-23.800', NULL, NULL, NULL, 1, '2020-04-14 15:50:36', NULL),
(101, 7, 3, 2, '-9.700', NULL, NULL, NULL, 1, '2020-04-14 15:50:36', NULL),
(102, 12, 3, 2, '-30.000', NULL, NULL, NULL, 1, '2020-04-14 15:50:36', NULL),
(103, 13, 3, 2, '-5.000', NULL, NULL, NULL, 1, '2020-04-14 15:50:36', NULL),
(104, 14, 3, 2, '-5.500', NULL, NULL, NULL, 1, '2020-04-14 15:50:36', NULL),
(105, 15, 3, 2, '-30.000', NULL, NULL, NULL, 1, '2020-04-14 15:50:36', NULL),
(111, 2, 1, 6, '123.000', NULL, NULL, NULL, 2, '2020-04-14 15:53:11', NULL),
(112, 3, 1, 6, '11.700', NULL, NULL, NULL, 2, '2020-04-14 15:53:11', NULL),
(113, 5, 1, 6, '24.800', NULL, NULL, NULL, 2, '2020-04-14 15:53:11', NULL),
(114, 12, 1, 6, '30.000', NULL, NULL, NULL, 2, '2020-04-14 15:53:11', NULL),
(115, 13, 1, 6, '2.280', NULL, NULL, NULL, 2, '2020-04-14 15:53:11', NULL),
(116, 14, 1, 6, '4.000', NULL, NULL, NULL, 2, '2020-04-14 15:53:11', NULL),
(117, 15, 1, 6, '27.000', NULL, NULL, NULL, 2, '2020-04-14 15:53:11', NULL),
(118, 2, 1, 7, '109.000', NULL, NULL, NULL, 2, '2020-04-14 15:56:07', NULL),
(119, 3, 1, 7, '9.100', NULL, NULL, NULL, 2, '2020-04-14 15:56:07', NULL),
(120, 5, 1, 7, '24.300', NULL, NULL, NULL, 2, '2020-04-14 15:56:07', NULL),
(121, 7, 1, 7, '9.200', NULL, NULL, NULL, 2, '2020-04-14 15:56:07', NULL),
(122, 12, 1, 7, '30.000', NULL, NULL, NULL, 2, '2020-04-14 15:56:07', NULL),
(123, 13, 1, 7, '2.596', NULL, NULL, NULL, 2, '2020-04-14 15:56:07', NULL),
(124, 14, 1, 7, '5.000', NULL, NULL, NULL, 2, '2020-04-14 15:56:07', NULL),
(125, 15, 1, 7, '26.000', NULL, NULL, NULL, 2, '2020-04-14 15:56:07', NULL),
(127, 11, 1, 1, '0.000', NULL, NULL, NULL, 1, '2020-04-14 16:10:48', NULL),
(130, 2, 1, 8, '118.500', NULL, NULL, NULL, 4, '2020-04-16 06:33:27', NULL),
(131, 3, 1, 8, '11.500', NULL, NULL, NULL, 4, '2020-04-16 06:33:27', NULL),
(132, 5, 1, 8, '27.300', NULL, NULL, NULL, 4, '2020-04-16 06:33:27', NULL),
(133, 7, 1, 8, '8.200', NULL, NULL, NULL, 4, '2020-04-16 06:33:27', NULL),
(134, 12, 1, 8, '30.000', NULL, NULL, NULL, 4, '2020-04-16 06:33:27', NULL),
(135, 13, 1, 8, '10.275', NULL, NULL, NULL, 4, '2020-04-16 06:33:27', NULL),
(136, 14, 1, 8, '21.000', NULL, NULL, NULL, 4, '2020-04-16 06:33:27', NULL),
(137, 2, 1, 9, '134.000', NULL, NULL, NULL, 4, '2020-04-16 07:15:24', NULL),
(138, 3, 1, 9, '9.800', NULL, NULL, NULL, 4, '2020-04-16 07:15:24', NULL),
(139, 5, 1, 9, '22.300', NULL, NULL, NULL, 4, '2020-04-16 07:15:24', NULL),
(140, 7, 1, 9, '9.700', NULL, NULL, NULL, 4, '2020-04-16 07:15:24', NULL),
(141, 12, 1, 9, '30.000', NULL, NULL, NULL, 4, '2020-04-16 07:15:24', NULL),
(142, 13, 1, 9, '10.000', NULL, NULL, NULL, 4, '2020-04-16 07:15:24', NULL),
(143, 14, 1, 9, '20.000', NULL, NULL, NULL, 4, '2020-04-16 07:15:24', NULL),
(144, 15, 1, 9, '7.128', NULL, NULL, NULL, 4, '2020-04-16 07:15:24', NULL),
(145, 2, 1, 10, '169.000', NULL, NULL, NULL, 4, '2020-04-16 17:50:41', NULL),
(146, 3, 1, 10, '13.400', NULL, NULL, NULL, 4, '2020-04-16 17:50:41', NULL),
(147, 5, 1, 10, '38.600', NULL, NULL, NULL, 4, '2020-04-16 17:50:41', NULL),
(148, 7, 1, 10, '13.000', NULL, NULL, NULL, 4, '2020-04-16 17:50:41', NULL),
(149, 12, 1, 10, '40.000', NULL, NULL, NULL, 4, '2020-04-16 17:50:41', NULL),
(150, 13, 1, 10, '15.000', NULL, NULL, NULL, 4, '2020-04-16 17:50:41', NULL),
(151, 14, 1, 10, '31.456', NULL, NULL, NULL, 4, '2020-04-16 17:50:41', NULL),
(152, 2, 1, 11, '158.000', NULL, NULL, NULL, 4, '2020-04-16 17:57:38', NULL),
(153, 3, 1, 11, '11.200', NULL, NULL, NULL, 4, '2020-04-16 17:57:38', NULL),
(154, 7, 1, 11, '8.000', NULL, NULL, NULL, 4, '2020-04-16 17:57:38', NULL),
(155, 12, 1, 11, '30.000', NULL, NULL, NULL, 4, '2020-04-16 17:57:38', NULL),
(156, 13, 1, 11, '10.000', NULL, NULL, NULL, 4, '2020-04-16 17:57:38', NULL),
(157, 14, 1, 11, '19.225', NULL, NULL, NULL, 4, '2020-04-16 17:57:38', NULL),
(158, 2, 1, 12, '128.500', NULL, NULL, NULL, 4, '2020-04-16 18:13:06', NULL),
(159, 3, 1, 12, '10.600', NULL, NULL, NULL, 4, '2020-04-16 18:13:06', NULL),
(160, 4, 1, 12, '21.400', NULL, NULL, NULL, 4, '2020-04-16 18:13:06', NULL),
(161, 5, 1, 12, '28.000', NULL, NULL, NULL, 4, '2020-04-16 18:13:06', NULL),
(162, 12, 1, 12, '20.000', NULL, NULL, NULL, 4, '2020-04-16 18:13:06', NULL),
(163, 14, 1, 12, '5.000', NULL, NULL, NULL, 4, '2020-04-16 18:13:06', NULL),
(164, 15, 1, 12, '7.660', NULL, NULL, NULL, 4, '2020-04-16 18:13:06', NULL),
(165, 2, 1, 13, '162.500', NULL, NULL, NULL, 4, '2020-04-16 18:38:46', NULL),
(166, 3, 1, 13, '6.000', NULL, NULL, NULL, 4, '2020-04-16 18:38:46', NULL),
(167, 5, 1, 13, '14.800', NULL, NULL, NULL, 4, '2020-04-16 18:38:46', NULL),
(168, 7, 1, 13, '10.500', NULL, NULL, NULL, 4, '2020-04-16 18:38:46', NULL),
(169, 12, 1, 13, '30.000', NULL, NULL, NULL, 4, '2020-04-16 18:38:46', NULL),
(170, 13, 1, 13, '10.000', NULL, NULL, NULL, 4, '2020-04-16 18:38:46', NULL),
(171, 14, 1, 13, '5.180', NULL, NULL, NULL, 4, '2020-04-16 18:38:46', NULL),
(172, 15, 1, 13, '25.000', NULL, NULL, NULL, 4, '2020-04-16 18:38:46', NULL),
(173, 2, 1, 14, '131.400', NULL, NULL, NULL, 4, '2020-04-16 18:43:41', NULL),
(174, 4, 1, 14, '14.400', NULL, NULL, NULL, 4, '2020-04-16 18:43:41', NULL),
(175, 5, 1, 14, '25.300', NULL, NULL, NULL, 4, '2020-04-16 18:43:41', NULL),
(176, 7, 1, 14, '9.200', NULL, NULL, NULL, 4, '2020-04-16 18:43:41', NULL),
(177, 12, 1, 14, '30.000', NULL, NULL, NULL, 4, '2020-04-16 18:43:41', NULL),
(178, 13, 1, 14, '3.000', NULL, NULL, NULL, 4, '2020-04-16 18:43:41', NULL),
(179, 14, 1, 14, '5.500', NULL, NULL, NULL, 4, '2020-04-16 18:43:41', NULL),
(180, 15, 1, 14, '20.000', NULL, NULL, NULL, 4, '2020-04-16 18:43:41', NULL),
(181, 2, 1, 15, '153.900', NULL, NULL, NULL, 4, '2020-04-16 18:58:27', NULL),
(182, 4, 1, 15, '16.000', NULL, NULL, NULL, 4, '2020-04-16 18:58:27', NULL),
(183, 7, 1, 15, '12.100', NULL, NULL, NULL, 4, '2020-04-16 18:58:27', NULL),
(184, 12, 1, 15, '35.000', NULL, NULL, NULL, 4, '2020-04-16 18:58:27', NULL),
(185, 13, 1, 15, '10.308', NULL, NULL, NULL, 4, '2020-04-16 18:58:27', NULL),
(186, 14, 1, 15, '4.300', NULL, NULL, NULL, 4, '2020-04-16 18:58:27', NULL),
(187, 15, 1, 15, '25.000', NULL, NULL, NULL, 4, '2020-04-16 18:58:27', NULL),
(188, 2, 1, 16, '123.300', NULL, NULL, NULL, 4, '2020-04-16 19:33:03', NULL),
(189, 3, 1, 16, '11.000', NULL, NULL, NULL, 4, '2020-04-16 19:33:03', NULL),
(190, 5, 1, 16, '31.300', NULL, NULL, NULL, 4, '2020-04-16 19:33:03', NULL),
(191, 7, 1, 16, '10.200', NULL, NULL, NULL, 4, '2020-04-16 19:33:03', NULL),
(192, 12, 1, 16, '30.000', NULL, NULL, NULL, 4, '2020-04-16 19:33:03', NULL),
(193, 13, 1, 16, '1.590', NULL, NULL, NULL, 4, '2020-04-16 19:33:03', NULL),
(194, 14, 1, 16, '5.000', NULL, NULL, NULL, 4, '2020-04-16 19:33:03', NULL),
(195, 15, 1, 16, '25.000', NULL, NULL, NULL, 4, '2020-04-16 19:33:03', NULL),
(196, 2, 1, 17, '98.400', NULL, NULL, NULL, 4, '2020-04-16 19:34:03', NULL),
(197, 3, 1, 17, '11.100', NULL, NULL, NULL, 4, '2020-04-16 19:34:03', NULL),
(198, 5, 1, 17, '29.900', NULL, NULL, NULL, 4, '2020-04-16 19:34:03', NULL),
(199, 7, 1, 17, '10.200', NULL, NULL, NULL, 4, '2020-04-16 19:34:03', NULL),
(200, 9, 1, 17, '4.900', NULL, NULL, NULL, 4, '2020-04-16 19:34:03', NULL),
(201, 10, 1, 17, '21.300', NULL, NULL, NULL, 4, '2020-04-16 19:34:03', NULL),
(202, 12, 1, 17, '30.000', NULL, NULL, NULL, 4, '2020-04-16 19:34:03', NULL),
(203, 14, 1, 17, '5.200', NULL, NULL, NULL, 4, '2020-04-16 19:34:03', NULL),
(204, 15, 1, 17, '20.000', NULL, NULL, NULL, 4, '2020-04-16 19:34:03', NULL),
(205, 2, 1, 18, '98.400', NULL, NULL, NULL, 4, '2020-04-16 19:34:05', NULL),
(206, 3, 1, 18, '11.100', NULL, NULL, NULL, 4, '2020-04-16 19:34:05', NULL),
(207, 5, 1, 18, '29.900', NULL, NULL, NULL, 4, '2020-04-16 19:34:05', NULL),
(208, 7, 1, 18, '10.200', NULL, NULL, NULL, 4, '2020-04-16 19:34:05', NULL),
(209, 9, 1, 18, '4.900', NULL, NULL, NULL, 4, '2020-04-16 19:34:05', NULL),
(210, 10, 1, 18, '21.300', NULL, NULL, NULL, 4, '2020-04-16 19:34:05', NULL),
(211, 12, 1, 18, '30.000', NULL, NULL, NULL, 4, '2020-04-16 19:34:05', NULL),
(212, 14, 1, 18, '5.200', NULL, NULL, NULL, 4, '2020-04-16 19:34:05', NULL),
(213, 15, 1, 18, '20.000', NULL, NULL, NULL, 4, '2020-04-16 19:34:05', NULL),
(214, 2, 3, 17, '-98.400', NULL, NULL, NULL, 1, '2020-04-16 19:35:34', NULL),
(215, 3, 3, 17, '-11.100', NULL, NULL, NULL, 1, '2020-04-16 19:35:34', NULL),
(216, 5, 3, 17, '-29.900', NULL, NULL, NULL, 1, '2020-04-16 19:35:34', NULL),
(217, 7, 3, 17, '-10.200', NULL, NULL, NULL, 1, '2020-04-16 19:35:34', NULL),
(218, 9, 3, 17, '-4.900', NULL, NULL, NULL, 1, '2020-04-16 19:35:34', NULL),
(219, 10, 3, 17, '-21.300', NULL, NULL, NULL, 1, '2020-04-16 19:35:34', NULL),
(220, 12, 3, 17, '-30.000', NULL, NULL, NULL, 1, '2020-04-16 19:35:34', NULL),
(221, 14, 3, 17, '-5.200', NULL, NULL, NULL, 1, '2020-04-16 19:35:34', NULL),
(222, 15, 3, 17, '-20.000', NULL, NULL, NULL, 1, '2020-04-16 19:35:34', NULL),
(229, 2, 1, 19, '97.300', NULL, NULL, NULL, 4, '2020-04-16 19:40:35', NULL),
(230, 3, 1, 19, '9.700', NULL, NULL, NULL, 4, '2020-04-16 19:40:35', NULL),
(231, 5, 1, 19, '31.000', NULL, NULL, NULL, 4, '2020-04-16 19:40:35', NULL),
(232, 7, 1, 19, '11.000', NULL, NULL, NULL, 4, '2020-04-16 19:40:35', NULL),
(233, 9, 1, 19, '5.400', NULL, NULL, NULL, 4, '2020-04-16 19:40:35', NULL),
(234, 10, 1, 19, '23.300', NULL, NULL, NULL, 4, '2020-04-16 19:40:35', NULL),
(235, 12, 1, 19, '30.000', NULL, NULL, NULL, 4, '2020-04-16 19:40:35', NULL),
(236, 14, 1, 19, '5.000', NULL, NULL, NULL, 4, '2020-04-16 19:40:35', NULL),
(237, 15, 1, 19, '27.150', NULL, NULL, NULL, 4, '2020-04-16 19:40:35', NULL),
(238, 2, 2, 1, '-41.472', 1, NULL, NULL, 4, '2020-04-21 15:08:59', NULL),
(239, 2, 2, 1, '-9.028', 2, NULL, NULL, 4, '2020-04-21 15:10:17', NULL),
(240, 2, 2, 6, '-6.001', 2, NULL, NULL, 4, '2020-04-21 15:10:17', NULL),
(241, 4, 2, 1, '-15.454', 3, NULL, NULL, 4, '2020-04-21 15:12:29', NULL),
(242, 2, 2, 6, '-61.828', 4, NULL, NULL, 4, '2020-04-21 15:33:01', NULL),
(243, 1, 2, 1, '-56.000', 5, NULL, NULL, 4, '2020-04-21 15:34:12', NULL),
(244, 2, 2, 6, '-0.362', 5, NULL, NULL, 4, '2020-04-21 15:34:12', NULL),
(245, 3, 2, 1, '-11.665', 6, NULL, NULL, 4, '2020-04-21 15:36:28', NULL),
(246, 5, 2, 1, '-23.800', 7, NULL, NULL, 4, '2020-04-21 15:40:01', NULL),
(247, 5, 2, 6, '-0.926', 7, NULL, NULL, 4, '2020-04-21 15:40:01', NULL),
(248, 2, 2, 6, '-52.316', 8, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(249, 2, 2, 6, '-2.493', 9, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(250, 2, 2, 7, '-58.851', 9, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(251, 5, 2, 6, '-23.874', 10, NULL, NULL, 4, '2020-04-21 15:44:43', NULL),
(252, 5, 2, 7, '-2.347', 10, NULL, NULL, 4, '2020-04-21 15:44:43', NULL),
(253, 3, 2, 1, '-0.335', 11, NULL, NULL, 4, '2020-04-21 15:50:56', NULL),
(254, 3, 2, 6, '-8.040', 11, NULL, NULL, 4, '2020-04-21 15:50:56', NULL),
(255, 2, 2, 7, '-50.149', 12, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(256, 2, 2, 8, '-49.727', 12, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(257, 2, 2, 8, '-22.045', 13, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(258, 5, 2, 7, '-21.953', 14, NULL, NULL, 4, '2020-04-21 16:06:30', NULL),
(259, 5, 2, 8, '-5.265', 14, NULL, NULL, 4, '2020-04-21 16:06:30', NULL),
(260, 3, 2, 6, '-3.660', 15, NULL, NULL, 4, '2020-04-21 16:08:01', NULL),
(261, 3, 2, 7, '-7.806', 15, NULL, NULL, 4, '2020-04-21 16:08:01', NULL),
(262, 2, 2, 8, '-46.728', 16, NULL, NULL, 4, '2020-04-21 16:09:07', NULL),
(263, 2, 2, 11, '-23.661', 16, NULL, NULL, 4, '2020-04-21 16:09:07', NULL),
(264, 2, 2, 11, '-50.414', 17, NULL, NULL, 4, '2020-04-21 16:10:50', NULL),
(265, 5, 2, 8, '-22.035', 18, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(266, 5, 2, 9, '-7.965', 18, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(267, 2, 2, 11, '-11.584', 18, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(268, 3, 2, 7, '-1.294', 19, NULL, NULL, 4, '2020-04-21 16:15:32', NULL),
(269, 3, 2, 8, '-9.873', 19, NULL, NULL, 4, '2020-04-21 16:15:32', NULL),
(270, 2, 2, 11, '-51.365', 20, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(271, 2, 2, 11, '-20.976', 21, NULL, NULL, 4, '2020-04-21 16:17:14', NULL),
(272, 2, 2, 9, '-15.447', 21, NULL, NULL, 4, '2020-04-21 16:17:14', NULL),
(273, 2, 2, 9, '-44.091', 22, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(274, 2, 2, 9, '-49.463', 23, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(275, 3, 2, 8, '-1.627', 24, NULL, NULL, 4, '2020-04-21 16:20:46', NULL),
(276, 3, 2, 11, '-8.144', 24, NULL, NULL, 4, '2020-04-21 16:20:46', NULL),
(277, 5, 2, 9, '-14.335', 25, NULL, NULL, 4, '2020-04-21 16:21:45', NULL),
(278, 5, 2, 10, '-7.898', 25, NULL, NULL, 4, '2020-04-21 16:21:45', NULL),
(279, 5, 2, 10, '-30.702', 26, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(280, 5, 2, 12, '-7.898', 26, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(281, 2, 2, 9, '-10.863', 26, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(282, 2, 2, 9, '-14.136', 27, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(283, 2, 2, 10, '-18.836', 27, NULL, NULL, 4, '2020-04-21 16:25:48', NULL),
(284, 2, 2, 10, '-33.739', 28, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(285, 2, 2, 10, '-33.577', 29, NULL, NULL, 4, '2020-04-21 16:30:42', NULL),
(286, 3, 2, 11, '-3.056', 30, NULL, NULL, 4, '2020-04-21 16:31:42', NULL),
(287, 3, 2, 9, '-9.800', 30, NULL, NULL, 4, '2020-04-21 16:31:42', NULL),
(288, 3, 2, 10, '-0.504', 30, NULL, NULL, 4, '2020-04-21 16:31:42', NULL),
(289, 5, 2, 12, '-20.102', 31, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(290, 5, 2, 14, '-7.898', 31, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(291, 2, 2, 10, '-20.511', 31, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(292, 2, 2, 10, '-42.174', 32, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(293, 2, 2, 10, '-20.163', 33, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(294, 2, 2, 12, '-18.836', 33, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(295, 2, 2, 12, '-99.691', 34, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(296, 4, 2, 1, '-0.046', 35, NULL, NULL, 4, '2020-04-21 16:39:45', NULL),
(297, 4, 2, 12, '-14.311', 35, NULL, NULL, 4, '2020-04-21 16:39:45', NULL),
(298, 4, 6, 1, '0.046', 35, NULL, NULL, 4, '2020-04-21 16:41:09', NULL),
(299, 4, 6, 12, '14.311', 35, NULL, NULL, 4, '2020-04-21 16:41:09', NULL),
(301, 4, 2, 1, '-0.046', 36, NULL, NULL, 4, '2020-04-21 16:42:56', NULL),
(302, 4, 2, 12, '-20.991', 36, NULL, NULL, 4, '2020-04-21 16:42:56', NULL),
(303, 5, 2, 14, '-17.402', 37, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(304, 5, 2, 13, '-7.898', 37, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(305, 2, 2, 12, '-9.973', 37, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(306, 2, 2, 14, '-17.994', 37, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(307, 2, 2, 14, '-41.215', 38, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(308, 2, 2, 14, '-48.511', 39, NULL, NULL, 4, '2020-04-21 16:47:05', NULL),
(309, 4, 2, 12, '-0.409', 40, NULL, NULL, 4, '2020-04-21 16:47:58', NULL),
(310, 4, 2, 14, '-13.948', 40, NULL, NULL, 4, '2020-04-21 16:47:58', NULL),
(311, 2, 2, 14, '-23.680', 41, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(312, 2, 2, 13, '-29.587', 41, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(313, 2, 2, 13, '-40.257', 42, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(314, 2, 2, 13, '-49.463', 43, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(315, 3, 2, 10, '-5.982', 44, NULL, NULL, 4, '2020-04-21 16:52:48', NULL),
(316, 2, 2, 13, '-10.543', 45, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(317, 5, 2, 13, '-6.902', 46, NULL, NULL, 4, '2020-04-21 16:55:17', NULL),
(318, 5, 2, 16, '-7.854', 46, NULL, NULL, 4, '2020-04-21 16:55:17', NULL),
(319, 2, 2, 13, '-32.650', 47, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(320, 2, 2, 15, '-20.617', 47, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(321, 2, 2, 15, '-52.717', 48, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(322, 2, 2, 15, '-51.759', 49, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(323, 4, 2, 14, '-0.452', 50, NULL, NULL, 4, '2020-04-21 17:25:53', NULL),
(324, 4, 2, 15, '-15.500', 50, NULL, NULL, 4, '2020-04-21 17:25:53', NULL),
(325, 3, 2, 10, '-6.914', 51, NULL, NULL, 4, '2020-04-21 17:28:28', NULL),
(326, 3, 2, 12, '-4.053', 51, NULL, NULL, 4, '2020-04-21 17:28:28', NULL),
(327, 5, 2, 16, '-19.900', 52, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(328, 2, 2, 15, '-28.807', 52, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(329, 2, 2, 16, '-0.176', 52, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(330, 2, 2, 16, '-48.883', 53, NULL, NULL, 4, '2020-04-21 17:30:44', NULL),
(331, 2, 2, 16, '-48.511', 54, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(332, 5, 2, 16, '-3.546', 55, NULL, NULL, 4, '2020-04-21 17:32:35', NULL),
(333, 5, 2, 18, '-7.820', 55, NULL, NULL, 4, '2020-04-21 17:32:35', NULL),
(334, 2, 2, 16, '-25.730', 56, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(335, 2, 2, 18, '-56.073', 56, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(336, 2, 2, 18, '-14.268', 57, NULL, NULL, 4, '2020-04-21 17:34:19', NULL),
(337, 5, 2, 18, '-22.080', 58, NULL, NULL, 4, '2020-04-21 17:35:02', NULL),
(338, 5, 2, 19, '-7.731', 58, NULL, NULL, 4, '2020-04-21 17:35:02', NULL),
(339, 5, 2, 19, '-23.269', 59, NULL, NULL, 4, '2020-04-21 17:36:42', NULL),
(340, 2, 2, 18, '-27.145', 59, NULL, NULL, 4, '2020-04-21 17:36:42', NULL),
(341, 2, 2, 18, '-0.914', 60, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(342, 2, 2, 19, '-40.301', 60, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(343, 2, 2, 19, '-48.511', 61, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(344, 3, 2, 12, '-6.547', 62, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(345, 3, 2, 13, '-6.000', 62, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(346, 3, 2, 16, '-11.000', 62, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(347, 3, 2, 18, '-6.305', 62, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(348, 2, 2, 19, '-8.488', 62, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(349, 2, 1, 20, '72.285', NULL, NULL, NULL, 2, '2020-04-22 11:15:40', NULL),
(350, 7, 1, 20, '5.280', NULL, NULL, NULL, 2, '2020-04-22 11:15:40', NULL),
(351, 12, 1, 20, '5.000', NULL, NULL, NULL, 2, '2020-04-22 11:15:40', NULL),
(352, 13, 1, 20, '2.000', NULL, NULL, NULL, 2, '2020-04-22 11:15:40', NULL),
(353, 14, 1, 20, '8.000', NULL, NULL, NULL, 2, '2020-04-22 11:15:40', NULL),
(354, 15, 1, 20, '11.276', NULL, NULL, NULL, 2, '2020-04-22 11:15:40', NULL),
(355, 2, 2, 20, '-71.340', 63, NULL, NULL, 2, '2020-04-22 11:19:46', NULL),
(356, 5, 6, 8, '22.035', 18, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(357, 5, 6, 9, '7.965', 18, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(358, 2, 6, 11, '11.584', 18, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(359, 5, 2, 8, '-22.035', 64, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(360, 5, 2, 9, '-5.693', 64, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(361, 2, 2, 11, '-11.584', 64, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(362, 2, 2, 20, '-0.945', 64, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(363, 9, 8, 18, '-4.900', NULL, NULL, NULL, 1, '2020-04-29 00:50:07', 'Ajuste de Stock Manual - NICO'),
(364, 9, 8, 19, '-0.300', NULL, NULL, NULL, 1, '2020-04-29 00:51:28', 'Ajuste de Stock Manual - NICO'),
(365, 3, 8, 18, '-3.495', NULL, NULL, NULL, 1, '2020-04-29 00:53:06', 'Ajuste de Stock Manual - NICO'),
(366, 10, 8, 18, '-21.300', NULL, NULL, NULL, 1, '2020-04-29 00:55:13', 'Ajuste de Stock Manual - NICO'),
(367, 10, 8, 19, '-6.500', NULL, NULL, NULL, 1, '2020-04-29 00:55:13', 'Ajuste de Stock Manual - NICO'),
(368, 14, 8, 1, '-5.500', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(369, 13, 8, 1, '-5.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(370, 15, 8, 1, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(371, 12, 8, 1, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(372, 13, 8, 6, '-2.280', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(373, 15, 8, 6, '-27.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(374, 12, 8, 6, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(375, 14, 8, 6, '-4.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(376, 13, 8, 7, '-2.596', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(377, 15, 8, 7, '-26.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(378, 12, 8, 7, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(379, 14, 8, 7, '-5.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(380, 13, 8, 8, '-10.275', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(381, 12, 8, 8, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(382, 14, 8, 8, '-21.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(383, 12, 8, 11, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(384, 14, 8, 11, '-19.225', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(385, 13, 8, 11, '-10.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(386, 14, 8, 9, '-20.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(387, 5, 8, 9, '-2.272', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(388, 13, 8, 9, '-10.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(389, 15, 8, 9, '-7.128', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(390, 12, 8, 9, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(391, 13, 8, 10, '-15.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(392, 12, 8, 10, '-40.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(393, 14, 8, 10, '-31.456', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(394, 12, 8, 12, '-20.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(395, 15, 8, 12, '-7.660', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(396, 14, 8, 12, '-5.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(397, 15, 8, 14, '-20.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(398, 12, 8, 14, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(399, 14, 8, 14, '-5.500', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(400, 13, 8, 14, '-3.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(401, 13, 8, 13, '-10.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(402, 15, 8, 13, '-25.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(403, 12, 8, 13, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(404, 14, 8, 13, '-5.180', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(405, 15, 8, 15, '-25.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(406, 12, 8, 15, '-35.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(407, 14, 8, 15, '-4.300', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(408, 4, 8, 15, '-0.500', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(409, 13, 8, 15, '-10.308', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(410, 14, 8, 16, '-5.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(411, 13, 8, 16, '-1.590', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(412, 15, 8, 16, '-25.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(413, 12, 8, 16, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(414, 12, 8, 18, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(415, 15, 8, 18, '-20.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(416, 14, 8, 18, '-5.200', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(417, 14, 8, 19, '-5.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(418, 12, 8, 19, '-30.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(419, 15, 8, 19, '-27.150', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(420, 15, 8, 20, '-11.276', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(421, 12, 8, 20, '-5.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(422, 14, 8, 20, '-8.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(423, 13, 8, 20, '-2.000', NULL, NULL, NULL, 1, '2020-04-29 01:09:38', 'Ajuste de Stock Manual - NICO'),
(431, 2, 1, 21, '130.600', NULL, NULL, NULL, 4, '2020-04-29 08:35:16', NULL),
(432, 3, 1, 21, '16.400', NULL, NULL, NULL, 4, '2020-04-29 08:35:16', NULL),
(433, 4, 1, 21, '9.500', NULL, NULL, NULL, 4, '2020-04-29 08:35:16', NULL),
(434, 5, 1, 21, '41.700', NULL, NULL, NULL, 4, '2020-04-29 08:35:16', NULL),
(435, 7, 1, 21, '15.100', NULL, NULL, NULL, 4, '2020-04-29 08:35:17', NULL),
(436, 9, 1, 21, '6.500', NULL, NULL, NULL, 4, '2020-04-29 08:35:17', NULL),
(437, 10, 1, 21, '30.400', NULL, NULL, NULL, 4, '2020-04-29 08:35:17', NULL),
(438, 12, 1, 21, '28.000', NULL, NULL, NULL, 4, '2020-04-29 08:35:17', NULL),
(439, 13, 1, 21, '10.000', NULL, NULL, NULL, 4, '2020-04-29 08:35:17', NULL),
(440, 14, 1, 21, '25.000', NULL, NULL, NULL, 4, '2020-04-29 08:35:17', NULL),
(441, 15, 1, 21, '27.184', NULL, NULL, NULL, 4, '2020-04-29 08:35:17', NULL),
(442, 5, 2, 21, '-23.020', 65, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(443, 2, 2, 21, '-72.100', 65, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(444, 9, 2, 19, '-5.000', 66, NULL, NULL, 4, '2020-04-29 16:38:20', NULL),
(445, 10, 2, 19, '-16.800', 66, NULL, NULL, 4, '2020-04-29 16:38:20', NULL),
(446, 10, 2, 21, '-13.600', 66, NULL, NULL, 4, '2020-04-29 16:38:20', NULL),
(447, 5, 2, 21, '-5.976', 66, NULL, NULL, 4, '2020-04-29 16:38:20', NULL),
(448, 2, 2, 21, '-58.500', 66, NULL, NULL, 4, '2020-04-29 16:38:20', NULL),
(449, 3, 2, 18, '-1.300', 67, NULL, NULL, 4, '2020-04-29 18:11:44', NULL),
(450, 3, 2, 19, '-9.700', 67, NULL, NULL, 4, '2020-04-29 18:11:44', NULL),
(451, 3, 2, 21, '-5.351', 67, NULL, NULL, 4, '2020-04-29 18:11:44', NULL),
(452, 4, 2, 21, '-9.472', 68, NULL, NULL, 4, '2020-04-29 18:14:02', NULL),
(453, 2, 1, 22, '122.000', NULL, NULL, NULL, 4, '2020-05-05 08:25:40', NULL),
(454, 3, 1, 22, '13.000', NULL, NULL, NULL, 4, '2020-05-05 08:25:40', NULL),
(455, 4, 1, 22, '15.800', NULL, NULL, NULL, 4, '2020-05-05 08:25:40', NULL),
(456, 5, 1, 22, '37.000', NULL, NULL, NULL, 4, '2020-05-05 08:25:40', NULL),
(457, 7, 1, 22, '12.500', NULL, NULL, NULL, 4, '2020-05-05 08:25:40', NULL),
(458, 9, 1, 22, '6.300', NULL, NULL, NULL, 4, '2020-05-05 08:25:40', NULL),
(459, 10, 1, 22, '28.500', NULL, NULL, NULL, 4, '2020-05-05 08:25:40', NULL),
(460, 12, 1, 22, '15.600', NULL, NULL, NULL, 4, '2020-05-05 08:25:40', NULL),
(461, 13, 1, 22, '9.500', NULL, NULL, NULL, 4, '2020-05-05 08:25:40', NULL),
(462, 14, 1, 22, '31.400', NULL, NULL, NULL, 4, '2020-05-05 08:25:40', NULL),
(463, 15, 1, 22, '30.728', NULL, NULL, NULL, 4, '2020-05-05 08:25:40', NULL),
(464, 5, 2, 21, '-12.704', 69, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(465, 5, 2, 22, '-16.308', 69, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(466, 2, 2, 22, '-73.000', 69, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(467, 9, 2, 19, '-0.100', 70, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(468, 9, 2, 21, '-6.200', 70, NULL, NULL, 4, '2020-05-05 17:04:05', NULL),
(469, 10, 2, 21, '-16.800', 70, NULL, NULL, 4, '2020-05-05 17:04:05', NULL),
(470, 10, 2, 22, '-11.700', 70, NULL, NULL, 4, '2020-05-05 17:04:05', NULL),
(471, 5, 2, 22, '-9.632', 70, NULL, NULL, 4, '2020-05-05 17:04:05', NULL),
(472, 2, 2, 22, '-49.000', 70, NULL, NULL, 4, '2020-05-05 17:04:05', NULL),
(473, 3, 2, 21, '-11.049', 71, NULL, NULL, 4, '2020-05-05 21:08:57', NULL),
(474, 3, 2, 22, '-1.912', 71, NULL, NULL, 4, '2020-05-05 21:08:57', NULL),
(475, 4, 2, 21, '-0.028', 72, NULL, NULL, 4, '2020-05-05 21:11:54', NULL),
(476, 4, 2, 22, '-15.725', 72, NULL, NULL, 4, '2020-05-05 21:11:54', NULL),
(477, 1, 1, 23, '43.200', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(478, 2, 1, 23, '33.700', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(479, 3, 1, 23, '14.000', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(480, 4, 1, 23, '68.150', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(481, 5, 1, 23, '42.400', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(482, 7, 1, 23, '15.500', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(483, 9, 1, 23, '7.500', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(484, 10, 1, 23, '33.200', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(485, 12, 1, 23, '17.200', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(486, 13, 1, 23, '16.000', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(487, 14, 1, 23, '29.800', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(488, 15, 1, 23, '30.350', NULL, NULL, NULL, 4, '2020-05-12 14:16:14', NULL),
(489, 4, 2, 22, '-0.075', 73, NULL, NULL, 4, '2020-05-12 14:23:11', NULL),
(490, 4, 2, 23, '-19.167', 73, NULL, NULL, 4, '2020-05-12 14:23:11', NULL),
(491, 3, 2, 22, '-11.088', 74, NULL, NULL, 4, '2020-05-12 14:25:46', NULL),
(492, 3, 2, 23, '-2.870', 74, NULL, NULL, 4, '2020-05-12 14:25:46', NULL),
(493, 5, 2, 22, '-11.060', 75, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(494, 5, 2, 23, '-22.179', 75, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(495, 1, 2, 23, '-43.200', 75, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(496, 2, 2, 23, '-16.300', 75, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(497, 9, 2, 21, '-0.300', 76, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(498, 9, 2, 22, '-6.300', 76, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(499, 9, 2, 23, '-0.900', 76, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(500, 10, 2, 22, '-16.800', 76, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(501, 10, 2, 23, '-16.400', 76, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(502, 4, 2, 23, '-44.675', 76, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(503, 2, 2, 23, '-17.400', 76, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(504, 2, 1, 24, '143.500', NULL, NULL, NULL, 4, '2020-05-19 15:22:06', NULL),
(505, 3, 1, 24, '30.500', NULL, NULL, NULL, 4, '2020-05-19 15:22:06', NULL),
(506, 4, 1, 24, '131.200', NULL, NULL, NULL, 4, '2020-05-19 15:22:06', NULL),
(507, 5, 1, 24, '82.900', NULL, NULL, NULL, 4, '2020-05-19 15:22:06', NULL),
(508, 7, 1, 24, '29.300', NULL, NULL, NULL, 4, '2020-05-19 15:22:06', NULL),
(509, 9, 1, 24, '14.000', NULL, NULL, NULL, 4, '2020-05-19 15:22:06', NULL),
(510, 10, 1, 24, '59.000', NULL, NULL, NULL, 4, '2020-05-19 15:22:06', NULL),
(511, 12, 1, 24, '33.700', NULL, NULL, NULL, 4, '2020-05-19 15:22:06', NULL),
(512, 14, 1, 24, '60.342', NULL, NULL, NULL, 4, '2020-05-19 15:22:06', NULL),
(513, 15, 1, 24, '82.300', NULL, NULL, NULL, 4, '2020-05-19 15:22:06', NULL),
(514, 4, 2, 23, '-4.308', 77, NULL, NULL, 4, '2020-05-19 15:23:55', NULL),
(515, 4, 2, 24, '-48.533', 77, NULL, NULL, 4, '2020-05-19 15:23:55', NULL),
(516, 5, 2, 23, '-20.221', 78, NULL, NULL, 4, '2020-05-19 15:25:43', NULL),
(517, 5, 2, 24, '-19.659', 78, NULL, NULL, 4, '2020-05-19 15:25:43', NULL),
(518, 4, 2, 24, '-11.977', 79, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(519, 5, 2, 24, '-30.000', 79, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(520, 2, 2, 24, '-143.500', 79, NULL, NULL, 4, '2020-05-19 15:36:48', NULL),
(521, 10, 2, 23, '-16.800', 80, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(522, 10, 2, 24, '-5.200', 80, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(523, 4, 2, 24, '-20.069', 80, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(524, 5, 2, 24, '-4.300', 80, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(525, 10, 2, 24, '-22.000', 81, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(526, 4, 2, 24, '-20.716', 81, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(527, 5, 2, 24, '-4.000', 81, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(528, 10, 2, 24, '-13.000', 82, NULL, NULL, 4, '2020-05-20 07:00:02', NULL),
(529, 4, 2, 24, '-22.000', 82, NULL, NULL, 4, '2020-05-20 07:00:02', NULL),
(530, 5, 2, 24, '-2.373', 82, NULL, NULL, 4, '2020-05-20 07:00:02', NULL),
(531, 3, 2, 23, '-11.130', 83, NULL, NULL, 4, '2020-05-20 07:08:43', NULL),
(532, 3, 2, 24, '-19.279', 83, NULL, NULL, 4, '2020-05-20 07:08:43', NULL),
(533, 10, 2, 24, '-18.000', 84, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(534, 5, 2, 24, '-18.301', 84, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(535, 2, 1, 25, '131.400', NULL, NULL, NULL, 4, '2020-05-27 14:09:27', NULL),
(536, 3, 1, 25, '26.100', NULL, NULL, NULL, 4, '2020-05-27 14:09:27', NULL),
(537, 4, 1, 25, '124.100', NULL, NULL, NULL, 4, '2020-05-27 14:09:27', NULL),
(538, 5, 1, 25, '68.200', NULL, NULL, NULL, 4, '2020-05-27 14:09:27', NULL),
(539, 7, 1, 25, '27.100', NULL, NULL, NULL, 4, '2020-05-27 14:09:27', NULL),
(540, 9, 1, 25, '13.100', NULL, NULL, NULL, 4, '2020-05-27 14:09:27', NULL),
(541, 10, 1, 25, '52.800', NULL, NULL, NULL, 4, '2020-05-27 14:09:27', NULL),
(542, 12, 1, 25, '28.000', NULL, NULL, NULL, 4, '2020-05-27 14:09:27', NULL),
(543, 14, 1, 25, '58.000', NULL, NULL, NULL, 4, '2020-05-27 14:09:27', NULL),
(544, 15, 1, 25, '83.425', NULL, NULL, NULL, 4, '2020-05-27 14:09:27', NULL),
(545, 4, 2, 24, '-7.905', 85, NULL, NULL, 4, '2020-05-27 14:12:01', NULL),
(546, 4, 2, 25, '-39.453', 85, NULL, NULL, 4, '2020-05-27 14:12:01', NULL),
(547, 5, 2, 24, '-4.267', 86, NULL, NULL, 4, '2020-05-27 14:16:13', NULL),
(548, 5, 2, 25, '-26.142', 86, NULL, NULL, 4, '2020-05-27 14:16:13', NULL),
(549, 3, 2, 24, '-11.221', 87, NULL, NULL, 4, '2020-05-27 14:25:33', NULL),
(550, 3, 2, 25, '-14.801', 87, NULL, NULL, 4, '2020-05-27 14:25:33', NULL),
(551, 2, 2, 25, '-92.739', 88, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(552, 10, 2, 24, '-0.800', 89, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(553, 10, 2, 25, '-16.200', 89, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(554, 4, 2, 25, '-25.500', 89, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(555, 5, 2, 25, '-13.000', 89, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(556, 2, 2, 25, '-9.417', 89, NULL, NULL, 4, '2020-05-27 14:54:09', NULL),
(557, 9, 2, 23, '-6.600', 90, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(558, 9, 2, 24, '-0.400', 90, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(559, 10, 2, 25, '-16.000', 90, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(560, 4, 2, 25, '-25.402', 90, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(561, 5, 2, 25, '-12.000', 90, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(562, 2, 2, 25, '-5.000', 90, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(563, 9, 2, 24, '-6.500', 91, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(564, 10, 2, 25, '-19.700', 91, NULL, NULL, 4, '2020-05-27 15:04:42', NULL),
(565, 4, 2, 25, '-25.000', 91, NULL, NULL, 4, '2020-05-27 15:04:42', NULL),
(566, 5, 2, 25, '-12.700', 91, NULL, NULL, 4, '2020-05-27 15:04:42', NULL),
(567, 2, 2, 25, '-1.502', 91, NULL, NULL, 4, '2020-05-27 15:04:42', NULL),
(568, 2, 1, 26, '298.000', NULL, NULL, NULL, 4, '2020-06-05 16:47:45', NULL),
(569, 3, 1, 26, '33.300', NULL, NULL, NULL, 4, '2020-06-05 16:47:45', NULL),
(570, 4, 1, 26, '45.600', NULL, NULL, NULL, 4, '2020-06-05 16:47:45', NULL),
(571, 5, 1, 26, '54.500', NULL, NULL, NULL, 4, '2020-06-05 16:47:45', NULL),
(572, 7, 1, 26, '30.400', NULL, NULL, NULL, 4, '2020-06-05 16:47:45', NULL),
(573, 9, 1, 26, '11.700', NULL, NULL, NULL, 4, '2020-06-05 16:47:45', NULL),
(574, 10, 1, 26, '63.500', NULL, NULL, NULL, 4, '2020-06-05 16:47:45', NULL),
(575, 12, 1, 26, '39.600', NULL, NULL, NULL, 4, '2020-06-05 16:47:45', NULL),
(576, 14, 1, 26, '89.300', NULL, NULL, NULL, 4, '2020-06-05 16:47:45', NULL),
(577, 15, 1, 26, '89.735', NULL, NULL, NULL, 4, '2020-06-05 16:47:45', NULL),
(578, 2, 1, 27, '255.000', NULL, NULL, NULL, 4, '2020-06-10 06:43:57', NULL),
(579, 3, 1, 27, '29.000', NULL, NULL, NULL, 4, '2020-06-10 06:43:57', NULL),
(580, 4, 1, 27, '49.000', NULL, NULL, NULL, 4, '2020-06-10 06:43:57', NULL),
(581, 5, 1, 27, '56.000', NULL, NULL, NULL, 4, '2020-06-10 06:43:57', NULL),
(582, 7, 1, 27, '28.500', NULL, NULL, NULL, 4, '2020-06-10 06:43:57', NULL),
(583, 9, 1, 27, '13.900', NULL, NULL, NULL, 4, '2020-06-10 06:43:57', NULL),
(584, 10, 1, 27, '62.500', NULL, NULL, NULL, 4, '2020-06-10 06:43:57', NULL),
(585, 12, 1, 27, '30.170', NULL, NULL, NULL, 4, '2020-06-10 06:43:57', NULL),
(586, 14, 1, 27, '65.000', NULL, NULL, NULL, 4, '2020-06-10 06:43:57', NULL),
(587, 15, 1, 27, '81.200', NULL, NULL, NULL, 4, '2020-06-10 06:43:57', NULL),
(588, 2, 2, 25, '-22.742', 92, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(589, 2, 2, 27, '-109.302', 92, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(590, 9, 2, 24, '-4.000', 93, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(591, 10, 2, 25, '-0.900', 93, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(592, 10, 2, 27, '-20.100', 93, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(593, 2, 2, 27, '-56.691', 93, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(594, 9, 2, 24, '-3.100', 94, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(595, 9, 2, 26, '-0.900', 94, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(596, 10, 2, 27, '-21.000', 94, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(597, 2, 2, 27, '-50.454', 94, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(598, 9, 2, 26, '-4.000', 95, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(599, 10, 2, 27, '-21.000', 95, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(600, 2, 2, 27, '-38.553', 95, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(601, 2, 2, 26, '-19.919', 95, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(602, 4, 2, 25, '-8.745', 96, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(603, 4, 2, 26, '-36.719', 96, NULL, NULL, 4, '2020-06-12 14:54:41', NULL),
(604, 5, 2, 25, '-4.358', 97, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(605, 5, 2, 26, '-49.979', 97, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(606, 3, 2, 25, '-11.299', 98, NULL, NULL, 4, '2020-06-12 14:57:35', NULL),
(607, 3, 2, 27, '-21.901', 98, NULL, NULL, 4, '2020-06-12 14:57:35', NULL),
(608, 9, 2, 26, '-4.500', 99, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(609, 10, 2, 27, '-0.400', 99, NULL, NULL, 4, '2020-06-15 14:03:54', NULL),
(610, 10, 2, 26, '-20.100', 99, NULL, NULL, 4, '2020-06-15 14:03:54', NULL),
(611, 2, 2, 26, '-60.227', 99, NULL, NULL, 4, '2020-06-15 14:03:54', NULL),
(612, 9, 2, 26, '-2.300', 100, NULL, NULL, 4, '2020-06-15 14:05:09', NULL),
(613, 9, 2, 25, '-1.700', 100, NULL, NULL, 4, '2020-06-15 14:05:09', NULL),
(614, 10, 2, 26, '-20.000', 100, NULL, NULL, 4, '2020-06-15 14:05:09', NULL),
(615, 2, 2, 26, '-44.018', 100, NULL, NULL, 4, '2020-06-15 14:05:09', NULL),
(616, 4, 2, 26, '-8.881', 101, NULL, NULL, 4, '2020-06-15 14:06:44', NULL),
(617, 4, 2, 27, '-39.972', 101, NULL, NULL, 4, '2020-06-15 14:06:44', NULL),
(618, 3, 2, 27, '-7.099', 102, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(619, 3, 2, 26, '-21.814', 102, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(620, 5, 2, 26, '-4.521', 103, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(621, 5, 2, 27, '-51.312', 103, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(622, 2, 2, 26, '-113.697', 104, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(623, 9, 2, 25, '-4.000', 105, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(624, 10, 2, 26, '-20.000', 105, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(625, 2, 2, 26, '-30.190', 105, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(626, 1, 1, 28, '81.000', NULL, NULL, NULL, 4, '2020-06-17 16:36:26', NULL),
(627, 2, 1, 28, '174.900', NULL, NULL, NULL, 4, '2020-06-17 16:36:26', NULL),
(628, 3, 1, 28, '28.600', NULL, NULL, NULL, 4, '2020-06-17 16:36:26', NULL),
(629, 4, 1, 28, '46.800', NULL, NULL, NULL, 4, '2020-06-17 16:36:26', NULL),
(630, 5, 1, 28, '49.600', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(631, 7, 1, 28, '22.900', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(632, 9, 1, 28, '13.600', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(633, 10, 1, 28, '63.300', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(634, 12, 1, 28, '34.592', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(635, 14, 1, 28, '61.200', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(636, 15, 1, 28, '90.900', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(637, 1, 1, 29, '81.000', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(638, 2, 1, 29, '174.900', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(639, 3, 1, 29, '28.600', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(640, 4, 1, 29, '46.800', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(641, 5, 1, 29, '49.600', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(642, 7, 1, 29, '22.900', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(643, 9, 1, 29, '13.600', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(644, 10, 1, 29, '63.300', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(645, 12, 1, 29, '34.592', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(646, 14, 1, 29, '61.200', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(647, 15, 1, 29, '90.900', NULL, NULL, NULL, 4, '2020-06-17 16:36:27', NULL),
(648, 3, 2, 26, '-11.486', 106, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(649, 3, 2, 28, '-17.028', 106, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(650, 5, 2, 27, '-4.688', 107, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(651, 1, 2, 28, '-44.764', 107, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(652, 4, 2, 27, '-9.028', 108, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(653, 4, 2, 28, '-37.632', 108, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(654, 2, 2, 26, '-29.949', 109, NULL, NULL, 4, '2020-06-17 20:17:48', NULL),
(655, 2, 2, 28, '-90.611', 109, NULL, NULL, 4, '2020-06-17 20:17:48', NULL),
(656, 9, 2, 25, '-4.500', 110, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(657, 10, 2, 26, '-3.400', 110, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(658, 10, 2, 28, '-17.600', 110, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(659, 2, 2, 28, '-39.902', 110, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(660, 9, 2, 25, '-2.900', 111, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(661, 9, 2, 28, '-1.600', 111, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(662, 10, 2, 28, '-21.000', 111, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(663, 2, 2, 28, '-39.417', 111, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(664, 9, 2, 28, '-4.500', 112, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(665, 10, 2, 28, '-22.000', 112, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(666, 2, 2, 28, '-4.970', 112, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(667, 1, 2, 28, '-33.932', 112, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(668, 2, 1, 30, '345.400', NULL, NULL, NULL, 4, '2020-06-23 17:53:36', NULL),
(669, 3, 1, 30, '36.500', NULL, NULL, NULL, 4, '2020-06-23 17:53:36', NULL),
(670, 5, 1, 30, '107.200', NULL, NULL, NULL, 4, '2020-06-23 17:53:36', NULL),
(671, 7, 1, 30, '34.600', NULL, NULL, NULL, 4, '2020-06-23 17:53:36', NULL),
(672, 9, 1, 30, '16.400', NULL, NULL, NULL, 4, '2020-06-23 17:53:36', NULL),
(673, 10, 1, 30, '73.800', NULL, NULL, NULL, 4, '2020-06-23 17:53:36', NULL),
(674, 12, 1, 30, '37.100', NULL, NULL, NULL, 4, '2020-06-23 17:53:36', NULL),
(675, 13, 1, 30, '0.037', NULL, NULL, NULL, 4, '2020-06-23 17:53:37', NULL),
(676, 14, 1, 30, '77.900', NULL, NULL, NULL, 4, '2020-06-23 17:53:37', NULL),
(677, 15, 1, 30, '105.200', NULL, NULL, NULL, 4, '2020-06-23 17:53:37', NULL),
(678, 5, 2, 30, '-4.836', 113, NULL, NULL, 4, '2020-06-24 07:19:01', NULL),
(679, 5, 2, 28, '-40.761', 113, NULL, NULL, 4, '2020-06-24 07:19:01', NULL),
(680, 2, 2, 30, '-79.600', 113, NULL, NULL, 4, '2020-06-24 07:19:01', NULL),
(681, 9, 2, 30, '-5.000', 114, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(682, 10, 2, 28, '-2.700', 114, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(683, 10, 2, 30, '-21.300', 114, NULL, NULL, 4, '2020-06-24 07:21:39', NULL);
INSERT INTO `carnes_mov` (`id_movimiento`, `id_carne`, `id_cuenta`, `id_desposte`, `cantidad`, `id_ordenprod`, `id_decomiso`, `id_ajuste_stock`, `id_usuario`, `fecha_movimiento`, `descripcion`) VALUES
(684, 5, 2, 28, '-8.197', 114, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(685, 2, 2, 30, '-61.368', 114, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(686, 2, 2, 30, '-26.632', 114, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(687, 1, 3, 29, '-81.000', NULL, NULL, NULL, 1, '2020-06-24 18:51:51', NULL),
(688, 2, 3, 29, '-174.900', NULL, NULL, NULL, 1, '2020-06-24 18:51:51', NULL),
(689, 3, 3, 29, '-28.600', NULL, NULL, NULL, 1, '2020-06-24 18:51:51', NULL),
(690, 4, 3, 29, '-46.800', NULL, NULL, NULL, 1, '2020-06-24 18:51:51', NULL),
(691, 5, 3, 29, '-49.600', NULL, NULL, NULL, 1, '2020-06-24 18:51:51', NULL),
(692, 7, 3, 29, '-22.900', NULL, NULL, NULL, 1, '2020-06-24 18:51:51', NULL),
(693, 9, 3, 29, '-13.600', NULL, NULL, NULL, 1, '2020-06-24 18:51:51', NULL),
(694, 10, 3, 29, '-63.300', NULL, NULL, NULL, 1, '2020-06-24 18:51:51', NULL),
(695, 12, 3, 29, '-34.592', NULL, NULL, NULL, 1, '2020-06-24 18:51:51', NULL),
(696, 14, 3, 29, '-61.200', NULL, NULL, NULL, 1, '2020-06-24 18:51:51', NULL),
(697, 15, 3, 29, '-90.900', NULL, NULL, NULL, 1, '2020-06-24 18:51:51', NULL),
(702, 9, 2, 28, '-5.500', 115, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(703, 10, 2, 30, '-24.500', 115, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(704, 5, 2, 28, '-0.642', 115, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(705, 5, 2, 30, '-17.858', 115, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(706, 2, 2, 30, '-77.633', 115, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(707, 9, 2, 28, '-2.000', 116, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(708, 9, 2, 30, '-3.500', 116, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(709, 10, 2, 30, '-24.500', 116, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(710, 5, 2, 30, '-18.500', 116, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(711, 2, 2, 30, '-77.633', 116, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(712, 3, 2, 28, '-11.572', 117, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(713, 3, 2, 30, '-24.819', 117, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(714, 2, 1, 31, '163.500', NULL, NULL, NULL, 4, '2020-06-30 14:50:33', NULL),
(715, 3, 1, 31, '19.200', NULL, NULL, NULL, 4, '2020-06-30 14:50:33', NULL),
(716, 5, 1, 31, '43.000', NULL, NULL, NULL, 4, '2020-06-30 14:50:33', NULL),
(717, 7, 1, 31, '16.900', NULL, NULL, NULL, 4, '2020-06-30 14:50:33', NULL),
(718, 9, 1, 31, '9.200', NULL, NULL, NULL, 4, '2020-06-30 14:50:33', NULL),
(719, 10, 1, 31, '38.100', NULL, NULL, NULL, 4, '2020-06-30 14:50:33', NULL),
(720, 12, 1, 31, '19.700', NULL, NULL, NULL, 4, '2020-06-30 14:50:34', NULL),
(721, 14, 1, 31, '46.200', NULL, NULL, NULL, 4, '2020-06-30 14:50:34', NULL),
(722, 15, 1, 31, '51.410', NULL, NULL, NULL, 4, '2020-06-30 14:50:34', NULL),
(723, 5, 2, 31, '-36.439', 118, NULL, NULL, 4, '2020-06-30 15:11:08', NULL),
(724, 2, 2, 30, '-22.534', 118, NULL, NULL, 4, '2020-06-30 15:11:08', NULL),
(725, 2, 2, 31, '-33.766', 118, NULL, NULL, 4, '2020-06-30 15:11:08', NULL),
(726, 5, 6, 31, '36.439', 118, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(727, 2, 6, 30, '22.534', 118, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(728, 2, 6, 31, '33.766', 118, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(729, 5, 2, 31, '-8.617', 119, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(730, 2, 2, 30, '-22.534', 119, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(731, 2, 2, 31, '-33.766', 119, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(732, 9, 2, 30, '-3.000', 120, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(733, 3, 2, 30, '-6.400', 120, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(734, 10, 2, 30, '-3.500', 120, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(735, 10, 2, 31, '-9.000', 120, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(736, 5, 2, 31, '-11.400', 120, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(737, 2, 2, 31, '-31.617', 120, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(738, 9, 2, 30, '-3.000', 121, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(739, 3, 2, 30, '-5.281', 121, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(740, 3, 2, 31, '-1.119', 121, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(741, 10, 2, 31, '-12.700', 121, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(742, 5, 2, 31, '-11.400', 121, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(743, 2, 2, 31, '-31.902', 121, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(744, 9, 2, 30, '-1.900', 122, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(745, 9, 2, 31, '-1.100', 122, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(746, 3, 2, 31, '-6.400', 122, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(747, 10, 2, 31, '-12.700', 122, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(748, 5, 2, 31, '-11.400', 122, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(749, 2, 2, 31, '-31.902', 122, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(750, 2, 1, 32, '66.500', NULL, NULL, NULL, 4, '2020-07-07 14:07:28', NULL),
(751, 3, 1, 32, '6.700', NULL, NULL, NULL, 4, '2020-07-07 14:07:28', NULL),
(752, 5, 1, 32, '15.800', NULL, NULL, NULL, 4, '2020-07-07 14:07:28', NULL),
(753, 7, 1, 32, '6.800', NULL, NULL, NULL, 4, '2020-07-07 14:07:28', NULL),
(754, 9, 1, 32, '3.600', NULL, NULL, NULL, 4, '2020-07-07 14:07:28', NULL),
(755, 10, 1, 32, '15.000', NULL, NULL, NULL, 4, '2020-07-07 14:07:28', NULL),
(756, 12, 1, 32, '7.900', NULL, NULL, NULL, 4, '2020-07-07 14:07:28', NULL),
(757, 14, 1, 32, '19.003', NULL, NULL, NULL, 4, '2020-07-07 14:07:28', NULL),
(758, 15, 1, 32, '16.800', NULL, NULL, NULL, 4, '2020-07-07 14:07:28', NULL),
(759, 3, 2, 32, '-6.680', 123, NULL, NULL, 4, '2020-07-07 14:10:11', NULL),
(760, 5, 2, 31, '-0.183', 124, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(761, 5, 2, 32, '-6.840', 124, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(762, 2, 2, 31, '-31.000', 124, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(763, 9, 2, 32, '-3.600', 125, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(764, 10, 2, 31, '-3.700', 125, NULL, NULL, 4, '2020-07-07 14:22:49', NULL),
(765, 10, 2, 32, '-11.300', 125, NULL, NULL, 4, '2020-07-07 14:22:49', NULL),
(766, 5, 2, 32, '-5.253', 125, NULL, NULL, 4, '2020-07-07 14:22:49', NULL),
(767, 2, 2, 31, '-3.313', 125, NULL, NULL, 4, '2020-07-07 14:22:49', NULL),
(768, 2, 2, 32, '-32.187', 125, NULL, NULL, 4, '2020-07-07 14:22:49', NULL),
(769, 2, 1, 33, '125.600', NULL, NULL, NULL, 4, '2020-07-14 14:12:05', NULL),
(770, 3, 1, 33, '17.000', NULL, NULL, NULL, 4, '2020-07-14 14:12:05', NULL),
(771, 4, 1, 33, '45.600', NULL, NULL, NULL, 4, '2020-07-14 14:12:05', NULL),
(772, 5, 1, 33, '40.500', NULL, NULL, NULL, 4, '2020-07-14 14:12:06', NULL),
(773, 7, 1, 33, '18.100', NULL, NULL, NULL, 4, '2020-07-14 14:12:06', NULL),
(774, 9, 1, 33, '8.700', NULL, NULL, NULL, 4, '2020-07-14 14:12:06', NULL),
(775, 10, 1, 33, '35.300', NULL, NULL, NULL, 4, '2020-07-14 14:12:06', NULL),
(776, 12, 1, 33, '19.800', NULL, NULL, NULL, 4, '2020-07-14 14:12:06', NULL),
(777, 14, 1, 33, '39.600', NULL, NULL, NULL, 4, '2020-07-14 14:12:06', NULL),
(778, 15, 1, 33, '54.008', NULL, NULL, NULL, 4, '2020-07-14 14:12:06', NULL),
(779, 2, 2, 32, '-34.313', 126, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(780, 2, 2, 33, '-35.241', 126, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(781, 9, 2, 27, '-4.350', 127, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(782, 10, 2, 32, '-3.700', 127, NULL, NULL, 4, '2020-07-14 21:40:09', NULL),
(783, 10, 2, 33, '-13.900', 127, NULL, NULL, 4, '2020-07-14 21:40:09', NULL),
(784, 2, 2, 33, '-27.569', 127, NULL, NULL, 4, '2020-07-14 21:40:09', NULL),
(785, 9, 2, 27, '-4.350', 128, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(786, 10, 2, 33, '-17.600', 128, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(787, 2, 2, 33, '-27.569', 128, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(788, 3, 2, 31, '-11.681', 129, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(789, 3, 2, 32, '-0.020', 129, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(790, 3, 2, 33, '-5.248', 129, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(791, 4, 2, 28, '-9.168', 130, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(792, 4, 2, 33, '-35.697', 130, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(793, 5, 2, 30, '-40.479', 131, NULL, NULL, 4, '2020-07-14 21:47:45', NULL),
(794, 12, 13, 21, '-28.000', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(795, 14, 13, 21, '-25.000', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(796, 15, 13, 21, '-27.184', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(797, 13, 13, 21, '-10.000', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(798, 7, 13, 22, '-12.500', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(799, 12, 13, 22, '-15.600', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(800, 14, 13, 22, '-31.400', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(801, 15, 13, 22, '-30.728', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(802, 13, 13, 22, '-9.500', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(803, 12, 13, 23, '-17.200', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(804, 14, 13, 23, '-29.800', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(805, 15, 13, 23, '-30.350', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(806, 13, 13, 23, '-16.000', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(807, 12, 13, 24, '-33.700', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(808, 14, 13, 24, '-60.342', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(809, 15, 13, 24, '-82.300', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(810, 12, 13, 25, '-28.000', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(811, 14, 13, 25, '-58.000', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(812, 15, 13, 25, '-83.425', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(813, 12, 13, 26, '-39.600', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(814, 14, 13, 26, '-89.300', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(815, 15, 13, 26, '-89.735', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(816, 9, 13, 27, '-5.200', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(817, 12, 13, 27, '-30.170', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(818, 14, 13, 27, '-65.000', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(819, 15, 13, 27, '-81.200', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(820, 12, 13, 28, '-34.592', NULL, 1, NULL, 4, '2020-07-20 04:24:44', NULL),
(821, 14, 13, 28, '-61.200', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(822, 15, 13, 28, '-90.900', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(823, 12, 13, 30, '-37.100', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(824, 14, 13, 30, '-77.900', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(825, 15, 13, 30, '-105.200', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(826, 13, 13, 30, '-0.037', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(827, 12, 13, 31, '-19.700', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(828, 14, 13, 31, '-46.200', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(829, 15, 13, 31, '-51.410', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(830, 12, 13, 32, '-7.900', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(831, 14, 13, 32, '-19.003', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(832, 15, 13, 32, '-16.800', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(833, 12, 13, 33, '-19.800', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(834, 14, 13, 33, '-39.600', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(835, 15, 13, 33, '-54.008', NULL, 1, NULL, 4, '2020-07-20 04:24:45', NULL),
(836, 7, 13, 1, '-9.700', NULL, 2, NULL, 4, '2020-07-20 04:29:26', NULL),
(837, 7, 13, 7, '-9.200', NULL, 2, NULL, 4, '2020-07-20 04:29:26', NULL),
(838, 7, 13, 9, '-1.700', NULL, 3, NULL, 4, '2020-07-20 04:44:04', NULL),
(839, 7, 13, 10, '-2.500', NULL, 3, NULL, 4, '2020-07-20 04:44:04', NULL),
(840, 7, 13, 15, '-1.900', NULL, 3, NULL, 4, '2020-07-20 04:44:04', NULL),
(841, 7, 13, 18, '-4.920', NULL, 3, NULL, 4, '2020-07-20 04:44:04', NULL),
(842, 7, 13, 20, '-5.280', NULL, 3, NULL, 4, '2020-07-20 04:44:04', NULL),
(843, 7, 13, 24, '-20.600', NULL, 3, NULL, 4, '2020-07-20 04:44:04', NULL),
(844, 7, 13, 25, '-27.100', NULL, 3, NULL, 4, '2020-07-20 04:44:04', NULL),
(845, 7, 13, 27, '-28.500', NULL, 3, NULL, 4, '2020-07-20 04:44:04', NULL),
(846, 9, 13, 31, '-8.100', NULL, 3, NULL, 4, '2020-07-20 04:44:04', NULL),
(847, 5, 13, 32, '-3.707', NULL, 3, NULL, 4, '2020-07-20 04:44:04', NULL),
(848, 9, 13, 33, '-8.700', NULL, 3, NULL, 4, '2020-07-20 04:44:05', NULL),
(849, 10, 13, 33, '-3.800', NULL, 3, NULL, 4, '2020-07-20 04:44:05', NULL),
(850, 4, 13, 33, '-9.903', NULL, 3, NULL, 4, '2020-07-20 04:44:05', NULL),
(851, 5, 13, 33, '-40.500', NULL, 3, NULL, 4, '2020-07-20 04:44:05', NULL),
(852, 2, 1, 34, '117.600', NULL, NULL, NULL, 4, '2020-07-21 09:26:39', NULL),
(853, 3, 1, 34, '16.000', NULL, NULL, NULL, 4, '2020-07-21 09:26:39', NULL),
(854, 4, 1, 34, '47.200', NULL, NULL, NULL, 4, '2020-07-21 09:26:39', NULL),
(855, 5, 1, 34, '47.000', NULL, NULL, NULL, 4, '2020-07-21 09:26:40', NULL),
(856, 7, 1, 34, '15.100', NULL, NULL, NULL, 4, '2020-07-21 09:26:40', NULL),
(857, 9, 1, 34, '8.000', NULL, NULL, NULL, 4, '2020-07-21 09:26:40', NULL),
(858, 10, 1, 34, '36.900', NULL, NULL, NULL, 4, '2020-07-21 09:26:40', NULL),
(859, 12, 1, 34, '21.800', NULL, NULL, NULL, 4, '2020-07-21 09:26:40', NULL),
(860, 13, 1, 34, '0.200', NULL, NULL, NULL, 4, '2020-07-21 09:26:40', NULL),
(861, 14, 1, 34, '41.700', NULL, NULL, NULL, 4, '2020-07-21 09:26:40', NULL),
(862, 15, 1, 34, '55.100', NULL, NULL, NULL, 4, '2020-07-21 09:26:40', NULL),
(863, 2, 2, 33, '-35.221', 132, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(864, 2, 2, 34, '-43.607', 132, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(865, 9, 2, 34, '-4.000', 133, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(866, 10, 2, 34, '-18.500', 133, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(867, 2, 2, 34, '-17.378', 133, NULL, NULL, 4, '2020-07-23 02:54:19', NULL),
(868, 9, 2, 34, '-4.000', 134, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(869, 10, 2, 34, '-18.400', 134, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(870, 2, 2, 34, '-17.478', 134, NULL, NULL, 4, '2020-07-23 02:55:46', NULL),
(871, 5, 2, 30, '-25.527', 135, NULL, NULL, 4, '2020-07-23 02:57:30', NULL),
(872, 5, 2, 34, '-21.332', 135, NULL, NULL, 4, '2020-07-23 02:57:30', NULL),
(873, 3, 2, 33, '-11.752', 136, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(874, 3, 2, 34, '-4.200', 136, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(875, 4, 2, 34, '-47.059', 137, NULL, NULL, 4, '2020-07-23 03:03:49', NULL),
(876, 2, 1, 35, '33.200', NULL, NULL, NULL, 4, '2020-07-30 12:06:48', NULL),
(877, 3, 1, 35, '7.300', NULL, NULL, NULL, 4, '2020-07-30 12:06:48', NULL),
(878, 4, 1, 35, '37.600', NULL, NULL, NULL, 4, '2020-07-30 12:06:48', NULL),
(879, 5, 1, 35, '24.000', NULL, NULL, NULL, 4, '2020-07-30 12:06:48', NULL),
(880, 7, 1, 35, '8.100', NULL, NULL, NULL, 4, '2020-07-30 12:06:48', NULL),
(881, 9, 1, 35, '3.800', NULL, NULL, NULL, 4, '2020-07-30 12:06:48', NULL),
(882, 10, 1, 35, '16.000', NULL, NULL, NULL, 4, '2020-07-30 12:06:48', NULL),
(883, 12, 1, 35, '9.300', NULL, NULL, NULL, 4, '2020-07-30 12:06:48', NULL),
(884, 14, 1, 35, '22.700', NULL, NULL, NULL, 4, '2020-07-30 12:06:48', NULL),
(885, 15, 1, 35, '23.803', NULL, NULL, NULL, 4, '2020-07-30 12:06:48', NULL),
(886, 4, 2, 34, '-0.141', 138, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(887, 4, 2, 35, '-5.721', 138, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(888, 5, 2, 35, '-24.000', 138, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(889, 2, 2, 35, '-33.200', 138, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(890, 9, 2, 35, '-3.800', 139, NULL, NULL, 4, '2020-07-30 12:16:07', NULL),
(891, 10, 2, 35, '-16.000', 139, NULL, NULL, 4, '2020-07-30 12:16:07', NULL),
(892, 4, 2, 35, '-26.569', 139, NULL, NULL, 4, '2020-07-30 12:16:07', NULL),
(893, 3, 2, 35, '-7.278', 140, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(894, 3, 2, 35, '-0.022', 141, NULL, NULL, 4, '2020-07-30 12:17:58', NULL),
(895, 3, 2, 34, '-7.256', 141, NULL, NULL, 4, '2020-07-30 12:17:58', NULL),
(896, 3, 6, 35, '0.022', 141, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(897, 3, 6, 34, '7.256', 141, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(898, 2, 1, 36, '129.000', NULL, NULL, NULL, 4, '2020-08-05 10:17:27', NULL),
(899, 3, 1, 36, '16.700', NULL, NULL, NULL, 4, '2020-08-05 10:17:27', NULL),
(900, 4, 1, 36, '42.300', NULL, NULL, NULL, 4, '2020-08-05 10:17:27', NULL),
(901, 5, 1, 36, '48.700', NULL, NULL, NULL, 4, '2020-08-05 10:17:27', NULL),
(902, 7, 1, 36, '16.400', NULL, NULL, NULL, 4, '2020-08-05 10:17:27', NULL),
(903, 9, 1, 36, '9.600', NULL, NULL, NULL, 4, '2020-08-05 10:17:27', NULL),
(904, 10, 1, 36, '35.600', NULL, NULL, NULL, 4, '2020-08-05 10:17:27', NULL),
(905, 12, 1, 36, '20.400', NULL, NULL, NULL, 4, '2020-08-05 10:17:27', NULL),
(906, 14, 1, 36, '45.872', NULL, NULL, NULL, 4, '2020-08-05 10:17:27', NULL),
(907, 15, 1, 36, '50.000', NULL, NULL, NULL, 4, '2020-08-05 10:17:27', NULL),
(908, 4, 2, 35, '-5.310', 142, NULL, NULL, 4, '2020-08-06 02:38:00', NULL),
(909, 4, 2, 36, '-36.863', 142, NULL, NULL, 4, '2020-08-06 02:38:00', NULL),
(910, 3, 2, 35, '-0.022', 143, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(911, 3, 2, 34, '-11.800', 143, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(912, 3, 2, 36, '-4.828', 143, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(913, 5, 2, 34, '-25.668', 144, NULL, NULL, 4, '2020-08-06 02:44:23', NULL),
(914, 5, 2, 36, '-22.886', 144, NULL, NULL, 4, '2020-08-06 02:44:23', NULL),
(915, 2, 2, 34, '-39.137', 145, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(916, 2, 2, 36, '-4.450', 145, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(917, 9, 2, 36, '-4.800', 146, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(918, 10, 2, 36, '-17.800', 146, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(919, 2, 2, 36, '-20.987', 146, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(920, 9, 2, 36, '-4.800', 147, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(921, 10, 2, 36, '-17.800', 147, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(922, 2, 2, 36, '-65.226', 147, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(923, 7, 13, 8, '-8.200', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(924, 7, 13, 11, '-8.000', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(925, 12, 13, 34, '-21.800', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(926, 14, 13, 34, '-41.700', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(927, 15, 13, 34, '-55.100', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(928, 13, 13, 34, '-0.200', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(929, 12, 13, 35, '-9.300', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(930, 14, 13, 35, '-22.700', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(931, 15, 13, 35, '-23.803', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(932, 12, 13, 36, '-20.400', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(933, 14, 13, 36, '-45.872', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(934, 15, 13, 36, '-50.000', NULL, 4, NULL, 4, '2020-08-09 14:06:03', NULL),
(935, 2, 8, 36, '-38.337', NULL, NULL, 20, 4, '2020-08-11 10:04:54', NULL),
(936, 3, 8, 36, '-11.872', NULL, NULL, 21, 4, '2020-08-11 10:06:57', NULL),
(937, 5, 8, 36, '-25.814', NULL, NULL, 22, 4, '2020-08-11 10:08:11', NULL),
(938, 4, 8, 36, '-5.437', NULL, NULL, 23, 4, '2020-08-11 10:08:54', NULL),
(939, 1, 8, 28, '-2.304', NULL, NULL, 24, 4, '2020-08-11 10:09:30', NULL),
(940, 2, 1, 37, '136.500', NULL, NULL, NULL, 4, '2020-08-11 10:23:22', NULL),
(941, 3, 1, 37, '19.900', NULL, NULL, NULL, 4, '2020-08-11 10:23:22', NULL),
(942, 4, 1, 37, '50.200', NULL, NULL, NULL, 4, '2020-08-11 10:23:22', NULL),
(943, 5, 1, 37, '51.100', NULL, NULL, NULL, 4, '2020-08-11 10:23:22', NULL),
(944, 7, 1, 37, '17.200', NULL, NULL, NULL, 4, '2020-08-11 10:23:22', NULL),
(945, 9, 1, 37, '9.900', NULL, NULL, NULL, 4, '2020-08-11 10:23:22', NULL),
(946, 10, 1, 37, '39.200', NULL, NULL, NULL, 4, '2020-08-11 10:23:22', NULL),
(947, 12, 1, 37, '21.200', NULL, NULL, NULL, 4, '2020-08-11 10:23:23', NULL),
(948, 13, 1, 37, '0.150', NULL, NULL, NULL, 4, '2020-08-11 10:23:23', NULL),
(949, 14, 1, 37, '48.200', NULL, NULL, NULL, 4, '2020-08-11 10:23:23', NULL),
(950, 15, 1, 37, '50.600', NULL, NULL, NULL, 4, '2020-08-11 10:23:23', NULL),
(951, 3, 2, 37, '-19.840', 148, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(952, 4, 2, 37, '-50.050', 149, NULL, NULL, 4, '2020-08-11 10:29:43', NULL),
(953, 5, 2, 37, '-50.947', 150, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(954, 2, 2, 37, '-32.551', 151, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(955, 9, 2, 37, '-3.300', 152, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(956, 10, 2, 37, '-13.000', 152, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(957, 2, 2, 37, '-33.779', 152, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(958, 9, 2, 37, '-6.600', 153, NULL, NULL, 4, '2020-08-12 09:30:03', NULL),
(959, 10, 2, 37, '-26.200', 153, NULL, NULL, 4, '2020-08-12 09:30:03', NULL),
(960, 2, 2, 37, '-69.975', 153, NULL, NULL, 4, '2020-08-12 09:30:03', NULL),
(961, 2, 1, 38, '135.400', NULL, NULL, NULL, 4, '2020-08-18 11:29:24', NULL),
(962, 3, 1, 38, '21.200', NULL, NULL, NULL, 4, '2020-08-18 11:29:24', NULL),
(963, 4, 1, 38, '50.200', NULL, NULL, NULL, 4, '2020-08-18 11:29:24', NULL),
(964, 5, 1, 38, '50.700', NULL, NULL, NULL, 4, '2020-08-18 11:29:24', NULL),
(965, 7, 1, 38, '18.000', NULL, NULL, NULL, 4, '2020-08-18 11:29:24', NULL),
(966, 9, 1, 38, '10.100', NULL, NULL, NULL, 4, '2020-08-18 11:29:24', NULL),
(967, 10, 1, 38, '39.600', NULL, NULL, NULL, 4, '2020-08-18 11:29:24', NULL),
(968, 12, 1, 38, '23.500', NULL, NULL, NULL, 4, '2020-08-18 11:29:24', NULL),
(969, 13, 1, 38, '0.300', NULL, NULL, NULL, 4, '2020-08-18 11:29:24', NULL),
(970, 14, 1, 38, '44.200', NULL, NULL, NULL, 4, '2020-08-18 11:29:24', NULL),
(971, 15, 1, 38, '53.000', NULL, NULL, NULL, 4, '2020-08-18 11:29:24', NULL),
(972, 5, 2, 37, '-0.153', 154, NULL, NULL, 4, '2020-08-18 19:26:14', NULL),
(973, 5, 2, 38, '-49.896', 154, NULL, NULL, 4, '2020-08-18 19:26:14', NULL),
(974, 9, 2, 38, '-5.050', 155, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(975, 10, 2, 38, '-19.800', 155, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(976, 2, 2, 37, '-0.195', 155, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(977, 2, 2, 38, '-67.452', 155, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(978, 9, 2, 38, '-5.050', 156, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(979, 10, 2, 38, '-19.800', 156, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(980, 2, 2, 38, '-67.647', 156, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(981, 4, 2, 37, '-0.150', 157, NULL, NULL, 4, '2020-08-19 03:18:26', NULL),
(982, 4, 2, 38, '-49.900', 157, NULL, NULL, 4, '2020-08-19 03:18:26', NULL),
(983, 3, 2, 37, '-0.060', 158, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(984, 3, 2, 38, '-20.868', 158, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(985, 7, 13, 9, '-8.000', NULL, 7, NULL, 4, '2020-08-19 03:26:15', NULL),
(986, 7, 13, 10, '-10.500', NULL, 7, NULL, 4, '2020-08-19 03:26:15', NULL),
(987, 12, 13, 37, '-21.200', NULL, 7, NULL, 4, '2020-08-19 03:26:15', NULL),
(988, 14, 13, 37, '-48.200', NULL, 7, NULL, 4, '2020-08-19 03:26:15', NULL),
(989, 15, 13, 37, '-50.600', NULL, 7, NULL, 4, '2020-08-19 03:26:15', NULL),
(990, 13, 13, 37, '-0.150', NULL, 7, NULL, 4, '2020-08-19 03:26:15', NULL),
(991, 12, 13, 38, '-23.500', NULL, 7, NULL, 4, '2020-08-19 03:26:15', NULL),
(992, 14, 13, 38, '-44.200', NULL, 7, NULL, 4, '2020-08-19 03:26:15', NULL),
(993, 15, 13, 38, '-53.000', NULL, 7, NULL, 4, '2020-08-19 03:26:15', NULL),
(994, 13, 13, 38, '-0.300', NULL, 7, NULL, 4, '2020-08-19 03:26:15', NULL),
(995, 3, 13, 38, '-0.332', NULL, 9, NULL, 4, '2020-08-24 11:36:44', NULL),
(996, 4, 13, 38, '-0.300', NULL, 9, NULL, 4, '2020-08-24 11:36:44', NULL),
(997, 5, 13, 38, '-0.804', NULL, 9, NULL, 4, '2020-08-24 11:36:44', NULL),
(998, 2, 1, 39, '125.500', NULL, NULL, NULL, 4, '2020-08-25 09:46:21', NULL),
(999, 3, 1, 39, '20.600', NULL, NULL, NULL, 4, '2020-08-25 09:46:21', NULL),
(1000, 4, 1, 39, '47.000', NULL, NULL, NULL, 4, '2020-08-25 09:46:21', NULL),
(1001, 5, 1, 39, '47.800', NULL, NULL, NULL, 4, '2020-08-25 09:46:21', NULL),
(1002, 7, 1, 39, '15.900', NULL, NULL, NULL, 4, '2020-08-25 09:46:21', NULL),
(1003, 9, 1, 39, '8.800', NULL, NULL, NULL, 4, '2020-08-25 09:46:21', NULL),
(1004, 10, 1, 39, '36.100', NULL, NULL, NULL, 4, '2020-08-25 09:46:21', NULL),
(1005, 12, 1, 39, '20.100', NULL, NULL, NULL, 4, '2020-08-25 09:46:21', NULL),
(1006, 13, 1, 39, '0.010', NULL, NULL, NULL, 4, '2020-08-25 09:46:21', NULL),
(1007, 14, 1, 39, '40.300', NULL, NULL, NULL, 4, '2020-08-25 09:46:21', NULL),
(1008, 15, 1, 39, '47.600', NULL, NULL, NULL, 4, '2020-08-25 09:46:21', NULL),
(1009, 4, 2, 39, '-23.267', 159, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(1010, 4, 2, 39, '-23.267', 160, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(1011, 4, 6, 39, '23.267', 160, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(1012, 4, 2, 39, '-23.267', 161, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(1013, 5, 2, 39, '-47.657', 162, NULL, NULL, 4, '2020-08-25 12:52:30', NULL),
(1014, 3, 2, 39, '-20.538', 163, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(1015, 2, 2, 38, '-0.301', 164, NULL, NULL, 4, '2020-08-25 17:27:14', NULL),
(1016, 2, 2, 39, '-59.979', 164, NULL, NULL, 4, '2020-08-25 17:27:14', NULL),
(1017, 9, 2, 39, '-3.170', 165, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(1018, 10, 2, 39, '-13.000', 165, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(1019, 2, 2, 39, '-22.780', 165, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(1020, 9, 2, 39, '-5.630', 166, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(1021, 10, 2, 39, '-23.100', 166, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(1022, 2, 2, 39, '-41.344', 166, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(1023, 3, 13, 39, '-0.062', NULL, 11, NULL, 4, '2020-08-31 02:43:56', NULL),
(1024, 4, 13, 39, '-0.466', NULL, 11, NULL, 4, '2020-08-31 02:43:56', NULL),
(1025, 5, 13, 39, '-0.143', NULL, 11, NULL, 4, '2020-08-31 02:43:56', NULL),
(1026, 2, 1, 40, '149.500', NULL, NULL, NULL, 4, '2020-09-01 10:20:05', NULL),
(1027, 3, 1, 40, '21.200', NULL, NULL, NULL, 4, '2020-09-01 10:20:05', NULL),
(1028, 4, 1, 40, '50.200', NULL, NULL, NULL, 4, '2020-09-01 10:20:05', NULL),
(1029, 5, 1, 40, '51.800', NULL, NULL, NULL, 4, '2020-09-01 10:20:05', NULL),
(1030, 7, 1, 40, '18.100', NULL, NULL, NULL, 4, '2020-09-01 10:20:05', NULL),
(1031, 9, 1, 40, '9.900', NULL, NULL, NULL, 4, '2020-09-01 10:20:05', NULL),
(1032, 10, 1, 40, '41.000', NULL, NULL, NULL, 4, '2020-09-01 10:20:05', NULL),
(1033, 12, 1, 40, '21.000', NULL, NULL, NULL, 4, '2020-09-01 10:20:05', NULL),
(1034, 13, 1, 40, '0.011', NULL, NULL, NULL, 4, '2020-09-01 10:20:05', NULL),
(1035, 14, 1, 40, '48.100', NULL, NULL, NULL, 4, '2020-09-01 10:20:05', NULL),
(1036, 15, 1, 40, '50.400', NULL, NULL, NULL, 4, '2020-09-01 10:20:05', NULL),
(1037, 9, 2, 40, '-6.435', 167, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(1038, 10, 2, 40, '-13.325', 167, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(1039, 2, 2, 39, '-1.397', 167, NULL, NULL, 4, '2020-09-02 03:02:16', NULL),
(1040, 2, 2, 40, '-43.760', 167, NULL, NULL, 4, '2020-09-02 03:02:16', NULL),
(1041, 9, 2, 40, '-3.465', 168, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(1042, 10, 2, 40, '-6.435', 168, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(1043, 2, 2, 40, '-25.341', 168, NULL, NULL, 4, '2020-09-02 03:06:36', NULL),
(1044, 10, 2, 40, '-21.240', 169, NULL, NULL, 4, '2020-09-02 03:13:24', NULL),
(1045, 2, 2, 40, '-79.666', 169, NULL, NULL, 4, '2020-09-02 03:13:24', NULL),
(1046, 4, 2, 40, '-25.743', 170, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(1047, 4, 2, 40, '-24.457', 171, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(1048, 2, 2, 40, '-0.295', 171, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(1049, 5, 2, 40, '-51.333', 172, NULL, NULL, 4, '2020-09-02 03:23:53', NULL),
(1050, 3, 2, 40, '-21.125', 173, NULL, NULL, 4, '2020-09-02 03:30:37', NULL),
(1051, 7, 13, 14, '-9.200', NULL, 12, NULL, 4, '2020-09-02 03:31:59', NULL),
(1052, 15, 13, 40, '-50.389', NULL, 13, NULL, 4, '2020-09-02 13:54:35', NULL),
(1053, 13, 13, 40, '-0.011', NULL, 13, NULL, 4, '2020-09-02 13:54:35', NULL),
(1054, 12, 13, 39, '-20.100', NULL, 14, NULL, 4, '2020-09-07 12:04:07', NULL),
(1055, 14, 13, 39, '-40.300', NULL, 14, NULL, 4, '2020-09-07 12:04:07', NULL),
(1056, 15, 13, 39, '-47.600', NULL, 14, NULL, 4, '2020-09-07 12:04:07', NULL),
(1057, 13, 13, 39, '-0.010', NULL, 14, NULL, 4, '2020-09-07 12:04:07', NULL),
(1058, 3, 13, 40, '-0.075', NULL, 14, NULL, 4, '2020-09-07 12:04:07', NULL),
(1059, 5, 13, 40, '-0.467', NULL, 14, NULL, 4, '2020-09-07 12:04:07', NULL),
(1060, 2, 13, 40, '-0.438', NULL, 14, NULL, 4, '2020-09-07 12:04:07', NULL),
(1061, 2, 1, 41, '135.600', NULL, NULL, NULL, 4, '2020-09-08 19:40:00', NULL),
(1062, 3, 1, 41, '18.800', NULL, NULL, NULL, 4, '2020-09-08 19:40:00', NULL),
(1063, 4, 1, 41, '48.800', NULL, NULL, NULL, 4, '2020-09-08 19:40:00', NULL),
(1064, 5, 1, 41, '52.400', NULL, NULL, NULL, 4, '2020-09-08 19:40:00', NULL),
(1065, 7, 1, 41, '17.300', NULL, NULL, NULL, 4, '2020-09-08 19:40:00', NULL),
(1066, 9, 1, 41, '8.500', NULL, NULL, NULL, 4, '2020-09-08 19:40:00', NULL),
(1067, 10, 1, 41, '38.800', NULL, NULL, NULL, 4, '2020-09-08 19:40:00', NULL),
(1068, 12, 1, 41, '20.300', NULL, NULL, NULL, 4, '2020-09-08 19:40:00', NULL),
(1069, 13, 1, 41, '0.085', NULL, NULL, NULL, 4, '2020-09-08 19:40:00', NULL),
(1070, 14, 1, 41, '43.600', NULL, NULL, NULL, 4, '2020-09-08 19:40:00', NULL),
(1071, 15, 1, 41, '50.800', NULL, NULL, NULL, 4, '2020-09-08 19:40:00', NULL),
(1072, 9, 2, 41, '-2.500', 174, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(1073, 10, 2, 41, '-9.700', 174, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(1074, 2, 2, 41, '-27.678', 174, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(1075, 9, 2, 41, '-1.000', 175, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(1076, 10, 2, 41, '-4.800', 175, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(1077, 2, 2, 41, '-19.038', 175, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(1078, 9, 2, 41, '-1.000', 176, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(1079, 10, 2, 41, '-4.800', 176, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(1080, 2, 2, 41, '-19.038', 176, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(1081, 9, 6, 41, '1.000', 176, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(1082, 10, 6, 41, '4.800', 176, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(1083, 2, 6, 41, '19.038', 176, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(1084, 9, 2, 41, '-1.000', 177, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(1085, 10, 2, 41, '-4.850', 177, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(1086, 2, 2, 41, '-19.785', 177, NULL, NULL, 4, '2020-09-08 19:58:08', NULL),
(1087, 4, 2, 41, '-24.158', 178, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(1088, 4, 2, 41, '-24.158', 179, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(1089, 3, 2, 41, '-18.756', 180, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(1090, 5, 2, 41, '-52.320', 181, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(1091, 7, 13, 13, '-10.500', NULL, 16, NULL, 4, '2020-09-09 12:58:11', NULL),
(1092, 12, 13, 41, '-20.300', NULL, 16, NULL, 4, '2020-09-09 12:58:11', NULL),
(1093, 14, 13, 41, '-43.600', NULL, 16, NULL, 4, '2020-09-09 12:58:11', NULL),
(1094, 15, 13, 41, '-50.800', NULL, 16, NULL, 4, '2020-09-09 12:58:11', NULL),
(1095, 13, 13, 41, '-0.085', NULL, 16, NULL, 4, '2020-09-09 12:58:11', NULL),
(1096, 7, 13, 15, '-10.200', NULL, 17, NULL, 4, '2020-09-15 10:25:02', NULL),
(1097, 12, 13, 40, '-21.000', NULL, 17, NULL, 4, '2020-09-15 10:25:02', NULL),
(1098, 14, 13, 40, '-48.100', NULL, 17, NULL, 4, '2020-09-15 10:25:02', NULL),
(1099, 15, 13, 40, '-0.011', NULL, 17, NULL, 4, '2020-09-15 10:25:02', NULL),
(1100, 3, 13, 41, '-0.044', NULL, 17, NULL, 4, '2020-09-15 10:25:02', NULL),
(1101, 2, 13, 41, '-69.099', NULL, 17, NULL, 4, '2020-09-15 10:25:02', NULL),
(1102, 7, 13, 16, '-10.200', NULL, 19, NULL, 4, '2020-09-22 03:04:54', NULL),
(1103, 7, 14, 15, '10.200', NULL, 17, NULL, 4, '2020-09-24 03:12:23', NULL),
(1104, 12, 14, 40, '21.000', NULL, 17, NULL, 4, '2020-09-24 03:12:23', NULL),
(1105, 14, 14, 40, '48.100', NULL, 17, NULL, 4, '2020-09-24 03:12:23', NULL),
(1106, 15, 14, 40, '0.011', NULL, 17, NULL, 4, '2020-09-24 03:12:23', NULL),
(1107, 3, 14, 41, '0.044', NULL, 17, NULL, 4, '2020-09-24 03:12:23', NULL),
(1108, 2, 14, 41, '69.099', NULL, 17, NULL, 4, '2020-09-24 03:12:23', NULL),
(1110, 9, 2, 41, '-4.000', 182, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(1111, 10, 2, 41, '-19.450', 182, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(1112, 2, 2, 41, '-60.015', 182, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(1113, 7, 13, 15, '-10.200', NULL, 20, NULL, 4, '2020-09-24 03:15:31', NULL),
(1114, 12, 13, 40, '-21.000', NULL, 20, NULL, 4, '2020-09-24 03:15:31', NULL),
(1115, 14, 13, 40, '-48.100', NULL, 20, NULL, 4, '2020-09-24 03:15:31', NULL),
(1116, 15, 13, 40, '-0.011', NULL, 20, NULL, 4, '2020-09-24 03:15:31', NULL),
(1117, 7, 13, 41, '-0.484', NULL, 20, NULL, 4, '2020-09-24 03:15:31', NULL),
(1118, 7, 13, 18, '-5.280', NULL, 21, NULL, 4, '2020-10-03 05:16:46', NULL),
(1119, 3, 13, 41, '-0.044', NULL, 21, NULL, 4, '2020-10-03 05:16:47', NULL),
(1120, 7, 13, 19, '-11.000', NULL, 23, NULL, 4, '2020-10-06 09:41:41', NULL),
(1121, 7, 13, 21, '-15.100', NULL, 24, NULL, 4, '2020-11-25 02:46:56', NULL),
(1122, 7, 13, 23, '-15.500', NULL, 24, NULL, 4, '2020-11-25 02:46:56', NULL),
(1123, 7, 13, 24, '-8.700', NULL, 24, NULL, 4, '2020-11-25 02:46:56', NULL),
(1124, 7, 13, 26, '-30.400', NULL, 24, NULL, 4, '2020-11-25 02:46:56', NULL),
(1125, 7, 13, 28, '-22.900', NULL, 25, NULL, 4, '2020-12-10 11:00:03', NULL),
(1126, 7, 13, 30, '-34.600', NULL, 26, NULL, 4, '2020-12-21 10:15:32', NULL),
(1127, 7, 13, 31, '-16.900', NULL, 27, NULL, 4, '2020-12-24 04:47:03', NULL),
(1128, 5, 6, 34, '25.668', 144, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(1129, 5, 6, 36, '22.886', 144, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(1130, 7, 13, 32, '-6.800', NULL, 28, NULL, 4, '2021-01-05 11:29:07', NULL),
(1131, 5, 8, 41, '-0.080', NULL, NULL, 30, 4, '2021-01-05 12:10:56', NULL),
(1132, 5, 8, 36, '-22.886', NULL, NULL, 30, 4, '2021-01-05 12:10:56', NULL),
(1133, 5, 8, 34, '-25.668', NULL, NULL, 30, 4, '2021-01-05 12:10:56', NULL),
(1134, 2, 8, 41, '-9.084', NULL, NULL, 31, 4, '2021-01-05 12:11:58', NULL),
(1135, 2, 1, 42, '87.400', NULL, NULL, NULL, 4, '2021-01-05 12:54:04', NULL),
(1136, 3, 1, 42, '7.000', NULL, NULL, NULL, 4, '2021-01-05 12:54:04', NULL),
(1137, 7, 1, 42, '7.100', NULL, NULL, NULL, 4, '2021-01-05 12:54:04', NULL),
(1138, 9, 1, 42, '2.900', NULL, NULL, NULL, 4, '2021-01-05 12:54:04', NULL),
(1139, 10, 1, 42, '3.100', NULL, NULL, NULL, 4, '2021-01-05 12:54:04', NULL),
(1140, 12, 1, 42, '7.300', NULL, NULL, NULL, 4, '2021-01-05 12:54:04', NULL),
(1141, 13, 1, 42, '0.007', NULL, NULL, NULL, 4, '2021-01-05 12:54:04', NULL),
(1142, 14, 1, 42, '20.100', NULL, NULL, NULL, 4, '2021-01-05 12:54:04', NULL),
(1143, 15, 1, 42, '20.500', NULL, NULL, NULL, 4, '2021-01-05 12:54:04', NULL),
(1144, 2, 3, 42, '-87.400', NULL, NULL, NULL, 1, '2021-01-07 02:13:31', NULL),
(1145, 3, 3, 42, '-7.000', NULL, NULL, NULL, 1, '2021-01-07 02:13:31', NULL),
(1146, 7, 3, 42, '-7.100', NULL, NULL, NULL, 1, '2021-01-07 02:13:31', NULL),
(1147, 9, 3, 42, '-2.900', NULL, NULL, NULL, 1, '2021-01-07 02:13:31', NULL),
(1148, 10, 3, 42, '-3.100', NULL, NULL, NULL, 1, '2021-01-07 02:13:31', NULL),
(1149, 12, 3, 42, '-7.300', NULL, NULL, NULL, 1, '2021-01-07 02:13:31', NULL),
(1150, 13, 3, 42, '-0.007', NULL, NULL, NULL, 1, '2021-01-07 02:13:31', NULL),
(1151, 14, 3, 42, '-20.100', NULL, NULL, NULL, 1, '2021-01-07 02:13:31', NULL),
(1152, 15, 3, 42, '-20.500', NULL, NULL, NULL, 1, '2021-01-07 02:13:31', NULL),
(1159, 2, 1, 43, '61.400', NULL, NULL, NULL, 4, '2021-01-07 02:19:26', NULL),
(1160, 3, 1, 43, '7.000', NULL, NULL, NULL, 4, '2021-01-07 02:19:26', NULL),
(1161, 5, 1, 43, '20.500', NULL, NULL, NULL, 4, '2021-01-07 02:19:26', NULL),
(1162, 7, 1, 43, '7.100', NULL, NULL, NULL, 4, '2021-01-07 02:19:26', NULL),
(1163, 9, 1, 43, '2.900', NULL, NULL, NULL, 4, '2021-01-07 02:19:26', NULL),
(1164, 10, 1, 43, '12.400', NULL, NULL, NULL, 4, '2021-01-07 02:19:26', NULL),
(1165, 12, 1, 43, '7.300', NULL, NULL, NULL, 4, '2021-01-07 02:19:26', NULL),
(1166, 13, 1, 43, '0.007', NULL, NULL, NULL, 4, '2021-01-07 02:19:26', NULL),
(1167, 14, 1, 43, '16.300', NULL, NULL, NULL, 4, '2021-01-07 02:19:26', NULL),
(1168, 15, 1, 43, '20.500', NULL, NULL, NULL, 4, '2021-01-07 02:19:26', NULL),
(1169, 9, 2, 43, '-1.450', 183, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(1170, 10, 2, 43, '-3.150', 183, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(1171, 5, 2, 43, '-8.350', 183, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(1172, 2, 2, 43, '-29.094', 183, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(1173, 9, 2, 43, '-1.450', 184, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(1174, 10, 2, 43, '-3.150', 184, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(1175, 5, 2, 43, '-8.350', 184, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(1176, 2, 2, 43, '-26.291', 184, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(1177, 3, 2, 43, '-6.979', 185, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(1178, 7, 13, 33, '-18.100', NULL, 29, NULL, 4, '2021-01-14 13:26:40', NULL),
(1179, 7, 13, 34, '-15.100', NULL, 29, NULL, 4, '2021-01-14 13:26:40', NULL),
(1180, 7, 13, 43, '-7.100', NULL, 29, NULL, 4, '2021-01-14 13:26:40', NULL),
(1181, 3, 13, 43, '-0.021', NULL, 29, NULL, 4, '2021-01-14 13:26:40', NULL),
(1182, 10, 13, 43, '-6.100', NULL, 29, NULL, 4, '2021-01-14 13:26:40', NULL),
(1183, 14, 13, 43, '-16.300', NULL, 29, NULL, 4, '2021-01-14 13:26:40', NULL),
(1184, 15, 13, 43, '-20.500', NULL, 29, NULL, 4, '2021-01-14 13:26:40', NULL),
(1185, 5, 13, 43, '-3.800', NULL, 29, NULL, 4, '2021-01-14 13:26:40', NULL),
(1186, 13, 13, 43, '-0.007', NULL, 29, NULL, 4, '2021-01-14 13:26:40', NULL),
(1187, 2, 13, 43, '-6.015', NULL, 29, NULL, 4, '2021-01-14 13:26:40', NULL),
(1188, 12, 13, 43, '-7.300', NULL, 30, NULL, 4, '2021-01-14 13:27:02', NULL),
(1189, 2, 1, 44, '90.600', NULL, NULL, NULL, 4, '2021-01-20 02:51:05', NULL),
(1190, 3, 1, 44, '10.400', NULL, NULL, NULL, 4, '2021-01-20 02:51:05', NULL),
(1191, 5, 1, 44, '26.800', NULL, NULL, NULL, 4, '2021-01-20 02:51:05', NULL),
(1192, 7, 1, 44, '9.000', NULL, NULL, NULL, 4, '2021-01-20 02:51:05', NULL),
(1193, 9, 1, 44, '4.400', NULL, NULL, NULL, 4, '2021-01-20 02:51:05', NULL),
(1194, 10, 1, 44, '20.600', NULL, NULL, NULL, 4, '2021-01-20 02:51:05', NULL),
(1195, 12, 1, 44, '13.600', NULL, NULL, NULL, 4, '2021-01-20 02:51:05', NULL),
(1196, 13, 1, 44, '0.020', NULL, NULL, NULL, 4, '2021-01-20 02:51:05', NULL),
(1197, 14, 1, 44, '26.000', NULL, NULL, NULL, 4, '2021-01-20 02:51:05', NULL),
(1198, 15, 1, 44, '27.100', NULL, NULL, NULL, 4, '2021-01-20 02:51:05', NULL),
(1199, 12, 13, 44, '-13.600', NULL, 31, NULL, 4, '2021-01-20 02:52:18', NULL),
(1200, 14, 13, 44, '-26.000', NULL, 31, NULL, 4, '2021-01-20 02:52:18', NULL),
(1201, 15, 13, 44, '-27.100', NULL, 31, NULL, 4, '2021-01-20 02:52:18', NULL),
(1202, 13, 13, 44, '-0.020', NULL, 31, NULL, 4, '2021-01-20 02:52:18', NULL),
(1203, 10, 2, 44, '-10.300', 186, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(1204, 5, 2, 44, '-5.759', 186, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(1205, 2, 2, 44, '-40.000', 186, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(1206, 9, 2, 44, '-3.000', 187, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(1207, 10, 2, 44, '-10.300', 187, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(1208, 5, 2, 44, '-2.759', 187, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(1209, 2, 2, 44, '-40.000', 187, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(1210, 9, 2, 44, '-1.400', 188, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(1211, 5, 2, 44, '-7.106', 188, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(1212, 2, 2, 44, '-10.600', 188, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(1213, 7, 13, 35, '-8.100', NULL, 32, NULL, 4, '2021-01-26 18:15:09', NULL),
(1214, 2, 1, 45, '122.700', NULL, NULL, NULL, 4, '2021-01-26 18:25:28', NULL),
(1215, 3, 1, 45, '11.600', NULL, NULL, NULL, 4, '2021-01-26 18:25:28', NULL),
(1216, 4, 1, 45, '30.600', NULL, NULL, NULL, 4, '2021-01-26 18:25:28', NULL),
(1217, 5, 1, 45, '17.400', NULL, NULL, NULL, 4, '2021-01-26 18:25:28', NULL),
(1218, 7, 1, 45, '11.400', NULL, NULL, NULL, 4, '2021-01-26 18:25:28', NULL),
(1219, 12, 1, 45, '13.200', NULL, NULL, NULL, 4, '2021-01-26 18:25:28', NULL),
(1220, 13, 1, 45, '0.023', NULL, NULL, NULL, 4, '2021-01-26 18:25:28', NULL),
(1221, 14, 1, 45, '29.500', NULL, NULL, NULL, 4, '2021-01-26 18:25:28', NULL),
(1222, 15, 1, 45, '34.100', NULL, NULL, NULL, 4, '2021-01-26 18:25:28', NULL),
(1223, 3, 2, 44, '-10.400', 189, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(1224, 3, 2, 45, '-1.199', 189, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(1225, 5, 2, 44, '-11.176', 190, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(1226, 5, 2, 45, '-6.172', 190, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(1227, 4, 2, 41, '-0.484', 191, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(1228, 4, 2, 45, '-30.024', 191, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(1229, 2, 2, 45, '-60.280', 192, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(1230, 2, 2, 45, '-60.280', 193, NULL, NULL, 4, '2021-01-26 18:52:03', NULL),
(1231, 7, 2, 44, '-9.000', 194, NULL, NULL, 4, '2021-01-26 19:02:14', NULL),
(1232, 7, 2, 45, '-2.400', 194, NULL, NULL, 4, '2021-01-26 19:02:14', NULL),
(1233, 7, 13, 36, '-16.400', NULL, 34, NULL, 4, '2021-01-28 09:17:27', NULL),
(1234, 15, 13, 45, '-34.077', NULL, 35, NULL, 4, '2021-01-30 04:19:57', NULL),
(1235, 13, 13, 45, '-0.023', NULL, 35, NULL, 4, '2021-01-30 04:19:57', NULL),
(1236, 7, 13, 37, '-17.200', NULL, 37, NULL, 4, '2021-02-03 09:00:44', NULL),
(1237, 2, 1, 46, '130.100', NULL, NULL, NULL, 4, '2021-02-03 09:07:14', NULL),
(1238, 3, 1, 46, '18.200', NULL, NULL, NULL, 4, '2021-02-03 09:07:14', NULL),
(1239, 4, 1, 46, '45.500', NULL, NULL, NULL, 4, '2021-02-03 09:07:14', NULL),
(1240, 5, 1, 46, '51.400', NULL, NULL, NULL, 4, '2021-02-03 09:07:14', NULL),
(1241, 7, 1, 46, '17.300', NULL, NULL, NULL, 4, '2021-02-03 09:07:14', NULL),
(1242, 9, 1, 46, '8.200', NULL, NULL, NULL, 4, '2021-02-03 09:07:14', NULL),
(1243, 10, 1, 46, '35.500', NULL, NULL, NULL, 4, '2021-02-03 09:07:14', NULL),
(1244, 12, 1, 46, '19.300', NULL, NULL, NULL, 4, '2021-02-03 09:07:14', NULL),
(1245, 13, 1, 46, '0.039', NULL, NULL, NULL, 4, '2021-02-03 09:07:14', NULL),
(1246, 14, 1, 46, '40.600', NULL, NULL, NULL, 4, '2021-02-03 09:07:14', NULL),
(1247, 15, 1, 46, '49.800', NULL, NULL, NULL, 4, '2021-02-03 09:07:14', NULL),
(1248, 12, 13, 46, '-19.300', NULL, 38, NULL, 4, '2021-02-03 09:11:34', NULL),
(1249, 14, 13, 46, '-40.600', NULL, 38, NULL, 4, '2021-02-03 09:11:34', NULL),
(1250, 15, 13, 46, '-49.800', NULL, 38, NULL, 4, '2021-02-03 09:11:34', NULL),
(1251, 13, 13, 46, '-0.039', NULL, 38, NULL, 4, '2021-02-03 09:11:34', NULL),
(1252, 9, 2, 46, '-2.100', 195, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(1253, 10, 2, 46, '-8.900', 195, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(1254, 2, 2, 45, '-2.140', 195, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(1255, 2, 2, 46, '-41.050', 195, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(1256, 9, 2, 46, '-2.100', 196, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(1257, 10, 2, 46, '-8.900', 196, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(1258, 2, 2, 46, '-40.387', 196, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(1259, 9, 2, 46, '-2.100', 197, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(1260, 10, 2, 46, '-8.900', 197, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(1261, 5, 2, 45, '-11.228', 197, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(1262, 5, 2, 46, '-1.972', 197, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(1263, 2, 2, 46, '-26.806', 197, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(1264, 9, 2, 46, '-1.900', 198, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(1265, 10, 2, 46, '-8.800', 198, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(1266, 5, 2, 46, '-18.449', 198, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(1267, 2, 2, 46, '-21.857', 198, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(1268, 3, 2, 45, '-10.401', 199, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(1269, 3, 2, 46, '-7.745', 199, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(1270, 5, 2, 46, '-19.641', 200, NULL, NULL, 4, '2021-02-04 03:14:31', NULL),
(1271, 4, 2, 45, '-0.576', 201, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(1272, 4, 2, 46, '-44.788', 201, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(1273, 7, 13, 38, '-18.000', NULL, 39, NULL, 4, '2021-02-16 11:53:15', NULL),
(1274, 12, 13, 45, '-13.200', NULL, 39, NULL, 4, '2021-02-16 11:53:15', NULL),
(1275, 14, 13, 45, '-29.500', NULL, 39, NULL, 4, '2021-02-16 11:53:15', NULL),
(1276, 15, 13, 45, '-0.023', NULL, 39, NULL, 4, '2021-02-16 11:53:15', NULL),
(1277, 7, 13, 39, '-15.900', NULL, 41, NULL, 4, '2021-02-19 13:45:29', NULL),
(1278, 7, 13, 40, '-18.100', NULL, 42, NULL, 4, '2021-02-27 08:10:45', NULL),
(1279, 2, 1, 47, '170.700', NULL, NULL, NULL, 4, '2021-03-01 12:44:11', NULL),
(1280, 3, 1, 47, '38.000', NULL, NULL, NULL, 4, '2021-03-01 12:44:11', NULL),
(1281, 4, 1, 47, '179.200', NULL, NULL, NULL, 4, '2021-03-01 12:44:11', NULL),
(1282, 5, 1, 47, '100.000', NULL, NULL, NULL, 4, '2021-03-01 12:44:11', NULL),
(1283, 7, 1, 47, '34.000', NULL, NULL, NULL, 4, '2021-03-01 12:44:11', NULL),
(1284, 9, 1, 47, '16.700', NULL, NULL, NULL, 4, '2021-03-01 12:44:11', NULL),
(1285, 10, 1, 47, '67.400', NULL, NULL, NULL, 4, '2021-03-01 12:44:11', NULL),
(1286, 12, 1, 47, '36.200', NULL, NULL, NULL, 4, '2021-03-01 12:44:11', NULL),
(1287, 13, 1, 47, '0.038', NULL, NULL, NULL, 4, '2021-03-01 12:44:11', NULL),
(1288, 14, 1, 47, '89.300', NULL, NULL, NULL, 4, '2021-03-01 12:44:11', NULL),
(1289, 15, 1, 47, '99.800', NULL, NULL, NULL, 4, '2021-03-01 12:44:11', NULL),
(1290, 10, 2, 47, '-9.000', 202, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(1291, 5, 2, 46, '-6.000', 202, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(1292, 2, 2, 47, '-36.006', 202, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(1293, 9, 2, 47, '-4.000', 203, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(1294, 10, 2, 47, '-15.000', 203, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(1295, 4, 2, 46, '-0.712', 203, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(1296, 4, 2, 47, '-27.288', 203, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(1297, 5, 2, 46, '-5.338', 203, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(1298, 5, 2, 47, '-7.401', 203, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(1299, 2, 2, 47, '-33.000', 203, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(1300, 9, 2, 47, '-4.000', 204, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(1301, 10, 2, 47, '-14.000', 204, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(1302, 4, 2, 47, '-28.000', 204, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(1303, 5, 2, 47, '-13.000', 204, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(1304, 2, 2, 47, '-34.432', 204, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(1305, 9, 2, 47, '-4.000', 205, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(1306, 10, 2, 47, '-14.000', 205, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(1307, 4, 2, 47, '-28.000', 205, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(1308, 5, 2, 47, '-13.000', 205, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(1309, 2, 2, 47, '-34.432', 205, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(1310, 9, 6, 47, '4.000', 205, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(1311, 10, 6, 47, '14.000', 205, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(1312, 4, 6, 47, '28.000', 205, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(1313, 5, 6, 47, '13.000', 205, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(1314, 2, 6, 47, '34.432', 205, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(1317, 9, 2, 47, '-4.300', 206, NULL, NULL, 4, '2021-03-01 19:12:38', NULL),
(1318, 10, 2, 47, '-15.000', 206, NULL, NULL, 4, '2021-03-01 19:12:38', NULL),
(1319, 4, 2, 47, '-29.000', 206, NULL, NULL, 4, '2021-03-01 19:12:38', NULL),
(1320, 5, 2, 47, '-13.000', 206, NULL, NULL, 4, '2021-03-01 19:12:38', NULL),
(1321, 2, 2, 47, '-32.132', 206, NULL, NULL, 4, '2021-03-01 19:12:38', NULL),
(1322, 9, 2, 47, '-4.400', 207, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(1323, 10, 2, 47, '-14.400', 207, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(1324, 4, 2, 47, '-30.000', 207, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(1325, 5, 2, 47, '-11.014', 207, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(1326, 2, 2, 47, '-35.130', 207, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(1327, 5, 2, 47, '-54.294', 208, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(1328, 3, 8, 46, '-10.455', NULL, NULL, 39, 4, '2021-03-01 19:26:26', NULL),
(1329, 3, 2, 47, '-37.512', 209, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(1330, 4, 2, 47, '-25.743', 210, NULL, NULL, 4, '2021-03-01 19:28:50', NULL),
(1331, 4, 2, 47, '-25.743', 211, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(1332, 12, 13, 47, '-36.200', NULL, 43, NULL, 4, '2021-03-02 02:42:45', NULL),
(1333, 14, 13, 47, '-89.300', NULL, 43, NULL, 4, '2021-03-02 02:42:45', NULL),
(1334, 15, 13, 47, '-99.800', NULL, 43, NULL, 4, '2021-03-02 02:42:45', NULL),
(1335, 13, 13, 47, '-0.038', NULL, 43, NULL, 4, '2021-03-02 02:42:45', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carnes_n`
--

DROP TABLE IF EXISTS `carnes_n`;
CREATE TABLE IF NOT EXISTS `carnes_n` (
  `id_carne` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `id_udm` int(11) NOT NULL,
  `vencimiento_dias_camara` int(11) DEFAULT NULL,
  `vencimiento_dias_freezer` int(11) DEFAULT NULL,
  `alertaQmin` decimal(10,3) DEFAULT NULL,
  `activo` int(11) DEFAULT '1',
  PRIMARY KEY (`id_carne`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  UNIQUE KEY `id_carne_UNIQUE` (`id_carne`),
  KEY `id_udm-carnes_idx` (`id_udm`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carnes_n`
--

INSERT INTO `carnes_n` (`id_carne`, `nombre`, `id_udm`, `vencimiento_dias_camara`, `vencimiento_dias_freezer`, `alertaQmin`, `activo`) VALUES
(1, 'PARRILLERO', 1, 10, 180, NULL, 1),
(2, 'SALAME / IBERICO', 1, 10, 180, NULL, 1),
(3, 'BONDIOLA', 1, 10, 180, NULL, 1),
(4, 'JAMON', 1, 10, 180, NULL, 1),
(5, 'PANCETA', 1, 10, 180, NULL, 1),
(6, 'QUESO', 1, 10, 180, NULL, 1),
(7, 'ASADO / COSTILLAR', 1, 10, 180, NULL, 1),
(8, 'MATAMBRE', 1, 10, 180, NULL, 1),
(9, 'BOLA DE LOMO / SOLOMILLO', 1, 10, 180, NULL, 1),
(10, 'CARRE', 1, 10, 180, NULL, 1),
(11, 'TOCINO', 1, 10, 180, NULL, 1),
(12, 'CABEZA', 1, 5, 15, NULL, 1),
(13, 'PATAS', 1, 5, 15, NULL, 1),
(14, 'CUERO', 1, 5, 15, NULL, 1),
(15, 'HUESOS', 1, 5, 15, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cierres_parciales`
--

DROP TABLE IF EXISTS `cierres_parciales`;
CREATE TABLE IF NOT EXISTS `cierres_parciales` (
  `id_cierre` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordenprod_alta` int(11) NOT NULL,
  `fecha_alta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_alta` int(11) NOT NULL,
  `anulado` tinyint(1) NOT NULL,
  `usuario_baja` int(11) NOT NULL,
  PRIMARY KEY (`id_cierre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_reg`
--

DROP TABLE IF EXISTS `compras_reg`;
CREATE TABLE IF NOT EXISTS `compras_reg` (
  `id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_proveedor` int(11) NOT NULL,
  `nro_remito` varchar(45) DEFAULT NULL,
  `fecha_compra` date DEFAULT NULL,
  `descripcion` text,
  `fecha_alta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario_alta` int(11) NOT NULL,
  `anulado` tinyint(4) NOT NULL DEFAULT '0',
  `fecha_baja` datetime DEFAULT NULL,
  `id_usuario_baja` int(11) DEFAULT NULL,
  `motivo_anulacion` text,
  PRIMARY KEY (`id_compra`),
  KEY `id_proveedor_compra_idx` (`id_proveedor`),
  KEY `id_usuario_alta_idx` (`id_usuario_alta`),
  KEY `id_usuario_baja_idx` (`id_usuario_baja`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compras_reg`
--

INSERT INTO `compras_reg` (`id_compra`, `id_proveedor`, `nro_remito`, `fecha_compra`, `descripcion`, `fecha_alta`, `id_usuario_alta`, `anulado`, `fecha_baja`, `id_usuario_baja`, `motivo_anulacion`) VALUES
(11, 1, '12', '2020-01-01', 'test', '2020-08-18 20:11:55', 1, 1, '2020-08-18 20:12:08', 1, 'test'),
(12, 10, '7205', '2020-08-18', 'FACTURA 03-991, INCLUYE COMPRA ANTERIOR', '2020-08-19 03:16:58', 4, 0, NULL, NULL, NULL),
(13, 4, '01-9267', '2020-08-19', 'FACTURA 04-3525', '2020-08-20 17:59:27', 4, 0, NULL, NULL, NULL),
(14, 4, '01-9521', '2021-01-06', 'Bolsas vacio 14x18 y 7,5x35, compra Omar ', '2021-01-19 02:42:06', 4, 0, NULL, NULL, NULL),
(15, 9, '6076-6077-6120', '2021-02-02', 'RETIRA DAMIAN, TOTAL DE COMPRA 3380 $', '2021-02-03 09:20:03', 4, 0, NULL, NULL, NULL),
(16, 6, '09-08379', '2021-02-11', 'FACTURA 10-8314, TRANSPORTE TAS, PAGO CHEQUE 30 Y 60 DIAS EN MITADES.', '2021-02-19 13:45:10', 4, 0, NULL, NULL, NULL),
(17, 5, 'S/N', '2021-02-24', 'COMPRA ALEXIA', '2021-03-01 19:02:17', 4, 0, NULL, NULL, NULL),
(18, 5, 'S/N', '2021-02-24', 'COMPRA ALEXIA', '2021-03-01 19:04:39', 4, 0, NULL, NULL, NULL);

--
-- Disparadores `compras_reg`
--
DROP TRIGGER IF EXISTS `compras_reg_BEFORE_UPDATE`;
DELIMITER $$
CREATE TRIGGER `compras_reg_BEFORE_UPDATE` BEFORE UPDATE ON `compras_reg` FOR EACH ROW if new.anulado=1 and old.anulado=0 then

BEGIN
	insert into insumos_mov (id_insumo,cantidad,id_cuenta,id_compra,id_usuario)

        select id_insumo,cantidad*-1 as cantidad, 11 as id_cuenta, id_compra,new.id_usuario_baja as id_usuario
		from insumos_mov
		where id_cuenta=10 and id_compra=new.id_compra;

END;
end if
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_n`
--

DROP TABLE IF EXISTS `cuentas_n`;
CREATE TABLE IF NOT EXISTS `cuentas_n` (
  `id_cuenta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cuenta`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuentas_n`
--

INSERT INTO `cuentas_n` (`id_cuenta`, `nombre`, `activo`) VALUES
(1, 'Desposte', 1),
(2, 'Orden de Producción', 1),
(3, 'Anular desposte', 1),
(5, 'Merma', 1),
(6, 'Anular Orden de Producción', 1),
(7, 'Merma entrega', 1),
(8, 'Ajuste de stock', 1),
(9, 'Vencimiento', 1),
(10, 'Compra', 1),
(11, 'Anular Compra', 1),
(12, 'Carga Inicial', 1),
(13, 'Decomiso', 1),
(14, 'Anular Decomiso', 1),
(15, 'Postergar Decomiso', 1),
(16, 'Anular Postergar Decomiso', 1),
(17, 'Producción Terminada', 1),
(18, 'Ajuste Finalización OP', 1),
(19, 'Anular Finalización OP', 1),
(20, 'Salida de Producto', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_operacion`
--

DROP TABLE IF EXISTS `cuentas_operacion`;
CREATE TABLE IF NOT EXISTS `cuentas_operacion` (
  `id_cuentaop` int(11) NOT NULL AUTO_INCREMENT,
  `id_cuenta` int(11) NOT NULL,
  `funcion` varchar(45) DEFAULT NULL,
  `operacion` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_cuentaop`),
  KEY `id_cuenta_operacion_idx` (`id_cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuentas_operacion`
--

INSERT INTO `cuentas_operacion` (`id_cuentaop`, `id_cuenta`, `funcion`, `operacion`, `descripcion`) VALUES
(1, 1, 'Desposte', '1', NULL),
(2, 5, 'Desposte', '-1', NULL),
(3, 7, 'Desposte', '-1', NULL),
(4, 8, 'Desposte', '-1', NULL),
(5, 9, 'Desposte', '-1', NULL),
(6, 10, 'Desposte', '1', NULL),
(7, 8, 'ActualizarStockInsumo', '1', NULL),
(8, 9, 'ActualizarInsumo', '-1', NULL),
(9, 5, 'ActualizarCarne', '-1', NULL),
(10, 8, 'ActualizarStockCarne', '1', NULL),
(11, 9, 'ActualizarCarne', '-1', NULL),
(12, 10, 'CompraInsumo', '1', NULL),
(13, 2, 'OrdenProd', '-1', NULL),
(14, 6, 'OrdenProd', '1', NULL),
(15, 13, 'Decomiso', '-1', NULL),
(16, 14, 'AnularDecomiso', '1', NULL),
(17, 15, 'Decomiso', '0', NULL),
(18, 16, 'AnularDecomiso', '0', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `decomiso_carnes`
--

DROP TABLE IF EXISTS `decomiso_carnes`;
CREATE TABLE IF NOT EXISTS `decomiso_carnes` (
  `id_decomiso_carne` int(11) NOT NULL AUTO_INCREMENT,
  `id_decomiso` int(11) DEFAULT NULL,
  `id_desposte` int(11) DEFAULT NULL,
  `id_carne` int(11) DEFAULT NULL,
  `cantidad` decimal(10,3) DEFAULT NULL,
  `id_cuenta` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_movimiento` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_decomiso_carne`),
  KEY `decomiso_carnes_id_decomiso_idx` (`id_decomiso`),
  KEY `decomiso_carnes_id_desposte_idx` (`id_desposte`),
  KEY `decomiso_carnes_id_carne_idx` (`id_carne`),
  KEY `decomiso_carnes_id_cuenta_idx` (`id_cuenta`),
  KEY `decomiso_carnes_id_usuario_idx` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `decomiso_carnes`
--

INSERT INTO `decomiso_carnes` (`id_decomiso_carne`, `id_decomiso`, `id_desposte`, `id_carne`, `cantidad`, `id_cuenta`, `id_usuario`, `fecha_movimiento`) VALUES
(1, 1, 1, 7, '8.200', 15, 4, '2020-07-20 04:24:43'),
(2, 1, 7, 7, '9.700', 15, 4, '2020-07-20 04:24:43'),
(3, 1, 8, 7, '13.000', 15, 4, '2020-07-20 04:24:43'),
(4, 1, 9, 7, '8.000', 15, 4, '2020-07-20 04:24:43'),
(5, 1, 10, 7, '10.500', 15, 4, '2020-07-20 04:24:43'),
(6, 1, 11, 7, '9.200', 15, 4, '2020-07-20 04:24:43'),
(7, 1, 13, 7, '12.100', 15, 4, '2020-07-20 04:24:43'),
(8, 1, 14, 7, '10.200', 15, 4, '2020-07-20 04:24:43'),
(9, 1, 15, 7, '10.200', 15, 4, '2020-07-20 04:24:43'),
(10, 1, 16, 7, '11.000', 15, 4, '2020-07-20 04:24:44'),
(11, 1, 18, 7, '5.280', 15, 4, '2020-07-20 04:24:44'),
(12, 1, 19, 7, '15.100', 15, 4, '2020-07-20 04:24:44'),
(13, 1, 21, 7, '15.500', 15, 4, '2020-07-20 04:24:44'),
(14, 1, 21, 12, '28.000', 13, 4, '2020-07-20 04:24:44'),
(15, 1, 21, 12, '29.300', 15, 4, '2020-07-20 04:24:44'),
(16, 1, 21, 14, '25.000', 13, 4, '2020-07-20 04:24:44'),
(17, 1, 21, 14, '27.100', 15, 4, '2020-07-20 04:24:44'),
(18, 1, 21, 15, '27.184', 13, 4, '2020-07-20 04:24:44'),
(19, 1, 21, 15, '30.400', 15, 4, '2020-07-20 04:24:44'),
(20, 1, 21, 13, '10.000', 13, 4, '2020-07-20 04:24:44'),
(21, 1, 21, 13, '28.500', 15, 4, '2020-07-20 04:24:44'),
(22, 1, 22, 7, '12.500', 13, 4, '2020-07-20 04:24:44'),
(23, 1, 22, 12, '15.600', 13, 4, '2020-07-20 04:24:44'),
(24, 1, 22, 12, '22.900', 15, 4, '2020-07-20 04:24:44'),
(25, 1, 22, 14, '31.400', 13, 4, '2020-07-20 04:24:44'),
(26, 1, 22, 14, '2.304', 15, 4, '2020-07-20 04:24:44'),
(27, 1, 22, 15, '30.728', 13, 4, '2020-07-20 04:24:44'),
(28, 1, 22, 15, '34.600', 15, 4, '2020-07-20 04:24:44'),
(29, 1, 22, 13, '9.500', 13, 4, '2020-07-20 04:24:44'),
(30, 1, 22, 13, '25.527', 15, 4, '2020-07-20 04:24:44'),
(31, 1, 23, 7, '16.900', 15, 4, '2020-07-20 04:24:44'),
(32, 1, 23, 12, '17.200', 13, 4, '2020-07-20 04:24:44'),
(33, 1, 23, 12, '8.100', 15, 4, '2020-07-20 04:24:44'),
(34, 1, 23, 14, '29.800', 13, 4, '2020-07-20 04:24:44'),
(35, 1, 23, 14, '6.800', 15, 4, '2020-07-20 04:24:44'),
(36, 1, 23, 15, '30.350', 13, 4, '2020-07-20 04:24:44'),
(37, 1, 23, 15, '3.707', 15, 4, '2020-07-20 04:24:44'),
(38, 1, 23, 13, '16.000', 13, 4, '2020-07-20 04:24:44'),
(39, 1, 23, 13, '18.100', 15, 4, '2020-07-20 04:24:44'),
(40, 1, 24, 7, '8.700', 15, 4, '2020-07-20 04:24:44'),
(41, 1, 24, 12, '33.700', 13, 4, '2020-07-20 04:24:44'),
(42, 1, 24, 12, '11.752', 15, 4, '2020-07-20 04:24:44'),
(43, 1, 24, 14, '60.342', 13, 4, '2020-07-20 04:24:44'),
(44, 1, 24, 15, '82.300', 13, 4, '2020-07-20 04:24:44'),
(45, 1, 24, 15, '3.800', 15, 4, '2020-07-20 04:24:44'),
(46, 1, 25, 12, '28.000', 13, 4, '2020-07-20 04:24:44'),
(47, 1, 25, 14, '58.000', 13, 4, '2020-07-20 04:24:44'),
(48, 1, 25, 14, '9.903', 15, 4, '2020-07-20 04:24:44'),
(49, 1, 25, 15, '83.425', 13, 4, '2020-07-20 04:24:44'),
(50, 1, 25, 15, '40.500', 15, 4, '2020-07-20 04:24:44'),
(51, 1, 26, 7, '35.221', 15, 4, '2020-07-20 04:24:44'),
(52, 1, 26, 12, '39.600', 13, 4, '2020-07-20 04:24:44'),
(53, 1, 26, 14, '89.300', 13, 4, '2020-07-20 04:24:44'),
(54, 1, 26, 15, '89.735', 13, 4, '2020-07-20 04:24:44'),
(55, 1, 27, 9, '5.200', 13, 4, '2020-07-20 04:24:44'),
(56, 1, 27, 12, '30.170', 13, 4, '2020-07-20 04:24:44'),
(57, 1, 27, 14, '65.000', 13, 4, '2020-07-20 04:24:44'),
(58, 1, 27, 15, '81.200', 13, 4, '2020-07-20 04:24:44'),
(59, 1, 28, 12, '34.592', 13, 4, '2020-07-20 04:24:44'),
(60, 1, 28, 14, '61.200', 13, 4, '2020-07-20 04:24:45'),
(61, 1, 28, 15, '90.900', 13, 4, '2020-07-20 04:24:45'),
(62, 1, 30, 12, '37.100', 13, 4, '2020-07-20 04:24:45'),
(63, 1, 30, 14, '77.900', 13, 4, '2020-07-20 04:24:45'),
(64, 1, 30, 15, '105.200', 13, 4, '2020-07-20 04:24:45'),
(65, 1, 30, 13, '0.037', 13, 4, '2020-07-20 04:24:45'),
(66, 1, 31, 12, '19.700', 13, 4, '2020-07-20 04:24:45'),
(67, 1, 31, 14, '46.200', 13, 4, '2020-07-20 04:24:45'),
(68, 1, 31, 15, '51.410', 13, 4, '2020-07-20 04:24:45'),
(69, 1, 32, 12, '7.900', 13, 4, '2020-07-20 04:24:45'),
(70, 1, 32, 14, '19.003', 13, 4, '2020-07-20 04:24:45'),
(71, 1, 32, 15, '16.800', 13, 4, '2020-07-20 04:24:45'),
(72, 1, 33, 12, '19.800', 13, 4, '2020-07-20 04:24:45'),
(73, 1, 33, 14, '39.600', 13, 4, '2020-07-20 04:24:45'),
(74, 1, 33, 15, '54.008', 13, 4, '2020-07-20 04:24:45'),
(75, 2, 1, 7, '9.700', 13, 4, '2020-07-20 04:29:26'),
(76, 2, 7, 7, '9.200', 13, 4, '2020-07-20 04:29:26'),
(77, 3, 9, 7, '1.700', 13, 4, '2020-07-20 04:44:04'),
(78, 3, 10, 7, '2.500', 13, 4, '2020-07-20 04:44:04'),
(79, 3, 15, 7, '1.900', 13, 4, '2020-07-20 04:44:04'),
(80, 3, 18, 7, '4.920', 13, 4, '2020-07-20 04:44:04'),
(81, 3, 20, 7, '5.280', 13, 4, '2020-07-20 04:44:04'),
(82, 3, 24, 7, '20.600', 13, 4, '2020-07-20 04:44:04'),
(83, 3, 25, 7, '27.100', 13, 4, '2020-07-20 04:44:04'),
(84, 3, 27, 7, '28.500', 13, 4, '2020-07-20 04:44:04'),
(85, 3, 28, 7, '22.900', 15, 4, '2020-07-20 04:44:04'),
(86, 3, 28, 1, '2.304', 15, 4, '2020-07-20 04:44:04'),
(87, 3, 30, 7, '34.600', 15, 4, '2020-07-20 04:44:04'),
(88, 3, 30, 5, '25.527', 15, 4, '2020-07-20 04:44:04'),
(89, 3, 31, 7, '16.900', 15, 4, '2020-07-20 04:44:04'),
(90, 3, 31, 9, '8.100', 13, 4, '2020-07-20 04:44:04'),
(91, 3, 32, 7, '6.800', 15, 4, '2020-07-20 04:44:04'),
(92, 3, 32, 5, '3.707', 13, 4, '2020-07-20 04:44:04'),
(93, 3, 33, 7, '18.100', 15, 4, '2020-07-20 04:44:05'),
(94, 3, 33, 9, '8.700', 13, 4, '2020-07-20 04:44:05'),
(95, 3, 33, 3, '11.752', 15, 4, '2020-07-20 04:44:05'),
(96, 3, 33, 10, '3.800', 13, 4, '2020-07-20 04:44:05'),
(97, 3, 33, 4, '9.903', 13, 4, '2020-07-20 04:44:05'),
(98, 3, 33, 5, '40.500', 13, 4, '2020-07-20 04:44:05'),
(99, 3, 33, 2, '35.221', 15, 4, '2020-07-20 04:44:05'),
(100, 4, 8, 7, '8.200', 13, 4, '2020-08-09 14:06:03'),
(101, 4, 8, 7, '15.100', 15, 4, '2020-08-09 14:06:03'),
(102, 4, 11, 7, '8.000', 13, 4, '2020-08-09 14:06:03'),
(103, 4, 11, 7, '8.100', 15, 4, '2020-08-09 14:06:03'),
(104, 4, 34, 12, '21.800', 13, 4, '2020-08-09 14:06:03'),
(105, 4, 34, 14, '41.700', 13, 4, '2020-08-09 14:06:03'),
(106, 4, 34, 15, '55.100', 13, 4, '2020-08-09 14:06:03'),
(107, 4, 34, 13, '0.200', 13, 4, '2020-08-09 14:06:03'),
(108, 4, 35, 12, '9.300', 13, 4, '2020-08-09 14:06:03'),
(109, 4, 35, 14, '22.700', 13, 4, '2020-08-09 14:06:03'),
(110, 4, 35, 15, '23.803', 13, 4, '2020-08-09 14:06:03'),
(111, 4, 36, 12, '20.400', 13, 4, '2020-08-09 14:06:03'),
(112, 4, 36, 14, '45.872', 13, 4, '2020-08-09 14:06:03'),
(113, 4, 36, 15, '50.000', 13, 4, '2020-08-09 14:06:03'),
(114, 5, 34, 7, '15.100', 15, 4, '2020-08-09 14:07:14'),
(115, 5, 35, 7, '8.100', 15, 4, '2020-08-09 14:07:14'),
(116, 6, 36, 7, '16.400', 15, 4, '2020-08-11 03:43:48'),
(117, 6, 36, 3, '11.872', 15, 4, '2020-08-11 03:43:48'),
(118, 6, 36, 4, '5.437', 15, 4, '2020-08-11 03:43:48'),
(119, 6, 36, 5, '25.814', 15, 4, '2020-08-11 03:43:48'),
(120, 6, 36, 2, '38.337', 15, 4, '2020-08-11 03:43:48'),
(121, 7, 9, 7, '8.000', 13, 4, '2020-08-19 03:26:15'),
(122, 7, 9, 7, '17.200', 15, 4, '2020-08-19 03:26:15'),
(123, 7, 10, 7, '10.500', 13, 4, '2020-08-19 03:26:15'),
(124, 7, 37, 12, '21.200', 13, 4, '2020-08-19 03:26:15'),
(125, 7, 37, 14, '48.200', 13, 4, '2020-08-19 03:26:15'),
(126, 7, 37, 15, '50.600', 13, 4, '2020-08-19 03:26:15'),
(127, 7, 37, 13, '0.150', 13, 4, '2020-08-19 03:26:15'),
(128, 7, 38, 12, '23.500', 13, 4, '2020-08-19 03:26:15'),
(129, 7, 38, 14, '44.200', 13, 4, '2020-08-19 03:26:15'),
(130, 7, 38, 15, '53.000', 13, 4, '2020-08-19 03:26:15'),
(131, 7, 38, 13, '0.300', 13, 4, '2020-08-19 03:26:15'),
(132, 8, 37, 7, '17.200', 15, 4, '2020-08-19 03:27:02'),
(133, 9, 38, 7, '18.000', 15, 4, '2020-08-24 11:36:44'),
(134, 9, 38, 3, '0.332', 13, 4, '2020-08-24 11:36:44'),
(135, 9, 38, 4, '0.300', 13, 4, '2020-08-24 11:36:44'),
(136, 9, 38, 5, '0.804', 13, 4, '2020-08-24 11:36:44'),
(137, 9, 38, 2, '0.301', 15, 4, '2020-08-24 11:36:45'),
(138, 10, 39, 12, '20.100', 15, 4, '2020-08-26 02:55:31'),
(139, 10, 39, 14, '40.300', 15, 4, '2020-08-26 02:55:31'),
(140, 10, 39, 15, '47.600', 15, 4, '2020-08-26 02:55:31'),
(141, 10, 39, 13, '0.010', 15, 4, '2020-08-26 02:55:31'),
(142, 11, 39, 7, '15.900', 15, 4, '2020-08-31 02:43:56'),
(143, 11, 39, 3, '0.062', 13, 4, '2020-08-31 02:43:56'),
(144, 11, 39, 4, '0.466', 13, 4, '2020-08-31 02:43:56'),
(145, 11, 39, 5, '0.143', 13, 4, '2020-08-31 02:43:56'),
(146, 11, 39, 2, '1.397', 15, 4, '2020-08-31 02:43:56'),
(147, 12, 14, 7, '9.200', 13, 4, '2020-09-02 03:31:59'),
(148, 12, 14, 7, '21.000', 15, 4, '2020-09-02 03:31:59'),
(149, 12, 40, 12, '48.100', 15, 4, '2020-09-02 03:32:00'),
(150, 12, 40, 14, '50.400', 15, 4, '2020-09-02 03:32:00'),
(151, 12, 40, 15, '0.011', 15, 4, '2020-09-02 03:32:00'),
(152, 13, 40, 15, '50.389', 13, 4, '2020-09-02 13:54:35'),
(153, 13, 40, 13, '0.011', 13, 4, '2020-09-02 13:54:35'),
(154, 14, 39, 12, '20.100', 13, 4, '2020-09-07 12:04:07'),
(155, 14, 39, 12, '18.100', 15, 4, '2020-09-07 12:04:07'),
(156, 14, 39, 14, '40.300', 13, 4, '2020-09-07 12:04:07'),
(157, 14, 39, 15, '47.600', 13, 4, '2020-09-07 12:04:07'),
(158, 14, 39, 13, '0.010', 13, 4, '2020-09-07 12:04:07'),
(159, 14, 40, 3, '0.075', 13, 4, '2020-09-07 12:04:07'),
(160, 14, 40, 5, '0.467', 13, 4, '2020-09-07 12:04:07'),
(161, 14, 40, 2, '0.438', 13, 4, '2020-09-07 12:04:07'),
(162, 15, 40, 7, '18.100', 15, 4, '2020-09-07 12:04:42'),
(163, 16, 13, 7, '10.500', 13, 4, '2020-09-09 12:58:11'),
(164, 16, 41, 12, '20.300', 13, 4, '2020-09-09 12:58:11'),
(165, 16, 41, 14, '43.600', 13, 4, '2020-09-09 12:58:11'),
(166, 16, 41, 15, '50.800', 13, 4, '2020-09-09 12:58:11'),
(167, 16, 41, 13, '0.085', 13, 4, '2020-09-09 12:58:11'),
(168, 17, 15, 7, '10.200', 13, 4, '2020-09-15 10:25:02'),
(169, 17, 15, 7, '17.300', 15, 4, '2020-09-15 10:25:02'),
(170, 17, 40, 12, '21.000', 13, 4, '2020-09-15 10:25:02'),
(171, 17, 40, 12, '4.000', 15, 4, '2020-09-15 10:25:02'),
(172, 17, 40, 14, '48.100', 13, 4, '2020-09-15 10:25:02'),
(173, 17, 40, 15, '0.011', 13, 4, '2020-09-15 10:25:02'),
(174, 17, 40, 15, '19.450', 15, 4, '2020-09-15 10:25:02'),
(175, 17, 41, 7, '0.484', 15, 4, '2020-09-15 10:25:02'),
(176, 17, 41, 9, '0.080', 15, 4, '2020-09-15 10:25:02'),
(177, 17, 41, 3, '0.044', 13, 4, '2020-09-15 10:25:02'),
(178, 17, 41, 2, '69.099', 13, 4, '2020-09-15 10:25:02'),
(179, 18, 41, 7, '16.816', 15, 4, '2020-09-15 10:25:35'),
(180, 18, 41, 9, '3.920', 15, 4, '2020-09-15 10:25:35'),
(181, 18, 41, 10, '19.450', 15, 4, '2020-09-15 10:25:35'),
(182, 18, 41, 4, '0.484', 15, 4, '2020-09-15 10:25:35'),
(183, 18, 41, 5, '0.080', 15, 4, '2020-09-15 10:25:35'),
(184, 19, 16, 7, '10.200', 13, 4, '2020-09-22 03:04:54'),
(185, 20, 15, 7, '10.200', 13, 4, '2020-09-24 03:15:31'),
(186, 20, 40, 12, '21.000', 13, 4, '2020-09-24 03:15:31'),
(187, 20, 40, 12, '0.044', 15, 4, '2020-09-24 03:15:31'),
(188, 20, 40, 14, '48.100', 13, 4, '2020-09-24 03:15:31'),
(189, 20, 40, 14, '9.084', 15, 4, '2020-09-24 03:15:31'),
(190, 20, 40, 15, '0.011', 13, 4, '2020-09-24 03:15:31'),
(191, 20, 41, 7, '0.484', 13, 4, '2020-09-24 03:15:31'),
(192, 21, 18, 7, '5.280', 13, 4, '2020-10-03 05:16:46'),
(193, 21, 41, 3, '0.044', 13, 4, '2020-10-03 05:16:47'),
(194, 21, 41, 3, '9.084', 15, 4, '2020-10-03 05:16:47'),
(195, 22, 41, 2, '9.084', 15, 4, '2020-10-03 05:17:43'),
(196, 23, 19, 7, '11.000', 13, 4, '2020-10-06 09:41:41'),
(197, 24, 21, 7, '15.100', 13, 4, '2020-11-25 02:46:56'),
(198, 24, 23, 7, '15.500', 13, 4, '2020-11-25 02:46:56'),
(199, 24, 24, 7, '8.700', 13, 4, '2020-11-25 02:46:56'),
(200, 24, 26, 7, '30.400', 13, 4, '2020-11-25 02:46:56'),
(201, 25, 28, 7, '22.900', 13, 4, '2020-12-10 11:00:03'),
(202, 26, 30, 7, '34.600', 13, 4, '2020-12-21 10:15:32'),
(203, 27, 31, 7, '16.900', 13, 4, '2020-12-24 04:47:03'),
(204, 28, 32, 7, '6.800', 13, 4, '2021-01-05 11:29:07'),
(205, 28, 32, 7, '25.668', 15, 4, '2021-01-05 11:29:07'),
(206, 29, 33, 7, '18.100', 13, 4, '2021-01-14 13:26:40'),
(207, 29, 34, 7, '15.100', 13, 4, '2021-01-14 13:26:40'),
(208, 29, 43, 7, '7.100', 13, 4, '2021-01-14 13:26:40'),
(209, 29, 43, 3, '0.021', 13, 4, '2021-01-14 13:26:40'),
(210, 29, 43, 10, '6.100', 13, 4, '2021-01-14 13:26:40'),
(211, 29, 43, 14, '16.300', 13, 4, '2021-01-14 13:26:40'),
(212, 29, 43, 15, '20.500', 13, 4, '2021-01-14 13:26:40'),
(213, 29, 43, 5, '3.800', 13, 4, '2021-01-14 13:26:40'),
(214, 29, 43, 13, '0.007', 13, 4, '2021-01-14 13:26:40'),
(215, 29, 43, 2, '6.015', 13, 4, '2021-01-14 13:26:40'),
(216, 30, 43, 12, '7.300', 13, 4, '2021-01-14 13:27:02'),
(217, 31, 44, 12, '13.600', 13, 4, '2021-01-20 02:52:18'),
(218, 31, 44, 14, '26.000', 13, 4, '2021-01-20 02:52:18'),
(219, 31, 44, 15, '27.100', 13, 4, '2021-01-20 02:52:18'),
(220, 31, 44, 13, '0.020', 13, 4, '2021-01-20 02:52:18'),
(221, 32, 35, 7, '8.100', 13, 4, '2021-01-26 18:15:09'),
(222, 32, 35, 7, '9.000', 15, 4, '2021-01-26 18:15:09'),
(223, 32, 44, 7, '10.400', 15, 4, '2021-01-26 18:15:09'),
(224, 32, 44, 3, '11.176', 15, 4, '2021-01-26 18:15:09'),
(225, 33, 44, 5, '11.176', 15, 4, '2021-01-26 18:15:42'),
(226, 34, 36, 7, '16.400', 13, 4, '2021-01-28 09:17:27'),
(227, 34, 36, 7, '13.200', 15, 4, '2021-01-28 09:17:27'),
(228, 34, 45, 12, '29.500', 15, 4, '2021-01-28 09:17:27'),
(229, 34, 45, 14, '34.100', 15, 4, '2021-01-28 09:17:27'),
(230, 34, 45, 15, '0.023', 15, 4, '2021-01-28 09:17:27'),
(231, 35, 45, 15, '34.077', 13, 4, '2021-01-30 04:19:57'),
(232, 35, 45, 13, '0.023', 13, 4, '2021-01-30 04:19:57'),
(233, 36, 45, 7, '9.000', 15, 4, '2021-02-01 12:24:05'),
(234, 36, 45, 3, '10.401', 15, 4, '2021-02-01 12:24:05'),
(235, 36, 45, 4, '0.576', 15, 4, '2021-02-01 12:24:05'),
(236, 36, 45, 5, '11.228', 15, 4, '2021-02-01 12:24:05'),
(237, 36, 45, 2, '2.140', 15, 4, '2021-02-01 12:24:05'),
(238, 37, 37, 7, '17.200', 13, 4, '2021-02-03 09:00:44'),
(239, 38, 46, 12, '19.300', 13, 4, '2021-02-03 09:11:34'),
(240, 38, 46, 14, '40.600', 13, 4, '2021-02-03 09:11:34'),
(241, 38, 46, 15, '49.800', 13, 4, '2021-02-03 09:11:34'),
(242, 38, 46, 13, '0.039', 13, 4, '2021-02-03 09:11:34'),
(243, 39, 38, 7, '18.000', 13, 4, '2021-02-16 11:53:15'),
(244, 39, 38, 7, '17.300', 15, 4, '2021-02-16 11:53:15'),
(245, 39, 45, 12, '13.200', 13, 4, '2021-02-16 11:53:15'),
(246, 39, 45, 12, '10.455', 15, 4, '2021-02-16 11:53:15'),
(247, 39, 45, 14, '29.500', 13, 4, '2021-02-16 11:53:15'),
(248, 39, 45, 14, '0.712', 15, 4, '2021-02-16 11:53:15'),
(249, 39, 45, 15, '0.023', 13, 4, '2021-02-16 11:53:15'),
(250, 39, 45, 15, '11.338', 15, 4, '2021-02-16 11:53:15'),
(251, 40, 46, 7, '17.300', 15, 4, '2021-02-16 11:54:03'),
(252, 40, 46, 3, '10.455', 15, 4, '2021-02-16 11:54:03'),
(253, 40, 46, 4, '0.712', 15, 4, '2021-02-16 11:54:03'),
(254, 40, 46, 5, '11.338', 15, 4, '2021-02-16 11:54:03'),
(255, 41, 39, 7, '15.900', 13, 4, '2021-02-19 13:45:29'),
(256, 42, 40, 7, '18.100', 13, 4, '2021-02-27 08:10:45'),
(257, 43, 47, 12, '36.200', 13, 4, '2021-03-02 02:42:45'),
(258, 43, 47, 14, '89.300', 13, 4, '2021-03-02 02:42:45'),
(259, 43, 47, 15, '99.800', 13, 4, '2021-03-02 02:42:45'),
(260, 43, 47, 13, '0.038', 13, 4, '2021-03-02 02:42:45');

--
-- Disparadores `decomiso_carnes`
--
DROP TRIGGER IF EXISTS `decomiso_carnes_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `decomiso_carnes_AFTER_INSERT` AFTER INSERT ON `decomiso_carnes` FOR EACH ROW if new.id_cuenta=13 then
BEGIN

call ins_AgregarMovCarne(	new.id_carne,
							13,
                            new.id_desposte,
                            new.cantidad,
                            null,
                            new.id_decomiso,
                            null,
                            new.id_usuario,
                            null,
                            "Decomiso");

END;
end if
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `decomiso_reg`
--

DROP TABLE IF EXISTS `decomiso_reg`;
CREATE TABLE IF NOT EXISTS `decomiso_reg` (
  `id_decomiso` int(11) NOT NULL AUTO_INCREMENT,
  `destino` varchar(45) DEFAULT NULL,
  `fecha_decomiso` date DEFAULT NULL,
  `descripcion` text,
  `id_usuario_alta` int(11) DEFAULT NULL,
  `fecha_registro_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_usuario_baja` int(11) DEFAULT NULL,
  `fecha_registro_baja` datetime DEFAULT NULL,
  `motivo_anulacion` text,
  `anulado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id_decomiso`),
  KEY `decomiso_reg_usuari_alta_idx` (`id_usuario_alta`),
  KEY `decomiso_reg_usuari_baja_idx` (`id_usuario_baja`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `decomiso_reg`
--

INSERT INTO `decomiso_reg` (`id_decomiso`, `destino`, `fecha_decomiso`, `descripcion`, `id_usuario_alta`, `fecha_registro_alta`, `id_usuario_baja`, `fecha_registro_baja`, `motivo_anulacion`, `anulado`) VALUES
(1, 'Mario Boloqui', '2020-07-20', 'Verificar lotes de costillares depositados en freezer.\r\n', 4, '2020-07-20 04:24:43', NULL, NULL, NULL, 0),
(2, 'Venta', '2020-07-20', '.', 4, '2020-07-20 04:29:26', NULL, NULL, NULL, 0),
(3, 'Venta-OP', '2020-07-20', 'Productos vendidos (costillares)\r\ncortes ajustados según ordenes de producción.', 4, '2020-07-20 04:44:04', NULL, NULL, NULL, 0),
(4, 'Venta', '2020-08-09', '.SE DECOMISAN HUESOS, CUEROS Y PATAS RETIRADAS POR MARIO BOLOQUI. COSTILLARES ALMACENADOS EN EXCESO DE FECHA DE CADUCIDAD.', 4, '2020-08-09 14:06:03', NULL, NULL, NULL, 0),
(5, 'Venta', '2020-08-09', 'SE POSTERGA DECOMISO DE COSTILLARES EN FREEZER.', 4, '2020-08-09 14:07:14', NULL, NULL, NULL, 0),
(6, 'AJUSTE DE CARNES', '2020-08-11', '', 4, '2020-08-11 03:43:48', NULL, NULL, NULL, 0),
(7, 'DECOMISO', '2020-08-19', 'CORTES ENTREGADOS A MARIO BOLOQUI', 4, '2020-08-19 03:26:15', NULL, NULL, NULL, 0),
(8, 'POSTERGA USO DE CORTE', '2020-08-19', 'SE POSTERGA COSTILLAR', 4, '2020-08-19 03:27:02', NULL, NULL, NULL, 0),
(9, 'MERCADERIA EN DEPOSITO PARA VENTA', '2020-08-24', '.', 4, '2020-08-24 11:36:44', NULL, NULL, NULL, 0),
(10, 'DECOMISO', '2020-08-26', 'DESTINO MARIO BOLOQUI', 4, '2020-08-26 02:55:31', NULL, NULL, NULL, 0),
(11, 'POSTERGO PRODUCTO IBERICO - EXCEDENTES DE OP ', '2020-08-31', '', 4, '2020-08-31 02:43:56', NULL, NULL, NULL, 0),
(12, 'DECOMISO', '2020-09-02', 'HUESOS, CUEROS, PARAS - MARIO BOLOQUI', 4, '2020-09-02 03:31:59', NULL, NULL, NULL, 0),
(13, 'DEOMISO', '2020-09-02', 'RETIRADOS POR MARIO BOLOQUI', 4, '2020-09-02 13:54:35', NULL, NULL, NULL, 0),
(14, 'DECOMISO - POSTERGACION', '2020-09-07', 'RETIRADO POR MARIO BOLOQUI', 4, '2020-09-07 12:04:07', NULL, NULL, NULL, 0),
(15, 'POSTERGACION', '2020-09-07', '.', 4, '2020-09-07 12:04:42', NULL, NULL, NULL, 0),
(16, 'DECOMISO', '2020-09-08', 'RETIRA MARIO BOLOQUI', 4, '2020-09-09 12:58:11', NULL, NULL, NULL, 0),
(17, 'DECOMISO', '2020-09-15', 'CORTES CONSERVADOR CONGELADOS PARA PRODUCCION.', 4, '2020-09-15 10:25:02', 4, '2020-09-24 03:12:23', 'CARNE DE SALAME INCLUIDO', 1),
(18, 'POSTERGA USO DE CORTE', '2020-09-15', '', 4, '2020-09-15 10:25:35', NULL, NULL, NULL, 0),
(19, 'DECOMISO', '2020-09-22', 'Costillar en deposito', 4, '2020-09-22 03:04:54', NULL, NULL, NULL, 0),
(20, 'DECOMISO', '2020-09-24', '', 4, '2020-09-24 03:15:31', NULL, NULL, NULL, 0),
(21, 'POSTERGA USO DE CORTE', '2020-10-03', '', 4, '2020-10-03 05:16:46', NULL, NULL, NULL, 0),
(22, 'POSTERGA USO DE CORTE', '2020-10-03', '', 4, '2020-10-03 05:17:43', NULL, NULL, NULL, 0),
(23, 'DECOMISO', '2020-10-06', '', 4, '2020-10-06 09:41:41', NULL, NULL, NULL, 0),
(24, 'POSTERGA USO DE CORTE', '2020-11-25', 'MERCADERIA EN FREEZER', 4, '2020-11-25 02:46:56', NULL, NULL, NULL, 0),
(25, 'DECOMISO', '2020-12-10', '', 4, '2020-12-10 11:00:03', NULL, NULL, NULL, 0),
(26, 'POSTERGA USO DE CORTE', '2020-12-21', '', 4, '2020-12-21 10:15:32', NULL, NULL, NULL, 0),
(27, 'POSTERGA USO DE CORTE', '2020-12-24', '', 4, '2020-12-24 04:47:03', NULL, NULL, NULL, 0),
(28, 'DECOMISO - POSTERGACION', '2021-01-05', '', 4, '2021-01-05 11:29:07', NULL, NULL, NULL, 0),
(29, 'DEOMISO', '2021-01-14', '', 4, '2021-01-14 13:26:40', NULL, NULL, NULL, 0),
(30, 'DECOMISO', '2021-01-14', '', 4, '2021-01-14 13:27:02', NULL, NULL, NULL, 0),
(31, 'DECOMISO', '2021-01-13', 'RETIRA MARIO', 4, '2021-01-20 02:52:18', NULL, NULL, NULL, 0),
(32, 'POSTERGO USO DE CORTE', '2021-01-26', '', 4, '2021-01-26 18:15:09', NULL, NULL, NULL, 0),
(33, 'POSTERGO USO DE CORTE', '2021-01-26', '', 4, '2021-01-26 18:15:42', NULL, NULL, NULL, 0),
(34, 'RETIRA MARIO BOLOQUI', '2021-01-26', '', 4, '2021-01-28 09:17:27', NULL, NULL, NULL, 0),
(35, 'DECOMISO', '2021-01-30', 'RETIRADO POR BOLOQUI', 4, '2021-01-30 04:19:57', NULL, NULL, NULL, 0),
(36, 'POSTERGO USO DE CORTE', '2021-02-01', '', 4, '2021-02-01 12:24:05', NULL, NULL, NULL, 0),
(37, 'DECOMISO', '2021-02-03', '', 4, '2021-02-03 09:00:44', NULL, NULL, NULL, 0),
(38, 'DECOMISO', '2021-02-03', 'RETIRA MARIO BOLOQUI.', 4, '2021-02-03 09:11:34', NULL, NULL, NULL, 0),
(39, 'DECOMISO', '2021-02-16', '', 4, '2021-02-16 11:53:15', NULL, NULL, NULL, 0),
(40, 'POSTERGO USO DE CORTE', '2021-02-16', '', 4, '2021-02-16 11:54:03', NULL, NULL, NULL, 0),
(41, 'DECOMISO', '2021-02-19', '', 4, '2021-02-19 13:45:28', NULL, NULL, NULL, 0),
(42, 'DECOMISO', '2021-02-27', 'FECHAS DE SISTEMA CADUCADAS', 4, '2021-02-27 08:10:45', NULL, NULL, NULL, 0),
(43, 'DECOMISO', '2021-03-02', 'RETIRA MARIO BOLOQUI', 4, '2021-03-02 02:42:45', NULL, NULL, NULL, 0);

--
-- Disparadores `decomiso_reg`
--
DROP TRIGGER IF EXISTS `decomiso_reg_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `decomiso_reg_AFTER_UPDATE` AFTER UPDATE ON `decomiso_reg` FOR EACH ROW if new.anulado=1 and old.anulado=0 then
BEGIN
	insert into carnes_mov (id_carne,id_cuenta,id_desposte,id_decomiso,cantidad,id_usuario)
		select id_carne, 14 as id_cuenta, id_desposte,id_decomiso,cantidad*-1, new.id_usuario_baja as id_usuario
		from carnes_mov
			where id_cuenta=13 and id_decomiso=new.id_decomiso;
END;
end if
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depositos_n`
--

DROP TABLE IF EXISTS `depositos_n`;
CREATE TABLE IF NOT EXISTS `depositos_n` (
  `id_deposito` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_deposito`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `depositos_n`
--

INSERT INTO `depositos_n` (`id_deposito`, `nombre`, `activo`) VALUES
(1, 'Condimentos', 1),
(2, 'Líquidos', 1),
(3, 'Métricos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desposte_reg`
--

DROP TABLE IF EXISTS `desposte_reg`;
CREATE TABLE IF NOT EXISTS `desposte_reg` (
  `id_desposte` int(11) NOT NULL AUTO_INCREMENT,
  `nro_remito` varchar(45) DEFAULT NULL,
  `id_proveedor` int(11) NOT NULL,
  `unidades` int(11) NOT NULL,
  `peso_total` decimal(10,3) NOT NULL,
  `merma_inicial` decimal(10,3) DEFAULT NULL,
  `fecha_desposte` date NOT NULL,
  `fecha_AltaRegistro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario_AltaRegistro` int(11) NOT NULL,
  `anulado` tinyint(4) DEFAULT '0',
  `fecha_BajaRegistro` datetime DEFAULT NULL,
  `id_usuario_BajaRegistro` int(11) DEFAULT NULL,
  `descripcion` text,
  `motivo_anulacion` text,
  PRIMARY KEY (`id_desposte`),
  KEY `id_usuario_alta_desposte_idx_idx` (`id_usuario_AltaRegistro`),
  KEY `id_usuario_baja_desposte_idx_idx` (`id_usuario_BajaRegistro`),
  KEY `id_proveedor_desposte_reg_idx` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `desposte_reg`
--

INSERT INTO `desposte_reg` (`id_desposte`, `nro_remito`, `id_proveedor`, `unidades`, `peso_total`, `merma_inicial`, `fecha_desposte`, `fecha_AltaRegistro`, `id_usuario_AltaRegistro`, `anulado`, `fecha_BajaRegistro`, `id_usuario_BajaRegistro`, `descripcion`, `motivo_anulacion`) VALUES
(1, '07-012020', 8, 6, '238.000', '0.000', '2020-01-07', '2020-04-14 14:47:46', 2, 0, NULL, NULL, 'Primer desposte del ano, faltan datos en la hoja de llenado', NULL),
(2, '07-012020', 8, 6, '238.000', '0.000', '2020-01-07', '2020-04-14 14:47:53', 2, 1, '2020-04-14 15:50:36', 2, 'Primer desposte del ano, faltan datos en la hoja de llenado', 'duplicado'),
(3, '07-012020', 8, 6, '238.000', '0.000', '2020-01-07', '2020-04-14 14:48:05', 2, 1, '2020-04-14 15:50:16', 2, 'Primer desposte del ano, faltan datos en la hoja de llenado', 'duplicar'),
(4, '07-012020', 8, 6, '238.000', '0.000', '2020-01-07', '2020-04-14 14:48:06', 2, 1, '2020-04-14 15:49:58', 2, 'Primer desposte del ano, faltan datos en la hoja de llenado', 'Duplicado'),
(5, '07-012020', 8, 6, '238.000', '0.000', '2020-01-07', '2020-04-14 14:57:11', 2, 1, '2020-04-14 15:49:29', 2, 'Primer desposte del ano, faltan datos en la hoja de llenado', 'duplicado'),
(6, '13-012020', 8, 6, '235.000', '0.052', '2020-01-13', '2020-04-14 15:53:11', 2, 0, NULL, NULL, 'faltaron datos y se completaron estimados', NULL),
(7, '20-012020', 8, 6, '227.000', '0.052', '2020-01-20', '2020-04-14 15:56:07', 2, 0, NULL, NULL, 'faltaron datos y se completaron estimados', NULL),
(8, '28-012020', 8, 6, '235.000', '0.035', '2020-01-28', '2020-04-16 06:33:27', 4, 0, NULL, NULL, 'd', NULL),
(9, '18-022020', 8, 6, '252.000', '0.036', '2020-02-18', '2020-04-16 07:15:24', 4, 0, NULL, NULL, 'Descripción estimativa, faltan datos de planilla de desposte.', NULL),
(10, '24-022020', 8, 8, '328.000', '0.023', '2020-02-24', '2020-04-16 17:50:41', 4, 0, NULL, NULL, 'Descripción estimativa, faltan datos de planilla de desposte.', NULL),
(11, '04-022020', 8, 6, '245.000', '0.035', '2020-02-04', '2020-04-16 17:57:38', 4, 0, NULL, NULL, 'Descripción estimativa, faltan datos de planilla de desposte.', NULL),
(12, '03-032020', 8, 6, '228.000', '0.030', '2020-03-03', '2020-04-16 18:13:06', 4, 0, NULL, NULL, 'Descripción estimativa, faltan datos de planilla de desposte.', NULL),
(13, '17-032020', 8, 6, '268.000', '0.015', '2020-03-17', '2020-04-16 18:38:46', 4, 0, NULL, NULL, 'Descripción estimativa, faltan datos de planilla de desposte.', NULL),
(14, '10-032020', 8, 6, '240.000', '0.005', '2020-03-10', '2020-04-16 18:43:41', 4, 0, NULL, NULL, 'Descripción estimativa, faltan datos de planilla de desposte.', NULL),
(15, '23-032020', 8, 6, '264.000', '0.028', '2020-03-23', '2020-04-16 18:58:27', 4, 0, NULL, NULL, 'Descripción estimativa, faltan datos de planilla de desposte.', NULL),
(16, '30-032020', 8, 6, '246.000', '0.035', '2020-03-30', '2020-04-16 19:33:03', 4, 0, NULL, NULL, 'Descripción estimativa, faltan datos de planilla de desposte.', NULL),
(17, '06-042020', 8, 6, '240.000', '0.037', '2020-04-06', '2020-04-16 19:34:03', 4, 1, '2020-04-16 19:35:34', 4, 'Descripción estimativa, faltan datos de planilla de desposte.\r\nCategoria parrillero corresponde a PALETA', 'DUPLICADO CON N°18'),
(18, '06-042020', 8, 6, '240.000', '0.037', '2020-04-06', '2020-04-16 19:34:05', 4, 0, NULL, NULL, 'Descripción estimativa, faltan datos de planilla de desposte.\r\nCategoria parrillero corresponde a PALETA', NULL),
(19, '13-042020', 8, 6, '246.000', '0.025', '2020-04-13', '2020-04-16 19:40:35', 4, 0, NULL, NULL, '..', NULL),
(20, '0004-3150', 2, 3, '112.000', '0.073', '2020-04-20', '2020-04-22 11:15:40', 2, 0, NULL, NULL, 'DEMASIADA MERMA FRIGORÍFICA, HABLAR CON NICOLAS MARTIARENA', NULL),
(21, '04-3273', 2, 8, '352.000', '0.033', '2020-04-27', '2020-04-29 08:35:16', 4, 0, NULL, NULL, '...', NULL),
(22, '04-3375', 2, 8, '344.000', '0.063', '2020-05-05', '2020-05-05 08:25:40', 4, 0, NULL, NULL, '.', NULL),
(23, '04-3483', 2, 8, '360.000', '0.025', '2020-05-12', '2020-05-12 14:16:14', 4, 0, NULL, NULL, 'El valor del peso de panceta incluye el cuero de las mismas.', NULL),
(24, '04-3614', 2, 14, '692.000', '0.036', '2020-05-19', '2020-05-19 15:22:06', 4, 0, NULL, NULL, '.', NULL),
(25, '04-3727', 2, 15, '638.000', '0.040', '2020-05-27', '2020-05-27 14:09:27', 4, 0, NULL, NULL, 'SE CONTABILIZAN 638 KG SEGÚN DETALLE DE COMPRA (PRESUPUESTO) EN EL QUE FIGURAN ORIGINALMENTE 717 KG, QUEDANDO PENDIENTES DE ENTREGA 79 KG DE CERDOS PRESUPUESTADOS DE MAS. SE COMUNICA CON NICOLAS', NULL),
(26, '01', 2, 17, '790.000', '0.043', '2020-06-02', '2020-06-05 16:47:45', 4, 0, NULL, NULL, 'VERIFICAR NUMERO DE REMITO Y CANTIDAD DE KG TOTALES', NULL),
(27, '04-3953', 2, 15, '691.000', '0.030', '2020-06-10', '2020-06-10 06:43:57', 4, 0, NULL, NULL, 'FACTURA 01-10353', NULL),
(28, '00', 2, 15, '704.000', '0.052', '2020-06-17', '2020-06-17 16:36:26', 4, 0, NULL, NULL, 'Numero de remito no registrado en la planilla', NULL),
(29, '00', 2, 15, '704.000', '0.052', '2020-06-17', '2020-06-17 16:36:27', 4, 1, '2020-06-24 18:51:51', 1, 'Numero de remito no registrado en la planilla', 'error de carga'),
(30, '04-04197', 2, 20, '861.000', '0.030', '2020-06-23', '2020-06-23 17:53:36', 4, 0, NULL, NULL, 'Factura 01-10512, CSP 77.21 -A-3454', NULL),
(31, '04-4319', 2, 10, '430.000', '0.053', '2020-06-30', '2020-06-30 14:50:33', 4, 0, NULL, NULL, 'Factura 01-10593,CSP 7721-A-3475', NULL),
(32, '04-4450', 2, 4, '165.000', '0.041', '2020-07-07', '2020-07-07 14:07:28', 4, 0, NULL, NULL, '.', NULL),
(33, '04-4573', 2, 10, '420.000', '0.037', '2020-07-14', '2020-07-14 14:12:05', 4, 0, NULL, NULL, 'Factura Nº 01-10763', NULL),
(34, '04-4699', 2, 10, '428.000', '0.050', '2020-07-21', '2020-07-21 09:26:39', 4, 0, NULL, NULL, '.', NULL),
(35, '04-4903', 2, 4, '187.000', '0.006', '2020-07-29', '2020-07-30 12:06:48', 4, 0, NULL, NULL, 'CARNE FAENADA Y REMITIDA A LA CIUDAD LUEGO DE INCONVENIENTES CON PELADORA DE FRIGORÍFICO, SIN TIEMPO MÍNIMO DE OREO.', NULL),
(36, '04-4952', 2, 9, '430.500', '0.037', '2020-08-05', '2020-08-05 10:17:27', 4, 0, NULL, NULL, '.', NULL),
(37, '04-5077', 2, 10, '470.000', '0.055', '2020-08-11', '2020-08-11 10:23:22', 4, 0, NULL, NULL, 'MERMA 26 KG', NULL),
(38, '04-5223', 2, 10, '460.000', '0.030', '2020-08-18', '2020-08-18 11:29:24', 4, 0, NULL, NULL, 'CONTROLAR SUMA DE DESPOSTE', NULL),
(39, '04-5359', 2, 10, '420.000', '0.025', '2020-08-25', '2020-08-25 09:46:21', 4, 0, NULL, NULL, 'MERMA 2,45 %', NULL),
(40, '04-5483', 2, 10, '470.000', '0.019', '2020-09-01', '2020-09-01 10:20:05', 4, 0, NULL, NULL, 'MERMA 1,87 - ', NULL),
(41, '02-3211', 2, 10, '470.000', '0.075', '2020-09-08', '2020-09-08 19:40:00', 4, 0, NULL, NULL, 'CSP 77.21 - A - 3770.', NULL),
(42, '05-1-21', 3, 4, '159.000', '0.023', '2021-01-05', '2021-01-05 12:54:04', 4, 1, '2021-01-07 02:13:31', 4, 'DESPOSTE 05-1-21 159 KG 4 MEDIAS', 'CORRECCION DE DESPOSTE'),
(43, '05-1-21', 3, 4, '159.000', '0.022', '2010-08-07', '2021-01-07 02:19:26', 4, 0, NULL, NULL, 'CSP N° 77.21.A.4222 159 KG, CERTIFICADO DE LIBRE DE TRIQUINOSIS N°0371', NULL),
(44, '19-1-21', 2, 5, '232.000', '0.015', '2021-01-19', '2021-01-20 02:51:05', 4, 0, NULL, NULL, 'DESPOSTE SIN REMITO. 5 MEDIAS RES POR 232 KG', NULL),
(45, '26-1-21', 2, 6, '282.000', '0.041', '2021-01-26', '2021-01-26 18:25:28', 4, 0, NULL, NULL, '..', NULL),
(46, '02-2-2021', 2, 10, '430.000', '0.033', '2021-02-02', '2021-02-03 09:07:14', 4, 0, NULL, NULL, '.', NULL),
(47, '05-0678', 8, 19, '875.000', '0.050', '2021-03-01', '2021-03-01 12:44:11', 4, 0, NULL, NULL, 'FACTURA 05-0678, 875 KG, 19 MEDIAS RES, MERMA 43,700 KG - 5%', NULL);

--
-- Disparadores `desposte_reg`
--
DROP TRIGGER IF EXISTS `desposte_reg_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `desposte_reg_AFTER_INSERT` AFTER INSERT ON `desposte_reg` FOR EACH ROW BEGIN
call ins_AgregarLote(new.id_desposte,1);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `desposte_reg_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `desposte_reg_AFTER_UPDATE` AFTER UPDATE ON `desposte_reg` FOR EACH ROW if new.anulado=1 and old.anulado=0 then
BEGIN
	insert into carnes_mov (id_carne,id_cuenta,id_desposte,cantidad,id_usuario)
		select id_carne, 3 as id_cuenta ,id_desposte,cantidad*-1, 1 as id_usuario
		from carnes_mov
			where id_cuenta=1 and id_desposte=new.id_desposte;

		UPDATE lotes_produccion
	SET
		anulado = 1,
		fecha_Baja = CURRENT_TIMESTAMP()
	WHERE id_desposte=new.id_desposte;

END;
end if
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `export_sistemas`
--

DROP TABLE IF EXISTS `export_sistemas`;
CREATE TABLE IF NOT EXISTS `export_sistemas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factura_a_desde` int(11) DEFAULT NULL,
  `factura_b_desde` int(11) DEFAULT NULL,
  `usuario_reg` int(11) DEFAULT NULL,
  `fecha_reg` datetime DEFAULT NULL,
  `anulado` tinyint(4) DEFAULT NULL,
  `fecha_baja` datetime DEFAULT NULL,
  `usuario_baja` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_proforma`
--

DROP TABLE IF EXISTS `factura_proforma`;
CREATE TABLE IF NOT EXISTS `factura_proforma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `cuit` varchar(45) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `fecha_reg` datetime DEFAULT NULL,
  `id_usuario_reg` int(11) DEFAULT NULL,
  `anulado` tinyint(4) DEFAULT NULL,
  `fecha_anulado` datetime DEFAULT NULL,
  `usuario_anulado` int(11) DEFAULT NULL,
  `id_export` int(11) DEFAULT NULL,
  `nro_fiscal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Fact_idPedido_idx` (`id_pedido`),
  KEY `Fact_idExport_idx` (`id_export`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_proforma_items`
--

DROP TABLE IF EXISTS `factura_proforma_items`;
CREATE TABLE IF NOT EXISTS `factura_proforma_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura_proforma` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `lote_produccion` int(11) DEFAULT NULL,
  `lote_compra` int(11) DEFAULT NULL,
  `cantidad_unidades` decimal(10,2) DEFAULT NULL,
  `cantidad_kg` decimal(10,3) DEFAULT NULL,
  `precio_unitario` varchar(45) DEFAULT NULL,
  `tipo_unidad` varchar(45) DEFAULT NULL,
  `descuento` decimal(10,3) DEFAULT NULL,
  `precio_total` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FactItems_IdItem_idx` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_mov`
--

DROP TABLE IF EXISTS `insumos_mov`;
CREATE TABLE IF NOT EXISTS `insumos_mov` (
  `id_movimiento` int(11) NOT NULL AUTO_INCREMENT,
  `id_insumo` int(11) NOT NULL,
  `cantidad` decimal(10,3) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `id_orden` int(11) DEFAULT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `id_orden_fin` int(11) DEFAULT NULL,
  `id_ajuste_stock` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_movimiento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_movimiento`),
  UNIQUE KEY `id_movimiento_UNIQUE` (`id_movimiento`),
  KEY `id_cuenta_idx` (`id_cuenta`),
  KEY `id_usuario_idx` (`id_usuario`),
  KEY `id_insumo_movInsumo_idx` (`id_insumo`),
  KEY `id_compra_movInsumo_idx` (`id_compra`),
  KEY `id_ordenprod_movInsumo_idx` (`id_orden`),
  KEY `id_ordenprod_fin_movInsumo_idx` (`id_orden_fin`),
  KEY `id_ajuste_movInsumo_idx` (`id_ajuste_stock`)
) ENGINE=InnoDB AUTO_INCREMENT=3985 DEFAULT CHARSET=utf8 COMMENT='Movimiento de insumos';

--
-- Volcado de datos para la tabla `insumos_mov`
--

INSERT INTO `insumos_mov` (`id_movimiento`, `id_insumo`, `cantidad`, `id_cuenta`, `id_orden`, `id_compra`, `id_orden_fin`, `id_ajuste_stock`, `id_usuario`, `fecha_movimiento`, `descripcion`) VALUES
(1, 1, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(2, 2, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(3, 3, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(4, 4, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(5, 5, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(6, 6, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(7, 7, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(8, 8, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(9, 9, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(10, 10, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(11, 11, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(12, 12, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(13, 13, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(14, 14, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(15, 15, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(16, 16, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(17, 17, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(18, 18, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(19, 19, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(20, 20, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(21, 21, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(22, 22, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(23, 23, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(24, 24, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(25, 25, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(26, 26, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(27, 27, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(28, 28, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(29, 29, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(30, 30, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(31, 31, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(32, 32, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(33, 33, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(34, 34, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(35, 35, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(36, 36, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(37, 37, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(38, 38, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(39, 39, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(40, 40, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(41, 41, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(42, 42, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(43, 43, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(44, 44, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(45, 45, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(46, 46, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(47, 47, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(48, 48, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(49, 49, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(50, 50, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(51, 51, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(52, 52, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(53, 53, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(54, 54, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(55, 55, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(56, 56, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(57, 57, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(58, 58, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(59, 59, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(60, 60, '100000.000', 12, NULL, NULL, NULL, NULL, 1, '2020-04-09 19:48:45', 'Carga inicial 9/4/2020'),
(61, 8, '-0.087', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:58', NULL),
(62, 12, '-0.035', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:58', NULL),
(63, 13, '-0.131', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:58', NULL),
(64, 32, '-103.768', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:58', NULL),
(65, 3, '-0.436', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:58', NULL),
(66, 49, '-103.809', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:58', NULL),
(67, 26, '-43.600', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:58', NULL),
(68, 11, '-0.022', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:58', NULL),
(69, 9, '-0.044', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:58', NULL),
(70, 7, '-0.349', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:58', NULL),
(71, 4, '-0.131', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:59', NULL),
(72, 16, '-0.567', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:59', NULL),
(73, 30, '-31.143', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:59', NULL),
(74, 15, '-0.436', 2, 1, NULL, NULL, NULL, 4, '2020-04-21 15:08:59', NULL),
(75, 8, '-0.032', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:16', NULL),
(76, 12, '-0.013', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:16', NULL),
(77, 13, '-0.047', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:16', NULL),
(78, 32, '-37.604', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:16', NULL),
(79, 3, '-0.158', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:16', NULL),
(80, 49, '-37.619', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:16', NULL),
(81, 26, '-15.800', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:16', NULL),
(82, 11, '-0.008', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:16', NULL),
(83, 9, '-0.016', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:16', NULL),
(84, 7, '-0.126', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:17', NULL),
(85, 4, '-0.047', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:17', NULL),
(86, 16, '-0.205', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:17', NULL),
(87, 30, '-11.286', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:17', NULL),
(88, 15, '-0.158', 2, 2, NULL, NULL, NULL, 4, '2020-04-21 15:10:17', NULL),
(89, 34, '-25.885', 2, 3, NULL, NULL, NULL, 4, '2020-04-21 15:12:29', NULL),
(90, 3, '-0.047', 2, 3, NULL, NULL, NULL, 4, '2020-04-21 15:12:29', NULL),
(91, 50, '-25.833', 2, 3, NULL, NULL, NULL, 4, '2020-04-21 15:12:29', NULL),
(92, 23, '-6.200', 2, 3, NULL, NULL, NULL, 4, '2020-04-21 15:12:29', NULL),
(93, 28, '-7.750', 2, 3, NULL, NULL, NULL, 4, '2020-04-21 15:12:29', NULL),
(94, 8, '-0.130', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:00', NULL),
(95, 12, '-0.052', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:00', NULL),
(96, 13, '-0.195', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:00', NULL),
(97, 32, '-154.700', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:00', NULL),
(98, 3, '-0.650', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:00', NULL),
(99, 49, '-154.762', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:00', NULL),
(100, 26, '-65.000', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:00', NULL),
(101, 11, '-0.033', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:00', NULL),
(102, 9, '-0.065', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:00', NULL),
(103, 7, '-0.520', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:00', NULL),
(104, 4, '-0.195', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:00', NULL),
(105, 16, '-0.845', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:01', NULL),
(106, 30, '-46.429', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:01', NULL),
(107, 15, '-0.650', 2, 4, NULL, NULL, NULL, 4, '2020-04-21 15:33:01', NULL),
(108, 8, '-0.118', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:11', NULL),
(109, 12, '-0.047', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:11', NULL),
(110, 13, '-0.177', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:11', NULL),
(111, 32, '-447.220', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:11', NULL),
(112, 47, '-446.970', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:11', NULL),
(113, 26, '-59.000', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:11', NULL),
(114, 11, '-0.030', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:12', NULL),
(115, 9, '-0.059', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:12', NULL),
(116, 7, '-0.295', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:12', NULL),
(117, 4, '-0.148', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:12', NULL),
(118, 16, '-1.298', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:12', NULL),
(119, 31, '-53.636', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:12', NULL),
(120, 15, '-0.590', 2, 5, NULL, NULL, NULL, 4, '2020-04-21 15:34:12', NULL),
(121, 33, '-5.148', 2, 6, NULL, NULL, NULL, 4, '2020-04-21 15:36:28', NULL),
(122, 3, '-0.035', 2, 6, NULL, NULL, NULL, 4, '2020-04-21 15:36:28', NULL),
(123, 54, '-5.200', 2, 6, NULL, NULL, NULL, 4, '2020-04-21 15:36:28', NULL),
(124, 22, '-11.700', 2, 6, NULL, NULL, NULL, 4, '2020-04-21 15:36:28', NULL),
(125, 27, '-5.850', 2, 6, NULL, NULL, NULL, 4, '2020-04-21 15:36:28', NULL),
(126, 34, '-22.072', 2, 7, NULL, NULL, NULL, 4, '2020-04-21 15:40:01', NULL),
(127, 3, '-0.074', 2, 7, NULL, NULL, NULL, 4, '2020-04-21 15:40:01', NULL),
(128, 57, '-22.044', 2, 7, NULL, NULL, NULL, 4, '2020-04-21 15:40:01', NULL),
(129, 22, '-24.800', 2, 7, NULL, NULL, NULL, 4, '2020-04-21 15:40:01', NULL),
(130, 8, '-0.110', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(131, 12, '-0.044', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(132, 13, '-0.165', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(133, 32, '-130.900', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(134, 3, '-0.550', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(135, 49, '-130.952', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(136, 26, '-55.000', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(137, 11, '-0.028', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(138, 9, '-0.055', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(139, 7, '-0.440', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(140, 4, '-0.165', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(141, 16, '-0.715', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(142, 30, '-39.286', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(143, 15, '-0.550', 2, 8, NULL, NULL, NULL, 4, '2020-04-21 15:41:30', NULL),
(144, 12, '-0.051', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(145, 13, '-0.192', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(146, 32, '-65.920', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(147, 3, '-0.640', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(148, 44, '-65.641', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(149, 26, '-42.667', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(150, 11, '-0.032', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(151, 9, '-0.064', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(152, 4, '-0.320', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(153, 16, '-0.832', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(154, 29, '-42.667', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(155, 15, '-0.640', 2, 9, NULL, NULL, NULL, 4, '2020-04-21 15:43:27', NULL),
(156, 34, '-23.407', 2, 10, NULL, NULL, NULL, 4, '2020-04-21 15:44:42', NULL),
(157, 3, '-0.079', 2, 10, NULL, NULL, NULL, 4, '2020-04-21 15:44:43', NULL),
(158, 57, '-23.378', 2, 10, NULL, NULL, NULL, 4, '2020-04-21 15:44:43', NULL),
(159, 22, '-26.300', 2, 10, NULL, NULL, NULL, 4, '2020-04-21 15:44:43', NULL),
(160, 33, '-3.696', 2, 11, NULL, NULL, NULL, 4, '2020-04-21 15:50:56', NULL),
(161, 3, '-0.025', 2, 11, NULL, NULL, NULL, 4, '2020-04-21 15:50:56', NULL),
(162, 54, '-3.733', 2, 11, NULL, NULL, NULL, 4, '2020-04-21 15:50:56', NULL),
(163, 22, '-8.400', 2, 11, NULL, NULL, NULL, 4, '2020-04-21 15:50:56', NULL),
(164, 27, '-4.200', 2, 11, NULL, NULL, NULL, 4, '2020-04-21 15:50:56', NULL),
(165, 8, '-0.210', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(166, 12, '-0.084', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(167, 13, '-0.315', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(168, 32, '-249.900', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(169, 3, '-1.050', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(170, 49, '-250.000', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(171, 26, '-105.000', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(172, 11, '-0.053', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(173, 9, '-0.105', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(174, 7, '-0.840', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(175, 4, '-0.315', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(176, 16, '-1.365', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(177, 30, '-75.000', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(178, 15, '-1.050', 2, 12, NULL, NULL, NULL, 4, '2020-04-21 15:53:22', NULL),
(179, 12, '-0.018', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(180, 13, '-0.069', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(181, 32, '-23.690', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(182, 3, '-0.230', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(183, 44, '-23.590', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(184, 26, '-15.333', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(185, 11, '-0.012', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(186, 9, '-0.023', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(187, 4, '-0.115', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(188, 16, '-0.299', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(189, 29, '-15.333', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(190, 15, '-0.230', 2, 13, NULL, NULL, NULL, 4, '2020-04-21 15:55:22', NULL),
(191, 34, '-24.297', 2, 14, NULL, NULL, NULL, 4, '2020-04-21 16:06:30', NULL),
(192, 3, '-0.082', 2, 14, NULL, NULL, NULL, 4, '2020-04-21 16:06:30', NULL),
(193, 57, '-24.267', 2, 14, NULL, NULL, NULL, 4, '2020-04-21 16:06:30', NULL),
(194, 22, '-27.300', 2, 14, NULL, NULL, NULL, 4, '2020-04-21 16:06:30', NULL),
(195, 33, '-5.060', 2, 15, NULL, NULL, NULL, 4, '2020-04-21 16:08:01', NULL),
(196, 3, '-0.035', 2, 15, NULL, NULL, NULL, 4, '2020-04-21 16:08:01', NULL),
(197, 54, '-5.111', 2, 15, NULL, NULL, NULL, 4, '2020-04-21 16:08:01', NULL),
(198, 22, '-11.500', 2, 15, NULL, NULL, NULL, 4, '2020-04-21 16:08:01', NULL),
(199, 27, '-5.750', 2, 15, NULL, NULL, NULL, 4, '2020-04-21 16:08:01', NULL),
(200, 8, '-0.148', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(201, 12, '-0.059', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(202, 13, '-0.222', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(203, 32, '-176.120', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(204, 3, '-0.740', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(205, 49, '-176.190', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(206, 26, '-74.000', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(207, 11, '-0.037', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(208, 9, '-0.074', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(209, 7, '-0.592', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(210, 4, '-0.222', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(211, 16, '-0.962', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(212, 30, '-52.857', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:06', NULL),
(213, 15, '-0.740', 2, 16, NULL, NULL, NULL, 4, '2020-04-21 16:09:07', NULL),
(214, 8, '-0.106', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:49', NULL),
(215, 12, '-0.042', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:49', NULL),
(216, 13, '-0.159', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:49', NULL),
(217, 32, '-108.650', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:50', NULL),
(218, 3, '-0.530', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:50', NULL),
(219, 40, '-108.718', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:50', NULL),
(220, 11, '-0.027', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:50', NULL),
(221, 9, '-0.053', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:50', NULL),
(222, 7, '-0.424', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:50', NULL),
(223, 4, '-0.159', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:50', NULL),
(224, 16, '-0.689', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:50', NULL),
(225, 29, '-35.334', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:50', NULL),
(226, 15, '-0.530', 2, 17, NULL, NULL, NULL, 4, '2020-04-21 16:10:50', NULL),
(227, 8, '-0.084', 2, 18, NULL, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(228, 34, '-70.140', 2, 18, NULL, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(229, 3, '-0.126', 2, 18, NULL, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(230, 52, '-70.000', 2, 18, NULL, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(231, 25, '-28.000', 2, 18, NULL, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(232, 9, '-0.084', 2, 18, NULL, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(233, 23, '-16.800', 2, 18, NULL, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(234, 4, '-0.126', 2, 18, NULL, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(235, 28, '-21.000', 2, 18, NULL, NULL, NULL, 4, '2020-04-21 16:12:47', NULL),
(236, 33, '-4.928', 2, 19, NULL, NULL, NULL, 4, '2020-04-21 16:15:32', NULL),
(237, 3, '-0.034', 2, 19, NULL, NULL, NULL, 4, '2020-04-21 16:15:32', NULL),
(238, 54, '-4.978', 2, 19, NULL, NULL, NULL, 4, '2020-04-21 16:15:32', NULL),
(239, 22, '-11.200', 2, 19, NULL, NULL, NULL, 4, '2020-04-21 16:15:32', NULL),
(240, 27, '-5.600', 2, 19, NULL, NULL, NULL, 4, '2020-04-21 16:15:32', NULL),
(241, 8, '-0.108', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(242, 12, '-0.043', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(243, 13, '-0.162', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(244, 32, '-128.520', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(245, 3, '-0.540', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(246, 49, '-128.571', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(247, 26, '-54.000', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(248, 11, '-0.027', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(249, 9, '-0.054', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(250, 7, '-0.432', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(251, 4, '-0.162', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(252, 16, '-0.702', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(253, 30, '-38.572', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(254, 15, '-0.540', 2, 20, NULL, NULL, NULL, 4, '2020-04-21 16:16:32', NULL),
(255, 12, '-0.030', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:13', NULL),
(256, 13, '-0.114', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:13', NULL),
(257, 32, '-39.140', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:13', NULL),
(258, 3, '-0.380', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:13', NULL),
(259, 44, '-38.974', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:13', NULL),
(260, 26, '-25.333', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:13', NULL),
(261, 11, '-0.019', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:14', NULL),
(262, 9, '-0.038', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:14', NULL),
(263, 4, '-0.190', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:14', NULL),
(264, 16, '-0.494', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:14', NULL),
(265, 29, '-25.333', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:14', NULL),
(266, 15, '-0.380', 2, 21, NULL, NULL, NULL, 4, '2020-04-21 16:17:14', NULL),
(267, 8, '-0.092', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(268, 12, '-0.037', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(269, 13, '-0.138', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(270, 32, '-47.380', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(271, 3, '-0.460', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(272, 41, '-47.179', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(273, 11, '-0.023', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(274, 9, '-0.046', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(275, 6, '-0.069', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(276, 4, '-0.069', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(277, 16, '-0.598', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(278, 29, '-30.667', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(279, 15, '-0.460', 2, 22, NULL, NULL, NULL, 4, '2020-04-21 16:18:05', NULL),
(280, 8, '-0.104', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(281, 12, '-0.042', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(282, 13, '-0.156', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(283, 32, '-106.600', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(284, 3, '-0.520', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(285, 40, '-106.667', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(286, 11, '-0.026', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(287, 9, '-0.052', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(288, 7, '-0.416', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(289, 4, '-0.156', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(290, 16, '-0.676', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(291, 29, '-34.667', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(292, 15, '-0.520', 2, 23, NULL, NULL, NULL, 4, '2020-04-21 16:20:04', NULL),
(293, 33, '-4.312', 2, 24, NULL, NULL, NULL, 4, '2020-04-21 16:20:46', NULL),
(294, 3, '-0.029', 2, 24, NULL, NULL, NULL, 4, '2020-04-21 16:20:46', NULL),
(295, 54, '-4.356', 2, 24, NULL, NULL, NULL, 4, '2020-04-21 16:20:46', NULL),
(296, 22, '-9.800', 2, 24, NULL, NULL, NULL, 4, '2020-04-21 16:20:46', NULL),
(297, 27, '-4.900', 2, 24, NULL, NULL, NULL, 4, '2020-04-21 16:20:46', NULL),
(298, 34, '-19.847', 2, 25, NULL, NULL, NULL, 4, '2020-04-21 16:21:44', NULL),
(299, 3, '-0.067', 2, 25, NULL, NULL, NULL, 4, '2020-04-21 16:21:44', NULL),
(300, 57, '-19.822', 2, 25, NULL, NULL, NULL, 4, '2020-04-21 16:21:44', NULL),
(301, 22, '-22.300', 2, 25, NULL, NULL, NULL, 4, '2020-04-21 16:21:44', NULL),
(302, 8, '-0.104', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(303, 12, '-0.042', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(304, 13, '-0.156', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(305, 32, '-123.760', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(306, 3, '-0.520', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(307, 49, '-123.809', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(308, 26, '-52.000', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(309, 11, '-0.026', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(310, 9, '-0.052', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(311, 7, '-0.416', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(312, 4, '-0.156', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(313, 16, '-0.676', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(314, 30, '-37.143', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(315, 15, '-0.520', 2, 26, NULL, NULL, NULL, 4, '2020-04-21 16:24:38', NULL),
(316, 12, '-0.028', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(317, 13, '-0.103', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(318, 32, '-35.432', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(319, 3, '-0.344', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(320, 44, '-35.282', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(321, 26, '-22.933', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(322, 11, '-0.017', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(323, 9, '-0.034', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(324, 4, '-0.172', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(325, 16, '-0.447', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(326, 29, '-22.933', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(327, 15, '-0.344', 2, 27, NULL, NULL, NULL, 4, '2020-04-21 16:25:47', NULL),
(328, 8, '-0.070', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(329, 12, '-0.028', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(330, 13, '-0.106', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(331, 32, '-36.256', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(332, 3, '-0.352', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(333, 41, '-36.103', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(334, 11, '-0.018', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(335, 9, '-0.035', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(336, 6, '-0.053', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(337, 4, '-0.053', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(338, 16, '-0.458', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(339, 29, '-23.467', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(340, 15, '-0.352', 2, 28, NULL, NULL, NULL, 4, '2020-04-21 16:29:51', NULL),
(341, 8, '-0.071', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:41', NULL),
(342, 12, '-0.028', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:41', NULL),
(343, 13, '-0.106', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:41', NULL),
(344, 32, '-72.365', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:41', NULL),
(345, 3, '-0.353', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:41', NULL),
(346, 40, '-72.410', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:42', NULL),
(347, 11, '-0.018', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:42', NULL),
(348, 9, '-0.035', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:42', NULL),
(349, 7, '-0.282', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:42', NULL),
(350, 4, '-0.106', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:42', NULL),
(351, 16, '-0.459', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:42', NULL),
(352, 29, '-23.533', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:42', NULL),
(353, 15, '-0.353', 2, 29, NULL, NULL, NULL, 4, '2020-04-21 16:30:42', NULL),
(354, 33, '-5.896', 2, 30, NULL, NULL, NULL, 4, '2020-04-21 16:31:42', NULL),
(355, 3, '-0.040', 2, 30, NULL, NULL, NULL, 4, '2020-04-21 16:31:42', NULL),
(356, 54, '-5.955', 2, 30, NULL, NULL, NULL, 4, '2020-04-21 16:31:42', NULL),
(357, 22, '-13.400', 2, 30, NULL, NULL, NULL, 4, '2020-04-21 16:31:42', NULL),
(358, 27, '-6.700', 2, 30, NULL, NULL, NULL, 4, '2020-04-21 16:31:42', NULL),
(359, 8, '-0.102', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(360, 12, '-0.041', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(361, 13, '-0.153', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(362, 32, '-121.380', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(363, 3, '-0.510', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(364, 49, '-121.428', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(365, 26, '-51.000', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(366, 11, '-0.026', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(367, 9, '-0.051', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(368, 7, '-0.408', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(369, 4, '-0.153', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(370, 16, '-0.663', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(371, 30, '-36.429', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(372, 15, '-0.510', 2, 31, NULL, NULL, NULL, 4, '2020-04-21 16:32:44', NULL),
(373, 8, '-0.088', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(374, 12, '-0.035', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(375, 13, '-0.132', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(376, 32, '-45.320', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(377, 3, '-0.440', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(378, 41, '-45.128', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(379, 11, '-0.022', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(380, 9, '-0.044', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(381, 6, '-0.066', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(382, 4, '-0.066', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(383, 16, '-0.572', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(384, 29, '-29.333', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(385, 15, '-0.440', 2, 32, NULL, NULL, NULL, 4, '2020-04-21 16:34:14', NULL),
(386, 8, '-0.082', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(387, 12, '-0.033', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(388, 13, '-0.123', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(389, 32, '-84.050', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(390, 3, '-0.410', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(391, 40, '-84.102', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(392, 11, '-0.021', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(393, 9, '-0.041', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(394, 7, '-0.328', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(395, 4, '-0.123', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(396, 16, '-0.533', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(397, 29, '-27.333', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(398, 15, '-0.410', 2, 33, NULL, NULL, NULL, 4, '2020-04-21 16:35:18', NULL),
(399, 8, '-0.263', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:46', NULL),
(400, 12, '-0.084', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:46', NULL),
(401, 13, '-0.315', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:46', NULL),
(402, 32, '-108.150', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:46', NULL),
(403, 38, '-0.630', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:46', NULL),
(404, 36, '-0.053', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(405, 45, '-107.692', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(406, 26, '-70.000', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(407, 20, '-0.032', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(408, 21, '-0.016', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(409, 11, '-0.053', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(410, 9, '-0.158', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(411, 6, '-0.158', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(412, 4, '-0.263', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(413, 16, '-2.520', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(414, 29, '-70.000', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(415, 15, '-1.050', 2, 34, NULL, NULL, NULL, 4, '2020-04-21 16:38:47', NULL),
(416, 34, '-24.048', 2, 35, NULL, NULL, NULL, 4, '2020-04-21 16:39:45', NULL),
(417, 3, '-0.043', 2, 35, NULL, NULL, NULL, 4, '2020-04-21 16:39:45', NULL),
(418, 50, '-24.000', 2, 35, NULL, NULL, NULL, 4, '2020-04-21 16:39:45', NULL),
(419, 23, '-5.760', 2, 35, NULL, NULL, NULL, 4, '2020-04-21 16:39:45', NULL),
(420, 28, '-7.200', 2, 35, NULL, NULL, NULL, 4, '2020-04-21 16:39:45', NULL),
(421, 34, '24.048', 6, 35, NULL, NULL, NULL, 4, '2020-04-21 16:41:09', NULL),
(422, 3, '0.043', 6, 35, NULL, NULL, NULL, 4, '2020-04-21 16:41:09', NULL),
(423, 50, '24.000', 6, 35, NULL, NULL, NULL, 4, '2020-04-21 16:41:09', NULL),
(424, 23, '5.760', 6, 35, NULL, NULL, NULL, 4, '2020-04-21 16:41:09', NULL),
(425, 28, '7.200', 6, 35, NULL, NULL, NULL, 4, '2020-04-21 16:41:09', NULL),
(428, 34, '-35.237', 2, 36, NULL, NULL, NULL, 4, '2020-04-21 16:42:56', NULL),
(429, 3, '-0.063', 2, 36, NULL, NULL, NULL, 4, '2020-04-21 16:42:56', NULL),
(430, 50, '-35.167', 2, 36, NULL, NULL, NULL, 4, '2020-04-21 16:42:56', NULL),
(431, 23, '-8.440', 2, 36, NULL, NULL, NULL, 4, '2020-04-21 16:42:56', NULL),
(432, 28, '-10.550', 2, 36, NULL, NULL, NULL, 4, '2020-04-21 16:42:56', NULL),
(433, 8, '-0.112', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:27', NULL),
(434, 12, '-0.045', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:27', NULL),
(435, 13, '-0.168', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:27', NULL),
(436, 32, '-133.280', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(437, 3, '-0.560', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(438, 49, '-133.333', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(439, 26, '-56.000', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(440, 11, '-0.028', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(441, 9, '-0.056', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(442, 7, '-0.448', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(443, 4, '-0.168', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(444, 16, '-0.728', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(445, 30, '-40.000', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(446, 15, '-0.560', 2, 37, NULL, NULL, NULL, 4, '2020-04-21 16:44:28', NULL),
(447, 12, '-0.034', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(448, 13, '-0.129', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(449, 32, '-44.290', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(450, 3, '-0.430', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(451, 44, '-44.103', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(452, 26, '-28.667', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(453, 11, '-0.022', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(454, 9, '-0.043', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(455, 4, '-0.215', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(456, 16, '-0.559', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(457, 29, '-28.667', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(458, 15, '-0.430', 2, 38, NULL, NULL, NULL, 4, '2020-04-21 16:46:03', NULL),
(459, 8, '-0.102', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:04', NULL),
(460, 12, '-0.041', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:04', NULL),
(461, 13, '-0.153', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:04', NULL),
(462, 32, '-104.550', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:04', NULL),
(463, 3, '-0.510', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:05', NULL),
(464, 40, '-104.615', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:05', NULL),
(465, 11, '-0.026', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:05', NULL),
(466, 9, '-0.051', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:05', NULL),
(467, 7, '-0.408', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:05', NULL),
(468, 4, '-0.153', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:05', NULL),
(469, 16, '-0.663', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:05', NULL),
(470, 29, '-34.000', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:05', NULL),
(471, 15, '-0.510', 2, 39, NULL, NULL, NULL, 4, '2020-04-21 16:47:05', NULL),
(472, 34, '-24.048', 2, 40, NULL, NULL, NULL, 4, '2020-04-21 16:47:58', NULL),
(473, 3, '-0.043', 2, 40, NULL, NULL, NULL, 4, '2020-04-21 16:47:58', NULL),
(474, 50, '-24.000', 2, 40, NULL, NULL, NULL, 4, '2020-04-21 16:47:58', NULL),
(475, 23, '-5.760', 2, 40, NULL, NULL, NULL, 4, '2020-04-21 16:47:58', NULL),
(476, 28, '-7.200', 2, 40, NULL, NULL, NULL, 4, '2020-04-21 16:47:58', NULL),
(477, 8, '-0.112', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(478, 12, '-0.045', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(479, 13, '-0.168', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(480, 32, '-133.280', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(481, 3, '-0.560', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(482, 49, '-133.333', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(483, 26, '-56.000', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(484, 11, '-0.028', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(485, 9, '-0.056', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(486, 7, '-0.448', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(487, 4, '-0.168', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(488, 16, '-0.728', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(489, 30, '-40.000', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(490, 15, '-0.560', 2, 41, NULL, NULL, NULL, 4, '2020-04-21 16:49:17', NULL),
(491, 12, '-0.034', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(492, 13, '-0.126', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(493, 32, '-43.260', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(494, 3, '-0.420', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(495, 44, '-43.077', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(496, 26, '-28.000', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(497, 11, '-0.021', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(498, 9, '-0.042', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(499, 4, '-0.210', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(500, 16, '-0.546', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(501, 29, '-28.000', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(502, 15, '-0.420', 2, 42, NULL, NULL, NULL, 4, '2020-04-21 16:50:24', NULL),
(503, 8, '-0.104', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(504, 12, '-0.042', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(505, 13, '-0.156', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(506, 32, '-106.600', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(507, 3, '-0.520', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(508, 40, '-106.667', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(509, 11, '-0.026', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(510, 9, '-0.052', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(511, 7, '-0.416', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(512, 4, '-0.156', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(513, 16, '-0.676', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(514, 29, '-34.667', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(515, 15, '-0.520', 2, 43, NULL, NULL, NULL, 4, '2020-04-21 16:50:57', NULL),
(516, 33, '-2.640', 2, 44, NULL, NULL, NULL, 4, '2020-04-21 16:52:47', NULL),
(517, 3, '-0.018', 2, 44, NULL, NULL, NULL, 4, '2020-04-21 16:52:47', NULL),
(518, 54, '-2.667', 2, 44, NULL, NULL, NULL, 4, '2020-04-21 16:52:47', NULL),
(519, 22, '-6.000', 2, 44, NULL, NULL, NULL, 4, '2020-04-21 16:52:47', NULL),
(520, 27, '-3.000', 2, 44, NULL, NULL, NULL, 4, '2020-04-21 16:52:48', NULL),
(521, 12, '-0.009', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(522, 13, '-0.033', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(523, 32, '-11.330', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(524, 3, '-0.110', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(525, 44, '-11.282', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(526, 26, '-7.333', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(527, 11, '-0.006', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(528, 9, '-0.011', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(529, 4, '-0.055', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(530, 16, '-0.143', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(531, 29, '-7.333', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(532, 15, '-0.110', 2, 45, NULL, NULL, NULL, 4, '2020-04-21 16:53:31', NULL),
(533, 34, '-13.172', 2, 46, NULL, NULL, NULL, 4, '2020-04-21 16:55:16', NULL),
(534, 3, '-0.044', 2, 46, NULL, NULL, NULL, 4, '2020-04-21 16:55:16', NULL),
(535, 57, '-13.156', 2, 46, NULL, NULL, NULL, 4, '2020-04-21 16:55:16', NULL),
(536, 22, '-14.800', 2, 46, NULL, NULL, NULL, 4, '2020-04-21 16:55:16', NULL),
(537, 8, '-0.112', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(538, 12, '-0.045', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(539, 13, '-0.168', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(540, 32, '-133.280', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(541, 3, '-0.560', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(542, 49, '-133.333', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(543, 26, '-56.000', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(544, 11, '-0.028', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(545, 9, '-0.056', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(546, 7, '-0.448', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(547, 4, '-0.168', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(548, 16, '-0.728', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(549, 30, '-40.000', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(550, 15, '-0.560', 2, 47, NULL, NULL, NULL, 4, '2020-04-21 17:23:33', NULL),
(551, 12, '-0.044', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(552, 13, '-0.165', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(553, 32, '-56.650', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(554, 3, '-0.550', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(555, 44, '-56.410', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(556, 26, '-36.667', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(557, 11, '-0.028', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(558, 9, '-0.055', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(559, 4, '-0.275', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(560, 16, '-0.715', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(561, 29, '-36.667', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(562, 15, '-0.550', 2, 48, NULL, NULL, NULL, 4, '2020-04-21 17:24:19', NULL),
(563, 8, '-0.108', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(564, 12, '-0.043', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(565, 13, '-0.162', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(566, 32, '-55.620', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(567, 3, '-0.540', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(568, 41, '-55.385', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(569, 11, '-0.027', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(570, 9, '-0.054', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(571, 6, '-0.081', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(572, 4, '-0.081', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(573, 16, '-0.702', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(574, 29, '-36.000', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(575, 15, '-0.540', 2, 49, NULL, NULL, NULL, 4, '2020-04-21 17:25:07', NULL),
(576, 34, '-26.720', 2, 50, NULL, NULL, NULL, 4, '2020-04-21 17:25:53', NULL),
(577, 3, '-0.048', 2, 50, NULL, NULL, NULL, 4, '2020-04-21 17:25:53', NULL),
(578, 50, '-26.667', 2, 50, NULL, NULL, NULL, 4, '2020-04-21 17:25:53', NULL),
(579, 23, '-6.400', 2, 50, NULL, NULL, NULL, 4, '2020-04-21 17:25:53', NULL),
(580, 28, '-8.000', 2, 50, NULL, NULL, NULL, 4, '2020-04-21 17:25:53', NULL),
(581, 33, '-4.840', 2, 51, NULL, NULL, NULL, 4, '2020-04-21 17:28:28', NULL),
(582, 3, '-0.033', 2, 51, NULL, NULL, NULL, 4, '2020-04-21 17:28:28', NULL),
(583, 54, '-4.889', 2, 51, NULL, NULL, NULL, 4, '2020-04-21 17:28:28', NULL),
(584, 22, '-11.000', 2, 51, NULL, NULL, NULL, 4, '2020-04-21 17:28:28', NULL),
(585, 27, '-5.500', 2, 51, NULL, NULL, NULL, 4, '2020-04-21 17:28:28', NULL),
(586, 12, '-0.041', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(587, 13, '-0.153', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(588, 32, '-52.530', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(589, 3, '-0.510', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(590, 44, '-52.308', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(591, 26, '-34.000', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(592, 11, '-0.026', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(593, 9, '-0.051', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(594, 4, '-0.255', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(595, 16, '-0.663', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(596, 29, '-34.000', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(597, 15, '-0.510', 2, 52, NULL, NULL, NULL, 4, '2020-04-21 17:29:58', NULL),
(598, 8, '-0.102', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(599, 12, '-0.041', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(600, 13, '-0.153', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(601, 32, '-52.530', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(602, 3, '-0.510', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(603, 41, '-52.308', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(604, 11, '-0.026', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(605, 9, '-0.051', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(606, 6, '-0.077', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(607, 4, '-0.077', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(608, 16, '-0.663', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(609, 29, '-34.000', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(610, 15, '-0.510', 2, 53, NULL, NULL, NULL, 4, '2020-04-21 17:30:43', NULL),
(611, 8, '-0.102', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(612, 12, '-0.041', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(613, 13, '-0.153', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(614, 32, '-104.550', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(615, 3, '-0.510', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(616, 40, '-104.615', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(617, 11, '-0.026', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(618, 9, '-0.051', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(619, 7, '-0.408', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(620, 4, '-0.153', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(621, 16, '-0.663', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(622, 29, '-34.000', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(623, 15, '-0.510', 2, 54, NULL, NULL, NULL, 4, '2020-04-21 17:31:40', NULL),
(624, 34, '-10.146', 2, 55, NULL, NULL, NULL, 4, '2020-04-21 17:32:35', NULL),
(625, 3, '-0.034', 2, 55, NULL, NULL, NULL, 4, '2020-04-21 17:32:35', NULL),
(626, 57, '-10.133', 2, 55, NULL, NULL, NULL, 4, '2020-04-21 17:32:35', NULL),
(627, 22, '-11.400', 2, 55, NULL, NULL, NULL, 4, '2020-04-21 17:32:35', NULL),
(628, 8, '-0.172', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(629, 12, '-0.069', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(630, 13, '-0.258', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(631, 32, '-204.680', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(632, 3, '-0.860', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(633, 49, '-204.762', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(634, 26, '-86.000', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(635, 11, '-0.043', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(636, 9, '-0.086', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(637, 7, '-0.688', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(638, 4, '-0.258', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL);
INSERT INTO `insumos_mov` (`id_movimiento`, `id_insumo`, `cantidad`, `id_cuenta`, `id_orden`, `id_compra`, `id_orden_fin`, `id_ajuste_stock`, `id_usuario`, `fecha_movimiento`, `descripcion`) VALUES
(639, 16, '-1.118', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(640, 30, '-61.429', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(641, 15, '-0.860', 2, 56, NULL, NULL, NULL, 4, '2020-04-21 17:33:29', NULL),
(642, 8, '-0.030', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:18', NULL),
(643, 12, '-0.012', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:18', NULL),
(644, 13, '-0.045', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:18', NULL),
(645, 32, '-30.750', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:18', NULL),
(646, 3, '-0.150', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:18', NULL),
(647, 40, '-30.769', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:18', NULL),
(648, 11, '-0.008', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:18', NULL),
(649, 9, '-0.015', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:18', NULL),
(650, 7, '-0.120', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:18', NULL),
(651, 4, '-0.045', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:19', NULL),
(652, 16, '-0.195', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:19', NULL),
(653, 29, '-10.000', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:19', NULL),
(654, 15, '-0.150', 2, 57, NULL, NULL, NULL, 4, '2020-04-21 17:34:19', NULL),
(655, 34, '-26.611', 2, 58, NULL, NULL, NULL, 4, '2020-04-21 17:35:02', NULL),
(656, 3, '-0.090', 2, 58, NULL, NULL, NULL, 4, '2020-04-21 17:35:02', NULL),
(657, 57, '-26.578', 2, 58, NULL, NULL, NULL, 4, '2020-04-21 17:35:02', NULL),
(658, 22, '-29.900', 2, 58, NULL, NULL, NULL, 4, '2020-04-21 17:35:02', NULL),
(659, 8, '-0.106', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(660, 12, '-0.042', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(661, 13, '-0.159', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(662, 32, '-126.140', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(663, 3, '-0.530', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(664, 49, '-126.190', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(665, 26, '-53.000', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(666, 11, '-0.027', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(667, 9, '-0.053', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(668, 7, '-0.424', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(669, 4, '-0.159', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(670, 16, '-0.689', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(671, 30, '-37.857', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(672, 15, '-0.530', 2, 59, NULL, NULL, NULL, 4, '2020-04-21 17:36:41', NULL),
(673, 12, '-0.034', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(674, 13, '-0.129', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(675, 32, '-44.290', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(676, 3, '-0.430', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(677, 44, '-44.103', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(678, 26, '-28.667', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(679, 11, '-0.022', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(680, 9, '-0.043', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(681, 4, '-0.215', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(682, 16, '-0.559', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(683, 29, '-28.667', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(684, 15, '-0.430', 2, 60, NULL, NULL, NULL, 4, '2020-04-21 17:39:57', NULL),
(685, 8, '-0.102', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(686, 12, '-0.041', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(687, 13, '-0.153', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(688, 32, '-104.550', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(689, 3, '-0.510', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(690, 40, '-104.615', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(691, 11, '-0.026', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(692, 9, '-0.051', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(693, 7, '-0.408', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(694, 4, '-0.153', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(695, 16, '-0.663', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(696, 29, '-34.000', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(697, 15, '-0.510', 2, 61, NULL, NULL, NULL, 4, '2020-04-21 17:40:57', NULL),
(698, 8, '-0.080', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(699, 12, '-0.032', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(700, 13, '-0.120', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(701, 32, '-41.200', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(702, 3, '-0.400', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(703, 41, '-41.026', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(704, 11, '-0.020', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(705, 9, '-0.040', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(706, 6, '-0.060', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(707, 4, '-0.060', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(708, 16, '-0.520', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(709, 29, '-26.667', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(710, 15, '-0.400', 2, 62, NULL, NULL, NULL, 4, '2020-04-21 17:50:39', NULL),
(711, 8, '-0.150', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(712, 12, '-0.060', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(713, 13, '-0.225', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(714, 32, '-178.500', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(715, 3, '-0.750', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(716, 49, '-178.571', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(717, 26, '-75.000', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(718, 11, '-0.038', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(719, 9, '-0.075', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(720, 7, '-0.600', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(721, 4, '-0.225', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(722, 16, '-0.975', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(723, 30, '-53.572', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(724, 15, '-0.750', 2, 63, NULL, NULL, NULL, 2, '2020-04-22 11:19:45', NULL),
(725, 8, '0.084', 6, 18, NULL, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(726, 34, '70.140', 6, 18, NULL, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(727, 3, '0.126', 6, 18, NULL, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(728, 52, '70.000', 6, 18, NULL, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(729, 25, '28.000', 6, 18, NULL, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(730, 9, '0.084', 6, 18, NULL, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(731, 23, '16.800', 6, 18, NULL, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(732, 4, '0.126', 6, 18, NULL, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(733, 28, '21.000', 6, 18, NULL, NULL, NULL, 4, '2020-04-23 15:40:44', NULL),
(740, 8, '-0.084', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:54', NULL),
(741, 12, '-0.034', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(742, 13, '-0.126', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(743, 32, '-43.260', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(744, 3, '-0.420', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(745, 41, '-43.077', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(746, 11, '-0.021', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(747, 9, '-0.042', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(748, 6, '-0.063', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(749, 4, '-0.063', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(750, 16, '-0.546', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(751, 29, '-28.000', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(752, 15, '-0.420', 2, 64, NULL, NULL, NULL, 4, '2020-04-23 15:44:55', NULL),
(753, 1, '-99996.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(754, 2, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(755, 3, '-99972.562', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(756, 4, '-99991.912', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(757, 5, '-99999.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(758, 6, '-99919.373', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(759, 7, '-99983.536', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(760, 8, '-99994.617', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(761, 9, '-99997.368', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(762, 10, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(763, 11, '-99998.699', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(764, 12, '-99998.235', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(765, 13, '-99993.462', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(766, 14, '-99997.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(767, 15, '-99978.207', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(768, 16, '-99969.983', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(769, 17, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(770, 18, '-99999.100', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(771, 19, '-99999.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(772, 20, '-99997.968', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(773, 21, '-99997.984', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(774, 22, '-99760.200', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(775, 23, '-99973.200', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(776, 24, '-99750.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(777, 25, '-99750.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(778, 26, '-98354.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(779, 27, '-99958.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(780, 28, '-99966.500', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(781, 29, '-98864.732', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(782, 30, '-98086.139', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(783, 31, '-99901.364', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(784, 32, '-93668.055', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(785, 33, '-99831.480', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(786, 34, '-98748.558', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(787, 35, '-99999.200', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(788, 36, '-99998.947', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(789, 37, '-99975.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(790, 38, '-99974.370', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(791, 39, '-99959.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(792, 40, '-98712.822', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(793, 41, '-99580.794', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(794, 42, '-99360.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(795, 43, '-99810.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(796, 44, '-98965.230', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:06', 'Ajuste de inventario-Carga Inicial'),
(797, 45, '-99892.308', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(798, 46, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(799, 47, '-98925.030', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(800, 48, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(801, 49, '-97519.338', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(802, 50, '-99188.333', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(803, 51, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(804, 52, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(805, 53, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(806, 54, '-99273.111', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(807, 55, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(808, 56, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(809, 57, '-99210.622', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(810, 58, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(811, 59, '-99650.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(812, 60, '-100000.000', 8, NULL, NULL, NULL, NULL, 1, '2020-04-29 00:37:07', 'Ajuste de inventario-Carga Inicial'),
(818, 13, '-1.000', 8, NULL, NULL, NULL, NULL, 4, '2020-04-29 16:13:02', 'SE ADICIONA 1 KG DE AZUCAR NO INCLUIDO EN STO'),
(824, 8, '-0.200', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(825, 12, '-0.080', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(826, 13, '-0.300', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(827, 32, '-238.000', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(828, 3, '-1.000', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(829, 49, '-238.095', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(830, 26, '-100.000', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(831, 11, '-0.050', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(832, 9, '-0.100', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(833, 7, '-0.800', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(834, 4, '-0.300', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(835, 16, '-1.300', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(836, 30, '-71.429', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(837, 15, '-1.000', 2, 65, NULL, NULL, NULL, 4, '2020-04-29 16:33:22', NULL),
(838, 8, '-0.210', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:19', NULL),
(839, 12, '-0.084', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:19', NULL),
(840, 13, '-0.315', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:19', NULL),
(841, 32, '-215.250', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:19', NULL),
(842, 3, '-1.050', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:19', NULL),
(843, 40, '-215.384', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:19', NULL),
(844, 11, '-0.053', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:19', NULL),
(845, 9, '-0.105', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:19', NULL),
(846, 7, '-0.840', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:20', NULL),
(847, 4, '-0.315', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:20', NULL),
(848, 16, '-1.365', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:20', NULL),
(849, 29, '-70.000', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:20', NULL),
(850, 15, '-1.050', 2, 66, NULL, NULL, NULL, 4, '2020-04-29 16:38:20', NULL),
(853, 33, '-7.216', 2, 67, NULL, NULL, NULL, 4, '2020-04-29 18:11:43', NULL),
(854, 3, '-0.049', 2, 67, NULL, NULL, NULL, 4, '2020-04-29 18:11:43', NULL),
(855, 54, '-7.289', 2, 67, NULL, NULL, NULL, 4, '2020-04-29 18:11:43', NULL),
(856, 22, '-16.400', 2, 67, NULL, NULL, NULL, 4, '2020-04-29 18:11:43', NULL),
(857, 27, '-8.200', 2, 67, NULL, NULL, NULL, 4, '2020-04-29 18:11:43', NULL),
(860, 34, '-15.865', 2, 68, NULL, NULL, NULL, 4, '2020-04-29 18:14:02', NULL),
(861, 3, '-0.029', 2, 68, NULL, NULL, NULL, 4, '2020-04-29 18:14:02', NULL),
(862, 50, '-15.833', 2, 68, NULL, NULL, NULL, 4, '2020-04-29 18:14:02', NULL),
(863, 23, '-3.800', 2, 68, NULL, NULL, NULL, 4, '2020-04-29 18:14:02', NULL),
(864, 28, '-4.750', 2, 68, NULL, NULL, NULL, 4, '2020-04-29 18:14:02', NULL),
(870, 8, '-0.220', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(871, 12, '-0.088', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(872, 13, '-0.330', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(873, 1, '-5.500', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(874, 49, '-261.800', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(875, 26, '-110.000', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(876, 11, '-0.055', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(877, 9, '-0.110', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(878, 7, '-0.880', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(879, 4, '-0.330', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(880, 30, '-78.572', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(881, 14, '-1.100', 2, 69, NULL, NULL, NULL, 4, '2020-05-05 08:44:10', NULL),
(882, 12, '-0.080', 2, 70, NULL, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(883, 13, '-0.300', 2, 70, NULL, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(884, 32, '-103.000', 2, 70, NULL, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(885, 1, '-5.000', 2, 70, NULL, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(886, 44, '-102.564', 2, 70, NULL, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(887, 26, '-66.667', 2, 70, NULL, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(888, 11, '-0.050', 2, 70, NULL, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(889, 9, '-0.100', 2, 70, NULL, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(890, 4, '-0.500', 2, 70, NULL, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(891, 29, '-66.667', 2, 70, NULL, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(892, 14, '-1.000', 2, 70, NULL, NULL, NULL, 4, '2020-05-05 17:04:04', NULL),
(893, 33, '-5.720', 2, 71, NULL, NULL, NULL, 4, '2020-05-05 21:08:57', NULL),
(894, 3, '-0.039', 2, 71, NULL, NULL, NULL, 4, '2020-05-05 21:08:57', NULL),
(895, 54, '-5.778', 2, 71, NULL, NULL, NULL, 4, '2020-05-05 21:08:57', NULL),
(896, 22, '-13.000', 2, 71, NULL, NULL, NULL, 4, '2020-05-05 21:08:57', NULL),
(897, 27, '-6.500', 2, 71, NULL, NULL, NULL, 4, '2020-05-05 21:08:57', NULL),
(899, 34, '-26.386', 2, 72, NULL, NULL, NULL, 4, '2020-05-05 21:11:54', NULL),
(900, 3, '-0.047', 2, 72, NULL, NULL, NULL, 4, '2020-05-05 21:11:54', NULL),
(901, 50, '-26.333', 2, 72, NULL, NULL, NULL, 4, '2020-05-05 21:11:54', NULL),
(902, 23, '-6.320', 2, 72, NULL, NULL, NULL, 4, '2020-05-05 21:11:54', NULL),
(903, 28, '-7.900', 2, 72, NULL, NULL, NULL, 4, '2020-05-05 21:11:54', NULL),
(906, 34, '-32.231', 2, 73, NULL, NULL, NULL, 4, '2020-05-12 14:23:11', NULL),
(907, 3, '-0.058', 2, 73, NULL, NULL, NULL, 4, '2020-05-12 14:23:11', NULL),
(908, 50, '-32.167', 2, 73, NULL, NULL, NULL, 4, '2020-05-12 14:23:11', NULL),
(909, 23, '-7.720', 2, 73, NULL, NULL, NULL, 4, '2020-05-12 14:23:11', NULL),
(910, 28, '-9.650', 2, 73, NULL, NULL, NULL, 4, '2020-05-12 14:23:11', NULL),
(911, 33, '-6.160', 2, 74, NULL, NULL, NULL, 4, '2020-05-12 14:25:46', NULL),
(912, 3, '-0.042', 2, 74, NULL, NULL, NULL, 4, '2020-05-12 14:25:46', NULL),
(913, 54, '-6.222', 2, 74, NULL, NULL, NULL, 4, '2020-05-12 14:25:46', NULL),
(914, 22, '-14.000', 2, 74, NULL, NULL, NULL, 4, '2020-05-12 14:25:46', NULL),
(915, 27, '-7.000', 2, 74, NULL, NULL, NULL, 4, '2020-05-12 14:25:46', NULL),
(918, 8, '-0.200', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(919, 12, '-0.080', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(920, 13, '-0.300', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(921, 1, '-5.000', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(922, 49, '-238.000', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(923, 26, '-100.000', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(924, 11, '-0.050', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(925, 9, '-0.100', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(926, 7, '-0.800', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(927, 4, '-0.300', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(928, 30, '-71.429', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(929, 14, '-1.000', 2, 75, NULL, NULL, NULL, 4, '2020-05-12 14:33:05', NULL),
(931, 8, '-0.220', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(932, 12, '-0.088', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(933, 13, '-0.330', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(934, 32, '-113.300', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(935, 1, '-5.500', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(936, 42, '-112.820', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(937, 11, '-0.055', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(938, 9, '-0.110', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(939, 6, '-0.165', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(940, 4, '-0.165', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(941, 29, '-73.334', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(942, 14, '-1.100', 2, 76, NULL, NULL, NULL, 4, '2020-05-12 15:23:02', NULL),
(944, 34, '-88.510', 2, 77, NULL, NULL, NULL, 4, '2020-05-19 15:23:55', NULL),
(945, 3, '-0.159', 2, 77, NULL, NULL, NULL, 4, '2020-05-19 15:23:55', NULL),
(946, 50, '-88.334', 2, 77, NULL, NULL, NULL, 4, '2020-05-19 15:23:55', NULL),
(947, 23, '-21.200', 2, 77, NULL, NULL, NULL, 4, '2020-05-19 15:23:55', NULL),
(948, 28, '-26.500', 2, 77, NULL, NULL, NULL, 4, '2020-05-19 15:23:55', NULL),
(949, 34, '-35.600', 2, 78, NULL, NULL, NULL, 4, '2020-05-19 15:25:43', NULL),
(950, 3, '-0.120', 2, 78, NULL, NULL, NULL, 4, '2020-05-19 15:25:43', NULL),
(951, 57, '-35.556', 2, 78, NULL, NULL, NULL, 4, '2020-05-19 15:25:43', NULL),
(952, 22, '-40.000', 2, 78, NULL, NULL, NULL, 4, '2020-05-19 15:25:43', NULL),
(953, 8, '-0.400', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(954, 12, '-0.160', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(955, 13, '-0.600', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(956, 1, '-10.000', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(957, 49, '-476.000', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(958, 26, '-200.000', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(959, 11, '-0.100', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(960, 9, '-0.200', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(961, 7, '-1.600', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(962, 4, '-0.600', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(963, 30, '-142.858', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(964, 14, '-2.000', 2, 79, NULL, NULL, NULL, 4, '2020-05-19 15:36:47', NULL),
(965, 8, '-0.100', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(966, 12, '-0.040', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(967, 13, '-0.150', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(968, 32, '-102.500', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(969, 1, '-2.500', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(970, 40, '-102.500', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(971, 11, '-0.025', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(972, 9, '-0.050', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(973, 7, '-0.400', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(974, 4, '-0.150', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(975, 29, '-33.334', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(976, 14, '-0.500', 2, 80, NULL, NULL, NULL, 4, '2020-05-19 15:42:17', NULL),
(978, 8, '-0.100', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(979, 12, '-0.040', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(980, 13, '-0.150', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(981, 32, '-51.500', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(982, 1, '-2.500', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(983, 42, '-51.282', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(984, 11, '-0.025', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(985, 9, '-0.050', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(986, 6, '-0.075', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(987, 4, '-0.075', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(988, 29, '-33.334', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(989, 14, '-0.500', 2, 81, NULL, NULL, NULL, 4, '2020-05-20 06:54:05', NULL),
(990, 12, '-0.032', 2, 82, NULL, NULL, NULL, 4, '2020-05-20 07:00:01', NULL),
(991, 13, '-0.120', 2, 82, NULL, NULL, NULL, 4, '2020-05-20 07:00:01', NULL),
(992, 32, '-41.200', 2, 82, NULL, NULL, NULL, 4, '2020-05-20 07:00:01', NULL),
(993, 1, '-2.000', 2, 82, NULL, NULL, NULL, 4, '2020-05-20 07:00:01', NULL),
(994, 44, '-41.026', 2, 82, NULL, NULL, NULL, 4, '2020-05-20 07:00:01', NULL),
(995, 26, '-26.667', 2, 82, NULL, NULL, NULL, 4, '2020-05-20 07:00:01', NULL),
(996, 11, '-0.020', 2, 82, NULL, NULL, NULL, 4, '2020-05-20 07:00:01', NULL),
(997, 9, '-0.040', 2, 82, NULL, NULL, NULL, 4, '2020-05-20 07:00:01', NULL),
(998, 4, '-0.200', 2, 82, NULL, NULL, NULL, 4, '2020-05-20 07:00:01', NULL),
(999, 29, '-26.667', 2, 82, NULL, NULL, NULL, 4, '2020-05-20 07:00:01', NULL),
(1000, 14, '-0.400', 2, 82, NULL, NULL, NULL, 4, '2020-05-20 07:00:01', NULL),
(1003, 33, '-13.420', 2, 83, NULL, NULL, NULL, 4, '2020-05-20 07:08:42', NULL),
(1004, 3, '-0.092', 2, 83, NULL, NULL, NULL, 4, '2020-05-20 07:08:42', NULL),
(1005, 54, '-13.555', 2, 83, NULL, NULL, NULL, 4, '2020-05-20 07:08:43', NULL),
(1006, 22, '-30.500', 2, 83, NULL, NULL, NULL, 4, '2020-05-20 07:08:43', NULL),
(1007, 27, '-15.250', 2, 83, NULL, NULL, NULL, 4, '2020-05-20 07:08:43', NULL),
(1008, 8, '-0.076', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1009, 12, '-0.030', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1010, 13, '-0.114', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1011, 32, '-288.040', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1012, 47, '-287.879', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1013, 26, '-38.000', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1014, 11, '-0.019', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1015, 9, '-0.038', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1016, 7, '-0.190', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1017, 4, '-0.095', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1018, 16, '-0.836', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1019, 31, '-34.545', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1020, 15, '-0.380', 2, 84, NULL, NULL, NULL, 4, '2020-05-20 07:11:41', NULL),
(1021, 61, '0.000', 1, NULL, NULL, NULL, NULL, 1, '2020-05-21 07:17:48', NULL),
(1027, 62, '0.000', 1, NULL, NULL, NULL, NULL, 1, '2020-05-26 14:30:20', NULL),
(1036, 34, '-79.325', 2, 85, NULL, NULL, NULL, 4, '2020-05-27 14:12:01', NULL),
(1037, 3, '-0.143', 2, 85, NULL, NULL, NULL, 4, '2020-05-27 14:12:01', NULL),
(1038, 50, '-79.167', 2, 85, NULL, NULL, NULL, 4, '2020-05-27 14:12:01', NULL),
(1039, 23, '-19.000', 2, 85, NULL, NULL, NULL, 4, '2020-05-27 14:12:01', NULL),
(1040, 28, '-23.750', 2, 85, NULL, NULL, NULL, 4, '2020-05-27 14:12:01', NULL),
(1041, 34, '-27.145', 2, 86, NULL, NULL, NULL, 4, '2020-05-27 14:16:12', NULL),
(1042, 3, '-0.092', 2, 86, NULL, NULL, NULL, 4, '2020-05-27 14:16:12', NULL),
(1043, 57, '-27.111', 2, 86, NULL, NULL, NULL, 4, '2020-05-27 14:16:12', NULL),
(1044, 22, '-30.500', 2, 86, NULL, NULL, NULL, 4, '2020-05-27 14:16:12', NULL),
(1048, 33, '-11.484', 2, 87, NULL, NULL, NULL, 4, '2020-05-27 14:25:33', NULL),
(1049, 3, '-0.078', 2, 87, NULL, NULL, NULL, 4, '2020-05-27 14:25:33', NULL),
(1050, 54, '-11.600', 2, 87, NULL, NULL, NULL, 4, '2020-05-27 14:25:33', NULL),
(1051, 22, '-26.100', 2, 87, NULL, NULL, NULL, 4, '2020-05-27 14:25:33', NULL),
(1052, 27, '-13.050', 2, 87, NULL, NULL, NULL, 4, '2020-05-27 14:25:33', NULL),
(1053, 8, '-0.200', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1054, 12, '-0.080', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1055, 13, '-0.300', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1056, 1, '-5.000', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1057, 49, '-238.000', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1058, 26, '-100.000', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1059, 11, '-0.050', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1060, 9, '-0.100', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1061, 7, '-0.800', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1062, 4, '-0.300', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1063, 30, '-71.429', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1064, 14, '-1.000', 2, 88, NULL, NULL, NULL, 4, '2020-05-27 14:28:20', NULL),
(1065, 8, '-0.140', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1066, 12, '-0.056', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1067, 13, '-0.210', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1068, 32, '-143.500', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1069, 1, '-3.500', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1070, 40, '-143.500', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1071, 11, '-0.035', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1072, 9, '-0.070', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1073, 7, '-0.560', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1074, 4, '-0.210', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1075, 29, '-46.667', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1076, 14, '-0.700', 2, 89, NULL, NULL, NULL, 4, '2020-05-27 14:54:08', NULL),
(1077, 8, '-0.140', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1078, 12, '-0.056', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1079, 13, '-0.210', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1080, 32, '-72.100', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1081, 1, '-3.500', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1082, 42, '-71.795', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1083, 11, '-0.035', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1084, 9, '-0.070', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1085, 6, '-0.105', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1086, 4, '-0.105', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1087, 29, '-46.667', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1088, 14, '-0.700', 2, 90, NULL, NULL, NULL, 4, '2020-05-27 15:00:29', NULL),
(1089, 12, '-0.056', 2, 91, NULL, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(1090, 13, '-0.210', 2, 91, NULL, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(1091, 32, '-72.100', 2, 91, NULL, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(1092, 1, '-3.500', 2, 91, NULL, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(1093, 44, '-71.795', 2, 91, NULL, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(1094, 26, '-46.667', 2, 91, NULL, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(1095, 11, '-0.035', 2, 91, NULL, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(1096, 9, '-0.070', 2, 91, NULL, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(1097, 4, '-0.350', 2, 91, NULL, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(1098, 29, '-46.667', 2, 91, NULL, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(1099, 14, '-0.700', 2, 91, NULL, NULL, NULL, 4, '2020-05-27 15:04:41', NULL),
(1100, 65, '0.000', 1, NULL, NULL, NULL, NULL, 1, '2020-06-01 11:55:46', NULL),
(1101, 32, '11.330', 2, 45, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1102, 44, '11.282', 2, 45, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1103, 32, '30.750', 2, 57, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1104, 40, '30.769', 2, 57, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1105, 27, '8.200', 2, 67, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1106, 22, '16.400', 2, 67, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1107, 33, '7.216', 2, 67, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1108, 54, '7.289', 2, 67, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1109, 27, '8.200', 2, 67, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1110, 22, '16.400', 2, 67, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1111, 28, '4.750', 2, 68, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1112, 23, '3.800', 2, 68, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1113, 50, '15.833', 2, 68, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1114, 28, '4.750', 2, 68, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1115, 23, '3.800', 2, 68, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1116, 50, '15.833', 2, 68, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1117, 32, '103.000', 2, 70, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1118, 44, '102.564', 2, 70, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1119, 27, '6.500', 2, 71, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1120, 22, '13.000', 2, 71, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1121, 33, '5.720', 2, 71, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1122, 54, '5.778', 2, 71, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1123, 27, '6.500', 2, 71, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1124, 22, '13.000', 2, 71, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1125, 28, '7.900', 2, 72, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1126, 23, '6.320', 2, 72, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1127, 50, '26.333', 2, 72, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1128, 28, '7.900', 2, 72, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1129, 23, '6.320', 2, 72, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1130, 50, '26.333', 2, 72, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1131, 28, '9.650', 2, 73, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1132, 23, '7.720', 2, 73, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1133, 50, '32.167', 2, 73, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1134, 28, '9.650', 2, 73, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1135, 23, '7.720', 2, 73, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1136, 50, '32.167', 2, 73, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1137, 27, '7.000', 2, 74, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1138, 22, '14.000', 2, 74, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1139, 33, '6.160', 2, 74, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1140, 54, '6.222', 2, 74, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1141, 27, '7.000', 2, 74, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1142, 22, '14.000', 2, 74, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1143, 32, '113.300', 2, 76, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1144, 42, '112.820', 2, 76, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1145, 28, '26.500', 2, 77, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1146, 23, '21.200', 2, 77, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1147, 50, '88.334', 2, 77, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1148, 28, '26.500', 2, 77, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1149, 23, '21.200', 2, 77, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1150, 50, '88.334', 2, 77, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1151, 57, '35.556', 2, 78, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1152, 34, '35.600', 2, 78, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1153, 57, '35.556', 2, 78, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1154, 32, '102.500', 2, 80, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1155, 40, '102.500', 2, 80, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1156, 32, '51.500', 2, 81, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1157, 42, '51.282', 2, 81, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1158, 32, '41.200', 2, 82, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1159, 44, '41.026', 2, 82, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1160, 27, '15.250', 2, 83, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1161, 22, '30.500', 2, 83, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1162, 33, '13.420', 2, 83, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1163, 54, '13.555', 2, 83, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1164, 27, '15.250', 2, 83, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1165, 22, '30.500', 2, 83, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1166, 28, '23.750', 2, 85, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1167, 23, '19.000', 2, 85, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1168, 50, '79.167', 2, 85, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1169, 28, '23.750', 2, 85, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1170, 23, '19.000', 2, 85, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1171, 50, '79.167', 2, 85, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1172, 57, '27.111', 2, 86, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1173, 34, '27.145', 2, 86, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1174, 57, '27.111', 2, 86, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1175, 27, '13.050', 2, 87, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1176, 22, '26.100', 2, 87, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1177, 33, '11.484', 2, 87, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1178, 54, '11.600', 2, 87, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1179, 27, '13.050', 2, 87, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1180, 22, '26.100', 2, 87, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1181, 32, '143.500', 2, 89, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1182, 40, '143.500', 2, 89, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1183, 32, '72.100', 2, 90, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1184, 42, '71.795', 2, 90, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1185, 32, '72.100', 2, 91, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1186, 44, '71.795', 2, 91, NULL, NULL, NULL, 1, '2020-06-01 12:04:10', 'Ajuste por implementación de neuva version'),
(1187, 16, '25.000', 10, NULL, 1, NULL, NULL, 4, '2020-06-05 16:53:31', NULL),
(1188, 23, '10.000', 10, NULL, 1, NULL, NULL, 4, '2020-06-05 16:53:31', NULL),
(1189, 1, '50.000', 10, NULL, 2, NULL, NULL, 4, '2020-06-09 23:24:00', NULL),
(1190, 3, '5.000', 10, NULL, 2, NULL, NULL, 4, '2020-06-09 23:24:00', NULL),
(1191, 27, '40.000', 10, NULL, 2, NULL, NULL, 4, '2020-06-09 23:24:00', NULL),
(1192, 8, '2.426', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1193, 12, '3.030', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1194, 13, '12.939', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1195, 10, '1.000', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1196, 1, '49.500', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1197, 3, '-3.367', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1198, 11, '2.457', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1199, 9, '5.913', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1200, 7, '6.090', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1201, 6, '-78.655', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1202, 4, '7.705', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1203, 5, '1.000', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1204, 16, '3.501', 8, NULL, NULL, NULL, 1, 4, '2020-06-09 23:48:13', NULL),
(1205, 14, '19.700', 8, NULL, NULL, NULL, 2, 4, '2020-06-09 23:50:29', NULL),
(1206, 49, '1457.895', 8, NULL, NULL, NULL, 3, 4, '2020-06-09 23:54:03', NULL),
(1207, 26, '1438.001', 8, NULL, NULL, NULL, 3, 4, '2020-06-09 23:54:03', NULL),
(1208, 29, '2123.337', 8, NULL, NULL, NULL, 3, 4, '2020-06-09 23:54:03', NULL),
(1209, 14, '12.000', 10, NULL, 3, NULL, NULL, 4, '2020-06-12 13:47:29', NULL),
(1210, 8, '9998.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1211, 12, '9998.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1212, 13, '9992.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1213, 10, '9999.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1214, 1, '9950.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1215, 35, '9999.200', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1216, 2, '10000.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1217, 18, '9999.100', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1218, 3, '9995.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1219, 38, '9975.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1220, 36, '9999.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1221, 19, '9999.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1222, 20, '9998.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1223, 21, '9998.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1224, 11, '9998.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1225, 9, '9995.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1226, 22, '9970.500', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1227, 23, '9931.960', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1228, 7, '9995.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1229, 6, '9999.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1230, 4, '9995.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1231, 5, '9998.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1232, 16, '9975.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1233, 17, '10000.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1234, 37, '9975.000', 8, NULL, NULL, NULL, 4, 4, '2020-06-12 14:29:27', NULL),
(1235, 65, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1236, 32, '8619.210', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1237, 56, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1238, 55, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1239, 54, '9310.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1240, 53, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1241, 52, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1242, 51, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1243, 50, '9058.166', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1244, 60, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1245, 58, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1246, 57, '9287.333', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1247, 61, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1248, 59, '9650.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1249, 49, '9650.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1250, 48, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1251, 62, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1252, 47, '9659.879', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1253, 46, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1254, 43, '9810.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1255, 44, '9368.718', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1256, 39, '9959.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1257, 40, '9720.615', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1258, 45, '10000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1259, 41, '9901.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1260, 42, '9360.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1261, 26, '9000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1262, 25, '9750.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1263, 24, '9750.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1264, 27, '9909.500', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL);
INSERT INTO `insumos_mov` (`id_movimiento`, `id_insumo`, `cantidad`, `id_cuenta`, `id_orden`, `id_compra`, `id_orden_fin`, `id_ajuste_stock`, `id_usuario`, `fecha_movimiento`, `descripcion`) VALUES
(1265, 28, '9927.450', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1266, 31, '9989.545', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1267, 29, '8000.000', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1268, 30, '9162.859', 8, NULL, NULL, NULL, 5, 4, '2020-06-12 14:31:17', NULL),
(1269, 8, '-0.280', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:56', NULL),
(1270, 12, '-0.112', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:56', NULL),
(1271, 38, '-0.840', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:56', NULL),
(1272, 36, '-0.070', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:56', NULL),
(1273, 49, '-333.200', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1274, 26, '-140.000', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1275, 20, '-0.042', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1276, 21, '-0.021', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1277, 11, '-0.070', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1278, 9, '-0.140', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1279, 7, '-1.120', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1280, 4, '-0.420', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1281, 16, '-3.360', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1282, 30, '-100.001', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1283, 37, '-0.420', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1284, 14, '-1.400', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1285, 26, '-60.000', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1286, 49, '-400.000', 2, 92, NULL, NULL, NULL, 4, '2020-06-12 14:36:57', NULL),
(1287, 8, '-0.172', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:23', NULL),
(1288, 12, '-0.069', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:23', NULL),
(1289, 32, '-88.580', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:23', NULL),
(1290, 38, '-0.516', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:23', NULL),
(1291, 36, '-0.043', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1292, 42, '-88.580', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1293, 25, '-57.334', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1294, 20, '-0.026', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1295, 21, '-0.013', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1296, 11, '-0.043', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1297, 9, '-0.086', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1298, 6, '-0.129', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1299, 4, '-0.129', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1300, 16, '-2.064', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1301, 29, '-57.334', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1302, 37, '-0.258', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1303, 14, '-0.860', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1304, 41, '-96.000', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1305, 32, '-96.000', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1306, 33, '0.000', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1307, 42, '0.000', 2, 93, NULL, NULL, NULL, 4, '2020-06-12 14:43:24', NULL),
(1308, 8, '-0.160', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1309, 12, '-0.064', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1310, 32, '-82.400', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1311, 38, '-0.480', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1312, 36, '-0.040', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1313, 40, '-82.400', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1314, 24, '-53.334', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1315, 20, '-0.024', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1316, 21, '-0.012', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1317, 11, '-0.040', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1318, 9, '-0.080', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1319, 7, '-0.640', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1320, 4, '-0.240', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1321, 16, '-1.920', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1322, 29, '-53.334', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1323, 37, '-0.240', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1324, 14, '-0.800', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1325, 39, '-89.000', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1326, 32, '-89.000', 2, 94, NULL, NULL, NULL, 4, '2020-06-12 14:49:07', NULL),
(1327, 12, '-0.070', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1328, 13, '-0.264', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1329, 32, '-90.640', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1330, 38, '-0.528', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1331, 36, '-0.044', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1332, 44, '-90.640', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1333, 26, '-58.667', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1334, 20, '-0.026', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1335, 21, '-0.013', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1336, 11, '-0.044', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1337, 9, '-0.088', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1338, 4, '-0.440', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1339, 16, '-2.112', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1340, 29, '-58.667', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1341, 37, '-0.264', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1342, 14, '-0.880', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1343, 43, '-98.000', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1344, 32, '-98.000', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1345, 33, '0.000', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1346, 44, '0.000', 2, 95, NULL, NULL, NULL, 4, '2020-06-12 14:53:23', NULL),
(1347, 34, '-76.152', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1348, 3, '-0.137', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1349, 50, '-76.000', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1350, 23, '-18.240', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1351, 28, '-22.800', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1352, 28, '0.000', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1353, 23, '0.000', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1354, 51, '0.000', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1355, 50, '0.000', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1356, 28, '0.000', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1357, 23, '0.000', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1358, 51, '0.000', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1359, 50, '0.000', 2, 96, NULL, NULL, NULL, 4, '2020-06-12 14:54:40', NULL),
(1360, 34, '-48.505', 2, 97, NULL, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(1361, 3, '-0.164', 2, 97, NULL, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(1362, 57, '-48.445', 2, 97, NULL, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(1363, 22, '-54.500', 2, 97, NULL, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(1364, 33, '-11.000', 2, 97, NULL, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(1365, 58, '0.000', 2, 97, NULL, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(1366, 57, '-11.000', 2, 97, NULL, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(1367, 34, '0.000', 2, 97, NULL, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(1368, 58, '0.000', 2, 97, NULL, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(1369, 57, '0.000', 2, 97, NULL, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(1370, 65, '0.000', 2, 97, NULL, NULL, NULL, 4, '2020-06-12 14:56:02', NULL),
(1371, 33, '-14.652', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:34', NULL),
(1372, 3, '-0.100', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:34', NULL),
(1373, 54, '-14.800', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:34', NULL),
(1374, 22, '-33.300', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:34', NULL),
(1375, 27, '-16.650', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:34', NULL),
(1376, 27, '-12.600', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:34', NULL),
(1377, 22, '-21.000', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:34', NULL),
(1378, 33, '-21.000', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:35', NULL),
(1379, 55, '-21.000', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:35', NULL),
(1380, 54, '-21.000', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:35', NULL),
(1381, 27, '0.000', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:35', NULL),
(1382, 22, '0.000', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:35', NULL),
(1383, 34, '0.000', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:35', NULL),
(1384, 56, '0.000', 2, 98, NULL, NULL, NULL, 4, '2020-06-12 14:57:35', NULL),
(1385, 8, '-0.184', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1386, 12, '-0.074', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1387, 13, '-0.276', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1388, 32, '-188.395', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1389, 1, '-4.595', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1390, 40, '-188.395', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1391, 11, '-0.046', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1392, 9, '-0.092', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1393, 7, '-0.735', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1394, 4, '-0.276', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1395, 29, '-61.267', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1396, 14, '-0.919', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1397, 39, '-102.000', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1398, 32, '-102.000', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1399, 33, '0.000', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1400, 40, '0.000', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1401, 45, '0.000', 2, 99, NULL, NULL, NULL, 4, '2020-06-15 14:03:53', NULL),
(1402, 12, '-0.058', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1403, 13, '-0.218', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1404, 32, '-74.984', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1405, 1, '-3.640', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1406, 44, '-74.667', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1407, 26, '-48.534', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1408, 11, '-0.036', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1409, 9, '-0.073', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1410, 4, '-0.364', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1411, 29, '-48.534', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1412, 14, '-0.728', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1413, 43, '-81.000', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1414, 32, '-81.000', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1415, 33, '0.000', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:08', NULL),
(1416, 44, '0.000', 2, 100, NULL, NULL, NULL, 4, '2020-06-15 14:05:09', NULL),
(1417, 34, '-81.830', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:43', NULL),
(1418, 3, '-0.147', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:43', NULL),
(1419, 50, '-81.667', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:43', NULL),
(1420, 23, '-19.600', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:43', NULL),
(1421, 28, '-24.500', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:43', NULL),
(1422, 28, '-3.000', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:43', NULL),
(1423, 23, '-5.000', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:43', NULL),
(1424, 51, '-5.000', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:43', NULL),
(1425, 50, '-5.000', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:43', NULL),
(1426, 28, '0.000', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:43', NULL),
(1427, 23, '0.000', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:43', NULL),
(1428, 51, '0.000', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:44', NULL),
(1429, 50, '0.000', 2, 101, NULL, NULL, NULL, 4, '2020-06-15 14:06:44', NULL),
(1430, 33, '-12.760', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1431, 3, '-0.087', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1432, 54, '-12.889', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1433, 22, '-29.000', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1434, 27, '-14.500', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1435, 27, '-10.800', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1436, 22, '-18.000', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1437, 33, '-18.000', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1438, 55, '-18.000', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1439, 54, '-18.000', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1440, 27, '0.000', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1441, 22, '0.000', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1442, 34, '0.000', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1443, 56, '0.000', 2, 102, NULL, NULL, NULL, 4, '2020-06-15 14:09:38', NULL),
(1444, 34, '-49.840', 2, 103, NULL, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(1445, 3, '-0.168', 2, 103, NULL, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(1446, 57, '-49.778', 2, 103, NULL, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(1447, 22, '-56.000', 2, 103, NULL, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(1448, 33, '-12.000', 2, 103, NULL, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(1449, 58, '0.000', 2, 103, NULL, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(1450, 57, '-12.000', 2, 103, NULL, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(1451, 34, '0.000', 2, 103, NULL, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(1452, 58, '0.000', 2, 103, NULL, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(1453, 57, '0.000', 2, 103, NULL, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(1454, 65, '0.000', 2, 103, NULL, NULL, NULL, 4, '2020-06-15 14:10:25', NULL),
(1455, 8, '-9995.534', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1456, 12, '-9988.053', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1457, 13, '-9992.242', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1458, 1, '-9956.890', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1459, 35, '-9999.200', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1460, 18, '-9999.110', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1461, 3, '-9994.197', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1462, 38, '-9974.636', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1463, 36, '-9998.983', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1464, 19, '-9999.000', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1465, 20, '-9997.967', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1466, 21, '-9997.986', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:31', NULL),
(1467, 11, '-9998.921', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:32', NULL),
(1468, 9, '-9994.441', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:32', NULL),
(1469, 22, '-9538.200', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:32', NULL),
(1470, 23, '-9912.160', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:32', NULL),
(1471, 7, '-9995.830', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:32', NULL),
(1472, 6, '-9999.671', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:32', NULL),
(1473, 5, '-9999.400', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:32', NULL),
(1474, 37, '-9974.618', 8, NULL, NULL, NULL, 6, 4, '2020-06-15 14:22:32', NULL),
(1475, 65, '-9162.000', 8, NULL, NULL, NULL, 7, 4, '2020-06-15 14:25:41', NULL),
(1476, 33, '2819.412', 8, NULL, NULL, NULL, 7, 4, '2020-06-15 14:25:41', NULL),
(1477, 34, '3498.644', 8, NULL, NULL, NULL, 7, 4, '2020-06-15 14:25:41', NULL),
(1478, 32, '-5379.001', 8, NULL, NULL, NULL, 7, 4, '2020-06-15 14:25:41', NULL),
(1479, 26, '-9462.799', 8, NULL, NULL, NULL, 7, 4, '2020-06-15 14:25:41', NULL),
(1480, 25, '-9842.666', 8, NULL, NULL, NULL, 7, 4, '2020-06-15 14:25:41', NULL),
(1481, 24, '-9546.666', 8, NULL, NULL, NULL, 7, 4, '2020-06-15 14:25:41', NULL),
(1482, 27, '-9915.450', 8, NULL, NULL, NULL, 7, 4, '2020-06-15 14:25:41', NULL),
(1483, 28, '-9884.700', 8, NULL, NULL, NULL, 7, 4, '2020-06-15 14:25:41', NULL),
(1484, 29, '-7620.864', 8, NULL, NULL, NULL, 7, 4, '2020-06-15 14:25:41', NULL),
(1485, 14, '-8.413', 8, NULL, NULL, NULL, 8, 4, '2020-06-15 14:26:02', NULL),
(1486, 8, '-0.245', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:53', NULL),
(1487, 12, '-0.098', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:53', NULL),
(1488, 13, '-0.368', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:53', NULL),
(1489, 1, '-6.130', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(1490, 49, '-291.788', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(1491, 26, '-122.600', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(1492, 11, '-0.061', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(1493, 9, '-0.123', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(1494, 7, '-0.981', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(1495, 4, '-0.368', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(1496, 30, '-87.572', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(1497, 14, '-1.226', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(1498, 26, '-52.500', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(1499, 49, '-350.000', 2, 104, NULL, NULL, NULL, 4, '2020-06-15 15:38:54', NULL),
(1500, 8, '-0.116', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1501, 12, '-0.046', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1502, 13, '-0.174', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1503, 32, '-59.740', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1504, 1, '-2.900', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1505, 42, '-59.487', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1506, 11, '-0.029', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1507, 9, '-0.058', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1508, 6, '-0.087', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1509, 4, '-0.087', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1510, 29, '-38.667', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1511, 14, '-0.580', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1512, 41, '-64.000', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1513, 32, '-64.000', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1514, 33, '0.000', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1515, 42, '0.000', 2, 105, NULL, NULL, NULL, 4, '2020-06-16 13:51:25', NULL),
(1516, 14, '1.806', 8, NULL, NULL, NULL, 9, 4, '2020-06-17 19:59:51', NULL),
(1517, 8, '0.361', 8, NULL, NULL, NULL, 10, 4, '2020-06-17 20:05:11', NULL),
(1518, 12, '0.144', 8, NULL, NULL, NULL, 10, 4, '2020-06-17 20:05:11', NULL),
(1519, 13, '0.542', 8, NULL, NULL, NULL, 10, 4, '2020-06-17 20:05:11', NULL),
(1520, 1, '9.030', 8, NULL, NULL, NULL, 10, 4, '2020-06-17 20:05:11', NULL),
(1521, 11, '0.090', 8, NULL, NULL, NULL, 10, 4, '2020-06-17 20:05:11', NULL),
(1522, 9, '0.181', 8, NULL, NULL, NULL, 10, 4, '2020-06-17 20:05:11', NULL),
(1523, 7, '0.981', 8, NULL, NULL, NULL, 10, 4, '2020-06-17 20:05:11', NULL),
(1524, 4, '-9995.651', 8, NULL, NULL, NULL, 10, 4, '2020-06-17 20:05:11', NULL),
(1525, 32, '123.740', 8, NULL, NULL, NULL, 11, 4, '2020-06-17 20:08:24', NULL),
(1526, 26, '195.100', 8, NULL, NULL, NULL, 11, 4, '2020-06-17 20:08:24', NULL),
(1527, 25, '50.000', 8, NULL, NULL, NULL, 11, 4, '2020-06-17 20:08:24', NULL),
(1528, 29, '38.667', 8, NULL, NULL, NULL, 11, 4, '2020-06-17 20:08:24', NULL),
(1529, 33, '-12.584', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1530, 3, '-0.086', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1531, 54, '-12.711', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1532, 22, '-28.600', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1533, 27, '-14.300', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1534, 27, '-10.800', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1535, 22, '-18.000', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1536, 33, '-18.000', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1537, 55, '-18.000', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1538, 54, '-18.000', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1539, 27, '0.000', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1540, 22, '0.000', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1541, 34, '0.000', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1542, 56, '0.000', 2, 106, NULL, NULL, NULL, 4, '2020-06-17 20:13:28', NULL),
(1543, 34, '-44.144', 2, 107, NULL, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(1544, 3, '-0.149', 2, 107, NULL, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(1545, 57, '-44.089', 2, 107, NULL, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(1546, 22, '-49.600', 2, 107, NULL, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(1547, 33, '-10.000', 2, 107, NULL, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(1548, 58, '0.000', 2, 107, NULL, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(1549, 57, '-10.000', 2, 107, NULL, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(1550, 34, '0.000', 2, 107, NULL, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(1551, 58, '0.000', 2, 107, NULL, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(1552, 57, '0.000', 2, 107, NULL, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(1553, 65, '0.000', 2, 107, NULL, NULL, NULL, 4, '2020-06-17 20:14:37', NULL),
(1554, 34, '-78.156', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:44', NULL),
(1555, 3, '-0.140', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:44', NULL),
(1556, 50, '-78.000', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:44', NULL),
(1557, 23, '-18.720', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(1558, 28, '-23.400', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(1559, 28, '-3.000', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(1560, 23, '-5.000', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(1561, 51, '-5.000', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(1562, 50, '-5.000', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(1563, 28, '0.000', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(1564, 23, '0.000', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(1565, 51, '0.000', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(1566, 50, '0.000', 2, 108, NULL, NULL, NULL, 4, '2020-06-17 20:15:45', NULL),
(1567, 8, '-0.260', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1568, 12, '-0.104', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1569, 13, '-0.390', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1570, 1, '-6.500', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1571, 49, '-309.400', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1572, 26, '-130.000', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1573, 11, '-0.065', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1574, 9, '-0.130', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1575, 7, '-1.040', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1576, 4, '-0.390', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1577, 30, '-92.858', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1578, 14, '-1.300', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1579, 26, '-55.650', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1580, 49, '-371.000', 2, 109, NULL, NULL, NULL, 4, '2020-06-17 20:17:47', NULL),
(1581, 12, '-0.056', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1582, 13, '-0.210', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1583, 32, '-72.100', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1584, 1, '-3.500', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1585, 44, '-71.795', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1586, 26, '-46.667', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1587, 11, '-0.035', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1588, 9, '-0.070', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1589, 4, '-0.350', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1590, 29, '-46.667', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1591, 14, '-0.700', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1592, 43, '-78.000', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1593, 32, '-78.000', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1594, 33, '0.000', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1595, 44, '0.000', 2, 110, NULL, NULL, NULL, 4, '2020-06-17 20:19:31', NULL),
(1596, 8, '-0.140', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1597, 12, '-0.056', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1598, 13, '-0.210', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1599, 32, '-143.500', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1600, 1, '-3.500', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1601, 40, '-143.500', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1602, 11, '-0.035', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1603, 9, '-0.070', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1604, 7, '-0.560', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1605, 4, '-0.210', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1606, 29, '-46.667', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1607, 14, '-0.700', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1608, 39, '-78.000', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1609, 32, '-78.000', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1610, 33, '0.000', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1611, 40, '0.000', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1612, 45, '0.000', 2, 111, NULL, NULL, NULL, 4, '2020-06-17 20:21:06', NULL),
(1613, 8, '-0.140', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:02', NULL),
(1614, 12, '-0.056', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:02', NULL),
(1615, 13, '-0.210', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:02', NULL),
(1616, 32, '-72.100', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:02', NULL),
(1617, 1, '-3.500', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1618, 42, '-71.795', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1619, 11, '-0.035', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1620, 9, '-0.070', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1621, 6, '-0.105', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1622, 4, '-0.105', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1623, 29, '-46.667', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1624, 14, '-0.700', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1625, 41, '-78.000', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1626, 32, '-78.000', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1627, 33, '0.000', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1628, 42, '0.000', 2, 112, NULL, NULL, NULL, 4, '2020-06-17 20:22:03', NULL),
(1629, 16, '125.000', 10, NULL, 4, NULL, NULL, 4, '2020-06-23 07:26:22', NULL),
(1630, 7, '3.000', 10, NULL, 4, NULL, NULL, 4, '2020-06-23 07:26:22', NULL),
(1631, 26, '100.317', 8, NULL, NULL, NULL, 12, 4, '2020-06-24 07:06:06', NULL),
(1632, 26, '32.000', 8, NULL, NULL, NULL, 13, 4, '2020-06-24 07:18:00', NULL),
(1633, 8, '-0.270', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1634, 12, '-0.108', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1635, 13, '-0.405', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1636, 1, '-6.750', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1637, 49, '-321.300', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1638, 26, '-135.000', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1639, 11, '-0.068', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1640, 9, '-0.135', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1641, 7, '-1.080', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1642, 4, '-0.405', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1643, 30, '-96.429', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1644, 14, '-1.350', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1645, 26, '-57.900', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1646, 49, '-386.000', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1647, 26, '0.000', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1648, 49, '0.000', 2, 113, NULL, NULL, NULL, 4, '2020-06-24 07:19:00', NULL),
(1649, 8, '-0.270', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1650, 12, '-0.108', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1651, 13, '-0.405', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1652, 32, '-276.750', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1653, 1, '-6.750', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1654, 40, '-276.750', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1655, 11, '-0.068', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1656, 9, '-0.135', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1657, 7, '-1.080', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1658, 4, '-0.405', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1659, 29, '-90.000', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1660, 14, '-1.350', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1661, 39, '-150.000', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1662, 32, '-150.000', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1663, 33, '0.000', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1664, 40, '0.000', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1665, 45, '0.000', 2, 114, NULL, NULL, NULL, 4, '2020-06-24 07:21:39', NULL),
(1666, 66, '0.000', 1, NULL, NULL, NULL, NULL, 1, '2020-06-24 14:28:32', NULL),
(1667, 67, '0.000', 1, NULL, NULL, NULL, NULL, 1, '2020-06-24 14:33:36', NULL),
(1668, 4, '25.000', 10, NULL, 5, NULL, NULL, 4, '2020-06-24 14:34:47', NULL),
(1669, 7, '25.000', 10, NULL, 5, NULL, NULL, 4, '2020-06-24 14:34:47', NULL),
(1670, 66, '30.000', 10, NULL, 5, NULL, NULL, 4, '2020-06-24 14:34:47', NULL),
(1671, 8, '25.000', 10, NULL, 5, NULL, NULL, 4, '2020-06-24 14:34:47', NULL),
(1672, 22, '1000.000', 10, NULL, 5, NULL, NULL, 4, '2020-06-24 14:34:47', NULL),
(1673, 23, '1000.000', 10, NULL, 5, NULL, NULL, 4, '2020-06-24 14:34:47', NULL),
(1674, 25, '8.000', 10, NULL, 5, NULL, NULL, 4, '2020-06-24 14:34:47', NULL),
(1675, 24, '8.000', 10, NULL, 5, NULL, NULL, 4, '2020-06-24 14:34:47', NULL),
(1676, 26, '16.000', 10, NULL, 5, NULL, NULL, 4, '2020-06-24 14:34:47', NULL),
(1677, 67, '120.000', 10, NULL, 5, NULL, NULL, 4, '2020-06-24 14:34:47', NULL),
(1678, 26, '16026.900', 8, NULL, NULL, NULL, 14, 4, '2020-06-24 19:57:13', NULL),
(1679, 25, '7842.000', 8, NULL, NULL, NULL, 14, 4, '2020-06-24 19:57:13', NULL),
(1680, 24, '7592.000', 8, NULL, NULL, NULL, 14, 4, '2020-06-24 19:57:13', NULL),
(1681, 27, '25.100', 8, NULL, NULL, NULL, 14, 4, '2020-06-24 19:57:13', NULL),
(1682, 32, '0.000', 2, 115, NULL, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(1683, 44, '0.000', 2, 115, NULL, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(1684, 26, '-90.000', 2, 115, NULL, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(1685, 11, '-0.068', 2, 115, NULL, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(1686, 9, '-0.135', 2, 115, NULL, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(1687, 4, '-0.270', 2, 115, NULL, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(1688, 67, '-5.400', 2, 115, NULL, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(1689, 29, '-90.000', 2, 115, NULL, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(1690, 14, '-1.350', 2, 115, NULL, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(1691, 43, '-150.000', 2, 115, NULL, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(1692, 32, '-150.000', 2, 115, NULL, NULL, NULL, 4, '2020-06-24 19:58:40', NULL),
(1693, 8, '-0.270', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1694, 32, '-139.050', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1695, 42, '-138.461', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1696, 25, '-89.100', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1697, 11, '-0.068', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1698, 9, '-0.135', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1699, 5, '-0.135', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1700, 67, '-5.400', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1701, 29, '-90.000', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1702, 14, '-1.350', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1703, 41, '-150.000', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1704, 32, '-150.000', 2, 116, NULL, NULL, NULL, 4, '2020-06-24 20:00:23', NULL),
(1705, 33, '-16.060', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1706, 3, '-0.110', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1707, 54, '-16.222', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1708, 22, '-36.500', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1709, 27, '0.000', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1710, 27, '-11.406', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1711, 22, '-23.000', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1712, 33, '-23.000', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1713, 55, '-23.000', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1714, 54, '-23.000', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1715, 27, '0.000', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1716, 22, '0.000', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1717, 34, '0.000', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1718, 56, '0.000', 2, 117, NULL, NULL, NULL, 4, '2020-06-24 20:04:43', NULL),
(1719, 32, '3000.000', 10, NULL, 6, NULL, NULL, 4, '2020-06-26 06:43:49', NULL),
(1720, 33, '3000.000', 10, NULL, 6, NULL, NULL, 4, '2020-06-26 06:43:49', NULL),
(1721, 34, '3000.000', 10, NULL, 6, NULL, NULL, 4, '2020-06-26 06:43:49', NULL),
(1722, 49, '615.000', 10, NULL, 7, NULL, NULL, 4, '2020-06-26 06:45:17', NULL),
(1723, 49, '2800.000', 10, NULL, 8, NULL, NULL, 4, '2020-06-29 22:49:17', NULL),
(1724, 45, '1000.000', 10, NULL, 8, NULL, NULL, 4, '2020-06-29 22:49:17', NULL),
(1725, 60, '1000.000', 10, NULL, 8, NULL, NULL, 4, '2020-06-29 22:49:17', NULL),
(1726, 42, '600.000', 10, NULL, 8, NULL, NULL, 4, '2020-06-29 22:49:17', NULL),
(1727, 44, '3300.000', 10, NULL, 8, NULL, NULL, 4, '2020-06-29 22:49:17', NULL),
(1728, 56, '1000.000', 10, NULL, 8, NULL, NULL, 4, '2020-06-29 22:49:17', NULL),
(1729, 8, '-0.200', 2, 118, NULL, NULL, NULL, 4, '2020-06-30 15:11:07', NULL),
(1730, 49, '-238.000', 2, 118, NULL, NULL, NULL, 4, '2020-06-30 15:11:07', NULL),
(1731, 26, '-100.000', 2, 118, NULL, NULL, NULL, 4, '2020-06-30 15:11:07', NULL),
(1732, 11, '-0.050', 2, 118, NULL, NULL, NULL, 4, '2020-06-30 15:11:07', NULL),
(1733, 9, '-0.100', 2, 118, NULL, NULL, NULL, 4, '2020-06-30 15:11:07', NULL),
(1734, 7, '-0.800', 2, 118, NULL, NULL, NULL, 4, '2020-06-30 15:11:07', NULL),
(1735, 67, '-4.000', 2, 118, NULL, NULL, NULL, 4, '2020-06-30 15:11:07', NULL),
(1736, 30, '-71.429', 2, 118, NULL, NULL, NULL, 4, '2020-06-30 15:11:07', NULL),
(1737, 14, '-1.000', 2, 118, NULL, NULL, NULL, 4, '2020-06-30 15:11:07', NULL),
(1738, 26, '-41.250', 2, 118, NULL, NULL, NULL, 4, '2020-06-30 15:11:07', NULL),
(1739, 49, '-275.000', 2, 118, NULL, NULL, NULL, 4, '2020-06-30 15:11:07', NULL),
(1740, 8, '0.200', 6, 118, NULL, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(1741, 49, '238.000', 6, 118, NULL, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(1742, 26, '100.000', 6, 118, NULL, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(1743, 11, '0.050', 6, 118, NULL, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(1744, 9, '0.100', 6, 118, NULL, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(1745, 7, '0.800', 6, 118, NULL, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(1746, 67, '4.000', 6, 118, NULL, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(1747, 30, '71.429', 6, 118, NULL, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(1748, 14, '1.000', 6, 118, NULL, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(1749, 26, '41.250', 6, 118, NULL, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(1750, 49, '275.000', 6, 118, NULL, NULL, NULL, 4, '2020-06-30 15:12:25', NULL),
(1755, 8, '-0.140', 2, 119, NULL, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(1756, 49, '-166.600', 2, 119, NULL, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(1757, 26, '-70.000', 2, 119, NULL, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(1758, 11, '-0.035', 2, 119, NULL, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(1759, 9, '-0.070', 2, 119, NULL, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(1760, 7, '-0.560', 2, 119, NULL, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(1761, 67, '-2.800', 2, 119, NULL, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(1762, 30, '-50.000', 2, 119, NULL, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(1763, 14, '-0.700', 2, 119, NULL, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(1764, 26, '-28.950', 2, 119, NULL, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(1765, 49, '-193.000', 2, 119, NULL, NULL, NULL, 4, '2020-06-30 15:14:34', NULL),
(1766, 14, '2.500', 8, NULL, NULL, NULL, 15, 4, '2020-06-30 15:21:12', NULL),
(1767, 8, '-0.140', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1768, 32, '-143.500', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1769, 40, '-143.500', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1770, 24, '-46.200', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1771, 11, '-0.035', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1772, 9, '-0.070', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1773, 7, '-0.560', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1774, 67, '-2.800', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1775, 29, '-46.667', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1776, 14, '-0.700', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1777, 39, '0.000', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1778, 32, '0.000', 2, 120, NULL, NULL, NULL, 4, '2020-06-30 15:26:00', NULL),
(1779, 32, '0.000', 2, 121, NULL, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(1780, 44, '0.000', 2, 121, NULL, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(1781, 26, '-46.667', 2, 121, NULL, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(1782, 11, '-0.035', 2, 121, NULL, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(1783, 9, '-0.070', 2, 121, NULL, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(1784, 4, '-0.140', 2, 121, NULL, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(1785, 67, '-2.800', 2, 121, NULL, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(1786, 29, '-46.667', 2, 121, NULL, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(1787, 14, '-0.700', 2, 121, NULL, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(1788, 43, '-78.000', 2, 121, NULL, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(1789, 32, '-78.000', 2, 121, NULL, NULL, NULL, 4, '2020-06-30 15:31:00', NULL),
(1790, 8, '-0.140', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1791, 32, '-72.100', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1792, 42, '-71.795', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1793, 25, '-46.200', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1794, 11, '-0.035', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1795, 9, '-0.070', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1796, 5, '-0.070', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1797, 67, '-2.800', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1798, 29, '-46.667', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1799, 14, '-0.700', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1800, 41, '0.000', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1801, 32, '0.000', 2, 122, NULL, NULL, NULL, 4, '2020-06-30 15:34:27', NULL),
(1802, 33, '-2.948', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1803, 3, '-0.020', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1804, 54, '-2.978', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1805, 22, '-6.700', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1806, 27, '-2.094', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1807, 22, '-4.000', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1808, 33, '-4.000', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1809, 55, '-4.000', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1810, 54, '-4.000', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1811, 22, '0.000', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1812, 34, '0.000', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1813, 56, '0.000', 2, 123, NULL, NULL, NULL, 4, '2020-07-07 14:10:10', NULL),
(1814, 8, '-0.082', 2, 124, NULL, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(1815, 49, '-97.580', 2, 124, NULL, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(1816, 26, '-41.000', 2, 124, NULL, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(1817, 11, '-0.021', 2, 124, NULL, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(1818, 9, '-0.041', 2, 124, NULL, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(1819, 7, '-0.328', 2, 124, NULL, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(1820, 67, '-1.640', 2, 124, NULL, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(1821, 30, '-29.286', 2, 124, NULL, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(1822, 14, '-0.410', 2, 124, NULL, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(1823, 26, '-16.950', 2, 124, NULL, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(1824, 49, '-113.000', 2, 124, NULL, NULL, NULL, 4, '2020-07-07 14:14:03', NULL),
(1825, 14, '0.210', 8, NULL, NULL, NULL, 16, 4, '2020-07-07 14:21:41', NULL),
(1826, 8, '-0.128', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1827, 32, '-131.200', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1828, 40, '-131.200', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1829, 24, '-42.240', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1830, 11, '-0.032', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1831, 9, '-0.064', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1832, 7, '-0.512', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1833, 67, '-2.560', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1834, 29, '-42.667', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1835, 14, '-0.640', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1836, 39, '-71.000', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1837, 32, '-71.000', 2, 125, NULL, NULL, NULL, 4, '2020-07-07 14:22:48', NULL),
(1838, 14, '60.000', 10, NULL, 9, NULL, NULL, 4, '2020-07-14 21:32:01', NULL),
(1839, 13, '30.000', 10, NULL, 9, NULL, NULL, 4, '2020-07-14 21:32:01', NULL),
(1840, 8, '-0.150', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:40', NULL),
(1841, 12, '-0.060', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:40', NULL),
(1842, 13, '-0.225', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:40', NULL),
(1843, 1, '-3.750', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:40', NULL),
(1844, 49, '-178.500', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:40', NULL),
(1845, 26, '-75.000', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:40', NULL),
(1846, 11, '-0.038', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(1847, 9, '-0.075', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(1848, 7, '-0.600', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(1849, 4, '-0.225', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(1850, 30, '-53.572', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(1851, 14, '-0.750', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(1852, 26, '-32.100', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(1853, 49, '-214.000', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(1854, 26, '0.000', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(1855, 49, '0.000', 2, 126, NULL, NULL, NULL, 4, '2020-07-14 21:35:41', NULL),
(1856, 32, '0.000', 2, 127, NULL, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(1857, 44, '0.000', 2, 127, NULL, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(1858, 26, '-35.334', 2, 127, NULL, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(1859, 11, '-0.027', 2, 127, NULL, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(1860, 9, '-0.053', 2, 127, NULL, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(1861, 4, '-0.106', 2, 127, NULL, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(1862, 67, '-2.120', 2, 127, NULL, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(1863, 29, '-35.334', 2, 127, NULL, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(1864, 14, '-0.530', 2, 127, NULL, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(1865, 43, '-59.000', 2, 127, NULL, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(1866, 32, '-59.000', 2, 127, NULL, NULL, NULL, 4, '2020-07-14 21:40:08', NULL),
(1867, 8, '-0.106', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1868, 32, '-54.590', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1869, 42, '-54.359', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1870, 25, '-34.980', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1871, 11, '-0.027', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1872, 9, '-0.053', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1873, 5, '-0.053', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1874, 67, '-2.120', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1875, 29, '-35.334', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1876, 14, '-0.530', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1877, 41, '-59.000', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1878, 32, '-59.000', 2, 128, NULL, NULL, NULL, 4, '2020-07-14 21:41:57', NULL),
(1879, 33, '-7.480', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1880, 3, '-0.051', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1881, 54, '-7.555', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1882, 22, '-17.000', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1883, 27, '-5.313', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1884, 22, '-11.000', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1885, 33, '-11.000', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1886, 55, '-11.000', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1887, 54, '-11.000', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1888, 22, '0.000', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1889, 34, '0.000', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1890, 56, '0.000', 2, 129, NULL, NULL, NULL, 4, '2020-07-14 21:45:40', NULL),
(1891, 34, '-75.150', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1892, 3, '-0.135', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1893, 50, '-75.000', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1894, 23, '-18.000', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1895, 28, '-22.500', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1896, 28, '-3.000', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1897, 23, '-5.000', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1898, 51, '-5.000', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1899, 50, '-5.000', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1900, 28, '0.000', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1901, 23, '0.000', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1902, 51, '0.000', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1903, 50, '0.000', 2, 130, NULL, NULL, NULL, 4, '2020-07-14 21:46:46', NULL),
(1904, 34, '-36.134', 2, 131, NULL, NULL, NULL, 4, '2020-07-14 21:47:45', NULL),
(1905, 3, '-0.122', 2, 131, NULL, NULL, NULL, 4, '2020-07-14 21:47:45', NULL),
(1906, 57, '-36.089', 2, 131, NULL, NULL, NULL, 4, '2020-07-14 21:47:45', NULL),
(1907, 22, '-40.600', 2, 131, NULL, NULL, NULL, 4, '2020-07-14 21:47:45', NULL);
INSERT INTO `insumos_mov` (`id_movimiento`, `id_insumo`, `cantidad`, `id_cuenta`, `id_orden`, `id_compra`, `id_orden_fin`, `id_ajuste_stock`, `id_usuario`, `fecha_movimiento`, `descripcion`) VALUES
(1908, 33, '-8.000', 2, 131, NULL, NULL, NULL, 4, '2020-07-14 21:47:45', NULL),
(1909, 58, '0.000', 2, 131, NULL, NULL, NULL, 4, '2020-07-14 21:47:45', NULL),
(1910, 57, '-8.000', 2, 131, NULL, NULL, NULL, 4, '2020-07-14 21:47:45', NULL),
(1911, 34, '0.000', 2, 131, NULL, NULL, NULL, 4, '2020-07-14 21:47:45', NULL),
(1912, 58, '0.000', 2, 131, NULL, NULL, NULL, 4, '2020-07-14 21:47:45', NULL),
(1913, 57, '0.000', 2, 131, NULL, NULL, NULL, 4, '2020-07-14 21:47:45', NULL),
(1914, 65, '0.000', 2, 131, NULL, NULL, NULL, 4, '2020-07-14 21:47:45', NULL),
(1915, 25, '1500.000', 10, NULL, 10, NULL, NULL, 4, '2020-07-22 03:46:17', NULL),
(1916, 11, '1.000', 10, NULL, 10, NULL, NULL, 4, '2020-07-22 03:46:17', NULL),
(1917, 6, '1.000', 10, NULL, 10, NULL, NULL, 4, '2020-07-22 03:46:17', NULL),
(1918, 8, '-0.170', 2, 132, NULL, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(1919, 49, '-202.300', 2, 132, NULL, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(1920, 26, '-85.000', 2, 132, NULL, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(1921, 11, '-0.043', 2, 132, NULL, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(1922, 9, '-0.085', 2, 132, NULL, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(1923, 7, '-0.680', 2, 132, NULL, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(1924, 67, '-3.400', 2, 132, NULL, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(1925, 30, '-60.715', 2, 132, NULL, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(1926, 14, '-0.850', 2, 132, NULL, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(1927, 26, '0.000', 2, 132, NULL, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(1928, 49, '0.000', 2, 132, NULL, NULL, NULL, 4, '2020-07-22 03:49:27', NULL),
(1929, 26, '-46.200', 18, NULL, NULL, 88, NULL, 4, '2020-07-22 03:52:53', NULL),
(1930, 49, '-308.000', 18, NULL, NULL, 88, NULL, 4, '2020-07-22 03:52:53', NULL),
(1932, 26, '-93.150', 18, NULL, NULL, 89, NULL, 4, '2020-07-22 04:04:08', NULL),
(1933, 49, '-621.000', 18, NULL, NULL, 89, NULL, 4, '2020-07-22 04:04:08', NULL),
(1934, 8, '-0.086', 2, 133, NULL, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(1935, 49, '-102.340', 2, 133, NULL, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(1936, 26, '-43.000', 2, 133, NULL, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(1937, 11, '-0.022', 2, 133, NULL, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(1938, 9, '-0.043', 2, 133, NULL, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(1939, 7, '-0.344', 2, 133, NULL, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(1940, 67, '-1.720', 2, 133, NULL, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(1941, 30, '-30.714', 2, 133, NULL, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(1942, 14, '-0.430', 2, 133, NULL, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(1943, 26, '-17.700', 2, 133, NULL, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(1944, 49, '-118.000', 2, 133, NULL, NULL, NULL, 4, '2020-07-23 02:54:18', NULL),
(1945, 8, '-0.086', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1946, 32, '-88.150', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1947, 40, '-88.150', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1948, 24, '-28.380', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1949, 11, '-0.022', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1950, 9, '-0.043', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1951, 7, '-0.344', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1952, 67, '-1.720', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1953, 29, '-28.667', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1954, 14, '-0.430', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1955, 39, '-48.000', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1956, 32, '-48.000', 2, 134, NULL, NULL, NULL, 4, '2020-07-23 02:55:45', NULL),
(1957, 34, '-41.830', 2, 135, NULL, NULL, NULL, 4, '2020-07-23 02:57:29', NULL),
(1958, 3, '-0.141', 2, 135, NULL, NULL, NULL, 4, '2020-07-23 02:57:29', NULL),
(1959, 57, '-41.778', 2, 135, NULL, NULL, NULL, 4, '2020-07-23 02:57:29', NULL),
(1960, 22, '-47.000', 2, 135, NULL, NULL, NULL, 4, '2020-07-23 02:57:29', NULL),
(1961, 33, '-10.000', 2, 135, NULL, NULL, NULL, 4, '2020-07-23 02:57:29', NULL),
(1962, 58, '0.000', 2, 135, NULL, NULL, NULL, 4, '2020-07-23 02:57:29', NULL),
(1963, 57, '-10.000', 2, 135, NULL, NULL, NULL, 4, '2020-07-23 02:57:29', NULL),
(1964, 34, '0.000', 2, 135, NULL, NULL, NULL, 4, '2020-07-23 02:57:29', NULL),
(1965, 58, '0.000', 2, 135, NULL, NULL, NULL, 4, '2020-07-23 02:57:29', NULL),
(1966, 57, '0.000', 2, 135, NULL, NULL, NULL, 4, '2020-07-23 02:57:29', NULL),
(1967, 65, '0.000', 2, 135, NULL, NULL, NULL, 4, '2020-07-23 02:57:29', NULL),
(1968, 33, '-7.040', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1969, 3, '-0.048', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1970, 54, '-7.111', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1971, 22, '-16.000', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1972, 27, '-5.000', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1973, 22, '-10.000', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1974, 33, '-10.000', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1975, 55, '-10.000', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1976, 54, '-10.000', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1977, 22, '0.000', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1978, 34, '0.000', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1979, 56, '0.000', 2, 136, NULL, NULL, NULL, 4, '2020-07-23 02:59:42', NULL),
(1980, 28, '36.900', 8, NULL, NULL, NULL, 17, 4, '2020-07-23 03:02:42', NULL),
(1981, 34, '-78.824', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1982, 3, '-0.142', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1983, 50, '-78.667', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1984, 23, '-18.880', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1985, 28, '-23.600', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1986, 28, '-3.000', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1987, 23, '-5.000', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1988, 51, '-5.000', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1989, 50, '-5.000', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1990, 28, '0.000', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1991, 23, '0.000', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1992, 51, '0.000', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:48', NULL),
(1993, 50, '0.000', 2, 137, NULL, NULL, NULL, 4, '2020-07-23 03:03:49', NULL),
(1994, 39, '-69.000', 18, NULL, NULL, 90, NULL, 4, '2020-07-23 11:52:06', NULL),
(1995, 32, '-69.000', 18, NULL, NULL, 90, NULL, 4, '2020-07-23 11:52:06', NULL),
(1997, 26, '0.300', 18, NULL, NULL, 91, NULL, 4, '2020-07-23 11:56:06', NULL),
(1998, 49, '2.000', 18, NULL, NULL, 91, NULL, 4, '2020-07-23 11:56:06', NULL),
(2000, 41, '-81.000', 18, NULL, NULL, 92, NULL, 4, '2020-07-23 12:02:45', NULL),
(2001, 32, '-81.000', 18, NULL, NULL, 92, NULL, 4, '2020-07-23 12:02:45', NULL),
(2003, 43, '-89.000', 18, NULL, NULL, 93, NULL, 4, '2020-07-23 12:07:44', NULL),
(2004, 32, '-89.000', 18, NULL, NULL, 93, NULL, 4, '2020-07-23 12:07:44', NULL),
(2006, 33, '0.000', 18, NULL, NULL, 94, NULL, 4, '2020-07-23 12:33:16', NULL),
(2007, 40, '0.000', 18, NULL, NULL, 94, NULL, 4, '2020-07-23 12:33:16', NULL),
(2008, 45, '0.000', 18, NULL, NULL, 94, NULL, 4, '2020-07-23 12:33:16', NULL),
(2009, 39, '-145.000', 18, NULL, NULL, 94, NULL, 4, '2020-07-23 12:33:16', NULL),
(2010, 32, '-145.000', 18, NULL, NULL, 94, NULL, 4, '2020-07-23 12:33:16', NULL),
(2012, 41, '-45.000', 18, NULL, NULL, 95, NULL, 4, '2020-07-27 10:15:16', NULL),
(2013, 32, '-45.000', 18, NULL, NULL, 95, NULL, 4, '2020-07-27 10:15:16', NULL),
(2015, 43, '-59.000', 18, NULL, NULL, 96, NULL, 4, '2020-07-27 10:21:20', NULL),
(2016, 32, '-59.000', 18, NULL, NULL, 96, NULL, 4, '2020-07-27 10:21:20', NULL),
(2017, 33, '-89.000', 18, NULL, NULL, 97, NULL, 4, '2020-07-28 03:01:25', NULL),
(2018, 58, '0.000', 18, NULL, NULL, 97, NULL, 4, '2020-07-28 03:01:25', NULL),
(2019, 57, '-89.000', 18, NULL, NULL, 97, NULL, 4, '2020-07-28 03:01:25', NULL),
(2020, 28, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2021, 23, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2022, 51, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2023, 50, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2027, 28, '-20.400', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2028, 23, '-34.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2029, 51, '-34.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2030, 50, '-34.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2034, 28, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2035, 23, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2036, 51, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2037, 50, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2041, 28, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2042, 23, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2043, 51, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2044, 50, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2048, 28, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2049, 23, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2050, 51, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2051, 50, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2055, 28, '-20.400', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2056, 23, '-34.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2057, 51, '-34.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2058, 50, '-34.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2062, 28, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2063, 23, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2064, 51, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2065, 50, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2069, 28, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2070, 23, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2071, 51, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2072, 50, '0.000', 18, NULL, NULL, 98, NULL, 4, '2020-07-28 03:04:42', NULL),
(2076, 22, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2077, 34, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2078, 56, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2079, 22, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2080, 34, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2081, 56, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2082, 22, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2083, 33, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2084, 55, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2085, 54, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2089, 22, '-77.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2090, 33, '-77.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2091, 55, '-77.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2092, 54, '-77.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2096, 22, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2097, 34, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2098, 56, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2099, 22, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2100, 34, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2101, 56, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2102, 22, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2103, 33, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2104, 55, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2105, 54, '0.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2109, 22, '-77.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2110, 33, '-77.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2111, 55, '-77.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2112, 54, '-77.000', 18, NULL, NULL, 99, NULL, 4, '2020-07-28 03:07:55', NULL),
(2116, 39, '-76.000', 18, NULL, NULL, 100, NULL, 4, '2020-07-28 03:12:35', NULL),
(2117, 32, '-76.000', 18, NULL, NULL, 100, NULL, 4, '2020-07-28 03:12:35', NULL),
(2118, 8, '-0.136', 2, 138, NULL, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(2119, 49, '-161.840', 2, 138, NULL, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(2120, 26, '-68.000', 2, 138, NULL, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(2121, 11, '-0.034', 2, 138, NULL, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(2122, 9, '-0.068', 2, 138, NULL, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(2123, 7, '-0.544', 2, 138, NULL, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(2124, 67, '-2.720', 2, 138, NULL, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(2125, 30, '-48.572', 2, 138, NULL, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(2126, 14, '-0.680', 2, 138, NULL, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(2127, 26, '-28.050', 2, 138, NULL, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(2128, 49, '-187.000', 2, 138, NULL, NULL, NULL, 4, '2020-07-30 12:14:36', NULL),
(2129, 8, '-0.100', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:06', NULL),
(2130, 32, '-102.500', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:06', NULL),
(2131, 40, '-102.500', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:06', NULL),
(2132, 24, '-33.000', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:06', NULL),
(2133, 11, '-0.025', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:06', NULL),
(2134, 9, '-0.050', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:06', NULL),
(2135, 7, '-0.400', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:06', NULL),
(2136, 67, '-2.000', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:06', NULL),
(2137, 29, '-33.334', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:07', NULL),
(2138, 14, '-0.500', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:07', NULL),
(2139, 39, '-56.000', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:07', NULL),
(2140, 32, '-56.000', 2, 139, NULL, NULL, NULL, 4, '2020-07-30 12:16:07', NULL),
(2141, 33, '-3.212', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2142, 3, '-0.022', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2143, 54, '-3.244', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2144, 22, '-7.300', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2145, 27, '-2.281', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2146, 22, '-5.000', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2147, 33, '-5.000', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2148, 55, '-5.000', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2149, 54, '-5.000', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2150, 22, '0.000', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2151, 34, '0.000', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2152, 56, '0.000', 2, 140, NULL, NULL, NULL, 4, '2020-07-30 12:17:56', NULL),
(2153, 33, '-3.212', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:57', NULL),
(2154, 3, '-0.022', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:57', NULL),
(2155, 54, '-3.244', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:57', NULL),
(2156, 22, '-7.300', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:57', NULL),
(2157, 27, '-2.281', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:57', NULL),
(2158, 22, '-5.000', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:58', NULL),
(2159, 33, '-5.000', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:58', NULL),
(2160, 55, '-5.000', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:58', NULL),
(2161, 54, '-5.000', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:58', NULL),
(2162, 22, '0.000', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:58', NULL),
(2163, 34, '0.000', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:58', NULL),
(2164, 56, '0.000', 2, 141, NULL, NULL, NULL, 4, '2020-07-30 12:17:58', NULL),
(2165, 33, '3.212', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2166, 3, '0.022', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2167, 54, '3.244', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2168, 22, '7.300', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2169, 27, '2.281', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2170, 22, '5.000', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2171, 33, '5.000', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2172, 55, '5.000', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2173, 54, '5.000', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2174, 22, '0.000', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2175, 34, '0.000', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2176, 56, '0.000', 6, 141, NULL, NULL, NULL, 4, '2020-07-30 12:26:38', NULL),
(2180, 39, '-151.000', 18, NULL, NULL, 101, NULL, 4, '2020-07-30 12:38:43', NULL),
(2181, 32, '-151.000', 18, NULL, NULL, 101, NULL, 4, '2020-07-30 12:38:43', NULL),
(2183, 28, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2184, 23, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2185, 51, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2186, 50, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2190, 28, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2191, 23, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2192, 51, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2193, 50, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2197, 28, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2198, 23, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2199, 51, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2200, 50, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2204, 28, '-22.800', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2205, 23, '-38.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2206, 51, '-38.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2207, 50, '-38.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2211, 28, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2212, 23, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2213, 51, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2214, 50, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2218, 28, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2219, 23, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2220, 51, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2221, 50, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2225, 28, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2226, 23, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2227, 51, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2228, 50, '0.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2232, 28, '-22.800', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2233, 23, '-38.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2234, 51, '-38.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2235, 50, '-38.000', 18, NULL, NULL, 102, NULL, 4, '2020-07-30 12:41:45', NULL),
(2239, 26, '1.500', 18, NULL, NULL, 103, NULL, 4, '2020-07-30 12:44:34', NULL),
(2240, 49, '10.000', 18, NULL, NULL, 103, NULL, 4, '2020-07-30 12:44:34', NULL),
(2242, 41, '-147.000', 18, NULL, NULL, 104, NULL, 4, '2020-08-01 05:39:06', NULL),
(2243, 32, '-147.000', 18, NULL, NULL, 104, NULL, 4, '2020-08-01 05:39:06', NULL),
(2244, 22, '-60.000', 18, NULL, NULL, 105, NULL, 4, '2020-08-04 03:26:11', NULL),
(2245, 33, '-60.000', 18, NULL, NULL, 105, NULL, 4, '2020-08-04 03:26:11', NULL),
(2246, 55, '-60.000', 18, NULL, NULL, 105, NULL, 4, '2020-08-04 03:26:11', NULL),
(2247, 54, '-60.000', 18, NULL, NULL, 105, NULL, 4, '2020-08-04 03:26:11', NULL),
(2251, 43, '-124.000', 18, NULL, NULL, 106, NULL, 4, '2020-08-04 11:25:37', NULL),
(2252, 32, '-124.000', 18, NULL, NULL, 106, NULL, 4, '2020-08-04 11:25:37', NULL),
(2254, 28, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2255, 23, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2256, 51, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2257, 50, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2261, 28, '-22.800', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2262, 23, '-38.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2263, 51, '-38.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2264, 50, '-38.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2268, 28, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2269, 23, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2270, 51, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2271, 50, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2275, 28, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2276, 23, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2277, 51, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2278, 50, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2282, 28, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2283, 23, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2284, 51, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2285, 50, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2289, 28, '-22.800', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2290, 23, '-38.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2291, 51, '-38.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2292, 50, '-38.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2296, 28, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2297, 23, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2298, 51, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2299, 50, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2303, 28, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2304, 23, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2305, 51, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2306, 50, '0.000', 18, NULL, NULL, 107, NULL, 4, '2020-08-04 11:28:22', NULL),
(2310, 33, '-109.000', 18, NULL, NULL, 108, NULL, 4, '2020-08-04 11:31:18', NULL),
(2311, 58, '0.000', 18, NULL, NULL, 108, NULL, 4, '2020-08-04 11:31:18', NULL),
(2312, 57, '-109.000', 18, NULL, NULL, 108, NULL, 4, '2020-08-04 11:31:18', NULL),
(2313, 27, '9.094', 8, NULL, NULL, NULL, 18, 4, '2020-08-06 02:35:51', NULL),
(2314, 28, '168.600', 8, NULL, NULL, NULL, 18, 4, '2020-08-06 02:35:51', NULL),
(2315, 34, '-70.641', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2316, 3, '-0.127', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2317, 50, '-70.500', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2318, 23, '-16.920', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2319, 28, '-21.150', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2320, 28, '-3.000', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2321, 23, '-5.000', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2322, 51, '-5.000', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2323, 50, '-5.000', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2324, 28, '0.000', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2325, 23, '0.000', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2326, 51, '0.000', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2327, 50, '0.000', 2, 142, NULL, NULL, NULL, 4, '2020-08-06 02:37:59', NULL),
(2328, 33, '-7.348', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:42', NULL),
(2329, 3, '-0.050', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:42', NULL),
(2330, 54, '-7.422', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(2331, 22, '-16.700', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(2332, 27, '-5.219', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(2333, 22, '-10.000', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(2334, 33, '-10.000', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(2335, 55, '-10.000', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(2336, 54, '-10.000', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(2337, 22, '0.000', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(2338, 34, '0.000', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(2339, 56, '0.000', 2, 143, NULL, NULL, NULL, 4, '2020-08-06 02:40:43', NULL),
(2340, 34, '-43.343', 2, 144, NULL, NULL, NULL, 4, '2020-08-06 02:44:22', NULL),
(2341, 3, '-0.146', 2, 144, NULL, NULL, NULL, 4, '2020-08-06 02:44:22', NULL),
(2342, 57, '-43.289', 2, 144, NULL, NULL, NULL, 4, '2020-08-06 02:44:22', NULL),
(2343, 22, '-48.700', 2, 144, NULL, NULL, NULL, 4, '2020-08-06 02:44:22', NULL),
(2344, 33, '-10.000', 2, 144, NULL, NULL, NULL, 4, '2020-08-06 02:44:22', NULL),
(2345, 58, '0.000', 2, 144, NULL, NULL, NULL, 4, '2020-08-06 02:44:22', NULL),
(2346, 57, '-10.000', 2, 144, NULL, NULL, NULL, 4, '2020-08-06 02:44:23', NULL),
(2347, 34, '0.000', 2, 144, NULL, NULL, NULL, 4, '2020-08-06 02:44:23', NULL),
(2348, 58, '0.000', 2, 144, NULL, NULL, NULL, 4, '2020-08-06 02:44:23', NULL),
(2349, 57, '0.000', 2, 144, NULL, NULL, NULL, 4, '2020-08-06 02:44:23', NULL),
(2350, 65, '0.000', 2, 144, NULL, NULL, NULL, 4, '2020-08-06 02:44:23', NULL),
(2351, 8, '-0.094', 2, 145, NULL, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(2352, 49, '-111.860', 2, 145, NULL, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(2353, 26, '-47.000', 2, 145, NULL, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(2354, 11, '-0.024', 2, 145, NULL, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(2355, 9, '-0.047', 2, 145, NULL, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(2356, 7, '-0.376', 2, 145, NULL, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(2357, 67, '-1.880', 2, 145, NULL, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(2358, 30, '-33.572', 2, 145, NULL, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(2359, 14, '-0.470', 2, 145, NULL, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(2360, 26, '-19.350', 2, 145, NULL, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(2361, 49, '-129.000', 2, 145, NULL, NULL, NULL, 4, '2020-08-06 02:48:16', NULL),
(2362, 8, '-0.094', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2363, 32, '-96.350', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2364, 40, '-96.350', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2365, 24, '-31.020', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2366, 11, '-0.024', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2367, 9, '-0.047', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2368, 7, '-0.376', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2369, 67, '-1.880', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2370, 29, '-31.333', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2371, 14, '-0.470', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2372, 39, '-52.000', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2373, 32, '-52.000', 2, 146, NULL, NULL, NULL, 4, '2020-08-06 02:55:31', NULL),
(2374, 8, '-0.188', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2375, 32, '-96.820', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2376, 42, '-96.410', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2377, 25, '-62.040', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2378, 11, '-0.047', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2379, 9, '-0.094', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2380, 5, '-0.094', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2381, 67, '-3.760', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2382, 29, '-62.667', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2383, 14, '-0.940', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2384, 41, '-104.000', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2385, 32, '-104.000', 2, 147, NULL, NULL, NULL, 4, '2020-08-06 03:08:21', NULL),
(2386, 33, '-2324.328', 8, NULL, NULL, NULL, 19, 4, '2020-08-09 14:03:23', NULL),
(2387, 34, '-1531.778', 8, NULL, NULL, NULL, 19, 4, '2020-08-09 14:03:23', NULL),
(2388, 32, '-2014.290', 8, NULL, NULL, NULL, 19, 4, '2020-08-09 14:03:23', NULL),
(2389, 56, '-10072.000', 8, NULL, NULL, NULL, 19, 4, '2020-08-09 14:03:23', NULL),
(2390, 53, '-9026.000', 8, NULL, NULL, NULL, 19, 4, '2020-08-09 14:03:23', NULL),
(2391, 52, '-9012.000', 8, NULL, NULL, NULL, 19, 4, '2020-08-09 14:03:23', NULL),
(2392, 60, '-10200.000', 8, NULL, NULL, NULL, 19, 4, '2020-08-09 14:03:23', NULL),
(2393, 49, '-6156.292', 8, NULL, NULL, NULL, 19, 4, '2020-08-09 14:03:23', NULL),
(2394, 44, '-11862.898', 8, NULL, NULL, NULL, 19, 4, '2020-08-09 14:03:23', NULL),
(2395, 40, '-7634.255', 8, NULL, NULL, NULL, 19, 4, '2020-08-09 14:03:23', NULL),
(2396, 42, '-8936.113', 8, NULL, NULL, NULL, 19, 4, '2020-08-09 14:03:23', NULL),
(2397, 41, '-76.000', 18, NULL, NULL, 109, NULL, 4, '2020-08-10 03:14:12', NULL),
(2398, 32, '-76.000', 18, NULL, NULL, 109, NULL, 4, '2020-08-10 03:14:12', NULL),
(2400, 26, '-1.050', 18, NULL, NULL, 110, NULL, 4, '2020-08-10 03:18:22', NULL),
(2401, 49, '-7.000', 18, NULL, NULL, 110, NULL, 4, '2020-08-10 03:18:22', NULL),
(2403, 43, '-74.000', 18, NULL, NULL, 111, NULL, 4, '2020-08-10 03:22:13', NULL),
(2404, 32, '-74.000', 18, NULL, NULL, 111, NULL, 4, '2020-08-10 03:22:13', NULL),
(2405, 39, '-78.000', 18, NULL, NULL, 113, NULL, 4, '2020-08-11 03:38:26', NULL),
(2406, 32, '-78.000', 18, NULL, NULL, 113, NULL, 4, '2020-08-11 03:38:26', NULL),
(2408, 43, '-88.000', 18, NULL, NULL, 114, NULL, 4, '2020-08-11 03:40:40', NULL),
(2409, 32, '-88.000', 18, NULL, NULL, 114, NULL, 4, '2020-08-11 03:40:40', NULL),
(2411, 33, '-8.756', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2412, 3, '-0.060', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2413, 54, '-8.844', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2414, 22, '-19.900', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2415, 27, '-6.219', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2416, 22, '-12.000', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2417, 33, '-12.000', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2418, 55, '-12.000', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2419, 54, '-12.000', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2420, 22, '0.000', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2421, 34, '0.000', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2422, 56, '0.000', 2, 148, NULL, NULL, NULL, 4, '2020-08-11 10:28:45', NULL),
(2423, 34, '-83.834', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2424, 3, '-0.151', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2425, 50, '-83.667', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2426, 23, '-20.080', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2427, 28, '-25.100', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2428, 28, '-3.600', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2429, 23, '-6.000', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2430, 51, '-6.000', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2431, 50, '-6.000', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2432, 28, '0.000', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2433, 23, '0.000', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2434, 51, '0.000', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2435, 50, '0.000', 2, 149, NULL, NULL, NULL, 4, '2020-08-11 10:29:42', NULL),
(2436, 34, '-45.479', 2, 150, NULL, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(2437, 3, '-0.153', 2, 150, NULL, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(2438, 57, '-45.422', 2, 150, NULL, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(2439, 22, '-51.100', 2, 150, NULL, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(2440, 33, '-11.000', 2, 150, NULL, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(2441, 58, '0.000', 2, 150, NULL, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(2442, 57, '-11.000', 2, 150, NULL, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(2443, 34, '0.000', 2, 150, NULL, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(2444, 58, '0.000', 2, 150, NULL, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(2445, 57, '0.000', 2, 150, NULL, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(2446, 65, '0.000', 2, 150, NULL, NULL, NULL, 4, '2020-08-11 10:31:55', NULL),
(2447, 8, '-0.070', 2, 151, NULL, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(2448, 49, '-83.538', 2, 151, NULL, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(2449, 26, '-35.100', 2, 151, NULL, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(2450, 11, '-0.018', 2, 151, NULL, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(2451, 9, '-0.035', 2, 151, NULL, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(2452, 7, '-0.281', 2, 151, NULL, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(2453, 67, '-1.404', 2, 151, NULL, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(2454, 30, '-25.072', 2, 151, NULL, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(2455, 14, '-0.351', 2, 151, NULL, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(2456, 26, '-14.550', 2, 151, NULL, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(2457, 49, '-97.000', 2, 151, NULL, NULL, NULL, 4, '2020-08-12 09:21:03', NULL),
(2458, 8, '-0.108', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2459, 32, '-110.700', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2460, 40, '-110.700', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2461, 24, '-35.640', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2462, 11, '-0.027', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2463, 9, '-0.054', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2464, 7, '-0.432', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2465, 67, '-2.160', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2466, 29, '-36.000', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2467, 14, '-0.540', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2468, 39, '-60.000', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2469, 32, '-60.000', 2, 152, NULL, NULL, NULL, 4, '2020-08-12 09:23:47', NULL),
(2470, 32, '0.000', 2, 153, NULL, NULL, NULL, 4, '2020-08-12 09:30:02', NULL),
(2471, 44, '0.000', 2, 153, NULL, NULL, NULL, 4, '2020-08-12 09:30:02', NULL),
(2472, 26, '-73.334', 2, 153, NULL, NULL, NULL, 4, '2020-08-12 09:30:02', NULL),
(2473, 11, '-0.055', 2, 153, NULL, NULL, NULL, 4, '2020-08-12 09:30:03', NULL),
(2474, 9, '-0.110', 2, 153, NULL, NULL, NULL, 4, '2020-08-12 09:30:03', NULL),
(2475, 4, '-0.220', 2, 153, NULL, NULL, NULL, 4, '2020-08-12 09:30:03', NULL),
(2476, 67, '-4.400', 2, 153, NULL, NULL, NULL, 4, '2020-08-12 09:30:03', NULL),
(2477, 29, '-73.334', 2, 153, NULL, NULL, NULL, 4, '2020-08-12 09:30:03', NULL),
(2478, 14, '-1.100', 2, 153, NULL, NULL, NULL, 4, '2020-08-12 09:30:03', NULL),
(2479, 43, '-122.000', 2, 153, NULL, NULL, NULL, 4, '2020-08-12 09:30:03', NULL),
(2480, 32, '-122.000', 2, 153, NULL, NULL, NULL, 4, '2020-08-12 09:30:03', NULL),
(2481, 26, '4.050', 18, NULL, NULL, 115, NULL, 4, '2020-08-13 06:55:04', NULL),
(2482, 49, '27.000', 18, NULL, NULL, 115, NULL, 4, '2020-08-13 06:55:04', NULL),
(2483, 8, '-0.101', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:13', NULL),
(2484, 34, '-45.123', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:13', NULL),
(2485, 3, '-0.152', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:13', NULL),
(2486, 60, '-45.067', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:13', NULL),
(2487, 22, '-50.700', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:13', NULL),
(2488, 7, '-0.254', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:13', NULL),
(2489, 4, '-0.152', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:13', NULL),
(2490, 33, '-11.000', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:13', NULL),
(2491, 60, '-11.000', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:13', NULL),
(2492, 34, '0.000', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:13', NULL),
(2493, 60, '0.000', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:13', NULL),
(2494, 56, '0.000', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:14', NULL),
(2495, 65, '0.000', 2, 154, NULL, NULL, NULL, 4, '2020-08-18 19:26:14', NULL),
(2496, 32, '0.000', 2, 155, NULL, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(2497, 44, '0.000', 2, 155, NULL, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(2498, 26, '-66.000', 2, 155, NULL, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(2499, 11, '-0.050', 2, 155, NULL, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(2500, 9, '-0.099', 2, 155, NULL, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(2501, 4, '-0.198', 2, 155, NULL, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(2502, 67, '-3.960', 2, 155, NULL, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(2503, 29, '-66.000', 2, 155, NULL, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(2504, 14, '-0.990', 2, 155, NULL, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(2505, 43, '-110.000', 2, 155, NULL, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(2506, 32, '-110.000', 2, 155, NULL, NULL, NULL, 4, '2020-08-18 19:36:08', NULL),
(2507, 8, '-0.198', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2508, 32, '-101.970', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2509, 42, '-101.538', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2510, 25, '-65.340', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2511, 11, '-0.050', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2512, 9, '-0.099', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2513, 5, '-0.099', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2514, 67, '-3.960', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2515, 29, '-66.000', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2516, 14, '-0.990', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2517, 41, '-110.000', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2518, 32, '-110.000', 2, 156, NULL, NULL, NULL, 4, '2020-08-18 19:37:21', NULL),
(2519, 8, '0.100', 10, NULL, 11, NULL, NULL, 1, '2020-08-18 20:11:55', NULL),
(2520, 8, '-0.100', 11, NULL, 11, NULL, NULL, 1, '2020-08-18 20:12:08', NULL),
(2521, 28, '400.000', 10, NULL, 12, NULL, NULL, 4, '2020-08-19 03:16:58', NULL),
(2522, 27, '150.000', 10, NULL, 12, NULL, NULL, 4, '2020-08-19 03:16:58', NULL),
(2523, 16, '75.000', 10, NULL, 12, NULL, NULL, 4, '2020-08-19 03:16:58', NULL),
(2524, 34, '-83.834', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2525, 3, '-0.151', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2526, 50, '-83.667', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2527, 23, '-20.080', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2528, 28, '-25.100', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2529, 28, '-3.600', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2530, 23, '-6.000', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2531, 51, '-6.000', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2532, 50, '-6.000', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2533, 28, '0.000', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2534, 23, '0.000', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2535, 51, '0.000', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2536, 50, '0.000', 2, 157, NULL, NULL, NULL, 4, '2020-08-19 03:18:25', NULL),
(2537, 8, '-0.042', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2538, 33, '-9.328', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2539, 3, '-0.064', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2540, 56, '-9.422', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2541, 22, '-21.200', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2542, 7, '-0.106', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2543, 4, '-0.064', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2544, 27, '-6.625', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2545, 23, '-13.000', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2546, 22, '-13.000', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2547, 33, '-13.000', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2548, 22, '0.000', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2549, 34, '0.000', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2550, 56, '0.000', 2, 158, NULL, NULL, NULL, 4, '2020-08-19 03:20:30', NULL),
(2551, 32, '3000.000', 10, NULL, 13, NULL, NULL, 4, '2020-08-20 17:59:27', NULL),
(2552, 26, '1.350', 18, NULL, NULL, 117, NULL, 4, '2020-08-21 05:55:10', NULL),
(2553, 49, '9.000', 18, NULL, NULL, 117, NULL, 4, '2020-08-21 05:55:10', NULL),
(2554, 39, '-58.000', 18, NULL, NULL, 118, NULL, 4, '2020-08-24 02:49:11', NULL),
(2555, 32, '-58.000', 18, NULL, NULL, 118, NULL, 4, '2020-08-24 02:49:11', NULL),
(2557, 28, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2558, 23, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2559, 51, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2560, 50, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2561, 28, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2562, 23, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2563, 51, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2564, 50, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2565, 28, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2566, 23, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2567, 51, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2568, 50, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2569, 28, '22.800', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2570, 23, '38.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2571, 51, '38.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2572, 50, '38.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2573, 28, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2574, 23, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2575, 51, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2576, 50, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2577, 28, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2578, 23, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2579, 51, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2580, 50, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2581, 28, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2582, 23, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2583, 51, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2584, 50, '0.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2585, 28, '22.800', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2586, 23, '38.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2587, 51, '38.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2588, 50, '38.000', 19, NULL, NULL, 102, NULL, 4, '2020-08-25 06:17:25', NULL),
(2620, 28, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2621, 23, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2622, 51, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2623, 50, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2627, 28, '-37.200', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2628, 23, '-62.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2629, 51, '-62.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2630, 50, '-62.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2634, 28, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2635, 23, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2636, 51, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2637, 50, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:35', NULL),
(2641, 28, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2642, 23, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2643, 51, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2644, 50, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2648, 28, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2649, 23, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2650, 51, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2651, 50, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2655, 28, '-37.200', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2656, 23, '-62.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2657, 51, '-62.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2658, 50, '-62.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2662, 28, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2663, 23, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2664, 51, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2665, 50, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2669, 28, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2670, 23, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2671, 51, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2672, 50, '0.000', 18, NULL, NULL, 120, NULL, 4, '2020-08-25 06:21:36', NULL),
(2676, 22, '-72.000', 18, NULL, NULL, 121, NULL, 4, '2020-08-25 06:26:02', NULL),
(2677, 33, '-72.000', 18, NULL, NULL, 121, NULL, 4, '2020-08-25 06:26:02', NULL),
(2678, 55, '-72.000', 18, NULL, NULL, 121, NULL, 4, '2020-08-25 06:26:02', NULL),
(2679, 54, '-72.000', 18, NULL, NULL, 121, NULL, 4, '2020-08-25 06:26:02', NULL),
(2680, 22, '72.000', 19, NULL, NULL, 121, NULL, 4, '2020-08-25 10:00:31', NULL),
(2681, 33, '72.000', 19, NULL, NULL, 121, NULL, 4, '2020-08-25 10:00:31', NULL),
(2682, 55, '72.000', 19, NULL, NULL, 121, NULL, 4, '2020-08-25 10:00:31', NULL),
(2683, 54, '72.000', 19, NULL, NULL, 121, NULL, 4, '2020-08-25 10:00:31', NULL),
(2687, 22, '-72.000', 18, NULL, NULL, 122, NULL, 4, '2020-08-25 10:03:39', NULL),
(2688, 33, '-72.000', 18, NULL, NULL, 122, NULL, 4, '2020-08-25 10:03:39', NULL),
(2689, 55, '-72.000', 18, NULL, NULL, 122, NULL, 4, '2020-08-25 10:03:39', NULL),
(2690, 54, '-72.000', 18, NULL, NULL, 122, NULL, 4, '2020-08-25 10:03:39', NULL),
(2694, 8, '-0.047', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2695, 34, '-76.375', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2696, 52, '-76.375', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2697, 9, '-0.047', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2698, 23, '-4.700', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2699, 4, '-0.071', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2700, 28, '-3.290', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2701, 66, '-0.071', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2702, 28, '-3.000', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2703, 23, '-5.000', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2704, 52, '-5.000', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2705, 28, '0.000', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2706, 23, '0.000', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2707, 52, '0.000', 2, 159, NULL, NULL, NULL, 4, '2020-08-25 12:48:15', NULL),
(2708, 8, '-0.047', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2709, 34, '-76.375', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL);
INSERT INTO `insumos_mov` (`id_movimiento`, `id_insumo`, `cantidad`, `id_cuenta`, `id_orden`, `id_compra`, `id_orden_fin`, `id_ajuste_stock`, `id_usuario`, `fecha_movimiento`, `descripcion`) VALUES
(2710, 52, '-76.375', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2711, 9, '-0.047', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2712, 23, '-4.700', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2713, 4, '-0.071', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2714, 28, '-3.290', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2715, 66, '-0.071', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2716, 28, '-3.000', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2717, 23, '-5.000', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2718, 52, '-5.000', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2719, 28, '0.000', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2720, 23, '0.000', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2721, 52, '0.000', 2, 160, NULL, NULL, NULL, 4, '2020-08-25 12:48:16', NULL),
(2722, 8, '0.047', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2723, 34, '76.375', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2724, 52, '76.375', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2725, 9, '0.047', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2726, 23, '4.700', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2727, 4, '0.071', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2728, 28, '3.290', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2729, 66, '0.071', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2730, 28, '3.000', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2731, 23, '5.000', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2732, 52, '5.000', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2733, 28, '0.000', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2734, 23, '0.000', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2735, 52, '0.000', 6, 160, NULL, NULL, NULL, 4, '2020-08-25 12:49:08', NULL),
(2737, 34, '-76.375', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2738, 53, '-76.375', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2739, 23, '-4.700', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2740, 7, '-0.118', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2741, 4, '-0.047', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2742, 28, '-3.290', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2743, 66, '-0.071', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2744, 28, '-3.000', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2745, 23, '-5.000', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2746, 53, '-5.000', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2747, 28, '0.000', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2748, 23, '0.000', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2749, 53, '0.000', 2, 161, NULL, NULL, NULL, 4, '2020-08-25 12:50:55', NULL),
(2750, 34, '-152.960', 2, 162, NULL, NULL, NULL, 4, '2020-08-25 12:52:30', NULL),
(2751, 57, '-152.960', 2, 162, NULL, NULL, NULL, 4, '2020-08-25 12:52:30', NULL),
(2752, 66, '-0.143', 2, 162, NULL, NULL, NULL, 4, '2020-08-25 12:52:30', NULL),
(2753, 33, '-10.000', 2, 162, NULL, NULL, NULL, 4, '2020-08-25 12:52:30', NULL),
(2754, 58, '0.000', 2, 162, NULL, NULL, NULL, 4, '2020-08-25 12:52:30', NULL),
(2755, 57, '-10.000', 2, 162, NULL, NULL, NULL, 4, '2020-08-25 12:52:30', NULL),
(2756, 34, '0.000', 2, 162, NULL, NULL, NULL, 4, '2020-08-25 12:52:30', NULL),
(2757, 58, '0.000', 2, 162, NULL, NULL, NULL, 4, '2020-08-25 12:52:30', NULL),
(2758, 57, '0.000', 2, 162, NULL, NULL, NULL, 4, '2020-08-25 12:52:30', NULL),
(2759, 65, '0.000', 2, 162, NULL, NULL, NULL, 4, '2020-08-25 12:52:30', NULL),
(2760, 33, '-56.650', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2761, 54, '-56.650', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2762, 22, '-11.330', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2763, 27, '-6.438', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2764, 66, '-0.062', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2765, 22, '-11.000', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2766, 33, '-11.000', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2767, 55, '-11.000', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2768, 54, '-11.000', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2769, 22, '0.000', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2770, 34, '0.000', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2771, 56, '0.000', 2, 163, NULL, NULL, NULL, 4, '2020-08-25 12:57:02', NULL),
(2772, 8, '-0.130', 2, 164, NULL, NULL, NULL, 4, '2020-08-25 17:27:13', NULL),
(2773, 49, '-154.700', 2, 164, NULL, NULL, NULL, 4, '2020-08-25 17:27:13', NULL),
(2774, 26, '-65.000', 2, 164, NULL, NULL, NULL, 4, '2020-08-25 17:27:13', NULL),
(2775, 11, '-0.033', 2, 164, NULL, NULL, NULL, 4, '2020-08-25 17:27:13', NULL),
(2776, 9, '-0.065', 2, 164, NULL, NULL, NULL, 4, '2020-08-25 17:27:13', NULL),
(2777, 7, '-0.520', 2, 164, NULL, NULL, NULL, 4, '2020-08-25 17:27:13', NULL),
(2778, 67, '-2.600', 2, 164, NULL, NULL, NULL, 4, '2020-08-25 17:27:13', NULL),
(2779, 30, '-46.429', 2, 164, NULL, NULL, NULL, 4, '2020-08-25 17:27:13', NULL),
(2780, 14, '-0.650', 2, 164, NULL, NULL, NULL, 4, '2020-08-25 17:27:13', NULL),
(2781, 26, '-26.850', 2, 164, NULL, NULL, NULL, 4, '2020-08-25 17:27:13', NULL),
(2782, 49, '-179.000', 2, 164, NULL, NULL, NULL, 4, '2020-08-25 17:27:13', NULL),
(2783, 8, '-0.084', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2784, 32, '-86.100', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2785, 40, '-86.100', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2786, 24, '-27.720', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2787, 11, '-0.021', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2788, 9, '-0.042', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2789, 7, '-0.336', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2790, 67, '-1.680', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2791, 29, '-28.000', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2792, 14, '-0.420', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2793, 39, '-47.000', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2794, 32, '-47.000', 2, 165, NULL, NULL, NULL, 4, '2020-08-25 17:37:01', NULL),
(2795, 8, '-0.150', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2796, 32, '-77.250', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2797, 42, '-76.923', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2798, 25, '-49.500', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2799, 11, '-0.038', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2800, 9, '-0.075', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2801, 5, '-0.075', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2802, 67, '-3.000', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2803, 29, '-50.000', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2804, 14, '-0.750', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2805, 41, '-83.000', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2806, 32, '-83.000', 2, 166, NULL, NULL, NULL, 4, '2020-08-25 17:38:16', NULL),
(2807, 43, '-55.000', 18, NULL, NULL, 123, NULL, 4, '2020-08-26 09:55:36', NULL),
(2808, 32, '-55.000', 18, NULL, NULL, 123, NULL, 4, '2020-08-26 09:55:36', NULL),
(2810, 41, '-36.000', 18, NULL, NULL, 124, NULL, 4, '2020-08-26 09:58:07', NULL),
(2811, 32, '-36.000', 18, NULL, NULL, 124, NULL, 4, '2020-08-26 09:58:07', NULL),
(2813, 26, '1.050', 18, NULL, NULL, 125, NULL, 4, '2020-08-26 10:53:15', NULL),
(2814, 49, '7.000', 18, NULL, NULL, 125, NULL, 4, '2020-08-26 10:53:15', NULL),
(2816, 28, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2817, 23, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2818, 51, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2819, 50, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2820, 28, '22.800', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2821, 23, '38.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2822, 51, '38.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2823, 50, '38.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2824, 28, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2825, 23, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2826, 51, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2827, 50, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2828, 28, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2829, 23, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2830, 51, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2831, 50, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2832, 28, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2833, 23, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2834, 51, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2835, 50, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2836, 28, '22.800', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2837, 23, '38.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2838, 51, '38.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2839, 50, '38.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2840, 28, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2841, 23, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2842, 51, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2843, 50, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2844, 28, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2845, 23, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2846, 51, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2847, 50, '0.000', 19, NULL, NULL, 107, NULL, 4, '2020-08-26 14:39:12', NULL),
(2879, 28, '0.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2880, 23, '0.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2881, 51, '0.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2882, 50, '0.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2886, 28, '-14.400', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2887, 23, '-24.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2888, 51, '-24.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2889, 50, '-24.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2893, 28, '0.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2894, 23, '0.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2895, 51, '0.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2896, 50, '0.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2900, 28, '-14.400', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2901, 23, '-24.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2902, 51, '-24.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2903, 50, '-24.000', 18, NULL, NULL, 126, NULL, 4, '2020-08-26 14:44:17', NULL),
(2904, 33, '-64.000', 18, NULL, NULL, 127, NULL, 4, '2020-08-31 02:40:45', NULL),
(2905, 58, '0.000', 18, NULL, NULL, 127, NULL, 4, '2020-08-31 02:40:45', NULL),
(2906, 57, '-64.000', 18, NULL, NULL, 127, NULL, 4, '2020-08-31 02:40:45', NULL),
(2907, 22, '-6.000', 18, NULL, NULL, 128, NULL, 4, '2020-09-01 02:34:59', NULL),
(2908, 33, '-6.000', 18, NULL, NULL, 128, NULL, 4, '2020-09-01 02:34:59', NULL),
(2909, 55, '-6.000', 18, NULL, NULL, 128, NULL, 4, '2020-09-01 02:34:59', NULL),
(2910, 54, '-6.000', 18, NULL, NULL, 128, NULL, 4, '2020-09-01 02:34:59', NULL),
(2914, 39, '-36.000', 18, NULL, NULL, 129, NULL, 4, '2020-09-01 02:39:37', NULL),
(2915, 32, '-36.000', 18, NULL, NULL, 129, NULL, 4, '2020-09-01 02:39:37', NULL),
(2917, 8, '-0.140', 2, 167, NULL, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(2918, 49, '-166.600', 2, 167, NULL, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(2919, 26, '-70.000', 2, 167, NULL, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(2920, 11, '-0.035', 2, 167, NULL, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(2921, 9, '-0.070', 2, 167, NULL, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(2922, 7, '-0.560', 2, 167, NULL, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(2923, 67, '-2.800', 2, 167, NULL, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(2924, 30, '-50.000', 2, 167, NULL, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(2925, 14, '-0.700', 2, 167, NULL, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(2926, 26, '-28.950', 2, 167, NULL, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(2927, 49, '-193.000', 2, 167, NULL, NULL, NULL, 4, '2020-09-02 03:02:15', NULL),
(2928, 8, '-0.076', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2929, 32, '-77.900', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2930, 40, '-77.900', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2931, 24, '-25.080', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2932, 11, '-0.019', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2933, 9, '-0.038', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2934, 7, '-0.304', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2935, 67, '-1.520', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2936, 29, '-25.333', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2937, 14, '-0.380', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2938, 39, '-42.000', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2939, 32, '-42.000', 2, 168, NULL, NULL, NULL, 4, '2020-09-02 03:06:35', NULL),
(2940, 32, '0.000', 2, 169, NULL, NULL, NULL, 4, '2020-09-02 03:13:23', NULL),
(2941, 44, '0.000', 2, 169, NULL, NULL, NULL, 4, '2020-09-02 03:13:23', NULL),
(2942, 26, '-71.334', 2, 169, NULL, NULL, NULL, 4, '2020-09-02 03:13:23', NULL),
(2943, 11, '-0.054', 2, 169, NULL, NULL, NULL, 4, '2020-09-02 03:13:23', NULL),
(2944, 9, '-0.107', 2, 169, NULL, NULL, NULL, 4, '2020-09-02 03:13:23', NULL),
(2945, 4, '-0.214', 2, 169, NULL, NULL, NULL, 4, '2020-09-02 03:13:23', NULL),
(2946, 67, '-4.280', 2, 169, NULL, NULL, NULL, 4, '2020-09-02 03:13:23', NULL),
(2947, 29, '-71.334', 2, 169, NULL, NULL, NULL, 4, '2020-09-02 03:13:23', NULL),
(2948, 14, '-1.070', 2, 169, NULL, NULL, NULL, 4, '2020-09-02 03:13:23', NULL),
(2949, 43, '-120.000', 2, 169, NULL, NULL, NULL, 4, '2020-09-02 03:13:23', NULL),
(2950, 32, '-120.000', 2, 169, NULL, NULL, NULL, 4, '2020-09-02 03:13:23', NULL),
(2951, 34, '-43.420', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2952, 3, '-0.078', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2953, 53, '-43.333', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2954, 24, '-17.333', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2955, 23, '-10.400', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2956, 7, '-0.130', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2957, 4, '-0.052', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2958, 28, '-13.000', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2959, 28, '-1.800', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2960, 23, '-3.000', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2961, 53, '-3.000', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2962, 28, '0.000', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2963, 23, '0.000', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2964, 53, '0.000', 2, 170, NULL, NULL, NULL, 4, '2020-09-02 03:16:48', NULL),
(2965, 8, '-0.050', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2966, 34, '-41.750', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2967, 3, '-0.075', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2968, 52, '-41.667', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2969, 25, '-16.667', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2970, 9, '-0.050', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2971, 23, '-10.000', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2972, 4, '-0.075', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2973, 28, '-12.500', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2974, 28, '-1.800', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2975, 23, '-3.000', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2976, 52, '-3.000', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2977, 28, '0.000', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2978, 23, '0.000', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2979, 52, '0.000', 2, 171, NULL, NULL, NULL, 4, '2020-09-02 03:23:00', NULL),
(2980, 8, '-0.104', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2981, 34, '-46.280', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2982, 3, '-0.156', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2983, 60, '-46.222', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2984, 22, '-52.000', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2985, 7, '-0.260', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2986, 4, '-0.156', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2987, 33, '0.000', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2988, 60, '0.000', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2989, 34, '0.000', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2990, 60, '0.000', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2991, 56, '0.000', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2992, 65, '0.000', 2, 172, NULL, NULL, NULL, 4, '2020-09-02 03:23:52', NULL),
(2993, 8, '-0.042', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(2994, 33, '-58.300', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(2995, 56, '-58.394', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(2996, 22, '-11.660', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(2997, 7, '-0.106', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(2998, 4, '-0.064', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(2999, 27, '-6.625', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(3000, 66, '-0.064', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(3001, 23, '-12.000', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(3002, 22, '-12.000', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(3003, 33, '-12.000', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(3004, 22, '0.000', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(3005, 34, '0.000', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(3006, 56, '0.000', 2, 173, NULL, NULL, NULL, 4, '2020-09-02 03:30:36', NULL),
(3007, 26, '5.550', 18, NULL, NULL, 130, NULL, 4, '2020-09-03 07:06:01', NULL),
(3008, 49, '37.000', 18, NULL, NULL, 130, NULL, 4, '2020-09-03 07:06:01', NULL),
(3010, 39, '-51.000', 18, NULL, NULL, 131, NULL, 4, '2020-09-04 09:59:04', NULL),
(3011, 32, '-51.000', 18, NULL, NULL, 131, NULL, 4, '2020-09-04 09:59:04', NULL),
(3013, 22, '-49.000', 18, NULL, NULL, 132, NULL, 4, '2020-09-04 10:01:58', NULL),
(3014, 33, '-49.000', 18, NULL, NULL, 132, NULL, 4, '2020-09-04 10:01:58', NULL),
(3015, 55, '-49.000', 18, NULL, NULL, 132, NULL, 4, '2020-09-04 10:01:58', NULL),
(3016, 54, '-49.000', 18, NULL, NULL, 132, NULL, 4, '2020-09-04 10:01:58', NULL),
(3017, 39, '-47.000', 18, NULL, NULL, 133, NULL, 4, '2020-09-08 02:43:19', NULL),
(3018, 32, '-47.000', 18, NULL, NULL, 133, NULL, 4, '2020-09-08 02:43:19', NULL),
(3019, 8, '-0.086', 2, 174, NULL, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(3020, 49, '-102.340', 2, 174, NULL, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(3021, 26, '-43.000', 2, 174, NULL, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(3022, 11, '-0.022', 2, 174, NULL, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(3023, 9, '-0.043', 2, 174, NULL, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(3024, 7, '-0.344', 2, 174, NULL, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(3025, 67, '-1.720', 2, 174, NULL, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(3026, 30, '-30.714', 2, 174, NULL, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(3027, 14, '-0.430', 2, 174, NULL, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(3028, 26, '-17.700', 2, 174, NULL, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(3029, 49, '-118.000', 2, 174, NULL, NULL, NULL, 4, '2020-09-08 19:50:03', NULL),
(3030, 15, '3.430', 8, NULL, NULL, NULL, 25, 4, '2020-09-08 19:53:15', NULL),
(3031, 8, '-0.052', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3032, 12, '-0.021', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3033, 13, '-0.078', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3034, 32, '-197.080', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3035, 47, '-196.970', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3036, 26, '-26.000', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3037, 11, '-0.013', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3038, 9, '-0.026', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3039, 7, '-0.130', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3040, 4, '-0.065', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3041, 16, '-0.572', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3042, 31, '-23.636', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3043, 15, '-0.260', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3044, 46, '-236.000', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3045, 62, '0.000', 2, 175, NULL, NULL, NULL, 4, '2020-09-08 19:55:12', NULL),
(3046, 8, '-0.052', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3047, 12, '-0.021', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3048, 13, '-0.078', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3049, 32, '-197.080', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3050, 47, '-196.970', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3051, 26, '-26.000', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3052, 11, '-0.013', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3053, 9, '-0.026', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3054, 7, '-0.130', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3055, 4, '-0.065', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3056, 16, '-0.572', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3057, 31, '-23.636', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3058, 15, '-0.260', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3059, 46, '-236.000', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3060, 62, '0.000', 2, 176, NULL, NULL, NULL, 4, '2020-09-08 19:55:13', NULL),
(3061, 8, '0.052', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3062, 12, '0.021', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3063, 13, '0.078', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3064, 32, '197.080', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3065, 47, '196.970', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3066, 26, '26.000', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3067, 11, '0.013', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3068, 9, '0.026', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3069, 7, '0.130', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3070, 4, '0.065', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3071, 16, '0.572', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3072, 31, '23.636', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3073, 15, '0.260', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3074, 46, '236.000', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3075, 62, '0.000', 6, 176, NULL, NULL, NULL, 4, '2020-09-08 19:56:34', NULL),
(3076, 8, '-0.068', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3077, 12, '-0.022', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3078, 13, '-0.081', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3079, 32, '-27.810', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3080, 38, '-0.162', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3081, 36, '-0.014', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3082, 45, '-27.692', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3083, 26, '-18.000', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3084, 20, '-0.008', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3085, 21, '-0.004', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3086, 11, '-0.014', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3087, 9, '-0.041', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3088, 6, '-0.041', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3089, 4, '-0.068', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3090, 16, '-0.648', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3091, 29, '-18.000', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3092, 15, '-0.270', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3093, 45, '-30.000', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3094, 32, '-30.000', 2, 177, NULL, NULL, NULL, 4, '2020-09-08 19:58:07', NULL),
(3095, 8, '-0.049', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3096, 34, '-79.300', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3097, 52, '-79.300', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3098, 9, '-0.049', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3099, 23, '-4.880', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3100, 4, '-0.073', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3101, 28, '-3.416', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3102, 66, '-0.073', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3103, 28, '-3.000', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3104, 23, '-5.000', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3105, 52, '-5.000', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3106, 28, '0.000', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3107, 23, '0.000', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3108, 52, '0.000', 2, 178, NULL, NULL, NULL, 4, '2020-09-09 12:50:34', NULL),
(3109, 34, '-79.300', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3110, 53, '-79.300', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3111, 23, '-4.880', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3112, 7, '-0.122', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3113, 4, '-0.049', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3114, 28, '-3.416', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3115, 66, '-0.073', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3116, 28, '-3.000', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3117, 23, '-5.000', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3118, 53, '-5.000', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3119, 28, '0.000', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3120, 23, '0.000', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3121, 53, '0.000', 2, 179, NULL, NULL, NULL, 4, '2020-09-09 12:53:41', NULL),
(3122, 8, '-0.038', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3123, 33, '-52.250', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3124, 56, '-52.334', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3125, 22, '-10.450', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3126, 7, '-0.095', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3127, 4, '-0.057', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3128, 27, '-5.938', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3129, 66, '-0.057', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3130, 23, '-11.000', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3131, 22, '-11.000', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3132, 33, '-11.000', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3133, 22, '0.000', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3134, 34, '0.000', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3135, 56, '0.000', 2, 180, NULL, NULL, NULL, 4, '2020-09-09 12:54:55', NULL),
(3136, 8, '-0.106', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3137, 34, '-169.600', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3138, 60, '-169.600', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3139, 7, '-0.265', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3140, 4, '-0.159', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3141, 66, '-0.159', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3142, 33, '-11.000', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3143, 60, '-11.000', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3144, 34, '0.000', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3145, 60, '0.000', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3146, 56, '0.000', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3147, 65, '0.000', 2, 181, NULL, NULL, NULL, 4, '2020-09-09 12:57:17', NULL),
(3148, 26, '3.600', 18, NULL, NULL, 134, NULL, 4, '2020-09-10 07:40:52', NULL),
(3149, 49, '24.000', 18, NULL, NULL, 134, NULL, 4, '2020-09-10 07:40:52', NULL),
(3150, 63, '191.000', 18, NULL, NULL, 135, NULL, 4, '2020-09-14 09:35:55', NULL),
(3151, 46, '191.000', 18, NULL, NULL, 135, NULL, 4, '2020-09-14 09:35:55', NULL),
(3152, 39, '-38.000', 18, NULL, NULL, 136, NULL, 4, '2020-09-15 10:23:00', NULL),
(3153, 32, '-38.000', 18, NULL, NULL, 136, NULL, 4, '2020-09-15 10:23:00', NULL),
(3155, 41, '-112.000', 18, NULL, NULL, 137, NULL, 4, '2020-09-16 09:38:49', NULL),
(3156, 32, '-112.000', 18, NULL, NULL, 137, NULL, 4, '2020-09-16 09:38:49', NULL),
(3157, 43, '-93.000', 18, NULL, NULL, 138, NULL, 4, '2020-09-22 03:03:57', NULL),
(3158, 32, '-93.000', 18, NULL, NULL, 138, NULL, 4, '2020-09-22 03:03:57', NULL),
(3160, 43, '-90.000', 18, NULL, NULL, 139, NULL, 4, '2020-09-22 09:49:01', NULL),
(3161, 32, '-90.000', 18, NULL, NULL, 139, NULL, 4, '2020-09-22 09:49:01', NULL),
(3163, 26, '1.200', 18, NULL, NULL, 140, NULL, 4, '2020-09-22 09:51:28', NULL),
(3164, 49, '8.000', 18, NULL, NULL, 140, NULL, 4, '2020-09-22 09:51:28', NULL),
(3165, 41, '-89.000', 18, NULL, NULL, 141, NULL, 4, '2020-09-23 09:38:40', NULL),
(3166, 32, '-89.000', 18, NULL, NULL, 141, NULL, 4, '2020-09-23 09:38:40', NULL),
(3167, 8, '-0.180', 2, 182, NULL, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(3168, 49, '-214.200', 2, 182, NULL, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(3169, 26, '-90.000', 2, 182, NULL, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(3170, 11, '-0.045', 2, 182, NULL, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(3171, 9, '-0.090', 2, 182, NULL, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(3172, 7, '-0.720', 2, 182, NULL, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(3173, 67, '-3.600', 2, 182, NULL, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(3174, 30, '-64.286', 2, 182, NULL, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(3175, 14, '-0.900', 2, 182, NULL, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(3176, 26, '-37.200', 2, 182, NULL, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(3177, 49, '-248.000', 2, 182, NULL, NULL, NULL, 4, '2020-09-24 03:14:27', NULL),
(3178, 41, '-57.000', 18, NULL, NULL, 142, NULL, 4, '2020-09-29 09:56:49', NULL),
(3179, 32, '-57.000', 18, NULL, NULL, 142, NULL, 4, '2020-09-29 09:56:49', NULL),
(3181, 26, '1.800', 18, NULL, NULL, 143, NULL, 4, '2020-10-01 03:21:39', NULL),
(3182, 49, '12.000', 18, NULL, NULL, 143, NULL, 4, '2020-10-01 03:21:39', NULL),
(3184, 39, '-62.000', 18, NULL, NULL, 144, NULL, 4, '2020-10-03 05:15:29', NULL),
(3185, 32, '-62.000', 18, NULL, NULL, 144, NULL, 4, '2020-10-03 05:15:29', NULL),
(3187, 8, '1.326', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3188, 12, '0.091', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3189, 13, '-8.786', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3190, 10, '-9999.000', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3191, 1, '0.020', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3192, 2, '-10000.000', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3193, 3, '-2.471', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3194, 38, '-0.008', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3195, 11, '-0.218', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3196, 7, '-2.268', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3197, 4, '-1.745', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3198, 5, '0.066', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3199, 66, '-6.227', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3200, 16, '-10160.324', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3201, 17, '-10000.000', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3202, 67, '6.604', 8, NULL, NULL, NULL, 26, 4, '2020-10-03 06:10:08', NULL),
(3203, 33, '-871.716', 8, NULL, NULL, NULL, 27, 4, '2020-10-03 06:20:26', NULL),
(3204, 32, '-227.190', 8, NULL, NULL, NULL, 27, 4, '2020-10-03 06:20:26', NULL),
(3205, 60, '212.889', 8, NULL, NULL, NULL, 27, 4, '2020-10-03 06:20:26', NULL),
(3206, 49, '735.378', 8, NULL, NULL, NULL, 27, 4, '2020-10-03 06:20:26', NULL),
(3207, 44, '-850.000', 8, NULL, NULL, NULL, 27, 4, '2020-10-03 06:20:26', NULL),
(3208, 40, '-588.300', 8, NULL, NULL, NULL, 27, 4, '2020-10-03 06:20:26', NULL),
(3209, 42, '-684.539', 8, NULL, NULL, NULL, 27, 4, '2020-10-03 06:20:26', NULL),
(3210, 29, '-196.661', 8, NULL, NULL, NULL, 27, 4, '2020-10-03 06:20:26', NULL),
(3211, 39, '-18.000', 18, NULL, NULL, 145, NULL, 4, '2020-10-06 09:22:48', NULL),
(3212, 32, '-18.000', 18, NULL, NULL, 145, NULL, 4, '2020-10-06 09:22:48', NULL),
(3214, 33, '-38.000', 18, NULL, NULL, 146, NULL, 4, '2020-10-07 02:58:50', NULL),
(3215, 58, '0.000', 18, NULL, NULL, 146, NULL, 4, '2020-10-07 02:58:50', NULL),
(3216, 57, '-38.000', 18, NULL, NULL, 146, NULL, 4, '2020-10-07 02:58:50', NULL),
(3217, 45, '-22.000', 18, NULL, NULL, 147, NULL, 4, '2020-10-15 09:12:25', NULL),
(3218, 32, '-22.000', 18, NULL, NULL, 147, NULL, 4, '2020-10-15 09:12:25', NULL),
(3220, 43, '-72.000', 18, NULL, NULL, 148, NULL, 4, '2020-10-16 10:14:10', NULL),
(3221, 32, '-72.000', 18, NULL, NULL, 148, NULL, 4, '2020-10-16 10:14:10', NULL),
(3222, 28, '-6.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3223, 23, '-10.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3224, 51, '-10.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3225, 50, '-10.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3229, 28, '0.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3230, 23, '0.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3231, 51, '0.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3232, 50, '0.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3236, 28, '-6.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3237, 23, '-10.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3238, 51, '-10.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3239, 50, '-10.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3243, 28, '0.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3244, 23, '0.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3245, 51, '0.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3246, 50, '0.000', 18, NULL, NULL, 149, NULL, 4, '2020-11-25 02:51:10', NULL),
(3247, 22, '-18.000', 18, NULL, NULL, 150, NULL, 4, '2020-12-01 10:24:22', NULL),
(3248, 33, '-18.000', 18, NULL, NULL, 150, NULL, 4, '2020-12-01 10:24:22', NULL),
(3249, 55, '-18.000', 18, NULL, NULL, 150, NULL, 4, '2020-12-01 10:24:22', NULL),
(3250, 54, '-18.000', 18, NULL, NULL, 150, NULL, 4, '2020-12-01 10:24:22', NULL),
(3254, 22, '-45.000', 18, NULL, NULL, 151, NULL, 4, '2020-12-01 10:28:18', NULL),
(3255, 33, '-45.000', 18, NULL, NULL, 151, NULL, 4, '2020-12-01 10:28:18', NULL),
(3256, 55, '-45.000', 18, NULL, NULL, 151, NULL, 4, '2020-12-01 10:28:18', NULL),
(3257, 54, '-45.000', 18, NULL, NULL, 151, NULL, 4, '2020-12-01 10:28:18', NULL),
(3261, 33, '-40.000', 18, NULL, NULL, 152, NULL, 4, '2020-12-01 10:31:38', NULL),
(3262, 58, '0.000', 18, NULL, NULL, 152, NULL, 4, '2020-12-01 10:31:38', NULL),
(3263, 57, '-40.000', 18, NULL, NULL, 152, NULL, 4, '2020-12-01 10:31:38', NULL),
(3264, 28, '-15.000', 18, NULL, NULL, 153, NULL, 4, '2020-12-01 10:35:46', NULL),
(3265, 23, '-25.000', 18, NULL, NULL, 153, NULL, 4, '2020-12-01 10:35:46', NULL),
(3266, 51, '-25.000', 18, NULL, NULL, 153, NULL, 4, '2020-12-01 10:35:46', NULL),
(3267, 50, '-25.000', 18, NULL, NULL, 153, NULL, 4, '2020-12-01 10:35:46', NULL),
(3268, 65, '-68.000', 8, NULL, NULL, NULL, 28, 4, '2020-12-04 12:15:14', NULL),
(3269, 33, '-159.000', 8, NULL, NULL, NULL, 28, 4, '2020-12-04 12:15:14', NULL),
(3270, 34, '-76.370', 8, NULL, NULL, NULL, 28, 4, '2020-12-04 12:15:14', NULL),
(3271, 32, '-328.000', 8, NULL, NULL, NULL, 28, 4, '2020-12-04 12:15:14', NULL),
(3272, 30, '-8650.208', 8, NULL, NULL, NULL, 29, 4, '2020-12-04 12:16:52', NULL),
(3273, 33, '38.000', 19, NULL, NULL, 146, NULL, 4, '2020-12-09 10:29:27', NULL),
(3274, 58, '0.000', 19, NULL, NULL, 146, NULL, 4, '2020-12-09 10:29:27', NULL),
(3275, 57, '38.000', 19, NULL, NULL, 146, NULL, 4, '2020-12-09 10:29:27', NULL),
(3276, 33, '-55.000', 18, NULL, NULL, 154, NULL, 4, '2020-12-09 10:35:53', NULL),
(3277, 58, '0.000', 18, NULL, NULL, 154, NULL, 4, '2020-12-09 10:35:53', NULL),
(3278, 57, '-55.000', 18, NULL, NULL, 154, NULL, 4, '2020-12-09 10:35:53', NULL),
(3279, 28, '-33.600', 18, NULL, NULL, 155, NULL, 4, '2020-12-09 10:47:44', NULL),
(3280, 23, '-56.000', 18, NULL, NULL, 155, NULL, 4, '2020-12-09 10:47:44', NULL),
(3281, 51, '-56.000', 18, NULL, NULL, 155, NULL, 4, '2020-12-09 10:47:44', NULL),
(3282, 50, '-56.000', 18, NULL, NULL, 155, NULL, 4, '2020-12-09 10:47:44', NULL),
(3286, 22, '-37.000', 18, NULL, NULL, 156, NULL, 4, '2020-12-09 10:53:09', NULL),
(3287, 33, '-37.000', 18, NULL, NULL, 156, NULL, 4, '2020-12-09 10:53:09', NULL),
(3288, 55, '-37.000', 18, NULL, NULL, 156, NULL, 4, '2020-12-09 10:53:09', NULL),
(3289, 54, '-37.000', 18, NULL, NULL, 156, NULL, 4, '2020-12-09 10:53:09', NULL),
(3293, 22, '-16.000', 18, NULL, NULL, 157, NULL, 4, '2020-12-09 10:59:00', NULL),
(3294, 33, '-16.000', 18, NULL, NULL, 157, NULL, 4, '2020-12-09 10:59:00', NULL),
(3295, 55, '-16.000', 18, NULL, NULL, 157, NULL, 4, '2020-12-09 10:59:00', NULL),
(3296, 54, '-16.000', 18, NULL, NULL, 157, NULL, 4, '2020-12-09 10:59:00', NULL),
(3300, 22, '-4.000', 18, NULL, NULL, 158, NULL, 4, '2020-12-09 11:04:10', NULL),
(3301, 33, '-4.000', 18, NULL, NULL, 158, NULL, 4, '2020-12-09 11:04:10', NULL),
(3302, 55, '-4.000', 18, NULL, NULL, 158, NULL, 4, '2020-12-09 11:04:10', NULL),
(3303, 54, '-4.000', 18, NULL, NULL, 158, NULL, 4, '2020-12-09 11:04:10', NULL),
(3304, 28, '-40.800', 18, NULL, NULL, 159, NULL, 4, '2020-12-10 10:55:15', NULL),
(3305, 23, '-68.000', 18, NULL, NULL, 159, NULL, 4, '2020-12-10 10:55:15', NULL),
(3306, 51, '-68.000', 18, NULL, NULL, 159, NULL, 4, '2020-12-10 10:55:15', NULL),
(3307, 50, '-68.000', 18, NULL, NULL, 159, NULL, 4, '2020-12-10 10:55:15', NULL),
(3311, 22, '4.000', 19, NULL, NULL, 158, NULL, 4, '2020-12-10 10:56:04', NULL),
(3312, 33, '4.000', 19, NULL, NULL, 158, NULL, 4, '2020-12-10 10:56:04', NULL),
(3313, 55, '4.000', 19, NULL, NULL, 158, NULL, 4, '2020-12-10 10:56:04', NULL),
(3314, 54, '4.000', 19, NULL, NULL, 158, NULL, 4, '2020-12-10 10:56:04', NULL),
(3318, 22, '-24.000', 18, NULL, NULL, 160, NULL, 4, '2020-12-10 10:59:03', NULL),
(3319, 33, '-24.000', 18, NULL, NULL, 160, NULL, 4, '2020-12-10 10:59:03', NULL),
(3320, 55, '-24.000', 18, NULL, NULL, 160, NULL, 4, '2020-12-10 10:59:03', NULL),
(3321, 54, '-24.000', 18, NULL, NULL, 160, NULL, 4, '2020-12-10 10:59:03', NULL),
(3325, 28, '-49.800', 18, NULL, NULL, 161, NULL, 4, '2020-12-12 03:35:00', NULL),
(3326, 23, '-83.000', 18, NULL, NULL, 161, NULL, 4, '2020-12-12 03:35:00', NULL),
(3327, 51, '-83.000', 18, NULL, NULL, 161, NULL, 4, '2020-12-12 03:35:00', NULL),
(3328, 50, '-83.000', 18, NULL, NULL, 161, NULL, 4, '2020-12-12 03:35:00', NULL),
(3329, 23, '-68.000', 18, NULL, NULL, 162, NULL, 4, '2020-12-14 09:27:36', NULL),
(3330, 22, '-68.000', 18, NULL, NULL, 162, NULL, 4, '2020-12-14 09:27:36', NULL),
(3331, 33, '-68.000', 18, NULL, NULL, 162, NULL, 4, '2020-12-14 09:27:36', NULL),
(3332, 28, '-73.800', 18, NULL, NULL, 163, NULL, 4, '2020-12-14 09:33:30', NULL),
(3333, 23, '-123.000', 18, NULL, NULL, 163, NULL, 4, '2020-12-14 09:33:30', NULL),
(3334, 51, '-123.000', 18, NULL, NULL, 163, NULL, 4, '2020-12-14 09:33:30', NULL),
(3335, 50, '-123.000', 18, NULL, NULL, 163, NULL, 4, '2020-12-14 09:33:30', NULL),
(3339, 22, '-60.000', 18, NULL, NULL, 164, NULL, 4, '2020-12-14 09:38:18', NULL),
(3340, 33, '-60.000', 18, NULL, NULL, 164, NULL, 4, '2020-12-14 09:38:18', NULL),
(3341, 55, '-60.000', 18, NULL, NULL, 164, NULL, 4, '2020-12-14 09:38:18', NULL),
(3342, 54, '-60.000', 18, NULL, NULL, 164, NULL, 4, '2020-12-14 09:38:18', NULL),
(3346, 28, '-82.800', 18, NULL, NULL, 165, NULL, 4, '2020-12-14 09:41:07', NULL),
(3347, 23, '-138.000', 18, NULL, NULL, 165, NULL, 4, '2020-12-14 09:41:07', NULL),
(3348, 51, '-138.000', 18, NULL, NULL, 165, NULL, 4, '2020-12-14 09:41:07', NULL),
(3349, 50, '-138.000', 18, NULL, NULL, 165, NULL, 4, '2020-12-14 09:41:07', NULL),
(3353, 23, '-71.000', 18, NULL, NULL, 166, NULL, 4, '2020-12-15 07:19:56', NULL),
(3354, 22, '-71.000', 18, NULL, NULL, 166, NULL, 4, '2020-12-15 07:19:56', NULL),
(3355, 33, '-71.000', 18, NULL, NULL, 166, NULL, 4, '2020-12-15 07:19:56', NULL),
(3356, 22, '-74.000', 18, NULL, NULL, 167, NULL, 4, '2020-12-15 07:24:21', NULL),
(3357, 33, '-74.000', 18, NULL, NULL, 167, NULL, 4, '2020-12-15 07:24:21', NULL),
(3358, 55, '-74.000', 18, NULL, NULL, 167, NULL, 4, '2020-12-15 07:24:21', NULL),
(3359, 54, '-74.000', 18, NULL, NULL, 167, NULL, 4, '2020-12-15 07:24:21', NULL),
(3360, 28, '-29.400', 18, NULL, NULL, 168, NULL, 4, '2020-12-15 12:02:02', NULL),
(3361, 23, '-49.000', 18, NULL, NULL, 168, NULL, 4, '2020-12-15 12:02:02', NULL),
(3362, 51, '-49.000', 18, NULL, NULL, 168, NULL, 4, '2020-12-15 12:02:02', NULL),
(3363, 50, '-49.000', 18, NULL, NULL, 168, NULL, 4, '2020-12-15 12:02:02', NULL),
(3367, 23, '-14.000', 18, NULL, NULL, 169, NULL, 4, '2020-12-15 12:05:06', NULL),
(3368, 22, '-14.000', 18, NULL, NULL, 169, NULL, 4, '2020-12-15 12:05:06', NULL),
(3369, 33, '-14.000', 18, NULL, NULL, 169, NULL, 4, '2020-12-15 12:05:06', NULL),
(3370, 33, '10.000', 18, NULL, NULL, 170, NULL, 4, '2020-12-15 12:15:51', NULL),
(3371, 58, '0.000', 18, NULL, NULL, 170, NULL, 4, '2020-12-15 12:15:51', NULL),
(3372, 57, '10.000', 18, NULL, NULL, 170, NULL, 4, '2020-12-15 12:15:51', NULL),
(3373, 33, '40.000', 19, NULL, NULL, 152, NULL, 4, '2020-12-21 10:19:55', NULL),
(3374, 58, '0.000', 19, NULL, NULL, 152, NULL, 4, '2020-12-21 10:19:55', NULL),
(3375, 57, '40.000', 19, NULL, NULL, 152, NULL, 4, '2020-12-21 10:19:55', NULL),
(3376, 33, '-11.000', 18, NULL, NULL, 171, NULL, 4, '2020-12-21 10:23:17', NULL),
(3377, 58, '0.000', 18, NULL, NULL, 171, NULL, 4, '2020-12-21 10:23:17', NULL),
(3378, 57, '-11.000', 18, NULL, NULL, 171, NULL, 4, '2020-12-21 10:23:17', NULL),
(3379, 28, '6.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3380, 23, '10.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3381, 51, '10.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3382, 50, '10.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3383, 28, '0.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3384, 23, '0.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3385, 51, '0.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3386, 50, '0.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3387, 28, '6.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3388, 23, '10.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3389, 51, '10.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3390, 50, '10.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3391, 28, '0.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3392, 23, '0.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3393, 51, '0.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3394, 50, '0.000', 19, NULL, NULL, 149, NULL, 4, '2020-12-21 10:26:31', NULL),
(3410, 28, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3411, 23, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3412, 51, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3413, 50, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3417, 28, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3418, 23, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3419, 51, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3420, 50, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3424, 28, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3425, 23, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3426, 51, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3427, 50, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3431, 28, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3432, 23, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3433, 51, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3434, 50, '0.000', 18, NULL, NULL, 172, NULL, 4, '2020-12-21 10:31:27', NULL),
(3438, 28, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3439, 23, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3440, 51, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3441, 50, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3442, 28, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3443, 23, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3444, 51, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3445, 50, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3446, 28, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3447, 23, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3448, 51, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3449, 50, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3450, 28, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3451, 23, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3452, 51, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3453, 50, '0.000', 19, NULL, NULL, 172, NULL, 4, '2020-12-22 08:52:17', NULL),
(3469, 28, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3470, 23, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3471, 51, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3472, 50, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3476, 28, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3477, 23, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3478, 51, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3479, 50, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3483, 28, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3484, 23, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3485, 51, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3486, 50, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3490, 28, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3491, 23, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3492, 51, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3493, 50, '0.000', 18, NULL, NULL, 173, NULL, 4, '2020-12-22 08:54:09', NULL),
(3494, 28, '29.400', 19, NULL, NULL, 168, NULL, 4, '2020-12-24 04:48:44', NULL),
(3495, 23, '49.000', 19, NULL, NULL, 168, NULL, 4, '2020-12-24 04:48:44', NULL),
(3496, 51, '49.000', 19, NULL, NULL, 168, NULL, 4, '2020-12-24 04:48:44', NULL),
(3497, 50, '49.000', 19, NULL, NULL, 168, NULL, 4, '2020-12-24 04:48:44', NULL);
INSERT INTO `insumos_mov` (`id_movimiento`, `id_insumo`, `cantidad`, `id_cuenta`, `id_orden`, `id_compra`, `id_orden_fin`, `id_ajuste_stock`, `id_usuario`, `fecha_movimiento`, `descripcion`) VALUES
(3501, 28, '-3.600', 18, NULL, NULL, 174, NULL, 4, '2020-12-24 04:51:23', NULL),
(3502, 23, '-6.000', 18, NULL, NULL, 174, NULL, 4, '2020-12-24 04:51:23', NULL),
(3503, 51, '-6.000', 18, NULL, NULL, 174, NULL, 4, '2020-12-24 04:51:23', NULL),
(3504, 50, '-6.000', 18, NULL, NULL, 174, NULL, 4, '2020-12-24 04:51:23', NULL),
(3508, 28, '-5.400', 18, NULL, NULL, 175, NULL, 4, '2020-12-24 04:53:57', NULL),
(3509, 23, '-9.000', 18, NULL, NULL, 175, NULL, 4, '2020-12-24 04:53:57', NULL),
(3510, 53, '-9.000', 18, NULL, NULL, 175, NULL, 4, '2020-12-24 04:53:57', NULL),
(3511, 28, '-4.200', 18, NULL, NULL, 176, NULL, 4, '2020-12-24 04:56:35', NULL),
(3512, 23, '-7.000', 18, NULL, NULL, 176, NULL, 4, '2020-12-24 04:56:35', NULL),
(3513, 52, '-7.000', 18, NULL, NULL, 176, NULL, 4, '2020-12-24 04:56:35', NULL),
(3514, 33, '-3.000', 18, NULL, NULL, 177, NULL, 4, '2020-12-24 05:12:30', NULL),
(3515, 60, '-3.000', 18, NULL, NULL, 177, NULL, 4, '2020-12-24 05:12:30', NULL),
(3516, 33, '11.000', 19, NULL, NULL, 171, NULL, 4, '2020-12-29 02:58:34', NULL),
(3517, 58, '0.000', 19, NULL, NULL, 171, NULL, 4, '2020-12-29 02:58:34', NULL),
(3518, 57, '11.000', 19, NULL, NULL, 171, NULL, 4, '2020-12-29 02:58:34', NULL),
(3519, 34, '43.343', 6, 144, NULL, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(3520, 3, '0.146', 6, 144, NULL, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(3521, 57, '43.289', 6, 144, NULL, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(3522, 22, '48.700', 6, 144, NULL, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(3523, 33, '10.000', 6, 144, NULL, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(3524, 58, '0.000', 6, 144, NULL, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(3525, 57, '10.000', 6, 144, NULL, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(3526, 34, '0.000', 6, 144, NULL, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(3527, 58, '0.000', 6, 144, NULL, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(3528, 57, '0.000', 6, 144, NULL, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(3529, 65, '0.000', 6, 144, NULL, NULL, NULL, 4, '2020-12-29 03:03:23', NULL),
(3530, 32, '0.000', 2, 183, NULL, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(3531, 44, '0.000', 2, 183, NULL, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(3532, 26, '-30.000', 2, 183, NULL, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(3533, 11, '-0.023', 2, 183, NULL, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(3534, 9, '-0.045', 2, 183, NULL, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(3535, 4, '-0.090', 2, 183, NULL, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(3536, 67, '-1.800', 2, 183, NULL, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(3537, 29, '-30.000', 2, 183, NULL, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(3538, 14, '-0.450', 2, 183, NULL, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(3539, 43, '-50.000', 2, 183, NULL, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(3540, 32, '-50.000', 2, 183, NULL, NULL, NULL, 4, '2021-01-07 02:23:25', NULL),
(3541, 8, '-0.084', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3542, 32, '-43.260', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3543, 42, '-43.077', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3544, 25, '-27.720', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3545, 11, '-0.021', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3546, 9, '-0.042', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3547, 5, '-0.042', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3548, 67, '-1.680', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3549, 29, '-28.000', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3550, 14, '-0.420', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3551, 41, '-47.000', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3552, 32, '-47.000', 2, 184, NULL, NULL, NULL, 4, '2021-01-07 02:25:08', NULL),
(3553, 22, '352.340', 8, NULL, NULL, NULL, 32, 4, '2021-01-07 12:27:33', NULL),
(3554, 23, '309.240', 8, NULL, NULL, NULL, 32, 4, '2021-01-07 12:27:33', NULL),
(3555, 33, '-19.250', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3556, 54, '-19.250', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3557, 22, '-3.850', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3558, 27, '-2.188', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3559, 66, '-0.021', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3560, 22, '-4.000', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3561, 33, '-4.000', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3562, 55, '-4.000', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3563, 54, '-4.000', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3564, 22, '0.000', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3565, 34, '0.000', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3566, 56, '0.000', 2, 185, NULL, NULL, NULL, 4, '2021-01-07 12:29:19', NULL),
(3567, 23, '14.000', 19, NULL, NULL, 169, NULL, 4, '2021-01-13 02:13:18', NULL),
(3568, 22, '14.000', 19, NULL, NULL, 169, NULL, 4, '2021-01-13 02:13:18', NULL),
(3569, 33, '14.000', 19, NULL, NULL, 169, NULL, 4, '2021-01-13 02:13:18', NULL),
(3570, 23, '-2.000', 18, NULL, NULL, 178, NULL, 4, '2021-01-13 02:45:12', NULL),
(3571, 22, '-2.000', 18, NULL, NULL, 178, NULL, 4, '2021-01-13 02:45:12', NULL),
(3572, 33, '-2.000', 18, NULL, NULL, 178, NULL, 4, '2021-01-13 02:45:12', NULL),
(3573, 33, '4000.000', 10, NULL, 14, NULL, NULL, 4, '2021-01-19 02:42:06', NULL),
(3574, 32, '2000.000', 10, NULL, 14, NULL, NULL, 4, '2021-01-19 02:42:06', NULL),
(3575, 8, '-0.120', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3576, 32, '-61.800', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3577, 42, '-61.538', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3578, 25, '-39.600', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3579, 11, '-0.030', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3580, 9, '-0.060', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3581, 5, '-0.060', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3582, 67, '-2.400', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3583, 29, '-40.000', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3584, 14, '-0.600', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3585, 41, '-67.000', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3586, 32, '-67.000', 2, 186, NULL, NULL, NULL, 4, '2021-01-20 02:54:00', NULL),
(3587, 32, '0.000', 2, 187, NULL, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(3588, 44, '0.000', 2, 187, NULL, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(3589, 26, '-40.000', 2, 187, NULL, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(3590, 11, '-0.030', 2, 187, NULL, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(3591, 9, '-0.060', 2, 187, NULL, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(3592, 4, '-0.120', 2, 187, NULL, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(3593, 67, '-2.400', 2, 187, NULL, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(3594, 29, '-40.000', 2, 187, NULL, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(3595, 14, '-0.600', 2, 187, NULL, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(3596, 43, '-67.000', 2, 187, NULL, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(3597, 32, '-67.000', 2, 187, NULL, NULL, NULL, 4, '2021-01-20 02:56:10', NULL),
(3598, 8, '-0.040', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3599, 12, '-0.016', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3600, 13, '-0.060', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3601, 32, '-151.600', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3602, 47, '-151.515', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3603, 26, '-20.000', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3604, 11, '-0.010', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3605, 9, '-0.020', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3606, 7, '-0.100', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3607, 4, '-0.050', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3608, 16, '-0.440', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3609, 31, '-18.182', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3610, 15, '-0.200', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3611, 63, '-182.000', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3612, 46, '-182.000', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3613, 62, '0.000', 2, 188, NULL, NULL, NULL, 4, '2021-01-20 02:59:40', NULL),
(3614, 8, '-0.024', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3615, 33, '-5.170', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3616, 3, '-0.035', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3617, 56, '-5.222', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3618, 22, '-11.750', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3619, 7, '-0.059', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3620, 4, '-0.035', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3621, 27, '-3.672', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3622, 23, '-7.000', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3623, 22, '-7.000', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3624, 33, '-7.000', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3625, 22, '0.000', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3626, 34, '0.000', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3627, 56, '0.000', 2, 189, NULL, NULL, NULL, 4, '2021-01-26 18:32:58', NULL),
(3628, 34, '-15.486', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3629, 3, '-0.052', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3630, 57, '-15.467', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3631, 22, '-17.400', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3632, 33, '-4.000', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3633, 58, '0.000', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3634, 57, '-4.000', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3635, 34, '0.000', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3636, 58, '0.000', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3637, 57, '0.000', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3638, 65, '0.000', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3639, 33, '0.000', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3640, 58, '0.000', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3641, 57, '0.000', 2, 190, NULL, NULL, NULL, 4, '2021-01-26 18:36:10', NULL),
(3642, 28, '7.062', 8, NULL, NULL, NULL, 33, 4, '2021-01-26 18:42:38', NULL),
(3643, 11, '0.294', 8, NULL, NULL, NULL, 34, 4, '2021-01-26 18:43:16', NULL),
(3644, 28, '20.000', 8, NULL, NULL, NULL, 35, 4, '2021-01-26 18:45:18', NULL),
(3645, 34, '-99.450', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3646, 50, '-99.450', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3647, 23, '-6.120', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3648, 28, '-4.284', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3649, 66, '-0.092', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3650, 28, '-3.600', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3651, 23, '-6.000', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3652, 51, '-6.000', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3653, 50, '-6.000', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3654, 28, '0.000', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3655, 23, '0.000', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3656, 51, '0.000', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3657, 50, '0.000', 2, 191, NULL, NULL, NULL, 4, '2021-01-26 18:47:43', NULL),
(3658, 8, '-0.130', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3659, 32, '-133.250', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3660, 40, '-133.250', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3661, 24, '-42.900', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3662, 11, '-0.033', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3663, 9, '-0.065', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3664, 7, '-0.520', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3665, 67, '-2.600', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3666, 29, '-43.334', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3667, 14, '-0.650', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3668, 39, '-72.000', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3669, 32, '-72.000', 2, 192, NULL, NULL, NULL, 4, '2021-01-26 18:51:12', NULL),
(3670, 8, '-0.130', 2, 193, NULL, NULL, NULL, 4, '2021-01-26 18:52:02', NULL),
(3671, 49, '-154.700', 2, 193, NULL, NULL, NULL, 4, '2021-01-26 18:52:02', NULL),
(3672, 26, '-65.000', 2, 193, NULL, NULL, NULL, 4, '2021-01-26 18:52:02', NULL),
(3673, 11, '-0.033', 2, 193, NULL, NULL, NULL, 4, '2021-01-26 18:52:02', NULL),
(3674, 9, '-0.065', 2, 193, NULL, NULL, NULL, 4, '2021-01-26 18:52:02', NULL),
(3675, 7, '-0.520', 2, 193, NULL, NULL, NULL, 4, '2021-01-26 18:52:02', NULL),
(3676, 67, '-2.600', 2, 193, NULL, NULL, NULL, 4, '2021-01-26 18:52:02', NULL),
(3677, 30, '-46.429', 2, 193, NULL, NULL, NULL, 4, '2021-01-26 18:52:02', NULL),
(3678, 14, '-0.650', 2, 193, NULL, NULL, NULL, 4, '2021-01-26 18:52:02', NULL),
(3679, 26, '-26.850', 2, 193, NULL, NULL, NULL, 4, '2021-01-26 18:52:02', NULL),
(3680, 49, '-179.000', 2, 193, NULL, NULL, NULL, 4, '2021-01-26 18:52:02', NULL),
(3681, 16, '0.000', 2, 194, NULL, NULL, NULL, 4, '2021-01-26 19:02:14', NULL),
(3682, 16, '0.000', 2, 194, NULL, NULL, NULL, 4, '2021-01-26 19:02:14', NULL),
(3683, 43, '-47.000', 18, NULL, NULL, 179, NULL, 4, '2021-01-28 09:10:01', NULL),
(3684, 32, '-47.000', 18, NULL, NULL, 179, NULL, 4, '2021-01-28 09:10:01', NULL),
(3686, 41, '-44.000', 18, NULL, NULL, 180, NULL, 4, '2021-01-28 09:16:11', NULL),
(3687, 32, '-44.000', 18, NULL, NULL, 180, NULL, 4, '2021-01-28 09:16:11', NULL),
(3689, 33, '-101.000', 18, NULL, NULL, 181, NULL, 4, '2021-01-29 16:51:42', NULL),
(3690, 58, '0.000', 18, NULL, NULL, 181, NULL, 4, '2021-01-29 16:51:42', NULL),
(3691, 57, '-101.000', 18, NULL, NULL, 181, NULL, 4, '2021-01-29 16:51:42', NULL),
(3692, 33, '3.000', 19, NULL, NULL, 177, NULL, 4, '2021-01-29 16:53:38', NULL),
(3693, 60, '3.000', 19, NULL, NULL, 177, NULL, 4, '2021-01-29 16:53:38', NULL),
(3695, 33, '-91.000', 18, NULL, NULL, 182, NULL, 4, '2021-01-29 16:57:03', NULL),
(3696, 60, '-91.000', 18, NULL, NULL, 182, NULL, 4, '2021-01-29 16:57:03', NULL),
(3697, 33, '-10.000', 19, NULL, NULL, 170, NULL, 4, '2021-02-02 02:43:54', NULL),
(3698, 58, '0.000', 19, NULL, NULL, 170, NULL, 4, '2021-02-02 02:43:54', NULL),
(3699, 57, '-10.000', 19, NULL, NULL, 170, NULL, 4, '2021-02-02 02:43:54', NULL),
(3700, 33, '-58.000', 18, NULL, NULL, 183, NULL, 4, '2021-02-02 02:47:18', NULL),
(3701, 58, '0.000', 18, NULL, NULL, 183, NULL, 4, '2021-02-02 02:47:18', NULL),
(3702, 57, '-58.000', 18, NULL, NULL, 183, NULL, 4, '2021-02-02 02:47:18', NULL),
(3703, 28, '5.400', 19, NULL, NULL, 175, NULL, 4, '2021-02-02 03:08:50', NULL),
(3704, 23, '9.000', 19, NULL, NULL, 175, NULL, 4, '2021-02-02 03:08:50', NULL),
(3705, 53, '9.000', 19, NULL, NULL, 175, NULL, 4, '2021-02-02 03:08:50', NULL),
(3706, 28, '-2.400', 18, NULL, NULL, 184, NULL, 4, '2021-02-02 03:11:39', NULL),
(3707, 23, '-4.000', 18, NULL, NULL, 184, NULL, 4, '2021-02-02 03:11:39', NULL),
(3708, 53, '-4.000', 18, NULL, NULL, 184, NULL, 4, '2021-02-02 03:11:39', NULL),
(3709, 11, '0.500', 10, NULL, 15, NULL, NULL, 4, '2021-02-03 09:20:03', NULL),
(3710, 16, '125.000', 10, NULL, 15, NULL, NULL, 4, '2021-02-03 09:20:03', NULL),
(3711, 26, '3.900', 18, NULL, NULL, 185, NULL, 4, '2021-02-04 02:56:19', NULL),
(3712, 49, '26.000', 18, NULL, NULL, 185, NULL, 4, '2021-02-04 02:56:19', NULL),
(3714, 5, '0.612', 8, NULL, NULL, NULL, 36, 4, '2021-02-04 02:59:11', NULL),
(3715, 8, '-0.116', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3716, 32, '-59.740', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3717, 42, '-59.487', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3718, 25, '-38.280', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3719, 11, '-0.029', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3720, 9, '-0.058', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3721, 5, '-0.058', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3722, 67, '-2.320', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3723, 29, '-38.667', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3724, 14, '-0.580', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3725, 41, '-64.000', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3726, 32, '-64.000', 2, 195, NULL, NULL, NULL, 4, '2021-02-04 03:02:23', NULL),
(3727, 32, '0.000', 2, 196, NULL, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(3728, 44, '0.000', 2, 196, NULL, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(3729, 26, '-36.667', 2, 196, NULL, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(3730, 11, '-0.028', 2, 196, NULL, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(3731, 9, '-0.055', 2, 196, NULL, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(3732, 4, '-0.110', 2, 196, NULL, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(3733, 67, '-2.200', 2, 196, NULL, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(3734, 29, '-36.667', 2, 196, NULL, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(3735, 14, '-0.550', 2, 196, NULL, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(3736, 43, '-61.000', 2, 196, NULL, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(3737, 32, '-61.000', 2, 196, NULL, NULL, NULL, 4, '2021-02-04 03:04:09', NULL),
(3738, 8, '-0.110', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3739, 32, '-112.750', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3740, 40, '-112.750', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3741, 24, '-36.300', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3742, 11, '-0.028', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3743, 9, '-0.055', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3744, 7, '-0.440', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3745, 67, '-2.200', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3746, 29, '-36.667', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3747, 14, '-0.550', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3748, 39, '-61.000', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3749, 32, '-61.000', 2, 197, NULL, NULL, NULL, 4, '2021-02-04 03:05:45', NULL),
(3750, 8, '-0.110', 2, 198, NULL, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(3751, 49, '-130.900', 2, 198, NULL, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(3752, 26, '-55.000', 2, 198, NULL, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(3753, 11, '-0.028', 2, 198, NULL, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(3754, 9, '-0.055', 2, 198, NULL, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(3755, 7, '-0.440', 2, 198, NULL, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(3756, 67, '-2.200', 2, 198, NULL, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(3757, 30, '-39.286', 2, 198, NULL, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(3758, 14, '-0.550', 2, 198, NULL, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(3759, 26, '-22.800', 2, 198, NULL, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(3760, 49, '-152.000', 2, 198, NULL, NULL, NULL, 4, '2021-02-04 03:08:46', NULL),
(3761, 33, '-50.050', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3762, 54, '-50.050', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3763, 22, '-10.010', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3764, 27, '-5.688', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3765, 66, '-0.055', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3766, 22, '-10.000', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3767, 33, '-10.000', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3768, 55, '-10.000', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3769, 54, '-10.000', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3770, 22, '0.000', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3771, 34, '0.000', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3772, 56, '0.000', 2, 199, NULL, NULL, NULL, 4, '2021-02-04 03:10:52', NULL),
(3773, 34, '-63.040', 2, 200, NULL, NULL, NULL, 4, '2021-02-04 03:14:31', NULL),
(3774, 57, '-63.040', 2, 200, NULL, NULL, NULL, 4, '2021-02-04 03:14:31', NULL),
(3775, 66, '-0.059', 2, 200, NULL, NULL, NULL, 4, '2021-02-04 03:14:31', NULL),
(3776, 33, '-4.000', 2, 200, NULL, NULL, NULL, 4, '2021-02-04 03:14:31', NULL),
(3777, 58, '0.000', 2, 200, NULL, NULL, NULL, 4, '2021-02-04 03:14:31', NULL),
(3778, 57, '-4.000', 2, 200, NULL, NULL, NULL, 4, '2021-02-04 03:14:31', NULL),
(3779, 34, '0.000', 2, 200, NULL, NULL, NULL, 4, '2021-02-04 03:14:31', NULL),
(3780, 58, '0.000', 2, 200, NULL, NULL, NULL, 4, '2021-02-04 03:14:31', NULL),
(3781, 57, '0.000', 2, 200, NULL, NULL, NULL, 4, '2021-02-04 03:14:31', NULL),
(3782, 65, '0.000', 2, 200, NULL, NULL, NULL, 4, '2021-02-04 03:14:31', NULL),
(3783, 34, '-147.875', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3784, 50, '-147.875', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3785, 23, '-9.100', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3786, 28, '-6.370', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3787, 66, '-0.137', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3788, 28, '-5.400', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3789, 23, '-9.000', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3790, 51, '-9.000', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3791, 50, '-9.000', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3792, 28, '0.000', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3793, 23, '0.000', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3794, 51, '0.000', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3795, 50, '0.000', 2, 201, NULL, NULL, NULL, 4, '2021-02-04 03:16:03', NULL),
(3796, 56, '-192.628', 8, NULL, NULL, NULL, 37, 4, '2021-02-04 12:06:17', NULL),
(3797, 54, '-8608.274', 8, NULL, NULL, NULL, 37, 4, '2021-02-04 12:06:17', NULL),
(3798, 53, '-157.992', 8, NULL, NULL, NULL, 37, 4, '2021-02-04 12:06:17', NULL),
(3799, 52, '-160.658', 8, NULL, NULL, NULL, 37, 4, '2021-02-04 12:06:18', NULL),
(3800, 50, '-8204.507', 8, NULL, NULL, NULL, 37, 4, '2021-02-04 12:06:18', NULL),
(3801, 58, '-9600.000', 8, NULL, NULL, NULL, 37, 4, '2021-02-04 12:06:18', NULL),
(3802, 49, '330.600', 8, NULL, NULL, NULL, 37, 4, '2021-02-04 12:06:18', NULL),
(3803, 44, '-255.000', 8, NULL, NULL, NULL, 37, 4, '2021-02-04 12:06:18', NULL),
(3804, 40, '164.000', 8, NULL, NULL, NULL, 37, 4, '2021-02-04 12:06:18', NULL),
(3805, 42, '87.102', 8, NULL, NULL, NULL, 37, 4, '2021-02-04 12:06:18', NULL),
(3806, 26, '2.700', 18, NULL, NULL, 187, NULL, 4, '2021-02-16 11:50:54', NULL),
(3807, 49, '18.000', 18, NULL, NULL, 187, NULL, 4, '2021-02-16 11:50:54', NULL),
(3809, 29, '1000.000', 10, NULL, 16, NULL, NULL, 4, '2021-02-19 13:45:10', NULL),
(3810, 67, '80.000', 10, NULL, 16, NULL, NULL, 4, '2021-02-19 13:45:11', NULL),
(3811, 39, '-66.000', 18, NULL, NULL, 188, NULL, 4, '2021-02-25 16:56:05', NULL),
(3812, 32, '-66.000', 18, NULL, NULL, 188, NULL, 4, '2021-02-25 16:56:05', NULL),
(3814, 41, '-63.000', 18, NULL, NULL, 189, NULL, 4, '2021-02-25 17:00:24', NULL),
(3815, 32, '-63.000', 18, NULL, NULL, 189, NULL, 4, '2021-02-25 17:00:24', NULL),
(3817, 43, '-66.000', 18, NULL, NULL, 190, NULL, 4, '2021-02-25 17:04:18', NULL),
(3818, 32, '-66.000', 18, NULL, NULL, 190, NULL, 4, '2021-02-25 17:04:18', NULL),
(3820, 41, '-47.000', 18, NULL, NULL, 191, NULL, 4, '2021-02-27 08:03:08', NULL),
(3821, 32, '-47.000', 18, NULL, NULL, 191, NULL, 4, '2021-02-27 08:03:08', NULL),
(3823, 43, '-43.000', 18, NULL, NULL, 192, NULL, 4, '2021-02-27 08:05:28', NULL),
(3824, 32, '-43.000', 18, NULL, NULL, 192, NULL, 4, '2021-02-27 08:05:28', NULL),
(3826, 39, '-48.000', 18, NULL, NULL, 193, NULL, 4, '2021-02-27 08:08:48', NULL),
(3827, 32, '-48.000', 18, NULL, NULL, 193, NULL, 4, '2021-02-27 08:08:48', NULL),
(3828, 8, '-0.110', 2, 202, NULL, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(3829, 49, '-130.900', 2, 202, NULL, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(3830, 26, '-55.000', 2, 202, NULL, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(3831, 11, '-0.028', 2, 202, NULL, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(3832, 9, '-0.055', 2, 202, NULL, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(3833, 7, '-0.440', 2, 202, NULL, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(3834, 67, '-2.200', 2, 202, NULL, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(3835, 30, '-39.286', 2, 202, NULL, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(3836, 14, '-0.550', 2, 202, NULL, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(3837, 26, '-22.800', 2, 202, NULL, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(3838, 49, '-152.000', 2, 202, NULL, NULL, NULL, 4, '2021-03-01 18:55:21', NULL),
(3839, 40, '1000.000', 10, NULL, 17, NULL, NULL, 4, '2021-03-01 19:02:17', NULL),
(3840, 42, '1000.000', 10, NULL, 17, NULL, NULL, 4, '2021-03-01 19:02:17', NULL),
(3841, 44, '1000.000', 10, NULL, 17, NULL, NULL, 4, '2021-03-01 19:02:17', NULL),
(3842, 49, '1000.000', 10, NULL, 17, NULL, NULL, 4, '2021-03-01 19:02:17', NULL),
(3843, 57, '750.000', 10, NULL, 17, NULL, NULL, 4, '2021-03-01 19:02:17', NULL),
(3844, 60, '500.000', 10, NULL, 17, NULL, NULL, 4, '2021-03-01 19:02:17', NULL),
(3845, 54, '500.000', 10, NULL, 17, NULL, NULL, 4, '2021-03-01 19:02:17', NULL),
(3846, 56, '500.000', 10, NULL, 17, NULL, NULL, 4, '2021-03-01 19:02:17', NULL),
(3847, 50, '750.000', 10, NULL, 18, NULL, NULL, 4, '2021-03-01 19:04:39', NULL),
(3848, 52, '750.000', 10, NULL, 18, NULL, NULL, 4, '2021-03-01 19:04:39', NULL),
(3849, 53, '750.000', 10, NULL, 18, NULL, NULL, 4, '2021-03-01 19:04:39', NULL),
(3850, 8, '-0.200', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3851, 32, '-205.000', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3852, 40, '-205.000', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3853, 24, '-66.000', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3854, 11, '-0.050', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3855, 9, '-0.100', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3856, 7, '-0.800', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3857, 67, '-4.000', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3858, 29, '-66.667', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3859, 14, '-1.000', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3860, 39, '-111.000', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3861, 32, '-111.000', 2, 203, NULL, NULL, NULL, 4, '2021-03-01 19:07:33', NULL),
(3862, 8, '-0.200', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3863, 32, '-103.000', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3864, 42, '-102.564', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3865, 25, '-66.000', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3866, 11, '-0.050', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3867, 9, '-0.100', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3868, 5, '-0.100', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3869, 67, '-4.000', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3870, 29, '-66.667', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3871, 14, '-1.000', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3872, 41, '-111.000', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3873, 32, '-111.000', 2, 204, NULL, NULL, NULL, 4, '2021-03-01 19:09:33', NULL),
(3874, 8, '-0.200', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3875, 32, '-103.000', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3876, 42, '-102.564', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3877, 25, '-66.000', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3878, 11, '-0.050', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3879, 9, '-0.100', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3880, 5, '-0.100', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3881, 67, '-4.000', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3882, 29, '-66.667', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3883, 14, '-1.000', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3884, 41, '-111.000', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3885, 32, '-111.000', 2, 205, NULL, NULL, NULL, 4, '2021-03-01 19:09:34', NULL),
(3886, 8, '0.200', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3887, 32, '103.000', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3888, 42, '102.564', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3889, 25, '66.000', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3890, 11, '0.050', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3891, 9, '0.100', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3892, 5, '0.100', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3893, 67, '4.000', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3894, 29, '66.667', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3895, 14, '1.000', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3896, 41, '111.000', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3897, 32, '111.000', 6, 205, NULL, NULL, NULL, 4, '2021-03-01 19:10:43', NULL),
(3901, 32, '0.000', 2, 206, NULL, NULL, NULL, 4, '2021-03-01 19:12:37', NULL),
(3902, 44, '0.000', 2, 206, NULL, NULL, NULL, 4, '2021-03-01 19:12:37', NULL),
(3903, 26, '-66.667', 2, 206, NULL, NULL, NULL, 4, '2021-03-01 19:12:37', NULL),
(3904, 11, '-0.050', 2, 206, NULL, NULL, NULL, 4, '2021-03-01 19:12:37', NULL),
(3905, 9, '-0.100', 2, 206, NULL, NULL, NULL, 4, '2021-03-01 19:12:37', NULL),
(3906, 4, '-0.200', 2, 206, NULL, NULL, NULL, 4, '2021-03-01 19:12:37', NULL),
(3907, 67, '-4.000', 2, 206, NULL, NULL, NULL, 4, '2021-03-01 19:12:37', NULL),
(3908, 29, '-66.667', 2, 206, NULL, NULL, NULL, 4, '2021-03-01 19:12:37', NULL),
(3909, 14, '-1.000', 2, 206, NULL, NULL, NULL, 4, '2021-03-01 19:12:37', NULL),
(3910, 43, '-111.000', 2, 206, NULL, NULL, NULL, 4, '2021-03-01 19:12:37', NULL),
(3911, 32, '-111.000', 2, 206, NULL, NULL, NULL, 4, '2021-03-01 19:12:37', NULL),
(3912, 15, '1.730', 8, NULL, NULL, NULL, 38, 4, '2021-03-01 19:16:26', NULL),
(3913, 8, '-0.250', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3914, 12, '-0.080', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3915, 13, '-0.300', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3916, 32, '-103.000', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3917, 38, '-0.600', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3918, 36, '-0.050', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3919, 45, '-102.564', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3920, 26, '-66.667', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3921, 20, '-0.030', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3922, 21, '-0.015', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3923, 11, '-0.050', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3924, 9, '-0.150', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3925, 6, '-0.150', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3926, 4, '-0.250', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3927, 16, '-2.400', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3928, 29, '-66.667', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3929, 15, '-1.000', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3930, 45, '-111.000', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3931, 32, '-111.000', 2, 207, NULL, NULL, NULL, 4, '2021-03-01 19:18:53', NULL),
(3932, 8, '-0.110', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3933, 34, '-176.000', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3934, 60, '-176.000', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3935, 7, '-0.275', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3936, 4, '-0.165', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3937, 66, '-0.165', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3938, 33, '-11.000', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3939, 60, '-11.000', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3940, 34, '0.000', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3941, 60, '0.000', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3942, 56, '0.000', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3943, 65, '0.000', 2, 208, NULL, NULL, NULL, 4, '2021-03-01 19:20:49', NULL),
(3944, 8, '-0.076', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3945, 33, '-104.500', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3946, 56, '-104.669', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3947, 22, '-20.900', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3948, 7, '-0.190', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3949, 4, '-0.114', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3950, 27, '-11.875', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3951, 66, '-0.114', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3952, 23, '-21.000', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3953, 22, '-21.000', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3954, 33, '-21.000', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3955, 22, '0.000', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3956, 34, '0.000', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3957, 56, '0.000', 2, 209, NULL, NULL, NULL, 4, '2021-03-01 19:26:54', NULL),
(3958, 8, '-0.052', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3959, 34, '-84.500', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3960, 52, '-84.500', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3961, 9, '-0.052', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3962, 23, '-5.200', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3963, 4, '-0.078', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3964, 28, '-3.640', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3965, 66, '-0.078', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3966, 28, '-3.000', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3967, 23, '-5.000', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3968, 52, '-5.000', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3969, 28, '0.000', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3970, 23, '0.000', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3971, 52, '0.000', 2, 210, NULL, NULL, NULL, 4, '2021-03-01 19:28:49', NULL),
(3972, 34, '-84.500', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3973, 53, '-84.500', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3974, 23, '-5.200', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3975, 7, '-0.130', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3976, 4, '-0.052', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3977, 28, '-3.640', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3978, 66, '-0.078', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3979, 28, '-3.000', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3980, 23, '-5.000', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3981, 53, '-5.000', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3982, 28, '0.000', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3983, 23, '0.000', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL),
(3984, 53, '0.000', 2, 211, NULL, NULL, NULL, 4, '2021-03-01 19:30:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_n`
--

DROP TABLE IF EXISTS `insumos_n`;
CREATE TABLE IF NOT EXISTS `insumos_n` (
  `id_insumo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `id_udm` int(11) NOT NULL,
  `id_deposito` int(11) NOT NULL,
  `alertaQmin` decimal(10,3) DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_insumo`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  UNIQUE KEY `id_insumo_UNIQUE` (`id_insumo`),
  KEY `id_udm_idx` (`id_udm`),
  KEY `id_deposito_idx` (`id_deposito`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `insumos_n`
--

INSERT INTO `insumos_n` (`id_insumo`, `nombre`, `id_udm`, `id_deposito`, `alertaQmin`, `activo`) VALUES
(1, 'COMPOSY - S', 1, 1, NULL, 1),
(2, 'CONPOSY - F', 1, 1, NULL, 1),
(3, 'CURA - SYN 1000', 1, 1, NULL, 1),
(4, 'PIMIENTA BLANCA MOLIDA', 1, 1, NULL, 1),
(5, 'PIMIENTA BLANCA PARTIDA', 1, 1, NULL, 1),
(6, 'PIMIENTA BLANCA EN GRANO', 1, 1, NULL, 1),
(7, 'PIMENTON', 1, 1, NULL, 1),
(8, 'AJI MOLIDO', 1, 1, NULL, 1),
(9, 'OREGANO', 1, 1, NULL, 1),
(10, 'CANELA', 1, 1, NULL, 1),
(11, 'NUEZ MOSCADA', 1, 1, NULL, 1),
(12, 'AJO EN POLVO', 1, 1, NULL, 1),
(13, 'AZUCAR', 1, 1, NULL, 1),
(14, 'VINO BLANCO DULCE', 2, 2, NULL, 1),
(15, 'VINO BLANCO', 2, 2, NULL, 1),
(16, 'SAL ENTREFINA', 1, 1, NULL, 1),
(17, 'SAL GRUESA', 1, 1, NULL, 1),
(18, 'CORIANDRO', 1, 1, NULL, 1),
(19, 'HINOJO', 1, 1, NULL, 1),
(20, 'NITRATO DE SODIO', 1, 1, NULL, 1),
(21, 'NITRITO DE SODIO', 1, 1, NULL, 1),
(22, 'PAPEL CELOFAN 45X49 500 UN.', 3, 1, NULL, 1),
(23, 'PAPEL CELOFAN JAMON 500 UN.', 3, 1, NULL, 1),
(24, 'HILO 3H BICOLOR R/B ROLLO', 4, 3, NULL, 1),
(25, 'HILO 3H BICOLOR A/B ROLLO', 4, 3, NULL, 1),
(26, 'HILO 3H AMARILLO ROLLO ', 4, 3, NULL, 1),
(27, 'RED DE BODIOLA', 4, 3, NULL, 1),
(28, 'RED DE JAMON', 4, 3, NULL, 1),
(29, 'TRIPA COLAGENO 45 500 MTS', 4, 3, NULL, 1),
(30, 'TRIPA NATURAL MADEJAS DE 30 MTS', 4, 3, NULL, 1),
(31, 'TRIPA CHINESCA 38/40 90 MTS.', 4, 3, NULL, 1),
(32, 'BOLSAS 7.5 X 35', 3, 3, NULL, 1),
(33, 'BOLSA VACIO 14 x 18', 3, 3, NULL, 1),
(34, 'BOLSA VACIO 25 x 18', 3, 3, NULL, 1),
(35, 'CONDIMENTO HAMBURGUESAS', 1, 1, NULL, 1),
(36, 'ERITORBATO DE SODIO', 1, 1, NULL, 1),
(37, 'TRIPOLIFOSFATO DE SODIO', 1, 1, NULL, 1),
(38, 'DEXTROSA', 1, 1, NULL, 1),
(39, 'ETIQUETAS SALAME ESPAÑOL', 3, 3, NULL, 1),
(40, 'ETIQUETAS SALAME ESPAÑOL 3', 3, 3, NULL, 1),
(41, 'ETIQUETAS SALAME ITALIANO', 3, 3, NULL, 1),
(42, 'ETIQUETAS SALAME ITALIANO 3', 3, 3, NULL, 1),
(43, 'ETIQUETAS SALAME CRIOLLO', 3, 3, NULL, 1),
(44, 'ETIQUETAS SALAME CRIOLLO 3', 3, 3, NULL, 1),
(45, 'ETIQUETAS SALAME ESPECIAL', 3, 3, NULL, 1),
(46, 'ETIQUETAS PARRILLERO 6', 3, 3, NULL, 1),
(47, 'ETIQUETAS PARRILLERO 3', 3, 3, NULL, 1),
(48, 'ETIQUETAS PARRILLERO', 3, 3, NULL, 1),
(49, 'ETIQUETAS IBERICO', 3, 3, NULL, 1),
(50, 'ETIQUETA JAMON NATURAL 3', 3, 3, NULL, 1),
(51, 'ETIQUETA JAMON NATURAL', 3, 3, NULL, 1),
(52, 'ETIQUETA JAMON ITALIANO', 3, 3, NULL, 1),
(53, 'ETIQUETA JAMON ESPAÑOL', 3, 3, NULL, 1),
(54, 'ETIQUETA BONDIOLA NATURAL 3', 3, 3, NULL, 1),
(55, 'ETIQUETA BONDIOLA NATURAL', 3, 3, NULL, 1),
(56, 'ETIQUETA BONDIOLA GOURMET', 3, 3, NULL, 1),
(57, 'ETIQUETA PANCETA NATURAL 3', 3, 3, NULL, 1),
(58, 'ETIQUETA PANCETA NATURAL', 3, 3, NULL, 1),
(59, 'ETIQUETA QUESO DE CERDO 3', 3, 3, NULL, 1),
(60, 'ETIQUETA PANCETA GOURMET', 3, 3, NULL, 1),
(61, 'ETIQUETA QUESO DE CERDO', 3, 3, NULL, 1),
(62, 'ETIQUETAS PARRILLERO 12', 3, 3, NULL, 1),
(63, 'BOLSA PARRILLERO X 6', 3, 3, NULL, 1),
(64, 'BOLSA PARRILLERO X 12', 3, 3, NULL, 1),
(65, 'BOLSA PANCETA ENTERA', 3, 3, NULL, 1),
(66, 'SAL DE CURA', 1, 1, NULL, 1),
(67, 'SALAMSHORT - INTEGRAL SALAME', 1, 1, NULL, 1);

--
-- Disparadores `insumos_n`
--
DROP TRIGGER IF EXISTS `insumos_n_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `insumos_n_AFTER_INSERT` AFTER INSERT ON `insumos_n` FOR EACH ROW BEGIN
INSERT INTO insumos_mov (id_insumo, cantidad,id_cuenta,id_usuario) VALUES (new.id_insumo, 0,1,1);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_productos`
--

DROP TABLE IF EXISTS `insumos_productos`;
CREATE TABLE IF NOT EXISTS `insumos_productos` (
  `id_prod_insumo` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_insumo` int(11) DEFAULT NULL,
  `cantidad` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id_prod_insumo`),
  KEY `prodinsum_id_producro_idx` (`id_producto`),
  KEY `prodinsum_id_insumo_idx` (`id_insumo`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `insumos_productos`
--

INSERT INTO `insumos_productos` (`id_prod_insumo`, `id_producto`, `id_insumo`, `cantidad`) VALUES
(1, 1, 39, '1.000'),
(2, 1, 32, '1.000'),
(3, 2, 33, '1.000'),
(4, 2, 40, '1.000'),
(5, 3, 41, '1.000'),
(6, 3, 32, '1.000'),
(7, 4, 33, '1.000'),
(8, 4, 42, '1.000'),
(9, 5, 43, '1.000'),
(10, 5, 32, '1.000'),
(11, 6, 33, '1.000'),
(12, 6, 44, '1.000'),
(13, 7, 45, '1.000'),
(14, 7, 32, '1.000'),
(15, 2, 45, '1.000'),
(16, 9, 63, '1.000'),
(17, 9, 46, '1.000'),
(18, 10, 64, '1.000'),
(19, 10, 62, '1.000'),
(20, 27, 26, '0.150'),
(21, 27, 49, '1.000'),
(23, 11, 22, '1.000'),
(24, 11, 33, '1.000'),
(25, 11, 55, '1.000'),
(26, 11, 54, '1.000'),
(28, 12, 22, '1.000'),
(29, 12, 34, '1.000'),
(30, 12, 56, '1.000'),
(32, 13, 23, '1.000'),
(33, 13, 22, '1.000'),
(34, 13, 33, '1.000'),
(36, 14, 22, '1.000'),
(37, 14, 34, '1.000'),
(38, 14, 56, '1.000'),
(39, 15, 33, '1.000'),
(40, 15, 58, '0.000'),
(41, 15, 57, '1.000'),
(42, 16, 34, '1.000'),
(43, 16, 58, '1.000'),
(44, 19, 57, '1.000'),
(45, 19, 65, '1.000'),
(46, 17, 33, '1.000'),
(47, 17, 60, '1.000'),
(48, 18, 34, '1.000'),
(49, 18, 60, '1.000'),
(50, 20, 56, '1.000'),
(51, 20, 65, '1.000'),
(52, 25, 28, '0.600'),
(53, 25, 23, '1.000'),
(54, 25, 51, '1.000'),
(55, 25, 50, '1.000'),
(56, 26, 28, '0.600'),
(57, 26, 23, '1.000'),
(58, 26, 51, '1.000'),
(59, 26, 50, '1.000'),
(60, 21, 28, '0.600'),
(61, 21, 23, '1.000'),
(62, 21, 53, '1.000'),
(63, 22, 28, '0.600'),
(64, 22, 23, '1.000'),
(65, 22, 53, '1.000'),
(66, 23, 28, '0.600'),
(67, 23, 23, '1.000'),
(68, 23, 52, '1.000'),
(69, 24, 28, '0.600'),
(70, 24, 23, '1.000'),
(71, 24, 52, '1.000'),
(72, 28, 16, '0.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_receta`
--

DROP TABLE IF EXISTS `insumos_receta`;
CREATE TABLE IF NOT EXISTS `insumos_receta` (
  `id_insrec` int(11) NOT NULL AUTO_INCREMENT,
  `id_receta` int(11) NOT NULL,
  `id_insumo` int(11) NOT NULL,
  `cantidad` decimal(10,3) NOT NULL,
  PRIMARY KEY (`id_insrec`),
  KEY `id_insumo_idx` (`id_insumo`),
  KEY `id_receta` (`id_receta`)
) ENGINE=InnoDB AUTO_INCREMENT=567 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `insumos_receta`
--

INSERT INTO `insumos_receta` (`id_insrec`, `id_receta`, `id_insumo`, `cantidad`) VALUES
(1, 101, 3, '1.000'),
(2, 101, 16, '1.300'),
(3, 101, 4, '0.300'),
(4, 101, 8, '0.200'),
(5, 101, 13, '0.300'),
(6, 101, 11, '0.050'),
(7, 101, 7, '0.800'),
(8, 101, 12, '0.080'),
(9, 101, 9, '0.100'),
(10, 101, 15, '1.000'),
(11, 103, 3, '1.000'),
(12, 103, 16, '1.300'),
(13, 103, 4, '0.150'),
(14, 103, 6, '0.150'),
(15, 103, 8, '0.200'),
(16, 103, 13, '0.300'),
(17, 103, 11, '0.050'),
(18, 103, 12, '0.080'),
(19, 103, 9, '0.100'),
(20, 103, 15, '1.000'),
(21, 102, 3, '1.000'),
(22, 102, 16, '1.300'),
(23, 102, 4, '0.500'),
(24, 102, 13, '0.300'),
(25, 102, 11, '0.050'),
(26, 102, 12, '0.080'),
(27, 102, 9, '0.100'),
(28, 102, 15, '1.000'),
(29, 104, 16, '2.400'),
(30, 104, 20, '0.030'),
(31, 104, 21, '0.015'),
(32, 104, 36, '0.050'),
(33, 104, 38, '0.600'),
(34, 104, 4, '0.250'),
(35, 104, 6, '0.150'),
(36, 104, 8, '0.250'),
(37, 104, 13, '0.300'),
(38, 104, 11, '0.050'),
(39, 104, 12, '0.080'),
(40, 104, 9, '0.150'),
(41, 104, 15, '1.000'),
(42, 110, 3, '0.300'),
(43, 110, 4, '0.200'),
(44, 110, 7, '0.500'),
(45, 111, 3, '0.300'),
(46, 111, 4, '0.300'),
(47, 111, 8, '0.200'),
(48, 111, 9, '0.200'),
(49, 109, 3, '0.300'),
(50, 100, 3, '1.000'),
(51, 100, 16, '1.300'),
(52, 100, 4, '0.300'),
(53, 100, 8, '0.200'),
(54, 100, 13, '0.300'),
(55, 100, 11, '0.050'),
(56, 100, 7, '0.800'),
(57, 100, 12, '0.080'),
(58, 100, 9, '0.100'),
(59, 100, 15, '1.000'),
(60, 105, 3, '0.300'),
(61, 106, 3, '0.300'),
(62, 106, 4, '0.300'),
(63, 106, 8, '0.200'),
(64, 106, 7, '0.500'),
(65, 107, 3, '0.300'),
(66, 108, 3, '0.300'),
(67, 108, 4, '0.300'),
(68, 108, 8, '0.200'),
(69, 108, 7, '0.500'),
(70, 113, 16, '2.200'),
(71, 113, 4, '0.250'),
(72, 113, 8, '0.200'),
(73, 113, 13, '0.300'),
(74, 113, 11, '0.050'),
(75, 113, 7, '0.500'),
(76, 113, 12, '0.080'),
(77, 113, 9, '0.100'),
(78, 113, 15, '1.000'),
(79, 113, 47, '757.576'),
(80, 101, 40, '205.128'),
(81, 103, 41, '102.564'),
(82, 102, 44, '102.564'),
(83, 104, 45, '102.564'),
(84, 110, 53, '166.667'),
(85, 111, 52, '166.667'),
(86, 109, 50, '166.667'),
(87, 100, 49, '238.095'),
(88, 105, 54, '44.444'),
(89, 106, 56, '44.444'),
(90, 107, 57, '88.889'),
(91, 108, 60, '88.889'),
(92, 113, 31, '90.909'),
(93, 101, 29, '66.667'),
(94, 103, 29, '66.667'),
(95, 102, 29, '66.667'),
(96, 104, 29, '66.667'),
(97, 100, 30, '71.429'),
(98, 113, 32, '758.000'),
(99, 101, 32, '205.000'),
(100, 103, 32, '103.000'),
(101, 102, 32, '103.000'),
(102, 104, 32, '103.000'),
(103, 110, 34, '167.000'),
(104, 111, 34, '167.000'),
(105, 109, 34, '167.000'),
(106, 100, 32, '238.000'),
(107, 105, 33, '44.000'),
(108, 106, 33, '44.000'),
(109, 107, 34, '89.000'),
(110, 108, 34, '89.000'),
(111, 110, 28, '50.000'),
(112, 111, 28, '50.000'),
(113, 109, 28, '50.000'),
(114, 105, 27, '31.250'),
(115, 106, 27, '31.250'),
(116, 110, 23, '40.000'),
(117, 111, 23, '40.000'),
(118, 109, 23, '40.000'),
(119, 105, 22, '100.000'),
(120, 106, 22, '100.000'),
(121, 107, 22, '100.000'),
(122, 108, 22, '100.000'),
(123, 110, 24, '66.667'),
(124, 111, 25, '66.667'),
(125, 102, 26, '66.667'),
(126, 100, 26, '100.000'),
(127, 113, 26, '100.000'),
(128, 104, 26, '66.667'),
(129, 114, 8, '0.200'),
(130, 114, 12, '0.080'),
(131, 114, 13, '0.300'),
(132, 114, 11, '0.050'),
(133, 114, 9, '0.100'),
(134, 114, 7, '0.800'),
(135, 114, 4, '0.300'),
(136, 114, 14, '1.000'),
(137, 114, 49, '238.000'),
(138, 114, 1, '5.000'),
(139, 114, 26, '100.000'),
(140, 114, 30, '71.429'),
(141, 115, 12, '0.080'),
(142, 115, 13, '0.300'),
(143, 115, 32, '103.000'),
(144, 115, 44, '102.564'),
(145, 115, 26, '66.667'),
(146, 115, 11, '0.050'),
(147, 115, 9, '0.100'),
(148, 115, 4, '0.500'),
(149, 115, 29, '66.667'),
(150, 115, 14, '1.000'),
(151, 115, 1, '5.000'),
(152, 116, 8, '0.200'),
(153, 116, 12, '0.080'),
(154, 116, 13, '0.300'),
(155, 116, 32, '205.000'),
(156, 116, 40, '205.000'),
(157, 116, 11, '0.050'),
(158, 116, 9, '0.100'),
(159, 116, 7, '0.800'),
(160, 116, 4, '0.300'),
(161, 116, 29, '66.667'),
(162, 116, 14, '1.000'),
(163, 116, 1, '5.000'),
(164, 117, 8, '0.200'),
(165, 117, 12, '0.080'),
(166, 117, 13, '0.300'),
(167, 117, 32, '103.000'),
(168, 117, 42, '102.564'),
(169, 117, 11, '0.050'),
(170, 117, 9, '0.100'),
(171, 117, 6, '0.150'),
(172, 117, 4, '0.150'),
(173, 117, 29, '66.667'),
(174, 117, 14, '1.000'),
(175, 117, 1, '5.000'),
(176, 118, 16, '2.400'),
(177, 118, 20, '0.030'),
(178, 118, 21, '0.015'),
(179, 118, 36, '0.050'),
(180, 118, 37, '0.300'),
(181, 118, 38, '0.600'),
(182, 118, 4, '0.500'),
(183, 118, 13, '0.300'),
(184, 118, 11, '0.050'),
(185, 118, 9, '0.100'),
(186, 118, 12, '0.080'),
(187, 118, 14, '1.000'),
(188, 119, 16, '2.400'),
(189, 119, 20, '0.030'),
(190, 119, 21, '0.015'),
(191, 119, 36, '0.050'),
(192, 119, 37, '0.300'),
(193, 119, 38, '0.600'),
(194, 119, 6, '0.150'),
(195, 119, 4, '0.150'),
(196, 119, 11, '0.050'),
(197, 119, 9, '0.100'),
(198, 119, 12, '0.080'),
(199, 119, 8, '0.200'),
(200, 119, 14, '1.000'),
(201, 119, 42, '103.000'),
(202, 119, 32, '103.000'),
(203, 120, 8, '0.200'),
(204, 120, 12, '0.080'),
(205, 120, 32, '103.000'),
(206, 120, 38, '0.600'),
(207, 120, 36, '0.050'),
(208, 120, 42, '103.000'),
(209, 120, 20, '0.030'),
(210, 120, 21, '0.015'),
(211, 120, 11, '0.050'),
(212, 120, 9, '0.100'),
(213, 120, 6, '0.150'),
(214, 120, 4, '0.150'),
(215, 120, 16, '2.400'),
(216, 120, 37, '0.300'),
(217, 120, 14, '1.000'),
(218, 121, 8, '0.200'),
(219, 121, 12, '0.080'),
(220, 121, 32, '103.000'),
(221, 121, 38, '0.600'),
(222, 121, 36, '0.050'),
(223, 121, 42, '103.000'),
(224, 121, 20, '0.030'),
(225, 121, 21, '0.015'),
(226, 121, 11, '0.050'),
(227, 121, 9, '0.100'),
(228, 121, 16, '2.400'),
(229, 121, 37, '0.300'),
(230, 121, 14, '1.000'),
(231, 121, 7, '0.800'),
(232, 121, 4, '0.300'),
(233, 121, 29, '66.667'),
(234, 122, 8, '0.200'),
(235, 122, 12, '0.080'),
(236, 122, 32, '103.000'),
(237, 122, 38, '0.600'),
(238, 122, 36, '0.050'),
(239, 122, 42, '103.000'),
(240, 122, 20, '0.030'),
(241, 122, 21, '0.015'),
(242, 122, 11, '0.050'),
(243, 122, 9, '0.100'),
(244, 122, 16, '2.400'),
(245, 122, 37, '0.300'),
(246, 122, 14, '1.000'),
(247, 122, 7, '0.800'),
(248, 122, 4, '0.300'),
(249, 122, 29, '66.667'),
(250, 123, 8, '0.200'),
(251, 123, 12, '0.080'),
(252, 123, 32, '103.000'),
(253, 123, 38, '0.600'),
(254, 123, 36, '0.050'),
(255, 123, 42, '103.000'),
(256, 123, 20, '0.030'),
(257, 123, 21, '0.015'),
(258, 123, 11, '0.050'),
(259, 123, 9, '0.100'),
(260, 123, 16, '2.400'),
(261, 123, 37, '0.300'),
(262, 123, 14, '1.000'),
(263, 123, 7, '0.800'),
(264, 123, 4, '0.300'),
(265, 123, 29, '66.667'),
(266, 124, 8, '0.200'),
(267, 124, 12, '0.080'),
(268, 124, 32, '103.000'),
(269, 124, 38, '0.600'),
(270, 124, 36, '0.050'),
(271, 124, 42, '103.000'),
(272, 124, 20, '0.030'),
(273, 124, 21, '0.015'),
(274, 124, 11, '0.050'),
(275, 124, 9, '0.100'),
(276, 124, 16, '2.400'),
(277, 124, 37, '0.300'),
(278, 124, 14, '1.000'),
(279, 124, 7, '0.800'),
(280, 124, 4, '0.300'),
(281, 124, 29, '66.667'),
(282, 125, 8, '0.200'),
(283, 125, 12, '0.080'),
(284, 125, 32, '103.000'),
(285, 125, 38, '0.600'),
(286, 125, 36, '0.050'),
(287, 125, 42, '103.000'),
(288, 125, 20, '0.030'),
(289, 125, 21, '0.015'),
(290, 125, 11, '0.050'),
(291, 125, 9, '0.100'),
(292, 125, 16, '2.400'),
(293, 125, 37, '0.300'),
(294, 125, 14, '1.000'),
(295, 125, 7, '0.800'),
(296, 125, 4, '0.300'),
(297, 125, 29, '66.667'),
(298, 126, 8, '0.200'),
(299, 126, 12, '0.080'),
(300, 126, 32, '103.000'),
(301, 126, 38, '0.600'),
(302, 126, 36, '0.050'),
(303, 126, 42, '103.000'),
(304, 126, 20, '0.030'),
(305, 126, 21, '0.015'),
(306, 126, 11, '0.050'),
(307, 126, 9, '0.100'),
(308, 126, 16, '2.400'),
(309, 126, 37, '0.300'),
(310, 126, 14, '1.000'),
(311, 126, 7, '0.800'),
(312, 126, 4, '0.300'),
(313, 126, 29, '66.667'),
(314, 127, 8, '0.200'),
(315, 127, 12, '0.080'),
(316, 127, 32, '103.000'),
(317, 127, 38, '0.600'),
(318, 127, 36, '0.050'),
(319, 127, 42, '103.000'),
(320, 127, 20, '0.030'),
(321, 127, 21, '0.015'),
(322, 127, 11, '0.050'),
(323, 127, 9, '0.100'),
(324, 127, 16, '2.400'),
(325, 127, 37, '0.300'),
(326, 127, 14, '1.000'),
(327, 127, 7, '0.800'),
(328, 127, 4, '0.300'),
(329, 127, 29, '66.667'),
(330, 128, 8, '0.200'),
(331, 128, 12, '0.080'),
(332, 128, 32, '103.000'),
(333, 128, 38, '0.600'),
(334, 128, 36, '0.050'),
(335, 128, 42, '103.000'),
(336, 128, 20, '0.030'),
(337, 128, 21, '0.015'),
(338, 128, 11, '0.050'),
(339, 128, 9, '0.100'),
(340, 128, 16, '2.400'),
(341, 128, 37, '0.300'),
(342, 128, 14, '1.000'),
(343, 128, 7, '0.800'),
(344, 128, 4, '0.300'),
(345, 128, 29, '66.667'),
(346, 129, 8, '0.200'),
(347, 129, 12, '0.080'),
(348, 129, 32, '103.000'),
(349, 129, 38, '0.600'),
(350, 129, 36, '0.050'),
(351, 129, 42, '103.000'),
(352, 129, 20, '0.030'),
(353, 129, 21, '0.015'),
(354, 129, 11, '0.050'),
(355, 129, 9, '0.100'),
(356, 129, 16, '2.400'),
(357, 129, 37, '0.300'),
(358, 129, 14, '1.000'),
(359, 129, 7, '0.800'),
(360, 129, 4, '0.300'),
(361, 129, 29, '66.667'),
(362, 130, 8, '0.200'),
(363, 130, 12, '0.080'),
(364, 130, 32, '103.000'),
(365, 130, 38, '0.600'),
(366, 130, 36, '0.050'),
(367, 130, 42, '103.000'),
(368, 130, 20, '0.030'),
(369, 130, 21, '0.015'),
(370, 130, 11, '0.050'),
(371, 130, 9, '0.100'),
(372, 130, 16, '2.400'),
(373, 130, 37, '0.300'),
(374, 130, 14, '1.000'),
(375, 130, 7, '0.800'),
(376, 130, 4, '0.300'),
(377, 130, 29, '66.667'),
(378, 131, 8, '0.200'),
(379, 131, 12, '0.080'),
(380, 131, 32, '103.000'),
(381, 131, 38, '0.600'),
(382, 131, 36, '0.050'),
(383, 131, 42, '103.000'),
(384, 131, 20, '0.030'),
(385, 131, 21, '0.015'),
(386, 131, 11, '0.050'),
(387, 131, 9, '0.100'),
(388, 131, 6, '0.150'),
(389, 131, 4, '0.150'),
(390, 131, 16, '2.400'),
(391, 131, 37, '0.300'),
(392, 131, 14, '1.000'),
(393, 132, 8, '0.200'),
(394, 132, 12, '0.080'),
(395, 132, 32, '103.000'),
(396, 132, 38, '0.600'),
(397, 132, 36, '0.050'),
(398, 132, 42, '103.000'),
(399, 132, 20, '0.030'),
(400, 132, 21, '0.015'),
(401, 132, 11, '0.050'),
(402, 132, 9, '0.100'),
(403, 132, 6, '0.150'),
(404, 132, 4, '0.150'),
(405, 132, 16, '2.400'),
(406, 132, 37, '0.300'),
(407, 132, 14, '1.000'),
(408, 132, 25, '66.667'),
(409, 132, 29, '66.667'),
(410, 133, 8, '0.200'),
(411, 133, 12, '0.080'),
(412, 133, 32, '103.000'),
(413, 133, 38, '0.600'),
(414, 133, 36, '0.050'),
(415, 133, 42, '103.000'),
(416, 133, 20, '0.030'),
(417, 133, 21, '0.015'),
(418, 133, 11, '0.050'),
(419, 133, 9, '0.100'),
(420, 133, 7, '0.800'),
(421, 133, 4, '0.300'),
(422, 133, 16, '2.400'),
(423, 133, 29, '66.667'),
(424, 133, 37, '0.300'),
(425, 133, 14, '1.000'),
(426, 133, 24, '66.667'),
(427, 134, 12, '0.080'),
(428, 134, 13, '0.300'),
(429, 134, 38, '0.600'),
(430, 134, 36, '0.050'),
(431, 134, 20, '0.030'),
(432, 134, 21, '0.015'),
(433, 134, 11, '0.050'),
(434, 134, 9, '0.100'),
(435, 134, 4, '0.500'),
(436, 134, 16, '2.400'),
(437, 134, 37, '0.300'),
(438, 134, 14, '1.000'),
(439, 134, 32, '103.000'),
(440, 134, 44, '103.000'),
(441, 134, 29, '66.667'),
(442, 134, 26, '66.667'),
(443, 135, 8, '0.200'),
(444, 135, 12, '0.080'),
(445, 135, 32, '103.000'),
(446, 135, 38, '0.600'),
(447, 135, 36, '0.050'),
(448, 135, 24, '66.667'),
(449, 135, 20, '0.030'),
(450, 135, 21, '0.015'),
(451, 135, 11, '0.050'),
(452, 135, 9, '0.100'),
(453, 135, 7, '0.800'),
(454, 135, 4, '0.300'),
(455, 135, 16, '2.400'),
(456, 135, 29, '66.667'),
(457, 135, 37, '0.300'),
(458, 135, 14, '1.000'),
(459, 135, 40, '103.000'),
(460, 136, 8, '0.200'),
(461, 136, 12, '0.080'),
(462, 136, 38, '0.600'),
(463, 136, 36, '0.050'),
(464, 136, 20, '0.030'),
(465, 136, 21, '0.015'),
(466, 136, 11, '0.050'),
(467, 136, 9, '0.100'),
(468, 136, 7, '0.800'),
(469, 136, 4, '0.300'),
(470, 136, 16, '2.400'),
(471, 136, 37, '0.300'),
(472, 136, 14, '1.000'),
(473, 136, 30, '71.429'),
(474, 136, 26, '100.000'),
(475, 136, 49, '238.000'),
(476, 137, 8, '0.200'),
(477, 137, 32, '103.000'),
(478, 137, 42, '102.564'),
(479, 137, 11, '0.050'),
(480, 137, 9, '0.100'),
(481, 137, 29, '66.667'),
(482, 137, 14, '1.000'),
(483, 137, 5, '0.100'),
(484, 137, 25, '66.000'),
(485, 137, 67, '4.000'),
(486, 138, 32, '0.000'),
(487, 138, 44, '0.000'),
(488, 138, 26, '66.667'),
(489, 138, 11, '0.050'),
(490, 138, 9, '0.100'),
(491, 138, 4, '0.200'),
(492, 138, 29, '66.667'),
(493, 138, 14, '1.000'),
(494, 138, 67, '4.000'),
(495, 139, 8, '0.200'),
(496, 139, 32, '205.000'),
(497, 139, 40, '205.000'),
(498, 139, 11, '0.050'),
(499, 139, 9, '0.100'),
(500, 139, 7, '0.800'),
(501, 139, 29, '66.667'),
(502, 139, 14, '1.000'),
(503, 139, 67, '4.000'),
(504, 139, 24, '66.000'),
(505, 140, 8, '0.200'),
(506, 140, 49, '238.000'),
(507, 140, 26, '100.000'),
(508, 140, 11, '0.050'),
(509, 140, 9, '0.100'),
(510, 140, 7, '0.800'),
(511, 140, 30, '71.429'),
(512, 140, 14, '1.000'),
(513, 140, 67, '4.000'),
(514, 141, 8, '0.200'),
(515, 141, 32, '205.000'),
(516, 141, 40, '205.000'),
(517, 141, 24, '66.000'),
(518, 141, 11, '0.050'),
(519, 141, 9, '0.100'),
(520, 141, 7, '0.800'),
(521, 141, 67, '4.000'),
(522, 141, 29, '66.667'),
(523, 141, 14, '1.000'),
(524, 142, 8, '0.200'),
(525, 142, 33, '275.000'),
(526, 142, 56, '275.444'),
(527, 142, 22, '55.000'),
(528, 142, 7, '0.500'),
(529, 142, 4, '0.300'),
(530, 142, 27, '31.250'),
(531, 142, 66, '0.300'),
(532, 143, 33, '275.000'),
(533, 143, 54, '275.000'),
(534, 143, 22, '55.000'),
(535, 143, 27, '31.250'),
(536, 143, 66, '0.300'),
(537, 144, 34, '325.000'),
(538, 144, 50, '325.000'),
(539, 144, 23, '20.000'),
(540, 144, 28, '14.000'),
(541, 144, 66, '0.300'),
(542, 145, 34, '325.000'),
(543, 145, 53, '325.000'),
(544, 145, 23, '20.000'),
(545, 145, 7, '0.500'),
(546, 145, 4, '0.200'),
(547, 145, 28, '14.000'),
(548, 145, 66, '0.300'),
(549, 146, 8, '0.200'),
(550, 146, 34, '325.000'),
(551, 146, 52, '325.000'),
(552, 146, 9, '0.200'),
(553, 146, 23, '20.000'),
(554, 146, 4, '0.300'),
(555, 146, 28, '14.000'),
(556, 146, 66, '0.300'),
(557, 147, 8, '0.200'),
(558, 147, 34, '320.000'),
(559, 147, 60, '320.000'),
(560, 147, 7, '0.500'),
(561, 147, 4, '0.300'),
(562, 147, 66, '0.300'),
(563, 148, 34, '320.000'),
(564, 148, 57, '320.000'),
(565, 148, 66, '0.300'),
(566, 149, 16, '0.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lotes_produccion`
--

DROP TABLE IF EXISTS `lotes_produccion`;
CREATE TABLE IF NOT EXISTS `lotes_produccion` (
  `id_loteprod` int(11) NOT NULL AUTO_INCREMENT,
  `nro_lote` int(11) NOT NULL,
  `fecha_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_desposte` int(11) DEFAULT NULL,
  `raiz` tinyint(4) DEFAULT NULL,
  `Anulado` tinyint(4) DEFAULT NULL,
  `fecha_baja` datetime DEFAULT NULL,
  PRIMARY KEY (`id_loteprod`),
  KEY `nro_lote_index` (`nro_lote`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `lotes_produccion`
--

INSERT INTO `lotes_produccion` (`id_loteprod`, `nro_lote`, `fecha_alta`, `id_desposte`, `raiz`, `Anulado`, `fecha_baja`) VALUES
(1, 1, '2020-04-20 17:31:29', NULL, NULL, NULL, NULL),
(2, 2, '2020-04-20 17:31:29', NULL, NULL, NULL, NULL),
(3, 3, '2020-04-20 17:31:29', NULL, NULL, NULL, NULL),
(4, 4, '2020-04-20 17:31:29', NULL, NULL, NULL, NULL),
(5, 5, '2020-04-20 17:34:09', NULL, NULL, NULL, NULL),
(6, 6, '2020-04-20 17:48:13', NULL, NULL, NULL, NULL),
(7, 7, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(8, 8, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(9, 9, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(10, 10, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(11, 11, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(12, 12, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(13, 13, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(14, 14, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(15, 15, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(16, 16, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(17, 17, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(18, 18, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(19, 19, '2020-04-21 11:54:12', NULL, NULL, NULL, NULL),
(20, 20, '2020-04-21 15:27:04', NULL, NULL, NULL, NULL),
(21, 21, '2020-04-21 15:27:28', NULL, NULL, NULL, NULL),
(22, 22, '2020-04-21 15:27:28', NULL, NULL, NULL, NULL),
(23, 23, '2020-04-21 15:27:28', NULL, NULL, NULL, NULL),
(24, 24, '2020-04-21 15:27:28', NULL, NULL, NULL, NULL),
(25, 25, '2020-04-21 15:27:28', NULL, NULL, NULL, NULL),
(26, 26, '2020-04-21 15:27:28', NULL, NULL, NULL, NULL),
(27, 27, '2020-04-21 15:27:28', NULL, NULL, NULL, NULL),
(28, 28, '2020-04-21 15:27:28', NULL, NULL, NULL, NULL),
(29, 29, '2020-04-13 15:27:28', 19, 1, NULL, NULL),
(31, 30, '2020-04-22 11:15:40', 20, 1, NULL, NULL),
(32, 31, '2020-04-29 08:35:16', 21, 1, NULL, NULL),
(33, 32, '2020-05-05 08:25:40', 22, 1, NULL, NULL),
(34, 33, '2020-05-12 14:16:14', 23, 1, NULL, NULL),
(35, 34, '2020-05-19 15:22:06', 24, 1, NULL, NULL),
(36, 35, '2020-05-27 14:09:27', 25, 1, NULL, NULL),
(37, 36, '2020-05-31 04:28:51', NULL, 0, NULL, NULL),
(38, 37, '2020-06-05 16:47:45', 26, 1, NULL, NULL),
(39, 38, '2020-06-08 06:19:16', NULL, 0, 1, NULL),
(40, 39, '2020-06-10 06:43:57', 27, 1, 1, NULL),
(41, 40, '2020-06-12 13:41:39', NULL, 0, 1, NULL),
(42, 38, '2020-06-17 07:10:55', NULL, 0, 1, NULL),
(43, 38, '2020-06-17 16:36:26', 28, 1, NULL, NULL),
(44, 38, '2020-06-17 16:36:27', 29, 1, 1, '2020-06-24 18:51:51'),
(45, 39, '2020-06-22 16:23:25', NULL, 0, NULL, NULL),
(46, 40, '2020-06-23 17:53:36', 30, 1, 1, NULL),
(47, 40, '2020-06-30 14:50:33', 31, 1, NULL, NULL),
(48, 42, '2020-07-03 19:16:10', NULL, 0, 1, NULL),
(49, 41, '2020-07-07 14:07:28', 32, 1, NULL, NULL),
(50, 42, '2020-07-14 14:12:05', 33, 0, NULL, NULL),
(51, 43, '2020-07-14 14:12:05', 33, 1, 1, NULL),
(52, 44, '2020-07-20 03:56:04', NULL, 0, 1, NULL),
(53, 43, '2020-07-21 09:26:39', 34, 1, NULL, NULL),
(54, 44, '2020-07-23 09:02:08', 35, 1, NULL, NULL),
(57, 45, '2020-08-04 20:28:34', NULL, 0, 1, NULL),
(58, 46, '2020-08-05 10:17:27', 36, 1, NULL, NULL),
(59, 47, '2020-08-09 13:57:56', 37, 1, NULL, NULL),
(60, 48, '2020-08-18 11:29:24', 38, 1, NULL, NULL),
(61, 48, '2020-08-25 09:46:21', 39, 1, NULL, NULL),
(62, 49, '2020-09-01 10:20:05', 40, 1, NULL, NULL),
(63, 50, '2020-09-08 19:40:00', 41, 1, NULL, NULL),
(64, 51, '2020-09-24 03:14:27', NULL, 0, NULL, NULL),
(65, 52, '2021-01-05 12:54:04', 42, 1, 1, '2021-01-07 02:13:31'),
(66, 52, '2021-01-07 02:19:26', 43, 1, NULL, NULL),
(67, 53, '2021-01-20 02:51:05', 44, 1, NULL, NULL),
(68, 54, '2021-01-26 18:25:28', 45, 1, NULL, NULL),
(69, 55, '2021-02-03 09:07:14', 46, 1, NULL, NULL),
(70, 56, '2021-03-01 12:44:11', 47, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_01_124317_create_permission_tables', 1),
(5, '2020_04_03_131427_create_trackers_table', 1),
(6, '2020_04_03_132037_create_user_login_logs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 1),
(2, 'App\\User', 2),
(3, 'App\\User', 2),
(4, 'App\\User', 3),
(3, 'App\\User', 4),
(4, 'App\\User', 5),
(4, 'App\\User', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `option_list`
--

DROP TABLE IF EXISTS `option_list`;
CREATE TABLE IF NOT EXISTS `option_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_interno` int(11) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `filtro` varchar(45) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `option_list`
--

INSERT INTO `option_list` (`id`, `id_interno`, `nombre`, `filtro`, `descripcion`) VALUES
(1, 1, 'Pendiente de aprobación', 'WF-status', NULL),
(2, 2, 'Aprobado', 'WF-status', NULL),
(3, 3, 'Abortado', 'WF-status', 'WF que son abortados porque la operación se cierra o se modifica, abriendo un nuevo WF'),
(4, 4, 'Aprobado autmática', 'WF-status', 'WF en los que se omitio realizar el flujo'),
(5, 1, 'Agregado un pedido', 'WF-action', NULL),
(6, 2, 'Modificar Pedido', 'WF-action', NULL),
(7, 3, 'Anular Pedido', 'WF-action', NULL),
(8, 4, 'Aprobar Pedido', 'WF-action', NULL),
(9, 5, 'Aprobacr Modificacion', 'WF-action', NULL),
(10, 1, 'Pedido', 'WF-taskType', NULL),
(11, 5, 'Modificado', 'WF-status', NULL),
(12, 1, 'Pedido', 'Cuentas', NULL),
(13, 2, 'Compra', 'Cuentas', NULL),
(14, 3, 'Produccion', 'Cuentas', NULL),
(15, 1, 'Los Toldos', 'Proveedores', NULL),
(16, 4, 'Anular pedido', 'Cuentas', NULL),
(17, 5, 'Anular Compra', 'Cuentas', NULL),
(18, 6, 'Anular Produccion', 'Cuentas', NULL),
(19, 6, 'Pedido aprobado', 'WF-action', NULL),
(20, 7, 'Ajuste Inventario', 'Cuentas', NULL),
(21, 7, 'Pedido anulado', 'WF-action', NULL),
(22, 6, 'Rechazado', 'WF-status', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_produccion_alta`
--

DROP TABLE IF EXISTS `orden_produccion_alta`;
CREATE TABLE IF NOT EXISTS `orden_produccion_alta` (
  `id_ordenprod` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_alta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nro_lote` int(11) NOT NULL,
  `id_receta` int(11) NOT NULL,
  `peso_paston` decimal(10,3) NOT NULL,
  `cantidad_unidades_frescas` int(11) DEFAULT NULL,
  `unidades_sin_asignar` int(11) DEFAULT NULL,
  `id_usuario_alta_registro` int(11) NOT NULL,
  `anulado` tinyint(4) NOT NULL DEFAULT '0',
  `fecha_baja` datetime DEFAULT NULL,
  `id_usuario_baja` int(11) DEFAULT NULL,
  `motivo_baja` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id_ordenprod`),
  KEY `id_receta_idx` (`id_receta`),
  KEY `id_usuario_idx` (`id_usuario_alta_registro`),
  KEY `id_usuario_baja_op_idx` (`id_usuario_baja`),
  KEY `nro_lote_orden_prod_idx` (`nro_lote`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `orden_produccion_alta`
--

INSERT INTO `orden_produccion_alta` (`id_ordenprod`, `fecha_alta`, `nro_lote`, `id_receta`, `peso_paston`, `cantidad_unidades_frescas`, `unidades_sin_asignar`, `id_usuario_alta_registro`, `anulado`, `fecha_baja`, `id_usuario_baja`, `motivo_baja`) VALUES
(1, '2020-01-08 15:08:58', 16, 100, '43.600', 104, NULL, 4, 0, NULL, NULL, NULL),
(2, '2020-01-08 15:08:58', 16, 100, '15.800', 38, NULL, 4, 0, NULL, NULL, NULL),
(3, '2020-01-08 15:08:58', 16, 109, '15.500', 2, NULL, 4, 0, NULL, NULL, NULL),
(4, '2020-01-13 15:33:00', 17, 100, '65.000', 155, NULL, 4, 0, NULL, NULL, NULL),
(5, '2020-01-13 15:33:00', 17, 113, '59.000', 447, NULL, 4, 0, NULL, NULL, NULL),
(6, '2020-01-13 15:33:00', 17, 105, '11.700', 1, NULL, 4, 0, NULL, NULL, NULL),
(7, '2020-01-13 15:33:00', 17, 107, '24.800', 3, NULL, 4, 0, NULL, NULL, NULL),
(8, '2020-01-21 15:41:30', 18, 100, '55.000', 131, NULL, 4, 0, NULL, NULL, NULL),
(9, '2020-01-21 15:41:30', 18, 102, '64.000', 71, NULL, 4, 0, NULL, NULL, NULL),
(10, '2020-01-21 15:41:30', 18, 107, '26.300', 3, NULL, 4, 0, NULL, NULL, NULL),
(11, '2020-01-21 15:41:30', 18, 105, '8.400', 1, NULL, 4, 0, NULL, NULL, NULL),
(12, '2020-01-21 15:41:30', 19, 100, '105.000', 250, NULL, 4, 0, NULL, NULL, NULL),
(13, '2020-01-21 15:41:30', 19, 102, '23.000', 26, NULL, 4, 0, NULL, NULL, NULL),
(14, '2020-01-21 15:41:30', 19, 107, '27.300', 3, NULL, 4, 0, NULL, NULL, NULL),
(15, '2020-01-21 15:41:30', 19, 105, '11.500', 1, NULL, 4, 0, NULL, NULL, NULL),
(16, '2020-02-05 16:09:06', 20, 100, '74.000', 176, NULL, 4, 0, NULL, NULL, NULL),
(17, '2020-02-05 16:09:06', 20, 101, '53.000', 59, NULL, 4, 0, NULL, NULL, NULL),
(18, '2020-02-05 16:09:06', 20, 111, '42.000', 5, NULL, 4, 1, '2020-04-23 15:40:44', 4, 'SE CONFUNDE PRODUCTO ASIGNANDO JAMON ITALIANO A ELABORACION DE SALAME ITALIANO'),
(19, '2020-02-05 16:09:06', 20, 105, '11.200', 1, NULL, 4, 0, NULL, NULL, NULL),
(20, '2020-02-19 16:09:06', 21, 100, '54.000', 129, NULL, 4, 0, NULL, NULL, NULL),
(21, '2020-02-19 16:09:06', 21, 102, '38.000', 42, NULL, 4, 0, NULL, NULL, NULL),
(22, '2020-02-19 16:09:06', 21, 103, '46.000', 51, NULL, 4, 0, NULL, NULL, NULL),
(23, '2020-02-19 16:09:06', 21, 101, '52.000', 58, NULL, 4, 0, NULL, NULL, NULL),
(24, '2020-02-19 16:09:06', 21, 105, '9.800', 1, NULL, 4, 0, NULL, NULL, NULL),
(25, '2020-02-19 16:09:06', 21, 107, '22.300', 2, NULL, 4, 0, NULL, NULL, NULL),
(26, '2020-02-25 16:24:38', 22, 100, '52.000', 124, NULL, 4, 0, NULL, NULL, NULL),
(27, '2020-02-25 16:24:38', 22, 102, '34.400', 38, NULL, 4, 0, NULL, NULL, NULL),
(28, '2020-02-25 16:24:38', 22, 103, '35.200', 39, NULL, 4, 0, NULL, NULL, NULL),
(29, '2020-02-25 16:24:38', 22, 101, '35.300', 39, NULL, 4, 0, NULL, NULL, NULL),
(30, '2020-02-25 16:24:38', 22, 105, '13.400', 1, NULL, 4, 0, NULL, NULL, NULL),
(31, '2020-03-04 16:24:38', 23, 100, '51.000', 121, NULL, 4, 0, NULL, NULL, NULL),
(32, '2020-03-04 16:24:38', 23, 103, '44.000', 49, NULL, 4, 0, NULL, NULL, NULL),
(33, '2020-03-04 16:24:38', 23, 101, '41.000', 46, NULL, 4, 0, NULL, NULL, NULL),
(34, '2020-03-04 16:24:38', 23, 104, '105.000', 117, NULL, 4, 0, NULL, NULL, NULL),
(35, '2020-03-04 16:24:38', 23, 109, '14.400', 2, NULL, 4, 1, '2020-04-21 16:41:09', 4, 'CONFUSIÓN CON JAMÓN LOTE 24'),
(36, '2020-03-04 16:24:38', 23, 109, '21.100', 2, NULL, 4, 0, NULL, NULL, NULL),
(37, '2020-03-10 16:44:27', 24, 100, '56.000', 133, NULL, 4, 0, NULL, NULL, NULL),
(38, '2020-03-10 16:44:27', 24, 102, '43.000', 48, NULL, 4, 0, NULL, NULL, NULL),
(39, '2020-03-10 16:44:27', 24, 101, '51.000', 57, NULL, 4, 0, NULL, NULL, NULL),
(40, '2020-03-10 16:44:27', 24, 109, '14.400', 2, NULL, 4, 0, NULL, NULL, NULL),
(41, '2020-03-19 16:49:17', 25, 100, '56.000', 133, NULL, 4, 0, NULL, NULL, NULL),
(42, '2020-03-19 16:49:17', 25, 102, '42.000', 47, NULL, 4, 0, NULL, NULL, NULL),
(43, '2020-03-19 16:49:17', 25, 101, '52.000', 58, NULL, 4, 0, NULL, NULL, NULL),
(44, '2020-03-19 16:49:17', 25, 105, '6.000', 1, NULL, 4, 0, NULL, NULL, NULL),
(45, '2020-03-19 16:49:17', 25, 102, '11.000', 12, NULL, 4, 0, NULL, NULL, NULL),
(46, '2020-03-19 16:49:17', 25, 107, '14.800', 2, NULL, 4, 0, NULL, NULL, NULL),
(47, '2020-03-25 16:49:17', 26, 100, '56.000', 133, NULL, 4, 0, NULL, NULL, NULL),
(48, '2020-03-25 16:49:17', 26, 102, '55.000', 61, NULL, 4, 0, NULL, NULL, NULL),
(49, '2020-03-25 16:49:17', 26, 103, '54.000', 60, NULL, 4, 0, NULL, NULL, NULL),
(50, '2020-03-25 16:49:17', 26, 109, '16.000', 2, NULL, 4, 0, NULL, NULL, NULL),
(51, '2020-04-01 17:28:28', 27, 105, '11.000', 1, NULL, 4, 0, NULL, NULL, NULL),
(52, '2020-04-01 17:28:28', 27, 102, '51.000', 57, NULL, 4, 0, NULL, NULL, NULL),
(53, '2020-04-01 17:28:28', 27, 103, '51.000', 57, NULL, 4, 0, NULL, NULL, NULL),
(54, '2020-04-01 17:28:28', 27, 101, '51.000', 57, NULL, 4, 0, NULL, NULL, NULL),
(55, '2020-04-01 17:28:28', 27, 107, '11.400', 1, NULL, 4, 0, NULL, NULL, NULL),
(56, '2020-04-07 17:33:29', 28, 100, '86.000', 205, NULL, 4, 0, NULL, NULL, NULL),
(57, '2020-04-07 17:33:29', 28, 101, '15.000', 17, NULL, 4, 0, NULL, NULL, NULL),
(58, '2020-04-07 17:33:29', 28, 107, '29.900', 3, NULL, 4, 0, NULL, NULL, NULL),
(59, '2020-04-14 17:33:29', 29, 100, '53.000', 126, NULL, 4, 0, NULL, NULL, NULL),
(60, '2020-04-14 17:33:29', 29, 102, '43.000', 48, NULL, 4, 0, NULL, NULL, NULL),
(61, '2020-04-14 17:33:29', 29, 101, '51.000', 57, NULL, 4, 0, NULL, NULL, NULL),
(62, '2020-04-14 17:33:29', 29, 103, '40.000', 44, NULL, 4, 0, NULL, NULL, NULL),
(63, '2020-04-22 11:19:45', 30, 100, '75.000', 179, NULL, 2, 0, NULL, NULL, NULL),
(64, '2020-02-05 15:44:54', 20, 103, '42.000', 47, NULL, 4, 0, NULL, NULL, NULL),
(65, '2020-04-29 16:33:22', 31, 100, '100.000', 238, NULL, 4, 0, NULL, NULL, NULL),
(66, '2020-04-29 16:38:19', 31, 101, '105.000', 117, NULL, 4, 0, NULL, NULL, NULL),
(67, '2020-04-29 18:11:43', 31, 105, '16.400', 2, NULL, 4, 0, NULL, NULL, NULL),
(68, '2020-04-29 18:14:02', 31, 109, '9.500', 1, NULL, 4, 0, NULL, NULL, NULL),
(69, '2020-05-05 08:44:10', 1, 114, '110.000', 262, NULL, 4, 0, NULL, NULL, NULL),
(70, '2020-05-05 17:04:04', 32, 115, '100.000', 111, NULL, 4, 0, NULL, NULL, NULL),
(71, '2020-05-05 21:08:57', 32, 105, '13.000', 1, NULL, 4, 0, NULL, NULL, NULL),
(72, '2020-05-05 21:11:54', 32, 109, '15.800', 2, NULL, 4, 0, NULL, NULL, NULL),
(73, '2020-05-12 14:23:11', 33, 109, '19.300', 2, NULL, 4, 0, NULL, NULL, NULL),
(74, '2020-05-12 14:25:46', 1, 105, '14.000', 2, NULL, 4, 0, NULL, NULL, NULL),
(75, '2020-05-12 14:33:05', 33, 114, '100.000', 238, NULL, 4, 0, NULL, NULL, NULL),
(76, '2020-05-12 15:23:02', 33, 117, '110.000', 122, NULL, 4, 0, NULL, NULL, NULL),
(77, '2020-05-19 15:23:55', 34, 109, '53.000', 6, NULL, 4, 0, NULL, NULL, NULL),
(78, '2020-05-19 15:25:43', 34, 107, '40.000', 4, NULL, 4, 0, NULL, NULL, NULL),
(79, '2020-05-19 15:36:47', 34, 114, '200.000', 476, NULL, 4, 0, NULL, NULL, NULL),
(80, '2020-05-19 15:42:17', 34, 116, '50.000', 56, NULL, 4, 0, NULL, NULL, NULL),
(81, '2020-05-20 06:54:05', 34, 117, '50.000', 56, NULL, 4, 0, NULL, NULL, NULL),
(82, '2020-05-20 07:00:01', 34, 115, '40.000', 44, NULL, 4, 0, NULL, NULL, NULL),
(83, '2020-05-20 07:08:42', 34, 105, '30.500', 3, NULL, 4, 0, NULL, NULL, NULL),
(84, '2020-05-20 07:11:41', 33, 113, '38.000', 288, NULL, 4, 0, NULL, NULL, NULL),
(85, '2020-05-27 14:12:01', 35, 109, '47.500', 5, NULL, 4, 0, NULL, NULL, NULL),
(86, '2020-05-27 14:16:12', 35, 107, '30.500', 3, NULL, 4, 0, NULL, NULL, NULL),
(87, '2020-05-27 14:25:33', 35, 105, '26.100', 3, NULL, 4, 0, NULL, NULL, NULL),
(88, '2020-05-27 14:28:20', 35, 114, '100.000', 238, NULL, 4, 0, NULL, NULL, NULL),
(89, '2020-05-27 14:54:08', 35, 116, '70.000', 78, NULL, 4, 0, NULL, NULL, NULL),
(90, '2020-05-27 15:00:29', 35, 117, '70.000', 78, NULL, 4, 0, NULL, NULL, NULL),
(91, '2020-05-27 15:04:41', 35, 115, '70.000', 78, NULL, 4, 0, NULL, NULL, NULL),
(92, '2020-06-12 14:36:56', 36, 136, '140.000', 400, 0, 4, 0, NULL, NULL, NULL),
(93, '2020-06-12 14:43:23', 36, 132, '86.000', 96, 0, 4, 0, NULL, NULL, NULL),
(94, '2020-06-12 14:49:07', 36, 135, '80.000', 89, 0, 4, 0, NULL, NULL, NULL),
(95, '2020-06-12 14:53:23', 36, 134, '88.000', 98, 0, 4, 0, NULL, NULL, NULL),
(96, '2020-06-12 14:54:40', 36, 109, '45.600', 5, 0, 4, 0, NULL, NULL, NULL),
(97, '2020-06-12 14:56:02', 36, 107, '54.500', 11, 0, 4, 0, NULL, NULL, NULL),
(98, '2020-06-12 14:57:34', 36, 105, '33.300', 21, 0, 4, 0, NULL, NULL, NULL),
(99, '2020-06-15 14:03:53', 37, 116, '91.900', 102, 0, 4, 0, NULL, NULL, NULL),
(100, '2020-06-15 14:05:08', 37, 115, '72.800', 81, 0, 4, 0, NULL, NULL, NULL),
(101, '2020-06-15 14:06:43', 37, 109, '49.000', 5, 0, 4, 0, NULL, NULL, NULL),
(102, '2020-06-15 14:09:38', 37, 105, '29.000', 18, 0, 4, 0, NULL, NULL, NULL),
(103, '2020-06-15 14:10:25', 37, 107, '56.000', 12, 0, 4, 0, NULL, NULL, NULL),
(104, '2020-06-15 15:38:53', 37, 114, '122.600', 350, 0, 4, 0, NULL, NULL, NULL),
(105, '2020-06-16 13:51:25', 37, 117, '58.000', 64, 0, 4, 0, NULL, NULL, NULL),
(106, '2020-06-17 20:13:28', 38, 105, '28.600', 18, 0, 4, 0, NULL, NULL, NULL),
(107, '2020-06-17 20:14:37', 38, 107, '49.600', 10, 0, 4, 0, NULL, NULL, NULL),
(108, '2020-06-17 20:15:44', 38, 109, '46.800', 5, 0, 4, 0, NULL, NULL, NULL),
(109, '2020-06-17 20:17:47', 38, 114, '130.000', 371, 0, 4, 0, NULL, NULL, NULL),
(110, '2020-06-17 20:19:31', 38, 115, '70.000', 78, 0, 4, 0, NULL, NULL, NULL),
(111, '2020-06-17 20:21:06', 38, 116, '70.000', 78, 0, 4, 0, NULL, NULL, NULL),
(112, '2020-06-17 20:22:02', 38, 117, '70.000', 78, 0, 4, 0, NULL, NULL, NULL),
(113, '2020-06-24 07:19:00', 39, 114, '135.000', 386, 0, 4, 0, NULL, NULL, NULL),
(114, '2020-06-24 07:21:39', 39, 116, '135.000', 150, 0, 4, 0, NULL, NULL, NULL),
(115, '2020-06-24 19:58:40', 39, 138, '135.000', 150, 0, 4, 0, NULL, NULL, NULL),
(116, '2020-06-24 20:00:23', 39, 137, '135.000', 150, 0, 4, 0, NULL, NULL, NULL),
(117, '2020-06-24 20:04:43', 39, 105, '36.500', 23, 0, 4, 0, NULL, NULL, NULL),
(118, '2020-06-30 15:11:07', 40, 140, '100.000', 275, 0, 4, 1, '2020-06-30 15:12:25', 4, 'Mal ingresado los Kg'),
(119, '2020-06-30 15:14:34', 40, 140, '70.000', 193, 0, 4, 0, NULL, NULL, NULL),
(120, '2020-06-30 15:26:00', 40, 139, '70.000', 78, 0, 4, 0, NULL, NULL, NULL),
(121, '2020-06-30 15:31:00', 40, 138, '70.000', 78, 0, 4, 0, NULL, NULL, NULL),
(122, '2020-06-30 15:34:27', 40, 137, '70.000', 78, 0, 4, 0, NULL, NULL, NULL),
(123, '2020-07-07 14:10:10', 41, 105, '6.700', 4, 0, 4, 0, NULL, NULL, NULL),
(124, '2020-07-07 14:14:03', 41, 140, '41.000', 113, 0, 4, 0, NULL, NULL, NULL),
(125, '2020-07-07 14:22:48', 41, 139, '64.000', 71, 0, 4, 0, NULL, NULL, NULL),
(126, '2020-07-14 21:35:40', 42, 114, '75.000', 214, 0, 4, 0, NULL, NULL, NULL),
(127, '2020-07-14 21:40:08', 42, 138, '53.000', 59, 0, 4, 0, NULL, NULL, NULL),
(128, '2020-07-14 21:41:57', 42, 137, '53.000', 59, 0, 4, 0, NULL, NULL, NULL),
(129, '2020-07-14 21:45:40', 42, 105, '17.000', 11, 0, 4, 0, NULL, NULL, NULL),
(130, '2020-07-14 21:46:46', 42, 109, '45.000', 5, 0, 4, 0, NULL, NULL, NULL),
(131, '2020-07-14 21:47:45', 42, 107, '40.600', 8, 0, 4, 0, NULL, NULL, NULL),
(132, '2020-07-22 03:49:27', 43, 140, '85.000', 234, 0, 4, 0, NULL, NULL, NULL),
(133, '2020-07-23 02:54:18', 43, 140, '43.000', 118, 0, 4, 0, NULL, NULL, NULL),
(134, '2020-07-23 02:55:45', 43, 139, '43.000', 48, 0, 4, 0, NULL, NULL, NULL),
(135, '2020-07-23 02:57:29', 43, 107, '47.000', 10, 0, 4, 0, NULL, NULL, NULL),
(136, '2020-07-23 02:59:42', 43, 105, '16.000', 10, 0, 4, 0, NULL, NULL, NULL),
(137, '2020-07-23 03:03:48', 43, 109, '47.200', 5, 0, 4, 0, NULL, NULL, NULL),
(138, '2020-07-30 12:14:36', 44, 140, '68.000', 187, 0, 4, 0, NULL, NULL, NULL),
(139, '2020-07-30 12:16:06', 44, 139, '50.000', 56, 0, 4, 0, NULL, NULL, NULL),
(140, '2020-07-30 12:17:56', 44, 105, '7.300', 5, 0, 4, 0, NULL, NULL, NULL),
(141, '2020-07-30 12:17:57', 44, 105, '7.300', 5, 0, 4, 1, '2020-07-30 12:26:38', 4, 'ORDEN REPETIDA, SIMIL A OP N° 140'),
(142, '2020-08-06 02:37:59', 45, 109, '42.300', 5, 0, 4, 0, NULL, NULL, NULL),
(143, '2020-08-06 02:40:42', 45, 105, '16.700', 10, 0, 4, 0, NULL, NULL, NULL),
(144, '2020-08-06 02:44:22', 45, 107, '48.700', 10, 0, 4, 1, '2020-12-29 03:03:23', 4, 'CIERRE PARCIAL'),
(145, '2020-08-06 02:48:16', 45, 140, '47.000', 129, 0, 4, 0, NULL, NULL, NULL),
(146, '2020-08-06 02:55:31', 45, 141, '47.000', 52, 0, 4, 0, NULL, NULL, NULL),
(147, '2020-08-06 03:08:21', 45, 137, '94.000', 104, 0, 4, 0, NULL, NULL, NULL),
(148, '2020-08-11 10:28:45', 46, 105, '19.900', 12, 0, 4, 0, NULL, NULL, NULL),
(149, '2020-08-11 10:29:42', 46, 109, '50.200', 6, 0, 4, 0, NULL, NULL, NULL),
(150, '2020-08-11 10:31:55', 46, 107, '51.100', 11, 0, 4, 0, NULL, NULL, NULL),
(151, '2020-08-12 09:21:03', 46, 140, '35.100', 97, 0, 4, 0, NULL, NULL, NULL),
(152, '2020-08-12 09:23:47', 46, 141, '54.000', 60, 0, 4, 0, NULL, NULL, NULL),
(153, '2020-08-12 09:30:02', 46, 138, '110.000', 122, 0, 4, 0, NULL, NULL, NULL),
(154, '2020-08-18 19:26:13', 47, 108, '50.700', 11, 0, 4, 0, NULL, NULL, NULL),
(155, '2020-08-18 19:36:07', 47, 138, '99.000', 110, 0, 4, 0, NULL, NULL, NULL),
(156, '2020-08-18 19:37:21', 47, 137, '99.000', 110, 0, 4, 0, NULL, NULL, NULL),
(157, '2020-08-19 03:18:25', 47, 109, '50.200', 6, 0, 4, 0, NULL, NULL, NULL),
(158, '2020-08-19 03:20:30', 47, 106, '21.200', 13, 0, 4, 0, NULL, NULL, NULL),
(159, '2020-08-25 12:48:15', 48, 146, '23.500', 5, 0, 4, 0, NULL, NULL, NULL),
(160, '2020-08-25 12:48:16', 48, 146, '23.500', 5, 0, 4, 1, '2020-08-25 12:49:08', 4, 'DUPLICADO - PROBLEMAS CON INTERNET'),
(161, '2020-08-25 12:50:55', 48, 145, '23.500', 5, 0, 4, 0, NULL, NULL, NULL),
(162, '2020-08-25 12:52:30', 48, 148, '47.800', 10, 0, 4, 0, NULL, NULL, NULL),
(163, '2020-08-25 12:57:02', 48, 143, '20.600', 11, 0, 4, 0, NULL, NULL, NULL),
(164, '2020-08-25 17:27:13', 48, 140, '65.000', 179, 0, 4, 0, NULL, NULL, NULL),
(165, '2020-08-25 17:37:01', 48, 141, '42.000', 47, 0, 4, 0, NULL, NULL, NULL),
(166, '2020-08-25 17:38:16', 48, 137, '75.000', 83, 0, 4, 0, NULL, NULL, NULL),
(167, '2020-09-02 03:02:15', 49, 140, '70.000', 193, 0, 4, 0, NULL, NULL, NULL),
(168, '2020-09-02 03:06:35', 49, 141, '38.000', 42, 0, 4, 0, NULL, NULL, NULL),
(169, '2020-09-02 03:13:23', 49, 138, '107.000', 120, 0, 4, 0, NULL, NULL, NULL),
(170, '2020-09-02 03:16:48', 49, 110, '26.000', 3, 0, 4, 0, NULL, NULL, NULL),
(171, '2020-09-02 03:23:00', 49, 111, '25.000', 3, 0, 4, 0, NULL, NULL, NULL),
(172, '2020-09-02 03:23:52', 49, 108, '52.000', 11, 0, 4, 0, NULL, NULL, NULL),
(173, '2020-09-02 03:30:36', 49, 142, '21.200', 12, 0, 4, 0, NULL, NULL, NULL),
(174, '2020-09-08 19:50:03', 50, 140, '43.000', 118, 0, 4, 0, NULL, NULL, NULL),
(175, '2020-09-08 19:55:12', 50, 113, '26.000', 236, 0, 4, 0, NULL, NULL, NULL),
(176, '2020-09-08 19:55:13', 50, 113, '26.000', 236, 0, 4, 1, '2020-09-08 19:56:34', 4, 'DUPLICADO - PROBLEMAS CON VELOCIDAD DE  INTERNET - PAGINA NO RESPONDE'),
(177, '2020-09-08 19:58:07', 50, 104, '27.000', 30, 0, 4, 0, NULL, NULL, NULL),
(178, '2020-09-09 12:50:34', 50, 146, '24.400', 5, 0, 4, 0, NULL, NULL, NULL),
(179, '2020-09-09 12:53:41', 50, 145, '24.400', 5, 0, 4, 0, NULL, NULL, NULL),
(180, '2020-09-09 12:54:55', 50, 142, '19.000', 11, 0, 4, 0, NULL, NULL, NULL),
(181, '2020-09-09 12:57:17', 50, 147, '53.000', 11, 0, 4, 0, NULL, NULL, NULL),
(182, '2020-09-24 03:14:27', 51, 140, '90.000', 248, 0, 4, 0, NULL, NULL, NULL),
(183, '2021-01-07 02:23:25', 52, 138, '45.000', 50, 0, 4, 0, NULL, NULL, NULL),
(184, '2021-01-07 02:25:08', 52, 137, '42.000', 47, 0, 4, 0, NULL, NULL, NULL),
(185, '2021-01-07 12:29:19', 52, 143, '7.000', 4, 0, 4, 0, NULL, NULL, NULL),
(186, '2021-01-20 02:54:00', 53, 137, '60.000', 67, 0, 4, 0, NULL, NULL, NULL),
(187, '2021-01-20 02:56:10', 53, 138, '60.000', 67, 0, 4, 0, NULL, NULL, NULL),
(188, '2021-01-20 02:59:40', 53, 113, '20.000', 182, 0, 4, 0, NULL, NULL, NULL),
(189, '2021-01-26 18:32:58', 54, 106, '11.750', 7, 0, 4, 0, NULL, NULL, NULL),
(190, '2021-01-26 18:36:10', 54, 107, '17.400', 4, 0, 4, 0, NULL, NULL, NULL),
(191, '2021-01-26 18:47:43', 54, 144, '30.600', 6, 0, 4, 0, NULL, NULL, NULL),
(192, '2021-01-26 18:51:12', 54, 141, '65.000', 72, 0, 4, 0, NULL, NULL, NULL),
(193, '2021-01-26 18:52:02', 54, 140, '65.000', 179, 0, 4, 0, NULL, NULL, NULL),
(194, '2021-01-26 19:02:14', 54, 149, '11.400', 6, 0, 4, 0, NULL, NULL, NULL),
(195, '2021-02-04 03:02:23', 55, 137, '58.000', 64, 0, 4, 0, NULL, NULL, NULL),
(196, '2021-02-04 03:04:09', 55, 138, '55.000', 61, 0, 4, 0, NULL, NULL, NULL),
(197, '2021-02-04 03:05:45', 55, 141, '55.000', 61, 0, 4, 0, NULL, NULL, NULL),
(198, '2021-02-04 03:08:46', 55, 140, '55.000', 152, 0, 4, 0, NULL, NULL, NULL),
(199, '2021-02-04 03:10:52', 55, 143, '18.200', 10, 0, 4, 0, NULL, NULL, NULL),
(200, '2021-02-04 03:14:31', 55, 148, '19.700', 4, 0, 4, 0, NULL, NULL, NULL),
(201, '2021-02-04 03:16:03', 55, 144, '45.500', 9, 0, 4, 0, NULL, NULL, NULL),
(202, '2021-03-01 18:55:21', 56, 140, '55.000', 152, 0, 4, 0, NULL, NULL, NULL),
(203, '2021-03-01 19:07:33', 56, 141, '100.000', 111, 0, 4, 0, NULL, NULL, NULL),
(204, '2021-03-01 19:09:33', 56, 137, '100.000', 111, 0, 4, 0, NULL, NULL, NULL),
(205, '2021-03-01 19:09:34', 56, 137, '100.000', 111, 0, 4, 1, '2021-03-01 19:10:43', 4, 'ORDEN REPETIDA, SIMIL A OP N° 204'),
(206, '2021-03-01 19:12:37', 56, 138, '100.000', 111, 0, 4, 0, NULL, NULL, NULL),
(207, '2021-03-01 19:18:53', 56, 104, '100.000', 111, 0, 4, 0, NULL, NULL, NULL),
(208, '2021-03-01 19:20:49', 56, 147, '55.000', 11, 0, 4, 0, NULL, NULL, NULL),
(209, '2021-03-01 19:26:54', 56, 142, '38.000', 21, 0, 4, 0, NULL, NULL, NULL),
(210, '2021-03-01 19:28:49', 56, 146, '26.000', 5, 0, 4, 0, NULL, NULL, NULL),
(211, '2021-03-01 19:30:04', 56, 145, '26.000', 5, 0, 4, 0, NULL, NULL, NULL);

--
-- Disparadores `orden_produccion_alta`
--
DROP TRIGGER IF EXISTS `orden_produccion_alta_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `orden_produccion_alta_AFTER_UPDATE` AFTER UPDATE ON `orden_produccion_alta` FOR EACH ROW if new.anulado=1 and old.anulado=0 then
BEGIN
	insert into carnes_mov (id_carne,id_cuenta,id_desposte,cantidad,id_ordenprod,id_usuario)
		select id_carne, 6 as id_cuenta ,id_desposte,cantidad*-1,id_ordenprod, new.id_usuario_baja
		from carnes_mov
			where id_cuenta=2 and id_ordenprod=old.id_ordenprod;

		insert into insumos_mov (id_insumo,cantidad,id_cuenta,id_orden,id_usuario)
			select id_insumo,cantidad*-1 as cantidad, 6 as id_cuenta, id_orden,new.id_usuario_baja as id_usuario
			from insumos_mov
			where id_cuenta=2 and id_orden=old.id_ordenprod;
END;
end if
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_produccion_fin`
--

DROP TABLE IF EXISTS `orden_produccion_fin`;
CREATE TABLE IF NOT EXISTS `orden_produccion_fin` (
  `id_ordenprod_fin` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordenprod_alta` int(11) NOT NULL,
  `fecha_finalizacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `unidades_frescas` int(11) DEFAULT NULL,
  `peso_fresco` decimal(10,3) DEFAULT NULL,
  `merma_obtenida` decimal(10,3) DEFAULT NULL,
  `unidades_obtenidas` int(11) DEFAULT NULL,
  `producto_obtenido` decimal(10,3) DEFAULT NULL,
  `descripcion` text,
  `id_usuario_alta` int(11) NOT NULL,
  `anulado` tinyint(4) NOT NULL DEFAULT '0',
  `fecha_baja` datetime DEFAULT NULL,
  `motivo_baja` varchar(45) DEFAULT NULL,
  `id_usuario_baja` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ordenprod_fin`),
  KEY `id_orden_prod_alta_idx` (`id_ordenprod_alta`),
  KEY `fk_id_usuario_idx` (`id_usuario_alta`),
  KEY `id_usuario_anulacion_idx` (`id_usuario_baja`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orden_produccion_fin`
--

INSERT INTO `orden_produccion_fin` (`id_ordenprod_fin`, `id_ordenprod_alta`, `fecha_finalizacion`, `unidades_frescas`, `peso_fresco`, `merma_obtenida`, `unidades_obtenidas`, `producto_obtenido`, `descripcion`, `id_usuario_alta`, `anulado`, `fecha_baja`, `motivo_baja`, `id_usuario_baja`) VALUES
(1, 1, '2020-04-22 10:52:20', 117, '43.600', '-0.518', 117, '21.000', 'Faltan Controles de peso (ver hoja vieja)', 2, 0, NULL, NULL, NULL),
(2, 2, '2020-04-22 10:57:42', 46, '15.800', '-0.477', 46, '8.260', '', 2, 0, NULL, NULL, NULL),
(3, 3, '2020-04-23 06:48:29', 6, '15.500', '-0.323', 20, '10.500', '', 4, 0, NULL, NULL, NULL),
(4, 4, '2020-04-23 06:54:48', 183, '65.000', '-0.434', 183, '36.800', '', 4, 0, NULL, NULL, NULL),
(5, 5, '2020-04-23 06:57:21', 590, '59.000', '0.000', 590, '59.000', 'PRODUCCION FORTINERA 20202', 4, 0, NULL, NULL, NULL),
(6, 6, '2020-04-23 07:09:12', 6, '11.700', '-0.603', 18, '4.650', '', 4, 0, NULL, NULL, NULL),
(7, 7, '2020-04-23 07:14:58', 6, '24.800', '-0.262', 24, '18.300', 'UNIDADES OBTENIDAS ESTIMATIVAS, DATO NO REGISTRADO.', 4, 0, NULL, NULL, NULL),
(8, 8, '2020-04-23 14:26:30', 148, '55.000', '-0.436', 148, '31.000', '', 4, 0, NULL, NULL, NULL),
(9, 9, '2020-04-23 14:31:38', 38, '64.000', '-0.489', 128, '32.700', '', 4, 0, NULL, NULL, NULL),
(10, 10, '2020-04-23 14:36:16', 6, '26.300', '0.000', 6, '26.300', 'DESTINADA A PRODUCCIÓN FRESCA DE SALAMES.', 4, 0, NULL, NULL, NULL),
(11, 11, '2020-04-23 14:38:30', 6, '8.400', '-0.095', 23, '7.600', '', 4, 0, NULL, NULL, NULL),
(12, 12, '2020-04-23 14:40:43', 287, '105.000', '-0.467', 287, '56.000', '', 4, 0, NULL, NULL, NULL),
(13, 13, '2020-04-23 14:42:37', 13, '23.000', '-0.557', 42, '10.200', '', 4, 0, NULL, NULL, NULL),
(14, 14, '2020-04-23 14:48:08', 6, '27.300', '-0.358', 0, '17.520', 'UNIDADES OBTENIDAS SIN REGISTRAR', 4, 0, NULL, NULL, NULL),
(15, 15, '2020-04-23 14:51:11', 6, '11.500', '-0.435', 16, '6.500', '1.4 KG PRESENTAN DEFECTOS EN EL SALADO.', 4, 0, NULL, NULL, NULL),
(16, 16, '2020-04-23 14:53:24', 242, '74.000', '-0.473', 242, '39.000', '', 4, 0, NULL, NULL, NULL),
(17, 17, '2020-04-23 14:55:38', 27, '42.000', '-0.452', 109, '29.030', '', 4, 0, NULL, NULL, NULL),
(18, 19, '2020-04-23 15:02:27', 6, '11.200', '-0.321', 0, '7.600', 'UNIDADES OBTENIDAS SIN REGISTRAR', 4, 0, NULL, NULL, NULL),
(19, 20, '2020-04-23 15:04:05', 163, '54.000', '-0.348', 163, '35.200', '', 4, 0, NULL, NULL, NULL),
(20, 21, '2020-04-23 15:10:24', 30, '38.000', '-0.553', 68, '17.000', 'DEFECTOS EN SECADO - HUECOS', 4, 0, NULL, NULL, NULL),
(21, 22, '2020-04-23 15:12:19', 37, '46.000', '-0.572', 67, '19.700', 'DEFECTOS EN SECADO - HUECOS', 4, 0, NULL, NULL, NULL),
(22, 23, '2020-04-23 15:14:43', 40, '52.000', '-0.540', 110, '23.900', '', 4, 0, NULL, NULL, NULL),
(23, 24, '2020-04-23 15:16:24', 6, '9.800', '-0.245', 18, '7.400', '', 4, 0, NULL, NULL, NULL),
(24, 25, '2020-04-23 15:18:23', 6, '22.300', '-0.188', 0, '18.100', 'UNIDADES ENVASADAS SIN ESPECIFICAR', 4, 0, NULL, NULL, NULL),
(25, 26, '2020-04-23 15:20:42', 163, '52.000', '-0.491', 163, '26.480', '', 4, 0, NULL, NULL, NULL),
(26, 28, '2020-04-23 15:26:09', 29, '35.200', '-0.511', 74, '17.200', 'ENVASADO EN BLISTER INDIVIDUALES, 63 UNIDADES Y TRIPLES, 11 UNIDADES', 4, 0, NULL, NULL, NULL),
(27, 29, '2020-04-23 15:29:22', 29, '35.300', '-0.473', 66, '18.600', 'ENVASADO EN BLISTER INDIVIDUAL 23 UNIDADES Y BLISTER TRIPLE 43 UNIDADES', 4, 0, NULL, NULL, NULL),
(28, 30, '2020-04-23 15:32:21', 8, '13.400', '-0.313', 23, '9.200', '', 4, 0, NULL, NULL, NULL),
(29, 31, '2020-04-23 15:34:05', 146, '51.000', '-0.363', 146, '32.500', '', 4, 0, NULL, NULL, NULL),
(30, 64, '2020-04-23 15:53:29', 27, '42.000', '-0.309', 109, '29.030', 'ORDEN QUE REMPLAZA A NRO 18, CORRECCION DE ERROR AL ASIGNAR PRODUCTO DE JAMON ITALIANO A SALAME ITALIANO', 4, 0, NULL, NULL, NULL),
(31, 32, '2020-04-23 16:04:38', 30, '44.000', '-0.555', 0, '19.600', 'UNIDADES OBTENIDAS NO REGISTRADAS', 4, 0, NULL, NULL, NULL),
(32, 33, '2020-04-23 16:06:46', 30, '41.000', '-0.493', 0, '20.800', 'UNIDADES ENVASADAS NO REGISTRADAS', 4, 0, NULL, NULL, NULL),
(33, 34, '2020-04-23 16:09:19', 206, '105.000', '-0.291', 206, '74.400', 'SALAMES PARA EL TEUTON - SE TOMA RECETA DE SALAME ESPECIAL DEBIDO A SU SIMILITUD', 4, 0, NULL, NULL, NULL),
(34, 37, '2020-04-23 16:15:08', 160, '56.000', '-0.304', 160, '39.000', '', 4, 0, NULL, NULL, NULL),
(35, 38, '2020-04-23 16:17:07', 28, '43.000', '-0.512', 62, '21.000', '', 4, 0, NULL, NULL, NULL),
(36, 39, '2020-04-23 16:20:18', 35, '51.000', '-0.461', 78, '27.500', '.', 4, 0, NULL, NULL, NULL),
(37, 40, '2020-04-23 16:23:03', 6, '14.400', '-0.326', 28, '9.700', '', 4, 0, NULL, NULL, NULL),
(38, 41, '2020-04-23 16:32:19', 160, '56.000', '-0.298', 160, '39.300', '', 4, 0, NULL, NULL, NULL),
(39, 42, '2020-04-23 16:36:06', 29, '42.000', '-0.505', 82, '20.800', '', 4, 0, NULL, NULL, NULL),
(40, 43, '2020-04-23 16:38:49', 36, '52.000', '-0.473', 101, '27.400', '', 4, 0, NULL, NULL, NULL),
(41, 47, '2020-04-23 16:42:57', 166, '56.000', '-0.287', 166, '39.950', '', 4, 0, NULL, NULL, NULL),
(42, 49, '2020-04-23 16:46:20', 50, '54.000', '-0.526', 69, '25.620', '15.37 KG ENVASADOS EN UNIDADES INDIVIDUALES, 10.25 DESTINO FREEZER CON DEFECTOS EN SECADO - HUECOS', 4, 0, NULL, NULL, NULL),
(43, 50, '2020-04-28 21:48:32', 4, '16.000', '-0.263', 43, '11.800', '', 4, 0, NULL, NULL, NULL),
(44, 44, '2020-04-28 21:51:49', 3, '6.000', '-0.373', 13, '3.765', '', 4, 0, NULL, NULL, NULL),
(45, 46, '2020-04-28 21:56:44', 4, '14.800', '-0.351', 32, '9.600', '', 4, 0, NULL, NULL, NULL),
(46, 48, '2020-04-28 22:00:38', 50, '55.000', '-0.584', 87, '22.856', '', 4, 0, NULL, NULL, NULL),
(47, 52, '2020-04-28 22:03:19', 44, '51.000', '-0.531', 89, '23.900', '', 4, 0, NULL, NULL, NULL),
(48, 53, '2020-04-28 22:04:56', 42, '51.000', '-0.590', 85, '20.900', '', 4, 0, NULL, NULL, NULL),
(49, 56, '2020-04-28 22:07:24', 248, '86.000', '-0.333', 248, '57.395', '', 4, 0, NULL, NULL, NULL),
(50, 59, '2020-04-28 22:08:49', 124, '53.000', '-0.478', 124, '27.660', '', 4, 0, NULL, NULL, NULL),
(51, 36, '2020-04-28 22:18:29', 6, '21.100', '-0.346', 28, '13.800', '', 4, 0, NULL, NULL, NULL),
(52, 27, '2020-05-14 14:54:34', 28, '34.400', '-0.512', 54, '16.800', '.', 4, 0, NULL, NULL, NULL),
(53, 51, '2020-05-14 15:08:13', 6, '11.000', '-0.355', 23, '7.100', '.', 4, 0, NULL, NULL, NULL),
(54, 55, '2020-05-14 15:10:59', 2, '11.400', '-0.333', 23, '7.600', '', 4, 0, NULL, NULL, NULL),
(55, 54, '2020-05-14 15:17:15', 43, '51.000', '-0.549', 89, '23.000', '', 4, 0, NULL, NULL, NULL),
(56, 62, '2020-05-14 15:26:51', 33, '40.000', '-0.475', 86, '21.000', '', 4, 0, NULL, NULL, NULL),
(57, 61, '2020-05-14 15:29:55', 46, '51.000', '-0.435', 106, '28.800', '', 4, 0, NULL, NULL, NULL),
(58, 65, '2020-05-14 15:32:50', 314, '100.000', '-0.243', 314, '75.700', '', 4, 0, NULL, NULL, NULL),
(59, 58, '2020-05-16 13:45:55', 6, '29.900', '-0.266', 73, '21.960', '', 4, 0, NULL, NULL, NULL),
(60, 60, '2020-05-16 13:49:16', 36, '43.000', '-0.512', 80, '21.000', '', 4, 0, NULL, NULL, NULL),
(61, 69, '2020-05-16 13:53:12', 325, '111.000', '-0.323', 325, '74.500', 'LOTE 32', 4, 0, NULL, NULL, NULL),
(62, 75, '2020-05-21 07:17:13', 318, '109.000', '-0.200', 318, '80.000', '', 4, 0, NULL, NULL, NULL),
(63, 66, '2020-05-27 14:42:12', 100, '110.000', '-0.491', 189, '53.400', 'SE ENVASA PRODUCTO EL DIA 27 DE MAYO', 4, 0, NULL, NULL, NULL),
(64, 63, '2020-05-28 06:46:11', 206, '75.000', '-0.353', 206, '48.520', '.', 4, 0, NULL, NULL, NULL),
(65, 84, '2020-05-28 06:49:52', 336, '38.000', '0.000', 336, '38.000', '', 4, 0, NULL, NULL, NULL),
(66, 57, '2020-06-15 18:39:37', 11, '15.000', '0.507', NULL, '7.600', 'Producto retirado sin registro, unidades y peso estimativas.', 4, 0, NULL, NULL, NULL),
(67, 67, '2020-06-15 18:45:51', 8, '16.400', '1.000', NULL, '16.400', 'Producto no ingresado a salado, utilizado en fresco.', 4, 0, NULL, NULL, NULL),
(68, 70, '2020-06-15 18:52:48', 103, '102.000', '0.557', NULL, '55.650', '', 4, 0, NULL, NULL, NULL),
(69, 45, '2020-06-22 16:39:48', 7, '11.000', '0.509', NULL, '5.600', 'Prueba realizada en salame criollo', 4, 0, NULL, NULL, NULL),
(70, 71, '2020-06-22 16:45:20', 8, '13.000', '0.732', NULL, '9.515', '', 4, 0, NULL, NULL, NULL),
(71, 74, '2020-06-22 16:50:23', 8, '14.000', '0.736', NULL, '10.300', '', 4, 0, NULL, NULL, NULL),
(72, 78, '2020-06-22 17:16:30', 7, '40.000', '0.834', NULL, '33.360', 'Panceta Natural 24.340 kg - 61 unidades\r\nPanceta Gourmet 9.020 kg - 28 unidades', 4, 0, NULL, NULL, NULL),
(73, 76, '2020-06-23 06:54:07', 100, '102.500', '0.496', NULL, '54.600', '', 4, 0, NULL, NULL, NULL),
(74, 92, '2020-06-23 07:05:36', 373, '140.000', '0.657', NULL, '92.000', '1 unidad utilizada para testeo', 4, 0, NULL, NULL, NULL),
(75, 104, '2020-06-30 07:00:33', 335, '122.600', '1.000', NULL, '122.600', '', 4, 0, NULL, NULL, NULL),
(76, 86, '2020-06-30 07:09:14', 7, '30.500', '0.872', NULL, '26.600', '48 Unidades de panceta Natural, 35 unidades de Panceta Gourmet.', 4, 0, NULL, NULL, NULL),
(77, 68, '2020-07-07 07:02:08', 2, '9.500', '0.839', NULL, '7.975', '', 4, 0, NULL, NULL, NULL),
(78, 97, '2020-07-07 07:05:31', 10, '54.500', '0.840', NULL, '45.800', '', 4, 0, NULL, NULL, NULL),
(79, 80, '2020-07-07 15:13:44', 54, '56.000', '0.612', NULL, '30.590', 'ENVASADO EL DIA 01-7-2020', 4, 0, NULL, NULL, NULL),
(80, 82, '2020-07-07 15:17:35', 35, '35.000', '0.433', NULL, '17.300', 'ENVASADO 01-7-2020', 4, 0, NULL, NULL, NULL),
(81, 109, '2020-07-07 15:20:44', 340, '135.000', '0.739', NULL, '96.050', '', 4, 0, NULL, NULL, NULL),
(82, 81, '2020-07-07 15:23:57', 55, '58.000', '0.616', NULL, '30.800', 'FINALIZADA 6-7-2020', 4, 0, NULL, NULL, NULL),
(83, 83, '2020-07-14 07:12:13', 14, '30.500', '0.715', NULL, '21.800', '', 4, 0, NULL, NULL, NULL),
(84, 91, '2020-07-14 07:15:19', 74, '73.000', '0.549', NULL, '38.400', '', 4, 0, NULL, NULL, NULL),
(85, 119, '2020-07-14 07:17:58', 188, '75.200', '0.669', NULL, '46.800', '', 4, 0, NULL, NULL, NULL),
(86, 113, '2020-07-14 14:26:34', 362, '155.000', '0.625', NULL, '84.400', '', 4, 0, NULL, NULL, NULL),
(87, 90, '2020-07-14 14:47:17', 76, '76.000', '0.573', NULL, '40.100', '', 4, 0, NULL, NULL, NULL),
(88, 88, '2020-07-22 03:52:53', 310, '110.000', '0.785', NULL, '78.500', 'Dos unidades tomadas para testeo.', 4, 0, NULL, NULL, NULL),
(89, 79, '2020-07-22 04:04:08', 621, '218.000', '0.755', NULL, '151.080', '', 4, 0, NULL, NULL, NULL),
(90, 94, '2020-07-23 11:52:06', 80, '80.000', '0.536', NULL, '42.900', 'MERMA 46.3 %', 4, 0, NULL, NULL, NULL),
(91, 124, '2020-07-23 11:56:06', 111, '41.000', '0.610', NULL, '25.000', 'MERMA 39 %', 4, 0, NULL, NULL, NULL),
(92, 93, '2020-07-23 12:02:45', 93, '86.000', '0.643', NULL, '55.300', 'MERMA 35 % (20/7/20)', 4, 0, NULL, NULL, NULL),
(93, 95, '2020-07-23 12:07:44', 96, '88.800', '0.574', NULL, '50.500', 'MERMA 43 % (17/7/2020/', 4, 0, NULL, NULL, NULL),
(94, 89, '2020-07-23 12:33:16', 76, '75.000', '0.487', NULL, '34.100', '(15/7/2020)', 4, 0, NULL, NULL, NULL),
(95, 105, '2020-07-27 10:15:15', 59, '58.000', '0.516', NULL, '29.900', '', 4, 0, NULL, NULL, NULL),
(96, 100, '2020-07-27 10:21:20', 72, '72.800', '0.505', NULL, '36.800', 'MERMA 45 %', 4, 0, NULL, NULL, NULL),
(97, 103, '2020-07-28 03:01:25', 10, '56.000', '0.682', NULL, '38.200', '', 4, 0, NULL, NULL, NULL),
(98, 72, '2020-07-28 03:04:42', 3, '15.800', '0.671', NULL, '10.600', '', 4, 0, NULL, NULL, NULL),
(99, 87, '2020-07-28 03:07:55', 15, '26.100', '0.716', NULL, '18.700', '', 4, 0, NULL, NULL, NULL),
(100, 99, '2020-07-28 03:12:35', 91, '91.900', '0.494', NULL, '45.400', 'MERMA 50 %', 4, 0, NULL, NULL, NULL),
(101, 114, '2020-07-30 12:38:43', 156, '140.400', '0.596', NULL, '80.400', 'MERMA 42 %', 4, 0, NULL, NULL, NULL),
(102, 73, '2020-07-30 12:41:45', 4, '19.300', '0.684', NULL, '13.200', '', 4, 1, '2020-08-25 06:17:25', 'CIERRE ANTERIOR PARCIAL', 4),
(103, 126, '2020-07-30 12:44:34', 204, '74.000', '0.705', NULL, '52.900', 'MERMA 28,5 %', 4, 0, NULL, NULL, NULL),
(104, 116, '2020-08-01 05:39:06', 149, '142.000', '0.524', NULL, '70.800', 'MRMA 50 %', 4, 0, NULL, NULL, NULL),
(105, 98, '2020-08-04 03:26:11', 17, '33.300', '0.706', NULL, '23.500', 'MERMA 29,5 %', 4, 0, NULL, NULL, NULL),
(106, 115, '2020-08-04 11:25:37', 152, '139.000', '0.573', NULL, '77.400', 'MERMA 44 %', 4, 0, NULL, NULL, NULL),
(107, 77, '2020-08-04 11:28:22', 10, '53.000', '0.268', NULL, '14.200', 'MERMA 25 %', 4, 1, '2020-08-26 14:39:12', 'CORRECCION EN VARIEDADES DE BONDIOLA NATURAL ', 4),
(108, 107, '2020-08-04 11:31:18', 15, '49.600', '0.885', NULL, '43.900', 'MERMA 11 %', 4, 0, NULL, NULL, NULL),
(109, 112, '2020-08-10 03:14:12', 75, '75.000', '0.536', NULL, '37.500', 'MERMA 50 %', 4, 0, NULL, NULL, NULL),
(110, 133, '2020-08-10 03:18:22', 120, '45.600', '0.700', NULL, '30.100', '5 UNIDADES DE MAS OP 132', 4, 0, NULL, NULL, NULL),
(111, 121, '2020-08-10 03:22:13', 80, '74.000', '0.506', NULL, '35.400', 'MERMA 48 %', 4, 0, NULL, NULL, NULL),
(112, 120, '2020-08-10 03:26:52', 96, '85.000', '0.000', NULL, '0.000', 'MERMA 49 %', 4, 0, NULL, NULL, NULL),
(113, 111, '2020-08-11 03:38:26', 78, '71.000', '0.557', NULL, '39.010', 'MERMA 45 %', 4, 0, NULL, NULL, NULL),
(114, 110, '2020-08-11 03:40:40', 79, '73.000', '0.541', NULL, '37.900', 'MERMA 48 %', 4, 0, NULL, NULL, NULL),
(115, 138, '2020-08-13 06:55:04', 160, '67.000', '0.565', NULL, '38.400', '', 4, 0, NULL, NULL, NULL),
(116, 132, '2020-08-14 03:40:59', 235, '89.300', '0.000', NULL, '0.000', 'MERMA 38 %', 4, 0, NULL, NULL, NULL),
(117, 145, '2020-08-21 05:55:10', 120, '48.000', '0.619', NULL, '29.100', 'MERMA 39,400 %', 4, 0, NULL, NULL, NULL),
(118, 125, '2020-08-24 02:49:11', 68, '64.000', '0.470', NULL, '30.100', 'MERMA 53 %', 4, 0, NULL, NULL, NULL),
(119, 122, '2020-08-24 02:52:56', 88, '81.400', '0.000', NULL, '0.000', '168 UNIDADES, 49,900', 4, 0, NULL, NULL, NULL),
(120, 73, '2020-08-25 06:21:35', 10, '53.000', '1.161', NULL, '22.400', 'CIERRE PARCIAL', 4, 0, NULL, NULL, NULL),
(121, 102, '2020-08-25 06:26:02', 15, '29.000', '0.693', NULL, '20.095', 'BONDIOLA NATURAL 66 UNID. 15 KG, BONDIOLA GOURMET 24 UNIDADES 5.095 KG', 4, 1, '2020-08-25 10:00:31', 'CORRECCION EN VARIEDADES DE BONDIOLA NATURAL ', 4),
(122, 102, '2020-08-25 10:03:39', 15, '29.000', '0.693', NULL, '20.095', 'BONDIOLA NATURAL 66 UNIDADES - 15 KG, BONDIOLA GOURMET 5,095 - 24 UNIDADES', 4, 0, NULL, NULL, NULL),
(123, 127, '2020-08-26 09:55:36', 60, '55.000', '0.474', NULL, '25.100', 'MERMA 52 %', 4, 0, NULL, NULL, NULL),
(124, 128, '2020-08-26 09:58:07', 95, '49.000', '0.462', NULL, '24.500', 'MERMA 50 %', 4, 0, NULL, NULL, NULL),
(125, 151, '2020-08-26 10:53:15', 90, '35.100', '0.561', NULL, '19.675', 'MERMA 43,900', 4, 0, NULL, NULL, NULL),
(126, 77, '2020-08-26 14:44:17', 10, '53.000', '0.442', NULL, '23.400', 'CIERRE PARCIAL, SE PRUEBA CARGA DE VARIEDADES DE JAMONES.', 4, 0, NULL, NULL, NULL),
(127, 131, '2020-08-31 02:40:45', 10, '40.500', '0.713', NULL, '28.950', 'MERMA 28,5 %', 4, 0, NULL, NULL, NULL),
(128, 106, '2020-09-01 02:34:59', 15, '28.600', '0.709', NULL, '20.275', 'FINALIZACION DE OP BONDIOLA 24 UNIDADES FINALES DE BN 8,525 KG Y 31 UNIDADES DE BG 11,750 KG FINALES CARGADOS CORRECTAMENTE, REALIZAR CONTROL. MERMA 29 %.', 4, 0, NULL, NULL, NULL),
(129, 134, '2020-09-01 02:39:37', 44, '38.400', '0.409', NULL, '17.600', 'MERMA 55 %.', 4, 0, NULL, NULL, NULL),
(130, 164, '2020-09-03 07:06:00', 142, '59.600', '0.608', NULL, '39.500', 'merma 33,7 %', 4, 0, NULL, NULL, NULL),
(131, 139, '2020-09-04 09:59:04', 57, '48.000', '0.550', NULL, '27.500', 'MERMA 42,7 %', 4, 0, NULL, NULL, NULL),
(132, 117, '2020-09-04 10:01:58', 20, '36.500', '0.677', NULL, '24.700', 'MERMA 32,3 %', 4, 0, NULL, NULL, NULL),
(133, 152, '2020-09-08 02:43:19', 58, '54.000', '0.509', NULL, '27.500', 'MERMA 53 %', 4, 0, NULL, NULL, NULL),
(134, 167, '2020-09-10 07:40:52', 169, '82.800', '0.719', NULL, '50.300', '', 4, 0, NULL, NULL, NULL),
(135, 175, '2020-09-14 09:35:55', 270, '27.800', '1.069', NULL, '27.800', '270 unidades distribuidas en 45 pack de 6 unidades/pack', 4, 0, NULL, NULL, NULL),
(136, 146, '2020-09-15 10:23:00', 47, '42.000', '0.470', NULL, '22.100', 'MERMA 47,5 %.', 4, 0, NULL, NULL, NULL),
(137, 147, '2020-09-16 09:38:49', 109, '96.000', '0.488', NULL, '45.870', 'MERMA 52 %', 4, 0, NULL, NULL, NULL),
(138, 153, '2020-09-22 03:03:57', 114, '109.000', '0.437', NULL, '48.100', 'merma 56 %', 4, 0, NULL, NULL, NULL),
(139, 155, '2020-09-22 09:49:01', 104, '98.000', '0.488', NULL, '48.290', 'MERMA 51 %.', 4, 0, NULL, NULL, NULL),
(140, 174, '2020-09-22 09:51:28', 110, '46.200', '0.730', NULL, '31.400', 'MERMA 32 %.', 4, 0, NULL, NULL, NULL),
(141, 156, '2020-09-23 09:38:40', 105, '98.500', '0.485', NULL, '48.000', 'MERMA 51 %.', 4, 0, NULL, NULL, NULL),
(142, 166, '2020-09-29 09:56:49', 72, '72.800', '0.435', NULL, '32.600', 'MERMA 55 %', 4, 0, NULL, NULL, NULL),
(143, 182, '2020-10-01 03:21:39', 236, '88.000', '0.707', NULL, '63.600', 'MERMA 27,7 %', 4, 0, NULL, NULL, NULL),
(144, 165, '2020-10-03 05:15:29', 56, '53.200', '0.571', NULL, '24.000', 'MERMA 54 %', 4, 0, NULL, NULL, NULL),
(145, 168, '2020-10-06 09:22:48', 32, '31.200', '0.387', NULL, '14.695', 'MERMA 53 %', 4, 0, NULL, NULL, NULL),
(146, 135, '2020-10-07 02:58:50', 10, '40.500', '0.378', NULL, '17.750', 'CIERRE PARCIAL', 4, 1, '2020-12-09 10:29:27', 'CARGA DE DATOS RESTANTES POR CIERRE PARCIAL 9', 4),
(147, 177, '2020-10-15 09:12:25', 28, '28.300', '0.448', NULL, '12.100', '', 4, 0, NULL, NULL, NULL),
(148, 169, '2020-10-16 10:14:10', 100, '96.000', '0.419', NULL, '44.860', 'MERMA 53 %', 4, 0, NULL, NULL, NULL),
(149, 85, '2020-11-25 02:51:10', 10, '47.500', '0.175', NULL, '8.325', 'ENVASADO PARCIAL POR PEDIDO DE VENTAS.', 4, 1, '2020-12-22 08:52:17', 'CIERRE PARCIAL', 4),
(150, 123, '2020-12-01 10:24:22', 4, '6.700', '0.586', NULL, '3.928', '', 4, 0, NULL, NULL, NULL),
(151, 129, '2020-12-01 10:28:18', 10, '17.000', '0.656', NULL, '11.150', '', 4, 0, NULL, NULL, NULL),
(152, 144, '2020-12-01 10:31:38', 9, '48.700', '0.335', NULL, '16.320', 'ENVASADO PARCIAL DE 04 PANCETAS DE UN TOTAL DE 09', 4, 1, '2020-12-29 02:58:34', 'ENVASADO PARCIAL', 4),
(153, 108, '2020-12-01 10:35:45', 10, '46.800', '0.604', NULL, '28.250', '', 4, 0, NULL, NULL, NULL),
(154, 135, '2020-12-09 10:35:53', 10, '47.000', '0.342', NULL, '16.080', 'CORRESPONDE A PANCETA GOURMET, CIERRE PARCIAL', 4, 0, NULL, NULL, NULL),
(155, 101, '2020-12-09 10:47:44', 10, '49.000', '0.632', NULL, '30.950', 'CIERRE TOTAL DEL LOTE', 4, 0, NULL, NULL, NULL),
(156, 136, '2020-12-09 10:53:09', 10, '16.000', '0.545', NULL, '8.715', 'CIERRE TOTAL DE OP', 4, 0, NULL, NULL, NULL),
(157, 140, '2020-12-09 10:59:00', 4, '7.300', '0.560', NULL, '4.085', 'CIERRE TOTAL DE OP, RINDE 56 %', 4, 0, NULL, NULL, NULL),
(158, 143, '2020-12-09 11:04:10', 9, '16.700', '0.178', NULL, '2.975', 'CIERRE PARCIAL DE 03 BONDIOLAS SOBRE UN TOTAL DE 09. RINDE 2,975 KG - 14 UNIDADES. LLEVA OMAR A BS AS. FECHA  9/12', 4, 1, '2020-12-10 10:56:04', 'ENVASADO PARCIAL', 4),
(159, 130, '2020-12-10 10:55:15', 10, '45.000', '0.597', NULL, '26.880', '', 4, 0, NULL, NULL, NULL),
(160, 143, '2020-12-10 10:59:03', 9, '16.700', '0.425', NULL, '7.090', 'ENVASADO PARCIAL 9/12 14 UNIDADES, 2,975 KG', 4, 0, NULL, NULL, NULL),
(161, 137, '2020-12-12 03:34:59', 10, '47.200', '0.581', NULL, '27.400', '1,740 ENVASADOS PARA SU CONTROL COMO DESPERDICIO POR QUISTE EN JAMON', 4, 0, NULL, NULL, NULL),
(162, 158, '2020-12-14 09:27:36', 10, '21.200', '0.613', NULL, '13.000', 'MERMA 38,70 %', 4, 0, NULL, NULL, NULL),
(163, 142, '2020-12-14 09:33:30', 9, '42.300', '0.619', NULL, '26.200', 'MERMA 38 %', 4, 0, NULL, NULL, NULL),
(164, 148, '2020-12-14 09:38:18', 10, '19.900', '0.613', NULL, '12.200', 'MERMA 38,7 %', 4, 0, NULL, NULL, NULL),
(165, 149, '2020-12-14 09:41:07', 10, '50.200', '0.633', NULL, '31.800', 'MERMA 36,65 %', 4, 0, NULL, NULL, NULL),
(166, 173, '2020-12-15 07:19:56', 10, '21.200', '0.590', NULL, '12.500', 'MERMA 41 %.', 4, 0, NULL, NULL, NULL),
(167, 163, '2020-12-15 07:24:21', 10, '20.600', '0.583', NULL, '12.000', 'MERMA 41,75 %.', 4, 0, NULL, NULL, NULL),
(168, 157, '2020-12-15 12:02:02', 10, '50.200', '0.199', NULL, '10.000', 'CIERRE PARCIAL 03 JAMONES  DE 10', 4, 1, '2020-12-24 04:48:44', 'CIERRE PARCIAL 24/12', 4),
(169, 180, '2020-12-15 12:05:06', 10, '18.800', '0.163', NULL, '3.100', 'CIERRE PARCIAL DE 03 BONDIOLAS DE UN TOTAL DE 10.', 4, 1, '2021-01-13 02:13:18', 'ENVASADO PARCIAL', 4),
(170, 162, '2020-12-15 12:15:51', 10, '47.800', '0.000', NULL, '0.000', 'CORRESPONDE A PANCETA GOURMET, SE CIERRA COMO NATURAL (SIN LA FUNCION EN LA APLICACION) DESTINO A INCLUIR EN CAJAS.', 4, 1, '2021-02-02 02:43:54', 'CIERRE PARCIAL 1/2/21', 4),
(171, 144, '2020-12-21 10:23:17', 9, '48.700', '0.143', NULL, '6.940', 'CORRESPONDE A 02 PANCETAS GOURMET, 21 UNIDADES 6,940 KG, SEGUNDO ENVASADO PARCIAL. ', 4, 1, '2020-12-29 02:58:34', 'ENVASADO PARCIAL', 4),
(172, 85, '2020-12-21 10:31:27', 10, '47.500', '0.122', NULL, '5.800', 'CIERRE PARCIAL DIA 21/12 1 JAMON ITALIANO Y 1 JAMON ESPAÑOL. SEGUNDO CIERRE DE OP. ', 4, 1, '2020-12-22 08:52:17', 'CIERRE PARCIAL', 4),
(173, 85, '2020-12-22 08:54:09', 10, '47.500', '0.122', NULL, '5.800', 'CIERRE PARCIAL 1 JAMON ESPAÑOL - 1 JAMON ITALIANO', 4, 0, NULL, NULL, NULL),
(174, 157, '2020-12-24 04:51:23', 10, '50.200', '0.058', NULL, '2.915', 'CIERRE PARCIAL 01 JAMON NATURAL, 2,915 KG, 12 UNID', 4, 0, NULL, NULL, NULL),
(175, 161, '2020-12-24 04:53:57', 5, '21.300', '0.129', NULL, '3.030', 'CIERRE PARCIAL 24/12 1 JAMON 3.030 KG, 14 UNID', 4, 1, '2021-02-02 03:08:50', 'CIERRE PARCIAL 1/2/21', 4),
(176, 159, '2020-12-24 04:56:35', 5, '20.300', '0.511', NULL, '12.000', 'CIERRE PARCIAL 24/12, 3,140 KG, 12 UNIDADES', 4, 0, NULL, NULL, NULL),
(177, 154, '2020-12-24 05:12:30', 10, '50.700', '0.130', NULL, '6.595', 'CIERRE PARCIAL 24-12, 6,595, 14 UNID', 4, 1, '2021-01-29 16:53:38', 'ANULO NACIONALIZACIÓN PARA CIERRE TOTAL', 4),
(178, 180, '2021-01-13 02:45:12', 10, '18.800', '0.153', NULL, '2.910', 'SE ENVASA PARTE COMO BON NATURAL 1,615 KG- 7 UNIDADES. BG 1,295-6 UNIDADES. ENVASADO PARCIAL 2', 4, 0, NULL, NULL, NULL),
(179, 183, '2021-01-28 09:10:01', 49, '52.000', '0.582', NULL, '26.200', 'Rinde 50 %', 4, 0, NULL, NULL, NULL),
(180, 184, '2021-01-28 09:16:11', 47, '49.000', '0.526', NULL, '22.100', 'Merma 55 %', 4, 0, NULL, NULL, NULL),
(181, 150, '2021-01-29 16:51:42', 10, '51.100', '0.528', NULL, '26.980', 'RINDE 52,8 %', 4, 0, NULL, NULL, NULL),
(182, 154, '2021-01-29 16:57:03', 10, '50.700', '0.554', NULL, '28.095', 'RINDE 55.4 %', 4, 0, NULL, NULL, NULL),
(183, 162, '2021-02-02 02:47:18', 10, '47.800', '0.355', NULL, '16.990', 'CIERRE PARCIAL PANCETA GOURMET 45 UNIDADES - 10,760 KG. PANCETA NATURAL 23 UNIDADES - 6,230 KG', 4, 0, NULL, NULL, NULL),
(184, 161, '2021-02-02 03:11:39', 5, '21.300', '0.117', NULL, '2.755', 'CIERRE PARCIAL JN (1) 2,755 -9 UNIDADES', 4, 0, NULL, NULL, NULL),
(185, 193, '2021-02-04 02:56:19', 153, '65.790', '0.608', NULL, '39.500', 'MERMA 40 %', 4, 0, NULL, NULL, NULL),
(186, 172, '2021-02-05 10:55:13', 10, '52.000', '0.610', NULL, '31.740', 'MERMA 39 %', 4, 0, NULL, NULL, NULL),
(187, 198, '2021-02-16 11:50:54', 134, '58.960', '0.585', NULL, '32.160', 'MERMA 45 %. PRODUCTO ACONDICIONADO EL DIA 16/2 ENTREGADO PARA LA VENTA A LAS 10:00 HORAS.', 4, 0, NULL, NULL, NULL),
(188, 192, '2021-02-25 16:56:05', 72, '66.600', '0.498', NULL, '32.400', 'Merma 51,35 %', 4, 0, NULL, NULL, NULL),
(189, 186, '2021-02-25 17:00:24', 67, '64.000', '0.537', NULL, '32.200', 'Merma 50 %', 4, 0, NULL, NULL, NULL),
(190, 187, '2021-02-25 17:04:18', 68, '64.600', '0.510', NULL, '30.600', 'Merma 52 %', 4, 0, NULL, NULL, NULL),
(191, 195, '2021-02-27 08:03:08', 56, '54.600', '0.455', NULL, '26.400', 'MERMA 51,6 %', 4, 0, NULL, NULL, NULL),
(192, 196, '2021-02-27 08:05:28', 56, '54.100', '0.464', NULL, '25.500', 'MERMA 52 %', 4, 0, NULL, NULL, NULL),
(193, 197, '2021-02-27 08:08:48', 56, '54.400', '0.502', NULL, '27.600', 'MERMA 49 %', 4, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_produccion_mediciones`
--

DROP TABLE IF EXISTS `orden_produccion_mediciones`;
CREATE TABLE IF NOT EXISTS `orden_produccion_mediciones` (
  `id_medicion` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordenprod_fin` int(11) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `peso` decimal(10,3) DEFAULT NULL,
  `merma` decimal(10,3) DEFAULT NULL,
  `responsable` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_medicion`),
  KEY `mediciones_idordenprod_fin_idx` (`id_ordenprod_fin`)
) ENGINE=InnoDB AUTO_INCREMENT=856 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orden_produccion_mediciones`
--

INSERT INTO `orden_produccion_mediciones` (`id_medicion`, `id_ordenprod_fin`, `sort`, `peso`, `merma`, `responsable`, `fecha`) VALUES
(1, 1, 1, '0.000', '0.000', 'DAMIAN', '2020-01-01'),
(2, 1, 2, '0.000', '0.000', 'DAMIAN', '2020-01-07'),
(3, 1, 3, '0.000', '0.000', 'DAMIAN', '2020-01-17'),
(4, 1, 4, '0.000', '0.000', 'DAMIAN', '2020-01-21'),
(5, 1, 5, '0.000', '0.000', '', '2020-01-28'),
(6, 2, 1, '0.000', '0.000', 'DAMIAN', '2020-01-07'),
(7, 2, 2, '0.000', '0.000', 'DAMIAN', '2020-01-10'),
(8, 2, 3, '0.000', '0.000', 'DAMIAN', '2020-01-15'),
(9, 2, 4, '0.000', '0.000', 'DAMIAN', '2020-01-20'),
(10, 2, 5, '0.000', '0.000', 'DAMIAN', '2020-01-21'),
(11, 3, 1, '0.000', '0.000', 'DAMIAN', '2020-01-01'),
(12, 3, 2, '0.000', '0.000', 'DAMIAN', '2020-12-07'),
(13, 3, 3, '0.000', '0.000', 'DAMIAN', '2020-12-14'),
(14, 3, 4, '0.000', '0.000', 'DAMIAN', '2020-12-21'),
(15, 3, 5, '0.000', '0.000', 'DAMIAN', '2020-12-28'),
(16, 4, 1, '65.000', '0.000', 'DAMIAN', '2020-01-20'),
(17, 4, 2, '65.000', '0.000', 'DAMIAN', '2020-01-22'),
(18, 4, 3, '65.000', '0.000', 'DAMIAN', '2020-02-23'),
(19, 4, 4, '65.000', '0.000', 'DAMIAN', '2020-01-24'),
(20, 4, 5, '36.800', '0.434', 'DAMIAN', '2020-01-30'),
(21, 5, 1, '59.000', '0.000', 'DAMIAN', '2020-01-13'),
(22, 5, 2, '59.000', '0.000', 'DAMIAN', '2020-12-13'),
(23, 5, 3, '59.000', '0.000', 'DAMIAN', '2020-12-13'),
(24, 5, 4, '59.000', '0.000', 'DAMIAN', '2020-12-13'),
(25, 5, 5, '0.000', '0.000', '', NULL),
(26, 6, 1, '11.700', '0.000', 'DAMIAN', '2020-01-13'),
(27, 6, 2, '11.700', '0.000', 'DAMIAN', '2020-01-20'),
(28, 6, 3, '11.700', '0.000', 'DAMIAN', '2020-01-27'),
(29, 6, 4, '4.650', '0.603', 'DAMIAN', '2020-02-03'),
(30, 6, 5, '0.000', '0.000', '', NULL),
(31, 7, 1, '24.800', '0.000', 'DAMIAN', '2020-01-13'),
(32, 7, 2, '24.800', '0.000', 'DAMIAN', '2020-01-20'),
(33, 7, 3, '24.800', '0.000', 'DAMIAN', '2020-01-27'),
(34, 7, 4, '18.300', '0.262', 'DAMIAN', '2020-01-03'),
(35, 7, 5, '0.000', '0.000', '', NULL),
(36, 8, 1, '55.000', '0.000', 'DAMIAN', '2020-01-23'),
(37, 8, 2, '55.000', '0.000', 'DAMIAN', '2020-01-30'),
(38, 8, 3, '55.000', '0.000', 'DAMIAN', '2020-01-30'),
(39, 8, 4, '31.000', '0.400', 'DAMIAN', '2020-01-30'),
(40, 8, 5, '0.000', '1.000', '', NULL),
(41, 9, 1, '64.000', '0.000', 'DAMIAN', '2020-01-23'),
(42, 9, 2, '64.000', '0.000', 'DAMIAN', '2020-01-30'),
(43, 9, 3, '64.000', '0.000', 'DAMIAN', '2020-02-06'),
(44, 9, 4, '32.700', '0.489', 'DAMIAN', '2020-02-13'),
(45, 9, 5, '0.000', '0.000', '', NULL),
(46, 10, 1, '26.300', '0.000', 'DAMIAN', '2020-01-23'),
(47, 10, 2, '26.300', '0.000', 'DAMIAN', '2020-01-23'),
(48, 10, 3, '26.300', '0.000', 'DAMIAN', '2020-01-23'),
(49, 10, 4, '26.300', '0.000', 'DAMIAN', '2020-01-23'),
(50, 10, 5, '0.000', '0.000', '', NULL),
(51, 11, 1, '8.400', '0.000', 'DAMIAN', '2020-01-23'),
(52, 11, 2, '8.400', '0.000', 'DAMIAN', '2020-01-30'),
(53, 11, 3, '8.400', '0.000', 'DAMIAN', '2020-02-06'),
(54, 11, 4, '7.600', '0.095', 'DAMIAN', '2020-02-13'),
(55, 11, 5, '0.000', '0.000', '', NULL),
(56, 12, 1, '105.000', '0.000', 'DAMIAN', '2020-01-29'),
(57, 12, 2, '105.000', '0.000', 'DAMIAN', '2020-01-29'),
(58, 12, 3, '105.000', '0.000', 'DAMIAN', '2020-01-29'),
(59, 12, 4, '56.000', '0.467', 'DAMIAN', '2020-02-05'),
(60, 12, 5, '0.000', '0.000', '', NULL),
(61, 13, 1, '23.000', '0.000', 'DAMIAN', '2020-01-29'),
(62, 13, 2, '23.000', '0.000', 'DAMIAN', '2020-02-05'),
(63, 13, 3, '23.000', '0.000', 'DAMIAN', '2020-02-12'),
(64, 13, 4, '10.200', '0.557', 'DAMIAN', '2020-02-19'),
(65, 13, 5, '0.000', '0.000', '', NULL),
(66, 14, 1, '27.300', '0.000', 'DAMIAN', '2020-01-29'),
(67, 14, 2, '27.300', '0.000', 'DAMIAN', '2020-02-05'),
(68, 14, 3, '27.300', '0.000', 'DAMIAN', '2020-02-12'),
(69, 14, 4, '17.520', '0.358', 'DAMIAN', '2020-02-19'),
(70, 14, 5, '0.000', '0.000', '', NULL),
(71, 15, 1, '11.500', '0.000', 'DAMIAN', '2020-01-29'),
(72, 15, 2, '11.500', '0.000', 'DAMIAN', '2020-02-05'),
(73, 15, 3, '11.500', '0.000', 'DAMIAN', '2020-02-12'),
(74, 15, 4, '6.500', '0.435', 'DAMIAN', '2020-02-19'),
(75, 15, 5, '0.000', '0.000', '', NULL),
(76, 16, 1, '74.000', '0.000', 'DAMIAN', '2020-02-05'),
(77, 16, 2, '74.000', '0.000', 'DAMIAN', '2020-02-05'),
(78, 16, 3, '74.000', '0.000', 'DAMIAN', '2020-02-05'),
(79, 16, 4, '39.000', '0.473', 'DAMIAN', '2020-02-12'),
(80, 16, 5, '0.000', '0.000', '', NULL),
(81, 17, 1, '42.000', '0.000', 'DAMIAN', '2020-02-05'),
(82, 17, 2, '42.000', '0.000', 'DAMIAN', '2020-02-12'),
(83, 17, 3, '42.000', '0.000', 'DAMIAN', '2020-02-19'),
(84, 17, 4, '29.030', '0.309', 'DAMIAN', '2020-02-26'),
(85, 17, 5, '0.000', '0.000', '', NULL),
(86, 18, 1, '11.200', '0.000', 'DAMIAN', '2020-02-05'),
(87, 18, 2, '11.200', '0.000', 'DAMIAN', '2020-02-12'),
(88, 18, 3, '11.200', '0.000', 'DAMIAN', '2020-02-19'),
(89, 18, 4, '7.600', '0.321', 'DAMIAN', '2020-02-26'),
(90, 18, 5, '0.000', '0.000', '', NULL),
(91, 19, 1, '54.000', '0.000', 'DAMIAN', '2020-02-19'),
(92, 19, 2, '54.000', '0.000', 'DAMIAN', '2020-02-19'),
(93, 19, 3, '54.000', '0.000', 'DAMIAN', '2020-02-19'),
(94, 19, 4, '35.200', '0.348', 'DAMIAN', '2020-02-26'),
(95, 19, 5, '0.000', '0.000', '', NULL),
(96, 20, 1, '38.000', '0.000', 'DAMIAN', '2020-02-19'),
(97, 20, 2, '38.000', '0.000', 'DAMIAN', '2020-02-26'),
(98, 20, 3, '38.000', '0.000', 'DAMIAN', '2020-03-04'),
(99, 20, 4, '17.000', '0.553', 'DAMIAN', '2020-03-11'),
(100, 20, 5, '0.000', '0.000', '', NULL),
(101, 21, 1, '46.000', '0.000', 'DAMIAN', '2020-02-19'),
(102, 21, 2, '46.000', '0.000', 'DAMIAN', '2020-02-26'),
(103, 21, 3, '46.000', '0.000', 'DAMIAN', '2020-03-04'),
(104, 21, 4, '19.700', '0.572', 'DAMIAN', '2020-03-11'),
(105, 21, 5, '0.000', '0.000', '', NULL),
(106, 22, 1, '52.000', '0.000', 'DAMIAN', '2020-02-19'),
(107, 22, 2, '52.000', '0.000', 'DAMIAN', '2020-02-26'),
(108, 22, 3, '52.000', '0.000', 'DAMIAN', '2020-03-04'),
(109, 22, 4, '23.900', '0.540', 'DAMIAN', '2020-03-11'),
(110, 22, 5, '0.000', '0.000', '', NULL),
(111, 23, 1, '9.800', '0.000', 'DAMIAN', '2020-02-19'),
(112, 23, 2, '9.800', '0.000', 'DAMIAN', '2020-02-26'),
(113, 23, 3, '9.800', '0.000', 'DAMIAN', '2020-03-04'),
(114, 23, 4, '7.400', '0.245', 'DAMIAN', '2020-03-11'),
(115, 23, 5, '0.000', '0.000', '', NULL),
(116, 24, 1, '22.300', '0.000', 'DAMIAN', '2020-02-19'),
(117, 24, 2, '22.300', '0.000', 'DAMIAN', '2020-02-26'),
(118, 24, 3, '22.300', '0.000', 'DAMIAN', '2020-03-04'),
(119, 24, 4, '18.100', '0.188', 'DAMIAN', '2020-03-11'),
(120, 24, 5, '0.000', '0.000', '', NULL),
(121, 25, 1, '52.000', '0.000', 'DAMIAN', '2020-02-25'),
(122, 25, 2, '52.000', '0.000', 'DAMIAN', '2020-02-25'),
(123, 25, 3, '52.000', '0.000', 'DAMIAN', '2020-02-25'),
(124, 25, 4, '26.480', '0.491', 'DAMIAN', '2020-03-03'),
(125, 25, 5, '0.000', '0.000', '', NULL),
(126, 26, 1, '35.200', '0.000', 'DAMIAN', '2020-02-25'),
(127, 26, 2, '35.200', '0.000', 'DAMIAN', '2020-03-03'),
(128, 26, 3, '35.200', '0.000', 'DAMIAN', '2020-03-10'),
(129, 26, 4, '17.200', '0.511', 'DAMIAN', '2020-03-17'),
(130, 26, 5, '0.000', '0.000', '', NULL),
(131, 27, 1, '35.300', '0.000', 'DAMIAN', '2020-02-25'),
(132, 27, 2, '35.300', '0.000', 'DAMIAN', '2020-03-03'),
(133, 27, 3, '35.300', '0.000', 'DAMIAN', '2020-03-10'),
(134, 27, 4, '18.600', '0.473', 'DAMIAN', '2020-03-17'),
(135, 27, 5, '0.000', '0.000', '', NULL),
(136, 28, 1, '13.400', '0.000', 'DAMIAN', '2020-02-25'),
(137, 28, 2, '13.400', '0.000', 'DAMIAN', '2020-03-03'),
(138, 28, 3, '13.400', '0.000', 'DAMIAN', '2020-03-10'),
(139, 28, 4, '9.200', '0.313', 'DAMIAN', '2020-03-17'),
(140, 28, 5, '0.000', '0.000', '', NULL),
(141, 29, 1, '51.000', '0.000', 'DAMIAN', '2020-03-04'),
(142, 29, 2, '51.000', '0.000', 'DAMIAN', '2020-03-04'),
(143, 29, 3, '51.000', '0.000', 'DAMIAN', '2020-03-04'),
(144, 29, 4, '32.500', '0.363', 'DAMIAN', '2020-03-11'),
(145, 29, 5, '0.000', '0.000', '', NULL),
(146, 30, 1, '42.000', '0.000', 'DAMIAN', '2020-02-05'),
(147, 30, 2, '42.000', '0.000', 'DAMIAN', '2020-02-12'),
(148, 30, 3, '42.000', '0.000', 'DAMIAN', '2020-02-19'),
(149, 30, 4, '29.030', '0.309', 'DAMIAN', '2020-02-26'),
(150, 30, 5, '0.000', '0.000', '', NULL),
(151, 31, 1, '44.000', '0.000', 'DAMIAN', '2020-03-04'),
(152, 31, 2, '44.000', '0.000', 'DAMIAN', '2020-03-11'),
(153, 31, 3, '44.000', '0.000', 'DAMIAN', '2020-03-18'),
(154, 31, 4, '19.600', '0.555', 'DAMIAN', '2020-03-25'),
(155, 31, 5, '0.000', '0.000', '', NULL),
(156, 32, 1, '41.000', '0.000', 'DAMIAN', '2020-03-04'),
(157, 32, 2, '41.000', '0.000', 'DAMIAN', '2020-03-11'),
(158, 32, 3, '41.000', '0.000', 'DAMIAN', '2020-03-18'),
(159, 32, 4, '20.800', '0.493', 'DAMIAN', '2020-03-25'),
(160, 32, 5, '0.000', '0.000', '', NULL),
(161, 33, 1, '105.000', '0.000', 'DAMIAN', '2020-03-04'),
(162, 33, 2, '105.000', '0.000', 'DAMIAN', '2020-03-11'),
(163, 33, 3, '105.000', '0.000', 'DAMIAN', '2020-03-11'),
(164, 33, 4, '74.400', '0.291', 'DAMIAN', '2020-03-18'),
(165, 33, 5, '0.000', '0.000', '', NULL),
(166, 34, 1, '56.000', '0.000', 'DAMIAN', '2020-03-10'),
(167, 34, 2, '56.000', '0.000', 'DAMIAN', '2020-03-10'),
(168, 34, 3, '56.000', '0.000', 'DAMIAN', '2020-03-10'),
(169, 34, 4, '39.000', '0.304', 'DAMIAN', '2020-03-17'),
(170, 34, 5, '0.000', '0.000', '', NULL),
(171, 35, 1, '43.000', '0.000', 'DAMIAN', '2020-03-10'),
(172, 35, 2, '43.000', '0.000', 'DAMIAN', '2020-03-17'),
(173, 35, 3, '43.000', '0.000', 'DAMIAN', '2020-03-17'),
(174, 35, 4, '21.000', '0.512', 'DAMIAN', '2020-03-24'),
(175, 35, 5, '0.000', '0.000', '', NULL),
(176, 36, 1, '51.000', '0.000', 'DAMIAN', '2020-03-10'),
(177, 36, 2, '51.000', '0.000', 'DAMIAN', '2020-03-17'),
(178, 36, 3, '51.000', '0.000', 'DAMIAN', '2020-03-24'),
(179, 36, 4, '27.500', '0.461', 'DAMIAN', '2020-04-02'),
(180, 36, 5, '0.000', '0.000', '', NULL),
(181, 37, 1, '14.400', '0.000', 'DAMIAN', '2020-03-10'),
(182, 37, 2, '14.400', '0.000', 'DAMIAN', '2020-03-17'),
(183, 37, 3, '14.400', '0.000', 'DAMIAN', '2020-04-01'),
(184, 37, 4, '9.700', '0.326', 'DAMIAN', '2020-04-15'),
(185, 37, 5, '0.000', '0.000', '', NULL),
(186, 38, 1, '56.000', '0.000', 'DAMIAN', '2020-03-19'),
(187, 38, 2, '56.000', '0.000', 'DAMIAN', '2020-03-19'),
(188, 38, 3, '56.000', '0.000', 'DAMIAN', '2020-03-19'),
(189, 38, 4, '39.300', '0.298', 'DAMIAN', '2020-03-26'),
(190, 38, 5, '0.000', '0.000', '', NULL),
(191, 39, 1, '42.000', '0.000', 'DAMIAN', '2020-03-19'),
(192, 39, 2, '42.000', '0.000', 'DAMIAN', '2020-03-26'),
(193, 39, 3, '42.000', '0.000', 'DAMIAN', '2020-04-02'),
(194, 39, 4, '20.800', '0.505', 'DAMIAN', '2020-04-16'),
(195, 39, 5, '0.000', '0.000', '', NULL),
(196, 40, 1, '52.000', '0.000', 'DAMIAN', '2020-03-19'),
(197, 40, 2, '52.000', '0.000', 'DAMIAN', '2020-03-26'),
(198, 40, 3, '52.000', '0.000', 'DAMIAN', '2020-04-02'),
(199, 40, 4, '27.400', '0.473', 'DAMIAN', '2020-04-16'),
(200, 40, 5, '0.000', '0.000', '', NULL),
(201, 41, 1, '56.000', '0.000', 'DAMIAN', '2020-03-25'),
(202, 41, 2, '56.000', '0.000', 'DAMIAN', '2020-04-02'),
(203, 41, 3, '56.000', '0.000', 'DAMIAN', '2020-04-02'),
(204, 41, 4, '33.950', '0.394', 'DAMIAN', '2020-04-02'),
(205, 41, 5, '0.000', '0.000', '', NULL),
(206, 42, 1, '54.000', '0.000', 'DAMIAN', '2020-03-25'),
(207, 42, 2, '54.000', '0.000', 'DAMIAN', '2020-03-25'),
(208, 42, 3, '54.000', '0.000', 'DAMIAN', '2020-03-25'),
(209, 42, 4, '25.620', '0.500', 'DAMIAN', '2020-04-20'),
(210, 42, 5, '0.000', '0.000', '', NULL),
(211, 43, 1, '16.000', '0.000', 'DAMIAN', '2020-03-23'),
(212, 43, 2, '16.000', '0.000', 'DAMIAN', '2020-03-30'),
(213, 43, 3, '16.000', '0.000', 'DAMIAN', '2020-04-13'),
(214, 43, 4, '11.800', '0.262', 'DAMIAN', '2020-04-23'),
(215, 43, 5, '0.000', '0.000', '', NULL),
(216, 44, 1, '6.000', '0.000', 'DAMIAN', '2020-03-18'),
(217, 44, 2, '6.000', '0.000', 'DAMIAN', '2020-03-25'),
(218, 44, 3, '6.000', '0.000', 'DAMIAN', '2020-04-08'),
(219, 44, 4, '3.765', '0.372', 'DAMIAN', '2020-04-23'),
(220, 44, 5, '0.000', '0.000', '', NULL),
(221, 45, 1, '14.800', '0.000', 'DAMIAN', '2020-03-18'),
(222, 45, 2, '14.800', '0.000', 'DAMIAN', '2020-03-25'),
(223, 45, 3, '14.800', '0.000', 'DAMIAN', '2020-04-09'),
(224, 45, 4, '9.600', '0.351', 'DAMIAN', '2020-04-23'),
(225, 45, 5, '0.000', '0.000', '', NULL),
(226, 46, 1, '55.000', '0.000', 'DAMIAN', '2020-03-24'),
(227, 46, 2, '55.000', '0.000', 'DAMIAN', '2020-03-30'),
(228, 46, 3, '55.000', '0.000', 'DAMIAN', '2020-04-08'),
(229, 46, 4, '22.855', '0.584', 'DAMIAN', '2020-04-22'),
(230, 46, 5, '0.000', '0.000', '', NULL),
(231, 47, 1, '51.000', '0.000', 'DAMIAN', '2020-03-31'),
(232, 47, 2, '51.000', '0.000', 'DAMIAN', '2020-04-06'),
(233, 47, 3, '51.000', '0.000', 'DAMIAN', '2020-04-13'),
(234, 47, 4, '23.900', '0.531', 'DAMIAN', '2020-04-27'),
(235, 47, 5, '0.000', '0.000', '', NULL),
(236, 48, 1, '51.000', '0.000', 'DAMIAN', '2020-03-31'),
(237, 48, 2, '51.000', '0.000', 'DAMIAN', '2020-04-07'),
(238, 48, 3, '51.000', '0.000', 'DAMIAN', '2020-04-13'),
(239, 48, 4, '20.900', '0.590', 'DAMIAN', '2020-04-27'),
(240, 48, 5, '0.000', '0.000', '', NULL),
(241, 49, 1, '86.000', '0.000', 'DAMIAN', '2020-04-07'),
(242, 49, 2, '86.000', '0.000', 'DAMIAN', '2020-04-07'),
(243, 49, 3, '86.000', '0.000', 'DAMIAN', '2020-04-14'),
(244, 49, 4, '57.395', '0.333', 'DAMIAN', '2020-04-16'),
(245, 49, 5, '0.000', '0.000', '', NULL),
(246, 50, 1, '53.000', '0.000', 'DAMIAN', '2020-04-14'),
(247, 50, 2, '53.000', '0.000', 'DAMIAN', '2020-04-14'),
(248, 50, 3, '53.000', '0.000', 'DAMIAN', '2020-04-21'),
(249, 50, 4, '27.660', '0.478', 'DAMIAN', '2020-04-23'),
(250, 50, 5, '0.000', '0.000', '', NULL),
(251, 51, 1, '21.100', '0.000', 'DAMIAN', '2020-03-03'),
(252, 51, 2, '21.100', '0.000', 'DAMIAN', '2020-03-27'),
(253, 51, 3, '21.100', '0.000', 'DAMIAN', '2020-04-02'),
(254, 51, 4, '13.800', '0.300', 'DAMIAN', '2020-04-15'),
(255, 51, 5, '0.000', '0.000', '', NULL),
(256, 52, 1, '34.400', '0.000', 'DAMIAN', '2020-02-25'),
(257, 52, 2, '34.400', '0.000', 'DAMIAN', '2020-03-10'),
(258, 52, 3, '34.400', '0.000', 'DAMIAN', '2020-03-24'),
(259, 52, 4, '16.800', '0.512', 'DAMIAN', '2020-04-15'),
(260, 52, 5, '0.000', '0.000', '', NULL),
(261, 53, 1, '11.000', '0.000', 'DAMIAN', '2020-03-03'),
(262, 53, 2, '11.000', '0.000', 'DAMIAN', '2020-03-17'),
(263, 53, 3, '11.000', '0.000', 'DAMIAN', '2020-04-14'),
(264, 53, 4, '7.100', '0.355', 'DAMIAN', '2020-05-02'),
(265, 53, 5, '0.000', '0.000', '', NULL),
(266, 54, 1, '11.400', '0.000', 'DAMIAN', '2020-03-03'),
(267, 54, 2, '11.400', '0.000', 'DAMIAN', '2020-03-17'),
(268, 54, 3, '11.400', '0.000', 'DAMIAN', '2020-04-14'),
(269, 54, 4, '7.600', '0.333', 'DAMIAN', '2020-05-04'),
(270, 54, 5, '0.000', '0.000', '', NULL),
(271, 55, 1, '51.000', '0.000', 'DAMIAN', '2020-03-31'),
(272, 55, 2, '51.000', '0.000', 'DAMIAN', '2020-04-14'),
(273, 55, 3, '51.000', '0.000', 'DAMIAN', '2020-04-28'),
(274, 55, 4, '23.000', '0.549', 'DAMIAN', '2020-05-07'),
(275, 55, 5, '0.000', '0.000', '', NULL),
(276, 56, 1, '40.000', '0.000', 'DAMIAN', '2020-04-14'),
(277, 56, 2, '40.000', '0.000', 'DAMIAN', '2020-04-21'),
(278, 56, 3, '40.000', '0.000', 'DAMIAN', '2020-04-29'),
(279, 56, 4, '21.000', '0.475', 'DAMIAN', '2020-05-13'),
(280, 56, 5, '0.000', '0.000', '', NULL),
(281, 57, 1, '51.000', '0.000', 'DAMIAN', '2020-04-14'),
(282, 57, 2, '51.000', '0.000', 'DAMIAN', '2020-04-22'),
(283, 57, 3, '51.000', '0.000', 'DAMIAN', '2020-04-29'),
(284, 57, 4, '28.800', '0.435', 'DAMIAN', '2020-05-13'),
(285, 57, 5, '0.000', '0.000', '', NULL),
(286, 58, 1, '100.000', '0.000', 'DAMIAN', '2020-04-29'),
(287, 58, 2, '100.000', '0.000', 'DAMIAN', '2020-05-06'),
(288, 58, 3, '100.000', '0.000', 'DAMIAN', '2020-05-11'),
(289, 58, 4, '75.700', '0.243', 'DAMIAN', '2020-05-11'),
(290, 58, 5, '0.000', '0.000', '', NULL),
(291, 59, 1, '29.900', '0.000', 'DAMIAN', '2020-04-07'),
(292, 59, 2, '29.900', '0.000', 'DAMIAN', '2020-04-14'),
(293, 59, 3, '29.900', '0.000', 'DAMIAN', '2020-04-28'),
(294, 59, 4, '21.960', '0.266', 'DAMIAN', '2020-05-15'),
(295, 59, 5, '0.000', '0.000', '', NULL),
(296, 60, 1, '43.000', '0.000', 'DAMIAN', '2020-04-14'),
(297, 60, 2, '43.000', '0.000', 'DAMIAN', '2020-04-21'),
(298, 60, 3, '43.000', '0.000', 'DAMIAN', '2020-04-28'),
(299, 60, 4, '21.000', '0.512', 'DAMIAN', '2020-05-15'),
(300, 60, 5, '0.000', '0.000', '', NULL),
(301, 61, 1, '111.000', '0.000', 'DAMIAN', '2020-05-05'),
(302, 61, 2, '111.000', '0.000', 'DAMIAN', '2020-05-07'),
(303, 61, 3, '111.000', '0.000', 'DAMIAN', '2020-05-11'),
(304, 61, 4, '74.500', '0.329', 'DAMIAN', '2020-05-14'),
(305, 61, 5, '0.000', '0.000', '', NULL),
(306, 62, 1, '109.000', '0.000', 'Damian', '2020-05-12'),
(307, 62, 2, '109.000', '0.000', 'Damian', '2020-05-12'),
(308, 62, 3, '109.000', '0.000', 'Damian', '2020-05-12'),
(309, 62, 4, '80.000', '0.266', 'Damian', '2020-05-21'),
(310, 62, 5, '0.000', '0.000', '', NULL),
(311, 63, 1, '17.100', '0.000', 'Damian', '2020-04-29'),
(312, 63, 2, '13.900', '0.187', 'Damian', '2020-05-06'),
(313, 63, 3, '11.145', '0.198', 'Damian', '2020-05-13'),
(314, 63, 4, '9.600', '0.139', 'Damian', '2020-05-20'),
(315, 63, 5, '8.900', '0.073', 'Damian', '2020-05-26'),
(316, 64, 1, '75.000', '0.000', 'Damian', '2020-04-22'),
(317, 64, 2, '75.000', '0.000', 'Damian', '2020-04-23'),
(318, 64, 3, '75.000', '0.000', 'Damian', '2020-04-24'),
(319, 64, 4, '48.520', '0.353', 'Damian', '2020-04-30'),
(320, 64, 5, '0.000', '0.000', '', NULL),
(321, 65, 1, '38.000', '0.000', 'Damian', '2020-05-20'),
(322, 65, 2, '38.000', '0.000', 'Damian', '2020-05-20'),
(323, 65, 3, '38.000', '0.000', 'Damian', '2020-05-20'),
(324, 65, 4, '38.000', '0.000', 'Damian', '2020-05-20'),
(325, 65, 5, '0.000', '0.000', '', NULL),
(326, 88, 1, '110.000', '0.000', 'Damian', '2020-05-27'),
(327, 88, 2, '78.500', '0.300', 'Damian', '2020-06-05'),
(328, 88, 3, '78.500', '0.000', 'Damian', '2020-06-05'),
(329, 88, 4, '78.500', '0.000', 'Damian', '2020-06-05'),
(330, 88, 5, '0.000', '0.000', '', NULL),
(331, 89, 1, '218.000', '0.000', 'Damian', '2020-05-19'),
(332, 89, 2, '218.000', '0.000', 'Damian', '2020-06-02'),
(333, 89, 3, '218.000', '0.000', 'Damian', '2020-06-02'),
(334, 89, 4, '151.080', '0.307', 'Damian', '2020-06-02'),
(335, 89, 5, '0.000', '0.000', '', NULL),
(336, 90, 1, '6.400', '0.000', 'DAMIAN', '2020-06-04'),
(337, 90, 2, '5.935', '0.073', 'DAMIAN', '2020-06-18'),
(338, 90, 3, '5.780', '0.026', 'DAMIAN', '2020-06-25'),
(339, 90, 4, '5.490', '0.050', 'DAMIAN', '2020-07-03'),
(340, 90, 5, '4.740', '0.100', 'DAMIAN', '2020-07-17'),
(341, 91, 1, '41.000', '0.000', 'DAMIAN', '2020-07-07'),
(342, 91, 2, '41.000', '0.000', 'DAMIAN', '2020-07-07'),
(343, 91, 3, '41.000', '0.000', 'DAMIAN', '2020-07-07'),
(344, 91, 4, '25.000', '0.390', 'DAMIAN', '2020-07-21'),
(345, 91, 5, '0.000', '0.000', '', NULL),
(346, 92, 1, '8.100', '0.000', 'DAMIAN', '2020-06-04'),
(347, 92, 2, '6.642', '0.180', 'DAMIAN', '2020-06-18'),
(348, 92, 3, '5.380', '0.200', 'DAMIAN', '2020-06-25'),
(349, 92, 4, '5.140', '0.045', 'DAMIAN', '2020-07-03'),
(350, 92, 5, '4.495', '0.125', 'DAMIAN', '2020-07-17'),
(351, 93, 1, '7.400', '0.000', 'DAMIAN', '2020-06-04'),
(352, 93, 2, '4.755', '0.357', 'DAMIAN', '2020-06-25'),
(353, 93, 3, '4.575', '0.038', 'DAMIAN', '2020-07-03'),
(354, 93, 4, '4.370', '0.045', 'DAMIAN', '2020-07-10'),
(355, 93, 5, '4.020', '0.080', 'DAMIAN', '2020-07-17'),
(356, 94, 1, '7.200', '0.000', 'DAMIAN', '2020-06-29'),
(357, 94, 2, '5.503', '0.236', 'DAMIAN', '2020-06-05'),
(358, 94, 3, '4.890', '0.111', 'DAMIAN', '2020-06-10'),
(359, 94, 4, '4.650', '0.049', 'DAMIAN', '2020-06-18'),
(360, 94, 5, '4.135', '0.111', 'DAMIAN', '2020-07-10'),
(361, 95, 1, '7.900', '0.000', 'DAMIAN', '2020-06-16'),
(362, 95, 2, '5.980', '0.200', 'DAMIAN', '2020-06-25'),
(363, 95, 3, '5.590', '0.065', 'DAMIAN', '2020-07-03'),
(364, 95, 4, '5.360', '0.041', 'DAMIAN', '2020-07-10'),
(365, 95, 5, '4.290', '0.200', 'DAMIAN', '2020-07-24'),
(366, 96, 1, '8.200', '0.000', 'DAMIAN', '2020-07-15'),
(367, 96, 2, '6.015', '0.266', 'DAMIAN', '2020-06-25'),
(368, 96, 3, '5.700', '0.052', 'DAMIAN', '2020-07-03'),
(369, 96, 4, '5.405', '0.052', 'DAMIAN', '2020-07-10'),
(370, 96, 5, '4.460', '0.175', 'DAMIAN', '2020-07-24'),
(371, 97, 1, '56.000', '0.000', 'Damian', '2020-06-11'),
(372, 97, 2, '56.000', '0.000', 'Damian', '2020-06-11'),
(373, 97, 3, '56.000', '0.000', 'Damian', '2020-06-11'),
(374, 97, 4, '38.200', '0.318', 'Damian', '2020-07-27'),
(375, 97, 5, '0.000', '0.000', '', NULL),
(376, 98, 1, '15.800', '0.000', 'Damian', '2020-05-05'),
(377, 98, 2, '15.800', '0.000', 'Damian', '2020-05-05'),
(378, 98, 3, '15.800', '0.000', 'Damian', '2020-05-05'),
(379, 98, 4, '10.600', '0.329', 'Damian', '2020-07-27'),
(380, 98, 5, '0.000', '0.000', '', NULL),
(381, 99, 1, '26.100', '0.000', 'Damian', '2020-05-28'),
(382, 99, 2, '26.100', '0.000', 'Damian', '2020-05-28'),
(383, 99, 3, '26.100', '0.000', 'Damian', '2020-05-28'),
(384, 99, 4, '18.700', '0.284', 'Damian', '2020-07-27'),
(385, 99, 5, '0.000', '0.000', '', NULL),
(386, 100, 1, '8.200', '0.000', 'Damian', '2020-06-12'),
(387, 100, 2, '6.155', '0.249', 'Damian', '2020-06-25'),
(388, 100, 3, '6.020', '0.022', 'Damian', '2020-07-03'),
(389, 100, 4, '5.425', '0.099', 'Damian', '2020-07-10'),
(390, 100, 5, '4.665', '0.140', 'Damian', '2020-07-24'),
(391, 101, 1, '7.600', '0.000', 'DAMIAN', '2020-06-24'),
(392, 101, 2, '5.810', '0.236', 'DAMIAN', '2020-07-03'),
(393, 101, 3, '5.285', '0.090', 'DAMIAN', '2020-07-10'),
(394, 101, 4, '4.500', '0.149', 'DAMIAN', '2020-07-17'),
(395, 101, 5, '4.485', '0.003', 'DAMIAN', '2020-07-24'),
(396, 102, 1, '19.300', '0.000', 'DAMIAN', '2020-05-12'),
(397, 102, 2, '19.300', '0.000', 'DAMIAN', '2020-06-10'),
(398, 102, 3, '19.300', '0.000', 'DAMIAN', '2020-06-24'),
(399, 102, 4, '13.200', '0.316', 'DAMIAN', '2020-07-28'),
(400, 102, 5, '0.000', '0.000', '', NULL),
(401, 103, 1, '74.000', '0.000', 'DAMIAN', '2020-07-15'),
(402, 103, 2, '74.000', '0.000', 'DAMIAN', '2020-07-15'),
(403, 103, 3, '74.000', '0.000', 'DAMIAN', '2020-07-15'),
(404, 103, 4, '52.900', '0.285', 'DAMIAN', '2020-07-28'),
(405, 103, 5, '0.000', '0.000', '', NULL),
(406, 104, 1, '7.400', '0.000', 'DAMIAN', '2020-07-26'),
(407, 104, 2, '5.320', '0.281', 'DAMIAN', '2020-07-03'),
(408, 104, 3, '4.890', '0.081', 'DAMIAN', '2020-07-10'),
(409, 104, 4, '4.385', '0.103', 'DAMIAN', '2020-07-17'),
(410, 104, 5, '4.015', '0.084', 'DAMIAN', '2020-07-24'),
(411, 105, 1, '33.300', '0.000', 'Damian', '2020-06-04'),
(412, 105, 2, '33.300', '0.000', 'Damian', '2020-06-04'),
(413, 105, 3, '33.300', '0.000', 'Damian', '2020-06-04'),
(414, 105, 4, '23.500', '0.294', 'Damian', '2020-08-03'),
(415, 105, 5, '0.000', '0.000', '', NULL),
(416, 106, 1, '7.600', '0.000', 'Damian', '2020-06-24'),
(417, 106, 2, '6.010', '0.209', 'Damian', '2020-07-03'),
(418, 106, 3, '5.770', '0.040', 'Damian', '2020-07-10'),
(419, 106, 4, '5.345', '0.074', 'Damian', '2020-07-17'),
(420, 106, 5, '4.615', '0.137', 'Damian', '2020-07-31'),
(421, 107, 1, '53.000', '0.000', 'Damian', '2020-05-19'),
(422, 107, 2, '53.000', '0.000', 'Damian', '2020-05-19'),
(423, 107, 3, '53.000', '0.000', 'Damian', '2020-05-19'),
(424, 107, 4, '14.200', '0.732', 'Damian', '2020-08-03'),
(425, 107, 5, '0.000', '0.000', '', NULL),
(426, 108, 1, '49.600', '0.000', 'Damian', '2020-06-17'),
(427, 108, 2, '49.600', '0.000', 'Damian', '2020-06-17'),
(428, 108, 3, '49.600', '0.000', 'Damian', '2020-06-17'),
(429, 108, 4, '43.900', '0.115', 'Damian', '2020-08-03'),
(430, 108, 5, '0.000', '0.000', '', NULL),
(431, 109, 1, '7.800', '0.000', 'Damian', '2020-06-17'),
(432, 109, 2, '6.400', '0.179', 'Damian', '2020-06-25'),
(433, 109, 3, '4.680', '0.300', 'Damian', '2020-07-31'),
(434, 109, 4, '3.950', '0.156', 'Damian', '2020-08-06'),
(435, 109, 5, '0.000', '0.000', '', NULL),
(436, 110, 1, '45.600', '0.000', 'Damian', '2020-07-23'),
(437, 110, 2, '30.100', '0.300', 'Damian', '2020-08-06'),
(438, 110, 3, '30.100', '0.000', 'Damian', '2020-08-06'),
(439, 110, 4, '30.100', '0.000', 'Damian', '2020-08-06'),
(440, 110, 5, '0.000', '0.000', '', NULL),
(441, 111, 1, '7.400', '0.000', 'Damian', '2020-07-02'),
(442, 111, 2, '5.260', '0.289', 'Damian', '2020-07-10'),
(443, 111, 3, '4.730', '0.101', 'Damian', '2020-07-17'),
(444, 111, 4, '4.335', '0.084', 'Damian', '2020-07-24'),
(445, 111, 5, '3.855', '0.111', 'Damian', '2020-07-31'),
(446, 112, 1, '7.400', '0.000', 'Damian', '2020-06-30'),
(447, 112, 2, '4.675', '0.368', 'Damian', '2020-07-24'),
(448, 112, 3, '4.170', '0.108', 'Damian', '2020-07-31'),
(449, 112, 4, '3.626', '0.130', 'Damian', '2020-08-07'),
(450, 112, 5, '0.000', '0.000', 'Damian', NULL),
(451, 113, 1, '7.700', '0.000', 'Damian', '2020-06-17'),
(452, 113, 2, '6.425', '0.166', 'Damian', '2020-06-25'),
(453, 113, 3, '5.275', '0.179', 'Damian', '2020-07-24'),
(454, 113, 4, '4.820', '0.086', 'Damian', '2020-07-31'),
(455, 113, 5, '4.455', '0.076', 'Damian', '2020-08-10'),
(456, 114, 1, '7.400', '0.000', 'Damian', '2020-06-17'),
(457, 114, 2, '4.595', '0.379', 'Damian', '2020-07-24'),
(458, 114, 3, '4.220', '0.082', 'Damian', '2020-07-31'),
(459, 114, 4, '3.950', '0.064', 'Damian', '2020-08-10'),
(460, 114, 5, '0.000', '0.000', '', NULL),
(461, 115, 1, '68.000', '0.000', 'DAMIAN', '2020-07-30'),
(462, 115, 2, '68.000', '0.000', 'DAMIAN', '2020-07-30'),
(463, 115, 3, '68.000', '0.000', 'DAMIAN', '2020-07-30'),
(464, 115, 4, '38.400', '0.435', 'DAMIAN', '2020-08-13'),
(465, 115, 5, '0.000', '0.000', '', NULL),
(466, 116, 1, '89.300', '0.000', 'Damian', '2020-07-23'),
(467, 116, 2, '89.300', '0.000', 'Damian', '2020-07-23'),
(468, 116, 3, '89.300', '0.000', 'Damian', '2020-07-23'),
(469, 116, 4, '55.170', '0.382', 'Damian', '2020-08-13'),
(470, 116, 5, '0.000', '0.000', '', NULL),
(471, 117, 1, '48.000', '0.000', 'DAMIAN', '2020-08-06'),
(472, 117, 2, '48.000', '0.000', 'DAMIAN', '2020-08-06'),
(473, 117, 3, '48.000', '0.000', 'DAMIAN', '2020-08-06'),
(474, 117, 4, '29.100', '0.394', 'DAMIAN', '2020-08-20'),
(475, 117, 5, '0.000', '0.000', '', NULL),
(476, 118, 1, '7.500', '0.000', 'Damian', '2020-07-07'),
(477, 118, 2, '4.845', '0.354', 'Damian', '2020-07-17'),
(478, 118, 3, '4.535', '0.064', 'Damian', '2020-07-24'),
(479, 118, 4, '3.900', '0.140', 'Damian', '2020-08-10'),
(480, 118, 5, '3.575', '0.083', 'Damian', '2020-08-18'),
(481, 119, 1, '7.500', '0.000', 'Damian', '2020-06-30'),
(482, 119, 2, '5.444', '0.274', 'Damian', '2020-07-10'),
(483, 119, 3, '4.630', '0.149', 'Damian', '2020-07-24'),
(484, 119, 4, '3.965', '0.144', 'Damian', '2020-08-10'),
(485, 119, 5, '3.605', '0.091', '', '2020-08-18'),
(486, 120, 1, '53.000', '0.000', 'DAMIAN', '2020-05-19'),
(487, 120, 2, '53.000', '0.000', 'DAMIAN', '2020-05-19'),
(488, 120, 3, '53.000', '0.000', 'DAMIAN', '2020-05-19'),
(489, 120, 4, '22.400', '0.577', 'DAMIAN', '2020-08-24'),
(490, 120, 5, '0.000', '0.000', '', NULL),
(491, 121, 1, '29.000', '0.000', 'DAMIAN', '2020-06-15'),
(492, 121, 2, '29.000', '0.000', 'DAMIAN', '2020-06-15'),
(493, 121, 3, '29.000', '0.000', 'DAMIAN', '2020-06-15'),
(494, 121, 4, '20.095', '0.307', 'DAMIAN', '2020-08-24'),
(495, 121, 5, '0.000', '0.000', '', NULL),
(496, 122, 1, '29.000', '0.000', 'DAMIAN', '2020-06-15'),
(497, 122, 2, '29.000', '0.000', 'DAMIAN', '2020-06-15'),
(498, 122, 3, '29.000', '0.000', 'DAMIAN', '2020-06-15'),
(499, 122, 4, '20.095', '0.307', 'DAMIAN', '2020-08-24'),
(500, 122, 5, '0.000', '0.000', '', NULL),
(501, 123, 1, '8.700', '0.000', 'Damian', '2020-07-14'),
(502, 123, 2, '6.645', '0.236', 'Damian', '2020-07-24'),
(503, 123, 3, '5.490', '0.174', 'Damian', '2020-07-31'),
(504, 123, 4, '3.970', '0.277', 'Damian', '2020-08-18'),
(505, 123, 5, '3.835', '0.034', 'Damian', '2020-08-24'),
(506, 124, 1, '8.400', '0.000', 'Damian', '2020-07-14'),
(507, 124, 2, '6.625', '0.211', 'Damian', '2020-07-24'),
(508, 124, 3, '5.725', '0.136', 'Damian', '2020-07-31'),
(509, 124, 4, '4.130', '0.279', 'Damian', '2020-08-18'),
(510, 124, 5, '3.920', '0.051', 'Damian', '2020-08-24'),
(511, 125, 1, '35.100', '0.000', 'Damian', '2020-08-12'),
(512, 125, 2, '35.100', '0.000', 'Damian', '2020-08-12'),
(513, 125, 3, '35.100', '0.000', 'Damian', '2020-08-12'),
(514, 125, 4, '19.675', '0.439', 'Damian', '2020-08-26'),
(515, 125, 5, '0.000', '0.000', '', NULL),
(516, 126, 1, '53.000', '0.000', 'DAMIAN', '2020-05-19'),
(517, 126, 2, '53.000', '0.000', 'DAMIAN', '2020-05-19'),
(518, 126, 3, '53.000', '0.000', 'DAMIAN', '2020-05-19'),
(519, 126, 4, '22.400', '0.577', 'DAMIAN', '2020-08-24'),
(520, 126, 5, '0.000', '0.000', '', NULL),
(521, 127, 1, '40.500', '0.000', 'Damian', '2020-07-14'),
(522, 127, 2, '40.500', '0.000', 'Damian', '2020-07-14'),
(523, 127, 3, '40.500', '0.000', 'Damian', '2020-07-14'),
(524, 127, 4, '28.950', '0.285', 'Damian', '2020-08-28'),
(525, 127, 5, '0.000', '0.000', '', NULL),
(526, 128, 1, '28.600', '0.000', 'Damian', '2020-07-17'),
(527, 128, 2, '28.600', '0.000', 'Damian', '2020-07-17'),
(528, 128, 3, '28.600', '0.000', 'Damian', '2020-07-17'),
(529, 128, 4, '20.275', '0.291', 'Damian', '2020-08-31'),
(530, 128, 5, '0.000', '0.000', '', NULL),
(531, 129, 1, '8.000', '0.000', 'Damian', '2020-07-14'),
(532, 129, 2, '5.570', '0.304', 'Damian', '2020-07-31'),
(533, 129, 3, '3.980', '0.285', 'Damian', '2020-08-18'),
(534, 129, 4, '3.735', '0.062', 'Damian', '2020-08-24'),
(535, 129, 5, '3.550', '0.050', 'Damian', '2020-08-31'),
(536, 130, 1, '59.600', '0.000', 'Damian', '2020-08-25'),
(537, 130, 2, '59.600', '0.000', 'Damian', '2020-08-25'),
(538, 130, 3, '59.600', '0.000', 'Damian', '2020-08-25'),
(539, 130, 4, '39.500', '0.337', 'Damian', '2020-09-03'),
(540, 130, 5, '0.000', '0.000', '', NULL),
(541, 131, 1, '7.100', '0.000', 'Damian', '2020-07-30'),
(542, 131, 2, '4.840', '0.318', 'Damian', '2020-08-10'),
(543, 131, 3, '4.195', '0.133', 'Damian', '2020-08-18'),
(544, 131, 4, '4.010', '0.044', 'Damian', '2020-08-24'),
(545, 131, 5, '3.990', '0.005', 'Damian', '2020-08-31'),
(546, 132, 1, '36.500', '0.000', 'Damian', '2020-06-24'),
(547, 132, 2, '36.500', '0.000', 'Damian', '2020-06-24'),
(548, 132, 3, '36.500', '0.000', 'Damian', '2020-06-24'),
(549, 132, 4, '24.700', '0.323', 'Damian', '2020-09-04'),
(550, 132, 5, '0.000', '0.000', '', NULL),
(551, 133, 1, '7.500', '0.000', 'Damian', '2020-08-12'),
(552, 133, 2, '4.720', '0.371', 'Damian', '2020-08-24'),
(553, 133, 3, '4.325', '0.084', 'Damian', '2020-08-31'),
(554, 133, 4, '3.910', '0.096', 'Damian', '2020-09-07'),
(555, 133, 5, '0.000', '0.000', '', NULL),
(556, 134, 1, '82.800', '0.000', 'DAMIAN', '2020-09-02'),
(557, 134, 2, '82.800', '0.000', 'DAMIAN', '2020-09-02'),
(558, 134, 3, '82.800', '0.000', 'DAMIAN', '2020-09-02'),
(559, 134, 4, '50.300', '0.393', 'DAMIAN', '2020-09-10'),
(560, 134, 5, '0.000', '0.000', '', NULL),
(561, 135, 1, '27.800', '0.000', 'Damian', '2020-09-08'),
(562, 135, 2, '27.800', '0.000', 'Damian', '2020-09-08'),
(563, 135, 3, '27.800', '0.000', 'Damian', '2020-09-08'),
(564, 135, 4, '27.800', '0.000', 'Damian', '2020-09-08'),
(565, 135, 5, '0.000', '0.000', '', NULL),
(566, 136, 1, '7.100', '0.000', 'Damian', '2020-08-06'),
(567, 136, 2, '4.805', '0.323', 'Damian', '2020-08-18'),
(568, 136, 3, '4.470', '0.070', 'Damian', '2020-08-24'),
(569, 136, 4, '4.215', '0.057', 'Damian', '2020-08-31'),
(570, 136, 5, '3.775', '0.104', 'Damian', '2020-09-14'),
(571, 137, 1, '7.100', '0.000', 'Damian', '2020-08-06'),
(572, 137, 2, '4.830', '0.320', 'Damian', '2020-08-18'),
(573, 137, 3, '4.350', '0.099', 'Damian', '2020-08-24'),
(574, 137, 4, '4.040', '0.071', 'Damian', '2020-08-31'),
(575, 137, 5, '3.525', '0.127', 'Damian', '2020-09-14'),
(576, 138, 1, '7.200', '0.000', 'Damian', '2020-08-12'),
(577, 138, 2, '5.340', '0.258', 'Damian', '2020-08-24'),
(578, 138, 3, '4.860', '0.090', 'Damian', '2020-08-31'),
(579, 138, 4, '4.405', '0.094', 'Damian', '2020-09-07'),
(580, 138, 5, '3.650', '0.171', 'Damian', '2020-09-21'),
(581, 139, 1, '7.400', '0.000', 'Damian', '2020-08-18'),
(582, 139, 2, '4.800', '0.351', 'Damian', '2020-08-31'),
(583, 139, 3, '4.335', '0.097', 'Damian', '2020-09-07'),
(584, 139, 4, '4.040', '0.068', 'Damian', '2020-09-14'),
(585, 139, 5, '3.850', '0.047', 'Damian', '2020-09-21'),
(586, 140, 1, '46.200', '0.000', 'Damian', '2020-09-08'),
(587, 140, 2, '46.200', '0.000', 'Damian', '2020-09-08'),
(588, 140, 3, '46.200', '0.000', 'Damian', '2020-09-08'),
(589, 140, 4, '31.400', '0.320', 'Damian', '2020-09-22'),
(590, 140, 5, '0.000', '0.000', '', NULL),
(591, 141, 1, '7.500', '0.000', 'Damian', '2020-08-18'),
(592, 141, 2, '5.660', '0.245', 'Damian', '2020-08-31'),
(593, 141, 3, '4.255', '0.248', 'Damian', '2020-09-07'),
(594, 141, 4, '3.715', '0.127', 'Damian', '2020-09-14'),
(595, 141, 5, '3.415', '0.081', 'Damian', '2020-09-21'),
(596, 142, 1, '8.100', '0.000', 'Damian', '2020-08-27'),
(597, 142, 2, '5.005', '0.382', 'Damian', '2020-09-07'),
(598, 142, 3, '4.370', '0.127', 'Damian', '2020-09-14'),
(599, 142, 4, '3.915', '0.104', 'Damian', '2020-09-21'),
(600, 142, 5, '3.665', '0.064', 'Damian', '2020-09-28'),
(601, 143, 1, '88.000', '0.000', 'Damian', '2020-09-24'),
(602, 143, 2, '88.000', '0.000', 'Damian', '2020-09-24'),
(603, 143, 3, '88.000', '0.000', 'Damian', '2020-09-24'),
(604, 143, 4, '63.600', '0.277', 'Damian', '2020-10-01'),
(605, 143, 5, '0.000', '0.000', '', NULL),
(606, 144, 1, '7.600', '0.000', 'Damian', '2020-08-26'),
(607, 144, 2, '4.605', '0.394', 'Damian', '2020-09-07'),
(608, 144, 3, '4.225', '0.083', 'Damian', '2020-09-14'),
(609, 144, 4, '4.000', '0.053', 'Damian', '2020-09-21'),
(610, 144, 5, '3.830', '0.042', 'Damian', '2020-09-28'),
(611, 145, 1, '7.800', '0.000', 'Damian', '2020-09-03'),
(612, 145, 2, '5.085', '0.348', 'Damian', '2020-09-14'),
(613, 145, 3, '4.480', '0.119', 'Damian', '2020-09-21'),
(614, 145, 4, '4.100', '0.085', 'Damian', '2020-09-28'),
(615, 145, 5, '3.825', '0.067', 'Damian', '2020-10-05'),
(616, 146, 1, '40.500', '0.000', 'Damian', '2020-07-23'),
(617, 146, 2, '40.500', '0.000', 'Damian', '2020-07-23'),
(618, 146, 3, '40.500', '0.000', 'Damian', '2020-07-23'),
(619, 146, 4, '17.750', '0.562', 'Damian', '2020-09-29'),
(620, 146, 5, '0.000', '0.000', '', NULL),
(621, 147, 1, '8.100', '0.000', 'DAMIAN', '2020-09-09'),
(622, 147, 2, '5.135', '0.366', 'DAMIAN', '2020-09-21'),
(623, 147, 3, '4.695', '0.086', 'DAMIAN', '2020-09-28'),
(624, 147, 4, '4.360', '0.071', 'DAMIAN', '2020-10-05'),
(625, 147, 5, '4.090', '0.062', 'DAMIAN', '2020-10-13'),
(626, 148, 1, '7.700', '0.000', 'Damian', '2020-09-03'),
(627, 148, 2, '5.420', '0.296', 'Damian', '2020-09-14'),
(628, 148, 3, '4.715', '0.130', 'Damian', '2020-09-21'),
(629, 148, 4, '4.285', '0.091', 'Damian', '2020-09-28'),
(630, 148, 5, '3.790', '0.116', 'Damian', '2020-10-13'),
(631, 149, 1, '47.500', '0.000', 'Damian', '2020-05-27'),
(632, 149, 2, '47.500', '0.000', 'Damian', '2020-05-27'),
(633, 149, 3, '47.500', '0.000', 'Damian', '2020-05-27'),
(634, 149, 4, '30.000', '0.368', 'Damian', '2020-11-11'),
(635, 149, 5, '8.325', '0.723', 'Damian', '2020-11-24'),
(636, 150, 1, '6.700', '0.000', 'Damian', '2020-07-07'),
(637, 150, 2, '6.700', '0.000', 'Damian', '2020-07-07'),
(638, 150, 3, '4.100', '0.388', 'Damian', '2020-11-11'),
(639, 150, 4, '3.928', '0.042', 'Damian', '2020-12-01'),
(640, 150, 5, '0.000', '0.000', '', NULL),
(641, 151, 1, '17.000', '0.000', 'Damian', '2020-07-14'),
(642, 151, 2, '17.000', '0.000', 'Damian', '2020-07-14'),
(643, 151, 3, '11.300', '0.335', 'Damian', '2020-11-11'),
(644, 151, 4, '11.150', '0.013', 'Damian', '2020-12-01'),
(645, 151, 5, '0.000', '0.000', '', NULL),
(646, 152, 1, '48.700', '0.000', 'Damian', '2020-08-06'),
(647, 152, 2, '48.700', '0.000', 'Damian', '2020-08-06'),
(648, 152, 3, '34.300', '0.296', 'Damian', '2020-11-11'),
(649, 152, 4, '34.300', '0.000', 'Damian', '2020-11-11'),
(650, 152, 5, '0.000', '0.000', '', NULL),
(651, 153, 1, '46.800', '0.000', 'Damian', '2020-06-17'),
(652, 153, 2, '46.800', '0.000', 'Damian', '2020-06-17'),
(653, 153, 3, '30.550', '0.347', 'Damian', '2050-11-11'),
(654, 153, 4, '28.250', '0.075', 'Damian', '2020-12-01'),
(655, 153, 5, '0.000', '0.000', '', NULL),
(656, 154, 1, '47.000', '0.000', 'Damian', '2020-07-23'),
(657, 154, 2, '17.750', '0.622', 'Damian', '2020-10-29'),
(658, 154, 3, '16.080', '0.094', 'Damian', '2020-12-09'),
(659, 154, 4, '16.080', '0.000', 'Damian', '2020-12-09'),
(660, 154, 5, '0.000', '0.000', '', NULL),
(661, 155, 1, '49.000', '0.000', 'Damian', '2020-06-15'),
(662, 155, 2, '32.400', '0.339', 'Damian', '2020-11-11'),
(663, 155, 3, '30.950', '0.045', 'Damian', '2020-12-09'),
(664, 155, 4, '30.950', '0.000', 'Damian', '2020-12-09'),
(665, 155, 5, '0.000', '0.000', '', NULL),
(666, 156, 1, '16.000', '0.000', 'Damian', '2020-07-23'),
(667, 156, 2, '16.000', '0.000', 'Damian', '2020-07-23'),
(668, 156, 3, '9.400', '0.412', 'Damian', '2020-11-11'),
(669, 156, 4, '8.715', '0.100', 'Damian', '2020-12-09'),
(670, 156, 5, '0.000', '0.000', '', NULL),
(671, 157, 1, '7.300', '0.000', 'Damian', '2020-07-30'),
(672, 157, 2, '7.300', '0.000', 'Damian', '2020-07-30'),
(673, 157, 3, '5.100', '0.300', 'Damian', '2020-11-11'),
(674, 157, 4, '4.085', '0.199', 'Damian', '2020-12-09'),
(675, 157, 5, '0.000', '0.000', '', NULL),
(676, 158, 1, '16.700', '0.000', 'Damian', '2020-08-06'),
(677, 158, 2, '16.700', '0.000', 'Damian', '2020-08-06'),
(678, 158, 3, '10.600', '0.365', 'Damian', '2020-11-11'),
(679, 158, 4, '2.975', '0.719', 'Damian', '2020-12-09'),
(680, 158, 5, '0.000', '0.000', '', NULL),
(681, 159, 1, '45.000', '0.000', 'DAMIAN', '2020-07-15'),
(682, 159, 2, '45.000', '0.000', 'DAMIAN', '2020-07-15'),
(683, 159, 3, '45.000', '0.000', 'DAMIAN', '2020-07-15'),
(684, 159, 4, '26.880', '0.403', 'DAMIAN', '2020-12-10'),
(685, 159, 5, '0.000', '0.000', '', NULL),
(686, 160, 1, '16.700', '0.000', 'DAMIAN', '2020-08-06'),
(687, 160, 2, '16.700', '0.000', 'DAMIAN', '2020-08-06'),
(688, 160, 3, '16.700', '0.000', 'DAMIAN', '2020-08-06'),
(689, 160, 4, '7.090', '0.575', 'DAMIAN', '2020-12-10'),
(690, 160, 5, '0.000', '0.000', '', NULL),
(691, 161, 1, '47.200', '0.000', 'Damian', '2020-07-23'),
(692, 161, 2, '47.200', '0.000', 'Damian', '2020-07-23'),
(693, 161, 3, '31.800', '0.326', 'Damian', '2020-11-11'),
(694, 161, 4, '29.140', '0.084', 'Damian', '2020-12-11'),
(695, 161, 5, '0.000', '0.000', '', NULL),
(696, 162, 1, '21.200', '0.000', 'Damian', '2020-08-19'),
(697, 162, 2, '21.200', '0.000', 'Damian', '2020-08-19'),
(698, 162, 3, '14.100', '0.335', 'Damian', '2020-11-11'),
(699, 162, 4, '13.000', '0.078', 'Damian', '2020-12-14'),
(700, 162, 5, '0.000', '0.000', '', NULL),
(701, 163, 1, '42.300', '0.000', 'Damian', '2020-08-06'),
(702, 163, 2, '42.300', '0.000', 'Damian', '2020-08-06'),
(703, 163, 3, '28.600', '0.324', 'Damian', '2020-11-11'),
(704, 163, 4, '26.200', '0.084', 'Damian', '2020-12-14'),
(705, 163, 5, '0.000', '0.000', '', NULL),
(706, 164, 1, '19.900', '0.000', 'Damian', '2020-08-11'),
(707, 164, 2, '19.900', '0.000', 'Damian', '2020-08-11'),
(708, 164, 3, '13.200', '0.337', 'Damian', '2020-11-11'),
(709, 164, 4, '12.200', '0.076', 'Damian', '2020-12-14'),
(710, 164, 5, '0.000', '0.000', '', NULL),
(711, 165, 1, '50.200', '0.000', 'Damian', '2020-08-11'),
(712, 165, 2, '50.200', '0.000', 'Damian', '2020-08-11'),
(713, 165, 3, '35.400', '0.295', 'Damian', '2020-11-11'),
(714, 165, 4, '31.800', '0.102', 'Damian', '2020-12-14'),
(715, 165, 5, '0.000', '0.000', '', NULL),
(716, 166, 1, '21.200', '0.000', 'Damian', '2020-09-09'),
(717, 166, 2, '21.200', '0.000', 'Damian', '2020-09-09'),
(718, 166, 3, '13.100', '0.382', 'Damian', '2020-11-11'),
(719, 166, 4, '12.500', '0.046', 'Damian', '2020-12-14'),
(720, 166, 5, '0.000', '0.000', '', NULL),
(721, 167, 1, '20.600', '0.000', 'Damian', '2020-08-25'),
(722, 167, 2, '20.600', '0.000', 'Damian', '2020-08-25'),
(723, 167, 3, '12.900', '0.374', 'Damian', '2020-11-11'),
(724, 167, 4, '12.000', '0.070', 'Damian', '2020-12-14'),
(725, 167, 5, '0.000', '0.917', '', NULL),
(726, 168, 1, '50.200', '0.000', 'Damian', '2020-08-19'),
(727, 168, 2, '50.200', '0.000', 'Damian', '2020-08-19'),
(728, 168, 3, '31.700', '0.369', 'Damian', '2020-11-11'),
(729, 168, 4, '10.000', '0.685', 'Damian', '2020-12-15'),
(730, 168, 5, '0.000', '0.000', '', NULL),
(731, 169, 1, '18.800', '0.000', 'Damian', '2020-09-09'),
(732, 169, 2, '18.800', '0.000', 'Damian', '2020-09-09'),
(733, 169, 3, '13.800', '0.266', 'Damian', '2020-11-11'),
(734, 169, 4, '3.100', '0.775', 'Damian', '2020-12-15'),
(735, 169, 5, '0.000', '0.000', '', NULL),
(736, 170, 1, '47.800', '0.000', 'Damian', '2020-08-25'),
(737, 170, 2, '47.800', '0.000', 'Damian', '2020-08-25'),
(738, 170, 3, '34.800', '0.272', 'Damian', '2020-11-11'),
(739, 170, 4, '11.800', '0.661', 'Damian', '2020-12-15'),
(740, 170, 5, '0.000', '0.000', '', NULL),
(741, 171, 1, '48.700', '0.000', 'Damian', '2020-08-06'),
(742, 171, 2, '34.300', '0.296', 'Damian', '2020-11-11'),
(743, 171, 3, '16.320', '0.524', 'Damian', '2020-12-01'),
(744, 171, 4, '6.940', '0.575', 'Damian', '2020-12-21'),
(745, 171, 5, '0.000', '0.000', '', NULL),
(746, 172, 1, '47.500', '0.000', 'Damian', '2020-05-27'),
(747, 172, 2, '30.000', '0.368', 'Damian', '2020-11-11'),
(748, 172, 3, '8.325', '0.723', 'Damian', '2020-11-24'),
(749, 172, 4, '5.800', '0.303', 'Damian', '2020-12-21'),
(750, 172, 5, '0.000', '0.000', '', NULL),
(751, 173, 1, '47.500', '0.000', 'Damian', '2020-05-27'),
(752, 173, 2, '47.500', '0.000', 'Damian', '2020-05-27'),
(753, 173, 3, '30.000', '0.368', 'Damian', '2020-11-11'),
(754, 173, 4, '5.800', '0.807', 'Damian', '2020-12-21'),
(755, 173, 5, '0.000', '0.000', '', NULL),
(756, 174, 1, '50.200', '0.000', 'Damian', '2020-08-19'),
(757, 174, 2, '31.700', '0.369', 'Damian', '2020-11-11'),
(758, 174, 3, '10.000', '0.685', 'Damian', '2020-12-15'),
(759, 174, 4, '2.915', '0.709', 'Damian', '2020-12-24'),
(760, 174, 5, '0.000', '0.000', '', NULL),
(761, 175, 1, '21.300', '0.000', 'Damian', '2020-08-25'),
(762, 175, 2, '21.300', '0.000', 'Damian', '2020-08-25'),
(763, 175, 3, '21.300', '0.000', 'Damian', '2020-08-25'),
(764, 175, 4, '3.030', '0.858', 'Damian', '2020-12-24'),
(765, 175, 5, '0.000', '0.000', '', NULL),
(766, 176, 1, '20.300', '0.000', 'Damian', '2020-08-25'),
(767, 176, 2, '20.300', '0.000', 'Damian', '2020-08-25'),
(768, 176, 3, '20.300', '0.000', 'Damian', '2020-08-25'),
(769, 176, 4, '3.140', '0.845', 'Damian', '2020-12-24'),
(770, 176, 5, '0.000', '0.000', '', NULL),
(771, 177, 1, '50.700', '0.000', 'Damian', '2020-08-18'),
(772, 177, 2, '50.700', '0.000', 'Damian', '2020-08-18'),
(773, 177, 3, '32.300', '0.363', 'Damian', '2020-11-11'),
(774, 177, 4, '6.595', '0.796', 'Damian', '2020-12-24'),
(775, 177, 5, '0.000', '0.000', '', NULL),
(776, 178, 1, '18.800', '0.000', 'Damian', '2020-09-09'),
(777, 178, 2, '18.800', '0.000', 'Damian', '2020-09-09'),
(778, 178, 3, '18.800', '0.000', 'Damian', '2020-09-09'),
(779, 178, 4, '13.800', '0.266', 'Damian', '2020-11-11'),
(780, 178, 5, '0.000', '0.000', '', NULL),
(781, 179, 1, '8.500', '0.000', 'Damian', '2021-01-06'),
(782, 179, 2, '8.500', '0.000', 'Damian', '2021-01-06'),
(783, 179, 3, '4.325', '0.500', 'Damian', '2021-01-25'),
(784, 179, 4, '4.240', '0.020', 'Damian', '2021-01-27'),
(785, 179, 5, '0.000', '0.000', '', NULL),
(786, 180, 1, '8.400', '0.000', 'Damian', '2021-01-06'),
(787, 180, 2, '8.400', '0.000', 'Damian', '2021-01-06'),
(788, 180, 3, '4.155', '0.500', 'Damian', '2021-01-25'),
(789, 180, 4, '4.020', '0.032', 'Damian', '2021-01-27'),
(790, 180, 5, '0.000', '0.000', '', NULL),
(791, 181, 1, '51.100', '0.000', 'DAMIAN', '2020-08-11'),
(792, 181, 2, '51.100', '0.000', 'DAMIAN', '2020-08-11'),
(793, 181, 3, '35.300', '0.309', 'DAMIAN', '2020-11-11'),
(794, 181, 4, '26.980', '0.236', 'DAMIAN', '2021-01-29'),
(795, 181, 5, '0.000', '0.000', '', NULL),
(796, 182, 1, '50.700', '0.000', 'DAMIAN', '2020-08-18'),
(797, 182, 2, '50.700', '0.000', 'DAMIAN', '2020-08-18'),
(798, 182, 3, '32.300', '0.363', 'DAMIAN', '2020-11-11'),
(799, 182, 4, '28.095', '0.130', 'DAMIAN', '2021-01-29'),
(800, 182, 5, '0.000', '0.000', '', NULL),
(801, 183, 1, '47.800', '0.000', 'Damian', '2020-08-25'),
(802, 183, 2, '34.800', '0.272', 'Damian', '2020-11-11'),
(803, 183, 3, '11.800', '0.661', 'Damian', '2020-12-15'),
(804, 183, 4, '16.990', '-0.440', 'Damian', '2021-02-01'),
(805, 183, 5, '0.000', '0.000', '', NULL),
(806, 184, 1, '21.300', '0.000', 'Damian', '2020-08-25'),
(807, 184, 2, '3.030', '0.858', 'Damian', '2020-12-24'),
(808, 184, 3, '6.450', '-1.129', 'Damian', '2021-01-22'),
(809, 184, 4, '2.755', '0.573', 'Damian', '2021-02-09'),
(810, 184, 5, '0.000', '0.000', '', NULL),
(811, 185, 1, '65.790', '0.000', 'Damian', '2021-01-26'),
(812, 185, 2, '65.790', '0.000', 'Damian', '2021-01-26'),
(813, 185, 3, '65.790', '0.000', 'Damian', '2021-01-26'),
(814, 185, 4, '39.500', '0.400', 'Damian', '2021-02-04'),
(815, 185, 5, '0.000', '0.000', '', NULL),
(816, 186, 1, '52.000', '0.000', 'Damian', '2020-09-02'),
(817, 186, 2, '52.000', '0.000', 'Damian', '2020-09-02'),
(818, 186, 3, '36.400', '0.300', 'Damian', '2020-11-11'),
(819, 186, 4, '31.740', '0.128', 'Damian', '2021-02-05'),
(820, 186, 5, '0.000', '0.000', '', NULL),
(821, 187, 1, '4.400', '0.000', 'DAMIAN', '2021-02-04'),
(822, 187, 2, '3.180', '0.277', 'DAMIAN', '2021-02-09'),
(823, 187, 3, '2.205', '0.307', 'DAMIAN', '2021-02-16'),
(824, 187, 4, '2.205', '0.000', 'DAMIAN', '2021-02-16'),
(825, 187, 5, '0.000', '0.000', '', NULL),
(826, 188, 1, '7.400', '0.000', 'DAMIAN', '2021-01-26'),
(827, 188, 2, '4.590', '0.400', 'DAMIAN', '2021-02-08'),
(828, 188, 3, '4.040', '0.120', 'DAMIAN', '2021-02-16'),
(829, 188, 4, '3.780', '0.064', 'DAMIAN', '2021-02-22'),
(830, 188, 5, '0.000', '0.000', '', NULL),
(831, 189, 1, '7.600', '0.000', 'DAMIAN', '2021-01-20'),
(832, 189, 2, '5.400', '0.289', 'DAMIAN', '2021-02-27'),
(833, 189, 3, '4.875', '0.097', 'DAMIAN', '2021-02-02'),
(834, 189, 4, '4.455', '0.086', 'DAMIAN', '2021-02-09'),
(835, 189, 5, '4.210', '0.055', 'DAMIAN', '2021-02-16'),
(836, 190, 1, '7.600', '0.000', 'DAMIAN', '2021-01-20'),
(837, 190, 2, '5.070', '0.333', 'DAMIAN', '2021-01-27'),
(838, 190, 3, '4.555', '0.102', 'DAMIAN', '2021-02-02'),
(839, 190, 4, '4.140', '0.091', 'DAMIAN', '2021-02-09'),
(840, 190, 5, '3.870', '0.065', 'DAMIAN', '2021-02-16'),
(841, 191, 1, '7.800', '0.000', 'DAMIAN', '2021-02-03'),
(842, 191, 2, '5.615', '0.280', 'DAMIAN', '2021-02-09'),
(843, 191, 3, '4.570', '0.186', 'DAMIAN', '2021-02-16'),
(844, 191, 4, '4.120', '0.098', 'DAMIAN', '2021-02-22'),
(845, 191, 5, '0.000', '0.000', '', NULL),
(846, 192, 1, '7.700', '0.000', 'DAMIAN', '2021-02-03'),
(847, 192, 2, '5.500', '0.286', 'DAMIAN', '2021-02-09'),
(848, 192, 3, '4.505', '0.181', 'DAMIAN', '2021-02-16'),
(849, 192, 4, '4.080', '0.094', 'DAMIAN', '2021-02-22'),
(850, 192, 5, '0.000', '0.000', '', NULL),
(851, 193, 1, '7.600', '0.000', 'DAMIAN', '2021-02-03'),
(852, 193, 2, '6.140', '0.192', 'DAMIAN', '2021-02-09'),
(853, 193, 3, '4.885', '0.204', 'DAMIAN', '2021-02-16'),
(854, 193, 4, '4.345', '0.111', 'DAMIAN', '2021-02-22'),
(855, 193, 5, '4.200', '0.033', 'DAMIAN', '2021-02-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nicolasmarcos.dx@gmail.com', '$2y$10$QFS.sLLXX60PBbCzwMi5xuwPdsuYtaHxgpcIpCOrSZFu6fz4EwCNe', '2020-07-28 13:40:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_reg`
--

DROP TABLE IF EXISTS `pedidos_reg`;
CREATE TABLE IF NOT EXISTS `pedidos_reg` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido_padre` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `forma_entrega` varchar(45) DEFAULT NULL,
  `datos_flete` varchar(45) DEFAULT NULL,
  `condicion_pago` varchar(45) DEFAULT NULL,
  `comentarios` text,
  `id_usuario_reg` int(11) DEFAULT NULL,
  `fecha_reg` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint(4) DEFAULT NULL,
  `id_usuario_baja` int(11) DEFAULT NULL,
  `fecha_baja` datetime DEFAULT NULL,
  `motivo_baja` text,
  PRIMARY KEY (`id_pedido`),
  KEY `Pedidos_IdVendedor_idx` (`id_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_productos`
--

DROP TABLE IF EXISTS `pedido_productos`;
CREATE TABLE IF NOT EXISTS `pedido_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(10,3) DEFAULT NULL,
  `tipo_medida` varchar(45) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,3) DEFAULT NULL,
  `precio_final` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PedProd_IdPedido_idx` (`id_pedido`),
  KEY `PedProd_IdProducto_idx` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_mov`
--

DROP TABLE IF EXISTS `productos_mov`;
CREATE TABLE IF NOT EXISTS `productos_mov` (
  `id_movproducto` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_ordenprod_fin` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `peso` decimal(10,3) DEFAULT NULL,
  `id_cuenta` int(11) DEFAULT NULL,
  `id_ajuste_stock` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_movimiento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_movproducto`),
  KEY `productosmov_id_producto_idx` (`id_producto`),
  KEY `productosmov_id_ordenprod_fin_idx` (`id_ordenprod_fin`),
  KEY `productosmov_id_usuario_idx` (`id_usuario`),
  KEY `productosmov_id_cuenta_idx` (`id_cuenta`),
  KEY `productosmov_id_ajsutestock_idx` (`id_ajuste_stock`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos_mov`
--

INSERT INTO `productos_mov` (`id_movproducto`, `id_producto`, `id_ordenprod_fin`, `cantidad`, `peso`, `id_cuenta`, `id_ajuste_stock`, `id_usuario`, `fecha_movimiento`) VALUES
(1, 1, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(2, 2, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(3, 3, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(4, 4, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(5, 5, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(6, 6, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(7, 7, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(8, 8, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(9, 9, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(10, 10, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(11, 11, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(12, 12, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(13, 13, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:10'),
(14, 14, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(15, 15, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(16, 16, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(17, 17, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(18, 18, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(19, 19, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(20, 20, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(21, 21, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(22, 22, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(23, 23, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(24, 24, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(25, 25, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(26, 26, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(27, 27, NULL, '0', NULL, 1, NULL, 1, '2020-05-31 02:23:11'),
(28, 27, 88, '308', '78.500', 17, NULL, 4, '2020-07-22 03:52:53'),
(29, 27, 89, '621', '151.080', 17, NULL, 4, '2020-07-22 04:04:08'),
(30, 1, 90, '158', '42.900', 17, NULL, 4, '2020-07-23 11:52:06'),
(31, 27, 91, '111', '25.000', 17, NULL, 4, '2020-07-23 11:56:06'),
(32, 3, 92, '177', '55.300', 17, NULL, 4, '2020-07-23 12:02:45'),
(33, 5, 93, '187', '50.500', 17, NULL, 4, '2020-07-23 12:07:44'),
(34, 2, 94, '0', '0.000', 17, NULL, 4, '2020-07-23 12:33:16'),
(35, 1, 94, '145', '34.100', 17, NULL, 4, '2020-07-23 12:33:16'),
(36, 3, 95, '109', '29.900', 17, NULL, 4, '2020-07-27 10:15:16'),
(37, 5, 96, '140', '36.800', 17, NULL, 4, '2020-07-27 10:21:20'),
(38, 15, 97, '101', '38.200', 17, NULL, 4, '2020-07-28 03:01:25'),
(39, 26, 98, '34', '10.600', 17, NULL, 4, '2020-07-28 03:04:42'),
(40, 25, 98, '0', '0.000', 17, NULL, 4, '2020-07-28 03:04:42'),
(41, 26, 98, '0', '0.000', 17, NULL, 4, '2020-07-28 03:04:42'),
(42, 25, 98, '0', '0.000', 17, NULL, 4, '2020-07-28 03:04:42'),
(43, 12, 99, '0', '0.000', 17, NULL, 4, '2020-07-28 03:07:55'),
(44, 11, 99, '77', '18.700', 17, NULL, 4, '2020-07-28 03:07:55'),
(45, 12, 99, '0', '0.000', 17, NULL, 4, '2020-07-28 03:07:55'),
(46, 11, 99, '0', '0.000', 17, NULL, 4, '2020-07-28 03:07:55'),
(47, 1, 100, '178', '45.400', 17, NULL, 4, '2020-07-28 03:12:35'),
(48, 1, 101, '301', '80.400', 17, NULL, 4, '2020-07-30 12:38:43'),
(49, 26, 102, '0', '0.000', 17, NULL, 4, '2020-07-30 12:41:45'),
(50, 25, 102, '38', '13.200', 17, NULL, 4, '2020-07-30 12:41:45'),
(51, 26, 102, '0', '0.000', 17, NULL, 4, '2020-07-30 12:41:45'),
(52, 25, 102, '0', '0.000', 17, NULL, 4, '2020-07-30 12:41:45'),
(53, 27, 103, '204', '52.900', 17, NULL, 4, '2020-07-30 12:44:34'),
(54, 3, 104, '297', '70.800', 17, NULL, 4, '2020-08-01 05:39:06'),
(55, 11, 105, '81', '23.500', 17, NULL, 4, '2020-08-04 03:26:11'),
(56, 5, 106, '274', '77.400', 17, NULL, 4, '2020-08-04 11:25:37'),
(57, 26, 107, '38', '14.200', 17, NULL, 4, '2020-08-04 11:28:22'),
(58, 25, 107, '0', '0.000', 17, NULL, 4, '2020-08-04 11:28:22'),
(59, 26, 107, '0', '0.000', 17, NULL, 4, '2020-08-04 11:28:22'),
(60, 25, 107, '0', '0.000', 17, NULL, 4, '2020-08-04 11:28:22'),
(61, 15, 108, '119', '43.900', 17, NULL, 4, '2020-08-04 11:31:18'),
(63, 3, 109, '154', '37.500', 17, NULL, 4, '2020-08-10 03:14:12'),
(64, 27, 110, '125', '30.100', 17, NULL, 4, '2020-08-10 03:18:22'),
(65, 5, 111, '152', '35.400', 17, NULL, 4, '2020-08-10 03:22:13'),
(66, 1, 113, '156', '39.010', 17, NULL, 4, '2020-08-11 03:38:26'),
(67, 5, 114, '166', '37.900', 17, NULL, 4, '2020-08-11 03:40:40'),
(68, 27, 115, '160', '38.400', 17, NULL, 4, '2020-08-13 06:55:04'),
(69, 27, 117, '120', '29.100', 17, NULL, 4, '2020-08-21 05:55:10'),
(70, 1, 118, '129', '30.100', 17, NULL, 4, '2020-08-24 02:49:11'),
(71, 26, 120, '62', '22.400', 17, NULL, 4, '2020-08-25 06:21:35'),
(72, 25, 120, '0', '0.000', 17, NULL, 4, '2020-08-25 06:21:35'),
(73, 26, 120, '0', '0.000', 17, NULL, 4, '2020-08-25 06:21:35'),
(74, 25, 120, '0', '0.000', 17, NULL, 4, '2020-08-25 06:21:35'),
(75, 11, 121, '90', '20.095', 17, NULL, 4, '2020-08-25 06:26:02'),
(76, 11, 122, '90', '20.095', 17, NULL, 4, '2020-08-25 10:03:39'),
(77, 5, 123, '114', '25.100', 17, NULL, 4, '2020-08-26 09:55:36'),
(78, 3, 124, '95', '24.500', 17, NULL, 4, '2020-08-26 09:58:07'),
(79, 27, 125, '90', '19.675', 17, NULL, 4, '2020-08-26 10:53:15'),
(80, 25, 126, '24', '8.200', 17, NULL, 4, '2020-08-26 14:44:17'),
(81, 26, 126, '0', '0.000', 17, NULL, 4, '2020-08-26 14:44:17'),
(82, 21, 126, '19', '7.700', 17, NULL, 4, '2020-08-26 14:44:17'),
(83, 23, 126, '19', '7.500', 17, NULL, 4, '2020-08-26 14:44:17'),
(84, 22, 126, '0', '0.000', 17, NULL, 4, '2020-08-26 14:44:17'),
(85, 24, 126, '0', '0.000', 17, NULL, 4, '2020-08-26 14:44:17'),
(86, 15, 127, '72', '28.950', 17, NULL, 4, '2020-08-31 02:40:45'),
(87, 16, 127, '0', '0.000', 17, NULL, 4, '2020-08-31 02:40:45'),
(88, 19, 127, '0', '0.000', 17, NULL, 4, '2020-08-31 02:40:45'),
(89, 11, 128, '24', '8.525', 17, NULL, 4, '2020-09-01 02:34:59'),
(90, 12, 128, '0', '0.000', 17, NULL, 4, '2020-09-01 02:34:59'),
(91, 13, 128, '31', '11.750', 17, NULL, 4, '2020-09-01 02:34:59'),
(92, 1, 129, '84', '17.600', 17, NULL, 4, '2020-09-01 02:39:37'),
(93, 27, 130, '142', '39.500', 17, NULL, 4, '2020-09-03 07:06:01'),
(94, 1, 131, '107', '27.500', 17, NULL, 4, '2020-09-04 09:59:04'),
(95, 11, 132, '72', '24.700', 17, NULL, 4, '2020-09-04 10:01:58'),
(96, 12, 132, '0', '0.000', 17, NULL, 4, '2020-09-04 10:01:58'),
(97, 13, 132, '0', '0.000', 17, NULL, 4, '2020-09-04 10:01:58'),
(98, 1, 133, '107', '27.500', 17, NULL, 4, '2020-09-08 02:43:19'),
(99, 27, 134, '169', '50.300', 17, NULL, 4, '2020-09-10 07:40:52'),
(100, 9, 135, '45', '27.800', 17, NULL, 4, '2020-09-14 09:35:55'),
(101, 10, 135, '0', '0.000', 17, NULL, 4, '2020-09-14 09:35:55'),
(102, 1, 136, '90', '22.100', 17, NULL, 4, '2020-09-15 10:23:00'),
(103, 3, 137, '216', '45.870', 17, NULL, 4, '2020-09-16 09:38:49'),
(104, 5, 138, '215', '48.100', 17, NULL, 4, '2020-09-22 03:03:57'),
(105, 5, 139, '200', '48.290', 17, NULL, 4, '2020-09-22 09:49:01'),
(106, 27, 140, '110', '31.400', 17, NULL, 4, '2020-09-22 09:51:28'),
(107, 3, 141, '199', '48.000', 17, NULL, 4, '2020-09-23 09:38:40'),
(108, 3, 142, '140', '32.600', 17, NULL, 4, '2020-09-29 09:56:49'),
(109, 27, 143, '236', '63.600', 17, NULL, 4, '2020-10-01 03:21:39'),
(110, 1, 144, '109', '24.000', 17, NULL, 4, '2020-10-03 05:15:29'),
(111, 1, 145, '60', '14.695', 17, NULL, 4, '2020-10-06 09:22:48'),
(112, 17, 146, '48', '17.750', 17, NULL, 4, '2020-10-07 02:58:50'),
(113, 16, 146, '0', '0.000', 17, NULL, 4, '2020-10-07 02:58:50'),
(114, 19, 146, '0', '0.000', 17, NULL, 4, '2020-10-07 02:58:50'),
(115, 7, 147, '52', '12.100', 17, NULL, 4, '2020-10-15 09:12:25'),
(116, 8, 147, '0', '0.000', 17, NULL, 4, '2020-10-15 09:12:25'),
(117, 5, 148, '192', '44.860', 17, NULL, 4, '2020-10-16 10:14:10'),
(118, 25, 149, '10', '3.285', 17, NULL, 4, '2020-11-25 02:51:10'),
(119, 26, 149, '0', '0.000', 17, NULL, 4, '2020-11-25 02:51:10'),
(120, 21, 149, '9', '2.800', 17, NULL, 4, '2020-11-25 02:51:10'),
(121, 23, 149, '8', '2.240', 17, NULL, 4, '2020-11-25 02:51:10'),
(122, 22, 149, '0', '0.000', 17, NULL, 4, '2020-11-25 02:51:10'),
(123, 24, 149, '0', '0.000', 17, NULL, 4, '2020-11-25 02:51:10'),
(124, 11, 150, '22', '3.928', 17, NULL, 4, '2020-12-01 10:24:22'),
(125, 12, 150, '0', '0.000', 17, NULL, 4, '2020-12-01 10:24:22'),
(126, 13, 150, '0', '0.000', 17, NULL, 4, '2020-12-01 10:24:22'),
(127, 11, 151, '56', '11.150', 17, NULL, 4, '2020-12-01 10:28:18'),
(128, 12, 151, '0', '0.000', 17, NULL, 4, '2020-12-01 10:28:18'),
(129, 13, 151, '0', '0.000', 17, NULL, 4, '2020-12-01 10:28:18'),
(130, 15, 152, '50', '16.320', 17, NULL, 4, '2020-12-01 10:31:38'),
(131, 16, 152, '0', '0.000', 17, NULL, 4, '2020-12-01 10:31:38'),
(132, 19, 152, '0', '0.000', 17, NULL, 4, '2020-12-01 10:31:38'),
(133, 25, 153, '30', '8.250', 17, NULL, 4, '2020-12-01 10:35:45'),
(134, 26, 153, '0', '0.000', 17, NULL, 4, '2020-12-01 10:35:45'),
(135, 21, 153, '34', '9.350', 17, NULL, 4, '2020-12-01 10:35:45'),
(136, 23, 153, '40', '10.650', 17, NULL, 4, '2020-12-01 10:35:46'),
(137, 22, 153, '0', '0.000', 17, NULL, 4, '2020-12-01 10:35:46'),
(138, 24, 153, '0', '0.000', 17, NULL, 4, '2020-12-01 10:35:46'),
(139, 17, 146, '-48', '-17.750', 19, NULL, 4, '2020-12-09 10:29:27'),
(140, 16, 146, '0', '0.000', 19, NULL, 4, '2020-12-09 10:29:27'),
(141, 19, 146, '0', '0.000', 19, NULL, 4, '2020-12-09 10:29:27'),
(142, 15, 154, '65', '16.080', 17, NULL, 4, '2020-12-09 10:35:53'),
(143, 16, 154, '0', '0.000', 17, NULL, 4, '2020-12-09 10:35:53'),
(144, 19, 154, '0', '0.000', 17, NULL, 4, '2020-12-09 10:35:53'),
(145, 25, 155, '61', '13.800', 17, NULL, 4, '2020-12-09 10:47:44'),
(146, 26, 155, '0', '0.000', 17, NULL, 4, '2020-12-09 10:47:44'),
(147, 21, 155, '32', '8.100', 17, NULL, 4, '2020-12-09 10:47:44'),
(148, 23, 155, '32', '9.050', 17, NULL, 4, '2020-12-09 10:47:44'),
(149, 22, 155, '0', '0.000', 17, NULL, 4, '2020-12-09 10:47:44'),
(150, 24, 155, '0', '0.000', 17, NULL, 4, '2020-12-09 10:47:44'),
(151, 11, 156, '47', '8.715', 17, NULL, 4, '2020-12-09 10:53:09'),
(152, 12, 156, '0', '0.000', 17, NULL, 4, '2020-12-09 10:53:09'),
(153, 13, 156, '0', '0.000', 17, NULL, 4, '2020-12-09 10:53:09'),
(154, 11, 157, '21', '4.085', 17, NULL, 4, '2020-12-09 10:59:00'),
(155, 12, 157, '0', '0.000', 17, NULL, 4, '2020-12-09 10:59:00'),
(156, 13, 157, '0', '0.000', 17, NULL, 4, '2020-12-09 10:59:00'),
(157, 11, 158, '14', '2.975', 17, NULL, 4, '2020-12-09 11:04:10'),
(158, 12, 158, '0', '0.000', 17, NULL, 4, '2020-12-09 11:04:10'),
(159, 13, 158, '0', '0.000', 17, NULL, 4, '2020-12-09 11:04:10'),
(160, 25, 159, '73', '16.700', 17, NULL, 4, '2020-12-10 10:55:15'),
(161, 26, 159, '0', '0.000', 17, NULL, 4, '2020-12-10 10:55:15'),
(162, 21, 159, '45', '10.180', 17, NULL, 4, '2020-12-10 10:55:15'),
(163, 23, 159, '0', '0.000', 17, NULL, 4, '2020-12-10 10:55:15'),
(164, 22, 159, '0', '0.000', 17, NULL, 4, '2020-12-10 10:55:15'),
(165, 24, 159, '0', '0.000', 17, NULL, 4, '2020-12-10 10:55:15'),
(166, 11, 158, '-14', '-2.975', 19, NULL, 4, '2020-12-10 10:56:04'),
(167, 12, 158, '0', '0.000', 19, NULL, 4, '2020-12-10 10:56:04'),
(168, 13, 158, '0', '0.000', 19, NULL, 4, '2020-12-10 10:56:04'),
(169, 11, 160, '34', '7.090', 17, NULL, 4, '2020-12-10 10:59:03'),
(170, 12, 160, '0', '0.000', 17, NULL, 4, '2020-12-10 10:59:03'),
(171, 13, 160, '0', '0.000', 17, NULL, 4, '2020-12-10 10:59:03'),
(172, 25, 161, '88', '20.100', 17, NULL, 4, '2020-12-12 03:34:59'),
(173, 26, 161, '0', '0.000', 17, NULL, 4, '2020-12-12 03:35:00'),
(174, 21, 161, '0', '0.000', 17, NULL, 4, '2020-12-12 03:35:00'),
(175, 23, 161, '38', '7.300', 17, NULL, 4, '2020-12-12 03:35:00'),
(176, 22, 161, '0', '0.000', 17, NULL, 4, '2020-12-12 03:35:00'),
(177, 24, 161, '0', '0.000', 17, NULL, 4, '2020-12-12 03:35:00'),
(178, 13, 162, '81', '13.000', 17, NULL, 4, '2020-12-14 09:27:36'),
(179, 14, 162, '0', '0.000', 17, NULL, 4, '2020-12-14 09:27:36'),
(180, 25, 163, '128', '26.200', 17, NULL, 4, '2020-12-14 09:33:30'),
(181, 26, 163, '0', '0.000', 17, NULL, 4, '2020-12-14 09:33:30'),
(182, 21, 163, '0', '0.000', 17, NULL, 4, '2020-12-14 09:33:30'),
(183, 23, 163, '0', '0.000', 17, NULL, 4, '2020-12-14 09:33:30'),
(184, 22, 163, '0', '0.000', 17, NULL, 4, '2020-12-14 09:33:30'),
(185, 24, 163, '0', '0.000', 17, NULL, 4, '2020-12-14 09:33:30'),
(186, 11, 164, '72', '12.200', 17, NULL, 4, '2020-12-14 09:38:18'),
(187, 12, 164, '0', '0.000', 17, NULL, 4, '2020-12-14 09:38:18'),
(188, 13, 164, '0', '0.000', 17, NULL, 4, '2020-12-14 09:38:18'),
(189, 25, 165, '144', '31.800', 17, NULL, 4, '2020-12-14 09:41:07'),
(190, 26, 165, '0', '0.000', 17, NULL, 4, '2020-12-14 09:41:07'),
(191, 21, 165, '0', '0.000', 17, NULL, 4, '2020-12-14 09:41:07'),
(192, 23, 165, '0', '0.000', 17, NULL, 4, '2020-12-14 09:41:07'),
(193, 22, 165, '0', '0.000', 17, NULL, 4, '2020-12-14 09:41:07'),
(194, 24, 165, '0', '0.000', 17, NULL, 4, '2020-12-14 09:41:07'),
(195, 13, 166, '83', '12.500', 17, NULL, 4, '2020-12-15 07:19:56'),
(196, 14, 166, '0', '0.000', 17, NULL, 4, '2020-12-15 07:19:56'),
(197, 11, 167, '85', '12.000', 17, NULL, 4, '2020-12-15 07:24:21'),
(198, 12, 167, '0', '0.000', 17, NULL, 4, '2020-12-15 07:24:21'),
(199, 25, 168, '55', '10.000', 17, NULL, 4, '2020-12-15 12:02:02'),
(200, 26, 168, '0', '0.000', 17, NULL, 4, '2020-12-15 12:02:02'),
(201, 21, 168, '0', '0.000', 17, NULL, 4, '2020-12-15 12:02:02'),
(202, 23, 168, '0', '0.000', 17, NULL, 4, '2020-12-15 12:02:02'),
(203, 22, 168, '0', '0.000', 17, NULL, 4, '2020-12-15 12:02:02'),
(204, 24, 168, '0', '0.000', 17, NULL, 4, '2020-12-15 12:02:02'),
(205, 13, 169, '25', '3.100', 17, NULL, 4, '2020-12-15 12:05:06'),
(206, 14, 169, '0', '0.000', 17, NULL, 4, '2020-12-15 12:05:06'),
(207, 15, 170, '0', '0.000', 17, NULL, 4, '2020-12-15 12:15:51'),
(208, 16, 170, '0', '0.000', 17, NULL, 4, '2020-12-15 12:15:51'),
(209, 19, 170, '0', '0.000', 17, NULL, 4, '2020-12-15 12:15:51'),
(210, 15, 152, '-50', '-16.320', 19, NULL, 4, '2020-12-21 10:19:55'),
(211, 16, 152, '0', '0.000', 19, NULL, 4, '2020-12-21 10:19:55'),
(212, 19, 152, '0', '0.000', 19, NULL, 4, '2020-12-21 10:19:55'),
(213, 15, 171, '21', '6.940', 17, NULL, 4, '2020-12-21 10:23:17'),
(214, 16, 171, '0', '0.000', 17, NULL, 4, '2020-12-21 10:23:17'),
(215, 19, 171, '0', '0.000', 17, NULL, 4, '2020-12-21 10:23:17'),
(216, 25, 149, '-10', '-3.285', 19, NULL, 4, '2020-12-21 10:26:31'),
(217, 26, 149, '0', '0.000', 19, NULL, 4, '2020-12-21 10:26:31'),
(218, 21, 149, '-9', '-2.800', 19, NULL, 4, '2020-12-21 10:26:31'),
(219, 23, 149, '-8', '-2.240', 19, NULL, 4, '2020-12-21 10:26:31'),
(220, 22, 149, '0', '0.000', 19, NULL, 4, '2020-12-21 10:26:31'),
(221, 24, 149, '0', '0.000', 19, NULL, 4, '2020-12-21 10:26:31'),
(223, 25, 172, '0', '0.000', 17, NULL, 4, '2020-12-21 10:31:27'),
(224, 26, 172, '0', '0.000', 17, NULL, 4, '2020-12-21 10:31:27'),
(225, 21, 172, '14', '2.960', 17, NULL, 4, '2020-12-21 10:31:27'),
(226, 23, 172, '12', '2.840', 17, NULL, 4, '2020-12-21 10:31:27'),
(227, 22, 172, '0', '0.000', 17, NULL, 4, '2020-12-21 10:31:27'),
(228, 24, 172, '0', '0.000', 17, NULL, 4, '2020-12-21 10:31:27'),
(229, 25, 172, '0', '0.000', 19, NULL, 4, '2020-12-22 08:52:17'),
(230, 26, 172, '0', '0.000', 19, NULL, 4, '2020-12-22 08:52:17'),
(231, 21, 172, '-14', '-2.960', 19, NULL, 4, '2020-12-22 08:52:17'),
(232, 23, 172, '-12', '-2.840', 19, NULL, 4, '2020-12-22 08:52:17'),
(233, 22, 172, '0', '0.000', 19, NULL, 4, '2020-12-22 08:52:17'),
(234, 24, 172, '0', '0.000', 19, NULL, 4, '2020-12-22 08:52:17'),
(236, 25, 173, '0', '0.000', 17, NULL, 4, '2020-12-22 08:54:09'),
(237, 26, 173, '0', '0.000', 17, NULL, 4, '2020-12-22 08:54:09'),
(238, 21, 173, '14', '2.960', 17, NULL, 4, '2020-12-22 08:54:09'),
(239, 23, 173, '12', '2.840', 17, NULL, 4, '2020-12-22 08:54:09'),
(240, 22, 173, '0', '0.000', 17, NULL, 4, '2020-12-22 08:54:09'),
(241, 24, 173, '0', '0.000', 17, NULL, 4, '2020-12-22 08:54:09'),
(242, 25, 168, '-55', '-10.000', 19, NULL, 4, '2020-12-24 04:48:44'),
(243, 26, 168, '0', '0.000', 19, NULL, 4, '2020-12-24 04:48:44'),
(244, 21, 168, '0', '0.000', 19, NULL, 4, '2020-12-24 04:48:44'),
(245, 23, 168, '0', '0.000', 19, NULL, 4, '2020-12-24 04:48:44'),
(246, 22, 168, '0', '0.000', 19, NULL, 4, '2020-12-24 04:48:44'),
(247, 24, 168, '0', '0.000', 19, NULL, 4, '2020-12-24 04:48:44'),
(249, 25, 174, '12', '2.915', 17, NULL, 4, '2020-12-24 04:51:23'),
(250, 26, 174, '0', '0.000', 17, NULL, 4, '2020-12-24 04:51:23'),
(251, 21, 174, '0', '0.000', 17, NULL, 4, '2020-12-24 04:51:23'),
(252, 23, 174, '0', '0.000', 17, NULL, 4, '2020-12-24 04:51:23'),
(253, 22, 174, '0', '0.000', 17, NULL, 4, '2020-12-24 04:51:23'),
(254, 24, 174, '0', '0.000', 17, NULL, 4, '2020-12-24 04:51:23'),
(255, 21, 175, '14', '3.030', 17, NULL, 4, '2020-12-24 04:53:57'),
(256, 22, 175, '0', '0.000', 17, NULL, 4, '2020-12-24 04:53:57'),
(257, 23, 176, '12', '12.000', 17, NULL, 4, '2020-12-24 04:56:35'),
(258, 24, 176, '0', '0.000', 17, NULL, 4, '2020-12-24 04:56:35'),
(259, 17, 177, '14', '6.595', 17, NULL, 4, '2020-12-24 05:12:30'),
(260, 18, 177, '0', '0.000', 17, NULL, 4, '2020-12-24 05:12:30'),
(261, 20, 177, '0', '0.000', 17, NULL, 4, '2020-12-24 05:12:30'),
(262, 15, 171, '-21', '-6.940', 19, NULL, 4, '2020-12-29 02:58:34'),
(263, 16, 171, '0', '0.000', 19, NULL, 4, '2020-12-29 02:58:34'),
(264, 19, 171, '0', '0.000', 19, NULL, 4, '2020-12-29 02:58:34'),
(265, 13, 169, '-25', '-3.100', 19, NULL, 4, '2021-01-13 02:13:18'),
(266, 14, 169, '0', '0.000', 19, NULL, 4, '2021-01-13 02:13:18'),
(268, 13, 178, '13', '2.910', 17, NULL, 4, '2021-01-13 02:45:12'),
(269, 14, 178, '0', '0.000', 17, NULL, 4, '2021-01-13 02:45:12'),
(270, 28, NULL, '0', NULL, 1, NULL, 1, '2021-01-26 18:12:34'),
(271, 5, 179, '97', '26.200', 17, NULL, 4, '2021-01-28 09:10:01'),
(272, 3, 180, '91', '22.100', 17, NULL, 4, '2021-01-28 09:16:11'),
(273, 15, 181, '112', '26.980', 17, NULL, 4, '2021-01-29 16:51:42'),
(274, 16, 181, '0', '0.000', 17, NULL, 4, '2021-01-29 16:51:42'),
(275, 19, 181, '0', '0.000', 17, NULL, 4, '2021-01-29 16:51:42'),
(276, 17, 177, '-14', '-6.595', 19, NULL, 4, '2021-01-29 16:53:38'),
(277, 18, 177, '0', '0.000', 19, NULL, 4, '2021-01-29 16:53:38'),
(278, 20, 177, '0', '0.000', 19, NULL, 4, '2021-01-29 16:53:38'),
(279, 17, 182, '102', '28.095', 17, NULL, 4, '2021-01-29 16:57:03'),
(280, 18, 182, '0', '0.000', 17, NULL, 4, '2021-01-29 16:57:03'),
(281, 20, 182, '0', '0.000', 17, NULL, 4, '2021-01-29 16:57:03'),
(282, 15, 170, '0', '0.000', 19, NULL, 4, '2021-02-02 02:43:54'),
(283, 16, 170, '0', '0.000', 19, NULL, 4, '2021-02-02 02:43:54'),
(284, 19, 170, '0', '0.000', 19, NULL, 4, '2021-02-02 02:43:54'),
(285, 15, 183, '68', '16.990', 17, NULL, 4, '2021-02-02 02:47:18'),
(286, 16, 183, '0', '0.000', 17, NULL, 4, '2021-02-02 02:47:18'),
(287, 19, 183, '0', '0.000', 17, NULL, 4, '2021-02-02 02:47:18'),
(288, 21, 175, '-14', '-3.030', 19, NULL, 4, '2021-02-02 03:08:50'),
(289, 22, 175, '0', '0.000', 19, NULL, 4, '2021-02-02 03:08:50'),
(291, 21, 184, '9', '2.755', 17, NULL, 4, '2021-02-02 03:11:39'),
(292, 22, 184, '0', '0.000', 17, NULL, 4, '2021-02-02 03:11:39'),
(293, 27, 185, '153', '39.500', 17, NULL, 4, '2021-02-04 02:56:19'),
(294, 17, 186, '124', '31.740', 17, NULL, 4, '2021-02-05 10:55:13'),
(295, 18, 186, '0', '0.000', 17, NULL, 4, '2021-02-05 10:55:13'),
(296, 20, 186, '0', '0.000', 17, NULL, 4, '2021-02-05 10:55:13'),
(297, 27, 187, '134', '32.160', 17, NULL, 4, '2021-02-16 11:50:54'),
(298, 1, 188, '138', '32.400', 17, NULL, 4, '2021-02-25 16:56:05'),
(299, 3, 189, '130', '32.200', 17, NULL, 4, '2021-02-25 17:00:24'),
(300, 5, 190, '133', '30.600', 17, NULL, 4, '2021-02-25 17:04:18'),
(301, 3, 191, '111', '26.400', 17, NULL, 4, '2021-02-27 08:03:08'),
(302, 5, 192, '104', '25.500', 17, NULL, 4, '2021-02-27 08:05:28'),
(303, 1, 193, '109', '27.600', 17, NULL, 4, '2021-02-27 08:08:48');

--
-- Disparadores `productos_mov`
--
DROP TRIGGER IF EXISTS `productos_mov_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `productos_mov_AFTER_INSERT` AFTER INSERT ON `productos_mov` FOR EACH ROW BEGIN

declare id_producto_new integer;
declare nro_lote_new integer;

set @nro_lote_new := (SELECT op_a.nro_lote
		FROM `fabrica-test`.orden_produccion_fin op_f
		inner join `fabrica-test`.orden_produccion_alta op_a on op_f.id_ordenprod_alta =op_a.id_ordenprod
		where op_f.id_ordenprod_fin=new.id_ordenprod_fin);

set @id_producto_new := (SELECT p_d.id_producto
		FROM `pedidos-prod`.productos_descripcion p_d
		where id_producto_produccion= new.id_producto);

INSERT INTO `pedidos-prod`.productos_mov(id_producto,lote_produccion,unidades,peso_kg,id_cuenta,id_usuario_reg)
		values(@id_producto_new,@nro_lote_new,new.cantidad,new.peso,3,5);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_ordenprod`
--

DROP TABLE IF EXISTS `productos_ordenprod`;
CREATE TABLE IF NOT EXISTS `productos_ordenprod` (
  `id_prodorden` int(11) NOT NULL AUTO_INCREMENT,
  `id_orden_alta` int(11) DEFAULT NULL,
  `id_orden_fin` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `peso` decimal(10,3) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prodorden`),
  KEY `prodorden_id_ordenprod_alta_idx` (`id_orden_alta`),
  KEY `prodorden_id_producto_idx` (`id_producto`),
  KEY `prodorden_id_ordenprod_fin_idx` (`id_orden_fin`)
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos_ordenprod`
--

INSERT INTO `productos_ordenprod` (`id_prodorden`, `id_orden_alta`, `id_orden_fin`, `id_producto`, `cantidad`, `peso`, `id_usuario`) VALUES
(1, 57, NULL, 1, 0, '0.000', 1),
(2, 57, NULL, 2, 0, '0.000', 1),
(3, 45, NULL, 5, 0, '0.000', 1),
(4, 45, NULL, 6, 0, '0.000', 1),
(5, 67, NULL, 11, 0, '0.000', 1),
(6, 71, NULL, 11, 0, '0.000', 1),
(7, 74, NULL, 11, 0, '0.000', 1),
(8, 83, NULL, 11, 0, '0.000', 1),
(9, 87, NULL, 11, 0, '0.000', 1),
(10, 67, NULL, 12, 0, '0.000', 1),
(11, 71, NULL, 12, 0, '0.000', 1),
(12, 74, NULL, 12, 0, '0.000', 1),
(13, 83, NULL, 12, 0, '0.000', 1),
(14, 87, NULL, 12, 0, '0.000', 1),
(15, 78, NULL, 15, 0, '0.000', 1),
(16, 86, NULL, 15, 0, '0.000', 1),
(17, 78, NULL, 16, 0, '0.000', 1),
(18, 86, NULL, 16, 0, '0.000', 1),
(19, 78, NULL, 19, 0, '0.000', 1),
(20, 86, NULL, 19, 0, '0.000', 1),
(21, 68, NULL, 25, 0, '0.000', 1),
(22, 72, NULL, 25, 0, '0.000', 1),
(23, 73, NULL, 25, 0, '0.000', 1),
(24, 77, NULL, 25, 0, '0.000', 1),
(25, 85, NULL, 25, 0, '0.000', 1),
(26, 68, NULL, 26, 0, '0.000', 1),
(27, 72, NULL, 26, 0, '0.000', 1),
(28, 73, NULL, 26, 0, '0.000', 1),
(29, 77, NULL, 26, 0, '0.000', 1),
(30, 85, NULL, 26, 0, '0.000', 1),
(31, 57, NULL, 1, 0, '0.000', 1),
(32, 57, NULL, 2, 0, '0.000', 1),
(33, 45, NULL, 5, 0, '0.000', 1),
(34, 45, NULL, 6, 0, '0.000', 1),
(35, 67, NULL, 11, 0, '0.000', 1),
(36, 71, NULL, 11, 0, '0.000', 1),
(37, 74, NULL, 11, 0, '0.000', 1),
(38, 83, NULL, 11, 0, '0.000', 1),
(39, 87, NULL, 11, 0, '0.000', 1),
(40, 67, NULL, 12, 0, '0.000', 1),
(41, 71, NULL, 12, 0, '0.000', 1),
(42, 74, NULL, 12, 0, '0.000', 1),
(43, 83, NULL, 12, 0, '0.000', 1),
(44, 87, NULL, 12, 0, '0.000', 1),
(45, 78, NULL, 15, 0, '0.000', 1),
(46, 86, NULL, 15, 0, '0.000', 1),
(47, 78, NULL, 16, 0, '0.000', 1),
(48, 86, NULL, 16, 0, '0.000', 1),
(49, 78, NULL, 19, 0, '0.000', 1),
(50, 86, NULL, 19, 0, '0.000', 1),
(51, 68, NULL, 25, 0, '0.000', 1),
(52, 72, NULL, 25, 0, '0.000', 1),
(53, 73, NULL, 25, 0, '0.000', 1),
(54, 77, NULL, 25, 0, '0.000', 1),
(55, 85, NULL, 25, 0, '0.000', 1),
(56, 68, NULL, 26, 0, '0.000', 1),
(57, 72, NULL, 26, 0, '0.000', 1),
(58, 73, NULL, 26, 0, '0.000', 1),
(59, 77, NULL, 26, 0, '0.000', 1),
(60, 85, NULL, 26, 0, '0.000', 1),
(61, 70, NULL, 5, 0, '0.000', 1),
(62, 82, NULL, 5, 0, '0.000', 1),
(63, 91, NULL, 5, 0, '0.000', 1),
(64, 70, NULL, 6, 0, '0.000', 1),
(65, 82, NULL, 6, 0, '0.000', 1),
(66, 91, NULL, 6, 0, '0.000', 1),
(67, 80, NULL, 1, 0, '0.000', 1),
(68, 89, NULL, 1, 0, '0.000', 1),
(69, 80, NULL, 2, 0, '0.000', 1),
(70, 89, NULL, 2, 0, '0.000', 1),
(71, 76, NULL, 3, 0, '0.000', 1),
(72, 81, NULL, 3, 0, '0.000', 1),
(73, 90, NULL, 3, 0, '0.000', 1),
(74, 76, NULL, 4, 0, '0.000', 1),
(75, 81, NULL, 4, 0, '0.000', 1),
(76, 90, NULL, 4, 0, '0.000', 1),
(94, 92, NULL, 27, 400, '98.000', 4),
(95, 93, NULL, 3, 96, '0.000', 4),
(96, 94, NULL, 1, 89, '0.000', 4),
(97, 95, NULL, 5, 98, '0.000', 4),
(98, 97, NULL, 15, 11, '2.475', 4),
(99, 98, NULL, 11, 21, '4.704', 4),
(100, 99, NULL, 1, 102, '24.123', 4),
(101, 100, NULL, 5, 81, '19.156', 4),
(102, 101, NULL, 25, 5, '1.828', 4),
(103, 102, NULL, 11, 18, '4.032', 4),
(104, 103, NULL, 15, 12, '2.700', 4),
(105, 104, NULL, 27, 350, '85.750', 4),
(106, 105, NULL, 3, 64, '15.136', 4),
(107, 106, NULL, 11, 18, '4.032', 4),
(108, 107, NULL, 15, 10, '2.250', 4),
(109, 108, NULL, 25, 5, '1.828', 4),
(110, 109, NULL, 27, 371, '90.895', 4),
(111, 110, NULL, 5, 78, '18.447', 4),
(112, 111, NULL, 1, 78, '18.447', 4),
(113, 112, NULL, 3, 78, '18.447', 4),
(114, 113, NULL, 27, 386, '94.570', 4),
(115, 114, NULL, 1, 150, '35.475', 4),
(116, 115, NULL, 5, 150, '0.000', 4),
(117, 116, NULL, 3, 150, '0.000', 4),
(118, 117, NULL, 11, 23, '5.152', 4),
(119, 118, NULL, 27, 275, '70.400', 4),
(120, 119, NULL, 27, 193, '49.408', 4),
(121, 121, NULL, 5, 78, '0.000', 4),
(122, 123, NULL, 11, 4, '0.896', 4),
(123, 124, NULL, 27, 113, '28.928', 4),
(124, 125, NULL, 1, 71, '0.000', 4),
(125, 79, NULL, 27, 0, '0.000', 1),
(126, 88, NULL, 27, 0, '0.000', 1),
(127, 126, NULL, 27, 214, '52.430', 4),
(128, 127, NULL, 5, 59, '0.000', 4),
(129, 128, NULL, 3, 59, '0.000', 4),
(130, 129, NULL, 11, 11, '2.464', 4),
(131, 130, NULL, 25, 5, '1.828', 4),
(132, 131, NULL, 15, 8, '1.800', 4),
(133, NULL, 88, 27, 308, '78.500', 4),
(134, NULL, 89, 27, 621, '151.080', 4),
(135, 133, NULL, 27, 118, '30.208', 4),
(136, 134, NULL, 1, 48, '0.000', 4),
(137, 135, NULL, 15, 10, '2.250', 4),
(138, 136, NULL, 11, 10, '2.240', 4),
(139, 137, NULL, 25, 5, '1.828', 4),
(140, NULL, 90, 1, 158, '42.900', 4),
(141, NULL, 91, 27, 111, '25.000', 4),
(142, NULL, 92, 3, 177, '55.300', 4),
(143, NULL, 93, 5, 187, '50.500', 4),
(144, NULL, 94, 2, 0, '0.000', 4),
(145, NULL, 94, 1, 145, '34.100', 4),
(146, NULL, 95, 3, 109, '29.900', 4),
(147, NULL, 96, 5, 140, '36.800', 4),
(148, NULL, 97, 15, 101, '38.200', 4),
(149, NULL, 98, 26, 34, '10.600', 4),
(150, NULL, 98, 25, 0, '0.000', 4),
(151, NULL, 98, 26, 0, '0.000', 4),
(152, NULL, 98, 25, 0, '0.000', 4),
(153, NULL, 99, 12, 0, '0.000', 4),
(154, NULL, 99, 11, 77, '18.700', 4),
(155, NULL, 99, 12, 0, '0.000', 4),
(156, NULL, 99, 11, 0, '0.000', 4),
(157, NULL, 100, 1, 178, '45.400', 4),
(158, 138, NULL, 27, 187, '47.872', 4),
(159, 139, NULL, 1, 56, '0.000', 4),
(160, 140, NULL, 11, 5, '1.120', 4),
(161, 141, NULL, 11, 5, '1.120', 4),
(162, NULL, 101, 1, 301, '80.400', 4),
(163, NULL, 102, 26, 0, '0.000', 4),
(164, NULL, 102, 25, 38, '13.200', 4),
(165, NULL, 102, 26, 0, '0.000', 4),
(166, NULL, 102, 25, 0, '0.000', 4),
(167, NULL, 103, 27, 204, '52.900', 4),
(168, NULL, 104, 3, 297, '70.800', 4),
(169, NULL, 105, 11, 81, '23.500', 4),
(170, NULL, 106, 5, 274, '77.400', 4),
(171, NULL, 107, 26, 38, '14.200', 4),
(172, NULL, 107, 25, 0, '0.000', 4),
(173, NULL, 107, 26, 0, '0.000', 4),
(174, NULL, 107, 25, 0, '0.000', 4),
(175, NULL, 108, 15, 119, '43.900', 4),
(176, 142, NULL, 25, 5, '1.828', 4),
(177, 143, NULL, 11, 10, '2.240', 4),
(178, 144, NULL, 15, 10, '2.250', 4),
(179, 145, NULL, 27, 129, '33.024', 4),
(180, 146, NULL, 1, 52, '0.000', 4),
(181, 147, NULL, 3, 104, '0.000', 4),
(182, NULL, 109, 3, 154, '37.500', 4),
(183, NULL, 110, 27, 125, '30.100', 4),
(184, NULL, 111, 5, 152, '35.400', 4),
(185, NULL, 113, 1, 156, '39.010', 4),
(186, NULL, 114, 5, 166, '37.900', 4),
(187, 148, NULL, 11, 12, '2.688', 4),
(188, 149, NULL, 25, 6, '2.194', 4),
(189, 150, NULL, 15, 11, '2.475', 4),
(190, 151, NULL, 27, 97, '24.832', 4),
(191, 152, NULL, 1, 60, '0.000', 4),
(192, 153, NULL, 5, 122, '0.000', 4),
(193, NULL, 115, 27, 160, '38.400', 4),
(194, 154, NULL, 17, 11, '2.475', 4),
(195, 155, NULL, 5, 110, '0.000', 4),
(196, 156, NULL, 3, 110, '0.000', 4),
(197, 157, NULL, 25, 6, '2.194', 4),
(198, 158, NULL, 13, 13, '2.912', 4),
(199, NULL, 117, 27, 120, '29.100', 4),
(200, NULL, 118, 1, 129, '30.100', 4),
(201, NULL, 120, 26, 62, '22.400', 4),
(202, NULL, 120, 25, 0, '0.000', 4),
(203, NULL, 120, 26, 0, '0.000', 4),
(204, NULL, 120, 25, 0, '0.000', 4),
(205, NULL, 121, 11, 90, '20.095', 4),
(206, NULL, 122, 11, 90, '20.095', 4),
(207, 159, NULL, 23, 5, '0.995', 4),
(208, 160, NULL, 23, 5, '0.995', 4),
(209, 161, NULL, 21, 5, '0.995', 4),
(210, 162, NULL, 15, 10, '2.344', 4),
(211, 163, NULL, 11, 11, '2.772', 4),
(212, 164, NULL, 27, 179, '45.824', 4),
(213, 165, NULL, 1, 47, '0.000', 4),
(214, 166, NULL, 3, 83, '0.000', 4),
(215, NULL, 123, 5, 114, '25.100', 4),
(216, NULL, 124, 3, 95, '24.500', 4),
(217, NULL, 125, 27, 90, '19.675', 4),
(218, NULL, 126, 25, 24, '8.200', 4),
(219, NULL, 126, 26, 0, '0.000', 4),
(220, NULL, 126, 21, 19, '7.700', 4),
(221, NULL, 126, 23, 19, '7.500', 4),
(222, NULL, 126, 22, 0, '0.000', 4),
(223, NULL, 126, 24, 0, '0.000', 4),
(224, NULL, 127, 15, 72, '28.950', 4),
(225, NULL, 127, 16, 0, '0.000', 4),
(226, NULL, 127, 19, 0, '0.000', 4),
(227, NULL, 128, 11, 24, '8.525', 4),
(228, NULL, 128, 12, 0, '0.000', 4),
(229, NULL, 128, 13, 31, '11.750', 4),
(230, NULL, 129, 1, 84, '17.600', 4),
(231, 167, NULL, 27, 193, '49.408', 4),
(232, 168, NULL, 1, 42, '0.000', 4),
(233, 169, NULL, 5, 120, '0.000', 4),
(234, 170, NULL, 21, 3, '1.097', 4),
(235, 171, NULL, 23, 3, '1.097', 4),
(236, 173, NULL, 13, 12, '3.024', 4),
(237, NULL, 130, 27, 142, '39.500', 4),
(238, NULL, 131, 1, 107, '27.500', 4),
(239, NULL, 132, 11, 72, '24.700', 4),
(240, NULL, 132, 12, 0, '0.000', 4),
(241, NULL, 132, 13, 0, '0.000', 4),
(242, NULL, 133, 1, 107, '27.500', 4),
(243, 174, NULL, 27, 118, '30.208', 4),
(244, 175, NULL, 9, 236, '148.383', 4),
(245, 176, NULL, 9, 236, '148.383', 4),
(246, 177, NULL, 7, 30, '7.095', 4),
(247, 178, NULL, 23, 5, '0.995', 4),
(248, 179, NULL, 21, 5, '0.995', 4),
(249, 180, NULL, 13, 11, '2.772', 4),
(250, 181, NULL, 17, 11, '2.578', 4),
(251, NULL, 134, 27, 169, '50.300', 4),
(252, NULL, 135, 9, 45, '27.800', 4),
(253, NULL, 135, 10, 0, '0.000', 4),
(254, NULL, 136, 1, 90, '22.100', 4),
(255, NULL, 137, 3, 216, '45.870', 4),
(256, NULL, 138, 5, 215, '48.100', 4),
(257, NULL, 139, 5, 200, '48.290', 4),
(258, NULL, 140, 27, 110, '31.400', 4),
(259, NULL, 141, 3, 199, '48.000', 4),
(260, 182, NULL, 27, 248, '63.488', 4),
(261, NULL, 142, 3, 140, '32.600', 4),
(262, NULL, 143, 27, 236, '63.600', 4),
(263, NULL, 144, 1, 109, '24.000', 4),
(264, NULL, 145, 1, 60, '14.695', 4),
(265, NULL, 146, 15, 48, '17.750', 4),
(266, NULL, 146, 16, 0, '0.000', 4),
(267, NULL, 146, 19, 0, '0.000', 4),
(268, NULL, 147, 7, 52, '12.100', 4),
(269, NULL, 147, 8, 0, '0.000', 4),
(270, NULL, 148, 5, 192, '44.860', 4),
(271, NULL, 149, 25, 10, '3.285', 4),
(272, NULL, 149, 26, 0, '0.000', 4),
(273, NULL, 149, 21, 9, '2.800', 4),
(274, NULL, 149, 23, 8, '2.240', 4),
(275, NULL, 149, 22, 0, '0.000', 4),
(276, NULL, 149, 24, 0, '0.000', 4),
(277, NULL, 150, 11, 22, '3.928', 4),
(278, NULL, 150, 12, 0, '0.000', 4),
(279, NULL, 150, 13, 0, '0.000', 4),
(280, NULL, 151, 11, 56, '11.150', 4),
(281, NULL, 151, 12, 0, '0.000', 4),
(282, NULL, 151, 13, 0, '0.000', 4),
(283, NULL, 152, 15, 50, '16.320', 4),
(284, NULL, 152, 16, 0, '0.000', 4),
(285, NULL, 152, 19, 0, '0.000', 4),
(286, NULL, 153, 25, 30, '8.250', 4),
(287, NULL, 153, 26, 0, '0.000', 4),
(288, NULL, 153, 21, 34, '9.350', 4),
(289, NULL, 153, 23, 40, '10.650', 4),
(290, NULL, 153, 22, 0, '0.000', 4),
(291, NULL, 153, 24, 0, '0.000', 4),
(292, NULL, 154, 15, 65, '16.080', 4),
(293, NULL, 154, 16, 0, '0.000', 4),
(294, NULL, 154, 19, 0, '0.000', 4),
(295, NULL, 155, 25, 61, '13.800', 4),
(296, NULL, 155, 26, 0, '0.000', 4),
(297, NULL, 155, 21, 32, '8.100', 4),
(298, NULL, 155, 23, 32, '9.050', 4),
(299, NULL, 155, 22, 0, '0.000', 4),
(300, NULL, 155, 24, 0, '0.000', 4),
(301, NULL, 156, 11, 47, '8.715', 4),
(302, NULL, 156, 12, 0, '0.000', 4),
(303, NULL, 156, 13, 0, '0.000', 4),
(304, NULL, 157, 11, 21, '4.085', 4),
(305, NULL, 157, 12, 0, '0.000', 4),
(306, NULL, 157, 13, 0, '0.000', 4),
(307, NULL, 158, 11, 14, '2.975', 4),
(308, NULL, 158, 12, 0, '0.000', 4),
(309, NULL, 158, 13, 0, '0.000', 4),
(310, NULL, 159, 25, 73, '16.700', 4),
(311, NULL, 159, 26, 0, '0.000', 4),
(312, NULL, 159, 21, 45, '10.180', 4),
(313, NULL, 159, 23, 0, '0.000', 4),
(314, NULL, 159, 22, 0, '0.000', 4),
(315, NULL, 159, 24, 0, '0.000', 4),
(316, NULL, 160, 11, 34, '7.090', 4),
(317, NULL, 160, 12, 0, '0.000', 4),
(318, NULL, 160, 13, 0, '0.000', 4),
(319, NULL, 161, 25, 88, '20.100', 4),
(320, NULL, 161, 26, 0, '0.000', 4),
(321, NULL, 161, 21, 0, '0.000', 4),
(322, NULL, 161, 23, 38, '7.300', 4),
(323, NULL, 161, 22, 0, '0.000', 4),
(324, NULL, 161, 24, 0, '0.000', 4),
(325, NULL, 162, 13, 81, '13.000', 4),
(326, NULL, 162, 14, 0, '0.000', 4),
(327, NULL, 163, 25, 128, '26.200', 4),
(328, NULL, 163, 26, 0, '0.000', 4),
(329, NULL, 163, 21, 0, '0.000', 4),
(330, NULL, 163, 23, 0, '0.000', 4),
(331, NULL, 163, 22, 0, '0.000', 4),
(332, NULL, 163, 24, 0, '0.000', 4),
(333, NULL, 164, 11, 72, '12.200', 4),
(334, NULL, 164, 12, 0, '0.000', 4),
(335, NULL, 164, 13, 0, '0.000', 4),
(336, NULL, 165, 25, 144, '31.800', 4),
(337, NULL, 165, 26, 0, '0.000', 4),
(338, NULL, 165, 21, 0, '0.000', 4),
(339, NULL, 165, 23, 0, '0.000', 4),
(340, NULL, 165, 22, 0, '0.000', 4),
(341, NULL, 165, 24, 0, '0.000', 4),
(342, NULL, 166, 13, 83, '12.500', 4),
(343, NULL, 166, 14, 0, '0.000', 4),
(344, NULL, 167, 11, 85, '12.000', 4),
(345, NULL, 167, 12, 0, '0.000', 4),
(346, NULL, 168, 25, 55, '10.000', 4),
(347, NULL, 168, 26, 0, '0.000', 4),
(348, NULL, 168, 21, 0, '0.000', 4),
(349, NULL, 168, 23, 0, '0.000', 4),
(350, NULL, 168, 22, 0, '0.000', 4),
(351, NULL, 168, 24, 0, '0.000', 4),
(352, NULL, 169, 13, 25, '3.100', 4),
(353, NULL, 169, 14, 0, '0.000', 4),
(354, NULL, 170, 15, 0, '0.000', 4),
(355, NULL, 170, 16, 0, '0.000', 4),
(356, NULL, 170, 19, 0, '0.000', 4),
(357, NULL, 171, 15, 21, '6.940', 4),
(358, NULL, 171, 16, 0, '0.000', 4),
(359, NULL, 171, 19, 0, '0.000', 4),
(360, NULL, 172, 25, 0, '0.000', 4),
(361, NULL, 172, 26, 0, '0.000', 4),
(362, NULL, 172, 21, 14, '2.960', 4),
(363, NULL, 172, 23, 12, '2.840', 4),
(364, NULL, 172, 22, 0, '0.000', 4),
(365, NULL, 172, 24, 0, '0.000', 4),
(366, NULL, 173, 25, 0, '0.000', 4),
(367, NULL, 173, 26, 0, '0.000', 4),
(368, NULL, 173, 21, 14, '2.960', 4),
(369, NULL, 173, 23, 12, '2.840', 4),
(370, NULL, 173, 22, 0, '0.000', 4),
(371, NULL, 173, 24, 0, '0.000', 4),
(372, NULL, 174, 25, 12, '2.915', 4),
(373, NULL, 174, 26, 0, '0.000', 4),
(374, NULL, 174, 21, 0, '0.000', 4),
(375, NULL, 174, 23, 0, '0.000', 4),
(376, NULL, 174, 22, 0, '0.000', 4),
(377, NULL, 174, 24, 0, '0.000', 4),
(378, NULL, 175, 21, 14, '3.030', 4),
(379, NULL, 175, 22, 0, '0.000', 4),
(380, NULL, 176, 23, 12, '12.000', 4),
(381, NULL, 176, 24, 0, '0.000', 4),
(382, NULL, 177, 17, 14, '6.595', 4),
(383, NULL, 177, 18, 0, '0.000', 4),
(384, NULL, 177, 20, 0, '0.000', 4),
(385, 183, NULL, 5, 50, '0.000', 4),
(386, 184, NULL, 3, 47, '0.000', 4),
(387, 185, NULL, 11, 4, '1.008', 4),
(388, NULL, 178, 13, 13, '2.910', 4),
(389, NULL, 178, 14, 0, '0.000', 4),
(390, 186, NULL, 3, 67, '0.000', 4),
(391, 187, NULL, 5, 67, '0.000', 4),
(392, 188, NULL, 9, 182, '114.431', 4),
(393, 189, NULL, 13, 7, '1.568', 4),
(394, 190, NULL, 15, 4, '0.900', 4),
(395, 191, NULL, 25, 6, '1.194', 4),
(396, 192, NULL, 1, 72, '0.000', 4),
(397, 193, NULL, 27, 179, '45.824', 4),
(398, 194, NULL, 28, 6, '10.800', 4),
(399, NULL, 179, 5, 97, '26.200', 4),
(400, NULL, 180, 3, 91, '22.100', 4),
(401, NULL, 181, 15, 112, '26.980', 4),
(402, NULL, 181, 16, 0, '0.000', 4),
(403, NULL, 181, 19, 0, '0.000', 4),
(404, NULL, 182, 17, 102, '28.095', 4),
(405, NULL, 182, 18, 0, '0.000', 4),
(406, NULL, 182, 20, 0, '0.000', 4),
(407, NULL, 183, 15, 68, '16.990', 4),
(408, NULL, 183, 16, 0, '0.000', 4),
(409, NULL, 183, 19, 0, '0.000', 4),
(410, NULL, 184, 21, 9, '2.755', 4),
(411, NULL, 184, 22, 0, '0.000', 4),
(412, NULL, 185, 27, 153, '39.500', 4),
(413, 195, NULL, 3, 64, '0.000', 4),
(414, 196, NULL, 5, 61, '0.000', 4),
(415, 197, NULL, 1, 61, '0.000', 4),
(416, 198, NULL, 27, 152, '38.912', 4),
(417, 199, NULL, 11, 10, '2.520', 4),
(418, 200, NULL, 15, 4, '0.938', 4),
(419, 201, NULL, 25, 9, '1.792', 4),
(420, NULL, 186, 17, 124, '31.740', 4),
(421, NULL, 186, 18, 0, '0.000', 4),
(422, NULL, 186, 20, 0, '0.000', 4),
(423, NULL, 187, 27, 134, '32.160', 4),
(424, NULL, 188, 1, 138, '32.400', 4),
(425, NULL, 189, 3, 130, '32.200', 4),
(426, NULL, 190, 5, 133, '30.600', 4),
(427, NULL, 191, 3, 111, '26.400', 4),
(428, NULL, 192, 5, 104, '25.500', 4),
(429, NULL, 193, 1, 109, '27.600', 4),
(430, 202, NULL, 27, 152, '38.912', 4),
(431, 203, NULL, 1, 111, '0.000', 4),
(432, 204, NULL, 3, 111, '0.000', 4),
(433, 205, NULL, 3, 111, '0.000', 4),
(434, 206, NULL, 5, 111, '0.000', 4),
(435, 207, NULL, 7, 111, '26.252', 4),
(436, 208, NULL, 17, 11, '2.578', 4),
(437, 209, NULL, 13, 21, '5.292', 4),
(438, 210, NULL, 23, 5, '0.995', 4),
(439, 211, NULL, 21, 5, '0.995', 4);

--
-- Disparadores `productos_ordenprod`
--
DROP TRIGGER IF EXISTS `productos_ordenprod_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `productos_ordenprod_AFTER_INSERT` AFTER INSERT ON `productos_ordenprod` FOR EACH ROW if new.id_orden_fin > 0 then
BEGIN
	call ins_AgregarMovProducto(new.id_producto,
								new.id_orden_fin,
                                new.cantidad,
                                new.peso,
                                17,
                                null,
                                new.id_usuario);
END;
end if
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_receta`
--

DROP TABLE IF EXISTS `productos_receta`;
CREATE TABLE IF NOT EXISTS `productos_receta` (
  `id_prodrec` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_receta` int(11) DEFAULT NULL,
  `unidades_necesarias` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id_prodrec`),
  KEY `prodrec_id_receta_idx` (`id_receta`),
  KEY `prodrec_id_producto_idx` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos_receta`
--

INSERT INTO `productos_receta` (`id_prodrec`, `id_producto`, `id_receta`, `unidades_necesarias`) VALUES
(63, 1, 101, '2.000'),
(64, 2, 101, '2.000'),
(65, 3, 103, '2.000'),
(66, 4, 103, '2.000'),
(67, 5, 102, '2.000'),
(68, 6, 102, '2.000'),
(69, 7, 104, '2.000'),
(70, 8, 104, '2.000'),
(71, 9, 113, '0.167'),
(72, 10, 113, '0.084'),
(75, 13, 106, '5.000'),
(76, 14, 106, '4.000'),
(79, 17, 108, '16.000'),
(80, 18, 108, '12.000'),
(82, 20, 108, '1.000'),
(83, 21, 110, '16.000'),
(84, 22, 110, '10.000'),
(85, 23, 111, '16.000'),
(86, 24, 111, '10.000'),
(89, 27, 100, '1.000'),
(90, 5, 115, '2.000'),
(91, 6, 115, '2.000'),
(92, 1, 116, '2.000'),
(93, 2, 116, '2.000'),
(94, 3, 117, '2.000'),
(95, 4, 117, '2.000'),
(97, 3, 119, '2.000'),
(98, 5, 118, '2.000'),
(99, 6, 118, '2.000'),
(100, 3, 120, '2.000'),
(101, 4, 120, '2.000'),
(102, 3, 131, '2.000'),
(103, 4, 131, '2.000'),
(104, 3, 132, '2.000'),
(105, 4, 132, '2.000'),
(106, 1, 133, '2.000'),
(107, 5, 134, '2.000'),
(108, 6, 134, '2.000'),
(109, 1, 135, '2.000'),
(110, 27, 136, '1.000'),
(114, 27, 114, '1.000'),
(115, 27, 114, '1.000'),
(116, 3, 137, '2.000'),
(117, 5, 138, '2.000'),
(118, 1, 139, '2.000'),
(119, 27, 140, '1.000'),
(120, 1, 141, '2.000'),
(121, 11, 105, '5.000'),
(122, 12, 105, '4.000'),
(123, 13, 105, '5.000'),
(124, 13, 142, '5.000'),
(125, 14, 142, '4.000'),
(126, 11, 143, '5.000'),
(127, 12, 143, '4.000'),
(128, 25, 144, '16.000'),
(129, 26, 144, '10.000'),
(130, 21, 145, '16.000'),
(131, 22, 145, '10.000'),
(132, 23, 146, '16.000'),
(133, 24, 146, '10.000'),
(134, 17, 147, '16.000'),
(135, 18, 147, '12.000'),
(136, 20, 147, '1.000'),
(137, 15, 148, '16.000'),
(138, 16, 148, '12.000'),
(139, 19, 148, '1.000'),
(140, 25, 109, '16.000'),
(141, 26, 109, '10.000'),
(142, 21, 109, '16.000'),
(143, 23, 109, '16.000'),
(144, 22, 109, '10.000'),
(145, 24, 109, '10.000'),
(146, 15, 107, '16.000'),
(147, 16, 107, '12.000'),
(148, 19, 107, '1.000'),
(149, 15, 107, '16.000'),
(150, 28, 149, '1.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_n`
--

DROP TABLE IF EXISTS `producto_n`;
CREATE TABLE IF NOT EXISTS `producto_n` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `descripcion` text,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `id_producto_UNIQUE` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `producto_n`
--

INSERT INTO `producto_n` (`id_producto`, `codigo`, `nombre`, `fecha_creacion`, `descripcion`) VALUES
(1, '1', 'Salame Español Bastón', '2020-05-31 02:23:10', NULL),
(2, '2', 'Salame Español Pack', '2020-05-31 02:23:10', NULL),
(3, '3', 'Salame Italianol Baston', '2020-05-31 02:23:10', NULL),
(4, '4', 'Salame Italianol Pack', '2020-05-31 02:23:10', NULL),
(5, '5', 'Salame Criollo Baston', '2020-05-31 02:23:10', NULL),
(6, '6', 'Salame Criollo Pack', '2020-05-31 02:23:10', NULL),
(7, '7', 'Salame Especial Baston', '2020-05-31 02:23:10', NULL),
(8, '8', 'Salame Especial Pack', '2020-05-31 02:23:10', NULL),
(9, '9', 'Parrillero Pack x 6', '2020-05-31 02:23:10', NULL),
(10, '10', 'Parrillero Pack x 12', '2020-05-31 02:23:10', NULL),
(11, '11', 'Bondiola Natural Pack Hasta 350', '2020-05-31 02:23:10', NULL),
(12, '12', 'Bondiola Natural Pack Hasta 450', '2020-05-31 02:23:10', NULL),
(13, '13', 'Bondiola Gourmet Pack Hasta 350', '2020-05-31 02:23:10', NULL),
(14, '14', 'Bondiola Gourmet Pack Hasta 450', '2020-05-31 02:23:11', NULL),
(15, '15', 'Panceta Natural Pack Hasta 350', '2020-05-31 02:23:11', NULL),
(16, '16', 'Panceta Natural Pack Hasta 450', '2020-05-31 02:23:11', NULL),
(17, '17', 'Panceta Gourmet Pack Hasta 350', '2020-05-31 02:23:11', NULL),
(18, '18', 'Panceta Gourmet Pack Hasta 450', '2020-05-31 02:23:11', NULL),
(19, '19', 'Panceta Natural Pack Entera', '2020-05-31 02:23:11', NULL),
(20, '20', 'Panceta Gourmet Pack Entera', '2020-05-31 02:23:11', NULL),
(21, '21', 'Jamon Español Pack Hasta 350', '2020-05-31 02:23:11', NULL),
(22, '22', 'Jamon Español Pack Hasta 450', '2020-05-31 02:23:11', NULL),
(23, '23', 'Jamon Italiano Pack Hasta 350', '2020-05-31 02:23:11', NULL),
(24, '24', 'Jamon Italiano Pack Hasta 450', '2020-05-31 02:23:11', NULL),
(25, '25', 'Jamon Natural Pack Hasta 350', '2020-05-31 02:23:11', NULL),
(26, '26', 'Jamon Natural Pack Hasta 450', '2020-05-31 02:23:11', NULL),
(27, '27', 'Iberico', '2020-05-31 02:23:11', NULL),
(28, '28', 'COSTILLAR DE CERDO', '2021-01-26 18:12:34', 'COSTILLAR FRESCO DE CERDO');

--
-- Disparadores `producto_n`
--
DROP TRIGGER IF EXISTS `producto_n_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `producto_n_AFTER_INSERT` AFTER INSERT ON `producto_n` FOR EACH ROW BEGIN
INSERT INTO productos_mov (id_producto, cantidad,id_cuenta,id_usuario) VALUES (new.id_producto, 0,1,1);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_n`
--

DROP TABLE IF EXISTS `proveedores_n`;
CREATE TABLE IF NOT EXISTS `proveedores_n` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores_n`
--

INSERT INTO `proveedores_n` (`id_proveedor`, `nombre`, `tipo`, `activo`) VALUES
(1, 'SINDY SA', 'Insumos ', 1),
(2, 'FRIGOZULI 9 DE JULIO SRL', 'Carnes', 1),
(3, 'J.D. MARTIARENA HNOS', 'Carnes', 1),
(4, 'FECVA SA', 'Insumos ', 1),
(5, 'CELSO G. MARCOS', 'Insumos', 1),
(6, 'SHORTON SA', 'Insumos ', 1),
(7, 'TODO LIMP', 'Insumos', 1),
(8, 'MAFRICAR SRL', 'Carnes', 1),
(9, 'CANULLAN EL TATA\"\"', 'Insumos', 1),
(10, 'EL CICLON', 'Insumos', 1),
(11, 'LAYA MIGUEL ANGEL', 'Insumos', 1),
(12, 'BURGOS GERARDO', 'Insumos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas_n`
--

DROP TABLE IF EXISTS `recetas_n`;
CREATE TABLE IF NOT EXISTS `recetas_n` (
  `id_receta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `dias_produccion` int(11) DEFAULT NULL,
  `dias_vencimiento` int(11) DEFAULT NULL,
  `porcent_carne` decimal(10,3) DEFAULT NULL,
  `peso_total_insumos_kg` decimal(10,3) DEFAULT NULL,
  `largo_unidad_lote` decimal(10,3) DEFAULT NULL,
  `peso_unidad_lote` decimal(10,3) DEFAULT NULL,
  `cantidad_unidades_lote` int(11) DEFAULT NULL,
  `merma_esperada` decimal(10,3) DEFAULT NULL,
  `peso_unidad_esperado` decimal(10,3) DEFAULT NULL,
  `largo_unidad_esperado` decimal(10,3) DEFAULT NULL,
  `unidades_final_xunidad` int(11) DEFAULT NULL,
  `descripcion` text,
  `fecha_alta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_baja` datetime DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_receta`),
  UNIQUE KEY `id_receta_UNIQUE` (`id_receta`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recetas_n`
--

INSERT INTO `recetas_n` (`id_receta`, `nombre`, `dias_produccion`, `dias_vencimiento`, `porcent_carne`, `peso_total_insumos_kg`, `largo_unidad_lote`, `peso_unidad_lote`, `cantidad_unidades_lote`, `merma_esperada`, `peso_unidad_esperado`, `largo_unidad_esperado`, `unidades_final_xunidad`, `descripcion`, `fecha_alta`, `fecha_baja`, `activo`) VALUES
(100, 'IBERICO - PECHERA', 8, 30, '1.000', '5.130', '0.300', '0.350', NULL, '0.300', '0.245', '0.300', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(101, 'SALAME ESPAÑOL', 30, 120, '1.000', '5.130', '0.600', '0.900', NULL, '0.475', '0.473', '0.300', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(102, 'SALAME CRIOLLO', 30, 120, '1.000', '4.330', '0.600', '0.900', NULL, '0.475', '0.473', '0.300', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(103, 'SALAME ITALIANO', 30, 120, '1.000', '4.330', '0.600', '0.900', NULL, '0.475', '0.473', '0.300', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(104, 'SALAME ESPECIAL', 30, 120, '1.000', '5.325', '0.600', '0.900', NULL, '0.475', '0.473', '0.300', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(105, 'BONDIOLA NATURAL', 35, 180, '1.000', '0.300', '0.350', '1.600', NULL, '0.300', '1.120', '0.200', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(106, 'BONDIOLA GOURMET', 35, 180, '1.000', '1.300', '0.350', '1.600', NULL, '0.300', '1.120', '0.200', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(107, 'PANCETA NATURAL', 35, 180, '1.000', '0.300', '0.600', '4.800', NULL, '0.250', '3.600', '0.200', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(108, 'PANCETA GOURMET', 35, 180, '1.000', '1.300', '0.600', '4.800', NULL, '0.250', '3.600', '0.200', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(109, 'JAMON NATURAL ', 35, 180, '1.000', '0.300', '0.700', '9.000', NULL, '0.350', '5.850', '0.220', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(110, 'JAMON ESPAÑOL', 35, 180, '1.000', '1.000', '0.700', '9.000', NULL, '0.350', '5.850', '0.220', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(111, 'JAMON ITALIANO', 35, 180, '1.000', '1.000', '0.700', '9.000', NULL, '0.350', '5.850', '0.220', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(113, 'PARRILLERO', 1, 30, '1.000', '4.680', '0.120', '0.110', NULL, '0.050', '0.105', '0.120', NULL, NULL, '0000-00-00 00:00:00', NULL, 1),
(114, 'IBERICO - PECHERA 2', 8, 30, '1.000', '7.830', '0.300', '0.350', NULL, '0.300', '0.245', '0.300', NULL, 'RECETA SALAME IBERICO CON COMPOSY-S', '0000-00-00 00:00:00', NULL, 1),
(115, 'SALAME CRIOLLO - 02', 30, 120, '1.000', '7.030', '0.600', '0.900', NULL, '0.475', '0.473', '0.300', NULL, '.', '0000-00-00 00:00:00', NULL, 1),
(116, 'SALAME ESPAÑOL - 02', 30, 120, '1.000', '7.830', '0.600', '0.900', NULL, '0.475', '0.473', '0.300', NULL, '.', '0000-00-00 00:00:00', NULL, 1),
(117, 'SALAME ITALIANO - 02', 30, 120, '1.000', '7.030', '0.600', '0.900', NULL, '0.475', '0.473', '0.300', NULL, '.', '0000-00-00 00:00:00', NULL, 1),
(118, 'SALAME CRIOLLO - SIMIL ESPECIAL', 30, 120, '1.000', '5.425', '0.600', '0.900', 111, '0.475', '0.473', '0.300', NULL, 'RECETA FORMULADA UTILIZANDO COMO INTEGRAL CONJUNTO DE ADITIVOS CON FORMULACIÓN PROPIA SIMILAR A SALAME ESPECIAL', '2020-06-08 06:53:13', NULL, 0),
(119, 'SALAME ESPAÑOL - SIMIL ESPECIAL', 30, 120, '1.000', '5.275', '0.600', '0.900', 103, '0.475', '0.473', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:06:52', NULL, 0),
(120, 'SALAME ITALIANO - SIMIL ESPECIAL', 30, 120, '1.000', '5.275', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:12:21', NULL, 0),
(121, 'SALAME ESPAÑOL - SIMIL ESPECIAL.', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:20:25', NULL, 0),
(122, 'SALAME ESPAÑOL - SIMIL ESPECIAL.', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:20:28', NULL, 0),
(123, 'SALAME ESPAÑOL - SIMIL ESPECIAL.', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:20:34', NULL, 0),
(124, 'SALAME ESPAÑOL - SIMIL ESPECIAL.', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:20:56', NULL, 0),
(125, 'SALAME ESPAÑOL - SIMIL ESPECIAL.', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:21:02', NULL, 0),
(126, 'SALAME ESPAÑOL - SIMIL ESPECIAL.', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:21:11', NULL, 0),
(127, 'SALAME ESPAÑOL - SIMIL ESPECIAL.', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:21:34', NULL, 0),
(128, 'SALAME ESPAÑOL - SIMIL ESPECIAL.', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:22:34', NULL, 0),
(129, 'SALAME ESPAÑOL - SIMIL ESPECIAL.', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:22:47', NULL, 0),
(130, 'SALAME ESPAÑOL - SIMIL ESPECIAL.', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 07:22:48', NULL, 0),
(131, 'SALAME ITALIANO - SIMIL ESPECIAL COPIA2', 30, 120, '1.000', '5.275', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-08 15:02:24', NULL, 0),
(132, 'SALAME ITALIANO - SIMIL ESPECIAL -', 30, 120, '1.000', '5.275', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-09 22:52:30', NULL, 1),
(133, 'SALAME ESPAÑOL - SIMIL ESPECIAL -', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-09 22:55:48', NULL, 0),
(134, 'SALAME CRIOLLO - SIMIL ESPECIAL -', 30, 120, '1.000', '5.425', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA UTILIZANDO COMO INTEGRAL CONJUNTO DE ADITIVOS CON FORMULACIÓN PROPIA SIMILAR A SALAME ESPECIAL', '2020-06-09 23:01:40', NULL, 1),
(135, 'SALAME ESPAÑOL - SIMIL ESPECIAL. - ', 30, 120, '1.000', '6.025', '0.600', '0.900', 103, '0.475', '0.000', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-09 23:06:28', NULL, 1),
(136, 'IBERICO - PECHERA - SIMIL ESPECIAL. - ', 8, 30, '1.000', '6.025', '0.300', '0.350', 238, '0.300', '0.245', '0.300', NULL, 'RECETA FORMULADA CON INTEGRALES PROPIOS SIMILAR A LOS UTILIZADOS EN SALAME ESPECIAL.', '2020-06-09 23:12:51', NULL, 1),
(137, 'SALAME ITALIANO - SHORTON', 30, 120, '1.000', '7.030', '0.600', '0.900', 110, '0.475', '0.000', '0.300', NULL, 'RECETA CREADA CON LA UTILIZACION DE INTEGRAL PARA', '2020-06-24 15:07:07', NULL, 1),
(138, 'SALAME CRIOLLO - SHORTON', 30, 120, '1.000', '7.030', '0.600', '0.900', 110, '0.475', '0.000', '0.300', NULL, 'RECETA CONFECCIONADA CON LA INCLUSION EN SUS INGREDIENTES DE INTEGRAL PARA SALAMES SALAMSHORT (SHORTON)', '2020-06-24 19:43:33', NULL, 1),
(139, 'SALAME ESPAÑOL - 02 COPIA', 30, 120, '1.000', '7.830', '0.600', '0.900', 110, '0.475', '0.000', '0.300', NULL, 'RECETA CONFECCIONADA CON LA INCLUSION EN SUS INGREDIENTES DE INTEGRAL PARA SALAMES SALAMSHORT (SHORTON)', '2020-06-24 19:46:05', NULL, 1),
(140, 'IBERICO - PECHERA - SHORTON', 8, 30, '1.000', '7.830', '0.300', '0.363', 274, '0.300', '0.256', '0.300', NULL, 'RECETA SALAME IBERICO CON INTEGRAL PARA SALAMES SALAMSHORT', '2020-06-30 15:05:23', NULL, 1),
(141, 'SALAME ESPAÑOL - SHORTON', 30, 120, '1.000', '7.830', '0.600', '0.900', 110, '0.475', '0.000', '0.300', NULL, 'RECETA CONFECCIONADA CON LA INCLUSION EN SUS INGREDIENTES DE INTEGRAL PARA SALAMES SALAMSHORT (SHORTON)', '2020-08-06 02:52:23', NULL, 1),
(142, 'BONDIOLA - GOURMET ', 35, 180, '1.000', '1.300', '0.350', '1.800', 55, '0.300', '1.260', '0.340', NULL, 'RECETA CORREGIDA 24/8/2020, CORRECCION EN INSUMOS Y EN PROMEDIO DE PESO UNIDADES FRESCAS.', '2020-08-25 10:48:05', NULL, 1),
(143, 'BONDIOLA - NATURAL', 35, 180, '1.000', '0.300', '0.350', '1.800', 55, '0.300', '1.260', '0.340', NULL, 'RECETA CORREGIDA  EL 25/8/2020 SE MODIFICA PESO DE UNIDADES FRESCAS E INSUMOS.', '2020-08-25 12:09:05', NULL, 1),
(144, 'JAMON - NATURAL', 60, 180, '1.000', '0.300', '0.700', '4.900', 20, '0.350', '3.185', '0.650', NULL, 'RECETA MODIFICADA EL DIA 25/8/2020 CORRECCION DE INSUMOS Y PESO DE UNIDADES FRESCAS.', '2020-08-25 12:21:20', NULL, 1),
(145, 'JAMON - ESPAÑOL', 60, 180, '1.000', '1.000', '0.700', '4.900', 20, '0.350', '3.185', '0.650', NULL, ' RECETA MODIFICADA EL DIA 25/8/2020 CORRECCION DE INSUMOS Y PESO DE UNIDADES FRESCAS.', '2020-08-25 12:31:26', NULL, 1),
(146, 'JAMON - ITALIANO', 60, 180, '1.000', '1.000', '0.700', '4.900', 20, '0.350', '3.185', '0.650', NULL, ' RECETA MODIFICADA EL DIA 25/8/2020 CORRECCIÓN DE INSUMOS Y PESO DE UNIDADES FRESCAS.', '2020-08-25 12:34:41', NULL, 1),
(147, 'PANCETA - GOURMET', 35, 180, '1.000', '1.300', '0.600', '5.000', 20, '0.250', '3.750', '0.570', NULL, ' RECETA MODIFICADA EL DÍA 25/8/2020 CORRECCIÓN DE INSUMOS Y PESO DE UNIDADES FRESCAS.', '2020-08-25 12:38:43', NULL, 1),
(148, 'PANCETA - NATURAL', 35, 180, '1.000', '0.300', '0.600', '5.000', 20, '0.250', '3.750', '0.570', NULL, ' RECETA MODIFICADA EL DÍA 25/8/2020 CORRECCIÓN DE INSUMOS Y PESO DE UNIDADES FRESCAS.', '2020-08-25 12:40:54', NULL, 1),
(149, 'COSTILLAR DE CERDO', 1, 180, '1.000', '0.000', '0.000', '1.800', 1, '0.000', '1.800', '0.900', NULL, 'COSTILLAR ENTERO - FRESCO DE CERDO ', '2021-01-26 19:01:09', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `udm_n`
--

DROP TABLE IF EXISTS `udm_n`;
CREATE TABLE IF NOT EXISTS `udm_n` (
  `id_udm` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `valor` decimal(10,3) DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_udm`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `udm_n`
--

INSERT INTO `udm_n` (`id_udm`, `nombre`, `valor`, `activo`) VALUES
(1, 'kilos', NULL, 1),
(2, 'Litros', NULL, 1),
(3, 'Unidades', NULL, 1),
(4, 'Metros', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fecha_alta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_baja` datetime DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `username`, `nombre`, `password`, `email`, `fecha_alta`, `fecha_baja`, `activo`) VALUES
(1, 'sistema', 'SISTEMA', '12345', 'programacion.purares@gmail.com', '2020-02-22 21:37:30', NULL, 1),
(2, 'omar', 'OMAR', 'omar123', 'otro@mail.com', '2020-02-22 21:37:30', NULL, 1),
(3, 'guido', 'GUIDO', 'guido123', NULL, '2020-04-07 04:11:31', NULL, 1),
(4, 'dgonzalez', 'DAMIAN GONZALEZ', 'dgonzalez123', NULL, '2020-04-07 04:11:31', NULL, 1),
(5, 'adigiani', 'ALFREDO DIGIANI', 'adigiani123', NULL, '2020-04-07 04:11:31', NULL, 1),
(6, 'mcattini', 'MICAELA CATTINI', 'mcattini123', NULL, '2020-04-07 04:11:31', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ajustestock_carnes`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_ajustestock_carnes`;
CREATE TABLE IF NOT EXISTS `v_ajustestock_carnes` (
`cantidad` decimal(10,3)
,`id_ajuste_stock` int(11)
,`id_carne` int(11)
,`id_desposte` int(11)
,`insumo` varchar(45)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ajustestock_insumos`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_ajustestock_insumos`;
CREATE TABLE IF NOT EXISTS `v_ajustestock_insumos` (
`cantidad` decimal(10,3)
,`id_ajuste_stock` int(11)
,`id_insumo` int(11)
,`insumo` varchar(45)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ajustestock_productos`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_ajustestock_productos`;
CREATE TABLE IF NOT EXISTS `v_ajustestock_productos` (
`cantidad` decimal(10,0)
,`id_ajuste_stock` int(11)
,`id_ordenprod_fin` int(11)
,`id_producto` int(11)
,`nombre` varchar(45)
,`peso` decimal(10,3)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_cantidadcarnesdesposte`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_cantidadcarnesdesposte`;
CREATE TABLE IF NOT EXISTS `v_cantidadcarnesdesposte` (
`carne` varchar(45)
,`id_carne` int(11)
,`id_desposte` int(11)
,`qObtenido` decimal(32,3)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_carnes`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_carnes`;
CREATE TABLE IF NOT EXISTS `v_carnes` (
`corte` varchar(45)
,`id_carne` int(11)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_composicionstockcarne`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_composicionstockcarne`;
CREATE TABLE IF NOT EXISTS `v_composicionstockcarne` (
`carne` varchar(45)
,`fecha_desposte` varchar(10)
,`id_carne` int(11)
,`id_desposte` int(11)
,`stock` decimal(32,3)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_cuentasfunciones`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_cuentasfunciones`;
CREATE TABLE IF NOT EXISTS `v_cuentasfunciones` (
`funcion` varchar(45)
,`id_cuenta` int(11)
,`nombre` varchar(45)
,`operacion` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_decomiso_1`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_decomiso_1`;
CREATE TABLE IF NOT EXISTS `v_decomiso_1` (
`cantidad_venc2` decimal(32,3)
,`fecha_desposte` date
,`id_carne` int(11)
,`id_desposte` int(11)
,`vencimiento_1` date
,`vencimiento_2` date
,`vencimiento_dias_camara` int(11)
,`vencimiento_dias_freezer` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_decomiso_2`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_decomiso_2`;
CREATE TABLE IF NOT EXISTS `v_decomiso_2` (
`id_carne` int(11)
,`id_desposte` int(11)
,`q_postergada` decimal(32,3)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_decomiso_3`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_decomiso_3`;
CREATE TABLE IF NOT EXISTS `v_decomiso_3` (
`cantidad_venc1` decimal(33,3)
,`cantidad_venc2` decimal(32,3)
,`fecha_desposte` date
,`id_carne` int(11)
,`id_desposte` int(11)
,`q_postergada` decimal(32,3)
,`vencimiento_1` date
,`vencimiento_2` date
,`vencimiento_dias_camara` int(11)
,`vencimiento_dias_freezer` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_decomiso_4`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_decomiso_4`;
CREATE TABLE IF NOT EXISTS `v_decomiso_4` (
`cantidad_venc1` decimal(33,3)
,`cantidad_venc2` decimal(32,3)
,`id_carne` int(11)
,`id_desposte` int(11)
,`mostrar` int(7)
,`mostrar2` int(7)
,`vencimiento_1` date
,`vencimiento_2` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_decomiso_5_variable`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_decomiso_5_variable`;
CREATE TABLE IF NOT EXISTS `v_decomiso_5_variable` (
`cantidad_venc1` decimal(33,3)
,`cantidad_venc2` decimal(32,3)
,`id_carne` int(11)
,`id_desposte` int(11)
,`mostrar` int(7)
,`mostrar2` int(7)
,`vencimiento_1` date
,`vencimiento_2` date
,`ver` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_decomiso_6_union`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_decomiso_6_union`;
CREATE TABLE IF NOT EXISTS `v_decomiso_6_union` (
`cantidad` decimal(33,3)
,`fecha_segundo_vencimiento` date
,`fecha_vencimiento` date
,`id_carne` int(11)
,`id_desposte` int(11)
,`ver` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_decomiso_7_final`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_decomiso_7_final`;
CREATE TABLE IF NOT EXISTS `v_decomiso_7_final` (
`cantidad` decimal(33,3)
,`carne` varchar(45)
,`fecha_segundo_vencimiento` varchar(10)
,`fecha_vencimiento` varchar(10)
,`id_carne` int(11)
,`id_desposte` int(11)
,`udm` varchar(45)
,`ver` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalledespostes`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_detalledespostes`;
CREATE TABLE IF NOT EXISTS `v_detalledespostes` (
`anulado` tinyint(4)
,`fecha_AltaRegistro` varchar(21)
,`fecha_BajaRegistro` varchar(21)
,`fecha_desposte` varchar(10)
,`id_desposte` int(11)
,`id_usuario_AltaRegistro` int(11)
,`id_usuario_BajaRegistro` int(11)
,`merma_inicial` decimal(12,1)
,`nro_remito` varchar(45)
,`peso_total` decimal(10,3)
,`proveedor` varchar(45)
,`unidades` int(11)
,`UsuarioAlta` varchar(45)
,`UsuarioBaja` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_compra`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_detalle_compra`;
CREATE TABLE IF NOT EXISTS `v_detalle_compra` (
`anulado` tinyint(4)
,`descripcion` text
,`fecha_alta` datetime
,`fecha_baja` varchar(21)
,`fecha_compra` varchar(10)
,`id_compra` int(11)
,`id_proveedor` int(11)
,`motivo_anulacion` text
,`nro_remito` varchar(45)
,`proveedor` varchar(45)
,`usuario_alta` varchar(45)
,`Usuario_baja` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_compra_insumos`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_detalle_compra_insumos`;
CREATE TABLE IF NOT EXISTS `v_detalle_compra_insumos` (
`cantidad` decimal(10,3)
,`id_compra` int(11)
,`insumo` varchar(45)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_decomiso_carnes`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_detalle_decomiso_carnes`;
CREATE TABLE IF NOT EXISTS `v_detalle_decomiso_carnes` (
`cantidad` decimal(10,3)
,`corte` varchar(45)
,`cuenta` varchar(45)
,`id_decomiso` int(11)
,`id_desposte` int(11)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_decomiso_reg`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_detalle_decomiso_reg`;
CREATE TABLE IF NOT EXISTS `v_detalle_decomiso_reg` (
`anulado` tinyint(4)
,`descripcion` text
,`destino` varchar(45)
,`fecha_decomiso` varchar(10)
,`fecha_registro_alta` varchar(21)
,`fecha_registro_baja` varchar(21)
,`id_decomiso` int(11)
,`motivo_anulacion` text
,`usuario_alta` varchar(45)
,`usuario_baja` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_fin_op`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_detalle_fin_op`;
CREATE TABLE IF NOT EXISTS `v_detalle_fin_op` (
`anulado` tinyint(4)
,`descripcion` text
,`fecha_baja` datetime
,`fecha_finalizacion` varchar(21)
,`id_ordenprod_alta` int(11)
,`id_ordenprod_fin` int(11)
,`merma_obtenida` decimal(10,3)
,`motivo_baja` varchar(45)
,`peso_fresco` decimal(10,3)
,`producto_obtenido` decimal(10,3)
,`unidades_frescas` int(11)
,`unidades_obtenidas` int(11)
,`usuario_alta` varchar(45)
,`Usuario_baja` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_op`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_detalle_op`;
CREATE TABLE IF NOT EXISTS `v_detalle_op` (
`anulado` tinyint(4)
,`cantidad_unidades_frescas` int(11)
,`estado` varchar(1)
,`fecha_alta` varchar(21)
,`fecha_baja` varchar(21)
,`id_ordenprod` int(11)
,`id_receta` int(11)
,`id_usuario_alta_registro` int(11)
,`id_usuario_baja` int(11)
,`nombre_receta` varchar(45)
,`nro_lote` int(11)
,`peso_paston` decimal(10,3)
,`unidades_sin_asignar` int(11)
,`usuario_alta` varchar(45)
,`usuario_baja` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_op_carnes`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_detalle_op_carnes`;
CREATE TABLE IF NOT EXISTS `v_detalle_op_carnes` (
`cantidad` decimal(11,3)
,`carne` varchar(45)
,`fecha_desposte` date
,`id_desposte` int(11)
,`id_ordenprod` int(11)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_op_insumos`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_detalle_op_insumos`;
CREATE TABLE IF NOT EXISTS `v_detalle_op_insumos` (
`cantidad` decimal(33,3)
,`id_orden` int(11)
,`insumo` varchar(45)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_op_mediciones`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_detalle_op_mediciones`;
CREATE TABLE IF NOT EXISTS `v_detalle_op_mediciones` (
`fecha` varchar(10)
,`id_medicion` int(11)
,`id_ordenprod_alta` int(11)
,`id_ordenprod_fin` int(11)
,`merma` decimal(10,3)
,`peso` decimal(10,3)
,`responsable` varchar(45)
,`sort` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_receta`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_detalle_receta`;
CREATE TABLE IF NOT EXISTS `v_detalle_receta` (
`activo` tinyint(4)
,`cantidad_unidades_lote` int(11)
,`descripcion` text
,`dias_produccion` int(11)
,`dias_vencimiento` int(11)
,`fecha_alta` datetime
,`fecha_baja` datetime
,`id_receta` int(11)
,`largo_unidad_esperado` decimal(10,3)
,`largo_unidad_lote` decimal(10,3)
,`merma_esperada` decimal(12,1)
,`nombre` varchar(45)
,`peso_total_insumos_kg` decimal(10,3)
,`peso_unidad_esperado` decimal(10,3)
,`peso_unidad_lote` decimal(10,3)
,`porcent_carne` decimal(12,1)
,`unidades_final_xunidad` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_insumosreceta`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_insumosreceta`;
CREATE TABLE IF NOT EXISTS `v_insumosreceta` (
`cantidad` decimal(10,3)
,`id_insumo` int(11)
,`id_receta` int(11)
,`insumo` varchar(45)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_insumosxdepo`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_insumosxdepo`;
CREATE TABLE IF NOT EXISTS `v_insumosxdepo` (
`id_insumo` int(11)
,`nombre` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_listadesposte`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_listadesposte`;
CREATE TABLE IF NOT EXISTS `v_listadesposte` (
`anulado` tinyint(4)
,`fecha_desposte` varchar(10)
,`id_desposte` int(11)
,`nro_remito` varchar(45)
,`peso_total` decimal(10,3)
,`proveedor` varchar(45)
,`unidades` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_lista_ajustesinventarios`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_lista_ajustesinventarios`;
CREATE TABLE IF NOT EXISTS `v_lista_ajustesinventarios` (
`descripcion` text
,`fecha` varchar(21)
,`id_ajuste` int(11)
,`motivo` varchar(45)
,`tipo` varchar(45)
,`usuario` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_lista_compras`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_lista_compras`;
CREATE TABLE IF NOT EXISTS `v_lista_compras` (
`anulado` tinyint(4)
,`descripcion` text
,`fecha_compra` varchar(10)
,`id_compra` int(11)
,`nro_remito` varchar(45)
,`proveedor` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_lista_decomisos`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_lista_decomisos`;
CREATE TABLE IF NOT EXISTS `v_lista_decomisos` (
`anulado` tinyint(4)
,`destino` varchar(45)
,`fecha_decomiso` varchar(10)
,`id_decomiso` int(11)
,`nombre` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_lista_op`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_lista_op`;
CREATE TABLE IF NOT EXISTS `v_lista_op` (
`anulado` tinyint(4)
,`estado` varchar(1)
,`fecha_alta` varchar(21)
,`id_ordenprod` int(11)
,`nombre_receta` varchar(45)
,`nro_lote` int(11)
,`peso_paston` decimal(10,3)
,`usuario_alta` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_lista_op_estados`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_lista_op_estados`;
CREATE TABLE IF NOT EXISTS `v_lista_op_estados` (
`anulado_alta` tinyint(4)
,`anulado_baja` tinyint(4)
,`estado` varchar(1)
,`id_ordenprod` int(11)
,`id_ordenprod_alta` int(11)
,`id_ordenprod_fin` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_lista_recetas`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_lista_recetas`;
CREATE TABLE IF NOT EXISTS `v_lista_recetas` (
`activo` tinyint(4)
,`descripcion` text
,`id_receta` int(11)
,`nombre` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_productosreceta`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_productosreceta`;
CREATE TABLE IF NOT EXISTS `v_productosreceta` (
`id_prodrec` int(11)
,`id_producto` int(11)
,`id_receta` int(11)
,`nombre` varchar(45)
,`unidades_necesarias` decimal(10,3)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_productos_op_1_esperado`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_productos_op_1_esperado`;
CREATE TABLE IF NOT EXISTS `v_productos_op_1_esperado` (
`cantidad` int(11)
,`id_orden_alta` int(11)
,`id_orden_fin` binary(0)
,`id_producto` int(11)
,`peso` decimal(10,3)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_productos_op_2_real`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_productos_op_2_real`;
CREATE TABLE IF NOT EXISTS `v_productos_op_2_real` (
`cantidad` int(11)
,`id_orden_alta` int(11)
,`id_orden_fin` int(11)
,`id_producto` int(11)
,`peso` decimal(10,3)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_productos_op_3_final`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_productos_op_3_final`;
CREATE TABLE IF NOT EXISTS `v_productos_op_3_final` (
`id_orden_alta` int(11)
,`id_orden_fin` int(11)
,`id_producto` int(11)
,`peso_esperado` decimal(10,3)
,`peso_real` decimal(10,3)
,`producto` varchar(45)
,`q_esperada` int(11)
,`q_real` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_producto_insumos`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_producto_insumos`;
CREATE TABLE IF NOT EXISTS `v_producto_insumos` (
`cantidad` decimal(10,3)
,`id_insumo` int(11)
,`id_producto` int(11)
,`insumo` varchar(45)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_qcarnesdesposte`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_qcarnesdesposte`;
CREATE TABLE IF NOT EXISTS `v_qcarnesdesposte` (
`carne` varchar(45)
,`id_carne` int(11)
,`id_desposte` int(11)
,`qObtenido` decimal(32,3)
,`stockactual` decimal(32,3)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_stockcarnes`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_stockcarnes`;
CREATE TABLE IF NOT EXISTS `v_stockcarnes` (
`id_carne` int(11)
,`nombre` varchar(45)
,`Stock` decimal(32,3)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_stockinsumos`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_stockinsumos`;
CREATE TABLE IF NOT EXISTS `v_stockinsumos` (
`Deposito` varchar(45)
,`id_insumo` int(11)
,`Insumo` varchar(45)
,`Stock` decimal(32,3)
,`udm` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_stockproducotos_composicion`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_stockproducotos_composicion`;
CREATE TABLE IF NOT EXISTS `v_stockproducotos_composicion` (
`id_ordenprod_fin` int(11)
,`id_producto` int(11)
,`producto` varchar(45)
,`stock_peso` decimal(32,3)
,`stock_unidades` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_stockproductos`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_stockproductos`;
CREATE TABLE IF NOT EXISTS `v_stockproductos` (
`codigo` varchar(45)
,`descripcion` text
,`fecha_creacion` datetime
,`id_producto` int(11)
,`nombre` varchar(45)
,`stock` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_udminsumo`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_udminsumo`;
CREATE TABLE IF NOT EXISTS `v_udminsumo` (
`id_insumo` int(11)
,`nombre` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ultimolote`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_ultimolote`;
CREATE TABLE IF NOT EXISTS `v_ultimolote` (
`ultimo_lote` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_validacion_carne_difstock0`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_validacion_carne_difstock0`;
CREATE TABLE IF NOT EXISTS `v_validacion_carne_difstock0` (
`carne` varchar(45)
,`eq` decimal(33,3)
,`id_desposte` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_validacion_op_desposte`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_validacion_op_desposte`;
CREATE TABLE IF NOT EXISTS `v_validacion_op_desposte` (
`anulado` tinyint(4)
,`id_desposte` int(11)
,`id_ordenprod` int(11)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ajustestock_carnes`
--
DROP TABLE IF EXISTS `v_ajustestock_carnes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ajustestock_carnes`  AS  select `c_m`.`id_carne` AS `id_carne`,`c_m`.`id_desposte` AS `id_desposte`,`c_n`.`nombre` AS `insumo`,`c_m`.`cantidad` AS `cantidad`,`u_n`.`nombre` AS `udm`,`c_m`.`id_ajuste_stock` AS `id_ajuste_stock` from ((`carnes_mov` `c_m` join `carnes_n` `c_n` on((`c_n`.`id_carne` = `c_m`.`id_carne`))) join `udm_n` `u_n` on((`u_n`.`id_udm` = `c_n`.`id_udm`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ajustestock_insumos`
--
DROP TABLE IF EXISTS `v_ajustestock_insumos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ajustestock_insumos`  AS  select `i_m`.`id_insumo` AS `id_insumo`,`i_n`.`nombre` AS `insumo`,`i_m`.`cantidad` AS `cantidad`,`u_n`.`nombre` AS `udm`,`i_m`.`id_ajuste_stock` AS `id_ajuste_stock` from ((`insumos_mov` `i_m` join `insumos_n` `i_n` on((`i_n`.`id_insumo` = `i_m`.`id_insumo`))) join `udm_n` `u_n` on((`u_n`.`id_udm` = `i_n`.`id_udm`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ajustestock_productos`
--
DROP TABLE IF EXISTS `v_ajustestock_productos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ajustestock_productos`  AS  select `p_m`.`id_producto` AS `id_producto`,`p_n`.`nombre` AS `nombre`,`p_m`.`id_ordenprod_fin` AS `id_ordenprod_fin`,`p_m`.`cantidad` AS `cantidad`,`p_m`.`peso` AS `peso`,`p_m`.`id_ajuste_stock` AS `id_ajuste_stock` from (`productos_mov` `p_m` join `producto_n` `p_n` on((`p_n`.`id_producto` = `p_m`.`id_producto`))) order by `p_m`.`id_ordenprod_fin` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_cantidadcarnesdesposte`
--
DROP TABLE IF EXISTS `v_cantidadcarnesdesposte`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cantidadcarnesdesposte`  AS  select `c_m`.`id_desposte` AS `id_desposte`,`c_m`.`id_carne` AS `id_carne`,`c_n`.`nombre` AS `carne`,sum(`c_m`.`cantidad`) AS `qObtenido`,`u_n`.`nombre` AS `udm` from ((`carnes_mov` `c_m` join `carnes_n` `c_n` on((`c_n`.`id_carne` = `c_m`.`id_carne`))) join `udm_n` `u_n` on((`u_n`.`id_udm` = `c_n`.`id_udm`))) where (`c_m`.`id_cuenta` = 1) group by `c_m`.`id_carne`,`c_m`.`id_desposte` order by `c_m`.`id_desposte`,`c_n`.`nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_carnes`
--
DROP TABLE IF EXISTS `v_carnes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_carnes`  AS  select `c_n`.`id_carne` AS `id_carne`,`c_n`.`nombre` AS `corte`,`u_n`.`nombre` AS `udm` from (`carnes_n` `c_n` join `udm_n` `u_n` on((`u_n`.`id_udm` = `c_n`.`id_udm`))) where (`c_n`.`activo` = 1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_composicionstockcarne`
--
DROP TABLE IF EXISTS `v_composicionstockcarne`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_composicionstockcarne`  AS  select `c_m`.`id_carne` AS `id_carne`,`c_n`.`nombre` AS `carne`,`c_m`.`id_desposte` AS `id_desposte`,sum(`c_m`.`cantidad`) AS `stock`,`u_n`.`nombre` AS `udm`,date_format(`d_r`.`fecha_desposte`,'%d/%m/%Y') AS `fecha_desposte` from (((`carnes_mov` `c_m` join `desposte_reg` `d_r` on((`d_r`.`id_desposte` = `c_m`.`id_desposte`))) join `carnes_n` `c_n` on((`c_n`.`id_carne` = `c_m`.`id_carne`))) join `udm_n` `u_n` on((`u_n`.`id_udm` = `c_n`.`id_udm`))) group by `c_m`.`id_carne`,`c_m`.`id_desposte` order by `d_r`.`fecha_desposte`,`c_m`.`id_desposte` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_cuentasfunciones`
--
DROP TABLE IF EXISTS `v_cuentasfunciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cuentasfunciones`  AS  select `c_n`.`id_cuenta` AS `id_cuenta`,`c_n`.`nombre` AS `nombre`,`c_o`.`funcion` AS `funcion`,`c_o`.`operacion` AS `operacion` from (`cuentas_operacion` `c_o` join `cuentas_n` `c_n` on((`c_n`.`id_cuenta` = `c_o`.`id_cuenta`))) where (`c_n`.`activo` = 1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_decomiso_1`
--
DROP TABLE IF EXISTS `v_decomiso_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_decomiso_1`  AS  select `c_m`.`id_desposte` AS `id_desposte`,`c_m`.`id_carne` AS `id_carne`,sum(`c_m`.`cantidad`) AS `cantidad_venc2`,`d_r`.`fecha_desposte` AS `fecha_desposte`,`c_n`.`vencimiento_dias_camara` AS `vencimiento_dias_camara`,(`d_r`.`fecha_desposte` + interval `c_n`.`vencimiento_dias_camara` day) AS `vencimiento_1`,`c_n`.`vencimiento_dias_freezer` AS `vencimiento_dias_freezer`,(`d_r`.`fecha_desposte` + interval `c_n`.`vencimiento_dias_freezer` day) AS `vencimiento_2` from ((`carnes_mov` `c_m` join `desposte_reg` `d_r` on((`d_r`.`id_desposte` = `c_m`.`id_desposte`))) join `carnes_n` `c_n` on((`c_n`.`id_carne` = `c_m`.`id_carne`))) group by `c_m`.`id_desposte`,`c_m`.`id_carne` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_decomiso_2`
--
DROP TABLE IF EXISTS `v_decomiso_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_decomiso_2`  AS  select `d_c`.`id_desposte` AS `id_desposte`,`d_c`.`id_carne` AS `id_carne`,sum(`d_c`.`cantidad`) AS `q_postergada` from (`decomiso_carnes` `d_c` join `decomiso_reg` `d_r` on((`d_r`.`id_decomiso` = `d_c`.`id_decomiso`))) where ((`d_r`.`anulado` = 0) and (`d_c`.`id_cuenta` = 15)) group by `d_c`.`id_desposte`,`d_c`.`id_carne` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_decomiso_3`
--
DROP TABLE IF EXISTS `v_decomiso_3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_decomiso_3`  AS  select `v_d1`.`id_desposte` AS `id_desposte`,`v_d1`.`id_carne` AS `id_carne`,`v_d1`.`cantidad_venc2` AS `cantidad_venc2`,`v_d1`.`fecha_desposte` AS `fecha_desposte`,`v_d1`.`vencimiento_dias_camara` AS `vencimiento_dias_camara`,`v_d1`.`vencimiento_1` AS `vencimiento_1`,`v_d1`.`vencimiento_dias_freezer` AS `vencimiento_dias_freezer`,`v_d1`.`vencimiento_2` AS `vencimiento_2`,`v_d2`.`q_postergada` AS `q_postergada`,(`v_d1`.`cantidad_venc2` - ifnull(`v_d2`.`q_postergada`,0)) AS `cantidad_venc1` from (`v_decomiso_1` `v_d1` left join `v_decomiso_2` `v_d2` on(((`v_d2`.`id_desposte` = `v_d1`.`id_desposte`) and (`v_d2`.`id_carne` = `v_d1`.`id_carne`)))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_decomiso_4`
--
DROP TABLE IF EXISTS `v_decomiso_4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_decomiso_4`  AS  select `v_decomiso_3`.`id_desposte` AS `id_desposte`,`v_decomiso_3`.`id_carne` AS `id_carne`,`v_decomiso_3`.`cantidad_venc1` AS `cantidad_venc1`,`v_decomiso_3`.`vencimiento_1` AS `vencimiento_1`,(to_days(`v_decomiso_3`.`vencimiento_1`) - to_days(curdate())) AS `mostrar`,`v_decomiso_3`.`cantidad_venc2` AS `cantidad_venc2`,`v_decomiso_3`.`vencimiento_2` AS `vencimiento_2`,(to_days(`v_decomiso_3`.`vencimiento_2`) - to_days(curdate())) AS `mostrar2` from `v_decomiso_3` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_decomiso_5_variable`
--
DROP TABLE IF EXISTS `v_decomiso_5_variable`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_decomiso_5_variable`  AS  select `v_decomiso_4`.`id_desposte` AS `id_desposte`,`v_decomiso_4`.`id_carne` AS `id_carne`,`v_decomiso_4`.`cantidad_venc1` AS `cantidad_venc1`,`v_decomiso_4`.`vencimiento_1` AS `vencimiento_1`,`v_decomiso_4`.`mostrar` AS `mostrar`,`v_decomiso_4`.`cantidad_venc2` AS `cantidad_venc2`,`v_decomiso_4`.`vencimiento_2` AS `vencimiento_2`,`v_decomiso_4`.`mostrar2` AS `mostrar2`,(case when ((`v_decomiso_4`.`mostrar2` - 5) < 0) then 2 when ((`v_decomiso_4`.`mostrar` - 5) < 0) then 1 else 0 end) AS `ver` from `v_decomiso_4` order by (case when ((`v_decomiso_4`.`mostrar2` - 5) < 0) then 2 when ((`v_decomiso_4`.`mostrar` - 5) < 0) then 1 else 0 end) desc,`v_decomiso_4`.`vencimiento_2` desc ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_decomiso_6_union`
--
DROP TABLE IF EXISTS `v_decomiso_6_union`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_decomiso_6_union`  AS  select `v_decomiso_5_variable`.`id_desposte` AS `id_desposte`,`v_decomiso_5_variable`.`id_carne` AS `id_carne`,`v_decomiso_5_variable`.`cantidad_venc1` AS `cantidad`,`v_decomiso_5_variable`.`vencimiento_1` AS `fecha_vencimiento`,`v_decomiso_5_variable`.`vencimiento_2` AS `fecha_segundo_vencimiento`,`v_decomiso_5_variable`.`ver` AS `ver` from `v_decomiso_5_variable` where (`v_decomiso_5_variable`.`ver` = 1) union select `v_decomiso_5_variable`.`id_desposte` AS `id_desposte`,`v_decomiso_5_variable`.`id_carne` AS `id_carne`,`v_decomiso_5_variable`.`cantidad_venc2` AS `cantidad`,`v_decomiso_5_variable`.`vencimiento_2` AS `fecha_vencimiento`,`v_decomiso_5_variable`.`vencimiento_2` AS `fecha_segundo_vencimiento`,`v_decomiso_5_variable`.`ver` AS `ver` from `v_decomiso_5_variable` where (`v_decomiso_5_variable`.`ver` = 2) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_decomiso_7_final`
--
DROP TABLE IF EXISTS `v_decomiso_7_final`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_decomiso_7_final`  AS  select `v_d6`.`id_carne` AS `id_carne`,`v_n`.`corte` AS `carne`,`v_d6`.`id_desposte` AS `id_desposte`,`v_d6`.`cantidad` AS `cantidad`,`v_n`.`udm` AS `udm`,date_format(`v_d6`.`fecha_vencimiento`,'%d/%m/%Y') AS `fecha_vencimiento`,`v_d6`.`ver` AS `ver`,date_format(`v_d6`.`fecha_segundo_vencimiento`,'%d/%m/%Y') AS `fecha_segundo_vencimiento` from (`v_decomiso_6_union` `v_d6` join `v_carnes` `v_n` on((`v_n`.`id_carne` = `v_d6`.`id_carne`))) where (`v_d6`.`cantidad` > 0) order by `v_d6`.`id_desposte`,`v_n`.`corte` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalledespostes`
--
DROP TABLE IF EXISTS `v_detalledespostes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalledespostes`  AS  select `d_r`.`id_desposte` AS `id_desposte`,`d_r`.`nro_remito` AS `nro_remito`,`p_n`.`nombre` AS `proveedor`,`d_r`.`unidades` AS `unidades`,`d_r`.`peso_total` AS `peso_total`,round((`d_r`.`merma_inicial` * 100),1) AS `merma_inicial`,date_format(`d_r`.`fecha_desposte`,'%d/%m/%Y') AS `fecha_desposte`,date_format(`d_r`.`fecha_AltaRegistro`,'%d/%m/%Y %H:%i') AS `fecha_AltaRegistro`,`d_r`.`id_usuario_AltaRegistro` AS `id_usuario_AltaRegistro`,`d_r`.`anulado` AS `anulado`,date_format(`d_r`.`fecha_BajaRegistro`,'%d/%m/%Y %H:%i') AS `fecha_BajaRegistro`,`d_r`.`id_usuario_BajaRegistro` AS `id_usuario_BajaRegistro`,`us`.`nombre` AS `UsuarioAlta`,`us2`.`nombre` AS `UsuarioBaja` from (((`desposte_reg` `d_r` join `proveedores_n` `p_n` on((`p_n`.`id_proveedor` = `d_r`.`id_proveedor`))) join `usuarios` `us` on((`us`.`id_usuario` = `d_r`.`id_usuario_AltaRegistro`))) left join `usuarios` `us2` on((`us2`.`id_usuario` = `d_r`.`id_usuario_BajaRegistro`))) order by `d_r`.`id_desposte` desc ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_compra`
--
DROP TABLE IF EXISTS `v_detalle_compra`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_compra`  AS  select `c_r`.`id_compra` AS `id_compra`,`c_r`.`id_proveedor` AS `id_proveedor`,`c_r`.`nro_remito` AS `nro_remito`,date_format(`c_r`.`fecha_compra`,'%d/%m/%Y') AS `fecha_compra`,`c_r`.`descripcion` AS `descripcion`,`c_r`.`fecha_alta` AS `fecha_alta`,`c_r`.`anulado` AS `anulado`,date_format(`c_r`.`fecha_baja`,'%d/%m/%Y %H:%i') AS `fecha_baja`,`c_r`.`motivo_anulacion` AS `motivo_anulacion`,`p_n`.`nombre` AS `proveedor`,`u_a`.`nombre` AS `usuario_alta`,`u_b`.`nombre` AS `Usuario_baja` from (((`compras_reg` `c_r` join `proveedores_n` `p_n` on((`p_n`.`id_proveedor` = `c_r`.`id_proveedor`))) join `usuarios` `u_a` on((`u_a`.`id_usuario` = `c_r`.`id_usuario_alta`))) left join `usuarios` `u_b` on((`u_b`.`id_usuario` = `c_r`.`id_usuario_baja`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_compra_insumos`
--
DROP TABLE IF EXISTS `v_detalle_compra_insumos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_compra_insumos`  AS  select `i_m`.`id_compra` AS `id_compra`,`i_n`.`nombre` AS `insumo`,`i_m`.`cantidad` AS `cantidad`,`u_n`.`nombre` AS `udm` from ((`insumos_mov` `i_m` join `insumos_n` `i_n` on((`i_n`.`id_insumo` = `i_m`.`id_insumo`))) join `udm_n` `u_n` on((`u_n`.`id_udm` = `i_n`.`id_udm`))) where (`i_m`.`id_cuenta` = 10) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_decomiso_carnes`
--
DROP TABLE IF EXISTS `v_detalle_decomiso_carnes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_decomiso_carnes`  AS  select `d_c`.`id_decomiso` AS `id_decomiso`,`d_c`.`id_desposte` AS `id_desposte`,`d_c`.`cantidad` AS `cantidad`,`v_c`.`corte` AS `corte`,`v_c`.`udm` AS `udm`,`c_n`.`nombre` AS `cuenta` from ((`decomiso_carnes` `d_c` join `v_carnes` `v_c` on((`v_c`.`id_carne` = `d_c`.`id_carne`))) join `cuentas_n` `c_n` on((`c_n`.`id_cuenta` = `d_c`.`id_cuenta`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_decomiso_reg`
--
DROP TABLE IF EXISTS `v_detalle_decomiso_reg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_decomiso_reg`  AS  select `d_r`.`id_decomiso` AS `id_decomiso`,`d_r`.`destino` AS `destino`,date_format(`d_r`.`fecha_decomiso`,'%d/%m/%Y') AS `fecha_decomiso`,`d_r`.`descripcion` AS `descripcion`,`u_n`.`nombre` AS `usuario_alta`,date_format(`d_r`.`fecha_registro_alta`,'%d/%m/%Y %H:%i') AS `fecha_registro_alta`,`d_r`.`anulado` AS `anulado`,`u_n2`.`nombre` AS `usuario_baja`,`d_r`.`motivo_anulacion` AS `motivo_anulacion`,date_format(`d_r`.`fecha_registro_baja`,'%d/%m/%Y %H:%i') AS `fecha_registro_baja` from ((`decomiso_reg` `d_r` join `usuarios` `u_n` on((`u_n`.`id_usuario` = `d_r`.`id_usuario_alta`))) left join `usuarios` `u_n2` on((`u_n2`.`id_usuario` = `d_r`.`id_usuario_baja`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_fin_op`
--
DROP TABLE IF EXISTS `v_detalle_fin_op`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_fin_op`  AS  select `op_f`.`id_ordenprod_fin` AS `id_ordenprod_fin`,`op_f`.`id_ordenprod_alta` AS `id_ordenprod_alta`,date_format(`op_f`.`fecha_finalizacion`,'%d/%m/%Y %H:%i') AS `fecha_finalizacion`,`op_f`.`unidades_frescas` AS `unidades_frescas`,`op_f`.`peso_fresco` AS `peso_fresco`,`op_f`.`merma_obtenida` AS `merma_obtenida`,`op_f`.`producto_obtenido` AS `producto_obtenido`,`op_f`.`unidades_obtenidas` AS `unidades_obtenidas`,`op_f`.`descripcion` AS `descripcion`,`op_f`.`anulado` AS `anulado`,`op_f`.`fecha_baja` AS `fecha_baja`,`op_f`.`motivo_baja` AS `motivo_baja`,`u_a`.`nombre` AS `usuario_alta`,`u_b`.`nombre` AS `Usuario_baja` from ((`orden_produccion_fin` `op_f` join `usuarios` `u_a` on((`u_a`.`id_usuario` = `op_f`.`id_usuario_alta`))) left join `usuarios` `u_b` on((`u_b`.`id_usuario` = `op_f`.`id_usuario_baja`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_op`
--
DROP TABLE IF EXISTS `v_detalle_op`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_op`  AS  select `op_a`.`id_ordenprod` AS `id_ordenprod`,`op_a`.`nro_lote` AS `nro_lote`,`op_e`.`estado` AS `estado`,date_format(`op_a`.`fecha_alta`,'%d/%m/%Y %H:%i') AS `fecha_alta`,`op_a`.`id_receta` AS `id_receta`,`op_a`.`peso_paston` AS `peso_paston`,`op_a`.`cantidad_unidades_frescas` AS `cantidad_unidades_frescas`,`op_a`.`unidades_sin_asignar` AS `unidades_sin_asignar`,`op_a`.`id_usuario_alta_registro` AS `id_usuario_alta_registro`,`op_a`.`anulado` AS `anulado`,date_format(`op_a`.`fecha_baja`,'%d/%m/%Y %H:%i') AS `fecha_baja`,`op_a`.`id_usuario_baja` AS `id_usuario_baja`,`r_n`.`nombre` AS `nombre_receta`,`u_na`.`nombre` AS `usuario_alta`,`u_nb`.`nombre` AS `usuario_baja` from ((((`orden_produccion_alta` `op_a` join `recetas_n` `r_n` on((`r_n`.`id_receta` = `op_a`.`id_receta`))) join `v_lista_op_estados` `op_e` on((`op_e`.`id_ordenprod` = `op_a`.`id_ordenprod`))) join `usuarios` `u_na` on((`u_na`.`id_usuario` = `op_a`.`id_usuario_alta_registro`))) left join `usuarios` `u_nb` on((`u_nb`.`id_usuario` = `op_a`.`id_usuario_baja`))) order by `op_a`.`id_ordenprod` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_op_carnes`
--
DROP TABLE IF EXISTS `v_detalle_op_carnes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_op_carnes`  AS  select `c_m`.`id_desposte` AS `id_desposte`,`d_r`.`fecha_desposte` AS `fecha_desposte`,`c_n`.`nombre` AS `carne`,(`c_m`.`cantidad` * -(1)) AS `cantidad`,`u_n`.`nombre` AS `udm`,`c_m`.`id_ordenprod` AS `id_ordenprod` from (((`carnes_mov` `c_m` join `carnes_n` `c_n` on((`c_n`.`id_carne` = `c_m`.`id_carne`))) join `desposte_reg` `d_r` on((`d_r`.`id_desposte` = `c_m`.`id_desposte`))) join `udm_n` `u_n` on((`u_n`.`id_udm` = `c_n`.`id_udm`))) order by `c_n`.`nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_op_insumos`
--
DROP TABLE IF EXISTS `v_detalle_op_insumos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_op_insumos`  AS  select `i_m`.`id_orden` AS `id_orden`,`i_n`.`nombre` AS `insumo`,(sum(`i_m`.`cantidad`) * -(1)) AS `cantidad`,`u_n`.`nombre` AS `udm` from ((`insumos_mov` `i_m` join `insumos_n` `i_n` on((`i_n`.`id_insumo` = `i_m`.`id_insumo`))) join `udm_n` `u_n` on((`u_n`.`id_udm` = `i_n`.`id_udm`))) group by `i_m`.`id_orden`,`i_n`.`id_insumo` order by `i_n`.`nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_op_mediciones`
--
DROP TABLE IF EXISTS `v_detalle_op_mediciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_op_mediciones`  AS  select `op_f`.`id_ordenprod_alta` AS `id_ordenprod_alta`,`t_m`.`id_medicion` AS `id_medicion`,`t_m`.`id_ordenprod_fin` AS `id_ordenprod_fin`,`t_m`.`sort` AS `sort`,`t_m`.`peso` AS `peso`,`t_m`.`merma` AS `merma`,`t_m`.`responsable` AS `responsable`,date_format(`t_m`.`fecha`,'%d/%m/%Y') AS `fecha` from (`orden_produccion_mediciones` `t_m` join `orden_produccion_fin` `op_f` on((`op_f`.`id_ordenprod_fin` = `t_m`.`id_ordenprod_fin`))) order by `op_f`.`id_ordenprod_alta` desc,`t_m`.`id_medicion` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_receta`
--
DROP TABLE IF EXISTS `v_detalle_receta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_receta`  AS  select `recetas_n`.`id_receta` AS `id_receta`,`recetas_n`.`nombre` AS `nombre`,`recetas_n`.`dias_produccion` AS `dias_produccion`,`recetas_n`.`dias_vencimiento` AS `dias_vencimiento`,round((`recetas_n`.`porcent_carne` * 100),1) AS `porcent_carne`,`recetas_n`.`peso_total_insumos_kg` AS `peso_total_insumos_kg`,`recetas_n`.`largo_unidad_lote` AS `largo_unidad_lote`,`recetas_n`.`peso_unidad_lote` AS `peso_unidad_lote`,`recetas_n`.`cantidad_unidades_lote` AS `cantidad_unidades_lote`,round((`recetas_n`.`merma_esperada` * 100),1) AS `merma_esperada`,`recetas_n`.`peso_unidad_esperado` AS `peso_unidad_esperado`,`recetas_n`.`largo_unidad_esperado` AS `largo_unidad_esperado`,`recetas_n`.`unidades_final_xunidad` AS `unidades_final_xunidad`,`recetas_n`.`descripcion` AS `descripcion`,`recetas_n`.`fecha_alta` AS `fecha_alta`,`recetas_n`.`fecha_baja` AS `fecha_baja`,`recetas_n`.`activo` AS `activo` from `recetas_n` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_insumosreceta`
--
DROP TABLE IF EXISTS `v_insumosreceta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_insumosreceta`  AS  select `i_r`.`id_receta` AS `id_receta`,`i_r`.`id_insumo` AS `id_insumo`,`i_n`.`nombre` AS `insumo`,`i_r`.`cantidad` AS `cantidad`,`u_n`.`nombre` AS `udm` from ((`insumos_receta` `i_r` join `insumos_n` `i_n` on((`i_n`.`id_insumo` = `i_r`.`id_insumo`))) join `udm_n` `u_n` on((`u_n`.`id_udm` = `i_n`.`id_udm`))) order by `i_r`.`id_receta`,`i_n`.`nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_insumosxdepo`
--
DROP TABLE IF EXISTS `v_insumosxdepo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_insumosxdepo`  AS  select `insumos_n`.`id_insumo` AS `id_insumo`,`insumos_n`.`nombre` AS `nombre` from `insumos_n` order by `insumos_n`.`nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_listadesposte`
--
DROP TABLE IF EXISTS `v_listadesposte`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_listadesposte`  AS  select `d_r`.`id_desposte` AS `id_desposte`,`d_r`.`nro_remito` AS `nro_remito`,`p_n`.`nombre` AS `proveedor`,`d_r`.`unidades` AS `unidades`,`d_r`.`peso_total` AS `peso_total`,date_format(`d_r`.`fecha_desposte`,'%d/%m/%Y') AS `fecha_desposte`,`d_r`.`anulado` AS `anulado` from (((`desposte_reg` `d_r` join `proveedores_n` `p_n` on((`p_n`.`id_proveedor` = `d_r`.`id_proveedor`))) join `usuarios` `us` on((`us`.`id_usuario` = `d_r`.`id_usuario_AltaRegistro`))) left join `usuarios` `us2` on((`us2`.`id_usuario` = `d_r`.`id_usuario_BajaRegistro`))) order by `d_r`.`fecha_desposte` desc ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_lista_ajustesinventarios`
--
DROP TABLE IF EXISTS `v_lista_ajustesinventarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lista_ajustesinventarios`  AS  select `a_i`.`id_ajuste` AS `id_ajuste`,`a_i`.`tipo` AS `tipo`,`a_i`.`motivo` AS `motivo`,`a_i`.`descripcion` AS `descripcion`,`u_n`.`nombre` AS `usuario`,date_format(`a_i`.`fecha`,'%d/%m/%Y %H:%i') AS `fecha` from (`ajustes_inventarios` `a_i` join `usuarios` `u_n` on((`u_n`.`id_usuario` = `a_i`.`id_usuario`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_lista_compras`
--
DROP TABLE IF EXISTS `v_lista_compras`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lista_compras`  AS  select `c_r`.`id_compra` AS `id_compra`,date_format(`c_r`.`fecha_compra`,'%d/%m/%Y') AS `fecha_compra`,`p_n`.`nombre` AS `proveedor`,`c_r`.`nro_remito` AS `nro_remito`,`c_r`.`descripcion` AS `descripcion`,`c_r`.`anulado` AS `anulado` from (`compras_reg` `c_r` join `proveedores_n` `p_n` on((`p_n`.`id_proveedor` = `c_r`.`id_proveedor`))) order by `c_r`.`fecha_compra` desc,`p_n`.`nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_lista_decomisos`
--
DROP TABLE IF EXISTS `v_lista_decomisos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lista_decomisos`  AS  select `d_r`.`id_decomiso` AS `id_decomiso`,`d_r`.`destino` AS `destino`,date_format(`d_r`.`fecha_decomiso`,'%d/%m/%Y') AS `fecha_decomiso`,`u_n`.`nombre` AS `nombre`,`d_r`.`anulado` AS `anulado` from (`decomiso_reg` `d_r` join `usuarios` `u_n` on((`u_n`.`id_usuario` = `d_r`.`id_usuario_alta`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_lista_op`
--
DROP TABLE IF EXISTS `v_lista_op`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lista_op`  AS  select `op_a`.`id_ordenprod` AS `id_ordenprod`,`op_a`.`nro_lote` AS `nro_lote`,`r_n`.`nombre` AS `nombre_receta`,`op_a`.`peso_paston` AS `peso_paston`,date_format(`op_a`.`fecha_alta`,'%d/%m/%Y %H:%i') AS `fecha_alta`,`u_na`.`nombre` AS `usuario_alta`,`op_a`.`anulado` AS `anulado`,`op_e`.`estado` AS `estado` from (((`orden_produccion_alta` `op_a` join `recetas_n` `r_n` on((`r_n`.`id_receta` = `op_a`.`id_receta`))) join `usuarios` `u_na` on((`u_na`.`id_usuario` = `op_a`.`id_usuario_alta_registro`))) join `v_lista_op_estados` `op_e` on((`op_e`.`id_ordenprod` = `op_a`.`id_ordenprod`))) order by `op_a`.`id_ordenprod` desc ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_lista_op_estados`
--
DROP TABLE IF EXISTS `v_lista_op_estados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lista_op_estados`  AS  select `op_f`.`id_ordenprod_fin` AS `id_ordenprod_fin`,`op_f`.`id_ordenprod_alta` AS `id_ordenprod_alta`,`op_f`.`anulado` AS `anulado_baja`,'f' AS `estado`,`op_a`.`id_ordenprod` AS `id_ordenprod`,`op_a`.`anulado` AS `anulado_alta` from (`orden_produccion_fin` `op_f` left join `orden_produccion_alta` `op_a` on((`op_a`.`id_ordenprod` = `op_f`.`id_ordenprod_alta`))) where (`op_f`.`anulado` = 0) union select `op_f`.`id_ordenprod_fin` AS `id_ordenprod_fin`,`op_f`.`id_ordenprod_alta` AS `id_ordenprod_alta`,`op_f`.`anulado` AS `anulado_baja`,'p' AS `estado`,`op_a`.`id_ordenprod` AS `id_ordenprod`,`op_a`.`anulado` AS `anulado_alta` from (`orden_produccion_alta` `op_a` left join `orden_produccion_fin` `op_f` on((`op_a`.`id_ordenprod` = `op_f`.`id_ordenprod_alta`))) where ((`op_a`.`anulado` = 0) and ((`op_f`.`anulado` = 1) or (`op_f`.`anulado` is null))) union select `op_f`.`id_ordenprod_fin` AS `id_ordenprod_fin`,`op_f`.`id_ordenprod_alta` AS `id_ordenprod_alta`,`op_f`.`anulado` AS `anulado_baja`,'a' AS `estado`,`op_a`.`id_ordenprod` AS `id_ordenprod`,`op_a`.`anulado` AS `anulado_alta` from (`orden_produccion_alta` `op_a` left join `orden_produccion_fin` `op_f` on((`op_a`.`id_ordenprod` = `op_f`.`id_ordenprod_alta`))) where ((`op_a`.`anulado` = 1) and ((`op_f`.`anulado` = 1) or (`op_f`.`anulado` is null))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_lista_recetas`
--
DROP TABLE IF EXISTS `v_lista_recetas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lista_recetas`  AS  select `recetas_n`.`id_receta` AS `id_receta`,`recetas_n`.`nombre` AS `nombre`,`recetas_n`.`descripcion` AS `descripcion`,`recetas_n`.`activo` AS `activo` from `recetas_n` where (`recetas_n`.`activo` = 1) order by `recetas_n`.`nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_productosreceta`
--
DROP TABLE IF EXISTS `v_productosreceta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_productosreceta`  AS  select `p_r`.`id_prodrec` AS `id_prodrec`,`p_r`.`id_producto` AS `id_producto`,`p_n`.`nombre` AS `nombre`,`p_r`.`id_receta` AS `id_receta`,`p_r`.`unidades_necesarias` AS `unidades_necesarias` from (`productos_receta` `p_r` join `producto_n` `p_n` on((`p_n`.`id_producto` = `p_r`.`id_producto`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_productos_op_1_esperado`
--
DROP TABLE IF EXISTS `v_productos_op_1_esperado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_productos_op_1_esperado`  AS  select `p_op`.`id_orden_alta` AS `id_orden_alta`,NULL AS `id_orden_fin`,`p_op`.`id_producto` AS `id_producto`,`p_op`.`cantidad` AS `cantidad`,`p_op`.`peso` AS `peso` from `productos_ordenprod` `p_op` where (`p_op`.`id_orden_alta` is not null) order by `p_op`.`id_orden_alta` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_productos_op_2_real`
--
DROP TABLE IF EXISTS `v_productos_op_2_real`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_productos_op_2_real`  AS  select `op_f`.`id_ordenprod_alta` AS `id_orden_alta`,`p_op`.`id_orden_fin` AS `id_orden_fin`,`p_op`.`id_producto` AS `id_producto`,`p_op`.`cantidad` AS `cantidad`,`p_op`.`peso` AS `peso` from (`productos_ordenprod` `p_op` join `orden_produccion_fin` `op_f` on((`op_f`.`id_ordenprod_fin` = `p_op`.`id_orden_fin`))) where ((`p_op`.`id_orden_fin` is not null) and (`op_f`.`anulado` = 0)) order by `p_op`.`id_orden_alta` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_productos_op_3_final`
--
DROP TABLE IF EXISTS `v_productos_op_3_final`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_productos_op_3_final`  AS  select `p_e`.`id_orden_alta` AS `id_orden_alta`,`p_r`.`id_orden_fin` AS `id_orden_fin`,`p_e`.`id_producto` AS `id_producto`,`p_n`.`nombre` AS `producto`,`p_e`.`cantidad` AS `q_esperada`,`p_e`.`peso` AS `peso_esperado`,`p_r`.`cantidad` AS `q_real`,`p_r`.`peso` AS `peso_real` from ((`v_productos_op_1_esperado` `p_e` left join `v_productos_op_2_real` `p_r` on(((`p_r`.`id_orden_alta` = `p_e`.`id_orden_alta`) and (`p_r`.`id_producto` = `p_e`.`id_producto`)))) join `producto_n` `p_n` on((`p_n`.`id_producto` = `p_e`.`id_producto`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_producto_insumos`
--
DROP TABLE IF EXISTS `v_producto_insumos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_producto_insumos`  AS  select `i_p`.`id_producto` AS `id_producto`,`i_n`.`id_insumo` AS `id_insumo`,`i_n`.`nombre` AS `insumo`,`i_p`.`cantidad` AS `cantidad`,`u_n`.`nombre` AS `udm` from ((`insumos_productos` `i_p` join `insumos_n` `i_n` on((`i_n`.`id_insumo` = `i_p`.`id_insumo`))) join `udm_n` `u_n` on((`u_n`.`id_udm` = `i_n`.`id_udm`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_qcarnesdesposte`
--
DROP TABLE IF EXISTS `v_qcarnesdesposte`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_qcarnesdesposte`  AS  select `v_d`.`id_desposte` AS `id_desposte`,`v_d`.`id_carne` AS `id_carne`,`v_d`.`carne` AS `carne`,`v_d`.`qObtenido` AS `qObtenido`,`v_s`.`stock` AS `stockactual`,`v_d`.`udm` AS `udm` from (`v_cantidadcarnesdesposte` `v_d` join `v_composicionstockcarne` `v_s` on(((`v_s`.`id_carne` = `v_d`.`id_carne`) and (`v_s`.`id_desposte` = `v_d`.`id_desposte`)))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_stockcarnes`
--
DROP TABLE IF EXISTS `v_stockcarnes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stockcarnes`  AS  select `c_m`.`id_carne` AS `id_carne`,`c_n`.`nombre` AS `nombre`,sum(`c_m`.`cantidad`) AS `Stock`,`u_n`.`nombre` AS `udm` from ((`carnes_mov` `c_m` join `carnes_n` `c_n` on((`c_n`.`id_carne` = `c_m`.`id_carne`))) join `udm_n` `u_n` on((`u_n`.`id_udm` = `c_n`.`id_udm`))) group by `c_m`.`id_carne` order by `c_n`.`nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_stockinsumos`
--
DROP TABLE IF EXISTS `v_stockinsumos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stockinsumos`  AS  select `i_m`.`id_insumo` AS `id_insumo`,`i_n`.`nombre` AS `Insumo`,sum(`i_m`.`cantidad`) AS `Stock`,`u_n`.`nombre` AS `udm`,`d_n`.`nombre` AS `Deposito` from (((`insumos_mov` `i_m` join `insumos_n` `i_n` on((`i_n`.`id_insumo` = `i_m`.`id_insumo`))) join `depositos_n` `d_n` on((`d_n`.`id_deposito` = `i_n`.`id_deposito`))) join `udm_n` `u_n` on((`u_n`.`id_udm` = `i_n`.`id_udm`))) group by `i_n`.`nombre` order by `i_n`.`nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_stockproducotos_composicion`
--
DROP TABLE IF EXISTS `v_stockproducotos_composicion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stockproducotos_composicion`  AS  select `p_m`.`id_producto` AS `id_producto`,`p_n`.`nombre` AS `producto`,`p_m`.`id_ordenprod_fin` AS `id_ordenprod_fin`,sum(`p_m`.`cantidad`) AS `stock_unidades`,sum(`p_m`.`peso`) AS `stock_peso` from (`productos_mov` `p_m` join `producto_n` `p_n` on((`p_n`.`id_producto` = `p_m`.`id_producto`))) group by `p_m`.`id_producto`,`p_m`.`id_ordenprod_fin` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_stockproductos`
--
DROP TABLE IF EXISTS `v_stockproductos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stockproductos`  AS  select `p_n`.`id_producto` AS `id_producto`,`p_n`.`codigo` AS `codigo`,`p_n`.`nombre` AS `nombre`,`p_n`.`fecha_creacion` AS `fecha_creacion`,`p_n`.`descripcion` AS `descripcion`,sum(`p_m`.`cantidad`) AS `stock` from (`producto_n` `p_n` join `productos_mov` `p_m` on((`p_m`.`id_producto` = `p_n`.`id_producto`))) group by `p_n`.`id_producto` order by `p_n`.`nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_udminsumo`
--
DROP TABLE IF EXISTS `v_udminsumo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_udminsumo`  AS  select `i_n`.`id_insumo` AS `id_insumo`,`u_n`.`nombre` AS `nombre` from (`insumos_n` `i_n` join `udm_n` `u_n` on((`u_n`.`id_udm` = `i_n`.`id_udm`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ultimolote`
--
DROP TABLE IF EXISTS `v_ultimolote`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ultimolote`  AS  select max(`lotes_produccion`.`nro_lote`) AS `ultimo_lote` from `lotes_produccion` where (`lotes_produccion`.`Anulado` is null) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_validacion_carne_difstock0`
--
DROP TABLE IF EXISTS `v_validacion_carne_difstock0`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_validacion_carne_difstock0`  AS  select `v_qcarnesdesposte`.`id_desposte` AS `id_desposte`,`v_qcarnesdesposte`.`carne` AS `carne`,(`v_qcarnesdesposte`.`qObtenido` - `v_qcarnesdesposte`.`stockactual`) AS `eq` from `v_qcarnesdesposte` where ((`v_qcarnesdesposte`.`qObtenido` - `v_qcarnesdesposte`.`stockactual`) > 0) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_validacion_op_desposte`
--
DROP TABLE IF EXISTS `v_validacion_op_desposte`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_validacion_op_desposte`  AS  select distinct `c_m`.`id_ordenprod` AS `id_ordenprod`,`c_m`.`id_desposte` AS `id_desposte`,`op_a`.`anulado` AS `anulado` from (`carnes_mov` `c_m` join `orden_produccion_alta` `op_a`) where ((`op_a`.`anulado` = 0) and (`c_m`.`id_ordenprod` is not null)) ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ajustes_inventarios`
--
ALTER TABLE `ajustes_inventarios`
  ADD CONSTRAINT `ajustesinventarios_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `carnes_mov`
--
ALTER TABLE `carnes_mov`
  ADD CONSTRAINT `id_ajuste_mov_carne` FOREIGN KEY (`id_ajuste_stock`) REFERENCES `ajustes_inventarios` (`id_ajuste`),
  ADD CONSTRAINT `id_carne_mov_carne` FOREIGN KEY (`id_carne`) REFERENCES `carnes_n` (`id_carne`),
  ADD CONSTRAINT `id_cuenta_mov_carne` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas_n` (`id_cuenta`),
  ADD CONSTRAINT `id_decomiso_mov_carne` FOREIGN KEY (`id_decomiso`) REFERENCES `decomiso_reg` (`id_decomiso`),
  ADD CONSTRAINT `id_desposte_mov_carne` FOREIGN KEY (`id_desposte`) REFERENCES `desposte_reg` (`id_desposte`),
  ADD CONSTRAINT `id_ordenprod_mov_carnes` FOREIGN KEY (`id_ordenprod`) REFERENCES `orden_produccion_alta` (`id_ordenprod`),
  ADD CONSTRAINT `id_usuario_mov_carne` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `carnes_n`
--
ALTER TABLE `carnes_n`
  ADD CONSTRAINT `id_udm-carnes` FOREIGN KEY (`id_udm`) REFERENCES `udm_n` (`id_udm`);

--
-- Filtros para la tabla `compras_reg`
--
ALTER TABLE `compras_reg`
  ADD CONSTRAINT `id_proveedor_compra` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores_n` (`id_proveedor`),
  ADD CONSTRAINT `id_usuario_alta` FOREIGN KEY (`id_usuario_alta`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `id_usuario_baja` FOREIGN KEY (`id_usuario_baja`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `cuentas_operacion`
--
ALTER TABLE `cuentas_operacion`
  ADD CONSTRAINT `id_cuenta_operacion` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas_n` (`id_cuenta`);

--
-- Filtros para la tabla `decomiso_carnes`
--
ALTER TABLE `decomiso_carnes`
  ADD CONSTRAINT `decomiso_carnes_id_carne` FOREIGN KEY (`id_carne`) REFERENCES `carnes_n` (`id_carne`),
  ADD CONSTRAINT `decomiso_carnes_id_cuenta` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas_n` (`id_cuenta`),
  ADD CONSTRAINT `decomiso_carnes_id_decomiso` FOREIGN KEY (`id_decomiso`) REFERENCES `decomiso_reg` (`id_decomiso`),
  ADD CONSTRAINT `decomiso_carnes_id_desposte` FOREIGN KEY (`id_desposte`) REFERENCES `desposte_reg` (`id_desposte`),
  ADD CONSTRAINT `decomiso_carnes_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `decomiso_reg`
--
ALTER TABLE `decomiso_reg`
  ADD CONSTRAINT `decomiso_reg_usuari_baja` FOREIGN KEY (`id_usuario_baja`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `decomiso_reg_usuario_alta` FOREIGN KEY (`id_usuario_alta`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `desposte_reg`
--
ALTER TABLE `desposte_reg`
  ADD CONSTRAINT `id_proveedor_desposte_reg` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores_n` (`id_proveedor`),
  ADD CONSTRAINT `id_usuario_alta_desposte_idx` FOREIGN KEY (`id_usuario_AltaRegistro`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `id_usuario_baja_desposte_idx` FOREIGN KEY (`id_usuario_BajaRegistro`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `factura_proforma`
--
ALTER TABLE `factura_proforma`
  ADD CONSTRAINT `Fact_idExport` FOREIGN KEY (`id_export`) REFERENCES `export_sistemas` (`id`),
  ADD CONSTRAINT `Fact_idPedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos_reg` (`id_pedido`);

--
-- Filtros para la tabla `factura_proforma_items`
--
ALTER TABLE `factura_proforma_items`
  ADD CONSTRAINT `FactItems_IdProducto` FOREIGN KEY (`id_producto`) REFERENCES `productos_descripcion` (`id_producto`);

--
-- Filtros para la tabla `insumos_mov`
--
ALTER TABLE `insumos_mov`
  ADD CONSTRAINT `id_ajuste_movInsumo` FOREIGN KEY (`id_ajuste_stock`) REFERENCES `ajustes_inventarios` (`id_ajuste`),
  ADD CONSTRAINT `id_compra_movInsumo` FOREIGN KEY (`id_compra`) REFERENCES `compras_reg` (`id_compra`),
  ADD CONSTRAINT `id_cuenta_movInsumo` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas_n` (`id_cuenta`),
  ADD CONSTRAINT `id_insumo_movInsumo` FOREIGN KEY (`id_insumo`) REFERENCES `insumos_n` (`id_insumo`),
  ADD CONSTRAINT `id_ordenprod_fin_movInsumo` FOREIGN KEY (`id_orden_fin`) REFERENCES `orden_produccion_fin` (`id_ordenprod_fin`),
  ADD CONSTRAINT `id_ordenprod_movInsumo` FOREIGN KEY (`id_orden`) REFERENCES `orden_produccion_alta` (`id_ordenprod`),
  ADD CONSTRAINT `id_usuario_movInsumo` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `insumos_n`
--
ALTER TABLE `insumos_n`
  ADD CONSTRAINT `id_deposito` FOREIGN KEY (`id_deposito`) REFERENCES `depositos_n` (`id_deposito`),
  ADD CONSTRAINT `id_udm` FOREIGN KEY (`id_udm`) REFERENCES `udm_n` (`id_udm`);

--
-- Filtros para la tabla `insumos_productos`
--
ALTER TABLE `insumos_productos`
  ADD CONSTRAINT `prodinsum_id_insumo` FOREIGN KEY (`id_insumo`) REFERENCES `insumos_n` (`id_insumo`),
  ADD CONSTRAINT `prodinsum_id_producro` FOREIGN KEY (`id_producto`) REFERENCES `producto_n` (`id_producto`);

--
-- Filtros para la tabla `insumos_receta`
--
ALTER TABLE `insumos_receta`
  ADD CONSTRAINT `id_insumo` FOREIGN KEY (`id_insumo`) REFERENCES `insumos_n` (`id_insumo`),
  ADD CONSTRAINT `id_receta` FOREIGN KEY (`id_receta`) REFERENCES `recetas_n` (`id_receta`);

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orden_produccion_alta`
--
ALTER TABLE `orden_produccion_alta`
  ADD CONSTRAINT `fk_id_receta` FOREIGN KEY (`id_receta`) REFERENCES `recetas_n` (`id_receta`),
  ADD CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario_alta_registro`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `id_usuario_baja_op` FOREIGN KEY (`id_usuario_baja`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `nro_lote_orden_prod2` FOREIGN KEY (`nro_lote`) REFERENCES `lotes_produccion` (`nro_lote`);

--
-- Filtros para la tabla `orden_produccion_fin`
--
ALTER TABLE `orden_produccion_fin`
  ADD CONSTRAINT `id_ordenprod_alta` FOREIGN KEY (`id_ordenprod_alta`) REFERENCES `orden_produccion_alta` (`id_ordenprod`),
  ADD CONSTRAINT `id_usuario_anulacion` FOREIGN KEY (`id_usuario_baja`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `id_usuario_fin_op` FOREIGN KEY (`id_usuario_alta`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `orden_produccion_mediciones`
--
ALTER TABLE `orden_produccion_mediciones`
  ADD CONSTRAINT `mediciones_idordenprod_fin` FOREIGN KEY (`id_ordenprod_fin`) REFERENCES `orden_produccion_fin` (`id_ordenprod_fin`);

--
-- Filtros para la tabla `pedidos_reg`
--
ALTER TABLE `pedidos_reg`
  ADD CONSTRAINT `Pedidos_IdVendedor` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedores` (`id_vendedor`);

--
-- Filtros para la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  ADD CONSTRAINT `PedProd_IdPedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos_reg` (`id_pedido`),
  ADD CONSTRAINT `PedProd_IdProducto` FOREIGN KEY (`id_producto`) REFERENCES `productos_descripcion` (`id_producto`);

--
-- Filtros para la tabla `productos_mov`
--
ALTER TABLE `productos_mov`
  ADD CONSTRAINT `productosmov_id_ajsutestock` FOREIGN KEY (`id_ajuste_stock`) REFERENCES `ajustes_inventarios` (`id_ajuste`),
  ADD CONSTRAINT `productosmov_id_cuenta` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas_n` (`id_cuenta`),
  ADD CONSTRAINT `productosmov_id_ordenprod_fin` FOREIGN KEY (`id_ordenprod_fin`) REFERENCES `orden_produccion_fin` (`id_ordenprod_fin`),
  ADD CONSTRAINT `productosmov_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto_n` (`id_producto`),
  ADD CONSTRAINT `productosmov_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `productos_ordenprod`
--
ALTER TABLE `productos_ordenprod`
  ADD CONSTRAINT `prodorden_id_ordenprod_alta` FOREIGN KEY (`id_orden_alta`) REFERENCES `orden_produccion_alta` (`id_ordenprod`),
  ADD CONSTRAINT `prodorden_id_ordenprod_fin` FOREIGN KEY (`id_orden_fin`) REFERENCES `orden_produccion_fin` (`id_ordenprod_fin`),
  ADD CONSTRAINT `prodorden_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto_n` (`id_producto`);

--
-- Filtros para la tabla `productos_receta`
--
ALTER TABLE `productos_receta`
  ADD CONSTRAINT `prodrec_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto_n` (`id_producto`),
  ADD CONSTRAINT `prodrec_id_receta` FOREIGN KEY (`id_receta`) REFERENCES `recetas_n` (`id_receta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
