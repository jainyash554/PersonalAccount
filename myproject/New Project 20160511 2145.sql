-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.13-rc-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema myaccount
--

CREATE DATABASE IF NOT EXISTS myaccount;
USE myaccount;

--
-- Definition of table `bank_book`
--

DROP TABLE IF EXISTS `bank_book`;
CREATE TABLE `bank_book` (
  `Acid` int(10) unsigned NOT NULL auto_increment,
  `Account` varchar(45) NOT NULL,
  `Tran_date` date NOT NULL,
  `Amount` double NOT NULL,
  `Userid` int(10) unsigned NOT NULL,
  `Operation` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`Acid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_book`
--

/*!40000 ALTER TABLE `bank_book` DISABLE KEYS */;
INSERT INTO `bank_book` (`Acid`,`Account`,`Tran_date`,`Amount`,`Userid`,`Operation`) VALUES 
 (1,'dj','2015-12-15',1200,10,'withdrowal'),
 (2,'yash','2015-06-02',1500,10,'withdrowal'),
 (3,'dj','2015-02-02',1200,10,'withdrowal'),
 (4,'dj','2014-01-02',1200,10,'withdrowal'),
 (5,'yash','2014-01-02',1200,10,'withdrowal'),
 (6,'yash','2015-06-02',1200,10,'withdrowal'),
 (7,'lucky','2015-12-15',1300,5,'receive'),
 (8,'piyush','2015-12-15',1300,5,'pay'),
 (9,'yash','2015-06-02',1500,5,'pay'),
 (10,'direct','2015-10-03',35000,8,'pay'),
 (11,'yash','2015-06-02',1500,8,'receive'),
 (12,'direct','2015-10-04',36000,8,'receive'),
 (13,'indirect','2015-11-03',2000,8,'pay'),
 (14,'tv','2015-10-01',5000,9,'pay'),
 (15,'direct','2015-11-01',50000,9,'receive'),
 (16,'bike','2015-11-13',50000,9,'pay'),
 (17,'bike','2015-11-06',50000,9,'pay'),
 (18,'tea shop','2015-11-02',5000,9,'receive'),
 (19,'direct','2015-11-12',50000,9,'receive'),
 (20,'job','2015-06-05',10,12,'receive'),
 (21,'bike','2015-11-06',80000,12,'pay'),
 (22,'job','2015-11-02',6000,8,'receive'),
 (23,'intrest','2015-12-01',20000,8,'receive'),
 (24,'cloths','2015-11-05',1200,8,'pay'),
 (25,'bike','2015-11-14',50000,8,'pay'),
 (26,'palser','2015-10-08',80000,14,'pay'),
 (27,'490000','2016-02-10',50000,18,'pay'),
 (28,'clotdd','2016-04-05',345677,19,'pay');
/*!40000 ALTER TABLE `bank_book` ENABLE KEYS */;


--
-- Definition of table `cash_book`
--

DROP TABLE IF EXISTS `cash_book`;
CREATE TABLE `cash_book` (
  `Acid` int(10) unsigned NOT NULL auto_increment,
  `Account` varchar(45) NOT NULL,
  `Tran_date` date NOT NULL,
  `Amount` double NOT NULL,
  `Userid` int(10) unsigned NOT NULL,
  `Operation` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`Acid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_book`
--

/*!40000 ALTER TABLE `cash_book` DISABLE KEYS */;
INSERT INTO `cash_book` (`Acid`,`Account`,`Tran_date`,`Amount`,`Userid`,`Operation`) VALUES 
 (6,'ani','2015-10-02',1200,5,'pay'),
 (7,'ani','2015-10-02',1500,5,'receive'),
 (8,'indirect','2015-10-01',2000,8,'income'),
 (9,'direct','2015-10-02',1000,8,'receive'),
 (10,'direct','2015-10-03',35000,8,'pay'),
 (11,'direct','2015-10-04',36000,8,'receive'),
 (12,'indirect','2015-11-03',2000,8,'pay'),
 (13,'tv','2015-10-01',5000,9,'pay'),
 (14,'direct','2015-11-01',50000,9,'receive'),
 (15,'bike','2015-11-13',50000,9,'pay'),
 (16,'bike','2015-11-06',50000,9,'pay'),
 (17,'tea shop','2015-11-02',5000,9,'receive'),
 (18,'direct','2015-11-12',50000,9,'receive'),
 (19,'job','2015-06-05',10,12,'receive'),
 (20,'bike','2015-11-06',80000,12,'pay'),
 (21,'job','2015-12-01',7300,8,'receive'),
 (22,'cloths','2015-11-05',1200,8,'pay'),
 (23,'income','2015-11-01',60000,14,'receive'),
 (24,'fhv','2015-11-12',5252,15,'pay'),
 (25,'bike','2015-11-17',6656,15,'receive'),
 (26,'Rent Received','2015-11-21',10000,8,'receive'),
 (27,'bike','2016-01-02',60000,17,'pay'),
 (28,'cash','2016-01-03',30000,17,'receive'),
 (29,'interenship','2016-02-10',40000,18,'receive'),
 (30,'dfhrt','2016-04-09',367,19,'receive'),
 (31,'dfhrt','2016-04-09',367,19,'receive');
/*!40000 ALTER TABLE `cash_book` ENABLE KEYS */;


--
-- Definition of table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE `expenses` (
  `Exp_id` int(10) unsigned NOT NULL auto_increment,
  `Exp_ac` varchar(45) NOT NULL,
  `Userid` int(10) unsigned NOT NULL,
  `Exp_catid` int(10) unsigned NOT NULL,
  `Amount` double NOT NULL,
  `Tran_date` date NOT NULL,
  `Payby` varchar(45) NOT NULL,
  `Remark` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`Exp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` (`Exp_id`,`Exp_ac`,`Userid`,`Exp_catid`,`Amount`,`Tran_date`,`Payby`,`Remark`) VALUES 
 (1,'dj',10,15,1200,'2015-02-10','cash','withdrowal'),
 (2,'yash',9,15,1000,'2014-02-10','cash','withdrowal'),
 (3,'yash',10,15,1000,'2014-02-10','cash','withdrowal'),
 (4,'dj',10,15,1000,'2014-02-10','cash','withdrowal'),
 (5,'laptop',0,6,35000,'2015-10-02','cheque','hp'),
 (6,'direct',8,22,50000,'2015-10-03','cheque','bike'),
 (7,'direct',8,19,35000,'2015-10-03','cheque','laptop'),
 (8,'indirect',8,19,2000,'2015-11-03','cash','income'),
 (9,'tv',9,23,5000,'2015-10-01','cash','tv'),
 (10,'bike',9,26,50000,'2015-11-13','cash','bike'),
 (11,'bike',9,26,50000,'2015-11-06','cheque','bike'),
 (12,'bike',12,27,80000,'2015-11-06','cash','bike'),
 (13,'cloths',8,28,1200,'2015-11-05','cheque','cloths'),
 (14,'bike',8,19,50000,'2015-11-14','cheque','bike'),
 (15,'palser',14,30,80000,'2015-10-08','cheque','bike'),
 (16,'fhv',15,31,5252,'2015-11-12','cash','income'),
 (17,'bike',17,36,60000,'2016-01-02','cash','srdy'),
 (18,'490000',18,38,50000,'2016-02-10','cheque','betterment'),
 (19,'clotdd',19,39,345677,'2016-04-05','cheque','drfghjuy');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;


--
-- Definition of table `expenses_category`
--

DROP TABLE IF EXISTS `expenses_category`;
CREATE TABLE `expenses_category` (
  `Exp_catid` int(10) unsigned NOT NULL auto_increment,
  `Exp_catname` varchar(45) NOT NULL,
  `Exp_catdetails` varchar(100) NOT NULL,
  `Userid` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`Exp_catid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses_category`
--

/*!40000 ALTER TABLE `expenses_category` DISABLE KEYS */;
INSERT INTO `expenses_category` (`Exp_catid`,`Exp_catname`,`Exp_catdetails`,`Userid`) VALUES 
 (4,'tv','laptop',10),
 (6,'laptop','laptop',0),
 (7,'laptop','laptop',10),
 (8,'laptop','laptop',10),
 (9,'laptop','laptop',10),
 (10,'laptop','laptop',10),
 (11,'tv','laptop',10),
 (16,'tv','tv',10),
 (21,'book','book',0),
 (23,'tv','tv',9),
 (26,'bike','bike',9),
 (27,'bike','pulsar',12),
 (30,'bike','bike\r\n',14),
 (31,'bike','bike',15),
 (32,'tv','gfkf\r\n',15),
 (33,'bike','os',8),
 (34,'bike','palser',8),
 (36,'bike','bike\r\n',17),
 (37,'cloth','cloth',17),
 (38,'bike','pulsar 220',18),
 (39,'clothes','tns,jeas',19),
 (40,'rhy','htjuytju',19);
/*!40000 ALTER TABLE `expenses_category` ENABLE KEYS */;


--
-- Definition of table `income_category`
--

DROP TABLE IF EXISTS `income_category`;
CREATE TABLE `income_category` (
  `Inc_catid` int(10) unsigned NOT NULL auto_increment,
  `Inc_catname` varchar(45) NOT NULL,
  `Inc_catdetails` varchar(45) NOT NULL,
  `Userid` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`Inc_catid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income_category`
--

/*!40000 ALTER TABLE `income_category` DISABLE KEYS */;
INSERT INTO `income_category` (`Inc_catid`,`Inc_catname`,`Inc_catdetails`,`Userid`) VALUES 
 (1,'Interest','yearly',10),
 (3,'indirect','yearly',10),
 (4,'indirect','yearly',10),
 (8,'indirect','indirect\r\n',8),
 (9,'direct income','income\r\n',9),
 (10,'indirect','income',9),
 (11,'job','job',12),
 (13,'job','direct',14),
 (14,'laptop','fkf',15),
 (17,'Rent','Building Rent',8),
 (18,'cash','cash\r\n',17),
 (19,'direct','d',17),
 (20,'party','p',17),
 (21,'show','acting',18),
 (22,'chori','jeb katra',19),
 (23,'erue','fjr',19);
/*!40000 ALTER TABLE `income_category` ENABLE KEYS */;


--
-- Definition of table `incomes`
--

DROP TABLE IF EXISTS `incomes`;
CREATE TABLE `incomes` (
  `Inc_id` int(10) unsigned NOT NULL auto_increment,
  `Inc_ac` varchar(45) NOT NULL,
  `Userid` int(10) unsigned NOT NULL,
  `Inc_catid` int(10) unsigned NOT NULL,
  `Amount` double NOT NULL,
  `Tran_date` date NOT NULL,
  `Receivby` varchar(45) NOT NULL,
  `Remark` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`Inc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incomes`
--

/*!40000 ALTER TABLE `incomes` DISABLE KEYS */;
INSERT INTO `incomes` (`Inc_id`,`Inc_ac`,`Userid`,`Inc_catid`,`Amount`,`Tran_date`,`Receivby`,`Remark`) VALUES 
 (1,'yash',10,15,1200,'2015-06-05','cash','withdrowal'),
 (2,'yash',10,15,1200,'2014-06-05','cash','withdrowal'),
 (3,'dj',10,15,1200,'2015-06-04','cash','withdrowal'),
 (4,'dj',10,15,1200,'2015-06-04','cash','withdrowal'),
 (5,'profit',0,2,2000,'2015-10-03','cheque','profit'),
 (6,'profit',0,3,3000,'2015-10-14','cash','profit'),
 (7,'direct',8,1,30000,'2015-10-03','cheque','income'),
 (8,'indirect',8,3,35000,'2015-10-05','cash','income'),
 (9,'indirect',8,8,3000,'2015-10-02','cash','income'),
 (10,'indirect',8,8,2000,'2015-10-01','cheque','income'),
 (11,'direct',8,8,1000,'2015-10-02','cheque','income'),
 (12,'direct',8,8,36000,'2015-10-04','cash','income'),
 (13,'direct',9,9,50000,'2015-11-01','cheque','income'),
 (14,'tea shop',9,9,5000,'2015-11-02','cash','income'),
 (15,'direct',9,9,50000,'2015-11-12','cash','income'),
 (16,'job',12,11,10,'2015-06-05','cheque','job'),
 (17,'job',8,8,6000,'2015-11-02','cash','job'),
 (18,'job',8,12,7300,'2015-12-01','cash','job'),
 (19,'intrest',8,8,20000,'2015-12-01','cheque','income'),
 (20,'income',14,13,60000,'2015-11-01','cash','income'),
 (21,'bike',15,14,6656,'2015-11-17','cash','hgjg'),
 (22,'Rent Received',8,8,10000,'2015-11-21','cash','Rent Received '),
 (23,'cash',17,18,30000,'2016-01-03','cash','wdxa'),
 (24,'interenship',18,21,40000,'2016-02-10','cash','good'),
 (25,'dfhrt',19,22,367,'2016-04-09','cash','vgg'),
 (26,'dfhrt',19,22,367,'2016-04-09','cash','vgg');
/*!40000 ALTER TABLE `incomes` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Uid` int(10) unsigned NOT NULL auto_increment,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Mobile` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`Uid`,`Username`,`Password`,`Name`,`Address`,`Mobile`,`Email`) VALUES 
 (1,'jainyash','abc@123','YASH JAIN','Bhopal','8269424850','jainyash554@gmail.com'),
 (3,'ani','abc@1234','Aniruddh','Bhopal','8269332476','aniruddhratahod@gmail.com'),
 (4,'ani','abc@1234','Aniruddh','Bhopal','8269332476','aniruddhratahod@gmail.com'),
 (5,'ani','abc@1234','Aniruddh','Bhopal','8269332476','aniruddhratahod@gmail.com'),
 (6,'uname','pwd','name','add','mob','email'),
 (7,'yash','abc@1234','Aniruddh','Bhopal','8269332476','aniruddhratahod@gmail.com'),
 (8,'yash','1234','yash','neemuch','8269424850','jain@gmail.com'),
 (9,'arpit','1234','arpit','kholi no 420','8989411677','rathod@gmail.com'),
 (10,'aniruddh','ani1','aniruddh','neemuch','8269332476','ani.rathod@yahoo.in'),
 (11,'anshu','12345','Anshul Jain','neemuch','8989766702','anshul@gmail.com'),
 (13,'harendra`','acr@','harendra','bhopal','8518852274','harendra@yahoo.com'),
 (14,'anshul','anshul','Anshul Jain','sarwaniya maharaj','9074204636','anshulj977@gmail.com'),
 (15,'vaibhav','12345','vaibhav','abcd','8269798019','vkjain603@gmail.com'),
 (16,'ambar','ambar','ambar','e-75','9039185634','ambar.mishra93@gmail.com'),
 (17,'surya','surya','surya p','h-9,chunnabhatti','9074934927','suryakaranpathak1994@gmail.com'),
 (18,'abhishek','abhishek@18','abhishek purohit','49,bhavani nagar,bhopal','8889097783','abhee18@gmail.com'),
 (19,'kshama','1234','kshama mishra','82,j,ayodhya','8109613242','kshamaoriental15@gmail'),
 (20,'kshama','1234','kshama mishra','82,j,ayodhya','8109613242','kshamaoriental15@gmail');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
