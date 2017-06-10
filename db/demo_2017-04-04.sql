# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.27)
# Database: demo
# Generation Time: 2017-04-04 05:46:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table activities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activities`;

CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;

INSERT INTO `activities` (`id`, `name`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'Actividad de grupo','A aliquet scelerisque per adipiscing proin id a condimentum scelerisque parturient a lobortis a eget condimentum venenatis parturient adipiscing velit dictumst.','2017-04-04 05:03:58','2017-04-04 05:03:58'),
	(2,'Tomar alimentos','Dis inceptos euismod pharetra nibh pulvinar ad non platea tristique imperdiet parturient vestibulum a nascetur lorem sem.Adipiscing id proin velit.','2017-04-04 05:04:08','2017-04-04 05:04:08'),
	(3,'Ejercicios de destreza manual','A ad hendrerit phasellus arcu sem consequat parturient inceptos parturient ac facilisi suscipit nec dictum non urna vestibulum posuere eget.','2017-04-04 05:04:18','2017-04-04 05:04:18'),
	(4,'Lectura','Mi scelerisque semper suspendisse praesent nullam leo habitant arcu fermentum condimentum in vestibulum nam ad ipsum convallis orci mi adipiscing a a.Justo vulputate neque parturient quam.','2017-04-04 05:04:24','2017-04-04 05:04:24'),
	(5,'Siesta','Tellus a volutpat condimentum nibh habitant a sapien porta parturient maecenas praesent dapibus ullamcorper dictumst eget vitae.','2017-04-04 05:04:32','2017-04-04 05:04:32'),
	(6,'Dinámica al aire libre','A aliquet scelerisque per adipiscing proin id a condimentum scelerisque parturient a lobortis a eget condimentum venenatis parturient adipiscing velit dictumst.','2017-04-04 05:04:48','2017-04-04 05:04:48'),
	(7,'Dibujar','Mi blandit mattis himenaeos consequat facilisis eu elit venenatis mattis rhoncus sagittis dapibus aliquet a a feugiat scelerisque lacinia cubilia orci.','2017-04-04 05:05:12','2017-04-04 05:05:12'),
	(8,'Juego','Lobortis a velit a suspendisse tristique elit metus parturient scelerisque a fermentum vestibulum inceptos cum sociosqu consectetur.','2017-04-04 05:05:22','2017-04-04 05:05:22');

