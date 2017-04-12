CREATE DEFINER=`root`@`localhost` TRIGGER aftercheckin
 	AFTER UPDATE ON book_loans
     FOR EACH ROW
 		UPDATE book
 			SET availability='YES'
 		WHERE book.isbn = NEW.isbn