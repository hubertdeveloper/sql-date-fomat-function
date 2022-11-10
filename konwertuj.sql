DELIMITER //
CREATE FUNCTION konwertuj(dataWyjazdu date) RETURNS varchar(30)
BEGIN
	DECLARE mc_slowo varchar(30);
	DECLARE dzien INT;
    DECLARE miesiac INT;
    DECLARE rok INT;
    SET dzien=DAY(dataWyjazdu);
    SET miesiac=MONTH(dataWyjazdu);
    SET rok=YEAR(dataWyjazdu);
    IF miesiac=1 THEN
    	SET mc_slowo='Styczeń';
    END IF;
    IF miesiac=2 THEN
    	SET mc_slowo='Luty';
    END IF;
    IF miesiac=3 THEN
    	SET mc_slowo='Marzec';
    END IF;
    IF miesiac=4 THEN
    	SET mc_slowo='Kwiecień';
    END IF;
    IF miesiac=5 THEN
    	SET mc_slowo='Maj';
    END IF;
    IF miesiac=6 THEN
    	SET mc_slowo='Czerwiec';
    END IF;
    IF miesiac=7 THEN
    	SET mc_slowo='Lipiec';
    END IF;
    IF miesiac=8 THEN
    	SET mc_slowo='Sierpień';
    END IF;
    IF miesiac=9 THEN
    	SET mc_slowo='Wrzesień';
    END IF;
    IF miesiac=10 THEN
    	SET mc_slowo='Październik';
    END IF;
    IF miesiac=11 THEN
    	SET mc_slowo='Listopad';
    END IF;
    IF miesiac=12 THEN
    	SET mc_slowo='Grudzień';
    END IF;
    RETURN CONCAT(dzien,' ',mc_slowo,' ',rok);
END//
DELIMITER ;