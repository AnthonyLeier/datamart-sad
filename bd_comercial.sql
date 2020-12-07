-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.35-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MOclienteDE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para bd_comercial
DROP DATABASE IF EXISTS `bd_comercial`;
CREATE DATABASE IF NOT EXISTS `bd_comercial` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bd_comercial`;

-- Copiando estrutura para tabela bd_comercial.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `cpf` char(12) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `celular` char(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_comercial.cliente: ~58 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`cpf`, `nome`, `sexo`, `idade`, `celular`, `email`, `rua`, `bairro`, `cidade`, `uf`) VALUES
	('10233655566', 'Patrick Andrade', 'M', 38, '9866-4455', 'patrick.andrade@yahoo.com.br', 'rua Padre Feijó', 'Bairro Jacutinga', 'Caçador', 'SC'),
	('10233655567', 'Gabriel Marques', 'M', 35, '9986-4633', 'babi@yahoo.com.bbr', 'rua Itapetibiriba', 'Centro', 'Chapecó', 'SC'),
	('10233655568', 'Aline Pereira', 'F', 24, '7788-9966', 'aline@gmail.com', 'rua barão de itararé', 'Bairro Sobrado', 'São Lourenço do Oeste', 'SC'),
	('10233655569', 'Kátia Souza', 'F', 21, '8889-9966', 'katia@hotmail.com', 'rua Maria Lima', 'Centro', 'Caçador', 'SC'),
	('10233655570', 'Evelize Moreira', 'F', 26, '9989-6698', 'eve@gmail.com', 'rua Itapetibiriba', 'Centro', 'Chapecó', 'SC'),
	('10233655571', 'Raú Pablo Mourão', 'M', 32, '6693-9992', 'raumourao@gmail.com', 'rua joca', 'Bairro Plutzer', 'Chapecó', 'SC'),
	('10233655572', 'Estela de Pádua', 'F', 21, '6669-8898', 'estela@gmail.com', 'rua Marelicio Jonas', 'Centro', 'São Lourenço do Oeste', 'SC'),
	('10233655573', 'Vitor Borges', 'M', 36, '9998-4444', 'vitor@uol.com.br', 'rua Mulatinho', 'Bairro Alvorada', 'Chapecó', 'SC'),
	('10233655574', 'Ana Eliza Simons', 'F', 22, '9998-5588', 'ana@uol.com.br', 'rua José Mendes', 'Bairro Jung', 'São Lourenço do Oeste', 'SC'),
	('10233655575', 'Toni da Luz', 'M', 38, '9866-4455', 'toni@gmail.com', 'rua Padre Feijó', 'Bairro Jacutinga', 'Caçador', 'SC'),
	('10233655576', 'Tarso Mendes', 'M', 35, '9986-4633', 'tarso@gmail.com', 'rua Itapetibiriba', 'Centro', 'Chapecó', 'SC'),
	('10233655577', 'Juliane Pereira', 'F', 24, '7788-9966', 'juli@hotmail.com', 'rua barão de itararé', 'Bairro Sobrado', 'São Lourenço do Oeste', 'SC'),
	('10233655578', 'Cristina Cezares', 'F', 21, '8889-9966', 'cris@yahoo.com.br', 'rua Maria Lima', 'Centro', 'Caçador', 'SC'),
	('10233655579', 'Melissa Rupel', 'F', 26, '9989-6698', 'melissa@gmail.com', 'rua Itapetibiriba', 'Centro', 'Chapecó', 'SC'),
	('10233655580', 'Ronaldo Jerônimo', 'M', 32, '6693-9992', 'roni@yahoo.com.br', 'rua joca', 'Bairro Plutzer', 'Chapecó', 'SC'),
	('18420580019', 'Andreia Fagundes', 'F', 26, '9966-5566', 'deiaf@yahoo.com.br', 'rua Itapetibiriba', 'Centro', 'Joaçaba', 'SC'),
	('22276440669', 'Juliano Fermino', 'M', 27, '9452-3256', 'juju@gmail.com', 'rua Padre Feijó', 'Bairro Jacutinga', 'Caçador', 'SC'),
	('22366544896', 'Lídia Maria Sanches', 'F', 21, '6669-8898', 'lidia@eu.com', 'rua Marelicio Jonas', 'Centro', 'São Lourenço do Oeste', 'SC'),
	('23456504611', 'Tatiana Rafaela Cobiak', 'F', 22, '9665-3669', 'tati-cobiak21@hotmail.com', 'rua José Mendes', 'Bairro Jung', 'Videira', 'SC'),
	('23873071704', 'Mariza Sabatella', 'F', 26, '7898-5566', 'marisabatella@hotmail.com', 'rua Itapetibiriba', 'Centro', 'Joaçaba', 'SC'),
	('25137714989', 'João Tortatto', 'M', 31, '8896-3369', 'tortatojoao@hotmail.com', 'rua Itapetibiriba', 'Centro', 'Joaçaba', 'SC'),
	('26939423643', 'Raíssa do Prado', 'F', 40, '8963-6325', 'raissadoprado@hotmail.com', 'rua José Mendes', 'Bairro Jung', 'Videira', 'SC'),
	('28870267107', 'Carolina Dias', 'F', 27, '8563-2114', 'caroldias@yahoo.com.br', 'rua Maria Lima', 'Centro', 'Caçador', 'SC'),
	('30939500929', 'Patricia Eduarda Aparecida', 'F', 20, '9955-6633', 'pati_edu@hotmail.com', 'rua Mulatinho', 'Bairro Alvorada', 'Joaçaba', 'SC'),
	('32578478626', 'Orlando Raul Jacob', 'M', 23, '8877-5566', 'orlando@gmail.com', 'rua Marelicio Jonas', 'Centro', 'Videira', 'SC'),
	('33157044034', 'Paola Pereira', 'F', 29, '9963-6563', 'paola_pereira@gmail.com', 'rua barão de itararé', 'Bairro Sobrado', 'Videira', 'SC'),
	('34913493041', 'Monica Alves Teles', 'F', 32, '9654-8546', 'monica@gmail.com', 'rua barão de itararé', 'Bairro Sobrado', 'Videira', 'SC'),
	('37415866170', 'Alberto Manique', 'M', 21, '9653-3265', 'alberto_mani@hotmail.com', 'rua Marelicio Jonas', 'Centro', 'Videira', 'SC'),
	('40097593204', 'Jorge Gotardo', 'M', 30, '9654-2255', 'jorga@uol.com.br', 'rua Itapetibiriba', 'Centro', 'Joaçaba', 'SC'),
	('42221708300', 'Silvio Souza', 'M', 19, '9658-5566', 'silvio@gmail.com', 'rua boa', 'Bairro Nobre', 'Caçador', 'SC'),
	('42971529068', 'Rainundo Shultz', 'M', 21, '9652-2233', 'shcultz_raimundo@hotmail.com', 'rua joca', 'Bairro Plutzer', 'Joaçaba', 'SC'),
	('45247886981', 'Elias Santiago', 'M', 27, '9963-3258', 'elias_san@gmail.com', 'rua joca', 'Bairro Plutzer', 'Joaçaba', 'SC'),
	('48490962557', 'Ronaldo Farfudh', 'M', 36, '8996-3258', 'ronaldof@uol.com.br', 'rua Padre Feijó', 'Bairro Jacutinga', 'Caçador', 'SC'),
	('51966480792', 'Margara Ruppel', 'F', 22, '8874-4563', 'margara_ruppel22@hotmail.com', 'rua Itapetibiriba', 'Centro', 'Joaçaba', 'SC'),
	('55566633325', 'Antonio Malique', 'M', 36, '9998-4444', 'Antoninho@Yahoo.com.br', 'rua Mulatinho', 'Bairro Alvorada', 'Chapecó', 'SC'),
	('55622233366', 'Maria Antunes', 'F', 22, '9998-5588', 'maria@gmail.com', 'rua José Mendes', 'Bairro Jung', 'São Lourenço do Oeste', 'SC'),
	('55633211144', 'Rafael Albuquerque', 'M', 38, '9866-4455', 'rafa@gmail.com', 'rua Padre Feijó', 'Bairro Jacutinga', 'Caçador', 'SC'),
	('55633255899', 'Raimundo Pereira', 'M', 35, '9986-4633', 'raimundo@eu.com', 'rua Itapetibiriba', 'Centro', 'Chapecó', 'SC'),
	('55666999633', 'Érika Moura', 'F', 24, '7788-9966', 'erika@gmail.com', 'rua barão de itararé', 'Bairro Sobrado', 'São Lourenço do Oeste', 'SC'),
	('55669988332', 'Ana Clara', 'F', 21, '8889-9966', 'ana@hotmail.com', 'rua Maria Lima', 'Centro', 'Caçador', 'SC'),
	('55691101672', 'Ederson Socrepa', 'M', 21, '96655-3366', 'edersocrepa11@bol.com.br', 'rua José Mendes', 'Bairro Jung', 'Videira', 'SC'),
	('55699855233', 'Joana Siqueira', 'F', 26, '9989-6698', 'jo@eu.com', 'rua Itapetibiriba', 'Centro', 'Chapecó', 'SC'),
	('55699855234', 'Irineu Soares', 'M', 32, '6693-9992', 'iri@eu.com', 'rua joca', 'Bairro Plutzer', 'Chapecó', 'SC'),
	('55699855235', 'Carlos Braga', 'M', 17, '99998-5665', 'carlos@gmail.com', 'rua boa', 'Bairro Nobre', 'Caçador', 'SC'),
	('55699855236', 'Patrícia Silva', 'F', 21, '6669-8898', 'patricia.silva@hotmail.com', 'rua Marelicio Jonas', 'Centro', 'São Lourenço do Oeste', 'SC'),
	('55699855237', 'Luiz Amadeus', 'M', 36, '9998-4444', 'luiz@yahoo.com.br', 'rua Mulatinho', 'Bairro Alvorada', 'Chapecó', 'SC'),
	('55699855238', 'Beatriz da Rocha', 'F', 22, '9998-5588', 'bia@hotmail.com', 'rua José Mendes', 'Bairro Jung', 'São Lourenço do Oeste', 'SC'),
	('55830001236', 'Paulo Cordova', 'M', 17, '99998-5665', 'paulo@eu.com', 'rua boa', 'Bairro Nobre', 'Caçador', 'SC'),
	('58641261527', 'Luiza Fatima Rubens', 'F', 26, '8996-3669', 'luizarubens23@hotmail.com', 'rua Mulatinho', 'Bairro Alvorada', 'Joaçaba', 'SC'),
	('59682679261', 'Edilaine Motta', 'F', 25, '8963-3256', 'edimotta@gmail.com', 'rua Maria Lima', 'Centro', 'Caçador', 'SC'),
	('62844287474', 'Anacleto Borba', 'M', 35, '9521-1147', 'anacleto.borba@hotmail.com', 'rua Maria Lima', 'Centro', 'Caçador', 'SC'),
	('67348559107', 'Antonela Raimunda Peres', 'F', 24, '8845-6336', 'nella@hotmail.com', 'rua Mulatinho', 'Bairro Alvorada', 'Joaçaba', 'SC'),
	('72175667767', 'Gian Ferreira', 'M', 26, '8546-3219', 'gian@gmail.com', 'rua barão de itararé', 'Bairro Sobrado', 'Videira', 'SC'),
	('75999074939', 'Pablo José Lucas', 'M', 25, '8877-9663', 'lucasjose@hotmail.com', 'Rua Jardins', 'Jardins', 'Videira', 'SC'),
	('77348752322', 'Estevão Pares', 'M', 24, '3658-9656', 'estevao@uol.com.br', 'rua Marelicio Jonas', 'Centro', 'Videira', 'SC'),
	('81446196566', 'Ramon Scur', 'M', 28, '8775-2589', 'ramonscur@gmail.com', 'rua boa', 'Bairro Nobre', 'Caçador', 'SC'),
	('87283732602', 'Rafael Machado', 'M', 37, '9632-6327', 'rafa_machado@hotmail.com', 'rua Itapetibiriba', 'Centro', 'Joaçaba', 'SC'),
	('93539665426', 'Rolando Places', 'M', 25, '9955-2233', 'rolando_p@gmail.com', 'rua joca', 'Bairro Plutzer', 'Joaçaba', 'SC');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela bd_comercial.contas_receber
DROP TABLE IF EXISTS `contas_receber`;
CREATE TABLE IF NOT EXISTS `contas_receber` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data_lancamento` date DEFAULT NULL,
  `pedido` int(11) NOT NULL DEFAULT '0',
  `valor_receber` decimal(9,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`codigo`),
  KEY `Pedido` (`pedido`),
  CONSTRAINT `Pedido` FOREIGN KEY (`pedido`) REFERENCES `pedido` (`cod_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_comercial.contas_receber: ~42 rows (aproximadamente)
/*!40000 ALTER TABLE `contas_receber` DISABLE KEYS */;
INSERT INTO `contas_receber` (`codigo`, `data_lancamento`, `pedido`, `valor_receber`) VALUES
	(1, '2018-09-01', 23, 794.00),
	(2, '2018-09-05', 24, 15332.00),
	(3, '2018-09-05', 25, 794.00),
	(4, '2018-09-10', 26, 23.00),
	(5, '2018-09-11', 27, 538.00),
	(6, '2018-09-05', 28, 24.00),
	(7, '2018-09-05', 29, 4249.00),
	(8, '2018-09-06', 30, 15789.00),
	(9, '2018-09-22', 31, 453.00),
	(10, '2018-09-25', 32, 49.00),
	(11, '2018-09-25', 33, 422.00),
	(12, '2018-09-17', 34, 100.00),
	(13, '2018-09-17', 35, 2949.00),
	(14, '2018-09-09', 36, 8640.00),
	(15, '2018-09-28', 37, 24.00),
	(16, '2018-09-29', 38, 756.00),
	(17, '2018-09-08', 39, 469.00),
	(18, '2018-09-10', 40, 2500.00),
	(19, '2018-09-11', 41, 538.00),
	(20, '2018-09-05', 42, 83.00),
	(21, '2018-09-25', 43, 23.00),
	(22, '2018-09-05', 44, 488.00),
	(23, '2019-02-25', 76, 3506.00),
	(24, '2019-03-12', 77, 89.00),
	(25, '2019-03-27', 78, 3086.00),
	(26, '2019-03-27', 79, 350.00),
	(27, '2019-04-11', 80, 460.00),
	(28, '2019-04-26', 81, 79.00),
	(29, '2019-05-11', 82, 460.00),
	(30, '2019-05-26', 83, 1321.00),
	(31, '2019-06-10', 84, 820.00),
	(32, '2019-06-25', 85, 74.00),
	(33, '2019-07-10', 86, 24.00),
	(34, '2019-07-25', 87, 3850.00),
	(35, '2019-02-25', 88, 463.00),
	(36, '2019-03-12', 89, 49.00),
	(37, '2019-04-26', 100, 663.00),
	(38, '2019-05-11', 101, 2986.00),
	(39, '2019-02-25', 102, 2986.00),
	(40, '2019-03-12', 103, 399.00),
	(41, '2019-03-27', 104, 3386.00),
	(42, '2019-03-27', 105, 3709.00);
/*!40000 ALTER TABLE `contas_receber` ENABLE KEYS */;

-- Copiando estrutura para tabela bd_comercial.item_pedido
DROP TABLE IF EXISTS `item_pedido`;
CREATE TABLE IF NOT EXISTS `item_pedido` (
  `cod_item_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `pedido` int(11) DEFAULT NULL,
  `produto` int(11) NOT NULL DEFAULT '0',
  `quantidade` decimal(10,2) NOT NULL DEFAULT '0.00',
  `preco_unit` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`cod_item_pedido`),
  KEY `fk_pedido` (`pedido`),
  KEY `fk_produto` (`produto`),
  CONSTRAINT `fk_pedido` FOREIGN KEY (`pedido`) REFERENCES `pedido` (`cod_pedido`),
  CONSTRAINT `fk_produto` FOREIGN KEY (`produto`) REFERENCES `produto` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_comercial.item_pedido: ~87 rows (aproximadamente)
