-- Créer une base de données ‘jeu’.
-- Créer une table ‘personnages’ avec les colonnes suivantes :
-- Id
-- Nom
-- Attaque
-- Defense
-- Magie (0 ou 1)
-- Supprimer la colonne Magie et  ajouter les personnages suivant dans la table : 
-- Zeus | 50 | 50
-- Achilles | 40 | 10
-- Minotaure | 20 | 5

CREATE DATABASE jeu CHARACTER SET 'utf8';
USE jeu;
CREATE TABLE personnages (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nom VARCHAR(20) NOT NULL,
    attaque INT UNSIGNED NOT NULL,
    defense INT UNSIGNED NOT NULL,
    magie TINYINT NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

ALTER TABLE personnages
DROP COLUMN magie;

INSERT INTO personnages (nom, attaque, defense)
VALUES ('Zeus', 50, 50),
('Achilles', 40, 10),
('Minotaure', 20, 5)