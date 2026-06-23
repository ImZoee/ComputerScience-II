CREATE DATABASE IF NOT EXISTS db_clinica;
use db_clinica
DROP USER IF EXISTS 'Admin'@'localhost';
CREATE USER 'Admin'@'localhost'  IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON db_clinica.* TO 'Admin'@'localhost';


USE db_clinica;
--
-- Structura tabelei `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nume` char(30) NOT NULL,
  `email` char(40) NOT NULL,
  `parola` char(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nume` (`nume`)
);

--
-- Adaugam un user `admin` cu parola `admin`
--
INSERT INTO `admin` (`nume`, `email`, `parola`) VALUES
('admin', 'pavelmarius28@yahoo.com', MD5('admin'));

---Servicii medicale

create table Servicii(
    id INT PRIMARY KEY AUTO_INCREMENT,
    specializare VARCHAR(100),
    nume_serviciu VARCHAR(255),
    pret DECIMAL(10, 2)
)

-- Medicină Internă
INSERT INTO servicii (specializare, nume_serviciu, pret) VALUES 
('Medicină Internă', 'Consult medical general', 200.00),
('Medicină Internă', 'Diagnostic și tratament boli cronice (diabet, hipertensiune, boli de ficat etc.)', 250.00),
('Medicină Internă', 'Monitorizarea pacienților cu afecțiuni multiple', 220.00),
('Medicină Internă', 'Analize și interpretare investigații (ecografii, analize de sânge)', 180.00);

-- Cardiologie
INSERT INTO servicii (specializare, nume_serviciu, pret) VALUES 
('Cardiologie', 'EKG, ecografie cardiacă', 300.00),
('Cardiologie', 'Monitorizare ambulatorie (Holter EKG, TA)', 350.00),
('Cardiologie', 'Evaluarea riscului cardiovascular', 270.00),
('Cardiologie', 'Tratament pentru hipertensiune, insuficiență cardiacă, aritmii', 280.00);

-- Pediatrie
INSERT INTO servicii (specializare, nume_serviciu, pret) VALUES 
('Pediatrie', 'Consult pentru copii (0-18 ani)', 200.00),
('Pediatrie', 'Vaccinări', 150.00),
('Pediatrie', 'Evaluări de dezvoltare', 180.00),
('Pediatrie', 'Tratament infecții, alergii, boli respiratorii', 190.00);

-- Dermatologie
INSERT INTO servicii (specializare, nume_serviciu, pret) VALUES 
('Dermatologie', 'Consult afecțiuni ale pielii, părului și unghiilor', 200.00),
('Dermatologie', 'Crioterapie, electrocauterizare', 250.00),
('Dermatologie', 'Dermatoscopie (alunițe, leziuni suspecte)', 230.00),
('Dermatologie', 'Tratamente pentru acnee, eczeme, psoriazis', 220.00);

-- Neurologie
INSERT INTO servicii (specializare, nume_serviciu, pret) VALUES 
('Neurologie', 'Consult pentru dureri de cap, amețeli, epilepsie, AVC', 300.00),
('Neurologie', 'Teste neurologice', 280.00),
('Neurologie', 'Monitorizare și tratament afecțiuni cronice neurologice (Parkinson, scleroză multiplă)', 320.00);

-- Psihiatrie
INSERT INTO servicii (specializare, nume_serviciu, pret) VALUES 
('Psihiatrie', 'Evaluare și diagnostic tulburări mentale', 250.00),
('Psihiatrie', 'Prescriere tratament psihiatric', 200.00),
('Psihiatrie', 'Psihoterapie (în colaborare cu psihologi)', 300.00),
('Psihiatrie', 'Monitorizare boli psihice cronice', 220.00);
