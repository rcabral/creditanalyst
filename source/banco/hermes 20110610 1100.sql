-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.45-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hermes
--

CREATE DATABASE IF NOT EXISTS hermes;
USE hermes;

--
-- Definition of table `banco`
--

DROP TABLE IF EXISTS `banco`;
CREATE TABLE `banco` (
  `numero` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banco`
--

/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` (`numero`,`nome`) VALUES 
 (1,'Banco do Brasil'),
 (3,'Banco da Amazônia'),
 (4,'Banco do Nordeste'),
 (21,'Banestes'),
 (25,'Banco Alfa'),
 (27,'Besc'),
 (29,'Banerj'),
 (31,'Banco Beg'),
 (33,'Banco Santander Banespa'),
 (36,'Banco Bem'),
 (37,'Banpará'),
 (38,'Banestado'),
 (39,'BEP'),
 (40,'Banco Cargill'),
 (41,'Banrisul'),
 (44,'BVA'),
 (45,'Banco Opportunity'),
 (47,'Banese'),
 (62,'Hipercard'),
 (63,'Ibibank'),
 (65,'Lemon Bank'),
 (66,'Banco Morgan Stanley Dean Witter'),
 (69,'BPN Brasil'),
 (70,'Banco de Brasília – BRB'),
 (72,'Banco Rural'),
 (73,'Banco Popular'),
 (74,'Banco J. Safra'),
 (75,'Banco CR2'),
 (76,'Banco KDB'),
 (96,'Banco BMF'),
 (104,'Caixa Econômica Federal'),
 (107,'Banco BBM'),
 (116,'Banco Único'),
 (151,'Nossa Caixa'),
 (175,'Banco Finasa'),
 (184,'Banco Itaú BBA'),
 (204,'American Express Bank'),
 (208,'Banco Pactual'),
 (212,'Banco Matone'),
 (213,'Banco Arbi'),
 (214,'Banco Dibens'),
 (217,'Banco Joh Deere'),
 (218,'Banco Bonsucesso'),
 (222,'Banco Calyon Brasil'),
 (224,'Banco Clássico'),
 (243,'Banco Stock Máxima'),
 (246,'Banco ABC Brasil'),
 (248,'Banco Boavista Interatlântico'),
 (249,'Investcred Unibanco'),
 (250,'Banco Schahin'),
 (252,'Fininvest'),
 (254,'Paraná Banco'),
 (263,'Banco Cacique'),
 (265,'Banco Fator'),
 (266,'Banco Cédula'),
 (300,'Banco de la Nación Argentina'),
 (318,'Banco BMG'),
 (320,'Banco Industrial e Comercial'),
 (341,'Itau'),
 (347,'Sudameris'),
 (351,'Banco Santander'),
 (353,'Banco Santander Brasil'),
 (356,'ABN Amro Real'),
 (366,'Banco Societe Generale Brasil'),
 (370,'Banco WestLB'),
 (376,'JP Morgan'),
 (389,'Banco Mercantil do Brasil'),
 (394,'Banco Mercantil de Crédito'),
 (399,'HSBC'),
 (409,'Unibanco'),
 (412,'Banco Capital'),
 (422,'Banco Safra'),
 (453,'Banco Rural'),
 (456,'Banco Tokyo Mitsubishi UFJ'),
 (464,'Banco Sumitomo Mitsui Brasileiro'),
 (477,'Citibank'),
 (479,'Itaubank (antigo Bank Boston)'),
 (487,'Deutsche Bank'),
 (488,'Banco Morgan Guaranty'),
 (492,'Banco NMB Postbank'),
 (494,'Banco la República Oriental del Uruguay'),
 (495,'Banco La Provincia de Buenos Aires'),
 (505,'Banco Credit Suisse'),
 (600,'Banco Luso Brasileiro'),
 (604,'Banco Industrial'),
 (610,'Banco VR'),
 (611,'Banco Paulista'),
 (612,'Banco Guanabara'),
 (613,'Banco Pecunia'),
 (623,'Banco Panamericano'),
 (626,'Banco Ficsa'),
 (630,'Banco Intercap'),
 (633,'Banco Rendimento'),
 (634,'Banco Triângulo'),
 (637,'Banco Sofisa'),
 (638,'Banco Prosper'),
 (643,'Banco Pine'),
 (652,'Itaú Holding Financeira'),
 (653,'Banco Indusval'),
 (654,'Banco A.J. Renner'),
 (655,'Banco Votorantim'),
 (707,'Banco Daycoval'),
 (719,'Banif'),
 (721,'Banco Credibel'),
 (734,'Banco Gerdau'),
 (735,'Banco Pottencial'),
 (738,'Banco Morada'),
 (739,'Banco Galvão de Negócios'),
 (740,'Banco Barclays'),
 (741,'BRP'),
 (743,'Banco Semear'),
 (745,'Banco Citibank'),
 (746,'Banco Modal'),
 (747,'Banco Rabobank International'),
 (748,'Banco Cooperativo Sicredi'),
 (749,'Banco Simples'),
 (751,'Dresdner Bank'),
 (752,'BNP Paribas'),
 (753,'Banco Comercial Uruguai'),
 (755,'Banco Merrill Lynch'),
 (756,'Banco Cooperativo do Brasil'),
 (757,'KEB');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;


--
-- Definition of table `benimovel`
--

DROP TABLE IF EXISTS `benimovel`;
CREATE TABLE `benimovel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `possuiOnus` bit(1) NOT NULL,
  `valor` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benimovel`
--

/*!40000 ALTER TABLE `benimovel` DISABLE KEYS */;
INSERT INTO `benimovel` (`id`,`possuiOnus`,`valor`) VALUES 
 (1,0x01,100000),
 (2,0x01,100000),
 (3,0x01,100000),
 (4,0x01,100000),
 (5,0x01,100000),
 (6,0x01,100000);
/*!40000 ALTER TABLE `benimovel` ENABLE KEYS */;


--
-- Definition of table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) DEFAULT NULL,
  `dataDeNascimento` datetime DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `perfilDoCliente_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK96841DDAB7A505EB` (`perfilDoCliente_id`),
  CONSTRAINT `FK96841DDAB7A505EB` FOREIGN KEY (`perfilDoCliente_id`) REFERENCES `perfildocliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cliente`
--

/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`id`,`cpf`,`dataDeNascimento`,`nome`,`rg`,`sexo`,`perfilDoCliente_id`) VALUES 
 (1,'05586878739','1984-02-01 00:00:00','Raphael Oliveira Cabral','207104175','F',6);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


--
-- Definition of table `conjuge`
--

DROP TABLE IF EXISTS `conjuge`;
CREATE TABLE `conjuge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataDeEntradaNoEmpregoAtual` datetime DEFAULT NULL,
  `salario` double NOT NULL,
  `tipoDeVinculoEmpregaticio` int(11) DEFAULT NULL,
  `profissao_codigoCBO` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9BEB7BCB7DC9DD45` (`profissao_codigoCBO`),
  CONSTRAINT `FK9BEB7BCB7DC9DD45` FOREIGN KEY (`profissao_codigoCBO`) REFERENCES `profissao` (`codigoCBO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conjuge`
--

/*!40000 ALTER TABLE `conjuge` DISABLE KEYS */;
/*!40000 ALTER TABLE `conjuge` ENABLE KEYS */;


--
-- Definition of table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
CREATE TABLE `contrato` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` datetime DEFAULT NULL,
  `proposta_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE20F773CD5DAA709` (`proposta_id`),
  CONSTRAINT `FKE20F773CD5DAA709` FOREIGN KEY (`proposta_id`) REFERENCES `proposta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contrato`
--

/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` (`id`,`data`,`proposta_id`) VALUES 
 (1,'2011-06-04 21:37:33',3),
 (2,'2011-06-04 22:00:23',4),
 (3,'2011-06-04 22:08:07',5),
 (4,'2011-06-04 22:52:58',6),
 (5,'2011-06-07 22:21:06',7);
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;


--
-- Definition of table `contrato_prestacao`
--

DROP TABLE IF EXISTS `contrato_prestacao`;
CREATE TABLE `contrato_prestacao` (
  `Contrato_id` bigint(20) NOT NULL,
  `prestacoes_id` bigint(20) NOT NULL,
  UNIQUE KEY `prestacoes_id` (`prestacoes_id`),
  KEY `FKF88D30B1D02DF848` (`prestacoes_id`),
  KEY `FKF88D30B1E05FE09` (`Contrato_id`),
  CONSTRAINT `FKF88D30B1D02DF848` FOREIGN KEY (`prestacoes_id`) REFERENCES `prestacao` (`id`),
  CONSTRAINT `FKF88D30B1E05FE09` FOREIGN KEY (`Contrato_id`) REFERENCES `contrato` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contrato_prestacao`
--

/*!40000 ALTER TABLE `contrato_prestacao` DISABLE KEYS */;
INSERT INTO `contrato_prestacao` (`Contrato_id`,`prestacoes_id`) VALUES 
 (1,1),
 (1,2),
 (1,3),
 (1,4),
 (1,5),
 (1,6),
 (1,7),
 (1,8),
 (1,9),
 (1,10),
 (1,11),
 (1,12),
 (2,13),
 (2,14),
 (2,15),
 (2,16),
 (2,17),
 (2,18),
 (2,19),
 (2,20),
 (2,21),
 (2,22),
 (2,23),
 (2,24),
 (3,25),
 (3,26),
 (3,27),
 (3,28),
 (3,29),
 (3,30),
 (3,31),
 (3,32),
 (3,33),
 (3,34),
 (3,35),
 (3,36),
 (4,37),
 (4,38),
 (4,39),
 (4,40),
 (4,41),
 (4,42),
 (4,43),
 (4,44),
 (4,45),
 (4,46),
 (4,47),
 (4,48),
 (5,49),
 (5,50),
 (5,51),
 (5,52),
 (5,53),
 (5,54),
 (5,55),
 (5,56),
 (5,57),
 (5,58),
 (5,59),
 (5,60);
/*!40000 ALTER TABLE `contrato_prestacao` ENABLE KEYS */;


