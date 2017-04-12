CREATE DEFINER=`root`@`localhost` TRIGGER before_book_loans_update
  BEFORE INSERT ON book_loans
     FOR EACH ROW
     BEGIN
		IF ((SELECT COUNT(*) FROM book_loans where (new.Card_no=Card_no AND Date_in IS NULL))>=3) THEN
		signal sqlstate '45000' SET MESSAGE_TEXT = "A user can't borrow more than 3 books";
		END if;
		set new.Date_out =now() , new.Due_date=date_add(current_timestamp(),interval 14 day);
END