-- Créer une base de données ‘voitures’.
-- Créer une table ‘cars’ qui contiendrait les colonnes suivante : 
-- id, nom, vmax, puissance_moteur, couleur
-- Entrer les données suivante : 
-- 1 - SuperLambo - 345 - 780 - noire
-- 2 - SuperTwingo - 160 - 60 - jaune
-- 3 - McLaren - 340 - 700 - bleue
-- 4 - Megane RS - 270 - 300 - noire
-- 5 - R5 GT Turbo - 230 - 300 - blanche 

CREATE DATABASE voitures CHARACTER SET 'utf8';
USE voitures;
CREATE TABLE cars (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nom VARCHAR(20) NOT NULL,
    vmax INT UNSIGNED NOT NULL,
    puissance_moteur INT UNSIGNED NOT NULL,
    couleur VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

INSERT INTO cars (nom, vmax, puissance_moteur, couleur)
VALUES ('SpuerLambo', 345, 780, 'noire'),
    ('SuperTwingo', 160, 60, 'jaune'),
    ('McLaren', 340, 700, 'bleue'),
    ('Megane RS', 270, 300, 'noire'),
    ('R5 GT Turbo', 230, 300, 'blanche');

-- Récupérer la liste des couleurs (sans doublons)

SELECT DISTINCT couleur FROM cars ORDER BY couleur;

-- Récupérer la voiture la plus puissante 

SELECT * FROM cars ORDER BY puissance_moteur DESC LIMIT 1;

-- Récupérer les voitures noires qui font plus de 500 chevaux

SELECT * FROM cars WHERE couleur='noire' AND puissance_moteur > 500;

-- Supprimer la voiture SuperTwingo  

DELETE FROM cars WHERE nom='SuperTwingo';

-- Insérer la voiture SuperTwingo2 qui aura les données suivante 450 - 1600 - dorée

INSERT INTO cars (nom, vmax, puissance_moteur, couleur)
VALUES ('SuperTwingo2', 450, 1600, 'dorée');

-- Modifier la SuperTwingo2 et mettre les données suivantes 500 - 1900 - dorée 

UPDATE cars SET vmax=500, puissance_moteur=1900 WHERE nom='SuperTwingo2';

-- Modifier le nom de la voiture SuperLambo en Lamborghini

UPDATE cars SET nom='Lamborghini' WHERE nom='SpuerLambo';

-- Modifier la couleur de la Megane RS en ‘bleue’

UPDATE cars SET couleur='bleue' WHERE nom='Megane RS';

-- Supprimer les voitures qui ont l’ID 1, 3 et 4 (IN)

DELETE FROM cars WHERE id IN(1, 3, 4);