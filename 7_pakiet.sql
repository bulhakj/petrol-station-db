CREATE OR REPLACE PACKAGE statystyki IS
    FUNCTION srednia_placa RETURN NUMBER;
    FUNCTION obliczPodatek RETURN NUMBER;
    FUNCTION obliczPodatekZar RETURN NUMBER;
    FUNCTION srednia_dodatkow RETURN NUMBER;
    FUNCTION suma_koszuk RETURN NUMBER;
END statystyki;
/
CREATE OR REPLACE PACKAGE BODY statystyki IS
    FUNCTION srednia_placa RETURN NUMBER IS
        avg_srednia_dodatkow NUMBER
    BEGIN
    SELECT avg(dodatek) FROM dodatek;
    RETURN