/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table activity_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activity_logs`;

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baby_id` int(11) DEFAULT NULL,
  `assistant_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `stop_time` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `comments` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_activity_logs_on_baby_id` (`baby_id`),
  KEY `index_activity_logs_on_assistant_id` (`assistant_id`),
  KEY `index_activity_logs_on_activity_id` (`activity_id`),
  CONSTRAINT `fk_rails_4ec10e59dc` FOREIGN KEY (`baby_id`) REFERENCES `babies` (`id`),
  CONSTRAINT `fk_rails_9c0de324df` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `fk_rails_fb9550adbf` FOREIGN KEY (`assistant_id`) REFERENCES `assistants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;

INSERT INTO `activity_logs` (`id`, `baby_id`, `assistant_id`, `activity_id`, `start_time`, `stop_time`, `duration`, `comments`, `created_at`, `updated_at`)
VALUES
	(1,54,2,8,'2017-04-03 16:21:09','2017-04-03 16:49:09',28,'lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus.','2014-07-15 17:34:43','2017-04-04 05:42:56'),
	(2,43,9,8,'2017-04-03 08:52:59','2017-04-03 09:37:59',45,'elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui','2017-06-10 03:15:14','2017-04-04 05:42:56'),
	(3,100,10,3,'2017-04-03 14:25:37','2017-04-03 14:37:37',12,'erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque.','2016-09-30 20:40:49','2017-04-04 05:42:56'),
	(4,63,3,7,'2017-04-03 22:38:40','2017-04-03 23:14:40',36,'elit elit fermentum risus, at fringilla purus mauris a nunc. In','2015-04-16 23:10:49','2017-04-04 05:42:56'),
	(5,25,5,4,'2017-04-03 09:57:44','2017-04-03 10:46:44',49,'Maecenas mi felis, adipiscing fringilla,','2015-06-07 04:55:54','2017-04-04 05:42:56'),
	(6,67,8,8,'2017-04-03 13:17:50','2017-04-03 13:37:50',20,'posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh','2014-03-13 01:58:25','2017-04-04 05:42:56'),
	(7,93,9,5,'2017-04-03 17:42:45','2017-04-03 18:36:45',54,'vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non','2014-01-27 00:37:34','2017-04-04 05:42:56'),
	(8,11,8,5,'2017-04-03 05:39:13','2017-04-03 06:14:13',35,'lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam','2018-01-30 15:44:03','2017-04-04 05:42:56'),
	(9,83,9,7,'2017-04-03 00:45:09','2017-04-03 00:52:09',7,'metus sit amet ante. Vivamus non lorem vitae odio sagittis','2015-07-20 21:47:14','2017-04-04 05:42:56'),
	(10,42,8,3,'2017-04-03 05:52:13','2017-04-03 06:40:13',48,'eu tellus. Phasellus elit pede, malesuada vel, venenatis','2016-05-19 17:39:15','2017-04-04 05:42:56'),
	(11,65,9,4,'2017-04-03 05:18:59','2017-04-03 05:28:59',10,'et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit','2015-03-09 10:08:20','2017-04-04 05:42:56'),
	(12,49,1,4,'2017-04-03 15:03:55','2017-04-03 15:46:55',43,'nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris','2015-09-10 17:02:01','2017-04-04 05:42:56'),
	(13,87,5,8,'2017-04-03 23:31:09','2017-04-04 00:02:09',31,'lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant','2014-04-02 11:41:29','2017-04-04 05:42:56'),
	(14,86,4,5,'2017-04-03 16:49:40','2017-04-03 17:26:40',37,'pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis','2015-09-16 16:32:17','2017-04-04 05:42:56'),
	(15,74,10,7,'2017-04-03 05:14:13','2017-04-03 05:32:13',18,'Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat','2017-05-04 03:27:35','2017-04-04 05:42:56'),
	(16,34,9,2,'2017-04-03 05:59:17','2017-04-03 06:15:17',16,'Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec','2017-05-24 11:13:05','2017-04-04 05:42:56'),
	(17,49,7,4,'2017-04-03 04:47:28','2017-04-03 05:22:28',35,'eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam','2016-12-14 22:25:32','2017-04-04 05:42:56'),
	(18,20,7,1,'2017-04-03 02:11:36','2017-04-03 03:08:36',57,'dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus.','2014-12-24 20:36:49','2017-04-04 05:42:56'),
	(19,76,10,8,'2017-04-03 21:42:47','2017-04-03 22:26:47',44,'ut lacus. Nulla tincidunt, neque','2016-10-08 07:21:33','2017-04-04 05:42:56'),
	(20,76,1,2,'2017-04-03 13:14:19','2017-04-03 13:44:19',30,'Proin eget odio. Aliquam vulputate ullamcorper magna.','2016-07-05 10:17:47','2017-04-04 05:42:56'),
	(21,9,2,4,'2017-04-03 03:26:59','2017-04-03 04:03:59',37,'risus. Quisque libero lacus, varius et,','2017-06-16 11:04:11','2017-04-04 05:42:56'),
	(22,85,5,5,'2017-04-03 05:11:31','2017-04-03 05:27:31',16,'adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum.','2015-04-08 22:20:23','2017-04-04 05:42:56'),
	(23,95,1,8,'2017-04-03 09:20:10','2017-04-03 09:55:10',35,'Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et','2015-04-10 21:55:21','2017-04-04 05:42:56'),
	(24,90,8,1,'2017-04-03 02:56:06','2017-04-03 03:03:06',7,'ut dolor dapibus gravida.','2018-03-04 01:34:21','2017-04-04 05:42:56'),
	(25,16,1,5,'2017-04-03 11:52:01','2017-04-03 12:07:01',15,'porta elit, a feugiat tellus lorem','2014-07-31 13:24:44','2017-04-04 05:42:56'),
	(26,66,2,6,'2017-04-03 03:34:21','2017-04-03 04:34:21',60,'Donec est mauris, rhoncus id, mollis nec, cursus a, enim.','2017-02-17 22:14:33','2017-04-04 05:42:56'),
	(27,83,9,3,'2017-04-03 08:21:03','2017-04-03 09:05:03',44,'senectus et netus et','2016-05-07 04:39:12','2017-04-04 05:42:56'),
	(28,26,4,8,'2017-04-03 11:51:19','2017-04-03 12:36:19',45,'ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede.','2015-01-08 21:03:42','2017-04-04 05:42:56'),
	(29,77,6,1,'2017-04-03 21:25:41','2017-04-03 21:44:41',19,'tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit','2018-04-02 02:55:27','2017-04-04 05:42:56'),
	(30,85,8,6,'2017-04-03 21:59:42','2017-04-03 22:17:42',18,'lectus rutrum urna, nec luctus felis','2015-06-07 11:05:32','2017-04-04 05:42:56'),
	(31,80,1,6,'2017-04-03 14:25:51','2017-04-03 15:06:51',41,'pharetra, felis eget varius ultrices, mauris ipsum porta','2017-09-22 05:08:20','2017-04-04 05:42:56'),
	(32,70,4,8,'2017-04-03 00:49:13','2017-04-03 01:46:13',57,'malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus,','2016-12-04 04:28:37','2017-04-04 05:42:56'),
	(33,2,9,5,'2017-04-03 07:21:24','2017-04-03 07:59:24',38,'risus, at fringilla purus mauris a nunc. In','2014-08-09 11:48:00','2017-04-04 05:42:56'),
	(34,12,9,7,'2017-04-03 22:40:20','2017-04-03 22:49:20',9,'Quisque porttitor eros nec tellus. Nunc','2015-04-02 13:43:31','2017-04-04 05:42:56'),
	(35,17,8,4,'2017-04-03 21:48:45','2017-04-03 22:06:45',18,'dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis','2014-07-22 12:54:20','2017-04-04 05:42:56'),
	(36,81,3,7,'2017-04-03 21:18:42','2017-04-03 21:35:42',17,'tincidunt vehicula risus. Nulla eget metus eu','2015-12-26 04:57:29','2017-04-04 05:42:56'),
	(37,52,4,6,'2017-04-03 20:34:57','2017-04-03 21:11:57',37,'orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada','2016-02-12 11:38:47','2017-04-04 05:42:56'),
	(38,97,2,7,'2017-04-03 05:50:32','2017-04-03 06:00:32',10,'Etiam vestibulum massa rutrum magna. Cras','2015-01-24 09:43:32','2017-04-04 05:42:56'),
	(39,94,7,2,'2017-04-03 22:22:12','2017-04-03 23:21:12',59,'ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,','2015-10-18 14:48:35','2017-04-04 05:42:56'),
	(40,89,5,3,'2017-04-03 16:12:08','2017-04-03 16:48:08',36,'et ultrices posuere cubilia Curae;','2014-05-13 16:10:40','2017-04-04 05:42:56'),
	(41,91,7,1,'2017-04-03 14:30:11','2017-04-03 15:28:11',58,'consequat nec, mollis vitae, posuere at,','2017-02-23 01:00:25','2017-04-04 05:42:56'),
	(42,10,2,8,'2017-04-03 08:59:01','2017-04-03 09:39:01',40,'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,','2017-08-04 11:15:07','2017-04-04 05:42:56'),
	(43,5,4,6,'2017-04-03 04:22:51','2017-04-03 04:33:51',11,'cursus. Integer mollis. Integer tincidunt aliquam arcu.','2017-03-22 18:25:01','2017-04-04 05:42:56'),
	(44,98,9,3,'2017-04-03 20:54:03','2017-04-03 21:40:03',46,'vestibulum massa rutrum magna.','2016-02-21 12:58:33','2017-04-04 05:42:56'),
	(45,81,9,3,'2017-04-03 08:53:07','2017-04-03 09:50:07',57,'Nam consequat dolor vitae dolor. Donec fringilla. Donec','2017-08-07 11:39:44','2017-04-04 05:42:56'),
	(46,12,10,8,'2017-04-03 05:57:59','2017-04-03 06:28:59',31,'nec metus facilisis lorem','2016-05-14 14:54:00','2017-04-04 05:42:56'),
	(47,87,3,1,'2017-04-03 23:29:22','2017-04-04 00:16:22',47,'Nam nulla magna, malesuada','2017-04-21 05:39:52','2017-04-04 05:42:56'),
	(48,44,8,3,'2017-04-03 21:16:34','2017-04-03 22:03:34',47,'id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis','2015-02-13 09:51:44','2017-04-04 05:42:56'),
	(49,52,3,8,'2017-04-03 09:49:20','2017-04-03 09:57:20',8,'enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida.','2016-01-12 20:55:07','2017-04-04 05:42:56'),
	(50,4,7,2,'2017-04-03 18:28:09','2017-04-03 19:23:09',55,'dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat','2014-04-19 16:46:13','2017-04-04 05:42:56'),
	(51,23,7,7,'2017-04-03 14:52:30','2017-04-03 15:47:30',55,'ligula. Donec luctus aliquet odio. Etiam','2015-10-16 03:24:31','2017-04-04 05:42:56'),
	(52,54,3,7,'2017-04-03 10:50:22','2017-04-03 11:35:22',45,'sed pede nec ante','2014-06-27 02:05:03','2017-04-04 05:42:56'),
	(53,13,3,5,'2017-04-03 20:08:33','2017-04-03 20:26:33',18,'diam eu dolor egestas rhoncus.','2016-11-20 15:13:44','2017-04-04 05:42:56'),
	(54,66,4,5,'2017-04-03 23:41:38','2017-04-04 00:25:38',44,'enim. Nunc ut erat.','2018-01-20 11:58:28','2017-04-04 05:42:56'),
	(55,86,6,1,'2017-04-03 09:39:18','2017-04-03 10:32:18',53,'felis ullamcorper viverra. Maecenas iaculis aliquet diam.','2015-07-08 19:12:50','2017-04-04 05:42:56'),
	(56,24,8,3,'2017-04-03 06:05:05','2017-04-03 07:02:05',57,'fringilla purus mauris a','2016-10-22 14:23:33','2017-04-04 05:42:56'),
	(57,78,5,8,'2017-04-03 16:01:18','2017-04-03 16:33:18',32,'sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit','2016-03-20 06:51:48','2017-04-04 05:42:56'),
	(58,74,7,3,'2017-04-03 07:07:30','2017-04-03 07:41:30',34,'ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus','2014-04-26 21:10:05','2017-04-04 05:42:56'),
	(59,21,1,4,'2017-04-03 05:19:28','2017-04-03 05:36:28',17,'mauris blandit mattis. Cras eget nisi dictum augue','2014-01-28 23:17:08','2017-04-04 05:42:56'),
	(60,32,5,5,'2017-04-03 04:35:15','2017-04-03 05:05:15',30,'Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed','2016-04-03 17:21:36','2017-04-04 05:42:56'),
	(61,100,6,8,'2017-04-03 07:17:59','2017-04-03 07:43:59',26,'Mauris ut quam vel sapien imperdiet','2014-11-25 12:47:45','2017-04-04 05:42:56'),
	(62,38,10,5,'2017-04-03 21:32:46','2017-04-03 22:15:46',43,'Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,','2015-01-09 11:33:13','2017-04-04 05:42:56'),
	(63,78,2,5,'2017-04-03 04:02:11','2017-04-03 04:57:11',55,'amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim.','2015-06-18 15:08:58','2017-04-04 05:42:56'),
	(64,62,9,5,'2017-04-03 07:55:20','2017-04-03 08:45:20',50,'quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames','2014-09-20 20:41:20','2017-04-04 05:42:56'),
	(65,43,8,2,'2017-04-03 03:13:35','2017-04-03 03:40:35',27,'neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum','2015-06-15 07:50:22','2017-04-04 05:42:56'),
	(66,3,7,5,'2017-04-03 13:59:49','2017-04-03 14:27:49',28,'enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est','2014-03-11 12:01:54','2017-04-04 05:42:56'),
	(67,96,6,3,'2017-04-03 20:58:46','2017-04-03 21:34:46',36,'id, mollis nec, cursus','2016-11-22 18:25:13','2017-04-04 05:42:56'),
	(68,61,9,3,'2017-04-03 16:23:13','2017-04-03 16:31:13',8,'dui augue eu tellus. Phasellus','2014-07-27 17:43:06','2017-04-04 05:42:56'),
	(69,58,4,5,'2017-04-03 14:57:29','2017-04-03 15:07:29',10,'enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras','2015-02-25 15:37:12','2017-04-04 05:42:56'),
	(70,14,4,2,'2017-04-03 19:18:03','2017-04-03 20:03:03',45,'euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas','2016-04-03 16:14:23','2017-04-04 05:42:56'),
	(71,35,1,8,'2017-04-03 09:56:41','2017-04-03 10:12:41',16,'dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate','2014-04-13 23:12:21','2017-04-04 05:42:56'),
	(72,26,3,8,'2017-04-03 23:32:01','2017-04-03 23:58:01',26,'ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget,','2017-08-21 19:59:21','2017-04-04 05:42:56'),
	(73,50,2,1,'2017-04-03 14:47:59','2017-04-03 15:47:59',60,'sagittis placerat. Cras dictum ultricies','2017-12-01 07:14:01','2017-04-04 05:42:56'),
	(74,16,4,7,'2017-04-03 01:45:06','2017-04-03 01:58:06',13,'Mauris vel turpis. Aliquam adipiscing lobortis','2016-08-08 01:22:49','2017-04-04 05:42:56'),
	(75,82,9,4,'2017-04-03 13:22:32','2017-04-03 14:16:32',54,'quam, elementum at, egestas a, scelerisque','2016-02-14 12:28:40','2017-04-04 05:42:56'),
	(76,39,3,8,'2017-04-03 04:57:04','2017-04-03 05:20:04',23,'tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna','2016-08-24 09:44:56','2017-04-04 05:42:56'),
	(77,47,8,5,'2017-04-03 18:54:55','2017-04-03 19:04:55',10,'auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu','2015-07-10 17:27:08','2017-04-04 05:42:56'),
	(78,44,7,8,'2017-04-03 17:26:28','2017-04-03 18:09:28',43,'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis','2014-01-01 14:43:55','2017-04-04 05:42:56'),
	(79,37,4,7,'2017-04-03 04:45:26','2017-04-03 05:12:26',27,'tellus faucibus leo, in lobortis tellus justo','2017-05-30 08:12:25','2017-04-04 05:42:56'),
	(80,72,9,3,'2017-04-03 08:37:56','2017-04-03 09:18:56',41,'sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem','2014-11-10 13:54:22','2017-04-04 05:42:56'),
	(81,5,9,2,'2017-04-03 03:55:29','2017-04-03 04:13:29',18,'pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer','2014-02-13 11:42:57','2017-04-04 05:42:56'),
	(82,43,9,8,'2017-04-03 19:30:20','2017-04-03 19:39:20',9,'consequat, lectus sit amet luctus vulputate, nisi','2014-09-17 03:40:08','2017-04-04 05:42:56'),
	(83,44,2,4,'2017-04-03 12:16:48','2017-04-03 12:56:48',40,'ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit','2016-04-22 04:32:51','2017-04-04 05:42:56'),
	(84,75,8,6,'2017-04-03 10:24:50','2017-04-03 10:58:50',34,'non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra','2014-01-30 07:57:43','2017-04-04 05:42:56'),
	(85,2,7,3,'2017-04-03 07:29:37','2017-04-03 07:59:37',30,'tellus lorem eu metus. In lorem. Donec elementum,','2017-04-26 21:12:33','2017-04-04 05:42:56'),
	(86,54,6,1,'2017-04-03 10:14:03','2017-04-03 10:32:03',18,'metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam','2016-11-13 14:44:39','2017-04-04 05:42:56'),
	(87,66,1,8,'2017-04-03 23:09:34','2017-04-03 23:57:34',48,'eget mollis lectus pede et risus. Quisque libero lacus, varius et,','2017-05-31 18:49:44','2017-04-04 05:42:56'),
	(88,36,6,4,'2017-04-03 08:44:19','2017-04-03 09:18:19',34,'netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam','2014-12-02 12:18:38','2017-04-04 05:42:56'),
	(89,50,2,1,'2017-04-03 04:52:56','2017-04-03 05:38:56',46,'sit amet metus. Aliquam erat volutpat.','2014-10-31 11:15:00','2017-04-04 05:42:56'),
	(90,77,9,5,'2017-04-03 00:57:15','2017-04-03 01:17:15',20,'accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique','2016-10-06 17:38:19','2017-04-04 05:42:56'),
	(91,69,6,3,'2017-04-03 05:43:11','2017-04-03 06:43:11',60,'orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu','2017-11-17 18:28:49','2017-04-04 05:42:56'),
	(92,54,10,3,'2017-04-03 02:15:35','2017-04-03 03:11:35',56,'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac','2015-11-19 12:52:37','2017-04-04 05:42:56'),
	(93,44,7,6,'2017-04-03 12:51:35','2017-04-03 13:38:35',47,'sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,','2014-04-22 20:35:17','2017-04-04 05:42:56'),
	(94,24,8,5,'2017-04-03 05:45:18','2017-04-03 06:20:18',35,'eget tincidunt dui augue eu tellus. Phasellus elit','2014-02-12 17:02:16','2017-04-04 05:42:56'),
	(95,2,1,3,'2017-04-03 17:06:09','2017-04-03 17:42:09',36,'dolor. Donec fringilla. Donec feugiat metus sit amet','2015-10-23 18:35:18','2017-04-04 05:42:56'),
	(96,73,2,4,'2017-04-03 21:46:01','2017-04-03 21:57:01',11,'Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc','2016-01-23 10:32:47','2017-04-04 05:42:56'),
	(97,66,6,7,'2017-04-03 13:17:34','2017-04-03 13:56:34',39,'nulla vulputate dui, nec tempus mauris erat eget ipsum.','2016-02-23 09:47:56','2017-04-04 05:42:56'),
	(98,92,4,3,'2017-04-03 13:19:05','2017-04-03 14:15:05',56,'aliquam arcu. Aliquam ultrices iaculis odio. Nam','2015-07-27 19:49:44','2017-04-04 05:42:56'),
	(99,5,9,1,'2017-04-03 15:35:40','2017-04-03 16:32:40',57,'Quisque nonummy ipsum non arcu. Vivamus','2017-02-17 22:27:48','2017-04-04 05:42:56'),
	(100,6,3,6,'2017-04-03 00:30:58','2017-04-03 00:37:58',7,'vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus','2014-12-05 19:29:10','2017-04-04 05:42:19');

/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table assistants
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assistants`;

