--TABELA PENSJA
INSERT INTO PENSJA(pensja) VALUES (1500);
INSERT INTO PENSJA(pensja) VALUES (1700);
INSERT INTO PENSJA(pensja) VALUES (1800);
INSERT INTO PENSJA(pensja) VALUES (2000);
INSERT INTO PENSJA(pensja) VALUES (2500);
INSERT INTO PENSJA(pensja) VALUES (4000);

--TABELA DODATEK

INSERT INTO dodatek(dodatek) VALUES(0);
INSERT INTO dodatek(dodatek) VALUES(100);
INSERT INTO dodatek(dodatek) VALUES(200);
INSERT INTO dodatek(dodatek) VALUES(500);

--TABELA STANOWISKO

INSERT INTO stanowisko(nazwa_stanowiska) VALUES('kierownik');
INSERT INTO stanowisko(nazwa_stanowiska) VALUES('brygadzista');
INSERT INTO stanowisko(nazwa_stanowiska) VALUES('kasjer');
--TABELA UBEZPIECZENIE

INSERT INTO ubezp(nazwa_ubezp) VALUES ('Zdrowotne');
INSERT INTO ubezp(nazwa_ubezp) VALUES ('Emerytalne');
INSERT INTO ubezp(nazwa_ubezp) VALUES ('Pracownicze');

--STAN ZATRUDNIENIA

INSERT INTO stan_zatr(czy_zatrudniony) VALUES ('Tak');
INSERT INTO stan_zatr(czy_zatrudniony) VALUES ('Nie');
INSERT INTO stan_zatr(czy_zatrudniony) VALUES ('Urlop');

--TABELA RODZ_PAL

INSERT INTO rodz_pal(rodzaje) VALUES('95PB');
INSERT INTO rodz_pal(rodzaje) VALUES('98PB');
INSERT INTO rodz_pal(rodzaje) VALUES('Diesel');

--TABELA DYS_STAT

INSERT INTO dys_stat(ile_litrow_zost) VALUES(45000);
INSERT INTO dys_stat(ile_litrow_zost) VALUES(60000);
INSERT INTO dys_stat(ile_litrow_zost) VALUES(12000);

--TABELA CENA_PALIWO

INSERT INTO cena_paliwo(cena) VALUES(5.30);
INSERT INTO cena_paliwo(cena) VALUES(5.19);
INSERT INTO cena_paliwo(cena) VALUES(5.05);

--TABELA KLIENT

INSERT INTO klient(imie, nazwisko, miejscowosc, ulica, numer_mieszkania, numer_domu) VALUES('Stefan', 'Tarczynski', 'Gdañsk', 'Elblaska', '23', '43');
INSERT INTO klient(imie, nazwisko, miejscowosc, ulica, numer_mieszkania, numer_domu) VALUES('Henryka', 'Szymborska', 'Elblag', 'Gdanska', '4', '63');
INSERT INTO klient(imie, nazwisko, miejscowosc, ulica, numer_mieszkania, numer_domu) VALUES('Arnold', 'Boczek', 'Wroclaw', 'Polska', '3', '43');
INSERT INTO klient(imie, nazwisko, miejscowosc, ulica, numer_mieszkania, numer_domu) VALUES('Slawomir', 'Potocki', 'Zakopane', 'Warszawska', '65', '53');
INSERT INTO klient(imie, nazwisko, miejscowosc, ulica, numer_mieszkania, numer_domu) VALUES('Erwin', 'Bialy', 'Szczecin', 'Szczesliwa', '15', '83');
INSERT INTO klient(imie, nazwisko, miejscowosc, ulica, numer_mieszkania, numer_domu) VALUES('Wlodzimierz', 'Kopec', 'Kartuzy', 'Gdanska', '4', '33');

--TABELA FIRMA

INSERT INTO firma(miejscowosc, kod_pocztowy, ulica) VALUES ('Warszawa', '11-111', 'Sucharskiego');
INSERT INTO firma(miejscowosc, kod_pocztowy, ulica) VALUES ('Koszalin', '98-111', 'Konarskiego');
INSERT INTO firma(miejscowosc, kod_pocztowy, ulica) VALUES ('Szczecin', '58-111', 'Pilsudskiego');
INSERT INTO firma(miejscowosc, kod_pocztowy, ulica) VALUES ('Gdynia', '23-111', 'Okrag');
INSERT INTO firma(miejscowosc, kod_pocztowy, ulica) VALUES ('Warszawa', '64-111', 'Wiejska');
INSERT INTO firma(miejscowosc, kod_pocztowy, ulica) VALUES('brak', 'brak', 'brak');

