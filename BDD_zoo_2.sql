-- Il faudra créer le modèle de données suivant :
-- “Je possède un zoo. Dans ce zoo j’ai des animaux. 
-- Je veux garder les informations suivantes des animaux : id, nom, espèce, couleur, id_secteur. 
-- J’ai envie aussi de pouvoir gérer les secteurs. 
-- Chaque secteur aura un id et un nom. 
-- Pour le moment j’en ai 4 : Nord, Est, Sud, Ouest. 
-- Il est possible qu’à l’avenir j’ajoute des secteurs, et aussi des animaux. 
-- Mais attention je ne veux pas que un animal appartiennent à un secteur qui n’existe pas !”.

CREATE TABLE IF NOT EXISTS secteur (
	id_secteur INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nom_secteur VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_secteur)
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS animal (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    espece VARCHAR(50) NOT NULL,
    couleur VARCHAR(50) NOT NULL,
    id_secteur INT UNSIGNED NOT NULL,
    PRIMARY KEY(id)
);

ALTER TABLE animal 
ADD CONSTRAINT fk_animal_secteur FOREIGN KEY (id_secteur) REFERENCES secteur(id_secteur);