CREATE TABLE `assistants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `assistants` WRITE;
/*!40000 ALTER TABLE `assistants` DISABLE KEYS */;

INSERT INTO `assistants` (`id`, `name`, `group`, `address`, `phone`, `created_at`, `updated_at`)
VALUES
	(1,'Idona Rodgers','2','684-3809 Commodo St.','1-695-273-9436','2014-03-10 07:44:36','2016-04-09 06:53:18'),
	(2,'Basia Reeves','2','889-3375 Semper Av.','1-288-486-8146','2016-03-08 09:43:53','2016-11-14 06:41:58'),
	(3,'Charlotte Skinner','3','Ap #711-5535 Pellentesque St.','1-619-558-3983','2016-05-23 12:44:29','2016-04-08 07:34:19'),
	(4,'Lysandra Solis','4','P.O. Box 330, 663 Imperdiet, Av.','1-545-702-7245','2016-01-21 15:32:11','2016-11-26 11:58:52'),
	(5,'Samantha Porter','5','325-1746 Vulputate Rd.','1-299-762-7562','2017-03-11 11:13:58','2016-10-11 22:03:39'),
	(6,'Iliana Dillon','4','3044 Maecenas St.','1-267-433-8360','2018-03-03 09:53:59','2017-01-17 07:43:35'),
	(7,'Aphrodite Ballard','3','525-3906 Aliquam Av.','1-185-833-0997','2014-07-09 21:18:31','2017-01-19 13:51:37'),
	(8,'Francesca Baxter','1','331-3950 Cum Ave','1-375-506-2188','2016-01-25 00:09:16','2016-10-25 23:45:04'),
	(9,'Ria Robles','3','7081 Velit Rd.','1-553-822-3077','2015-01-20 09:36:20','2016-05-10 22:46:56'),
	(10,'Kay Brewer','1','P.O. Box 406, 1165 Fermentum Ave','1-120-416-8056','2017-10-27 14:41:37','2017-03-19 13:32:20');

/*!40000 ALTER TABLE `assistants` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table babies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `babies`;

CREATE TABLE `babies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `babies` WRITE;
/*!40000 ALTER TABLE `babies` DISABLE KEYS */;

