DROP DATABASE IF EXISTS bugmedb;
CREATE DATABASE bugmedb;
USE bugmedb;

/*Currently hashing in database it might be better to do it in PHP*/
CREATE TABLE `users` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`firstname` varchar(255) NOT NULL,
	`lastname` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL UNIQUE,
	`password` CHAR(32) NOT NULL,
	`date_joined` DATETIME NOT NULL,
	PRIMARY KEY (`id`)

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