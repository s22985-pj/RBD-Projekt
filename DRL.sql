



-- Potrójny Join z wyświetleniem obrotu komisu -- 

SELECT transakcje.ID, transakcje.id_klienta, klient.imie, klient.nazwisko, 
transakcje.id_pracownika, pracownik.imie, transakcje.id_samochodu,
samochod.marka, samochod.model, transakcje.rodzaj_trans, transakcje.kwota, transakcje.nr_faktury 
FROM transakcje 
JOIN klient 
ON transakcje.id_klienta=klient.id 
JOIN pracownik 
ON transakcje.id_pracownika=pracownik.id 
JOIN samochod 
ON samochod.id=transakcje.id_samochodu;


-- Wyświetlanie aut dostępnych w sprzedaży --

SELECT samochod.* 
FROM transakcje 
JOIN samochod 
ON samochod.id=transakcje.id_samochodu 
GROUP BY id_samochodu 
HAVING COUNT(id_samochodu) = 1
ORDER BY transakcje.id_samochodu ASC;

-- LUB -- 
-- STORED PROCEDUTE --

CALL AutaDostepne;


-----ZAPYTANIA AGREGUJĄCE------
-------------------------------
-- Łączny obrót i zysk firmy -- 

SELECT SUM(samochod_sprzedany.cena)*0.15 AS `Zysk_komisu`,
SUM(samochod_sprzedany.cena) AS Zysk 
FROM samochod_sprzedany;

-- liczba klientów po kodzie pocztowym --

SELECT COUNT(*), kod_pocztowy 
FROM `klient`
GROUP BY kod_pocztowy 
ORDER BY `COUNT(*)` DESC

-- Liczba transakcji na danym aucie -- 

SELECT id_samochodu, COUNT(id_samochodu) 
FROM transakcje GROUP BY id_samochodu

-- Łączne premie od sprzedaży pojazdu --

SELECT transakcje.id_pracownika, pracownik.imie,
COUNT(transakcje.id_pracownika) AS liczba_transakcji,
SUM(transakcje.kwota)*0.05 AS Premia
FROM transakcje INNER JOIN pracownik ON pracownik.id=transakcje.id_pracownika
WHERE transakcje.rodzaj_trans="KUPNO" 
GROUP BY transakcje.id_pracownika 
ORDER BY Premia

-- Średnia rocznika według marki samochodu --

SELECT ROUND(AVG(rok_prod )),COUNT(marka) AS L_mark,
marka FROM `samochod` 
GROUP BY `marka`



