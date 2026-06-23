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