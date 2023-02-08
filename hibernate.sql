CREATE DATABASE `hibernatedemo`;

CREATE TABLE `user`(
	id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(150) DEFAULT NULL
);

CREATE TABLE `address`(
	id int PRIMARY KEY AUTO_INCREMENT,
	street varchar(150) DEFAULT NULL
);

CREATE TABLE `person` (
	id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(150) DEFAULT NULL,
	id_address int,
	FOREIGN KEY (id_address) REFERENCES address(id)
);

CREATE TABLE `client`(
	id int PRIMARY KEY AUTO_INCREMENT,
    	name varchar(150) DEFAULT NULL
);

CREATE TABLE `client_order`(
	id int PRIMARY KEY AUTO_INCREMENT,
    	details varchar(200) DEFAULT NULL,
	price double(10,2) DEFAULT 0,
    	id_client int,
    	FOREIGN KEY (id_client) REFERENCES client(id)
);