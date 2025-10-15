SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION square(a NUMBER)
RETURN NUMBER AS
BEGIN
    RETURN a*a;
END;
/
SELECT square(2) from dual;

--2
CREATE OR REPLACE FUNCTION factor(a NUMBER,b NUMBER) RETURN VARCHAR2 AS
res VARCHAR2(10);
BEGIN
    IF MOD(a,b)=0 THEN
    res :='TRUE';
    ELSE
    res :='FALSE';
    END IF;
    RETURN res;
END;
/
SELECT factor(4,2) from dual;
--3
CREATE OR REPLACE FUNCTION max(a NUMBER,b NUMBER,c NUMBER) RETURN NUMBER IS
m NUMBER;
BEGIN
    IF a>b AND a>c THEN
    m:=a;
    ELSIF b>c AND b>a THEN
    m:=b;
    ELSE
    m:=c;
    END IF;
    RETURN m;
END;
/
SELECT max(10,20,30) from dual;
--4
CREATE OR REPLACE FUNCTION name_gender(name VARCHAR2,gender VARCHAR2) RETURN VARCHAR2 AS
res VARCHAR2(200);
BEGIN
    IF gender='Male' THEN 
    res:=name || ' (m)';
    ELSE
    res:=name || ' (f)';
    END IF;
    RETURN res;
    END;
/
SELECT name_gender('ROKHIYA','Female') from dual;

--5
CREATE OR REPLACE FUNCTION first_last(name VARCHAR2) RETURN VARCHAR2 AS 
res VARCHAR2(2);
BEGIN
    res:=SUBSTR(name, 1, 1)|| SUBSTR(name, -1, 1);
    RETURN res;
    END;
/

SELECT FIRST_LAST('ROKHIYA') FroM dual;

--6
CREATE OR REPLACE FUNCTION age(dob DATE) RETURN NUMBER AS
BEGIN

    END;
/





