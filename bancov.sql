-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 22-Set-2026 às 20:20
-- Versão do servidor: 5.7.36
-- versão do PHP: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bancov`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadfornecedor`
--

CREATE TABLE `cadfornecedor` (
  `id_fornecedor` int(11) NOT NULL,
  `nomeEmpresa` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nomeFantasia` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cnpj` varchar(18) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `logradouro` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cep` varchar(9) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bairro` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `uf` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nacionalidade` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `telefone` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadproduto`
--

CREATE TABLE `cadproduto` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tamanho` int(3) NOT NULL,
  `material` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `peso` decimal(10,4) NOT NULL,
  `categoria` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `cadproduto`
--

INSERT INTO `cadproduto` (`id_produto`, `nome`, `tamanho`, `material`, `peso`, `categoria`, `preco`, `descricao`) VALUES
(1, 'Brinco', 14, 'Ouro', '10.0000', 'outros', '10.00', 'Bala');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoqueproduto`
--

CREATE TABLE `estoqueproduto` (
  `id_produto` int(11) NOT NULL,
  `id_fornecedor` int(11) NOT NULL,
  `qtdDisponivel` int(255) NOT NULL,
  `precoProduto` decimal(10,2) NOT NULL,
  `nomeProduto` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadfornecedor`
--
ALTER TABLE `cadfornecedor`
  ADD PRIMARY KEY (`id_fornecedor`);

--
-- Índices para tabela `cadproduto`
--
ALTER TABLE `cadproduto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices para tabela `estoqueproduto`
--
ALTER TABLE `estoqueproduto`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadfornecedor`
--
ALTER TABLE `cadfornecedor`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadproduto`
--
ALTER TABLE `cadproduto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `estoqueproduto`
--
ALTER TABLE `estoqueproduto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
