-- “J’ai envie de créer un site qui permettra à des cuistots de créer des recettes. 
-- Pour les cuistots j’ai envie juste envie de savoir leur nom. 
-- Pour les recettes j’ai juste envie de savoir le nom de la recette, la description, 
-- le temps de réalisation et le cuistot qui est l’auteur de cette recette.”.

CREATE TABLE IF NOT EXISTS cuisto (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nom VARCHAR(40) NOT NULL,
    PRIMARY KEY(id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS recette (
    id_recette INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nom VARCHAR(40) NOT NULL,
    description TEXT NOT NULL,
    temps_realisation INT NOT NULL,
    id_cuisto INT UNSIGNED NOT NULL,
    PRIMARY KEY(id_recette)
) ENGINE=INNODB;

ALTER TABLE recette 
ADD CONSTRAINT fk_recette_cuisto 
FOREIGN KEY(id_cuisto) REFERENCES cuisto(id);