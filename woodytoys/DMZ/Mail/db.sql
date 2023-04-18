-- créer la base de données

CREATE DATABASE maildb;
CREATE USER 'mailuser'@'localhost' IDENTIFIED BY 'mailPWD';
GRANT ALL PRIVILEGES ON maildb.*to 'mailuser'@'localhost' ;
FLUSH PRIVILEGES;
USE maildb;

--- Table  Domain
CREATE TABLE Domains( 
	domain_name VARCHAR(100) not null,
PRIMARY KEY (domain_name)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

 CREATE TABLE Users(
     id INT NOT NULL AUTO_INCREMENT,
     domain_name VARCHAR(100) not null,
     email VARCHAR(100) NOT NULL,
     password VARCHAR(106) NOT NULL,
     foldermail VARCHAR(50) NOT NULL,

     PRIMARY KEY (id),
     UNIQUE KEY email(email),
     FOREIGN KEY (domain_name) REFERENCES Domains(domain_name) ON DELETE CASCADE)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Forwardings( 
 domain_name VARCHAR(100) not null,
 source VARCHAR(100) NOT NULL,
 destination TEXT NOT NULL,
	
PRIMARY KEY (source),
FOREIGN KEY (domain_name) REFERENCES Domains(domain_name) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;