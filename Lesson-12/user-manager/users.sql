create DATABASE demo;
USE demo;

create table users (
id INT(3) NOT NULL AUTO_INCREMENT,
name VARCHAR(120) NOT NULL,
email VARCHAR(120) NOT NULL,
country VARCHAR(120),
PRIMARY KEY (id)
);

INSERT INTO users(name, email, country)
VALUES('Minh','minh@codegym.vn','VietNam');
INSERT INTO users(name, email, country)
VALUES('Kante','kante@che.uk','Kenia');


