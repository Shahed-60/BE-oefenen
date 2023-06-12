-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 18 mei 2023 om 13:18
-- Serverversie: 5.7.36
-- PHP-versie: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Mvc-2209c-P4`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Instructeur`
--

DROP TABLE IF EXISTS `Instructeur`;
CREATE TABLE IF NOT EXISTS `Instructeur` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Voornaam` varchar(50) NOT NULL,
  `Tussenvoegsel` varchar(10) NOT NULL,
  `Achternaam` varchar(50) NOT NULL,
  `Mobiel` varchar(12) NOT NULL,
  `DatumInDienst` date NOT NULL,
  `AantalSterren` varchar(6) NOT NULL,
  `IsActief` bit(1) NOT NULL DEFAULT b'1',
  `Opmerkingen` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Instructeur`
--

INSERT INTO `Instructeur` (`Id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mobiel`, `DatumInDienst`, `AantalSterren`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 'Li', '', 'Zhan', '06-28493827', '2015-04-17', '***', b'1', NULL, '2023-04-18 11:54:30.823289', '2023-04-18 11:54:30.823291'),
(2, 'Leroy', '', 'Boerhaven', '06-39398734', '2018-06-25', '*', b'1', NULL, '2023-04-18 11:54:30.823326', '2023-04-18 11:54:30.823327'),
(3, 'Yoeri', 'Van', 'Veen', '06-24383291', '2010-05-12', '***', b'1', NULL, '2023-04-18 11:54:30.823336', '2023-04-18 11:54:30.823336'),
(4, 'Bert', 'Van', 'Sali', '06-48293823', '2023-10-01', '****', b'1', NULL, '2023-04-18 11:54:30.823340', '2023-04-18 11:54:30.823340'),
(5, 'Mohammed', 'El', 'Yassidi', '06-34291234', '2010-06-14', '*****', b'1', NULL, '2023-04-18 11:54:30.823344', '2023-04-18 11:54:30.823344');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TypeVoertuig`
--

DROP TABLE IF EXISTS `TypeVoertuig`;
CREATE TABLE IF NOT EXISTS `TypeVoertuig` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TypeVoertuig` varchar(20) NOT NULL,
  `Rijbewijscategorie` varchar(5) NOT NULL,
  `IsActief` bit(1) NOT NULL DEFAULT b'1',
  `Opmerkingen` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `TypeVoertuig`
--

