-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.35-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para dm_comercial
CREATE DATABASE IF NOT EXISTS `dm_comercial` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dm_comercial`;

-- Copiando estrutura para tabela dm_comercial.dim_cliente
CREATE TABLE IF NOT EXISTS `dim_cliente` (
  `SK_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(15) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sexo` char(1) NOT NULL,
  `idade` int(11) NOT NULL,
  `rua` varchar(150) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `uf` char(2) NOT NULL,
  `data_ini` date NOT NULL,
  `data_fim` date DEFAULT NULL,
  PRIMARY KEY (`SK_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela dm_comercial.dim_data
CREATE TABLE IF NOT EXISTS `dim_data` (
  `SK_data` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `dia` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `semana_mes` int(11) NOT NULL,
  `bimestre` int(11) NOT NULL,
  `trimestre` int(11) NOT NULL,
  `semestre` int(11) NOT NULL,
  PRIMARY KEY (`SK_data`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela dm_comercial.fato_financeiro
CREATE TABLE IF NOT EXISTS `fato_financeiro` (
  `cod_fato_financeiro` int(11) NOT NULL AUTO_INCREMENT,
  `SK_cliente` int(11) DEFAULT NULL,
  `SK_data` int(11) DEFAULT NULL,
  `valor_recebido` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_fato_financeiro`),
  KEY `SK_cliente_idx` (`SK_cliente`),
  KEY `SK_data_idx` (`SK_data`),
  CONSTRAINT `SK_clienteFin` FOREIGN KEY (`SK_cliente`) REFERENCES `dim_cliente` (`SK_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SK_dataFin` FOREIGN KEY (`SK_data`) REFERENCES `dim_data` (`SK_data`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