--TABELA STATUS

INSERT INTO status(status) VALUES('Zrealizowano');
INSERT INTO status(status) VALUES('W trakie realizacji');
INSERT INTO status(status) VALUES('Odwmowa');

--TABELA TOWAR

INSERT INTO towar(nazwa_rodzaj_paliwa, ilosc_paliwa) VALUES('95PB', 50000);
INSERT INTO towar(nazwa_rodzaj_paliwa, ilosc_paliwa) VALUES('98PB', 10000);
INSERT INTO towar(nazwa_rodzaj_paliwa, ilosc_paliwa) VALUES('Diesel',100000);


--TABELA DOST_PALIWA


INSERT INTO dost_paliwa(nazwa_dostawcy) VALUES ('Orion');
INSERT INTO dost_paliwa(nazwa_dostawcy) VALUES ('Eko-Tank');
INSERT INTO dost_paliwa(nazwa_dostawcy) VALUES ('Petrolis');

-- TABELA PRACOWNIK

/*
SELECT * FROM pensja;
select * FROM dodatek;
*/
--SELECT * FROM stanowisko;
INSERT INTO pracownik(imie, nazwisko, pesel, miejscowosc, kod_pocztowy, ulica, numer_domu, numer_mieszkania, pensja_id_pensja, dodatek_id_dodatek, stanowisko_id_stanowisko, ubezp_id_ubezp, stan_zatr_id_stan_zatr)
VALUES('Adam', 'Gluchy', 93854758923, 'Sopot', '12-345', 'Sucharskiego', '23', '23', 2, 3, 1, 2, 3);

INSERT INTO pracownik(imie, nazwisko, pesel, miejscowosc, kod_pocztowy, ulica, numer_domu, numer_mieszkania, pensja_id_pensja, dodatek_id_dodatek, stanowisko_id_stanowisko, ubezp_id_ubezp, stan_zatr_id_stan_zatr)
VALUES('Wieslawa', 'Gruba', 85759403245, 'Zakopane', '52-376', 'Konarskiego', '33', '43', 3, 2, 3, 1, 3);

INSERT INTO pracownik(imie, nazwisko, pesel, miejscowosc, kod_pocztowy, ulica, numer_domu, numer_mieszkania, pensja_id_pensja, dodatek_id_dodatek, stanowisko_id_stanowisko, ubezp_id_ubezp, stan_zatr_id_stan_zatr)
VALUES('Adam', 'Malysz', 76554758923, 'Gdynia', '23-345', 'Okrag', '54', '23', 1, 2, 1, 3, 2);

INSERT INTO pracownik(imie, nazwisko, pesel, miejscowosc, kod_pocztowy, ulica, numer_domu, numer_mieszkania, pensja_id_pensja, dodatek_id_dodatek, stanowisko_id_stanowisko, ubezp_id_ubezp, stan_zatr_id_stan_zatr)
VALUES('Zbigniew', 'Czapka', 67854758923, 'Gdansk', '14-335', 'Boczna', '3', '6', 1, 2, 2, 2, 2);

INSERT INTO pracownik(imie, nazwisko, pesel, miejscowosc, kod_pocztowy, ulica, numer_domu, numer_mieszkania, pensja_id_pensja, dodatek_id_dodatek, stanowisko_id_stanowisko, ubezp_id_ubezp, stan_zatr_id_stan_zatr)
VALUES('Halina', 'Nosacz', 93567758923, 'Kartuzy', '12-235', 'Wiejska', '56', '2', 5, 4, 3, 3, 3);

INSERT INTO pracownik(imie, nazwisko, pesel, miejscowosc, kod_pocztowy, ulica, numer_domu, numer_mieszkania, pensja_id_pensja, dodatek_id_dodatek, stanowisko_id_stanowisko, ubezp_id_ubezp, stan_zatr_id_stan_zatr)
VALUES('Adam', 'Nawalka', 94587758923, 'Zukowo', '52-335', 'Kowalska', '78', '3', 2, 4, 2, 1, 3);



