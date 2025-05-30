-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-05-2025 a las 10:20:06
-- Versión del servidor: 8.0.42-0ubuntu0.24.04.1
-- Versión de PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `TFG`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ColaBusqueda`
--

CREATE TABLE `ColaBusqueda` (
  `usuario_id` int NOT NULL,
  `partidas_ganadas` int DEFAULT NULL,
  `estado` enum('buscando','emparejado') DEFAULT 'buscando',
  `fecha_busqueda` datetime DEFAULT NULL,
  `Id_emparejado` int DEFAULT NULL,
  `ID_partida` int DEFAULT NULL,
  `tipo_partida` enum('1v1','2v2') NOT NULL DEFAULT '1v1',
  `jugador2_id` int DEFAULT NULL,
  `jugador3_id` int DEFAULT NULL,
  `jugador4_id` int DEFAULT NULL,
  `es_desafio` tinyint(1) DEFAULT '0',
  `usuario_desafiado_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ColaBusqueda`
--

INSERT INTO `ColaBusqueda` (`usuario_id`, `partidas_ganadas`, `estado`, `fecha_busqueda`, `Id_emparejado`, `ID_partida`, `tipo_partida`, `jugador2_id`, `jugador3_id`, `jugador4_id`, `es_desafio`, `usuario_desafiado_id`) VALUES
(1, 0, 'emparejado', '2025-05-30 09:47:25', 5, 150, '1v1', NULL, NULL, NULL, 0, NULL),
(5, 0, 'emparejado', '2025-05-30 09:47:25', 1, 150, '1v1', NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Jugadas`
--

