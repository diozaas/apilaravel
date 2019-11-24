/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 10.1.34-MariaDB : Database - laraapi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laraapi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `laraapi`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_10_26_011905_create_siswas_table',1),
(4,'2019_10_26_033708_create_kontaks_table',2),
(5,'2019_11_01_090513_create_penggunas_table',3);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `penggunas` */

DROP TABLE IF EXISTS `penggunas`;

CREATE TABLE `penggunas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `penggunas` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`api_token`,`created_at`,`updated_at`) values 
(1,'Malachi Howe MD','barrows.skyla@mitchell.com','$2y$10$Gi48UDv/mFL0Iyn3AtMDjuXmne16bQ7bCdEF2wi3CkfL2qr8owXjq','Eg74YmRQHocE2ODvU9UP','hL3VEdM9YujQFWrcnA0skHUBu4lJvsiiPogz551VPVU3v1bzWJm11cHT03SQeqlmnarnfoflNi8MA4acoD7UFcXDyykuARDoU3QX',NULL,NULL),
(2,'Dr. Louisa Haley DVM','stanton.ettie@heidenreich.net','$2y$10$ZIc9jEW7Hofp4V1yS6tq/us75lXwkCrbNYCzUkIR9/hxi2Es5ExDO','UqAgT7CX55nNaMmPxG9g','KvZn335pzlxSNlSxiYIoM0UZnKqaxpTySWCTKXEj1pTwN7KVRHYRsnLaE3OKvEBP4A8P1DXmhj7szcoq0ZZl9k3dozxAcWDqaeKd',NULL,NULL),
(3,'Melissa Witting IV','frobel@abernathy.net','$2y$10$k.3/uhWrX0yTDSdP9wfO8uAM5qO8aa0l35frvJDvI5P82Q9MGRgfi','2WDdoHrukiZNqXuU7ewH','PHAyuceZBEoT9cFiRZba86wz9KNiifhRnOO7fl5WVTQOyTl4SKsZtKxeAbdvlUhK6RuunUN6igEqLwRcbaJfoliT2ZjoBhyaG8H6',NULL,NULL),
(4,'Ms. Vivian Collier','champlin.christian@buckridge.com','$2y$10$2yazEUcrqAo8qlvkMIS8U.RCIeaeAA7aqe9RFAdNsDeHpmeftoUJy','k9iCTIRE7o9WA79ldILm','eEfixfDQ3G30YB7BcZ9HuRz695Ym7XfQG6pAvUZAUuOWuMJOXdueBYENjF7AhLjgbzxEYWTfNyXof0MIezuv1XeNZq1k7iVkbxmY',NULL,NULL),
(5,'Maudie Zemlak','rfeeney@rath.biz','$2y$10$9/oeK0xU9DHni.5zp4Qu5OORlw/0VZaDmfdQk1IwUwjTd8vncfQvi','guQhCKjJf0odKjIFLfoa','4DFKI2yMvGkPKVsaZ7DfLP7gHN8f7IjFS6hXVmawUHcNV6aB3CuAi5k9n5BUx9wNELRMObWPQy3vsQRMO0MtBFhbmMiiwefuFw59',NULL,NULL),
(6,'Kiarra Toy DDS','zakary86@gorczany.com','$2y$10$65zDZ2IygObUEJh6bym3a.pWk1jN6RRTLbyfy10RX6c0Ed10hxqZK','kTn7WZlbJt9c4SIitpcr','vY9Hn05nQRofRRdLMyRGdOQWDFWkMv4hPopheHte0w8teaIJvzicYBjDYGNqmHexvWe9ffY0ydEqJpdc8h6pRiRERaIeMsqB2LiU',NULL,NULL),
(7,'Mr. Florian Gutkowski','fadel.deonte@gmail.com','$2y$10$3G.CnvxH3Tg2qu2OvWxRtOI50kpumhJuIaLV6lGrUUbXPoin0RrK.','2mbz8bive1GXDcYyDu9z','5OTd4b5BD9TNuTN85o13rT5cnFK1Nbv97Bpkoy9C7RQhVLHllJ6vBfOqVPpocb5yGq0ooM8frEa3Z6IzmskaAL2oQOfx3QOFylOB',NULL,NULL),
(8,'Katlynn Blanda','monica12@dare.com','$2y$10$c1NSoV9Qf3Zj9ZWR/dMrzevWrQUxF4g/5Mr1wHAB9gHR5kWeISDzK','qNL7dOSmpeBnyfVYCIt3','x49z57HGtzFGgtBz4FdSdfSzwe9CkxUiV4MdyDDKU27LbdrHeIcGfyilYtRZRSRUR1vwWp1jpAn7VE8vUnBDQhGGOx7vV4eHXPmi',NULL,NULL),
(9,'Mya Mraz','davonte.kilback@treutel.net','$2y$10$yx4YPwvuntzmw7n8yJDFau3sMdti2id4JAfb8rgualzzNLFSSN5KS','Zd8lYImw40D4URCnZjDG','LAfo6KE5CZLsNZVEMoSAA977pXAT6mVsTYa3oyvpyJkSilNaQGFpcaROoCuEcI9FiB2FeUgXWjFMFJ44MdbfsdmDmnoFlEarMtvg',NULL,NULL),
(10,'Orin Runolfsson','amelia54@yahoo.com','$2y$10$1lyBeoWkqE9V9rqswOrt0eT.yASDMEAe7oPSYx7zvHNU8xG29hw6a','eBWnorBpRrJFMTdPctpx','3H3VTmnRf2o5lHGMQFJ3qLfuGLCBddpcxS8m7kfXPecAij6H3qkSx1nVqZkXchIi0YoLHDYZh3byDdDwUXcG7oYwRnkWqitZuwNK',NULL,NULL),
(11,'Ms. Yesenia Douglas MD','elvera21@hotmail.com','$2y$10$wDQec36A.iIVxnnScKldEuKtwBiwBpK8iByc3E6idBzH/6uMlwhmG','GvknMYvDizO4bS3zLlXB','F1Ipxvyk3v8dVZpkGjSsCFPcWSq0VP5dxYTTGzkzZKZpC210G4DCpSv2AeGWuv6rtpbchrJFqGndBwntWWmSvvlz4nGx2IOvfvxI',NULL,NULL),
(12,'Jan Spencer Sr.','kali.towne@hegmann.com','$2y$10$HqL/2gwEHYVgk/DmvlQUfO./XGOsnSDkgF2G7g/OpdZ9ZeTOCOAcG','LPgeK3iiqoMjDmG5Joix','x7DYVoJSPNIYI1HYJBkAVzxeUY2u1XTd00T1QM6X1MceUaxBPPDWTta1PLc0LVrB8M6YlAT3hFOVFVA06FSVm6LpThdH8Agex8AB',NULL,NULL),
(13,'Duncan Schowalter DVM','nschaefer@gmail.com','$2y$10$xIaWzvLUgXSq//0fPM0MuuP1fpY1jopiUTfBACqIAMLJw1Z1z6ft2','cAHL5vM6fZI9dPwq093q','4hxiQVpSplrUOrtIDAiZ9LHG3xCNuQFxgd4p6J5jPrzrziL08hKsT3ziEqSG7MvOO9queWjCMFK0OvCgstZP1vkOcePCW6UyWqiF',NULL,NULL),
(14,'Llewellyn Bruen','rowe.emma@thiel.biz','$2y$10$78zbyjFytNdNdz1R5mE.gOtLH/q2ymKn9EWKWWyMaNG0eBs0S97Q.','oYsKNLPQzhk3hXXsVvNo','Y0wJo53a1YWw5LIdevFGLn2QBXSbUaR080XKskvvdlAaHxLbxht8s8N0GKuM8cihyhuMYUJlRdxjwNRBrYCMMjPSr2vcFd4hMXjd',NULL,NULL),
(15,'Alex Schmeler III','mclaughlin.faye@gmail.com','$2y$10$K7jGoBXz4ZU9vS9bKFi1ROFYg2d6SI4bA8sEwhcEpW7XxHotASnAi','di9j3aFM4eBw8MnAk5zy','GgaCT0kBntVXmqTQW8k5Z9SDZFCiXHVEmPPFySFueVxvOnTJCqtag9Z4J2rEoIQQ9cdT1pRiyoTT1Dk0JEK4hzzE4OLsSINsvB3b',NULL,NULL),
(16,'Prof. Devyn Will','ujerde@greenholt.com','$2y$10$3WG.e/e9s4cGWalqV563dOw7MYULcILyNNaKDU3X9Etq2fjTnLL.S','znzx3CRjeRlJlKpKGVNd','SHNgR8kJfDPs9y0LMx9qmmKMJ7fOkLtz05AFV6HWrAXV8qUnLsIN9bC2ZoRxvL9auzlYI3qd0psMdznBax2uJHZYhi9APNf0SbU3',NULL,NULL),
(17,'Jess Reynolds MD','elyssa42@greenfelder.info','$2y$10$Qe94ASlvQAG24pn7KLwbI.tFIIkLlnKUaUt0dSiYCDD15yxX6/Q2W','4zNTyPAUNl2c129yGXn5','3fmEDMeJqZuxObiZBMKAkP2fbTQtwnlPocxhyvhmlLI4avnwCev7Ghn9CL1NgcRLoNVFcmQDwy6RqRNV0ZSTo0XVwnrDmIojchqy',NULL,NULL),
(18,'Mrs. Sarina Pfannerstill II','albin54@rogahn.com','$2y$10$DJovEk2lH4amNdNUtIKypOreJK.KahmfTdlzxLcXELzEZSsSavv7u','uo6KfDAjpTZzutrUZKUf','jCx10vB1YW4T2aBZRoKGgsDXjpv5Fc3wb1lJxsxYydZPPl88wuW3nc3k05NJXVXPwu8g0a15rxcI0t64IQKoDfu2LY4CtNe0dnkr',NULL,NULL),
(19,'Dr. Hester Conroy','gupton@yahoo.com','$2y$10$BB7xRNLjofe2mpjrMX.2Ku4v0lPDAUNoaNsXM1jOyX6HQiwQ/vh1S','cx53RP8TTxM2PG8xHatk','5DhHi3xNjBwB4OW6FQZ9GdbdQHaG00KknUhgeTluT5hbvkXN0YjPPuwP67cDZ1N6uPjBImv5gTiZvHFv4geEw8Q0BxE50NOeay0I',NULL,NULL),
(20,'Zelda Rogahn','dokeefe@hotmail.com','$2y$10$tQ8cnWIDJdxvtFSfhUl6Ie6ja5b/1NzST9ISTF6TOuLKTc02HL98W','ZXonKRtQVu5mFTs8ZUst','pdpJHKSfNzGKFSTMqNnCM9vXfzMuaDIkn1gARp3NVuZ11cvr5qnBNostg2fDzSkvdNXrpUiwINYZWtiYnWuHRAlugzljgRSpXGld',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
