use library;
CREATE TABLE `book_loans` (
  `Loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(15) NOT NULL,
  `Card_no` int(11) NOT NULL,
  `Date_out` datetime DEFAULT NULL,
  `Due_date` datetime DEFAULT NULL,
  `Date_in` datetime DEFAULT NULL,
  PRIMARY KEY (`Loan_id`),
  KEY `isbn` (`isbn`),
  KEY `Card_no` (`Card_no`),
  CONSTRAINT `book_loans_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `book` (`ISBN`) ON DELETE CASCADE,
  CONSTRAINT `book_loans_ibfk_2` FOREIGN KEY (`Card_no`) REFERENCES `borrower` (`card_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;


/*
-- Query: select * from book_loans
LIMIT 0, 2000

-- Date: 2017-03-19 23:24
*/
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (1,'9780001047976',1003,'2017-03-18 17:45:55','2017-04-01 17:45:55','2017-04-19 17:46:05');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (2,'9780001047976',1004,'2017-03-18 21:27:34','2017-04-01 21:27:34','2017-03-19 11:31:33');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (3,'9780001360464',1004,'2017-03-18 21:29:38','2017-04-01 21:29:38','2017-03-18 23:57:35');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (4,'9780001360464',1003,'2017-03-19 01:30:51','2017-04-02 01:30:51','2017-03-19 01:31:05');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (5,'9780001047976',1003,'2017-03-19 01:30:51','2017-04-02 01:30:51','2017-03-19 01:31:05');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (15,'9780140293241',1004,'2017-03-19 07:41:12','2017-04-02 07:41:12','2017-03-19 07:51:32');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (16,'9780140292916',1004,'2017-03-19 07:41:12','2017-04-02 07:41:12','2017-03-19 07:51:47');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (17,'9780140291957',1004,'2017-03-19 07:41:12','2017-04-02 07:41:12','2017-03-19 07:51:47');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (18,'9780060509392',1004,'2017-03-19 08:32:59','2017-04-02 08:32:59','2017-03-19 11:31:33');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (19,'9780140291094',1004,'2017-03-19 10:41:04','2017-04-02 10:41:04','2017-03-19 19:18:10');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (20,'9780140291094',1003,'2017-03-19 11:11:23','2017-04-02 11:11:23','2017-03-19 11:16:44');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (21,'9780001047976',1004,'2017-03-19 11:28:53','2017-04-02 11:28:53','2017-03-19 11:31:33');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (22,'9780060509392',1004,'2017-03-19 11:28:54','2017-04-02 11:28:54','2017-03-19 11:31:33');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (23,'9780140291094',1004,'2017-03-05 12:23:36','2017-04-19 12:23:36','2017-03-19 19:18:10');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (24,'9780020631507',1003,'2017-03-19 13:10:32','2017-04-02 13:10:32','2017-03-19 22:03:42');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (25,'9780002005012',1003,'2017-03-19 13:12:34','2017-04-02 13:12:34','2017-03-19 13:16:19');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (26,'9780002005395',1003,'2017-03-19 13:12:34','2017-04-02 13:12:34','2017-03-19 13:16:19');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (27,'9780399150791',1003,'2017-03-17 13:17:24','2017-03-18 14:17:24','2017-03-19 19:21:18');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (28,'9780006510017',1003,'2017-03-19 17:52:11','2017-04-02 17:52:11','2017-03-19 19:24:28');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (29,'9780061083259',1007,'2017-03-19 19:16:58','2017-04-02 19:16:58','2017-03-19 22:04:15');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (30,'9780312971304',1007,'2017-03-19 19:16:58','2017-04-02 19:16:58','2017-03-19 22:04:15');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (31,'9780312977900',1007,'2017-03-19 19:16:58','2017-04-02 19:16:58','2017-03-19 22:04:15');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (32,'9780316769488',1004,'2017-03-19 19:17:48','2017-04-02 19:17:48','2017-03-19 19:18:10');
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (38,'9780006143192',1008,'2017-03-19 22:08:38','2017-04-02 22:08:38',NULL);
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (39,'9780006278849',1008,'2017-03-19 22:08:38','2017-04-02 22:08:38',NULL);
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (40,'9780006369882',1008,'2017-03-19 22:08:38','2017-04-02 22:08:38',NULL);
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (41,'9780006385370',1007,'2017-03-19 22:09:25','2017-04-02 22:09:25',NULL);
INSERT INTO `book_loans` (`Loan_id`,`isbn`,`Card_no`,`Date_out`,`Due_date`,`Date_in`) VALUES (42,'9780028617275',1007,'2017-03-19 22:09:25','2017-04-02 22:09:25',NULL);
