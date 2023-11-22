-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Tempo de geração: 22-Nov-2023 às 01:24
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `chamados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id_chamado` int(11) NOT NULL,
  `ra` int(11) NOT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `problema` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `sala` varchar(25) DEFAULT NULL,
  `horario` timestamp NOT NULL DEFAULT current_timestamp(),
  `horario_resolucao` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id_chamado`, `ra`, `nome`, `problema`, `descricao`, `sala`, `horario`, `horario_resolucao`) VALUES
(1, 0, 'Amet cupidatat fugi', 3, 'Impedit vel non ea ', 'Vero animi ut sunt', '2023-11-19 15:16:38', '2023-11-22 02:34:29'),
(2, 1961938, 'Gustavo', 3, 'problemas serios com a conexao da rede ', '322', '2023-11-15 02:31:17', '2023-11-16 19:29:39'),
(3, 234242423, 'sdfdsfds', 1, 'sfsdfsdf', '4323', '2023-11-15 02:31:17', '2023-11-16 19:28:14'),
(4, 2313123, 'Molestias rem tempor', 3, 'Suscipit inventore q', 'Dolor omnis proident', '2023-11-21 14:12:57', '2023-11-22 02:34:41'),
(5, 0, 'Quisquam sapiente eu', 3, 'Veniam nobis velit ', 'Et qui accusantium i', '2023-11-21 15:32:41', '2023-11-22 02:34:29'),
(6, 0, 'Odio sint labore cul', 2, 'Eveniet ea eligendi', 'Vel aut aut autem du', '2023-11-21 15:32:49', '2023-11-22 02:34:29'),
(7, 0, 'Quis in sapiente nis', 2, 'Autem ut iste quis e', 'Quis veniam rem sit', '2023-11-21 17:23:42', '2023-11-22 02:34:29'),
(8, 0, 'Minima laborum nulla', 2, 'Esse saepe est illo ', 'Cupiditate aute dist', '2023-11-21 18:01:07', '2023-11-22 02:34:29'),
(9, 0, 'sdfdsfds', 2, 'aasdassda', '322', '2023-11-21 23:22:19', '2023-11-22 03:47:54'),
(10, 0, 'sadsadsasad', 2, 'asddassaddsa', '322', '2023-11-21 23:22:32', '2023-11-22 03:42:28'),
(11, 1961938, 'wdsad', 1, 'sdffsdfds', '3222', '2023-11-21 23:39:55', '2023-11-22 03:42:24'),
(12, 1961693, 'Paulo', 2, 'Teto caindo', '422', '2023-11-21 23:46:43', '2023-11-22 03:46:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `problema`
--

CREATE TABLE `problema` (
  `id_problema` int(11) NOT NULL,
  `nome_problema` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `problema`
--

INSERT INTO `problema` (`id_problema`, `nome_problema`) VALUES
(1, 'Conexão de Rede'),
(2, 'Problema Grave no Prédio'),
(3, 'Outro Problema');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id_chamado`),
  ADD KEY `ra` (`ra`) USING BTREE;

--
-- Índices para tabela `problema`
--
ALTER TABLE `problema`
  ADD PRIMARY KEY (`id_problema`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id_chamado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `problema`
--
ALTER TABLE `problema`
  MODIFY `id_problema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
