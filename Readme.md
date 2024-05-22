create schema / database name : citycare

First Create a User Table
query to create the table is

CREATE TABLE `citycare`.`user_dtls` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

