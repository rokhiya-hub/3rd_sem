CREATE TABLE products(p_id NUMBER PRIMARY KEY, p_name VARCHAR2(100), price NUMBER);
CREATE TABLE customers(c_id NUMBER PRIMARY KEY, c_name VARCHAR2(100),email VARCHAR2(100));
CREATE TABLE orders(
o_id NUMBER PRIMARY KEY,
customer_id NUMBER REFERENCES customers(c_id),
product_id NUMBER REFERENCES products(p_id),
order_date DATE DEFAULT CURRENT_DATE,
q NUMBER
);

CREATE TABLE invoice(
    inv_id VARCHAR2(10) PRIMARY KEY,
    order_id NUMBER REFERENCES orders(o_id),
    invoice_date DATE DEFAULT CURRENT_DATE,
    total_amount NUMBER NOT NULL
);


DROP TABLE PRODUCTS;
DROP TABLE customers;
DROP TABLE ORDERS;
DROP TABLE invoice;
drop sequence my_first_seq;
drop trigger inv_generator;
drop function generateNewInvId;

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
INSERT INTO orders(o_id,customer_id,product_id,q) VALUES(104,2,1,100);


select * from products;
select * from orders;
select * from customers;
select * from invoice;

CREATE SEQUENCE my_first_seq START WITH 1 INCREMENT BY 1;
ALTER SEQUENCE my_first_seq RESTART START WITH 1;


CREATE OR REPLACE FUNCTION generateNewInvId
RETURN VARCHAR2 IS
BEGIN
    RETURN 'INV-' || LPAD(my_first_seq.NEXTVAL,5,0);
    END;
/

CREATE OR REPLACE TRIGGER inv_generator 
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    INSERT INTO invoice(inv_id,order_id,total_amount)
    VALUES(GENERATENEWINVID(),:NEW.o_id,:NEW.q * (select price from products where p_id =:NEW.product_id));
    END;
/