INSERT INTO `babies` (`id`, `name`, `birthday`, `mother_name`, `father_name`, `address`, `phone`, `created_at`, `updated_at`)
VALUES
	(1,'Merritt','2014-02-10','Winifred Pollard','Ferdinand Gibbs','4480 Egestas. Av.','1-446-909-2123','2016-07-06 20:58:57','2016-10-19 06:33:09'),
	(2,'Cherokee','2014-08-12','Dahlia Castro','Zeus Huff','311-7263 Cras St.','1-704-365-7793','2015-06-17 11:33:42','2016-04-08 15:23:48'),
	(3,'Justin','2014-12-15','Miriam Vincent','Edan Jacobs','5466 Luctus Street','1-462-622-9957','2015-07-15 09:19:16','2017-01-12 01:51:52'),
	(4,'Felicia','2015-09-17','Anjolie Herring','Ali Walker','436-5429 Fermentum Street','1-348-621-8566','2015-12-07 09:42:08','2016-10-19 13:17:19'),
	(5,'Kylynn','2016-04-14','Heidi Frank','Lee Pacheco','P.O. Box 675, 1364 Quam. St.','1-265-589-1544','2017-11-02 04:02:06','2017-01-28 17:29:29'),
	(6,'Sigourney','2014-02-04','Piper Mckee','Martin Blackburn','8165 Facilisis Rd.','1-504-381-7639','2017-06-14 07:19:03','2017-02-13 13:07:03'),
	(7,'Cadman','2015-04-04','Rama Roach','Joseph Hester','P.O. Box 347, 1647 Id Rd.','1-336-831-9779','2015-05-30 07:05:22','2016-07-30 08:33:44'),
	(8,'Odessa','2014-07-22','Adena Willis','Cody Neal','P.O. Box 175, 6045 Magnis Av.','1-148-457-1049','2014-10-23 18:47:35','2016-08-06 10:32:21'),
	(9,'May','2015-10-04','Irene Mason','Hayden Wynn','P.O. Box 894, 1672 Vulputate Avenue','1-566-724-6986','2016-05-31 07:16:55','2017-01-22 07:00:29'),
	(10,'Germaine','2016-06-22','Lacota Drake','Dexter Guerrero','2766 Odio, Ave','1-273-850-9371','2018-01-14 17:30:16','2016-09-07 02:17:54'),
	(11,'Cameron','2014-01-20','Leslie Campos','Lucas Carney','7906 Sed St.','1-863-613-9498','2015-08-31 12:56:36','2016-04-14 10:17:21'),
	(12,'Ivan','2016-04-27','Guinevere Mosley','Simon Henderson','287-2764 Massa. Road','1-400-340-0262','2015-01-28 15:12:50','2017-02-21 00:53:17'),
	(13,'Orlando','2014-04-07','Odessa Foley','Bernard Warner','P.O. Box 110, 8239 Congue Av.','1-145-376-4949','2017-01-04 18:21:43','2016-04-19 00:16:52'),
	(14,'Florence','2014-11-08','Diana Vargas','Gannon Wolfe','6175 Dictum. Rd.','1-556-206-7899','2017-10-31 09:57:06','2017-01-27 16:37:04'),
	(15,'Gannon','2015-02-14','Vera Booker','Armando Obrien','P.O. Box 864, 5585 Purus Street','1-349-271-5416','2017-03-19 07:57:07','2016-08-24 19:00:06'),
	(16,'Quincy','2016-01-15','Heidi Anthony','Evan Figueroa','Ap #528-435 Taciti Av.','1-653-548-0085','2017-08-06 14:15:57','2016-08-18 14:02:00'),
	(17,'Carter','2014-01-15','Chloe Barlow','Simon Miller','Ap #370-2298 Amet St.','1-516-286-3232','2017-03-22 07:45:31','2016-10-30 21:50:57'),
	(18,'Aspen','2015-06-30','Althea Avila','Malik Perez','9727 Ligula. St.','1-400-786-8962','2016-01-28 13:15:49','2016-09-22 00:53:58'),
	(19,'Nicole','2015-05-03','Cameron Stevens','Alan James','2452 Placerat Rd.','1-445-117-1232','2014-02-16 11:20:09','2017-01-13 16:47:14'),
	(20,'Zephr','2016-03-31','Maxine Riggs','Lev Nieves','466-3407 Taciti Avenue','1-984-120-2087','2014-08-23 18:32:58','2016-06-02 04:08:46'),
	(21,'Charde','2015-05-31','Raven Velasquez','Fletcher Quinn','650-590 Vivamus Road','1-715-609-6892','2014-05-05 17:08:25','2016-04-09 15:39:38'),
	(22,'Hall','2014-07-22','Leigh Navarro','Fulton Newman','P.O. Box 791, 6991 Pretium Rd.','1-323-739-4636','2016-05-01 00:37:55','2016-06-27 13:42:45'),
	(23,'Yvette','2015-03-03','Erin Burnett','Addison Justice','Ap #814-213 Sem Rd.','1-154-870-6393','2018-02-16 00:45:18','2016-12-01 09:52:39'),
	(24,'Amir','2015-03-24','Jasmine Ramos','Kasper Odom','Ap #128-3848 Nisl. St.','1-579-833-9407','2016-05-06 10:44:47','2017-03-05 01:33:51'),
	(25,'Jorden','2015-03-05','Bell Rhodes','Lars Fitzgerald','P.O. Box 324, 1229 Varius. Rd.','1-679-808-2463','2014-11-30 16:24:03','2016-11-14 14:28:24'),
	(26,'Lev','2015-03-26','Phoebe Mason','Herrod Jones','Ap #355-8571 Neque Av.','1-797-545-1206','2018-02-11 15:15:40','2017-02-23 12:28:49'),
	(27,'Vivian','2015-10-31','Jemima Maxwell','Luke Daugherty','P.O. Box 147, 4733 Duis Rd.','1-526-867-3950','2017-07-26 05:06:44','2016-07-06 13:41:22'),
	(28,'Tasha','2014-03-18','Dakota Benjamin','Quamar Santos','4224 Ante Road','1-994-862-3874','2015-03-21 03:33:14','2016-06-12 18:16:12'),
	(29,'Colin','2015-11-10','Urielle West','Rashad Harrington','P.O. Box 740, 2807 A, Street','1-232-490-7613','2016-05-11 03:04:55','2016-04-22 15:43:43'),
	(30,'Adena','2014-08-11','Jordan Paul','Xanthus Harding','Ap #189-7493 Vestibulum Rd.','1-389-926-0372','2014-02-25 03:00:06','2017-02-11 17:38:22'),
	(31,'Darryl','2014-11-14','Brianna Wynn','Neil Short','P.O. Box 439, 8440 Pellentesque Road','1-879-306-4328','2016-09-30 00:32:11','2016-06-21 08:34:47'),
	(32,'Winifred','2014-11-09','Quemby Page','Emerson Small','Ap #122-5523 Aenean Ave','1-146-650-7522','2014-07-24 01:29:57','2016-04-25 07:47:12'),
	(33,'Elliott','2015-01-16','Cleo Copeland','Hamish Fowler','Ap #928-7351 Arcu. St.','1-963-596-1856','2016-08-22 01:39:12','2016-04-29 01:46:06'),
	(34,'Ciaran','2016-05-21','Leila Chen','Brennan Thomas','807-5947 Purus. Av.','1-740-517-6021','2016-02-03 02:43:57','2017-01-21 19:15:29'),
	(35,'Magee','2014-11-07','Dominique Duffy','Howard Haynes','Ap #353-831 Ut St.','1-365-774-4966','2017-03-03 17:00:14','2016-07-04 21:41:07'),
	(36,'Lacy','2016-01-31','Aimee Robles','Myles Roth','P.O. Box 626, 9177 Tellus, Rd.','1-168-860-1390','2014-01-16 08:45:37','2016-05-14 08:14:34'),
	(37,'Finn','2014-04-11','Shea Hall','Chancellor Montgomery','354-6074 Convallis Road','1-124-513-1284','2015-11-09 00:37:43','2017-02-10 18:08:29'),
	(38,'Jael','2015-12-24','Lucy Wright','Valentine Ballard','Ap #231-3805 Ut Av.','1-227-578-9430','2014-05-27 06:29:48','2016-05-23 06:05:31'),
	(39,'Sean','2014-07-20','Tara Garrett','Tanner Keller','Ap #459-4830 Porttitor Street','1-638-299-4236','2014-01-29 12:29:02','2016-06-12 19:31:30'),
	(40,'Xyla','2015-05-09','Zia Torres','Salvador Frederick','5999 Odio Rd.','1-137-750-5090','2016-11-10 17:32:52','2016-10-28 10:51:50'),
	(41,'Noel','2015-11-13','Remedios Chang','John Brewer','675-2112 Donec Rd.','1-244-909-8589','2017-03-11 20:42:24','2016-06-07 21:24:12'),
	(42,'Xerxes','2014-08-04','Myra Elliott','Howard Cruz','Ap #714-7078 Lorem Av.','1-284-194-9553','2016-06-06 06:37:49','2016-08-26 11:43:25'),
	(43,'Halla','2015-01-23','Gloria Christian','Caldwell Hayes','Ap #148-6536 Dolor. Rd.','1-516-378-8767','2015-12-29 08:20:18','2016-12-26 02:01:58'),
	(44,'Driscoll','2014-10-02','Libby Mcmahon','Chadwick Jimenez','Ap #400-9988 A Road','1-678-343-0708','2018-01-10 23:23:59','2016-12-25 20:11:22'),
	(45,'Ina','2015-09-17','Charity Clark','Grant Dickerson','P.O. Box 228, 1322 Diam. St.','1-155-157-0250','2015-05-10 11:17:48','2016-09-13 12:19:16'),
	(46,'Ian','2015-03-13','Jeanette Roberts','Victor Cunningham','Ap #574-5831 Phasellus Street','1-701-149-7758','2014-09-04 20:07:40','2017-03-09 19:53:27'),
	(47,'Jolie','2015-06-24','Gisela Sykes','Oliver Combs','P.O. Box 396, 8260 Adipiscing Avenue','1-980-260-5600','2017-05-10 20:11:09','2016-12-03 18:38:39'),
	(48,'Tatum','2015-11-12','Lacy Simmons','Lucian Aguilar','998-7953 Neque. Av.','1-225-741-0147','2015-09-27 01:59:28','2016-06-25 01:59:49'),
	(49,'Jacqueline','2014-11-07','Sophia Hansen','Lucius Huber','Ap #279-6744 Nec, Av.','1-884-116-5934','2014-05-14 09:17:57','2016-04-04 03:55:06'),
	(50,'Dean','2015-03-25','Haviva Greene','Dylan Madden','793-4590 Lorem Street','1-991-106-9557','2014-09-09 19:27:00','2016-07-24 02:59:33'),
	(51,'Riley','2014-05-11','Shaeleigh Valentine','Nigel Zamora','3423 Morbi Ave','1-428-201-3626','2016-06-06 23:20:39','2016-07-15 20:23:14'),
	(52,'Malcolm','2015-08-27','Basia House','Ezekiel Pollard','P.O. Box 829, 8889 Amet St.','1-190-278-5633','2017-02-06 05:16:13','2016-09-25 17:56:58'),
	(53,'Wyatt','2014-09-13','Rylee Pacheco','Matthew Griffin','1916 Pede. St.','1-507-221-2708','2016-01-20 05:40:54','2016-12-28 17:27:11'),
	(54,'Phelan','2015-02-24','Pascale Roy','Hyatt Adkins','514-1378 Elit. Road','1-519-444-5292','2016-03-10 09:11:43','2016-10-22 07:06:16'),
	(55,'Gregory','2014-10-21','Halla Rice','Troy Goff','4508 Bibendum. Rd.','1-667-221-6141','2014-10-06 15:45:38','2016-10-14 09:25:21'),
	(56,'Samantha','2014-08-17','Keely Tillman','Hashim Foster','P.O. Box 964, 5482 Erat Av.','1-450-871-5402','2018-02-27 19:01:30','2016-07-11 16:10:47'),
	(57,'Wyatt','2016-04-15','Stephanie Beasley','Edward Peters','Ap #135-6602 Nonummy Avenue','1-901-931-6589','2017-03-16 04:09:28','2016-10-16 10:28:51'),
	(58,'Elliott','2016-01-10','Kitra Delaney','Hayden Hull','P.O. Box 585, 6215 Ipsum Avenue','1-759-426-9978','2014-05-02 19:11:24','2016-08-16 10:12:33'),
	(59,'Evangeline','2015-11-22','Karyn Shaw','Victor Farrell','P.O. Box 903, 4790 Libero Av.','1-295-139-0324','2014-12-18 16:22:01','2017-01-31 18:23:50'),
	(60,'Daryl','2014-04-06','Regina Thornton','Ryder Farrell','P.O. Box 607, 9581 Nam St.','1-169-819-8871','2016-12-14 18:26:58','2017-01-20 09:59:04'),
	(61,'Troy','2015-02-16','Cheryl Melton','Cooper Kidd','499-6223 Faucibus Av.','1-869-633-8315','2017-08-12 10:11:31','2016-10-11 12:19:59'),
	(62,'Colin','2014-08-31','Cheryl Moss','Clarke Hunt','5308 Eu St.','1-906-166-2612','2017-03-22 01:37:37','2017-01-25 02:13:47'),
	(63,'Aubrey','2014-08-25','Medge Suarez','Kadeem Little','1936 Justo. Ave','1-569-212-5858','2017-02-18 12:29:38','2016-08-26 20:20:36'),
	(64,'Helen','2015-11-04','Meredith Lindsay','Malcolm Gould','Ap #987-709 Integer Rd.','1-241-619-9178','2014-10-16 09:44:52','2016-08-26 18:38:45'),
	(65,'Wayne','2014-01-10','Brooke Gordon','David Fleming','Ap #555-1644 Proin Rd.','1-869-709-4836','2016-09-21 22:52:44','2017-03-24 17:39:05'),
	(66,'Sybil','2015-05-27','Hiroko Leach','Joseph Pennington','5770 Elementum St.','1-835-815-3781','2016-12-05 11:29:52','2016-10-18 23:56:23'),
	(67,'Vincent','2014-03-25','Amaya Harrington','William Langley','P.O. Box 428, 8674 Et St.','1-232-665-4006','2014-05-21 02:49:58','2017-01-30 02:20:27'),
	(68,'Roth','2016-03-17','Winter Aguilar','Ross Dalton','P.O. Box 174, 651 Mauris Street','1-635-765-8896','2015-04-15 03:30:23','2016-08-16 10:04:23'),
	(69,'Arthur','2014-08-30','Quintessa Hendrix','Carter Wolfe','Ap #701-1150 Egestas. Rd.','1-263-367-9594','2016-11-30 00:50:03','2017-01-15 09:48:33'),
	(70,'Leah','2015-10-23','Kellie Vasquez','Dexter Lindsey','Ap #144-7926 Sed St.','1-771-486-9145','2016-09-24 00:00:48','2016-08-04 15:31:15'),
	(71,'Tad','2015-09-22','Xyla Freeman','Jerome Erickson','P.O. Box 778, 5528 Urna St.','1-187-334-8650','2017-09-16 06:31:20','2016-10-12 13:46:08'),
	(72,'MacKensie','2015-02-05','Miranda Cross','Victor Singleton','551-372 In Road','1-921-268-0865','2015-09-12 07:20:15','2016-09-01 18:42:04'),
	(73,'Yuri','2015-09-26','Morgan Russell','Orson Wolf','P.O. Box 293, 3422 Bibendum. Avenue','1-556-418-9640','2016-03-07 10:23:04','2016-10-16 23:35:57'),
	(74,'Elijah','2014-06-06','Alexandra Hester','Vaughan Robles','553-3004 Mattis Road','1-832-810-0889','2017-05-30 18:41:53','2016-12-12 14:22:15'),
	(75,'Britanney','2014-06-13','Quincy Barry','Dennis Carson','P.O. Box 987, 5745 Orci St.','1-281-141-5192','2017-12-15 14:21:02','2016-07-04 13:38:23'),
	(76,'Iola','2014-11-21','Kevyn Aguilar','Drew Mcpherson','P.O. Box 925, 1607 Massa. St.','1-686-306-3308','2015-04-21 19:10:19','2016-05-24 11:58:40'),
	(77,'Jared','2014-02-01','Ifeoma Pratt','Lars Howard','5440 Ac Rd.','1-505-705-0639','2018-01-28 16:03:04','2016-08-15 01:20:43'),
	(78,'Nola','2016-04-28','Gisela Rocha','Hayes Morris','2998 Neque Street','1-745-194-7699','2016-04-11 14:39:52','2016-07-03 01:58:53'),
	(79,'Hollee','2015-02-13','Ria Barlow','August Langley','432-2958 Nulla St.','1-743-957-7608','2015-05-01 07:43:04','2016-06-12 05:55:56'),
	(80,'Hop','2016-02-21','Serena Britt','Elton Middleton','Ap #998-8543 Phasellus Street','1-102-145-4736','2017-11-23 05:56:32','2016-09-15 12:19:23'),
	(81,'Jordan','2014-09-18','Claire Vazquez','Conan Harper','Ap #528-9994 Ac Av.','1-533-851-4947','2016-12-26 09:11:19','2017-02-07 10:01:19'),
	(82,'Linus','2016-06-11','Quintessa Vang','Bevis Whitney','Ap #290-6945 Convallis Road','1-444-594-2484','2014-07-23 15:57:01','2016-07-25 21:02:17'),
	(83,'Odessa','2014-02-02','Marcia Branch','Tarik Holmes','3867 Dolor Avenue','1-228-976-8591','2014-06-26 21:37:49','2016-09-04 08:04:24'),
	(84,'Dexter','2014-05-30','Karyn Williamson','Jerome Estes','140-1213 Convallis Ave','1-325-420-8673','2017-11-27 21:10:15','2016-07-13 08:30:09'),
	(85,'Hector','2014-01-16','Hollee Griffith','Alvin Holden','Ap #926-6711 Semper Street','1-309-782-6022','2016-06-03 06:27:08','2017-03-16 11:57:11'),
	(86,'Stuart','2014-09-12','Leila David','Richard Fuentes','8765 Neque Road','1-778-321-6612','2015-11-20 21:07:10','2017-03-02 21:06:22'),
	(87,'Flynn','2015-03-02','Brenda Salazar','Lance Miles','5250 Amet, Road','1-536-913-8074','2017-07-20 18:50:24','2016-04-03 20:51:48'),
	(88,'Adena','2014-09-30','Christen Hicks','Tarik Lara','P.O. Box 886, 2547 Ac, Rd.','1-936-537-8075','2016-05-06 05:32:13','2017-01-12 04:13:17'),
	(89,'Hiroko','2014-04-24','Alfreda Sherman','Marsden Caldwell','8700 Magna. Rd.','1-999-291-7603','2014-07-31 03:22:31','2016-09-30 14:35:34'),
	(90,'Morgan','2014-05-26','Ursa Espinoza','Jameson Kramer','125-5542 Placerat, Av.','1-283-249-3622','2016-05-31 11:23:56','2016-09-28 02:26:56'),
	(91,'Samuel','2014-09-27','Chastity Meyer','Fletcher Frank','1136 Tristique Ave','1-195-432-1455','2015-02-18 19:14:23','2017-02-20 00:07:24'),
	(92,'Daniel','2016-01-10','Priscilla Sosa','Lane Rollins','1083 Urna St.','1-659-156-5122','2015-08-19 06:33:31','2017-02-24 23:02:27'),
	(93,'Kelsey','2014-06-27','Unity Reese','Francis Savage','9578 Fermentum Street','1-982-662-0803','2018-03-08 11:51:15','2017-03-03 01:52:02'),
	(94,'Zeus','2015-12-04','Melanie Guthrie','Randall Stephenson','Ap #327-2817 Sed Rd.','1-947-853-4041','2018-02-23 00:15:52','2016-11-21 19:14:36'),
	(95,'Stella','2015-09-29','Cheyenne Yang','Hashim Evans','Ap #614-9047 Integer Rd.','1-770-993-7532','2015-04-17 18:54:57','2017-03-31 10:43:03'),
	(96,'Zephania','2014-03-06','Cally Salinas','Lawrence Velez','P.O. Box 157, 8556 Libero. Street','1-885-859-7048','2017-05-28 15:52:53','2016-09-08 16:35:42'),
	(97,'Ethan','2016-04-26','Unity Christian','Graiden Ayala','P.O. Box 351, 5555 Vivamus Road','1-992-116-8149','2014-04-13 05:36:12','2017-04-01 08:51:34'),
	(98,'Burton','2015-05-22','Leslie Roberson','Lucas Morin','P.O. Box 647, 3210 Mauris St.','1-822-211-6392','2017-09-29 13:42:55','2016-04-05 21:08:27'),
	(99,'Irma','2015-06-20','Bryar Marks','Vaughan Tyler','2974 Sem, Ave','1-985-581-5602','2016-05-18 23:46:19','2017-03-31 03:08:03'),
	(100,'Odette','2015-03-11','Isadora Mclaughlin','Preston Greer','Ap #383-1346 Nulla Road','1-587-784-0533','2014-08-24 07:21:03','2016-04-28 02:38:09');

/*!40000 ALTER TABLE `babies` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
