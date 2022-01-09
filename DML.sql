



UPDATE samochod_sprzedany 
INNER JOIN transakcje 
ON samochod_sprzedany.id = transakcje.id_samochodu 
SET samochod_sprzedany.cena = transakcje.kwota 
WHERE transakcje.rodzaj_trans="KUPNO";

INSERT INTO klient 
(id, imie, nazwisko, nr_pesel, nr_dowodu,
NIP, kod_pocztowy, ulica, nr_domu, nr_lokalu, nr_tel)
VALUES ('28', 'Andrzej', 'Żwirowski', '91838192831', 'CFA718394',
'1923948192', '81-210', 'Modrzewiowa', '8', '1d', '8819203311');


-- TRIGGER -- 

CREATE TRIGGER `after_buy_car` AFTER INSERT ON `transakcje`
 FOR EACH ROW BEGIN 

INSERT INTO samochod_sprzedany 
(SELECT samochod.* 
FROM samochod 
INNER JOIN transakcje 
WHERE samochod.id = transakcje.id_samochodu 
AND transakcje.rodzaj_trans = 'KUPNO');
END

CREATE TRIGGER `after_buy_car_delete` BEFORE INSERT ON `transakcje`
 FOR EACH ROW BEGIN 
DELETE FROM samochod_sprzedany;
END


/*  
DELETE FROM `samochod` WHERE `samochod`.`id` = 9


*/

