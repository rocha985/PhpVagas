-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/10/2025 às 16:04
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetovagas`
--

CREATE DATABASE IF NOT EXISTS projetovagas;
USE projetovagas;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nomecargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cargos`
--

INSERT INTO `cargos` (`id`, `nomecargo`) VALUES
(1, 'Desenvolvedor Front-end'),
(2, 'Desenvolvedor Back-end'),
(3, 'Analista de Sistemas'),
(4, 'Gerente de Projetos'),
(5, 'Designer UX/UI'),
(6, 'Cientista de Dados'),
(7, 'Analista de Marketing Digital'),
(8, 'Engenheiro de QA'),
(9, 'Administrador de Banco de Dados'),
(10, 'Suporte Técnico');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vagas`
--

CREATE TABLE `vagas` (
  `id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `requisitos` text NOT NULL,
  `local` varchar(100) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `cargoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vagas`
--

INSERT INTO `vagas` (`id`, `descricao`, `salario`, `requisitos`, `local`, `empresa`, `cargoid`) VALUES
(1, 'Desenvolver interfaces web modernas', 4000.00, 'HTML, CSS, JS, React', 'São Paulo', 'Tech Solutions', 1),
(2, 'Criar e manter APIs e serviços', 4500.00, 'PHP, Node.js, SQL', 'Rio de Janeiro', 'CodeLabs', 2),
(3, 'Analisar sistemas e propor melhorias', 4200.00, 'UML, SQL, Java', 'Belo Horizonte', 'InfoTech', 3),
(4, 'Gerenciar equipe e projetos ágeis', 7000.00, 'Scrum, Kanban, Liderança', 'Curitiba', 'GlobalTech', 4),
(5, 'Criar experiências digitais', 3800.00, 'Figma, Adobe XD', 'Porto Alegre', 'Creative Minds', 5),
(6, 'Analisar dados e gerar insights', 6000.00, 'Python, R, SQL', 'São Paulo', 'DataCorp', 6),
(7, 'Criar campanhas e monitorar métricas', 3500.00, 'SEO, Ads, Analytics', 'Florianópolis', 'MarketHub', 7),
(8, 'Testar sistemas e automatizar testes', 4000.00, 'Selenium, Python', 'Campinas', 'TestLab', 8),
(9, 'Gerenciar bancos de dados corporativos', 5000.00, 'MySQL, PostgreSQL', 'Salvador', 'DB Solutions', 9),
(10, 'Atender chamados e resolver problemas de TI', 3000.00, 'Windows, Linux, Suporte', 'Recife', 'HelpDesk', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cargo` (`cargoid`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `vagas`
--
ALTER TABLE `vagas`
  ADD CONSTRAINT `fk_cargo` FOREIGN KEY (`cargoid`) REFERENCES `cargos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
