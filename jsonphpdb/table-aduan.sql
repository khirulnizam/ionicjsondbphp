-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sistemaduan
CREATE DATABASE IF NOT EXISTS `sistemaduan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sistemaduan`;

-- Dumping structure for table sistemaduan.aduan
CREATE TABLE IF NOT EXISTS `aduan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(255) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `jenisaduan` varchar(50) DEFAULT NULL,
  `tarikhaduan` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table sistemaduan.aduan: ~11 rows (approximately)
/*!40000 ALTER TABLE `aduan` DISABLE KEYS */;
INSERT INTO `aduan` (`id`, `deskripsi`, `longitude`, `latitude`, `jenisaduan`, `tarikhaduan`) VALUES
	(1, 'Tong sampah tidak disediakan', 1.2, 2.5, 'sampah', '2020-01-29'),
	(2, 'Sampah berterabur', 1.3, 2.3, 'sampah', '2022-01-28'),
	(3, 'Bumbung hentian bas bocor', 1.5, 2.3, 'hentianbas', '2022-01-27'),
	(4, 'Tiang patah', 1.4, 1.5, 'hentianbas', '2021-12-17'),
	(5, '', 1.2, 1.2, '', '2022-01-30'),
	(6, '', 1.2, 1.2, '', '2022-01-30'),
	(7, 'a', 1, 1, 'b', '2022-01-30'),
	(8, 'a', 1, 1, 'sampah', '2022-01-31'),
	(9, 'b', 1, 1, 'sampah', '2022-01-31'),
	(10, 'c', 1, 1, 'sampah', '2022-01-31'),
	(11, 'Deskripsi', 2, 2, 'sampah', '2022-01-31');
/*!40000 ALTER TABLE `aduan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
