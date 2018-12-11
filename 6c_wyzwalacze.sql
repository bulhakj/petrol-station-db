/*
*
* 1. Wyzwalacz dodajacy nowa forme ubezpieczenia do tabeli ubezp.
*
*/
CREATE OR REPLACE TRIGGER trigger1
    BEFORE INSERT ON towar 
    FOR EACH ROW
BEGIN
    :new.ubezp :=upper(:new.ubezp);
END;
/
INSERT INTO ubezp(nazwa_ubezp) VALUES ('Od wypadkiu');
SELECT * FROM ubezp;


/*
*
* 2. Wyzwalacz zabraniajacy usunac pracownika o nazwisku Gluchy.
*
*/

CREATE OR REPLACE TRIGGER trigger2
    AFTER DELETE on pracownik
    FOR EACH ROW
BEGIN
    IF :old.nazwisko = 'Gluchy' THEN
    raise_application_error(-20015, 'Nie mozna usunac pracownika o nazwisku Gluchy');
    END IF;
END;
/

DELETE FROM pracownik WHERE nazwisko ='Gluchy';
SELECT * FROM pracownik;

/*
*
* 3. Wyzwalacz zabraniajacy wpisywanie za duzej pensji
*
*/

CREATE OR REPLACE TRIGGER trigger3
BEFORE INSERT OR UPDATE
of pensja
on pensja
FOR EACH ROW
    DECLARE
        v_blad VARCHAR2(200);
    BEGIN
        if :new.pensja > 5000
        THEN
            v_blad:=:old.pensja|| 'Nie placimy pracownikom az tyle pieniedzy!';
            raise_application_error(-20999, v_blad);
        END IF;
    END;
    /
    
    INSERT INTO pensja(pensja) VALUES (5001);
    
/*
*
* 4.
*
*/

SET SERVEROUTPUT ON
/
CREATE OR REPLACE TRIGGER nowa_placa
BEFORE DELETE OR INSERT OR UPDATE ON pensja
FOR EACH ROW
WHEN (NEW.ID_PENSJA > 0)
DECLARE
    roznica NUMBER;
BEGIN
    roznica := :NEW.pensja - :OLD.pensja;
    DBMS_OUTPUT.PUT_LINE('Pierwotna pensja: ' || :OLD.pensja);
    DBMS_OUTPUT.PUT_LINE('Pensja zaktualizowana: ' || :NEW.pensja);
    DBMS_OUTPUT.PUT_LINE('Róznica w zarobkach:'|| roznica);
END;

INSERT INTO pensja (id_pensja, pensja) VALUES (6, 2000);
    
    
    SELECT * FROM pensja;
 
 
/*
*
* 5. Wyzwalacz zabraniajacy przyznania wiekszego dodatku dla pracownika niz 1000 zl
*
*/

CREATE OR REPLACE TRIGGER trigger5
BEFORE INSERT OR UPDATE
of dodatek
on dodatek
FOR EACH ROW
    DECLARE
        v_blad VARCHAR2(200);
    BEGIN
        if :new.dodatek > 1000
        THEN
            v_blad:=:old.dodatek|| 'Nie mozemy przyznac dla pracownika wiekszego dodatku niz 1000 zl!';
            raise_application_error(-20999, v_blad);
        END IF;
    END;
    /
    --wywolanie wyzwalacza
    INSERT INTO dodatek(dodatek) VALUES (1001);

