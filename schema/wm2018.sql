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

-- Exportiere Struktur von Tabelle wm2018.benutzer
CREATE TABLE IF NOT EXISTS `benutzer` (
  `benutzerid` int(11) NOT NULL AUTO_INCREMENT,
  `benutzerName` varchar(20) DEFAULT NULL,
  `autologin` varchar(32) DEFAULT NULL,
  `IP` varchar(15) NOT NULL,
  `sessionID` varchar(32) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `passwort` varchar(32) NOT NULL,
  `gruppenname` varchar(32) DEFAULT NULL,
  `email` varchar(70) NOT NULL,
  `show_Email` bit(1) DEFAULT NULL,
  `registrierungsdatum` date DEFAULT NULL,
  PRIMARY KEY (`benutzerid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle wm2018.benutzer: ~10 rows (ungefähr)
DELETE FROM `benutzer`;
/*!40000 ALTER TABLE `benutzer` DISABLE KEYS */;
INSERT INTO `benutzer` (`benutzerid`, `benutzerName`, `autologin`, `IP`, `sessionID`, `nickname`, `passwort`, `gruppenname`, `email`, `show_Email`, `registrierungsdatum`) VALUES
	(1, NULL, NULL, '192.168.178.1', '', 'KlausK', '1234', '11Freunde', 'a@a.de', b'1', NULL),
	(2, NULL, NULL, '192.168.178.1', '1234', 'PeterP', '1234', 'Kicker09', 'a@b.de', b'1', NULL),
	(3, NULL, NULL, '192.168.178.1', '1234', 'MariaM', '1234', 'Tipper04', 'a@c.de', b'1', NULL),
	(4, NULL, NULL, '192.168.178.1', '1234', 'FritzF', '1234', 'Balla05', 'a@d.de', b'1', NULL),
	(5, NULL, NULL, '192.168.178.1', '1234', 'PetraP', '1234', 'Humba11', 'a@e.de', b'1', NULL),
	(6, NULL, NULL, '192.168.178.1', '1234', 'SofiaS', '1234', '11Freunde', 'a@f.de', b'1', NULL),
	(7, NULL, NULL, '192.168.178.1', '1234', 'LeonieL', '1234', 'Kicker09', 'a@g.de', b'1', NULL),
	(8, NULL, NULL, '192.168.178.1', '1234', 'NiklasN', '1234', 'Tipper04', 'a@h.de', b'1', NULL),
	(9, NULL, NULL, '192.168.178.1', '1234', 'AndreA', '1234', 'Balla05', 'a@i.de', b'1', NULL),
	(10, NULL, NULL, '192.168.178.1', '1234', 'MarieM', '1234', '11Freunde', 'a@j.de', b'1', NULL);
/*!40000 ALTER TABLE `benutzer` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle wm2018.gruppe
CREATE TABLE IF NOT EXISTS `gruppe` (
  `Index` char(50) NOT NULL,
  `Mitglied 1` varchar(50) DEFAULT NULL,
  `Mitglied 2` varchar(50) DEFAULT NULL,
  `Mitglied 3` varchar(50) DEFAULT NULL,
  `Mitglied 4` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Index`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Exportiere Daten aus Tabelle wm2018.gruppe: ~8 rows (ungefähr)
DELETE FROM `gruppe`;
/*!40000 ALTER TABLE `gruppe` DISABLE KEYS */;
INSERT INTO `gruppe` (`Index`, `Mitglied 1`, `Mitglied 2`, `Mitglied 3`, `Mitglied 4`) VALUES
	('A', 'Russland', 'Saudi-Arabien', 'Ägypten', 'Uruguay'),
	('B', 'Portugal', 'Spanien', 'Marokko', 'Iran'),
	('C', 'Frankreich', 'Australien', 'Peru', 'Dänemark'),
	('D', 'Argentinien', 'Island', 'Kroatien', 'Nigeria'),
	('E', 'Brasilien', 'Schweiz', 'Coasta Rica', 'Serbien'),
	('F', 'Deutschland', 'Mexiko', 'Schweden', 'Südkorea'),
	('G', 'Belgien', 'Panama', 'Tunesien', 'England'),
	('H', 'Polen', 'Senegal', 'Kolumbien', 'Japan');
/*!40000 ALTER TABLE `gruppe` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle wm2018.ranking
CREATE TABLE IF NOT EXISTS `ranking` (
  `datum` datetime DEFAULT NULL,
  `benutzerid` int(11) DEFAULT NULL,
  `punkte` int(10) DEFAULT NULL,
  `platz` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle wm2018.ranking: ~0 rows (ungefähr)
DELETE FROM `ranking`;
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle wm2018.spiele
CREATE TABLE IF NOT EXISTS `spiele` (
  `spieleid` int(10) NOT NULL AUTO_INCREMENT,
  `spielbezeichnung` varchar(20) DEFAULT NULL,
  `spielort` varchar(20) DEFAULT NULL,
  `datumuhrzeit` datetime DEFAULT NULL,
  `heimmannschaft` varchar(20) DEFAULT NULL,
  `gastmannschaft` varchar(20) DEFAULT NULL,
  `heimmannschafthz` int(2) DEFAULT NULL,
  `gastmannschafthz` int(2) DEFAULT NULL,
  `heimmannschaftende` int(2) DEFAULT NULL,
  `gastmannschaftende` int(2) DEFAULT NULL,
  `verlaengerung` bit(1) DEFAULT NULL,
  `heimmannschaftverl` int(2) DEFAULT NULL,
  `gastmannschaftverl` int(2) DEFAULT NULL,
  `elfmeter` bit(1) DEFAULT NULL,
  `heimmannschaftelf` int(2) DEFAULT NULL,
  `gastmannschaftelf` int(2) DEFAULT NULL,
  `gelbekartenheim` int(2) DEFAULT NULL,
  `gelbekartengast` int(2) DEFAULT NULL,
  `rotekartenheim` int(2) DEFAULT NULL,
  `rotekartengast` int(2) DEFAULT NULL,
  PRIMARY KEY (`spieleid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle wm2018.spiele: ~51 rows (ungefähr)
DELETE FROM `spiele`;
/*!40000 ALTER TABLE `spiele` DISABLE KEYS */;
INSERT INTO `spiele` (`spieleid`, `spielbezeichnung`, `spielort`, `datumuhrzeit`, `heimmannschaft`, `gastmannschaft`, `heimmannschafthz`, `gastmannschafthz`, `heimmannschaftende`, `gastmannschaftende`, `verlaengerung`, `heimmannschaftverl`, `gastmannschaftverl`, `elfmeter`, `heimmannschaftelf`, `gastmannschaftelf`, `gelbekartenheim`, `gelbekartengast`, `rotekartenheim`, `rotekartengast`) VALUES
	(1, 'Gruppe A', 'Saint-Denis', '2017-04-10 21:00:00', 'Frankreich', 'Rumnien', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(2, 'Gruppe A', 'Lens', '2017-04-11 15:00:00', 'Albanien', 'Schweiz', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(3, 'Gruppe A', 'Paris', '2017-11-09 11:00:00', 'Rumnien', 'Schweiz', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(4, 'Gruppe A', 'Marseille', '2018-04-15 21:00:00', 'Frankreich', 'Albanien', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(5, 'Gruppe A', 'Lille', '2018-04-19 21:00:00', 'Schweiz', 'Frankreich', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(6, 'Gruppe A', 'Lyon', '2018-04-19 21:00:00', 'Rumnien', 'Albanien', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 'Gruppe B', 'Bordeaux', '2018-04-11 18:00:00', 'Wales', 'Slowakei', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(8, 'Gruppe B', 'Marseille', '2018-04-11 21:00:00', 'England', 'Russland', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 'Gruppe B', 'Lille', '2018-04-15 15:00:00', 'Russland', 'Slowakei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 'Gruppe B', 'Lens', '2018-04-16 15:00:00', 'England', 'Wales', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(11, 'Gruppe B', 'Saint-tienne', '2018-04-20 21:00:00', 'Slowakei', 'England', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(12, 'Gruppe B', 'Toulouse', '2018-04-20 21:00:00', 'Russland', 'Wales', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(13, 'Gruppe C', 'Nizza', '2018-04-12 18:00:00', 'Polen', 'Nordirland', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(14, 'Gruppe C', 'Lille', '2018-04-12 21:00:00', 'Deutschland', 'Ukraine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 'Gruppe C', 'Lyon', '2018-04-16 18:00:00', 'Ukraine', 'Nordirland', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(16, 'Gruppe C', 'Saint-Denis', '2018-04-16 21:00:00', 'Deutschland', 'Polen', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(17, 'Gruppe C', 'Marseille', '2018-04-21 18:00:00', 'Ukraine', 'Polen', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(18, 'Gruppe C', 'Paris', '2018-04-21 18:00:00', 'Nordirland', 'Deutschland', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 'Gruppe D', 'Paris', '2018-04-12 15:00:00', 'Trkei', 'Kroatien', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(20, 'Gruppe D', 'Toulouse', '2018-04-13 15:00:00', 'Spanien', 'Tschechien', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(21, 'Gruppe D', 'Saint-tienne', '2018-04-17 18:00:00', 'Tschechien', 'Kroatien', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(22, 'Gruppe D', 'Nizza', '2018-04-17 21:00:00', 'Spanien', 'Trkei', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(23, 'Gruppe D', 'Bordeaux', '2018-04-21 21:00:00', 'Kroatien', 'Spanien', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(24, 'Gruppe D', 'Lens', '2018-04-21 21:00:00', 'Tschechien', 'Trkei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, 'Gruppe E', 'Saint-Denis', '2018-04-13 18:00:00', 'Irland', 'Schweden', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(26, 'Gruppe E', 'Lyon', '2018-04-13 21:00:00', 'Belgien', 'Italien', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(27, 'Gruppe E', 'Toulouse', '2018-04-17 15:00:00', 'Italien', 'Schweden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, 'Gruppe E', 'Bordeaux', '2018-04-18 15:00:00', 'Belgien', 'Irland', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(29, 'Gruppe E', 'Lille', '2018-04-22 21:00:00', 'Italien', 'Irland', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(30, 'Gruppe E', 'Nizza', '2018-04-22 21:00:00', 'Schweden', 'Belgien', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(31, 'Gruppe F', 'Bordeaux', '2018-04-14 18:00:00', 'sterreich', 'Ungarn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(32, 'Gruppe F', 'Saint-tienne', '2018-04-14 21:00:00', 'Portugal', 'Island', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(33, 'Gruppe F', 'Marseille', '2018-04-18 18:00:00', 'Island', 'Ungarn', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(34, 'Gruppe F', 'Paris', '2018-04-18 21:00:00', 'Portugal', 'sterreich', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(35, 'Gruppe F', 'Lyon', '2018-04-22 18:00:00', 'Ungarn', 'Portugal', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
	(36, 'Gruppe F', 'Saint-Denis', '2018-04-22 18:00:00', 'Island', 'sterreich', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(37, 'Achtelfinale', 'Saint-tienne', '2018-04-25 15:00:00', 'Zweiter Gruppe A', 'Zweiter Gruppe C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(38, 'Achtelfinale', 'Paris', '2018-04-25 18:00:00', 'Sieger Gruppe B', 'Dritter Gruppe A/C/D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(39, 'Achtelfinale', 'Lens', '2018-04-25 21:00:00', 'Sieger Gruppe D', 'Dritter Gruppe B/E/F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(40, 'Achtelfinale', 'Lyon', '2018-04-26 15:00:00', 'Sieger Gruppe A', 'Dritter Gruppe C/D/E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(41, 'Achtelfinale', 'Lille', '2018-04-26 18:00:00', 'Sieger Gruppe C', 'Dritter Gruppe A/B/F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(42, 'Achtelfinale', 'Toulouse', '2018-04-26 21:00:00', 'Sieger Gruppe F', 'Zweiter Gruppe E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(43, 'Achtelfinale', 'Saint-Denis', '2018-04-27 18:00:00', 'Sieger Gruppe E', 'Zweiter Gruppe D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(44, 'Achtelfinale', 'Nizza', '2018-04-27 21:00:00', 'Zweiter Gruppe B', 'Zweiter Gruppe F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(45, 'Viertelfinale', 'Marseille', '2018-04-30 21:00:00', 'Sieger AF 1', 'Sieger AF 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(46, 'Viertelfinale', 'Lille', '2018-05-01 21:00:00', 'Sieger AF 2', 'Sieger AF 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(47, 'Viertelfinale', 'Bordeaux', '2018-05-02 21:00:00', 'Sieger AF 5', 'Sieger AF 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(48, 'Viertelfinale', 'Saint-Denis', '2018-05-03 21:00:00', 'Sieger AF 4', 'Sieger AF 8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(49, 'Halbfinale', 'Lyon', '2018-05-06 21:00:00', 'Sieger VF 1', 'Sieger VF 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(50, 'Halbfinale', 'Marseille', '2018-05-07 21:00:00', 'Sieger VF 3', 'Sieger VF 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(51, 'Finale   ', 'Saint-Denis', '2018-05-10 21:00:00', 'Sieger HF 1', 'Sieger HF 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `spiele` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle wm2018.spielorte
CREATE TABLE IF NOT EXISTS `spielorte` (
  `Ort` varchar(50) NOT NULL,
  PRIMARY KEY (`Ort`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Exportiere Daten aus Tabelle wm2018.spielorte: ~9 rows (ungefähr)
DELETE FROM `spielorte`;
/*!40000 ALTER TABLE `spielorte` DISABLE KEYS */;
INSERT INTO `spielorte` (`Ort`) VALUES
	('Jekaterinburg'),
	('Kaliningrad'),
	('Kasan'),
	('Moskau'),
	('Nischni Nowgorod'),
	('Rostow am Dom'),
	('Samara'),
	('Sankt Petersburg'),
	('Saransk'),
	('Sotschi'),
	('Wolgograd');
/*!40000 ALTER TABLE `spielorte` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle wm2018.spielplan
CREATE TABLE IF NOT EXISTS `spielplan` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Gruppe` char(50) DEFAULT NULL,
  `Spielort` varchar(50) DEFAULT NULL,
  `Datum` datetime DEFAULT NULL,
  `Heimmannschaft` varchar(50) DEFAULT NULL,
  `Gastmannschaft` varchar(50) DEFAULT NULL,
  `Tore 1` int(11) DEFAULT NULL,
  `Tore 2` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Gruppe` (`Gruppe`),
  KEY `Heimmannschaft` (`Heimmannschaft`),
  KEY `Gastmannschaft` (`Gastmannschaft`),
  KEY `Spielort` (`Spielort`),
  CONSTRAINT `FK_spielplan_gruppe` FOREIGN KEY (`Gruppe`) REFERENCES `gruppe` (`Index`),
  CONSTRAINT `FK_spielplan_spielorte` FOREIGN KEY (`Spielort`) REFERENCES `spielorte` (`Ort`),
  CONSTRAINT `FK_spielplan_teams` FOREIGN KEY (`Heimmannschaft`) REFERENCES `teams` (`Name`),
  CONSTRAINT `FK_spielplan_teams_2` FOREIGN KEY (`Gastmannschaft`) REFERENCES `teams` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=ucs2;

-- Exportiere Daten aus Tabelle wm2018.spielplan: ~48 rows (ungefähr)
DELETE FROM `spielplan`;
/*!40000 ALTER TABLE `spielplan` DISABLE KEYS */;
INSERT INTO `spielplan` (`ID`, `Gruppe`, `Spielort`, `Datum`, `Heimmannschaft`, `Gastmannschaft`, `Tore 1`, `Tore 2`) VALUES
	(1, 'A', 'Moskau', '2018-06-14 17:00:00', 'Russland', 'Saudi-Arabien', NULL, NULL),
	(2, 'A', 'Jekaterinburg', '2018-06-15 14:00:00', 'Ägypten', 'Uruguay', NULL, NULL),
	(3, 'A', 'Sankt Petersburg', '2018-06-19 20:00:00', 'Russland', 'Ägypten', NULL, NULL),
	(4, 'A', 'Rostow am Dom', '2018-06-20 17:00:00', 'Uruguay', 'Saudi-Arabien', NULL, NULL),
	(5, 'A', 'Samara', '2018-06-25 16:00:00', 'Uruguay', 'Russland', NULL, NULL),
	(6, 'A', 'Wolgograd', '2018-06-25 16:00:00', 'Saudi-Arabien', 'Ägypten', NULL, NULL),
	(7, 'B', 'Sotchi', '2018-06-15 17:00:00', 'Marokko', 'Iran', NULL, NULL),
	(8, 'B', 'Sankt Petersrburg', '2018-06-15 20:00:00', 'Portugal', 'Spanien', NULL, NULL),
	(9, 'B', 'Moskau', '2018-06-20 14:00:00', 'Portugal', 'Marokko', NULL, NULL),
	(10, 'B', 'Kasan', '2018-06-20 20:00:00', 'Iran', 'Spanien', NULL, NULL),
	(11, 'B', 'Saransk', '2018-06-25 20:00:00', 'Spanien', 'Marokko', NULL, NULL),
	(12, 'B', 'Kaliningrad', '2018-06-25 20:00:00', 'Iran', 'Portugal', NULL, NULL),
	(13, 'C', 'Kasan', '2018-06-16 12:00:00', 'Frankreich', 'Australien', NULL, NULL),
	(14, 'C', 'Saransk', '2018-06-16 18:00:00', 'Peru', 'Dänemark', NULL, NULL),
	(15, 'C', 'Jekaterinburg', '2018-06-21 14:00:00', 'Frankreich', 'Peru', NULL, NULL),
	(16, 'C', 'Samara', '2018-06-21 17:00:00', 'Dänemark', 'Australien', NULL, NULL),
	(17, 'C', 'Moskau', '2018-06-26 16:00:00', 'Dänemark', 'Frankreich', NULL, NULL),
	(18, 'C', 'Sotschi', '2018-06-26 16:00:00', 'Australien', 'Peru', NULL, NULL),
	(19, 'D', 'Moskau', '2018-06-16 15:00:00', 'Argentinien', 'Island', NULL, NULL),
	(20, 'D', 'Kaliningrad', '2018-06-16 21:00:00', 'Kroatien', 'Nigeria', NULL, NULL),
	(21, 'D', 'Nischni Nowgorod', '2018-06-21 20:00:00', 'Argentinien', 'Kroatien', NULL, NULL),
	(22, 'D', 'Wolgograd', '2018-06-22 17:00:00', 'Nigeria', 'Island', NULL, NULL),
	(23, 'D', 'Rostow am Dom', '2018-06-26 20:00:00', 'Island', 'Kroatien', NULL, NULL),
	(24, 'D', 'Sankt Petersburg', '2018-06-26 20:00:00', 'Nigeria', 'Argentinien', NULL, NULL),
	(25, 'E', 'Samara', '2018-06-17 14:00:00', 'Costa Rica', 'Serbien', NULL, NULL),
	(26, 'E', 'Rostow am Dom', '2018-06-17 20:00:00', 'Brasilien', 'Schweiz', NULL, NULL),
	(27, 'E', 'Sankt Petersburg', '2018-06-22 14:00:00', 'Brasilien', 'Costa Rica', NULL, NULL),
	(28, 'E', 'Kaliningrad', '2018-06-22 20:00:00', 'Serbien', 'Schweiz', NULL, NULL),
	(29, 'E', 'Moskau', '2018-06-27 20:00:00', 'Serbien', 'Brasilien', NULL, NULL),
	(30, 'E', 'Nischni Nowgorod', '2018-06-27 20:00:00', 'Schweiz', 'Costa Rica', NULL, NULL),
	(31, 'F', 'Moskau', '2018-06-17 17:00:00', 'Deutschland', 'Mexiko', NULL, NULL),
	(32, 'F', 'Nischni Nowgorod', '2018-06-18 14:00:00', 'Schweden', 'Südkorea', NULL, NULL),
	(33, 'F', 'Rostow am Dom', '2018-06-23 17:00:00', 'Südkorea', 'Mexiko', NULL, NULL),
	(34, 'F', 'Sotschi', '2018-06-23 20:00:00', 'Deutschland', 'Schweden', NULL, NULL),
	(35, 'F', 'Jekaterinburg', '2018-06-27 16:00:00', 'Mexiko', 'Schweden', NULL, NULL),
	(36, 'F', 'Kaliningrad', '2018-06-27 16:00:00', 'Südkorea', 'Deutschland', NULL, NULL),
	(37, 'G', 'Sotschi', '2017-06-18 17:00:00', 'Belgien', 'Panama', NULL, NULL),
	(38, 'G', 'Wolgograd', '2018-06-18 20:00:00', 'Tunesien', 'England', NULL, NULL),
	(39, 'G', 'Moskau', '2018-06-23 14:00:00', 'Belgien', 'Tunesien', NULL, NULL),
	(40, 'G', 'Nischni Nowgorod', '2018-06-24 14:00:00', 'England', 'Panama', NULL, NULL),
	(41, 'G', 'Kaliningrad', '2018-06-28 20:00:00', 'England', 'Belgien', NULL, NULL),
	(42, 'G', 'Samara', '2018-06-28 20:00:00', 'Panama', 'Tunesien', NULL, NULL),
	(43, 'H', 'Moskau', '2018-06-19 14:00:00', 'Polen', 'Senegal', NULL, NULL),
	(44, 'H', 'Saransk', '2018-06-19 17:00:00', 'Kolumbien', 'Japan', NULL, NULL),
	(45, 'H', 'Jekaterinburg', '2018-06-24 17:00:00', 'Japan', 'Senegal', NULL, NULL),
	(46, 'H', 'Kasan', '2018-06-24 20:00:00', 'Polen', 'Kolumbien', NULL, NULL),
	(47, 'H', 'Samara', '2018-06-28 16:00:00', 'Senegal', 'Kolumbien', NULL, NULL),
	(48, 'H', 'Wolgograd', '2018-06-28 16:00:00', 'Japan', 'Polen', NULL, NULL);
/*!40000 ALTER TABLE `spielplan` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle wm2018.teams
CREATE TABLE IF NOT EXISTS `teams` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Gruppe` char(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_teams_gruppe` (`Gruppe`),
  KEY `Name` (`Name`),
  CONSTRAINT `FK_teams_gruppe` FOREIGN KEY (`Gruppe`) REFERENCES `gruppe` (`Index`)
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

-- Exportiere Struktur von Tabelle wm2018.tipps
CREATE TABLE IF NOT EXISTS `tipps` (
  `tippid` int(10) NOT NULL AUTO_INCREMENT,
  `benutzerid` int(10) DEFAULT NULL,
  `spieleid` int(10) DEFAULT NULL,
  `tippdatum` datetime DEFAULT NULL,
  `tippheimhz` int(4) DEFAULT NULL,
  `tippgasthz` int(4) DEFAULT NULL,
  `tippheimende` int(4) DEFAULT NULL,
  `tippgastende` int(4) DEFAULT NULL,
  `tippheimverl` int(4) DEFAULT NULL,
  `tippgastverl` int(4) DEFAULT NULL,
  `tippheimelf` int(4) DEFAULT NULL,
  `tippgastelf` int(4) DEFAULT NULL,
  `tippgelbeheim` int(4) DEFAULT NULL,
  `tippgelbegast` int(4) DEFAULT NULL,
  `tipproteheim` int(4) DEFAULT NULL,
  `tipprotegast` int(4) DEFAULT NULL,
  PRIMARY KEY (`tippid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle wm2018.tipps: ~0 rows (ungefähr)
DELETE FROM `tipps`;
/*!40000 ALTER TABLE `tipps` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipps` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle wm2018.users
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `anmeldename` varchar(50) DEFAULT NULL,
  `vorname` varchar(50) DEFAULT NULL,
  `nachname` varchar(50) DEFAULT NULL,
  `passwort` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Exportiere Daten aus Tabelle wm2018.users: ~0 rows (ungefähr)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
