-- créer la base de données

CREATE DATABASE maildb;
CREATE USER 'mailuser'@'localhost' IDENTIFIED BY 'mailPWD';
GRANT ALL PRIVILEGES ON maildb.*to 'mailuser'@'localhost' ;
FLUSH PRIVILEGES;
USE maildb;

--- Table  Domain
CREATE TABLE Domains( 
	domain VARCHAR(100) not null,
PRIMARY KEY (domain)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

 CREATE TABLE Users(
     email VARCHAR(100) NOT NULL,
     password VARCHAR(106) NOT NULL,
     domain VARCHAR(100) not null,
     foldermail VARCHAR(50) NOT NULL,
     PRIMARY KEY (email),
     FOREIGN KEY (domain) REFERENCES Domains(domain) ON DELETE CASCADE)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Forwardings( 
 domain VARCHAR(100) not null,
 source VARCHAR(100) NOT NULL,
 destination TEXT NOT NULL,
PRIMARY KEY (source),
FOREIGN KEY (domain) REFERENCES Domains(domain) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;