-- ================================================
-- EXEMPLE DE CODE SQL BIEN FORMATÉ
-- ================================================

-- Créer une table pour les utilisateurs
CREATE TABLE utilisateurs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    age INT,
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insérer des données
INSERT INTO utilisateurs (nom, email, age) VALUES
('Jean Dupont', 'jean@example.com', 25),
('Marie Martin', 'marie@example.com', 30);

-- Afficher les données
SELECT * FROM utilisateurs;

-- Rechercher avec condition
SELECT nom, email FROM utilisateurs WHERE age > 25;