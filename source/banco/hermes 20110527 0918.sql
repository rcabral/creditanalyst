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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benimovel`
--

/*!40000 ALTER TABLE `benimovel` DISABLE KEYS */;
INSERT INTO `benimovel` (`id`,`possuiOnus`,`valor`) VALUES 
 (1,0x01,100000);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cliente`
--

/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`id`,`cpf`,`dataDeNascimento`,`nome`,`rg`,`sexo`,`perfilDoCliente_id`) VALUES 
 (1,'05586878739','1984-02-01 00:00:00','Raphael Oliveira Cabral','207104175','M',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endereco`
--

/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` (`id`,`bairro`,`cep`,`municipio`,`nomeDoLogrado`,`numero`,`tipoDeLogradouro`,`uf`) VALUES 
 (1,'Covanca','244121630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ'),
 (2,'Covanca','24412630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ'),
 (3,'Covanca','244121630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ'),
 (4,'Covanca','244121630','São Gonçalo','Aloízio Gonçalves',95,'R','RJ');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;


--
-- Definition of table `escoragem`
--

DROP TABLE IF EXISTS `escoragem`;
CREATE TABLE `escoragem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `dataDeInicioDaAmostragem` datetime DEFAULT NULL,
  `dataFinalDaAmostragem` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `escoragem`
--

/*!40000 ALTER TABLE `escoragem` DISABLE KEYS */;
INSERT INTO `escoragem` (`id`,`descricao`,`nome`,`dataDeInicioDaAmostragem`,`dataFinalDaAmostragem`) VALUES 
 (5,'Teste02','Teste02',NULL,NULL),
 (6,'teste03','teste03','2011-05-01 00:00:00','2011-06-30 00:00:00'),
 (8,'xxxx','xxx',NULL,NULL),
 (10,'frefref','ffr',NULL,NULL),
 (11,'vfdvfdvfd','svvfdvd',NULL,NULL),
 (12,'csdcds','teste',NULL,NULL);
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
 (5,5),
 (5,6),
 (6,7),
 (8,29),
 (8,30),
 (8,31),
 (10,34),
 (10,35),
 (11,36),
 (11,37),
 (11,38),
 (11,39),
 (12,40),
 (12,41),
 (12,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perfildocliente`
--

/*!40000 ALTER TABLE `perfildocliente` DISABLE KEYS */;
INSERT INTO `perfildocliente` (`id`,`dataDeAberturaDaContaMaisAntiga`,`dataDeEntradaNoEmpregoAtual`,`email`,`estadoCivil`,`nivelDeInstrucao`,`numeroDeDependentes`,`possuiChequeEspecial`,`possuiSeguroDeAutmovel`,`quantidadeDeVeiculos`,`rendaEstimada`,`rendaMensalComprovada`,`salario`,`tempoDeResidenciaAtualEmAnos`,`tipoDeResidencia`,`tipoDeVincluloEmpregaticio`,`tipoDeVinculoComCredor`,`conjuge_id`,`endereco_id`,`profissao_codigoCBO`,`telefoneCelular_id`,`telefoneResidencial_id`) VALUES 
 (1,'2010-11-01 00:00:00','2010-06-09 00:00:00','raphaelcabralnet@gmail.com','CASADO','N8',3,0x01,0x01,1,0,500,500,26,'PROPRIA',NULL,'NENHUM',NULL,2,212405,1,2);
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
 (1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposta`
--

/*!40000 ALTER TABLE `proposta` DISABLE KEYS */;
INSERT INTO `proposta` (`id`,`data`,`dataDeAprovacao`,`dataDoPrimeiroVencimento`,`quantidadeDeParcelas`,`status`,`taxaDeJuros`,`valor`,`valorDaPrestacao`,`cliente_id`) VALUES 
 (1,'2011-05-26 21:20:27',NULL,'2011-06-05 00:00:00',24,'ANALISE',0,1000,47.54,1),
 (2,'2011-05-26 21:35:39',NULL,'2011-06-03 00:00:00',12,'ANALISE',0,1000,89.74,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

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
 (42,'MENOR','85',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telefone`
--

/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` (`id`,`ddd`,`numero`) VALUES 
 (1,'21','27206010'),
 (2,'21','26287828');
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
