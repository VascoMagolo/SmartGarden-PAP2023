-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 09-Jun-2023 às 16:52
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
-- Banco de dados: `j65crs1a_smart`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dashboard`
--

CREATE TABLE `dashboard` (
  `IDdash` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `dashboard` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dashboard`
--

INSERT INTO `dashboard` (`IDdash`, `iduser`, `dashboard`) VALUES
(1, 1, 'https://app.datacake.de/pd/055a91a7-3adf-4e20-a84c-c19fb2afce3a');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dificuldade`
--

CREATE TABLE `dificuldade` (
  `IdDificuldade` int(11) NOT NULL,
  `dificuldade` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dificuldade`
--

INSERT INTO `dificuldade` (`IdDificuldade`, `dificuldade`) VALUES
(1, 'fáçil'),
(2, 'intermédio'),
(3, 'difícil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dispositivo`
--

CREATE TABLE `dispositivo` (
  `IDdevice` int(11) NOT NULL,
  `Device` varchar(50) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `Descricao` varchar(1000) NOT NULL,
  `IDtipo` int(11) NOT NULL,
  `IDtipoSensor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dispositivo`
--

INSERT INTO `dispositivo` (`IDdevice`, `Device`, `foto`, `Descricao`, `IDtipo`, `IDtipoSensor`) VALUES
(1, 'sensor humidade ex.', 'exemplo 1', 'ex.', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estadop`
--

CREATE TABLE `estadop` (
  `IdestadopP` int(11) NOT NULL,
  `estado` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estadop`
--

INSERT INTO `estadop` (`IdestadopP`, `estado`) VALUES
(1, 'aprovado'),
(2, 'desaprovado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `IDestado` int(11) NOT NULL,
  `Estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`IDestado`, `Estado`) VALUES
(1, 'Não registado'),
(2, 'banido'),
(3, 'registado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `IdFoto` int(11) NOT NULL,
  `Foto` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`IdFoto`, `Foto`) VALUES
(1, 'foto1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `IDuser` int(11) NOT NULL,
  `Datalog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`IDuser`, `Datalog`, `tipo`) VALUES
(1, '2021-01-06 10:12:40', 'logout'),
(1, '2021-01-06 10:14:09', 'login'),
(1, '2021-01-06 10:17:32', 'logout'),
(1, '2021-01-06 11:47:26', 'login'),
(1, '2021-01-06 11:49:42', 'logout'),
(1, '2022-01-06 08:51:30', 'login'),
(1, '2022-01-06 08:55:53', 'login'),
(1, '2022-01-06 08:55:55', 'logout'),
(1, '2022-01-06 10:11:39', 'login'),
(1, '2023-01-06 11:59:42', 'login'),
(1, '2023-01-06 12:00:03', 'logout'),
(1, '2023-01-06 12:00:13', 'login'),
(1, '2023-01-06 13:22:01', 'logout'),
(1, '2023-01-06 16:20:20', 'login'),
(1, '2023-01-06 21:35:22', 'login'),
(1, '2023-01-06 21:46:14', 'logout'),
(1, '2023-01-06 21:46:59', 'login'),
(1, '2023-01-07 15:09:39', 'login'),
(1, '2023-01-07 16:08:52', 'login'),
(1, '2023-01-07 16:13:00', 'login'),
(1, '2023-01-09 10:52:41', 'login'),
(1, '2023-01-09 12:41:44', 'login'),
(1, '2023-01-09 12:59:04', 'login'),
(1, '2023-01-09 13:01:16', 'login'),
(1, '2023-01-09 13:01:56', 'login'),
(1, '2023-01-09 14:39:10', 'login'),
(1, '2023-01-09 16:42:03', 'login'),
(1, '2023-01-09 17:24:05', 'login'),
(1, '2023-01-10 16:04:45', 'login'),
(1, '2023-01-12 12:29:23', 'login'),
(1, '2023-01-13 11:45:39', 'login'),
(1, '2023-01-14 14:28:30', 'login'),
(1, '2023-01-16 11:24:42', 'login'),
(1, '2023-01-16 11:46:06', 'login'),
(1, '2023-01-16 12:24:03', 'login'),
(1, '2023-01-16 13:40:36', 'login'),
(1, '2023-01-16 20:56:25', 'login'),
(1, '2023-01-17 08:45:21', 'login'),
(1, '2023-01-18 12:05:50', 'login'),
(1, '2023-01-18 19:18:29', 'login'),
(1, '2023-01-18 19:35:22', 'login'),
(1, '2023-01-19 09:28:25', 'login'),
(1, '2023-01-19 10:12:13', 'login'),
(1, '2023-01-19 12:23:52', 'login'),
(1, '2023-01-22 12:33:29', 'login'),
(1, '2023-01-23 08:48:46', 'login'),
(1, '2023-01-23 11:11:48', 'login'),
(1, '2023-01-23 11:54:32', 'login'),
(1, '2023-04-06 14:25:48', 'login'),
(1, '2023-04-06 14:30:09', 'login'),
(1, '2023-04-06 15:18:38', 'login'),
(1, '2023-04-07 14:16:52', 'login'),
(1, '2023-04-11 13:59:18', 'login'),
(1, '2023-04-11 14:00:56', 'login'),
(1, '2023-04-13 17:57:29', 'login'),
(1, '2023-04-13 22:45:20', 'login'),
(1, '2023-04-14 07:58:29', 'login'),
(1, '2023-04-23 19:36:01', 'login'),
(1, '2023-04-24 12:36:23', 'login'),
(1, '2023-04-25 18:26:08', 'login'),
(1, '2023-04-25 18:27:10', 'login'),
(1, '2023-04-25 18:27:59', 'login'),
(1, '2023-04-25 21:40:43', 'login'),
(1, '2023-04-28 08:05:02', 'login'),
(1, '2023-05-02 21:08:17', 'login'),
(1, '2023-05-03 07:41:17', 'login'),
(1, '2023-05-03 07:47:32', 'login'),
(1, '2023-05-03 07:49:18', 'login'),
(1, '2023-05-05 08:30:40', 'login'),
(1, '2023-05-05 09:30:39', 'login'),
(1, '2023-05-05 13:29:57', 'login'),
(1, '2023-05-05 15:39:10', 'login'),
(1, '2023-05-05 16:31:34', 'login'),
(1, '2023-05-05 16:58:42', 'login'),
(1, '2023-05-05 18:55:33', 'login'),
(1, '2023-05-06 12:46:59', 'login'),
(1, '2023-05-08 13:34:59', 'login'),
(1, '2023-05-08 16:19:02', 'login'),
(1, '2023-05-08 16:22:51', 'logout'),
(1, '2023-05-08 16:25:22', 'logout'),
(1, '2023-05-08 16:25:25', 'logout'),
(1, '2023-05-08 16:25:26', 'logout'),
(1, '2023-05-08 16:26:40', 'logout'),
(1, '2023-05-08 16:27:06', 'logout'),
(1, '2023-05-08 16:27:13', 'login'),
(1, '2023-05-08 16:30:10', 'logout'),
(1, '2023-05-08 16:30:17', 'login'),
(1, '2023-05-08 16:36:22', 'logout'),
(1, '2023-05-08 16:37:27', 'login'),
(1, '2023-05-08 16:57:00', 'logout'),
(1, '2023-05-08 16:57:08', 'login'),
(1, '2023-05-08 16:57:17', 'logout'),
(1, '2023-05-08 16:57:41', 'login'),
(1, '2023-05-09 11:09:35', 'login'),
(1, '2023-05-09 14:34:07', 'login'),
(1, '2023-05-09 17:25:17', 'login'),
(1, '2023-05-10 13:26:16', 'login'),
(1, '2023-05-10 15:28:53', 'login'),
(1, '2023-05-10 15:45:41', 'login'),
(1, '2023-05-10 15:47:58', 'login'),
(1, '2023-05-10 16:20:48', 'logout'),
(1, '2023-05-10 16:24:01', 'login'),
(1, '2023-05-10 19:27:16', 'login'),
(1, '2023-05-11 11:19:32', 'login'),
(1, '2023-05-11 12:46:17', 'login'),
(1, '2023-05-11 17:22:17', 'login'),
(1, '2023-05-11 19:21:50', 'login'),
(1, '2023-05-11 19:24:10', 'logout'),
(1, '2023-05-12 14:25:40', 'login'),
(1, '2023-05-12 14:25:54', 'logout'),
(1, '2023-05-12 14:28:03', 'login'),
(1, '2023-05-12 14:28:05', 'logout'),
(1, '2023-05-15 11:11:11', 'login'),
(29, '2023-01-06 10:13:00', 'login'),
(29, '2023-01-06 10:13:04', 'logout'),
(31, '2023-01-06 10:13:41', 'logout'),
(31, '2023-01-06 11:58:54', 'logout'),
(31, '2023-01-06 11:59:36', 'logout'),
(31, '2023-01-06 12:00:07', 'login'),
(31, '2023-01-06 12:00:09', 'logout'),
(35, '2023-05-03 07:46:39', 'login'),
(35, '2023-05-22 11:41:07', 'login'),
(35, '2023-05-22 11:53:47', 'login'),
(37, '2023-05-12 14:26:00', 'login'),
(37, '2023-05-12 14:26:08', 'logout'),
(43, '2023-05-16 08:05:01', 'login'),
(43, '2023-05-16 11:28:30', 'login'),
(43, '2023-05-16 12:41:03', 'login'),
(43, '2023-05-16 13:37:33', 'login'),
(43, '2023-05-16 16:36:10', 'login'),
(43, '2023-05-16 16:40:37', 'login'),
(43, '2023-05-16 16:42:39', 'login'),
(43, '2023-05-16 16:49:13', 'logout'),
(43, '2023-05-16 17:05:47', 'login'),
(43, '2023-05-16 18:58:56', 'login'),
(43, '2023-05-17 13:14:35', 'login'),
(43, '2023-05-18 08:38:54', 'login'),
(43, '2023-05-18 18:10:54', 'login'),
(43, '2023-05-18 18:13:48', 'logout'),
(43, '2023-05-18 18:14:05', 'login'),
(43, '2023-05-18 18:14:56', 'logout'),
(43, '2023-05-18 19:29:28', 'login'),
(43, '2023-05-19 07:57:00', 'login'),
(43, '2023-05-19 07:59:24', 'logout'),
(43, '2023-05-19 08:27:17', 'login'),
(43, '2023-05-19 08:27:21', 'logout'),
(43, '2023-05-19 08:28:41', 'login'),
(43, '2023-05-19 08:28:45', 'logout'),
(43, '2023-05-19 08:31:02', 'login'),
(43, '2023-05-19 08:31:07', 'logout'),
(43, '2023-05-19 08:31:34', 'login'),
(43, '2023-05-19 08:31:48', 'logout'),
(43, '2023-05-19 14:08:40', 'login'),
(43, '2023-05-19 14:14:49', 'logout'),
(43, '2023-05-19 14:15:10', 'login'),
(43, '2023-05-24 15:40:05', 'login'),
(43, '2023-05-29 08:58:58', 'login'),
(43, '2023-05-29 09:00:04', 'logout'),
(43, '2023-05-29 09:14:05', 'login'),
(43, '2023-06-01 09:17:13', 'login'),
(43, '2023-06-01 09:19:10', 'logout'),
(43, '2023-06-01 09:19:42', 'login'),
(43, '2023-06-01 09:22:08', 'logout'),
(43, '2023-06-01 09:22:18', 'login'),
(43, '2023-06-01 09:35:17', 'logout'),
(43, '2023-06-03 00:36:33', 'login'),
(43, '2023-06-03 01:15:21', 'logout');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto`
--

CREATE TABLE `projeto` (
  `IdProjeto` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Descricao` varchar(3000) NOT NULL,
  `linkvideo` varchar(1000) DEFAULT NULL,
  `linkPdf` varchar(1000) NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IdUser` int(11) NOT NULL,
  `IdEstadoP` int(11) NOT NULL,
  `IdRating` int(11) NOT NULL,
  `IdDificuldade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `projeto`
--

INSERT INTO `projeto` (`IdProjeto`, `Titulo`, `Descricao`, `linkvideo`, `linkPdf`, `data`, `IdUser`, `IdEstadoP`, `IdRating`, `IdDificuldade`) VALUES
(1, 'WisGate Edge Lite 2%Configuration', 'In this tutorial,I\'m going to explain step by step w/ images ,how to configure this gateway to be able to connect to the internet of things ', NULL, './text_tutorial/#.pdf', '2023-06-07 12:39:23', 1, 1, 1, 1),
(2, 'WisGate Edge Lite 2%Connection to TTS', 'In this tutorial,I\'m going to explain step by step w/ images ,how to connect this gateway to TTN as well as a end device ', NULL, './text_tutorial/ttnTest.pdf', '2023-06-07 12:09:45', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto/dispositivos`
--

CREATE TABLE `projeto/dispositivos` (
  `IdProjeto` int(11) NOT NULL,
  `IdDispositivo` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto/fotos`
--

CREATE TABLE `projeto/fotos` (
  `IdProjeto` int(11) NOT NULL,
  `IdFotos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rating`
--

CREATE TABLE `rating` (
  `IDrating` int(11) NOT NULL,
  `rat1` int(11) NOT NULL DEFAULT '0',
  `rat2` int(11) NOT NULL DEFAULT '0',
  `rat3` int(11) NOT NULL DEFAULT '0',
  `rat4` int(11) NOT NULL DEFAULT '0',
  `rat5` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `rating`
--

INSERT INTO `rating` (`IDrating`, `rat1`, `rat2`, `rat3`, `rat4`, `rat5`) VALUES
(1, 1, 2, 3, 4, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipodevice`
--

CREATE TABLE `tipodevice` (
  `IDtipo` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `Descricao` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipodevice`
--

INSERT INTO `tipodevice` (`IDtipo`, `tipo`, `Descricao`) VALUES
(1, 'atuador', 'Atuador é um dispositivo que produz movimento, convertendo energia pneumática, hidráulica ou elétrica, em energia mecânica.'),
(2, 'sensor', 'Um sensor é um dispositivo que responde a um estímulo físico ou químico de maneira específica, produzindo um sinal que pode ser transformado em outra grandeza física para fins de medição e/ou monitoramento.'),
(3, 'cabos', 'Um cabo é algo por onde passa ambos energia como informação'),
(4, 'Bateria', 'Uma bateria é um aparelho ou dispositivo que transforma em corrente elétrica a energia desenvolvida numa reação química.Cada célula de uma bateria contém um terminal positivo (cátodo) e um terminal negativo (ânodo).O processo químico de troca de elétrons é conhecido como oxirredução.'),
(5, 'Microcontrolador', 'Microcontrolador é um pequeno computador (SoC) num único circuito integrado o qual contém um núcleo de processador, memória e periféricos programáveis de entrada e saída. A memória de programação pode ser RAM, NOR flash ou PROM a qual, muitas vezes, é incluída no chip. Os microcontroladores são concebidos para aplicações embarcadas, em contraste com os microprocessadores utilizados em computadores pessoais ou outras aplicações de uso geral.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiposensor`
--

CREATE TABLE `tiposensor` (
  `IDtipo` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descricao` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tiposensor`
--

INSERT INTO `tiposensor` (`IDtipo`, `tipo`, `descricao`) VALUES
(1, 'húmidade do solo', 'Este sensor é capaz de medir a humidade do solo'),
(2, 'temperatura do solo', 'Este sensor é capaz de medir a temperatura do solo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipouser`
--

CREATE TABLE `tipouser` (
  `IDtipo` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipouser`
--

INSERT INTO `tipouser` (`IDtipo`, `tipo`) VALUES
(0, 'none'),
(1, 'ADMIN'),
(3, 'utilizador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `IDuser` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `dataRegisto` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IDtipo` int(11) DEFAULT NULL,
  `IDestado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`IDuser`, `login`, `pass`, `nome`, `dataRegisto`, `IDtipo`, `IDestado`) VALUES
(1, 'vascomagolo@gmail.com', 'caded36ad442f530cb2e6e95156de28e', 'Vasco Magolo', '2023-05-19 14:14:28', 1, 3),
(29, 'joao', '81dc9bdb52d04dc20036dbd8313ed055', 'joao', '2023-05-05 16:22:34', 3, 3),
(31, 'magolo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'magolo', '2023-05-19 14:09:52', 3, 3),
(34, 'ex', '54d54a126a783bc9cba8c06137136943', 'ex2', '2023-05-05 15:41:24', 3, 1),
(35, 'smart@teste.pt', '13056ba71fdd87e972b4696fdc86249e', 'smart', '2023-05-03 07:49:01', 1, 3),
(36, 'roberto', '202cb962ac59075b964b07152d234b70', '123', '2023-05-08 16:55:52', 3, 3),
(37, 'a', '202cb962ac59075b964b07152d234b70', 'a', '2023-05-12 14:25:51', 3, 3),
(38, 'asas', 'deaedcf7f93220ea820b271df39eb516', 'asas', '2023-05-15 09:28:44', 0, 1),
(39, '123', '202cb962ac59075b964b07152d234b70', '123', '2023-05-15 09:29:45', 0, 1),
(40, 'Test', '4daaed10d00f88929b0516a1028b8cb3', 'Test', '2023-05-15 13:38:07', 0, 1),
(41, 'Admin', '4daaed10d00f88929b0516a1028b8cb3', 'Admin', '2023-05-15 13:41:26', 0, 1),
(42, 'sim', 'e9064b74d28acc053231170bb8c858b3', 'sim', '2023-05-15 16:24:32', 0, 1),
(43, 'vascomagolo@gmail.com', 'ff69b81c8892075482a00eaf90226976', 'Vasco', '2023-05-16 08:04:33', 1, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`IDdash`),
  ADD KEY `iduser` (`iduser`);

--
-- Índices para tabela `dificuldade`
--
ALTER TABLE `dificuldade`
  ADD PRIMARY KEY (`IdDificuldade`);

--
-- Índices para tabela `dispositivo`
--
ALTER TABLE `dispositivo`
  ADD PRIMARY KEY (`IDdevice`),
  ADD KEY `IDtipo` (`IDtipo`),
  ADD KEY `IDtipoSensor` (`IDtipoSensor`);

--
-- Índices para tabela `estadop`
--
ALTER TABLE `estadop`
  ADD PRIMARY KEY (`IdestadopP`),
  ADD KEY `IdestadopP` (`IdestadopP`);

--
-- Índices para tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`IDestado`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`IdFoto`),
  ADD KEY `IdFoto` (`IdFoto`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`IDuser`,`Datalog`);

--
-- Índices para tabela `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`IdProjeto`),
  ADD KEY `IdUser` (`IdUser`),
  ADD KEY `IdEstadoP` (`IdEstadoP`),
  ADD KEY `IdRating` (`IdRating`),
  ADD KEY `IdDificuldade` (`IdDificuldade`);

--
-- Índices para tabela `projeto/dispositivos`
--
ALTER TABLE `projeto/dispositivos`
  ADD PRIMARY KEY (`IdProjeto`,`IdDispositivo`),
  ADD KEY `IdDispositivo` (`IdDispositivo`);

--
-- Índices para tabela `projeto/fotos`
--
ALTER TABLE `projeto/fotos`
  ADD PRIMARY KEY (`IdProjeto`,`IdFotos`),
  ADD KEY `IdProjeto` (`IdProjeto`),
  ADD KEY `IdFotos` (`IdFotos`);

--
-- Índices para tabela `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`IDrating`);

--
-- Índices para tabela `tipodevice`
--
ALTER TABLE `tipodevice`
  ADD PRIMARY KEY (`IDtipo`);

--
-- Índices para tabela `tiposensor`
--
ALTER TABLE `tiposensor`
  ADD PRIMARY KEY (`IDtipo`);

--
-- Índices para tabela `tipouser`
--
ALTER TABLE `tipouser`
  ADD PRIMARY KEY (`IDtipo`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`IDuser`),
  ADD KEY `IDtipo` (`IDtipo`),
  ADD KEY `estados` (`IDestado`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `IDdash` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `dificuldade`
--
ALTER TABLE `dificuldade`
  MODIFY `IdDificuldade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `dispositivo`
--
ALTER TABLE `dispositivo`
  MODIFY `IDdevice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `estadop`
--
ALTER TABLE `estadop`
  MODIFY `IdestadopP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
  MODIFY `IDestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `IdFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `projeto`
--
ALTER TABLE `projeto`
  MODIFY `IdProjeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `rating`
--
ALTER TABLE `rating`
  MODIFY `IDrating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tipodevice`
--
ALTER TABLE `tipodevice`
  MODIFY `IDtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tiposensor`
--
ALTER TABLE `tiposensor`
  MODIFY `IDtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipouser`
--
ALTER TABLE `tipouser`
  MODIFY `IDtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `IDuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `dashboard`
--
ALTER TABLE `dashboard`
  ADD CONSTRAINT `dashboard_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`IDuser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `dispositivo`
--
ALTER TABLE `dispositivo`
  ADD CONSTRAINT `dispositivo_ibfk_1` FOREIGN KEY (`IDtipo`) REFERENCES `tipodevice` (`IDtipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dispositivo_ibfk_2` FOREIGN KEY (`IDtipoSensor`) REFERENCES `tiposensor` (`IDtipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`IDuser`) REFERENCES `users` (`IDuser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `projeto`
--
ALTER TABLE `projeto`
  ADD CONSTRAINT `projeto_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`IDuser`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projeto_ibfk_2` FOREIGN KEY (`IdDificuldade`) REFERENCES `dificuldade` (`IdDificuldade`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projeto_ibfk_3` FOREIGN KEY (`IdEstadoP`) REFERENCES `estadop` (`IdestadopP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projeto_ibfk_4` FOREIGN KEY (`IdRating`) REFERENCES `rating` (`IDrating`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `projeto/dispositivos`
--
ALTER TABLE `projeto/dispositivos`
  ADD CONSTRAINT `projeto/dispositivos_ibfk_1` FOREIGN KEY (`IdProjeto`) REFERENCES `projeto` (`IdProjeto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projeto/dispositivos_ibfk_2` FOREIGN KEY (`IdDispositivo`) REFERENCES `dispositivo` (`IDdevice`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `projeto/fotos`
--
ALTER TABLE `projeto/fotos`
  ADD CONSTRAINT `projeto/fotos_ibfk_1` FOREIGN KEY (`IdProjeto`) REFERENCES `projeto` (`IdProjeto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projeto/fotos_ibfk_2` FOREIGN KEY (`IdFotos`) REFERENCES `fotos` (`IdFoto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`IDtipo`) REFERENCES `tipouser` (`IDtipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`IDestado`) REFERENCES `estados` (`IDestado`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
