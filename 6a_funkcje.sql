-- FUNKCJE

/*
*
*  1. Funckja obliczajaca srednia place wszystkich pracownikow.
*
*/


CREATE OR REPLACE FUNCTION srednia_placa RETURN NUMBER
IS
    v_avg_placa NUMBER;
BEGIN
    SELECT AVG(pensja)
    INTO v_avg_placa FROM pensja;
    RETURN v_avg_placa;
END;

--wywolanie funckji:
select AVG(pensja) FROM pensja;


/*
*
* 2 oblicza podatek od paliwa o podanym id na podstawie koszyka
*
*/

CREATE OR REPLACE FUNCTION obliczPodatek (koszykId NUMBER)
    RETURN NUMBER
    IS Podatek NUMBER(10,2);
    
BEGIN
    Podatek := 0;
    
    SELECT (sum(suma_zamowienia)*23)/100 INTO Podatek From koszyk WHERE id_koszyk = koszykId;
    
        RETURN Podatek;
    
    END obliczPodatek;
    
--wywolanie
    SELECT sum(sal.suma_zamowienia) AS SumaZamowienia, obliczPodatek(2) AS Podatek
    FROM koszyk sal
    WHERE id_koszyk=5;


/*
*
* 3. Podatek od zarobkow pracownikow
*
*/

CREATE OR REPLACE FUNCTION obliczPodatekZar(personId NUMBER)
    RETURN NUMBER
    IS v_podatek NUMBER(10,2);
    
BEGIN
    v_podatek := 0;
    
    SELECT (sum(pensja)*60)/100 INTO v_podatek FROM pensja WHERE id_pensja = personID;
    
    RETURN v_podatek;
END obliczPodatekZar;

--wywolanie funkcji

SELECT pracownik.imie, pracownik.nazwisko, sum(sal.pensja) AS
Roczne_Wynagrodzenie, obliczPodatekZar(3) AS Podatek
FROM pracownik, pensja sal
WHERE pracownik.id_pracownik = 3
GROUP BY pracownik.imie, pracownik.nazwisko;


/*
*
* 4. oblicza srednia wartosc dodatkow pracownikow
*
*/

CREATE OR REPLACE FUNCTION srednia_dodatkow RETURN NUMBER
IS
    avg_srednia_dodatkow NUMBER;
BEGIN
    SELECT avg(dodatek)
    INTO avg_srednia_dodatkow FROM dodatek;
    RETURN avg_srednia_dodatkow;
END;

--- wywolanie funkcji

SELECT avg(dodatek) FROM dodatek;
    
    
/*
*
* 5. Suma zamowien w koszyku
*
*/

CREATE OR REPLACE FUNCTION suma_koszyk RETURN NUMBER
IS
    sum_suma_koszyk NUMBER;
BEGIN
    SELECT sum(suma_zamowienia)
    INTO sum_suma_koszyk FROM koszyk;
    RETURN sum_suma_koszyk;
END;

-- Wywolanie funkcji

SELECT sum(suma_zamowienia) FROM koszyk;