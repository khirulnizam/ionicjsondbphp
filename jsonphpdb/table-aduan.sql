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
-- CREATE DATABASE IF NOT EXISTS `sistemaduan` /*!40100 DEFAULT CHARACTER SET latin1 */;
-- USE `sistemaduan`;

-- Dumping structure for table sistemaduan.aduan
CREATE TABLE IF NOT EXISTS `aduan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(255) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `jenisaduan` varchar(50) DEFAULT NULL,
  `tarikhaduan` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table sistemaduan.aduan: ~12 rows (approximately)
/*!40000 ALTER TABLE `aduan` DISABLE KEYS */;
INSERT INTO `aduan` (`id`, `deskripsi`, `longitude`, `latitude`, `jenisaduan`, `tarikhaduan`) VALUES
	(1, 'Tong sampah tidak disediakan', 1.2, 2.5, 'sampah', '2020-01-29'),
	(2, 'Sampah berterabur', 1.3, 2.3, 'sampah', '2022-01-28'),
	(3, 'Bumbung hentian bas bocor', 1.5, 2.3, 'hentianbas', '2022-01-27'),
	(4, 'Tiang patah', 1.4, 1.5, 'hentianbas', '2021-12-17'),
	(11, 'Deskripsi', 2, 2, 'sampah', '2022-01-31'),
	(12, 'Anjing liar kejar orang', 1.5, 1.7, 'haiwanliar', '2022-02-03'),
	(13, 'Lopak besar di sebelah kanan', 1.6, 1.6, 'jalanraya', '2022-02-03'),
	(14, 'Lopak besar di sebelah kanan', 1.6, 1.6, 'jalanraya', '2022-02-03'),
	(15, 'Lopak besar di sebelah kanan', 1.6, 1.6, 'jalanraya', '2022-02-03'),
	(16, 'aku', 1, 1, 'jalanraya', '2022-02-03'),
	(17, 'kau', 1, 1, 'sampah', '2022-02-03'),
	(18, 'dia', 1, 1, 'sampah', '2022-02-03'),
	(19, 'Lubang besar di tengah jalan', 1.35355, 2.12121, 'jalanraya', '2022-02-04'),
	(20, 'Anjing liar gigit anak', 1.2, 2.1, 'haiwanliar', '2022-02-04');
/*!40000 ALTER TABLE `aduan` ENABLE KEYS */;

-- Dumping structure for table sistemaduan.aduan_users
CREATE TABLE IF NOT EXISTS `aduan_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `namapenuh` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `levelpengguna` varchar(50) NOT NULL,
  PRIMARY KEY (`email`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table sistemaduan.aduan_users: ~1 rows (approximately)
/*!40000 ALTER TABLE `aduan_users` DISABLE KEYS */;
INSERT INTO `aduan_users` (`id`, `email`, `namapenuh`, `password`, `levelpengguna`) VALUES
	(4, 'abc@gmail.com', 'abc', '$2y$10$sGQU0JqANCnthg3PnHmEiefolwqdsYGIUvfh.tzN1JGHLcuyppSR6', 'admin'),
	(3, 'kerul@gmail.com', 'nama penuh', '$2y$10$NgiFnbkRCdEttH9eDAqLzuiSdemKjWeWz1gN.5Ft.t4gMKd9lciG2', 'admin');
/*!40000 ALTER TABLE `aduan_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
