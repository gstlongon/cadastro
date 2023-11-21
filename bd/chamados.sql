-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/11/2023 às 19:25
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

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
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `ra` int(11) NOT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `problema` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `sala` varchar(25) DEFAULT NULL,
  `horario` timestamp NOT NULL DEFAULT current_timestamp(),
  `horario_resolucao` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`ra`, `nome`, `problema`, `descricao`, `sala`, `horario`, `horario_resolucao`) VALUES
(0, 'Amet cupidatat fugi', 3, 'Impedit vel non ea ', 'Vero animi ut sunt', '2023-11-19 15:16:38', '2023-11-19 19:24:52'),
(1961938, 'Gustavo', 3, 'problemas serios com a conexao da rede ', '322', '2023-11-15 02:31:17', '2023-11-16 19:29:39'),
(234242423, 'sdfdsfds', 1, 'sfsdfsdf', '4323', '2023-11-15 02:31:17', '2023-11-16 19:28:14'),
(2313123, 'Molestias rem tempor', 3, 'Suscipit inventore q', 'Dolor omnis proident', '2023-11-21 14:12:57', NULL),
(0, 'Quisquam sapiente eu', 3, 'Veniam nobis velit ', 'Et qui accusantium i', '2023-11-21 15:32:41', NULL),
(0, 'Odio sint labore cul', 2, 'Eveniet ea eligendi', 'Vel aut aut autem du', '2023-11-21 15:32:49', NULL),
(0, 'Quis in sapiente nis', 2, 'Autem ut iste quis e', 'Quis veniam rem sit', '2023-11-21 17:23:42', NULL),
(0, 'Minima laborum nulla', 2, 'Esse saepe est illo ', 'Cupiditate aute dist', '2023-11-21 18:01:07', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `problema`
--

CREATE TABLE `problema` (
  `id_problema` int(11) NOT NULL,
  `nome_problema` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `problema`
--

INSERT INTO `problema` (`id_problema`, `nome_problema`) VALUES
(1, 'Conexão de Rede'),
(2, 'Problema Grave no Prédio'),
(3, 'Outro Problema');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD KEY `ra` (`ra`) USING BTREE;

--
-- Índices de tabela `problema`
--
ALTER TABLE `problema`
  ADD PRIMARY KEY (`id_problema`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `problema`
--
ALTER TABLE `problema`
  MODIFY `id_problema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
