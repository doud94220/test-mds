-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 09 juin 2022 à 07:03
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `eleves`;
CREATE TABLE IF NOT EXISTS `eleves` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `id_eleve` int(2) NOT NULL,
  `matiere` varchar(50) COLLATE utf8mb4_unicode_ci,
  `note` FLOAT(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

INSERT INTO `eleves` (`id`, `nom`, `prenom`) VALUES
(1,'Dupont','Albert'),
(2, 'Martin', 'Sophie'),
(3, 'Boucher', 'Alain')


INSERT INTO `notes` (`id_eleve`, `matiere`, `note`) VALUES
(1, 'MATHS', 12.4),
(1, 'HISTOIRE', 7.5),
(1, 'PHYSIQUE', NULL),
(2, 'MATHS', 8),
(2, 'HISTOIRE', 11),
(3, 'MATHS', NULL),
(3, 'HISTOIRE', 13.5),
(1, 'MATHS', 14.4)
