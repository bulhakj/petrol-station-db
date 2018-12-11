-- 1. Select pokazujacy pracownika i jego pensje
SELECT p.id_pracownik, p.imie, p.nazwisko, pe.id_pensja, pe.pensja FROM pracownik p
INNER JOIN pensja pe ON p.id_pracownik = pe.id_pensja;

--