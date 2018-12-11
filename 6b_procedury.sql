/*
*
* 1. Zwiêksza pensje pracownik o 5%
*
*/

CREATE OR REPLACE PROCEDURE v_dodatek IS
    v_procent NUMBER:=5;
BEGIN
    UPDATE pensja
    SET pensja=pensja*(1+v_procent/100);
END;

--wywolanie procedury

    EXECUTE v_dodatek;
    SELECT * FROM pensja;
    
/*
*
* 2. Liczy liczbe wszystkich pracownikow
*
*/
SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE proc_pracownicy (id_pracownik IN NUMBER)
    AS
        count_pers NUMBER;
    BEGIN
        SELECT COUNT(*) INTO count_pers
        FROM pracownik p WHERE p.id_pracownik = id_pracownik;
    
    DBMS_OUTPUT.PUT_LINE('Liczba pracownikow wynosi ' || count_pers);
    
    END;
    /
    
    --wywolanie procedury
    EXECUTE proc_pracownicy(1)
    
    
/*
*
* 3. Udzielenie rabatu wszystkim obecnym klientom ktorzy sa w koszyku
*
*/

CREATE OR REPLACE PROCEDURE rabat (
    k_id_koszyk koszyk.id_koszyk%TYPE,
    k_suma_zamowienia KOSZYK."SUMA_ZAMOWIENIA"%TYPE
) IS
    minus_kwota NUMBER := 10;
BEGIN
    IF k_suma_zamowienia > 1 THEN
    UPDATE koszyk
    SET suma_zamowienia = suma_zamowienia - minus_kwota;
    END IF;
END;

--wywolanie procedury (dla id_koszyk o numerze 4 zmniejsza sume zamowienia o 10 zl)
EXECUTE rabat(1,2);
SELECT * FROM KOSZYK;


/*
*
* 4. Dodanie nowego stanowiska
*
*/

CREATE OR REPLACE procedure NoweStanowisko
    ( name_in IN varchar2 )

IS 
    cnumber number;
    
    cursor c1 IS
    SELECT nazwa_stanowiska FROM stanowisko WHERE nazwa_stanowiska = name_in;

BEGIN
    open c1;
    fetch c1 into cnumber;
    
    if c1%notfound then
        cnumber := 9999;
    end if;
    
    INSERT INTO stanowisko (nazwa_stanowiska) VALUES (name_in);
    
    commit;
    
    close c1;
    
    EXCEPTION
    WHEN OTHERS THEN
        raise_application_error(-200001, 'An error was encountered - '||SQLCODE||' -ERROR-' ||SQLERRM);
    END;
    
    
    -- wywolanie procedury  
    EXECUTE NoweStanowisko('Konserwator');
    SELECT * FROM stanowisko;
    
/*
*
* 5. Usuwanie stanowiska
*
*/

CREATE OR REPLACE PROCEDURE usunStanowisko(p_id_stanowisko IN stanowisko.id_stanowisko%TYPE)
IS
BEGIN
    DELETE stanowisko WHERE id_stanowisko = p_id_stanowisko;
    
    COMMIT;
    
END;
/
-- Wywolanie procedury 
EXECUTE usunStanowisko(4);