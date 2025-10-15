CREATE TABLE products(p_id NUMBER PRIMARY KEY, p_name VARCHAR2(100), price NUMBER);

CREATE TABLE customers(c_id NUMBER PRIMARY KEY, c_name VARCHAR2(100),email VARCHAR2(100));

CREATE TABLE orders(
o_id VARCHAR2(100) PRIMARY KEY,
customer_id NUMBER REFERENCES customers(c_id),
product_id NUMBER REFERENCES products(p_id),
order_date DATE DEFAULT CURRENT_DATE,
q NUMBER
);

CREATE OR REPLACE FUNCTION generateNewInvId
RETURN VARCHAR2 IS
BEGIN
    RETURN 'INV-' || LPAD(my_first_seq.NEXTVAL,5,0);
    END;
/


DROP TABLE PRODUCTS;
DROP TABLE customers;
DROP TABLE ORDERS;

INSERT INTO customers VALUES(1,'ALICE','alice@gmail.com');
INSERT INTO customers VALUES(2,'BOB','bob@gmail.com');
INSERT INTO customers VALUES(3,'CHARLIE','charlie@gmail.com');
INSERT INTO customers VALUES(4,'DIANA','diana@gmail.com');


INSERT INTO products VALUES(1,'LAPTOP',60000);
INSERT INTO products VALUES(2,'TABLE',8000);
INSERT INTO products VALUES(3,'MOUSE',1000);
INSERT INTO products VALUES(4,'KEYBOARD',3000);
INSERT INTO products VALUES(5,'TABLET',36000);



INSERT INTO orders(o_id,customer_id,product_id,q) VALUES(101,1,3,10);
INSERT INTO orders(o_id,customer_id,product_id,q) VALUES(102,4,1,5);
INSERT INTO orders(o_id,customer_id,product_id,q) VALUES(103,3,4,100);


select * from products;
select * from orders;
select * from customers;

--SEQUENCES ARE SQL OBJECTS THAT HELPS US GENERATE NUMBERS IN SEQUENCE
CREATE SEQUENCE my_first_seq START WITH 1 INCREMENT BY 1;
--LPAD MEANS LEFT PADDING.  HERE WHEN THE NUMBER IS A SINGLE STATEMENT THEN THE LEDT NUMBER WILL BE MARKED AS ZEROES
--NEXTVAL IS A KEYWORD WHERE WE WIRTE AFTER THE SEQUENCE FUNCTION NAME SEPARATED WITH A DOT
SELECT LPAD(my_first_seq.sequence.NEXTVAL,5,0) FROM dual;
END;
/
ALTER SEQUENCE my_first_seq RESTART START WITH 1;
CREATE OR REPLACE FUNCTION generateNewOrderId
RETURN VARCHAR2 IS
BEGIN
    RETURN 'ORD-' || LPAD(my_first_seq.NEXTVAL,5,0);
    END;
/

INSERT INTO ORDERS(o_id,CUSTOMER_ID,PRODUCT_ID) VALUES(generateNewOrderId(),1,101),
(generateNewOrderId(),2,103),
(generateNewOrderId(),3,101),
(generateNewOrderId(),1,101);

select * from orders;
select * from CUSTOMERS;
select * from PRODUCTS;

--PROCEDURES IN SQL
--PROCEDURES ARE INTENDED TO 
--THEY MUST BE CALLED IN ANOTHER PL/SQL BLOCK
CREATE OR REPLACE PROCEDURE first_procedure(a IN NUMBER)
IS
BEGIN
    FOR i IN 1..a LOOP
    DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/
--FIRST WAY TO ACCESS ID EXEC
EXEC first_procedure(10);
--SECOND WAY IS USING BEGIN AND END
BEGIN
    first_procedure(5);
    END;
/
-- WE HAVE TWO TYPES OF PARAMETERS IN THE PROCEDURES FUNCTION (IN PARAMETER AND OUT PARAMETER)
CREATE OR REPLACE PROCEDURE xyz(a IN NUMBER, b OUT NUMBER) 
IS 
BEGIN
    b:= a*a;
    END;
/

-- EXEC xyz(10);
-- DECLARE
-- input NUMBER;
-- output NUMBER;
-- BEGIN
--     input:=10;
--     xyz(input,output);
--     DBMS_OUTPUT.PUT_LINE(output);
--     END;
-- /

-- CREATE OR REPLACE PROCEDURE 
-- upd_salary(emp_id IN NUMBER, new_salary IN NUMBER)
-- IS BEGIN
--     UPDATE employee SET salary = new_salary;
--     WHERE id = emp_id;
-- END;
-- /

EXEC upd_salary(113,65000);
EXEC upd_salary(144,50000);

CREATE OR REPLACE PROCEDURE
del_emp(emp_id IN NUMBER)
IS 
BEGIN
    DELETE FROM employee WHERE id = emp_id;
    END;
/
--DROP PROCEDURE procedure_name;
EXEC delemp(101);
SELECT * FROM employee WHERE id = 101;

CREATE OR REPLACE PROCEDURE
get_min_max_sal(dept_name IN VARCHAR2)
IS 
    min_salary NUMBER;
    max_salary NUMBER;
BEGIN
    SELECT MIN(salary),MAX(salary) INTO 
    min_salary,max_salary
    FROM employee WHERE dpartment = dept_name;
    DBMS_OUTPUT.PUT_LINE('HIGHEST '||dept_name||' : '||max_salary);
    DBMS_OUTPUT.PUT_LINE('LOWEST '||dept_name||' : '||min_salary);
    END;
/
EXEC get_min_max_sal('HR');
EXEC get_min_max_sal('Testing');