--
-- Definition of table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE `endereco` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `nomeDoLogrado` varchar(255) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `tipoDeLogradouro` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endereco`
--

/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` (`id`,`bairro`,`cep`,`municipio`,`nomeDoLogrado`,`numero`,`tipoDeLogradouro`,`uf`) VALUES 
 (1,'Covanca','244121630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ'),
 (2,'Covanca','24412630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ'),
 (3,'Covanca','244121630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ'),
 (4,'Covanca','244121630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ'),
 (5,'Covanca','24412630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ'),
 (6,'Covanca','24412630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ'),
 (7,'Covanca','24412630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ'),
 (8,'Covanca','24412630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ'),
 (9,'Covanca','24412630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;


--
-- Definition of table `escoragem`
--

DROP TABLE IF EXISTS `escoragem`;
CREATE TABLE `escoragem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ativo` bit(1) NOT NULL,
  `dataDeInicioDaAmostragem` datetime DEFAULT NULL,
  `dataFinalDaAmostragem` datetime DEFAULT NULL,
  `descricao` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `escoragem`
--

/*!40000 ALTER TABLE `escoragem` DISABLE KEYS */;
INSERT INTO `escoragem` (`id`,`ativo`,`dataDeInicioDaAmostragem`,`dataFinalDaAmostragem`,`descricao`,`nome`) VALUES 
 (1,0x00,NULL,NULL,'teste','teste'),
 (2,0x00,NULL,NULL,'Teste02','Teste02'),
 (3,0x00,NULL,NULL,'cdscdscs','cdscds'),
 (7,0x00,NULL,NULL,'teste04','teste04'),
 (8,0x00,NULL,NULL,'teste05','teste05'),
 (9,0x00,NULL,NULL,'teste06','teste06'),
 (10,0x00,NULL,NULL,'teste07','teste07'),
 (11,0x00,NULL,NULL,'teste08','teste08'),
 (12,0x00,NULL,NULL,'teste09','teste09'),
 (13,0x00,NULL,NULL,'teste10','teste10'),
 (14,0x00,NULL,NULL,'teste11','teste11'),
 (17,0x00,NULL,NULL,'teste12','teste12'),
 (18,0x00,NULL,NULL,'teste13','teste13'),
 (19,0x00,NULL,NULL,'teste13','teste13'),
 (20,0x00,NULL,NULL,'teste14','teste14'),
 (21,0x00,'2011-12-01 00:00:00','2011-12-01 00:00:00','teste14','teste14'),
 (22,0x00,'2011-12-01 00:00:00','2011-12-01 00:00:00','teste15','teste15'),
 (23,0x00,NULL,NULL,'teste15','teste15'),
 (24,0x00,'2011-12-01 00:00:00','2011-12-01 00:00:00','teste16','teste16'),
 (25,0x00,NULL,NULL,'teste16','teste16'),
 (26,0x00,NULL,NULL,'teste17','teste17'),
 (27,0x01,NULL,NULL,'fabio','fabio');
/*!40000 ALTER TABLE `escoragem` ENABLE KEYS */;


--
-- Definition of table `escoragem_regradeinferencia`
--

DROP TABLE IF EXISTS `escoragem_regradeinferencia`;
CREATE TABLE `escoragem_regradeinferencia` (
  `Escoragem_id` bigint(20) NOT NULL,
  `regrasDeInferencia_id` bigint(20) NOT NULL,
  UNIQUE KEY `regrasDeInferencia_id` (`regrasDeInferencia_id`),
  KEY `FKC8EBF9CF6106171E` (`regrasDeInferencia_id`),
  KEY `FKC8EBF9CF141CB80B` (`Escoragem_id`),
  CONSTRAINT `FKC8EBF9CF141CB80B` FOREIGN KEY (`Escoragem_id`) REFERENCES `escoragem` (`id`),
  CONSTRAINT `FKC8EBF9CF6106171E` FOREIGN KEY (`regrasDeInferencia_id`) REFERENCES `regradeinferencia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `escoragem_regradeinferencia`
--

/*!40000 ALTER TABLE `escoragem_regradeinferencia` DISABLE KEYS */;
INSERT INTO `escoragem_regradeinferencia` (`Escoragem_id`,`regrasDeInferencia_id`) VALUES 
 (1,52),
 (2,53),
 (3,58),
 (3,59),
 (7,65),
 (7,66),
 (8,67),
 (8,68),
 (9,69),
 (9,70),
 (10,71),
 (10,72),
 (11,73),
 (11,74),
 (12,75),
 (12,76),
 (13,77),
 (13,78),
 (14,87),
 (14,88),
 (17,86),
 (18,89),
 (18,90),
 (19,91),
 (19,92),
 (20,93),
 (20,94),
 (21,95),
 (21,96),
 (22,97),
 (22,98),
 (23,99),
 (23,100),
 (24,101),
 (24,102),
 (25,122),
 (26,105),
 (26,106),
 (27,123),
 (27,124);
/*!40000 ALTER TABLE `escoragem_regradeinferencia` ENABLE KEYS */;


--
-- Definition of table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE `funcionario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) DEFAULT NULL,
  `dataDeNascimento` datetime DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `matricula` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `endereco_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`matricula`),
  KEY `FKB3A9C5BBF18422E9` (`endereco_id`),
  CONSTRAINT `FKB3A9C5BBF18422E9` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funcionario`
--

/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` (`id`,`cpf`,`dataDeNascimento`,`nome`,`rg`,`sexo`,`cargo`,`login`,`matricula`,`senha`,`endereco_id`) VALUES 
 (1,'05586878739','1984-02-01 00:00:00','Raphael Oliveira Cabral','207104175','M','GERENTE_DE_ANALISE_DE_CREDITO','rcabral',NULL,'7afd03aab78788a34b87244e24ebf181',1),
 (2,'05586878739','1984-02-01 00:00:00','Sérgio Lista','207104175','M','ANALISTA_DE_CREDITO','lista',NULL,'973133185365c795137a514fccca251d',3),
 (3,'05586878739','2011-02-01 00:00:00','Raphael Oliveira Cabral','207104175','M','GERENTE_DE_ANALISE_DE_CREDITO','vasco',NULL,'827ccb0eea8a706c4c34a16891f84e7b',4);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;


--
-- Definition of table `perfildocliente`
--

DROP TABLE IF EXISTS `perfildocliente`;
CREATE TABLE `perfildocliente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataDeAberturaDaContaMaisAntiga` datetime DEFAULT NULL,
  `dataDeEntradaNoEmpregoAtual` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `estadoCivil` varchar(255) DEFAULT NULL,
  `nivelDeInstrucao` varchar(255) DEFAULT NULL,
  `numeroDeDependentes` int(11) NOT NULL,
  `possuiChequeEspecial` bit(1) NOT NULL,
  `possuiSeguroDeAutmovel` bit(1) NOT NULL,
  `quantidadeDeVeiculos` int(11) NOT NULL,
  `rendaEstimada` double NOT NULL,
  `rendaMensalComprovada` double NOT NULL,
  `salario` double NOT NULL,
  `tempoDeResidenciaAtualEmAnos` int(11) NOT NULL,
  `tipoDeResidencia` varchar(255) DEFAULT NULL,
  `tipoDeVincluloEmpregaticio` int(11) DEFAULT NULL,
  `tipoDeVinculoComCredor` varchar(255) DEFAULT NULL,
  `conjuge_id` bigint(20) DEFAULT NULL,
  `endereco_id` bigint(20) DEFAULT NULL,
  `profissao_codigoCBO` bigint(20) DEFAULT NULL,
  `telefoneCelular_id` bigint(20) DEFAULT NULL,
  `telefoneResidencial_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9C4FA263C3139308` (`telefoneResidencial_id`),
  KEY `FK9C4FA263F18422E9` (`endereco_id`),
  KEY `FK9C4FA2639CA874B` (`telefoneCelular_id`),
  KEY `FK9C4FA2634FB3BE2B` (`conjuge_id`),
  KEY `FK9C4FA2637DC9DD45` (`profissao_codigoCBO`),
  CONSTRAINT `FK9C4FA2634FB3BE2B` FOREIGN KEY (`conjuge_id`) REFERENCES `conjuge` (`id`),
  CONSTRAINT `FK9C4FA2637DC9DD45` FOREIGN KEY (`profissao_codigoCBO`) REFERENCES `profissao` (`codigoCBO`),
  CONSTRAINT `FK9C4FA2639CA874B` FOREIGN KEY (`telefoneCelular_id`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK9C4FA263C3139308` FOREIGN KEY (`telefoneResidencial_id`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK9C4FA263F18422E9` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perfildocliente`
--

/*!40000 ALTER TABLE `perfildocliente` DISABLE KEYS */;
INSERT INTO `perfildocliente` (`id`,`dataDeAberturaDaContaMaisAntiga`,`dataDeEntradaNoEmpregoAtual`,`email`,`estadoCivil`,`nivelDeInstrucao`,`numeroDeDependentes`,`possuiChequeEspecial`,`possuiSeguroDeAutmovel`,`quantidadeDeVeiculos`,`rendaEstimada`,`rendaMensalComprovada`,`salario`,`tempoDeResidenciaAtualEmAnos`,`tipoDeResidencia`,`tipoDeVincluloEmpregaticio`,`tipoDeVinculoComCredor`,`conjuge_id`,`endereco_id`,`profissao_codigoCBO`,`telefoneCelular_id`,`telefoneResidencial_id`) VALUES 
 (1,'2010-11-01 00:00:00','2010-06-09 00:00:00','raphaelcabralnet@gmail.com','CASADO','N8',3,0x01,0x01,1,0,500,500,26,'PROPRIA',NULL,'NENHUM',NULL,2,212405,1,2),
 (2,'2010-11-01 00:00:00','2010-06-09 00:00:00','raphaelcabralnet@gmail.com','CASADO','N8',3,0x01,0x01,1,0,500,500,26,'PROPRIA',NULL,'NENHUM',NULL,5,212405,3,4),
 (3,'2010-11-01 00:00:00','2010-06-09 00:00:00','raphaelcabralnet@gmail.com','CASADO','N8',3,0x01,0x01,1,0,500,500,26,'PROPRIA',NULL,'NENHUM',NULL,6,212405,5,6),
 (4,'2010-11-01 00:00:00','2010-06-09 00:00:00','raphaelcabralnet@gmail.com','CASADO','N8',3,0x01,0x01,1,0,500,500,26,'PROPRIA',NULL,'NENHUM',NULL,7,212405,7,8),
 (5,'2010-11-01 00:00:00','2010-06-09 00:00:00','raphaelcabralnet@gmail.com','CASADO','N8',3,0x01,0x01,1,0,500,500,26,'PROPRIA',NULL,'NENHUM',NULL,8,212405,9,10),
 (6,'2010-11-01 00:00:00','2010-06-09 00:00:00','raphaelcabralnet@gmail.com','CASADO','N8',3,0x01,0x01,1,0,500,500,26,'PROPRIA',NULL,'NENHUM',NULL,9,212405,11,12);
/*!40000 ALTER TABLE `perfildocliente` ENABLE KEYS */;


--
-- Definition of table `perfildocliente_benimovel`
--

DROP TABLE IF EXISTS `perfildocliente_benimovel`;
CREATE TABLE `perfildocliente_benimovel` (
  `PerfilDoCliente_id` bigint(20) NOT NULL,
  `bensImoveis_id` bigint(20) NOT NULL,
  UNIQUE KEY `bensImoveis_id` (`bensImoveis_id`),
  KEY `FK2D8E096130E3908C` (`bensImoveis_id`),
  KEY `FK2D8E0961B7A505EB` (`PerfilDoCliente_id`),
  CONSTRAINT `FK2D8E096130E3908C` FOREIGN KEY (`bensImoveis_id`) REFERENCES `benimovel` (`id`),
  CONSTRAINT `FK2D8E0961B7A505EB` FOREIGN KEY (`PerfilDoCliente_id`) REFERENCES `perfildocliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perfildocliente_benimovel`
--

/*!40000 ALTER TABLE `perfildocliente_benimovel` DISABLE KEYS */;
INSERT INTO `perfildocliente_benimovel` (`PerfilDoCliente_id`,`bensImoveis_id`) VALUES 
 (1,1),
 (2,2),
 (3,3),
 (4,4),
 (5,5),
 (6,6);
/*!40000 ALTER TABLE `perfildocliente_benimovel` ENABLE KEYS */;


--
-- Definition of table `plano`
--

DROP TABLE IF EXISTS `plano`;
CREATE TABLE `plano` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantidadeDePrestacoes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plano`
--

/*!40000 ALTER TABLE `plano` DISABLE KEYS */;
/*!40000 ALTER TABLE `plano` ENABLE KEYS */;


--
-- Definition of table `prestacao`
--

DROP TABLE IF EXISTS `prestacao`;
CREATE TABLE `prestacao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataDePagamento` datetime DEFAULT NULL,
  `dataDeVencimento` datetime DEFAULT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestacao`
--

/*!40000 ALTER TABLE `prestacao` DISABLE KEYS */;
INSERT INTO `prestacao` (`id`,`dataDePagamento`,`dataDeVencimento`,`numero`) VALUES 
 (1,NULL,'2017-01-24 00:00:00',1),
 (2,NULL,'2017-01-24 00:00:00',2),
 (3,NULL,'2017-01-24 00:00:00',3),
 (4,NULL,'2017-01-24 00:00:00',4),
 (5,NULL,'2017-01-24 00:00:00',5),
 (6,NULL,'2017-01-24 00:00:00',6),
 (7,NULL,'2017-01-24 00:00:00',7),
 (8,NULL,'2017-01-24 00:00:00',8),
 (9,NULL,'2017-01-24 00:00:00',9),
 (10,NULL,'2017-01-24 00:00:00',10),
 (11,NULL,'2017-01-24 00:00:00',11),
 (12,NULL,'2017-01-24 00:00:00',12),
 (13,NULL,'2011-07-05 00:00:00',1),
 (14,NULL,'2011-08-05 00:00:00',2),
 (15,NULL,'2011-10-05 00:00:00',3),
 (16,NULL,'2012-01-05 00:00:00',4),
 (17,NULL,'2012-05-05 00:00:00',5),
 (18,NULL,'2012-10-05 00:00:00',6),
 (19,NULL,'2013-04-05 00:00:00',7),
 (20,NULL,'2013-11-05 00:00:00',8),
 (21,NULL,'2014-07-05 00:00:00',9),
 (22,NULL,'2015-04-05 00:00:00',10),
 (23,NULL,'2016-02-05 00:00:00',11),
 (24,NULL,'2017-01-05 00:00:00',12),
 (25,NULL,'2011-07-05 00:00:00',1),
 (26,NULL,'2011-08-05 00:00:00',2),
 (27,NULL,'2011-09-05 00:00:00',3),
 (28,NULL,'2011-10-05 00:00:00',4),
 (29,NULL,'2011-11-05 00:00:00',5),
 (30,NULL,'2011-12-05 00:00:00',6),
 (31,NULL,'2012-01-05 00:00:00',7),
 (32,NULL,'2012-02-05 00:00:00',8),
 (33,NULL,'2012-03-05 00:00:00',9),
 (34,NULL,'2012-04-05 00:00:00',10),
 (35,NULL,'2012-05-05 00:00:00',11),
 (36,NULL,'2012-06-05 00:00:00',12),
 (37,NULL,'2011-06-21 00:00:00',1),
 (38,NULL,'2011-07-21 00:00:00',2),
 (39,NULL,'2011-08-21 00:00:00',3),
 (40,NULL,'2011-09-21 00:00:00',4),
 (41,NULL,'2011-10-21 00:00:00',5),
 (42,NULL,'2011-11-21 00:00:00',6),
 (43,NULL,'2011-12-21 00:00:00',7),
 (44,NULL,'2012-01-21 00:00:00',8),
 (45,NULL,'2012-02-21 00:00:00',9),
 (46,NULL,'2012-03-21 00:00:00',10),
 (47,NULL,'2012-04-21 00:00:00',11),
 (48,NULL,'2012-05-21 00:00:00',12),
 (49,NULL,'2011-06-07 00:00:00',1),
 (50,NULL,'2011-07-07 00:00:00',2),
 (51,NULL,'2011-08-07 00:00:00',3),
 (52,NULL,'2011-09-07 00:00:00',4),
 (53,NULL,'2011-10-07 00:00:00',5),
 (54,NULL,'2011-11-07 00:00:00',6),
 (55,NULL,'2011-12-07 00:00:00',7),
 (56,NULL,'2012-01-07 00:00:00',8),
 (57,NULL,'2012-02-07 00:00:00',9),
 (58,NULL,'2012-03-07 00:00:00',10),
 (59,NULL,'2012-04-07 00:00:00',11),
 (60,NULL,'2012-05-07 00:00:00',12);
/*!40000 ALTER TABLE `prestacao` ENABLE KEYS */;


--
-- Definition of table `profissao`
--

DROP TABLE IF EXISTS `profissao`;
CREATE TABLE `profissao` (
  `codigoCBO` bigint(20) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`codigoCBO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profissao`
--

/*!40000 ALTER TABLE `profissao` DISABLE KEYS */;
INSERT INTO `profissao` (`codigoCBO`,`descricao`) VALUES 
 (1,'ADMINISTRADOR'),
 (2,'ADVOGADO'),
 (3,'AGENTE ADMINISTRATIVO'),
 (4,'AGENTE E REPRESENTANTE COMERCIAL'),
 (5,'AGRÔNOMO E AFINS'),
 (6,'ANALISTA DE SEGUROS E DE SEGURANÇA NO TRABALHO'),
 (7,'ANALISTA DE SISTEMAS'),
 (8,'ESPECIALISTA EM INFORMÁTICA'),
 (9,'APRESENTADOR'),
 (10,'ATLETA, DESPORTISTA'),
 (11,'ATOR'),
 (12,'BANCÁRIO'),
 (13,'BIBLIOTECÁRIO'),
 (14,'BIÓLOGO'),
 (15,'BOLSISTA'),
 (16,'BOMBEIRO MILITAR'),
 (17,'CANTOR E COMPOSITOR'),
 (18,'CENÓGRAFO'),
 (19,'CINEGRAFISTA'),
 (20,'COMISSÁRIO DE BORDO'),
 (21,'DECORADOR'),
 (22,'DELEGADO DE POLÍCIA'),
 (23,'DESENHISTA INDUSTRIAL (DESIGNER)'),
 (24,'DESENHISTA TÉCNICO E MODELISTA'),
 (25,'DIPLOMATA E AFINS'),
 (26,'DIRETOR DE ORGANISMO NÃO-GOVERNAMENTAL'),
 (27,'DIRETOR DE ESTABELECIMENTO DE ENSINO OU DE OUTRAS ORGANIZAÇÕES'),
 (28,'DIRIGENTE DA ADMINISTRAÇÃO PÚBLICA'),
 (29,'ECONOMISTA'),
 (30,'EMPRESÁRIO E PRODUTOR DE ESPETÁCULOS'),
 (31,'ENFERMEIRO DE NÍVEL SUPERIOR'),
 (32,'ENGENHEIRO'),
 (33,'FÍSICO'),
 (34,'FONOAUDIÓLOGO'),
 (35,'GEÓGRAFO'),
 (36,'GERENTE DE PRODUÇÃO'),
 (37,'GERENTE OU SUPERVISOR'),
 (38,'INSPETOR DE POLÍCIA'),
 (39,'INSTRUTOR E PROFESSOR DE ESCOLAS LIVRES'),
 (40,'JOALHEIRO'),
 (41,'JORNALISTA'),
 (42,'JUIZ'),
 (43,'LOCUTOR, COMENTARISTA'),
 (44,'MATEMÁTICO'),
 (45,'MÉDICO, ODONTÓLOGO E AFINS'),
 (46,'MILITAR DA AERONÁUTICA'),
 (47,'MILITAR DA MARINHA'),
 (48,'MILITAR DA RESERVA'),
 (49,'MILITAR DO EXÉRCITO'),
 (50,'MILITAR REFORMADO'),
 (51,'MINISTRO DE TRIBUNAL'),
 (52,'MOTORISTA'),
 (53,'MÚSICO'),
 (54,'OCUPANTE DE CARGO DE DIREÇÃO'),
 (55,'OUTROS PROFISSIONAIS DO ESPETÁCULO E DAS ARTES'),
 (56,'PEDAGOGO'),
 (57,'PENSIONISTA'),
 (58,'PESCADOR'),
 (59,'PILOTO DE AERONAVES'),
 (60,'POLICIAL'),
 (61,'PRESIDENTE DA REPÚBLICA'),
 (62,'PRODUTOR NA EXPLORAÇÃO AGROPECUÁRIA'),
 (63,'PROFESSOR DO ENSINO FUNDAMENTAL'),
 (64,'PROFESSOR DO ENSINO MÉDIO'),
 (65,'PROFESSOR DO ENSINO SUPERIOR'),
 (66,'PROFISSIONAL DA EDUCAÇÃO FÍSICA (EXCETO PROFESSOR)'),
 (67,'PROFISSIONAL DE MARKETING'),
 (68,'PROPRIETÁRIO DE IMÓVEL, RECEBENDO RENDIMENTO DE ALUGUEL'),
 (69,'PSICÓLOGO'),
 (70,'SACERDOTE'),
 (71,'SENADOR'),
 (72,'SERVIDOR DE NÍVEL SUPERIOR NAS ATIVIDADES DE FISCALIZAÇÃO'),
 (73,'SERVIDOR DE NÍVEL SUPERIOR NAS ATIVIDADES DE GESTÃO GOVERNAMENTAL'),
 (74,'SERVIDOR DE NÍVEL SUPERIOR NAS ATIVIDADES DE PESQUISA ECONÔMICA'),
 (75,'SERVIDOR PÚBLICO ESTADUAL'),
 (76,'SERVIDOR PÚBLICO FEDERAL'),
 (77,'SERVIDOR PÚBLICO MUNICIPAL'),
 (78,'SUPERVISOR DE VENDAS E PRESTAÇÃO DE SERVIÇOS DO COMÉRCIO'),
 (79,'TABELIÃO E DEMAIS SERVENTUÁRIOS DE JUSTIÇA'),
 (80,'TÉCNICO DA PRODUÇÃO AGROPECUÁRIA'),
 (81,'TÉCNICO DAS CIÊNCIAS ADMINISTRATIVAS'),
 (82,'TÉCNICO DE LABORATÓRIO E RAIOS X E OUTROS EQUIPAMENTOS'),
 (83,'TÉCNICO EM BIOLOGIA'),
 (84,'TÉCNICO EM CIÊNCIAS FÍSICAS'),
 (85,'TÉCNICO EM CONSTRUÇÃO CIVIL, DE EDIFICAÇÕES E OBRAS DE INFRA-ESTRUTURA'),
 (86,'TÉCNICO EM ELETRÔNICA'),
 (87,'TÉCNICO EM ELETRO-ELETRÔNICA E FOTÔNICA'),
 (88,'TÉCNICO EM INFORMÁTICA'),
 (89,'TÉCNICO EM METALMECÂNICA'),
 (90,'TÉCNICO EM NAVEGAÇÃO AÉREA'),
 (91,'TÉCNICOS EM ESTATÍSTICA'),
 (92,'TRABALHADOR DA FABRICAÇÃO DE ALIMENTOS'),
 (93,'TRABALHADOR DA FABRICAÇÃO E INSTALAÇÃO ELETRO-ELETRÔNICA'),
 (94,'TRABALHADOR DA INDÚSTRIA EXTRATIVA'),
 (95,'TRABALHADOR DA TRANSFORMAÇÃO DE METAIS E COMPÓSITOS'),
 (96,'TRABALHADOR DAS INDÚSTRIAS DE MADEIRA E DO MOBILIÁRIO'),
 (97,'TRABALHADOR DA INDÚSTRIA QUÍMICA'),
 (98,'TRABALHADOR DAS INDÚSTRIAS TÊXTEIS, DO CURTIMENTO, DO VESTUÁRIO'),
 (99,'TRABALHADOR DE ATENDIMENTO AO PÚBLICO'),
 (100,'TRABALHADOR DE INSTALAÇÕES E MÁQUINAS DE FABRICAÇÃO DE CELULOSE E PAPEL'),
 (101,'TRABALHADOR DE INSTALAÇÕES SIDERÚRGICAS E DE MATERIAIS DE CONSTRUÇÃO'),
 (102,'TRABALHADOR DE REPARAÇÃO E MANUTENÇÃO'),
 (103,'TRABALHADOR DOS SERVIÇOS DE ADMINISTRAÇÃO DE EDIFÍCIOS'),
 (104,'CABELEREIRO, BARBEIRO'),
 (105,'TRABALHADOR DOS SERVIÇOS DE HOTELARIA'),
 (106,'TRABALHADOR DOS SERVIÇOS DE SAÚDE'),
 (107,'TRABALHADOR DOS SERVIÇOS DOMÉSTICOS EM GERAL'),
 (108,'TRABALHADOR NA EXPLORAÇÃO AGROPECUÁRIA'),
 (109,'TRABALHADORES DA INDÚSTRIA DE CALÇADOS'),
 (110,'PATOLOGISTA (VETERINÁRIO)'),
 (111,'TRABALHADORES DOS SERVIÇOS FUNERÁRIOS'),
 (112,'VENDEDOR'),
 (113,'VETERINÁRIO'),
 (114,'TÉCNICO DAS CIÊNCIAS CONTÁBEIS'),
 (115,'CONTADOR'),
 (116,'AUDITOR'),
 (117,'PROCURADOR'),
 (118,'CONSULTOR JURÍDICO'),
 (119,'PROMOTOR DE JUSTIÇA'),
 (120,'DEFENSOR PÚBLICO'),
 (121,'ASSISTENTE ADMINISTRATIVO'),
 (122,'AUXILIAR ADMINISTRATIVO'),
 (123,'CORRETOR'),
 (124,'LEILOEIRO'),
 (125,'DESENVOLVEDOR DE SOFTWARE'),
 (126,'ADMINISTRADOR DE REDES'),
 (127,'ADMINISTRADOR DE BANCOS DE DADOS'),
 (128,'ARTISTAS DE ARTES POPULARES E MODELOS'),
 (129,'DIRETOR DE ESPETÁCULOS'),
 (130,'ECONOMIÁRIO'),
 (131,'ESCRITURÁRIO'),
 (132,'DOCUMENTALISTA'),
 (133,'ARQUIVÓLOGO'),
 (134,'MUSEÓLOGO'),
 (135,'BIOMÉDICO E AFINS'),
 (136,'ESTAGIÁRIO E AFINS'),
 (137,'DECORADOR DE INTERIORES'),
 (138,'FOTÓGRAFO'),
 (139,'GUIA DE TURISMO'),
 (140,'TÉCNICOS EM OPERAÇÃO DE MÁQUINAS DE TRATAMENTO DE DADOS'),
 (141,'AGENTE DE VIAGEM E AFINS'),
 (142,'VITRINISTA'),
 (143,'ESCULTOR'),
 (144,'PINTOR ARTÍSTICO E AFINS'),
 (145,'EMPRESA INDUSTRIAL'),
 (146,'EMPRESA COMERCIAL'),
 (147,'EMPRESA PRESTADORA DE SERVIÇOS'),
 (148,'BAILARINO'),
 (149,'COREÓGRAFO'),
 (150,'NUTRICIONISTA'),
 (151,'FARMACÊUTICO'),
 (152,'QUÍMICO'),
 (153,'METEOROLOGISTA'),
 (154,'GEÓLOGO'),
 (155,'OCEANÓGRAFO'),
 (156,'ASTRÔNOMO'),
 (157,'GEOFÍSICO'),
 (158,'FISIOTERAPEUTA'),
 (159,'TERAPEUTA OCUPACIONAL'),
 (160,'HISTORIADOR'),
 (161,'GERENTE DE OPERAÇÕES'),
 (162,'GERENTE DE ÁREAS DE APOIO'),
 (163,'DETETIVE'),
 (164,'VIDREIRO'),
 (165,'CERAMISTA'),
 (166,'REPÓRTER'),
 (167,'DESEMBARGADOR'),
 (168,'ESTATÍSTICO'),
 (169,'ATUÁRIO'),
 (170,'MEMBRO DO MINISTÉRIO PÚBLICO'),
 (171,'CONDUTOR E OPERADOR DE ROBÔS'),
 (172,'CONDUTOR E OPERADOR DE VEÍCULOS E EQUIPAMENTOS DE MOVIMENTAÇÃO DE CARGA'),
 (173,'ARRANJADOR'),
 (174,'REGENTE DE ORQUESTRA OU CORAL'),
 (175,'ORIENTADOR EDUCACIONAL'),
 (176,'CAÇADOR'),
 (177,'EXTRATIVISTA FLORESTAL'),
 (178,'PREFEITO'),
 (179,'COMANDANTE DE EMBARCAÇÕES E OFICIAIS DE MÁQUINAS'),
 (180,'GOVERNADOR'),
 (181,'MINISTRO DE ESTADO E DA DIPLOMACIA'),
 (182,'PROFISSIONAL DE PUBLICIDADE'),
 (183,'PROFISSIONAL DA COMERCIALIZAÇÃO'),
 (184,'PSICANALISTA'),
 (185,'MEMBRO DE ORDENS OU SEITAS RELIGIOSAS'),
 (186,'DEPUTADO ESTADUAL'),
 (187,'VEREADOR'),
 (188,'DEPUTADO FEDERAL'),
 (189,'TÉCNICO EM CIÊNCIAS QUÍMICAS'),
 (190,'SERVENTUÁRIO DA JUSTIÇA'),
 (191,'TÉCNICO EM NAVEGAÇÃO MARÍTIMA'),
 (192,'FISCAL DE TRIBUTAÇÃO DE NÍVEL MÉDIO'),
 (193,'TÉCNICO EM NAVEGAÇÃO FLUVIAL'),
 (194,'TÉCNICO EM NAVEGAÇÃO METROFERROVIÁRIA'),
 (195,'TRABALHADOR DA FABRICAÇÃO DE BEBIDAS'),
 (196,'TRABALHADOR DA FABRICAÇÃO DE  FUMO'),
 (197,'TRABALHADOR DA FABRICAÇÃO DE AGROINDÚSTRIAS'),
 (198,'TRABALHADOR DA CONSTRUÇÃO CIVIL'),
 (199,'TRABALHADOR DAS INDÚSTRIAS DAS ARTES GRÁFICAS'),
 (200,'TRABALHADOR DA INDÚSTRIA PETROQUÍMICA'),
 (201,'TRABALHADOR DA INDÚSTRIA DA BORRACHA E PLÁSTICO E AFINS'),
 (202,'DESPACHANTE'),
 (203,'RECENSEADOR'),
 (204,'MANICURE, PEDICURE'),
 (205,'TRABALHADOR DOS SERVIÇOS DE ALIMENTAÇÃO'),
 (206,'PRESTADOR DE SERVIÇOS DO COMÉRCIO'),
 (207,'AMBULANTE'),
 (208,'CAIXEIRO-VIAJANTE'),
 (209,'CAMELÔ'),
 (210,'ZOOTECNISTA'),
 (211,'SOCIÓLOGO'),
 (212,'ANTROPÓLOGO'),
 (213,'ARQUEÓLOGO'),
 (214,'ARQUITETO'),
 (215,'MASSAGISTA'),
 (216,'ESTETICISTA'),
 (217,'OCUPANTE DE CARGO DE ASSESSORAMENTO SUPERIOR'),
 (218,'OCUPANTE DE CARGO DE ASSISTÊNCIA INTERMEDIÁRIA'),
 (219,'SERVIDOR DE NÍVEL SUPERIOR NAS ATIVIDADES DE FINANÇAS'),
 (220,'SERVIDOR DE NÍVEL SUPERIOR NAS ATIVIDADES DE CONTROLE'),
 (221,'SERVIDOR DE NÍVEL SUPERIOR NAS ATIVIDADES DE PLANEJAMENTO'),
 (222,'TRABALHADOR DOS SERVIÇOS DE CONSERVAÇÃO DE EDIFÍCIOS'),
 (223,'TRABALHADOR DOS SERVIÇOS DE MANUTENÇÃO DE EDIFÍCIOS'),
 (228,'ESTUDANTE'),
 (229,'TRABALHADOR AGRÍCOLA'),
 (230,'RELAÇÕES PÚBLICAS'),
 (231,'PUBLICITÁRIO'),
 (232,'AUTÔNOMO'),
 (233,'AÇOUGUEIRO'),
 (234,'ADIDO ESTRANGEIRO'),
 (235,'ADJUNTO ADMINISTRATIVO'),
 (236,'ADMINISTRADOR DE AEROPORTO'),
 (237,'ADMINISTRADOR DE EMPRESA'),
 (238,'ADMINISTRADOR DE FAZENDA'),
 (239,'ADMINISTRADOR RURAL'),
 (240,'ADUBADO'),
 (241,'AEROMOÇA'),
 (242,'AERONAUTA'),
 (243,'AEROVIÁRIO'),
 (244,'AFIADOR DE FERRAMENTAS'),
 (245,'AFIADOR DE METAIS PRECIOSOS'),
 (246,'AGENCIADOR'),
 (247,'AGENTE AUTÔNOMO'),
 (248,'AGENTE COMERCIAL'),
 (249,'AGENTE DE CORREIO'),
 (250,'AGENTE DE ESTAÇÃO'),
 (251,'AGENTE DE FISCALIZAÇÃO DE IMPOSTO'),
 (252,'AGENTE DE INVESTIMENTO'),
 (253,'AGENTE DE POLICIA'),
 (254,'AGENTE DE SEGUROS'),
 (255,'AGENTE DE TELECOMUNICAÇÕES'),
 (256,'AGENTE DE TURISMO'),
 (257,'AGENTE DE VENDAS'),
 (258,'AGENTE EXPORTAÇÃO'),
 (259,'AGENTE FISCAL'),
 (260,'AGENTE PENITENCIÁRIO'),
 (261,'AGENTE TÉCNICO'),
 (262,'AGENTE TRIBUTÁRIO'),
 (263,'AGENTE TRIBUTÁRIO ESTADUAL'),
 (264,'AGRICULTOR'),
 (265,'AGRIMENSOR'),
 (266,'AGROINDUSTRIAL'),
 (267,'AGROPECUARISTA'),
 (268,'AJUDANTE'),
 (269,'AJUDANTE DE ARMADOR'),
 (270,'AJUDANTE DE BOMBEIRO'),
 (271,'AJUDANTE DE CAMINHÃO'),
 (272,'AJUDANTE DE CARPINTEIRO'),
 (273,'AJUDANTE DE DESPACHANTE'),
 (274,'AJUDANTE DE ELETRICISTA'),
 (275,'AJUDANTE DE ENCANADOR'),
 (276,'AJUDANTE DE FERREIRO'),
 (277,'AJUDANTE DE FUNILEIRO'),
 (278,'AJUDANTE DE GARÇOM'),
 (279,'AJUDANTE DE LANTERNEIRO'),
 (280,'AJUDANTE DE MAQUINISTA'),
 (281,'AJUDANTE DE MECÂNICO'),
 (282,'AJUDANTE DE PEDREIRO'),
 (283,'AJUDANTE DE SERRALHEIRO'),
 (284,'AJUDANTE DE VITRINISTA'),
 (285,'AJUDANTE GERAL'),
 (286,'AJUSTADO MECÂNICO'),
 (287,'ALFAIATE'),
 (288,'ALMOXARIFE'),
 (289,'ANALISTA JUDICIÁRIO'),
 (290,'APICULTOR'),
 (291,'APLICADOR DE SINTECO'),
 (292,'APONTADOR'),
 (293,'APOSENTADO'),
 (294,'ARMADOR'),
 (295,'ARMADOR DE CIMENTO'),
 (296,'ARMADOR DE PESCA'),
 (297,'ARMAZENADOR'),
 (298,'ARMEIRO'),
 (299,'ARQUIVISTA'),
 (300,'ARRENDATÁRIO'),
 (301,'ARRUMADEIRA'),
 (302,'ARRUMADOR'),
 (303,'ARTESÃO'),
 (304,'ARTISTA'),
 (305,'ARTISTA PINTOR'),
 (306,'ARTISTA PLÁSTICO'),
 (307,'ASCENSORISTA'),
 (308,'ASSESSOR'),
 (309,'ASSESSOR DE SEGURANÇA AÉREA'),
 (310,'ASSESSOR POSTAL TELEGRÁFICO'),
 (311,'ASSESSOR TÉCNICO'),
 (312,'ASSISTENTE'),
 (313,'ASSISTENTE COMERCIAL'),
 (314,'ASSISTENTE DE ADMINISTRAÇÃO'),
 (315,'ASSISTENTE DE DIRETOR'),
 (316,'ASSISTENTE DE LABORATÓRIO'),
 (317,'ASSISTENTE SOCIAL'),
 (318,'ASSISTENTE TÉCNICO'),
 (319,'ASTRONAUTA'),
 (320,'ATACADISTA'),
 (321,'ATENDENTE'),
 (322,'ATENDENTE DE ENFERMAGEM'),
 (323,'ATENDENTE DE FARMÁCIA'),
 (324,'ATRIZ'),
 (325,'AUXILIAR. DE TRAFEGO TELEGRÁFICO'),
 (326,'AUXILIAR ACADÊMICO'),
 (327,'AUXILIAR AGRÍCOLA'),
 (328,'AUXILIAR DE ÁREAS GRÁFICAS'),
 (329,'AUXILIAR DE ADMINISTRAÇÃO'),
 (330,'AUXILIAR DE ALMOXARIFADO'),
 (331,'AUXILIAR DE CARTÓRIO'),
 (332,'AUXILIAR DE CIRURGIA'),
 (333,'AUXILIAR DE COMERCIO'),
 (334,'AUXILIAR DE CONTABILIDADE'),
 (335,'AUXILIAR DE COZINHA'),
 (336,'AUXILIAR DE EDUCAÇÃO'),
 (337,'AUXILIAR DE ELETRICISTA'),
 (338,'AUXILIAR DE ENFERMAGEM'),
 (339,'AUXILIAR DE ESCRITÓRIO'),
 (340,'AUXILIAR DE EXPEDIENTE'),
 (341,'AUXILIAR DE FARMÁCIA'),
 (342,'AUXILIAR DE INFORMÁTICA'),
 (343,'AUXILIAR DE LABORATÓRIO'),
 (344,'AUXILIAR DE MAGAREFE'),
 (345,'AUXILIAR DE MECÂNICO'),
 (346,'AUXILIAR DE METEOROLOGISTA'),
 (347,'AUXILIAR DE MONTAGEM'),
 (348,'AUXILIAR DE OBSERVADOR METER'),
 (349,'AUXILIAR DE PEDREIRO'),
 (350,'AUXILIAR DE PRODUÇÃO'),
 (351,'AUXILIAR DE PROFESSOR'),
 (352,'AUXILIAR DE PROPAGANDISTA'),
 (353,'AUXILIAR DE SERVIOS GERAIS'),
 (354,'AUXILIAR DE SOLDADOR'),
 (355,'AUXILIAR DE TESOUREIRO'),
 (356,'AUXILIAR DE TOPÓGRAFO'),
 (357,'AUXILIAR DE TRAFEGO'),
 (358,'AUXILIAR DE VENDAS'),
 (359,'AUXILIAR LEGISLATIVO'),
 (360,'AUXILIAR TÉCNICO'),
 (361,'AVALIADOR'),
 (362,'AVALIADOR COMERCIAL'),
 (363,'AVICULTOR'),
 (364,'AZULEJADOR'),
 (365,'BABA'),
 (366,'BALCONISTA'),
 (367,'BANQUEIRO'),
 (368,'BARBEIRO'),
 (369,'BAPTISTA'),
 (370,'BARMAN'),
 (371,'BARQUEIRO'),
 (372,'BATERISTA'),
 (373,'BETONEIRA'),
 (374,'BILHETEIRO'),
 (375,'BIOQUÍMICO'),
 (376,'BISCATEIRO'),
 (377,'BLOQUISTA'),
 (378,'BOBINADO'),
 (379,'BOIADEIRO'),
 (380,'BOMBEIRO'),
 (381,'BOMBEIRO DE GASOLINA'),
 (382,'BOMBEIRO ELETRICISTA'),
 (383,'BOMBEIRO ENCANADOR'),
 (384,'BOMBEIRO HIDRÁULICO'),
 (385,'BORDADOR'),
 (386,'BORRACHEIRO'),
 (387,'BOTÂNICO'),
 (388,'BRITADOR'),
 (389,'BROQUEIRO'),
 (390,'BUSINESS'),
 (391,'CÔNSUL'),
 (392,'CABELEIREIRO'),
 (393,'CAIXA'),
 (394,'CAIXEIRO'),
 (395,'CALAFATE'),
 (396,'CALCULISTA'),
 (397,'CALDEIREIRO'),
 (398,'CAMAREIRO'),
 (399,'CAMBISTA'),
 (400,'CAMINHONEIRO'),
 (401,'CAMISEIRO'),
 (402,'CAMPEIRO'),
 (403,'CANOEIRO'),
 (404,'CANTOR'),
 (405,'CAPATAZ'),
 (406,'CAPITALISTA'),
 (407,'CAPOTEIRO'),
 (408,'CARCEREIRO'),
 (409,'CARPINTEIRO'),
 (410,'CARREGADOR'),
 (411,'CARREGADOR DE CAMINHÃO'),
 (412,'CARREGADOR DE MALAS POSTAIS'),
 (413,'CARRETEIRO'),
 (414,'CARROCEIRO'),
 (415,'CARTAZISTA'),
 (416,'CARTEIRO'),
 (417,'CARTORÁRIO'),
 (418,'CARVOEIRO'),
 (419,'CASEIRO'),
 (420,'CATADOR DE PAPEL'),
 (421,'CENARISTA'),
 (422,'CEREALISTA'),
 (423,'CERVEJEIRO'),
 (424,'CHACAREIRO'),
 (425,'CHAPEADOR'),
 (426,'CHAPELEIRO'),
 (427,'CHAPISTA'),
 (428,'CHARRETEIRO'),
 (429,'CHAVEIRO'),
 (430,'CHEFE DE ESTAÇÃO'),
 (431,'CHEFE DE TREM'),
 (432,'CICERONE'),
 (433,'CICLISTA'),
 (434,'CIENTISTA'),
 (435,'CINEASTA'),
 (436,'CINETECNICO'),
 (437,'CIRURGIÃO'),
 (438,'CISTERNEIRO'),
 (439,'CO PILOTO'),
 (440,'COB. FISCAL INSP.'),
 (441,'COBRADOR'),
 (442,'COBRADOR EM TRANSP. COLETIVO'),
 (443,'COLETOR'),
 (444,'COLHEDOR'),
 (445,'COLOCADOR DE ANDAIMES'),
 (446,'COLONO'),
 (447,'COMANDANTE DE NAVIO'),
 (448,'COMANDANTE DE VÔO'),
 (449,'COMERCIÁRIO'),
 (450,'COMERCIANTE'),
 (451,'COMISSÁRIO'),
 (452,'COMISSÁRIO DE BORDO NAVIO'),
 (453,'COMISSÁRIO DE POLICIA'),
 (454,'COMISSIONISTA'),
 (455,'COMPOSITOR'),
 (456,'COMPOSITOR MECÂNICO'),
 (457,'COMPOSITOR MUSICAL'),
 (458,'COMPOSITORA MUSICAL'),
 (459,'COMUNICAÇÃO'),
 (460,'CONDUTOR'),
 (461,'CONDUTOR DE GADO'),
 (462,'CONDUTOR DE MALAS'),
 (463,'CONDUTOR MAQUINISTA'),
 (464,'CONFEITEIRO'),
 (465,'CONFERENTE DE CAIS DO PORTO'),
 (466,'CONSTRUTOR'),
 (467,'CONSULTOR'),
 (468,'CONSULTOR FINANCEIRO'),
 (469,'CONTADOR FINANCEIRO'),
 (470,'CONTINUO'),
 (471,'CONTORCIONISTA'),
 (472,'CONTRA ALMIRANTE'),
 (473,'CONTROLADOR DE PRODUÇÃO'),
 (474,'COPEIRO'),
 (475,'CORREEIRO'),
 (476,'CORRETOR DE CAFÉ'),
 (477,'CORRETOR DE IMÓVEIS'),
 (478,'COSEDOR'),
 (479,'COSTUREIRA'),
 (480,'COZINHEIRO'),
 (481,'CRIADOR DE GADO'),
 (482,'CRONISTA'),
 (483,'DANÇARINO'),
 (484,'DATILOGRAFO'),
 (485,'DENTISTA'),
 (486,'DEPARTAMENTO DE PESSOAL'),
 (487,'DESEMPREGADO'),
 (488,'DESENHISTA'),
 (489,'DESIGNER'),
 (490,'DESPACHANTE ADUANEIRO'),
 (491,'DESPACHANTE DO DETRAN'),
 (492,'DESPORTISTA'),
 (493,'DIAGRAMADOR'),
 (494,'DIARISTA'),
 (495,'DIGITADOR'),
 (496,'DIRETOR AGRÍCOLA'),
 (497,'DIRETOR COMERCIAL'),
 (498,'DIRETOR DE COLÉGIO'),
 (499,'DIRETOR DE CORREIOS'),
 (500,'DIRETOR DE FINANÇAS'),
 (501,'DIRETOR DE HOSPITAL'),
 (502,'DIRETOR DE HOTEL'),
 (503,'DIRETOR DE TRANSPORTE'),
 (504,'DIRETOR PECUÁRIO'),
 (505,'DIRETORA DE COLÉGIO'),
 (506,'DIRETORA DE HOSPITAL'),
 (507,'DISTRIBUIDOR DE JORNAL'),
 (508,'DO LAR'),
 (509,'DOCEIRO'),
 (510,'ECONOMIARIO'),
 (511,'EDITOR'),
 (512,'EDUCADORA'),
 (513,'ELETRICISTA'),
 (514,'ELETRICITÁRIO'),
 (515,'ELETROMECÂNICO'),
 (516,'ELETROTECNICO'),
 (517,'EMBAIXADOR'),
 (518,'EMBALADOR'),
 (519,'EMBALSAMADOR'),
 (520,'EMPACOTADOR'),
 (521,'EMPAPELADOR'),
 (522,'EMPILHADOR'),
 (523,'EMPREITEIRO'),
 (524,'EMPREITEIRO DE OBRAS'),
 (525,'EMPRESÁRIO'),
 (526,'ENCADERNADOR'),
 (527,'ENCAIXOTADOR'),
 (528,'ENCANADOR'),
 (529,'ENCARREGADO'),
 (530,'ENCARREGADO DE OBRAS'),
 (531,'ENCARREGADO DE SERVIÇOS GERAIS'),
 (532,'ENFERMEIRO'),
 (533,'ENGARRAFADOR'),
 (534,'ENGENHEIRO AGRÔNOMO'),
 (535,'ENGENHEIRO CIVIL'),
 (536,'ENGENHEIRO ELETRICISTA'),
 (537,'ENGENHEIRO ELETRÔNICO'),
 (538,'ENGENHEIRO ELETROMECÂNICO'),
 (539,'ENGENHEIRO FLORESTAL'),
 (540,'ENGENHEIRO MECÂNICO'),
 (541,'ENTALHADOR'),
 (542,'ENTREGADOR'),
 (543,'ENVERNIZADOR'),
 (544,'ESCAFRANDISTA'),
 (545,'ESCREVENTE'),
 (546,'ESCRITOR'),
 (547,'ESCRIVE'),
 (548,'ESCRIVÃO'),
 (549,'ESPECIALISTA DE BELEZA'),
 (550,'ESPORTISTA'),
 (551,'ESTAFETA'),
 (552,'ESTAMPADOR'),
 (553,'ESTEREOTIPISTA'),
 (554,'ESTILISTA'),
 (555,'ESTIVADOR'),
 (556,'ESTOCADOR DE GESSO'),
 (557,'ESTOFADOR'),
 (558,'ETIQUETADOR'),
 (559,'EXECUTIVO'),
 (560,'EXPORTADOR'),
 (561,'FAQUEIRO'),
 (562,'FAROLEIRO'),
 (563,'FATURISTA'),
 (564,'FAXINEIRO'),
 (565,'FAZENDEIRO'),
 (566,'FEIRANTE'),
 (567,'FERRAMENTEIRO'),
 (568,'FERREIRO'),
 (569,'FERROVIÁRIO'),
 (570,'FIADOR'),
 (571,'FIANDEIRA'),
 (572,'FINANCISTA'),
 (573,'FISCAL'),
 (574,'FISCAL AGRÍCOLA'),
 (575,'FISCAL DE AEROPORTO'),
 (576,'FISCAL DE OBRA'),
 (577,'FISCAL DE RENDAS'),
 (578,'FISCAL DE RENDAS PÚBLICAS'),
 (579,'FISCAL DE SANEAMENTO'),
 (580,'FISCAL DE TRANSPORTE COLETIVO'),
 (581,'FISCAL FLORESTAL'),
 (582,'FLORICULTOR'),
 (583,'FOGUISTA'),
 (584,'FORJADOR'),
 (585,'FOTOGRAFO'),
 (586,'FRENTISTA'),
 (587,'FRETEIRO'),
 (588,'FUNCIONÁRIO PÚBLICO ESTADUAL'),
 (589,'FUNCIONÁRIO PÚBLICO FEDERAL'),
 (590,'FUNCIONÁRIO PÚBLICO MUNICIPAL'),
 (591,'FUNDIDOR'),
 (592,'FUNILEIRO'),
 (593,'FUTEBOLISTA'),
 (594,'FUZILEIRO NAVAL'),
 (595,'GALVANIZADOR'),
 (596,'GARÇOM'),
 (597,'GARÇONETE'),
 (598,'GARAGISTA'),
 (599,'GARI'),
 (600,'GARIMPEIRO'),
 (601,'GAROTA DE PROGRAMA'),
 (602,'GENETICISTA'),
 (603,'GEOLOGISTA'),
 (604,'GERENTE'),
 (605,'GERENTE DE EXPORTAÇÃO'),
 (606,'GERENTE DE FAZENDA'),
 (607,'GERENTE DE LOJA'),
 (608,'GERENTE DE POSTO'),
 (609,'GESSEIRO'),
 (610,'GOVERNANTA'),
 (611,'GRÁFICO'),
 (612,'GRANITEIRO'),
 (613,'GRANJEIRO'),
 (614,'GRAVADOR'),
 (615,'GRAXEIRO'),
 (616,'GUARDA'),
 (617,'GUARDA BANCÁRIO'),
 (618,'GUARDA DE CARRO'),
 (619,'GUARDA NOTURNO'),
 (620,'GUARDA VIDAS'),
 (621,'GUILHOTINADO'),
 (622,'GUINCHEIRO'),
 (623,'GUITARRISTA'),
 (624,'HISTORIADOR'),
 (625,'IMEDIATO DE NAVIO'),
 (626,'IMOBILIÁRIO'),
 (627,'IMPORTADOR'),
 (628,'IMPRESSOR'),
 (629,'INCORPORADOR'),
 (630,'INDUSTRIÁRIO'),
 (631,'INDUSTRIAL'),
 (632,'INSPETOR'),
 (633,'INSTRUMENTISTA'),
 (634,'INSTRUTOR DE AUTO ESCOLA'),
 (635,'INSTRUTOR DE MECÂNICO'),
 (636,'INSTRUTOR DE MUSCULAÇÃO'),
 (637,'INSUFILMADOR DE VEICULO'),
 (638,'INTERPRETE'),
 (639,'JÓQUEI'),
 (640,'JARDINEIRO'),
 (641,'JOGADOR DE FUTEBOL'),
 (642,'JORNALEIRO'),
 (643,'JUBILADO'),
 (644,'JUIZ CRIMINAL'),
 (645,'JUIZ DE FUTEBOL'),
 (646,'JURISTA'),
 (647,'LADRILHEIRO'),
 (648,'LAMINADOR'),
 (649,'LANTERNEIRO'),
 (650,'LAPIDÁRIO'),
 (651,'LAVADEIRA'),
 (652,'LAVADOR DE CARROS'),
 (653,'LAVOURISTA'),
 (654,'LAVRADOR'),
 (655,'LEITEIRO'),
 (656,'LEITURISTA'),
 (657,'LENHADOR'),
 (658,'LIMPADOR DE PÁRA-BRISA'),
 (659,'LINOTIPISTA'),
 (660,'LITÓGRAFO'),
 (661,'LIVREIRO'),
 (662,'LIXADOR'),
 (663,'LOCADOR DE APARELHO DE SOM'),
 (664,'LOCUTOR'),
 (665,'LOCUTOR DE RODEIO'),
 (666,'LUSTRADOR'),
 (667,'LUTADOR'),
 (668,'MADEIREIRO'),
 (669,'MAESTRO'),
 (670,'MAGAREFE'),
 (671,'MAGISTRADO'),
 (672,'MANEQUIM'),
 (673,'MANICURE'),
 (674,'MANIPULADOR PRODUTO QUÍMICO'),
 (675,'MAQUETISTA'),
 (676,'MAQUILADOR'),
 (677,'MAQUINISTA'),
 (678,'MAQUINISTA DE BORDO'),
 (679,'MARÍTIMO'),
 (680,'MARCENEIRO'),
 (681,'MARINHEIRO'),
 (682,'MARMORISTA'),
 (683,'MASCATE'),
 (684,'MASSOTERAPEUTA'),
 (685,'MECÂNICO'),
 (686,'MECÂNICO DE AERONAVE'),
 (687,'MECÂNICO DE ELETRÔNICA'),
 (688,'MECÂNICO OPERADOR'),
 (689,'MECANOGRAFO'),
 (690,'MEDICO'),
 (691,'MEIO OFICIAL TORNEIRO'),
 (692,'MENSAGEIRO'),
 (693,'MERGULHADOR'),
 (694,'MESTRE DE OBRA'),
 (695,'MESTRE DE PANIFICAÇÃO'),
 (696,'MESTRE HOTEL'),
 (697,'MICROBIOLOGISTA'),
 (698,'MICROEMPRESÁRIO'),
 (699,'MILITAR'),
 (700,'MILITAR ATIVO'),
 (701,'MILITAR ESTRANGEIRO'),
 (702,'MILITAR INATIVO'),
 (703,'MINEIRO'),
 (704,'MINISTRO'),
 (705,'MODELO'),
 (706,'MODISTA'),
 (707,'MOLDADOR'),
 (708,'MONTADOR'),
 (709,'MORDOMO'),
 (710,'MOTO BOY'),
 (711,'MOTORNEIRO'),
 (712,'MOTOTAXISTA'),
 (713,'NATURALISTA'),
 (714,'NAVEGADOR'),
 (715,'NEGOCIANTE'),
 (716,'OCUPAÇÃO NÃO CLASSIFICADA'),
 (717,'ODONTOLOGO'),
 (718,'OFFICE BOY'),
 (719,'OFICIAL'),
 (720,'OFICIAL DE CARTÓRIO'),
 (721,'OFICIAL DE JUSTIÇA'),
 (722,'OFICIAL LEGISLATIVO'),
 (723,'OFTALMOLOGISTA'),
 (724,'OLEIRO'),
 (725,'OPERÁRIO'),
 (726,'OPERADOR CINEMATOGRÁFICO'),
 (727,'OPERADOR DE ÁUDIO'),
 (728,'OPERADOR DE COMPUTADOR'),
 (729,'OPERADOR DE DRAGA'),
 (730,'OPERADOR DE EMPILHADEIRA'),
 (731,'OPERADOR DE FORNO'),
 (732,'OPERADOR DE GÁS'),
 (733,'OPERADOR DE MAQUINA'),
 (734,'OPERADOR DE MAQUINAS AGRÍCOLAS'),
 (735,'OPERADOR DE MAQUINAS PESADAS'),
 (736,'OPERADOR DE MOTO SERRA'),
 (737,'OPERADOR DE RADIO'),
 (738,'OPERADOR DE REATORES NUCLEARES'),
 (739,'OPERADOR DE SUBESTAÇÃO'),
 (740,'OPERADOR DE TELEFONE'),
 (741,'OPERADOR DE TRANSMISSÃO'),
 (742,'OPERADOR DE TV'),
 (743,'OPERADOR DE XEROX'),
 (744,'OURIVES'),
 (745,'PADEIRO'),
 (746,'PADRE'),
 (747,'PAISAGISTA'),
 (748,'PAPILOSCOPISTA'),
 (749,'PARASITOLOGISTA'),
 (750,'PARTEIRA'),
 (751,'PASSADOR'),
 (752,'PASTELEIRO'),
 (753,'PASTOR'),
 (754,'PATINADOR'),
 (755,'PATOLOGISTA'),
 (756,'PEÃO'),
 (757,'PEÃO DE CHÁCARA'),
 (758,'PEÃO DE RODEIO'),
 (759,'PECUARISTA'),
 (760,'PEDREIRO'),
 (761,'PEIXEIRO'),
 (762,'PELETEIRO'),
 (763,'PERFURADOR'),
 (764,'PERFURADOR DE POÇOS PETRÓLEO'),
 (765,'PERITO CRIMINAL'),
 (766,'PERITO POLICIAL'),
 (767,'PILOTO'),
 (768,'PILOTO DE NAVIO'),
 (769,'PINTOR'),
 (770,'PINTOR DE AUTO'),
 (771,'PINTOR DE CONSTRUÇÃO CIVIL'),
 (772,'PINTOR DE QUADROS'),
 (773,'PIZZAIOLLO'),
 (774,'PLAINADOR'),
 (775,'POLÍTICO'),
 (776,'POLICIAL INATIVO'),
 (777,'POLICIAL MILITAR'),
 (778,'POLIDOR'),
 (779,'PORTEIRO'),
 (780,'PRACISTA'),
 (781,'PRATICO DE FARMÁCIA'),
 (782,'PRENSADOR'),
 (783,'PROCURADOR DA REPUBLICA'),
 (784,'PROCURADOR DE ESTADO'),
 (785,'PROCURADOR DO INSS'),
 (786,'PROCURADORA DA REPUBLICA'),
 (787,'PROCURADORA DE ESTADO'),
 (788,'PRODUTOR DE CINEMA'),
 (789,'PRODUTOR DE TV'),
 (790,'PRODUTOR RURAL'),
 (791,'PROFESSOR'),
 (792,'PROGRAMADOR'),
 (793,'PROJETISTA'),
 (794,'PROMOTOR'),
 (795,'PROMOTOR DE EVENTOS'),
 (796,'PROMOTOR DE VENDAS'),
 (797,'PROMOTOR JURÍDICO'),
 (798,'PROMOTOR PÚBLICO'),
 (799,'PROPAGANDISTA'),
 (800,'PROSTITUTA'),
 (801,'PSIQUIATRA'),
 (802,'PUGILISTA'),
 (803,'QUITANDEIRO'),
 (804,'RADIALISTA'),
 (805,'RADIOTECNICO'),
 (806,'RADIOTELEGRAFISTA'),
 (807,'RECEPCIONISTA'),
 (808,'REDATOR'),
 (809,'RELIGIOSO'),
 (810,'RELOJOEIRO'),
 (811,'REMADOR'),
 (812,'RENDEIRO'),
 (813,'REPARADOR'),
 (814,'REPOSITOR'),
 (815,'REPRESENTANTE COMERCIAL'),
 (816,'REPRESENTANTE DE VENDAS'),
 (817,'RETIFICADOR DE MOTOR'),
 (818,'REVISOR GRÁFICO'),
 (819,'SALGADEIRO'),
 (820,'SALVA VIDAS'),
 (821,'SAPATEIRO'),
 (822,'SECRETARIO'),
 (823,'SEGURADOR'),
 (824,'SEGURANÇA'),
 (825,'SEM OCUPAÇÃO'),
 (826,'SERICULTOR'),
 (827,'SERIGRAFISTA'),
 (828,'SERINGUEIRO'),
 (829,'SERRADOR'),
 (830,'SERRALHEIRO'),
 (831,'SERVENTE'),
 (832,'SERVENTE DE PEDREIRO'),
 (833,'SERVIÇOS GERAIS'),
 (834,'SERVIDOR PÚBLICO'),
 (835,'SERVIDOR PÚBLICO MUNICIPAL'),
 (836,'SOLDADOR'),
 (837,'SONOPLASTA'),
 (838,'SORVETEIRO'),
 (839,'SUB-GERENTE'),
 (840,'SUPERINTENDENTE DE AEROPORTO'),
 (841,'SUPERVISOR DE OFICINA'),
 (842,'SUPERVISOR DE VENDAS'),
 (843,'TÉCNICO'),
 (844,'TÉCNICO AGRÁRIO'),
 (845,'TÉCNICO AGROPECUÁRIO'),
 (846,'TÉCNICO ARQUIVISTA'),
 (847,'TÉCNICO COMPUTADOR'),
 (848,'TÉCNICO DE ARTES GRÁFICAS'),
 (849,'TÉCNICO DE CONTABILIDADE'),
 (850,'TÉCNICO DE FROTA'),
 (851,'TÉCNICO DE FUTEBOL'),
 (852,'TÉCNICO DE IMPERMEABILIZAÇÃO'),
 (853,'TÉCNICO DE laboratório'),
 (854,'TÉCNICO DE laticínios'),
 (855,'TÉCNICO DE MINERAÇÃO'),
 (856,'TÉCNICO DE NUTRIÇÃO'),
 (857,'TÉCNICO DE OBRAS'),
 (858,'TÉCNICO DE PRODUÇÃO alimentícios'),
 (859,'TÉCNICO DE RAIOS-X'),
 (860,'TÉCNICO DE SERVIÇOS ADMINISTRATIVO'),
 (861,'TÉCNICO DE TV'),
 (862,'TÉCNICO EM ADMINISTRAÇÃO'),
 (863,'TÉCNICO EM AGRONOMIA'),
 (864,'TÉCNICO EM CONTABILIDADE'),
 (865,'TÉCNICO EM ENFERMAGEM'),
 (866,'TÉCNICO EM PAPILOSCOPIA'),
 (867,'TÉCNICO EM PARAMEDICO'),
 (868,'TÉCNICO EM PATOLOGIA'),
 (869,'TÉCNICO EM PERFURAÇÃO'),
 (870,'TÉCNICO EM PESCA'),
 (871,'TÉCNICO EM PETRÓLEO'),
 (872,'TÉCNICO EM PROJETISTA'),
 (873,'TÉCNICO EM PUBLICIDADE'),
 (874,'TÉCNICO EM REFRIGERAÇÃO'),
 (875,'TÉCNICO EM SEG DO TRABALHO'),
 (876,'TÉCNICO EM TELECOMUNICAÇÃO'),
 (877,'TÉCNICO EM TELEFONIA'),
 (878,'TÉCNICO EM TRANSPORTE'),
 (879,'TÉCNICO EM VULCANIZAÇÕES'),
 (880,'TÉCNICO HIDRÁULICO'),
 (881,'TÉCNICO INSTRUMENTISTA'),
 (882,'TÉCNICO LEGISLATIVO'),
 (883,'TÉCNICO QUÍMICO'),
 (884,'TÉCNICO TRIBUTÁRIO'),
 (885,'TABELIÃO'),
 (886,'TANOEIRO'),
 (887,'TAPECEIRO'),
 (888,'TAQUIGRAFO'),
 (889,'TAXISTA'),
 (890,'TECELÃO'),
 (891,'TELEFONISTA'),
 (892,'TELEGRAFISTA'),
 (893,'TESOUREIRO'),
 (894,'TINTUREIRO'),
 (895,'TIPÓGRAFO'),
 (896,'TOPÓGRAFO'),
 (897,'TORNEIRO'),
 (898,'TORNEIRO MECÂNICO'),
 (899,'TRABALHADOR RURAL'),
 (900,'TRADUTOR'),
 (901,'TRATORISTA'),
 (902,'TURISMO'),
 (903,'VAQUEIRO'),
 (904,'VAREJISTA'),
 (905,'VENDEDOR AMBULANTE'),
 (906,'VIDRACEIRO'),
 (907,'VIGIA	'),
 (908,'VIGILANTE'),
 (909,'VULCANIZADO'),
 (910,'ZELADOR'),
 (911,'TECNÓLOGO EM SANEAMENTO BÁSICO E OBRAS HIDRÁULICAS '),
 (212405,'Analista de sistemas (informática)');
/*!40000 ALTER TABLE `profissao` ENABLE KEYS */;


--
-- Definition of table `proposta`
--

DROP TABLE IF EXISTS `proposta`;
CREATE TABLE `proposta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` datetime DEFAULT NULL,
  `dataDeAprovacao` datetime DEFAULT NULL,
  `dataDoPrimeiroVencimento` datetime DEFAULT NULL,
  `quantidadeDeParcelas` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `taxaDeJuros` double NOT NULL,
  `valor` double NOT NULL,
  `valorDaPrestacao` double NOT NULL,
  `cliente_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC8ACD154725F4FCB` (`cliente_id`),
  CONSTRAINT `FKC8ACD154725F4FCB` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposta`
--

/*!40000 ALTER TABLE `proposta` DISABLE KEYS */;
INSERT INTO `proposta` (`id`,`data`,`dataDeAprovacao`,`dataDoPrimeiroVencimento`,`quantidadeDeParcelas`,`status`,`taxaDeJuros`,`valor`,`valorDaPrestacao`,`cliente_id`) VALUES 
 (3,'2011-06-04 21:37:33',NULL,'2011-07-24 00:00:00',12,'APROVADO',0,1000,90.63,1),
 (4,'2011-06-04 22:00:23',NULL,'2011-07-05 00:00:00',12,'APROVADO',0,1000,90.63,1),
 (5,'2011-06-04 22:08:07',NULL,'2011-07-05 00:00:00',12,'APROVADO',0,1000,90.63,1),
 (6,NULL,NULL,NULL,12,'ANALISE',0,1000,89.74,1),
 (7,'2011-06-07 22:21:06',NULL,'2011-06-07 00:00:00',12,'APROVADO',0,1000,89.74,1),
 (8,'2011-06-08 00:44:33',NULL,'2011-06-08 00:00:00',12,'ANALISE',0,1000,89.74,1),
 (9,'2011-06-08 00:47:52',NULL,'2011-06-08 00:00:00',12,'ANALISE',0,1000,89.74,1),
 (10,'2011-06-08 00:53:17',NULL,'2011-06-08 00:00:00',12,'ANALISE',0,1000,89.74,1),
 (11,'2011-06-08 00:59:59',NULL,'2011-06-09 00:00:00',12,'ANALISE',0,1000,89.74,1),
 (12,'2011-06-08 01:02:05',NULL,'2011-06-08 00:00:00',12,'ANALISE',0,1000,89.74,1),
 (13,'2011-06-09 20:21:13',NULL,NULL,0,'ANALISE',0,0,0,1),
 (14,'2011-06-09 20:21:56',NULL,'2011-06-09 00:00:00',12,'ANALISE',0,1000,89.74,1);
/*!40000 ALTER TABLE `proposta` ENABLE KEYS */;


--
-- Definition of table `regra`
--

DROP TABLE IF EXISTS `regra`;
CREATE TABLE `regra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `pergunta` varchar(255) NOT NULL,
  `possuiResposta` bit(1) NOT NULL,
  `metodo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regra`
--

/*!40000 ALTER TABLE `regra` DISABLE KEYS */;
INSERT INTO `regra` (`id`,`nome`,`pergunta`,`possuiResposta`,`metodo`) VALUES 
 (3,'Comprometimento da Renda','Porcentagem de Comprometimento da Renda',0x01,'getPorcentagemDeComprometimentoDaRenda'),
 (4,'Renda Mínima','Renda Mínima de Reserva',0x01,'getRendaDeReserva'),
 (5,'Idade','Idade',0x01,'getIdade'),
 (6,'Sexo','Sexo',0x00,'getSexo'),
 (7,'Estado Civil','Estado Civil',0x00,'getEstadoCivil'),
 (8,'Dependentes','Números de Dependentes',0x01,'getNumeroDeDependentes'),
 (9,'Instrução','Nível de Instrução',0x01,'setNivelDeInstrucao'),
 (10,'Profissão','Profissão',0x00,'getProfissao'),
 (11,'Residencia','Tipo de Residencia',0x00,'getTipoDeResidencia'),
 (12,'Tempo de Residencia','Tempo de Residencia',0x01,'getTempoDeResidenciaAtualEmAnos'),
 (13,'Veículos','Quantidade de Veículos',0x00,'getQuantidadeDeVeiculos'),
 (14,'Credor','Tipo de Vinculo com Credor',0x00,'getTipoDeVinculoComCredor'),
 (15,'Cheque Especial','Cheque Especial',0x00,'isPossuiChequeEspecial'),
 (16,'Seguro de Automóvel','Seguro de Automóvel',0x00,'isPossuiSeguroDeAutmovel'),
 (17,'Bens Imóveis','Valor Total de Bens Imóveis',0x01,'getValorTotalDeBensImoveis'),
 (18,'Residencia','Tipo de Residencia',0x00,'getTipoDeResidencia'),
 (19,'Ônus nos Bens','Porcetagem de Ônus nos Bens',0x01,'getPorcentagemDeOnusNosBensImoveis');
/*!40000 ALTER TABLE `regra` ENABLE KEYS */;


--
-- Definition of table `regradeinferencia`
--

DROP TABLE IF EXISTS `regradeinferencia`;
CREATE TABLE `regradeinferencia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comparador` varchar(255) DEFAULT NULL,
  `resposta` varchar(255) DEFAULT NULL,
  `regra_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK23428C8812CAAF6B` (`regra_id`),
  CONSTRAINT `FK23428C8812CAAF6B` FOREIGN KEY (`regra_id`) REFERENCES `regra` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regradeinferencia`
--

/*!40000 ALTER TABLE `regradeinferencia` DISABLE KEYS */;
INSERT INTO `regradeinferencia` (`id`,`comparador`,`resposta`,`regra_id`) VALUES 
 (5,'IGUAL','22',3),
 (6,NULL,'',18),
 (7,'MENOR','30',3),
 (10,'MENOR','30',3),
 (11,NULL,'',18),
 (12,'MENOR','30',3),
 (13,NULL,NULL,18),
 (14,'MENOR','30',3),
 (15,'MENOR','30',3),
 (16,NULL,'',18),
 (17,'MENOR','30',3),
 (18,NULL,NULL,18),
 (19,'MENOR','7876',13),
 (20,'MENOR','30',3),
 (21,NULL,NULL,18),
 (22,'MENOR','7876',13),
 (23,'MENOR','30',3),
 (24,NULL,NULL,18),
 (25,'MENOR','7876',13),
 (26,'MENOR','30',3),
 (27,NULL,NULL,18),
 (28,'MENOR','7876',13),
 (29,'MENOR','30',3),
 (30,NULL,NULL,18),
 (31,'MENOR','7876',13),
 (34,'MENOR','30',3),
 (35,NULL,'',15),
 (36,'MAIOR','534',3),
 (37,NULL,'',10),
 (38,NULL,'',14),
 (39,'MAIOR','400',4),
 (40,'MENOR','30',3),
 (41,'MAIOR','18',5),
 (42,'MENOR','85',5),
 (43,'MENOR','30.0',3),
 (44,'MENOR','30.0',3),
 (45,'MENOR','30.0',3),
 (46,'MENOR','30.0',3),
 (47,'MENOR','30.0',3),
 (48,'MENOR','30.0',3),
 (49,'MENOR','30.0',3),
 (50,'MENOR','30.0',3),
 (51,'MENOR','30.0',3),
 (52,'MENOR','30.0',3),
 (53,'MENOR','30.0',3),
 (54,'MENOR','30.0',3),
 (55,NULL,'0.0',15),
 (56,'MENOR','30.0',3),
 (57,NULL,'0.0',15),
 (58,'MENOR','30.0',3),
 (59,NULL,'0.0',15),
 (65,NULL,'0.0',3),
 (66,NULL,'0.0',6),
 (67,'MENOR','30.0',3),
 (68,NULL,'0.0',6),
 (69,'MENOR','30.0',3),
 (70,NULL,'0.0',6),
 (71,'MENOR','30.0',3),
 (72,NULL,'0.0',7),
 (73,'MENOR','30.0',3),
 (74,NULL,'0.0',18),
 (75,'MENOR','30.0',3),
 (76,NULL,'0.0',10),
 (77,'MENOR','30.0',3),
 (78,NULL,'0.0',6),
 (79,'MENOR','30.0',3),
 (80,NULL,'0.0',11),
 (86,'MENOR','30.0',3),
 (87,'MENOR','30.0',3),
 (88,NULL,'0.0',11),
 (89,'MENOR','30.0',3),
 (90,NULL,'0.0',18),
 (91,'MENOR','30.0',3),
 (92,NULL,'0.0',11),
 (93,'MENOR','30.0',3),
 (94,NULL,'0.0',11),
 (95,'MENOR','30.0',3),
 (96,NULL,'0.0',11),
 (97,'MENOR','30.0',3),
 (98,NULL,'0.0',18),
 (99,'MENOR','30.0',3),
 (100,NULL,'0.0',18),
 (101,'MENOR','30.0',3),
 (102,NULL,'0.0',11),
 (103,'MENOR','30.0',3),
 (104,NULL,'0.0',18),
 (105,'MENOR','30.0',3),
 (106,NULL,'0.0',18),
 (107,'MENOR','30.0',3),
 (108,NULL,'0.0',18),
 (109,'MENOR','30.0',3),
 (110,NULL,'0.0',18),
 (111,'MENOR','30.0',3),
 (112,NULL,'0.0',18),
 (113,NULL,'0.0',18),
 (114,NULL,'0.0',18),
 (115,'MENOR','30.0',3),
 (116,NULL,'0.0',18),
 (117,'MENOR','30.0',3),
 (118,NULL,'0.0',18),
 (119,'MENOR','30.0',3),
 (120,NULL,'0.0',18),
 (121,'MENOR','30.0',3),
 (122,NULL,'0.0',18),
 (123,'MENOR','30.0',3),
 (124,NULL,'0.0',6);
/*!40000 ALTER TABLE `regradeinferencia` ENABLE KEYS */;


--
-- Definition of table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
CREATE TABLE `telefone` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ddd` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telefone`
--

/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` (`id`,`ddd`,`numero`) VALUES 
 (1,'21','27206010'),
 (2,'21','26287828'),
 (3,'21','27206010'),
 (4,'21','26287828'),
 (5,'21','27206010'),
 (6,'21','26287828'),
 (7,'21','27206010'),
 (8,'21','26287828'),
 (9,'21','27206010'),
 (10,'21','26287828'),
 (11,'21','27206010'),
 (12,'21','26287828');
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
