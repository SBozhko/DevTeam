-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.27 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2012-12-21 23:49:36
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for dev_team
DROP DATABASE IF EXISTS `dev_team`;
CREATE DATABASE IF NOT EXISTS `dev_team` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dev_team`;


-- Dumping structure for table dev_team.role
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table dev_team.role: ~0 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
REPLACE INTO `role` (`id`, `title`) VALUES
	(0000000001, 'Admin'),
	(0000000002, 'Developer'),
	(0000000003, 'Manager'),
	(0000000004, 'Client');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


-- Dumping structure for table dev_team.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `fullName` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `idRole` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `FK_user_role` (`idRole`),
  CONSTRAINT `FK_user_role` FOREIGN KEY (`idRole`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table dev_team.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id`, `fullName`, `email`, `password`, `idRole`) VALUES
	(0000000001, 'Иванов Иван Иваныч', 'qqq@mail.ru', 'qqq', 1),
	(0000000003, 'Петров Петр Петрович', 'aaa@mail.ru', 'aaa', 2),
	(0000000004, 'Сидоров Сидор Сидорыч', 'zzz@mail.ru', 'zzz', 2),
	(0000000005, 'Васнецов Василий Васильевич', 'www@mail.ru', 'www', 2),
	(0000000006, 'Андреев Андрей Андриеич', 'sss@mail.ru', 'sss', 2),
	(0000000007, 'Евсеев Евсей Евсеевич', 'xxx@mail.ru', 'xxx', 3),
	(0000000008, 'Климов Клим Климвыч', 'eee@mail.ru', 'eee', 4);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
