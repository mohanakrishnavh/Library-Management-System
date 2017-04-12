CREATE TABLE `fines` (
  `Loan_id` int(11) NOT NULL,
  `fine_amount` double(4,2) NOT NULL,
  `paid` enum('YES','NO') NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`Loan_id`),
  CONSTRAINT `finekey` FOREIGN KEY (`Loan_id`) REFERENCES `book_loans` (`Loan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
-- Query: select * from fines
LIMIT 0, 2000

-- Date: 2017-03-19 23:27
*/
INSERT INTO `fines` (`Loan_id`,`fine_amount`,`paid`) VALUES (1,4.50,'YES');
INSERT INTO `fines` (`Loan_id`,`fine_amount`,`paid`) VALUES (27,0.25,'YES');
