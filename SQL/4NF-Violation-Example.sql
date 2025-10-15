-- 4NF violation example
-- If a table is already in 3NF and doesn't contain
-- Any multi-valued dependencies, then it's in 4NF
DROP TABLE aspirants CASCADE CONSTRAINTS;
CREATE TABLE aspirants
(
    a_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER,
    email VARCHAR2(50)
);

INSERT INTO aspirants (a_id, name, age, email) VALUES (101, 'Alex King', 22, 'alex@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (102, 'Sara Khan', 25, 'sara@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (103, 'Mike Chen', 19, 'mike@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (104, 'Lena Ortiz', 28, 'lena@email.com');

SELECT * FROM aspirants;
DROP TABLE aspirant_interests CASCADE CONSTRAINTS;
CREATE TABLE aspirant_interests
(
    aspirant_id NUMBER REFERENCES aspirants(a_id),
    skill VARCHAR2(50),
    hobby VARCHAR2(100)
);

INSERT INTO aspirant_interests VALUES(101, 'Java', 'Skating');
INSERT INTO aspirant_interests VALUES(101, 'Python', 'Gaming');
INSERT INTO aspirant_interests VALUES(101, 'UI/UX', 'Skating');

INSERT INTO aspirant_interests VALUES (102, 'Java', 'Reading');
INSERT INTO aspirant_interests VALUES (102, 'Java', 'Cooking');
INSERT INTO aspirant_interests VALUES (102, 'Java', 'Yoga');

INSERT INTO aspirant_interests VALUES (103, 'Design', 'Drawing');
INSERT INTO aspirant_interests VALUES (103, 'UI/UX', 'Drawing');

INSERT INTO aspirant_interests VALUES (104, 'Testing', 'Running');
INSERT INTO aspirant_interests VALUES (104, 'Leadership', 'Guitar');
INSERT INTO aspirant_interests VALUES (104, 'C++', 'Sailing');

SELECT * FROM aspirant_interests;

CREATE TABLE aspirants_skill AS (
    SELECT DISTINCT aspirant_id,skill FROM aspirant_interests 
);

DROP TABLE aspirants_hobby;
DROP TABLE aspirants_skill;

CREATE TABLE aspirants_hobby AS(
    SELECT DISTINCT aspirant_id,hobby FROM aspirant_interests
);

SELECT * FROM ASPIRANTS_HOBBY;
SELECT * FROM ASPIRANTS_SKILL;

-- SET aspirants_id  aspirant_skill table as foreign key 
-- REFERENTIAL INTEGRITY
-- ENSURES AN ASPIRANT APPERARS IN ASPIRANT TABLE 
-- (If he is not present in aspirant table then don't store his skill)

ALTER TABLE aspirants_skill
ADD CONSTRAINT skill_fk
FOREIGN KEY(aspirant_id) REFERENCES aspirants(a_id);

ALTER TABLE aspirants_hobby
ADD CONSTRAINT hobby_fk
FOREIGN KEY(aspirant_id) REFERENCES aspirants(a_id);

--Making (aspirant_id, skill) as composite primary key 
-- cause we should not repeat the same skill for a same person twice.

ALTER TABLE aspirants_skill 
ADD CONSTRAINT skill_pk
PRIMARY KEY(aspirant_id,skill);

ALTER TABLE aspirants_hobby
ADD CONSTRAINT hobby_pk
PRIMARY KEY(aspirant_id,hobby);