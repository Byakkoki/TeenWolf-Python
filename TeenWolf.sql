-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 25 nov. 2021 à 07:15
-- Version du serveur : 10.3.31-MariaDB-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `TeenWolf`
--

-- --------------------------------------------------------

--
-- Structure de la table `Chasseur`
--

CREATE TABLE `Chasseur` (
  `idChasseur` varchar(255) NOT NULL,
  `chasseur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Chasseur`
--

INSERT INTO `Chasseur` (`idChasseur`, `chasseur`) VALUES
('30b3b84b-f6fc-4c50-b8de-e260d10ef85d', 'Calavera'),
('d7044352-64a8-4b34-a444-8fea4ef2f3b5', 'AUCUN'),
('ee24934d-a9b1-4969-8a4e-48ca49d89f29', 'Argent');

-- --------------------------------------------------------

--
-- Structure de la table `Meute`
--

CREATE TABLE `Meute` (
  `idMeute` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `Rang_idRang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Meute`
--

INSERT INTO `Meute` (`idMeute`, `nom`, `Rang_idRang`) VALUES
('173c1ade-1e4e-4f16-9bcd-2b8ee4d2445b', 'Meute de Satomi Ito', NULL),
('3c0d759b-4121-4bbe-8fe3-e682552b2ba8', 'Meute de Derek', NULL),
('8d1aa520-a516-4ad7-b0db-7f7cadc801a4', 'Meute Alpha', NULL),
('a834ba95-e553-422a-a9ee-3a22f0655923', 'Meute de Scott', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Nomacteur`
--

CREATE TABLE `Nomacteur` (
  `idNomacteur` varchar(255) NOT NULL,
  `Personnage_idPersonnage` varchar(255) NOT NULL,
  `nomacteur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Nomacteur`
--

INSERT INTO `Nomacteur` (`idNomacteur`, `Personnage_idPersonnage`, `nomacteur`) VALUES
('0dc343c7-1cb3-4599-afbe-9606ba729894', '4a23c2fa-a709-4734-bb35-0d917a62355f', 'Ivonne Coll'),
('0f996937-d33f-47bb-a14b-af453a8ecd0d', '816a5c6b-a09f-4ca2-99d3-08f95193a438', 'Colton Haynes'),
('19ee1bd8-5bc6-421e-9d88-0c9933e1edd4', '4e9b1f51-8dec-4f10-bf67-892030764594', 'Dylan O\'Brien'),
('1fd879db-5c20-461a-a212-d1806f7534bf', 'c28bf169-ac06-4443-85be-8a0d57a02982', 'Tyler Posey'),
('2548ca38-0051-4e50-9a17-f78003bf9fd8', '6442f2aa-d5fe-44a2-8f1d-ace5183d25d5', 'Linden Ashby'),
('52fd6049-af63-4962-8524-cf713cd04c50', '50d63fef-1153-41f9-b9c1-8b9ccb159ca2', 'Tyler Hoechlin'),
('71233527-95c1-437c-972a-208cde7327b1', '02425158-8c32-4e08-a865-d7afb704b3cc', 'Holland Roden'),
('7c237d76-6762-49f9-9bb9-a2c4c53fae0f', '28f2027c-872a-411e-9ccb-a9ae599b05ec', 'Arden Cho'),
('8d299ee7-1f7e-4b67-9158-836f83e13e45', '9f914a1c-2495-42b5-a07c-e917134b1663', 'Shelley Hennig'),
('8f7a3b4d-cd93-4439-a720-7f377b3d853f', 'ec43647c-9ae8-4fc3-bf9c-6aaccac83a8c', 'Melissa Ponzio'),
('98dabe2f-21d0-486b-bf38-99f9a3ac2baa', '96415664-00f8-4523-b883-e47538bf0426', 'Dylan Sprayberry'),
('cae59d60-017a-44bb-a603-8a3ff42d99f7', '8190a695-5e17-46e1-bad1-9bba10244e0a', 'Ryan Kelley'),
('d23f6ac2-e2a5-4d0a-a9a1-6f16aa28b2ff', 'ac286f86-168b-444d-91bc-5cf8ece880be', 'Crystal Reed'),
('dd08f8d0-fdc1-4ac7-89ca-c8b5da1e6282', '552eb49f-7f6e-4bbc-8cb2-3f1786fa008a', 'J. R. Bourne');

-- --------------------------------------------------------

--
-- Structure de la table `Personnage`
--

CREATE TABLE `Personnage` (
  `idPersonnage` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `Nomacteur_idNomacteur` varchar(255) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `age` int(11) NOT NULL,
  `Race_idRace` varchar(255) DEFAULT NULL,
  `Chasseur_idChasseur` varchar(255) DEFAULT NULL,
  `Meute_idMeute` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Personnage`
--

INSERT INTO `Personnage` (`idPersonnage`, `nom`, `Nomacteur_idNomacteur`, `description`, `age`, `Race_idRace`, `Chasseur_idChasseur`, `Meute_idMeute`) VALUES
('02425158-8c32-4e08-a865-d7afb704b3cc', 'MARTIN Lydia', '71233527-95c1-437c-972a-208cde7327b1', 'Lydia Camille-Grace Martin est la deutéragoniste de la série télévisée Teen Wolf, et la dernière descendante d\'une lignée de Banshee, des sorcières, messagères de la mort.', 19, '3f00912b-5376-459b-b9c2-16a9a80feea5', 'd7044352-64a8-4b34-a444-8fea4ef2f3b5', 'a834ba95-e553-422a-a9ee-3a22f0655923'),
('28f2027c-872a-411e-9ccb-a9ae599b05ec', 'YUKIMURA Kira', '7c237d76-6762-49f9-9bb9-a2c4c53fae0f', 'Elle existe pas cela', 19, 'c337d845-453d-4858-b12c-ce4548711438', 'd7044352-64a8-4b34-a444-8fea4ef2f3b5', 'a834ba95-e553-422a-a9ee-3a22f0655923'),
('4a23c2fa-a709-4734-bb35-0d917a62355f', 'CALAVERA Araya', '0dc343c7-1cb3-4599-afbe-9606ba729894', 'Araya Calavera est un personnage secondaire des saisons 3 et 4 de la série télévisée Teen Wolf. Elle est la matriarche de la famille Calavera.', 44, 'fb884951-c446-48ef-84e2-c8ae8691a65f', '30b3b84b-f6fc-4c50-b8de-e260d10ef85d', NULL),
('4e9b1f51-8dec-4f10-bf67-892030764594', 'STILINSKI Stiles', '19ee1bd8-5bc6-421e-9d88-0c9933e1edd4', 'Mieczyslaw Stilinski, plus communément appelé par son diminutif « Stiles », est un des protagonistes centraux de la série télévisée Teen Wolf et un humain né à Beacon Hills', 19, 'fb884951-c446-48ef-84e2-c8ae8691a65f', 'd7044352-64a8-4b34-a444-8fea4ef2f3b5', 'a834ba95-e553-422a-a9ee-3a22f0655923'),
('50d63fef-1153-41f9-b9c1-8b9ccb159ca2', 'HALE Derek', '52fd6049-af63-4962-8524-cf713cd04c50', 'Derek Hale est un personnage récurrent protagoniste de la série télévisée Teen Wolf. Il est un loup-garou de naissance, second enfant de Talia Hale, petit frère de Laura Hale et grand frère de Cora Hale.', 29, 'f8f7ecdd-bcf9-4952-90fd-99ecaa69b621', 'd7044352-64a8-4b34-a444-8fea4ef2f3b5', '3c0d759b-4121-4bbe-8fe3-e682552b2ba8'),
('552eb49f-7f6e-4bbc-8cb2-3f1786fa008a', 'ARGENT Chris', 'dd08f8d0-fdc1-4ac7-89ca-c8b5da1e6282', 'Christopher « Chris » Argent est un tritagoniste de la série télévisée Teen Wolf. Il est un Chasseur de Loups-garou et dernier survivant de la famille Argent.', 44, 'fb884951-c446-48ef-84e2-c8ae8691a65f', 'ee24934d-a9b1-4969-8a4e-48ca49d89f29', NULL),
('6442f2aa-d5fe-44a2-8f1d-ace5183d25d5', 'STILINSKI Noah', '2548ca38-0051-4e50-9a17-f78003bf9fd8', 'Noah Stilinski est un tritagoniste de la série télévisée Teen Wolf. Il est un humain, fils unique d\'Elias Stilinski, le père de Mieczyslaw Stilinski ; alias « Stiles », et l\'époux de Claudia.', 46, 'fb884951-c446-48ef-84e2-c8ae8691a65f', 'ee24934d-a9b1-4969-8a4e-48ca49d89f29', NULL),
('816a5c6b-a09f-4ca2-99d3-08f95193a438', 'WHITETEMORE Jackson', '0f996937-d33f-47bb-a14b-af453a8ecd0d', 'Jackson Miller ; baptisé Jackson Whittemore, est un protagoniste de la série télévisée Teen Wolf. Il est le fils unique de Gordon et Margarett Miller, et fils adoptif de David Whittemore et son épouse.', 19, '10c11c45-9bc5-4128-af83-587dd60cf4b3', 'd7044352-64a8-4b34-a444-8fea4ef2f3b5', NULL),
('8190a695-5e17-46e1-bad1-9bba10244e0a', 'PARRISH Jordan', 'cae59d60-017a-44bb-a603-8a3ff42d99f7', 'Jordan Tom Parrish est un récurrent personnage de soutien de la série télévisée Teen Wolf. Il est un policier, remplaçant de Tara Graeme, l\'ancienne adjointe du Shérif Noah Stilinski.', 34, 'e7a0c27e-6d7a-4a8b-a543-ef7b342ce4b8', 'ee24934d-a9b1-4969-8a4e-48ca49d89f29', 'a834ba95-e553-422a-a9ee-3a22f0655923'),
('96415664-00f8-4523-b883-e47538bf0426', 'DUNBAR Liam', '98dabe2f-21d0-486b-bf38-99f9a3ac2baa', 'Liam Eugene Dunbar est un protagoniste de la série télévisée Teen Wolf. Il est un lycéen de Beacon Hills High School transformé en Loup-garou Bêta après avoir été mordu par obligation par Scott McCall.', 18, 'f8f7ecdd-bcf9-4952-90fd-99ecaa69b621', 'd7044352-64a8-4b34-a444-8fea4ef2f3b5', 'a834ba95-e553-422a-a9ee-3a22f0655923'),
('9f914a1c-2495-42b5-a07c-e917134b1663', 'TATE Malia', '8d299ee7-1f7e-4b67-9158-836f83e13e45', 'Malia Elizabeth Hale est un personnage de soutien de la série télévisée Teen Wolf. Elle est une coyote garou, qui a été recueillie par une famille d\'humains au nom de famille de Tate.', 19, 'c6ba55ad-fc90-4f40-ada6-711ddfe6927e', 'd7044352-64a8-4b34-a444-8fea4ef2f3b5', 'a834ba95-e553-422a-a9ee-3a22f0655923'),
('ac286f86-168b-444d-91bc-5cf8ece880be', 'ARGENT Allison', 'd23f6ac2-e2a5-4d0a-a9a1-6f16aa28b2ff', 'Celestine « Allison » Argent est une protagoniste de la série télévisée Teen Wolf. Elle est une chasseuse, dernière descendante de la famille Argent (la plus grande famille de chasseur) et le portrait craché de Marie-Jeanne Valet.', 17, 'fb884951-c446-48ef-84e2-c8ae8691a65f', 'ee24934d-a9b1-4969-8a4e-48ca49d89f29', 'a834ba95-e553-422a-a9ee-3a22f0655923'),
('c28bf169-ac06-4443-85be-8a0d57a02982', 'SCOTT McCall', '1fd879db-5c20-461a-a212-d1806f7534bf', 'Scott Gregorio McCall est le protagoniste principal de la série télévisée Teen Wolf. Il est un loup-garou et le premier à devenir un Vrai Alpha depuis des siècles. C\'est pour cela qu\'il est connu à travers Beacon Hill et que tous les autres Loups-garous mettent sa tête à prix.', 19, 'f8f7ecdd-bcf9-4952-90fd-99ecaa69b621', 'd7044352-64a8-4b34-a444-8fea4ef2f3b5', 'a834ba95-e553-422a-a9ee-3a22f0655923'),
('ec43647c-9ae8-4fc3-bf9c-6aaccac83a8c', 'McCall Melissa', '8f7a3b4d-cd93-4439-a720-7f377b3d853f', 'Melissa Delgado est une tritagoniste de la série télévisée Teen Wolf. Elle est baptisée « McCall » après avoir accouché de son fils unique, Scott McCall. Elle est la femme de Rafael McCall.', 40, 'fb884951-c446-48ef-84e2-c8ae8691a65f', 'ee24934d-a9b1-4969-8a4e-48ca49d89f29', 'a834ba95-e553-422a-a9ee-3a22f0655923');

-- --------------------------------------------------------

--
-- Structure de la table `Race`
--

CREATE TABLE `Race` (
  `idRace` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Race`
--

INSERT INTO `Race` (`idRace`, `nom`) VALUES
('10c11c45-9bc5-4128-af83-587dd60cf4b3', 'Kanima'),
('20dc0f59-379b-4f82-8891-66263028cef6', 'Wendigo'),
('221d698b-90f9-44cf-a029-fb685d355a16', 'Oni'),
('3f00912b-5376-459b-b9c2-16a9a80feea5', 'Banshee'),
('5366c460-670e-4c81-bcae-3f04438b7955', 'Okitsune'),
('c337d845-453d-4858-b12c-ce4548711438', 'Kitsune'),
('c6ba55ad-fc90-4f40-ada6-711ddfe6927e', 'Coyotte'),
('e7a0c27e-6d7a-4a8b-a543-ef7b342ce4b8', 'Chien de L\'enfer'),
('f30b64c4-7b7a-4ff4-9ead-6e25dae31d02', 'Berserker'),
('f8f7ecdd-bcf9-4952-90fd-99ecaa69b621', 'Loup Garou'),
('fb884951-c446-48ef-84e2-c8ae8691a65f', 'Emissaire/Aide');

-- --------------------------------------------------------

--
-- Structure de la table `Rang`
--

CREATE TABLE `Rang` (
  `idRang` varchar(255) NOT NULL,
  `Race_idRace` varchar(255) NOT NULL,
  `rang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Rang`
--

INSERT INTO `Rang` (`idRang`, `Race_idRace`, `rang`) VALUES
('059204c7-9379-4e7d-86a4-f5f5c8cd88f2', 'f8f7ecdd-bcf9-4952-90fd-99ecaa69b621', 'Vrai Alpha'),
('0809e28c-785a-4b95-a8e5-1021fa5b5926', 'f8f7ecdd-bcf9-4952-90fd-99ecaa69b621', 'Alpha'),
('65bcaf2c-1f6c-4539-80cd-c627b0c3f3f1', 'f8f7ecdd-bcf9-4952-90fd-99ecaa69b621', 'Beta'),
('ebb4c17a-15ea-49e7-b0c9-bcd598721141', 'f8f7ecdd-bcf9-4952-90fd-99ecaa69b621', 'Omega');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Chasseur`
--
ALTER TABLE `Chasseur`
  ADD PRIMARY KEY (`idChasseur`);

--
-- Index pour la table `Meute`
--
ALTER TABLE `Meute`
  ADD PRIMARY KEY (`idMeute`),
  ADD KEY `fk_Meute_Rang1` (`Rang_idRang`);

--
-- Index pour la table `Nomacteur`
--
ALTER TABLE `Nomacteur`
  ADD PRIMARY KEY (`idNomacteur`),
  ADD KEY `fk_Nomacteur_Personnage1` (`Personnage_idPersonnage`);

--
-- Index pour la table `Personnage`
--
ALTER TABLE `Personnage`
  ADD PRIMARY KEY (`idPersonnage`),
  ADD KEY `fk_Personnage_Race` (`Race_idRace`),
  ADD KEY `fk_Personnage_Chasseur1` (`Chasseur_idChasseur`),
  ADD KEY `fk_Personnage_Meute1` (`Meute_idMeute`),
  ADD KEY `fk_Personnage_Nomacteur1` (`Nomacteur_idNomacteur`);

--
-- Index pour la table `Race`
--
ALTER TABLE `Race`
  ADD PRIMARY KEY (`idRace`);

--
-- Index pour la table `Rang`
--
ALTER TABLE `Rang`
  ADD PRIMARY KEY (`idRang`),
  ADD KEY `fk_Rang_Race1` (`Race_idRace`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Meute`
--
ALTER TABLE `Meute`
  ADD CONSTRAINT `fk_Meute_Rang1` FOREIGN KEY (`Rang_idRang`) REFERENCES `Rang` (`idRang`) ON DELETE NO ACTION;

--
-- Contraintes pour la table `Nomacteur`
--
ALTER TABLE `Nomacteur`
  ADD CONSTRAINT `fk_Nomacteur_Personnage1` FOREIGN KEY (`Personnage_idPersonnage`) REFERENCES `Personnage` (`idPersonnage`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Personnage`
--
ALTER TABLE `Personnage`
  ADD CONSTRAINT `fk_Personnage_Chasseur1` FOREIGN KEY (`Chasseur_idChasseur`) REFERENCES `Chasseur` (`idChasseur`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Personnage_Meute1` FOREIGN KEY (`Meute_idMeute`) REFERENCES `Meute` (`idMeute`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Personnage_Nomacteur1` FOREIGN KEY (`Nomacteur_idNomacteur`) REFERENCES `Nomacteur` (`idNomacteur`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Personnage_Race` FOREIGN KEY (`Race_idRace`) REFERENCES `Race` (`idRace`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Rang`
--
ALTER TABLE `Rang`
  ADD CONSTRAINT `fk_Rang_Race1` FOREIGN KEY (`Race_idRace`) REFERENCES `Race` (`idRace`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
