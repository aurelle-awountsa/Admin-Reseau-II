-- créer la base de données

CREATE DATABASE maildb;
CREATE USER 'mailuser'@'localhost' IDENTIFIED BY 'mailPWD';
GRANT ALL PRIVILEGES ON maildb.*to 'mailuser'@'localhost' ;
FLUSH PRIVILEGES;
USE maildb;

--- Table  Domain
CREATE TABLE Domains( 
	domain_name VARCHAR(100) not null,
	domain_desc VARCHAR(100) not null,
	status_id INT NOT NULL DEFAULT 1,
PRIMARY KEY (domain_name)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

 CREATE TABLE Users(
     email VARCHAR(100) NOT NULL,
     password VARCHAR(106) NOT NULL,
     domain_name VARCHAR(100) not null,
     fullname VARCHAR(50) NOT NULL,
     department VARCHAR(50) NOT NULL,
     PRIMARY KEY (email),
     FOREIGN KEY (domain_name) REFERENCES Domains(domain_name) ON DELETE CASCADE)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Forwardings( 
 domain_name VARCHAR(100) not null,
 source VARCHAR(100) NOT NULL,
 destination TEXT NOT NULL,
	
PRIMARY KEY (source),
FOREIGN KEY (domain_name) REFERENCES Domains(domain_name) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;