-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.5.57 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para paginate
CREATE DATABASE IF NOT EXISTS `paginate` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `paginate`;

-- Copiando dados para a tabela paginate.cliente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`id`, `name`, `telefone`, `pais`) VALUES
	(1, 'joao', '9999-9999', 'brasil'),
	(2, 'joao', '9999-9999', 'brasil'),
	(3, 'joao', '9999-9999', 'brasil'),
	(4, 'joao', '9999-9999', 'brasil'),
	(5, 'joao', '9999-9999', 'brasil'),
	(6, 'joao', '9999-9999', 'brasil'),
	(7, 'joao', '9999-9999', 'brasil'),
	(8, 'joao', '9999-9999', 'brasil'),
	(9, 'joao', '9999-9999', 'brasil'),
	(10, 'joao', '9999-9999', 'brasil'),
	(11, 'joao', '9999-9999', 'brasil'),
	(12, 'joao', '9999-9999', 'brasil'),
	(13, 'joao', '9999-9999', 'brasil'),
	(14, 'joao', '9999-9999', 'brasil'),
	(15, 'joao', '9999-9999', 'brasil'),
	(16, 'joao', '9999-9999', 'brasil'),
	(17, 'joao', '9999-9999', 'brasil'),
	(18, 'joao', '9999-9999', 'brasil'),
	(19, 'joao', '9999-9999', 'brasil'),
	(20, 'joao', '9999-9999', 'brasil'),
	(21, 'joao', '9999-9999', 'brasil'),
	(22, 'joao', '9999-9999', 'brasil'),
	(23, 'joao', '9999-9999', 'brasil'),
	(24, 'joao', '9999-9999', 'brasil'),
	(25, 'joao', '9999-9999', 'brasil'),
	(26, 'joao', '9999-9999', 'brasil'),
	(27, 'joao', '9999-9999', 'brasil'),
	(28, 'joao', '9999-9999', 'brasil'),
	(29, 'joao', '9999-9999', 'brasil'),
	(30, 'joao', '9999-9999', 'brasil'),
	(31, 'joao', '9999-9999', 'brasil'),
	(32, 'joao', '9999-9999', 'brasil'),
	(33, 'joao', '9999-9999', 'brasil'),
	(34, 'joao', '9999-9999', 'brasil'),
	(35, 'joao', '9999-9999', 'brasil'),
	(36, 'joao', '9999-9999', 'brasil'),
	(37, 'joao', '9999-9999', 'brasil'),
	(38, 'joao', '9999-9999', 'brasil'),
	(39, 'joao', '9999-9999', 'brasil'),
	(40, 'joao', '9999-9999', 'brasil'),
	(41, 'joao', '9999-9999', 'brasil'),
	(42, 'joao', '9999-9999', 'brasil'),
	(43, 'joao', '9999-9999', 'brasil'),
	(44, 'joao', '9999-9999', 'brasil'),
	(45, 'joao', '9999-9999', 'brasil'),
	(46, 'joao', '9999-9999', 'brasil'),
	(47, 'joao', '9999-9999', 'brasil'),
	(48, 'joao', '9999-9999', 'brasil'),
	(49, 'joao', '9999-9999', 'brasil'),
	(50, 'joao', '9999-9999', 'brasil'),
	(51, 'joao', '9999-9999', 'brasil'),
	(52, 'joao', '9999-9999', 'brasil'),
	(53, 'joao', '9999-9999', 'brasil'),
	(54, 'joao', '9999-9999', 'brasil'),
	(55, 'joao', '9999-9999', 'brasil'),
	(56, 'joao', '9999-9999', 'brasil'),
	(57, 'joao', '9999-9999', 'brasil'),
	(58, 'joao', '9999-9999', 'brasil'),
	(59, 'joao', '9999-9999', 'brasil'),
	(60, 'joao', '9999-9999', 'brasil'),
	(61, 'joao', '9999-9999', 'brasil'),
	(62, 'joao', '9999-9999', 'brasil'),
	(63, 'joao', '9999-9999', 'brasil'),
	(64, 'joao', '9999-9999', 'brasil'),
	(65, 'joao', '9999-9999', 'brasil'),
	(66, 'joao', '9999-9999', 'brasil'),
	(67, 'joao', '9999-9999', 'brasil'),
	(68, 'joao', '9999-9999', 'brasil'),
	(69, 'joao', '9999-9999', 'brasil'),
	(70, 'joao', '9999-9999', 'brasil'),
	(71, 'joao', '9999-9999', 'brasil'),
	(72, 'marcia', '21323124124', 'braae'),
	(73, 'marcia', '21323124124', 'braae'),
	(74, 'marcia', '21323124124', 'braae'),
	(75, 'marcia', '21323124124', 'braae'),
	(76, 'marcia', '21323124124', 'braae'),
	(77, 'marcia', '21323124124', 'braae'),
	(78, 'marcia', '21323124124', 'braae'),
	(79, 'marcia', '21323124124', 'braae'),
	(80, 'marcia', '21323124124', 'braae'),
	(81, 'marcia', '21323124124', 'braae');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
