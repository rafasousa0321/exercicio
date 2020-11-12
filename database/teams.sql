-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Nov-2020 às 10:19
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teams`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipas`
--

CREATE TABLE `equipas` (
  `id_equipa` int(11) NOT NULL,
  `designacao` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designacao_curta` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `equipas`
--

INSERT INTO `equipas` (`id_equipa`, `designacao`, `designacao_curta`, `localidade`) VALUES
(1, 'Futebol Clube do Porto', 'FCP', 'Porto'),
(2, 'Futbol Club Barcelona', 'FCB', 'Barcelona'),
(3, 'Manchester United Football Club', 'MUN', 'Manchester');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogadores`
--

CREATE TABLE `jogadores` (
  `id_jogador` int(11) NOT NULL,
  `Nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nacionalidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `id_equipa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `jogadores`
--

INSERT INTO `jogadores` (`id_jogador`, `Nome`, `Nacionalidade`, `data_nascimento`, `id_equipa`) VALUES
(1, 'Adelino Gomes', 'Portuguesa', '1986-11-15', 1),
(2, 'Artur Silva', 'Portuguesa', '1996-04-21', 1),
(3, 'Manuel Antunes', 'Portuguesa', '2000-01-14', 1),
(4, 'João Castro', 'Portuguesa', '1993-09-07', 1),
(5, 'Ruben Ribeiro', 'Portuguesa', '1995-03-18', 1),
(6, 'Rui Pereira', 'Portuguesa', '1999-12-16', 2),
(7, 'Ricardo Esteves', 'Portuguesa', '1989-07-13', 2),
(8, 'José Ribeiro', 'Portuguesa', '2020-09-13', 2),
(9, 'Mário Rodrigues', 'Portuguesa', '1991-01-08', 2),
(10, 'Tomás Silva', 'Portuguesa', '1992-11-09', 2),
(11, 'Tiago Santos', 'Portuguesa', '1999-12-25', 3),
(12, 'Luis Magalães', 'Portuguesa', '2001-07-20', 3),
(13, 'Filipe Sousa', 'Portuguesa', '1990-08-02', 3),
(14, 'António Santos', 'Portuguesa', '1998-04-22', 3),
(15, 'Roberto Pereira', 'Portuguesa', '1997-09-28', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipas`
--
ALTER TABLE `equipas`
  ADD PRIMARY KEY (`id_equipa`);

--
-- Indexes for table `jogadores`
--
ALTER TABLE `jogadores`
  ADD PRIMARY KEY (`id_jogador`),
  ADD KEY `id_equipa` (`id_equipa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipas`
--
ALTER TABLE `equipas`
  MODIFY `id_equipa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jogadores`
--
ALTER TABLE `jogadores`
  MODIFY `id_jogador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
