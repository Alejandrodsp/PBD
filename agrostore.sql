-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 24-Nov-2019 às 22:29
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrostore`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncia`
--

DROP TABLE IF EXISTS `anuncia`;
CREATE TABLE IF NOT EXISTS `anuncia` (
  `Id_anuncio` int(11) NOT NULL AUTO_INCREMENT,
  `Valor` decimal(6,2) NOT NULL,
  `Produto` varchar(30) NOT NULL,
  `CNPJ_anunciante` int(11) NOT NULL,
  PRIMARY KEY (`Id_anuncio`),
  KEY `CNPJ_anunciante` (`CNPJ_anunciante`),
  KEY `Produto` (`Produto`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anuncia`
--

INSERT INTO `anuncia` (`Id_anuncio`, `Valor`, `Produto`, `CNPJ_anunciante`) VALUES
(1, '5.00', 'Leite', 1111111111),
(2, '4.50', 'Leite', 22222222),
(3, '8.00', 'Feijao', 1111111111),
(4, '7.00', 'Alface', 65498725),
(5, '6.00', 'Arroz', 12365487),
(6, '100.00', 'Fumo', 22222222),
(7, '8.00', 'Mandioca', 33333333),
(8, '5.50', 'Ovo', 12365487),
(9, '3.00', 'Milho', 1111111111),
(10, '70.00', 'Soja', 65498725),
(11, '4.00', 'Cafe', 12365487),
(12, '90.00', 'Fumo', 33333333),
(13, '6.35', 'Alface', 1111111111);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `Id_categoria` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  PRIMARY KEY (`Id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`Id_categoria`, `Nome`) VALUES
(1, 'Alimentacao'),
(2, 'Saude'),
(3, 'Producao'),
(4, 'Casa'),
(5, 'Vacinacao'),
(6, 'Outra');

-- --------------------------------------------------------

--
-- Estrutura da tabela `despesa`
--

DROP TABLE IF EXISTS `despesa`;
CREATE TABLE IF NOT EXISTS `despesa` (
  `Id_despesa` int(11) NOT NULL AUTO_INCREMENT,
  `Data_despesa` varchar(10) NOT NULL,
  `Valor` decimal(10,2) NOT NULL,
  `Descricao` varchar(100) DEFAULT NULL,
  `CNPJ` int(11) NOT NULL,
  `Categoria` int(11) NOT NULL,
  PRIMARY KEY (`Id_despesa`),
  KEY `Categoria` (`Categoria`),
  KEY `CNPJ` (`CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `despesa`
--

INSERT INTO `despesa` (`Id_despesa`, `Data_despesa`, `Valor`, `Descricao`, `CNPJ`, `Categoria`) VALUES
(1, '23/11/2019', '100.00', 'Compra de racao', 1111111111, 3),
(2, '24/11/2019', '8.00', 'Compra de leite', 1111111111, 1),
(3, '24/11/2019', '100.00', 'Compra de sementes', 12365487, 3),
(4, '24/11/2019', '35.00', 'Compra de comida', 65498725, 4),
(5, '25/11/2019', '120.00', 'Pagamento de peao', 33333333, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fazendeiro`
--

DROP TABLE IF EXISTS `fazendeiro`;
CREATE TABLE IF NOT EXISTS `fazendeiro` (
  `CNPJ` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Senha` varchar(8) NOT NULL,
  `Endereco` varchar(30) NOT NULL,
  `Telefone` varchar(11) NOT NULL,
  PRIMARY KEY (`CNPJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fazendeiro`
--

INSERT INTO `fazendeiro` (`CNPJ`, `Nome`, `Email`, `Senha`, `Endereco`, `Telefone`) VALUES
(12365487, 'Lucas Dias dos Santos', 'lucas@hotmail.com', '55555555', 'Rua Marcilio Dias, 124', '5174523541'),
(22222222, 'Renato Podel Coelho', 'renata@hotmail.com', '12345698', 'Estrada Coxilha Amaral', '5199584877'),
(33333333, 'Jose Lima', 'jose@hotmail.com', '87654321', 'Rua Clube Nevas, 874', '5344447575'),
(65498725, 'Alexsander Silva', 'alexsander@hotmail.com', '66666666', 'Rua Felix da Cunha, 555', '4125236458'),
(1111111111, 'Alejandro da Silva Pereira', 'ALEJANDRO@hotmail.com', '12345678', 'Rua Araujo, 123', '5199602938');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lucro`
--

DROP TABLE IF EXISTS `lucro`;
CREATE TABLE IF NOT EXISTS `lucro` (
  `Id_lucro` int(11) NOT NULL AUTO_INCREMENT,
  `Data_lucro` varchar(10) NOT NULL,
  `Valor` decimal(10,2) NOT NULL,
  `Descricao` varchar(100) DEFAULT NULL,
  `CNPJ` int(11) NOT NULL,
  `Categoria` int(11) NOT NULL,
  PRIMARY KEY (`Id_lucro`),
  KEY `CNPJ` (`CNPJ`),
  KEY `Categoria` (`Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `lucro`
--

INSERT INTO `lucro` (`Id_lucro`, `Data_lucro`, `Valor`, `Descricao`, `CNPJ`, `Categoria`) VALUES
(1, '23/11/2019', '200.00', 'Venda de leite', 1111111111, 3),
(2, '24/11/2019', '300.00', 'Venda de milho', 1111111111, 3),
(3, '24/11/2019', '30.00', 'Venda de cafe', 65498725, 3),
(4, '24/11/2019', '300.00', 'Venda de fumo', 22222222, 3),
(5, '23/11/2019', '150.00', 'Venda de soja', 12365487, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `Id_produto` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  PRIMARY KEY (`Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`Id_produto`, `Nome`, `Tipo`) VALUES
(9, 'Alface', 'Verdura'),
(6, 'Arroz', 'Planta'),
(8, 'Cafe', 'Grao'),
(2, 'Feijao', 'Grao'),
(5, 'Fumo', 'Planta'),
(1, 'Leite', 'Laticinio'),
(10, 'Mandioca', 'Raiz'),
(3, 'Milho', 'Grao'),
(4, 'Ovo', 'Derivado'),
(7, 'Soja', 'Grao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

DROP TABLE IF EXISTS `reserva`;
CREATE TABLE IF NOT EXISTS `reserva` (
  `Id_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `Data` varchar(10) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `CPF` int(11) NOT NULL,
  `Produto` varchar(30) NOT NULL,
  `Anuncio` int(11) NOT NULL,
  PRIMARY KEY (`Id_reserva`),
  KEY `CPF_reservante` (`CPF`),
  KEY `Produto` (`Produto`),
  KEY `Anuncio` (`Anuncio`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`Id_reserva`, `Data`, `Quantidade`, `CPF`, `Produto`, `Anuncio`) VALUES
(3, '24/12/2019', 15, 1111111, 'Leite', 1),
(4, '25/12/2019', 6, 1111111, 'Leite', 2),
(5, '22/12/2019', 2, 1111111, 'Leite', 1),
(6, '26/12/2019', 4, 222421231, 'Alface', 4),
(7, '30/12/2019', 8, 77777777, 'Arroz', 5),
(8, '14/01/2020', 6, 33333333, 'Milho', 9),
(9, '13/02/2020', 12, 36363636, 'Feijao', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `saldo_total`
--

DROP TABLE IF EXISTS `saldo_total`;
CREATE TABLE IF NOT EXISTS `saldo_total` (
  `Data_saldo` date NOT NULL,
  `Valor` decimal(10,2) NOT NULL,
  `CNPJ` int(11) NOT NULL,
  `Id_saldo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_saldo`),
  KEY `CNPJ` (`CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `saldo_total`
--

INSERT INTO `saldo_total` (`Data_saldo`, `Valor`, `CNPJ`, `Id_saldo`) VALUES
('2019-11-24', '400.00', 1111111111, 1),
('2019-11-24', '392.00', 1111111111, 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_comum`
--

DROP TABLE IF EXISTS `usuario_comum`;
CREATE TABLE IF NOT EXISTS `usuario_comum` (
  `CPF` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Senha` varchar(8) NOT NULL,
  `Telefone` varchar(11) NOT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario_comum`
--

INSERT INTO `usuario_comum` (`CPF`, `Nome`, `Email`, `Senha`, `Telefone`) VALUES
(1111111, 'Joao Carlos Vargas', 'joao@hotmail.com', '12345678', '5177774444'),
(33333333, 'Maria Flor Costa', 'mariaf@hotmail.com', '32165455', '5245693214'),
(36363636, 'Renata Coelho Podel', 'renata@hotmail.com', '11111111', '5177777777'),
(77777777, 'Roberto Costa', 'roberto@hotmail.com', 'roberto', '5144474562'),
(222421231, 'Eduardo Garcia', 'eduardo@hotmail.com', 'eduardo', '1140028922');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `anuncia`
--
ALTER TABLE `anuncia`
  ADD CONSTRAINT `anuncia_ibfk_1` FOREIGN KEY (`CNPJ_anunciante`) REFERENCES `fazendeiro` (`CNPJ`),
  ADD CONSTRAINT `anuncia_ibfk_2` FOREIGN KEY (`Produto`) REFERENCES `produto` (`Nome`);

--
-- Limitadores para a tabela `despesa`
--
ALTER TABLE `despesa`
  ADD CONSTRAINT `despesa_ibfk_1` FOREIGN KEY (`Categoria`) REFERENCES `categoria` (`Id_categoria`),
  ADD CONSTRAINT `despesa_ibfk_2` FOREIGN KEY (`CNPJ`) REFERENCES `fazendeiro` (`CNPJ`);

--
-- Limitadores para a tabela `lucro`
--
ALTER TABLE `lucro`
  ADD CONSTRAINT `lucro_ibfk_1` FOREIGN KEY (`CNPJ`) REFERENCES `fazendeiro` (`CNPJ`),
  ADD CONSTRAINT `lucro_ibfk_2` FOREIGN KEY (`Categoria`) REFERENCES `categoria` (`Id_categoria`);

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `anuncia_ibfk_3` FOREIGN KEY (`Anuncio`) REFERENCES `anuncia` (`Id_anuncio`),
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`CPF`) REFERENCES `usuario_comum` (`CPF`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`Produto`) REFERENCES `produto` (`Nome`);

--
-- Limitadores para a tabela `saldo_total`
--
ALTER TABLE `saldo_total`
  ADD CONSTRAINT `saldo_total_ibfk_1` FOREIGN KEY (`CNPJ`) REFERENCES `fazendeiro` (`CNPJ`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
