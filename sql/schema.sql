DROP DATABASE IF EXISTS bugmedb;
CREATE DATABASE bugmedb;
USE bugmedb;


CREATE TABLE `users` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`firstname` varchar(255) NOT NULL,
	`lastname` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL UNIQUE,
	`password` CHAR(32) NOT NULL,
	`date_joined` DATETIME NOT NULL,
	PRIMARY KEY (`id`)

);

INSERT INTO Users (firstName, lastName, password, email) 
VALUES("Admin", "", md5("password123"), "admin@bugme.com");

CREATE TABLE `issues` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` varchar(255) NOT NULL,
	`description` TEXT,
	`type` enum('bug','proposal','task') NOT NULL,
	`priority` enum('minor','major','critical') NOT NULL,
	`status` enum('open','closed','inprogress') NOT NULL,
	`assigned_to` INT NOT NULL,
	`created_by` INT NOT NULL,
	`created` DATETIME NOT NULL,
	`updated` DATETIME,
	PRIMARY KEY (`id`)

);

GRANT ALL PRIVILEGES ON info2180_bugme_issue_tracker.* TO 'admin'@'localhost' IDENTIFIED BY "info2180-project";