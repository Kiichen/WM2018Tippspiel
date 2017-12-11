-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               10.1.28-MariaDB - mariadb.org binary distribution
-- Server Betriebssystem:        Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Exportiere Datenbank Struktur für wm2018
CREATE DATABASE IF NOT EXISTS `wm2018` /*!40100 DEFAULT CHARACTER SET ucs2 */;
USE `wm2018`;

-- Exportiere Struktur von Tabelle wm2018.teams
CREATE TABLE IF NOT EXISTS `teams` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Gruppe` char(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=ucs2;

-- Exportiere Daten aus Tabelle wm2018.teams: ~32 rows (ungefähr)
DELETE FROM `teams`;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` (`ID`, `Name`, `Gruppe`) VALUES
	(1, 'Russland', 'A'),
	(2, 'Saudi-Arabien', 'A'),
	(3, 'Ägypten', 'A'),
	(4, 'Uruguay', 'A'),
	(5, 'Portugal', 'B'),
	(6, 'Spanien', 'B'),
	(7, 'Marokko', 'B'),
	(8, 'Iran', 'B'),
	(9, 'Frankreich', 'C'),
	(10, 'Australien', 'C'),
	(11, 'Peru', 'C'),
	(12, 'Dänemark', 'C'),
	(13, 'Argentinien', 'D'),
	(14, 'Island', 'D'),
	(15, 'Kroatien', 'D'),
	(16, 'Nigeria', 'D'),
	(17, 'Brasilien', 'E'),
	(18, 'Schweiz', 'E'),
	(19, 'Costa Rica', 'E'),
	(20, 'Serbien', 'E'),
	(21, 'Deutschland', 'F'),
	(22, 'Mexiko', 'F'),
	(23, 'Schweden', 'F'),
	(24, 'Südkorea', 'F'),
	(25, 'Belgien', 'G'),
	(26, 'Panama', 'G'),
	(27, 'Tunesien', 'G'),
	(28, 'England', 'G'),
	(29, 'Polen', 'H'),
	(30, 'Senegal', 'H'),
	(31, 'Kolumbien', 'H'),
	(32, 'Japan', 'H');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
