create schema / database name : citycare

First Create a Table for User Details.

Query to create the table is given below.

CREATE TABLE `citycare`.`user_dtls` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

Now we need a table named specialist.

Query to create the table is given below.

CREATE TABLE specialist (
  `id` INT NOT NULL AUTO_INCREMENT,
  `spec_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));