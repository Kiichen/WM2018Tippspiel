-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               10.1.19-MariaDB - Source distribution
-- Server Betriebssystem:        Linux
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Exportiere Struktur von Tabelle em2016.benutzer
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

-- Exportiere Daten aus Tabelle em2016.benutzer: ~10 rows (ungefähr)
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

-- Exportiere Struktur von Tabelle em2016.ranking
CREATE TABLE IF NOT EXISTS `ranking` (
  `datum` datetime DEFAULT NULL,
  `benutzerid` int(11) DEFAULT NULL,
  `punkte` int(10) DEFAULT NULL,
  `platz` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle em2016.ranking: ~0 rows (ungefähr)
DELETE FROM `ranking`;
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle em2016.spiele
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

-- Exportiere Daten aus Tabelle em2016.spiele: ~51 rows (ungefähr)
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

-- Exportiere Struktur von Tabelle em2016.tipps
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle em2016.tipps: ~30 rows (ungefähr)
DELETE FROM `tipps`;
/*!40000 ALTER TABLE `tipps` DISABLE KEYS */;
INSERT INTO `tipps` (`tippid`, `benutzerid`, `spieleid`, `tippdatum`, `tippheimhz`, `tippgasthz`, `tippheimende`, `tippgastende`, `tippheimverl`, `tippgastverl`, `tippheimelf`, `tippgastelf`, `tippgelbeheim`, `tippgelbegast`, `tipproteheim`, `tipprotegast`) VALUES
  (1, 1, 1, NULL, 1, 2, 2, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
  (2, 1, 2, NULL, 1, 2, 2, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
  (3, 1, 37, NULL, 1, 2, 2, 2, 3, 3, 7, 6, 0, 1, 1, 0),
  (4, 2, 1, NULL, 2, 2, 3, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
  (5, 2, 2, NULL, 2, 2, 3, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
  (6, 2, 37, NULL, 2, 2, 2, 2, 3, 3, 7, 6, 0, 1, 1, 1),
  (7, 3, 1, NULL, 4, 2, 4, 2, NULL, NULL, NULL, NULL, 1, 1, 1, 0),
  (8, 3, 2, NULL, 1, 2, 2, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
  (9, 3, 37, NULL, 1, 2, 2, 2, 3, 3, 7, 6, 0, 1, 1, 0),
  (10, 4, 1, NULL, 1, 2, 3, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
  (11, 4, 2, NULL, 2, 2, 3, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
  (12, 4, 37, NULL, 2, 2, 2, 2, 3, 3, 5, 6, 0, 1, 1, 2),
  (13, 5, 1, NULL, 1, 2, 2, 5, NULL, NULL, NULL, NULL, 1, 1, 1, 0),
  (14, 5, 2, NULL, 1, 2, 3, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
  (15, 5, 37, NULL, 1, 2, 2, 2, 3, 3, 7, 6, 0, 1, 1, 0),
  (16, 6, 1, NULL, 2, 2, 3, 4, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
  (17, 6, 2, NULL, 2, 2, 3, 2, NULL, NULL, NULL, NULL, 0, 2, 1, 1),
  (18, 6, 37, NULL, 2, 2, 2, 2, 3, 3, 7, 6, 1, 1, 1, 1),
  (19, 7, 1, NULL, 0, 2, 4, 2, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
  (20, 7, 2, NULL, 1, 2, 2, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
  (21, 7, 37, NULL, 1, 0, 2, 2, 4, 3, NULL, NULL, 0, 1, 1, 0),
  (22, 8, 1, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
  (23, 8, 2, NULL, 2, 2, 3, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
  (24, 8, 37, NULL, 2, 2, 3, 2, NULL, NULL, NULL, NULL, 1, 1, 1, 0),
  (25, 9, 1, NULL, 0, 2, 4, 2, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
  (26, 9, 2, NULL, 1, 2, 2, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
  (27, 9, 37, NULL, 1, 0, 2, 2, 4, 3, NULL, NULL, 0, 1, 1, 0),
  (28, 10, 1, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
  (29, 10, 2, NULL, 2, 2, 3, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 1),
  (30, 10, 37, NULL, 2, 2, 3, 2, NULL, NULL, NULL, NULL, 1, 1, 1, 0),
  (31, 1, 8, '2017-11-07 11:11:02', 2, 2, 2, 2, NULL, NULL, NULL, NULL, 2, 2, 2, 2);
/*!40000 ALTER TABLE `tipps` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
