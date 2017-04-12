CREATE DEFINER=`root`@`localhost` TRIGGER after_book_loans_update_forbooks
 	AFTER INSERT ON book_loans
     FOR EACH ROW
 		UPDATE book
 			SET availability='NO'
 		WHERE book.isbn = NEW.isbn