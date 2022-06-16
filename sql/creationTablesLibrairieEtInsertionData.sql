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

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `livre_id` int(2) NOT NULL AUTO_INCREMENT,
  `livre_prix` int(2) NOT NULL,
  `livre_titre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `livre_genre` int(2) DEFAULT NULL,
  PRIMARY KEY (`livre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

DROP TABLE IF EXISTS `lib_genre`;
CREATE TABLE IF NOT EXISTS `lib_genre` (
  `genre_id` int(2) NOT NULL AUTO_INCREMENT,
  `genre_libelle` varchar(50) COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`genre_id`),
  -- CONSTRAINT `fk_genre_livre` FOREIGN KEY (`genre_id`) REFERENCES `livre` (`livre_genre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

--J'arrive pas à fairela FK, mais pa sindispensable pour faire les requetes SQL

INSERT INTO `livre` (`livre_id`, `livre_prix`, `livre_titre`, `livre_genre`) VALUES
(1, 40,  'Le glaive magique', 1),
(3, 40,  'Gaffes en gros',  1),
(4, 40,  'Lagaffe nous gâte', 1),
(5, 45,  'QRN sur Bretzelburg', 1),
(6, 80,  'Tour de manège', 3),
(7, 45,  "Le spectre aux balles d'or", 1),
(8, 30,  'La bonne chanson', 2),
(9, 50,  'La jeune Parque', 2),
(10,  50,  'Michel Strogoff', 4),
(11,  50,  "La Serpe d'or", 1),
(12,  70,  "Toujours aimer", 3),
(13,  70,  "Toujours aimante", 3),
(14,  72,  "Toujours aimé", 3)

INSERT INTO `lib_genre` (`genre_id`, `genre_libelle`) VALUES
(1, 'Bande Dessinée'),
(2, 'Poésie'),
(3, 'Roman de gare'),
(4, 'Roman'),
(5, 'Science-Fiction')
