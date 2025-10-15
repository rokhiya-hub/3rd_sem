--WE CAN ACTUALLY WRITE THE CASE IN THE AGGREGATE FUNCTIONS
SELECT sum(CASE WHEN gender ='Female' THEN salary END)
from employee;
--WHAT IS THE DIFFERENCE BETWEEN TEH SUM OF SALARIES OF MALE AND FEMALE EMPLOYEES FROM THE EMPLOYEE TABLE.
SELECT SUM(
    CASE
    WHEN gender = 'Male'THEN salary
    WHEN gender ='Female' THEN -salary
    END
) FROM employee;

--we can also use the conditions in the count also
--to count the successful submissions form the submissions table
SELECT user_id,count(*) as total_submissions, count(case when status ='1' THEN 1 END) as successful_submissions
from submissions
group by user_id;

--trigges: THEY ARE USED TO MAINTAIN THE RECORD OF THE PREVIOUS VALUES BEFORE CHANGE

--BEFORE CHAGING THE SALARY IT IS CALLED AS OLD RECORDS AND THE RECORD AFTER CAHNAGING IS CALLED AS THE PSEUDO RECORD
create table sal_change_log
(
    log_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    emp_id NUMBER REFERENCES employee(id),
    old_salary NUMBER not null,
    new_salary NUMBER not null,
    updated_on DATE DEFAULT CURRENT_DATE
);
DROP TABLE sal_change_log;

CREATE OR REPLACE TRIGGER 
sal_change_trigger AFTER UPDATE ON employee
FOR EACH ROW 
BEGIN
    INSERT INTO sal_change_log
    (emp_id,old_salary,new_salary)
    VALUES(:NEW.id,:OLD.salary,:NEW.salary);
    END;
/
---WE CAN CHANGE THE REQUIREMENT WHERE THE SAL-CHANGE_LOG IS UPDATED WHEN ONLY THE SALARY IS UPDATED
CREATE OR REPLACE TRIGGER 
sal_change_trigger 
AFTER UPDATE OF salary ON employee
FOR EACH ROW 
BEGIN
    INSERT INTO sal_change_log
    (emp_id,old_salary,new_salary)
    VALUES(:NEW.id,:OLD.salary,:NEW.salary);
    END;
/
SELECT * FROM SAL_CHANGE_LOG;
UPDATE EMPLOYEE SET SALARY = SALARY+2 WHERE SALARY IS NOT NULL AND DEPARTMENT ='Testing';