-- TABELA PARAGON

INSERT INTO paragon(data_wystawienia) VALUES ('2018-05-08');
INSERT INTO paragon(data_wystawienia) VALUES ('2018-04-04');
INSERT INTO paragon(data_wystawienia) VALUES ('2018-05-03');
INSERT INTO paragon(data_wystawienia) VALUES ('brak');

-- TABELA FAKTURA
/*
ALTER TABLE faktura DROP COLUMN koszyk_id_koszyk;
ALTER TABLE faktura DROP COLUMN zam_stacji_id_zam_stacji;
*/

INSERT INTO faktura(nip, nazwa_firmy, data_wystawienia) VALUES('23453', 'sklep', '2018-05-04');
INSERT INTO faktura(nip, nazwa_firmy, data_wystawienia) VALUES('42345', 'Salon fryzjerski', '2018-04-04');
INSERT INTO faktura(nip, nazwa_firmy, data_wystawienia) VALUES('23223', 'uslugi kominiarskie', '2017-06-03');
INSERT INTO faktura(nip, nazwa_firmy, data_wystawienia) VALUES('23453', 'sklep spozywczy', '2018-04-04');
INSERT INTO faktura(nip, nazwa_firmy, data_wystawienia) VALUES('23453', 'kwiaciarnia', '2018-04-24');
INSERT INTO faktura(nip, nazwa_firmy, data_wystawienia) VALUES('23453', 'uslugi transportowe', '2018-03-04');
INSERT INTO faktura(nip, nazwa_firmy, data_wystawienia) VALUES('brak', 'brak', 'brak');

--TABELA KOSZYK    DOKONCZYC TRZEBA PO ZAM_STACJI

INSERT INTO koszyk(suma_zamowienia, klient_id_klient, firma_id_firma, faktura_id_faktura, paragon_id_paragon, status_id_status, id_zam_stacji)
VALUES(200, 2, 3, 1, 2, 2, 1);
INSERT INTO koszyk(suma_zamowienia, klient_id_klient, firma_id_firma, faktura_id_faktura, paragon_id_paragon, status_id_status, id_zam_stacji)
VALUES(20, 2, 1, 2, 3, 3, 2);
INSERT INTO koszyk(suma_zamowienia, klient_id_klient, firma_id_firma, faktura_id_faktura, paragon_id_paragon, status_id_status, id_zam_stacji)
VALUES(35, 1, 2, 3, 1, 3, 3);
INSERT INTO koszyk(suma_zamowienia, klient_id_klient, firma_id_firma, faktura_id_faktura, paragon_id_paragon, status_id_status, id_zam_stacji)
VALUES(100, 2, 3, 3, 3, 2, 2);
INSERT INTO koszyk(suma_zamowienia, klient_id_klient, firma_id_firma, faktura_id_faktura, paragon_id_paragon, status_id_status, id_zam_stacji)
VALUES(300, 1, 1, 2, 2, 1, 1);
INSERT INTO koszyk(suma_zamowienia, klient_id_klient, firma_id_firma, faktura_id_faktura, paragon_id_paragon, status_id_status, id_zam_stacji)
VALUES(50, 2, 2, 1, 1, 1, 2);

/*
SELECT * FROM klient; 1-6
SELECT * FROM firma; 1-5 21
SELECT * FROM faktura; 41-46 47
SELECT * FROM paragon; 21-23 41
SELECT * FROM status; 21-23
SELECT * FROM zam_stacji; 59-64
*/

-- TABELA ZAM STACJI

