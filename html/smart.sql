-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Mar-2023 às 10:19
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `smart`
--

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
  `Datalog` timestamp NOT NULL DEFAULT current_timestamp(),
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
(29, '2023-01-06 10:13:00', 'login'),
(29, '2023-01-06 10:13:04', 'logout'),
(30, '2023-01-06 09:04:08', 'logout'),
(30, '2023-01-06 09:08:19', 'logout'),
(30, '2023-01-06 09:08:29', 'logout'),
(30, '2023-01-06 10:12:50', 'logout'),
(31, '2023-01-06 10:13:41', 'logout'),
(31, '2023-01-06 11:58:54', 'logout'),
(31, '2023-01-06 11:59:36', 'logout'),
(31, '2023-01-06 12:00:07', 'login'),
(31, '2023-01-06 12:00:09', 'logout');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto`
--

CREATE TABLE `projeto` (
  `IdProjeto` int(11) NOT NULL,
  `Titulo` varchar(30) NOT NULL,
  `linkvideo` varchar(1000) DEFAULT NULL,
  `linkPdf` varchar(1000) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `IdUser` int(11) NOT NULL,
  `IdEstadoP` int(11) NOT NULL,
  `IdRating` int(11) NOT NULL,
  `IdDificuldade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `projeto`
--

INSERT INTO `projeto` (`IdProjeto`, `Titulo`, `linkvideo`, `linkPdf`, `data`, `IdUser`, `IdEstadoP`, `IdRating`, `IdDificuldade`) VALUES
(1, 'teste', NULL, 'exem', '2023-01-22 12:31:23', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto/dispositivos`
--

CREATE TABLE `projeto/dispositivos` (
  `IdProjeto` int(11) NOT NULL,
  `IdDispositivo` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `projeto/dispositivos`
--

INSERT INTO `projeto/dispositivos` (`IdProjeto`, `IdDispositivo`, `quantidade`) VALUES
(1, 1, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto/fotos`
--

CREATE TABLE `projeto/fotos` (
  `IdProjeto` int(11) NOT NULL,
  `IdFotos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `projeto/fotos`
--

INSERT INTO `projeto/fotos` (`IdProjeto`, `IdFotos`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rating`
--

CREATE TABLE `rating` (
  `IDrating` int(11) NOT NULL,
  `rat1` int(11) NOT NULL DEFAULT 0,
  `rat2` int(11) NOT NULL DEFAULT 0,
  `rat3` int(11) NOT NULL DEFAULT 0,
  `rat4` int(11) NOT NULL DEFAULT 0,
  `rat5` int(11) NOT NULL DEFAULT 0
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
  `dataRegisto` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IDtipo` int(11) DEFAULT NULL,
  `IDestado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`IDuser`, `login`, `pass`, `nome`, `dataRegisto`, `IDtipo`, `IDestado`) VALUES
(1, 'Vasco', '81dc9bdb52d04dc20036dbd8313ed055', 'Vasco', '2023-01-09 12:59:52', 1, 3),
(29, 'joao', '81dc9bdb52d04dc20036dbd8313ed055', 'joao1', '2023-01-06 13:21:56', 3, 2),
(30, 'roberto', '81dc9bdb52d04dc20036dbd8313ed055', 'roberto', '2023-01-09 13:02:26', 3, 2),
(31, 'magolo', '81dc9bdb52d04dc20036dbd8313ed055', 'magolo', '2023-01-06 11:59:51', 3, 3),
(33, 'exemplo', '4a7d1ed414474e4033ac29ccb8653d9b', 'exemplo', '2023-01-23 11:14:55', 3, 2),
(34, 'ex', '54d54a126a783bc9cba8c06137136943', 'ex', '2023-01-16 20:57:29', 3, 2);

--
-- Índices para tabelas despejadas
--

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
-- AUTO_INCREMENT de tabela `dificuldade`
--
ALTER TABLE `dificuldade`
  MODIFY `IdDificuldade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `IDestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `IdFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `projeto`
--
ALTER TABLE `projeto`
  MODIFY `IdProjeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `rating`
--
ALTER TABLE `rating`
  MODIFY `IDrating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `IDtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `IDuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restrições para despejos de tabelas
--

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
