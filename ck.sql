CREATE SCHEMA `ck` ;


CREATE TABLE `ck`.`doctors` (`doctor_id` INT NOT NULL AUTO_INCREMENT,`doctor_name` VARCHAR(45) NOT NULL,`doctor_type` VARCHAR(45) NOT NULL,PRIMARY KEY (`doctor_id`));

INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Avi Cach','A');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Dani Cohen','A');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Yoshi Dan','A');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Itay Baruch','B');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Alex Trump','B');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Bibi Netanyahu','B');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Putin Senderela','A');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Pu Hadov','A');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Spaider Man','A');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Wonder Woman','C');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Super Man','C');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Vashti Obama','A');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Cipat Barzel','P');
INSERT INTO `ck`.`doctors`(`doctor_name`,`doctor_type`)VALUES('Ilan Ramon Zal','Z');

CREATE TABLE `ck`.`Patients` (`patient_id` INT NOT NULL AUTO_INCREMENT,`patient_name` VARCHAR(45) NOT NULL,PRIMARY KEY (`patient_id`));

INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Pumba');
INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Nils');
INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Pinokyo');
INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Mothart');
INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Bach');
INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Eyal Golan');
INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Golden Boy');
INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Neta Barzila');
INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Stiv Jobs');
INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Nil Amstrong');
INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Apolo');
INSERT INTO `ck`.`Patients`(`patient_name`)VALUES('Nasa USA');

CREATE TABLE `ck`.`queue` (`queue_id` INT NOT NULL AUTO_INCREMENT,`time` DATETIME NOT NULL,PRIMARY KEY (`queue_id`));

INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-18 10:34:00');
INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-18 10:55:00');
INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-18 11:02:00');
INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-18 11:15:00');
INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-19 10:40:00');
INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-19 10:47:00');
INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-19 11:00:00');
INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-19 11:20:00');
INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-20 10:34:00');
INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-20 10:45:00');
INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-20 11:05:00');
INSERT INTO `ck`.`queue`(`time`)VALUES('2012-06-20 11:15:00');

CREATE TABLE `ck`.`queue_summery` (`doctor_id` INT NOT NULL,`date` DATETIME NOT NULL,`patient_num` INT NOT NULL,PRIMARY KEY (`doctor_id`, `date`))COMMENT = 'doctor_id,date,patient_num';

INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('1','2012-06-18 00:00:00','1');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('2','2012-06-18 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('3','2012-06-18 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('4','2012-06-18 00:00:00','1');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('5','2012-06-18 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('6','2012-06-18 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('7','2012-06-18 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('8','2012-06-18 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('9','2012-06-18 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('10','2012-06-18 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('11','2012-06-18 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('12','2012-06-18 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('13','2012-06-18 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('14','2012-06-18 00:00:00','0');

INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('1','2012-06-19 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('2','2012-06-19 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('3','2012-06-19 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('4','2012-06-19 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('5','2012-06-19 00:00:00','1');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('6','2012-06-19 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('7','2012-06-19 00:00:00','2');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('8','2012-06-19 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('9','2012-06-19 00:00:00','1');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('10','2012-06-19 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('11','2012-06-19 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('12','2012-06-19 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('13','2012-06-19 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('14','2012-06-19 00:00:00','0');

INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('1','2012-06-20 00:00:00','1');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('2','2012-06-20 00:00:00','1');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('3','2012-06-20 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('4','2012-06-20 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('5','2012-06-20 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('6','2012-06-20 00:00:00','2');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('7','2012-06-20 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('8','2012-06-20 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('9','2012-06-20 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('10','2012-06-20 00:00:00','1');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('11','2012-06-20 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('12','2012-06-20 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('13','2012-06-20 00:00:00','0');
INSERT INTO `ck`.`queue_summery`(`doctor_id`,`date`,`patient_num`)VALUES('14','2012-06-20 00:00:00','0');

CREATE TABLE `ck`.`queue_reserved` (`queue_id` INT NOT NULL,`patient_id` INT NOT NULL,`queue_time` DATETIME NOT NULL,`doctor_id` INT NOT NULL,PRIMARY KEY (`queue_id`));

INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('1','6','2012-06-18 10:34:00','1');
INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('2','9','2012-06-18 10:45:00','1');
INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('3','10','2012-06-18 11:00:00','1');
INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('4','2','2012-06-18 11:15:00','4');
INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('5','4','2012-06-19 10:34:00','5');
INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('6','11','2012-06-19 10:45:00','7');
INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('7','7','2012-06-19 11:00:00','7');
INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('8','1','2012-06-19 11:15:00','9');
INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('9','3','2012-06-20 10:34:00','10');
INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('10','5','2012-06-20 10:45:00','2');
INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('11','8','2012-06-20 11:00:00','6');
INSERT INTO `ck`.`queue_reserved`(`queue_id`,`patient_id`,`queue_time`,`doctor_id`)VALUES('12','12','2012-06-20 11:15:00','6');