INSERT INTO `TypeVoertuig` (`Id`, `TypeVoertuig`, `Rijbewijscategorie`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 'Personenauto', 'B', b'1', NULL, '2023-04-18 11:54:30.884643', '2023-04-18 11:54:30.884646'),
(2, 'Vrachtwagen', 'C', b'1', NULL, '2023-04-18 11:54:30.884677', '2023-04-18 11:54:30.884678'),
(3, 'Bus', 'D', b'1', NULL, '2023-04-18 11:54:30.884686', '2023-04-18 11:54:30.884686'),
(4, 'Bromfiets', 'AM', b'1', NULL, '2023-04-18 11:54:30.884689', '2023-04-18 11:54:30.884690');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Voertuig`
--

DROP TABLE IF EXISTS `Voertuig`;
CREATE TABLE IF NOT EXISTS `Voertuig` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Kenteken` varchar(10) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Bouwjaar` date NOT NULL,
  `Brandstof` varchar(12) NOT NULL,
  `TypeVoertuigId` tinyint(3) UNSIGNED NOT NULL,
  `IsActief` bit(1) NOT NULL DEFAULT b'1',
  `Opmerkingen` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_Voertuig_TypeVoertuigId_TypeVoertuig_Id` (`TypeVoertuigId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Voertuig`
--

INSERT INTO `Voertuig` (`Id`, `Kenteken`, `Type`, `Bouwjaar`, `Brandstof`, `TypeVoertuigId`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 'AU-67-IO', 'Golf', '2017-06-12', 'Diesel', 1, b'1', NULL, '2023-04-18 11:54:30.971905', '2023-04-18 11:54:30.971906'),
(2, 'AU-67-IO', 'Golf', '2017-06-12', 'Diesel', 1, b'1', NULL, '2023-04-18 11:54:30.971943', '2023-04-18 11:54:30.971943'),
(3, 'TR-24-OP', 'DAF', '2019-05-23', 'Diesel', 2, b'1', NULL, '2023-04-18 11:54:30.971952', '2023-04-18 11:54:30.971953'),
(4, 'TH-78-KL', 'Mercedes', '2023-01-01', 'Benzine', 1, b'1', NULL, '2023-04-18 11:54:30.971957', '2023-04-18 11:54:30.971957'),
(5, '90-KL-TR', 'Fiat 500', '2021-09-12', 'Benzine', 1, b'1', NULL, '2023-04-18 11:54:30.971962', '2023-04-18 11:54:30.971962'),
(6, '34-TK-LP', 'Scania', '2015-03-13', 'Diesel', 2, b'1', NULL, '2023-04-18 11:54:30.971966', '2023-04-18 11:54:30.971966'),
(7, 'YY-OP-78', 'BMW M5', '2022-05-13', 'Diesel', 1, b'1', NULL, '2023-04-18 11:54:30.971970', '2023-04-18 11:54:30.971970'),
(8, 'UU-HH-JK', 'M.A.N', '2017-12-03', 'Diesel', 2, b'1', NULL, '2023-04-18 11:54:30.971974', '2023-04-18 11:54:30.971974'),
(9, 'ST-FZ-28', 'Citroën', '2018-01-20', 'Elektrisch', 1, b'1', NULL, '2023-04-18 11:54:30.971978', '2023-04-18 11:54:30.971979'),
(10, '123-FR-T', 'Piaggio ZIP', '2021-02-01', 'Benzine', 4, b'1', NULL, '2023-04-18 11:54:30.971982', '2023-04-18 11:54:30.971983'),
(11, 'DRS-52-P', 'Vespa', '2022-03-21', 'Benzine', 4, b'1', NULL, '2023-04-18 11:54:30.971988', '2023-04-18 11:54:30.971988'),
(12, 'STP-12-U', 'Kymco', '2022-07-02', 'Benzine', 4, b'1', NULL, '2023-04-18 11:54:30.971993', '2023-04-18 11:54:30.971993'),
(13, '45-SD-23', 'Renault', '2023-01-01', 'Diesel', 3, b'1', NULL, '2023-04-18 11:54:30.971997', '2023-04-18 11:54:30.971997');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `VoertuigInstructeur`
--

DROP TABLE IF EXISTS `VoertuigInstructeur`;
CREATE TABLE IF NOT EXISTS `VoertuigInstructeur` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `VoertuigId` tinyint(3) UNSIGNED NOT NULL,
  `InstructeurId` tinyint(3) UNSIGNED NOT NULL,
  `DatumToekening` date DEFAULT NULL,
  `IsActief` bit(1) NOT NULL DEFAULT b'1',
  `Opmerkingen` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_VoertuigInstructeur_VoertuigId_Voertuig_Id` (`VoertuigId`),
  KEY `FK_VoertuigInstructeur_InstructeurId_Insructeur_Id` (`InstructeurId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `VoertuigInstructeur`
--

INSERT INTO `VoertuigInstructeur` (`Id`, `VoertuigId`, `InstructeurId`, `DatumToekening`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 1, 5, '2017-06-18', b'1', NULL, '2023-04-18 11:54:31.030789', '2023-04-18 11:54:31.030791'),
(2, 3, 1, '2021-09-26', b'1', NULL, '2023-04-18 11:54:31.030830', '2023-04-18 11:54:31.030831'),
(3, 9, 1, '2021-09-27', b'1', NULL, '2023-04-18 11:54:31.030841', '2023-04-18 11:54:31.030841'),
(4, 3, 4, '2022-08-01', b'1', NULL, '2023-04-18 11:54:31.030849', '2023-04-18 11:54:31.030849'),
(5, 5, 1, '2019-08-30', b'1', NULL, '2023-04-18 11:54:31.030855', '2023-04-18 11:54:31.030855'),
(6, 10, 5, '2020-02-02', b'1', NULL, '2023-04-18 11:54:31.030860', '2023-04-18 11:54:31.030860');

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `Voertuig`
--
ALTER TABLE `Voertuig`
  ADD CONSTRAINT `FK_Voertuig_TypeVoertuigId_TypeVoertuig_Id` FOREIGN KEY (`TypeVoertuigId`) REFERENCES `TypeVoertuig` (`Id`);

--
-- Beperkingen voor tabel `VoertuigInstructeur`
--
ALTER TABLE `VoertuigInstructeur`
  ADD CONSTRAINT `FK_VoertuigInstructeur_InstructeurId_Insructeur_Id` FOREIGN KEY (`InstructeurId`) REFERENCES `Instructeur` (`Id`),
  ADD CONSTRAINT `FK_VoertuigInstructeur_VoertuigId_Voertuig_Id` FOREIGN KEY (`VoertuigId`) REFERENCES `Voertuig` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
