--VIEWS CAN BE USED IN PLACE OF CTEs ALSO WHERE IT WORKS SAE LIKE THE CTE
CREATE VIEW employee_ranks
AS WITH cte AS(
    SELECT id,name,salary,department,RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS RANK
    FROM employee 
    WHERE salary IS NOT NULL 
) SELECT * FROM employee_ranks;

--TO PROVE THAT THE VIEW IS NOT STORED RATHER IT I FETCHES THE DATA FFROM BASE TABLES
SELECT *FROM cte where rank =1;
--WE SHUOLD NAME THE DERIVED COLUMN DEFINITELY OTHERWISE IT WILL THROW YOU AN ERROR

create or replace view customer_order_cn
as select c_name,count(*) as order_cnt from customers c join orders o on c.c_id =o.customer_id group by c_id,c_name;
insert into orders values (105,1,4,12-09-23);
select * from CUSTOMER_ORDER_CNT;


---VIEWS HELP US TO FETCH THE FREQUENTLY USED QUERIES USING A SINGLE VIEW NAME
-- CREATE VIEW customer_order_count AS
-- SELECT c.c_name,p.p_name,count(*) as cnt 
-- from customers c 
-- join orders o 
-- on c.c_id = o.customer_id
-- join products p 
-- on o.product_id =p.p_id
-- GROUP BY c.c_name = p.p_name;

SELECT * FROM customer_order_count;

--UPDATABLE
create or replace view ops_employees as
select id,name,salary, department,gender 
from employee 
where department='Operations';

select * from ops_employees;
update ops_employees set gender ='Male' where id =117;
select* from employee;

--NON UPDATABLE
create or replace view dept_cnt
as 
select department,count(*) as cnt 
from employee 
group by department;
--the beloew update will fail
update dept_cnt set cnt =26 where department ='HR';
select * from dept_cnt;

--MATERIALIZED VIEW
-- A view that actually stores the data in the disk It not always ercommends the result freshly from underlying tables rather it stores permanantly
-- If you want fresh data to be fetched a maual refresh (using DBMS_MVIEW.REFRESH()) is required
CREATE MATERIALIZED VIEW dept_emp_counts
AS 
SELECT department,COUNT(*) AS cnt from employee 
GROUP BY department;
--Fetching the data from normal view
SELECT * FROM dept_cnt;
--Mat View
SELECT * from dept_emp_counts;

--PL/SQL BLOCK TO DO A MANUAL REFRESH OF MAT VIEW
BEGIN
    DBMS_MVIEW.REFRESH('DEPT_EMP_COUNTS');
END;
/
