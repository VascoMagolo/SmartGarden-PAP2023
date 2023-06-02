-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 29-Maio-2023 às 11:27
-- Versão do servidor: 5.7.36-cll-lve
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `j65crs1a_datattn`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `data`
--

CREATE TABLE `data` (
  `ID` int(11) NOT NULL,
  `Device_ID` varchar(30) NOT NULL,
  `App_ID` varchar(30) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Temperature` int(11) NOT NULL,
  `Humidity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `data`
--

INSERT INTO `data` (`ID`, `Device_ID`, `App_ID`, `Date`, `Temperature`, `Humidity`) VALUES
(1, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:33:15', 20, 71),
(2, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:33:42', 20, 71),
(3, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:34:10', 20, 71),
(4, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:34:37', 20, 71),
(5, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:35:04', 20, 71),
(6, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:35:31', 20, 71),
(7, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:36:00', 20, 71),
(8, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:36:27', 20, 71),
(9, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:36:54', 20, 71),
(10, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:37:22', 20, 71),
(11, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:37:50', 20, 71),
(12, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:38:17', 20, 71),
(13, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:38:44', 20, 71),
(14, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:39:13', 20, 71),
(15, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:39:41', 20, 71),
(16, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:40:08', 20, 72),
(17, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:40:35', 20, 72),
(18, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:41:04', 20, 72),
(19, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:41:31', 20, 72),
(20, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:41:58', 20, 72),
(21, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:42:25', 20, 72),
(22, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:42:52', 20, 72),
(23, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:43:20', 20, 72),
(24, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:43:47', 20, 72),
(25, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:44:36', 20, 72),
(26, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:45:04', 20, 72),
(27, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:45:32', 20, 72),
(28, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-08 16:45:59', 20, 72),
(29, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:08:56', 20, 78),
(30, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:09:24', 20, 78),
(31, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:09:52', 20, 78),
(32, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:10:20', 20, 78),
(33, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:10:47', 20, 78),
(34, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:11:14', 20, 78),
(35, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:11:42', 20, 78),
(36, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:12:09', 20, 78),
(37, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:12:36', 20, 78),
(38, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:13:04', 20, 78),
(39, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:13:32', 20, 78),
(40, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:13:59', 20, 78),
(41, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:14:26', 20, 78),
(42, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:14:54', 20, 78),
(43, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:15:25', 20, 78),
(44, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:15:49', 20, 78),
(45, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:16:17', 20, 78),
(46, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:16:45', 20, 78),
(47, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:17:13', 20, 78),
(48, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:17:40', 20, 78),
(49, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:18:07', 20, 78),
(50, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:18:35', 20, 78),
(51, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:19:03', 20, 78),
(52, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:19:30', 20, 78),
(53, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:19:57', 20, 78),
(54, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:20:24', 20, 78),
(55, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:20:52', 20, 78),
(56, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:21:19', 20, 78),
(57, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:21:46', 20, 78),
(58, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:22:15', 20, 78),
(59, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:22:43', 20, 78),
(60, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:23:10', 20, 78),
(61, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:23:37', 20, 77),
(62, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:24:05', 20, 77),
(63, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:24:33', 20, 77),
(64, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:25:00', 20, 77),
(65, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:25:27', 20, 77),
(66, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:25:55', 20, 77),
(67, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:26:23', 20, 77),
(68, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:26:50', 20, 77),
(69, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:27:17', 20, 77),
(70, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:27:46', 20, 77),
(71, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:28:14', 20, 77),
(72, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:28:41', 20, 77),
(73, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:29:08', 20, 77),
(74, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:29:35', 20, 77),
(75, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:30:03', 20, 77),
(76, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:30:30', 20, 77),
(77, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:30:57', 20, 77),
(78, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:31:24', 20, 77),
(79, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:31:53', 20, 77),
(80, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:32:19', 20, 77),
(81, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:32:47', 20, 77),
(82, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:33:13', 20, 77),
(83, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:33:42', 20, 77),
(84, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:34:09', 20, 77),
(85, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:34:36', 20, 77),
(86, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:35:04', 20, 77),
(87, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:35:35', 20, 77),
(88, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:36:02', 20, 77),
(89, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:36:29', 20, 77),
(90, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:36:56', 20, 77),
(91, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:37:24', 20, 77),
(92, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:37:51', 20, 77),
(93, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:38:18', 20, 77),
(94, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:38:45', 20, 77),
(95, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:39:13', 20, 77),
(96, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:39:40', 20, 77),
(97, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:40:07', 20, 77),
(98, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:40:36', 20, 77),
(99, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:41:04', 20, 77),
(100, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:41:31', 20, 77),
(101, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:41:58', 20, 77),
(102, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:42:26', 20, 77),
(103, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:42:54', 20, 77),
(104, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:43:21', 20, 77),
(105, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:43:48', 20, 77),
(106, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:44:15', 20, 77),
(107, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:44:43', 20, 77),
(108, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:45:10', 20, 77),
(109, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:45:37', 20, 77),
(110, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:46:05', 20, 77),
(111, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:46:34', 20, 77),
(112, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:47:01', 20, 77),
(113, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:47:28', 20, 77),
(114, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:47:56', 20, 77),
(115, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:48:24', 20, 77),
(116, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:48:51', 20, 77),
(117, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:49:18', 20, 77),
(118, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:49:46', 20, 77),
(119, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:50:14', 20, 77),
(120, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:50:41', 20, 77),
(121, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:51:08', 20, 77),
(122, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:51:35', 20, 77),
(123, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:52:03', 20, 77),
(124, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:52:31', 20, 77),
(125, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:52:58', 20, 77),
(126, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:53:25', 20, 77),
(127, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:53:53', 20, 77),
(128, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:54:20', 20, 77),
(129, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:54:47', 20, 77),
(130, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:55:15', 20, 77),
(131, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:55:43', 20, 77),
(132, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:56:11', 20, 77),
(133, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:56:37', 20, 77),
(134, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:57:05', 20, 77),
(135, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:57:34', 20, 77),
(136, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:58:02', 20, 77),
(137, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:58:28', 20, 77),
(138, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:58:56', 20, 77),
(139, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:59:24', 20, 77),
(140, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 16:59:51', 20, 77),
(141, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:00:18', 20, 77),
(142, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:00:46', 20, 77),
(143, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:01:15', 20, 77),
(144, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:01:41', 20, 77),
(145, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:02:08', 20, 77),
(146, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:02:36', 20, 77),
(147, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:03:04', 20, 77),
(148, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:03:32', 20, 77),
(149, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:03:59', 20, 77),
(150, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:04:26', 20, 77),
(151, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:04:54', 20, 77),
(152, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:05:21', 20, 77),
(153, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:05:48', 20, 77),
(154, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:06:15', 20, 77),
(155, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:06:43', 20, 77),
(156, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:07:10', 20, 77),
(157, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:07:37', 20, 77),
(158, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:08:05', 20, 77),
(159, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:08:33', 20, 77),
(160, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:09:00', 20, 77),
(161, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:09:28', 20, 77),
(162, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:09:55', 20, 77),
(163, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:10:25', 20, 77),
(164, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:10:50', 20, 77),
(165, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:11:17', 20, 77),
(166, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:11:45', 20, 77),
(167, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:12:13', 20, 77),
(168, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:12:40', 20, 77),
(169, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:13:21', 20, 77),
(170, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:13:48', 20, 77),
(171, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:14:16', 20, 77),
(172, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:14:43', 20, 77),
(173, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:15:10', 20, 77),
(174, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:15:38', 20, 77),
(175, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:16:06', 20, 77),
(176, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:16:33', 20, 77),
(177, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:17:01', 20, 77),
(178, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:17:28', 20, 77),
(179, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:17:56', 20, 77),
(180, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:18:23', 20, 77),
(181, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:18:51', 20, 77),
(182, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:19:17', 20, 77),
(183, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:19:45', 20, 77),
(184, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:20:12', 20, 77),
(185, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:20:39', 20, 77),
(186, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:21:06', 20, 77),
(187, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:21:34', 20, 77),
(188, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:22:01', 20, 77),
(189, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:22:28', 20, 77),
(190, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:22:56', 20, 77),
(191, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:23:25', 20, 77),
(192, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:23:52', 20, 77),
(193, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:24:19', 20, 77),
(194, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:24:46', 20, 77),
(195, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:25:14', 20, 77),
(196, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:25:41', 20, 77),
(197, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:26:08', 20, 77),
(198, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:26:36', 20, 77),
(199, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:27:04', 20, 77),
(200, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:27:32', 20, 77),
(201, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:27:59', 20, 77),
(202, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:28:25', 20, 77),
(203, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:28:54', 20, 77),
(204, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:29:21', 20, 77),
(205, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:29:48', 20, 77),
(206, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:30:38', 20, 77),
(207, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:31:06', 20, 77),
(208, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:31:34', 20, 77),
(209, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:32:01', 20, 77),
(210, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:32:28', 20, 77),
(211, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:32:56', 20, 77),
(212, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:33:23', 20, 77),
(213, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:33:50', 20, 77),
(214, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:34:18', 20, 77),
(215, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:34:46', 20, 77),
(216, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:35:13', 20, 77),
(217, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:35:40', 20, 77),
(218, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:36:07', 20, 77),
(219, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:36:35', 20, 77),
(220, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:37:02', 20, 77),
(221, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:37:29', 20, 77),
(222, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-09 17:37:57', 20, 77),
(223, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-29 09:26:29', 21, 76),
(224, 'eui-ac1f09fffe08e925', 'test-hum-temp', '2023-05-29 09:26:56', 21, 76);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `data`
--
ALTER TABLE `data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