INSERT INTO zam_stacji(towar, ilosc, towar_id_towar, dost_paliwa_id_dost_paliwa, faktura_id_faktura, status_id_status)
VALUES('paliwo', 2000, 3, 3, 1, 3);
INSERT INTO zam_stacji(towar, ilosc, towar_id_towar, dost_paliwa_id_dost_paliwa, faktura_id_faktura, status_id_status)
VALUES('paliwo', 5600, 2, 3, 2, 3);
INSERT INTO zam_stacji(towar, ilosc, towar_id_towar, dost_paliwa_id_dost_paliwa, faktura_id_faktura, status_id_status)
VALUES('paliwo', 12000, 3, 2, 3, 2);
INSERT INTO zam_stacji(towar, ilosc, towar_id_towar, dost_paliwa_id_dost_paliwa, faktura_id_faktura, status_id_status)
VALUES('paliwo', 23000, 3, 1, 3, 2);
INSERT INTO zam_stacji(towar, ilosc, towar_id_towar, dost_paliwa_id_dost_paliwa, faktura_id_faktura, status_id_status)
VALUES('paliwo', 2500, 3, 3, 2, 1);
INSERT INTO zam_stacji(towar, ilosc, towar_id_towar, dost_paliwa_id_dost_paliwa, faktura_id_faktura, status_id_status)
VALUES('paliwo', 3000, 2, 3, 1, 1);

/*
SELECT* FROM towar; 41-43
SELECT * FROM dost_paliwa; 1-3
SELECT * FROM faktura;41-46 47
SELECT * FROM status; 21-2
SELECT * FROM zam_stacji;
*/



--DROP TABLE zamowienie CASCADE CONSTRAINTS;
--TABELA DYSTRYBUTOR
INSERT INTO dystrybutor(numer_dystrybutora, cena_paliwo_id_cena_paliwo, rodz_pal_id_rodz_pal, dys_stat_id_dys_status)
VALUES(1, 1, 1, 2 );
INSERT INTO dystrybutor(numer_dystrybutora, cena_paliwo_id_cena_paliwo, rodz_pal_id_rodz_pal, dys_stat_id_dys_status)
VALUES(2, 2, 2, 2 );
INSERT INTO dystrybutor(numer_dystrybutora, cena_paliwo_id_cena_paliwo, rodz_pal_id_rodz_pal, dys_stat_id_dys_status)
VALUES(3, 3, 3, 3 );
INSERT INTO dystrybutor(numer_dystrybutora, cena_paliwo_id_cena_paliwo, rodz_pal_id_rodz_pal, dys_stat_id_dys_status)
VALUES(4, 2, 2, 3 );
INSERT INTO dystrybutor(numer_dystrybutora, cena_paliwo_id_cena_paliwo, rodz_pal_id_rodz_pal, dys_stat_id_dys_status)
VALUES(4, 1, 1, 3 );
INSERT INTO dystrybutor(numer_dystrybutora, cena_paliwo_id_cena_paliwo, rodz_pal_id_rodz_pal, dys_stat_id_dys_status)
VALUES(5, 2, 2, 1 );

/*
SELECT * FROM cena_paliwo; 1, 2, 3
SELECT * FROM rodz_pal; 1, 2, 3
SELECT * FROM dys_Stat; 1, 2, 3
*/
--TABELA ZAMOWIENIE
INSERT INTO zamowienie(ilosc, koszyk_id_koszyk, pracownik_id_pracownik, dystrybutor_id_dystrybutor)
VALUES(1, 2, 2, 2 );
INSERT INTO zamowienie(ilosc, koszyk_id_koszyk, pracownik_id_pracownik, dystrybutor_id_dystrybutor)
VALUES(1, 1, 3, 3 );
INSERT INTO zamowienie(ilosc, koszyk_id_koszyk, pracownik_id_pracownik, dystrybutor_id_dystrybutor)
VALUES(1, 2, 4, 2 );
INSERT INTO zamowienie(ilosc, koszyk_id_koszyk, pracownik_id_pracownik, dystrybutor_id_dystrybutor)
VALUES(1, 3, 5, 1 );
INSERT INTO zamowienie(ilosc, koszyk_id_koszyk, pracownik_id_pracownik, dystrybutor_id_dystrybutor)
VALUES(1, 2, 6, 1 );
INSERT INTO zamowienie(ilosc, koszyk_id_koszyk, pracownik_id_pracownik, dystrybutor_id_dystrybutor)
VALUES(1, 1, 3, 1 );
/*
SELECT * FROM koszyk; 21-27
SELECT * FROM pracownik;1-7
SELECT * FROM dystrybutor;41-46
SELECT* FROM zamowienie;
*/