/*!40000 ALTER TABLE `item_pedido` DISABLE KEYS */;
INSERT INTO `item_pedido` (`cod_item_pedido`, `pedido`, `produto`, `quantidade`, `preco_unit`) VALUES
	(98, 43, 1, 1.00, 23.80),
	(99, 23, 1, 2.00, 23.80),
	(100, 23, 2, 3.00, 18.95),
	(101, 23, 8, 1.00, 689.89),
	(102, 28, 1, 1.00, 24.80),
	(103, 41, 1, 2.00, 23.80),
	(104, 41, 2, 2.00, 19.89),
	(105, 41, 7, 1.00, 450.99),
	(106, 34, 2, 1.00, 19.80),
	(107, 34, 1, 3.00, 24.99),
	(108, 34, 6, 15.00, 0.36),
	(109, 24, 4, 1.00, 399.89),
	(110, 24, 9, 5.00, 2986.50),
	(111, 38, 3, 1.00, 356.69),
	(112, 38, 4, 1.00, 399.89),
	(113, 32, 1, 2.00, 24.99),
	(114, 40, 9, 1.00, 2500.00),
	(115, 42, 1, 1.00, 23.80),
	(116, 42, 2, 3.00, 19.89),
	(117, 44, 4, 1.00, 369.90),
	(118, 44, 1, 5.00, 23.80),
	(119, 33, 3, 1.00, 350.99),
	(120, 33, 1, 3.00, 23.80),
	(121, 36, 7, 1.00, 425.80),
	(122, 36, 8, 2.00, 689.89),
	(123, 36, 9, 2.00, 2986.50),
	(124, 36, 4, 2.00, 400.00),
	(125, 36, 1, 3.00, 20.50),
	(126, 29, 9, 1.00, 2986.50),
	(127, 29, 8, 1.00, 700.00),
	(128, 29, 7, 1.00, 463.69),
	(129, 29, 1, 5.00, 19.89),
	(130, 26, 1, 1.00, 23.80),
	(131, 25, 1, 2.00, 23.80),
	(132, 25, 2, 3.00, 18.95),
	(133, 25, 8, 1.00, 689.89),
	(134, 37, 1, 1.00, 24.80),
	(135, 27, 1, 2.00, 23.80),
	(136, 27, 2, 2.00, 19.89),
	(137, 27, 7, 1.00, 450.99),
	(138, 30, 2, 1.00, 19.80),
	(139, 30, 1, 3.00, 24.99),
	(140, 30, 6, 15.00, 0.36),
	(141, 30, 4, 1.00, 399.89),
	(142, 30, 9, 5.00, 2986.50),
	(143, 30, 3, 1.00, 356.69),
	(144, 35, 4, 1.00, 399.89),
	(145, 35, 1, 2.00, 24.99),
	(146, 35, 9, 1.00, 2500.00),
	(147, 31, 1, 1.00, 23.80),
	(148, 31, 2, 3.00, 19.89),
	(149, 31, 4, 1.00, 369.90),
	(150, 39, 1, 5.00, 23.80),
	(151, 39, 3, 1.00, 350.99),
	(152, 76, 10, 1.00, 99.90),
	(153, 76, 4, 1.00, 399.89),
	(154, 76, 2, 1.00, 19.89),
	(155, 76, 9, 1.00, 2986.50),
	(156, 77, 10, 1.00, 89.90),
	(157, 78, 10, 1.00, 99.90),
	(158, 78, 5, 1.00, 2986.50),
	(159, 79, 3, 1.00, 350.50),
	(160, 80, 7, 1.00, 460.99),
	(161, 81, 2, 5.00, 15.99),
	(162, 82, 7, 1.00, 460.99),
	(163, 83, 8, 2.00, 660.99),
	(164, 84, 7, 1.00, 463.69),
	(165, 84, 3, 1.00, 356.69),
	(166, 85, 1, 3.00, 24.99),
	(167, 86, 1, 1.00, 24.99),
	(168, 87, 4, 1.00, 399.89),
	(169, 87, 7, 1.00, 463.69),
	(170, 87, 9, 1.00, 2986.50),
	(171, 88, 7, 1.00, 463.69),
	(172, 89, 1, 2.00, 24.99),
	(173, 100, 6, 20.00, 0.36),
	(174, 100, 3, 1.00, 356.69),
	(175, 100, 10, 3.00, 99.90),
	(176, 101, 5, 1.00, 2986.50),
	(177, 102, 5, 1.00, 2986.50),
	(178, 103, 4, 1.00, 399.89),
	(179, 104, 5, 1.00, 2986.50),
	(180, 104, 4, 1.00, 399.89),
	(181, 105, 2, 3.00, 19.89),
	(182, 105, 9, 1.00, 2986.50),
	(183, 105, 7, 1.00, 463.69),
	(184, 105, 10, 2.00, 99.90),
	(185, 23, 10, 1.00, 50.00),
	(186, 95, 2, 2.00, 30.00);
