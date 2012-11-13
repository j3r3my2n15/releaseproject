-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 14 Novembre 2012 à 00:26
-- Version du serveur: 5.5.25
-- Version de PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données: `release_project`
--

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `proId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `proName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proCreateDate` datetime NOT NULL,
  `proOwner` int(10) unsigned NOT NULL,
  `rodId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`proId`),
  KEY `proName` (`proName`(191)),
  KEY `rodId` (`rodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `releases`
--

CREATE TABLE `releases` (
  `relId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relName` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`relId`),
  KEY `relName` (`relName`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ressources`
--

CREATE TABLE `ressources` (
  `resId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roadmaps`
--

CREATE TABLE `roadmaps` (
  `roaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roaName` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`roaId`),
  KEY `roaName` (`roaName`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `sprints`
--

CREATE TABLE `sprints` (
  `sprId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sprName` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sprId`),
  KEY `sprName` (`sprName`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE `tasks` (
  `tasId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tasName` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tasId`),
  KEY `tasName` (`tasName`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `usersstrories`
--

CREATE TABLE `usersstrories` (
  `useId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `useName` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`useId`),
  KEY `useName` (`useName`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`rodId`) REFERENCES `roadmaps` (`roaId`);
