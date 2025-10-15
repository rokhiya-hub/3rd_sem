CREATE OR REPLACE FUNCTION get_factor_count(x NUMBER) RETURN NUMBER IS
DECLARE
    fc NUMBER;
BEGIN 
    fc:=0;
    FOR i IN 1..x LOOP
        IF MOD(i,x)=0 THEN
        fc:=fc+1;
        END IF;
    END LOOP;
    RETURN fc;
    END;
/
CREATE OR REPLACE PROCEDURE fcount(a IN NUMBER,b IN NUMBER, c OUT NUMBER) IS
    c NUMBER;
BEGIN
    FOR i IN a..b LOOP
    c:= get_factor_count(a);
    
    END;
/