--  SET OPERATORS ARE OF 4 TYPES 
--1. UNION 
--2. UNION ALL
--3. INTERSECT
--4. MINUS

CREATE TABLE CITIES1 (
    c_name VARCHAR(50)
);

INSERT INTO CITIES1 (c_name) VALUES
('ROME'),
('MUMBAI'),
('BERLIN'),
('TOKYO'),
('NEW YORK'),
('SYDNEY');

CREATE TABLE CITIES2 (
    city_name VARCHAR(50)
);
INSERT INTO CITIES2 (city_name) VALUES
('CHENNAI'),
('ROME'),
('TOKYO'),
('MOSCOW'),
('SEOUL'),
('NEW YORK');
--SELECTS THE UNIQUES FROM THE SECOND TABELS
select * from cities1
union
select * from CITIES2;
--SELECTS ALL THE ROWS FROM THE TWO TABLES
select * from cities1
union all
select * from CITIES2;
--SELECTS ONLY THE COMMON PARTS 
select * from cities1
INTERSECT
select * from CITIES2;
--SELECT THE ROWS FROM THE FIRST TABLE EXCLUDING THE ROWS FROM THE SECOND TABLE
select * from cities1
minus
select * from CITIES2;

--WINDOWS FUNCTIONS ----> CLASSIFIED INTO 4 TYPES

--1. RANKING FUNCTIONS
-- CALLES AS RANK(), DENSE_RANK()

--EX: TO GIVE RANKS FOR THE MPLOYEES BASED ON THE SALARY 

--RANK IS USED TO GIVE RANKINGS BY MISSING SOME OF THE RANKS WITH EQUAL PRIORITY 
SELECT id,name,salary,RANK() over(order by salary desc) as rnk from employee where salary is not null;

--DENSE RANK IS SOMETHING SWHERE EACH AND NUMBER IS REPEATED BUT ITS NOT MISSED
select id,name,salary ,dense_rank() over (order by salary desc) as rnk from employee where salary is not null;

--PARTITION FNCTION---> WE CAN ASSIGN RANKS BASED ON THE OTHER CATEGORIES AS WELL
select id,name,salary ,rank() over (partition by deapartment, gender order by salary desc) as rnk from employee where salary is not null;

--2. AGGREGATE WINDOW FUNCTIONS
--AVG(),SUM(),MAX(),MIN(),COUNT()
select id,name,date_of_joining, salary, sum(salary) over(order by date_of_joining) as running_sal from employee order by date_of_joining;
--3. VALUES FUNCTIONS

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('HELLO');
    DBMS_OUTPUT.PUT_LINE('I AM ROKHIYA');
    DBMS_OUTPUT.PUT_LINE('FROM ADITYA UNIVERSITY');
    END;
    /

DECLARE
    side NUMBER;
    area NUMBER;
    perimeter NUMBER;

BEGIN
    side := &side;
    perimeter := 4*side;
    area := side*side;
    DBMS_OUTPUT.PUT_LINE('PERIMETER = '|| perimeter);
    DBMS_OUTPUT.PUT_LINE('AREA = ' || area);
END;
    /

DECLARE
sal1 NUMBER;
sal2 NUMBER;
sum_sal NUMBER;
BEGIN
    SELECT salary INTO sal1 from employee where id =1;
    select salary into sal2 from employee where id =2;
    sum_sal := sal1 + sal2;
    DBMS.OUTPUT.PUTLINE('SALARIES SUM = ' || sum_sal);
    END;
/