CREATE TABLE `Jugadas` (
  `id` int NOT NULL,
  `ID_partida` int NOT NULL,
  `equipo1` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `equipo2` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `set` int NOT NULL,
  `ganador` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Jugadas`
--

INSERT INTO `Jugadas` (`id`, `ID_partida`, `equipo1`, `equipo2`, `set`, `ganador`) VALUES
(1, 117, '6H', '4C', 1, 1),
(2, 117, '6D', '4S', 1, 1),
(3, 117, '5H', '5D', 1, 5),
(4, 117, 'AS', 'KC', 1, 5),
(5, 117, '6S', 'JH', 1, 1),
(6, 118, '5H', '6D', 1, 5),
(7, 118, NULL, '4C', 1, NULL),
(8, 119, NULL, '7C', 1, NULL),
(9, 120, 'KS', '5C', 1, 5),
(10, 121, '6C', 'JD', 1, 1),
(11, 121, '4H', '2C', 1, 5),
(12, 121, '7S', '4D', 1, 5),
(13, 121, '7H', '6S', 1, 5),
(14, 121, 'KD', 'QD', 1, 5),
(15, 121, 'QH', '6D', 1, 5),
(16, 121, 'KS', 'QS', 1, 5),
(17, 121, 'AS', '4C', 1, 5),
(18, 121, 'JC', '4S', 1, 5),
(19, 121, 'QC', '5C', 1, 5),
(20, 121, '3S', '2S', 1, 5),
(21, 121, '5D', '7C', 1, 5),
(22, 121, '7D', '6H', 1, 1),
(23, 121, 'KC', '2D', 1, 1),
(24, 121, NULL, 'JS', 1, NULL),
(25, 122, '2H', '4C', 1, 5),
(26, 122, '2D', '7H', 1, 1),
(27, 122, 'QS', '4S', 1, 1),
(28, 122, 'JH', '5D', 1, 1),
(29, 122, '7C', '2C', 1, 1),
(30, 122, 'AH', '6H', 1, 1),
(31, 122, 'QC', 'JS', 1, 1),
(32, 122, '6S', 'KC', 1, 5),
(33, 122, '7D', 'KS', 1, 5),
(34, 122, 'AC', '3C', 1, 1),
(35, 122, 'KD', '6D', 1, 1),
(36, 122, 'KH', '4H', 1, 1),
(37, 122, 'QH', '5H', 1, 1),
(38, 122, '7S', '5S', 1, 1),
(39, 123, '5H', '3D', 1, 5),
(40, 123, 'AC', '4C', 1, 5),
(41, 123, '4D', 'AD', 1, 1),
(42, 123, 'QD', '5D', 1, 5),
(43, 123, '4S', '5C', 1, 5),
(44, 123, 'KC', 'QC', 1, 5),
(45, 123, '2S', '4H', 1, 1),
(46, 123, '7S', '6C', 1, 1),
(47, 123, '7H', '3S', 1, 5),
(48, 123, '7D', '5S', 1, 5),
(49, 123, 'AH', 'KD', 1, 5),
(50, 123, '6H', '2H', 1, 5),
(51, 123, '2C', 'JD', 1, 5),
(52, 123, '6D', '6S', 1, 5),
(53, 123, '2D', '3C', 1, 5),
(54, 123, 'JC', 'AS', 1, 5),
(55, 124, '4S', 'JD', 1, 1),
(56, 124, '3D', '2D', 1, NULL),
(57, 124, 'AH', '3H', 1, 1),
(58, 124, '6S', 'KH', 1, 1),
(59, 124, '6H', 'QD', 1, 1),
(60, 124, '5H', '2C', 1, 5),
(61, 125, 'AH', '7H', 1, 5),
(62, 125, 'JH', 'JD', 1, 5),
(63, 126, '2H', '3H', 1, 5),
(64, 125, '3D', 'QH', 1, 1),
(65, 125, '4D', 'AS', 1, 1),
(66, 125, '7D', 'KD', 1, 1),
(67, 125, 'KC', '4S', 1, 1),
(68, 125, 'JS', 'AC', 1, 1),
(69, 125, '5H', '6D', 1, 5),
(70, 126, '4S', 'JH', 1, 1),
(71, 125, '6H', '5S', 1, 5),
(72, 125, '7S', 'QS', 1, 1),
(73, 125, 'JC', '4C', 1, 5),
(74, 125, 'QC', '2S', 1, 5),
(75, 125, '5C', 'QD', 1, 5),
(76, 127, 'AC', '3C', 1, 5),
(77, 127, '3D', 'KH', 1, 1),
(78, 127, 'AH', 'JH', 1, 5),
(79, 127, '7S', '7H', 1, 1),
(80, 127, 'QC', '5S', 1, 1),
(81, 127, 'QH', '2C', 1, 5),
(82, 127, '2D', '7D', 1, 1),
(83, 127, '2S', '4D', 1, 1),
(84, 127, 'JC', '4C', 1, 5),
(85, 127, 'JD', '2H', 1, 1),
(86, 127, '5H', 'AS', 1, 5),
(87, 127, '6C', '4S', 1, 5),
(88, 127, '6S', '5D', 1, 5),
(89, 127, '3S', 'QS', 1, 1),
(90, 127, 'KD', 'QD', 1, 5),
(91, 127, '6H', '4H', 1, 5),
(92, 127, '3H', '5C', 1, 5),
(93, 127, 'KS', 'JS', 1, 5),
(94, 127, 'AD', '6D', 1, 5),
(95, 127, 'KC', '7C', 1, 5),
(96, 128, '5S', '6S', 1, 5),
(97, 128, 'KS', 'QC', 1, 5),
(98, 128, '2D', '4S', 1, 5),
(99, 128, '4C', '5D', 1, 5),
(100, 128, 'AS', '2S', 1, 1),
(101, 128, '7D', '5H', 1, 5),
(102, 129, 'JS', 'JD', 1, 5),
(103, 129, '2S', 'QH', 1, 5),
(104, 129, '3D', '4C', 3, 1),
(105, 130, '6H', '3S', 1, 1),
(106, 130, '6D', 'JD', 1, 5),
(107, 130, '4C', '7C', 1, 5),
(108, 130, 'AD', '4D', 1, 1),
(109, 130, 'QS', '4S', 1, 1),
(110, 130, 'QD', 'QC', 1, 1),
(111, 130, 'KS', 'JS', 1, 1),
(112, 130, '2C', '3C', 1, 5),
(113, 130, '6S', '5S', 1, 1),
(114, 130, '7S', '7D', 2, 1),
(115, 130, 'AC', '2S', 2, 1),
(116, 130, '5D', '2D', 2, 1),
(117, 130, '2H', 'JC', 2, 1),
(118, 130, 'QH', '5C', 2, 1),
(119, 130, '4H', '6C', 2, 1),
(120, 130, 'KC', '5H', 2, 1),
(121, 130, '3H', '7H', 2, 5),
(122, 130, 'KH', 'AS', 2, 5),
(123, 130, 'KD', '3D', 2, 1),
(124, 130, 'AH', 'JH', 2, 1),
(125, 131, '6S', '5D', 1, NULL),
(126, 131, 'QC', 'KC', 1, 1),
(127, 131, 'JD', '2C', 1, NULL),
(128, 131, 'JC', '4C', 1, NULL),
(129, 132, '5D', 'QC', 1, 5),
(130, 132, '2C', '3S', 1, 5),
(131, 132, '4C', 'JC', 1, 5),
(132, 132, 'JH', 'JS', 1, 1),
(133, 132, '6D', 'KD', 1, 5),
(134, 132, '4H', 'AC', 1, 1),
(135, 132, '7C', '3C', 2, 1),
(136, 132, '2S', 'AS', 2, 5),
(137, 132, 'QS', 'KS', 2, 5),
(138, 132, '6S', '7S', 2, 5),
(139, 132, '7D', '3D', 2, 1),
(140, 132, 'QD', 'AD', 2, 5),
(141, 132, '4D', '2D', 2, 1),
(142, 132, '4S', '5S', 2, 5),
(143, 132, 'KC', '5C', 2, 1),
(144, 132, '6H', '5H', 2, 1),
(145, 132, '7H', 'KH', 2, 5),
(146, 132, 'QH', '6C', 2, NULL),
(147, 132, '3H', '2H', 2, NULL),
(148, 132, 'AH', 'JD', 1, 1),
(149, 133, '2C', '5S', 1, 5),
(150, 133, '6H', '5H', 1, NULL),
(151, 133, '7S', '6D', 1, NULL),
(152, 133, '7D', '7H', 2, 5),
(153, 133, '6S', '6C', 2, NULL),
(154, 133, 'QC', '4H', 2, NULL),
(155, 133, '3H', 'AC', 3, 5),
(156, 133, '4S', 'QH', 3, 1),
(157, 133, '5S', '7C', 3, 1),
(158, 133, 'JC', 'KC', 3, 1),
(159, 133, 'AD', 'QD', 3, 1),
(160, 133, '3D', '7H', 2, NULL),
(161, 133, 'JH', 'KD', 3, 5),
(162, 133, 'QH', 'QS', 2, NULL),
(163, 133, '6D', '2S', 2, NULL),
(164, 133, 'AS', 'QC', 2, NULL),
(165, 133, 'AH', '6D', 3, 1),
(166, 133, '5D', 'KC', 3, 5),
(167, 133, 'AC', 'JH', 3, 5),
(168, 134, '6C', '7C', 1, 5),
(169, 134, 'QH', 'JD', 1, 5),
(170, 134, '7D', '7H', 1, 5),
(171, 133, NULL, '5S', 3, NULL),
(172, 134, 'KD', '5H', 1, 5),
(173, 134, '5D', '6D', 1, 5),
(174, 134, '3S', 'JS', 3, 5),
(175, 134, '3C', 'AC', 3, 5),
(176, 134, '5C', 'QC', 3, 5),
(177, 134, '4D', '7S', 3, 5),
(178, 134, '3H', '4H', 3, 5),
(179, 134, '3D', '2S', 3, 5),
(180, 134, '6H', 'KC', 3, 5),
(181, 137, '7D', 'QD', 1, 5),
(182, 137, '5S', '4C', 1, 5),
(183, 137, '3D', '4S', 1, 1),
(184, 137, '7C', 'JC', 1, 5),
(185, 137, '3S', 'QS', 1, 5),
(186, 137, '2H', 'KC', 1, 5),
(187, 137, 'AC', '2C', 1, 1),
(188, 137, '6C', '6D', 1, 5),
(189, 137, '5D', 'AD', 1, 5),
(190, 137, '5C', '3C', 1, 1),
(191, 137, '7S', '6S', 1, 1),
(192, 137, 'QC', 'AS', 1, 1),
(193, 137, '4H', '3H', 1, 1),
(194, 137, 'AH', '5H', 1, 1),
(195, 137, '6H', '7H', 1, 5),
(196, 137, 'KS', '2S', 1, 1),
(197, 137, 'QH', 'JH', 1, 1),
(198, 137, 'KH', '4D', 1, 5),
(199, 137, '2D', 'JD', 1, 5),
(200, 137, 'KD', 'JS', 1, 1),
(201, 138, '5H', '3C', 1, 1),
(202, 138, '3H', '5D', 2, 1),
(203, 138, 'AD', '4D', 3, 5),
(204, 139, 'KH', '5D', 1, 1),
(205, 140, '5H', '7H', 1, 1),
(206, 140, 'QS', 'QC', 2, 1),
(207, 140, 'QS', '6C', 3, 1),
(208, 141, '5H', '4C', 1, 1),
(209, 142, '6S', 'AS', 1, 1),
(210, 142, 'AC', '3C', 2, 5),
(211, 142, 'AS', 'AH', 3, 5),
(212, 143, NULL, 'AD', 1, NULL),
(213, 143, 'AC', NULL, 2, 1),
(214, 143, 'AD', 'KS', 3, 5),
(215, 144, '2S', '4S', 1, 1),
(216, 144, 'AH', '2D', 1, 5),
(217, 144, 'AS', '6S', 1, 5),
(218, 144, '4C', 'QC', 1, 1),
(219, 144, '7C', '5C', 1, 5),
(220, 143, '4S', 'KC', 3, 1),
(221, 144, 'AD', '3C', 1, 5),
(222, 144, '6D', '3H', 1, 1),
(223, 144, '6H', 'JD', 1, 5),
(224, 144, '7S', '7H', 1, 1),
(225, 144, '5S', '4H', 1, 1),
(226, 144, '2H', '7D', 1, 5),
(227, 145, 'KS', 'AC', 1, 5),
(228, 145, 'AD', 'AS', 1, 5),
(229, 145, 'QD', 'JS', 1, 5),
(230, 145, 'QS', '5H', 1, 5),
(231, 145, 'KH', '6C', 1, 5),
(232, 145, 'KC', 'AH', 1, 1),
(233, 145, '7S', '3D', 1, 1),
(234, 145, '5S', '5D', 1, 1),
(235, 145, '7H', '4S', 1, 1),
(236, 145, 'JD', 'KD', 1, 5),
(237, 145, '4H', '4D', 1, 5),
(238, 145, '7D', '2H', 1, 5),
(239, 145, '5C', 'JH', 1, 1),
(240, 145, '3H', '6H', 1, 5),
(241, 145, '4C', 'QH', 1, 1),
(242, 145, '3S', '2S', 1, 1),
(243, 145, '6S', '2C', 1, 5),
(244, 145, '3C', '6D', 1, 1),
(245, 145, 'QC', '7C', 1, 1),
(246, 145, 'JC', '2D', 1, 1),
(247, 146, '6D', '4C', 1, 5),
(248, 146, '3D', '5H', 1, 5),
(249, 146, 'AS', '7S', 1, 1),
(250, 146, '2S', '7H', 1, 1),
(251, 146, '2D', 'QH', 1, 1),
(252, 146, '5D', 'KD', 1, 5),
(253, 146, '7D', 'KC', 1, 5),
(254, 146, '3S', 'AC', 1, 5),
(255, 146, '5C', 'AH', 1, 1),
(256, 146, '6S', '4S', 1, 1),
(257, 146, '5S', '4D', 1, 1),
(258, 146, '4H', 'JD', 1, 1),
(259, 146, 'JS', '6H', 1, 1),
(260, 146, 'QS', 'KH', 2, 1),
(261, 146, '2H', 'JH', 2, 5),
(262, 146, 'AD', 'QD', 2, 1),
(263, 146, 'KS', '7C', 2, 1),
(264, 146, '3C', 'JC', 2, 5),
(265, 146, '2C', 'QC', 2, 5),
(266, 146, '6C', '3H', 2, 5),
(267, 147, '4S', '2H', 1, 1),
(268, 147, '5C', '6S', 1, 1),
(269, 147, '5H', '6H', 1, 5),
(270, 147, '6C', '7S', 1, 5),
(271, 147, 'JH', '4C', 1, 5),
(272, 147, '3S', '7H', 1, 5),
(273, 147, '3C', '2C', 1, 1),
(274, 147, '7C', 'JC', 1, 5),
(275, 147, 'AH', '4H', 1, 1),
(276, 147, '2S', 'QS', 1, 5),
(277, 147, 'AC', 'QH', 1, 5),
(278, 147, '3H', 'JS', 1, 5),
(279, 147, 'KS', 'KH', 1, 5),
(280, 147, '5S', 'QC', 1, 5),
(281, 147, '5D', 'KC', 1, 1),
(282, 147, '6D', '3D', 1, 1),
(283, 147, 'AD', '2D', 1, 1),
(284, 147, 'JD', 'KD', 1, 5),
(285, 147, '7D', '4D', 1, 1),
(286, 147, 'QD', 'AS', 1, 1),
(287, 148, '4D', '2D', 1, 1),
(288, 148, '6C', '4H', 1, 1),
(289, 148, '2C', '6H', 1, 1),
(290, 148, '2S', '6D', 1, 1),
(291, 148, '4C', 'QH', 1, 1),
(292, 148, '7H', 'JC', 3, 1),
(293, 148, 'AC', 'JD', 1, 1),
(294, 148, '3C', 'AH', 1, 1),
(295, 148, '3D', 'AS', 1, 5),
(296, 148, 'JH', 'KD', 1, 5),
(297, 148, '3H', '2H', 1, 1),
(298, 149, '2H', '4H', 1, 1),
(299, 149, '4S', '6H', 1, 1),
(300, 149, '7C', '6C', 1, 5),
(301, 149, '5D', '7D', 1, 1),
(302, 149, '5H', '7H', 1, 1),
(303, 149, 'QS', 'JC', 1, 1),
(304, 149, 'JS', 'QH', 1, 1),
(305, 149, '4D', '2S', 1, 5),
(306, 149, '2C', '5C', 1, 1),
(307, 149, '3C', 'KC', 1, 1),
(308, 149, 'AC', '3S', 1, 1),
(309, 149, '3H', 'QC', 1, 1),
(310, 149, '6S', 'KH', 1, 1),
(311, 149, '4C', '7S', 1, 1),
(312, 149, '5S', 'JH', 1, 1),
(313, 149, 'KS', 'AS', 1, 1),
(314, 149, '6D', 'AH', 1, 5),
(315, 149, 'JD', 'KD', 1, 1),
(316, 149, 'AD', 'QD', 1, 5),
(317, 149, '3D', '2D', 1, 5),
(318, 149, '2C', '5H', 2, 5),
(319, 149, '4H', '6H', 2, 1),
(320, 149, '4D', '4C', 2, 1),
(321, 149, '6C', '2S', 2, 1),
(322, 149, '7C', 'JC', 2, 1),
(323, 149, '6D', '3D', 2, 5),
(324, 149, '5C', NULL, 2, NULL),
(325, 150, '4H', '4D', 1, 5),
(326, 150, '3S', '2S', 1, 1),
(327, 150, '2H', '6S', 1, 1),
(328, 150, 'AH', '7H', 1, 1),
(329, 150, 'KH', 'QD', 1, 1),
(330, 150, 'QS', '3D', 1, 1),
(331, 150, '4C', '5C', 1, 5),
(332, 150, '6H', '5D', 1, 5),
(333, 150, '4S', '3H', 1, 5),
(334, 150, 'AS', '5S', 1, 1),
(335, 150, 'JS', '2D', 1, 1),
(336, 150, 'KS', 'JD', 1, 1),
(337, 150, '5H', 'JH', 1, 5),
(338, 150, '6D', '7D', 1, 5),
(339, 150, '6C', '7S', 1, 1),
(340, 150, 'QH', '2C', 1, 5),
(341, 150, 'JC', 'AD', 1, 1),
(342, 150, 'QC', 'AC', 1, 5),
(343, 150, 'KC', 'KD', 1, 1),
(344, 150, '3C', '7C', 1, 5),
(345, 150, NULL, 'AC', 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Partida`
--

CREATE TABLE `Partida` (
  `id` int NOT NULL,
  `ID_baraja` varchar(250) NOT NULL,
  `equipo1` varchar(255) DEFAULT NULL,
  `equipo2` varchar(255) DEFAULT NULL,
  `ganador` varchar(250) DEFAULT NULL,
  `estado` varchar(250) DEFAULT NULL,
  `empieza_jugador` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `siguiente_jugador` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Partida`
--

INSERT INTO `Partida` (`id`, `ID_baraja`, `equipo1`, `equipo2`, `ganador`, `estado`, `empieza_jugador`, `siguiente_jugador`) VALUES
(108, 'z03wv6qtpik6', '1', '5', NULL, 'en curso', '1', '1'),
(109, 'iaixzkhuqa83', '5', '4', NULL, 'en curso', '5', '5'),
(110, 'mc6ndd6gfg4t', '1', '5', NULL, 'en curso', '5', '5'),
(111, 'bakncu67q7yi', '5', '1', NULL, 'en curso', '5', '5'),
(112, 'mej0vay1g62s', '5', '1', NULL, 'en curso', '5', '5'),
(113, '7fcaa2c5wogk', '1', '5', NULL, 'en curso', '5', '5'),
(114, 'lwgv968qoqs6', '1', '5', NULL, 'en curso', '1', '1'),
(115, '9e7t1mkm1k7r', '1', '5', NULL, 'en curso', '5', '5'),
(116, 'diw2yopkwwli', '5', '1', NULL, 'en curso', '5', '5'),
(117, 'tzwsmhn1h4ls', '1', '5', NULL, 'en curso', '5', '5'),
(118, '7o7pitm0avop', '1', '5', NULL, 'en curso', '1', '1'),
(119, 'gktauyt7644e', '5', '1', NULL, 'en curso', '5', '5'),
(120, '0sw45z7fklvj', '1', '5', NULL, 'en curso', '1', '1'),
(121, '8a8uimu24fbs', '5', '1', NULL, 'en curso', '5', '5'),
(122, 's7orrusnm87h', '1', '5', NULL, 'en curso', '1', '5'),
(123, 'di2jvf5ef89q', '5', '1', NULL, 'en curso', '5', '5'),
(124, 'l73hghlhjqg5', '1', '5', NULL, 'en curso', '1', '5'),
(125, 'zqcl5r12hn1w', '5', '1', NULL, 'en curso', '5', '5'),
(126, '7i73krmtfc43', '1', '5', NULL, 'en curso', '1', '1'),
(127, 'wq155vg2tdpo', '5', '1', NULL, 'en curso', '5', '5'),
(128, '0v2qjrwbrti6', '1', '5', NULL, 'en curso', '5', '5'),
(129, 'soygl3soo4w3', '1', '5', NULL, 'en curso', '1', '1'),
(130, 'oyn8wqxez5v8', '1', '5', NULL, 'en curso', '1', '1'),
(131, 'xkz9wvmakmwm', '5', '1', NULL, 'en curso', '5', '5'),
(132, 'ho7xni3b96px', '1', '5', NULL, 'en curso', '1', '1'),
(133, '3pal48dc7vew', '5', '1', '5', 'en curso', '5', '5'),
(134, 'ccln9q9lm2ks', '1', '5', NULL, 'en curso', '5', '5'),
(135, 'v7m3tw831vd1', '1', '5', NULL, 'en curso', '1', '5'),
(136, 'bm7kh5bb5gen', '1', '5', NULL, 'en curso', '1', '5'),
(137, 'knslj183lp92', '1', '5', NULL, 'en curso', '1', '1'),
(138, '429hy6jilqls', '5', '1', '1', 'en curso', '5', '5'),
(139, 'o27dyimbog4s', '5', '1', NULL, 'en curso', '1', '1'),
(140, '9ut00h7jj80a', '5', '1', '1', 'en curso', '1', '1'),
(141, '65utrp902c00', '5', '1', NULL, 'en curso', '1', '1'),
(142, '4okw1qxw354p', '5', '1', '5', 'en curso', '5', '5'),
(143, 'juu5vda1epbl', '1', '5', 'Empate', 'en curso', '1', '1'),
(144, 'cx7kdkdqzq4x', '5', '1', NULL, 'en curso', '5', '5'),
(145, 'wkj3lxt8qyn4', '1', '5', NULL, 'en curso', '1', '1'),
(146, 'jfm715qoxw3o', '1', '5', NULL, 'en curso', '5', '5'),
(147, 'uf7ge7anmfqe', '1', '5', NULL, 'en curso', '1', '1'),
(148, 'qiyfombwd6ld', '1', '5', NULL, 'en curso', '1', '1'),
(149, '100qrgefvi3z', '5', '1', NULL, 'en curso', '5', '1'),
(150, 'hvt8t1nzoti1', '1', '5', NULL, 'en curso', '5', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sets`
--

CREATE TABLE `sets` (
  `partida_id` int NOT NULL,
  `num_sets` int NOT NULL,
  `puntuacion_equipo1` int DEFAULT NULL,
  `puntuacion_equipo2` int DEFAULT NULL,
  `Triunfo` varchar(250) NOT NULL,
  `arrastre` int NOT NULL DEFAULT '0',
  `ganador` int NOT NULL DEFAULT '0',
  `Las_20_1` int NOT NULL DEFAULT '0',
  `Las_20_2` int NOT NULL DEFAULT '0',
  `Las_20_3` int NOT NULL DEFAULT '0',
  `Las_40` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sets`
--

INSERT INTO `sets` (`partida_id`, `num_sets`, `puntuacion_equipo1`, `puntuacion_equipo2`, `Triunfo`, `arrastre`, `ganador`, `Las_20_1`, `Las_20_2`, `Las_20_3`, `Las_40`) VALUES
(108, 1, 0, 0, 'HEARTS', 0, 0, 0, 0, 0, 0),
(109, 1, 0, 0, 'DIAMONDS', 0, 0, 0, 0, 0, 0),
(110, 1, 0, 0, 'HEARTS', 0, 0, 0, 0, 0, 0),
(111, 1, 0, 0, 'HEARTS', 0, 0, 0, 0, 0, 0),
(112, 1, 0, 45, 'HEARTS', 0, 0, 0, 0, 0, 0),
(113, 1, 0, 0, 'CLUBS', 0, 0, 0, 0, 0, 0),
(114, 1, 3, 3, 'HEARTS', 0, 0, 0, 0, 0, 0),
(115, 1, 11, 11, 'SPADES', 0, 0, 0, 0, 0, 0),
(116, 1, 5, 4, 'DIAMONDS', 0, 0, 0, 0, 0, 0),
(117, 1, 3, 15, 'CLUBS', 0, 0, 0, 0, 0, 0),
(118, 1, 0, 0, 'CLUBS', 0, 0, 0, 0, 0, 0),
(119, 1, 0, 0, 'HEARTS', 0, 0, 0, 0, 0, 0),
(120, 1, 0, 4, 'DIAMONDS', 0, 0, 0, 0, 0, 0),
(121, 1, 40, 7, 'HEARTS', 0, 0, 0, 0, 0, 0),
(122, 1, 52, 8, 'CLUBS', 0, 0, 0, 0, 0, 0),
(123, 1, 81, 11, 'HEARTS', 0, 0, 0, 0, 0, 0),
(124, 1, 40, 10, 'CLUBS', 1, 0, 0, 0, 0, 0),
(125, 1, 54, 77, 'HEARTS', 1, 0, 0, 0, 0, 0),
(126, 1, 13, 10, 'SPADES', 1, 0, 0, 0, 0, 0),
(127, 1, 99, 41, 'HEARTS', 1, 0, 0, 0, 0, 0),
(128, 1, 11, 6, 'HEARTS', 0, 0, 0, 0, 0, 0),
(129, 1, 0, 8, 'DIAMONDS', 0, 0, 0, 0, 0, 0),
(130, 1, 34, 13, 'HEARTS', 0, 0, 0, 0, 0, 0),
(131, 1, 26, 126, 'DIAMONDS', 1, 0, 0, 0, 0, 0),
(132, 1, 61, 59, 'HEARTS', 1, 0, 0, 0, 0, 0),
(133, 1, 121, 0, 'DIAMONDS', 1, 0, 0, 0, 0, 0),
(134, 1, 0, 109, 'CLUBS', 0, 1, 0, 0, 0, 0),
(137, 1, 81, 39, 'DIAMONDS', 0, 0, 0, 0, 0, 0),
(138, 1, 0, 20, 'DIAMONDS', 1, 0, 0, 0, 0, 0),
(139, 1, 0, 14, 'DIAMONDS', 1, 0, 0, 0, 0, 0),
(140, 1, 0, 10, 'DIAMONDS', 1, 0, 0, 0, 0, 0),
(141, 1, 0, 10, 'CLUBS', 1, 0, 0, 0, 0, 0),
(142, 1, 0, 21, 'HEARTS', 1, 0, 0, 0, 0, 0),
(143, 1, 0, 0, 'CLUBS', 0, 0, 0, 0, 0, 0),
(144, 1, 46, 12, 'HEARTS', 0, 0, 0, 0, 0, 0),
(145, 1, 55, 65, 'CLUBS', 0, 0, 0, 0, 0, 0),
(146, 1, 30, 39, 'CLUBS', 0, 0, 0, 0, 0, 0),
(147, 1, 59, 61, 'DIAMONDS', 0, 0, 0, 0, 0, 0),
(149, 1, 44, 86, 'DIAMONDS', 1, 0, 0, 0, 0, 0),
(150, 1, 82, 48, 'CLUBS', 1, 0, 0, 0, 0, 0),
(129, 2, 0, 0, '', 0, 0, 0, 0, 0, 0),
(130, 2, 48, 25, '', 0, 0, 0, 0, 0, 0),
(131, 2, 0, 0, 'DIAMONDS', 0, 0, 0, 0, 0, 0),
(133, 2, 124, 66, 'CLUBS', 1, 0, 0, 0, 0, 0),
(134, 2, 104, 5, 'CLUBS', 0, 5, 0, 0, 0, 0),
(138, 2, 0, 20, 'DIAMONDS', 1, 0, 0, 0, 0, 0),
(139, 2, 0, 0, 'CLUBS', 0, 0, 0, 0, 0, 0),
(140, 2, 0, 14, 'CLUBS', 1, 0, 0, 0, 0, 0),
(141, 2, 0, 0, 'CLUBS', 0, 0, 0, 0, 0, 0),
(142, 2, 31, 0, 'CLUBS', 1, 0, 0, 0, 0, 0),
(143, 2, 32, 0, '', 1, 0, 0, 0, 0, 0),
(146, 2, 23, 28, '', 0, 0, 0, 0, 0, 0),
(149, 2, 10, 3, 'SPADES', 0, 0, 0, 0, 0, 0),
(150, 2, 0, 0, 'HEARTS', 0, 0, 0, 0, 0, 0),
(129, 3, 10, 0, '', 0, 0, 0, 0, 0, 0),
(133, 3, 38, 121, 'DIAMONDS', 1, 0, 0, 0, 0, 0),
(134, 3, 250, 70, 'CLUBS', 0, 1, 0, 0, 0, 0),
(138, 3, 21, 0, 'DIAMONDS', 1, 0, 0, 0, 0, 0),
(140, 3, 0, 12, 'CLUBS', 1, 0, 0, 0, 0, 0),
(142, 3, 32, 0, 'SPADES', 1, 0, 0, 0, 0, 0),
(143, 3, 4, 25, 'SPADES', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `id` int NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `contrasena` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `apellido` varchar(250) NOT NULL,
  `num_tel` int NOT NULL,
  `partidas_ganadas` int DEFAULT '0',
  `partidas_jugadas` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`id`, `usuario`, `contrasena`, `nombre`, `apellido`, `num_tel`, `partidas_ganadas`, `partidas_jugadas`) VALUES
(1, 'e', 'e', 'e', 'a', 0, 0, 0),
(5, 'ee', 'ee', 'Juan', 'Pérez', 123456789, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ColaBusqueda`
--
ALTER TABLE `ColaBusqueda`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `Id_emparejado` (`Id_emparejado`),
  ADD KEY `ID_partida` (`ID_partida`);

--
-- Indices de la tabla `Jugadas`
--
ALTER TABLE `Jugadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID_partida` (`ID_partida`);

--
-- Indices de la tabla `Partida`
--
ALTER TABLE `Partida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sets`
--
ALTER TABLE `sets`
  ADD PRIMARY KEY (`num_sets`,`partida_id`) USING BTREE,
  ADD KEY `partida_id` (`partida_id`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Jugadas`
--
ALTER TABLE `Jugadas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT de la tabla `Partida`
--
ALTER TABLE `Partida`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ColaBusqueda`
--
ALTER TABLE `ColaBusqueda`
  ADD CONSTRAINT `ColaBusqueda_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ColaBusqueda_ibfk_2` FOREIGN KEY (`Id_emparejado`) REFERENCES `Usuarios` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ColaBusqueda_ibfk_3` FOREIGN KEY (`ID_partida`) REFERENCES `Partida` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Jugadas`
--
ALTER TABLE `Jugadas`
  ADD CONSTRAINT `Jugadas_ibfk_1` FOREIGN KEY (`ID_partida`) REFERENCES `Partida` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `sets`
--
ALTER TABLE `sets`
  ADD CONSTRAINT `sets_ibfk_1` FOREIGN KEY (`partida_id`) REFERENCES `Partida` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