/*!40000 ALTER TABLE `item_pedido` ENABLE KEYS */;

-- Copiando estrutura para tabela bd_comercial.moeda
DROP TABLE IF EXISTS `moeda`;
CREATE TABLE IF NOT EXISTS `moeda` (
  `cod_moeda` int(11) NOT NULL AUTO_INCREMENT,
  `nome_moeda` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_moeda`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_comercial.moeda: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `moeda` DISABLE KEYS */;
INSERT INTO `moeda` (`cod_moeda`, `nome_moeda`) VALUES
	(1, 'Dinheiro'),
	(2, 'Cartão Crédito'),
	(3, 'Cartão Débito');
/*!40000 ALTER TABLE `moeda` ENABLE KEYS */;

-- Copiando estrutura para tabela bd_comercial.parcelas_receber
DROP TABLE IF EXISTS `parcelas_receber`;
CREATE TABLE IF NOT EXISTS `parcelas_receber` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `conta_receber` int(11) NOT NULL DEFAULT '0',
  `data_vencimento` date DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `valor_parcela` decimal(9,2) DEFAULT NULL,
  `status_pagamento` int(1) DEFAULT '0',
  `moeda` int(1) DEFAULT '0',
  PRIMARY KEY (`codigo`),
  KEY `Conta a receber` (`conta_receber`),
  KEY `Moeda` (`moeda`),
  CONSTRAINT `Conta a receber` FOREIGN KEY (`conta_receber`) REFERENCES `contas_receber` (`codigo`),
  CONSTRAINT `Moeda` FOREIGN KEY (`moeda`) REFERENCES `moeda` (`cod_moeda`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_comercial.parcelas_receber: ~63 rows (aproximadamente)
/*!40000 ALTER TABLE `parcelas_receber` DISABLE KEYS */;
INSERT INTO `parcelas_receber` (`codigo`, `conta_receber`, `data_vencimento`, `data_pagamento`, `valor_parcela`, `status_pagamento`, `moeda`) VALUES
	(1, 1, '2018-09-15', '2018-09-15', 397.00, 1, 2),
	(2, 1, '2018-10-15', '2018-10-15', 397.00, 1, 2),
	(3, 2, '2018-09-15', '2018-09-15', 5110.00, 1, 2),
	(4, 2, '2018-10-15', '2018-10-15', 5110.00, 1, 2),
	(5, 2, '2018-11-15', '2018-11-20', 5110.00, 1, 2),
	(6, 3, '2018-10-05', '2018-10-10', 794.00, 1, 1),
	(7, 4, '2018-09-05', '2018-09-05', 23.00, 1, 1),
	(9, 5, '2018-10-11', NULL, 269.00, 0, 1),
	(10, 5, '2018-11-11', NULL, 269.00, 0, 1),
	(13, 6, '2018-10-05', NULL, 24.00, 0, 1),
	(14, 7, '2018-09-05', '2018-09-05', 4249.00, 1, 3),
	(15, 8, '2018-10-05', '2018-10-05', 3157.00, 1, 2),
	(16, 8, '2018-11-05', '2018-11-05', 3157.00, 1, 2),
	(17, 8, '2018-12-05', '2018-12-05', 3157.00, 1, 2),
	(18, 8, '2019-01-05', '2019-01-05', 3157.00, 1, 2),
	(19, 8, '2019-02-05', '2019-02-05', 3157.00, 1, 2),
	(20, 9, '2018-09-22', NULL, 453.00, 0, 1),
	(21, 10, '2018-09-25', '2018-09-25', 49.00, 1, 1),
	(24, 11, '2018-10-25', '2018-10-30', 211.00, 1, 2),
	(25, 11, '2018-11-25', '2018-12-05', 211.00, 1, 2),
	(26, 12, '2018-10-25', '2018-10-27', 100.00, 1, 3),
	(27, 13, '2018-10-17', '2017-10-17', 2949.00, 1, 3),
	(29, 14, '2018-11-15', '2018-11-17', 4320.00, 1, 2),
	(30, 14, '2018-12-15', '2018-12-15', 4320.00, 1, 2),
	(31, 15, '2018-09-28', '2018-09-28', 24.00, 1, 1),
	(32, 16, '2018-09-29', '2018-09-29', 756.00, 1, 3),
	(33, 17, '2018-09-08', '2018-09-08', 469.00, 1, 3),
	(34, 18, '2018-10-08', NULL, 1250.00, 0, 1),
	(35, 19, '2018-09-11', '2018-09-11', 538.00, 1, 3),
	(36, 20, '2018-09-05', '2018-09-05', 83.00, 1, 1),
	(37, 21, '2018-09-25', '2018-09-26', 23.00, 1, 1),
	(38, 22, '2018-09-05', '2018-09-05', 488.00, 1, 3),
	(39, 23, '2019-03-25', '2019-03-30', 1168.00, 1, 1),
	(40, 23, '2019-04-25', '2019-04-27', 1168.00, 1, 1),
	(41, 23, '2019-05-25', NULL, 1168.00, 0, 1),
	(42, 24, '2019-03-12', '2019-03-12', 89.00, 1, 3),
	(43, 25, '2019-03-27', '2019-03-27', 3086.00, 1, 1),
	(44, 26, '2019-03-27', '2019-04-27', 350.00, 1, 1),
	(45, 27, '2019-04-11', NULL, 460.00, 0, 1),
	(49, 28, '2019-05-26', '2019-05-26', 79.00, 1, 1),
	(50, 29, '2019-06-15', '2019-06-15', 460.00, 1, 3),
	(51, 30, '2019-05-26', '2019-05-25', 660.00, 1, 2),
	(52, 30, '2019-06-26', '2019-06-26', 660.00, 1, 2),
	(53, 31, '2019-06-10', '2019-06-10', 410.00, 1, 2),
	(54, 31, '2019-07-10', NULL, 410.00, 0, 2),
	(56, 32, '2019-06-25', '2019-06-25', 74.00, 1, 1),
	(57, 33, '2019-07-10', '2019-07-15', 24.00, 1, 1),
	(58, 34, '2019-08-15', '2019-08-15', 1283.00, 1, 2),
	(59, 34, '2019-09-15', NULL, 1283.00, 0, 2),
	(60, 34, '2019-10-15', NULL, 1283.00, 0, 2),
	(61, 35, '2019-02-25', '2019-02-25', 463.00, 1, 3),
	(62, 36, '2019-03-12', '2019-03-12', 49.00, 1, 2),
	(63, 37, '2019-05-26', NULL, 663.00, 0, 1),
	(64, 38, '2019-05-11', '2019-05-11', 2986.00, 1, 3),
	(65, 39, '2019-02-15', '2019-06-15', 2986.00, 1, 1),
	(66, 40, '2019-03-12', '2019-03-12', 133.00, 1, 2),
	(67, 40, '2019-04-12', '2019-04-12', 133.00, 1, 2),
	(68, 40, '2019-05-12', '2019-05-12', 133.00, 0, 1),
	(69, 41, '2019-03-27', '2019-04-15', 2000.00, 1, 1),
	(70, 41, '2019-04-25', NULL, 1386.00, 0, 1),
	(71, 42, '2019-03-15', '2019-03-15', 1236.00, 1, 2),
	(72, 42, '2019-04-15', '2019-04-15', 1236.00, 1, 2),
	(73, 42, '2019-05-15', '2019-05-15', 1236.00, 0, 1);
/*!40000 ALTER TABLE `parcelas_receber` ENABLE KEYS */;

-- Copiando estrutura para tabela bd_comercial.pedido
DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `cod_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` char(12) DEFAULT NULL,
  `data_pedido` date DEFAULT NULL,
  PRIMARY KEY (`cod_pedido`),
  KEY `fk_cliente` (`cliente`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_comercial.pedido: ~52 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` (`cod_pedido`, `cliente`, `data_pedido`) VALUES
	(23, '10233655568', '2018-09-01'),
	(24, '10233655574', '2018-09-05'),
	(25, '55666999633', '2018-09-05'),
	(26, '55633255899', '2018-09-10'),
	(27, '55699855235', '2018-09-11'),
	(28, '10233655568', '2018-09-05'),
	(29, '55566633325', '2018-09-05'),
	(30, '55699855235', '2018-09-06'),
	(31, '55699855236', '2018-09-22'),
	(32, '10233655577', '2018-09-25'),
	(33, '10233655578', '2018-09-25'),
	(34, '10233655571', '2018-09-17'),
	(35, '55699855235', '2018-09-17'),
	(36, '10233655578', '2018-09-09'),
	(37, '55699855233', '2018-09-28'),
	(38, '10233655575', '2018-09-29'),
	(39, '55699855238', '2018-09-08'),
	(40, '10233655577', '2018-09-10'),
	(41, '10233655570', '2018-09-11'),
	(42, '10233655577', '2018-09-05'),
	(43, '10233655567', '2018-09-25'),
	(44, '10233655577', '2018-09-05'),
	(76, '10233655566', '2019-02-25'),
	(77, '18420580019', '2019-03-12'),
	(78, '33157044034', '2019-03-27'),
	(79, '59682679261', '2019-03-27'),
	(80, '23873071704', '2019-04-11'),
	(81, '42971529068', '2019-04-26'),
	(82, '77348752322', '2019-05-11'),
	(83, '30939500929', '2019-05-26'),
	(84, '55691101672', '2019-06-10'),
	(85, '22276440669', '2019-06-25'),
	(86, '40097593204', '2019-07-10'),
	(87, '72175667767', '2019-07-25'),
	(88, '28870267107', '2019-02-25'),
	(89, '51966480792', '2019-03-12'),
	(90, '93539665426', '2019-03-27'),
	(91, '37415866170', '2019-03-27'),
	(92, '67348559107', '2019-04-11'),
	(93, '26939423643', '2019-04-26'),
	(94, '48490962557', '2019-05-11'),
	(95, '87283732602', '2019-02-25'),
	(96, '34913493041', '2019-03-12'),
	(97, '62844287474', '2019-03-27'),
	(98, '25137714989', '2019-03-27'),
	(99, '45247886981', '2019-04-11'),
	(100, '81446196566', '2019-04-26'),
	(101, '32578478626', '2019-05-11'),
	(102, '58641261527', '2019-02-25'),
	(103, '23456504611', '2019-03-12'),
	(104, '42221708300', '2019-03-27'),
	(105, '75999074939', '2019-03-27');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;

-- Copiando estrutura para tabela bd_comercial.produto
DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(100) DEFAULT NULL,
  `descricao_produto` varchar(500) DEFAULT NULL,
  `unid_medida` char(3) DEFAULT NULL,
  `preco` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_comercial.produto: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`codigo`, `nome_produto`, `descricao_produto`, `unid_medida`, `preco`) VALUES
	(1, 'Mouse', 'Mouse Óptico', 'PC', 24.99),
	(2, 'Teclado', 'Teclado USB Genius', 'PC', 19.89),
	(3, 'Monitor 19', 'Monitor LG 19 polegadas', 'PC', 356.69),
	(4, 'Disco SSD', 'Seagate 40GB', 'PC', 399.89),
	(5, 'Laptop Lenovo, 17', 'Laptop Lenovo 17 polegadas 1TB, 6GB Ram', 'PC', 2986.50),
	(6, 'Cabo de Rede', 'Cabo C6', 'MT', 0.36),
	(7, 'Monitor 20', 'Monitor LG 20 polegadas', 'PC', 463.69),
	(8, 'Disco SSD', 'Seagate 80GB', 'PC', 689.89),
	(9, 'Laptop Lenovo, 20', 'Laptop Lenovo 20 polegadas 1TB, 6GB Ram', 'PC', 2986.50),
	(10, 'Teclado e Mouse sem fio', 'Teclado com mouse sem fio', 'PC', 99.90),
	(11, 'Fones de Ouvido Philips', 'Fones de ouvido sem fio', 'PC', 80.00);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
