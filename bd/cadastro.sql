-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Tempo de geração: 15-Nov-2023 às 01:03
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
  `ra` int(11) NOT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `problema` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `sala` varchar(25) DEFAULT NULL,
  `horario` timestamp NOT NULL DEFAULT current_timestamp(),
  `situacao` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`ra`, `nome`, `problema`, `descricao`, `sala`, `horario`, `situacao`) VALUES
(0, '', 0, '', '', '2023-11-14 23:31:17', 0),
(0, '', 0, '', '', '2023-11-14 23:31:17', 0),
(0, '', 0, '', '', '2023-11-14 23:31:17', 0),
(234242423, 'sdfdsfds', 1, 'sfsdfsdf', '4323', '2023-11-14 23:31:17', 1),
(1961938, 'Gustavo', 3, 'problemas serios com a conexao da rede ', '322', '2023-11-14 23:31:17', 1),
(1234556, 'Henrrique', 8, 'grave problema com o predio', '3222', '2023-11-14 23:59:01', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD KEY `problema` (`problema`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
